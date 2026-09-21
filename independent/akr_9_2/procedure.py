"""Run AKR Sect. 9.2's PROCEDURE to completion -- "looking at the sides one by
one" -- and check the two things the paper's four sentences do not address:

  (T) TERMINATION: does the loop stop, i.e. does each shift strictly reduce the
      number of vertex-side degeneracies rather than moving them around?
  (M) MONOTONICITY: is the final |dP n dQ| >= the initial one?

Exact rationals throughout.  A shift is accepted only for a delta small enough
that the shifted polygon is simple and no NEW degeneracy is created; delta is
halved until that holds (bounded number of halvings, else the case is reported).
"""
import sys, random, collections
from fractions import Fraction as F
sys.path.insert(0, __file__.rsplit('/', 1)[0])
from shift import (is_simple, count, vertex_vertex, vertex_side, shift_side,
                   inter_points, sides)
from sweep2 import rand_simple

MAXHALVE = 60

def degen(P, Q):
    return vertex_side(P, Q)

def one_step(P, Q, rng, rule='akr'):
    """Find a side carrying a degeneracy and shift it.  Returns
    (P', Q', info) or (None, None, reason)."""
    ds = degen(P, Q)
    if not ds: return P, Q, 'done'
    # pick a degeneracy; shift the SIDE that carries it (per AKR)
    name, v, k = rng.choice(ds)
    if name == 'Qvert_on_Pside':
        host, other, flip = P, Q, False
    else:
        host, other, flip = Q, P, True
    c0 = count(host, other)
    nd0 = len(ds)
    delta = F(1)
    for _ in range(MAXHALVE):
        Hp = shift_side(host, k, delta, rule)
        Hm = shift_side(host, k, -delta, rule)
        if Hp is None or Hm is None:
            return None, None, 'UNDEFINED: three consecutive collinear vertices'
        good = []
        for H in (Hp, Hm):
            if not is_simple(H): continue
            if inter_points(H, other) is None: continue
            if vertex_vertex(H, other): continue
            c = count(H, other)
            nd = len(vertex_side(H, other) if not flip
                     else vertex_side(other, H))
            good.append((H, c, nd))
        if len(good) == 2 and good[0][1] + good[1][1] == 2*c0 \
           and all(g[2] < nd0 for g in good):
            H, c, nd = max(good, key=lambda g: g[1])
            if flip: return other, H, ('ok', c0, c, nd0, nd)
            return H, other, ('ok', c0, c, nd0, nd)
        delta = delta / 2
    return None, None, 'no small enough delta found in %d halvings' % MAXHALVE

def run(trials, seed, k, g, rule='akr'):
    rng = random.Random(seed)
    stats = collections.Counter()
    hist = collections.Counter()
    bad = []
    done = 0
    while done < trials:
        P = rand_simple(rng, k, g); Q = rand_simple(rng, k, g)
        if P is None or Q is None: continue
        if inter_points(P, Q) is None: continue
        if vertex_vertex(P, Q): continue
        d0 = degen(P, Q)
        if not d0: continue
        done += 1
        c_init = count(P, Q)
        steps = 0
        cur = (P, Q)
        while True:
            nP, nQ, info = one_step(cur[0], cur[1], rng, rule)
            if info == 'done':
                stats['terminated'] += 1
                hist[steps] += 1
                c_fin = count(cur[0], cur[1])
                if c_fin < c_init:
                    stats['COUNT DECREASED'] += 1
                    bad.append((c_init, c_fin))
                elif c_fin > c_init:
                    stats['count increased'] += 1
                else:
                    stats['count preserved'] += 1
                break
            if nP is None:
                stats[info if 'UNDEF' in info else 'no delta'] += 1
                break
            cur = (nP, nQ)
            steps += 1
            if steps > 4*len(d0) + 20:
                stats['DID NOT TERMINATE'] += 1
                break
    return stats, hist, bad

if __name__ == '__main__':
    import argparse
    ap = argparse.ArgumentParser()
    ap.add_argument('--trials', type=int, default=300)
    ap.add_argument('--seed', type=int, default=3)
    ap.add_argument('--k', type=int, default=6)
    ap.add_argument('--g', type=int, default=6)
    ap.add_argument('--rule', default='akr')
    a = ap.parse_args()
    st, hist, bad = run(a.trials, a.seed, a.k, a.g, a.rule)
    print(f"rule={a.rule} k={a.k} grid={a.g} configurations={a.trials} seed={a.seed}")
    for key in sorted(st): print(f"  {key}: {st[key]}")
    print("  steps-to-termination histogram:", dict(sorted(hist.items())))
    for b in bad[:5]: print("  DECREASE", b)
