#!/usr/bin/env python3
"""
256-branch disjunct census under
  (a) the v2 three-point affine normalisation (16 variables, no gauge freedom), and
  (b) nlsat.randomize=false.

(b) is the decisive setting.  z3's nlsat randomises its variable order and its
sample-point choices by default; on this family that randomisation is
catastrophic -- branch 0 is `unknown` after 15 s with the default and `unsat`
in 0.1 s with randomisation off.  Nothing about the mathematics changes: it is
the same decision procedure for the same formula, only deterministic.

A small portfolio of z3 configurations is used, tried in order, so that a
branch is reported `unknown` only if every configuration failed on it.
"""
import sys, time, itertools
from z3 import *
from pi14_v2 import build, PI14
from pi14_v2 import control_conditions

PORTFOLIO = [
    ('rand=0',   {'nlsat.randomize': False}),
    ('default',  {}),
]

def attempt(C, ms):
    for name, kw in PORTFOLIO:
        s = Tactic('qfnra-nlsat').solver()
        s.set('timeout', ms)
        for k, v in kw.items():
            s.set(k, v)
        s.add(C)
        t = time.time(); r = s.check(); el = time.time()-t
        if r != unknown:
            return r, name, el, s
    return unknown, 'portfolio-exhausted', 0.0, None

if __name__ == '__main__':
    ms = int(sys.argv[1]) if len(sys.argv) > 1 else 20000
    lo = int(sys.argv[2]) if len(sys.argv) > 2 else 0
    hi = int(sys.argv[3]) if len(sys.argv) > 3 else 256
    conds = control_conditions() if '--control' in sys.argv else PI14
    tag = 'CONTROL' if '--control' in sys.argv else 'PI_14'
    print(f'# {tag}: 256-branch census, 3-point normalisation, portfolio '
          f'{[n for n,_ in PORTFOLIO]}, {ms} ms per configuration', flush=True)
    t0 = time.time(); u = s_ = k = 0; unk = []; byname = {}
    for n, ch in enumerate(itertools.product([0, 1], repeat=8)):
        if not (lo <= n < hi):
            continue
        C, pt = build(conds, choice=ch)
        r, name, el, s = attempt(C, ms)
        if r == unsat:
            u += 1; byname[name] = byname.get(name, 0)+1
        elif r == sat:
            s_ += 1
            print(f'!!! SAT BRANCH {n} {ch} via {name} in {el:.2f}s', flush=True)
            print(s.model(), flush=True)
        else:
            k += 1; unk.append(n)
            print(f'  branch {n:3d} {ch} UNKNOWN by whole portfolio', flush=True)
        if (n+1) % 8 == 0:
            print(f'{n+1:4d}/256 unsat={u} sat={s_} unknown={k} ({time.time()-t0:.0f}s)', flush=True)
    print(f'RESULT {tag} unsat={u} sat={s_} unknown={k} total={time.time()-t0:.0f}s')
    print('unknown branches:', unk)
    print('which configuration closed them:', byname)
