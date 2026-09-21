"""Attempts to BREAK AKR's local claim.

Three attacks:

  A. Force k = 0.  k = cross(E,a1)/cross(b1,a1), so k = 0 iff E || a1.  Can that
     happen for an E that satisfies AKR's *literal* criterion ("at least one
     nondegenerate intersection in the neighbourhood, assuming the other points
     stay where they are")?  If yes, AKR's sentence permits a choice of E_i for
     which a vertex-side degeneracy PERSISTS for every eps > 0, and their
     conclusion "there will be no degenerate situations" is false at that E.

  B. Show the k > 0 guarantee is not vacuous: with E drawn at random rather than
     from the e9_directions cone, k = 0 and k < 0 both occur.

  C. Measure how small the honest threshold eps* can be driven as a function of
     the coordinate bound N.  A uniform eps_0 must be below all of them.
"""
import random, sys, itertools
from fractions import Fraction as F
sys.path.insert(0, '/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform')
from epslib import Poly, Vec, cross, orient, series_div, root_free_radius, sgn

def P(p):  # constant Vec from a rational pair
    return Vec(Poly.const(p[0]), Poly.const(p[1]))

def moving(p0, e):
    E = Poly.x()
    return Vec(Poly.const(p0[0]) + E * Poly.const(e[0]),
               Poly.const(p0[1]) + E * Poly.const(e[1]))

def xprod(p, q):
    return p[0]*q[1] - p[1]*q[0]

def proper_cross_for_small_eps(A, B, C, D):
    """A,B,C,D are Vec (affine in eps).  Decide whether segments AB and CD
    properly cross for all sufficiently small eps > 0, using signs of the four
    orientation polynomials at their lowest nonzero coefficient (the sign of a
    polynomial just to the right of 0 is the sign of its lowest nonzero coeff).
    Returns None if any of the four is identically zero (a persistent
    degeneracy)."""
    o = [orient(A, B, C), orient(A, B, D), orient(C, D, A), orient(C, D, B)]
    s = []
    for p in o:
        m, c = p.lead_low()
        if m is None:
            return None
        s.append(sgn(c))
    return s[0]*s[1] < 0 and s[2]*s[3] < 0

def point_on_segment_all_eps(X, A, B):
    """Is X(eps) on segment [A(eps),B(eps)] for ALL small eps>0?  Requires
    orient(A,B,X) identically zero plus betweenness at a sample."""
    if not orient(A, B, X).is_zero():
        return False
    # betweenness at a small rational eps
    for e in (F(1, 10), F(1, 1000), F(1, 10**6)):
        ax, ay = A.at(e); bx, by = B.at(e); xx, xy = X.at(e)
        dx, dy = bx-ax, by-ay
        den = dx*dx + dy*dy
        if den == 0: return False
        lam = ((xx-ax)*dx + (xy-ay)*dy)/den
        if not (0 < lam < 1):
            return False
    return True


def attack_A(limit=5, verbose=True):
    """Search for a configuration where AKR's literal criterion is met yet a
    degeneracy persists for every eps > 0."""
    found = []
    rng = range(-limit, limit+1)
    R = random.Random(7)
    for _ in range(400000):
        a1 = (F(R.randint(-limit,limit)), F(R.randint(-limit,limit)))
        a2 = (F(R.randint(-limit,limit)), F(R.randint(-limit,limit)))
        b1 = (F(R.randint(-limit,limit)), F(R.randint(-limit,limit)))
        b2 = (F(R.randint(-limit,limit)), F(R.randint(-limit,limit)))
        if (0,0) in (a1,a2,b1,b2): continue
        if xprod(a1,a2) == 0 or xprod(b1,b2) == 0: continue   # V's are genuine
        c = F(R.randint(1,4))
        E = (-c*a1[0], -c*a1[1])                # E || a1, pointing away: k = 0
        if E == (0,0): continue
        Q0 = P((F(0),F(0)))
        Pi = moving((F(0),F(0)), E)
        Pm = P(a1); Pp = P(a2); Qm = P(b1); Qp = P(b2)
        # AKR's literal criterion: at least one nondegenerate (proper) crossing
        # between a P-side and a Q-side, for all small eps > 0.
        pairs = [(Pi,Pm,Q0,Qm),(Pi,Pm,Q0,Qp),(Pi,Pp,Q0,Qm),(Pi,Pp,Q0,Qp)]
        res = [proper_cross_for_small_eps(*t) for t in pairs]
        if not any(r is True for r in res): continue
        # and the persistent degeneracy: Q_j sits on side P_i P_{i-1} forever
        if not point_on_segment_all_eps(Q0, Pi, Pm): continue
        found.append(dict(a1=a1,a2=a2,b1=b1,b2=b2,c=c,E=E,
                          crossings=[r for r in res]))
        if len(found) >= 3: break
    return found


def attack_B(n=4000):
    """Non-vacuity of k>0: draw E at random instead of from the cone."""
    R = random.Random(99)
    cnt = dict(pos=0, zero=0, neg=0, skip=0)
    for _ in range(n):
        a1 = (F(R.randint(-6,6)), F(R.randint(-6,6)))
        b1 = (F(R.randint(-6,6)), F(R.randint(-6,6)))
        E  = (F(R.randint(-6,6)), F(R.randint(-6,6)))
        if xprod(a1,b1) == 0 or E == (0,0):
            cnt['skip'] += 1; continue
        k = xprod(E,a1)/xprod(b1,a1)
        cnt['pos' if k > 0 else ('zero' if k == 0 else 'neg')] += 1
    return cnt


def attack_C(Ns=(2,4,8,16,32), n=3000):
    """How small can the honest local threshold be, at coordinate bound N?

    The threshold we measure: the largest eps* such that on (0,eps*) the FOUR
    orientation polynomials of the chosen crossing keep the sign of their
    leading coefficient AND 0 < s,t < 1.  We report the exact minimum of the
    root-free radius over all the non-identically-zero orientation polynomials
    of the six local points, which is the quantity a uniform eps_0 must respect.
    """
    out = {}
    for N in Ns:
        R = random.Random(1000+N)
        worst = None
        for _ in range(n):
            a1 = (F(R.randint(-N,N)), F(R.randint(-N,N)))
            a2 = (F(R.randint(-N,N)), F(R.randint(-N,N)))
            b1 = (F(R.randint(-N,N)), F(R.randint(-N,N)))
            b2 = (F(R.randint(-N,N)), F(R.randint(-N,N)))
            if (0,0) in (a1,a2,b1,b2): continue
            if xprod(a1,b1) == 0: continue
            s0 = F(R.randint(1,N)); t0 = F(R.randint(1,N))
            E = (t0*b1[0]-s0*a1[0], t0*b1[1]-s0*a1[1])
            if E == (0,0): continue
            pts = [moving((F(0),F(0)),E), P(a1), P(a2),
                   P((F(0),F(0))), P(b1), P(b2)]
            r = None
            for tri in itertools.combinations(range(6), 3):
                p = orient(pts[tri[0]], pts[tri[1]], pts[tri[2]])
                rr = root_free_radius(p)
                if rr is None: continue
                r = rr if r is None else min(r, rr)
            if r is not None and (worst is None or r < worst[0]):
                worst = (r, a1, a2, b1, b2, E)
        out[N] = worst
    return out


if __name__ == '__main__':
    print("=== ATTACK A: AKR's literal criterion met, degeneracy persists forever ===")
    fa = attack_A()
    print(f"configurations found: {len(fa)}")
    for d in fa:
        print("   ", d)
    print()
    print("=== ATTACK B: non-vacuity of k > 0 (E drawn at random, not from the cone) ===")
    print("   ", attack_B())
    print()
    print("=== ATTACK C: smallest local root-free radius vs coordinate bound N ===")
    for N, w in attack_C().items():
        if w is None: print(f"    N={N}: none"); continue
        r = w[0]
        print(f"    N={N:3d}  min radius = {r}  ~ 1/{float(1/r):.1f}   at {w[1:]}")
