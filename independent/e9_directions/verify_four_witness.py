#!/usr/bin/env python3
"""Independent check of the four-element witness set for the 9.1 step.

An earlier run of mine refuted the SLIDE route using only the two OUTWARD
displacements (-w and +u, which extend an incident side).  A delegated cell
enumeration then reported that the four-element set

    d in delta * { +u, -u, +w, -w },   u = P[v]-P[v-1],  w = P[v+1]-P[v]

always contains an admissible move with dM_pt >= 0.  The two sets differ
exactly in the INWARD displacements, which the earlier run never tested --
and on the star witness of row 132 it is precisely those that work (+2 each,
against -1 for the two outward ones).

This checks the four-element claim with independently written code.
Exact Fraction arithmetic; no floats.
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


import random
rng=random.Random(31337)
tot=0; ok4=0; fails=[]; hist={}
for _ in range(9000):
    P=star7(rng); Q=star7(rng)
    v=rng.randrange(7); j=rng.randrange(7)
    Q=list(Q); Q[j]=P[v]
    if not (simple(P) and simple(Q) and finite(P,Q)): continue
    if coinc(P,Q)!=1: continue
    tot+=1
    D0=degpts(P,Q); M0=cross(P,Q)+len(D0)
    u=(P[v][0]-P[(v-1)%7][0], P[v][1]-P[(v-1)%7][1])
    w=(P[(v+1)%7][0]-P[v][0], P[(v+1)%7][1]-P[v][1])
    best=None
    for E in (u,(-u[0],-u[1]),w,(-w[0],-w[1])):
        if E==(0,0): continue
        for e in (F(1,10**3),F(1,10**6),F(1,10**12)):
            P2=list(P); P2[v]=(P[v][0]+e*E[0],P[v][1]+e*E[1])
            if not (simple(P2) and finite(P2,Q)): continue
            if coinc(P2,Q)>=1: continue
            d=cross(P2,Q)+len(degpts(P2,Q))-M0
            if best is None or d>best: best=d
    if best is None:
        fails.append(('no admissible member',P,Q,v,j)); continue
    hist[best]=hist.get(best,0)+1
    if best>=0: ok4+=1
    else: fails.append(('all four negative',P,Q,v,j))
print("one-coincidence simple+finite instances :",tot)
print("  4-element set contains a non-decreasing admissible move :",ok4)
print("  failures :",len(fails))
print("  best-over-set histogram :",dict(sorted(hist.items())))
print()
print("VERDICT:","CONFIRMED" if not fails else "REFUTED")
