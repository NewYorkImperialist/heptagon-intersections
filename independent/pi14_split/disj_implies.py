#!/usr/bin/env python3
"""For each of the eight negated crossings, does one disjunct IMPLY the other,
given only the 13 prescribed crossings?

If disjunct i implies disjunct j, then every branch taking j that is unsat
forces the branch taking i to be unsat too -- for free, with no solver call."""
import random, time
from z3 import *
from core_tools import conds_for, PT, orient, NAME, PI14, XS, NEGS

def disj(k, b):
    (a,bb),(c,d),w = PI14[k]; A,B,C,D = PT[a],PT[bb],PT[c],PT[d]
    return (orient(A,B,C)*orient(A,B,D) if b==0 else orient(C,D,A)*orient(C,D,B))

def ask(C, tries=10, each=3000, seed=0):
    rng = random.Random(seed)
    for i in range(tries):
        D = list(C)
        if i: rng.shuffle(D)
        s = Tactic('qfnra-nlsat').solver(); s.set('timeout',each); s.set('nlsat.seed',i)
        s.add(D); r = s.check()
        if r != unknown: return str(r)
    return 'unknown'

base = []
for k in XS: base += conds_for(k, None)
for k in NEGS:
    for i,j in ((0,1),(1,0)):
        C = base + [disj(k,i) > 0, disj(k,j) < 0]
        t=time.time(); r = ask(C, seed=k*7+i)
        verdict = 'bit%d => bit%d' % (i,j) if r=='unsat' else ('independent' if r=='sat' else 'unknown')
        print(f'  {NAME[k]:10s} bit{i} & NOT bit{j} : {r:8s}  {verdict}   ({time.time()-t:.0f}s)', flush=True)
