#!/usr/bin/env python3
"""Rung L5 alone: the FULL 21-condition Pi_14 with Q1/xQ3 and Q1/xQ4 pinned to
their second disjunct (their first is refuted by ASYMMETRY.md's Theorem, whose
V11 half is proved synthetically in SYNTHETIC.md), the other five non-crossings
left as genuine disjunctions, plus derived.py's 48 facts.
An `unsat` here closes all 256 branches."""
import sys, time, random
from z3 import *
from core_tools import conds_for
from derived import DERIVED
from ladder import BASE, IDX
C = list(BASE)
for nm in ('Q0/Q2','Q0/Q3','P0/P2','P0/P3','P1/P3'): C += conds_for(IDX[nm], None)
C += DERIVED
tries=int(sys.argv[1]); each=int(sys.argv[2])
rng=random.Random(20260921); t=time.time()
for i in range(tries):
    D=list(C)
    if i: rng.shuffle(D)
    s=Tactic('qfnra-nlsat').solver(); s.set('timeout',each); s.set('nlsat.seed',i)
    s.add(D); r=s.check()
    if i%5==0: print('  ...order #%d, %.0fs elapsed'%(i,time.time()-t), flush=True)
    if r==unsat:
        print('L5 UNSAT at order #%d (%.0fs) -- closes all 256 branches'%(i,time.time()-t), flush=True); break
    if r==sat:
        print('L5 SAT at order #%d -- VERIFY OUTSIDE z3'%i, flush=True); print(s.model(), flush=True); break
else:
    print('L5 unknown after %d orders (%.0fs)'%(tries,time.time()-t), flush=True)
