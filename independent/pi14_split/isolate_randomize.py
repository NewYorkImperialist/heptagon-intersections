#!/usr/bin/env python3
"""
Isolate the effect of nlsat.randomize, on the encoding that actually matters.

Section 6 compared `randomize=false` against the default on *two* branches, and
section 6a objected -- correctly -- that two data points from a randomised
solver are a lottery draw, not a finding.  6a's own sweep used the
un-normalised 22-variable encoding, where 20 of 24 satisfiable systems went
unsolved under BOTH settings; a test in which both arms fail 83% of the time
has almost no power to separate them.

This runs the discriminating version: the same 256-branch Pi_14 systems the
census actually uses (3-point normalisation, 16 variables), one setting per
process, same timeout, same branches.  Two arms:

    default          -- z3 as shipped, nlsat.randomize = true
    randomize=false

and, because "the default is a lottery" is exactly the hypothesis under test,
the default arm is ALSO run with several explicit seeds, and a branch counts as
solved by the default if ANY seed solves it (best-of-N).  That is the fairest
possible version of the default, and it is the one my claim has to beat.
"""
import sys, time, itertools
from z3 import *
from pi14_v2 import build, PI14

def run(C, ms, kw):
    s = Tactic('qfnra-nlsat').solver()
    s.set('timeout', ms)
    for k, v in kw.items():
        s.set(k, v)
    s.add(C)
    return s.check()

if __name__ == '__main__':
    arm = sys.argv[1]                 # 'rand0' | 'default'
    lo, hi = int(sys.argv[2]), int(sys.argv[3])
    ms = int(sys.argv[4]) if len(sys.argv) > 4 else 20000
    seeds = [0, 1, 2, 3, 5]
    print(f'# arm={arm} branches {lo}-{hi} timeout={ms}ms '
          f'{"seeds="+str(seeds) if arm=="default" else ""}', flush=True)
    t0 = time.time(); u = s_ = k = 0; won = []
    for n, ch in enumerate(itertools.product([0, 1], repeat=8)):
        if not (lo <= n < hi):
            continue
        C, _ = build(PI14, choice=ch)
        if arm == 'rand0':
            r = run(C, ms, {'nlsat.randomize': False})
        else:
            r = unknown
            for sd in seeds:                      # best-of-N default
                r = run(C, ms // len(seeds), {'nlsat.seed': sd})
                if r != unknown:
                    break
        if r == unsat: u += 1; won.append(n)
        elif r == sat: s_ += 1; print(f'!!! SAT {n}', flush=True)
        else: k += 1
        if (n+1) % 8 == 0:
            print(f'{n+1:4d} unsat={u} sat={s_} unknown={k} ({time.time()-t0:.0f}s)', flush=True)
    print(f'RESULT arm={arm} range={lo}-{hi} unsat={u} sat={s_} unknown={k} '
          f'total={time.time()-t0:.0f}s')
    print(f'refuted: {won}')
