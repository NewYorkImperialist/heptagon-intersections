#!/usr/bin/env python3
"""
Phase 1a: try to BREAK the existence of the AKR directions E_i.

At a vertex-vertex coincidence P_i = Q_j, put the apex at the origin.  The two
boundaries are two "V"s:

    P's V : segments [a1, O] and [O, a2]
    Q's V : segments [b1, O] and [O, b2]

AKR (journal p.1072) assert, without proof:

  "We choose each direction E_i independently so that the two polygons have at
   least one nondegenerate intersection in the neighborhood of the original
   configuration, assuming that all other points stay where they are."

So: does there ALWAYS exist a direction E such that translating P's V by eps*E
yields at least one PROPER crossing with Q's V, for all small eps > 0?

orient / ProperCross are transcribed from lean/GeometryDefs.lean lines 59/73.
All arithmetic is exact (Fraction).
"""
from fractions import Fraction as F
from math import gcd
import itertools, random, sys

def orient(a, b, c):
    return (b[0]-a[0])*(c[1]-a[1]) - (b[1]-a[1])*(c[0]-a[0])

def proper_cross(p, q, r, s):
    return (orient(p,q,r)*orient(p,q,s) < 0) and (orient(r,s,p)*orient(r,s,q) < 0)

def crossings(a1, a2, b1, b2, E, eps):
    """number of proper crossings between P's V translated by eps*E and Q's V"""
    t  = (eps*E[0], eps*E[1])
    Pm = (a1[0]+t[0], a1[1]+t[1]); P0 = t; Pp = (a2[0]+t[0], a2[1]+t[1])
    Qm = b1; Q0 = (F(0), F(0)); Qp = b2
    n = 0
    for (u,v) in ((Pm,P0),(P0,Pp)):
        for (r,s) in ((Qm,Q0),(Q0,Qp)):
            if proper_cross(u,v,r,s): n += 1
    return n

def parallel(u, v):
    return u[0]*v[1] - u[1]*v[0] == 0

def directions(R):
    out=[]
    for dx in range(-R, R+1):
        for dy in range(-R, R+1):
            if (dx,dy)==(0,0): continue
            if gcd(abs(dx),abs(dy))!=1: continue
            out.append((F(dx),F(dy)))
    return out

DIRS = directions(12)
EPS  = F(1, 10**7)

def some_direction_works(a1,a2,b1,b2, eps=EPS):
    for E in DIRS:
        if crossings(a1,a2,b1,b2,E,eps) >= 1:
            return E
    return None

def cone_prediction(a1,a2,b1,b2):
    """theory: a direction exists iff some a_k is non-parallel to some b_l,
       because then {t*b_l - s*a_k : s,t>0} is a nonempty open 2-D cone."""
    return any(not parallel(ak,bl) for ak in (a1,a2) for bl in (b1,b2))

def nondegenerate_V(a1,a2,b1,b2):
    """apex must be a genuine vertex of each polygon (no straight-through
       vertex), and we ask for general position among the four ray directions"""
    if parallel(a1,a2) or parallel(b1,b2): return False
    return True

if __name__ == "__main__":
    random.seed(int(sys.argv[1]) if len(sys.argv)>1 else 1)
    N = int(sys.argv[2]) if len(sys.argv)>2 else 20000
    tested = fails = mismatch = 0
    failures = []
    for _ in range(N):
        pts=[(F(random.randint(-20,20)),F(random.randint(-20,20))) for _ in range(4)]
        a1,a2,b1,b2 = pts
        if any(p==(0,0) for p in pts): continue
        if not nondegenerate_V(a1,a2,b1,b2): continue
        tested += 1
        E = some_direction_works(a1,a2,b1,b2)
        pred = cone_prediction(a1,a2,b1,b2)
        if E is None:
            fails += 1; failures.append((a1,a2,b1,b2))
        if (E is not None) != pred:
            mismatch += 1
            if mismatch <= 3:
                print(f"  THEORY MISMATCH: a1={a1} a2={a2} b1={b1} b2={b2} "
                      f"sweep={'found' if E else 'none'} cone_pred={pred}")
    print(f"configurations tested                     : {tested}")
    print(f"  NO direction found (would break AKR)    : {fails}")
    print(f"  sweep disagrees with the cone argument  : {mismatch}")
    for f in failures[:5]:
        print("   failure:", f)
