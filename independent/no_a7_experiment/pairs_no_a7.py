#!/usr/bin/env python3
"""
pairs_no_a7.py -- PER-ORDERED-CLASS-PAIR counts for the no-A7 residual, and
their invariance under re-labelling of the class representatives.

WHY THIS EXISTS.  docs/known-issues.md K-11 records defect D2: the pipeline's
intermediate counts depend on WHICH labelled polygon is stored as each class
representative.  "Re-labelling carries the survivor set bijectively for a fixed
ordered class pair, so emptiness is invariant but the union over classes is
not."  Applied to this experiment that means:

  * the per-ordered-pair counts, and therefore the TOTAL 2,187, are invariant;
  * the count of DISTINCT GRAPHS (412) is NOT invariant, because it unions
    over classes.

This file checks that directly, by re-running the class-dependent half of the
pipeline under three different labellings of all 14 representatives -- exactly
the construction of python/elimination/audit_pairs.py, whose `rotate` helper
and structure this file follows.

A7 is OFF throughout; Cerny Lemma 3 is not applied (matching the current
pipeline).  Every predicate is again audit_enum.py's own, exec'd from source.
"""
import os
import pickle
import sys
from collections import Counter
from itertools import combinations

_HERE = os.path.dirname(os.path.abspath(__file__))
_REPO = os.path.abspath(os.path.join(_HERE, os.pardir, os.pardir))
_ELIM = os.path.join(_REPO, "python", "elimination")
sys.path.insert(0, os.path.join(_REPO, "python", "core"))
from chiro import *  # noqa

SRC = open(os.path.join(_ELIM, "audit_enum.py")).read()
exec(compile(SRC.split("E_TARGET=")[0].split('"""')[2],
             "audit_enum.py[helpers]", "exec"))       # FULL,bits,pc,components,L5_ok,H_bip,L3_ok
exec(compile(SRC[SRC.index("SUBS="):SRC.index("def process")],
             "audit_enum.py[enumeration]", "exec"))   # SUBS, rec
_d = SRC.index("# ---------- downstream")
exec(compile(SRC[_d:SRC.index("step={")], "audit_enum.py[classdata]", "exec"))
# -> exc, classdata, CD, FOUR, L2_ok

# audit_pairs.py's re-labelling helper, verbatim in substance
def rotate(d, t, refl):
    """relabel the cycle 0..6 by i -> (t + (-i if refl else i)) mod 7"""
    lab = [(t + (-i if refl else i)) % 7 for i in range(7)]
    nd = {}
    for tr in combinations(range(7), 3):
        tt, s = sort3(lab[tr[0]], lab[tr[1]], lab[tr[2]])  # noqa: F821
        nd[tr] = s * d[tt]
    return nd


survivors = []


def process(N):
    """Graph-level filters, A7 OFF, Cerny L3 NOT applied."""
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
    survivors.append((tuple(N), tuple(NQ), tuple(compP), tuple(compQ)))


rec(0, [], 0, 9)  # noqa: F821
print(f"graphs after consecutive AKR L5 (A7 OFF, no L3): {len(survivors)}")


def run(exc_variants, tag):
    CDv = [classdata(d) for d in exc_variants]  # noqa: F821
    table = {}
    graphs = set()
    for a in range(len(CDv)):
        for b in range(len(CDv)):
            cnt = 0
            for N, NQ, compP, compQ in survivors:
                if not all(CDv[a][0][x] for x in NQ):
                    continue
                if not all(CDv[b][0][x] for x in N):
                    continue
                if not L2_ok(list(N), CDv[a][1]):  # noqa: F821
                    continue
                if not L2_ok(list(NQ), CDv[b][1]):  # noqa: F821
                    continue
                if not all(L5_ok(N[i], N[j]) for (i, j) in CDv[a][2]  # noqa: F821
                           if compP[i] != compP[j]):
                    continue
                if not all(L5_ok(NQ[i], NQ[j]) for (i, j) in CDv[b][2]  # noqa: F821
                           if compQ[i] != compQ[j]):
                    continue
                cnt += 1
                graphs.add(N)
            table[(a, b)] = cnt
    nz = {k: v for k, v in table.items() if v}
    print(f"  [{tag}] total surviving triples = {sum(table.values())}; "
          f"nonzero ordered class pairs = {len(nz)}; "
          f"per-pair counts = {sorted(Counter(nz.values()).items())}; "
          f"distinct graphs in the union = {len(graphs)}")
    return table, graphs


print("\nNO-A7 residual, per ordered class pair:")
t1, g1 = run(exc, "as stored")  # noqa: F821
t2, g2 = run([rotate(d, 3, True) for d in exc], "rotated 3 + reflected")  # noqa: F821
t3, g3 = run([rotate(d, 5, False) for d in exc], "rotated 5")  # noqa: F821

print()
print(f"per-pair table identical under all three labellings: {t1 == t2 == t3}")
print(f"total identical:   {sum(t1.values()) == sum(t2.values()) == sum(t3.values())}"
      f"  (= {sum(t1.values())})")
print(f"distinct-graph union identical: {g1 == g2 == g3}"
      f"  (sizes {len(g1)}, {len(g2)}, {len(g3)})")
print()
print("CONCLUSION: the residual is NON-EMPTY under every labelling, so the "
      "verdict does not depend on the choice of class representative."
      if min(sum(t.values()) for t in (t1, t2, t3)) > 0 else
      "CONCLUSION: some labelling gives an EMPTY residual -- investigate.")
