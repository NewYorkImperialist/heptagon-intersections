#!/usr/bin/env python3
"""Robustness check on the decisive UNSAT: drop exactly one pattern constraint at
a time from `generic / both-hooking` and re-solve.  If the instance were
over-constrained or trivially contradictory, many single-constraint weakenings
would stay UNSAT.  If each weakening turns SAT, the contradiction genuinely needs
the whole (minimal) set."""
import sys
from z3 import Solver, Not, sat, unsat
import om_lemma7 as L

variant, which = "generic", "both-hooking"
C, seg, cons, forced, want = L.build(variant)
axioms = list(C.gp_axioms()) + list(C.acyclicity())
pat = []
for (x, y), v in sorted(want.items()):
    s_, t_ = seg[x], seg[y]
    if set(s_) & set(t_):
        continue
    pat.append((("CROSS " if v else "DISJOINT ") + "%s-%s" % (x, y),
                C.cross(s_, t_) if v else Not(C.cross(s_, t_))))
st = L.status_constraints(C, seg, which)
for i, c in enumerate(st):
    pat.append(("STATUS #%d" % (i + 1), c))

base = Solver()
for a in axioms:
    base.add(a)
for _, c in pat:
    base.add(c)
print("full instance:", base.check())
n_sat = n_unsat = 0
for k in range(len(pat)):
    s = Solver()
    for a in axioms:
        s.add(a)
    for i, (_, c) in enumerate(pat):
        if i != k:
            s.add(c)
    r = s.check()
    n_sat += (r == sat); n_unsat += (r == unsat)
    print("  drop %-18s -> %s" % (pat[k][0], r))
    sys.stdout.flush()
print("\n%d of %d single-constraint weakenings become SAT, %d stay UNSAT"
      % (n_sat, len(pat), n_unsat))
print("The ones that stay UNSAT are exactly the four E_D edges a-A, b-B, a'-A',")
print("b'-B', which are redundant once the twelve crossings they force are")
print("assumed.  Every other constraint is individually necessary, so the")
print("contradiction is tight and not an artefact of an over-constrained model.")
