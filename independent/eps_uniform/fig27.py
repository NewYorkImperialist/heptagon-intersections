"""AKR Fig. 27, exactly: the 'marked distance' as a function of eps.

Local picture (journal p. 1072).  Put the coincidence P_i = Q_j at the origin.
  Q_j   is free and STATIONARY, at O for all eps.
  P_i   is free and moves:      P_i(eps)     = O      + eps*E.
  P_{i-1} is the other endpoint of the P-side:  a1 + eps*F1.
  Q_{j-1} is the other endpoint of the Q-side:  b1 + eps*G1.
(F1 = G1 = 0 is AKR's "assuming that all other points stay where they are";
 F1 != 0 is their Fig. 27c, G1 != 0 the symmetric case.)

The marked distance is  |X(eps) - Q_j|  where X is the intersection of the
lines Q_{j-1}Q_j and P_iP_{i-1}.  Writing X = Q_j + t*(Q_{j-1}-Q_j) = t*v with
v = b1 + eps*G1, the marked distance is  t(eps)*|v(eps)|, and t is a RATIONAL
function of eps with exact rational coefficients.  We expand it as a series.

Claim under test (AKR): marked distance = k*eps + O(eps^2) with k > 0, and the
motion of the other endpoints only perturbs the O(eps^2) part.
"""
import random, sys
from fractions import Fraction as F
sys.path.insert(0, '/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform')
from epslib import Poly, Vec, cross, series_div, orient


def st_series(a1, F1, b1, G1, E, order=3):
    """Series of the two parameters s (along P_iP_{i-1}) and t (along Q_jQ_{j-1}).

      w = P_i(eps) - Q_j = eps*E
      u = P_{i-1}(eps) - P_i(eps) = a1 + eps*(F1 - E)
      v = Q_{j-1}(eps) - Q_j      = b1 + eps*G1
      w + s*u = t*v
      => s = -cross(w,v)/cross(u,v),  t = cross(w,u)/cross(v,u)
    """
    e = Poly.x()
    Ev = Vec(Poly.const(E[0]), Poly.const(E[1]))
    w = Vec(e * Poly.const(E[0]), e * Poly.const(E[1]))
    u = Vec(Poly.const(a1[0]) + e * Poly.const(F1[0] - E[0]),
            Poly.const(a1[1]) + e * Poly.const(F1[1] - E[1]))
    v = Vec(Poly.const(b1[0]) + e * Poly.const(G1[0]),
            Poly.const(b1[1]) + e * Poly.const(G1[1]))
    num_s, den_s = -cross(w, v), cross(u, v)
    num_t, den_t = cross(w, u), cross(v, u)
    if den_s.c[0] == 0:          # a1 || b1: the two supporting lines are parallel
        return None
    return (series_div(num_s, den_s, order), series_div(num_t, den_t, order),
            u, v, w)


def dist_sq_series(a1, F1, b1, G1, E, order=4):
    """Series of the SQUARED marked distance |t*v|^2 = t^2 * (v.v)."""
    r = st_series(a1, F1, b1, G1, E, order)
    if r is None:
        return None
    s, t, u, v, w = r
    tp = Poly(t)                      # truncated series as a polynomial
    vv = v.x * v.x + v.y * v.y
    return (tp * tp * vv).c[:order + 1]


def cone_direction(a1, b1, s0, t0):
    """AKR/e9_directions cone direction E = t0*b1 - s0*a1, s0,t0 > 0."""
    return (t0 * b1[0] - s0 * a1[0], t0 * b1[1] - s0 * a1[1])


def rnd(R, lo=-6, hi=6):
    return (F(R.randint(lo, hi)), F(R.randint(lo, hi)))


def run(n=4000, seed=20260920):
    R = random.Random(seed)
    stats = dict(trials=0, skipped=0,
                 t_lead_matches=0, t_lead_mismatches=0,
                 s_lead_matches=0, s_lead_mismatches=0,
                 k_positive=0, k_zero=0, k_negative=0,
                 second_order_differs=0, second_order_same=0)
    worst = None
    for _ in range(n):
        a1, b1 = rnd(R), rnd(R)
        if a1 == (0, 0) or b1 == (0, 0):
            stats['skipped'] += 1; continue
        if cross(Vec(*[Poly.const(c) for c in a1]),
                 Vec(*[Poly.const(c) for c in b1])).c[0] == 0:
            stats['skipped'] += 1; continue      # a1 || b1, no cone for this pair
        s0 = F(R.randint(1, 5)); t0 = F(R.randint(1, 5))
        E = cone_direction(a1, b1, s0, t0)
        if E == (0, 0):
            stats['skipped'] += 1; continue
        F1, G1 = rnd(R), rnd(R)
        stats['trials'] += 1

        fixed = st_series(a1, (F(0), F(0)), b1, (F(0), F(0)), E)
        moving = st_series(a1, F1, b1, G1, E)
        sf, tf = fixed[0], fixed[1]
        sm, tm = moving[0], moving[1]

        # constant terms must be 0 (the intersection starts AT the apex)
        assert sf[0] == 0 and tf[0] == 0 and sm[0] == 0 and tm[0] == 0

        # AKR's claim, part 1: the eps^1 coefficient is unchanged by the motion
        if tf[1] == tm[1]: stats['t_lead_matches'] += 1
        else:
            stats['t_lead_mismatches'] += 1; worst = (a1, b1, E, F1, G1, tf, tm)
        if sf[1] == sm[1]: stats['s_lead_matches'] += 1
        else: stats['s_lead_mismatches'] += 1

        # the leading coefficient should be exactly t0 (resp. s0)
        assert tf[1] == t0, (tf[1], t0)
        assert sf[1] == s0, (sf[1], s0)

        k = tm[1]
        stats['k_positive' if k > 0 else ('k_zero' if k == 0 else 'k_negative')] += 1

        # non-vacuity: the two computations must NOT be the same function
        if tf[2] != tm[2]: stats['second_order_differs'] += 1
        else: stats['second_order_same'] += 1
    return stats, worst


if __name__ == '__main__':
    st, worst = run()
    for k, v in st.items():
        print(f"{k:24s} {v}")
    if worst:
        print("MISMATCH EXAMPLE:", worst)
