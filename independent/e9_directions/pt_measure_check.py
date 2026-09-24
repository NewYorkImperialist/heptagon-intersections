#!/usr/bin/env python3
"""
pt_measure_check.py
===================

EXACT-RATIONAL test of a REPLACEMENT measure for AKR section 9.1's apex-only
move.  Nothing here uses floats: every coordinate is a fractions.Fraction.

BACKGROUND
----------
The earlier run (move_joint_measure.py) REFUTED

    M_seg(R) = |crossPairs| + |segDeg| + |segDegP|   non-decreasing

because a vertex-vertex coincidence P[i] = Q[j] contributes FOUR entries to
segDeg + segDegP (it is an endpoint of P-sides i-1, i and of Q-sides j-1, j)
while being ONE point of intersection; a move cannot generally gain four
crossings.

THE REPLACEMENT UNDER TEST
--------------------------
    degPts(R) = { X : X lies on BOTH boundaries, and X is a vertex of P
                      or a vertex of Q }                (a SET OF POINTS)
    M_pt(R)   = |crossPairs| + |degPts(R)|

CONJECTURE.  For a pair with at least one vertex-vertex coincidence, finite
intersection, both heptagons simple, there EXIST a direction E and a nonzero e
such that after the apex-only move (P[i] -> P[i] + e*E; every other P vertex
and ALL Q vertices fixed):
  (1) both heptagons still simple,
  (2) |coincSet| strictly decreases,
  (3) M_pt does NOT decrease,
  (4) the intersection stays finite.

All primitives (orientR, ProperCrossR, segDeg, segDegP, coincSet,
SimpleClosed, moveV, the direction/e grids and the corpus generator) are
IMPORTED from move_joint_measure.py rather than re-written, so that the
instance families here are exactly the families of the refuting run.  Only
degPts / M_pt and the side-by-side scoring are new.

The measure is scored BOTH ways on every admissible move, so that the contrast
M_seg vs M_pt is measured on one and the same admissible set.
"""

from fractions import Fraction as F
from collections import Counter
import random
import sys
import os

import move_joint_measure as mjm
from move_joint_measure import (
    N, orientR, on_closed, proper_cross, sides, simple_closed,
    cross_pairs, seg_deg, seg_degP, coinc_set, finite_intersection,
    moveV, translate, classify, rand_simple_heptagon,
    DIRS, E_TIERS, ALL_E,
)

# |e| <= 1/4 is the perturbation regime: tiers 0 and 1 of E_TIERS are
# (1/1000, 1/100) and (1/10, 1/4).
SMALL_TIERS = [E_TIERS[0][0], E_TIERS[1][0]]
SMALL_E = set()
for _nm, _vs in E_TIERS[:2]:
    for _v in _vs:
        SMALL_E.add(_v); SMALL_E.add(-_v)

# ------------------------------------------------------------ the new measure

def deg_pts(P, Q, sd=None, sdp=None):
    """The SET of points lying on both boundaries that are a vertex of P or a
    vertex of Q.  Each such point is counted ONCE.

    Derived from segDeg / segDegP:  a Q-vertex Q[j] lies on dP iff (k,j) is in
    segDeg for some k; a P-vertex P[v] lies on dQ iff (j,v) is in segDegP for
    some j; and a P-vertex trivially lies on dP.  deg_pts_direct below is an
    independent implementation used as a self-test cross-check."""
    if sd is None:
        sd = seg_deg(P, Q)
    if sdp is None:
        sdp = seg_degP(P, Q)
    pts = set()
    for (k, j) in sd:
        pts.add(Q[j])
    for (j, v) in sdp:
        pts.add(P[v])
    return frozenset(pts)

def on_boundary(X, W):
    S = sides(W)
    return any(on_closed(X, a, b) for (a, b) in S)

def deg_pts_direct(P, Q):
    """Independent implementation, straight off the definition."""
    cand = set(P) | set(Q)
    return frozenset(X for X in cand if on_boundary(X, P) and on_boundary(X, Q))

def parts(P, Q):
    """(|crossPairs|, |segDeg|, |segDegP|, |degPts|)."""
    sd = seg_deg(P, Q)
    sdp = seg_degP(P, Q)
    return (len(cross_pairs(P, Q)), len(sd), len(sdp), len(deg_pts(P, Q, sd, sdp)))

def M_seg_of(p):  return p[0] + p[1] + p[2]
def M_pt_of(p):   return p[0] + p[3]

# ------------------------------------------------------------- the evaluator

def evaluate(P, Q, i, E, e, base):
    """None if the move is inadmissible ((1),(2) or (4) fails); else
    (dMseg, dMpt, dCross, dSegDeg, dSegDegP, dDegPts)."""
    b_c, b_d, b_dp, b_g, b_co = base
    P2 = moveV(P, i, E, e)
    nco = len(coinc_set(P2, Q))
    if nco >= b_co:                     # (2) coincidences must strictly drop
        return None
    if not simple_closed(P2):           # (1) Q never moves, so only P re-checked
        return None
    if not finite_intersection(P2, Q):  # (4)
        return None
    c, d, dp, g = parts(P2, Q)
    return ((c + d + dp) - (b_c + b_d + b_dp),
            (c + g) - (b_c + b_g),
            c - b_c, d - b_d, dp - b_dp, g - b_g)

class Best:
    """Track the best move under one scoring key."""
    __slots__ = ("rec",)
    def __init__(self):
        self.rec = None      # (delta, r, E, e)
    def offer(self, delta, r, E, e):
        # tie-break: prefer the SMALLER |e| among equal deltas
        if self.rec is None or (delta, -abs(e)) > (self.rec[0], -abs(self.rec[3])):
            self.rec = (delta, r, E, e)
    def d(self):
        return None if self.rec is None else self.rec[0]

def search(P, Q, i):
    """One full scan of the (E,e) grid, scoring every admissible move under
    BOTH measures.  Returns a dict."""
    b_c, b_d, b_dp, b_g = parts(P, Q)
    b_co = len(coinc_set(P, Q))
    base = (b_c, b_d, b_dp, b_g, b_co)
    bs_all, bp_all = Best(), Best()          # best over the whole grid
    bs_sml, bp_sml = Best(), Best()          # best with |e| <= 1/4
    n_adm = 0; n_scan = 0
    for e in ALL_E:
        small = e in SMALL_E
        for E in DIRS:
            n_scan += 1
            r = evaluate(P, Q, i, E, e, base)
            if r is None:
                continue
            n_adm += 1
            bs_all.offer(r[0], r, E, e)
            bp_all.offer(r[1], r, E, e)
            if small:
                bs_sml.offer(r[0], r, E, e)
                bp_sml.offer(r[1], r, E, e)
    return dict(base=base, n_adm=n_adm, n_scan=n_scan,
                seg=bs_all.rec, pt=bp_all.rec,
                seg_s=bs_sml.rec, pt_s=bp_sml.rec)

# --------------------------------------------------------------- generation

def generate(log, targets, seed, max_pairs):
    """The corpus generator of move_joint_measure.main(), verbatim in logic,
    with larger targets.  Families:
      plain : a coincidence and nothing else hard
      hardP : a Q-vertex OTHER than the apex lies on a P-side incident to P[i]
              (a degenerate point BESIDES the coincidence, which the move can
              destroy -- the critical family for M_pt)
      hardN : a frozen neighbour incidence P[i+-1] on a Q-side
      hardM : two or more coincidences
    """
    rnd = random.Random(seed)
    instances = []
    seen = set()
    n_pairs = 0; n_cand = 0; n_rej_finite = 0; n_extraQ = 0
    cnt = {k: 0 for k in targets}
    while any(cnt[k] < targets[k] for k in targets) and n_pairs < max_pairs:
        n_pairs += 1
        lo, hi = ((-4, 4) if n_pairs % 2 == 0 else (-5, 5))
        P = rand_simple_heptagon(rnd, lo, hi)
        Q0 = rand_simple_heptagon(rnd, lo, hi)
        if P is None or Q0 is None:
            continue
        order = [(i, j) for i in range(N) for j in range(N)]
        rnd.shuffle(order)
        taken = 0
        for (i, j) in order:
            if taken >= 3:
                break
            Q = translate(Q0, (P[i][0] - Q0[j][0], P[i][1] - Q0[j][1]))
            n_cand += 1
            if not finite_intersection(P, Q):
                n_rej_finite += 1
                continue
            if not (simple_closed(P) and simple_closed(Q)):
                continue
            co = coinc_set(P, Q)
            if (i, j) not in co:
                continue
            extraQ, extraP, nbr = classify(P, Q, i, j)
            if extraQ:
                n_extraQ += 1
            if len(co) >= 2:
                tag = "hardM"
            elif extraP:
                tag = "hardP"
            elif nbr:
                tag = "hardN"
            else:
                tag = "plain"
            if cnt[tag] >= targets[tag]:
                continue
            key = (P, Q, i, j)
            if key in seen:
                continue
            seen.add(key)
            cnt[tag] += 1
            taken += 1
            instances.append((tag, P, Q, i, j, (extraQ, extraP, nbr, len(co))))
        if n_pairs % 500 == 0:
            log(f"    ... {n_pairs} polygon pairs drawn, have "
                + " ".join(f"{k}={cnt[k]}" for k in sorted(cnt)))
    return instances, cnt, dict(n_pairs=n_pairs, n_cand=n_cand,
                                n_rej_finite=n_rej_finite, n_extraQ=n_extraQ)

DESIGNED = [
    ("D1 transversal-X",
     [(0, 0), (6, 1), (10, 5), (3, 8), (-3, 8), (-10, 5), (-6, 1)],
     [(0, 0), (1, -6), (5, -10), (8, -3), (8, 3), (5, 10), (1, 6)], 0, 0),
    ("D2 non-crossing-wedges",
     [(0, 0), (12, 1), (20, 4), (22, 10), (16, 14), (8, 12), (4, 6)],
     [(0, 0), (-1, 12), (-4, 20), (-10, 22), (-14, 16), (-12, 8), (-6, 4)], 0, 0),
    ("D3 collinear-apex-X",
     [(-8, 0), (0, 0), (8, 0), (10, 6), (4, 11), (-4, 11), (-10, 6)],
     [(0, -8), (0, 0), (0, 8), (-6, 10), (-11, 4), (-11, -4), (-6, -10)], 1, 1),
]

def fmt(W):
    return "[" + ", ".join(f"({p[0]},{p[1]})" for p in W) + "]"

# --------------------------------------------------------------- self-tests

def selftests(log):
    """mjm's primitive self-tests (orientR, on-segment with endpoints,
    SimpleClosed on collinear / self-crossing, moveV) plus the new degPts
    tests."""
    ok = mjm.selftests(log)

    def chk(name, cond):
        nonlocal ok
        log(f"  [{'PASS' if cond else 'FAIL'}] {name}")
        if not cond:
            ok = False

    log("  -- new degPts tests --")
    # the crescent witness
    Pa = tuple((F(a), F(b)) for a, b in DESIGNED[0][1])
    Qa = tuple((F(a), F(b)) for a, b in DESIGNED[0][2])
    g = deg_pts(Pa, Qa)
    chk("crescent witness: degPts has exactly 3 points", len(g) == 3)
    chk("crescent witness: degPts is exactly {(0,0),(3,8),(8,3)}",
        g == frozenset({(F(0), F(0)), (F(3), F(8)), (F(8), F(3))}))
    co = coinc_set(Pa, Qa)
    chk("crescent witness: exactly one coincidence, at (0,0)",
        co == frozenset({(0, 0)}) and Pa[0] == Qa[0] == (F(0), F(0)))
    sd = seg_deg(Pa, Qa); sdp = seg_degP(Pa, Qa)
    chk("the coincidence occupies 4 slots in segDeg+segDegP but 1 point in degPts",
        len([1 for (k, j) in sd if Qa[j] == (F(0), F(0))]) == 2
        and len([1 for (j, v) in sdp if Pa[v] == (F(0), F(0))]) == 2
        and len([X for X in g if X == (F(0), F(0))]) == 1)
    chk("crescent witness: |segDeg|+|segDegP| = 6 while |degPts| = 3",
        len(sd) + len(sdp) == 6 and len(g) == 3)
    chk("crescent witness: M_seg = 7, M_pt = 4",
        M_seg_of(parts(Pa, Qa)) == 7 and M_pt_of(parts(Pa, Qa)) == 4)
    # degPts vs its independent implementation
    chk("degPts agrees with the direct definition (crescent)",
        deg_pts(Pa, Qa) == deg_pts_direct(Pa, Qa))
    # a pair with NO degenerate point at all
    Pb = tuple((F(a), F(b)) for a, b in
               [(0, 0), (4, 0), (8, 0), (8, 4), (4, 8), (0, 8), (0, 4)])
    Qb = translate(Pb, (F(1, 3), F(1, 5)))
    chk("disjoint-vertex translate: degPts empty, agrees with direct",
        deg_pts(Pb, Qb) == deg_pts_direct(Pb, Qb))
    # a T-touch: a Q-vertex strictly inside a P-side is ONE degPt, and shows up
    # once in segDeg and never in segDegP -- degPts must still count it once
    Pc = tuple((F(a), F(b)) for a, b in
               [(-6, 0), (0, 0), (6, 0), (7, 5), (3, 9), (-3, 9), (-7, 5)])
    Qc = tuple((F(a), F(b)) for a, b in
               [(3, 0), (8, -3), (12, -7), (7, -12), (-1, -12), (-6, -7), (-2, -3)])
    chk("T-touch fixture is simple and has NO coincidence",
        simple_closed(Pc) and simple_closed(Qc) and not coinc_set(Pc, Qc))
    gc = deg_pts(Pc, Qc)
    chk("T-touch: degPts agrees with the direct definition",
        gc == deg_pts_direct(Pc, Qc))
    chk("T-touch: Q[0]=(3,0) strictly inside a P-side is exactly one degPt",
        gc == frozenset({(F(3), F(0))})
        and seg_deg(Pc, Qc) == frozenset({(1, 0)})
        and seg_degP(Pc, Qc) == frozenset())
    # degPts is invariant under swapping the roles of the two polygons
    chk("degPts is symmetric in (P,Q)", deg_pts(Pa, Qa) == deg_pts(Qa, Pa))
    # moveV: exactly one vertex, and the apex actually leaves the coincidence
    P2 = moveV(Pa, 0, (F(1), F(3)), F(1, 100))
    chk("moveV changes exactly one vertex (re-checked here)",
        [k for k in range(N) if P2[k] != Pa[k]] == [0])
    chk("the moved pair has strictly fewer coincidences",
        len(coinc_set(P2, Qa)) < len(coinc_set(Pa, Qa)))
    # cross-check deg_pts against deg_pts_direct on random moved configurations
    rnd = random.Random(12345)
    agree = True
    for _ in range(120):
        W = rand_simple_heptagon(rnd, -4, 4)
        V0 = rand_simple_heptagon(rnd, -4, 4)
        if W is None or V0 is None:
            continue
        V = translate(V0, (W[0][0] - V0[0][0], W[0][1] - V0[0][1]))
        if deg_pts(W, V) != deg_pts_direct(W, V):
            agree = False; break
        Wm = moveV(W, 0, (F(1), F(2)), F(1, 7))
        if deg_pts(Wm, V) != deg_pts_direct(Wm, V):
            agree = False; break
    chk("degPts agrees with the direct definition on 120 random pairs "
        "(and their moves)", agree)
    return ok

# -------------------------------------------------------------------- main

def main():
    here = os.path.dirname(os.path.abspath(__file__))
    out = open(os.path.join(here, "pt_measure_check.log"), "w")
    def log(*a):
        s = " ".join(str(x) for x in a)
        print(s)
        out.write(s + "\n")
        out.flush()

    log("=" * 78)
    log("pt_measure_check.py -- REPLACEMENT measure M_pt for AKR 9.1's move")
    log("  M_seg = |crossPairs| + |segDeg| + |segDegP|      (already refuted)")
    log("  M_pt  = |crossPairs| + |degPts|   , degPts a SET OF POINTS")
    log("exact Fraction arithmetic throughout; no floats")
    log("=" * 78)
    log("")
    log("SELF-TESTS (primitives imported from move_joint_measure.py, plus degPts)")
    if not selftests(log):
        log("\nSELF-TEST FAILURE -- aborting, as required.")
        out.close()
        sys.exit(1)
    log("  all self-tests passed")
    log("")
    log(f"direction grid : {len(DIRS)} primitive integer directions, |dx|,|dy| <= 5")
    log(f"e grid         : {[str(x) for x in ALL_E]}")
    log(f"perturbation regime |e| <= 1/4 : {sorted(str(x) for x in SMALL_E)}")
    log(f"scan size      : {len(DIRS) * len(ALL_E)} (E,e) pairs per instance")
    log("")

    # ------------------------------------------------ instance generation
    log("INSTANCE GENERATION (same generator and same four families as the")
    log("refuting run; larger targets)")
    TARGETS = {"plain": 150, "hardP": 150, "hardN": 110, "hardM": 60}
    log(f"  targets: {TARGETS}")
    instances, cnt, gstat = generate(log, TARGETS, seed=20260924, max_pairs=20000)

    for (nm, pc, qc, i, j) in DESIGNED:
        Pd = tuple((F(a), F(b)) for a, b in pc)
        Qd = tuple((F(a), F(b)) for a, b in qc)
        okP = simple_closed(Pd); okQ = simple_closed(Qd)
        fin = finite_intersection(Pd, Qd)
        co = coinc_set(Pd, Qd)
        log(f"  designed {nm}: simpleP={okP} simpleQ={okQ} finite={fin} "
            f"coincSet={sorted(co)} degPts={len(deg_pts(Pd,Qd))}")
        if okP and okQ and fin and (i, j) in co:
            eQ, eP, nb = classify(Pd, Qd, i, j)
            instances.append(("designed:" + nm, Pd, Qd, i, j, (eQ, eP, nb, len(co))))

    n_des = sum(1 for t in instances if t[0].startswith("designed"))
    log("")
    log(f"  random polygon pairs drawn            : {gstat['n_pairs']}")
    log(f"  (i,j) coincidence candidates examined : {gstat['n_cand']}")
    log(f"    discarded for infinite intersection : {gstat['n_rej_finite']}")
    log("  INSTANCE COUNT PER FAMILY:")
    log(f"    plain  (coincidence only)                       : {cnt['plain']}")
    log(f"    hardP  (a Q-vertex OTHER than the apex on a")
    log(f"            P-side incident to P[i] -- the critical")
    log(f"            family: degenerate points besides the")
    log(f"            coincidence that the move can destroy)  : {cnt['hardP']}")
    log(f"    hardN  (frozen neighbour incidence P[i+-1])     : {cnt['hardN']}")
    log(f"    hardM  (two or more coincidences)               : {cnt['hardM']}")
    log(f"    designed adversarial                            : {n_des}")
    log(f"    TOTAL                                           : {len(instances)}")
    log(f"  (the refuting run used 178 instances; this run uses {len(instances)})")
    log("")

    # ------------------------------------------------------- the main scan
    log("=" * 78)
    log("MAIN SCAN -- every admissible move scored under BOTH measures")
    log("=" * 78)
    rows = []
    for idx, (tag, P, Q, i, j, feats) in enumerate(instances):
        res = search(P, Q, i)
        rows.append((tag, P, Q, i, j, feats, res))
        if (idx + 1) % 50 == 0:
            log(f"  ... {idx + 1}/{len(instances)} instances scanned")
    log("")

    fam = lambda tag: tag.split(":")[0]

    def tally(key, small=False):
        """per-family (n, #instances whose max delta >= 0, #with no admissible
        move at all)."""
        t = {}
        for (tag, P, Q, i, j, feats, res) in rows:
            k = fam(tag)
            rec = res[key + ("_s" if small else "")]
            d = t.setdefault(k, [0, 0, 0, 0])     # n, ge0, lt0, none
            d[0] += 1
            if rec is None:
                d[3] += 1
            elif rec[0] >= 0:
                d[1] += 1
            else:
                d[2] += 1
        return t

    ts = tally("seg"); tp = tally("pt")
    log("SIDE BY SIDE, FULL (E,e) GRID")
    log("  'ok' = the instance HAS an admissible move with delta >= 0")
    log("  'FAIL' = it has admissible moves but every one of them DROPS the measure")
    log("  'none' = no admissible move at all (clauses (1),(2),(4) unsatisfiable)")
    log(f"  {'family':<10} {'n':>5} | {'M_seg ok':>9} {'M_seg FAIL':>11} "
        f"| {'M_pt ok':>9} {'M_pt FAIL':>10} | {'none':>5}")
    order = ["plain", "hardP", "hardN", "hardM", "designed"]
    for k in order:
        if k not in ts:
            continue
        a = ts[k]; b = tp[k]
        log(f"  {k:<10} {a[0]:>5} | {a[1]:>9} {a[2]:>11} | {b[1]:>9} {b[2]:>10} "
            f"| {a[3]:>5}")
    A = [sum(ts[k][c] for k in ts) for c in range(4)]
    B = [sum(tp[k][c] for k in tp) for c in range(4)]
    log(f"  {'TOTAL':<10} {A[0]:>5} | {A[1]:>9} {A[2]:>11} | {B[1]:>9} {B[2]:>10} "
        f"| {A[3]:>5}")
    log("")

    tss = tally("seg", True); tps = tally("pt", True)
    log("SIDE BY SIDE, PERTURBATION REGIME |e| <= 1/4 ONLY")
    log("  (section 9's uniform-epsilon step can only use small e)")
    log(f"  {'family':<10} {'n':>5} | {'M_seg ok':>9} {'M_seg FAIL':>11} "
        f"| {'M_pt ok':>9} {'M_pt FAIL':>10} | {'none':>5}")
    for k in order:
        if k not in tss:
            continue
        a = tss[k]; b = tps[k]
        log(f"  {k:<10} {a[0]:>5} | {a[1]:>9} {a[2]:>11} | {b[1]:>9} {b[2]:>10} "
            f"| {a[3]:>5}")
    As = [sum(tss[k][c] for k in tss) for c in range(4)]
    Bs = [sum(tps[k][c] for k in tps) for c in range(4)]
    log(f"  {'TOTAL':<10} {As[0]:>5} | {As[1]:>9} {As[2]:>11} | {Bs[1]:>9} "
        f"{Bs[2]:>10} | {As[3]:>5}")
    log("")

    # distribution of the best delta under each measure
    log("DISTRIBUTION OF THE BEST DELTA PER INSTANCE")
    for key, nm in (("seg", "M_seg"), ("pt", "M_pt")):
        c = Counter()
        for r in rows:
            rec = r[6][key]
            c["no admissible move" if rec is None else rec[0]] += 1
        log(f"  {nm} (full grid)     : "
            + ", ".join(f"{k}:{v}" for k, v in sorted(c.items(), key=lambda kv: str(kv[0]))))
        c = Counter()
        for r in rows:
            rec = r[6][key + "_s"]
            c["no admissible move" if rec is None else rec[0]] += 1
        log(f"  {nm} (|e| <= 1/4)    : "
            + ", ".join(f"{k}:{v}" for k, v in sorted(c.items(), key=lambda kv: str(kv[0]))))
    log("")

    # --------------------------------------------- candidate counterexamples
    log("=" * 78)
    log("CANDIDATE COUNTEREXAMPLES TO THE REPLACEMENT")
    log("  instances with NO admissible move of dM_pt >= 0 anywhere on the grid")
    log("=" * 78)
    ce = [r for r in rows if r[6]["pt"] is None or r[6]["pt"][0] < 0]
    if not ce:
        log("  none -- every instance has an admissible move with dM_pt >= 0")
    for (tag, P, Q, i, j, feats, res) in ce:
        log(f"  --- [{tag}] apex i={i}, coincident Q-vertex j={j}")
        log(f"      P = {fmt(P)}")
        log(f"      Q = {fmt(Q)}")
        b = res["base"]
        log(f"      base: |crossPairs|={b[0]} |segDeg|={b[1]} |segDegP|={b[2]} "
            f"|degPts|={b[3]} |coincSet|={b[4]}  "
            f"M_seg={b[0]+b[1]+b[2]} M_pt={b[0]+b[3]}")
        log(f"      admissible moves: {res['n_adm']} of {res['n_scan']}")
        rec = res["pt"]
        if rec is None:
            log("      NO admissible move at all (so (1),(2),(4) already fail)")
        else:
            d, r, E, e = rec
            log(f"      BEST dM_pt = {d}  at E=({E[0]},{E[1]}) e={e}   "
                f"(dCross={r[2]}, dDegPts={r[5]}; "
                f"dSegDeg={r[3]}, dSegDegP={r[4]}, dM_seg={r[0]})")
        recs = res["pt_s"]
        if recs is not None:
            d, r, E, e = recs
            log(f"      best with |e| <= 1/4: dM_pt = {d} at E=({E[0]},{E[1]}) e={e}")
    log(f"  total candidate counterexamples: {len(ce)}")
    log("")

    # counterexamples in the small-e regime only
    ces = [r for r in rows if r[6]["pt_s"] is None or r[6]["pt_s"][0] < 0]
    log("  SMALL-e-ONLY FAILURES (dM_pt >= 0 unreachable with |e| <= 1/4,")
    log("  but possibly reachable with a larger displacement):")
    only_small = [r for r in ces if not (r[6]["pt"] is None or r[6]["pt"][0] < 0)]
    log(f"    instances failing in the |e| <= 1/4 regime : {len(ces)}")
    log(f"    of those, ones that succeed with larger e  : {len(only_small)}")
    for (tag, P, Q, i, j, feats, res) in only_small[:15]:
        rec = res["pt"]
        log(f"    --- [{tag}] i={i} j={j}  P = {fmt(P)}  Q = {fmt(Q)}")
        log(f"        best over the whole grid: dM_pt={rec[0]} at "
            f"E=({rec[2][0]},{rec[2][1]}) e={rec[3]}")
    log("")

    # ------------------------------------------ item 4: the breakdown shape
    log("=" * 78)
    log("BREAKDOWN AT THE BEST M_pt WITNESS")
    log("  what does the move actually pay, and with what?")
    log("=" * 78)
    for key, nm in (("pt", "full grid"), ("pt_s", "|e| <= 1/4")):
        c = Counter()
        for r in rows:
            rec = r[6][key]
            if rec is None:
                c["(no admissible move)"] += 1
            else:
                d, rr, E, e = rec
                c[(d, rr[2], rr[5])] += 1
        log(f"  {nm}:  (dM_pt, dCrossPairs, dDegPts)")
        for k, v in sorted(c.items(), key=lambda kv: (-kv[1], str(kv[0]))):
            log(f"    {str(k):<30} {v:>6}")
        log("")

    log("  IS THE SHAPE 'exactly ONE degenerate point dies, >= 1 crossing is")
    log("  gained'?  Counted at the best M_pt witness of each instance:")
    for key, nm in (("pt", "full grid"), ("pt_s", "|e| <= 1/4")):
        shape = Counter()
        for r in rows:
            rec = r[6][key]
            if rec is None:
                shape["no admissible move"] += 1
                continue
            d, rr, E, e = rec
            dcross, ddeg = rr[2], rr[5]
            if ddeg == -1 and dcross >= 1:
                shape["exactly one degPt dies, >=1 crossing gained"] += 1
            elif ddeg == -1 and dcross == 0:
                shape["exactly one degPt dies, NO crossing gained (dM_pt=-1)"] += 1
            elif ddeg == -1 and dcross < 0:
                shape["one degPt dies AND crossings lost"] += 1
            elif ddeg < -1 and dcross >= -ddeg:
                shape["several degPts die, crossings cover them"] += 1
            elif ddeg < -1:
                shape["several degPts die, crossings do NOT cover them"] += 1
            elif ddeg == 0:
                shape["no degPt dies"] += 1
            else:
                shape["degPts GROWS"] += 1
        log(f"  {nm}:")
        for k, v in sorted(shape.items(), key=lambda kv: -kv[1]):
            log(f"    {k:<58} {v:>6}")
        log("")

    # the same, restricted to the critical hardP family
    log("  the same shape table restricted to the hardP family (full grid):")
    shape = Counter()
    for r in rows:
        if fam(r[0]) != "hardP":
            continue
        rec = r[6]["pt"]
        if rec is None:
            shape["no admissible move"] += 1
            continue
        d, rr, E, e = rec
        shape[(rr[5], rr[2])] += 1       # (dDegPts, dCross)
    log(f"    {'(dDegPts, dCross)':<30} {'count':>6}")
    for k, v in sorted(shape.items(), key=lambda kv: (-kv[1], str(kv[0]))):
        log(f"    {str(k):<30} {v:>6}")
    log("")

    # how many degenerate points does the move destroy at its best witness, and
    # how many does the base configuration have?
    log("  base |degPts| vs the number destroyed at the best M_pt witness:")
    tab = Counter()
    for r in rows:
        rec = r[6]["pt"]
        if rec is None:
            continue
        tab[(r[6]["base"][3], -rec[1][5])] += 1
    log(f"    {'(base |degPts|, # destroyed)':<32} {'count':>6}")
    for k, v in sorted(tab.items(), key=lambda kv: str(kv[0])):
        log(f"    {str(k):<32} {v:>6}")
    log("")

    # the crescent witness, in detail
    log("  THE CRESCENT WITNESS IN DETAIL (D1):")
    for (tag, P, Q, i, j, feats, res) in rows:
        if tag != "designed:D1 transversal-X":
            continue
        b = res["base"]
        log(f"    base: cross={b[0]} segDeg={b[1]} segDegP={b[2]} degPts={b[3]} "
            f"coinc={b[4]}  M_seg={b[0]+b[1]+b[2]} M_pt={b[0]+b[3]}")
        log(f"    admissible moves: {res['n_adm']} of {res['n_scan']}")
        for key, nm in (("seg", "M_seg full"), ("pt", "M_pt full"),
                        ("seg_s", "M_seg |e|<=1/4"), ("pt_s", "M_pt |e|<=1/4")):
            rec = res[key]
            if rec is None:
                log(f"      {nm:<16}: none")
            else:
                d, rr, E, e = rec
                log(f"      {nm:<16}: best delta={d} at E=({E[0]},{E[1]}) e={e}"
                    f"  (dCross={rr[2]}, dDegPts={rr[5]}, dSegDeg={rr[3]}, "
                    f"dSegDegP={rr[4]})")
        # the full delta spectrum over the admissible set
        spec_seg = Counter(); spec_pt = Counter()
        base = (b[0], b[1], b[2], b[3], b[4])
        for e in ALL_E:
            for E in DIRS:
                rr = evaluate(P, Q, i, E, e, base)
                if rr is None:
                    continue
                spec_seg[rr[0]] += 1; spec_pt[rr[1]] += 1
        log(f"      dM_seg spectrum over ALL admissible moves: {dict(sorted(spec_seg.items()))}")
        log(f"      dM_pt  spectrum over ALL admissible moves: {dict(sorted(spec_pt.items()))}")
    log("")

    # ------------------------------------ MANDATORY non-vacuity controls
    log("=" * 78)
    log("CONTROLS -- the checker MUST be able to report failure")
    log("=" * 78)

    # Control A: demand M_pt STRICTLY INCREASE (deliberately false variant)
    cA = sum(1 for r in rows if r[6]["pt"] is None or r[6]["pt"][0] <= 0)
    log(f"  A. FALSE VARIANT 'dM_pt > 0 (strict increase)' ... instances "
        f"FAILING: {cA}/{len(rows)}")
    log("     (if this were 0 the whole test would be vacuous; it is not)")
    # independent re-search of the first 20 instances, from scratch
    cA_direct = 0
    for (tag, P, Q, i, j, feats, res) in rows[:20]:
        b_c, b_d, b_dp, b_g = parts(P, Q)
        base = (b_c, b_d, b_dp, b_g, len(coinc_set(P, Q)))
        found = False
        for e in ALL_E:
            for E in DIRS:
                rr = evaluate(P, Q, i, E, e, base)
                if rr is not None and rr[1] > 0:
                    found = True; break
            if found:
                break
        if not found:
            cA_direct += 1
    cA_rescored = sum(1 for r in rows[:20]
                      if r[6]["pt"] is None or r[6]["pt"][0] <= 0)
    log(f"     independent re-search of the first 20: {cA_direct} failing "
        f"(re-scored from the main scan: {cA_rescored}) -- must agree: "
        f"{'YES' if cA_direct == cA_rescored else 'NO -- BUG'}")
    if cA_direct != cA_rescored:
        log("  CONTROL CROSS-CHECK FAILED -- aborting.")
        out.close()
        sys.exit(1)

    # Control B: only LARGE e in {1,2,4}
    BIG = [F(1), F(2), F(4), F(-1), F(-2), F(-4)]
    cB = 0
    for (tag, P, Q, i, j, feats, res) in rows:
        b_c, b_d, b_dp, b_g = parts(P, Q)
        base = (b_c, b_d, b_dp, b_g, len(coinc_set(P, Q)))
        found = False
        for e in BIG:
            for E in DIRS:
                rr = evaluate(P, Q, i, E, e, base)
                if rr is not None and rr[1] >= 0:
                    found = True; break
            if found:
                break
        if not found:
            cB += 1
    log(f"  B. FALSE VARIANT 'only LARGE e in {{1,2,4}}' ...... instances "
        f"FAILING: {cB}/{len(rows)}")

    # Control C: a FIXED direction instead of an existential one
    for Efix in [(F(1), F(0)), (F(0), F(1)), (F(1), F(1))]:
        cC = 0
        for (tag, P, Q, i, j, feats, res) in rows:
            b_c, b_d, b_dp, b_g = parts(P, Q)
            base = (b_c, b_d, b_dp, b_g, len(coinc_set(P, Q)))
            found = False
            for e in ALL_E:
                rr = evaluate(P, Q, i, Efix, e, base)
                if rr is not None and rr[1] >= 0:
                    found = True; break
            if not found:
                cC += 1
        log(f"  C. FALSE VARIANT 'FIXED direction E=({Efix[0]},{Efix[1]})' .. "
            f"instances FAILING: {cC}/{len(rows)}")

    # Control D: e = 0 must never be admissible
    cD = 0
    for (tag, P, Q, i, j, feats, res) in rows:
        b_c, b_d, b_dp, b_g = parts(P, Q)
        base = (b_c, b_d, b_dp, b_g, len(coinc_set(P, Q)))
        if evaluate(P, Q, i, (F(1), F(1)), F(0), base) is not None:
            cD += 1
    log(f"  D. e = 0 admissible anywhere (must be 0) ........ {cD}")
    if cD != 0:
        log("  CONTROL D FAILED -- aborting.")
        out.close()
        sys.exit(1)

    # Control E: a deliberately WRONG measure -- |degPts| alone, no crossings --
    # must fail everywhere, since the move always destroys the coincidence.
    cE = 0
    for (tag, P, Q, i, j, feats, res) in rows:
        b_c, b_d, b_dp, b_g = parts(P, Q)
        base = (b_c, b_d, b_dp, b_g, len(coinc_set(P, Q)))
        found = False
        for e in ALL_E:
            for E in DIRS:
                rr = evaluate(P, Q, i, E, e, base)
                if rr is not None and rr[5] >= 0:      # dDegPts >= 0
                    found = True; break
            if found:
                break
        if not found:
            cE += 1
    log(f"  E. FALSE VARIANT '|degPts| alone non-decreasing' . instances "
        f"FAILING: {cE}/{len(rows)}")
    log("     (the move always destroys the coincidence point, so this must")
    log("      fail broadly; if it did not, degPts would not be measuring the")
    log("      coincidence at all)")

    # Control F: the conjunction must actually bind
    n_adm_any = sum(1 for r in rows if r[6]["n_adm"] > 0)
    log(f"  F. instances with >= 1 move satisfying (1),(2),(4) : "
        f"{n_adm_any}/{len(rows)}")
    log(f"     of those, ones where (3) holds for M_pt         : {B[1]}")
    log(f"     of those, ones where (3) holds for M_seg        : {A[1]}")
    log("")

    # ------------------------------------------------ designed in detail
    log("=" * 78)
    log("DESIGNED ADVERSARIAL INSTANCES IN DETAIL")
    log("=" * 78)
    for (tag, P, Q, i, j, feats, res) in rows:
        if not tag.startswith("designed"):
            continue
        b = res["base"]
        log(f"  {tag}  apex i={i} j={j}")
        log(f"    P = {fmt(P)}")
        log(f"    Q = {fmt(Q)}")
        log(f"    base: cross={b[0]} segDeg={b[1]} segDegP={b[2]} degPts={b[3]} "
            f"coinc={b[4]}  M_seg={b[0]+b[1]+b[2]} M_pt={b[0]+b[3]}")
        log(f"    admissible moves: {res['n_adm']} of {res['n_scan']}")
        for key, nm in (("seg", "M_seg full"), ("pt", "M_pt full"),
                        ("seg_s", "M_seg |e|<=1/4"), ("pt_s", "M_pt |e|<=1/4")):
            rec = res[key]
            if rec is None:
                log(f"      {nm:<16}: none")
            else:
                d, rr, E, e = rec
                log(f"      {nm:<16}: delta={d} at E=({E[0]},{E[1]}) e={e} "
                    f"(dCross={rr[2]}, dDegPts={rr[5]})")
    log("")

    # ----------------------------------------------------------- verdict
    log("=" * 78)
    log("VERDICT")
    log("=" * 78)
    log(f"  instances scanned                                  : {len(rows)}")
    log(f"  M_seg non-decreasing somewhere (full grid)         : {A[1]}/{A[0]}")
    log(f"  M_pt  non-decreasing somewhere (full grid)         : {B[1]}/{B[0]}")
    log(f"  M_seg non-decreasing somewhere (|e| <= 1/4)        : {As[1]}/{As[0]}")
    log(f"  M_pt  non-decreasing somewhere (|e| <= 1/4)        : {Bs[1]}/{Bs[0]}")
    log(f"  candidate counterexamples to M_pt (full grid)      : {len(ce)}")
    log(f"  candidate counterexamples to M_pt (|e| <= 1/4)     : {len(ces)}")
    log("")
    log("done.")
    out.close()

if __name__ == "__main__":
    main()
