#!/usr/bin/env python3
"""
export_profiles.py  --  ADDED DURING REPOSITORY ORGANIZATION (2026-09-13).

Serializes the computed classification output into durable, human-readable
JSON certificates, so that a referee can inspect the 135 order types and the
14 exceptional profiles without unpickling a binary blob or rerunning
anything.

IMPORTANT PROVENANCE NOTE
-------------------------
The profile-extraction body below (crossing-set family, M-set, Lemma-2
windows, avoiding pairs) is a transcription of the `classdata` function that
appears -- already duplicated, verbatim, in two places -- in the project's own
`elimination/audit_enum.py` and `elimination/audit_pairs.py`.  This is a third
copy for export purposes; no predicate is redefined and no logic is altered.
All predicates come from `core/chiro.py`.

The SHA-256 digests quoted in docs/proof-outline.md
(451cd2... for the survivor set, dabf1f... for the 14-class profile table)
refer to an ORIGINAL serialization whose exact byte format is not recorded
anywhere in the surviving materials.  The files written here therefore CANNOT
be compared against those digests, and no claim is made that they match.  See
docs/known-issues.md, issue K-07.

Usage:
    python3 export_profiles.py <ot7_det.pkl> <exc_det.pkl> <output-dir>
"""
import json
import os
import sys
from itertools import combinations

_HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.abspath(os.path.join(_HERE, os.pardir, "core")))

import pickle  # noqa: E402
from chiro import Chi, canonical, halfplane_subsets, inside_tri, line_cuts_seg  # noqa: E402

FULL = 127


def bits(x):
    return [i for i in range(7) if x >> i & 1]


def classdata(d):
    """Transcribed from audit_enum.py / audit_pairs.py (identical in both)."""
    chi = Chi(d, 7)
    fam = set()
    for A in halfplane_subsets(chi, 7):
        m = 0
        for s in range(7):
            if (s in A) != (((s + 1) % 7) in A):
                m |= 1 << s
        fam.add(m)
    W = set()
    for i in range(7):
        if inside_tri(chi, (i + 3) % 7, i, (i + 1) % 7, (i + 2) % 7):
            W.add(i)
        if inside_tri(chi, (i + 1) % 7, (i + 4) % 7, (i + 3) % 7, (i + 2) % 7):
            W.add(i)
    AV = []
    for i in range(7):
        for j in range(i + 1, 7):
            if (j - i) % 7 in (1, 6):
                continue
            a, b, c, dd = i, (i + 1) % 7, j, (j + 1) % 7
            if (not line_cuts_seg(chi, c, dd, a, b)) and (not line_cuts_seg(chi, a, b, c, dd)):
                AV.append([i, j])
    return fam, sorted(W), AV


ot_path, exc_path, outdir = sys.argv[1], sys.argv[2], sys.argv[3]
os.makedirs(os.path.join(outdir, "order_types"), exist_ok=True)
os.makedirs(os.path.join(outdir, "exceptional_profiles"), exist_ok=True)

TRIPLES = [list(t) for t in combinations(range(7), 3)]

# ---- 135 order-type representatives, as chirotope sign vectors -------------
det = pickle.load(open(ot_path, "rb"))
ot_json = {
    "_comment": [
        "The 135 order-type (rank-3 uniform chirotope) representatives on 7",
        "elements, regenerated deterministically by python/core/chiro.py.",
        "Each entry lists chi(a,b,c) in {-1,+1} for the 35 triples a<b<c, in",
        "the lexicographic triple order given in 'triple_order'.",
        "This set is a SUPERSET of the realizable order types: only the",
        "necessary Grassmann-Plucker and Radon sign conditions are imposed.",
        "That is sufficient for an exclusion theorem and is all the proof uses.",
    ],
    "count": len(det),
    "triple_order": TRIPLES,
    "chirotopes": [[d[t] for t in combinations(range(7), 3)] for d in det],
}
with open(os.path.join(outdir, "order_types", "order_types_7.json"), "w") as fh:
    json.dump(ot_json, fh, indent=1, sort_keys=False)
print(f"wrote order_types/order_types_7.json  ({len(det)} representatives)")

# ---- 14 exceptional class profiles ----------------------------------------
exc = pickle.load(open(exc_path, "rb"))
entries = []
for idx, d in enumerate(exc):
    fam, W, AV = classdata(d)
    M = [j for j in range(7) if (FULL ^ (1 << j)) in fam]
    maximal = sorted({m for m in fam if not any(m != m2 and (m & ~m2) == 0 for m2 in fam)})
    entries.append({
        "class_index": idx,
        "canonical_chirotope": [d[t] for t in combinations(range(7), 3)],
        "M_set": M,
        "lemma2_windows": W,
        "avoiding_pairs": AV,
        "maximal_crossing_sets": [bits(m) for m in maximal],
        "maximal_crossing_set_sizes": sorted(len(bits(m)) for m in maximal),
    })

exc_json = {
    "_comment": [
        "The 14 exceptional simple-heptagon classes: every simple 7-gon in",
        "which NO 4-subset of sides is uncrossable, up to dihedral relabelling.",
        "Regenerated on 2026-09-13 by classification/make_exceptional_profiles.py.",
        "Read as an INCLUSION, never an equality: every exceptional 7-gon's",
        "profile occurs here up to relabelling.  See docs/lean-architecture.md.",
        "Side indices are 0..6; side j joins vertex j to vertex j+1 mod 7.",
        "M_set = sides j such that some line meets the other six sides.",
        "avoiding_pairs = non-adjacent side pairs (i,j) where neither segment",
        "contains the meet of the two supporting lines.",
        "NOT byte-comparable with the dabf1f... digest quoted in",
        "docs/proof-outline.md; see docs/known-issues.md issue K-07.",
    ],
    "count": len(entries),
    "triple_order": TRIPLES,
    "structural_invariants_observed": {
        "every_class_has_M_set_of_size_5": all(len(e["M_set"]) == 5 for e in entries),
        "every_maximal_crossing_set_has_size_6": all(
            set(e["maximal_crossing_set_sizes"]) == {6} for e in entries),
        "number_of_maximal_crossing_sets_per_class": sorted(
            {len(e["maximal_crossing_sets"]) for e in entries}),
        "avoiding_pair_counts": [len(e["avoiding_pairs"]) for e in entries],
    },
    "classes": entries,
}
with open(os.path.join(outdir, "exceptional_profiles", "exceptional_profiles_14.json"), "w") as fh:
    json.dump(exc_json, fh, indent=1)
print(f"wrote exceptional_profiles/exceptional_profiles_14.json  ({len(entries)} classes)")
print("  structural invariants:", json.dumps(exc_json["structural_invariants_observed"]))
