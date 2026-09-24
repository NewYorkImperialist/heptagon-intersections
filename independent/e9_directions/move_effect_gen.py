"""move_effect_gen.py -- generators of simple heptagon pairs, including
deliberately degenerate ones.

Every polygon produced is re-checked against AKR9.SimpleClosed; failures are
discarded and counted, so the caller can see the acceptance rate.
"""

import random
from fractions import Fraction as F
from functools import cmp_to_key

from move_effect_lib import (N, simple_closed, orientR, sub, add, smul, cross,
                             segDeg, segDegP, coincSet,
                             finite_boundary_intersection)

STATS = {}


def bump(k, n=1):
    STATS[k] = STATS.get(k, 0) + n


def _angle_cmp(c):
    def half(p):
        d = sub(p, c)
        # lower half-plane (including the negative x axis) sorts after
        return 0 if (d[1] > 0 or (d[1] == 0 and d[0] > 0)) else 1

    def cmp(a, b):
        ha, hb = half(a), half(b)
        if ha != hb:
            return -1 if ha < hb else 1
        x = cross(sub(a, c), sub(b, c))
        if x > 0:
            return -1
        if x < 0:
            return 1
        # same ray: nearer first
        da = sub(a, c)
        db = sub(b, c)
        na = da[0] * da[0] + da[1] * da[1]
        nb = db[0] * db[0] + db[1] * db[1]
        return -1 if na < nb else (1 if na > nb else 0)
    return cmp


def random_simple_heptagon(rng, lo, hi, denom_choices=(1, 1, 1, 2)):
    """Star-shaped-by-construction heptagon, then verified against SimpleClosed."""
    for _ in range(80):
        pts = set()
        while len(pts) < N:
            d = rng.choice(denom_choices)
            pts.add((F(rng.randint(lo * d, hi * d), d),
                     F(rng.randint(lo * d, hi * d), d)))
        pts = list(pts)
        cx = sum(p[0] for p in pts) / N
        cy = sum(p[1] for p in pts) / N
        pts.sort(key=cmp_to_key(_angle_cmp((cx, cy))))
        W = tuple(pts)
        if simple_closed(W):
            return W
        bump('heptagon_rejected')
    return None


def random_pair(rng, spread=0):
    """A P and a Q that actually overlap each other's bounding box."""
    P = random_simple_heptagon(rng, -14, 14)
    if P is None:
        return None
    dx = rng.randint(-spread, spread) if spread else 0
    dy = rng.randint(-spread, spread) if spread else 0
    Q = random_simple_heptagon(rng, -14, 14)
    if Q is None:
        return None
    Q = tuple((p[0] + dx, p[1] + dy) for p in Q)
    return P, Q


# --------------------------------------------------------------- degeneracies

def snap_Q_onto_P_side(P, Q, k, j, t):
    """Put Q[j] at the EXACT rational interior point P[k] + t*(P[k+1]-P[k])."""
    u = sub(P[(k + 1) % N], P[k])
    Qn = list(Q)
    Qn[j] = add(P[k], smul(t, u))
    return tuple(Qn)


def snap_P_onto_Q_side(P, Q, i, j, t):
    """Put P[i] at the EXACT rational interior point Q[j] + t*(Q[j+1]-Q[j])."""
    u = sub(Q[(j + 1) % N], Q[j])
    Pn = list(P)
    Pn[i] = add(Q[j], smul(t, u))
    return tuple(Pn)


TS = [F(1, 2), F(1, 3), F(2, 3), F(1, 4), F(3, 4), F(1, 5), F(2, 5), F(3, 5),
      F(4, 5), F(1, 7), F(5, 7), F(1, 10), F(9, 10), F(1, 100), F(99, 100)]


def gen_incident_segDeg(rng):
    """A pair carrying a deliberate segDeg degeneracy on a side INCIDENT to P[i]."""
    pr = random_pair(rng, spread=6)
    if pr is None:
        return None
    P, Q = pr
    i = rng.randrange(N)
    k = i if rng.random() < 0.5 else (i - 1) % N
    j = rng.randrange(N)
    t = rng.choice(TS)
    Q2 = snap_Q_onto_P_side(P, Q, k, j, t)
    if not simple_closed(Q2):
        bump('snapQ_broke_simplicity')
        return None
    return dict(P=P, Q=Q2, i=i, kind=f'segDeg@side{"i" if k == i else "i-1"}')


def gen_incident_segDegP(rng):
    """A pair carrying a deliberate segDegP degeneracy at the moving vertex P[i]."""
    pr = random_pair(rng, spread=6)
    if pr is None:
        return None
    P, Q = pr
    i = rng.randrange(N)
    j = rng.randrange(N)
    t = rng.choice(TS)
    P2 = snap_P_onto_Q_side(P, Q, i, j, t)
    if not simple_closed(P2):
        bump('snapP_broke_simplicity')
        return None
    return dict(P=P2, Q=Q, i=i, kind='segDegP@P[i]')


def gen_coincidence(rng, where):
    """A deliberate vertex-vertex coincidence Q[j] = P[v] with
    v in {i, i+1, i-1} -- the §9.1 situation and its two neighbours."""
    pr = random_pair(rng, spread=6)
    if pr is None:
        return None
    P, Q = pr
    i = rng.randrange(N)
    v = {'apex': i, 'next': (i + 1) % N, 'prev': (i - 1) % N}[where]
    j = rng.randrange(N)
    Qn = list(Q)
    Qn[j] = P[v]
    Q2 = tuple(Qn)
    if not simple_closed(Q2):
        bump('coinc_broke_simplicity')
        return None
    return dict(P=P, Q=Q2, i=i, kind=f'coinc@{where}')


def gen_collinear_touch(rng):
    """A Q-side collinear with P-side i, meeting it in exactly ONE point
    (the apex P[i]).  This is the family where (Fin) is actually at risk:
    sliding P[i] along the common line creates a positive-length overlap."""
    pr = random_pair(rng, spread=8)
    if pr is None:
        return None
    P, Q = pr
    i = rng.randrange(N)
    j = rng.randrange(N)
    u = sub(P[(i + 1) % N], P[i])          # P-side i direction
    s = rng.choice([F(1, 2), F(1), F(2), F(1, 3), F(3)])
    Qn = list(Q)
    Qn[j] = P[i]
    Qn[(j + 1) % N] = add(P[i], smul(-s, u))   # runs AWAY from P-side i
    Q2 = tuple(Qn)
    if not simple_closed(Q2):
        bump('collinear_broke_simplicity')
        return None
    if not finite_boundary_intersection(P, Q2):
        bump('collinear_already_infinite')
        return None
    return dict(P=P, Q=Q2, i=i, kind='collinear-touch')


def gen_plain(rng):
    pr = random_pair(rng, spread=6)
    if pr is None:
        return None
    P, Q = pr
    return dict(P=P, Q=Q, i=rng.randrange(N), kind='plain')
