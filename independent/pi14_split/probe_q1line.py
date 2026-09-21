#!/usr/bin/env python3
"""Which same-side-of-line-Q1 statements does the 11-condition BACKBONE kill?

BACKBONE = P0/P2[0], P0xQ1, P0xQ2, P0xQ4, P1xQ0, P1/Q1[0], P1xQ2, P1xQ4,
           P2xQ0, P2xQ1, P2xQ4     (11 conditions, vertices 0,1,2,3,7..12)

For each pair (u,v) of Q-vertices we ask whether BACKBONE (optionally + P1xQ3)
is consistent with  orient(V8,V9,u)*orient(V8,V9,v) > 0.
`unknown` is reported as such and never counted as a refutation."""
import itertools, time, sys
from z3 import *
from core_tools import conds_for, PT, orient, NAME, PI14
from shuffle_port import solve_shuf
import random

BACKBONE = {0:0, 2:None,3:None,4:None,6:None,7:0,8:None,10:None,11:None,12:None,13:None}
P1xQ3 = 9      # ((1,2),(10,11),True)
assert PI14[P1xQ3] == ((1,2),(10,11),True)

def run(sel, extra, tries=14, each=3000, seed=0):
    C = []
    for k,b in sel.items(): C += conds_for(k,b)
    C += extra
    rng = random.Random(seed)
    for i in range(tries):
        D = list(C)
        if i: rng.shuffle(D)
        s = Tactic('qfnra-nlsat').solver(); s.set('timeout', each); s.set('nlsat.seed', i)
        s.add(D); r = s.check()
        if r != unknown: return str(r)
    return 'unknown'

if __name__ == '__main__':
    which = sys.argv[1] if len(sys.argv)>1 else 'plain'
    sel = dict(BACKBONE)
    if which == 'p1q3': sel[P1xQ3] = None
    print('# BACKBONE' + (' + P1xQ3' if which=='p1q3' else ''), flush=True)
    for u,v in itertools.combinations([7,10,11,12],2):
        e = [orient(PT[8],PT[9],PT[u])*orient(PT[8],PT[9],PT[v]) > 0]
        t=time.time(); r = run(sel, e, seed=hash((u,v))%1000)
        print(f'  or(8,9,{u})*or(8,9,{v}) > 0 :  {r}   ({time.time()-t:.0f}s)', flush=True)
