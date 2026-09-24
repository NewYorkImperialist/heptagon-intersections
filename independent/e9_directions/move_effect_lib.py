"""move_effect_lib.py -- exact-rational primitives for the apex-only move study.

Transcribed from the Lean sources:

  orientR          lean/RealConfig.lean:54
  ProperCrossR     lean/RealUpperBound.lean:62
  SimpleClosed     lean/AKR9.lean:71   (AKR9.SimpleClosed, three clauses)
  Adjacent         lean/LowerBound.lean:79
  moveV / moveField lean/E9Directions.lean:286,290
  coincSet         lean/E9Directions.lean:497
  crossPairsOf     lean/RealPerturb.lean:151
  segDeg           lean/Pair9Shift.lean:1876   (Q[p.2] in sideP9 p.1)
  segDegP          lean/Pair9Shift.lean:1920   (P[p.2] in sideQ9 p.1)

The four set-valued measures of this study:

  crossPairs = {(k,j) : ProperCrossR (P k) (P (k+1)) (Q j) (Q (j+1))}
  segDeg     = {(k,j) : Q j on the CLOSED segment [P k, P (k+1)]}
  segDegP    = {(j,v) : P v on the CLOSED segment [Q j, Q (j+1)]}
  coincSet   = {(v,j) : P v == Q j}

NOTE on segDeg vs the Lean `degSetOf`: `Pair9Shift.degSetOf` (line 1123) uses the
side's *line* (`orientR ... = 0`), which over-approximates the closed segment.
The caller asked for the CLOSED SEGMENT version, so that is what `segDeg` is here.
`lineDeg` / `lineDegP` below give the Lean line version for comparison.

All arithmetic is exact `fractions.Fraction`.  Nothing is floating point.
"""

from fractions import Fraction as F

N = 7


# ---------------------------------------------------------------- primitives

def sub(a, b):
    return (a[0] - b[0], a[1] - b[1])


def add(a, b):
    return (a[0] + b[0], a[1] + b[1])


def smul(t, a):
    return (t * a[0], t * a[1])


def cross(u, v):
    """2x2 determinant of the two vectors."""
    return u[0] * v[1] - u[1] * v[0]


def dot(u, v):
    return u[0] * v[0] + u[1] * v[1]


def orientR(a, b, c):
    """lean/RealConfig.lean:54, character for character."""
    return (b[0] - a[0]) * (c[1] - a[1]) - (b[1] - a[1]) * (c[0] - a[0])


def properCrossR(a, b, c, d):
    """lean/RealUpperBound.lean:62."""
    return (orientR(a, b, c) * orientR(a, b, d) < 0
            and orientR(c, d, a) * orientR(c, d, b) < 0)


def onSeg(a, b, x):
    """`x` lies on the CLOSED segment [a,b].  Endpoints included.

    Robust when a == b (then it asks x == a)."""
    if a == b:
        return x == a
    if orientR(a, b, x) != 0:
        return False
    return dot(sub(x, a), sub(b, a)) >= 0 and dot(sub(x, b), sub(a, b)) >= 0


def adjacent(i, j):
    """lean/LowerBound.lean:79: i = j or j = i+1 or i = j+1, cyclically."""
    return i == j or j == (i + 1) % N or i == (j + 1) % N


# ------------------------------------------------- closed-segment intersection

def seg_inter(a, b, c, d):
    """Exact intersection of two closed segments.

    Returns None, ('pt', p) or ('seg', p, q) with p != q.
    Handles degenerate (zero-length) segments."""
    d1 = sub(b, a)
    d2 = sub(d, c)
    if d1 == (0, 0) and d2 == (0, 0):
        return ('pt', a) if a == c else None
    if d1 == (0, 0):
        return ('pt', a) if onSeg(c, d, a) else None
    if d2 == (0, 0):
        return ('pt', c) if onSeg(a, b, c) else None
    den = cross(d1, d2)
    r = sub(c, a)
    if den != 0:
        t = F(cross(r, d2), 1) / den
        u = F(cross(r, d1), 1) / den
        if 0 <= t <= 1 and 0 <= u <= 1:
            return ('pt', add(a, smul(t, d1)))
        return None
    # parallel
    if cross(r, d1) != 0:
        return None  # parallel, distinct lines
    # collinear: project c,d onto the a->b parameter
    dd = dot(d1, d1)
    sc = F(dot(sub(c, a), d1), 1) / dd
    sd = F(dot(sub(d, a), d1), 1) / dd
    lo, hi = (sc, sd) if sc <= sd else (sd, sc)
    lo = max(lo, F(0))
    hi = min(hi, F(1))
    if lo > hi:
        return None
    if lo == hi:
        return ('pt', add(a, smul(lo, d1)))
    return ('seg', add(a, smul(lo, d1)), add(a, smul(hi, d1)))


def overlaps_in_more_than_a_point(a, b, c, d):
    r = seg_inter(a, b, c, d)
    return r is not None and r[0] == 'seg'


# ------------------------------------------------------------- SimpleClosed

def simple_closed(W, why=False):
    """AKR9.SimpleClosed, lean/AKR9.lean:71.  Three conjuncts:
      1. no degenerate side
      2. non-adjacent sides disjoint
      3. cyclically adjacent sides meet exactly in the shared endpoint
    Three collinear vertices are ALLOWED."""
    for i in range(N):
        if W[i] == W[(i + 1) % N]:
            return (False, f"degenerate side {i}") if why else False
    for i in range(N):
        for j in range(N):
            if adjacent(i, j):
                continue
            if seg_inter(W[i], W[(i + 1) % N], W[j], W[(j + 1) % N]) is not None:
                return (False, f"non-adjacent sides {i},{j} meet") if why else False
    for i in range(N):
        r = seg_inter(W[i], W[(i + 1) % N], W[(i + 1) % N], W[(i + 2) % N])
        if r is None or r[0] != 'pt' or r[1] != W[(i + 1) % N]:
            return (False, f"adjacent sides {i},{i+1} meet in {r}") if why else False
    return (True, "ok") if why else True


# ----------------------------------------------------------- the four measures

def crossPairs(P, Q):
    return frozenset((k, j) for k in range(N) for j in range(N)
                     if properCrossR(P[k], P[(k + 1) % N], Q[j], Q[(j + 1) % N]))


def segDeg(P, Q):
    """{(k,j) : Q[j] on the CLOSED P-side k}"""
    return frozenset((k, j) for k in range(N) for j in range(N)
                     if onSeg(P[k], P[(k + 1) % N], Q[j]))


def segDegP(P, Q):
    """{(j,v) : P[v] on the CLOSED Q-side j}"""
    return frozenset((j, v) for j in range(N) for v in range(N)
                     if onSeg(Q[j], Q[(j + 1) % N], P[v]))


def coincSet(P, Q):
    """{(v,j) : P[v] == Q[j]}  (lean/E9Directions.lean:497)"""
    return frozenset((v, j) for v in range(N) for j in range(N) if P[v] == Q[j])


def lineDeg(P, Q):
    """Lean's `degSetOf`: Q-vertex on the P-side LINE."""
    return frozenset((k, j) for k in range(N) for j in range(N)
                     if orientR(P[k], P[(k + 1) % N], Q[j]) == 0)


def lineDegP(P, Q):
    """Lean's `degSetQ`: P-vertex on the Q-side LINE."""
    return frozenset((j, v) for j in range(N) for v in range(N)
                     if orientR(Q[j], Q[(j + 1) % N], P[v]) == 0)


def finite_boundary_intersection(P, Q):
    """(Fin): no P-side and Q-side overlap in more than a point."""
    for k in range(N):
        for j in range(N):
            if overlaps_in_more_than_a_point(P[k], P[(k + 1) % N],
                                             Q[j], Q[(j + 1) % N]):
                return False
    return True


def fin_witnesses(P, Q):
    return [(k, j) for k in range(N) for j in range(N)
            if overlaps_in_more_than_a_point(P[k], P[(k + 1) % N],
                                             Q[j], Q[(j + 1) % N])]


# ------------------------------------------------------------------- the move

def moveV(P, i, E, e):
    """APEX ONLY.  lean/E9Directions.lean:290.  P[i] -> P[i] + e*E; every other
    P vertex, and all of Q, is untouched (Q is not even passed in)."""
    out = list(P)
    out[i] = (P[i][0] + e * E[0], P[i][1] + e * E[1])
    return tuple(out)
