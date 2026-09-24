"""ptbreak_gen.py -- instance families for the attack, including the
structurally hard ones the conjecture is most exposed to.

The threatening mechanism is a degenerate point sitting on a P-side INCIDENT to
the moving apex (other than the coincidence itself): the pivot carries that
point off the side, so the degPt dies.  The families below build such points
DELIBERATELY rather than hoping a random snap produces them.

The key construction (`build_around_Q`) goes the other way round from the usual
"random P, random Q, snap something": it picks Q first, then lays the two
incident P-sides along rays FROM the apex THROUGH chosen Q-vertices, so those
Q-vertices are interior points of the incident sides by construction.  The rest
of P is then closed up far away and the result is verified exactly.
"""

import math
import os
import random
import sys
from fractions import Fraction as F

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

from move_effect_lib import (            # noqa: E402
    N, sub, add, smul, cross, dot, orientR, onSeg, simple_closed, coincSet,
    crossPairs, finite_boundary_intersection,
)
from move_effect_gen import random_simple_heptagon   # noqa: E402
from ptbreak_lib import Inst, incident_deg_anatomy, collinear_apex  # noqa: E402

STATS = {}


def bump(k, n=1):
    STATS[k] = STATS.get(k, 0) + n


def rat(x, den=1000):
    return F(int(round(x * den)), den)


def _close_up(X0, Pm1, Pp1, rng, rmul=3.0, jag=0.0):
    """Return the 4 remaining P-vertices, placed on a far arc that runs from
    P[v+1] around the OUTSIDE of the V back to P[v-1]."""
    a1 = math.atan2(float(Pm1[1] - X0[1]), float(Pm1[0] - X0[0]))
    a2 = math.atan2(float(Pp1[1] - X0[1]), float(Pp1[0] - X0[0]))
    # sweep from a2 to a1 the long way round the V
    sweep = (a1 - a2) % (2 * math.pi)
    R = rmul * max(1.0, max(abs(float(Pm1[0] - X0[0])), abs(float(Pm1[1] - X0[1])),
                            abs(float(Pp1[0] - X0[0])), abs(float(Pp1[1] - X0[1]))))
    out = []
    for i in range(1, 5):
        t = i / 5.0
        th = a2 + sweep * t + rng.uniform(-0.12, 0.12)
        r = R * (1.0 + rng.uniform(0.0, 0.8))
        if jag and i % 2 == 0:
            r = R * jag
        out.append((X0[0] + rat(r * math.cos(th)), X0[1] + rat(r * math.sin(th))))
    return out


def build_around_Q(rng, Q, j, a, b, s1, s2, collinear=False, rmul=3.0, jag=0.0):
    """P with apex P[v]=Q[j], incident side v-1 running from P[v-1] through
    Q[a] to the apex, and incident side v running from the apex through Q[b]
    to P[v+1].  With collinear=True the two rays are made exactly opposite, so
    P[v-1], P[v], P[v+1] are collinear (allowed by SimpleClosed)."""
    X0 = Q[j]
    u = sub(Q[a], X0)
    if u == (0, 0):
        return None
    if collinear:
        w = (-u[0], -u[1])
    else:
        w = sub(Q[b], X0)
        if w == (0, 0) or cross(u, w) == 0:
            return None
    Pm1 = add(X0, smul(s1, u))
    Pp1 = add(X0, smul(s2, w))
    rest = _close_up(X0, Pm1, Pp1, rng, rmul=rmul, jag=jag)
    v = 1
    P = (Pm1, X0, Pp1) + tuple(rest)      # v-1 = index 0, v = 1, v+1 = 2
    if not simple_closed(P):
        bump('build_P_not_simple')
        return None
    if not finite_boundary_intersection(P, Q):
        bump('build_not_finite')
        return None
    return P, v


def snap_onto_ray(Q, c, X0, u, t):
    """Move Q[c] to X0 + t*u exactly."""
    Qn = list(Q)
    Qn[c] = add(X0, smul(t, u))
    return tuple(Qn)


TS_IN = [F(1, 4), F(1, 3), F(2, 5), F(1, 2), F(3, 5), F(2, 3), F(3, 4),
         F(4, 5), F(1, 10), F(9, 10), F(1, 7), F(6, 7)]


def _pick_nonadjacent(rng, j, used):
    for _ in range(40):
        c = rng.randrange(N)
        if c in used:
            continue
        if c in ((j - 1) % N, j, (j + 1) % N):
            continue
        return c
    return None


# ------------------------------------------------------------------ families

def fam_random(rng):
    """Baseline: random P and Q, Q translated so that some Q[j] == P[v]."""
    P = random_simple_heptagon(rng, -14, 14)
    Q = random_simple_heptagon(rng, -14, 14)
    if P is None or Q is None:
        return None
    v = rng.randrange(N)
    j = rng.randrange(N)
    t = sub(P[v], Q[j])
    Q = tuple(add(q, t) for q in Q)
    return P, Q, v, 'random', ''


def _hard(rng, n_extra_left=0, n_extra_right=0, collinear=False,
          rmul=3.0, jag=0.0, tag='two_touch'):
    """Both incident P-sides carry a non-apex degenerate point, plus optional
    extra snapped ones on the same two rays."""
    Q0 = random_simple_heptagon(rng, -14, 14)
    if Q0 is None:
        return None
    j = rng.randrange(N)
    a = _pick_nonadjacent(rng, j, {j})
    b = _pick_nonadjacent(rng, j, {j, a})
    if a is None or b is None:
        return None
    X0 = Q0[j]
    u = sub(Q0[a], X0)
    if u == (0, 0):
        return None
    Q = Q0
    if collinear:
        # Q[b] must be snapped onto the OPPOSITE ray so that side v carries it
        w = (-u[0], -u[1])
        Q = snap_onto_ray(Q, b, X0, w, rng.choice(TS_IN))
        if not simple_closed(Q):
            bump('collinear_snapQ_broke_simplicity')
            return None
    else:
        w = sub(Q[b], X0)
        if w == (0, 0) or cross(u, w) == 0:
            return None
    # extra degenerate points on the two rays
    used = {j, a, b}
    for (nx, ray) in ((n_extra_left, u), (n_extra_right, w)):
        for _ in range(nx):
            c = _pick_nonadjacent(rng, j, used)
            if c is None:
                return None
            used.add(c)
            Q = snap_onto_ray(Q, c, X0, ray, rng.choice(TS_IN))
            if not simple_closed(Q):
                bump('extra_snap_broke_simplicity')
                return None
    s1 = F(1, 1) + rng.choice([F(1, 4), F(1, 2), F(1, 1), F(2, 1)])
    s2 = F(1, 1) + rng.choice([F(1, 4), F(1, 2), F(1, 1), F(2, 1)])
    # every snapped point must be strictly inside its side
    got = build_around_Q(rng, Q, j, a, b, s1, s2, collinear=collinear,
                         rmul=rmul, jag=jag)
    if got is None:
        return None
    P, v = got
    return P, Q, v, tag, ''


def fam_two_touch(rng):
    return _hard(rng, 0, 0, tag='two_touch')


def fam_many_touch(rng):
    return _hard(rng, rng.randint(1, 2), rng.randint(1, 2), tag='many_touch')


def fam_collinear(rng):
    return _hard(rng, rng.randint(0, 1), rng.randint(0, 1), collinear=True,
                 tag='collinear_apex')


def fam_high_cross(rng):
    return _hard(rng, rng.randint(0, 2), rng.randint(0, 2),
                 rmul=1.05, jag=0.45, tag='high_cross')


def fam_multi_coinc(rng):
    """Two simultaneous coincidences: the apex, plus one at an adjacent P
    vertex (P[v+1] snapped onto a Q vertex)."""
    got = _hard(rng, rng.randint(0, 1), rng.randint(0, 1), tag='multi_coinc')
    if got is None:
        return None
    P, Q, v, tag, note = got
    # place a further Q-vertex exactly on P[v+1] (or P[v-1])
    which = (v + 1) % N if rng.random() < 0.5 else (v - 1) % N
    target = P[which]
    used = set()
    for (uu, jj) in coincSet(P, Q):
        used.add(jj)
    cands = [c for c in range(N) if c not in used]
    rng.shuffle(cands)
    for c in cands:
        Qn = list(Q)
        Qn[c] = target
        Qn = tuple(Qn)
        if not simple_closed(Qn):
            continue
        if not finite_boundary_intersection(P, Qn):
            continue
        return P, Qn, v, 'multi_coinc', f'2nd coincidence P[{which}]==Q[{c}]'
    return None


FAMILIES = {
    'random': fam_random,
    'two_touch': fam_two_touch,
    'many_touch': fam_many_touch,
    'collinear_apex': fam_collinear,
    'high_cross': fam_high_cross,
    'multi_coinc': fam_multi_coinc,
}


def make(rng, family, tries=60, require_incident_deg=True):
    """Draw one VALID instance of the given family, or None."""
    fn = FAMILIES[family]
    for _ in range(tries):
        got = fn(rng)
        if got is None:
            continue
        P, Q, v, tag, note = got
        if not simple_closed(P) or not simple_closed(Q):
            bump(f'{family}:not_simple')
            continue
        if not finite_boundary_intersection(P, Q):
            bump(f'{family}:not_finite')
            continue
        inst = Inst(P, Q, v, family=family, note=note)
        if inst.j0 is None:
            bump(f'{family}:no_coincidence_at_apex')
            continue
        an = incident_deg_anatomy(inst)
        if require_incident_deg and family != 'random' and not an:
            bump(f'{family}:no_incident_degeneracy')
            continue
        inst.anat = an
        return inst
    return None
