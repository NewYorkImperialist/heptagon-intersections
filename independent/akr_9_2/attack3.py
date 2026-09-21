"""ATTACK round 2 (2026-09-21, second agent).

An INDEPENDENT checker for the tilted-translation repair of AKR 9.2, plus an
exact implementation of the delta_0 of REPAIR.md 2.3.

Three things this adds that `attack.py` does not have:

  1. INDEX-BASED degeneracy sets.  `attack.degset` keys a degeneracy by the
     COORDINATES of the vertex and side, so after a shift "the same" degeneracy
     has different coordinates and set comparison is impossible; `attack.py`
     therefore tests clause 4 only as  len(D') <= len(D).  That is strictly
     weaker than clause 4, which says NO NEW degeneracy appears: a shift that
     destroys one and creates another passes the count test.  Here a degeneracy
     is (kind, vertex INDEX, side INDEX), which is stable under a shift, so the
     real subset test  D' subset D  can be run.

  2. delta_0 computed exactly from REPAIR.md 2.3, so clauses can be tested at
     delta actually below the bound the proof claims, and just above it.

  3. An independent point-set intersection counter (sweep over all side pairs
     with a different code path) used to cross-check shift.count.

Exact rationals throughout.  No float anywhere.
"""
import sys, math
from fractions import Fraction as F
sys.path.insert(0, __file__.rsplit('/', 1)[0])
from shift import (sub, add, smul, cross, seg_inter, sides, is_simple,
                   inter_points, count, vertex_vertex, line_meet)
from repair import dot, frame, gen_shift, host_side_through, DIRS, shift

# ---------------------------------------------------------------- basics

def strictly_inside(v, c, d):
    if v == c or v == d: return False
    if cross(sub(d, c), sub(v, c)) != 0: return False
    dd = sub(d, c); vv = sub(v, c)
    t = F(dot(vv, dd), 1) / dot(dd, dd)
    return 0 < t < 1

def degset_idx(P, Q):
    """{(kind, vertex index, side index)}.  Stable under a shift of either
    polygon, because indices do not move."""
    out = set()
    SP, SQ = sides(P), sides(Q)
    for j, v in enumerate(Q):
        for k, (c, d) in enumerate(SP):
            if strictly_inside(v, c, d): out.add(('Qv_on_Ps', j, k))
    for j, v in enumerate(P):
        for k, (c, d) in enumerate(SQ):
            if strictly_inside(v, c, d): out.add(('Pv_on_Qs', j, k))
    return out

def indep_count(P, Q):
    """Independent recount of |dP n dQ| by a different code path: collect all
    candidate points (side-side crossings AND every vertex of each polygon that
    lies on the other's boundary) and test membership directly."""
    cand = set()
    SP, SQ = sides(P), sides(Q)
    for (a, b) in SP:
        for (c, d) in SQ:
            den = cross(sub(b, a), sub(d, c))
            if den == 0: continue
            w = sub(c, a)
            t = F(cross(w, sub(d, c)), 1) / den
            cand.add((a[0] + t*(b[0]-a[0]), a[1] + t*(b[1]-a[1])))
    for v in P: cand.add(v)
    for v in Q: cand.add(v)
    def on(pt, S):
        for (c, d) in S:
            if cross(sub(d, c), sub(pt, c)) != 0: continue
            dd = sub(d, c); vv = sub(pt, c)
            t = F(dot(vv, dd), 1) / dot(dd, dd)
            if 0 <= t <= 1: return True
        return False
    # overlap detection
    for (a, b) in SP:
        for (c, d) in SQ:
            if seg_inter(a, b, c, d)[0] == 'overlap': return None
    return sum(1 for pt in cand if on(pt, SP) and on(pt, SQ))

# ---------------------------------------------------------------- sqrt bounds

def sqrt_lb(q):
    """Rational r > 0 with r <= sqrt(q), for a positive rational q.  Tight to
    ~2^-40 relative."""
    assert q > 0
    S = 1 << 80
    n = (q * S * S).numerator // (q * S * S).denominator
    r = math.isqrt(n)
    return F(r, S)

def sqrt_ub(q):
    if q == 0: return F(0)
    S = 1 << 80
    n = -((-(q * S * S).numerator) // (q * S * S).denominator)
    r = math.isqrt(n) + 1
    return F(r, S)

def d2_pt(p, q): return (p[0]-q[0])**2 + (p[1]-q[1])**2

def d2_pt_seg(p, c, d):
    dd = sub(d, c)
    if dd == (0, 0): return d2_pt(p, c)
    t = F(dot(sub(p, c), dd), 1) / dot(dd, dd)
    if t < 0: t = F(0)
    if t > 1: t = F(1)
    foot = (c[0] + t*dd[0], c[1] + t*dd[1])
    return d2_pt(p, foot)

def d2_seg_seg(a, b, c, d):
    if seg_inter(a, b, c, d)[0] != 'none': return F(0)
    return min(d2_pt_seg(a, c, d), d2_pt_seg(b, c, d),
               d2_pt_seg(c, a, b), d2_pt_seg(d, a, b))

# ---------------------------------------------------------------- delta_0

def delta0(P, Q, i, mode, verbose=False):
    """delta_0 of REPAIR.md 2.3, computed exactly (rational LOWER bound).

    Returns (delta0, parts) or (None, reason).  Norms are irrational, so every
    rho/K is replaced by a rational bound in the SAFE direction (rho down, K
    up); the result is therefore <= the real delta_0.
    """
    m = len(P)
    A, B, C, D, u, n, N = frame(P, i)
    a, b = DIRS[mode](P, Q, i)
    da, db = dot(a, n), dot(b, n)
    if da == 0 or db == 0: return None, 'undefined (G fails)'
    ca = F(N, 1)/da; cb = F(N, 1)/db
    w = sub(A, C); z = sub(D, B)
    Dset = inter_points(P, Q)
    if Dset is None: return None, 'infinite (F fails)'
    SP, SQ = sides(P), sides(Q)

    # rho1
    pts = sorted(set(Dset) | set(P) | set(Q))
    best = None
    for x in range(len(pts)):
        for y in range(x+1, len(pts)):
            v = d2_pt(pts[x], pts[y])
            if v == 0: return None, 'coincident points (VV fails?)'
            best = v if best is None else min(best, v)
    rho1 = sqrt_lb(best)

    # rho2 (i)
    cands = []
    for p in P:
        for (c, d) in SQ:
            if d2_pt_seg(p, c, d) != 0: cands.append(d2_pt_seg(p, c, d))
    for p in Q:
        for (c, d) in SP:
            if d2_pt_seg(p, c, d) != 0: cands.append(d2_pt_seg(p, c, d))
    # rho2 (ii)
    tri = [(C, A), (A, B), (B, D)]
    for (c, d) in SQ:
        ds = [d2_seg_seg(c, d, x, y) for (x, y) in tri]
        if min(ds) != 0: cands.append(min(ds))
    if not cands: return None, 'no rho2 candidates'
    rho2 = sqrt_lb(min(cands))

    # rho3
    c3 = []
    for x in range(m):
        for y in range(x+1, m):
            if y == x+1 or (x == 0 and y == m-1): continue
            c3.append(d2_seg_seg(SP[x][0], SP[x][1], SP[y][0], SP[y][1]))
    if any(v == 0 for v in c3): return None, 'P not simple'
    rho3 = sqrt_lb(min(c3)) if c3 else F(10**9)

    rho4 = sqrt_lb(min(dot(w, w), dot(u, u), dot(z, z)))

    K_end = max(sqrt_ub(ca*ca*dot(a, a)), sqrt_ub(cb*cb*dot(b, b)))
    Ks = [F(1)]
    for (c, d) in SQ:
        v = sub(d, c)
        if dot(v, n) != 0:
            Ks.append(F(N, 1) * sqrt_ub(dot(v, v)) / abs(dot(v, n)))
    K_slide = max(Ks)
    Kr = [F(1)]
    for (c, d) in SQ:
        v = sub(d, c)
        if d2_seg_seg(c, d, C, A) == 0 and cross(w, v) != 0:
            Kr.append(sqrt_ub(ca*ca*dot(a, a)) * sqrt_ub(dot(w, w)) *
                      sqrt_ub(dot(v, v)) / abs(cross(w, v)))
        if d2_seg_seg(c, d, B, D) == 0 and cross(z, v) != 0:
            Kr.append(sqrt_ub(cb*cb*dot(b, b)) * sqrt_ub(dot(z, z)) *
                      sqrt_ub(dot(v, v)) / abs(cross(z, v)))
    K_rot = max(Kr)

    taus = []
    for (c, d) in SQ:
        v = sub(d, c)
        if d2_seg_seg(c, d, C, A) == 0 and cross(a, v) != 0:
            taus.append(abs(F(cross(w, v), 1) / (ca * cross(a, v))))
        if d2_seg_seg(c, d, B, D) == 0 and cross(b, v) != 0:
            taus.append(abs(F(cross(z, v), 1) / (cb * cross(b, v))))
    tau1 = min(taus) if taus else F(10**9)
    if tau1 == 0: return None, 'tau1 = 0'

    t2 = []
    for q in Q:
        e = dot(sub(q, A), n)
        if e != 0: t2.append(abs(F(e, 1)/N))
    for (c, d) in SQ:
        v = sub(d, c)
        if dot(v, n) == 0:
            e = dot(sub(c, A), n)
            if e != 0: t2.append(abs(F(e, 1)/N))
    tau2 = min(t2) if t2 else F(10**9)

    r = min(rho1, rho2, rho3, rho4) / 3
    d0 = min(r / (10 * max(K_end, K_slide, K_rot, F(1))), tau1, tau2)
    parts = dict(rho1=rho1, rho2=rho2, rho3=rho3, rho4=rho4, r=r,
                 K_end=K_end, K_slide=K_slide, K_rot=K_rot,
                 tau1=tau1, tau2=tau2)
    return d0, parts

def dyadic_below(x):
    """The largest 2^-k strictly below positive rational x."""
    k = 0
    while F(1, 2**k) >= x: k += 1
    return F(1, 2**k)

# ---------------------------------------------------------------- checker

def check(P, Q, i, delta, mode, strict4=True):
    """One instance.  Returns a dict of verdicts."""
    r = {'status': 'ok'}
    Pp = shift(P, Q, i, delta, mode)
    Pm = shift(P, Q, i, -delta, mode)
    if Pp is None or Pm is None: return {'status': 'undefined'}
    if not is_simple(Pp): return {'status': 'not-simple+'}
    if not is_simple(Pm): return {'status': 'not-simple-'}
    c0, cp, cm = count(P, Q), count(Pp, Q), count(Pm, Q)
    if c0 is None or cp is None or cm is None: return {'status': 'infinite'}
    r['c'] = (c0, cp, cm)
    r['identity'] = (cp + cm == 2*c0)
    d0 = degset_idx(P, Q); dp = degset_idx(Pp, Q); dm = degset_idx(Pm, Q)
    r['dcount'] = (len(d0), len(dp), len(dm))
    # clause 4 STRICT: no new degeneracy, as a set of (kind, vidx, sidx)
    r['new_plus'] = dp - d0
    r['new_minus'] = dm - d0
    r['nonew_strict'] = (not (dp - d0)) and (not (dm - d0))
    r['nonew_count'] = (len(dp) <= len(d0) and len(dm) <= len(d0))
    # clause 3: what the theorem guarantees is cleared
    m = len(P)
    guaranteed = set()
    for j, v in enumerate(Q):
        if strictly_inside(v, P[i], P[(i+1) % m]):
            guaranteed.add(('Qv_on_Ps', j, i))
    a, b = DIRS[mode](P, Q, i) if mode in DIRS else (None, None)
    if a is not None:
        for (vi, dd) in ((i, a), ((i+1) % m, b)):
            t = host_side_through(P[vi], Q)
            if t is not None and cross(sub(t[1], t[0]), dd) != 0:
                k = [kk for kk, sd in enumerate(sides(Q)) if set(sd) == set(t)][0]
                guaranteed.add(('Pv_on_Qs', vi, k))
    r['guaranteed'] = guaranteed
    r['cleared'] = not (guaranteed & dp) and not (guaranteed & dm)
    # endpoint degeneracies present at all (for non-vacuity accounting)
    r['endpoint_deg'] = sum(
        1 for vi in (i, (i+1) % m) if host_side_through(P[vi], Q) is not None)
    r['interior_deg'] = sum(1 for v in Q if strictly_inside(v, P[i], P[(i+1) % m]))
    # how many endpoint degeneracies ACTUALLY survive (whether or not the
    # theorem guarantees they go).  This is what separates translate from tilt.
    endpts = {i, (i+1) % m}
    r['ep_surv'] = max(
        len({e for e in dp if e[0] == 'Pv_on_Qs' and e[1] in endpts}),
        len({e for e in dm if e[0] == 'Pv_on_Qs' and e[1] in endpts}))
    r['ep_before'] = len({e for e in d0 if e[0] == 'Pv_on_Qs' and e[1] in endpts})
    # degeneracies on the fixed pivots C, D (case P4)
    piv = {(i-1) % m, (i+2) % m}
    r['pivot_deg'] = len({e for e in d0 if e[0] == 'Pv_on_Qs' and e[1] in piv})
    # Q-features in the relative interior of the two ROTATING neighbours (P2)
    r['rot_deg'] = len({e for e in d0 if e[0] == 'Qv_on_Ps'
                        and e[2] in ((i-1) % m, (i+1) % m)})
    # clause 2: finiteness and no new vertex-vertex
    r['vv_new'] = bool(vertex_vertex(Pp, Q)) or bool(vertex_vertex(Pm, Q))
    # independent recount cross-check
    r['xcheck'] = (indep_count(Pp, Q) == cp and indep_count(Pm, Q) == cm
                   and indep_count(P, Q) == c0)
    return r
