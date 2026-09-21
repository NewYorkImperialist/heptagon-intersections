#!/usr/bin/env python3
"""Portfolio with CONSTRAINT ORDER as an extra randomisation dimension.

Observed 2026-09-20: the 12-condition core of branch 0 is refuted in <4 s under
the constraint order that minimisation happened to produce, and returns
`unknown` at 8 s x 6 seeds under a different order.  Shuffling the order found
it again.  Order is at least as strong a lever as `nlsat.seed`."""
import random, time
from z3 import *
from core_tools import conds_for, PI14, XS, NEGS, NAME

def solve_shuf(sel, tries=12, each=3000, seed=0, quiet=True):
    C = []
    for k, b in sel.items(): C += conds_for(k, b)
    rng = random.Random(seed)
    for i in range(tries):
        D = list(C)
        if i: rng.shuffle(D)
        s = Tactic('qfnra-nlsat').solver(); s.set('timeout', each)
        s.set('nlsat.seed', i)
        s.add(D); r = s.check()
        if r == unsat: return 'unsat', i
        if r == sat:  return 'sat', i
    return 'unknown', None

def sel_of_branch(n, drop=()):
    sel = {k: None for k in XS}
    ch = [(n >> (7-i)) & 1 for i in range(8)]
    for i, k in enumerate(NEGS): sel[k] = ch[i]
    return {k: b for k, b in sel.items() if k not in drop}
