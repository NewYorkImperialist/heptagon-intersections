#!/usr/bin/env python3
"""Attack the 64 branches left open after the Theorem, with the synthetic
proof's derived sign facts added (derived.py).

The derived facts are consequences of Pi_14's hypotheses, so adding them
changes neither satisfiability nor soundness -- but they are degree-2
inequalities where the branch constraints are degree-4, which is the regime
nlsat handles best (FINDINGS.md 7.3).

Only the 32 branches with bit4(n)=0 are solved; each result transfers to its
twin n^16 by the P1/xQ1 equivalence (ASYMMETRY.md 6).
Portfolio: constraint-order shuffles x nlsat seeds (FINDINGS.md 6b, ASYMMETRY 3).
"""
import sys, time, random
from z3 import *
from core_tools import PI14, conds_for, NAME
from derived import DERIVED

XS   = [k for k,(_,_,w) in enumerate(PI14) if w]
NEGS = [k for k,(_,_,w) in enumerate(PI14) if not w]

def sel_of_branch(n):
    sel = {k: None for k in XS}
    ch  = [(n >> (7-i)) & 1 for i in range(8)]
    for i,k in enumerate(NEGS): sel[k] = ch[i]
    return sel

def solve(C, tries, each, seed):
    rng = random.Random(seed)
    for i in range(tries):
        D = list(C)
        if i: rng.shuffle(D)
        s = Tactic('qfnra-nlsat').solver(); s.set('timeout', each); s.set('nlsat.seed', i)
        s.add(D); r = s.check()
        if r == unsat: return 'unsat', i, None
        if r == sat:   return 'sat',   i, s.model()
    return 'unknown', None, None

if __name__ == '__main__':
    mode = sys.argv[1]
    tries = int(sys.argv[2]) if len(sys.argv)>2 else 30
    each  = int(sys.argv[3]) if len(sys.argv)>3 else 6000
    if mode == 'mono':
        C = []
        for k in range(21): C += conds_for(k, None)
        t=time.time(); r,i,m = solve(C+DERIVED, tries, each, 1234)
        print('MONOLITHIC Pi_14 + derived : %s order#%s (%.0fs)'%(r,i,time.time()-t), flush=True)
        if r=='sat':
            print('!!! SAT -- verify outside z3 with verify_model.py'); print(m)
    else:
        lo, hi = int(sys.argv[4]), int(sys.argv[5])
        TODO = [n for n in range(256) if n % 4 == 3 and not (n >> 4) & 1]
        got = []
        for n in TODO[lo:hi]:
            C = []
            for k,b in sel_of_branch(n).items(): C += conds_for(k,b)
            t=time.time(); r,i,m = solve(C+DERIVED, tries, each, n*7+1)
            print('branch %3d (twin %3d) : %-8s order#%-4s (%.0fs)'%(n, n^16, r, i, time.time()-t), flush=True)
            if r=='unsat': got.append(n)
            if r=='sat':
                print('!!! SAT BRANCH', n, flush=True); print(m, flush=True)
        print('NEWLY REFUTED (%d): %s'%(len(got), got), flush=True)
