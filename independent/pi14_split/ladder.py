#!/usr/bin/env python3
"""A ladder of DISJUNCT-FREE sub-systems of Pi_14, with the synthetic proof's
derived facts (derived.py) added.

The 64 branches still open after ASYMMETRY.md's Theorem are exactly those
taking the SECOND disjunct of both Q1/xQ3 and Q1/xQ4 (the first disjunct of
each is refuted by the Theorem, whose V11 half now has the synthetic proof in
SYNTHETIC.md).  So every one of the 64 contains

    the 13 crossings + P1/xQ1 + Q1/xQ3[bit1] + Q1/xQ4[bit1]

and then a choice of disjunct for the five remaining non-crossings
P0/xP2, P0/xP3, P1/xP3, Q0/xQ2, Q0/xQ3 -- which is where the 32 distinct
systems come from.  An `unsat` at ANY rung of the ladder below closes all 64
branches at once, because every branch is an extension of every rung.
"""
import sys, time, random
from z3 import *
from core_tools import PI14, PT, orient, conds_for, NAME
from derived import DERIVED

def orr(a,b,c): return orient(PT[a],PT[b],PT[c])
XS = [k for k,(_,_,w) in enumerate(PI14) if w]
IDX = {NAME[k]: k for k in range(21)}

BASE = []
for k in XS: BASE += conds_for(k, None)        # the 13 crossings
BASE += conds_for(IDX['P1/Q1'], None)          # P1 /x Q1, full Or
# Q1/xQ3 and Q1/xQ4 : bit 1 only (bit 0 is refuted by the Theorem)
BASE += conds_for(IDX['Q1/Q3'], 1)
BASE += conds_for(IDX['Q1/Q4'], 1)

RUNGS = [('L0  17 conds (base)',        []),
         ('L1  + Q0/xQ2',               ['Q0/Q2']),
         ('L2  + Q0/xQ2,Q0/xQ3',        ['Q0/Q2','Q0/Q3']),
         ('L3  + ..,P0/xP2',            ['Q0/Q2','Q0/Q3','P0/P2']),
         ('L4  + ..,P0/xP3',            ['Q0/Q2','Q0/Q3','P0/P2','P0/P3']),
         ('L5  full Pi_14 (+P1/xP3)',   ['Q0/Q2','Q0/Q3','P0/P2','P0/P3','P1/P3'])]

def solve(C, tries, each, seed):
    rng = random.Random(seed)
    for i in range(tries):
        D = list(C)
        if i: rng.shuffle(D)
        s = Tactic('qfnra-nlsat').solver(); s.set('timeout', each); s.set('nlsat.seed', i)
        s.add(D); r = s.check()
        if r == unsat: return 'unsat', i, None
        if r == sat:   return 'sat', i, s.model()
    return 'unknown', None, None

if __name__ == '__main__':
    tries = int(sys.argv[1]) if len(sys.argv)>1 else 24
    each  = int(sys.argv[2]) if len(sys.argv)>2 else 5000
    useD  = (len(sys.argv)<4 or sys.argv[3] != 'noderived')
    print('derived facts: %s' % ('ON (%d)'%len(DERIVED) if useD else 'OFF (control)'), flush=True)
    for name, extra in RUNGS:
        C = list(BASE)
        for nm in extra: C += conds_for(IDX[nm], None)
        if useD: C += DERIVED
        t = time.time(); r,i,m = solve(C, tries, each, 4242)
        print('%-28s : %-8s order#%-5s (%.0fs)' % (name, r, i, time.time()-t), flush=True)
        if r == 'sat':
            print('   SAT model found -- must be re-verified outside z3', flush=True)
        if r == 'unsat':
            print('   *** this rung closes ALL 64 open branches ***', flush=True)
            break
