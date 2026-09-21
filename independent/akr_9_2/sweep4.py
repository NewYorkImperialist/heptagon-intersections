"""Stratified sweep with the STRICT clause-4 test and delta chosen below the
delta_0 of REPAIR.md 2.3 (not a fixed 2^-20)."""
import sys, random, collections
from fractions import Fraction as F
sys.path.insert(0, __file__.rsplit('/', 1)[0])
from shift import inter_points, vertex_vertex, is_simple
from sweep2 import rand_simple, classify
from attack3 import check, degset_idx, delta0, dyadic_below, host_side_through

MODES = ('akr', 'translate', 'tilt')

def run(trials, seed, k, g, modes=MODES, exps=None, use_delta0=False, vv_ok=False):
    rng = random.Random(seed)
    tal = collections.defaultdict(collections.Counter)
    ex = collections.defaultdict(list)
    pairs = 0; kept = 0
    while pairs < trials:
        P = rand_simple(rng, k, g); Q = rand_simple(rng, k, g)
        if P is None or Q is None: continue
        pairs += 1
        if inter_points(P, Q) is None: continue
        if (not vv_ok) and vertex_vertex(P, Q): continue
        if not degset_idx(P, Q): continue
        kept += 1
        for i in range(len(P)):
            cls = classify(P, Q, i)
            for mode in modes:
                ds = []
                if use_delta0:
                    d0, parts = delta0(P, Q, i, mode)
                    if d0 is None:
                        tal[mode]['skip:' + str(parts)[:22]] += 1; continue
                    d = dyadic_below(d0)
                    ds = [d, d/2, d/1024]
                else:
                    ds = [F(1, 2**e) for e in (exps or [20, 34])]
                for d in ds:
                    r = check(P, Q, i, d, mode)
                    t = tal[mode]
                    if r['status'] != 'ok':
                        t['skip:' + r['status']] += 1; continue
                    t['tested'] += 1
                    t['cls:' + cls] += 1
                    if r['interior_deg']: t['has interior deg'] += 1
                    if r['endpoint_deg']: t['has endpoint deg'] += 1
                    if r['guaranteed']: t['clause3 nonvacuous'] += 1
                    if not r['identity']:
                        t['IDENTITY VIOLATION'] += 1
                        if len(ex['id']) < 5: ex['id'].append((P, Q, i, d, mode, r['c']))
                    if not r['cleared']:
                        t['NOT CLEARED (guaranteed)'] += 1
                        if len(ex['cl']) < 5: ex['cl'].append((P, Q, i, d, mode, r['guaranteed']))
                    if not r['nonew_count']: t['deg COUNT rose'] += 1
                    if not r['nonew_strict']:
                        t['NEW DEGENERACY (strict)'] += 1
                        if len(ex['nw']) < 8:
                            ex['nw'].append((P, Q, i, d, mode, r['new_plus'], r['new_minus'], r['dcount']))
                    if r['vv_new']: t['NEW VERTEX-VERTEX'] += 1
                    if not r['xcheck']: t['XCHECK MISMATCH'] += 1
    return tal, ex, pairs, kept

if __name__ == '__main__':
    import argparse
    ap = argparse.ArgumentParser()
    ap.add_argument('--trials', type=int, default=400)
    ap.add_argument('--seed', type=int, default=101)
    ap.add_argument('--k', type=int, default=7)
    ap.add_argument('--g', type=int, default=7)
    ap.add_argument('--delta0', action='store_true')
    ap.add_argument('--vv-ok', action='store_true')
    ap.add_argument('--exp', type=int, nargs='+', default=[20, 34])
    a = ap.parse_args()
    tal, ex, pairs, kept = run(a.trials, a.seed, a.k, a.g, exps=a.exp,
                               use_delta0=a.delta0, vv_ok=a.vv_ok)
    print(f"k={a.k} grid={a.g} pairs drawn={pairs} usable={kept} seed={a.seed} "
          f"delta0-mode={a.delta0} vv_ok={a.vv_ok} exps={a.exp}")
    for m in MODES:
        if m in tal: print(f"  {m:<10}", dict(sorted(tal[m].items())))
    for kk, v in ex.items():
        for e in v[:4]: print("  EX", kk, e)
