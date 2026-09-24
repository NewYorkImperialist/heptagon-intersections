"""ptbreak_lib.py -- an attack on the apex-only M_pt conjecture.

THE CONJECTURE UNDER ATTACK
---------------------------
P, Q simple heptagons, finitely many boundary intersections, with at least one
vertex-vertex coincidence P[v] == Q[j].  Then there EXISTS a displacement
d != (0,0) such that the apex-only move  P[v] -> P[v] + d  (nothing else moves)
gives

   (1) P still SimpleClosed          (Q never moves)
   (2) boundary intersection still finite
   (3) |coincSet| strictly decreased
   (4) M_pt does not decrease, where M_pt = |crossPairs| + |degPts|
       and degPts is the SET of points lying on both boundaries that are a
       vertex of P or of Q -- each such POINT counted ONCE.

The outcome depends only on d = e*E, so we sweep the displacement plane.

WHY A CELL ENUMERATION IS POSSIBLE (and why this beats a direction grid)
------------------------------------------------------------------------
Only P[v] moves.  Every predicate that enters crossPairs / segDeg / segDegP /
coincSet / SimpleClosed / finiteness is of the form orientR(.,.,.) or a dot
product in which the moving point P' = P[v]+d occurs AT MOST ONCE (the two
incident P-sides each contain P' once; a Q-side never does).  Each such
predicate is therefore an AFFINE function of d:

    pred(d) = pred(0) + <grad, d>.

If pred(0) != 0 the sign is locally constant; if pred(0) == 0 the sign is
governed by <grad,d>, whose zero set is a LINE THROUGH THE ORIGIN in d-space.
So for all sufficiently small |d| the whole combinatorial type of the moved
configuration is constant on each open cell of a CENTRAL LINE ARRANGEMENT, and
constant on each critical ray.  Enumerating one exact rational representative
per cell and per ray is therefore a COMPLETE search of the small-displacement
regime -- not a sample.  (The one caveat: a couple of on-segment dot tests are
quadratic in d; a quadratic with a nonzero constant term is still locally sign
constant, and when the constant vanishes its linear part is covered by the
perpendicular lines we add below.  We also add every inter-point direction and
its perpendicular, which only REFINES the arrangement, so the enumeration stays
complete.)

All arithmetic is exact `fractions.Fraction`.
"""

import os
import sys
from fractions import Fraction as F
from functools import cmp_to_key
from itertools import combinations

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

from move_effect_lib import (            # noqa: E402
    N, sub, add, smul, cross, dot, orientR, properCrossR, onSeg, adjacent,
    seg_inter, overlaps_in_more_than_a_point, simple_closed, crossPairs,
    segDeg, segDegP, coincSet, finite_boundary_intersection, moveV,
)

# --------------------------------------------------------------- the measure

def deg_pts(P, Q, sd=None, sdp=None):
    """The SET of points on both boundaries that are a vertex of P or of Q.

    Derived from segDeg / segDegP.  A Q-vertex lies on dP iff it lies on some
    closed P-side; a P-vertex lies on dQ iff it lies on some closed Q-side.
    Each POINT enters the set once -- in particular a vertex-vertex coincidence
    occupies up to four slots in segDeg+segDegP but ONE point here."""
    if sd is None:
        sd = segDeg(P, Q)
    if sdp is None:
        sdp = segDegP(P, Q)
    pts = set()
    for (k, j) in sd:
        pts.add(Q[j])
    for (j, u) in sdp:
        pts.add(P[u])
    return frozenset(pts)


def on_boundary(X, W):
    return any(onSeg(W[i], W[(i + 1) % N], X) for i in range(N))


def deg_pts_direct(P, Q):
    """Structurally different implementation, straight off the definition:
    walk the candidate points and ask membership of both boundaries."""
    out = set()
    for X in set(P) | set(Q):
        if on_boundary(X, P) and on_boundary(X, Q):
            out.add(X)
    return frozenset(out)


def M_pt(P, Q):
    return len(crossPairs(P, Q)) + len(deg_pts(P, Q))


def parts(P, Q):
    sd = segDeg(P, Q)
    sdp = segDegP(P, Q)
    return (len(crossPairs(P, Q)), len(sd), len(sdp),
            len(deg_pts(P, Q, sd, sdp)), len(coincSet(P, Q)))


# ------------------------------------------------------ incremental evaluator

class Inst:
    """One instance: heptagons P, Q, apex index v with P[v] == Q[j0].

    `ev(d)` evaluates the apex-only move P[v] -> P[v]+d incrementally: only the
    two incident P-sides v-1 and v, and the single P-vertex v, can change.
    `ev_full(d)` recomputes everything from scratch; the two must agree and the
    self-tests check that they do."""

    def __init__(self, P, Q, v, family="?", note=""):
        self.P, self.Q, self.v = tuple(P), tuple(Q), v
        self.family, self.note = family, note
        self.km1 = (v - 1) % N
        self.k0 = v
        co = coincSet(P, Q)
        self.coinc = co
        self.j0 = next((j for (u, j) in co if u == v), None)
        self.b_cross = crossPairs(P, Q)
        self.b_sd = segDeg(P, Q)
        self.b_sdp = segDegP(P, Q)
        self.b_dp = deg_pts(P, Q, self.b_sd, self.b_sdp)
        self.b_M = len(self.b_cross) + len(self.b_dp)
        self.b_nco = len(co)
        # parts of the base sets that the move cannot touch
        self.keep_cross = frozenset((k, j) for (k, j) in self.b_cross
                                    if k not in (self.km1, self.k0))
        self.keep_sd = frozenset((k, j) for (k, j) in self.b_sd
                                 if k not in (self.km1, self.k0))
        self.keep_sdp = frozenset((j, u) for (j, u) in self.b_sdp if u != v)
        self.fixed_dp_pts = set()
        for (k, j) in self.keep_sd:
            self.fixed_dp_pts.add(Q[j])
        for (j, u) in self.keep_sdp:
            self.fixed_dp_pts.add(P[u])
        # coincidences not at the apex
        self.keep_nco = sum(1 for (u, j) in co if u != v)

    # ---- validity of the base instance
    def base_ok(self):
        return (simple_closed(self.P) and simple_closed(self.Q)
                and finite_boundary_intersection(self.P, self.Q)
                and self.j0 is not None)

    def moved(self, d):
        P2 = list(self.P)
        P2[self.v] = add(self.P[self.v], d)
        return tuple(P2)

    # ---- the incremental evaluation
    def ev(self, d):
        """None if the move is inadmissible under (1),(2),(3); else a dict."""
        if d == (0, 0):
            return None
        P, Q, v = self.P, self.Q, self.v
        X = add(P[v], d)
        km1, k0 = self.km1, self.k0
        A = P[km1]          # fixed far end of the incident side v-1
        B = P[(v + 1) % N]  # fixed far end of the incident side v

        # (3) coincidence count must strictly drop.
        nco = self.keep_nco + sum(1 for j in range(N) if Q[j] == X)
        if nco >= self.b_nco:
            return None

        # (1) SimpleClosed of the moved P.  Only the two incident sides moved.
        if X == A or X == B:
            return None
        P2 = self.moved(d)
        for k in (km1, k0):
            for m in range(N):
                if adjacent(k, m):
                    continue
                if seg_inter(P2[k], P2[(k + 1) % N], P2[m], P2[(m + 1) % N]) is not None:
                    return None
        for k in (km1, k0, (v + 1) % N, (v - 2) % N):
            k = k % N
            r = seg_inter(P2[k], P2[(k + 1) % N], P2[(k + 1) % N], P2[(k + 2) % N])
            if r is None or r[0] != 'pt' or r[1] != P2[(k + 1) % N]:
                return None

        # (2) finiteness: only the two moved sides can newly overlap a Q-side
        for k in (km1, k0):
            for j in range(N):
                if overlaps_in_more_than_a_point(P2[k], P2[(k + 1) % N],
                                                 Q[j], Q[(j + 1) % N]):
                    return None

        # crossPairs on the two moved rows
        ncross = len(self.keep_cross)
        for k in (km1, k0):
            a, b = P2[k], P2[(k + 1) % N]
            for j in range(N):
                if properCrossR(a, b, Q[j], Q[(j + 1) % N]):
                    ncross += 1
        # segDeg on the two moved rows, segDegP for the moved vertex
        pts = set(self.fixed_dp_pts)
        nsd = len(self.keep_sd)
        for k in (km1, k0):
            a, b = P2[k], P2[(k + 1) % N]
            for j in range(N):
                if onSeg(a, b, Q[j]):
                    nsd += 1
                    pts.add(Q[j])
        nsdp = len(self.keep_sdp)
        for j in range(N):
            if onSeg(Q[j], Q[(j + 1) % N], X):
                nsdp += 1
                pts.add(X)
        M = ncross + len(pts)
        return dict(d=d, M=M, dM=M - self.b_M, ncross=ncross,
                    dcross=ncross - len(self.b_cross),
                    ndp=len(pts), ddp=len(pts) - len(self.b_dp),
                    nco=nco, dco=nco - self.b_nco,
                    nsd=nsd, nsdp=nsdp)

    def ev_full(self, d):
        """Independent full recomputation, used to cross-check `ev`."""
        if d == (0, 0):
            return None
        P2 = self.moved(d)
        Q = self.Q
        nco = len(coincSet(P2, Q))
        if nco >= self.b_nco:
            return None
        if not simple_closed(P2):
            return None
        if not finite_boundary_intersection(P2, Q):
            return None
        c = crossPairs(P2, Q)
        sd = segDeg(P2, Q)
        sdp = segDegP(P2, Q)
        dp = deg_pts(P2, Q, sd, sdp)
        M = len(c) + len(dp)
        return dict(d=d, M=M, dM=M - self.b_M, ncross=len(c),
                    dcross=len(c) - len(self.b_cross),
                    ndp=len(dp), ddp=len(dp) - len(self.b_dp),
                    nco=nco, dco=nco - self.b_nco,
                    nsd=len(sd), nsdp=len(sdp))


# ------------------------------------------------- the displacement-plane cells

def _canon_line(u):
    """Canonical representative of the LINE through 0 with direction u."""
    x, y = u
    if x == 0 and y == 0:
        return None
    m = max(abs(x), abs(y))
    x, y = F(x) / m, F(y) / m
    if x < 0 or (x == 0 and y < 0):
        x, y = -x, -y
    return (x, y)


def _perp(u):
    return (-u[1], u[0])


def critical_lines(inst):
    """Every line through the origin in d-space across which the combinatorial
    type of the moved configuration can change, plus a safe surplus."""
    P, Q, v = inst.P, inst.Q, inst.v
    X0 = P[v]
    S = [p for p in (set(P) | set(Q)) if p != X0]
    lines = set()

    def push(u):
        c = _canon_line(u)
        if c is not None:
            lines.add(c)

    # orient predicates that are degenerate at d = 0: P[v] collinear with X,Y
    for X, Y in combinations(S, 2):
        if orientR(X, Y, X0) == 0:
            push(sub(Y, X))
    # every direction from the apex to another point, and its perpendicular:
    # covers the dot-product (on-segment) degeneracies at the apex, and the
    # events "the moved apex becomes collinear with / perpendicular to X".
    for Y in S:
        push(sub(Y, X0))
        push(_perp(sub(Y, X0)))
    # every side direction of P and of Q (collinear-overlap / finiteness events)
    for W in (P, Q):
        for i in range(N):
            push(sub(W[(i + 1) % N], W[i]))
            push(_perp(sub(W[(i + 1) % N], W[i])))
    # the two incident side directions again, explicitly, plus the axes
    push((1, 0))
    push((0, 1))
    return sorted(lines)


def _ray_cmp(a, b):
    def half(p):
        return 0 if (p[1] > 0 or (p[1] == 0 and p[0] > 0)) else 1
    ha, hb = half(a), half(b)
    if ha != hb:
        return -1 if ha < hb else 1
    x = cross(a, b)
    return -1 if x > 0 else (1 if x < 0 else 0)


def cell_directions(inst):
    """One exact rational representative direction for every open cell AND
    every critical ray of the arrangement.  Returns [(dir, kind)]."""
    lines = critical_lines(inst)
    rays = []
    for (x, y) in lines:
        rays.append((x, y))
        rays.append((-x, -y))
    rays.sort(key=cmp_to_key(_ray_cmp))
    # dedupe
    ded = []
    for r in rays:
        if not ded or ded[-1] != r:
            ded.append(r)
    rays = ded
    out = [(r, 'ray') for r in rays]
    n = len(rays)
    for i in range(n):
        a, b = rays[i], rays[(i + 1) % n]
        s = add(a, b)
        if s == (0, 0) or cross(a, b) == 0:
            p = _perp(a)
            if cross(a, p) < 0:
                p = (-p[0], -p[1])
            s = p
        out.append((s, 'cell'))
    return out


def scale(u, lam):
    return (u[0] * lam, u[1] * lam)


DEFAULT_SCALES = [F(1, 10), F(1, 1000), F(1, 10 ** 6), F(1, 10 ** 9),
                  F(1, 10 ** 12)]


def sweep_cells(inst, scales=None, collect=False):
    """COMPLETE small-displacement search: every cell and ray of the central
    arrangement, at several scales.  Returns the best (max dM) record."""
    scales = DEFAULT_SCALES if scales is None else scales
    best = None
    best_by_scale = {}
    n_adm = 0
    n_try = 0
    recs = []
    for (u, kind) in cell_directions(inst):
        for lam in scales:
            n_try += 1
            r = inst.ev(scale(u, lam))
            if r is None:
                continue
            n_adm += 1
            r['kind'] = kind
            r['lam'] = lam
            r['dir'] = u
            if collect:
                recs.append(r)
            if best is None or r['dM'] > best['dM']:
                best = r
            cur = best_by_scale.get(lam)
            if cur is None or r['dM'] > cur['dM']:
                best_by_scale[lam] = r
    return dict(best=best, n_adm=n_adm, n_try=n_try,
                by_scale=best_by_scale, recs=recs)


# ------------------------------------------------------------ a coarse grid

def primitive_dirs(m):
    out = set()
    from math import gcd
    for dx in range(-m, m + 1):
        for dy in range(-m, m + 1):
            if dx == 0 and dy == 0:
                continue
            g = gcd(abs(dx), abs(dy))
            out.add((dx // g, dy // g))
    return sorted(out)


def sweep_grid(inst, dirs, mags):
    best = None
    n_adm = 0
    n_try = 0
    for E in dirs:
        for e in mags:
            n_try += 1
            r = inst.ev((E[0] * e, E[1] * e))
            if r is None:
                continue
            n_adm += 1
            if best is None or r['dM'] > best['dM']:
                best = r
    return dict(best=best, n_adm=n_adm, n_try=n_try)


# ------------------------------------------------------- degeneracy anatomy

def incident_deg_anatomy(inst):
    """Classify every non-apex degenerate point carried by an INCIDENT P-side
    -- the mechanism that threatens M_pt, because the pivot carries it off.

    Returns a list of dicts with the touch/transversal character, which
    predicts the local crossing gain: a TOUCH point gains +2 crossings on its
    good side of the pivot and 0 on the bad side (net +1 / -1 against the lost
    degPt); a TRANSVERSAL point gains exactly 1 either way (net 0)."""
    P, Q, v = inst.P, inst.Q, inst.v
    out = []
    for k in (inst.km1, inst.k0):
        a, b = P[k], P[(k + 1) % N]
        for j in range(N):
            if Q[j] == P[v]:
                continue                      # the apex coincidence itself
            if not onSeg(a, b, Q[j]):
                continue
            s1 = orientR(a, b, Q[(j - 1) % N])
            s2 = orientR(a, b, Q[(j + 1) % N])
            if s1 == 0 or s2 == 0:
                kind = 'degen'
            elif (s1 > 0) == (s2 > 0):
                kind = 'touch'
            else:
                kind = 'trans'
            # does it survive because it also sits on a NON-incident P-side?
            elsewhere = any(onSeg(P[m], P[(m + 1) % N], Q[j])
                            for m in range(N) if m not in (inst.km1, inst.k0))
            out.append(dict(side=('v-1' if k == inst.km1 else 'v'), k=k, j=j,
                            pt=Q[j], kind=kind, elsewhere=elsewhere,
                            interior=(Q[j] != a and Q[j] != b)))
    return out


def apex_anatomy(inst):
    """Touch / transversal character of the apex coincidence itself: are the
    two P-edges at the apex in the same local Q-sector?"""
    P, Q, v = inst.P, inst.Q, inst.v
    j = inst.j0
    if j is None:
        return None
    A, B = P[(v - 1) % N], P[(v + 1) % N]
    Qm, Qp = Q[(j - 1) % N], Q[(j + 1) % N]
    X = P[v]
    # which local Q-sector does a direction lie in?  sign pattern against the
    # two Q-edges emanating from X.
    def sector(Z):
        return (sgn(orientR(X, Qm, Z)), sgn(orientR(X, Qp, Z)))
    sA, sB = sector(A), sector(B)
    if 0 in sA or 0 in sB:
        return 'degen'
    return 'touch' if sA == sB else 'trans'


def sgn(x):
    return 0 if x == 0 else (1 if x > 0 else -1)


def collinear_apex(inst):
    P, v = inst.P, inst.v
    return orientR(P[(v - 1) % N], P[v], P[(v + 1) % N]) == 0
