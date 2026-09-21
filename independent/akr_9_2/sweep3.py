"""Stratified sweep for the generalised shift, modes akr / translate / tilt.
Reports identity violations, clause-3 (cleared) failures and clause-4 (no new
degeneracy) failures separately.  Exact rationals."""
import sys, random, collections
from fractions import Fraction as F
sys.path.insert(0, __file__.rsplit('/', 1)[0])
from shift import inter_points, vertex_vertex
from sweep2 import rand_simple, classify
from attack import check_instance, degset, base_ok

def run(trials, seed, k, g, mode, deltas, require=None, vv_ok=False):
    rng = random.Random(seed)
    tal = collections.defaultdict(lambda: collections.Counter())
    fails = []
    pairs = 0
    while pairs < trials:
        P = rand_simple(rng, k, g); Q = rand_simple(rng, k, g)
        if P is None or Q is None: continue
        pairs += 1
        if inter_points(P, Q) is None: continue
        if (not vv_ok) and vertex_vertex(P, Q): continue
        if not degset(P, Q): continue
        for i in range(len(P)):
            cls = classify(P, Q, i)
            if require and cls not in require: continue
            for d in deltas:
                r = check_instance(P, Q, i, d, mode)
                t = tal[cls]
                if r['status'] != 'ok':
                    t['skip:' + r['status']] += 1; continue
                t['tested'] += 1
                if not r['identity']:
                    t['IDENTITY VIOLATION'] += 1
                    if len(fails) < 6: fails.append(('id', P, Q, i, d, r['c']))
                if r['ntouch'] and not r['cleared']:
                    t['NOT CLEARED'] += 1
                    if len(fails) < 12: fails.append(('clear', P, Q, i, d, r['survivors']))
                if not r['nonew']:
                    t['DEGENERACY COUNT ROSE'] += 1
                    if len(fails) < 18: fails.append(('new', P, Q, i, d, r['dcount']))
    return tal, fails, pairs

if __name__ == '__main__':
    import argparse
    ap = argparse.ArgumentParser()
    ap.add_argument('--trials', type=int, default=2000)
    ap.add_argument('--seed', type=int, default=11)
    ap.add_argument('--k', type=int, default=6)
    ap.add_argument('--g', type=int, default=6)
    ap.add_argument('--mode', default='translate')
    ap.add_argument('--exp', type=int, nargs='+', default=[20])
    ap.add_argument('--require', default=None)
    ap.add_argument('--vv-ok', action='store_true')
    a = ap.parse_args()
    deltas = [F(1, 2**e) for e in a.exp]
    req = a.require.split(',') if a.require else None
    tal, fails, pairs = run(a.trials, a.seed, a.k, a.g, a.mode, deltas, req, a.vv_ok)
    print(f"mode={a.mode} k={a.k} grid={a.g} pairs={pairs} seed={a.seed} "
          f"deltas=2^-{a.exp} require={req} vv_ok={a.vv_ok}")
    tot = collections.Counter()
    for c in sorted(tal):
        print(f"  class {c:<3}", dict(tal[c]))
        tot.update(tal[c])
    print("  TOTAL", dict(tot))
    for f in fails[:6]: print("  FAIL", f)
