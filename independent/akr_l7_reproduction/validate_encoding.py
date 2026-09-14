#!/usr/bin/env python3
"""
Validation of every predicate used in om_lemma7.py, against exact integer
coordinates.  Pure integer arithmetic; no floating point anywhere.

Checks:
 (V1) For random integer point sets in general position, the chirotope read off
      from the coordinates satisfies ALL the 3-term Grassmann-Plucker axioms as
      implemented in om_lemma7.Chi.gp_axioms.  (If it did not, the axiom set
      would be wrong / too strong.)
 (V2) The Boolean predicate cross(s,t) agrees with a direct exact segment
      intersection test.
 (V3) The Boolean predicate in_cone(x; v,s2,t2) agrees with a direct exact test
      "x = v + s*(s2-v) + t*(t2-v) for some s,t >= 0" solved by Cramer's rule.
"""
import itertools, random, sys
from fractions import Fraction

def det(p, q, r):
    return (q[0]-p[0])*(r[1]-p[1]) - (q[1]-p[1])*(r[0]-p[0])

def sgn(x):
    return (x > 0) - (x < 0)

# ---- direct exact geometry --------------------------------------------------
def seg_cross_direct(s, t):
    """proper crossing of segments with 4 distinct endpoints, general position"""
    p, q = s; r, w = t
    return (sgn(det(p, q, r)) != sgn(det(p, q, w)) and
            sgn(det(r, w, p)) != sgn(det(r, w, q)))

def in_cone_direct(x, v, s2, t2):
    """x in {v + s*(s2-v) + t*(t2-v) : s,t >= 0}, exact rational solve"""
    u = (s2[0]-v[0], s2[1]-v[1])
    w = (t2[0]-v[0], t2[1]-v[1])
    z = (x[0]-v[0], x[1]-v[1])
    D = u[0]*w[1] - u[1]*w[0]
    assert D != 0
    s = Fraction(z[0]*w[1] - z[1]*w[0], D)
    t = Fraction(u[0]*z[1] - u[1]*z[0], D)
    return s >= 0 and t >= 0

# ---- chirotope-based predicates (mirror of om_lemma7.py, on concrete signs) --
def chi_of(pts):
    n = len(pts)
    C = {}
    for t in itertools.combinations(range(n), 3):
        d = det(pts[t[0]], pts[t[1]], pts[t[2]])
        if d == 0:
            return None
        C[t] = (d > 0)
    return C

def chi(C, i, j, k):
    perm = [i, j, k]; sign = 1
    for a in range(2):
        for b in range(2-a):
            if perm[b] > perm[b+1]:
                perm[b], perm[b+1] = perm[b+1], perm[b]; sign = -sign
    v = C[tuple(perm)]
    return v if sign == 1 else (not v)

def acyc_ok(C, n):
    """(V4) the acyclicity constraint of om_lemma7.Chi.acyclicity must hold for
    every real point configuration: the circuit coefficients
    (det(jkl), -det(ikl), det(ijl), -det(ijk)) sum to zero, so for points in
    general position they cannot all have the same sign."""
    bad = 0
    for i, j, k, l in itertools.combinations(range(n), 4):
        e = [chi(C, j, k, l), not chi(C, i, k, l),
             chi(C, i, j, l), not chi(C, i, j, k)]
        if e[0] == e[1] == e[2] == e[3]:
            bad += 1
    return bad

def gp_ok(C, n):
    bad = 0
    for five in itertools.combinations(range(n), 5):
        for a in five:
            b, c, d, e = [x for x in five if x != a]
            t1 = (chi(C, a, b, c) == chi(C, a, d, e))
            t2 = (chi(C, a, b, d) != chi(C, a, c, e))
            t3 = (chi(C, a, b, e) == chi(C, a, c, d))
            if t1 == t2 and t2 == t3:
                bad += 1
    return bad

def cross_chi(C, s, t):
    p, q = s; r, w = t
    return (chi(C, p, q, r) != chi(C, p, q, w) and
            chi(C, r, w, p) != chi(C, r, w, q))

def in_cone_chi(C, x, v, s2, t2):
    return (chi(C, v, s2, x) == chi(C, v, s2, t2) and
            chi(C, v, t2, x) == chi(C, v, t2, s2))

# ---- run --------------------------------------------------------------------
def main(trials=200, n=12, seed=20260913):
    rnd = random.Random(seed)
    n_gp, n_cross, n_cone, n_sets, n_ac = 0, 0, 0, 0, 0
    gp_fail = cross_fail = cone_fail = ac_fail = 0
    while n_sets < trials:
        pts = [(rnd.randint(-60, 60), rnd.randint(-60, 60)) for _ in range(n)]
        if len(set(pts)) != n:
            continue
        C = chi_of(pts)
        if C is None:
            continue                     # degenerate, resample
        n_sets += 1
        b = gp_ok(C, n)
        gp_fail += b
        ac_fail += acyc_ok(C, n)
        n_ac += len(list(itertools.combinations(range(n), 4)))
        n_gp += 5 * len(list(itertools.combinations(range(n), 5)))
        for s in itertools.combinations(range(n), 2):
            for t in itertools.combinations(range(n), 2):
                if len(set(s) | set(t)) != 4 or s >= t:
                    continue
                n_cross += 1
                if cross_chi(C, s, t) != seg_cross_direct((pts[s[0]], pts[s[1]]),
                                                          (pts[t[0]], pts[t[1]])):
                    cross_fail += 1
        for v, s2, t2 in itertools.permutations(range(n), 3):
            if s2 > t2:
                continue
            for x in range(n):
                if x in (v, s2, t2):
                    continue
                n_cone += 1
                if in_cone_chi(C, x, v, s2, t2) != in_cone_direct(
                        pts[x], pts[v], pts[s2], pts[t2]):
                    cone_fail += 1
    print("point sets tested            : %d (n=%d, exact integer coords)" % (n_sets, n))
    print("GP axiom instances checked    : %d   violations: %d" % (n_gp, gp_fail))
    print("acyclicity instances checked  : %d   violations: %d" % (n_ac, ac_fail))
    print("cross() comparisons           : %d   mismatches: %d" % (n_cross, cross_fail))
    print("in_cone() comparisons         : %d   mismatches: %d" % (n_cone, cone_fail))
    ok = (gp_fail == 0 and cross_fail == 0 and cone_fail == 0 and ac_fail == 0)
    print("RESULT:", "ALL PREDICATES VALIDATED" if ok else "*** FAILURE ***")
    return 0 if ok else 1

if __name__ == "__main__":
    sys.exit(main(int(sys.argv[1]) if len(sys.argv) > 1 else 60))
