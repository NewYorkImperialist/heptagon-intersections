"""ptbreak_witness.py -- is there a FIXED, CONSTRUCTIBLE witness set?

The cell enumeration says the max of dM_pt over small displacements is always
>= 0.  That is an existence statement over a whole arrangement of cells, which
is awkward to turn into a Lean proof.  This chunk tests a much sharper claim:

    let  u = P[v] - P[v-1]   (direction of the incident side v-1)
         w = P[v+1] - P[v]   (direction of the incident side v)

    then already one of the EIGHT displacements

         d in  delta * { +u, -u, +w, -w, u+w, u-w, -u+w, -u-w }

    is admissible and has dM_pt >= 0.

Why those eight.  Every predicate that can change is affine in d and vanishes at
d = 0, so what matters is the sign pair (sign cross(d,u), sign cross(d,w)).
The four d = +-u +-w realise all four sign pairs (when u, w are independent),
and the two slides +-u, +-w realise the two degenerate rows, on which an entire
incident side -- and the apex degPt with it -- SURVIVES the move intact.

Chunked; appends to ptbreak_report.log.
"""

import argparse
import os
import sys
import time
from fractions import Fraction as F

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

import ptbreak_lib as L      # noqa: E402
import ptbreak_gen as G      # noqa: E402
from ptbreak_run import LOG, fmt, inst_rng   # noqa: E402
from move_effect_lib import N, sub           # noqa: E402

DELTAS = [F(1, 1000), F(1, 10 ** 6), F(1, 10 ** 12)]


def witness_set(inst):
    P, v = inst.P, inst.v
    u = sub(P[v], P[(v - 1) % N])
    w = sub(P[(v + 1) % N], P[v])
    cands = [('+u', u), ('-u', (-u[0], -u[1])), ('+w', w), ('-w', (-w[0], -w[1])),
             ('u+w', (u[0] + w[0], u[1] + w[1])),
             ('u-w', (u[0] - w[0], u[1] - w[1])),
             ('-u+w', (-u[0] + w[0], -u[1] + w[1])),
             ('-u-w', (-u[0] - w[0], -u[1] - w[1]))]
    out = []
    for (nm, c) in cands:
        if c == (0, 0):
            continue
        m = max(abs(c[0]), abs(c[1]))
        out.append((nm, (F(c[0]) / m, F(c[1]) / m)))
    return out


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--start', type=int, default=0)
    ap.add_argument('--count', type=int, default=300)
    ap.add_argument('--seed', type=int, default=20250924)
    ap.add_argument('--families', default='random,two_touch,many_touch,'
                                          'collinear_apex,high_cross,'
                                          'multi_coinc,extremal11')
    ap.add_argument('--tag', default='')
    args = ap.parse_args()
    fams = args.families.split(',')

    fh = open(LOG, 'a')

    def log(*a):
        s = " ".join(str(x) for x in a)
        print(s, flush=True)
        fh.write(s + "\n")
        fh.flush()

    t0 = time.time()
    log("=" * 78)
    log(f"ptbreak_witness  start={args.start} count={args.count} "
        f"seed={args.seed} {args.tag}")
    log("  claim under test: one of d in delta*{+-u, +-w, +-u+-w} is admissible "
        "and has dM_pt >= 0")

    n = 0
    fail = 0
    which = {}
    slide_only = 0
    gap = {}
    per_slide = {}
    best_slide = {}
    n_outward = 0
    for idx in range(args.start, args.start + args.count):
        fam = fams[idx % len(fams)]
        inst = G.make(inst_rng(args.seed, fam, idx), fam)
        if inst is None:
            continue
        n += 1
        best = None
        bestnm = None
        ok_slide = False
        bs_out = False
        per_slide = {}
        for (nm, c) in witness_set(inst):
            for dl in DELTAS:
                r = inst.ev(L.scale(c, dl))
                if r is None:
                    continue
                if best is None or r['dM'] > best:
                    best = r['dM']
                    bestnm = nm
                if nm in ('+u', '-u', '+w', '-w'):
                    if r['dM'] >= 0:
                        ok_slide = True
                        per_slide[nm] = per_slide.get(nm, 0) + 1
                        if nm in ('+u', '-w'):
                            bs_out = True
                    cur = best_slide.get(nm)
                    if cur is None or r['dM'] > cur:
                        best_slide[nm] = r['dM']
        if best is None or best < 0:
            fail += 1
            log("    *** WITNESS SET FAILS on this instance ***")
            log(f"      P = {fmt(inst.P)}")
            log(f"      Q = {fmt(inst.Q)}")
            log(f"      family={inst.family} v={inst.v} j={inst.j0} best={best}")
            full, _ = __import__('ptbreak_hunt').max_dM_fine(inst)
            log(f"      but the full cell enumeration reaches "
                f"dM_pt={full['dM'] if full else None}")
        else:
            which[bestnm] = which.get(bestnm, 0) + 1
            gap[best] = gap.get(best, 0) + 1
            if ok_slide:
                slide_only += 1
            if bs_out:
                n_outward += 1
        if n % 50 == 0:
            print(f"    ... {n} instances, failures {fail}, t={time.time()-t0:.0f}s",
                  flush=True)
    log(f"  instances: {n}")
    log(f"  instances where the 8-element witness set FAILS: {fail}")
    log(f"  instances where a PURE SLIDE (+-u or +-w) already works: {slide_only}")
    log(f"  instances where an OUTWARD slide (+u lengthening side v-1, or -w "
        f"lengthening side v) already works: {n_outward}")
    log(f"  which witness attained the max: {which}")
    log(f"  best dM_pt over the witness set, distribution: {dict(sorted(gap.items()))}")
    log(f"  elapsed {time.time()-t0:.1f}s")


if __name__ == '__main__':
    main()
