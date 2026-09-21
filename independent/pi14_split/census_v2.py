#!/usr/bin/env python3
"""256-branch disjunct census, repeated under the v2 3-point normalisation."""
import sys, time, itertools
from pi14_v2 import build, solve, PI14
from z3 import sat, unsat
ms = int(sys.argv[1]) if len(sys.argv) > 1 else 15000
t0 = time.time(); u = s_ = k = 0; unk = []
for n, ch in enumerate(itertools.product([0, 1], repeat=8)):
    C, pt = build(PI14, choice=ch)
    s = solve(C, ms); r = s.check()
    if r == unsat: u += 1
    elif r == sat:
        s_ += 1
        print(f'!!! SAT BRANCH {n} {ch}', flush=True); print(s.model(), flush=True)
    else: k += 1; unk.append(n)
    if (n+1) % 8 == 0:
        print(f'{n+1:4d}/256 unsat={u} sat={s_} unknown={k} ({time.time()-t0:.0f}s)', flush=True)
print(f'RESULT v2(3-point normalisation, {ms}ms) unsat={u} sat={s_} unknown={k} total={time.time()-t0:.0f}s')
print('unsat branches:', [i for i in range(256) if i not in unk])
