"""Randomised exact-arithmetic test of the AKR Sect. 9.2 averaging claim:

      |dP(+d) n dQ|  +  |dP(-d) n dQ|  ==  2 |dP n dQ|

for every side of P and every sufficiently small shift d, where P(d) is P with
one side parallel-shifted by d.  Exact rationals throughout.
"""
import random, sys
from fractions import Fraction as F
sys.path.insert(0, __file__.rsplit('/', 1)[0])
from shift import (is_simple, count, vertex_vertex, vertex_side, shift_side,
                   inter_points, sides)

DELTAS = [F(1, 2**k) for k in (3, 6, 10, 16, 24, 40)]

def rand_simple(rng, k, g):
    pts = rng.sample([(F(x), F(y)) for x in range(g) for y in range(g)], k)
    for _ in range(60):
        rng.shuffle(pts)
        t = tuple(pts)
        if is_simple(t): return t
    return None

def test_pair(P, Q, rule='akr', deltas=DELTAS):
    """Returns (results, skipped) where results is a list of
    (side_index, delta, c0, cplus, cminus, ok)."""
    c0 = count(P, Q)
    res, skipped = [], []
    for i in range(len(P)):
        for d in deltas:
            Pp = shift_side(P, i, d, rule)
            Pm = shift_side(P, i, -d, rule)
            if Pp is None or Pm is None:
                skipped.append((i, d, 'undefined: adjacent side parallel'))
                continue
            if not (is_simple(Pp) and is_simple(Pm)):
                skipped.append((i, d, 'shifted polygon not simple'))
                continue
            cp, cm = count(Pp, Q), count(Pm, Q)
            if cp is None or cm is None:
                skipped.append((i, d, 'shifted config has overlapping sides'))
                continue
            res.append((i, d, c0, cp, cm, cp + cm == 2*c0))
    return res, skipped

def perdelta_keys(pd):
    return list(pd.keys())

def main(trials=4000, seed=20260920, k=6, g=6, rule='akr', verbose=False):
    rng = random.Random(seed)
    stats = dict(pairs=0, with_vs=0, tested=0, ok=0, bad=0, skip=0,
                 bad_small=0, tested_small=0, nonsimple=0, undefined=0)
    failures = []
    perdelta = {}
    while stats['pairs'] < trials:
        P = rand_simple(rng, k, g)
        Q = rand_simple(rng, k, g)
        if P is None or Q is None: continue
        stats['pairs'] += 1
        if inter_points(P, Q) is None: continue       # overlapping sides
        if vertex_vertex(P, Q): continue              # 9.1 already removed these
        vs = vertex_side(P, Q)
        if not vs: continue
        stats['with_vs'] += 1
        res, skipped = test_pair(P, Q, rule)
        stats['skip'] += len(skipped)
        for (_, dd, why) in skipped:
            if 'not simple' in why: stats['nonsimple'] += 1
            if 'undefined' in why: stats['undefined'] += 1
        for (i, d, c0, cp, cm, ok) in res:
            stats['tested'] += 1
            pd = perdelta.setdefault(d, [0, 0])
            pd[0] += 1
            if not ok: pd[1] += 1
            small = d <= F(1, 2**16)
            if small: stats['tested_small'] += 1
            if ok: stats['ok'] += 1
            else:
                stats['bad'] += 1
                if small:
                    stats['bad_small'] += 1
                    if len(failures) < 12:
                        failures.append((P, Q, i, d, c0, cp, cm))
    return stats, failures, perdelta

if __name__ == '__main__':
    import argparse
    ap = argparse.ArgumentParser()
    ap.add_argument('--trials', type=int, default=4000)
    ap.add_argument('--seed', type=int, default=20260920)
    ap.add_argument('--k', type=int, default=6)
    ap.add_argument('--g', type=int, default=6)
    ap.add_argument('--rule', default='akr')
    a = ap.parse_args()
    st, fl, pd = main(a.trials, a.seed, a.k, a.g, a.rule)
    print(f"rule={a.rule} k={a.k} grid={a.g} trials={a.trials} seed={a.seed}")
    print(st)
    for d in sorted(perdelta_keys(pd)):
        n, b = pd[d]
        print(f"  delta=1/{int(1/d)}  tested={n}  violations={b}")
    for f in fl:
        print("FAIL", f)
