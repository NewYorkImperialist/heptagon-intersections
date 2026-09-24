"""ptbreak_hunt.py -- the adversarial half of the attack.

`ptbreak_run.py` measures.  This hunts: it MINIMISES, over instances, the
quantity

      maxdM(instance) = max over all admissible displacements d of dM_pt

A counterexample to the conjecture is exactly an instance with maxdM < 0.
Anything with maxdM == 0 is a TIGHTNESS witness: the conjecture holds there
with no slack at all.

Two hunters:

  * `hunt`  -- random hard-family instances, complete small-d cell enumeration
               at the finest scale only (fast), with a full deep re-check of
               anything that scores <= 0.
  * `enum`  -- takes ONE random Q and enumerates every admissible (j,a,b)
               apex/ray triple, building a P for each.  This sweeps the
               structural choices (which Q-corner is the coincidence, which
               Q-vertices the two incident P-sides are aimed through) rather
               than resampling blindly.

Chunked: --start / --count, appends to ptbreak_report.log, exits.
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
from ptbreak_run import LOG, fmt, inst_rng, DIRS80   # noqa: E402
from move_effect_lib import N, simple_closed, finite_boundary_intersection, sub, cross   # noqa: E402
from move_effect_gen import random_simple_heptagon   # noqa: E402

FINE = F(1, 10 ** 12)
ALL_SCALES = [F(1, 4), F(1, 10), F(1, 100), F(1, 1000), F(1, 10 ** 6),
              F(1, 10 ** 9), F(1, 10 ** 12), F(1, 10 ** 15), F(1, 10 ** 18)]


def max_dM_fine(inst, lam=FINE):
    """Complete enumeration of the small-displacement cells at one scale."""
    best = None
    n = 0
    for (u, kind) in L.cell_directions(inst):
        r = inst.ev(L.scale(u, lam))
        if r is None:
            continue
        n += 1
        if best is None or r['dM'] > best['dM']:
            best = r
            best['dir'] = u
            best['kind'] = kind
    return best, n


def deep_verify(inst, log):
    """Everything we have: all scales on every cell, plus a coarse grid of 80
    primitive directions at 11 magnitudes, plus a 360-direction fine grid."""
    best = None
    n = 0
    for (u, kind) in L.cell_directions(inst):
        for lam in ALL_SCALES:
            r = inst.ev(L.scale(u, lam))
            n += 1
            if r is None:
                continue
            if best is None or r['dM'] > best['dM']:
                best = r
    mags = [F(1, 10 ** 6), F(1, 1000), F(1, 100), F(1, 10), F(1, 4), F(1, 2),
            F(1), F(2), F(4), F(8), F(16)]
    for E in DIRS80:
        for e in mags:
            for s in (1, -1):
                r = inst.ev((E[0] * e * s, E[1] * e * s))
                n += 1
                if r is None:
                    continue
                if best is None or r['dM'] > best['dM']:
                    best = r
    for E in L.primitive_dirs(11):
        for e in (F(1, 10 ** 9), F(1, 1000), F(1, 7), F(1)):
            r = inst.ev((E[0] * e, E[1] * e))
            n += 1
            if r is None:
                continue
            if best is None or r['dM'] > best['dM']:
                best = r
    log(f"      deep verify: {n} displacements, best dM_pt = "
        f"{best['dM'] if best else None}")
    return best, n


def dump_inst(log, inst, best, extra=""):
    log(f"      family={inst.family} apex v={inst.v} coincidence j={inst.j0} {extra}")
    log(f"      P = {fmt(inst.P)}")
    log(f"      Q = {fmt(inst.Q)}")
    log(f"      base |crossPairs|={len(inst.b_cross)} |degPts|={len(inst.b_dp)} "
        f"M_pt={inst.b_M} |coincSet|={inst.b_nco}")
    log(f"      incident non-apex degPts: "
        f"{[(x['side'], x['kind'], fmt([x['pt']])) for x in inst.anat]}")
    log(f"      apex character = {L.apex_anatomy(inst)}  "
        f"collinear apex = {L.collinear_apex(inst)}")
    if best:
        log(f"      best d = ({best['d'][0]},{best['d'][1]})  dM={best['dM']} "
            f"dCross={best['dcross']} dDegPts={best['ddp']} dCoinc={best['dco']}")


# ------------------------------------------------------------------ enum mode

def enum_instances(rng, collinear=False, rmul=3.0, jag=0.0, extra=0):
    """One random Q; every admissible (j, a, b) triple gives an instance."""
    Q0 = random_simple_heptagon(rng, -14, 14)
    if Q0 is None:
        return
    for j in range(N):
        for a in range(N):
            if a in (j, (j - 1) % N, (j + 1) % N):
                continue
            for b in range(N):
                if b in (j, (j - 1) % N, (j + 1) % N, a):
                    continue
                Q = Q0
                X0 = Q[j]
                u = sub(Q[a], X0)
                if u == (0, 0):
                    continue
                if collinear:
                    w = (-u[0], -u[1])
                    Q = G.snap_onto_ray(Q, b, X0, w, rng.choice(G.TS_IN))
                    if not simple_closed(Q):
                        continue
                else:
                    w = sub(Q[b], X0)
                    if w == (0, 0) or cross(u, w) == 0:
                        continue
                if extra:
                    used = {j, a, b}
                    okx = True
                    for t in range(extra):
                        c = G._pick_nonadjacent(rng, j, used)
                        if c is None:
                            okx = False
                            break
                        used.add(c)
                        Q = G.snap_onto_ray(Q, c, X0, u if t % 2 else w,
                                            rng.choice(G.TS_IN))
                        if not simple_closed(Q):
                            okx = False
                            break
                    if not okx:
                        continue
                for s1 in (F(3, 2), F(2)):
                    for s2 in (F(3, 2), F(2)):
                        got = G.build_around_Q(rng, Q, j, a, b, s1, s2,
                                               collinear=collinear,
                                               rmul=rmul, jag=jag)
                        if got is None:
                            continue
                        P, v = got
                        if not finite_boundary_intersection(P, Q):
                            continue
                        inst = L.Inst(P, Q, v, family='enum')
                        if inst.j0 is None:
                            continue
                        inst.anat = L.incident_deg_anatomy(inst)
                        if not inst.anat:
                            continue
                        yield inst


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--mode', default='hunt')
    ap.add_argument('--start', type=int, default=0)
    ap.add_argument('--count', type=int, default=200)
    ap.add_argument('--seed', type=int, default=20250924)
    ap.add_argument('--families', default='two_touch,many_touch,collinear_apex,high_cross,multi_coinc')
    ap.add_argument('--collinear', type=int, default=0)
    ap.add_argument('--extra', type=int, default=0)
    ap.add_argument('--jag', type=float, default=0.0)
    ap.add_argument('--rmul', type=float, default=3.0)
    ap.add_argument('--all-apex', dest='all_apex', type=int, default=0)
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
    log(f"ptbreak_hunt mode={args.mode} start={args.start} count={args.count} "
        f"seed={args.seed} collinear={args.collinear} extra={args.extra} "
        f"jag={args.jag} {args.tag}")

    fams = args.families.split(',')
    dist = {}
    n = 0
    n_disp = 0
    hard = []
    n_both = 0
    n_touch = 0
    n_trans = 0
    n_degen = 0
    dying = {}
    apexkind = {}
    maxcross = 0

    def consider(inst):
        nonlocal n, n_disp, n_both, n_touch, n_trans, n_degen, maxcross
        best, nadm = max_dM_fine(inst)
        n += 1
        n_disp += len(L.cell_directions(inst))
        m = best['dM'] if best else None
        dist[m] = dist.get(m, 0) + 1
        if any(x['side'] == 'v-1' for x in inst.anat) and \
           any(x['side'] == 'v' for x in inst.anat):
            n_both += 1
        n_touch += sum(1 for x in inst.anat if x['kind'] == 'touch')
        n_trans += sum(1 for x in inst.anat if x['kind'] == 'trans')
        n_degen += sum(1 for x in inst.anat if x['kind'] == 'degen')
        nd = sum(1 for x in inst.anat if x['interior'] and not x['elsewhere'])
        dying[nd] = dying.get(nd, 0) + 1
        ak = L.apex_anatomy(inst)
        apexkind[ak] = apexkind.get(ak, 0) + 1
        maxcross = max(maxcross, len(inst.b_cross))
        if m is None or m <= 0:
            hard.append((m, inst, best))
        if n % 50 == 0:
            print(f"    ... {n} instances, dist {dict(sorted(dist.items(), key=lambda kv:(kv[0] is None, kv[0])))}"
                  f" hard {len(hard)} t={time.time()-t0:.0f}s", flush=True)

    if args.mode == 'hunt':
        for idx in range(args.start, args.start + args.count):
            fam = fams[idx % len(fams)]
            inst = G.make(inst_rng(args.seed, fam, idx), fam)
            if inst is None:
                continue
            if args.all_apex:
                # the conjecture is attacked in its STRONGER, universally
                # quantified form: a good move must exist at EVERY coincidence
                # vertex, not merely at some one of them.
                for (uu, jj) in sorted(inst.coinc):
                    i2 = L.Inst(inst.P, inst.Q, uu, family=inst.family + '@v%d' % uu)
                    if i2.j0 is None:
                        continue
                    i2.anat = L.incident_deg_anatomy(i2)
                    consider(i2)
            else:
                consider(inst)
    else:
        rng = random.Random(args.seed * 31 + args.start)
        for s in range(args.count):
            for inst in enum_instances(rng, collinear=bool(args.collinear),
                                       rmul=args.rmul, jag=args.jag,
                                       extra=args.extra):
                consider(inst)
                if time.time() - t0 > 140:
                    break
            if time.time() - t0 > 140:
                log("  (chunk time budget reached, stopping early)")
                break

    log(f"  instances scored: {n}")
    log(f"  displacements (complete small-d cell enumeration at 1e-12): {n_disp}")
    log(f"  maxdM distribution: "
        f"{dict(sorted(dist.items(), key=lambda kv: (kv[0] is None, kv[0])))}")
    log(f"  instances with BOTH incident P-sides carrying a non-apex degPt: {n_both}")
    log(f"  incident non-apex degPts: {n_touch} touch, {n_trans} transversal, "
        f"{n_degen} degenerate-neighbour")
    log(f"  number of DYING non-apex incident degPts per instance "
        f"(interior, not carried by another P-side): {dict(sorted(dying.items()))}")
    log(f"  apex character: {apexkind}")
    log(f"  largest base |crossPairs| seen: {maxcross}")
    log(f"  instances with maxdM <= 0: {len(hard)}")
    for (m, inst, best) in hard[:8]:
        log(f"    ---- maxdM = {m} ----")
        dump_inst(log, inst, best)
        db, nd = deep_verify(inst, log)
        if db is None or db['dM'] < 0:
            log("    *** COUNTEREXAMPLE: no admissible displacement anywhere "
                "searched has dM_pt >= 0 ***")
        else:
            log(f"    (not a counterexample: deep search reaches dM_pt={db['dM']} "
                f"at d=({db['d'][0]},{db['d'][1]}))")
    log(f"  elapsed {time.time()-t0:.1f}s")


if __name__ == '__main__':
    main()
