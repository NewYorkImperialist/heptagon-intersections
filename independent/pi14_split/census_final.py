#!/usr/bin/env python3
"""
Final Pi_14 branch census, with the configuration that the controlled
isolation experiment (isolate_randomize.py) actually showed to be best:

  a RESTART PORTFOLIO -- five runs of the stock randomised nlsat under
  different seeds, plus one deterministic run, 4 s each.

Not `nlsat.randomize=false`.  At equal total budget that setting refutes 11 of
branches 0-63 where the 5-seed default refutes 24.  See FINDINGS.md section 6.
"""
import sys, time, itertools
from z3 import *
from pi14_v2 import build, PI14

PORT = [('seed0', {'nlsat.seed': 0}), ('seed1', {'nlsat.seed': 1}),
        ('seed2', {'nlsat.seed': 2}), ('seed3', {'nlsat.seed': 3}),
        ('seed5', {'nlsat.seed': 5}), ('rand0', {'nlsat.randomize': False})]

if __name__ == '__main__':
    lo, hi = int(sys.argv[1]), int(sys.argv[2])
    each = int(sys.argv[3]) if len(sys.argv) > 3 else 4000
    print(f'# branches {lo}-{hi}, portfolio {[n for n,_ in PORT]} @ {each}ms each',
          flush=True)
    t0 = time.time(); u = s_ = k = 0; won = []; by = {}
    for n, ch in enumerate(itertools.product([0, 1], repeat=8)):
        if not (lo <= n < hi):
            continue
        C, _ = build(PI14, choice=ch)
        r = unknown; name = None
        for nm, kw in PORT:
            s = Tactic('qfnra-nlsat').solver(); s.set('timeout', each)
            for a, b in kw.items(): s.set(a, b)
            s.add(C); r = s.check()
            if r != unknown: name = nm; break
        if r == unsat: u += 1; won.append(n); by[name] = by.get(name, 0)+1
        elif r == sat: s_ += 1; print(f'!!! SAT BRANCH {n} {ch}', flush=True)
        else: k += 1
        if (n+1) % 16 == 0:
            print(f'{n+1:4d} unsat={u} sat={s_} unknown={k} ({time.time()-t0:.0f}s)', flush=True)
    print(f'RESULT range={lo}-{hi} unsat={u} sat={s_} unknown={k} total={time.time()-t0:.0f}s')
    print(f'refuted: {won}')
    print(f'first solver to close them: {by}')
