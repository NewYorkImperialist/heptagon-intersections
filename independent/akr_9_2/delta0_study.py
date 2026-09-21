"""Is REPAIR.md 2.3's delta_0 CORRECT, and is it non-vacuous?

For each (config, side, rule):
  * compute delta_0 exactly (rational lower bound on it: rho's rounded DOWN,
    K's rounded UP, so our d0 <= the true delta_0);
  * SOUNDNESS: test every clause at a ladder of dyadic deltas <= d0.  Any
    failure is a counterexample to the delta_0 of 2.3.
  * TIGHTNESS / non-vacuity: find the largest dyadic delta at which some clause
    FAILS.  If nothing ever fails at any delta the test proves nothing, so we
    report the failure exponent too.
"""
import sys, random, collections
from fractions import Fraction as F
sys.path.insert(0, __file__.rsplit('/', 1)[0])
from shift import inter_points, vertex_vertex
from sweep2 import rand_simple
from attack3 import check, degset_idx, delta0, dyadic_below

MODES = ('akr', 'translate', 'tilt')

def clauses_ok(r):
    return (r['status'] == 'ok' and r['identity'] and r['cleared']
            and r['nonew_strict'] and not r['vv_new'] and r['xcheck'])

def study(trials, seed, k, g, modes=MODES, ladder=8):
    rng = random.Random(seed)
    tal = collections.defaultdict(collections.Counter)
    gap = collections.defaultdict(list)
    bad = []
    pairs = 0; kept = 0
    while pairs < trials:
        P = rand_simple(rng, k, g); Q = rand_simple(rng, k, g)
        if P is None or Q is None: continue
        pairs += 1
        if inter_points(P, Q) is None or vertex_vertex(P, Q): continue
        if not degset_idx(P, Q): continue
        kept += 1
        for i in range(len(P)):
            for m in modes:
                d0, parts = delta0(P, Q, i, m)
                if d0 is None:
                    tal[m]['skip:' + str(parts)[:20]] += 1; continue
                d = dyadic_below(d0)
                e0 = 0
                while F(1, 2**e0) != d: e0 += 1
                tal[m]['tested configs'] += 1
                tal[m]['e0=%d' % e0] += 1
                # SOUNDNESS
                fail_below = None
                for j in range(ladder):
                    r = check(P, Q, i, d / 2**j, m)
                    if not clauses_ok(r):
                        fail_below = (j, r.get('status'), r.get('identity'),
                                      r.get('cleared'), r.get('nonew_strict'))
                        break
                if fail_below:
                    tal[m]['*** FAILS BELOW delta_0 ***'] += 1
                    if len(bad) < 10: bad.append((P, Q, i, m, e0, fail_below))
                # TIGHTNESS: largest exponent e < e0 at which something fails
                first_bad = None
                for e in range(1, e0):
                    r = check(P, Q, i, F(1, 2**e), m)
                    if not clauses_ok(r):
                        first_bad = e; break
                if first_bad is None:
                    tal[m]['no failure at any delta > delta_0'] += 1
                else:
                    tal[m]['fails at some delta > delta_0'] += 1
                    gap[m].append(e0 - first_bad)
    return tal, gap, bad, pairs, kept

if __name__ == '__main__':
    import argparse
    ap = argparse.ArgumentParser()
    ap.add_argument('--trials', type=int, default=150)
    ap.add_argument('--seed', type=int, default=303)
    ap.add_argument('--k', type=int, default=7)
    ap.add_argument('--g', type=int, default=7)
    a = ap.parse_args()
    tal, gap, bad, pairs, kept = study(a.trials, a.seed, a.k, a.g)
    print(f"delta_0 study: k={a.k} grid={a.g} pairs={pairs} usable={kept} seed={a.seed}")
    for m in MODES:
        print(f"  {m:<10}", dict(sorted(tal[m].items())))
        if gap[m]:
            g = sorted(gap[m])
            print(f"      exponent slack e0-e_fail: min={g[0]} median={g[len(g)//2]} max={g[-1]} n={len(g)}")
    for b in bad: print("  *** BAD", b)
