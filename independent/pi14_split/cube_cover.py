#!/usr/bin/env python3
"""For each branch the final census refuted, delete as many of the eight
NEGATED-crossing conditions as possible while the system stays unsat (all 13
crossings always kept).  The surviving fixed bits define a SUBCUBE of branches
that are all unsat by monotonicity.  Union of the cubes = new refuted set.

`unknown` always counts as "cannot drop", so every cube reported is sound."""
import sys, random, time
from core_tools import *
from shuffle_port import solve_shuf, sel_of_branch

REF = [0,1,4,5,12,13,16,17,20,28,29,30,32,33,36,37,40,44,45,46,48,49,52,53,56,57,60,61,
       65,69,77,81,85,93,97,101,109,112,113,125,
       128,132,133,136,140,141,144,145,148,149,152,156,157,160,161,164,165,168,172,173,
       176,177,180,181,188,189,
       193,197,205,209,224,225,229,237,245,253]

def cube_of(n, tries=5, each=1500, seed=0, rounds=2):
    sel = sel_of_branch(n)
    r,_ = solve_shuf(sel, tries=tries, each=each, seed=seed)
    if r != 'unsat':
        r,_ = solve_shuf(sel, tries=10, each=4000, seed=seed+99)
        if r != 'unsat': return None
    rng = random.Random(seed); cur = dict(sel)
    for _ in range(rounds):
        order = [k for k in NEGS if k in cur]; rng.shuffle(order); ch=False
        for k in order:
            trial = {a:b for a,b in cur.items() if a!=k}
            if solve_shuf(trial, tries=tries, each=each, seed=rng.randrange(1<<20))[0]=='unsat':
                cur = trial; ch=True
        if not ch: break
    return {k: cur[k] for k in NEGS if k in cur}

if __name__=='__main__':
    lo,hi = int(sys.argv[1]), int(sys.argv[2])
    for idx in range(lo,hi):
        n=REF[idx]; t=time.time()
        c = cube_of(n, seed=n)
        if c is None: print(f'branch {n:3d}: NOT reproduced', flush=True); continue
        bits = {NEGS.index(k): b for k,b in c.items()}
        print(f'branch {n:3d}: fixed {len(bits)} bits {bits}  free={8-len(bits)}  ({time.time()-t:.0f}s)', flush=True)
