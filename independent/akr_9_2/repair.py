"""The REPAIR for AKR Sect. 9.2's undefined shift operator.

AKR's Fig.-28 rule slides the two endpoints of the shifted side along the LINES
of the two adjacent sides; it is undefined when an adjacent side is collinear
with the shifted side (three consecutive collinear vertices, hypothesis (NC)).

This file implements the GENERALISED shift  G(a,b)  which contains both AKR's
rule and the translation repair as special cases, and which is well defined
exactly when the two chosen directions are not parallel to the shifted side.

    s = [A,B],  u = B-A,  n = u^perp,  N = |u|^2 = <u,n>... (|n|^2 = N)
    A_d = A + (d*N/<a,n>) a          B_d = B + (d*N/<b,n>) b

Both new endpoints lie on the line  l_d = {x : <x-A,n> = d*N},  the parallel
translate of line(s) at parameter d, FOR ANY a,b with <a,n> != 0 != <b,n>.
So the shifted side is always a subsegment of l_d; the choice of (a,b) only
decides WHERE on l_d the two endpoints land.

    a = w := A - P_{i-1},  b = z := P_{i+2} - B   ->  AKR's Fig.-28 rule
                                                      (<w,n> = 0 iff (NC) fails)
    a = b = n                                     ->  the translation repair
                                                      (<n,n> = N != 0 always)

Exact rationals only.  No float anywhere.
"""
import sys
from fractions import Fraction as F
sys.path.insert(0, __file__.rsplit('/', 1)[0])
from shift import (sub, add, smul, cross, seg_inter, sides, is_simple,
                   inter_points, count, vertex_vertex, vertex_side, line_meet,
                   shift_side)

def dot(a, b): return a[0]*b[0] + a[1]*b[1]

def frame(P, i):
    """(A, B, C=P_{i-1}, D=P_{i+2}, u, n, N) for the side s_i."""
    m = len(P)
    A, B = P[i], P[(i+1) % m]
    C, D = P[(i-1) % m], P[(i+2) % m]
    u = sub(B, A)
    n = (-u[1], u[0])
    return A, B, C, D, u, n, dot(u, u)

def gen_shift(P, i, delta, a, b):
    """The generalised shift G(a,b).  None if <a,n>=0 or <b,n>=0."""
    A, B, C, D, u, n, N = frame(P, i)
    da, db = dot(a, n), dot(b, n)
    if da == 0 or db == 0: return None
    ca = F(delta * N, 1) / da
    cb = F(delta * N, 1) / db
    R = list(P)
    R[i] = (A[0] + ca*a[0], A[1] + ca*a[1])
    R[(i+1) % len(P)] = (B[0] + cb*b[0], B[1] + cb*b[1])
    return tuple(R)

# ---- direction choices ---------------------------------------------------

def dirs_akr(P, Q, i):
    A, B, C, D, u, n, N = frame(P, i)
    return sub(A, C), sub(D, B)

def dirs_translate(P, Q, i):
    A, B, C, D, u, n, N = frame(P, i)
    return n, n

def host_side_through(v, Q):
    """The unique Q-side with v in its RELATIVE INTERIOR, or None."""
    for (c, d) in sides(Q):
        if v == c or v == d: continue
        if cross(sub(d, c), sub(v, c)) != 0: continue
        t = F(dot(sub(v, c), sub(d, c)), 1) / dot(sub(d, c), sub(d, c))
        if 0 < t < 1: return (c, d)
    return None

def dirs_tilt(P, Q, i):
    """The translation repair, TILTED at an endpoint whose Q-side is
    perpendicular to s (the one case where a = n fails to clear the
    degeneracy).  Always well defined, and always clears."""
    A, B, C, D, u, n, N = frame(P, i)
    a = b = n
    tA = host_side_through(A, Q)
    if tA is not None and cross(n, sub(tA[1], tA[0])) == 0:
        a = add(n, u)
    tB = host_side_through(B, Q)
    if tB is not None and cross(n, sub(tB[1], tB[0])) == 0:
        b = add(n, u)
    return a, b

DIRS = {'akr': dirs_akr, 'translate': dirs_translate, 'tilt': dirs_tilt}

def shift(P, Q, i, delta, mode):
    a, b = DIRS[mode](P, Q, i)
    return gen_shift(P, i, delta, a, b)

# ---- local counting (for the closed-form checks) -------------------------

def points_near(P, Q, p, r2):
    """Points of dP n dQ at squared distance < r2 from p.  None if infinite."""
    S = inter_points(P, Q)
    if S is None: return None
    return {x for x in S
            if (x[0]-p[0])**2 + (x[1]-p[1])**2 < r2}

def dirs_skew(P, Q, i):
    """CONTROL -- a deliberately WRONG rule.  Kept in the same G(a,b) shape but
    with B's displacement doubled, so the 'shifted side' is not parallel to s
    and does not lie on any single l_d.  The identity must FAIL."""
    A, B, C, D, u, n, N = frame(P, i)
    return n, (2*n[0], 2*n[1])

def skew_shift(P, i, delta):
    A, B, C, D, u, n, N = frame(P, i)
    R = list(P)
    R[i] = (A[0] + delta*n[0], A[1] + delta*n[1])
    R[(i+1) % len(P)] = (B[0] + 2*delta*n[0], B[1] + 2*delta*n[1])
    return tuple(R)

DIRS['skew'] = dirs_skew

def shift(P, Q, i, delta, mode):
    if mode == 'skew':
        return skew_shift(P, i, delta)
    if mode == 'even':
        return even_shift(P, i, delta)
    a, b = DIRS[mode](P, Q, i)
    return gen_shift(P, i, delta, a, b)

def even_shift(P, i, delta):
    """CONTROL -- a rule whose displacement is EVEN in delta: both 'directions'
    move the side the same way.  'The average over the two possible directions'
    then has only one direction in it, and the identity must FAIL."""
    A, B, C, D, u, n, N = frame(P, i)
    e = abs(delta)
    R = list(P)
    R[i] = (A[0] + e*n[0], A[1] + e*n[1])
    R[(i+1) % len(P)] = (B[0] + e*n[0], B[1] + e*n[1])
    return tuple(R)
