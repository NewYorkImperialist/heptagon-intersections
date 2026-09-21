#!/usr/bin/env python3
"""LEMMA 4 says or(1,2,4) = -or(1,2,8), and S2 says or(1,2,3) = +or(1,2,8).
So or(1,2,3)*or(1,2,4) < 0 -- which is the NEGATION of the FIRST disjunct of
P1 /x P3.  Every branch taking that disjunct is therefore refuted.

Independent machine check of the same statement: the 13 crossings + P1/xQ1 +
Q0/xQ2 (both as genuine disjunctions) + P1/xP3 on its first disjunct."""
import time, random
from z3 import *
from core_tools import PI14, conds_for, NAME
IDX = {NAME[k]: k for k in range(21)}
XS = [k for k,(_,_,w) in enumerate(PI14) if w]

def solve(C, tries=30, each=6000, seed=1):
    rng=random.Random(seed)
    for i in range(tries):
        D=list(C)
        if i: rng.shuffle(D)
        s=Tactic('qfnra-nlsat').solver(); s.set('timeout',each); s.set('nlsat.seed',i)
        s.add(D); r=s.check()
        if r==unsat: return 'unsat',i
        if r==sat: return 'sat',i
    return 'unknown',None

base=[]
for k in XS: base+=conds_for(k,None)
base+=conds_for(IDX['P1/Q1'],None)+conds_for(IDX['Q0/Q2'],None)

t=time.time(); print('13 crossings + P1/xQ1 + Q0/xQ2 + P1/xP3[bit0] :',
                     solve(base+conds_for(IDX['P1/P3'],0)), '(%.0fs)'%(time.time()-t), flush=True)
t=time.time(); print('   CONTROL, same with P1/xP3[bit1]            :',
                     solve(base+conds_for(IDX['P1/P3'],1)), '(%.0fs)'%(time.time()-t), flush=True)
t=time.time(); print('   CONTROL, drop Q0/xQ2, keep P1/xP3[bit0]    :',
                     solve([c for c in base if c not in conds_for(IDX['Q0/Q2'],None)]
                           +conds_for(IDX['P1/P3'],0)), '(%.0fs)'%(time.time()-t), flush=True)
