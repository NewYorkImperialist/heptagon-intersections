#!/usr/bin/env python3
"""Under the Theorem's hypotheses (13 crossings + P0/P2 + P1/Q1), which sides
of the OTHER Q-lines are forced?  Lemma 1 determines the line V8V9 completely;
if another line were equally determined there would be a second lemma."""
import itertools, random, sys
from z3 import *
from core_tools import conds_for, PT, orient, XS
BASE = {k: None for k in XS}; BASE[0]=0; BASE[7]=0     # P0/P2 bit0, P1/Q1 bit0
def ask(C, tries=8, each=2500, seed=0):
    rng=random.Random(seed)
    for i in range(tries):
        D=list(C)
        if i: rng.shuffle(D)
        s=Tactic('qfnra-nlsat').solver(); s.set('timeout',each); s.set('nlsat.seed',i)
        s.add(D); r=s.check()
        if r!=unknown: return str(r)
    return 'unknown'
base=[]
for k,b in BASE.items(): base += conds_for(k,b)
for line in [(10,11),(11,12),(9,10),(7,8)]:
    others=[v for v in [0,1,2,3,4,7,8,9,10,11,12] if v not in line]
    det=0; tot=0; res=[]
    for u,v in itertools.combinations(others,2):
        e1=orient(PT[line[0]],PT[line[1]],PT[u]); e2=orient(PT[line[0]],PT[line[1]],PT[v])
        rp=ask(base+[e1*e2>0], seed=u*31+v); rm=ask(base+[e1*e2<0], seed=u*31+v+7)
        tot+=1
        if rp=='unsat' and rm!='unsat': det+=1; res.append((u,v,'OPP'))
        elif rm=='unsat' and rp!='unsat': det+=1; res.append((u,v,'SAME'))
    print(f'line V{line[0]}V{line[1]}: {det}/{tot} pairs forced', flush=True)
    for u,v,t in res: print(f'    or({line[0]},{line[1]},{u})*or({line[0]},{line[1]},{v}) : {t}', flush=True)
