#!/usr/bin/env python3
"""How many phase-1 leaves are there?  i.e. how many sign assignments to the 61
constrained triples satisfy all 21 conditions AND survive z3's node pruning.
This is the quantity that decides whether the sign-split route can terminate."""
import sys, time
from z3 import *
from pi14_common import PI14
from pi14_signs import build_index, mk_points, orient_expr
from run_signs2 import VSEQ, POS, pt_key
from pi14_v2 import control_conditions

conds = control_conditions() if '--control' in sys.argv else PI14
node_ms = int(sys.argv[1]) if len(sys.argv) > 1 and sys.argv[1].isdigit() else 300
budget = float(sys.argv[2]) if len(sys.argv) > 2 else 900

keys, specs = build_index(conds)
order = sorted(range(len(keys)), key=lambda i: pt_key(keys[i]))
pt = mk_points(); expr = [orient_expr(pt, k) for k in keys]
sign = [0]*len(keys)
touch = {}
for ci, (e, _) in enumerate(specs):
    for ti, _ in e: touch.setdefault(ti, set()).add(ci)

def cond_ok(ci):
    e, want = specs[ci]; s = [sign[t]*g for t, g in e]
    if 0 in s: return True
    return ((s[0] != s[1]) and (s[2] != s[3])) == want

def mk(d, ms):
    s = Tactic('qfnra-nlsat').solver(); s.set('timeout', ms); s.set('nlsat.randomize', False)
    for ti in order[:d]:
        e = expr[ti]; s.add(e > 0 if sign[ti] > 0 else e < 0)
    return s

t0 = time.time()
stats = {'leaves': 0, 'nodes': 0, 'z3': 0, 'unsat': 0, 'comb': 0}
PROG = 16; done = [0]

class Done(Exception): pass

def rec(d):
    if time.time()-t0 > budget: raise Done
    if d == len(order):
        stats['leaves'] += 1
        if stats['leaves'] % 200 == 0:
            print(f'[{time.time()-t0:6.0f}s] leaves={stats["leaves"]} nodes={stats["nodes"]} '
                  f'z3={stats["z3"]} unsat={stats["unsat"]} comb={stats["comb"]} '
                  f'prog={done[0]}/{1<<PROG}', flush=True)
        return
    ti = order[d]
    for sg in (1, -1):
        sign[ti] = sg; stats['nodes'] += 1
        ok = all(cond_ok(ci) for ci in touch[ti])
        if ok:
            stats['z3'] += 1
            if mk(d+1, node_ms).check() == unsat:
                stats['unsat'] += 1; ok = False
        else:
            stats['comb'] += 1
        if ok: rec(d+1)
        elif d < PROG: done[0] += 1 << (PROG-d-1)
        if d == PROG-1: done[0] += 1
    sign[ti] = 0

sys.setrecursionlimit(20000)
try:
    rec(0); fin = True
except Done:
    fin = False
print(f'{"COMPLETE" if fin else "TIMED OUT"} after {time.time()-t0:.0f}s: '
      f'leaves={stats["leaves"]} nodes={stats["nodes"]} z3={stats["z3"]} '
      f'unsat_prune={stats["unsat"]} comb_prune={stats["comb"]} prog={done[0]}/{1<<PROG}')
