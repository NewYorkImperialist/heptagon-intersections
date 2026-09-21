#!/usr/bin/env python3
"""
Refinement: AKR need a direction giving at least one NONDEGENERATE intersection.
So E must also avoid creating a new local degeneracy -- no vertex of one V on
the other V's boundary.

Argument being tested: the good set is an open 2-D cone; each degeneracy is a
polynomial equation in E, homogeneous, so it cuts out finitely many LINES
through the origin.  An open cone minus finitely many lines is nonempty.
"""
from fractions import Fraction as F
import random
from sweep import crossings, DIRS, EPS, parallel

def V(x,y): return (F(x),F(y))
def orient(a,b,c): return (b[0]-a[0])*(c[1]-a[1])-(b[1]-a[1])*(c[0]-a[0])

def on_seg(p, a, b):
    if orient(a,b,p)!=0: return False
    return min(a[0],b[0])<=p[0]<=max(a[0],b[0]) and min(a[1],b[1])<=p[1]<=max(a[1],b[1])

def local_degenerate(a1,a2,b1,b2,E,eps):
    t=(eps*E[0],eps*E[1])
    Pm=(a1[0]+t[0],a1[1]+t[1]); P0=t; Pp=(a2[0]+t[0],a2[1]+t[1])
    Qm=b1; Q0=(F(0),F(0)); Qp=b2
    Pseg=((Pm,P0),(P0,Pp)); Qseg=((Qm,Q0),(Q0,Qp))
    for v in (Pm,P0,Pp):
        for (r,s) in Qseg:
            if on_seg(v,r,s): return True
    for v in (Qm,Q0,Qp):
        for (r,s) in Pseg:
            if on_seg(v,r,s): return True
    return False

random.seed(9)
tested=fail=0
for _ in range(4000):
    a1,a2,b1,b2=[V(random.randint(-15,15),random.randint(-15,15)) for _ in range(4)]
    if any(v==(0,0) for v in (a1,a2,b1,b2)): continue
    vs=[a1,a2,b1,b2]
    if all(parallel(vs[0],v) for v in vs[1:]): continue   # the genuine NO case
    tested+=1
    ok=False
    for E in DIRS:
        if crossings(a1,a2,b1,b2,E,EPS)>=1 and not local_degenerate(a1,a2,b1,b2,E,EPS):
            ok=True; break
    if not ok:
        fail+=1
        if fail<=3: print(f"  NO nondegenerate direction: {a1} {a2} {b1} {b2}")
print(f"configurations tested                                  : {tested}")
print(f"  no crossing-AND-nondegenerate direction found        : {fail}")
