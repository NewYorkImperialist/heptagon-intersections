"""Check the CLOSED FORMS that Sect. 2.6 of REPAIR.md derives, against
brute-force exact counting inside a small disc.  Exact rationals.

  (P3-i)  at the moving endpoint A, with t the Q-side through A, v its
          direction, a the rule's direction at A:
              c_A(d) = [sgn(d*c_a*cross(v,a)) != sgn cross(w,v)]
                     + [sgn(d*c_a*cross(v,a)) != sgn cross(v,u)]
  (P2-i)  at a Q-vertex p = C + t0*w in the interior of the rotating side s^-,
          with e^+- its two Q-edges:
              c_p(d) = [sgn(d*c_a*t0*cross(a,w)) != sgn cross(w,e^-)]
                     + [sgn(d*c_a*t0*cross(a,w)) != sgn cross(w,e^+)]
"""
import sys, random, collections
from fractions import Fraction as F
sys.path.insert(0, __file__.rsplit('/', 1)[0])
from shift import is_simple, inter_points, vertex_vertex, sides, cross, sub, count
from repair import frame, dot, DIRS, shift, host_side_through
from attack import degset
from sweep2 import rand_simple, strictly_inside

def sgn(x): return (x > 0) - (x < 0)

def local(P, Q, p, r2):
    S = inter_points(P, Q)
    if S is None: return None
    return sum(1 for x in S if (x[0]-p[0])**2 + (x[1]-p[1])**2 < r2)

def run(trials, seed, k, g, mode, delta, r2):
    rng = random.Random(seed)
    tal = collections.Counter(); vals = collections.Counter()
    tal2 = collections.Counter(); vals2 = collections.Counter()
    done = 0
    while done < trials:
        P = rand_simple(rng, k, g); Q = rand_simple(rng, k, g)
        if P is None or Q is None: continue
        if inter_points(P, Q) is None or vertex_vertex(P, Q): continue
        done += 1
        for i in range(k):
            A, B, C, D, u, n, N = frame(P, i)
            a, b = DIRS[mode](P, Q, i)
            da = dot(a, n)
            if da == 0: continue
            ca = F(N, 1) / da
            w = sub(A, C)
            # ---- (P3-i) at A
            t = host_side_through(A, Q)
            if t is not None:
                v = sub(t[1], t[0])
                if cross(v, a) != 0 and cross(w, v) != 0 and cross(v, u) != 0:
                    for sg in (1, -1):
                        d = sg*delta
                        s0 = sgn(d * ca * cross(v, a))
                        pred = (s0 != sgn(cross(w, v))) + (s0 != sgn(cross(v, u)))
                        Pn = shift(P, Q, i, d, mode)
                        if Pn is None or not is_simple(Pn): continue
                        obs = local(Pn, Q, A, r2)
                        if obs is None: continue
                        tal['P3 agree' if obs == pred else 'P3 DISAGREE'] += 1
                        vals[obs] += 1
            # ---- (P2-i) at a Q-vertex inside s^- = [C,A]
            if cross(a, w) == 0: continue
            for j, q in enumerate(Q):
                if not strictly_inside(q, C, A): continue
                em = sub(Q[(j-1) % len(Q)], q); ep = sub(Q[(j+1) % len(Q)], q)
                if cross(w, em) == 0 or cross(w, ep) == 0: continue
                t0 = F(dot(sub(q, C), w), 1) / dot(w, w)
                for sg in (1, -1):
                    d = sg*delta
                    s0 = sgn(d * ca * t0 * cross(a, w))
                    pred = (s0 != sgn(cross(w, em))) + (s0 != sgn(cross(w, ep)))
                    Pn = shift(P, Q, i, d, mode)
                    if Pn is None or not is_simple(Pn): continue
                    obs = local(Pn, Q, q, r2)
                    if obs is None: continue
                    tal2['P2 agree' if obs == pred else 'P2 DISAGREE'] += 1
                    vals2[obs] += 1
    return tal, vals, tal2, vals2

if __name__ == '__main__':
    import argparse
    ap = argparse.ArgumentParser()
    ap.add_argument('--trials', type=int, default=700)
    ap.add_argument('--seed', type=int, default=55)
    ap.add_argument('--k', type=int, default=6)
    ap.add_argument('--g', type=int, default=6)
    ap.add_argument('--mode', default='translate')
    ap.add_argument('--exp', type=int, default=24)
    a = ap.parse_args()
    t, v, t2, v2 = run(a.trials, a.seed, a.k, a.g, a.mode,
                       F(1, 2**a.exp), F(1, 2**20))
    print(f"mode={a.mode} k={a.k} grid={a.g} configs={a.trials} delta=2^-{a.exp} "
          f"disc radius^2 = 2^-20")
    print("  (P3-i) moving endpoint  :", dict(t), " observed local counts:", dict(sorted(v.items())))
    print("  (P2-i) rotating nbr side:", dict(t2), " observed local counts:", dict(sorted(v2.items())))
