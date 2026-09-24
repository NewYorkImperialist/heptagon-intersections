#!/usr/bin/env python3
"""Non-vacuity check for E9Directions.exists_move_coinc_lt_M_pt_le.

The theorem's hypotheses are hco (a coincidence), hnp (non-parallelism),
hgoodN / hgoodP (genericity of the FORCED direction E = Q_{j+1} - P_{i+1},
away from the structurally degenerate index j+1), and hslots (at most four
degeneracy slots die).  A theorem whose hypotheses cannot all hold at once
proves nothing, so this searches for configurations satisfying all of them.

Exact Fraction arithmetic; no floats.  Self-contained.
"""
from fractions import Fraction as F
import random, math
def orientR(a,b,c): return (b[0]-a[0])*(c[1]-a[1])-(b[1]-a[1])*(c[0]-a[0])
def onseg(a,b,x):
    if orientR(a,b,x)!=0: return False
    return min(a[0],b[0])<=x[0]<=max(a[0],b[0]) and min(a[1],b[1])<=x[1]<=max(a[1],b[1])
def pc(a,b,c,d): return orientR(a,b,c)*orientR(a,b,d)<0 and orientR(c,d,a)*orientR(c,d,b)<0
def simple(P):
    for a in range(7):
        if P[a]==P[(a+1)%7]: return False
    for a in range(7):
        for b in range(a+1,7):
            A,B=P[a],P[(a+1)%7]; C,D=P[b],P[(b+1)%7]
            adj=((a+1)%7==b) or ((b+1)%7==a); sh=set([A,B])&set([C,D])
            if adj:
                if orientR(A,B,C)==0 and orientR(A,B,D)==0: return False
                for x in (C,D):
                    if x not in sh and onseg(A,B,x): return False
                for x in (A,B):
                    if x not in sh and onseg(C,D,x): return False
            else:
                if pc(A,B,C,D): return False
                for x in (C,D):
                    if onseg(A,B,x): return False
                for x in (A,B):
                    if onseg(C,D,x): return False
    return True
def finite(P,Q):
    for k in range(7):
        A,B=P[k],P[(k+1)%7]
        for j in range(7):
            C,D=Q[j],Q[(j+1)%7]
            if orientR(A,B,C)!=0 or orientR(A,B,D)!=0: continue
            u=(B[0]-A[0],B[1]-A[1]); ax=0 if u[0]!=0 else 1
            lo1,hi1=sorted([A[ax],B[ax]]); lo2,hi2=sorted([C[ax],D[ax]])
            if max(lo1,lo2)<min(hi1,hi2): return False
    return True
def degpts(P,Q):
    s=set()
    for x in set(P)|set(Q):
        if any(onseg(P[k],P[(k+1)%7],x) for k in range(7)) and \
           any(onseg(Q[m],Q[(m+1)%7],x) for m in range(7)): s.add(x)
    return s
def cross(P,Q): return sum(1 for k in range(7) for j in range(7)
                           if pc(P[k],P[(k+1)%7],Q[j],Q[(j+1)%7]))
def coinc(P,Q): return sum(1 for v in range(7) for j in range(7) if P[v]==Q[j])
def star7(rng,R=14):
    while True:
        angs=sorted(rng.sample(range(0,360),7)); pts=[]
        for a in angs:
            r=rng.randint(4,R)
            pts.append((F(round(r*math.cos(math.radians(a)))),
                        F(round(r*math.sin(math.radians(a))))))
        if len(set(pts))==7 and simple(pts): return pts

from fractions import Fraction as F
import random

def crossv(u,v): return u[0]*v[1]-u[1]*v[0]
def segDeg(P,Q):  return [(k,j) for k in range(7) for j in range(7) if onseg(P[k],P[(k+1)%7],Q[j])]
def segDegP(P,Q): return [(m,v) for m in range(7) for v in range(7) if onseg(Q[m],Q[(m+1)%7],P[v])]

rng=random.Random(4242)
tested=0; hyp_ok=0; full_ok=0; witness=None
for _ in range(6000):
    P=star7(rng); Q=star7(rng)
    i=rng.randrange(7); j=rng.randrange(7)
    Q=list(Q); Q[j]=P[i]
    if not (simple(P) and simple(Q) and finite(P,Q)): continue
    if coinc(P,Q)!=1: continue
    tested+=1
    Pi,Pi1 = P[i],P[(i+1)%7]; Pim1 = P[(i-1)%7]
    Qj1 = Q[(j+1)%7]
    E = (Qj1[0]-Pi1[0], Qj1[1]-Pi1[1])
    if E==(0,0): continue
    # hnp
    hnp = crossv((Pi1[0]-Pi[0],Pi1[1]-Pi[1]), (Qj1[0]-Pi[0],Qj1[1]-Pi[1]))
    if hnp==0: continue
    # hgoodN : for m != j+1
    ok=True
    for m in range(7):
        if m==(j+1)%7: continue
        w=(Pi1[0]-Q[m][0], Pi1[1]-Q[m][1])
        if w!=(0,0) and crossv(E,w)==0: ok=False;break
    if not ok: continue
    # hgoodP : all m
    for m in range(7):
        w=(Q[m][0]-Pim1[0], Q[m][1]-Pim1[1])
        if w!=(0,0) and crossv(E,w)==0: ok=False;break
    if not ok: continue
    hyp_ok+=1
    # hslots : at most 4 slots die, over admissible small e
    S0=len(segDeg(P,Q))+len(segDegP(P,Q))
    slots_fine=True; any_adm=False
    for e in (F(1,10**3),F(1,10**6),F(1,10**9)):
        P2=list(P); P2[i]=(Pi[0]+e*E[0], Pi[1]+e*E[1])
        if not (simple(P2) and finite(P2,Q)): continue
        if coinc(P2,Q)>=1: continue
        any_adm=True
        S1=len(segDeg(P2,Q))+len(segDegP(P2,Q))
        if S0 > S1+4: slots_fine=False
    if any_adm and slots_fine:
        full_ok+=1
        if witness is None:
            witness=(P,Q,i,j,S0)
print("configs with exactly one coincidence, simple+finite :", tested)
print("  satisfying hnp AND hgoodN AND hgoodP             :", hyp_ok)
print("  ALSO satisfying hslots (<=4 slots die)           :", full_ok)
print()
if witness:
    P,Q,i,j,S0=witness
    print("WITNESS -- all hypotheses of exists_move_coinc_lt_M_pt_le hold:")
    print("  P =",[(int(a),int(b)) for a,b in P])
    print("  Q =",[(int(a),int(b)) for a,b in Q])
    print("  i =",i," j =",j," slots before =",S0)
    print()
    print("=> THEOREM IS NON-VACUOUS.")
else:
    print("=> NO witness found: the hypotheses may be jointly unsatisfiable (VACUOUS).")
