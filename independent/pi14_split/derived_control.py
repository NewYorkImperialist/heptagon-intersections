#!/usr/bin/env python3
"""Soundness control for derived.py.

The Theorem's hypotheses (13 crossings + P0/xP2 + P1/xQ1) are SATISFIABLE
(sampler.c finds tens of thousands of witnesses).  If every constraint in
derived.py is a genuine consequence of them, then hypotheses + DERIVED must
still be SAT.  An `unsat` here would mean one of the derived facts is WRONG.
Each derived constraint is additionally tested one at a time: hypotheses +
NOT(phi) must be unsat.
"""
import random, time, sys
from z3 import *
from core_tools import PI14, conds_for, NAME
from derived import DERIVED, SIGNS, sign_constraints, extra_noncrossings

XS = [k for k,(_,_,w) in enumerate(PI14) if w]
# base = the Theorem's 15 + Q0/xQ2 (LEMMA 4's extra hypothesis) + P1/xP3
# (needed for the P1/xP3-second-disjunct entry).  All as full disjunctions.
THM = {k: None for k in XS}
for k in (0, 7, 17, 5): THM[k] = None       # P0/P2, P1/Q1, Q0/Q2, P1/P3

def base():
    C = []
    for k,b in THM.items(): C += conds_for(k,b)
    return C

def run(C, tries=16, each=4000, seed=5):
    rng = random.Random(seed)
    for i in range(tries):
        D = list(C)
        if i: rng.shuffle(D)
        s = Tactic('qfnra-nlsat').solver(); s.set('timeout', each); s.set('nlsat.seed', i)
        s.add(D); r = s.check()
        if r == unsat: return 'unsat'
        if r == sat:   return 'sat'
    return 'unknown'

B = base()
t=time.time(); print('CONTROL A  hypotheses alone                    :', run(B), '(%.0fs)'%(time.time()-t), flush=True)
t=time.time(); print('CONTROL B  hypotheses + all 48 derived facts   :', run(B+DERIVED), '(%.0fs)'%(time.time()-t), flush=True)

print('\nper-fact check: hypotheses + NOT(phi) should be unsat')
scs = sign_constraints()
ok=bad=unk=0
for (a,b,c,s,prov), phi in zip(SIGNS, scs):
    r = run(B+[Not(phi)], tries=10, each=3000, seed=9)
    tag = {'unsat':'OK','sat':'*** WRONG ***','unknown':'unknown'}[r]
    if r=='unsat': ok+=1
    elif r=='sat': bad+=1; print('  or(%d,%d,%d) %+d [%s] : %s'%(a,b,c,s,prov,tag), flush=True)
    else: unk+=1; print('  or(%d,%d,%d) %+d [%s] : %s'%(a,b,c,s,prov,tag), flush=True)
from derived import p1p3_second_disjunct
for nm, phi in zip(('P0/xQ0','P2/xQ2','P1/xP3 bit1'),
                   extra_noncrossings()+p1p3_second_disjunct()):
    r = run(B+[Not(phi)], tries=10, each=3000, seed=9)
    print('  %s : %s'%(nm, r), flush=True)
    if r=='unsat': ok+=1
    elif r=='sat': bad+=1
    else: unk+=1
print('\nper-fact summary: %d confirmed unsat, %d WRONG, %d unknown'%(ok,bad,unk))
