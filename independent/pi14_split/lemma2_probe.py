#!/usr/bin/env python3
"""Is there an EIGHT-point lemma pinning or(8,9,11) and or(8,9,12)?

Candidate LEMMA 2 on V0,V1,V2,V3,V8,V9,V11,V12 (eight points, so the TU Graz
order-type database can certify it exhaustively):

  H1 P0 x Q1        (0,1)x(8,9)
  H2 P2 x Q1        (2,3)x(8,9)
  H3 P0 x Q4        (0,1)x(11,12)
  H4 P1 x Q4        (1,2)x(11,12)
  H5 P2 x Q4        (2,3)x(11,12)
  H6 or(0,1,2)*or(0,1,3) > 0        first disjunct of P0 /x P2
  H7 or(8,9,1)*or(8,9,2) > 0        (the LEMMA 1 output, imported)

  C1 or(8,9,1)*or(8,9,11) < 0
  C2 or(8,9,1)*or(8,9,12) > 0

Also tries H6 replaced by the second disjunct, and H6 dropped.
"""
import itertools, random, sys, time
from z3 import *

P = {i:(Real('x%d'%i), Real('y%d'%i)) for i in (0,1,2,3,8,9,11,12)}
# 3-point affine normalisation: V0=(0,0), V1=(1,0), V2=(0,1)
P[0]=(RealVal(0),RealVal(0)); P[1]=(RealVal(1),RealVal(0)); P[2]=(RealVal(0),RealVal(1))
def orr(a,b,c):
    A,B,C = P[a],P[b],P[c]
    return (B[0]-A[0])*(C[1]-A[1])-(B[1]-A[1])*(C[0]-A[0])
def X(a,b,c,d): return [orr(a,b,c)*orr(a,b,d) < 0, orr(c,d,a)*orr(c,d,b) < 0]

def run(H, concl, tries=24, each=5000, seed=3):
    rng = random.Random(seed)
    base = list(H)+[Not(concl)]
    for i in range(tries):
        D = list(base)
        if i: rng.shuffle(D)
        s = Tactic('qfnra-nlsat').solver(); s.set('timeout', each); s.set('nlsat.seed', i)
        s.add(D); r = s.check()
        if r == unsat: return 'unsat(claim holds)', i
        if r == sat:   return 'sat(COUNTEREXAMPLE)', i
    return 'unknown', None

H_core = X(0,1,8,9)+X(2,3,8,9)+X(0,1,11,12)+X(1,2,11,12)+X(2,3,11,12)
H7 = [orr(8,9,1)*orr(8,9,2) > 0]
H6a = [orr(0,1,2)*orr(0,1,3) > 0]
H6b = [orr(2,3,0)*orr(2,3,1) > 0]

C1 = orr(8,9,1)*orr(8,9,11) < 0
C2 = orr(8,9,1)*orr(8,9,12) > 0

for name, H6 in (('P0/P2 bit0', H6a), ('P0/P2 bit1', H6b), ('P0/P2 dropped', [])):
    for cname, cc in (('C1 or(8,9,11)=-eps', C1), ('C2 or(8,9,12)=+eps', C2)):
        t=time.time(); r = run(H_core+H7+H6, cc)
        print('%-16s %-22s : %-22s %s (%.0fs)'%(name, cname, r[0], r[1], time.time()-t), flush=True)
# control: drop H7 (the Lemma 1 import) -- should become satisfiable
for cname, cc in (('C1', C1), ('C2', C2)):
    t=time.time(); r = run(H_core+H6a, cc)
    print('%-16s %-22s : %-22s %s (%.0fs)'%('NO H7 (control)', cname, r[0], r[1], time.time()-t), flush=True)
