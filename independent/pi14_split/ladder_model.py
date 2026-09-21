#!/usr/bin/env python3
"""Re-run rung L4 (20 of Pi_14's 21 conditions, everything but P1 /x P3, with
Q1/xQ3 and Q1/xQ4 on their second disjunct) together with all 48 derived facts,
and re-verify the resulting model OUTSIDE z3 in exact Fraction arithmetic.

This is a control on derived.py: if any derived fact were wrong, no model could
satisfy it alongside 20 genuine Pi_14 conditions.  It is NOT a counterexample to
Pi_14 -- it violates P1 /x P3 by construction."""
import random, time
from fractions import Fraction as F
from z3 import *
from core_tools import PI14, PT, orient, conds_for, NAME
from derived import DERIVED, SIGNS
from ladder import BASE, IDX
import verify_model as VM

C = list(BASE)
for nm in ('Q0/Q2','Q0/Q3','P0/P2','P0/P3'): C += conds_for(IDX[nm], None)
C += DERIVED
rng = random.Random(4242); mdl = None
for i in range(24):
    D = list(C)
    if i: rng.shuffle(D)
    s = Tactic('qfnra-nlsat').solver(); s.set('timeout', 5000); s.set('nlsat.seed', i)
    s.add(D)
    if s.check() == sat: mdl = s.model(); break
assert mdl is not None, 'L4 did not return sat this time'

def val(e):
    v = mdl.eval(e, model_completion=True)
    return F(int(v.numerator_as_long()), int(v.denominator_as_long()))
sol = {}
for v in (0,1,2,3,4,7,8,9,10,11,12):
    sol[v] = (val(PT[v][0]), val(PT[v][1]))
print('model (exact rationals):')
for v in sorted(sol): print('  V%-2d = (%s, %s)' % (v, sol[v][0], sol[v][1]))

print('\n--- exact re-check of all 21 Pi_14 cells (z3 not involved) ---')
bad = []
for (a,b),(c,d),want in PI14:
    got = VM.proper_cross(sol[a],sol[b],sol[c],sol[d])
    tag = 'ok ' if got==want else 'DIFFERS'
    if got != want: bad.append((NAME[[k for k in range(21) if PI14[k]==((a,b),(c,d),want)][0]]))
    print('  %-9s want %-5s got %-5s %s' % (
        NAME[[k for k in range(21) if PI14[k]==((a,b),(c,d),want)][0]], want, got, tag))
print('cells differing from Pi_14:', bad)

import itertools
coll = [t for t in itertools.combinations(sorted(sol),3)
        if VM.orient(sol[t[0]],sol[t[1]],sol[t[2]])==0]
print('collinear triples: %d of 165' % len(coll))

print('\n--- exact re-check of the 46 derived SIGNS ---')
nbad = 0
for (a,b,c,s,prov) in SIGNS:
    o = VM.orient(sol[a],sol[b],sol[c])
    ok = (o > 0) if s > 0 else (o < 0)
    if not ok:
        nbad += 1; print('  WRONG or(%d,%d,%d) expected %+d got %s [%s]'%(a,b,c,s,o,prov))
print('derived signs violated: %d of %d' % (nbad, len(SIGNS)))
print('\n--- exact re-check of LEMMA 3 (the two cells it forces) ---')
for nm,(a,b,c,d) in (('P0 /x Q0',(0,1,7,8)), ('P2 /x Q2',(2,3,9,10))):
    print('  %s : crosses = %s (must be False)' % (nm, VM.proper_cross(sol[a],sol[b],sol[c],sol[d])))
