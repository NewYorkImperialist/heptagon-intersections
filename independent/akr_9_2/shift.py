"""Exact-rational geometry for the AKR Sect. 9.2 parallel-shift averaging claim.

Everything is Fraction. No float anywhere.
"""
from fractions import Fraction as F

def sub(a, b): return (a[0]-b[0], a[1]-b[1])
def add(a, b): return (a[0]+b[0], a[1]+b[1])
def smul(k, a): return (k*a[0], k*a[1])
def cross(a, b): return a[0]*b[1] - a[1]*b[0]

def seg_inter(p1, p2, p3, p4):
    """Exact intersection of closed segments [p1,p2] and [p3,p4].
    Returns ('none',) | ('point', pt) | ('overlap',)."""
    d1 = sub(p2, p1); d2 = sub(p4, p3); w = sub(p3, p1)
    den = cross(d1, d2)
    if den != 0:
        t = F(cross(w, d2), 1) / den
        u = F(cross(w, d1), 1) / den
        if 0 <= t <= 1 and 0 <= u <= 1:
            return ('point', (p1[0] + t*d1[0], p1[1] + t*d1[1]))
        return ('none',)
    # parallel
    if cross(w, d1) != 0:
        return ('none',)
    # collinear: project on d1
    dd = d1[0]*d1[0] + d1[1]*d1[1]
    if dd == 0:
        raise ValueError("degenerate segment")
    def proj(p):
        v = sub(p, p1)
        return F(v[0]*d1[0] + v[1]*d1[1], 1) / dd
    a0, a1 = F(0), F(1)
    b0, b1 = proj(p3), proj(p4)
    if b0 > b1: b0, b1 = b1, b0
    lo, hi = max(a0, b0), min(a1, b1)
    if lo > hi: return ('none',)
    if lo == hi:
        return ('point', (p1[0] + lo*d1[0], p1[1] + lo*d1[1]))
    return ('overlap',)

def sides(poly):
    n = len(poly)
    return [(poly[i], poly[(i+1) % n]) for i in range(n)]

def is_simple(poly):
    n = len(poly)
    S = sides(poly)
    for i in range(n):
        if S[i][0] == S[i][1]: return False
    for i in range(n):
        for j in range(i+1, n):
            adjacent = (j == i+1) or (i == 0 and j == n-1)
            r = seg_inter(S[i][0], S[i][1], S[j][0], S[j][1])
            if r[0] == 'overlap': return False
            if r[0] == 'point':
                if adjacent:
                    shared = S[i][0] if S[i][0] in (S[j][0], S[j][1]) else S[i][1]
                    if r[1] != shared: return False
                else:
                    return False
    # vertices pairwise distinct
    if len(set(poly)) != n: return False
    return True

def inter_points(P, Q):
    """Set of points of dP ∩ dQ, or None if infinite (overlapping sides)."""
    pts = set()
    for a, b in sides(P):
        for c, d in sides(Q):
            r = seg_inter(a, b, c, d)
            if r[0] == 'overlap': return None
            if r[0] == 'point': pts.add(r[1])
    return pts

def count(P, Q):
    s = inter_points(P, Q)
    return None if s is None else len(s)

# ---- degeneracy classification -------------------------------------------

def vertex_vertex(P, Q):
    return sorted(set(P) & set(Q))

def vertex_side(P, Q):
    """List of (which, vertex, side_index): a vertex of one polygon strictly
    inside a side of the other."""
    out = []
    for name, A, B in (('Qvert_on_Pside', Q, P), ('Pvert_on_Qside', P, Q)):
        for v in A:
            for k, (c, d) in enumerate(sides(B)):
                if v == c or v == d: continue
                if cross(sub(d, c), sub(v, c)) != 0: continue
                # collinear; strictly between?
                dd = sub(d, c); vv = sub(v, c)
                t_num = vv[0]*dd[0] + vv[1]*dd[1]
                t_den = dd[0]*dd[0] + dd[1]*dd[1]
                if 0 < F(t_num, 1)/t_den < 1:
                    out.append((name, v, k))
    return out

# ---- the shift -----------------------------------------------------------

def line_meet(p, dp, q, dq):
    """Point p + t dp on line through q with direction dq; None if parallel."""
    den = cross(dp, dq)
    if den == 0: return None
    t = F(cross(sub(q, p), dq), 1) / den
    return (p[0] + t*dp[0], p[1] + t*dp[1])

def shift_side(P, i, delta, rule='akr'):
    """Shift side s_i = [P_i, P_{i+1}] by `delta` times the (unnormalised)
    left normal of s_i.

    rule='akr'       : new endpoints slide along the lines of the two adjacent
                       sides -- what Fig. 28 draws.  Returns None if an adjacent
                       side is parallel to s_i (three consecutive collinear
                       vertices), where the construction is undefined.
    rule='translate' : new endpoints are P_i + delta*n, P_{i+1} + delta*n; the
                       two adjacent sides rotate about their far endpoints.
                       Always defined.
    rule='onlyB'     : CONTROL -- a deliberately wrong rule that moves only the
                       second endpoint.
    """
    m = len(P)
    A, B = P[i], P[(i+1) % m]
    Aprev = P[(i-1) % m]
    Bnext = P[(i+2) % m]
    u = sub(B, A)
    n = (-u[1], u[0])                      # left normal, unnormalised
    Ad = (A[0] + delta*n[0], A[1] + delta*n[1])
    Bd = (B[0] + delta*n[0], B[1] + delta*n[1])
    if rule == 'translate':
        newA, newB = Ad, Bd
    elif rule == 'onlyB':
        newA = A
        newB = line_meet(Bd, u, Bnext, sub(Bnext, B))
        if newB is None: return None
    else:
        newA = line_meet(Ad, u, Aprev, sub(A, Aprev))
        newB = line_meet(Bd, u, Bnext, sub(Bnext, B))
        if newA is None or newB is None: return None
    R = list(P)
    R[i] = newA
    R[(i+1) % m] = newB
    return tuple(R)
