"""DIAGNOSIS of r3close_probe.py's one discriminating signal:

  class (b) "satisfies Req but DIRTY" fails `degeneracy-added`;
  class (c) "CLEAN" never does.

Mechanism hypothesis: a moving vertex V sits on the LINE of a side s of the
other polygon at eps=0 but OUTSIDE the segment -- so it is NOT a vertex-side
degeneracy, and orient(V,s0,s1) has c0 = 0.  If the direction keeps that orient
identically zero (a REMOVABLE zero, not a forced one), V slides ALONG the line
and can enter the relative interior of s, creating a vertex-side degeneracy
that was not in the input.  The dot-product witnesses B decide the betweenness
and they are what flip.

This script tests the hypothesis by naming, for every added degeneracy, the
witness responsible and checking it is exactly such a removable zero."""
import sys, random, itertools
from fractions import Fraction as F
sys.path.insert(0,'/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform')
import r3, r3close, uniform as U
from r3 import (cross2, sub2, direction_map, symbolic_vertices, witness_family,
                forced_zero_set, zero_set_at, flatten)
from r3b import requirements, violated
from r3close import construct_E
from r3close_probe import degeneracy_census, enumerate_dirs

names = sys.argv[1].split(','); seed = int(sys.argv[2]); n = int(sys.argv[3])
cap = int(sys.argv[4]) if len(sys.argv) > 4 else 60
TOT = dict(cfgs=0, dirs=0, added=0, explained=0, unexplained=0,
           added_clean=0, added_dirty=0, added_reqbad=0,
           onlineoutside=0, cfg_withline=0)
examples = []
for name in names:
    R = random.Random(seed); G = r3close.GENS[name]; c = 0; tries = 0
    while c < n and tries < 600*n:
        tries += 1
        g = G(R)
        if g is None: continue
        cfg,_ = g
        alpha, fvars = direction_map(cfg)
        if alpha is None: continue
        V, nn, fi = symbolic_vertices(cfg, alpha, fvars)
        W = witness_family(V); Zf = forced_zero_set(W)
        per = enumerate_dirs(cfg, fvars, 4)
        if per is None: continue
        c += 1; TOT['cfgs'] += 1
        # structural precondition: a MOVING vertex on the LINE of a side of the
        # other polygon, but strictly OUTSIDE that side's segment.
        moving = [v for v in range(14) if alpha[v]]
        pre = []
        for v in moving:
            other = range(7,14) if v < 7 else range(0,7)
            for j in other:
                j2 = (j-7+1)%7+7 if v < 7 else (j+1)%7
                A,B,C = cfg.V0[v], cfg.V0[j], cfg.V0[j2]
                if cross2(sub2(C,B), sub2(A,B)) != 0: continue
                u = sub2(C,B)
                k = 0 if u[0] != 0 else 1
                mu = (A[k]-B[k])/u[k]
                if 0 < mu < 1: continue        # already a degeneracy
                pre.append((v,j,j2,mu))
        if pre: TOT['cfg_withline'] += 1
        TOT['onlineoutside'] += len(pre)
        cen0 = degeneracy_census(cfg.P(), cfg.Q())
        combos = list(itertools.product(*[o for _,o in per])); R.shuffle(combos)
        req = requirements(cfg)
        for combo in combos[:cap]:
            vals = {f:E for (f,_),E in zip(per, combo)}
            Z = zero_set_at(W, flatten(vals, fi))
            viol = violated(req, Z)
            cls = 'a' if viol else ('c' if not (Z-Zf) else 'b')
            TOT['dirs'] += 1
            Vn, Wn, e0, _ = r3.eps0_and_signs(cfg, alpha, vals)
            pts = U.snap(Vn, e0/F(4))
            cen = degeneracy_census(pts[:7], pts[7:])
            new = cen - cen0
            if not new: continue
            TOT['added'] += 1
            TOT['added_'+{'a':'reqbad','b':'dirty','c':'clean'}[cls]] += 1
            ok = True
            for d in new:
                if d[0]=='P': v, j = d[1], 7+d[3]; j2 = 7+(d[3]+1)%7
                else:         v, j = 7+d[1], d[3]; j2 = (d[3]+1)%7
                key = ('D',)+tuple(sorted((v,j,j2)))
                if key in Z and key not in Zf and any(p[:3]==(v,j,j2) or True for p in [()]):
                    pass
                if not (key in Z and key not in Zf):
                    ok = False
                    if len(examples) < 6:
                        examples.append((name, cls, d, key, key in Z, key in Zf))
            TOT['explained' if ok else 'unexplained'] += 1
            if ok and len(examples) < 6 and cls == 'b':
                d = sorted(new)[0]
                examples.append((name, cls, d, 'EXPLAINED: removable D left zero', True, False))
    sys.stdout.flush()
print('=== new vertex-side degeneracies created by the motion ===')
for k in sorted(TOT): print(f'  {k:16s} {TOT[k]}')
print('  structural precondition present in', TOT['cfg_withline'], 'configs,',
      TOT['onlineoutside'], 'vertex/side pairs total')
print('  examples:')
for e in examples: print('   ', e)
