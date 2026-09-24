#!/usr/bin/env python3
"""
pt_measure_setshape.py
======================

Second appendix to pt_measure_check.log.

The earlier tables measure the NET change |degPts| -> |degPts|, so
"dDegPts = -1" can also mean "two points died and a new one was born".  For a
Lean proof the relevant statement is a SET statement, so this pass measures it
at set level, restricted to the perturbation regime |e| <= 1/4:

  STRICT  : degPts(after) = degPts(before) \\ {the coincidence point}
            -- exactly the coincidence point leaves, nothing else changes --
            AND dCross >= +1.
  SHRINK  : degPts(after) is a SUBSET of degPts(before)  (nothing new born)
            AND dM_pt >= 0.
  ANY     : dM_pt >= 0.

Same corpus, same seed, exact Fraction arithmetic.
"""

from fractions import Fraction as F
from collections import Counter
import os

from move_joint_measure import (
    simple_closed, cross_pairs, seg_deg, seg_degP, coinc_set,
    finite_intersection, moveV, DIRS, classify,
)
from pt_measure_check import deg_pts, generate, DESIGNED, SMALL_E, fmt

def full(P, Q):
    sd = seg_deg(P, Q); sdp = seg_degP(P, Q)
    return (len(cross_pairs(P, Q)), deg_pts(P, Q, sd, sdp), coinc_set(P, Q))

def main():
    here = os.path.dirname(os.path.abspath(__file__))
    out = open(os.path.join(here, "pt_measure_check.log"), "a")
    def log(*a):
        s = " ".join(str(x) for x in a)
        print(s); out.write(s + "\n"); out.flush()

    log("")
    log("=" * 78)
    log("APPENDIX 2: the SET-level shape of the witness, |e| <= 1/4")
    log("  STRICT = degPts loses exactly the coincidence point and nothing")
    log("           else, and dCross >= +1")
    log("  SHRINK = degPts(after) subset of degPts(before), and dM_pt >= 0")
    log("  ANY    = dM_pt >= 0")
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
    tab = {}
    losses = Counter()      # (family, #points lost, #points born) at a STRICT-
                            # preferring witness
    strict_fail = []
    for (tag, P, Q, i, j, feats) in instances:
        fam = tag.split(":")[0]
        b_c, b_g, b_co = full(P, Q)
        n_co = len(b_co)
        apex = P[i]
        want = frozenset(X for X in b_g if X != apex)   # degPts minus the apex
        has_strict = has_shrink = has_any = False
        best_profile = None
        for e in SM:
            for E in DIRS:
                P2 = moveV(P, i, E, e)
                if len(coinc_set(P2, Q)) >= n_co:
                    continue
                if not simple_closed(P2):
                    continue
                if not finite_intersection(P2, Q):
                    continue
                c, g, co = full(P2, Q)
                dcross = c - b_c
                dpt = dcross + (len(g) - len(b_g))
                if dpt >= 0:
                    has_any = True
                    if g <= b_g:
                        has_shrink = True
                    lost = len(b_g - g); born = len(g - b_g)
                    if best_profile is None or (lost, born) < best_profile:
                        best_profile = (lost, born)
                if g == want and dcross >= 1:
                    has_strict = True
            if has_strict:
                break
        t = tab.setdefault(fam, [0, 0, 0, 0])
        t[0] += 1
        t[1] += 1 if has_strict else 0
        t[2] += 1 if has_shrink else 0
        t[3] += 1 if has_any else 0
        losses[(fam, best_profile)] += 1
        if not has_strict:
            strict_fail.append((tag, P, Q, i, j, len(b_g), n_co))

    log(f"  {'family':<10} {'n':>5} {'STRICT':>8} {'SHRINK':>8} {'ANY':>6}")
    order = ["plain", "hardP", "hardN", "hardM", "designed"]
    tot = [0, 0, 0, 0]
    for k in order:
        if k not in tab:
            continue
        t = tab[k]
        log(f"  {k:<10} {t[0]:>5} {t[1]:>8} {t[2]:>8} {t[3]:>6}")
        for c in range(4):
            tot[c] += t[c]
    log(f"  {'TOTAL':<10} {tot[0]:>5} {tot[1]:>8} {tot[2]:>8} {tot[3]:>6}")
    log("")
    log("  (points lost, points born) at the cheapest dM_pt >= 0 witness,")
    log("  by family:")
    for k in order:
        rows = [(p, n) for ((f, p), n) in losses.items() if f == k]
        if not rows:
            continue
        log(f"    {k}: " + ", ".join(f"{p}:{n}" for p, n in
                                     sorted(rows, key=lambda r: (-r[1], str(r[0])))))
    log("")
    if strict_fail:
        log("  instances with NO STRICT witness at |e| <= 1/4:")
        for (tag, P, Q, i, j, ng, nco) in strict_fail[:20]:
            log(f"    [{tag}] i={i} j={j} base |degPts|={ng} |coincSet|={nco}")
            log(f"      P = {fmt(P)}")
            log(f"      Q = {fmt(Q)}")
        if len(strict_fail) > 20:
            log(f"    ... and {len(strict_fail)-20} more")
    log(f"  total instances with no STRICT small-e witness: {len(strict_fail)}"
        f"/{len(instances)}")
    log("")
    log("appendix 2 done.")
    out.close()

if __name__ == "__main__":
    main()
