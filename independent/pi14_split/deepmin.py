#!/usr/bin/env python3
"""Deletion-based minimisation using the ORDER-shuffling portfolio."""
import sys, random, time
from core_tools import *
from shuffle_port import solve_shuf, sel_of_branch

def minimise(sel, tries=10, each=3000, rounds=4, seed=0, verbose=True):
    rng = random.Random(seed); cur = dict(sel)
    for rd in range(rounds):
        order = list(cur); rng.shuffle(order); changed = False
        for k in order:
            if k not in cur: continue
            trial = {a: b for a, b in cur.items() if a != k}
            r, _ = solve_shuf(trial, tries=tries, each=each, seed=rng.randrange(1 << 20))
            if r == 'unsat':
                cur = trial; changed = True
                if verbose: print('   drop %-10s (%d left)' % (NAME[k], len(cur)), flush=True)
        if not changed: break
    return cur

if __name__ == '__main__':
    n = int(sys.argv[1]); seed = int(sys.argv[2]) if len(sys.argv) > 2 else 0
    sel = sel_of_branch(n)
    r, _ = solve_shuf(sel, tries=10, each=3000, seed=seed)
    print(f'branch {n}: {r}', flush=True)
    if r != 'unsat': sys.exit()
    core = minimise(sel, seed=seed)
    print(f'CORE({len(core)}) branch {n} seed {seed}: {show(core)}', flush=True)
    print('  fixed bits:', {NAME[k]: b for k, b in core.items() if not PI14[k][2]}, flush=True)
    vs = sorted({v for k in core for pr in PI14[k][:2] for v in pr})
    print('  vertices:', vs, flush=True)
