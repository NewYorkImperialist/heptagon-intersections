#!/usr/bin/env python3
"""Tools for finding SMALL unsatisfiable subsets of Pi_14's conditions under a
fixed choice of disjuncts.  Uses the restart portfolio established in
FINDINGS.md 6b (five randomised nlsat runs + one deterministic), never
`randomize=false` alone.

An `unknown` is treated as "not refuted" everywhere, so every core reported is
a genuine core."""
import itertools, time, random
from z3 import *
from pi14_common import PI14, VERTS

NEGS = [k for k, (_, _, w) in enumerate(PI14) if not w]      # indices into PI14
XS   = [k for k, (_, _, w) in enumerate(PI14) if w]

NAME = {}
SIDE = {0:'P0',1:'P1',2:'P2',3:'P3'}
def lbl(k):
    (a,b),(c,d),w = PI14[k]
    def nm(x,y):
        if x < 5: return 'P%d' % x
        return 'Q%d' % (x-7)
    return ('%s%s%s' % (nm(a,b), 'x' if w else '/', nm(c,d)))
for k in range(21): NAME[k] = lbl(k)

def mk_points():
    pt = {0:(RealVal(0),RealVal(0)), 1:(RealVal(1),RealVal(0)), 2:(RealVal(0),RealVal(1))}
    for v in VERTS:
        if v not in pt: pt[v] = (Real('x%d'%v), Real('y%d'%v))
    return pt

def orient(a,b,c): return (b[0]-a[0])*(c[1]-a[1])-(b[1]-a[1])*(c[0]-a[0])

PT = mk_points()

def conds_for(k, bit=None):
    """Constraint list for condition k.  For a non-crossing, `bit` picks the
    disjunct (0 or 1); bit=None keeps the full Or."""
    (a,b),(c,d),w = PI14[k]
    A,B,C,D = PT[a],PT[b],PT[c],PT[d]
    if w:
        return [orient(A,B,C)*orient(A,B,D) < 0, orient(C,D,A)*orient(C,D,B) < 0]
    dj = [orient(A,B,C)*orient(A,B,D) > 0, orient(C,D,A)*orient(C,D,B) > 0]
    return [dj[bit]] if bit is not None else [Or(*dj)]

PORT = [{'nlsat.seed':0},{'nlsat.seed':1},{'nlsat.seed':2},{'nlsat.seed':3},
        {'nlsat.seed':5},{'nlsat.randomize':False}]

def solve_set(sel, each=4000, port=PORT):
    """sel: dict k -> bit (or None).  Returns 'unsat'/'sat'/'unknown'."""
    C = []
    for k, bit in sel.items(): C += conds_for(k, bit)
    for kw in port:
        s = Tactic('qfnra-nlsat').solver(); s.set('timeout', each)
        for a,v in kw.items(): s.set(a,v)
        s.add(C); r = s.check()
        if r == unsat: return 'unsat', s
        if r == sat:   return 'sat', s
    return 'unknown', None

def minimise(sel, each=4000, rounds=3, seed=0, verbose=True):
    """Randomised deletion-based minimisation (memory: randomised beats greedy)."""
    rng = random.Random(seed)
    cur = dict(sel)
    for rd in range(rounds):
        order = list(cur); rng.shuffle(order)
        changed = False
        for k in order:
            if k not in cur: continue
            trial = {a:b for a,b in cur.items() if a != k}
            r, _ = solve_set(trial, each)
            if r == 'unsat':
                cur = trial; changed = True
                if verbose: print('   drop %-10s -> still unsat (%d left)' % (NAME[k], len(cur)), flush=True)
        if not changed: break
    return cur

def show(sel):
    return ', '.join('%s%s' % (NAME[k], '' if PI14[k][2] else '[%s]'%('*' if b is None else b))
                     for k,b in sorted(sel.items()))
