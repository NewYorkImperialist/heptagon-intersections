#!/usr/bin/env python3
"""
Numerical validation of `exists_joint_step_free` (lean/Pair9Shift.lean:3768)
in EXACT rational arithmetic (fractions.Fraction).  No floating point anywhere.

Definitions transcribed from the Lean sources:

  orientR            lean/RealConfig.lean:54
  ProperCrossR       lean/RealUpperBound.lean:62
  crossPairsOf       lean/RealPerturb.lean:151
  segDeg             lean/Pair9Shift.lean:1876   {(k,j) : Q[j] in sideP9 k}
  segDegP            lean/Pair9Shift.lean:1920   {(j,v) : P[v] in sideQ9 j}
  SimpleClosed       lean/AKR9.lean:71
  points9            lean/AKR9.lean:119
  tilt               lean/RotationLaw.lean:377
  mov                lean/RotationLaw.lean:226
  shiftV             lean/RotationLaw.lean:756

The theorem:  for every Pair9 R with (points9 R) finite and no shared vertex,
and every edge i, there exist t and delta != 0 such that shiftV R.V i t delta
is again a Pair9 (both heptagons simple) and
    |crossPairs| + |segDeg| + |segDegP|
does not decrease.
"""

import functools
import random
import sys
from fractions import Fraction as F

N = 7

# ---------------------------------------------------------------- primitives

def sub(a, b):
    return (a[0] - b[0], a[1] - b[1])

def dot(a, b):
    return a[0] * b[0] + a[1] * b[1]

def cross(a, b):
    return a[0] * b[1] - a[1] * b[0]

def orientR(a, b, c):
    """lean/RealConfig.lean:54"""
    return (b[0] - a[0]) * (c[1] - a[1]) - (b[1] - a[1]) * (c[0] - a[0])

def on_segment(p, a, b):
    """p in segment R a b, closed, exact."""
    if orientR(a, b, p) != 0:
        return False
    lox, hix = (a[0], b[0]) if a[0] <= b[0] else (b[0], a[0])
    loy, hiy = (a[1], b[1]) if a[1] <= b[1] else (b[1], a[1])
    return lox <= p[0] <= hix and loy <= p[1] <= hiy

def seg_inter(a, b, c, d):
    """Exact intersection of closed segments [a,b], [c,d].
    Returns ('none',) | ('point', p) | ('segment', p, q)."""
    r = sub(b, a)
    s = sub(d, c)
    den = cross(r, s)
    qp = sub(c, a)
    if den != 0:
        t = F(cross(qp, s), 1) / den
        u = F(cross(qp, r), 1) / den
        if 0 <= t <= 1 and 0 <= u <= 1:
            return ('point', (a[0] + t * r[0], a[1] + t * r[1]))
        return ('none',)
    if cross(qp, r) != 0:
        return ('none',)
    rr = dot(r, r)
    if rr == 0:
        if on_segment(a, c, d):
            return ('point', a)
        return ('none',)
    t0 = dot(qp, r) / rr
    t1 = dot(sub(d, a), r) / rr
    lo, hi = (t0, t1) if t0 <= t1 else (t1, t0)
    if lo < 0:
        lo = F(0)
    if hi > 1:
        hi = F(1)
    if lo > hi:
        return ('none',)
    p0 = (a[0] + lo * r[0], a[1] + lo * r[1])
    if lo == hi:
        return ('point', p0)
    p1 = (a[0] + hi * r[0], a[1] + hi * r[1])
    return ('segment', p0, p1)

def adjacent(i, j):
    """LowerBound.Adjacent : i = j or j = i+1 or i = j+1, in Fin 7."""
    return i == j or j == (i + 1) % N or i == (j + 1) % N

def simple_closed(W):
    """AKR9.SimpleClosed, verbatim, exact."""
    for i in range(N):
        if W[i] == W[(i + 1) % N]:
            return False
    for i in range(N):
        for j in range(N):
            if adjacent(i, j):
                continue
            if seg_inter(W[i], W[(i + 1) % N], W[j], W[(j + 1) % N])[0] != 'none':
                return False
    for i in range(N):
        res = seg_inter(W[i], W[(i + 1) % N], W[(i + 1) % N], W[(i + 2) % N])
        if res[0] != 'point' or res[1] != W[(i + 1) % N]:
            return False
    return True

# ---------------------------------------------------------------- the measure

def cross_pairs(P, Q):
    """crossPairsOf: (k,j) with P-side k and Q-side j properly crossing."""
    out = set()
    for k in range(N):
        a, b = P[k], P[(k + 1) % N]
        for j in range(N):
            c, d = Q[j], Q[(j + 1) % N]
            if orientR(a, b, c) * orientR(a, b, d) < 0 and \
               orientR(c, d, a) * orientR(c, d, b) < 0:
                out.add((k, j))
    return out

def seg_deg(P, Q):
    """segDeg: (k,j) with Q[j] on closed P-side k."""
    return {(k, j) for k in range(N) for j in range(N)
            if on_segment(Q[j], P[k], P[(k + 1) % N])}

def seg_deg_p(P, Q):
    """segDegP: (j,v) with P[v] on closed Q-side j."""
    return {(j, v) for j in range(N) for v in range(N)
            if on_segment(P[v], Q[j], Q[(j + 1) % N])}

def measure(P, Q):
    return len(cross_pairs(P, Q)) + len(seg_deg(P, Q)) + len(seg_deg_p(P, Q))

def measure_parts(P, Q):
    return len(cross_pairs(P, Q)), len(seg_deg(P, Q)), len(seg_deg_p(P, Q))

# ------------------------------------------------------------- hypotheses

def finitely_many_points(P, Q):
    """(points9 R).Finite  <=>  no P-side overlaps a Q-side in a subsegment."""
    for k in range(N):
        for j in range(N):
            if seg_inter(P[k], P[(k + 1) % N], Q[j], Q[(j + 1) % N])[0] == 'segment':
                return False
    return True

def no_shared_vertex(P, Q):
    """hcoinc : P[v] != Q[j] for all v, j."""
    return all(P[v] != Q[j] for v in range(N) for j in range(N))

def is_pair9(P, Q):
    return simple_closed(P) and simple_closed(Q)

def hypotheses_ok(P, Q):
    return is_pair9(P, Q) and finitely_many_points(P, Q) and no_shared_vertex(P, Q)

# ------------------------------------------------------------- the shift

def shiftP(P, i, t, delta):
    """shiftV restricted to P (Q never moves): move P[i] and P[i+1] by
    delta * tilt(P[i+1]-P[i], t)."""
    u = sub(P[(i + 1) % N], P[i])
    w = (-u[1] + t * u[0], u[0] + t * u[1])
    out = list(P)
    for k in (i, (i + 1) % N):
        out[k] = (P[k][0] + delta * w[0], P[k][1] + delta * w[1])
    return out

# ------------------------------------------------------------- random gen

def rand_simple_heptagon(rng, lo, hi):
    """Random integer-coordinate simple heptagon (angular sort about centroid,
    then verified against SimpleClosed exactly)."""
    for _ in range(400):
        pts = set()
        while len(pts) < N:
            pts.add((rng.randint(lo, hi), rng.randint(lo, hi)))
        pts = [(F(x), F(y)) for (x, y) in pts]
        cx = sum(p[0] for p in pts) / N
        cy = sum(p[1] for p in pts) / N
        c = (cx, cy)

        def half(p):
            d = sub(p, c)
            return 0 if (d[1] > 0 or (d[1] == 0 and d[0] > 0)) else 1

        def cmp(p, q):
            hp, hq = half(p), half(q)
            if hp != hq:
                return -1 if hp < hq else 1
            cr = cross(sub(p, c), sub(q, c))
            if cr > 0:
                return -1
            if cr < 0:
                return 1
            dp = dot(sub(p, c), sub(p, c))
            dq = dot(sub(q, c), sub(q, c))
            return -1 if dp < dq else (1 if dp > dq else 0)

        W = sorted(pts, key=functools.cmp_to_key(cmp))
        if rng.random() < 0.5:
            W = W[::-1]
        r = rng.randrange(N)
        W = W[r:] + W[:r]
        if simple_closed(W):
            return W
    return None

def rand_instance(rng, lo=0, hi=36):
    """A random pair satisfying (a) and (b), with at least one crossing."""
    for _ in range(300):
        P = rand_simple_heptagon(rng, lo, hi)
        if P is None:
            continue
        Q = rand_simple_heptagon(rng, lo, hi)
        if Q is None:
            continue
        if not (finitely_many_points(P, Q) and no_shared_vertex(P, Q)):
            continue
        if len(cross_pairs(P, Q)) == 0:
            continue
        return P, Q
    return None

# --------------------------------------------- degenerate-instance builder

def snap_candidates(movers, sides):
    """For each vertex of `movers`, the exact foot on each side of `sides`
    with parameter strictly inside (0,1), sorted by exact squared distance."""
    out = []
    for v in range(N):
        p = movers[v]
        for j in range(N):
            a, b = sides[j], sides[(j + 1) % N]
            u = sub(b, a)
            uu = dot(u, u)
            if uu == 0:
                continue
            s = dot(sub(p, a), u) / uu
            if not (0 < s < 1):
                continue
            foot = (a[0] + s * u[0], a[1] + s * u[1])
            d = sub(p, foot)
            out.append((dot(d, d), v, j, foot))
    out.sort(key=lambda z: z[0])
    return out

def build_degenerate(rng, nP=1, nQ=2, lo=0, hi=36):
    """Construct a pair with genuine degeneracies by snapping vertices exactly
    onto the other polygon's sides at rational interior parameters.
    Every intermediate result is re-verified for simplicity, (a) and (b)."""
    base = rand_instance(rng, lo, hi)
    if base is None:
        return None
    P, Q = list(base[0]), list(base[1])

    # 1. move P-vertices onto Q-sides (creates segDegP entries)
    for _ in range(nP):
        cands = [c for c in snap_candidates(P, Q) if c[0] != 0]
        placed = False
        for d2, v, j, foot in cands[:15]:
            P2 = list(P)
            P2[v] = foot
            if simple_closed(P2) and finitely_many_points(P2, Q) \
               and no_shared_vertex(P2, Q):
                if (j, v) in seg_deg_p(P2, Q):
                    P = P2
                    placed = True
                    break
        if not placed:
            break

    # 2. move Q-vertices onto the now-final P-sides (creates segDeg entries)
    for _ in range(nQ):
        cands = [c for c in snap_candidates(Q, P) if c[0] != 0]
        placed = False
        for d2, v, k, foot in cands[:15]:
            Q2 = list(Q)
            Q2[v] = foot
            if simple_closed(Q2) and finitely_many_points(P, Q2) \
               and no_shared_vertex(P, Q2):
                if (k, v) in seg_deg(P, Q2):
                    Q = Q2
                    placed = True
                    break
        if not placed:
            break

    if not hypotheses_ok(P, Q):
        return None
    if len(seg_deg(P, Q)) + len(seg_deg_p(P, Q)) == 0:
        return None
    return P, Q


def build_loaded(rng, lo=0, hi=36):
    """ADVERSARIAL family: load ONE P-edge i with as many degeneracies as the
    configuration will take -- several Q-vertices snapped exactly onto P-side i,
    and P[i] / P[i+1] snapped exactly onto Q-sides.  Shifting that edge destroys
    all of them at once, which is exactly what the theorem has to survive.
    Returns (P, Q, i, load) or None.  Everything is re-verified exactly."""
    base = rand_instance(rng, lo, hi)
    if base is None:
        return None
    P, Q = list(base[0]), list(base[1])

    # choose the P-edge with the most Q-vertices projecting strictly inside it
    best = None
    for i in range(N):
        a, b = P[i], P[(i + 1) % N]
        u = sub(b, a)
        uu = dot(u, u)
        cnt = []
        for v in range(N):
            s = dot(sub(Q[v], a), u) / uu
            if 0 < s < 1:
                foot = (a[0] + s * u[0], a[1] + s * u[1])
                d = sub(Q[v], foot)
                cnt.append((dot(d, d), v, foot))
        if best is None or len(cnt) > len(best[1]):
            best = (i, cnt)
    i = best[0]

    # P moves first: put P[i] and P[i+1] on Q-sides (segDegP at the shifted edge)
    for v in (i, (i + 1) % N):
        cands = [c for c in snap_candidates(P, Q) if c[0] != 0 and c[1] == v]
        for d2, vv, j, foot in cands[:10]:
            P2 = list(P)
            P2[vv] = foot
            if simple_closed(P2) and finitely_many_points(P2, Q) \
               and no_shared_vertex(P2, Q) and (j, vv) in seg_deg_p(P2, Q):
                P = P2
                break

    # now P is final: put Q-vertices on P-side i (segDeg at the shifted edge)
    a, b = P[i], P[(i + 1) % N]
    u = sub(b, a)
    uu = dot(u, u)
    order = []
    for v in range(N):
        s = dot(sub(Q[v], a), u) / uu
        if 0 < s < 1:
            foot = (a[0] + s * u[0], a[1] + s * u[1])
            d = sub(Q[v], foot)
            order.append((dot(d, d), v, foot))
    order.sort(key=lambda z: z[0])
    for d2, v, foot in order[:5]:
        if d2 == 0:
            continue
        Q2 = list(Q)
        Q2[v] = foot
        if simple_closed(Q2) and finitely_many_points(P, Q2) \
           and no_shared_vertex(P, Q2) and (i, v) in seg_deg(P, Q2):
            Q = Q2

    if not hypotheses_ok(P, Q):
        return None
    sd = seg_deg(P, Q)
    sdp = seg_deg_p(P, Q)
    load = sum(1 for (k, j) in sd if k == i) + \
           sum(1 for (j, v) in sdp if v in (i, (i + 1) % N))
    if load == 0:
        return None
    return P, Q, i, load

# ------------------------------------------------------------- the search

T_GRID = [F(0), F(1), F(-1), F(1, 2), F(-1, 2), F(3), F(-3)]
SMALL_DELTAS = []
for k in (1, 3, 5, 7, 10):
    SMALL_DELTAS.append(F(1, 2 ** k))
    SMALL_DELTAS.append(F(-1, 2 ** k))
LARGE_DELTAS = [F(4), F(-4), F(8), F(-8), F(16), F(-16)]

T_GRID_EXT = [F(0), F(1), F(-1), F(1, 2), F(-1, 2), F(2), F(-2), F(3), F(-3),
              F(1, 3), F(-1, 3), F(1, 4), F(-1, 4), F(5), F(-5), F(7), F(-7),
              F(2, 3), F(-2, 3), F(3, 2), F(-3, 2), F(10), F(-10),
              F(1, 8), F(-1, 8)]
DELTAS_EXT = []
for k in range(1, 17):
    DELTAS_EXT.append(F(1, 2 ** k))
    DELTAS_EXT.append(F(-1, 2 ** k))

def scan(P, Q, i, m0, tgrid, deltas):
    """Return (best_gain_over_simple, n_simple) where best_gain is None if no
    (t,delta) on the grid yields a simple shifted P."""
    best = None
    nsimple = 0
    for t in tgrid:
        for dl in deltas:
            P2 = shiftP(P, i, t, dl)
            if P2 == P:
                continue          # tilt(u,t) is never 0 for u != 0, but be safe
            if not simple_closed(P2):
                continue
            nsimple += 1
            g = measure(P2, Q) - m0
            if best is None or g > best:
                best = g
    return best, nsimple

def witness(P, Q, i, m0, tgrid, deltas, need):
    """First (t,delta) with simple shift and gain >= need, else None."""
    for t in tgrid:
        for dl in deltas:
            P2 = shiftP(P, i, t, dl)
            if not simple_closed(P2):
                continue
            if measure(P2, Q) - m0 >= need:
                return (t, dl, measure(P2, Q) - m0)
    return None


# ------------------------------------------------------------- self-tests

def self_tests():
    """Sanity checks on the primitives, printed so the run is auditable."""
    ok = True
    def chk(name, cond):
        nonlocal ok
        print(f"  [{'ok ' if cond else 'FAIL'}] {name}")
        if not cond:
            ok = False
    P = lambda *xs: tuple(F(x) for x in xs)
    chk("orientR ccw > 0", orientR(P(0,0), P(1,0), P(0,1)) > 0)
    chk("orientR cw  < 0", orientR(P(0,0), P(0,1), P(1,0)) < 0)
    chk("orientR collinear = 0", orientR(P(0,0), P(2,2), P(5,5)) == 0)
    chk("on_segment midpoint", on_segment(P(1,1), P(0,0), P(2,2)))
    chk("on_segment endpoint", on_segment(P(0,0), P(0,0), P(2,2)))
    chk("on_segment outside", not on_segment(P(3,3), P(0,0), P(2,2)))
    chk("on_segment off-line", not on_segment(P(1,2), P(0,0), P(2,2)))
    chk("seg_inter proper", seg_inter(P(0,0),P(2,2),P(0,2),P(2,0))[0] == 'point')
    chk("seg_inter disjoint", seg_inter(P(0,0),P(1,1),P(5,5),P(6,6))[0] == 'none')
    chk("seg_inter overlap", seg_inter(P(0,0),P(3,3),P(1,1),P(5,5))[0] == 'segment')
    chk("seg_inter touch", seg_inter(P(0,0),P(2,2),P(2,2),P(4,0)) == ('point', P(2,2)))

    # a convex heptagon is simple
    conv = [P(0,0),P(4,0),P(7,3),P(7,7),P(4,10),P(0,7),P(-2,3)]
    chk("convex heptagon simple", simple_closed(conv))
    # a heptagon with three collinear vertices is still SimpleClosed
    col = [P(0,0),P(2,0),P(4,0),P(7,3),P(7,8),P(3,10),P(-2,4)]
    chk("collinear-vertex heptagon simple", simple_closed(col))
    # a self-crossing heptagon is not
    bad = list(conv)
    bad[1], bad[4] = bad[4], bad[1]
    chk("self-crossing heptagon rejected", not simple_closed(bad))
    # a repeated vertex is not
    rep = list(conv); rep[2] = rep[1]
    chk("degenerate side rejected", not simple_closed(rep))

    # measure on a hand-built configuration:
    # P = big square-ish heptagon, Q = triangle-ish heptagon crossing two sides
    Pb = [P(0,0),P(10,0),P(10,4),P(10,10),P(5,10),P(0,10),P(0,5)]
    # Q with a vertex exactly ON P-side 0 (the segment (0,0)-(10,0)) at x=3
    Qb = [P(3,0),P(6,-3),P(9,-3),P(12,-1),P(11,2),P(8,3),P(5,2)]
    chk("Pb simple", simple_closed(Pb))
    chk("Qb simple", simple_closed(Qb))
    sd = seg_deg(Pb, Qb)
    chk("segDeg detects Q[0] on P-side 0", (0,0) in sd)
    # P[1] = (10,0)?  check segDegP detection with a constructed case
    Qc = [P(3,-4),P(6,-4),P(10,0),P(12,4),P(8,6),P(4,6),P(1,2)]
    chk("Qc simple", simple_closed(Qc))
    sdp = seg_deg_p(Pb, Qc)
    chk("shared vertex detected by no_shared_vertex",
        not no_shared_vertex(Pb, Qc))
    # finiteness: overlapping collinear sides must be caught
    Pd = [P(0,0),P(10,0),P(10,10),P(5,12),P(0,10),P(-3,7),P(-3,3)]
    Qd = [P(2,0),P(8,0),P(8,-2),P(10,-4),P(6,-8),P(2,-8),P(0,-4)]
    chk("Pd simple", simple_closed(Pd))
    chk("Qd simple", simple_closed(Qd))
    chk("finiteness rejects collinear overlap", not finitely_many_points(Pd, Qd))
    # shiftP moves exactly two vertices
    sh = shiftP(Pb, 2, F(1), F(1,4))
    chk("shiftP moves P[2]", sh[2] != Pb[2])
    chk("shiftP moves P[3]", sh[3] != Pb[3])
    chk("shiftP fixes the rest",
        all(sh[k] == Pb[k] for k in (0,1,4,5,6)))
    # tilt at t=0 is the normal
    u = sub(Pb[3], Pb[2])
    sh0 = shiftP(Pb, 2, F(0), F(1))
    chk("tilt(u,0) = (-u.y, u.x)",
        sub(sh0[2], Pb[2]) == (-u[1], u[0]))
    return ok

# ------------------------------------------------------------------- driver

def fmt_pt(p):
    def f(x):
        return str(x.numerator) if x.denominator == 1 else f"{x.numerator}/{x.denominator}"
    return f"({f(p[0])}, {f(p[1])})"

def fmt_poly(W):
    return "[" + ", ".join(fmt_pt(p) for p in W) + "]"

def main():
    seed = int(sys.argv[1]) if len(sys.argv) > 1 else 20260923
    n_plain = int(sys.argv[2]) if len(sys.argv) > 2 else 250
    n_deg_target = int(sys.argv[3]) if len(sys.argv) > 3 else 250
    n_load_target = int(sys.argv[4]) if len(sys.argv) > 4 else 250
    rng = random.Random(seed)

    print("=" * 78)
    print("exists_joint_step_free -- exact-rational numerical validation")
    print("=" * 78)
    print(f"seed = {seed}")
    print()
    print("self-tests on the exact primitives:")
    if not self_tests():
        print("SELF-TESTS FAILED -- aborting")
        sys.exit(1)
    print()
    print(f"t-grid (main)     : {[str(t) for t in T_GRID]}")
    print(f"small deltas      : {[str(d) for d in SMALL_DELTAS]}")
    print(f"large deltas (ctl): {[str(d) for d in LARGE_DELTAS]}")
    print(f"t-grid (extended) : {len(T_GRID_EXT)} values, "
          f"deltas (extended): {len(DELTAS_EXT)} values")
    print()

    instances = []
    print(f"generating {n_plain} generic (non-degenerate) instances ...")
    tries = 0
    while len([x for x in instances if x[0] == 'generic']) < n_plain and tries < n_plain * 20:
        tries += 1
        r = rand_instance(rng)
        if r is None:
            continue
        P, Q = r
        if len(seg_deg(P, Q)) + len(seg_deg_p(P, Q)) != 0:
            continue          # a random one that happened to be degenerate
        instances.append(('generic', P, Q))
    print(f"  got {len([x for x in instances if x[0]=='generic'])}")

    print(f"generating {n_deg_target} constructed degenerate instances ...")
    tries = 0
    ndeg = 0
    while ndeg < n_deg_target and tries < n_deg_target * 40:
        tries += 1
        nP = rng.choice([0, 1, 1, 2, 2, 3])
        nQ = rng.choice([1, 1, 2, 2, 3, 3, 4])
        r = build_degenerate(rng, nP=nP, nQ=nQ)
        if r is None:
            continue
        P, Q = r
        instances.append(('degen', P, Q))
        ndeg += 1
    print(f"  got {ndeg} (from {tries} attempts)")

    print(f"generating {n_load_target} ADVERSARIAL loaded-edge instances ...")
    tries = 0
    nload = 0
    load_hist = {}
    while nload < n_load_target and tries < n_load_target * 40:
        tries += 1
        r = build_loaded(rng)
        if r is None:
            continue
        P, Q, i0, load = r
        instances.append(('loaded', P, Q, i0, load))
        load_hist[load] = load_hist.get(load, 0) + 1
        nload += 1
    print(f"  got {nload} (from {tries} attempts)")
    print(f"  degeneracies carried by the targeted edge: "
          f"{dict(sorted(load_hist.items()))}")
    print()

    n_gen = sum(1 for x in instances if x[0] == 'generic')
    n_deg = sum(1 for x in instances if x[0] == 'degen')
    n_load = sum(1 for x in instances if x[0] == 'loaded')

    # statistics
    stat = {
        'checks': 0,
        'pass': 0,
        'fail': 0,
        'strict': 0,          # best gain > 0
        'equal': 0,           # best gain == 0
        'checks_gen': 0, 'pass_gen': 0,
        'checks_deg': 0, 'pass_deg': 0,
        'checks_load': 0, 'pass_load': 0,
        'tgt_checks': 0, 'tgt_pass': 0, 'tgt_strict': 0, 'tgt_equal': 0,
        'touch_checks': 0, 'touch_pass': 0,   # edge i carries a degeneracy
        'touch_strict': 0, 'touch_equal': 0,
        'c1_fail': 0,          # control: strict increase required
        'c2_fail': 0,          # control: large delta only
        'c3_fail': 0,          # control: gain >= 2 required
        'nosimple': 0,
        'main_neg': 0,       # main grid had no non-decreasing witness
        'ext_rescue': 0,     # ... and the extended grid found one
        'ext_gain': [],
    }
    deg_hist = {}
    inst_touch = 0
    gain_hist = {}
    counterexamples = []

    for idx, rec in enumerate(instances):
        kind, P, Q = rec[0], rec[1], rec[2]
        tgt_edge = rec[3] if kind == 'loaded' else None
        cp0, sd0, sdp0 = measure_parts(P, Q)
        m0 = cp0 + sd0 + sdp0
        dtot = sd0 + sdp0
        deg_hist[dtot] = deg_hist.get(dtot, 0) + 1
        sdset = seg_deg(P, Q)
        sdpset = seg_deg_p(P, Q)
        if sdset or sdpset:
            inst_touch += 1
        for i in range(N):
            stat['checks'] += 1
            if kind == 'generic':
                stat['checks_gen'] += 1
            elif kind == 'degen':
                stat['checks_deg'] += 1
            else:
                stat['checks_load'] += 1
            if tgt_edge is not None and i == tgt_edge:
                stat['tgt_checks'] += 1
            # does edge i carry a degeneracy?
            touch = any(k == i for (k, j) in sdset) or \
                    any(v == i or v == (i + 1) % N for (j, v) in sdpset)
            if touch:
                stat['touch_checks'] += 1

            best, nsimple = scan(P, Q, i, m0, T_GRID, SMALL_DELTAS)
            if nsimple == 0:
                stat['nosimple'] += 1

            # --- controls, on the same instance/edge --------------------
            bl, _ = scan(P, Q, i, m0, T_GRID, LARGE_DELTAS)
            if bl is None or bl < 0:
                stat['c2_fail'] += 1
            if best is None or best <= 0:
                stat['c1_fail'] += 1
            if best is None or best < 2:
                stat['c3_fail'] += 1
            # -----------------------------------------------------------

            ok = best is not None and best >= 0
            if not ok:
                stat['main_neg'] += 1
                # extended search before declaring a counterexample
                w = witness(P, Q, i, m0, T_GRID_EXT, DELTAS_EXT, 0)
                if w is not None:
                    ok = True
                    best = w[2]
                    stat['ext_rescue'] += 1
                    stat['ext_gain'].append((idx, kind, i, str(w[0]), str(w[1]), w[2]))
                    print(f"  [extended grid needed] instance {idx} ({kind}) edge i={i}: "
                          f"main grid best gain < 0; extended witness "
                          f"t={w[0]}, delta={w[1]}, gain={w[2]:+d}")
            if ok:
                stat['pass'] += 1
                if kind == 'generic':
                    stat['pass_gen'] += 1
                elif kind == 'degen':
                    stat['pass_deg'] += 1
                else:
                    stat['pass_load'] += 1
                if tgt_edge is not None and i == tgt_edge:
                    stat['tgt_pass'] += 1
                    if best > 0:
                        stat['tgt_strict'] += 1
                    else:
                        stat['tgt_equal'] += 1
                if touch:
                    stat['touch_pass'] += 1
                if best > 0:
                    stat['strict'] += 1
                    if touch:
                        stat['touch_strict'] += 1
                else:
                    stat['equal'] += 1
                    if touch:
                        stat['touch_equal'] += 1
                gain_hist[best] = gain_hist.get(best, 0) + 1
            else:
                stat['fail'] += 1
                counterexamples.append((idx, kind, i, P, Q, m0, (cp0, sd0, sdp0)))
                print(f"  !! CANDIDATE COUNTEREXAMPLE instance {idx} ({kind}) edge i={i}")
                print(f"     P = {fmt_poly(P)}")
                print(f"     Q = {fmt_poly(Q)}")
                print(f"     measure = {m0}  (cross={cp0}, segDeg={sd0}, segDegP={sdp0})")
        if (idx + 1) % 25 == 0:
            print(f"  ... {idx+1}/{len(instances)} instances done "
                  f"(pass {stat['pass']}, fail {stat['fail']})")

    print()
    print("=" * 78)
    print("RESULTS")
    print("=" * 78)
    print(f"instances total                        : {len(instances)}")
    print(f"  (i)  segDeg + segDegP == 0  (generic): {n_gen}")
    print(f"  (ii) segDeg + segDegP >  0           : {n_deg + n_load}")
    print(f"         constructed by random snapping  : {n_deg}")
    print(f"         adversarial loaded-edge family  : {n_load}")
    print(f"degeneracy-count histogram (segDeg+segDegP over all instances):")
    for k in sorted(deg_hist):
        print(f"    {k:2d} degeneracies : {deg_hist[k]} instances")
    print()
    print(f"(instance, edge) checks total          : {stat['checks']}")
    print(f"  generic : {stat['checks_gen']}   passed {stat['pass_gen']}")
    print(f"  degen   : {stat['checks_deg']}   passed {stat['pass_deg']}")
    print(f"  loaded  : {stat['checks_load']}   passed {stat['pass_load']}")
    print(f"  the TARGETED edge of a loaded instance (worst case):")
    print(f"      checks {stat['tgt_checks']}   passed {stat['tgt_pass']}"
          f"   (strict increase {stat['tgt_strict']}, equality {stat['tgt_equal']})")
    print(f"  of which the shifted edge i actually carries a degeneracy:")
    print(f"      checks {stat['touch_checks']}   passed {stat['touch_pass']}"
          f"   (strict increase {stat['touch_strict']}, equality {stat['touch_equal']})")
    print(f"PASS  : {stat['pass']}")
    print(f"FAIL  : {stat['fail']}")
    print(f"(edge,instance) with NO simple shift on the main grid: {stat['nosimple']}")
    print(f"(edge,instance) where the MAIN grid (7 tilts x 10 deltas) had no")
    print(f"  non-decreasing witness                              : {stat['main_neg']}")
    print(f"  ... rescued by the extended grid (25 tilts x 32 deltas): {stat['ext_rescue']}")
    for rec in stat['ext_gain']:
        print(f"      instance {rec[0]} ({rec[1]}) edge {rec[2]}: "
              f"t={rec[3]}, delta={rec[4]}, gain={rec[5]:+d}")
    print()
    print("statistic 5 -- best achievable measure change over the grid:")
    print(f"  strictly increases : {stat['strict']}")
    print(f"  equal only         : {stat['equal']}")
    print("  gain histogram (best gain over grid):")
    for k in sorted(gain_hist):
        print(f"    gain {k:+d} : {gain_hist[k]}")
    print()
    print("=" * 78)
    print("NON-VACUITY CONTROLS  (the checker must be able to report FAIL)")
    print("=" * 78)
    print("control 1: demand MEASURE strictly INCREASE (deliberately false variant)")
    print(f"  failures : {stat['c1_fail']} / {stat['checks']}")
    print("control 2: demand the conclusion with |delta| in {4,8,16} only (large)")
    print(f"  failures : {stat['c2_fail']} / {stat['checks']}")
    print("control 3: demand MEASURE increase by at least 2 (deliberately false)")
    print(f"  failures : {stat['c3_fail']} / {stat['checks']}")
    ctl_ok = (stat['c1_fail'] > 0 and stat['c2_fail'] > 0 and stat['c3_fail'] > 0)
    print(f"  => checker demonstrably CAN fail: {ctl_ok}")
    print()
    if counterexamples:
        print("=" * 78)
        print(f"CANDIDATE COUNTEREXAMPLES: {len(counterexamples)}")
        print("=" * 78)
        for (idx, kind, i, P, Q, m0, parts) in counterexamples:
            print(f"instance {idx} ({kind}), edge i = {i}, measure {m0} "
                  f"(cross={parts[0]}, segDeg={parts[1]}, segDegP={parts[2]})")
            print(f"  P = {fmt_poly(P)}")
            print(f"  Q = {fmt_poly(Q)}")
    else:
        print("NO candidate counterexamples.")
    print()
    print("DONE")

if __name__ == '__main__':
    main()
