#!/usr/bin/env python3
"""
pt_measure_smallclean.py
========================

Appendix to pt_measure_check.log: identify the one instance of the 473 that has
NO clean-shaped witness (dDegPts = -1 and dCross >= +1) with |e| <= 1/4, and
report what it does have there instead.  Same corpus, same seed.
"""

from fractions import Fraction as F
import os

from move_joint_measure import (
    simple_closed, cross_pairs, seg_deg, seg_degP, coinc_set,
    finite_intersection, moveV, DIRS, classify,
)
from pt_measure_check import deg_pts, generate, DESIGNED, SMALL_E, fmt

def full_parts(P, Q):
    sd = seg_deg(P, Q); sdp = seg_degP(P, Q)
    return (len(cross_pairs(P, Q)), len(sd), len(sdp),
            len(deg_pts(P, Q, sd, sdp)), len(coinc_set(P, Q)))

def main():
    here = os.path.dirname(os.path.abspath(__file__))
    out = open(os.path.join(here, "pt_measure_check.log"), "a")
    def log(*a):
        s = " ".join(str(x) for x in a)
        print(s); out.write(s + "\n"); out.flush()

    log("")
    log("=" * 78)
    log("APPENDIX: the instance(s) with no CLEAN witness at |e| <= 1/4")
    log("=" * 78)

    instances, cnt, _ = generate(lambda *a: None,
                                 {"plain": 150, "hardP": 150, "hardN": 110,
                                  "hardM": 60}, seed=20260924, max_pairs=20000)
    for (nm, pc, qc, i, j) in DESIGNED:
        Pd = tuple((F(a), F(b)) for a, b in pc)
        Qd = tuple((F(a), F(b)) for a, b in qc)
        if simple_closed(Pd) and simple_closed(Qd) and finite_intersection(Pd, Qd) \
           and (i, j) in coinc_set(Pd, Qd):
            eQ, eP, nb = classify(Pd, Qd, i, j)
            instances.append(("designed:" + nm, Pd, Qd, i, j,
                              (eQ, eP, nb, len(coinc_set(Pd, Qd)))))

    SM = sorted(SMALL_E, key=lambda x: (abs(x), x))
    n_bad = 0
    for (tag, P, Q, i, j, feats) in instances:
        b_c, b_d, b_dp, b_g, b_co = full_parts(P, Q)
        clean = None
        alt = []          # admissible small-e moves with dM_pt >= 0
        for e in SM:
            for E in DIRS:
                P2 = moveV(P, i, E, e)
                if len(coinc_set(P2, Q)) >= b_co:
                    continue
                if not simple_closed(P2):
                    continue
                if not finite_intersection(P2, Q):
                    continue
                c, d, dp, g, co = full_parts(P2, Q)
                dcross = c - b_c; ddeg = g - b_g
                if ddeg == -1 and dcross >= 1:
                    clean = (E, e, dcross, ddeg)
                    break
                if dcross + ddeg >= 0:
                    alt.append((E, e, dcross, ddeg))
            if clean:
                break
        if clean is None:
            n_bad += 1
            log(f"  [{tag}] apex i={i}, coincident Q-vertex j={j}")
            log(f"    P = {fmt(P)}")
            log(f"    Q = {fmt(Q)}")
            log(f"    base: cross={b_c} segDeg={b_d} segDegP={b_dp} "
                f"degPts={b_g} coinc={b_co}  M_seg={b_c+b_d+b_dp} "
                f"M_pt={b_c+b_g}")
            log(f"    extraP (Q-vertices on the two P-sides at the apex): "
                f"{feats[1]}")
            log(f"    frozen neighbour incidences: {feats[2]}")
            log(f"    admissible small-e moves with dM_pt >= 0: {len(alt)}")
            for (E, e, dc, dg) in alt[:6]:
                log(f"      E=({E[0]},{E[1]}) e={e}: dCross={dc} dDegPts={dg} "
                    f"dM_pt={dc+dg}")
    log(f"  instances with no clean small-e witness: {n_bad}/{len(instances)}")
    log("")
    log("appendix done.")
    out.close()

if __name__ == "__main__":
    main()
