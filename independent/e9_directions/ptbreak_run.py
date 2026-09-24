"""ptbreak_run.py -- CHUNKED driver.  Every invocation does a few dozen
instances, prints a running summary, appends to ptbreak_report.log and exits.

  python3 ptbreak_run.py --family two_touch --start 0 --count 40 [--seed 7]
  python3 ptbreak_run.py --mode controls --start 0 --count 40
  python3 ptbreak_run.py --mode deep --family many_touch --start 0 --count 6
"""

import argparse
import os
import random
import sys
import time
from fractions import Fraction as F

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

import ptbreak_lib as L      # noqa: E402
import ptbreak_gen as G      # noqa: E402
from move_effect_lib import N   # noqa: E402

HERE = os.path.dirname(os.path.abspath(__file__))
LOG = os.path.join(HERE, 'ptbreak_report.log')

FINE = F(1, 10 ** 12)
SCALES = [F(1, 10), F(1, 100), F(1, 1000), F(1, 10 ** 6), F(1, 10 ** 9), FINE]
DEEP_SCALES = SCALES + [F(1, 10 ** 15), F(1, 10 ** 18), F(1, 10 ** 24)]


def fmt(W):
    def c(x):
        return str(x.numerator) if x.denominator == 1 else f"{x.numerator}/{x.denominator}"
    return "[" + ", ".join(f"({c(p[0])},{c(p[1])})" for p in W) + "]"


def inst_rng(seed, family, idx):
    return random.Random((seed * 1000003 + idx * 7919
                          + sum(ord(ch) for ch in family) * 104729) % (2 ** 63))


def analyse(inst, scales):
    """Complete small-displacement cell enumeration + anatomy."""
    cells = L.cell_directions(inst)
    per_scale_best = {}
    per_scale_spec = {}
    n_adm = 0
    n_try = 0
    best = None
    fine_by_cell = {}
    prev_by_cell = {}
    unstable = 0
    for (u, kind) in cells:
        for lam in scales:
            n_try += 1
            r = inst.ev(L.scale(u, lam))
            if r is None:
                continue
            n_adm += 1
            r['kind'] = kind
            r['lam'] = lam
            r['dir'] = u
            if best is None or r['dM'] > best['dM']:
                best = r
            cur = per_scale_best.get(lam)
            if cur is None or r['dM'] > cur['dM']:
                per_scale_best[lam] = r
            per_scale_spec.setdefault(lam, {})
            per_scale_spec[lam][r['dM']] = per_scale_spec[lam].get(r['dM'], 0) + 1
            if lam == scales[-1]:
                fine_by_cell[u] = r['dM']
            if lam == scales[-2]:
                prev_by_cell[u] = r['dM']
    for u in fine_by_cell:
        if u in prev_by_cell and prev_by_cell[u] != fine_by_cell[u]:
            unstable += 1
    return dict(cells=len(cells), n_try=n_try, n_adm=n_adm, best=best,
                per_scale_best=per_scale_best, per_scale_spec=per_scale_spec,
                unstable=unstable, scales=scales)


def one_instance(log, inst, scales, verbose=False):
    a = analyse(inst, scales)
    fine = a['per_scale_best'].get(scales[-1])
    anat = inst.anat
    kinds = [x['kind'][0] for x in anat]
    sides = ''.join(x['side'][-1] for x in anat)
    apex = L.apex_anatomy(inst)
    coll = L.collinear_apex(inst)
    rec = dict(
        family=inst.family, base_cross=len(inst.b_cross), base_dp=len(inst.b_dp),
        base_M=inst.b_M, base_nco=inst.b_nco,
        n_incident=len(anat),
        n_touch=sum(1 for x in anat if x['kind'] == 'touch'),
        n_trans=sum(1 for x in anat if x['kind'] == 'trans'),
        both_sides=(any(x['side'] == 'v-1' for x in anat)
                    and any(x['side'] == 'v' for x in anat)),
        apex=apex, collinear=coll,
        cells=a['cells'], n_adm=a['n_adm'], n_try=a['n_try'],
        max_all=(a['best']['dM'] if a['best'] else None),
        max_fine=(fine['dM'] if fine else None),
        unstable=a['unstable'],
        spec_fine=a['per_scale_spec'].get(scales[-1], {}),
        inst=inst, a=a)
    return rec


def summarise(log, recs, label):
    if not recs:
        log(f"  {label}: no instances")
        return
    n = len(recs)
    bad = [r for r in recs if r['max_all'] is None or r['max_all'] < 0]
    bad_fine = [r for r in recs if r['max_fine'] is None or r['max_fine'] < 0]
    tight = [r for r in recs if r['max_fine'] == 0]
    dist = {}
    for r in recs:
        dist[r['max_fine']] = dist.get(r['max_fine'], 0) + 1
    log(f"  {label}: {n} instances")
    log(f"    max dM_pt over the COMPLETE small-d cell enumeration, distribution: "
        f"{dict(sorted(dist.items(), key=lambda kv: (kv[0] is None, kv[0])))}")
    log(f"    instances whose best small-d move is EXACTLY 0 (tight): {len(tight)}")
    log(f"    COUNTEREXAMPLES (max over every d searched < 0): {len(bad)}")
    log(f"    small-d-only failures (max at 1e-12 < 0): {len(bad_fine)}")
    log(f"    cells per instance: min {min(r['cells'] for r in recs)} "
        f"max {max(r['cells'] for r in recs)} "
        f"mean {sum(r['cells'] for r in recs)/n:.0f}")
    log(f"    displacements evaluated: {sum(r['n_try'] for r in recs)} "
        f"({sum(r['n_adm'] for r in recs)} admissible)")
    log(f"    instances with BOTH incident P-sides carrying a non-apex degPt: "
        f"{sum(1 for r in recs if r['both_sides'])}")
    log(f"    incident non-apex degPts per instance: "
        f"{dict(sorted({r['n_incident']: sum(1 for x in recs if x['n_incident']==r['n_incident']) for r in recs}.items()))}")
    log(f"    touch/transversal incident degPts: "
        f"{sum(r['n_touch'] for r in recs)} touch, {sum(r['n_trans'] for r in recs)} trans")
    log(f"    apex character: " + str({k: sum(1 for r in recs if r['apex'] == k)
                                       for k in ('touch', 'trans', 'degen', None)}))
    log(f"    collinear-apex instances: {sum(1 for r in recs if r['collinear'])}")
    log(f"    base |crossPairs| max {max(r['base_cross'] for r in recs)}, "
        f"base |degPts| max {max(r['base_dp'] for r in recs)}, "
        f"base |coincSet| max {max(r['base_nco'] for r in recs)}")
    log(f"    cells whose dM_pt changed between 1e-9 and 1e-12 (scale instability): "
        f"{sum(r['unstable'] for r in recs)}")
    for r in bad:
        log("    *** COUNTEREXAMPLE ***")
        dump(log, r)


def dump(log, r):
    inst = r['inst']
    log(f"      family={r['family']} apex v={inst.v} coincidence j={inst.j0}")
    log(f"      P = {fmt(inst.P)}")
    log(f"      Q = {fmt(inst.Q)}")
    log(f"      base: |crossPairs|={r['base_cross']} |degPts|={r['base_dp']} "
        f"M_pt={r['base_M']} |coincSet|={r['base_nco']}")
    log(f"      incident non-apex degPts: "
        f"{[(x['side'], x['kind'], fmt([x['pt']])) for x in inst.anat]}")
    log(f"      apex character={r['apex']} collinear_apex={r['collinear']}")
    log(f"      max dM_pt over {r['n_try']} displacements ({r['cells']} cells x "
        f"{len(r['a']['scales'])} scales): all={r['max_all']} fine={r['max_fine']}")
    b = r['a']['best']
    if b:
        log(f"      best move: d=({b['d'][0]},{b['d'][1]})  dM={b['dM']} "
            f"dCross={b['dcross']} dDegPts={b['ddp']} dCoinc={b['dco']}")


# ------------------------------------------------------------------ controls

DIRS80 = [d for d in L.primitive_dirs(5)]


def diam(inst):
    pts = list(inst.P) + list(inst.Q)
    xs = [p[0] for p in pts]
    ys = [p[1] for p in pts]
    return max(max(xs) - min(xs), max(ys) - min(ys))


def controls(log, seed, start, count, families):
    log(f"CONTROLS  instances {start}..{start+count-1} over {families}")
    tot = dict(true_fail=0, A_fail=0, B_fail=0, B2_fail=0, C_fail=0,
               D_fail=0, E_fail=0, n=0)
    for idx in range(start, start + count):
        fam = families[idx % len(families)]
        inst = G.make(inst_rng(seed, fam, idx), fam)
        if inst is None:
            continue
        tot['n'] += 1
        b_seg = len(inst.b_cross) + len(inst.b_sd) + len(inst.b_sdp)
        # the TRUE claim: some admissible small d with dM >= 0
        ok_true = ok_A = ok_C = ok_D = ok_E = False
        for (u, kind) in L.cell_directions(inst):
            for lam in (F(1, 1000), FINE):
                r = inst.ev(L.scale(u, lam))
                if r is None:
                    continue
                if r['dM'] >= 0:
                    ok_true = True
                if r['dM'] > 0:
                    ok_A = True
                if r['dM'] >= 2:
                    ok_D = True
                if r['ddp'] >= 0:
                    ok_C = True
                if r['ncross'] + r['nsd'] + r['nsdp'] >= b_seg:
                    ok_E = True
        # FALSE VARIANT B: only |e| in {1,2,4} on the 80-direction grid
        # FALSE VARIANT B2: the same, but only displacements that are LARGE
        # relative to the instance (|d|_inf >= diameter/4).
        lo = diam(inst) / 4
        ok_B = ok_B2 = False
        for E in DIRS80:
            for e in (F(1), F(2), F(4), F(-1), F(-2), F(-4)):
                d = (E[0] * e, E[1] * e)
                r = inst.ev(d)
                if r is not None and r['dM'] >= 0:
                    ok_B = True
                    if max(abs(d[0]), abs(d[1])) >= lo:
                        ok_B2 = True
        # also let B2 use the full cell directions at large scale
        if not ok_B2:
            for (u, kind) in L.cell_directions(inst):
                m = max(abs(u[0]), abs(u[1]))
                for lam in (lo / m, 2 * lo / m, 4 * lo / m):
                    r = inst.ev(L.scale(u, lam))
                    if r is not None and r['dM'] >= 0:
                        ok_B2 = True
                        break
                if ok_B2:
                    break
        for key, ok in (('true_fail', ok_true), ('A_fail', ok_A),
                        ('B_fail', ok_B), ('B2_fail', ok_B2),
                        ('C_fail', ok_C), ('D_fail', ok_D), ('E_fail', ok_E)):
            if not ok:
                tot[key] += 1
        if tot['n'] % 20 == 0:
            print(f"    ... {tot['n']} instances, running {tot}", flush=True)
    log(f"  instances: {tot['n']}")
    log(f"  TRUE claim   'some admissible d has dM_pt >= 0'        : failures {tot['true_fail']}")
    log(f"  FALSE VAR A  'some admissible d has dM_pt >  0'        : failures {tot['A_fail']}"
        f"   (must be > 0 or the harness is broken)")
    log(f"  FALSE VAR B  'dM_pt >= 0 reachable with |e| in 1,2,4'  : failures {tot['B_fail']}"
        f"   (NOT discriminating: e=1 on a unit direction is still a small move)")
    log(f"  FALSE VAR B2 'dM_pt >= 0 reachable with |d| >= diam/4' : failures {tot['B2_fail']}"
        f"   (must be > 0 or the harness is broken)")
    log(f"  FALSE VAR C  '|degPts| alone never decreases'          : failures {tot['C_fail']}"
        f"   (must be > 0 or degPts is not doing any work)")
    log(f"  FALSE VAR D  'some admissible d has dM_pt >= +2'       : failures {tot['D_fail']}"
        f"   (must be > 0: tight instances cannot gain 2)")
    log(f"  FALSE VAR E  'M_seg = |cross|+|segDeg|+|segDegP| never decreases' : "
        f"failures {tot['E_fail']}"
        f"   (must be > 0: M_seg is the measure ALREADY REFUTED by the project)")
    return tot


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--family', default='two_touch')
    ap.add_argument('--start', type=int, default=0)
    ap.add_argument('--count', type=int, default=40)
    ap.add_argument('--seed', type=int, default=20250924)
    ap.add_argument('--mode', default='sweep')
    ap.add_argument('--tag', default='')
    args = ap.parse_args()

    fh = open(LOG, 'a')

    def log(*a):
        s = " ".join(str(x) for x in a)
        print(s, flush=True)
        fh.write(s + "\n")
        fh.flush()

    t0 = time.time()
    log("=" * 78)
    log(f"ptbreak_run  mode={args.mode} family={args.family} "
        f"start={args.start} count={args.count} seed={args.seed} {args.tag}")

    if args.mode == 'controls':
        fams = ['two_touch', 'many_touch', 'collinear_apex', 'high_cross',
                'multi_coinc', 'random']
        controls(log, args.seed, args.start, args.count, fams)
        log(f"  elapsed {time.time()-t0:.1f}s")
        return

    scales = DEEP_SCALES if args.mode == 'deep' else SCALES
    recs = []
    n_gen_fail = 0
    for idx in range(args.start, args.start + args.count):
        inst = G.make(inst_rng(args.seed, args.family, idx), args.family)
        if inst is None:
            n_gen_fail += 1
            continue
        r = one_instance(log, inst, scales)
        recs.append(r)
        if r['max_all'] is None or r['max_all'] < 0 or len(recs) % 10 == 0:
            print(f"    ... {len(recs)} done (idx {idx}) max_all={r['max_all']} "
                  f"max_fine={r['max_fine']} incid={r['n_incident']} "
                  f"apex={r['apex']} t={time.time()-t0:.0f}s", flush=True)
    log(f"  generation failures: {n_gen_fail}")
    summarise(log, recs, f"{args.family}[{args.start}:{args.start+args.count}]")
    # the tightest instances: show anatomy of a few whose best is exactly 0
    tight = [r for r in recs if r['max_fine'] == 0]
    for r in tight[:3]:
        log("    -- an instance whose best small-d move is EXACTLY 0 --")
        dump(log, r)
    log(f"  elapsed {time.time()-t0:.1f}s")


if __name__ == '__main__':
    main()
