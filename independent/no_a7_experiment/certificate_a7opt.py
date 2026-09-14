#!/usr/bin/env python3
"""
certificate_a7opt.py -- NO-A7 EXPERIMENT (subagent E).

COPY of python/elimination/make_final_certificate.py (which is READ-ONLY and
was NOT modified), with one behavioural change: a `--no-a7` flag that switches
OFF the AKR Lemma 7 (H bipartite) filter.  The default is A7 ON.

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

NOTHING mathematical is reimplemented, weakened, or replaced here.  What this
file adds is a `process` function recording which filters fired (so Cerny
Lemma 3 can be switched off -- it is OFF by default, see --with-l3), and
bookkeeping to emit every (classP, classQ, graph) combination reaching the
final avoiding-pair filter.

The original `audit_enum.py` applies L3 unconditionally and was NOT modified.
Faithfulness of this driver is cross-checked by `--with-l3`, which must
reproduce audit_enum.py's published counts exactly.

This is the ORIGINAL SEARCH instrumented to emit a certificate.  It is NOT an
independent check.  The independent check is `check_final_certificate.py`,
which reads only the emitted JSON plus the canonical profile data and shares
no code with this file.

HISTORY
-------
The certificate emission was added 2026-09-13 to close issue K-03 (the endgame
had no shipped certificate and no shipped script).  The scoped-summary output
below was added 2026-09-13 to close issue K-15: a single `summary` block
previously reported `cases` over ALL records while every other field described
only the eliminated subset, so a reader saw 2,412 cases alongside 121 distinct
graphs.  Case records themselves were never affected.

OUTPUT
------
Every combination reaching the final AKR Lemma 5 avoiding-pair filter is
recorded: eliminated cases carry an explicit witness; surviving cases carry
SURVIVES=true.  Summaries are emitted under three EXPLICIT scopes -- `all`,
`eliminated`, `surviving` -- and witness statistics appear only under
`eliminated`.

Usage (from a directory containing exc_det.pkl):
    python3 certificate_a7opt.py [--no-a7] [--edges 9] [--with-l3] [--out FILE]

Requires exc_det.pkl (see docs/computational-method.md). The project's
python/core is added to the import path below.
"""
import argparse
import json
import os
import sys
from collections import Counter
from itertools import combinations

_HERE = os.path.dirname(os.path.abspath(__file__))
# This copy lives in independent/no_a7_experiment/, so the two paths below are
# repointed at the PROJECT's originals.  The mathematics executed is therefore
# still python/elimination/audit_enum.py's own source text, unmodified.
_REPO = os.path.abspath(os.path.join(_HERE, os.pardir, os.pardir))
_ELIM = os.path.join(_REPO, "python", "elimination")
sys.path.insert(0, os.path.join(_REPO, "python", "core"))

import pickle  # noqa: E402
from chiro import *  # noqa: E402,F401,F403  (used by the exec'd original code)

ap = argparse.ArgumentParser()
ap.add_argument("--with-l3", action="store_true",
                help="also apply Cerny et al. Lemma 3 (OFF by default: it is "
                     "not logically necessary, and leaving it off keeps the "
                     "external dependency list to four published lemmas)")
ap.add_argument("--edges", type=int, default=9,
                help="|E|; 9 is the I=40 case (the default and the one the "
                     "shipped pipeline runs), 7 is the I=42 case of Step 9")
ap.add_argument("--no-a7", action="store_true",
                help="NO-A7 EXPERIMENT: switch OFF the AKR Lemma 7 "
                     "(H bipartite) filter entirely")
ap.add_argument("--out", default="final_certificate.json")
args = ap.parse_args()

# --------------------------------------------------------------------------
# Load the original predicates by slicing audit_enum.py's source.
# --------------------------------------------------------------------------
SRC = open(os.path.join(_ELIM, "audit_enum.py")).read()

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
BIP = {}   # graph -> (H bipartite on P?, H bipartite on Q?)


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
    bipP, bipQ = H_bip(compP), H_bip(compQ)  # noqa: F821
    if not args.no_a7:
        if not bipP or not bipQ:
            return
    counts["after_A7_H_bipartite"] += 1
    BIP[tuple(N)] = (bipP, bipQ)
    if args.with_l3:
        if not L3_ok(N) or not L3_ok(NQ):  # noqa: F821
            return
        counts["after_CernyL3"] += 1
    survivors.append((tuple(N), tuple(NQ), tuple(compP), tuple(compQ), nc))


rec(0, [], 0, args.edges)  # noqa: F821
print(f"  graphs |E|={args.edges}, min degree >=1 : {counts['graphs']}")
print(f"  after AKR Lemma 5 consecutive: {counts['after_A5_consecutive']}")
print(f"  after AKR Lemma 7 H bipartite: {counts['after_A7_H_bipartite']}"
      + ("   [A7 FILTER OFF -- unchanged from previous line]" if args.no_a7 else ""))
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
                              "P_neighbourhood_bitmasks": list(N),
                              "Q_neighbourhood_bitmasks": list(NQ),
                              "components_P": list(compP),
                              "components_Q": list(compQ),
                              "n_components": nc,
                              "degree_sequence_P": list(deg_seq(N)),
                              "degree_sequence_Q": list(deg_seq(NQ)),
                              "H_bipartite_P": BIP[tuple(N)][0],
                              "H_bipartite_Q": BIP[tuple(N)][1]})
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

eliminated = [c for c in cases if "witness" in c]


def summarize(records):
    """Summarize one explicit scope without changing its case records."""
    graphs = [c["graph"] if "graph" in c else c for c in records]
    result = {
        "cases": len(records),
        "distinct_graphs": len({tuple(g["P_neighbourhood_bitmasks"]) for g in graphs}),
    }
    for side in ("P", "Q"):
        distribution = Counter(tuple(g[f"degree_sequence_{side}"]) for g in graphs)
        result[f"degree_sequence_distribution_{side}"] = {
            str(list(k)): v for k, v in sorted(distribution.items())
        }
        result[f"classes_{side}_represented"] = sorted({c[f"class_{side}"] for c in records})
    return result


summary = {
    "all": summarize(cases),
    "eliminated": summarize(eliminated),
    "surviving": summarize(survived),
}
summary["eliminated"]["witness_side_counts"] = dict(
    Counter(c["witness"]["side"] for c in eliminated))
summary["eliminated"]["pair_kind_counts"] = dict(
    Counter(c["witness"]["pair_kind"] for c in eliminated))

cert = {
    "_comment": [
        "Results for combinations reaching the final AKR Lemma 5 avoiding-pair filter.",
        "Eliminated records carry an explicit elimination witness; surviving records",
        "carry SURVIVES=true and do not assert elimination.",
        "Generated by independent/no_a7_experiment/certificate_a7opt.py using the",
        "original audit_enum.py predicates; this is not an independent check.",
        "AKR Lemma 7 H-bipartite filter: " + ("OFF." if args.no_a7 else "ON."),
        "Summary scopes are all cases, eliminated cases, and surviving cases;",
        "witness statistics appear only under the eliminated scope.",
        "Verify with the independent checker check_final_certificate.py, which",
        "shares no code with the generator and reads only this file plus",
        "data/exceptional_profiles/exceptional_profiles_14.json.",
        "This certificate establishes that each listed ELIMINATED combination",
        "dies.  It does NOT and cannot establish that the list is COMPLETE --",
        "completeness rests on the exhaustive enumeration, not on the certificate.",
    ],
    "generated": "2026-09-13",
    "generator": "independent/no_a7_experiment/certificate_a7opt.py",
    "filters_active": {
        "AKR_Lemma_5_consecutive_pairs": True,
        "AKR_Lemma_7_H_bipartite": (not args.no_a7),
        "Cerny_Lemma_3": bool(args.with_l3),
        "crossing_set_compatibility": True,
        "Cerny_Lemma_2": True,
        "AKR_Lemma_5_avoiding_pairs": "final filter; witnesses only for eliminated cases",
    },
    "external_lemmas_relied_on": (
        ["Cerny L1", "Cerny L2"]
        + (["Cerny L3"] if args.with_l3 else [])
        + ["AKR L5"]
        + ([] if args.no_a7 else ["AKR L7"])
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
    "summary": summary,
    "profile_source": "exc_det.pkl (current working directory)",
    "cases": cases,
}

with open(args.out, "w") as fh:
    json.dump(cert, fh, indent=1, sort_keys=False)
print(f"\nwrote {args.out}: {summary['all']['cases']} cases on "
      f"{summary['all']['distinct_graphs']} distinct graphs")
for scope, stats in summary.items():
    print(f"  {scope}: {json.dumps(stats, sort_keys=True)}")
