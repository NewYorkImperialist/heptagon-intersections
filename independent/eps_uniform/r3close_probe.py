"""Is the list of REQUIRED witnesses complete?

R3.md's "honest limit" paragraph says its requirement table is a reconstruction
of what sec 9.1 must deliver, not a theorem.  This script tests that
reconstruction differentially.

For each configuration, enumerate many admissible directions and sort them into

  (a) violates Req            -- the requirement list says NO
  (b) satisfies Req but DIRTY -- some removable witness is still identically
                                 zero, but not one the list calls required
  (c) CLEAN                   -- Z(E) = Z_forced, the (R3-strong) target

then run an EXTENDED downstream battery on all three.  If `Req` is complete,
classes (b) and (c) must behave identically; any battery item that class (b)
fails and class (c) passes is a MISSING REQUIREMENT, and the script names it.

The battery is a superset of r3.verify_end_to_end: it adds the vertex-side
degeneracy census, which is what sec 9.2 is handed.

Exact Fractions.  No float.  No Lean build.
"""
import sys, random, itertools
from fractions import Fraction as F
HERE = '/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform'
sys.path.insert(0, HERE)
import r3, r3b, r3close, uniform as U
from r3 import (Config, cross2, sub2, direction_map, symbolic_vertices,
                witness_family, forced_zero_set, zero_set_at, flatten,
                cones_at)
from r3b import requirements, violated


def degeneracy_census(P, Q):
    """Every vertex-side degeneracy of the pair: a vertex of one polygon in the
    RELATIVE INTERIOR of a side of the other.  This is exactly what sec 9.2 has
    to remove, so its size is what sec 9.2's termination monovariant counts."""
    out = set()
    def relint(A, B, C):
        if cross2(sub2(C, B), sub2(A, B)) != 0: return False
        u = sub2(C, B)
        if u == (0, 0): return False
        k = 0 if u[0] != 0 else 1
        mu = (A[k] - B[k]) / u[k]
        return 0 < mu < 1
    for i in range(7):
        for j in range(7):
            if relint(P[i], Q[j], Q[(j + 1) % 7]): out.add(('P', i, 'Qside', j))
            if relint(Q[i], P[j], P[(j + 1) % 7]): out.add(('Q', i, 'Pside', j))
    return out


def battery(cfg, alpha, vals, npts=3):
    """r3.verify_end_to_end plus the degeneracy census.  Returns a dict of
    named booleans; every name is a candidate requirement."""
    v = r3.verify_end_to_end(cfg, alpha, vals, npts)
    res = {w: False for w in
           ('signvec-not-constant', 'P-not-simple', 'Q-not-simple',
            'new-coincidence', 'infinite-intersection', 'count-not-constant')}
    for w in v['why']:
        res[w.split(' ')[0] if w.startswith('count-dropped') else w] = True
    res['coincidence-survives'] = any(w.startswith('coincidence-') for w in v['why'])
    res['relation-broken'] = any(w.startswith('relation-') for w in v['why'])
    res['count-dropped'] = any(w.startswith('count-dropped') for w in v['why'])
    # --- the census, at one exact eps well inside (0, eps_0)
    Vn, Wn, e0, _ = r3.eps0_and_signs(cfg, alpha, vals)
    pts14 = U.snap(Vn, e0 / F(4))
    cen = degeneracy_census(pts14[:7], pts14[7:])
    cen0 = degeneracy_census(cfg.P(), cfg.Q())
    res['degeneracy-added'] = bool(cen - cen0)
    res['degeneracy-lost'] = bool(cen0 - cen)   # relation (1) must be MAINTAINED
    res['_ncen0'] = len(cen0); res['_ncen'] = len(cen)
    res['_ok'] = v['ok'] and not res['degeneracy-added'] and not res['degeneracy-lost']
    return res


def enumerate_dirs(cfg, fvars, bound=4):
    """Every admissible tuple with cone parameters s,t in {1..bound}, over every
    non-parallel ray pair at every apex.  All are in A, so all satisfy (R1) and
    (R2); they differ only in what they leave identically zero."""
    per = []
    for f in fvars:
        v = int(f[1:])
        js = [j for (i, j) in cfg.coinc if i == v]
        cs = cones_at(cfg, v, js[0]) if js else []
        if not cs: return None
        opts = []
        for (ak, bl) in cs:
            for s in range(1, bound + 1):
                for t in range(1, bound + 1):
                    opts.append((F(t) * bl[0] - F(s) * ak[0],
                                 F(t) * bl[1] - F(s) * ak[1]))
        per.append((f, opts))
    return per


def run(name, seed, ntrial, bound=4, cap=120, verbose=True):
    G = r3close.GENS[name]
    R = random.Random(seed)
    stat = {k: dict(n=0, fail=0, why={}) for k in 'abc'}
    T = dict(cfgs=0, tries=0, cen0=0, cenmoved=0)
    while T['cfgs'] < ntrial and T['tries'] < 600 * ntrial:
        T['tries'] += 1
        g = G(R)
        if g is None: continue
        cfg, _ = g
        alpha, fvars = direction_map(cfg)
        if alpha is None: continue
        V, n, fi = symbolic_vertices(cfg, alpha, fvars)
        W = witness_family(V); Zf = forced_zero_set(W)
        per = enumerate_dirs(cfg, fvars, bound)
        if per is None: continue
        T['cfgs'] += 1
        allcombo = list(itertools.product(*[o for _, o in per]))
        R.shuffle(allcombo)
        req = requirements(cfg)
        for combo in allcombo[:cap]:
            vals = {f: E for (f, _), E in zip(per, combo)}
            Z = zero_set_at(W, flatten(vals, fi))
            viol = violated(req, Z)
            cls = 'a' if viol else ('c' if not (Z - Zf) else 'b')
            b = battery(cfg, alpha, vals)
            stat[cls]['n'] += 1
            if not b['_ok']:
                stat[cls]['fail'] += 1
                for k, v in b.items():
                    if k.startswith('_') or not v: continue
                    stat[cls]['why'][k] = stat[cls]['why'].get(k, 0) + 1
    return T, stat


if __name__ == '__main__':
    names = sys.argv[1].split(',')
    seed = int(sys.argv[2]); n = int(sys.argv[3])
    cap = int(sys.argv[4]) if len(sys.argv) > 4 else 120
    grand = {k: dict(n=0, fail=0, why={}) for k in 'abc'}
    for name in names:
        T, stat = run(name, seed, n, cap=cap)
        print(f'--- {name} seed={seed} cfgs={T["cfgs"]} ---')
        for k, lab in (('a', 'violates Req      '),
                       ('b', 'Req ok but DIRTY  '),
                       ('c', 'CLEAN             ')):
            s = stat[k]
            print(f'  {lab} n={s["n"]:6d}  battery failures={s["fail"]:6d}  {s["why"]}')
            grand[k]['n'] += s['n']; grand[k]['fail'] += s['fail']
            for kk, vv in s['why'].items():
                grand[k]['why'][kk] = grand[k]['why'].get(kk, 0) + vv
        sys.stdout.flush()
    print('=== GRAND TOTAL ===')
    for k, lab in (('a', 'violates Req      '),
                   ('b', 'Req ok but DIRTY  '),
                   ('c', 'CLEAN             ')):
        s = grand[k]
        print(f'  {lab} n={s["n"]:6d}  battery failures={s["fail"]:6d}  {s["why"]}')
