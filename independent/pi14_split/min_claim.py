#!/usr/bin/env python3
"""Minimise the hypothesis set of a claim of the form
      hypotheses  =>  orient(8,9,u)*orient(8,9,v) < 0
by deleting hypotheses while `hyps + [or(8,9,u)*or(8,9,v) > 0]` stays unsat."""
import sys, random, time, itertools
from z3 import *
from core_tools import conds_for, PT, orient, NAME, PI14, XS, NEGS

def run(sel, extra, tries=10, each=3000, seed=0):
    C = []
    for k,b in sel.items(): C += conds_for(k,b)
    C += extra
    rng = random.Random(seed)
    for i in range(tries):
        D = list(C)
        if i: rng.shuffle(D)
        s = Tactic('qfnra-nlsat').solver(); s.set('timeout', each); s.set('nlsat.seed', i)
        s.add(D); r = s.check()
        if r != unknown: return str(r)
    return 'unknown'

def minimise(sel, extra, seed=0, rounds=4, tries=10, each=3000):
    rng = random.Random(seed); cur = dict(sel)
    for _ in range(rounds):
        order = list(cur); rng.shuffle(order); ch = False
        for k in order:
            if k not in cur: continue
            trial = {a:b for a,b in cur.items() if a!=k}
            if run(trial, extra, tries, each, rng.randrange(1<<20)) == 'unsat':
                cur = trial; ch = True
        if not ch: break
    return cur

def show(sel):
    return ', '.join('%s%s' % (NAME[k], '' if PI14[k][2] else '[%d]'%b) for k,b in sorted(sel.items()))
