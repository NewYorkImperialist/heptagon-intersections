#!/usr/bin/env python3
"""
CORRECTION CHECK.  AKR move ONLY the apex: "we leave Q_j stationary but we move
P_i = P_i^0 + eps*E_i".  The neighbours P_{i-1}, P_{i+1} stay put, so P's two
edges ROTATE about their far endpoints rather than translating.

sweep.py translated the whole V (all three points).  Re-verify in the correct
apex-only model.
"""
from fractions import Fraction as F
from math import gcd
import itertools, random, sys
from sweep import DIRS, parallel

def orient(a,b,c): return (b[0]-a[0])*(c[1]-a[1])-(b[1]-a[1])*(c[0]-a[0])
def pc(p,q,r,s):
    return orient(p,q,r)*orient(p,q,s)<0 and orient(r,s,p)*orient(r,s,q)<0

def crossings_apexonly(a1,a2,b1,b2,E,eps):
    """P edges: [a1, apex] and [apex, a2] with apex = eps*E.  Q edges fixed."""
    ap=(eps*E[0], eps*E[1]); O=(F(0),F(0))
    n=0
    for (u,v) in ((a1,ap),(ap,a2)):
        for (r,s) in ((b1,O),(O,b2)):
            if pc(u,v,r,s): n+=1
    return n

EPS=F(1,10**7)
def some_dir(a1,a2,b1,b2,eps=EPS):
    for E in DIRS:
        if crossings_apexonly(a1,a2,b1,b2,E,eps)>=1: return E
    return None

if __name__=="__main__":
    random.seed(4); tested=fails=0
    for _ in range(12000):
        pts=[(F(random.randint(-20,20)),F(random.randint(-20,20))) for _ in range(4)]
        a1,a2,b1,b2=pts
        if any(p==(0,0) for p in pts): continue
        if parallel(a1,a2) or parallel(b1,b2): continue
        vs=[a1,a2,b1,b2]
        if all(parallel(vs[0],v) for v in vs[1:]): continue
        tested+=1
        if some_dir(a1,a2,b1,b2) is None: fails+=1
    print(f"APEX-ONLY model: {tested} configurations, {fails} with no working direction")

    print("\n--- theory check: E in the cone still works, exactly as predicted ---")
    # the cone argument predicts mu = eps*s0/(1+eps*s0), nu = eps*t0/(1+eps*s0)
    ok=bad=0
    random.seed(8)
    for _ in range(3000):
        a1,a2,b1,b2=[(F(random.randint(-15,15)),F(random.randint(-15,15))) for _ in range(4)]
        if any(v==(0,0) for v in (a1,a2,b1,b2)): continue
        for (ak,bl) in ((a1,b1),(a1,b2),(a2,b1),(a2,b2)):
            if parallel(ak,bl): continue
            s0=F(random.randint(1,6)); t0=F(random.randint(1,6))
            E=(t0*bl[0]-s0*ak[0], t0*bl[1]-s0*ak[1])
            eps=F(1,10**6); ap=(eps*E[0],eps*E[1]); O=(F(0),F(0))
            if pc(ak,ap,bl,O) or pc(ap,ak,O,bl): ok+=1
            else: bad+=1
            break
    print(f"  cone directions giving a proper crossing: {ok} ok, {bad} failed")

    print("\n--- the eps_uniform agent's certificate, apex-only ---")
    a1,a2,b1,b2 = (F(1),F(-3)),(F(3),F(-4)),(F(4),F(-1)),(F(3),F(5))
    E=(F(-2)*a1[0], F(-2)*a1[1])
    print(f"  E = -2*a1 = {E}   (parallel to a1: {parallel(E,a1)})")
    for k in (3,6,9,12):
        eps=F(1,10**k); ap=(eps*E[0],eps*E[1]); O=(F(0),F(0))
        det=orient(ap,a1,O)
        onseg = det==0 and min(ap[0],a1[0])<=0<=max(ap[0],a1[0]) and min(ap[1],a1[1])<=0<=max(ap[1],a1[1])
        nx=crossings_apexonly(a1,a2,b1,b2,E,eps)
        print(f"  eps=1e-{k}: orient(apex,a1,Q_j)={det}  Q_j on P-edge interior: {onseg}   proper crossings elsewhere: {nx}")
