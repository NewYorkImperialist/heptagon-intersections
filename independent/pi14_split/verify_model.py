#!/usr/bin/env python3
"""Independent exact-rational re-check of a z3 model against a condition list.
Deliberately does NOT use z3: pure Fraction arithmetic, re-deriving orient and
ProperCross from the Lean definitions."""
from fractions import Fraction as F

def orient(a, b, c):
    return (b[0]-a[0])*(c[1]-a[1]) - (b[1]-a[1])*(c[0]-a[0])

def proper_cross(p1, p2, q1, q2):
    return orient(p1,p2,q1)*orient(p1,p2,q2) < 0 and orient(q1,q2,p1)*orient(q1,q2,p2) < 0

def check(sol, conds, verbose=True):
    bad = []
    for (a,b),(c,d),want in conds:
        got = proper_cross(sol[a], sol[b], sol[c], sol[d])
        if got != want:
            bad.append(((a,b),(c,d),want,got))
    # general position among all 11 used vertices
    import itertools
    verts = sorted(sol)
    coll = [t for t in itertools.combinations(verts,3) if orient(sol[t[0]],sol[t[1]],sol[t[2]])==0]
    if verbose:
        print(f'  conditions checked : {len(conds)}')
        print(f'  violated           : {len(bad)}')
        for x in bad: print('    VIOLATION', x)
        print(f'  collinear triples  : {len(coll)}  (of {len(verts)*(len(verts)-1)*(len(verts)-2)//6})')
        for x in coll[:5]: print('    COLLINEAR', x)
    return not bad and not coll
