#!/usr/bin/env python3
"""Minimal unsat cores for the V11 half of the Theorem.

CLAIM X:  the 13 prescribed crossings + P0/xP2 + P1/xQ1  force
          or(8,9,10)*or(8,9,11) < 0.
ASYMMETRY.md  1  gives a 12-condition core (CORE0) for the Q4 statement
          or(8,9,11)*or(8,9,12) < 0.
This script hunts the analogous core for CLAIM X, with each of the four
disjunct combinations of the two non-crossings, and minimises it.
"""
import sys, time, random
from z3 import *
from core_tools import PI14, PT, orient, conds_for, NAME, solve_set, minimise
from shuffle_port import solve_shuf

A,B,C,D = PT[8],PT[9],PT[10],PT[11]
NEG_X   = orient(A,B,C)*orient(A,B,D) > 0      # or(8,9,10)*or(8,9,11) > 0
E       = PT[12]
NEG_Y   = orient(A,B,D)*orient(A,B,E) > 0      # or(8,9,11)*or(8,9,12) > 0

XSIDX = [k for k,(_,_,w) in enumerate(PI14) if w]
K_P0P2, K_P1Q1 = 0, 7           # indices into PI14
assert NAME[K_P0P2]=='P0/P2' and NAME[K_P1Q1]=='P1/Q1', (NAME[K_P0P2],NAME[K_P1Q1])

def solve(extra, sel, tries=20, each=4000, seed=0):
    C = list(extra)
    for k,b in sel.items(): C += conds_for(k,b)
    rng = random.Random(seed)
    for i in range(tries):
        Dl = list(C)
        if i: rng.shuffle(Dl)
        s = Tactic('qfnra-nlsat').solver(); s.set('timeout', each); s.set('nlsat.seed', i)
        s.add(Dl); r = s.check()
        if r == unsat: return 'unsat', i
        if r == sat:   return 'sat', i, s.model()
    return 'unknown', None

def minim(extra, sel, each=4000, rounds=3, seed=0):
    rng = random.Random(seed); cur = dict(sel)
    for rd in range(rounds):
        order = list(cur); rng.shuffle(order); changed=False
        for k in order:
            if k not in cur: continue
            trial = {a:b for a,b in cur.items() if a!=k}
            if solve(extra, trial, tries=14, each=each, seed=seed+rd)[0]=='unsat':
                cur = trial; changed=True
                print('   drop %-8s -> still unsat (%d left)'%(NAME[k],len(cur)), flush=True)
        if not changed: break
    return cur

if __name__ == '__main__':
    target = sys.argv[1] if len(sys.argv)>1 else 'X'
    extra  = [NEG_X] if target=='X' else [NEG_Y]
    print('target:', 'or(8,9,10)*or(8,9,11)>0' if target=='X' else 'or(8,9,11)*or(8,9,12)>0')
    for b02 in (0,1):
        for b11 in (0,1):
            sel = {k: None for k in XSIDX}
            sel[K_P0P2] = b02; sel[K_P1Q1] = b11
            t=time.time(); r = solve(extra, sel, tries=24, each=5000, seed=17)
            print('P0/P2=%d P1/Q1=%d : %-8s (%.0fs)'%(b02,b11,r[0],time.time()-t), flush=True)
            if r[0]=='unsat':
                core = minim(extra, sel, each=5000, rounds=3, seed=b02*2+b11)
                print('  CORE (%d):'%len(core), ', '.join(
                    '%s%s'%(NAME[k], '' if PI14[k][2] else '[%s]'%b) for k,b in sorted(core.items())), flush=True)
