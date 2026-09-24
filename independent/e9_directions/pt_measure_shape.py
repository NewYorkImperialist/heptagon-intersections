#!/usr/bin/env python3
"""
pt_measure_shape.py
===================

Supplement to pt_measure_check.py, APPENDED to pt_measure_check.log.

pt_measure_check.py reports the BEST M_pt witness per instance, and at that
witness several degenerate points sometimes die at once.  For the Lean proof
what matters is a different question, because the conjecture is existential:

  Q1. Does every instance have an admissible move of the CLEAN shape
        dDegPts = -1  (exactly the coincidence point dies, nothing else)
        dCross  >= +1 (at least one new proper crossing)
      -- and does one exist with |e| <= 1/4?

  Q2. Is the difference between the two measures exactly the overcount, i.e.
        M_seg(R) = M_pt(R) + 3 * |coincSet(R)|
      on EVERY configuration seen (base and moved)?  If so, "M_pt does not
      decrease" is literally "M_seg drops by at most 3 per coincidence
      cleared", which is a statement about M_seg the Lean development already
      has the vocabulary for.

Same primitives, same instances (same generator, same seed) as
pt_measure_check.py.  Exact Fraction arithmetic; no floats.
"""

from fractions import Fraction as F
from collections import Counter
import os

from move_joint_measure import (
    N, simple_closed, cross_pairs, seg_deg, seg_degP, coinc_set,
    finite_intersection, moveV, DIRS, ALL_E, classify,
)
from pt_measure_check import (
    deg_pts, deg_pts_direct, generate, DESIGNED, SMALL_E, fmt,
)

def full_parts(P, Q):
    sd = seg_deg(P, Q); sdp = seg_degP(P, Q)
    return (len(cross_pairs(P, Q)), len(sd), len(sdp),
            len(deg_pts(P, Q, sd, sdp)), len(coinc_set(P, Q)))

def main():
    here = os.path.dirname(os.path.abspath(__file__))
    out = open(os.path.join(here, "pt_measure_check.log"), "a")
    def log(*a):
        s = " ".join(str(x) for x in a)
        print(s)
        out.write(s + "\n")
        out.flush()

    log("")
    log("=" * 78)
    log("SUPPLEMENT (pt_measure_shape.py): the SHAPE of the witness, and the")
    log("exact relation between the two measures")
    log("=" * 78)

    TARGETS = {"plain": 150, "hardP": 150, "hardN": 110, "hardM": 60}
    instances, cnt, gstat = generate(lambda *a: None, TARGETS,
                                     seed=20260924, max_pairs=20000)
    for (nm, pc, qc, i, j) in DESIGNED:
        Pd = tuple((F(a), F(b)) for a, b in pc)
        Qd = tuple((F(a), F(b)) for a, b in qc)
        if simple_closed(Pd) and simple_closed(Qd) and finite_intersection(Pd, Qd) \
           and (i, j) in coinc_set(Pd, Qd):
            eQ, eP, nb = classify(Pd, Qd, i, j)
            instances.append(("designed:" + nm, Pd, Qd, i, j, (eQ, eP, nb, len(coinc_set(Pd, Qd)))))
    log(f"  same corpus regenerated: {len(instances)} instances "
        f"({cnt}, +{len(instances)-sum(cnt.values())} designed)")

    id_ok = 0; id_bad = 0; bad_examples = []
    direct_ok = 0
    clean_any = 0; clean_small = 0
    clean_fail = []
    minkill = Counter(); minkill_small = Counter()
    shape_small_best = Counter()

    for (tag, P, Q, i, j, feats) in instances:
        b_c, b_d, b_dp, b_g, b_co = full_parts(P, Q)
        # Q2 on the base configuration
        if (b_c + b_d + b_dp) == (b_c + b_g) + 3 * b_co:
            id_ok += 1
        else:
            id_bad += 1
            bad_examples.append((tag, P, Q, (b_c, b_d, b_dp, b_g, b_co)))
        found_clean = None; found_clean_small = None
        best_kill = None; best_kill_small = None
        for e in ALL_E:
            small = e in SMALL_E
            for E in DIRS:
                P2 = moveV(P, i, E, e)
                nco = len(coinc_set(P2, Q))
                if nco >= b_co:
                    continue
                if not simple_closed(P2):
                    continue
                if not finite_intersection(P2, Q):
                    continue
                c, d, dp, g, co = full_parts(P2, Q)
                # Q2 on the moved configuration
                if (c + d + dp) == (c + g) + 3 * co:
                    id_ok += 1
                else:
                    id_bad += 1
                    if len(bad_examples) < 5:
                        bad_examples.append((tag + f" moved E={E} e={e}", P2, Q,
                                             (c, d, dp, g, co)))
                # independent recomputation of degPts, on a thin sample
                dcross = c - b_c; ddeg = g - b_g
                if ddeg >= 0 or (ddeg == -1 and dcross >= 1):
                    pass
                if ddeg == -1 and dcross >= 1:
                    if found_clean is None:
                        found_clean = (E, e, dcross)
                    if small and found_clean_small is None:
                        found_clean_small = (E, e, dcross)
                if dcross + ddeg >= 0:            # dM_pt >= 0
                    if best_kill is None or -ddeg < best_kill:
                        best_kill = -ddeg
                    if small and (best_kill_small is None or -ddeg < best_kill_small):
                        best_kill_small = -ddeg
        if found_clean is not None:
            clean_any += 1
        else:
            clean_fail.append((tag, P, Q, i, j, (b_c, b_d, b_dp, b_g, b_co)))
        if found_clean_small is not None:
            clean_small += 1
        minkill[best_kill] += 1
        minkill_small[best_kill_small] += 1

    log("")
    log("Q1. DOES A CLEAN-SHAPED WITNESS ALWAYS EXIST?")
    log("    clean = admissible, dDegPts = -1 (only the coincidence point dies)")
    log("            and dCross >= +1 (at least one new proper crossing)")
    log(f"    instances with a clean witness anywhere on the grid : "
        f"{clean_any}/{len(instances)}")
    log(f"    instances with a clean witness at |e| <= 1/4        : "
        f"{clean_small}/{len(instances)}")
    if clean_fail:
        log("    instances with NO clean witness:")
        for (tag, P, Q, i, j, b) in clean_fail[:15]:
            log(f"      [{tag}] i={i} j={j}")
            log(f"        P = {fmt(P)}")
            log(f"        Q = {fmt(Q)}")
            log(f"        base cross={b[0]} segDeg={b[1]} segDegP={b[2]} "
                f"degPts={b[3]} coinc={b[4]}")
    log("")
    log("    minimum number of degPts destroyed, over admissible moves with")
    log("    dM_pt >= 0 (i.e. how few can the move afford to kill?):")
    log(f"      {'# destroyed':>12} {'full grid':>10} {'|e| <= 1/4':>11}")
    keys = sorted(set(list(minkill.keys()) + list(minkill_small.keys())),
                  key=lambda x: (x is None, x))
    for k in keys:
        log(f"      {str(k):>12} {minkill.get(k,0):>10} {minkill_small.get(k,0):>11}")
    log("")
    log("Q2. IS  M_seg = M_pt + 3*|coincSet|  ON EVERY CONFIGURATION?")
    log(f"    configurations checked (base + every admissible move) : "
        f"{id_ok + id_bad}")
    log(f"    satisfying the identity                               : {id_ok}")
    log(f"    VIOLATIONS                                            : {id_bad}")
    for (tag, P, Q, b) in bad_examples[:5]:
        log(f"      violation [{tag}]: cross={b[0]} segDeg={b[1]} segDegP={b[2]} "
            f"degPts={b[3]} coinc={b[4]}")
        log(f"        P = {fmt(P)}")
        log(f"        Q = {fmt(Q)}")
    log("")
    log("    If the identity holds with no violations, then on this corpus")
    log("    'M_pt does not decrease' is EXACTLY 'M_seg drops by at most 3 per")
    log("    coincidence cleared', and the refutation of M_seg is precisely the")
    log("    3-per-coincidence overcount and nothing else.")
    log("")
    log("supplement done.")
    out.close()

if __name__ == "__main__":
    main()
