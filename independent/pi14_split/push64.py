#!/usr/bin/env python3
"""The 64 branches left open after the Theorem are exactly n = 3 (mod 4).
By the P1/Q1 equivalence (ASYMMETRY.md 6) only the 32 with bit4(n)=0 need
solving; each result transfers to its twin n^16.
Portfolio: 24 constraint orders x nlsat seeds, 5 s each."""
import sys, time
from core_tools import *
from shuffle_port import solve_shuf, sel_of_branch
TODO = [n for n in range(256) if n % 4 == 3 and not (n >> 4) & 1]
lo, hi = int(sys.argv[1]), int(sys.argv[2])
got = []
for n in TODO[lo:hi]:
    t = time.time(); r, i = solve_shuf(sel_of_branch(n), tries=24, each=5000, seed=n*7+1)
    print(f'branch {n:3d} (twin {n^16:3d}) : {r:8s} order#{i}  ({time.time()-t:.0f}s)', flush=True)
    if r == 'unsat': got.append(n)
    if r == 'sat': print('!!! SAT BRANCH', n, flush=True)
print('NEWLY REFUTED:', got, flush=True)
