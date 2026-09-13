#!/usr/bin/env python3
"""
make_final_certificate.py  --  CERTIFICATE GENERATOR for the final elimination.

Added 2026-09-13 to close issue K-03: the claimed "225 (class-pair, graph)
combinations" endgame had no shipped certificate and no shipped script.

WHAT THIS IS
------------
This is the ORIGINAL SEARCH, instrumented to emit a certificate.  It is NOT an
independent check.  The independent check is `check_final_certificate.py`,
which reads only the emitted JSON plus the canonical profile data and shares no
code with this file.

PROVENANCE OF THE MATHEMATICS
-----------------------------
Every mathematical predicate used here is the project's ORIGINAL code, obtained
by exec-ing slices of `audit_enum.py`'s own source text:

  slice 1  (docstring .. "E_TARGET=")  -> FULL, bits, pc, components,
                                          L5_ok, H_bip, L3_ok
  slice 2  ("SUBS=" .. "def process")  -> SUBS, rec   (pure enumeration)
  slice 3  ("# ---------- downstream" .. "step=")
                                       -> exc, classdata, CD, FOUR, L2_ok

(The exec-a-slice-of-a-sibling-script idiom is the project's own: `audit_pairs.py`
reuses `audit_enum.py`'s helpers exactly this way.)

NOTHING mathematical is reimplemented here.  What this file adds is:
  * a `process` function that records which filters fired, so that Cerny
    Lemma 3 can be switched OFF (it is off by default -- see --with-l3);
  * bookkeeping to emit every (classP, classQ, graph) combination reaching the
    final avoiding-pair filter, together with the witness that kills it.

The original `audit_enum.py` applies L3 unconditionally and was NOT modified.
Faithfulness of this driver is cross-checked by `--with-l3`, which must
reproduce audit_enum.py's published counts exactly.

Usage:
    python3 make_final_certificate.py [--with-l3] [--out FILE]

Requires `exc_det.pkl` in the current working directory (see
docs/computational-method.md) and PYTHONPATH pointing at python/core.
"""
import argparse
import json
import os
import sys
from collections import Counter
from itertools import combinations

_HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.abspath(os.path.join(_HERE, os.pardir, "core")))

import pickle  # noqa: E402
from chiro import *  # noqa: E402,F401,F403  (used by the exec'd original code)

ap = argparse.ArgumentParser()
ap.add_argument("--with-l3", action="store_true",
                help="also apply Cerny et al. Lemma 3 (OFF by default: it is "
                     "not logically necessary, and leaving it off keeps the "
                     "external dependency list to four published lemmas)")
ap.add_argument("--out", default="final_certificate.json")
args = ap.parse_args()

# --------------------------------------------------------------------------
# Load the original predicates by slicing audit_enum.py's source.
# --------------------------------------------------------------------------
SRC = open(os.path.join(_HERE, "audit_enum.py")).read()

slice1 = SRC.split("E_TARGET=")[0].split('"""')[2]
exec(compile(slice1, "audit_enum.py[helpers]", "exec"))

slice2 = SRC[SRC.index("SUBS="):SRC.index("def process")]
exec(compile(slice2, "audit_enum.py[enumeration]", "exec"))

_dstart = SRC.index("# ---------- downstream")
slice3 = SRC[_dstart:SRC.index("step={")]
exec(compile(slice3, "audit_enum.py[classdata]", "exec"))

# names now bound from the ORIGINAL source:
#   FULL, bits, pc, components, L5_ok, H_bip, L3_ok, SUBS, rec,
#   exc, classdata, CD, FOUR, L2_ok
NCLASS = len(CD)  # noqa: F821
print(f"loaded {NCLASS} exceptional class profiles from exc_det.pkl")

# --------------------------------------------------------------------------
# Driver.  The only new logic: which filters fire, and recording.
# --------------------------------------------------------------------------
counts = Counter()
survivors = []


def process(N):
    """Graph-level filters.  Mirrors audit_enum.py's `process`, except that
    Cerny Lemma 3 is applied only when --with-l3 is given."""
    counts["graphs"] += 1
    NQ = [0] * 7
    for i in range(7):
        for j in bits(N[i]):  # noqa: F821
            NQ[j] |= 1 << i
    compP, compQ, nc = components(N)  # noqa: F821
    for i in range(7):
        if compP[i] != compP[(i + 1) % 7] and not L5_ok(N[i], N[(i + 1) % 7]):  # noqa: F821
            return
    for j in range(7):
        if compQ[j] != compQ[(j + 1) % 7] and not L5_ok(NQ[j], NQ[(j + 1) % 7]):  # noqa: F821
            return
    counts["after_A5_consecutive"] += 1
    if not H_bip(compP) or not H_bip(compQ):  # noqa: F821
        return
    counts["after_A7_H_bipartite"] += 1
    if args.with_l3:
        if not L3_ok(N) or not L3_ok(NQ):  # noqa: F821
            return
        counts["after_CernyL3"] += 1
    survivors.append((tuple(N), tuple(NQ), tuple(compP), tuple(compQ), nc))


rec(0, [], 0, 9)  # noqa: F821
print(f"  graphs |E|=9, min degree >=1 : {counts['graphs']}")
print(f"  after AKR Lemma 5 consecutive: {counts['after_A5_consecutive']}")
print(f"  after AKR Lemma 7 H bipartite: {counts['after_A7_H_bipartite']}")
if args.with_l3:
    print(f"  after Cerny Lemma 3          : {counts['after_CernyL3']}")
else:
    print("  Cerny Lemma 3                : NOT APPLIED (not logically necessary)")
print(f"  graphs entering class filters : {len(survivors)}")


def deg_seq(masks):
    return tuple(sorted((pc(m) for m in masks), reverse=True))  # noqa: F821


def cyclic_adjacent(x, y):
    """x, y adjacent in the 7-cycle Z_7."""
    return (x - y) % 7 == 1 or (y - x) % 7 == 1


def avoid_witness(Nside, comp, av_pairs):
    """First avoiding pair in different components failing the neighbour-
    adjacency form of AKR Lemma 5.  Returns None if the class survives.
    Decision logic is the ORIGINAL L5_ok; this only records the reason."""
    for (i, j) in av_pairs:
        if comp[i] == comp[j]:
            continue
        if not L5_ok(Nside[i], Nside[j]):  # noqa: F821
            return (i, j)
    return None


# --------------------------------------------------------------------------
# Class-dependent filters, recording every surviving combination.
# --------------------------------------------------------------------------
graphs_compat = 0
graphs_L2 = 0
cases = []
combos_reaching_final = 0

for N, NQ, compP, compQ, nc in survivors:
    okP = [a for a in range(NCLASS) if all(CD[a][0][x] for x in NQ)]  # noqa: F821
    okQ = [b for b in range(NCLASS) if all(CD[b][0][x] for x in N)]  # noqa: F821
    if not okP or not okQ:
        continue
    graphs_compat += 1
    okP = [a for a in okP if L2_ok(list(N), CD[a][1])]  # noqa: F821
    okQ = [b for b in okQ if L2_ok(list(NQ), CD[b][1])]  # noqa: F821
    if not okP or not okQ:
        continue
    graphs_L2 += 1

    # These (a,b) pairs are exactly the combinations reaching the final filter.
    wP = {a: avoid_witness(list(N), compP, CD[a][2]) for a in okP}  # noqa: F821
    wQ = {b: avoid_witness(list(NQ), compQ, CD[b][2]) for b in okQ}  # noqa: F821

    for a in okP:
        for b in okQ:
            combos_reaching_final += 1
            if wP[a] is not None:
                side, cls, pair, Ns, comp = "P", a, wP[a], list(N), list(compP)
            elif wQ[b] is not None:
                side, cls, pair, Ns, comp = "Q", b, wQ[b], list(NQ), list(compQ)
            else:
                # Neither side dies: a genuine surviving configuration.
                cases.append({"case_id": len(cases), "class_P": a, "class_Q": b,
                              "SURVIVES": True,
                              "P_neighbourhood_bitmasks": list(N)})
                continue
            i, j = pair
            Ni, Nj = bits(Ns[i]), bits(Ns[j])  # noqa: F821
            A = [x for x in Ni if x not in Nj]
            B = [x for x in Nj if x not in Ni]
            cases.append({
                "case_id": len(cases),
                "class_P": a,
                "class_Q": b,
                "graph": {
                    "P_neighbourhood_bitmasks": list(N),
                    "P_neighbourhoods": [bits(x) for x in N],  # noqa: F821
                    "Q_neighbourhoods": [bits(x) for x in NQ],  # noqa: F821
                    "canonical": "|".join(",".join(map(str, bits(x))) for x in N),  # noqa: F821
                    "edges": sum(pc(x) for x in N),  # noqa: F821
                    "degree_sequence_P": list(deg_seq(N)),
                    "degree_sequence_Q": list(deg_seq(NQ)),
                    "components_P": list(compP),
                    "components_Q": list(compQ),
                    "n_components": nc,
                },
                "witness": {
                    "side": side,
                    "class_used": cls,
                    "pair": [i, j],
                    "pair_kind": "consecutive" if (j - i) % 7 in (1, 6) else "avoiding",
                    "component_of_i": comp[i],
                    "component_of_j": comp[j],
                    "different_components": comp[i] != comp[j],
                    "N_i": Ni,
                    "N_j": Nj,
                    "A_i_minus_j": A,
                    "B_j_minus_i": B,
                    "cyclic_adjacent_pairs_found": [
                        [x, y] for x in A for y in B if cyclic_adjacent(x, y)
                    ],
                },
            })

print(f"  graphs after crossing-set compatibility : {graphs_compat}")
print(f"  graphs after Cerny Lemma 2              : {graphs_L2}")
print(f"  (classP, classQ, graph) combinations reaching the final filter: "
      f"{combos_reaching_final}")

survived = [c for c in cases if c.get("SURVIVES")]
print(f"  combinations SURVIVING the final filter : {len(survived)}")

distinct_graphs = sorted({tuple(c["graph"]["P_neighbourhood_bitmasks"])
                          for c in cases if "graph" in c})
dsP = Counter(tuple(c["graph"]["degree_sequence_P"]) for c in cases if "graph" in c)
dsQ = Counter(tuple(c["graph"]["degree_sequence_Q"]) for c in cases if "graph" in c)

cert = {
    "_comment": [
        "Certificate for the final elimination step of the f(7,7) <= 38 argument.",
        "Each entry is one (classP, classQ, graph) combination that reached the",
        "final filter, together with an explicit witness showing it is killed by",
        "the neighbour-adjacency consequence of AKR Lemma 5.",
        "GENERATED BY THE ORIGINAL SEARCH (make_final_certificate.py).",
        "Verify with the independent checker check_final_certificate.py, which",
        "shares no code with the generator and reads only this file plus",
        "data/exceptional_profiles/exceptional_profiles_14.json.",
        "This certificate establishes that each listed combination dies.  It does",
        "NOT and cannot establish that the list is COMPLETE -- completeness rests",
        "on the exhaustive enumeration, not on the certificate.",
    ],
    "generated": "2026-09-13",
    "generator": "python/elimination/make_final_certificate.py",
    "filters_active": {
        "AKR_Lemma_5_consecutive_pairs": True,
        "AKR_Lemma_7_H_bipartite": True,
        "Cerny_Lemma_3": bool(args.with_l3),
        "crossing_set_compatibility": True,
        "Cerny_Lemma_2": True,
        "AKR_Lemma_5_avoiding_pairs": "the final filter, certified below",
    },
    "external_lemmas_relied_on": (
        ["Cerny L1", "Cerny L2", "Cerny L3", "AKR L5", "AKR L7"] if args.with_l3
        else ["Cerny L1", "Cerny L2", "AKR L5", "AKR L7"]
    ),
    "pipeline_counts": {
        "graphs_E9_mindeg1": counts["graphs"],
        "after_AKR_L5_consecutive": counts["after_A5_consecutive"],
        "after_AKR_L7_H_bipartite": counts["after_A7_H_bipartite"],
        "after_Cerny_L3": counts["after_CernyL3"] if args.with_l3 else None,
        "graphs_after_crossing_set_compatibility": graphs_compat,
        "graphs_after_Cerny_L2": graphs_L2,
        "combinations_reaching_final_filter": combos_reaching_final,
        "combinations_surviving_final_filter": len(survived),
    },
    "summary": {
        "cases": len(cases),
        "distinct_graphs": len(distinct_graphs),
        "degree_sequence_distribution_P": {str(list(k)): v for k, v in sorted(dsP.items())},
        "degree_sequence_distribution_Q": {str(list(k)): v for k, v in sorted(dsQ.items())},
        "classes_P_represented": sorted({c["class_P"] for c in cases}),
        "classes_Q_represented": sorted({c["class_Q"] for c in cases}),
        "witness_side_counts": dict(Counter(c["witness"]["side"] for c in cases if "witness" in c)),
        "pair_kind_counts": dict(Counter(c["witness"]["pair_kind"] for c in cases if "witness" in c)),
    },
    "profile_source": "data/exceptional_profiles/exceptional_profiles_14.json",
    "cases": cases,
}

with open(args.out, "w") as fh:
    json.dump(cert, fh, indent=1, sort_keys=False)
print(f"\nwrote {args.out}: {len(cases)} cases on {len(distinct_graphs)} distinct graphs")
print(f"  degree sequences P: {dict(dsP)}")
print(f"  degree sequences Q: {dict(dsQ)}")
print(f"  classes P: {sorted({c['class_P'] for c in cases})}")
print(f"  classes Q: {sorted({c['class_Q'] for c in cases})}")
