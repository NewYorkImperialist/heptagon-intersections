#!/usr/bin/env python3
"""
Corollary U52 in docs/akr-9-assembly.md 2.2 claims |dP cap dQ| <= 52 for finite
boundary intersection, calling it "the project's first upper bound with no
external input whatsoever".

It is strictly WEAKER than an immediate bound.

  CLAIM.  If dP cap dQ is finite, then |dP cap dQ| <= 49.
  Proof.  dP is the union of 7 closed segments and dQ of 7, so
  dP cap dQ = union over the 49 pairs of (S_i cap T_j).  Two closed segments
  meet in the empty set, one point, or a subsegment; a subsegment of positive
  length would make dP cap dQ infinite.  So each of the 49 pairs contributes at
  most one point.  QED -- no simplicity, no general position, no AKR.

49 < 52, so U52 adds nothing as stated.  What DOES have content is the
parametrised form U52 proves on the way:

  |dP cap dQ| <= 38 + d,   d = number of points that are a vertex of either
                               polygon  (d <= 14)

which beats 49 exactly when d <= 10.  That is the statement worth formalising.
This script checks both bounds and measures how often each is the better one.
"""
from fractions import Fraction as F
import random, sys
sys.path.insert(0,"independent/e9_directions")
from global_finiteness import (V, sub, cross2, dot, orient, on_closed, pc,
                               sides, seg_inter, finite, rand_simple)

def pts(P,Q):
    S=set()
    for a in sides(P):
        for b in sides(Q):
            r=seg_inter(*a,*b)
            if r[0]=='point': S.add(r[1])
            elif r[0]=='seg': return None
    return S

rnd=random.Random(11)
n=0; over49=0; best49=0; best38d=0; maxseen=0
for _ in range(600):
    P=rand_simple(7,-12,12,rnd); Q=rand_simple(7,-12,12,rnd)
    X=pts(P,Q)
    if X is None: continue
    n+=1
    k=len(X); maxseen=max(maxseen,k)
    d=sum(1 for p in X if p in set(P)|set(Q))
    if k>49: over49+=1
    if 49 <= 38+d: best49+=1
    else: best38d+=1
print(f"finite heptagon pairs tested        : {n}")
print(f"  violations of |X| <= 49           : {over49}   <- want 0")
print(f"  largest |X| observed              : {maxseen}")
print(f"  49 is the better bound            : {best49}")
print(f"  38+d is the better bound          : {best38d}")
