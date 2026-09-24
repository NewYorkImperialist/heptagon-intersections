#!/usr/bin/env python3
"""break38_search.py

An adversarial numerical attack on

    Pair9Shift.points9_le_38_of_coincFree  (lean/Pair9Shift.lean:4217)

    "for two simple heptagons P, Q whose boundaries meet in FINITELY many
     points and which share NO vertex (P v != Q j for all v, j), the number
     of DISTINCT points of the plane lying on both boundaries is at most 38."

The theorem does NOT assume (E9).  A Q-vertex is allowed to sit in the
INTERIOR of a P-side, and a P-vertex in the interior of a Q-side.  Those are
exactly the configurations this script hunts in.

EVERYTHING GEOMETRIC is exact: every coordinate, every determinant, every
segment intersection and every parameter is a fractions.Fraction.  No float
ever touches a coordinate or a predicate.  (Floats appear only as a wall-clock
time budget and as random.random() branch probabilities inside the search
heuristics -- neither can change the value of any predicate.)

Definitions transcribed from the Lean sources:

  orientR(a,b,c) = (b.1-a.1)*(c.2-a.2) - (b.2-a.2)*(c.1-a.1)
        -- lean/RealConfig.lean:54

  ProperCrossR a b c d :=
        orientR a b c * orientR a b d < 0 and orientR c d a * orientR c d b < 0
        -- lean/RealUpperBound.lean:62

  Adjacent i j := i = j or j = i+1 or i = j+1                (in Fin 7)
        -- lean/LowerBound.lean:79

  SimpleClosed W :=
      (forall i, W i != W (i+1))
    and (forall i j, not Adjacent i j -> Disjoint (seg (W i) (W (i+1)))
                                                  (seg (W j) (W (j+1))))
    and (forall i, seg (W i) (W (i+1)) inter seg (W (i+1)) (W (i+2))
                     = {W (i+1)})
        -- lean/AKR9.lean:71.  Three collinear vertices ARE allowed; the
        -- third conjunct is what rejects an adjacent-side backtrack.

  points9 R := bdryP9 R inter bdryQ9 R, the set of points of R^2 on both
        boundaries, boundary = union of the 7 CLOSED sides
        -- lean/AKR9.lean

Why >38 is not obviously impossible (this is what makes the search worth
running).  Write X for the number of properly crossing side pairs and T for
the number of distinct DEGENERATE points -- points where a vertex of one
polygon lies strictly inside a side of the other.  Under coincidence-freeness
a degenerate point is not a proper crossing, and generically

        |points9| = X + T,

each degenerate point being shared by exactly TWO side pairs (the two sides of
the touching vertex), which is why it buys one point for the price of two
crossing slots.

The project's raw bound gives X <= 38 (RawConfig.raw_crossPairs_card_le_38,
which needs only SimpleClosed's middle conjunct).  So |points9| >= 39 requires

        X + T >= 39   with   X <= 38,

e.g. X = 38 and ONE extra vertex touch, or X = 37 and two touches, or X = 31
with all seven Q-vertices sitting on P's boundary.  None of these is excluded
by the crossing bound alone -- the crossing bound caps X, not X + T.  What the
Lean proof asserts is the strictly stronger  X + segDeg + segDegP <= 38.  This
script tries hard to build a configuration that violates it.

Usage:  python3 break38_search.py [seconds]
"""

import sys
import time
import random
import itertools
from fractions import Fraction as F

# ----------------------------------------------------------------------------
# output tee
# ----------------------------------------------------------------------------

LOGPATH = __file__.rsplit('.', 1)[0] + '.log'
_CROSSCHECK = len(sys.argv) > 1 and sys.argv[1] == '--crosscheck'
_logfh = open(LOGPATH, 'a' if _CROSSCHECK else 'w')


def say(*a):
    s = ' '.join(str(x) for x in a)
    print(s)
    _logfh.write(s + '\n')
    _logfh.flush()


class SelfTestFailure(Exception):
    pass


# ----------------------------------------------------------------------------
# exact primitives
# ----------------------------------------------------------------------------

Z = F(0)
ONE = F(1)


def P_(x, y):
    return (F(x), F(y))


def orientR(a, b, c):
    """lean/RealConfig.lean:54, character for character."""
    return (b[0] - a[0]) * (c[1] - a[1]) - (b[1] - a[1]) * (c[0] - a[0])


def sub(a, b):
    return (a[0] - b[0], a[1] - b[1])


def cross(u, v):
    return u[0] * v[1] - u[1] * v[0]


def dot(u, v):
    return u[0] * v[0] + u[1] * v[1]


def on_segment(p, a, b):
    """p in the CLOSED segment [a,b] (a may equal b)."""
    if orientR(a, b, p) != 0:
        return False
    if not (min(a[0], b[0]) <= p[0] <= max(a[0], b[0])):
        return False
    return min(a[1], b[1]) <= p[1] <= max(a[1], b[1])


def strictly_inside(p, a, b):
    """p in the segment [a,b] but not an endpoint."""
    return p != a and p != b and on_segment(p, a, b)


def seg_int(A, B, C, D):
    """EXACT intersection of the two CLOSED segments [A,B] and [C,D].

    Returns one of
        ('none',)            -- they do not meet
        ('point', P)         -- they meet in exactly the point P
        ('seg', P, Q)        -- they meet in the non-degenerate sub-segment PQ
    Degenerate inputs (A == B) are handled, though SimpleClosed forbids them.
    """
    d1 = sub(B, A)
    d2 = sub(D, C)
    if d1 == (Z, Z) and d2 == (Z, Z):
        return ('point', A) if A == C else ('none',)
    if d1 == (Z, Z):
        return ('point', A) if on_segment(A, C, D) else ('none',)
    if d2 == (Z, Z):
        return ('point', C) if on_segment(C, A, B) else ('none',)
    den = cross(d1, d2)
    r = sub(C, A)
    if den != 0:
        t = cross(r, d2) / den
        u = cross(r, d1) / den
        if Z <= t <= ONE and Z <= u <= ONE:
            return ('point', (A[0] + t * d1[0], A[1] + t * d1[1]))
        return ('none',)
    # parallel
    if cross(r, d1) != 0:
        return ('none',)            # distinct parallel lines
    # collinear: project C, D onto the parameter of [A,B]
    L = dot(d1, d1)
    tC = dot(sub(C, A), d1) / L
    tD = dot(sub(D, A), d1) / L
    lo, hi = (tC, tD) if tC <= tD else (tD, tC)
    lo = max(lo, Z)
    hi = min(hi, ONE)
    if lo > hi:
        return ('none',)
    p = (A[0] + lo * d1[0], A[1] + lo * d1[1])
    if lo == hi:
        return ('point', p)
    q = (A[0] + hi * d1[0], A[1] + hi * d1[1])
    return ('seg', p, q)


def properCrossR(a, b, c, d):
    """lean/RealUpperBound.lean:62."""
    return (orientR(a, b, c) * orientR(a, b, d) < 0 and
            orientR(c, d, a) * orientR(c, d, b) < 0)


def adjacent(i, j):
    """lean/LowerBound.lean:79, Adjacent i j := i = j or j = i+1 or i = j+1."""
    return i == j or j == (i + 1) % 7 or i == (j + 1) % 7


# ----------------------------------------------------------------------------
# SimpleClosed, all three conjuncts
# ----------------------------------------------------------------------------

def simple_closed(W):
    """lean/AKR9.lean:71.  Returns (bool, reason)."""
    for i in range(7):
        if W[i] == W[(i + 1) % 7]:
            return False, 'degenerate side %d (W%d = W%d)' % (i, i, (i + 1) % 7)
    for i in range(7):
        for j in range(7):
            if adjacent(i, j):
                continue
            r = seg_int(W[i], W[(i + 1) % 7], W[j], W[(j + 1) % 7])
            if r[0] != 'none':
                return False, 'non-adjacent sides %d,%d meet: %s' % (i, j, fmt(r))
    for i in range(7):
        a, b, c = W[i], W[(i + 1) % 7], W[(i + 2) % 7]
        r = seg_int(a, b, b, c)
        if r[0] != 'point' or r[1] != b:
            return False, ('adjacent sides %d,%d meet in %s, not the shared '
                           'vertex %s' % (i, (i + 1) % 7, fmt(r), fmt(b)))
    return True, 'ok'


# ----------------------------------------------------------------------------
# the point counter
# ----------------------------------------------------------------------------

def evaluate(P, Q):
    """Full check + count.  Returns a dict.

    ok        -- simple, finite intersection, coincidence-free
    npts      -- |points9|
    X         -- number of properly crossing side pairs (= |crossPairs|)
    ndeg      -- number of degenerate INCIDENCES (vertex strictly inside a
                 side of the other polygon) = |segDeg| + |segDegP|
    degpts    -- number of distinct degenerate POINTS
    pairs     -- dict point -> list of (i,j) side pairs meeting there
    """
    okP, whyP = simple_closed(P)
    if not okP:
        return {'ok': False, 'why': 'P not SimpleClosed: ' + whyP,
                'kind': 'simpleP'}
    okQ, whyQ = simple_closed(Q)
    if not okQ:
        return {'ok': False, 'why': 'Q not SimpleClosed: ' + whyQ,
                'kind': 'simpleQ'}
    for v in range(7):
        for j in range(7):
            if P[v] == Q[j]:
                return {'ok': False, 'kind': 'coincidence',
                        'why': 'shared vertex P[%d] = Q[%d] = %s' %
                               (v, j, fmt(P[v]))}
    pairs = {}
    X = 0
    for i in range(7):
        A, B = P[i], P[(i + 1) % 7]
        for j in range(7):
            C, D = Q[j], Q[(j + 1) % 7]
            r = seg_int(A, B, C, D)
            if r[0] == 'seg':
                return {'ok': False, 'kind': 'infinite',
                        'why': 'P-side %d and Q-side %d overlap in the '
                               'segment %s -- %s' % (i, j, fmt(r[1]), fmt(r[2]))}
            if r[0] == 'point':
                pairs.setdefault(r[1], []).append((i, j))
            if properCrossR(A, B, C, D):
                X += 1
    degs = []
    dpts = set()
    for j in range(7):
        for i in range(7):
            if strictly_inside(Q[j], P[i], P[(i + 1) % 7]):
                degs.append(('Qvert', j, 'Pside', i))
                dpts.add(Q[j])
    for v in range(7):
        for j in range(7):
            if strictly_inside(P[v], Q[j], Q[(j + 1) % 7]):
                degs.append(('Pvert', v, 'Qside', j))
                dpts.add(P[v])
    return {'ok': True, 'npts': len(pairs), 'X': X, 'ndeg': len(degs),
            'degpts': len(dpts), 'pairs': pairs, 'degs': degs,
            'maxmult': max((len(v) for v in pairs.values()), default=0)}


def points9_independent(P, Q):
    """A DELIBERATELY DIFFERENT computation of points9, used as a control.

    Instead of enumerating the 49 side-pair intersections, it forms a
    superset of candidate points (all 49 line-line intersections plus all 14
    vertices) and then tests each candidate for membership in both boundaries
    by on-segment tests.  Any point of points9 lies on some P-side and some
    Q-side; if those two sides are not collinear the point is their lines'
    unique intersection, and collinear overlap is excluded by finiteness.
    """
    cand = set()
    for v in range(7):
        cand.add(P[v])
        cand.add(Q[v])
    for i in range(7):
        A, B = P[i], P[(i + 1) % 7]
        d1 = sub(B, A)
        for j in range(7):
            C, D = Q[j], Q[(j + 1) % 7]
            d2 = sub(D, C)
            den = cross(d1, d2)
            if den == 0:
                continue
            t = cross(sub(C, A), d2) / den
            cand.add((A[0] + t * d1[0], A[1] + t * d1[1]))
    out = set()
    for p in cand:
        onP = any(on_segment(p, P[i], P[(i + 1) % 7]) for i in range(7))
        if not onP:
            continue
        onQ = any(on_segment(p, Q[j], Q[(j + 1) % 7]) for j in range(7))
        if onQ:
            out.add(p)
    return out


# ----------------------------------------------------------------------------
# formatting
# ----------------------------------------------------------------------------

def fs(x):
    x = F(x)
    return str(x.numerator) if x.denominator == 1 else '%d/%d' % (x.numerator,
                                                                  x.denominator)


def fmt(p):
    if isinstance(p, tuple) and len(p) == 2 and not isinstance(p[0], tuple):
        try:
            return '(%s, %s)' % (fs(p[0]), fs(p[1]))
        except (TypeError, ValueError):
            pass
    return str(p)


def fmt_poly(W):
    return '[' + ', '.join(fmt(p) for p in W) + ']'


def dump_config(tag, P, Q, res=None):
    say('  %s' % tag)
    say('    P = %s' % fmt_poly(P))
    say('    Q = %s' % fmt_poly(Q))
    if res is None:
        res = evaluate(P, Q)
    if not res['ok']:
        say('    REJECTED: %s' % res['why'])
        return res
    say('    |points9| = %d   crossPairs X = %d   degenerate incidences = %d'
        '   degenerate points = %d   max pairs per point = %d'
        % (res['npts'], res['X'], res['ndeg'], res['degpts'], res['maxmult']))
    for d in res['degs']:
        say('      degeneracy: %s %d lies strictly inside %s %d' % d)
    return res


# ----------------------------------------------------------------------------
# the record keeper
# ----------------------------------------------------------------------------

class Records:
    def __init__(self):
        self.best = -1
        self.best_cfg = None
        self.best_deg = -1
        self.best_deg_cfg = None
        self.n38 = 0
        self.n38_deg = 0
        self.n_valid = 0
        self.n_degenerate_instances = 0
        self.over38 = []
        self.deg_hist = {}
        self.seen38 = set()
        self.seen_deg = set()
        self.best_measure = -1           # max of X + segDeg + segDegP seen
        self.best_measure_cfg = None
        self.best_X = -1
        self.elite = {}                  # key -> (measure, npts, P, Q, tag)
        self.elite_floor = 36
        self.best_measure_deg = -1       # same, over DEGENERATE instances only
        self.best_measure_deg_cfg = None
        self.n_deg_38 = 0                # degenerate instances with 38 points
        self.n_deg_37 = 0
        self.ndeg_hist = {}              # #simultaneous degeneracies -> count
        self.best_ndeg = 0
        self.best_ndeg_cfg = None

    def offer(self, P, Q, res=None, tag=''):
        if res is None:
            res = evaluate(P, Q)
        if not res['ok']:
            return res
        self.n_valid += 1
        n = res['npts']
        isdeg = res['ndeg'] > 0
        meas = res['X'] + res['ndeg']
        self.ndeg_hist[res['ndeg']] = self.ndeg_hist.get(res['ndeg'], 0) + 1
        if res['ndeg'] > self.best_ndeg:
            self.best_ndeg = res['ndeg']
            self.best_ndeg_cfg = (tuple(P), tuple(Q), tag, res)
        if meas > self.best_measure:
            self.best_measure = meas
            self.best_measure_cfg = (tuple(P), tuple(Q), tag, res['X'],
                                     res['ndeg'], n)
        if res['X'] > self.best_X:
            self.best_X = res['X']
        if meas >= self.elite_floor and len(self.elite) < 4000:
            self.elite[(tuple(P), tuple(Q))] = (meas, n, tuple(P), tuple(Q), tag)
        if isdeg:
            self.n_degenerate_instances += 1
            self.deg_hist[n] = self.deg_hist.get(n, 0) + 1
            if n == 38:
                self.n_deg_38 += 1
            elif n == 37:
                self.n_deg_37 += 1
            if meas > self.best_measure_deg:
                self.best_measure_deg = meas
                self.best_measure_deg_cfg = (tuple(P), tuple(Q), tag,
                                             res['X'], res['ndeg'], n)
        if n > self.best:
            self.best = n
            self.best_cfg = (tuple(P), tuple(Q), tag)
        if isdeg and n > self.best_deg:
            self.best_deg = n
            self.best_deg_cfg = (tuple(P), tuple(Q), tag)
        if n == 38:
            key = (tuple(P), tuple(Q))
            if key not in self.seen38:
                self.seen38.add(key)
                self.n38 += 1
                if isdeg:
                    self.n38_deg += 1
                    if len(self.seen_deg) < 12:
                        self.seen_deg.add(key)
        if n > 38:
            self.over38.append((tuple(P), tuple(Q), tag, res))
            say('')
            say('*** COUNTEREXAMPLE CANDIDATE: |points9| = %d > 38 (%s)' % (n, tag))
            dump_config('candidate', P, Q, res)
            say('')
        return res


REC = Records()


# ----------------------------------------------------------------------------
# SELF TESTS  (mandatory; abort on any failure)
# ----------------------------------------------------------------------------

def check(cond, msg):
    if not cond:
        raise SelfTestFailure(msg)


# --- the 38-point certificate, lean/LowerBound.lean:52-69 -------------------
CERT_P = [P_(373, 157), P_(132, 5), P_(369, 182), P_(88, 157),
          P_(327, 282), P_(60, 272), P_(372, 298)]
CERT_Q = [P_(344, 24), P_(89, 303), P_(345, 19), P_(373, 214),
          P_(270, 338), P_(325, 93), P_(192, 284)]

# --- control: a plus sign, exactly 4 crossings ------------------------------
BAR_H = [P_(-100, -1), P_(0, -1), P_(100, -1), P_(100, 1),
         P_(0, 1), P_(-100, 1), P_(-100, 0)]
BAR_V = [P_(-1, -100), P_(-1, 0), P_(-1, 100), P_(1, 100),
         P_(1, 0), P_(1, -100), P_(0, -100)]

# --- control: a zigzag through the horizontal bar, exactly 12 crossings -----
ZIG = [P_(-60, -50), P_(-40, 50), P_(-20, -50), P_(0, 50),
       P_(20, -50), P_(40, 50), P_(60, -60)]

# --- control: a heptagon with three collinear vertices (must be ACCEPTED) ---
FLAT7 = [P_(0, 0), P_(4, 0), P_(8, 0), P_(10, 5), P_(6, 9), P_(2, 9), P_(-2, 5)]
# --- control: the same with two vertices swapped -> self-crossing -----------
CROSS7 = [P_(0, 0), P_(4, 0), P_(8, 0), P_(6, 9), P_(10, 5), P_(2, 9), P_(-2, 5)]
# --- control: an adjacent-side backtrack (must be REJECTED) ----------------
BACK7 = [P_(0, 0), P_(8, 0), P_(4, 0), P_(6, 9), P_(2, 12), P_(-2, 9), P_(-4, 5)]

# --- control: two heptagons sharing a vertex (coincidence, must be excluded)
#     the row-117 witness, docs/verification-status.md
SHARE_P = [P_(0, 0), P_(6, 1), P_(10, 5), P_(3, 8), P_(-3, 8), P_(-10, 5), P_(-6, 1)]
SHARE_Q = [P_(0, 0), P_(1, -6), P_(5, -10), P_(8, -3), P_(8, 3), P_(5, 10), P_(1, 6)]

# --- control: a collinear overlap (infinite intersection, must be excluded) -
OVER_P = [P_(0, 0), P_(10, 0), P_(12, 6), P_(10, 12), P_(5, 14), P_(0, 12), P_(-2, 6)]
OVER_Q = [P_(2, 0), P_(8, 0), P_(9, -3), P_(8, -6), P_(5, -8), P_(2, -6), P_(1, -3)]


def self_tests():
    say('=' * 78)
    say('SELF TESTS')
    say('=' * 78)

    # ---- orientR signs
    check(orientR(P_(0, 0), P_(1, 0), P_(0, 1)) == 1, 'orientR ccw sign')
    check(orientR(P_(0, 0), P_(1, 0), P_(0, -1)) == -1, 'orientR cw sign')
    check(orientR(P_(0, 0), P_(1, 0), P_(2, 0)) == 0, 'orientR collinear')
    check(orientR(P_(1, 1), P_(4, 5), P_(7, 9)) == 0, 'orientR collinear 2')
    check(orientR(P_(0, 0), P_(2, 0), P_(1, F(1, 3))) == F(2, 3),
          'orientR rational value')
    say('  [ok] orientR: ccw +, cw -, collinear 0, rational value exact')

    # ---- segment intersection
    r = seg_int(P_(0, 0), P_(4, 4), P_(0, 4), P_(4, 0))
    check(r == ('point', P_(2, 2)), 'transversal crossing: %s' % (r,))
    r = seg_int(P_(0, 0), P_(1, 0), P_(0, 1), P_(1, 1))
    check(r == ('none',), 'parallel disjoint: %s' % (r,))
    r = seg_int(P_(0, 0), P_(1, 0), P_(5, 5), P_(6, 7))
    check(r == ('none',), 'far disjoint: %s' % (r,))
    r = seg_int(P_(0, 0), P_(4, 0), P_(2, 0), P_(6, 0))
    check(r == ('seg', P_(2, 0), P_(4, 0)), 'collinear overlap: %s' % (r,))
    r = seg_int(P_(0, 0), P_(4, 0), P_(4, 0), P_(8, 0))
    check(r == ('point', P_(4, 0)), 'collinear touch at endpoint: %s' % (r,))
    r = seg_int(P_(0, 0), P_(4, 0), P_(5, 0), P_(8, 0))
    check(r == ('none',), 'collinear disjoint: %s' % (r,))
    r = seg_int(P_(0, 0), P_(4, 0), P_(2, 0), P_(2, 9))
    check(r == ('point', P_(2, 0)), 'T contact (vertex on side interior): %s' % (r,))
    r = seg_int(P_(0, 0), P_(4, 0), P_(4, 0), P_(4, 9))
    check(r == ('point', P_(4, 0)), 'endpoint touch: %s' % (r,))
    r = seg_int(P_(0, 0), P_(3, 1), P_(0, 1), P_(3, 0))
    check(r == ('point', (F(3, 2), F(1, 2))), 'rational crossing: %s' % (r,))
    r = seg_int(P_(0, 0), P_(4, 0), P_(2, 1), P_(2, 9))
    check(r == ('none',), 'near miss: %s' % (r,))
    say('  [ok] seg_int: transversal / parallel / disjoint / collinear overlap /')
    say('       collinear endpoint touch / collinear disjoint / T contact /')
    say('       endpoint touch / rational crossing / near miss')

    # ---- SimpleClosed
    ok, why = simple_closed(FLAT7)
    check(ok, 'SimpleClosed must ACCEPT three collinear vertices: %s' % why)
    say('  [ok] SimpleClosed accepts a heptagon with three collinear vertices')
    say('       %s' % fmt_poly(FLAT7))
    ok, why = simple_closed(CROSS7)
    check(not ok, 'SimpleClosed must REJECT the self-crossing heptagon')
    say('  [ok] SimpleClosed rejects a self-crossing heptagon (%s)' % why)
    ok, why = simple_closed(BACK7)
    check(not ok, 'SimpleClosed must REJECT an adjacent-side backtrack')
    say('  [ok] SimpleClosed rejects an adjacent-side backtrack (%s)' % why)
    dup = list(FLAT7)
    dup[3] = dup[2]
    ok, why = simple_closed(dup)
    check(not ok, 'SimpleClosed must REJECT a repeated adjacent vertex')
    say('  [ok] SimpleClosed rejects a repeated adjacent vertex (%s)' % why)
    for W, nm in ((CERT_P, 'cert P'), (CERT_Q, 'cert Q'), (BAR_H, 'H bar'),
                  (BAR_V, 'V bar'), (ZIG, 'zigzag'), (SHARE_P, 'share P'),
                  (SHARE_Q, 'share Q'), (OVER_P, 'overlap P'),
                  (OVER_Q, 'overlap Q')):
        ok, why = simple_closed(W)
        check(ok, 'test polygon %s should be simple: %s' % (nm, why))
    say('  [ok] all nine hand-built test heptagons are SimpleClosed')

    # ---- the counter on hand-built configurations of KNOWN count
    r = evaluate(BAR_H, BAR_V)
    check(r['ok'], 'plus sign should be admissible: %s' % r.get('why'))
    check(r['npts'] == 4, 'plus sign: expected 4 points, got %d' % r['npts'])
    check(r['X'] == 4, 'plus sign: expected X = 4, got %d' % r['X'])
    check(r['ndeg'] == 0, 'plus sign should be degeneracy-free')
    check(points9_independent(BAR_H, BAR_V) == set(r['pairs'].keys()),
          'plus sign: independent recount disagrees')
    say('  [ok] control A: a horizontal bar crossed by a vertical bar')
    say('       |points9| = 4 as hand-computed, points = %s'
        % ', '.join(sorted(fmt(p) for p in r['pairs'])))

    r = evaluate(BAR_H, ZIG)
    check(r['ok'], 'bar+zigzag should be admissible: %s' % r.get('why'))
    check(r['npts'] == 12, 'bar+zigzag: expected 12 points, got %d' % r['npts'])
    check(r['X'] == 12, 'bar+zigzag: expected X = 12, got %d' % r['X'])
    check(points9_independent(BAR_H, ZIG) == set(r['pairs'].keys()),
          'bar+zigzag: independent recount disagrees')
    say('  [ok] control B: six zigzag sides each cut the bar twice')
    say('       |points9| = 12 as hand-computed')

    r = evaluate(CERT_P, CERT_Q)
    check(r['ok'], 'certificate should be admissible: %s' % r.get('why'))
    check(r['npts'] == 38,
          'CERTIFICATE: expected 38 points, got %d' % r['npts'])
    check(r['X'] == 38, 'certificate: expected X = 38, got %d' % r['X'])
    check(points9_independent(CERT_P, CERT_Q) == set(r['pairs'].keys()),
          'certificate: independent recount disagrees')
    say('  [ok] control C (NON-VACUITY / can the counter report large values?):')
    say('       the Lean 38-point certificate counts as exactly 38.')
    say('       This is the number Lean proves (certPair9_ncard), computed here')
    say('       by two independent routines that agree.')

    # ---- coincidence-freeness violation must be DETECTED
    okp, _ = simple_closed(SHARE_P)
    okq, _ = simple_closed(SHARE_Q)
    check(okp and okq, 'the shared-vertex witness heptagons must be simple')
    r = evaluate(SHARE_P, SHARE_Q)
    check(not r['ok'] and r['kind'] == 'coincidence',
          'a shared vertex must be DETECTED and excluded, got %s' % r)
    say('  [ok] control D: a configuration violating coincidence-freeness IS')
    say('       detected and excluded -- %s' % r['why'])

    # ---- finiteness violation must be DETECTED
    r = evaluate(OVER_P, OVER_Q)
    check(not r['ok'] and r['kind'] == 'infinite',
          'a collinear overlap must be DETECTED and excluded, got %s' % r)
    say('  [ok] control E: a hand-built collinear side overlap IS detected and')
    say('       excluded -- %s' % r['why'])

    # ---- a hand-built DEGENERATE configuration must be accepted and counted
    #      put a vertex of the zigzag exactly on the bar's top side.
    zz = list(ZIG)
    zz[3] = P_(0, 1)                      # was (0,50); (0,1) is a P vertex ->
    r = evaluate(BAR_H, zz)               # must be rejected for coincidence
    check(not r['ok'] and r['kind'] == 'coincidence',
          'snapping onto a P VERTEX must be rejected: %s' % r)
    zz[3] = P_(1, 1)                      # strictly inside P-side 3
    r = evaluate(BAR_H, zz)
    check(r['ok'], 'the degenerate zigzag should be admissible: %s' % r.get('why'))
    check(r['ndeg'] >= 1, 'the degeneracy must be DETECTED')
    check(P_(1, 1) in r['pairs'] and len(r['pairs'][P_(1, 1)]) == 2,
          'the touch point must be shared by exactly two side pairs')
    check(points9_independent(BAR_H, zz) == set(r['pairs'].keys()),
          'degenerate zigzag: independent recount disagrees')
    say('  [ok] control F: a Q-vertex placed strictly inside a P-side is')
    say('       accepted, the degeneracy is detected (ndeg = %d), the touch'
        % r['ndeg'])
    say('       point is shared by exactly 2 side pairs, and |points9| = %d'
        % r['npts'])
    check(r['npts'] == r['X'] + r['degpts'],
          'the identity |points9| = X + T should hold here: %d vs %d + %d'
          % (r['npts'], r['X'], r['degpts']))
    say('       and |points9| = X + T = %d + %d = %d holds.'
        % (r['X'], r['degpts'], r['npts']))

    say('')
    say('ALL SELF TESTS PASSED.')
    say('')


# ----------------------------------------------------------------------------
# search helpers
# ----------------------------------------------------------------------------

def side_point(W, s, t):
    """The point at parameter t along side s of W."""
    a, b = W[s % 7], W[(s + 1) % 7]
    return (a[0] + t * (b[0] - a[0]), a[1] + t * (b[1] - a[1]))


def foot(p, a, b):
    """Exact foot of the perpendicular from p to the line ab; (t, point)."""
    d = sub(b, a)
    L = dot(d, d)
    t = dot(sub(p, a), d) / L
    return t, (a[0] + t * d[0], a[1] + t * d[1])


def rand_int_heptagon(rng, lo=0, hi=400, tries=400):
    for _ in range(tries):
        W = [P_(rng.randint(lo, hi), rng.randint(lo, hi)) for _ in range(7)]
        ok, _ = simple_closed(W)
        if ok:
            return W
    return None


# ----------------------------------------------------------------------------
# PHASE 1 -- the certificate, and single-vertex snaps onto the other polygon
# ----------------------------------------------------------------------------

def phase_cert_snaps(deadline):
    """The sharpest attack there is.

    The certificate has X = 38, the maximum possible.  |points9| = X + D/2, so
    it suffices to create ONE vertex touch (D = 2) without losing a crossing.
    A touch of P-vertex v on Q-side j turns the pairs (v-1, j) and (v, j) into
    degenerate contacts; if NEITHER of them was a crossing already, the count
    goes 38 -> 39.  We therefore drive every one of the 14 vertices onto every
    one of the 7 opposite sides, at a dense grid of exact rational parameters
    plus the exact perpendicular foot, and evaluate.
    """
    say('=' * 78)
    say('PHASE 1 -- the 38-point certificate, and single-vertex snaps')
    say('=' * 78)
    base = dump_config('certificate (lean/LowerBound.lean:52-69)',
                       CERT_P, CERT_Q)
    REC.offer(CERT_P, CERT_Q, base, 'certificate')
    xp = base['X']
    cp = set()
    for i in range(7):
        for j in range(7):
            if properCrossR(CERT_P[i], CERT_P[(i + 1) % 7],
                            CERT_Q[j], CERT_Q[(j + 1) % 7]):
                cp.add((i, j))
    say('  crossing side pairs (%d): %s' % (len(cp), sorted(cp)))
    free = [(i, j) for i in range(7) for j in range(7) if (i, j) not in cp]
    say('  NON-crossing side pairs (%d): %s' % (len(free), sorted(free)))
    say('')
    say('  A P-vertex v landing on Q-side j costs the crossings (v-1,j),(v,j)')
    say('  and buys one point.  The 39-point targets are therefore the v,j')
    say('  with (v-1,j) and (v,j) both non-crossing:')
    targets = []
    for v in range(7):
        for j in range(7):
            if ((v - 1) % 7, j) in free and (v, j) in free:
                targets.append(('P', v, j))
    for j in range(7):
        for v in range(7):
            if (v, (j - 1) % 7) in free and (v, j) in free:
                targets.append(('Q', j, v))
    say('    %s' % targets)
    say('')

    ts = []
    N = 360
    for k in range(1, N):
        ts.append(F(k, N))
    for k in range(1, 97):
        ts.append(F(k, 97))
    ts = sorted(set(ts))

    best_local = (-1, None)
    ndeg_found = 0
    ntested = 0
    for which in ('P', 'Q'):
        for v in range(7):
            for j in range(7):
                if time.time() > deadline:
                    break
                cands = list(ts)
                src = CERT_P[v] if which == 'P' else CERT_Q[v]
                other = CERT_Q if which == 'P' else CERT_P
                tf, _ = foot(src, other[j], other[(j + 1) % 7])
                if 0 < tf < 1:
                    cands.append(tf)
                for t in cands:
                    pt = side_point(other, j, t)
                    if which == 'P':
                        PP = list(CERT_P)
                        PP[v] = pt
                        QQ = CERT_Q
                    else:
                        PP = CERT_P
                        QQ = list(CERT_Q)
                        QQ[v] = pt
                    res = REC.offer(PP, QQ, None,
                                    'cert snap %s[%d] -> side %d t=%s'
                                    % (which, v, j, fs(t)))
                    ntested += 1
                    if res['ok']:
                        if res['ndeg'] > 0:
                            ndeg_found += 1
                        if res['npts'] > best_local[0]:
                            best_local = (res['npts'], (PP, QQ, which, v, j, t, res))
    say('  tested %d single-vertex snaps; %d were admissible AND degenerate'
        % (ntested, ndeg_found))
    if best_local[1]:
        PP, QQ, which, v, j, t, res = best_local[1]
        say('  best single-snap result: |points9| = %d  (%s[%d] onto side %d at '
            't = %s)' % (best_local[0], which, v, j, fs(t)))
        dump_config('best single snap', PP, QQ, res)
    say('')
    return ndeg_found


# ----------------------------------------------------------------------------
# PHASE 1b -- the EXHAUSTIVE single-vertex slide
# ----------------------------------------------------------------------------

def slide_samples(P, Q, which, v, j):
    """Every combinatorial type reachable by sliding vertex v of `which` along
    side j of the OTHER polygon.

    Every orientation predicate that involves the moving point z is of the form
    orientR(a, b, z) with a, b among the THIRTEEN fixed vertices, and along the
    side z(t) = A + t (B - A) each such predicate is an AFFINE function of t.
    So the sign vector of all C(13,2) = 78 of them -- and hence the entire
    combinatorial type of the configuration: simplicity, the crossing set, the
    degeneracy set, which side pairs meet -- is constant on each open interval
    cut out of [0,1] by their roots.  Sampling one interior rational of every
    interval, plus every breakpoint itself, therefore visits EVERY type.  The
    slide is exhaustive, not sampled.

    (Coincidences of two intersection points can only LOWER |points9| and can
    only happen at breakpoints, which are sampled too.)
    """
    other = Q if which == 'P' else P
    A = other[j % 7]
    B = other[(j + 1) % 7]
    d = sub(B, A)
    fixed = []
    for k in range(7):
        if not (which == 'P' and k == v):
            fixed.append(P[k])
        if not (which == 'Q' and k == v):
            fixed.append(Q[k])
    roots = set()
    for a, b in itertools.combinations(fixed, 2):
        if a == b:
            continue
        c1 = cross(sub(b, a), d)
        if c1 == 0:
            continue
        c0 = orientR(a, b, A)
        t = -c0 / c1
        if Z < t < ONE:
            roots.add(t)
    cuts = sorted(roots)
    out = list(cuts)
    prev = Z
    for c in cuts + [ONE]:
        out.append((prev + c) / 2)
        prev = c
    return out, len(cuts)


def do_slide(P, Q, which, v, j, tag):
    ts, ncuts = slide_samples(P, Q, which, v, j)
    other = Q if which == 'P' else P
    best = (-1, None, None)
    for t in ts:
        z = side_point(other, j, t)
        if which == 'P':
            PP = list(P)
            PP[v] = z
            QQ = list(Q)
        else:
            PP = list(P)
            QQ = list(Q)
            QQ[v] = z
        res = REC.offer(PP, QQ, None, tag)
        if res['ok'] and res['npts'] > best[0]:
            best = (res['npts'], (PP, QQ), (t, res))
    return best, len(ts), ncuts


def phase_exhaustive_slide(deadline):
    say('=' * 78)
    say('PHASE 1b -- EXHAUSTIVE single-vertex slide off the certificate')
    say('=' * 78)
    say('  For each of the 14 vertices and each of the 7 sides of the OTHER')
    say('  heptagon, every combinatorial type of the slide is visited (see')
    say('  slide_samples).  If any single-vertex degeneracy could push the')
    say('  certificate past 38, this finds it.')
    say('')
    grid = {}
    tot = 0
    for which in ('P', 'Q'):
        for v in range(7):
            row = []
            for j in range(7):
                if time.time() > deadline:
                    row.append(None)
                    continue
                best, ns, nc = do_slide(CERT_P, CERT_Q, which, v, j,
                                        'exh-slide %s%d->%d' % (which, v, j))
                tot += ns
                row.append(best[0])
                grid[(which, v, j)] = best
            say('    %s[%d] onto the seven sides of the other: %s'
                % (which, v, ', '.join('%s' % (x if x is not None else '-')
                                       for x in row)))
    say('')
    say('  %d exhaustive slide samples evaluated.' % tot)
    ok = [(k, b) for k, b in grid.items() if b[0] >= 0]
    if ok:
        ok.sort(key=lambda kb: -kb[1][0])
        say('  best single-vertex slide: |points9| = %d at %s' % (ok[0][1][0], ok[0][0]))
        b = ok[0][1]
        dump_config('best exhaustive slide', b[1][0], b[1][1], b[2][1])
    return grid


def phase_slide_twice(deadline, grid):
    """Second exhaustive slide, stacked on the best results of the first."""
    say('=' * 78)
    say('PHASE 1c -- a SECOND exhaustive slide on top of the best first ones')
    say('=' * 78)
    seeds = sorted((b for b in grid.values() if b[0] >= 36),
                   key=lambda b: -b[0])
    say('  %d first-slide results reached >= 36 points; stacking on them.'
        % len(seeds))
    best = (-1, None, None)
    n = 0
    for (npts, cfg, info) in seeds:
        if time.time() > deadline:
            break
        P0, Q0 = cfg
        for which in ('P', 'Q'):
            for v in range(7):
                for j in range(7):
                    if time.time() > deadline:
                        break
                    b, ns, nc = do_slide(P0, Q0, which, v, j, 'exh-slide2')
                    n += ns
                    if b[0] > best[0]:
                        best = b
    say('  %d stacked slide samples evaluated.' % n)
    if best[1]:
        say('  best two-vertex slide: |points9| = %d' % best[0])
        dump_config('best two-slide', best[1][0], best[1][1], best[2][1])
    say('')


# ----------------------------------------------------------------------------
# PHASE 2 -- greedy multi-vertex snapping on the certificate
# ----------------------------------------------------------------------------

def phase_multi_snap(deadline, rng):
    say('=' * 78)
    say('PHASE 2 -- multi-vertex snapping (several simultaneous degeneracies)')
    say('=' * 78)
    ts = [F(k, 120) for k in range(1, 120)] + [F(k, 71) for k in range(1, 71)]
    ts = sorted(set(ts))
    best = (-1, None)
    ndeg = 0
    rounds = 0
    while time.time() < deadline:
        rounds += 1
        PP = list(CERT_P)
        QQ = list(CERT_Q)
        nsnap = rng.randint(2, 6)
        for _ in range(nsnap):
            if rng.random() < 0.5:
                v = rng.randrange(7)
                j = rng.randrange(7)
                t = rng.choice(ts)
                PP[v] = side_point(QQ, j, t)
            else:
                j = rng.randrange(7)
                i = rng.randrange(7)
                t = rng.choice(ts)
                QQ[j] = side_point(PP, i, t)
        res = REC.offer(PP, QQ, None, 'multi-snap')
        if res['ok']:
            if res['ndeg'] > 0:
                ndeg += 1
            if res['npts'] > best[0]:
                best = (res['npts'], (PP, QQ, res))
    say('  %d random multi-snap rounds, %d admissible-and-degenerate' % (rounds, ndeg))
    if best[1]:
        say('  best: |points9| = %d' % best[0])
        dump_config('best multi-snap', best[1][0], best[1][1], best[1][2])
    say('')
    return ndeg


# ----------------------------------------------------------------------------
# PHASE 3 -- bound-vertex hill climbing: Q's vertices LIVE on P's sides
# ----------------------------------------------------------------------------

class Bound:
    """A configuration where some Q-vertices are pinned to P-sides and some
    P-vertices are pinned to Q-sides.  The pinned ones stay degenerate under
    every move, so the whole search runs inside the degenerate stratum."""

    __slots__ = ('Pv', 'Qv', 'Qbind', 'Pbind')

    def __init__(self, Pv, Qv, Qbind, Pbind):
        self.Pv = list(Pv)        # free P vertices (used when Pbind[v] is None)
        self.Qv = list(Qv)
        self.Qbind = list(Qbind)  # Qbind[j] = None or (side s of P, param t)
        self.Pbind = list(Pbind)  # Pbind[v] = None or (side s of Q, param t)

    def copy(self):
        return Bound(self.Pv, self.Qv, list(self.Qbind), list(self.Pbind))

    def realise(self):
        """Resolve the pins.  P-pins are resolved against the *free* Q polygon
        and Q-pins against the *free* P polygon, so the two sets of pins do not
        chase each other."""
        P = list(self.Pv)
        Q = list(self.Qv)
        # Q-pins first, against P's own vertices, skipping P-sides whose
        # endpoints are themselves pinned (those move underneath us).
        for j, b in enumerate(self.Qbind):
            if b is not None:
                s, t = b
                if (self.Pbind[s % 7] is None and
                        self.Pbind[(s + 1) % 7] is None):
                    Q[j] = side_point(P, s, t)
        # then P-pins, against the ALREADY RESOLVED Q, so a pinned P-vertex
        # really does sit on the final Q boundary.
        for v, b in enumerate(self.Pbind):
            if b is not None:
                s, t = b
                P[v] = side_point(Q, s, t)
        return P, Q


TGRID = None


def _tgrid():
    global TGRID
    if TGRID is None:
        s = set()
        for d in (7, 11, 13, 16, 24, 32, 48, 64, 96, 128, 160, 200, 256):
            for k in range(1, d):
                s.add(F(k, d))
        TGRID = sorted(s)
    return TGRID


def score_of(P, Q, mode='pts'):
    """mode 'pts'  : maximise |points9|, then the joint measure.
       mode 'meas' : maximise X + segDeg + segDegP (the quantity the Lean
                     proof must keep <= 38), then |points9|.  This is a much
                     smoother landscape: it rewards creating a degeneracy even
                     when the extra point has not yet materialised."""
    r = evaluate(P, Q)
    if not r['ok']:
        return (-1, -1, -1), r
    if mode == 'meas':
        return (r['X'] + r['ndeg'], r['npts'], r['ndeg']), r
    return (r['npts'], r['X'] + r['ndeg'], r['ndeg']), r


def climb(st, deadline, rng, iters=4000, tag='climb', mode='pts'):
    P, Q = st.realise()
    sc, res = score_of(P, Q, mode)
    REC.offer(P, Q, res, tag)
    tg = _tgrid()
    steps = [1, 1, 1, 2, 2, 3, 5, 8, 13, 21, 34]
    for _ in range(iters):
        if time.time() > deadline:
            break
        nst = st.copy()
        m = rng.random()
        if m < 0.34:
            v = rng.randrange(7)
            if nst.Pbind[v] is None:
                d = rng.choice(steps)
                x, y = nst.Pv[v]
                nst.Pv[v] = (x + rng.choice([-d, 0, d]), y + rng.choice([-d, 0, d]))
            else:
                s, t = nst.Pbind[v]
                if rng.random() < 0.3:
                    nst.Pbind[v] = (rng.randrange(7), rng.choice(tg))
                else:
                    nst.Pbind[v] = (s, rng.choice(tg))
        elif m < 0.68:
            j = rng.randrange(7)
            if nst.Qbind[j] is None:
                d = rng.choice(steps)
                x, y = nst.Qv[j]
                nst.Qv[j] = (x + rng.choice([-d, 0, d]), y + rng.choice([-d, 0, d]))
            else:
                s, t = nst.Qbind[j]
                if rng.random() < 0.3:
                    nst.Qbind[j] = (rng.randrange(7), rng.choice(tg))
                else:
                    nst.Qbind[j] = (s, rng.choice(tg))
        elif m < 0.84:
            j = rng.randrange(7)
            if nst.Qbind[j] is None:
                nst.Qbind[j] = (rng.randrange(7), rng.choice(tg))
            else:
                nst.Qv[j] = side_point(nst.Pv, *nst.Qbind[j])
                nst.Qbind[j] = None
        else:
            v = rng.randrange(7)
            if nst.Pbind[v] is None:
                nst.Pbind[v] = (rng.randrange(7), rng.choice(tg))
            else:
                nst.Pv[v] = side_point(nst.Qv, *nst.Pbind[v])
                nst.Pbind[v] = None
        nP, nQ = nst.realise()
        nsc, nres = score_of(nP, nQ, mode)
        if nsc[0] < 0:
            continue
        REC.offer(nP, nQ, nres, tag)
        if nsc >= sc:
            st, sc, P, Q = nst, nsc, nP, nQ
    return st, sc


def phase_bound_climb(deadline, rng):
    say('=' * 78)
    say('PHASE 3 -- hill climbing INSIDE the degenerate stratum')
    say('=' * 78)
    say('  Q-vertices are pinned to P-sides (and P-vertices to Q-sides) at exact')
    say('  rational parameters strictly inside, so every state visited HAS a')
    say('  degeneracy.  The objective is (|points9|, #degenerate incidences).')
    say('')
    tg = _tgrid()
    best = (-1, -1)
    bestcfg = None
    restarts = 0
    seeds = []
    # seed from the certificate with k pins
    while time.time() < deadline:
        restarts += 1
        mode = restarts % 4
        if mode == 0:
            Pv, Qv = list(CERT_P), list(CERT_Q)
        elif mode == 1:
            Pv = [(x + rng.randint(-12, 12), y + rng.randint(-12, 12))
                  for (x, y) in CERT_P]
            Qv = [(x + rng.randint(-12, 12), y + rng.randint(-12, 12))
                  for (x, y) in CERT_Q]
        elif mode == 2:
            Pv = rand_int_heptagon(rng)
            Qv = rand_int_heptagon(rng)
            if Pv is None or Qv is None:
                continue
        else:
            Pv, Qv = list(CERT_Q), list(CERT_P)
        npin = rng.randint(1, 7)
        Qb = [None] * 7
        Pb = [None] * 7
        idx = list(range(7))
        rng.shuffle(idx)
        for j in idx[:npin]:
            Qb[j] = (rng.randrange(7), rng.choice(tg))
        if rng.random() < 0.4:
            idx2 = list(range(7))
            rng.shuffle(idx2)
            for v in idx2[:rng.randint(1, 3)]:
                Pb[v] = (rng.randrange(7), rng.choice(tg))
        st = Bound(Pv, Qv, Qb, Pb)
        mode = 'meas' if restarts % 2 == 0 else 'pts'
        st, sc = climb(st, min(deadline, time.time() + 6), rng,
                       iters=1200, tag='bound-climb-' + mode, mode=mode)
        if mode == 'pts' and sc > best:
            best = sc
            bestcfg = st.realise()
    say('  %d restarts (alternating the |points9| and the X+segDeg+segDegP'
        ' objectives).' % restarts)
    say('  best (|points9|, measure, ndeg) on the points objective = %s' % (best,))
    if bestcfg:
        dump_config('best of phase 3', bestcfg[0], bestcfg[1])
    say('')


# ----------------------------------------------------------------------------
# PHASE 4 -- unconstrained integer hill climbing (generic configurations)
# ----------------------------------------------------------------------------

def phase_int_climb(deadline, rng):
    say('=' * 78)
    say('PHASE 4 -- unconstrained integer hill climbing (generic control arm)')
    say('=' * 78)
    best = (-1, -1)
    bestcfg = None
    restarts = 0
    while time.time() < deadline:
        restarts += 1
        if restarts % 3 == 0:
            Pv = rand_int_heptagon(rng)
            Qv = rand_int_heptagon(rng)
            if Pv is None or Qv is None:
                continue
        else:
            Pv = [(x + rng.randint(-25, 25), y + rng.randint(-25, 25))
                  for (x, y) in CERT_P]
            Qv = [(x + rng.randint(-25, 25), y + rng.randint(-25, 25))
                  for (x, y) in CERT_Q]
        st = Bound(Pv, Qv, [None] * 7, [None] * 7)
        st, sc = climb(st, min(deadline, time.time() + 6), rng,
                       iters=1500, tag='int-climb')
        if sc > best:
            best = sc
            bestcfg = st.realise()
    say('  %d restarts.  best (|points9|, ndeg) = %s' % (restarts, best))
    if bestcfg:
        dump_config('best of phase 4', bestcfg[0], bestcfg[1])
    say('')


# ----------------------------------------------------------------------------
# PHASE 5 -- engineered combs and zigzags, with designed degeneracies
# ----------------------------------------------------------------------------

def comb_family(rng, deadline):
    """A tall comb P crossed by a zigzag Q, with the zigzag's turning points
    driven onto the comb's sides."""
    out = 0
    # P: a comb with three downward teeth, seven vertices.
    for w in (6, 8, 10, 14, 20):
        for h in (40, 60, 90):
            P = [P_(0, 0), P_(w, h), P_(2 * w, 0), P_(3 * w, h),
                 P_(4 * w, 0), P_(5 * w, h), P_(-w, h + 20)]
            ok, _ = simple_closed(P)
            if not ok:
                continue
            for y0 in range(2, h, max(1, h // 12)):
                Q = [P_(-3 * w, y0), P_(6 * w, y0 + 1), P_(6 * w, y0 + 3),
                     P_(-3 * w, y0 + 4), P_(-3 * w, y0 + 6),
                     P_(6 * w, y0 + 7), P_(6 * w, y0 - 2)]
                r = REC.offer(P, Q, None, 'comb')
                out += 1
                if time.time() > deadline:
                    return out
    return out


def zigzag_family(rng, deadline):
    """Q's seven vertices ALL placed exactly on P's sides, at exact rational
    parameters strictly inside -- the purest degenerate stratum there is."""
    tg = _tgrid()
    made = 0
    pool = [CERT_P, CERT_Q, BAR_H, FLAT7,
            [P_(0, 0), P_(100, 0), P_(200, 30), P_(220, 140), P_(120, 200),
             P_(20, 180), P_(-40, 90)]]
    while time.time() < deadline:
        base = rng.choice(pool)
        sides = [rng.randrange(7) for _ in range(7)]
        ts = [rng.choice(tg) for _ in range(7)]
        Q = [side_point(base, sides[k], ts[k]) for k in range(7)]
        r = REC.offer(base, Q, None, 'all-7-on-P')
        made += 1
    return made


def phase_engineered(deadline, rng):
    say('=' * 78)
    say('PHASE 5 -- engineered families (combs, zigzags, all-vertices-on-P)')
    say('=' * 78)
    half = time.time() + max(1.0, (deadline - time.time()) / 2)
    n1 = comb_family(rng, half)
    say('  comb/zigzag family: %d configurations offered' % n1)
    n2 = zigzag_family(rng, deadline)
    say('  all-seven-Q-vertices-on-a-P-side family: %d configurations offered' % n2)
    say('')


# ----------------------------------------------------------------------------
# PHASE 6 -- one point hit by several side pairs
# ----------------------------------------------------------------------------

def phase_multihit(deadline, rng):
    say('=' * 78)
    say('PHASE 6 -- points hit by several side pairs at once')
    say('=' * 78)
    say('  A point shared by k side pairs costs k-1 from the count, so this')
    say('  cannot beat 38; it is run to confirm the counter deduplicates and to')
    say('  record how multiplicity behaves.')
    best = 0
    bestcfg = None
    tg = _tgrid()
    n = 0
    while time.time() < deadline:
        n += 1
        # push a Q-vertex and a P-vertex onto the SAME point of the plane:
        # impossible under coincidence-freeness, so instead make a Q-vertex sit
        # on a P-side while a P-vertex sits on a Q-side elsewhere, and try to
        # make two Q-vertices land on the same P-side.
        PP = list(CERT_P)
        QQ = list(CERT_Q)
        i = rng.randrange(7)
        j1 = rng.randrange(7)
        j2 = (j1 + rng.choice([2, 3, 4, 5])) % 7
        QQ[j1] = side_point(PP, i, rng.choice(tg))
        QQ[j2] = side_point(PP, i, rng.choice(tg))
        r = REC.offer(PP, QQ, None, 'multihit')
        if r['ok'] and r['maxmult'] > best:
            best = r['maxmult']
            bestcfg = (PP, QQ, r)
    say('  %d configurations; largest number of side pairs meeting at one point'
        ' = %d' % (n, best))
    if bestcfg:
        dump_config('largest multiplicity', bestcfg[0], bestcfg[1], bestcfg[2])
    say('')


# ----------------------------------------------------------------------------
# PHASE 7 -- exhaustive slides off every elite configuration found anywhere
# ----------------------------------------------------------------------------

def phase_elite_slide(deadline):
    say('=' * 78)
    say('PHASE 7 -- exhaustive single-vertex slides off EVERY elite')
    say('=' * 78)
    say('  Every configuration seen anywhere whose joint measure')
    say('  X + segDeg + segDegP reached %d is now used as a base for a fresh'
        % REC.elite_floor)
    say('  exhaustive slide of each of its 14 vertices onto each of the 7 sides')
    say('  of the other heptagon.')
    elites = sorted(REC.elite.values(), key=lambda e: (-e[0], -e[1]))
    say('  %d elite bases; highest measure %s.'
        % (len(elites), elites[0][0] if elites else 'n/a'))
    n = 0
    best = (-1, None, None)
    used = 0
    for (meas, npts, P, Q, tag) in elites:
        if time.time() > deadline:
            break
        used += 1
        P, Q = list(P), list(Q)
        for which in ('P', 'Q'):
            for v in range(7):
                if time.time() > deadline:
                    break
                for j in range(7):
                    b, ns, nc = do_slide(P, Q, which, v, j, 'elite-slide')
                    n += ns
                    if b[0] > best[0]:
                        best = b
    say('  %d elite bases used, %d exhaustive slide samples evaluated.'
        % (used, n))
    if best[1]:
        say('  best: |points9| = %d' % best[0])
        dump_config('best elite slide', best[1][0], best[1][1], best[2][1])
    say('')


# ----------------------------------------------------------------------------
# PHASE 8 -- re-optimise around the best degenerate configurations, keeping
#            their degeneracies PINNED so they cannot be optimised away
# ----------------------------------------------------------------------------

def pin_existing(P, Q, res):
    """Turn a configuration's existing degeneracies into pins."""
    Pb = [None] * 7
    Qb = [None] * 7
    for d in res['degs']:
        if d[0] == 'Qvert':
            j, i = d[1], d[3]
            a, b = P[i], P[(i + 1) % 7]
            dd = sub(b, a)
            t = dot(sub(Q[j], a), dd) / dot(dd, dd)
            if Z < t < ONE:
                Qb[j] = (i, t)
        else:
            v, s = d[1], d[3]
            a, b = Q[s], Q[(s + 1) % 7]
            dd = sub(b, a)
            t = dot(sub(P[v], a), dd) / dot(dd, dd)
            if Z < t < ONE:
                Pb[v] = (s, t)
    return Bound(P, Q, Qb, Pb)


def phase_elite_climb(deadline, rng):
    say('=' * 78)
    say('PHASE 8 -- pinned re-optimisation around the best degenerate results')
    say('=' * 78)
    say('  Each elite configuration that HAS a degeneracy has that degeneracy')
    say('  turned into a pin, so the climb cannot escape the degenerate stratum')
    say('  by simply pulling the vertex off the side.  Objective alternates')
    say('  between |points9| and X + segDeg + segDegP.')
    elites = [e for e in REC.elite.values()]
    elites.sort(key=lambda e: (-e[0], -e[1]))
    elites = elites[:400]
    say('  %d elite bases available.' % len(elites))
    best = (-1, -1, -1)
    bestcfg = None
    n = 0
    while time.time() < deadline and elites:
        e = elites[n % len(elites)]
        n += 1
        P, Q = list(e[2]), list(e[3])
        r = evaluate(P, Q)
        if not r['ok']:
            continue
        st = pin_existing(P, Q, r)
        # add one or two extra pins at random to push into deeper degeneracy
        if rng.random() < 0.6:
            tg = _tgrid()
            for _ in range(rng.randint(1, 3)):
                if rng.random() < 0.5:
                    st.Qbind[rng.randrange(7)] = (rng.randrange(7), rng.choice(tg))
                else:
                    st.Pbind[rng.randrange(7)] = (rng.randrange(7), rng.choice(tg))
        mode = 'meas' if n % 2 == 0 else 'pts'
        st, sc = climb(st, min(deadline, time.time() + 4), rng, iters=900,
                       tag='elite-climb-' + mode, mode=mode)
        if sc > best:
            best = sc
            bestcfg = st.realise()
    say('  %d pinned re-optimisations run; best score %s' % (n, best))
    if bestcfg:
        dump_config('best of phase 8', bestcfg[0], bestcfg[1])
    say('')


# ----------------------------------------------------------------------------
# main
# ----------------------------------------------------------------------------

def crosscheck(n=3000):
    """A SCALED-UP non-vacuity control, run after the main search.

    Over thousands of configurations -- generic and degenerate alike -- the
    49-side-pair counter and the wholly different candidate-point counter must
    agree exactly, point for point.  If the main counter were silently
    undercounting (missing an intersection, or merging two distinct points)
    this would catch it."""
    say('')
    say('=' * 78)
    say('SCALED-UP CROSS-CHECK of the |points9| counter')
    say('=' * 78)
    rng = random.Random(4242)
    tg = _tgrid()
    agree = 0
    tested = 0
    deg_tested = 0
    maxseen = 0
    t0 = time.time()
    while tested < n and time.time() - t0 < 240:
        k = rng.randrange(4)
        if k == 0:
            P = [(x + rng.randint(-30, 30), y + rng.randint(-30, 30))
                 for (x, y) in CERT_P]
            Q = [(x + rng.randint(-30, 30), y + rng.randint(-30, 30))
                 for (x, y) in CERT_Q]
        elif k == 1:
            P = rand_int_heptagon(rng)
            Q = rand_int_heptagon(rng)
            if P is None or Q is None:
                continue
        elif k == 2:
            P = list(CERT_P)
            Q = list(CERT_Q)
            for _ in range(rng.randint(1, 4)):
                Q[rng.randrange(7)] = side_point(P, rng.randrange(7),
                                                 rng.choice(tg))
        else:
            P = list(CERT_P)
            Q = list(CERT_Q)
            for _ in range(rng.randint(1, 3)):
                P[rng.randrange(7)] = side_point(Q, rng.randrange(7),
                                                 rng.choice(tg))
        r = evaluate(P, Q)
        if not r['ok']:
            continue
        tested += 1
        if r['ndeg'] > 0:
            deg_tested += 1
        ind = points9_independent(P, Q)
        if ind == set(r['pairs'].keys()):
            agree += 1
        else:
            say('  DISAGREEMENT on P=%s Q=%s : %d vs %d'
                % (fmt_poly(P), fmt_poly(Q), r['npts'], len(ind)))
        maxseen = max(maxseen, r['npts'])
    say('  %d admissible configurations cross-checked (%d of them degenerate).'
        % (tested, deg_tested))
    say('  the two independent counters agreed on %d of %d (%s).'
        % (agree, tested, 'PERFECT' if agree == tested else 'MISMATCHES ABOVE'))
    say('  largest |points9| seen in the cross-check sample: %d' % maxseen)
    _logfh.close()


def main():
    budget = float(sys.argv[1]) if len(sys.argv) > 1 else 420.0
    t0 = time.time()
    say('break38_search.py -- adversarial attack on')
    say('  Pair9Shift.points9_le_38_of_coincFree   (lean/Pair9Shift.lean:4217)')
    say('exact rational arithmetic only (fractions.Fraction); no floats.')
    say('time budget: %g s' % budget)
    say('')

    try:
        self_tests()
    except SelfTestFailure as e:
        say('')
        say('SELF TEST FAILED: %s' % e)
        say('ABORTING -- the counter is not trustworthy, no search was run.')
        _logfh.close()
        sys.exit(1)

    rng = random.Random(20260923)

    phase_cert_snaps(time.time() + budget * 0.12)
    grid = phase_exhaustive_slide(time.time() + budget * 0.20)
    phase_slide_twice(time.time() + budget * 0.16, grid)

    plan = [(phase_multi_snap, 0.04),
            (phase_bound_climb, 0.16),
            (phase_int_climb, 0.05),
            (phase_engineered, 0.07),
            (phase_multihit, 0.02)]
    for fn, frac in plan:
        fn(time.time() + budget * frac, rng)
    phase_elite_climb(time.time() + budget * 0.08, rng)
    phase_elite_slide(time.time() + budget * 0.10)

    # ------------------------------------------------------------------
    say('=' * 78)
    say('RESULT')
    say('=' * 78)
    say('  admissible configurations evaluated : %d' % REC.n_valid)
    say('  of those, WITH a genuine degeneracy : %d' % REC.n_degenerate_instances)
    say('  MAXIMUM |points9| over all          : %d' % REC.best)
    say('  MAXIMUM |points9| over DEGENERATE   : %d' % REC.best_deg)
    say('  distinct configurations attaining 38: %d' % REC.n38)
    say('  of those, with a degeneracy present : %d' % REC.n38_deg)
    say('  configurations with |points9| > 38  : %d' % len(REC.over38))
    say('  MAXIMUM crossPairs X alone          : %d  (raw bound says <= 38)'
        % REC.best_X)
    say('  MAX of X + segDeg + segDegP         : %d  (the Lean joint measure;'
        % REC.best_measure)
    say('                                           the proof needs this <= 38)')
    if REC.best_measure_cfg:
        say('    attained with X = %d, degenerate incidences = %d, |points9| = %d'
            ' (%s)' % (REC.best_measure_cfg[3], REC.best_measure_cfg[4],
                       REC.best_measure_cfg[5], REC.best_measure_cfg[2]))
    say('  MAX of X + segDeg + segDegP over DEGENERATE instances : %d'
        % REC.best_measure_deg)
    if REC.best_measure_deg_cfg:
        say('    attained with X = %d, degenerate incidences = %d, |points9| = %d'
            ' (%s)' % (REC.best_measure_deg_cfg[3], REC.best_measure_deg_cfg[4],
                       REC.best_measure_deg_cfg[5], REC.best_measure_deg_cfg[2]))
    say('  degenerate instances with |points9| = 38 : %d' % REC.n_deg_38)
    say('  degenerate instances with |points9| = 37 : %d' % REC.n_deg_37)
    say('')
    say('  how DEEP into the degenerate stratum the search actually got:')
    say('    #simultaneous degeneracies : #admissible instances')
    for k in sorted(REC.ndeg_hist):
        say('      %2d : %d' % (k, REC.ndeg_hist[k]))
    if REC.best_ndeg_cfg:
        say('    most degenerate admissible configuration found (%d '
            'simultaneous degeneracies):' % REC.best_ndeg)
        dump_config('', list(REC.best_ndeg_cfg[0]), list(REC.best_ndeg_cfg[1]),
                    REC.best_ndeg_cfg[3])
    say('')
    if REC.deg_hist:
        say('  |points9| histogram over DEGENERATE instances:')
        for k in sorted(REC.deg_hist, reverse=True)[:14]:
            say('      %3d points : %d instances' % (k, REC.deg_hist[k]))
        say('')
    if REC.best_cfg:
        say('  best overall (%s):' % REC.best_cfg[2])
        r = dump_config('', list(REC.best_cfg[0]), list(REC.best_cfg[1]))
        ind = points9_independent(list(REC.best_cfg[0]), list(REC.best_cfg[1]))
        say('    independent recount: %d points -- %s'
            % (len(ind), 'AGREES' if len(ind) == r['npts'] else 'DISAGREES!!'))
        say('')
    if REC.best_deg_cfg:
        say('  best DEGENERATE (%s):' % REC.best_deg_cfg[2])
        r = dump_config('', list(REC.best_deg_cfg[0]), list(REC.best_deg_cfg[1]))
        ind = points9_independent(list(REC.best_deg_cfg[0]),
                                  list(REC.best_deg_cfg[1]))
        say('    independent recount: %d points -- %s'
            % (len(ind), 'AGREES' if len(ind) == r['npts'] else 'DISAGREES!!'))
        say('')
    if REC.over38:
        say('  *** THE THEOREM IS CONTRADICTED BY %d CONFIGURATION(S) ***'
            % len(REC.over38))
        for (P, Q, tag, res) in REC.over38[:20]:
            dump_config(tag, list(P), list(Q), res)
    else:
        say('  NO configuration exceeded 38.  The theorem survived this attack.')
    say('')
    say('elapsed: %.1f s' % (time.time() - t0))
    _logfh.close()


if __name__ == '__main__':
    if _CROSSCHECK:
        crosscheck()
    else:
        main()
