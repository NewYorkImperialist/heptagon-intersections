#!/usr/bin/env python3
"""The orientation signs that the synthetic proof PINS, as z3 constraints.

Every entry is a consequence of Pi_14's hypotheses that has a proof:
  [CL]  the Core Lemma of ../pi8_human/ (proved) plus the straddle half of a
        prescribed crossing (definitional),
  [L1]  LEMMA 1 (ASYMMETRY.md 4; proved, exhaustive over all 3,315 8-point
        order types),
  [L2]  LEMMA 2 (SYNTHETIC.md; proved, minimal core independently confirmed
        unsat by z3 for all four disjunct combinations),
  [L3]  LEMMA 3 (SYNTHETIC.md; proved, exhaustive over the order-type
        database).
None of them depends on which disjunct a negated crossing takes.

Under the 3-point normalisation V0=(0,0), V1=(1,0), V2=(0,1) we have
or(0,1,2) = +1, and S1 gives or(1,2,0) = or(1,2,8), so eta := or(1,2,8) = +1.
All signs below are stated with eta = +1.
"""
from z3 import *
from core_tools import PT, orient

def orr(a,b,c): return orient(PT[a],PT[b],PT[c])

# (a,b,c, sign, provenance)
SIGNS = [
    # ---- the line of P1 = V1V2 ------------------------------------------
    (1,2,0, +1, 'S1'),  (1,2,3, +1, 'S2'),
    (1,2,7, -1, 'straddle P1xQ0'), (1,2,8, +1, 'S1+normalisation'),
    (1,2,9, +1, 'P1/xQ1 disjunct'), (1,2,10,-1, 'straddle P1xQ2'),
    (1,2,11,+1, 'S3'),  (1,2,12,-1, 'straddle P1xQ4'),
    (1,2,4, -1, 'L4'),
    # ---- the line of Q1 = V8V9 ------------------------------------------
    (8,9,0, -1, 'L1'), (8,9,1, +1, 'L1'), (8,9,2, +1, 'L1'), (8,9,3, -1, 'L1'),
    (8,9,4, +1, 'CL at V9 with P3 + straddle P3xQ1'),
    (8,9,7, +1, 'L1'), (8,9,10,+1, 'L1'),
    (8,9,11,-1, 'L2'), (8,9,12,+1, 'L2'),
    # ---- the other Q lines ----------------------------------------------
    (7,8,1, +1, 'straddle P1xQ0 + CL at V8'), (7,8,2, -1, 'CL at V8 w/ P2'),
    (7,8,3, +1, 'CL at V8 w/ P2'),            (7,8,4, -1, 'CL at V8 w/ P3'),
    (9,10,0,+1, 'CL at V9 w/ P0'), (9,10,1,-1, 'CL at V9 w/ P0'),
    (9,10,2,+1, 'straddle P1xQ2'), (9,10,3,+1, 'CL at V9 w/ P3'),
    (9,10,4,-1, 'straddle P3xQ2'),
    (10,11,1,+1,'CL at V10 w/ P1'), (10,11,2,-1,'CL at V10 w/ P1'),
    (11,12,0,+1,'straddle P0xQ4'), (11,12,1,-1,'CL at V11 w/ P1'),
    (11,12,2,+1,'CL at V11 w/ P1'), (11,12,3,-1,'straddle P2xQ4'),
    # ---- the other P lines ----------------------------------------------
    (0,1,8, +1, 'straddle P0xQ1'), (0,1,9, -1, 'CL at V1 w/ Q2'),
    (0,1,10,+1, 'CL at V1 w/ Q2'), (0,1,11,-1, 'CL at V1 w/ Q4'),
    (0,1,12,+1, 'CL at V1 w/ Q4'),
    (2,3,7, +1, 'CL at V2 w/ Q0'), (2,3,8, -1, 'CL at V2 w/ Q0'),
    (2,3,9, +1, 'straddle P2xQ1'), (2,3,11,-1, 'CL at V2 w/ Q4'),
    (2,3,12,+1, 'CL at V2 w/ Q4'),
    (3,4,7, -1, 'CL at V3 w/ Q0'), (3,4,8, +1, 'CL at V3 w/ Q1'),
    (3,4,9, -1, 'CL at V3 w/ Q1'), (3,4,10,+1, 'straddle P3xQ2'),
]

def sign_constraints():
    return [ (orr(a,b,c) > 0) if s > 0 else (orr(a,b,c) < 0)
             for (a,b,c,s,_) in SIGNS ]

def extra_noncrossings():
    """LEMMA 3: two cells Pi_14 leaves free are in fact forced to miss."""
    out = []
    for (a,b,c,d) in ((0,1,7,8), (2,3,9,10)):       # P0 /x Q0 , P2 /x Q2
        out.append(Or(orr(a,b,c)*orr(a,b,d) > 0, orr(c,d,a)*orr(c,d,b) > 0))
    return out

def p1p3_second_disjunct():
    """LEMMA 4 + S2 give or(1,2,3) = +eta and or(1,2,4) = -eta, so the FIRST
    disjunct of P1 /x P3 -- or(1,2,3)*or(1,2,4) > 0 -- is false in every
    branch.  P1 /x P3 must take its second disjunct."""
    return [orr(3,4,1)*orr(3,4,2) > 0]

DERIVED = sign_constraints() + extra_noncrossings() + p1p3_second_disjunct()
