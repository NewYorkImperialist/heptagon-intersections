"""TARGETED adversarial family: MANY degeneracies on the SAME shifted side.

`docs/akr-9-1-obligation.md` Sect. 5.1 flags exactly this as what makes the 9.2
averaging step hard: "a local analysis at every degeneracy on the shifted side
simultaneously".  So build configurations that maximise the number of
simultaneous degeneracies on one side and test the identity there.

P is the rectangle (0,0)-(G,0)-(G,5)-(0,5); its side 0 is the segment y=0,
0<=x<=G.  Q is a random simple polygon on the grid x in [0,G], y in [-2,2], so
its vertices land on y=0 often.  The shifted side is always side 0 of P.
"""
import sys, random, collections
from fractions import Fraction as F
sys.path.insert(0, __file__.rsplit('/', 1)[0])
from shift import (is_simple, count, vertex_vertex, vertex_side, shift_side,
                   inter_points, sides)
from sweep2 import strictly_inside

def run(trials, seed, G, k, ys, exps):
    rng = random.Random(seed)
    P = ((F(0), F(0)), (F(G), F(0)), (F(G), F(5)), (F(0), F(5)))
    zero = [(F(x), F(0)) for x in range(1, G)]
    rest = [(F(x), F(y)) for x in range(G+1) for y in ys if y != 0]
    tally = collections.defaultdict(lambda: [0, 0])
    skips = collections.Counter()
    fails = []
    got = 0
    for _ in range(trials):
        nz = rng.randint(2, min(5, len(zero)))
        pts = rng.sample(zero, nz) + rng.sample(rest, k - nz)
        Q = None
        for _ in range(40):
            rng.shuffle(pts)
            if is_simple(tuple(pts)): Q = tuple(pts); break
        if Q is None: continue
        if inter_points(P, Q) is None: continue
        if vertex_vertex(P, Q): continue
        # how many Q-vertices lie strictly inside P's side 0?
        d = sum(1 for v in Q if strictly_inside(v, P[0], P[1]))
        if d == 0: continue
        got += 1
        c0 = count(P, Q)
        for e in exps:
            delta = F(1, 2**e)
            Pp = shift_side(P, 0, delta, 'akr'); Pm = shift_side(P, 0, -delta, 'akr')
            if not (is_simple(Pp) and is_simple(Pm)):
                skips['not simple'] += 1; continue
            x, y = count(Pp, Q), count(Pm, Q)
            if x is None or y is None:
                skips['infinite'] += 1; continue
            t = tally[d]; t[0] += 1
            if x + y != 2*c0:
                t[1] += 1
                if len(fails) < 6: fails.append((Q, d, delta, c0, x, y))
    return tally, skips, fails, got

if __name__ == '__main__':
    import argparse
    ap = argparse.ArgumentParser()
    ap.add_argument('--trials', type=int, default=20000)
    ap.add_argument('--seed', type=int, default=7)
    ap.add_argument('--G', type=int, default=8)
    ap.add_argument('--k', type=int, default=9)
    ap.add_argument('--exp', type=int, nargs='+', default=[20, 35])
    a = ap.parse_args()
    tally, skips, fails, got = run(a.trials, a.seed, a.G, a.k,
                                   (-2, -1, 0, 1, 2), a.exp)
    print(f"G={a.G} |Q|={a.k} trials={a.trials} usable={got} deltas=2^-{a.exp}")
    tot = [0, 0]
    for d in sorted(tally):
        n, v = tally[d]; tot[0] += n; tot[1] += v
        print(f"  {d} simultaneous degeneracies on the shifted side: "
              f"tested={n:<6} violations={v}")
    print(f"  TOTAL tested={tot[0]} violations={tot[1]}")
    for kk, vv in skips.items(): print(f"  skipped {kk}: {vv}")
    for f in fails: print("FAIL", f)
