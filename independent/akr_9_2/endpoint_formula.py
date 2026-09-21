"""Check the closed-form prediction for the MOVING-ENDPOINT case (Sect. 4.3 of
docs/akr-9-2-obligation.md) against brute-force exact counting.

Prediction: if A = P_i lies in the relative interior of a Q-side t, then for all
small delta != 0 the number of points of dP(delta) n dQ in a small disc about A is

        [sgn delta = sgn alpha] + [sgn delta = sgn kappa]

with alpha = <w,n>, kappa = <v,u>/<v,n> - <w,u>/<w,n>, where u = B-A,
n = u rotated +90, w = A - P_{i-1}, v = direction of t.
"""
import sys, random
from fractions import Fraction as F
sys.path.insert(0, __file__.rsplit('/', 1)[0])
from shift import (is_simple, inter_points, shift_side, sides, cross, sub,
                   vertex_vertex, count)
from sweep2 import rand_simple, strictly_inside

def dot(a, b): return a[0]*b[0] + a[1]*b[1]

def predict(P, i, t):
    m = len(P)
    A, B, Aprev = P[i], P[(i+1) % m], P[(i-1) % m]
    u = sub(B, A); n = (-u[1], u[0]); w = sub(A, Aprev); v = sub(t[1], t[0])
    alpha = dot(w, n); beta = dot(v, n)
    if alpha == 0 or beta == 0: return None
    kappa = F(dot(v, u), 1)/beta - F(dot(w, u), 1)/alpha
    if kappa == 0: return None
    return alpha, kappa

def local_count(P, Q, centre, r2):
    pts = inter_points(P, Q)
    if pts is None: return None
    return sum(1 for p in pts
               if (p[0]-centre[0])**2 + (p[1]-centre[1])**2 <= r2)

if __name__ == '__main__':
    rng = random.Random(int(sys.argv[1]) if len(sys.argv) > 1 else 5)
    N = int(sys.argv[2]) if len(sys.argv) > 2 else 3000
    tested = agree = disagree = skipped = 0
    sums = {0: 0, 1: 0, 2: 0}
    while tested < N:
        P = rand_simple(rng, 6, 6); Q = rand_simple(rng, 6, 6)
        if P is None or Q is None: continue
        if inter_points(P, Q) is None or vertex_vertex(P, Q): continue
        for i in range(6):
            A = P[i]
            hosts = [t for t in sides(Q) if strictly_inside(A, t[0], t[1])]
            if len(hosts) != 1: continue
            pr = predict(P, i, hosts[0])
            if pr is None: skipped += 1; continue
            alpha, kappa = pr
            d = F(1, 2**24); r2 = F(1, 2**20)      # disc radius 2^-10
            Pp = shift_side(P, i, d, 'akr'); Pm = shift_side(P, i, -d, 'akr')
            if Pp is None or Pm is None: continue
            if not (is_simple(Pp) and is_simple(Pm)): continue
            cp = local_count(Pp, Q, A, r2); cm = local_count(Pm, Q, A, r2)
            if cp is None or cm is None: continue
            pp = (1 if alpha > 0 else 0) + (1 if kappa > 0 else 0)
            pm = (1 if alpha < 0 else 0) + (1 if kappa < 0 else 0)
            tested += 1
            if (cp, cm) == (pp, pm): agree += 1
            else:
                disagree += 1
                if disagree <= 5:
                    print("MISMATCH", P, i, "pred", (pp, pm), "actual", (cp, cm))
            sums[cp] = sums.get(cp, 0) + 1
    print(f"tested={tested} formula agrees={agree} disagrees={disagree} "
          f"skipped(alpha or kappa = 0)={skipped}")
    print(f"distribution of the +delta local count: {sums}  "
          f"(both 0/2 and 1/1 must occur, else the test is vacuous)")
