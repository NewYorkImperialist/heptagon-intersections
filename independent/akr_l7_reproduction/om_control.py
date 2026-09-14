#!/usr/bin/env python3
"""Sanity controls for the oriented-matroid encoding of om_lemma7.py.

CONTROL 1 (must be UNSAT): for four points in general position, the three ways of
splitting them into two segments cannot all be crossings -- exactly one of the
three pairings crosses.  This is a genuine consequence of the rank-3 chirotope
axioms, so if the encoding has any discriminating power at all this must be UNSAT.

CONTROL 2 (must be SAT): the same with exactly one pairing crossing.

CONTROL 3 (must be UNSAT): AKR Observation 3 -- if a segment s'' with an endpoint
strictly inside Cone(s,s') does not pass through the apex, it cannot cross both s
and s'.  Encoded with s=[v,s2], s'=[v,t2] sharing apex v, and s''=[x,y] with x in
Cone; assert s'' crosses both s and s'.
"""
import itertools
from z3 import Solver, Not, And, sat, unsat
import om_lemma7 as L

def mk(n):
    return L.Chi(["p%d" % i for i in range(n)])

def run(name, n, extra, expect):
    C = mk(n); s = Solver()
    for c in C.gp_axioms():
        s.add(c)
    for c in C.acyclicity():
        s.add(c)
    for c in extra(C):
        s.add(c)
    r = str(s.check())
    ok = (r == expect)
    print("%-52s -> %-6s (expected %-6s) %s" % (name, r, expect, "OK" if ok else "*** FAIL ***"))
    return ok

P = lambda C, i: C.pts[i]

ok = True
ok &= run("CONTROL 1: all three pairings of 4 points cross", 4,
          lambda C: [C.cross((P(C,0),P(C,1)), (P(C,2),P(C,3))),
                     C.cross((P(C,0),P(C,2)), (P(C,1),P(C,3))),
                     C.cross((P(C,0),P(C,3)), (P(C,1),P(C,2)))], "unsat")
ok &= run("CONTROL 2: exactly one pairing of 4 points crosses", 4,
          lambda C: [C.cross((P(C,0),P(C,1)), (P(C,2),P(C,3))),
                     Not(C.cross((P(C,0),P(C,2)), (P(C,1),P(C,3)))),
                     Not(C.cross((P(C,0),P(C,3)), (P(C,1),P(C,2))))], "sat")
# CONTROL 3: v=0, s2=1, t2=2 (so s=[0,1], s'=[0,2]); s''=[3,4] with 3 in Cone(s,s')
ok &= run("CONTROL 3: AKR Observation 3 violated", 5,
          lambda C: [C.in_cone(P(C,3), P(C,0), P(C,1), P(C,2)),
                     C.cross((P(C,3),P(C,4)), (P(C,0),P(C,1))),
                     C.cross((P(C,3),P(C,4)), (P(C,0),P(C,2)))], "unsat")
ok &= run("CONTROL 4: Observation 3 respected (crosses one)", 5,
          lambda C: [C.in_cone(P(C,3), P(C,0), P(C,1), P(C,2)),
                     C.cross((P(C,3),P(C,4)), (P(C,0),P(C,1))),
                     Not(C.cross((P(C,3),P(C,4)), (P(C,0),P(C,2))))], "sat")
print("RESULT:", "CONTROLS PASSED" if ok else "*** CONTROLS FAILED ***")
