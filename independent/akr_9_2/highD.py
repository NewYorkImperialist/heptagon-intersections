"""Adversarial HIGH-DEGENERACY configurations, and the termination loop on them.

REPAIR.md 3.1 bounds D <= m + n = 14 but the random sweeps in 4.6 only ever saw
D = 5.  A bound is only interesting near the top, so this file searches for
pairs of heptagons with as many vertex-side degeneracies as it can find, and
runs the round-2 termination loop (delta from delta_0 only) on them.
"""
import sys, random, collections
from fractions import Fraction as F
sys.path.insert(0, __file__.rsplit('/', 1)[0])
from shift import is_simple, count, vertex_vertex, inter_points, sides, cross, sub
from attack3 import degset_idx, strictly_inside
from termination2 import two_pass, Fail

def on_side_points(P, g):
    """Grid points strictly inside a side of P."""
    out = []
    for (c, d) in sides(P):
        for x in range(-g, 2*g+1):
            for y in range(-g, 2*g+1):
                v = (F(x), F(y))
                if strictly_inside(v, c, d): out.append(v)
    return sorted(set(out))

def search(trials, seed, g=9, k=7, want=6):
    """Random P; Q built mostly from points lying on P's sides."""
    rng = random.Random(seed)
    grid = [(F(x), F(y)) for x in range(g) for y in range(g)]
    best = []
    for _ in range(trials):
        pts = rng.sample(grid, k)
        P = None
        for _ in range(60):
            rng.shuffle(pts)
            if is_simple(tuple(pts)): P = tuple(pts); break
        if P is None: continue
        onp = [v for v in on_side_points(P, g) if v not in P]
        if len(onp) < 3: continue
        for _ in range(30):
            nq = rng.randint(3, min(5, len(onp)))
            cand = rng.sample(onp, nq) + rng.sample(
                [v for v in grid if v not in P and v not in onp], k - nq)
            if len(set(cand)) != k: continue
            Q = None
            for _ in range(60):
                rng.shuffle(cand)
                if is_simple(tuple(cand)): Q = tuple(cand); break
            if Q is None: continue
            if inter_points(P, Q) is None or vertex_vertex(P, Q): continue
            D = degset_idx(P, Q)
            if len(D) >= want: best.append((len(D), P, Q))
    return best

if __name__ == '__main__':
    import argparse
    ap = argparse.ArgumentParser()
    ap.add_argument('--trials', type=int, default=400)
    ap.add_argument('--seed', type=int, default=777)
    ap.add_argument('--want', type=int, default=6)
    a = ap.parse_args()
    best = search(a.trials, a.seed, want=a.want)
    best.sort(key=lambda t: -t[0])
    seen = set(); uniq = []
    for d, P, Q in best:
        if (P, Q) in seen: continue
        seen.add((P, Q)); uniq.append((d, P, Q))
    print(f"found {len(uniq)} distinct pairs with D >= {a.want}; "
          f"D histogram {collections.Counter(d for d,_,_ in uniq)}")
    for mode in ('tilt', 'translate', 'akr'):
        st = collections.Counter(); hist = collections.Counter()
        for order in ('fwd', 'rev', 'rand'):
            rng = random.Random(9)
            for d, P, Q in uniq[:120]:
                oP = list(range(len(P))); oQ = list(range(len(Q)))
                if order == 'rev': oP.reverse(); oQ.reverse()
                elif order == 'rand': rng.shuffle(oP); rng.shuffle(oQ)
                c0 = count(P, Q)
                try:
                    Pf, Qf, sh, log, dPleft = two_pass(P, Q, mode, oP, oQ)
                except Fail as e:
                    st['*** ' + str(e)[:46]] += 1; continue
                left = len(degset_idx(Pf, Qf))
                st['cleared' if not left else '*** LEFT %d ***' % left] += 1
                st['P-pass alone sufficed' if dPleft == 0 else
                   'Q-pass needed'] += 1
                hist[sh] += 1
                cf = count(Pf, Qf)
                if cf < c0: st['*** COUNT DECREASED ***'] += 1
                if sh > len(P)+len(Q): st['*** > m+n SHIFTS ***'] += 1
        print(f"  {mode:<10}", dict(sorted(st.items())), "shifts", dict(sorted(hist.items())))
