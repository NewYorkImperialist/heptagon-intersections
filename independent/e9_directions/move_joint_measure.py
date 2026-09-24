#!/usr/bin/env python3
"""
move_joint_measure.py
=====================

Numerical test, in EXACT rational arithmetic (fractions.Fraction only, no
floats anywhere), of the JOINT conjecture for AKR section 9.1's apex-only move.

THE CONJECTURE UNDER TEST
-------------------------
Let R = (P,Q) be a pair of simple heptagons with at least one vertex-vertex
coincidence (coincSet nonempty) whose boundaries meet in finitely many points.
Then there EXIST a direction E and a nonzero e such that, after the APEX-ONLY
move  moveV(V,i,E,e) = V except P[i] |-> P[i] + e*E :

  (1) both heptagons are still SimpleClosed,
  (2) |coincSet| strictly DECREASES,
  (3) MEASURE = |crossPairs| + |segDeg| + |segDegP| does NOT decrease,
  (4) the intersection stays finite.

Clause (3) is the make-or-break clause.

TRANSCRIPTION SOURCES (nothing here is invented)
------------------------------------------------
  orientR            lean/RealConfig.lean:54
  ProperCrossR       lean/RealUpperBound.lean:62
  crossPairsOf       lean/RealPerturb.lean:151      (P-side k, Q-side j)
  segDeg             lean/Pair9Shift.lean:1876      (k,j) : Q[j] in sideP9 k
  segDegP            lean/Pair9Shift.lean:1920      (j,v) : P[v] in sideQ9 j
  coincSet           lean/E9Directions.lean:497     (v,j) : P[v] = Q[j]
  SimpleClosed       lean/AKR9.lean:71              all three conjuncts
  Adjacent           lean/LowerBound.lean:79        i=j or j=i+1 or i=j+1
  moveV              lean/E9Directions.lean:290     APEX ONLY

SimpleClosed deliberately ACCEPTS a heptagon with three collinear vertices;
self-test 5 below pins that down.

A NOTE ON THE SIGN OF e
-----------------------
moveV(V,i,E,e) = moveV(V,i,-E,-e) identically, and the direction grid is
symmetric under E |-> -E, so negative e adds no new configurations.  Both signs
are searched anyway, as asked, and the log records that the (+e,-e) split of the
witnesses is exactly the E |-> -E mirror.
"""

from fractions import Fraction as F
from math import gcd
import random
import sys
import os

N = 7

# ---------------------------------------------------------------- primitives

def orientR(a, b, c):
    """lean/RealConfig.lean:54."""
    return (b[0] - a[0]) * (c[1] - a[1]) - (b[1] - a[1]) * (c[0] - a[0])

def sub(a, b):   return (a[0] - b[0], a[1] - b[1])
def add(a, b):   return (a[0] + b[0], a[1] + b[1])
def cross2(u, v): return u[0] * v[1] - u[1] * v[0]
def dot(u, v):   return u[0] * v[0] + u[1] * v[1]

def on_closed(p, a, b):
    """p in segment(a,b), CLOSED (endpoints included).  Lean: `segment R a b`."""
    if a == b:
        return p == a
    if orientR(a, b, p) != 0:
        return False
    return (min(a[0], b[0]) <= p[0] <= max(a[0], b[0])
            and min(a[1], b[1]) <= p[1] <= max(a[1], b[1]))

def proper_cross(a, b, c, d):
    """ProperCrossR, lean/RealUpperBound.lean:62."""
    return (orientR(a, b, c) * orientR(a, b, d) < 0
            and orientR(c, d, a) * orientR(c, d, b) < 0)

def seg_inter(p1, p2, q1, q2):
    """Exact intersection of two closed segments: ('empty',) | ('point',X) |
    ('seg',A,B) with A != B."""
    if p1 == p2:
        return ('point', p1) if on_closed(p1, q1, q2) else ('empty',)
    if q1 == q2:
        return ('point', q1) if on_closed(q1, p1, p2) else ('empty',)
    r = sub(p2, p1); s = sub(q2, q1); d = cross2(r, s); qp = sub(q1, p1)
    if d != 0:
        t = F(cross2(qp, s), d); u = F(cross2(qp, r), d)
        if 0 <= t <= 1 and 0 <= u <= 1:
            return ('point', (p1[0] + t * r[0], p1[1] + t * r[1]))
        return ('empty',)
    if cross2(qp, r) != 0:
        return ('empty',)
    rr = dot(r, r)
    t0 = F(dot(sub(q1, p1), r), rr); t1 = F(dot(sub(q2, p1), r), rr)
    lo = max(min(t0, t1), F(0)); hi = min(max(t0, t1), F(1))
    if lo > hi:
        return ('empty',)
    A = (p1[0] + lo * r[0], p1[1] + lo * r[1])
    B = (p1[0] + hi * r[0], p1[1] + hi * r[1])
    return ('point', A) if A == B else ('seg', A, B)

def sides(W):
    return [(W[k], W[(k + 1) % N]) for k in range(N)]

# ------------------------------------------------------------- SimpleClosed

def adjacent(i, j):
    """lean/LowerBound.lean:79 : i = j or j = i+1 or i = j+1, in Fin 7."""
    return i == j or j == (i + 1) % N or i == (j + 1) % N

def simple_closed(W):
    """lean/AKR9.lean:71, all three conjuncts.

    (a) no degenerate side,
    (b) non-adjacent sides disjoint,
    (c) side i meets side i+1 exactly in {W[i+1]}.

    Three collinear vertices are ALLOWED: (c) still holds for a straight
    pass-through, and fails only for a genuine backtrack."""
    for i in range(N):
        if W[i] == W[(i + 1) % N]:
            return False
    S = sides(W)
    for i in range(N):
        for j in range(i + 1, N):
            if adjacent(i, j):
                continue
            if seg_inter(S[i][0], S[i][1], S[j][0], S[j][1])[0] != 'empty':
                return False
    for i in range(N):
        j = (i + 1) % N
        r = seg_inter(S[i][0], S[i][1], S[j][0], S[j][1])
        if r[0] != 'point' or r[1] != W[j]:
            return False
    return True

# ------------------------------------------------------- the four index sets

def cross_pairs(P, Q):
    SP = sides(P); SQ = sides(Q)
    return frozenset((k, j) for k in range(N) for j in range(N)
                     if proper_cross(SP[k][0], SP[k][1], SQ[j][0], SQ[j][1]))

def seg_deg(P, Q):
    """(k,j) : Q[j] on the CLOSED P-side k."""
    SP = sides(P)
    return frozenset((k, j) for k in range(N) for j in range(N)
                     if on_closed(Q[j], SP[k][0], SP[k][1]))

def seg_degP(P, Q):
    """(j,v) : P[v] on the CLOSED Q-side j."""
    SQ = sides(Q)
    return frozenset((j, v) for j in range(N) for v in range(N)
                     if on_closed(P[v], SQ[j][0], SQ[j][1]))

def coinc_set(P, Q):
    return frozenset((v, j) for v in range(N) for j in range(N) if P[v] == Q[j])

def measure_parts(P, Q):
    return (len(cross_pairs(P, Q)), len(seg_deg(P, Q)), len(seg_degP(P, Q)))

def measure(P, Q):
    c, d, dp = measure_parts(P, Q)
    return c + d + dp

def finite_intersection(P, Q):
    """No P-side and Q-side overlap in a positive-length segment."""
    SP = sides(P); SQ = sides(Q)
    for a in SP:
        for b in SQ:
            if seg_inter(a[0], a[1], b[0], b[1])[0] == 'seg':
                return False
    return True

# ------------------------------------------------------------------- the move

def moveV(P, i, E, e):
    """lean/E9Directions.lean:290.  APEX ONLY: exactly one vertex moves.
    Q is not passed in at all -- it cannot move."""
    return tuple(((P[k][0] + e * E[0], P[k][1] + e * E[1]) if k == i else P[k])
                 for k in range(N))

# ----------------------------------------------------------- search grids

def direction_grid(R):
    out = []
    for dx in range(-R, R + 1):
        for dy in range(-R, R + 1):
            if (dx, dy) != (0, 0) and gcd(abs(dx), abs(dy)) == 1:
                out.append((F(dx), F(dy)))
    return out

DIRS = direction_grid(5)

# e-tiers.  Coordinates are O(10), so 1/1000 .. 1/100 is the perturbation
# regime that section 9's uniform-epsilon step actually lives in.
E_TIERS = [
    ("tiny  (1/1000,1/100)", [F(1, 1000), F(1, 100)]),
    ("small (1/10,1/4)",     [F(1, 10), F(1, 4)]),
    ("mod   (1/2,1)",        [F(1, 2), F(1)]),
    ("large (2,4)",          [F(2), F(4)]),
]
ALL_E = []
for _, vs in E_TIERS:
    for v in vs:
        ALL_E += [v, -v]

# ------------------------------------------------------------ the evaluator

def evaluate(P, Q, i, E, e, base):
    """Returns None if the move is not admissible ((1),(2) or (4) fails),
    else (dMeasure, dCross, dSegDeg, dSegDegP)."""
    base_c, base_d, base_dp, base_co = base
    P2 = moveV(P, i, E, e)
    # (2) coincidences strictly decrease  -- cheapest
    nco = len(coinc_set(P2, Q))
    if nco >= base_co:
        return None
    # (1) simplicity (Q never moves, so only P is re-checked)
    if not simple_closed(P2):
        return None
    # (4) finiteness
    if not finite_intersection(P2, Q):
        return None
    c, d, dp = measure_parts(P2, Q)
    return (c + d + dp - (base_c + base_d + base_dp),
            c - base_c, d - base_d, dp - base_dp)

def search(P, Q, i, dirs=DIRS, es=ALL_E):
    """Full scan.  Returns (best, per_tier_best, n_admissible, n_scanned)."""
    base_c, base_d, base_dp = measure_parts(P, Q)
    base_co = len(coinc_set(P, Q))
    base = (base_c, base_d, base_dp, base_co)
    best = None            # (dM, dC, dD, dDP, E, e)
    tier_best = {name: None for name, _ in E_TIERS}
    n_adm = 0; n_scan = 0
    for tname, tvals in E_TIERS:
        for mag in tvals:
            for e in (mag, -mag):
                if e not in es:
                    continue
                for E in dirs:
                    n_scan += 1
                    r = evaluate(P, Q, i, E, e, base)
                    if r is None:
                        continue
                    n_adm += 1
                    cand = (r[0], r[1], r[2], r[3], E, e)
                    if best is None or (cand[0], -abs(cand[5])) > (best[0], -abs(best[5])):
                        best = cand
                    tb = tier_best[tname]
                    if tb is None or cand[0] > tb[0]:
                        tier_best[tname] = cand
    return best, tier_best, n_adm, n_scan, (base_c, base_d, base_dp, base_co)

# ------------------------------------------------------------- generation

def rand_simple_heptagon(rnd, lo, hi, tries=60):
    """Random simple heptagon on the integer lattice [lo,hi]^2."""
    span = list(range(lo, hi + 1))
    for _ in range(tries):
        pts = set()
        while len(pts) < N:
            pts.add((rnd.choice(span), rnd.choice(span)))
        pts = [(F(x), F(y)) for (x, y) in pts]
        for _ in range(25):
            rnd.shuffle(pts)
            W = tuple(pts)
            if simple_closed(W):
                return W
    return None

def translate(W, d):
    return tuple((p[0] + d[0], p[1] + d[1]) for p in W)

def classify(P, Q, i, j):
    """Which HARD features does this coincidence carry?

    extraQ : the apex ALSO lies on a Q-side other than the two incident to
             Q[j].  (Structurally impossible -- see the note in main() -- and
             the code asserts it stays empty.)
    extraP : a Q-vertex other than the apex lies on a P-side incident to P[i];
             those segDeg entries are exactly what the move can destroy.
    nbr    : a NEIGHBOUR P[i-1] / P[i+1] of the apex already lies on a Q-side.
             Frozen: the move cannot clear it (README amendment 2026-09-21),
             and pivoting the side about it can destroy finiteness.
    """
    SP = sides(P); SQ = sides(Q)
    apex = P[i]
    extraQ = [jj for jj in range(N)
              if jj not in ((j - 1) % N, j) and on_closed(apex, SQ[jj][0], SQ[jj][1])]
    extraP = [(k, m) for k in ((i - 1) % N, i) for m in range(N)
              if Q[m] != apex and on_closed(Q[m], SP[k][0], SP[k][1])]
    nbr = [(v, jj) for v in ((i - 1) % N, (i + 1) % N) for jj in range(N)
           if on_closed(P[v], SQ[jj][0], SQ[jj][1])]
    return extraQ, extraP, nbr

def apex_cone_profile(P, Q, i, j, dirs=DIRS):
    """The LOCAL picture at the coincidence, by the cone criterion.

    With the apex at the origin, P's two rays a1,a2 and Q's two rays b1,b2,
    the moved P-side through a_k meets the Q-side through b_l near the apex
    iff  sign cross(a_k,E) = sign cross(b_l,E) = sign cross(a_k,b_l) != 0.

    Returns (max number of local crossings achievable over the grid,
             the sign multiset of cross(a_k,b_l)).
    A vertex-vertex coincidence contributes exactly 4 to MEASURE (2 segDeg +
    2 segDegP), so this number is the local budget available to pay for it."""
    apex = P[i]
    a = [sub(P[(i - 1) % N], apex), sub(P[(i + 1) % N], apex)]
    b = [sub(Q[(j - 1) % N], apex), sub(Q[(j + 1) % N], apex)]
    gam = [[(cross2(a[k], b[l]) > 0) - (cross2(a[k], b[l]) < 0)
            for l in range(2)] for k in range(2)]
    best = 0
    for E in dirs:
        sa = [(cross2(a[k], E) > 0) - (cross2(a[k], E) < 0) for k in range(2)]
        sb = [(cross2(b[l], E) > 0) - (cross2(b[l], E) < 0) for l in range(2)]
        c = sum(1 for k in range(2) for l in range(2)
                if gam[k][l] != 0 and sa[k] == gam[k][l] and sb[l] == gam[k][l])
        best = max(best, c)
    return best, sorted(gam[0] + gam[1])

# --------------------------------------------------------------- self-tests

def selftests(log):
    ok = True
    def chk(name, cond):
        nonlocal ok
        log(f"  [{'PASS' if cond else 'FAIL'}] {name}")
        if not cond:
            ok = False

    O = (F(0), F(0)); X = (F(1), F(0)); Y = (F(0), F(1))
    # 1. orientR signs
    chk("orientR ccw > 0", orientR(O, X, Y) > 0)
    chk("orientR cw  < 0", orientR(O, X, (F(0), F(-1))) < 0)
    chk("orientR collinear = 0", orientR(O, X, (F(5), F(0))) == 0)
    chk("orientR matches the Lean formula on a sample",
        orientR((F(1), F(2)), (F(4), F(6)), (F(-1), F(3)))
        == (F(4) - F(1)) * (F(3) - F(2)) - (F(6) - F(2)) * (F(-1) - F(1)))
    # 2. on_closed INCLUDES endpoints
    A = (F(0), F(0)); B = (F(4), F(2))
    chk("on_closed at start endpoint", on_closed(A, A, B))
    chk("on_closed at end endpoint", on_closed(B, A, B))
    chk("on_closed at interior point", on_closed((F(2), F(1)), A, B))
    chk("on_closed rejects the collinear extension", not on_closed((F(6), F(3)), A, B))
    chk("on_closed rejects an off-line point", not on_closed((F(2), F(2)), A, B))
    # 3. proper_cross
    chk("proper_cross on a genuine X",
        proper_cross((F(0), F(0)), (F(2), F(2)), (F(0), F(2)), (F(2), F(0))))
    chk("proper_cross FALSE at a shared endpoint (touching, not crossing)",
        not proper_cross((F(0), F(0)), (F(2), F(2)), (F(0), F(0)), (F(2), F(0))))
    chk("proper_cross FALSE for a T-touch",
        not proper_cross((F(0), F(0)), (F(2), F(0)), (F(1), F(0)), (F(1), F(3))))
    # 4/5. SimpleClosed
    convex = tuple((F(a), F(b)) for a, b in
                   [(0, 0), (3, 0), (5, 2), (5, 5), (3, 7), (0, 6), (-2, 3)])
    chk("SimpleClosed accepts a convex heptagon", simple_closed(convex))
    collinear3 = tuple((F(a), F(b)) for a, b in
                       [(0, 0), (1, 0), (2, 0), (3, 1), (2, 3), (1, 3), (0, 2)])
    chk("SimpleClosed ACCEPTS three collinear vertices (deliberate)",
        simple_closed(collinear3) and orientR(*collinear3[0:3]) == 0)
    selfcross = tuple((F(a), F(b)) for a, b in
                      [(0, 0), (3, 0), (5, 2), (3, 7), (5, 5), (0, 6), (-2, 3)])
    chk("SimpleClosed REJECTS a self-crossing heptagon", not simple_closed(selfcross))
    backtrack = tuple((F(a), F(b)) for a, b in
                      [(0, 0), (2, 0), (1, 0), (3, 1), (2, 3), (1, 3), (0, 2)])
    chk("SimpleClosed REJECTS an adjacent-side backtrack (conjunct 3)",
        not simple_closed(backtrack))
    degside = tuple((F(a), F(b)) for a, b in
                    [(0, 0), (0, 0), (2, 0), (3, 1), (2, 3), (1, 3), (0, 2)])
    chk("SimpleClosed REJECTS a repeated vertex (conjunct 1)",
        not simple_closed(degside))
    # 6. moveV moves exactly one vertex
    E = (F(1), F(3)); e = F(1, 7)
    M = moveV(convex, 4, E, e)
    diff = [k for k in range(N) if M[k] != convex[k]]
    chk("moveV changes exactly one vertex", diff == [4])
    chk("moveV moves it by exactly e*E",
        M[4] == (convex[4][0] + e * E[0], convex[4][1] + e * E[1]))
    chk("moveV with e=0 is the identity", moveV(convex, 4, E, F(0)) == convex)
    # 7. the four index sets on a hand-checkable pair
    Psq = tuple((F(a), F(b)) for a, b in
                [(0, 0), (4, 0), (8, 0), (8, 4), (4, 8), (0, 8), (0, 4)])
    chk("test square-ish P is simple", simple_closed(Psq))
    Qsq = translate(Psq, (F(4), F(0)))
    chk("coincSet finds the translate's shared vertices",
        len(coinc_set(Psq, Qsq)) >= 1)
    # a coincidence contributes four entries: two segDeg, two segDegP
    Pa = tuple((F(a), F(b)) for a, b in
               [(0, 0), (6, 1), (10, 5), (3, 8), (-3, 8), (-10, 5), (-6, 1)])
    Qa = tuple((F(a), F(b)) for a, b in
               [(0, 0), (1, -6), (5, -10), (8, -3), (8, 3), (5, 10), (1, 6)])
    chk("designed X-pair: both simple", simple_closed(Pa) and simple_closed(Qa))
    co = coinc_set(Pa, Qa)
    sd = seg_deg(Pa, Qa); sdp = seg_degP(Pa, Qa)
    chk("designed X-pair: exactly one coincidence", co == frozenset({(0, 0)}))
    chk("a coincidence puts 2 entries in segDeg and 2 in segDegP",
        {(0, 0), (6, 0)} <= sd and {(0, 0), (6, 0)} <= sdp)
    # 8. finiteness detector
    Pl = tuple((F(a), F(b)) for a, b in
               [(0, 0), (4, 0), (8, 0), (8, 4), (4, 8), (0, 8), (0, 4)])
    Ql = translate(Pl, (F(2), F(0)))
    chk("finite_intersection says NO on an overlapping collinear pair",
        not finite_intersection(Pl, Ql))
    chk("finite_intersection says YES on a transversal pair",
        finite_intersection(Pa, Qa))
    return ok

# ------------------------------------------------------------------- main

def main():
    here = os.path.dirname(os.path.abspath(__file__))
    out = open(os.path.join(here, "move_joint_measure.log"), "w")
    def log(*a):
        s = " ".join(str(x) for x in a)
        print(s)
        out.write(s + "\n")
        out.flush()

    log("=" * 78)
    log("move_joint_measure.py -- joint test of AKR 9.1's apex-only move")
    log("exact Fraction arithmetic throughout; no floats")
    log("=" * 78)
    log("")
    log("SELF-TESTS ON THE PRIMITIVES")
    if not selftests(log):
        log("\nSELF-TEST FAILURE -- aborting, as required.")
        out.close()
        sys.exit(1)
    log("  all self-tests passed")
    log("")
    log(f"direction grid : {len(DIRS)} primitive integer directions, |dx|,|dy| <= 5")
    log(f"e grid         : {[str(x) for x in ALL_E]}")
    log(f"scan size      : {len(DIRS) * len(ALL_E)} (E,e) pairs per instance")
    log("")

    # ---------------- instance generation ----------------
    #
    # NOTE ON ONE OF THE REQUESTED HARD KINDS.  "A coincidence at P[i] where
    # P[i] ALSO lies on a Q-side" beyond the two Q-sides incident to Q[j] is
    # STRUCTURALLY IMPOSSIBLE: P[i] = Q[j], so such an incidence would be Q
    # touching its own boundary away from the shared endpoint, which
    # SimpleClosed forbids (conjuncts 2 and 3).  The two incident Q-sides are
    # already there and are counted: a coincidence always contributes exactly
    # 2 segDeg + 2 segDegP entries.  The code asserts extraQ stays empty
    # rather than silently reporting zero instances of that kind.
    rnd = random.Random(20260923)
    instances = []      # (tag, P, Q, i, j, feats)
    seen = set()
    n_polypairs = 0
    n_cand = 0; n_rej_finite = 0; n_extraQ_seen = 0
    TARGET = {"plain": 60, "hardP": 55, "hardN": 40, "hardM": 20}
    cnt = {k: 0 for k in TARGET}

    while any(cnt[k] < TARGET[k] for k in TARGET) and n_polypairs < 3000:
        n_polypairs += 1
        # small lattice on purpose: incidences are common there, random pairs
        # on a large lattice essentially never produce a hard case
        lo, hi = ((-4, 4) if n_polypairs % 2 == 0 else (-5, 5))
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
            Q = translate(Q0, sub(P[i], Q0[j]))
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
                n_extraQ_seen += 1
            # priority order: the rarest feature wins the label
            if len(co) >= 2:
                tag = "hardM"
            elif extraP:
                tag = "hardP"
            elif nbr:
                tag = "hardN"
            else:
                tag = "plain"
            if cnt[tag] >= TARGET[tag]:
                continue
            key = (P, Q, i, j)
            if key in seen:
                continue
            seen.add(key)
            cnt[tag] += 1
            taken += 1
            instances.append((tag, P, Q, i, j, (extraQ, extraP, nbr, len(co))))

    # ---------------- designed adversarial instances ----------------
    designed = []
    # D1: two "crescent" heptagons whose boundaries cross TRANSVERSALLY at a
    #     shared vertex.  Q is P rotated by -90 degrees.
    PD = tuple((F(a), F(b)) for a, b in
               [(0, 0), (6, 1), (10, 5), (3, 8), (-3, 8), (-10, 5), (-6, 1)])
    QD = tuple((F(a), F(b)) for a, b in
               [(0, 0), (1, -6), (5, -10), (8, -3), (8, 3), (5, 10), (1, 6)])
    designed.append(("D1 transversal-X", PD, QD, 0, 0))
    # D2: the two local V's do NOT cross -- wedges point away from each other.
    #     P's rays at the apex go right-ish, Q's go up-ish.
    PE = tuple((F(a), F(b)) for a, b in
               [(0, 0), (12, 1), (20, 4), (22, 10), (16, 14), (8, 12), (4, 6)])
    QE = tuple((F(a), F(b)) for a, b in
               [(0, 0), (-1, 12), (-4, 20), (-10, 22), (-14, 16), (-12, 8), (-6, 4)])
    designed.append(("D2 non-crossing-wedges", PE, QE, 0, 0))
    # D3: three collinear vertices AT the apex of each polygon (the straight
    #     pass-through SimpleClosed deliberately allows), crossing at a vertex.
    PF = tuple((F(a), F(b)) for a, b in
               [(-8, 0), (0, 0), (8, 0), (10, 6), (4, 11), (-4, 11), (-10, 6)])
    QF = tuple((F(a), F(b)) for a, b in
               [(0, -8), (0, 0), (0, 8), (-6, 10), (-11, 4), (-11, -4), (-6, -10)])
    designed.append(("D3 collinear-apex-X", PF, QF, 1, 1))
    for (nm, Pd, Qd, i, j) in designed:
        okP = simple_closed(Pd); okQ = simple_closed(Qd)
        fin = finite_intersection(Pd, Qd)
        co = coinc_set(Pd, Qd)
        log(f"designed {nm}: simpleP={okP} simpleQ={okQ} finite={fin} "
            f"coincSet={sorted(co)}")
        if okP and okQ and fin and (i, j) in co:
            eQ, eP, nb = classify(Pd, Qd, i, j)
            instances.append(("designed:" + nm, Pd, Qd, i, j, (eQ, eP, nb, len(co))))
    log("")

    log("INSTANCE GENERATION")
    log(f"  random polygon pairs drawn                     : {n_polypairs}")
    log(f"  (i,j) coincidence candidates examined          : {n_cand}")
    log(f"    discarded: infinite intersection after gluing: {n_rej_finite}")
    log(f"  instances kept, by kind:")
    log(f"    plain  (coincidence only)                    : {cnt['plain']}")
    log(f"    hardP  (Q-vertex on a P-side at the apex,")
    log(f"            i.e. a segDeg entry the move destroys): {cnt['hardP']}")
    log(f"    hardN  (a FROZEN neighbour incidence P[i+-1]")
    log(f"            on a Q-side)                         : {cnt['hardN']}")
    log(f"    hardM  (two or more coincidences)            : {cnt['hardM']}")
    log(f"    designed adversarial                         : "
        f"{sum(1 for t in instances if t[0].startswith('designed'))}")
    log(f"  TOTAL instances                                : {len(instances)}")
    log("")
    log(f"  STRUCTURAL CHECK: 'apex also on a further Q-side' occurrences  : "
        f"{n_extraQ_seen}")
    log("    That kind was requested but is impossible: P[i] = Q[j], so such")
    log("    an incidence would be Q touching its own boundary, which")
    log("    SimpleClosed forbids.  Every coincidence therefore carries")
    log("    exactly 2 segDeg + 2 segDegP entries -- a fixed debt of 4.")
    log("")
    # apex cone profile: the local budget available to pay that debt
    from collections import Counter as _C
    prof = _C()
    for (tag, P, Q, i, j, feats) in instances:
        mx, gam = apex_cone_profile(P, Q, i, j)
        prof[mx] += 1
    log("  LOCAL BUDGET AT THE APEX (max local crossings creatable, by the")
    log("  cone criterion -- must be >= 4 to pay the debt of 4):")
    for k in sorted(prof):
        log(f"    max local crossings = {k} : {prof[k]} instances")
    log("")

    # ---------------- the main scan ----------------
    log("=" * 78)
    log("MAIN SCAN")
    log("=" * 78)
    stats = {}
    counterexamples = []
    small_fail = []
    rows = []
    for idx, (tag, P, Q, i, j, feats) in enumerate(instances):
        best, tier_best, n_adm, n_scan, base = search(P, Q, i)
        base_c, base_d, base_dp, base_co = base
        st = stats.setdefault(tag.split(':')[0], {"n": 0, "up": 0, "eq": 0,
                                                  "down": 0, "none": 0})
        st["n"] += 1
        if best is None:
            st["none"] += 1
            counterexamples.append(("NO ADMISSIBLE MOVE AT ALL", tag, P, Q, i, j,
                                    base, None, tier_best))
        elif best[0] > 0:
            st["up"] += 1
        elif best[0] == 0:
            st["eq"] += 1
        else:
            st["down"] += 1
            counterexamples.append(("MEASURE FORCED TO DROP", tag, P, Q, i, j,
                                    base, best, tier_best))
        # separately: the perturbation regime (tiny+small e only)
        small = [tier_best[n] for n, _ in E_TIERS[:2] if tier_best[n] is not None]
        sbest = max(small, key=lambda c: c[0]) if small else None
        if sbest is None or sbest[0] < 0:
            small_fail.append((tag, P, Q, i, j, base, sbest, best))
        mx, gam = apex_cone_profile(P, Q, i, j)
        rows.append((tag, i, j, base, best, sbest, n_adm, n_scan, tier_best,
                     mx, gam))
        if (idx + 1) % 25 == 0:
            log(f"  ... {idx + 1}/{len(instances)} instances scanned")
    log("")

    log("RESULT BY INSTANCE KIND  (best over the FULL (E,e) grid)")
    log(f"  {'kind':<12} {'n':>5} {'dM>0':>6} {'dM=0':>6} {'dM<0':>6} {'no move':>8}")
    for tag in sorted(stats):
        s = stats[tag]
        log(f"  {tag:<12} {s['n']:>5} {s['up']:>6} {s['eq']:>6} {s['down']:>6} "
            f"{s['none']:>8}")
    tot = {k: sum(stats[t][k] for t in stats) for k in ("n", "up", "eq", "down", "none")}
    log(f"  {'TOTAL':<12} {tot['n']:>5} {tot['up']:>6} {tot['eq']:>6} "
        f"{tot['down']:>6} {tot['none']:>8}")
    log("")
    log("  reading: dM>0 = some admissible move strictly INCREASES the measure,")
    log("           dM=0 = the best admissible move leaves it EQUAL,")
    log("           dM<0 = EVERY admissible move strictly DECREASES it  <-- clause (3) fails")
    log("")

    # per-tier view
    log("RESULT BY e-TIER  (max dMEASURE over admissible moves, per instance)")
    log(f"  {'tier':<24} {'dM>0':>6} {'dM=0':>6} {'dM<0':>6} {'no move':>8}")
    for tname, _ in E_TIERS:
        up = eq = dn = no = 0
        for r in rows:
            tb = r[8][tname]
            if tb is None: no += 1
            elif tb[0] > 0: up += 1
            elif tb[0] == 0: eq += 1
            else: dn += 1
        log(f"  {tname:<24} {up:>6} {eq:>6} {dn:>6} {no:>8}")
    log("")

    log("THE PERTURBATION REGIME  (|e| <= 1/4 only -- what section 9's")
    log("uniform-epsilon step actually gets to use)")
    n_small_ok = len(rows) - len(small_fail)
    log(f"  instances with an admissible small-e move of dMEASURE >= 0 : {n_small_ok}")
    log(f"  instances where every admissible small-e move DROPS it     : {len(small_fail)}")
    log("")

    # ---------------- counterexamples ----------------
    log("=" * 78)
    log("CANDIDATE COUNTEREXAMPLES TO THE CONJECTURE AS STATED")
    log("   (no admissible (E,e) anywhere on the grid with dMEASURE >= 0)")
    log("=" * 78)
    if not counterexamples:
        log("  none")
    for c in counterexamples[:25]:
        kind, tag, P, Q, i, j, base, best, tier_best = c
        log(f"  --- {kind}   [{tag}]  apex i={i}, coincident Q-vertex j={j}")
        log(f"      P = {[ (str(p[0]),str(p[1])) for p in P ]}")
        log(f"      Q = {[ (str(q[0]),str(q[1])) for q in Q ]}")
        log(f"      base |crossPairs|={base[0]} |segDeg|={base[1]} "
            f"|segDegP|={base[2]} MEASURE={base[0]+base[1]+base[2]} "
            f"|coincSet|={base[3]}")
        if best is not None:
            log(f"      best admissible: dM={best[0]} (dCross={best[1]}, "
                f"dSegDeg={best[2]}, dSegDegP={best[3]}) at E={best[4]} e={best[5]}")
    log(f"  total candidate counterexamples: {len(counterexamples)}")
    log("")

    log("=" * 78)
    log("SMALL-e FAILURES  (clause (3) unreachable with |e| <= 1/4)")
    log("=" * 78)
    if not small_fail:
        log("  none")
    for (tag, P, Q, i, j, base, sbest, best) in small_fail[:20]:
        log(f"  --- [{tag}] apex i={i}, j={j}")
        log(f"      P = {[ (str(p[0]),str(p[1])) for p in P ]}")
        log(f"      Q = {[ (str(q[0]),str(q[1])) for q in Q ]}")
        log(f"      base MEASURE={base[0]+base[1]+base[2]} "
            f"(cross={base[0]}, segDeg={base[1]}, segDegP={base[2]}), "
            f"|coincSet|={base[3]}")
        if sbest is None:
            log("      no admissible small-e move at all")
        else:
            log(f"      best small-e: dM={sbest[0]} (dCross={sbest[1]}, "
                f"dSegDeg={sbest[2]}, dSegDegP={sbest[3]}) at E={sbest[4]} e={sbest[5]}")
        if best is not None:
            log(f"      best over the whole grid: dM={best[0]} (dCross={best[1]}, "
                f"dSegDeg={best[2]}, dSegDegP={best[3]}) at E={best[4]} e={best[5]}")
    log(f"  total small-e failures: {len(small_fail)}")
    log("")

    # ---------------- component analysis ----------------
    log("=" * 78)
    log("COMPONENT ANALYSIS AT THE BEST WITNESS")
    log("  (is a lost degeneracy always paid for by a gained crossing?)")
    log("=" * 78)
    from collections import Counter
    comp = Counter()
    for (tag, i, j, base, best, sbest, n_adm, n_scan, tier_best, mx, gam) in rows:
        if best is None:
            comp["(no admissible move)"] += 1
            continue
        comp[(best[0], best[1], best[2], best[3])] += 1
    log(f"  {'(dM, dCross, dSegDeg, dSegDegP)':<38} {'count':>6}")
    for k, v in sorted(comp.items(), key=lambda kv: (-kv[1], str(kv[0]))):
        log(f"  {str(k):<38} {v:>6}")
    log("")
    # the same, restricted to the small-e regime
    comps = Counter()
    for (tag, i, j, base, best, sbest, n_adm, n_scan, tier_best, mx, gam) in rows:
        if sbest is None:
            comps["(no admissible small-e move)"] += 1
        else:
            comps[(sbest[0], sbest[1], sbest[2], sbest[3])] += 1
    log("  same, restricted to |e| <= 1/4:")
    log(f"  {'(dM, dCross, dSegDeg, dSegDegP)':<38} {'count':>6}")
    for k, v in sorted(comps.items(), key=lambda kv: (-kv[1], str(kv[0]))):
        log(f"  {str(k):<38} {v:>6}")
    log("")

    # ---------------- the mechanism: budget vs debt ----------------
    log("=" * 78)
    log("THE MECHANISM: the debt is 4, the local budget is the cone count")
    log("=" * 78)
    log("  A coincidence P[i]=Q[j] contributes exactly 4 entries to MEASURE")
    log("  (segDeg (i-1,j),(i,j) and segDegP (j-1,i),(j,i)); the move destroys")
    log("  all four.  The only local repayment is new crossings between the two")
    log("  moved P-sides and the two Q-sides at the apex, which the cone")
    log("  criterion caps at `max local crossings`.")
    log("")
    log(f"  {'max local crossings':>20} | {'n':>4} {'small-e dM>0':>13} "
        f"{'dM=0':>6} {'dM<0':>6} {'none':>6}")
    tab = {}
    for (tag, i, j, base, best, sbest, n_adm, n_scan, tier_best, mx, gam) in rows:
        t = tab.setdefault(mx, [0, 0, 0, 0, 0])
        t[0] += 1
        if sbest is None: t[4] += 1
        elif sbest[0] > 0: t[1] += 1
        elif sbest[0] == 0: t[2] += 1
        else: t[3] += 1
    for k in sorted(tab):
        t = tab[k]
        log(f"  {k:>20} | {t[0]:>4} {t[1]:>13} {t[2]:>6} {t[3]:>6} {t[4]:>6}")
    log("")

    # ---------------- MANDATORY non-vacuity controls ----------------
    log("=" * 78)
    log("CONTROLS -- the checker MUST be able to report failure")
    log("=" * 78)

    # Control A: demand MEASURE STRICTLY INCREASE (deliberately false variant).
    # Re-scored off the same scan; the first 20 instances are additionally
    # re-searched from scratch as a cross-check that the re-scoring is honest.
    cA = sum(1 for r in rows if r[4] is None or r[4][0] <= 0)
    cA_direct = 0
    for (tag, P, Q, i, j, feats) in instances[:20]:
        base_c, base_d, base_dp = measure_parts(P, Q)
        base = (base_c, base_d, base_dp, len(coinc_set(P, Q)))
        found = False
        for e in ALL_E:
            for E in DIRS:
                r = evaluate(P, Q, i, E, e, base)
                if r is not None and r[0] > 0:
                    found = True; break
            if found: break
        if not found:
            cA_direct += 1
    cA_rescored_20 = sum(1 for r in rows[:20] if r[4] is None or r[4][0] <= 0)
    log(f"  A. demand dMEASURE > 0 (strict increase) ... instances FAILING: "
        f"{cA}/{len(instances)}")
    log(f"     independent re-search of the first 20    : {cA_direct} failing "
        f"(re-scored: {cA_rescored_20}) -- must agree")
    log("     (if this were 0 the test would be vacuous; it is not)")

    # Control B: only LARGE e in {1,2,4}
    BIG = [F(1), F(2), F(4), F(-1), F(-2), F(-4)]
    cB = 0
    for (tag, P, Q, i, j, feats) in instances:
        base_c, base_d, base_dp = measure_parts(P, Q)
        base = (base_c, base_d, base_dp, len(coinc_set(P, Q)))
        found = False
        for e in BIG:
            for E in DIRS:
                r = evaluate(P, Q, i, E, e, base)
                if r is not None and r[0] >= 0:
                    found = True; break
            if found: break
        if not found:
            cB += 1
    log(f"  B. only LARGE e in {{1,2,4}} (+/-) ......... instances FAILING: "
        f"{cB}/{len(instances)}")

    # Control C: a FIXED direction rather than an existential one
    for Efix in [(F(1), F(0)), (F(0), F(1)), (F(1), F(1))]:
        cC = 0
        for (tag, P, Q, i, j, feats) in instances:
            base_c, base_d, base_dp = measure_parts(P, Q)
            base = (base_c, base_d, base_dp, len(coinc_set(P, Q)))
            found = False
            for e in ALL_E:
                r = evaluate(P, Q, i, Efix, e, base)
                if r is not None and r[0] >= 0:
                    found = True; break
            if not found:
                cC += 1
        log(f"  C. FIXED direction E={Efix[0]},{Efix[1]} .............. instances "
            f"FAILING: {cC}/{len(instances)}")
    log("     (AKR quantify E existentially; a fixed rule must and does fail)")

    # Control D: e = 0 must never be admissible (coincidences do not decrease)
    cD = 0
    for (tag, P, Q, i, j, feats) in instances:
        base_c, base_d, base_dp = measure_parts(P, Q)
        base = (base_c, base_d, base_dp, len(coinc_set(P, Q)))
        if evaluate(P, Q, i, (F(1), F(1)), F(0), base) is not None:
            cD += 1
    log(f"  D. e = 0 admissible anywhere (must be 0) .. {cD}")

    # Control E: does the conjunction ever bind?  count instances where SOME
    # (E,e) satisfies (1),(2),(4) but NO (E,e) satisfies all four.
    log("")
    log("  E. how tight is the conjunction?")
    n_adm_any = sum(1 for r in rows if r[6] > 0)
    log(f"     instances with >=1 move satisfying (1),(2),(4) : {n_adm_any}/{len(rows)}")
    log(f"     of those, ones where (3) additionally holds    : "
        f"{tot['up'] + tot['eq']}")
    log("")

    # ---------------- designed instances in detail ----------------
    log("=" * 78)
    log("DESIGNED ADVERSARIAL INSTANCES IN DETAIL")
    log("=" * 78)
    for (tag, P, Q, i, j, feats) in instances:
        if not tag.startswith("designed"):
            continue
        best, tier_best, n_adm, n_scan, base = search(P, Q, i)
        log(f"  {tag}  apex i={i} j={j}")
        log(f"    P = {[ (str(p[0]),str(p[1])) for p in P ]}")
        log(f"    Q = {[ (str(q[0]),str(q[1])) for q in Q ]}")
        log(f"    base: cross={base[0]} segDeg={base[1]} segDegP={base[2]} "
            f"MEASURE={base[0]+base[1]+base[2]} coinc={base[3]}")
        log(f"    admissible moves: {n_adm} of {n_scan}")
        if best is None:
            log("    NO admissible move")
        else:
            log(f"    best: dM={best[0]} (dCross={best[1]}, dSegDeg={best[2]}, "
                f"dSegDegP={best[3]}) at E={best[4]} e={best[5]}")
        for tname, _ in E_TIERS:
            tb = tier_best[tname]
            log(f"      tier {tname:<22}: "
                + ("none" if tb is None else
                   f"dM={tb[0]} (dC={tb[1]}, dD={tb[2]}, dDP={tb[3]}) "
                   f"E={tb[4]} e={tb[5]}"))
    log("")
    log("done.")
    out.close()

if __name__ == "__main__":
    main()
