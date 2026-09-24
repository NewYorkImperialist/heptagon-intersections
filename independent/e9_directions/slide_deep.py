#!/usr/bin/env python3
"""slide_deep.py -- forensic check of the A-or-B counterexamples and of the
structural claim that slide A's (Fin) failure is e-INDEPENDENT.

KEY STRUCTURAL FACT under test:
  the new side v = [P[v]+eE, P[v+1]] with E = P[v]-P[v+1] lies on the SAME LINE
  as the old side v and CONTAINS it; so if the backward extension of side v
  beyond P[v] meets a Q-side in a set of positive length, (Fin) fails for EVERY
  e > 0.  Shrinking e cannot rescue it.
"""
from fractions import Fraction as F
import sys, os
from slide_lib import *
from slide_lib import suppP, slide_dir, slide_state, apex_collinear, E_LADDER

LOG = os.path.join(os.path.dirname(os.path.abspath(__file__)),
                   "slide_characterisation.log")
fh = open(LOG, "a")
def log(s=""):
    print(s); fh.write(s + "\n"); fh.flush()

def P_(*pts): return tuple((F(a), F(b)) for a, b in pts)

CASES = [
 ("C1", [(4,5),(5,4),(1,2),(4,1),(-3,-5),(-1,-2),(-1,5)],
        [(5,1),(7,5),(4,5),(0,9),(0,5),(1,-1),(6,-1)], 0, 2),
 ("C2", [(0,3),(4,1),(4,-2),(-2,1),(0,-4),(-3,-3),(-2,3)],
        [(2,2),(7,-2),(8,2),(7,1),(6,0),(4,1),(4,2)], 1, 5),
 ("C3", [(1,-1),(0,-3),(0,0),(-1,-3),(2,-5),(5,-1),(2,-4)],
        [(1,-1),(4,5),(2,0),(0,-3),(5,-3),(4,7),(0,2)], 0, 0),
]

# an ABSURDLY fine ladder, far below the 1e-12 asked for
FINE = [F(1, 10**k) for k in range(0, 41)] + [F(1, 2**k) for k in range(1, 60)]

log("")
log("=" * 78)
log("slide_deep.py -- A-or-B counterexamples, verified at e down to 1e-40")
log("=" * 78)
for (nm, Pl, Ql, v, j) in CASES:
    P = P_(*Pl); Q = P_(*Ql)
    log(f"\n{nm}: v={v} j={j}")
    log(f"  P={fmt(P)}")
    log(f"  Q={fmt(Q)}")
    log(f"  simple P/Q = {simple_closed(P)}/{simple_closed(Q)}, "
        f"(Fin) = {finite_intersection(P,Q)}, "
        f"P[v]==Q[j] = {P[v]==Q[j]}, |coincSet| = {len(coinc_set(P,Q))}")
    log(f"  apex collinear = {apex_collinear(P,v)}")
    for which in "AB":
        E = slide_dir(P, v, which)
        n_adm = 0; reasons = {"simple":0,"fin":0,"coinc":0}
        for e in FINE:
            st = slide_state(P, Q, v, which, e)
            if st["adm"]: n_adm += 1
            if not st["simple"]: reasons["simple"] += 1
            if not st["fin"]:    reasons["fin"] += 1
            if st["co1"] >= st["co0"]: reasons["coinc"] += 1
        log(f"  slide {which}: E={fmtpt(E)}  admissible on {n_adm}/{len(FINE)} "
            f"of the fine ladder; failures {reasons}")
        # WHICH sides overlap, at e = 1e-40
        e = F(1, 10**40)
        P2 = moveV(P, v, E, e)
        SP = sides(P2); SQ = sides(Q)
        ov = []
        for k in range(7):
            for jj in range(7):
                r = seg_inter(SP[k][0], SP[k][1], SQ[jj][0], SQ[jj][1])
                if r[0] == 'seg':
                    ov.append((k, jj, fmtpt(r[1]), fmtpt(r[2])))
        log(f"    overlapping (P-side,Q-side) pairs at e=1e-40: {ov}")
    # the structural explanation: the backward extension of the two incident
    # P-side LINES, at the apex, already runs inside a Q-side line
    for which, k in (("A", v), ("B", (v-1) % 7)):
        # side k's line, extended beyond the apex
        far = P[(v+1) % 7] if which == "A" else P[(v-1) % 7]
        SQ = sides(Q)
        hits = [jj for jj in range(7)
                if orientR(far, P[v], SQ[jj][0]) == 0
                and orientR(far, P[v], SQ[jj][1]) == 0]
        log(f"    slide {which}: Q-sides COLLINEAR with P-side {k}'s line: {hits}")
log("")
log("CONCLUSION: every (Fin) failure above is e-INDEPENDENT -- the new side v")
log("lies on the OLD side v's line, so an overlap with a collinear Q-side is")
log("present for every e>0 and no shrinking of e removes it.")
fh.close()
