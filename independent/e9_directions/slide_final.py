#!/usr/bin/env python3
"""slide_final.py -- the exact Lean-ready statement, checked as a whole, plus
two sub-lemmas: (L1) crossPairs never DECREASES under a small-e slide A;
(L2) every lost point is a Q-vertex and is never a P-vertex."""
from fractions import Fraction as F
from collections import Counter
import os, time
import pt_measure_check as ptm
from slide_lib import *
from slide_lib import (suppP, slide_dir, slide_state, apex_collinear,
                       lost_gained)
import slide_advers as adv

LOG = os.path.join(os.path.dirname(os.path.abspath(__file__)),
                   "slide_characterisation.log")
fh = open(LOG, "a")
def log(s):
    print(s); fh.write(s + "\n"); fh.flush()

SMALL = F(1, 10**12)
log(""); log("=" * 78)
log("slide_final.py -- the Lean-ready statement and its two sub-lemmas")
log("=" * 78)

def corpus(fam, n, seed):
    if fam == "mix":
        t = n // 4
        a, _c, _s = ptm.generate(lambda s: None,
            {"plain":t,"hardP":t,"hardN":t,"hardM":t}, seed, 60000)
        return [(tg,P,Q,v,j) for (tg,P,Q,v,j,f) in a]
    return adv.gen(fam, n, seed)[0]

TOT = Counter()
for (fam, n, seed) in [("mix",600,31337),("mix",600,90210),
                       ("both",250,4711),("colP",150,8191)]:
    t0 = time.time(); C = Counter()
    for (tg, P, Q, v, j) in corpus(fam, n, seed):
        vm = (v - 1) % 7
        col = apex_collinear(P, v)
        D0 = deg_pts(P, Q)
        st = slide_state(P, Q, v, 'A', SMALL)
        lost, gained, _, D1 = lost_gained(P, Q, st["P2"])
        c0 = len(cross_pairs(P, Q)); c1 = len(cross_pairs(st["P2"], Q))
        C["n"] += 1
        # L1: crossPairs never decreases (whether or not the slide is admissible)
        C["L1"] += (c1 >= c0)
        # L2: every lost point is a Q-vertex and not a P-vertex
        C["L2"] += all((X in set(Q)) and (X not in set(P)) for X in lost)
        # L3: the only gained points are the moved apex itself
        C["L3"] += all(X == st["P2"][v] for X in gained)
        # THE STATEMENT: side v-1 carries no degPt besides its two endpoints
        #                (equivalently: no degPt has suppP == {v-1})
        clean = not any(suppP(X, P) == frozenset({vm}) for X in D0)
        hyp = col or clean
        C["hyp"] += hyp
        if hyp:
            C["hyp_nolost"] += (len(lost) == 0)
            if st["adm"]:
                C["hyp_adm"] += 1
                C["hyp_adm_nondec"] += (M_pt(st["P2"], Q) >= M_pt(P, Q))
        else:
            C["nohyp_adm"] += st["adm"]
            if st["adm"]:
                C["nohyp_adm_dec"] += (M_pt(st["P2"], Q) < M_pt(P, Q))
    log(f"  fam={fam} n={C['n']} [{time.time()-t0:.0f}s]")
    log(f"    L1 |crossPairs| never decreases under small-e slide A : {C['L1']}/{C['n']}")
    log(f"    L2 every lost degPt is a Q-vertex and NOT a P-vertex  : {C['L2']}/{C['n']}")
    log(f"    L3 the only point ever GAINED is the moved apex itself: {C['L3']}/{C['n']}")
    log(f"    HYP (apex collinear OR no degPt supported only by side v-1)"
        f" holds in {C['hyp']}/{C['n']}")
    log(f"      under HYP: nothing lost {C['hyp_nolost']}/{C['hyp']};"
        f"  slide A admissible {C['hyp_adm']}, of those M_pt non-decreasing"
        f" {C['hyp_adm_nondec']}/{C['hyp_adm']}")
    log(f"      without HYP: slide A admissible {C['nohyp_adm']}, of those M_pt"
        f" STRICTLY DECREASES in {C['nohyp_adm_dec']}")
    for k in C: TOT[k] += C[k]
log("  ---- TOTAL ----")
log(f"    n={TOT['n']}  L1={TOT['L1']}  L2={TOT['L2']}  L3={TOT['L3']}")
log(f"    HYP {TOT['hyp']}/{TOT['n']};  under HYP nothing lost "
    f"{TOT['hyp_nolost']}/{TOT['hyp']};  under HYP+admissible M_pt non-decreasing "
    f"{TOT['hyp_adm_nondec']}/{TOT['hyp_adm']}")
log(f"    without HYP: {TOT['nohyp_adm']} admissible, M_pt strictly decreases in "
    f"{TOT['nohyp_adm_dec']}")
fh.close()
