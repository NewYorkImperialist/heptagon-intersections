"""The uniform eps_0, on full 14-vertex configurations, in exact arithmetic.

THE REDUCTION BEING TESTED
--------------------------
AKR Theorem 17 says the perturbed configuration "depends linearly on eps".  With
V_i(0) = V_i^0 that means every vertex is AFFINE in eps:  V_i(eps) = V_i^0 + eps*E_i.
Therefore every predicate the argument needs is the sign of a polynomial of
degree <= 2 in eps:

   D_{ijk}(eps) = orient(V_i(eps), V_j(eps), V_k(eps))         C(14,3) = 364 of them
   X_{ij}(eps), Y_{ij}(eps) = components of V_i(eps) - V_j(eps)   2*C(14,2) = 182
   B_{i;jk}(eps) = <V_j(eps)-V_i(eps), V_k(eps)-V_i(eps)>      3*364 = 1092

(1638 polynomials; B is needed to decide betweenness along a collinear triple,
which the orientation signs alone do not determine.)

For a polynomial p = e^m*(c_m + c_{m+1} e + ...) with c_m != 0, define
   rho(p) = min(1, |c_m| / (1 + sum_{j>m} |c_j|) )
Then p(eps) != 0 and sgn p(eps) = sgn c_m for every 0 < eps < rho(p).

   eps_0 := min { rho(p) : p in W, p not identically 0 }

is explicit, and on (0, eps_0) the entire sign vector of W is CONSTANT.  That is
the uniform bound.  No limits, no compactness, no "small enough".
"""
import sys, random, itertools
from fractions import Fraction as F
sys.path.insert(0,'/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform')
from epslib import Poly, Vec, cross, orient, root_free_radius, sgn

# ---------------------------------------------------------------- geometry ---
def dot(u, v):
    return u.x * v.x + u.y * v.y

def witnesses(V):
    """The full finite witness family W for a list V of 14 Vec's."""
    n = len(V)
    W = {}
    for t in itertools.combinations(range(n), 3):
        W[('D',) + t] = orient(V[t[0]], V[t[1]], V[t[2]])
    for i, j in itertools.combinations(range(n), 2):
        d = V[i] - V[j]
        W[('X', i, j)] = d.x
        W[('Y', i, j)] = d.y
    for i in range(n):
        for j, k in itertools.combinations([x for x in range(n) if x != i], 2):
            W[('B', i, j, k)] = dot(V[j] - V[i], V[k] - V[i])
    return W

def eps0_of(W):
    """The explicit uniform bound, and the set of persistently-zero witnesses."""
    e0 = None
    Z = set()
    for key, p in W.items():
        r = root_free_radius(p)
        if r is None:
            Z.add(key); continue
        e0 = r if e0 is None else min(e0, r)
    return e0, Z

def signvec(W, e):
    return tuple(sorted((k, sgn(p(e))) for k, p in W.items()))

def leadsignvec(W):
    out = []
    for k, p in W.items():
        m, c = p.lead_low()
        out.append((k, 0 if m is None else sgn(c)))
    return tuple(sorted(out))

# --------------------------------------------- exact segment intersection ---
def seg_inter(a, b, c, d):
    """Exact intersection of closed segments [a,b],[c,d] (rational tuples).
    Returns ('none',), ('pt', (x,y)), or ('seg',) for a positive-length overlap."""
    def cr(p, q, r):
        return (q[0]-p[0])*(r[1]-p[1]) - (q[1]-p[1])*(r[0]-p[0])
    d1, d2 = cr(c, d, a), cr(c, d, b)
    d3, d4 = cr(a, b, c), cr(a, b, d)
    if ((d1 > 0) != (d2 > 0)) and d1 != 0 and d2 != 0 and \
       ((d3 > 0) != (d4 > 0)) and d3 != 0 and d4 != 0:
        t = d3 / (d3 - d4)
        return ('pt', (c[0] + t*(d[0]-c[0]), c[1] + t*(d[1]-c[1])))
    def on(p, q, r):   # r collinear with p,q and inside the box
        return cr(p, q, r) == 0 and min(p[0],q[0]) <= r[0] <= max(p[0],q[0]) \
               and min(p[1],q[1]) <= r[1] <= max(p[1],q[1])
    hits = set()
    if on(c, d, a): hits.add(a)
    if on(c, d, b): hits.add(b)
    if on(a, b, c): hits.add(c)
    if on(a, b, d): hits.add(d)
    if cr(a, b, c) == 0 and cr(a, b, d) == 0 and len(hits) >= 2:
        return ('seg',)
    if len(hits) == 1:
        return ('pt', hits.pop())
    if len(hits) >= 2:
        return ('seg',)
    return ('none',)

def sides(poly):
    return [(poly[i], poly[(i+1) % len(poly)]) for i in range(len(poly))]

def simple(poly):
    S = sides(poly)
    n = len(S)
    for i in range(n):
        for j in range(i+1, n):
            r = seg_inter(*S[i], *S[j])
            adj = (j == i+1) or (i == 0 and j == n-1)
            if r[0] == 'seg': return False
            if adj:
                shared = set(S[i]) & set(S[j])
                if r[0] == 'pt' and (len(shared) != 1 or r[1] != next(iter(shared))):
                    return False
            else:
                if r[0] != 'none': return False
    return True

def cross_points(Pp, Qq):
    """Exact set of points of dPa n dQa; returns (set, infinite_flag)."""
    pts, inf = set(), False
    for a, b in sides(Pp):
        for c, d in sides(Qq):
            r = seg_inter(a, b, c, d)
            if r[0] == 'seg': inf = True
            elif r[0] == 'pt': pts.add(r[1])
    return pts, inf

def snap(V, e):
    return [v.at(e) for v in V]

# ------------------------------------------------------------- generation ---
def rand_simple_heptagon(R, N):
    for _ in range(4000):
        pts = set()
        while len(pts) < 7:
            pts.add((F(R.randint(-N, N)), F(R.randint(-N, N))))
        pts = list(pts)
        cx = sum(p[0] for p in pts)/7; cy = sum(p[1] for p in pts)/7
        import math
        pts.sort(key=lambda p: math.atan2(float(p[1]-cy), float(p[0]-cx)))
        if simple(pts):
            return pts
    return None

CAND = [(F(a), F(b)) for a in range(-7, 8) for b in range(-7, 8)
        if (a, b) != (0, 0)]

def choose_E(V0, moved_idx, mkV, R):
    """Brute-force a direction E for the moved vertex that (i) creates no NEW
    identically-zero witness and (ii) yields at least one proper crossing
    between a P-side and a Q-side incident to the apex, for all small eps>0.
    Returns E or None.  This is the e9_directions existential, made concrete."""
    W0 = witnesses([Vec(Poly.const(p[0]), Poly.const(p[1])) for p in V0])
    Z0 = {k for k, p in W0.items() if p.is_zero()}
    order = CAND[:]; R.shuffle(order)
    for E in order:
        V = mkV(E)
        W = witnesses(V)
        Z = {k for k, p in W.items() if p.is_zero()}
        if Z != Z0 & Z:      # some witness that was nonzero became identically 0
            continue
        if Z - Z0:           # can't happen given the previous line, but be safe
            continue
        # need: zero set strictly shrinks (the coincidence actually breaks)
        if Z == Z0:
            continue
        yield E

# ------------------------------------------------------------------ driver ---
def build(R, N=9, with_dependent=True, second_coincidence=True):
    """P,Q simple heptagons with Q_0 = P_0 (vertex-vertex), optionally
    Q_3 = P_1 (a second coincidence on the SAME P-side P_0P_1, so that both
    endpoints of that side move -- AKR Fig. 27c), and optionally a dependent
    Q vertex sitting on the moving side P_0P_1 (a maintained relation (1))."""
    Pp = rand_simple_heptagon(R, N)
    if Pp is None: return None
    Qq = rand_simple_heptagon(R, N)
    if Qq is None: return None
    Qq = list(Qq)
    Qq[0] = Pp[0]                                   # vertex-vertex coincidence
    if second_coincidence:
        Qq[3] = Pp[1]                               # second one, same P-side
    lam = None
    if with_dependent:
        lam = F(R.randint(1, 4), 5)
        Qq[5] = (lam*Pp[0][0] + (1-lam)*Pp[1][0],
                 lam*Pp[0][1] + (1-lam)*Pp[1][1])   # Q_5 on side P_0P_1
    if len(set(Qq)) != 7 or not simple(Qq): return None
    if len(set(Pp) | set(Qq)) < 12: return None
    return Pp, Qq, lam

def make_motion(Pp, Qq, lam, E0, E1):
    """V(eps) for all 14 vertices.  Free+moving: P_0 (by E0) and P_1 (by E1).
    Everything else free+stationary, except the dependent Q_5 which is carried
    along by relation (1) with its original lambda -- this is the (acyclic)
    instance of Theorem 17."""
    X = Poly.x()
    def mv(p, e):
        return Vec(Poly.const(p[0]) + X*Poly.const(e[0]),
                   Poly.const(p[1]) + X*Poly.const(e[1]))
    Z = (F(0), F(0))
    VP = [mv(Pp[0], E0), mv(Pp[1], E1)] + [mv(Pp[i], Z) for i in range(2, 7)]
    VQ = []
    for j in range(7):
        if lam is not None and j == 5:
            VQ.append(VP[0].scal(Poly.const(lam)) + VP[1].scal(Poly.const(1-lam)))
        else:
            VQ.append(mv(Qq[j], Z))
    return VP + VQ
