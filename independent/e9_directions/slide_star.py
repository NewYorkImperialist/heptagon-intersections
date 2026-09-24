#!/usr/bin/env python3
"""slide_star.py -- (i) full forensic dump of the star witness where BOTH
slides are admissible and BOTH strictly decrease M_pt; (ii) the MIRROR
hypothesis for slide B, checked on a corpus."""
from fractions import Fraction as F
from collections import Counter
import os, random, time
import move_joint_measure as mjm
import pt_measure_check as ptm
from slide_lib import *
from slide_lib import (suppP, slide_dir, slide_state, first_admissible,
                       apex_collinear, predicted_lost, lost_gained, E_LADDER)
import slide_advers as adv

LOG = os.path.join(os.path.dirname(os.path.abspath(__file__)),
                   "slide_characterisation.log")
fh = open(LOG, "a")
def log(s=""):
    print(s); fh.write(s + "\n"); fh.flush()
def P_(l): return tuple((F(a), F(b)) for a, b in l)

log(""); log("=" * 78)
log("slide_star.py -- the M_pt-decreasing star witness, and the slide-B mirror")
log("=" * 78)

P = P_([(-4,1),(0,2),(3,5),(-5,3),(-5,0),(1,-2),(1,0)])
Q = P_([(2,1),(-2,-1),(5,-2),(0,6),(-5,2),(2,2),(-5,0)])
v, j = 4, 6
log(f"P={fmt(P)}")
log(f"Q={fmt(Q)}")
log(f"  simpleP={simple_closed(P)} simpleQ={simple_closed(Q)} "
    f"(Fin)={finite_intersection(P,Q)}  P[{v}]==Q[{j}]={P[v]==Q[j]} "
    f"|coincSet|={len(coinc_set(P,Q))}  apex collinear={apex_collinear(P,v)}")
D0 = deg_pts(P, Q)
log(f"  crossPairs={sorted(cross_pairs(P,Q))}  |crossPairs|={len(cross_pairs(P,Q))}")
for X in sorted(D0):
    log(f"  degPt {fmtpt(X)}  suppP={sorted(suppP(X,P))}  "
        f"Pvtx={X in set(P)}  Qvtx={X in set(Q)}")
log(f"  M_pt = {len(cross_pairs(P,Q))} + {len(D0)} = {M_pt(P,Q)}")
for which in "AB":
    E = slide_dir(P, v, which)
    for e in [F(1,10**6), F(1,10**12), F(1,10**24)]:
        st = slide_state(P, Q, v, which, e)
        lost, gained, _, D1 = lost_gained(P, Q, st["P2"])
        log(f"  slide {which} E={fmtpt(E)} e=1/{int(1/e)}: adm={st['adm']} "
            f"(simple={st['simple']} fin={st['fin']} coinc {st['co0']}->{st['co1']}) "
            f"lost={[fmtpt(x) for x in lost]} gained={[fmtpt(x) for x in gained]} "
            f"dCross={len(cross_pairs(st['P2'],Q))-len(cross_pairs(P,Q))} "
            f"dM_pt={M_pt(st['P2'],Q)-M_pt(P,Q)}")

log("")
log("-- MIRROR HYPOTHESIS for slide B: lost == (empty if the apex is a")
log("   straight pass-through, else {X in degPts : suppP(X) == {v}}) --")
S = Counter()
for chunk, (fam, n, seed) in enumerate([("mix",400,4242),("both",250,515),("colP",120,616)]):
    t0 = time.time()
    if fam == "mix":
        insts0, _c, _s = ptm.generate(lambda s: None,
            {"plain":100,"hardP":100,"hardN":100,"hardM":100}, seed, 60000)
        insts = [(t,P2,Q2,v2,j2) for (t,P2,Q2,v2,j2,f) in insts0]
    else:
        insts, _t, _b = adv.gen(fam, n, seed)
    cnt = Counter(); breaks = []
    for (tg, P2, Q2, v2, j2) in insts:
        col = apex_collinear(P2, v2)
        D = deg_pts(P2, Q2)
        predB = frozenset() if col else frozenset(
            X for X in D if suppP(X, P2) == frozenset({v2 % 7}))
        st = slide_state(P2, Q2, v2, 'B', F(1,10**12))
        lost, gained, _, _ = lost_gained(P2, Q2, st["P2"])
        cnt["n"] += 1
        cnt["mirror"] += (lost == predB)
        cnt["apex"] += (P2[v2] in deg_pts(st["P2"], Q2))
        if lost != predB and len(breaks) < 3:
            breaks.append((P2, Q2, v2, j2, col, lost, predB))
    log(f"  fam={fam}: mirror holds {cnt['mirror']}/{cnt['n']}; "
        f"old apex still a degPt after slide B {cnt['apex']}/{cnt['n']} "
        f"[{time.time()-t0:.0f}s]")
    for (P2,Q2,v2,j2,col,lost,predB) in breaks:
        log(f"    MIRROR BREAK v={v2} j={j2} col={col}")
        log(f"      P={fmt(P2)}"); log(f"      Q={fmt(Q2)}")
        log(f"      lost={[fmtpt(x) for x in lost]} pred={[fmtpt(x) for x in predB]}")
fh.close()
