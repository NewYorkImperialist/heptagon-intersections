"""Sect. 9.2 averaging sweep, stratified by the kind of degeneracy the shifted
side carries.  Exact rationals only.

Classes for the shifted side s = [P_i, P_{i+1}]:
  I  -- some Q-vertex lies strictly inside s                (the case AKR's
        sentence describes: "disappear or multiply into two")
  E  -- P_i or P_{i+1} lies strictly inside some Q-side     (the case AKR's
        sentence does NOT describe: the moving endpoint)
  IE -- both
  N  -- neither
"""
import random, sys, collections
from fractions import Fraction as F
sys.path.insert(0, __file__.rsplit('/', 1)[0])
from shift import (is_simple, count, vertex_vertex, vertex_side, shift_side,
                   inter_points, sides, cross, sub)

def rand_simple(rng, k, g):
    pts = rng.sample([(F(x), F(y)) for x in range(g) for y in range(g)], k)
    for _ in range(80):
        rng.shuffle(pts)
        t = tuple(pts)
        if is_simple(t): return t
    return None

def strictly_inside(v, c, d):
    if v == c or v == d: return False
    if cross(sub(d, c), sub(v, c)) != 0: return False
    dd = sub(d, c); vv = sub(v, c)
    t = F(vv[0]*dd[0] + vv[1]*dd[1], 1) / (dd[0]*dd[0] + dd[1]*dd[1])
    return 0 < t < 1

def classify(P, Q, i):
    m = len(P)
    s = (P[i], P[(i+1) % m])
    I = any(strictly_inside(v, s[0], s[1]) for v in Q)
    E = any(strictly_inside(P[i], c, d) or strictly_inside(P[(i+1) % m], c, d)
            for (c, d) in sides(Q))
    return ('IE' if (I and E) else 'I' if I else 'E' if E else 'N')

def run(trials, seed, k, g, rule, deltas, require=None):
    rng = random.Random(seed)
    tally = collections.defaultdict(lambda: [0, 0])   # class -> [tested, viol]
    skips = collections.Counter()
    fails = []
    pairs = 0
    while pairs < trials:
        P = rand_simple(rng, k, g); Q = rand_simple(rng, k, g)
        if P is None or Q is None: continue
        pairs += 1
        if inter_points(P, Q) is None: continue
        if vertex_vertex(P, Q): continue
        if not vertex_side(P, Q): continue
        c0 = count(P, Q)
        for i in range(len(P)):
            cls = classify(P, Q, i)
            if require and cls not in require: continue
            for d in deltas:
                Pp = shift_side(P, i, d, rule); Pm = shift_side(P, i, -d, rule)
                if Pp is None or Pm is None:
                    skips['undefined (adjacent side parallel to s)'] += 1; continue
                if not (is_simple(Pp) and is_simple(Pm)):
                    skips['shifted polygon not simple'] += 1; continue
                cp, cm = count(Pp, Q), count(Pm, Q)
                if cp is None or cm is None:
                    skips['shifted config has overlapping sides'] += 1; continue
                t = tally[cls]; t[0] += 1
                if cp + cm != 2*c0:
                    t[1] += 1
                    if len(fails) < 8: fails.append((P, Q, i, d, c0, cp, cm, cls))
    return tally, skips, fails, pairs

if __name__ == '__main__':
    import argparse
    ap = argparse.ArgumentParser()
    ap.add_argument('--trials', type=int, default=2000)
    ap.add_argument('--seed', type=int, default=1)
    ap.add_argument('--k', type=int, default=6)
    ap.add_argument('--g', type=int, default=6)
    ap.add_argument('--rule', default='akr')
    ap.add_argument('--exp', type=int, nargs='+', default=[20])
    ap.add_argument('--require', default=None)
    a = ap.parse_args()
    deltas = [F(1, 2**e) for e in a.exp]
    req = a.require.split(',') if a.require else None
    tally, skips, fails, pairs = run(a.trials, a.seed, a.k, a.g, a.rule, deltas, req)
    print(f"rule={a.rule} k={a.k} grid={a.g} pairs={pairs} seed={a.seed} "
          f"deltas=2^-{a.exp} require={req}")
    tot = [0, 0]
    for c in sorted(tally):
        n, v = tally[c]; tot[0] += n; tot[1] += v
        print(f"  class {c:<2} tested={n:<7} violations={v}")
    print(f"  TOTAL    tested={tot[0]:<7} violations={tot[1]}")
    for kk, vv in skips.items(): print(f"  skipped: {kk}: {vv}")
    for f in fails: print("FAIL", f)
