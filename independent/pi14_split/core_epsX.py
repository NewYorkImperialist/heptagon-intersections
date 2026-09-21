#!/usr/bin/env python3
"""Minimal core for  hyps => or(8,9,1)*or(8,9,11) < 0   (CLAIM X in the form
that does not mention V10), and for or(8,9,1)*or(8,9,12) > 0."""
import sys, time, random
from z3 import *
from core_tools import PI14, PT, orient, conds_for, NAME
XSIDX=[k for k,(_,_,w) in enumerate(PI14) if w]
K_P0P2, K_P1Q1 = 0, 7
NEG = {'X': orient(PT[8],PT[9],PT[1])*orient(PT[8],PT[9],PT[11]) > 0,
       'Y': orient(PT[8],PT[9],PT[1])*orient(PT[8],PT[9],PT[12]) < 0}
def solve(extra, sel, tries=20, each=4000, seed=0):
    C=list(extra)
    for k,b in sel.items(): C+=conds_for(k,b)
    rng=random.Random(seed)
    for i in range(tries):
        D=list(C)
        if i: rng.shuffle(D)
        s=Tactic('qfnra-nlsat').solver(); s.set('timeout',each); s.set('nlsat.seed',i)
        s.add(D); r=s.check()
        if r==unsat: return 'unsat'
        if r==sat: return 'sat'
    return 'unknown'
def minim(extra, sel, each=5000, rounds=4, seed=0):
    rng=random.Random(seed); cur=dict(sel)
    for rd in range(rounds):
        order=list(cur); rng.shuffle(order); ch=False
        for k in order:
            if k not in cur: continue
            trial={a:b for a,b in cur.items() if a!=k}
            if solve(extra,trial,tries=16,each=each,seed=seed+rd)=='unsat':
                cur=trial; ch=True
                print('   drop %-8s (%d left)'%(NAME[k],len(cur)),flush=True)
        if not ch: break
    return cur
tgt=sys.argv[1]
for b02 in (0,1):
  for b11 in (0,1):
    sel={k:None for k in XSIDX}; sel[K_P0P2]=b02; sel[K_P1Q1]=b11
    t=time.time(); r=solve([NEG[tgt]],sel,tries=24,each=5000,seed=11)
    print('[%s] P0/P2=%d P1/Q1=%d : %-8s (%.0fs)'%(tgt,b02,b11,r,time.time()-t),flush=True)
    if r=='unsat':
        for mseed in (0,1,2):
            c=minim([NEG[tgt]],sel,each=5000,rounds=4,seed=mseed*13+b02*2+b11)
            print('  CORE(%d) seed%d: %s'%(len(c),mseed,', '.join('%s%s'%(NAME[k],'' if PI14[k][2] else '[%s]'%b) for k,b in sorted(c.items()))),flush=True)
