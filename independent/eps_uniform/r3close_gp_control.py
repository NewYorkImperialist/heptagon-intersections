"""NON-VACUITY for r3close_gp.py's "FullGP reachable: 0/270".

A checker that reports 0 for everything proves nothing.  Build configurations
on which FullGP IS reachable -- wide coordinate range so that no three frozen
vertices are collinear, one coincidence, no relation-(1) rows -- and show the
same code says YES.  Then degrade them one step at a time and watch it flip."""
import sys, random, itertools
from fractions import Fraction as F
sys.path.insert(0,'/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform')
import r3, r3close, uniform as U
from r3 import (Config, detect, reaches_free, sanity, cross2, sub2,
                direction_map, symbolic_vertices, witness_family,
                forced_zero_set, zero_set_at, flatten)
from r3close import construct_E

def ncollinear(V0):
    return sum(1 for t in itertools.combinations(range(14),3)
               if cross2(sub2(V0[t[1]],V0[t[0]]), sub2(V0[t[2]],V0[t[0]])) == 0)

def gp_report(cfg, label):
    alpha, fvars = direction_map(cfg)
    if alpha is None: return print(f'  {label}: singular Theorem-17 system')
    V,n,fi = symbolic_vertices(cfg, alpha, fvars)
    W = witness_family(V); Zf = forced_zero_set(W)
    Dforced = [k for k in Zf if k[0]=='D']
    vals, info = construct_E(cfg, fvars)
    Z = zero_set_at(W, flatten(vals, fi)) if vals is not None else None
    Dleft = [k for k in Z if k[0]=='D'] if Z is not None else None
    e2e = r3.verify_end_to_end(cfg, alpha, vals) if vals is not None else None
    print(f'  {label}:  collinear triples at eps=0 = {ncollinear(cfg.V0)},'
          f'  |C|={len(cfg.coinc)}, |deps|={len(cfg.deps)}')
    print(f'      forced orient-D in Z_forced : {len(Dforced)}'
          f'   -> FullGP {"REACHABLE" if not Dforced else "IMPOSSIBLE"}')
    print(f'      orient-D left by construction: {len(Dleft) if Dleft is not None else "-"}'
          f'   -> FullGP {"ACHIEVED" if Dleft == [] else "not achieved"}'
          f'   (end-to-end ok={e2e["ok"] if e2e else "-"})')
    return (not Dforced), (Dleft == [])

print('=== A: wide coordinates, one coincidence, no dependency '
      '(FullGP should be REACHABLE and ACHIEVED) ===')
R = random.Random(5150)
okr = oka = tot = 0
while tot < 12:
    P = U.rand_simple_heptagon(R, 400); Q = U.rand_simple_heptagon(R, 400)
    if P is None or Q is None: continue
    P, Q = list(P), list(Q); Q[0] = P[0]
    if len(set(P)) != 7 or len(set(Q)) != 7: continue
    if not U.simple(P) or not U.simple(Q): continue
    V0 = P+Q
    coinc, deps = detect(V0)
    if deps or len(coinc) != 1: continue
    cfg = Config(V0, coinc, deps)
    bad, pts = sanity(cfg)
    if bad: continue
    tot += 1
    r,a = gp_report(cfg, f'A{tot}')
    okr += r; oka += a
print(f'  --> REACHABLE {okr}/{tot}   ACHIEVED {oka}/{tot}   '
      f'(the checker CAN say yes: {"yes" if okr else "NO -- VACUOUS"})')

print()
print('=== B: same, then ONE collinear triple planted among frozen vertices '
      '(FullGP must flip to IMPOSSIBLE) ===')
R = random.Random(717)
flip = tot = 0
while tot < 12:
    P = U.rand_simple_heptagon(R, 400); Q = U.rand_simple_heptagon(R, 400)
    if P is None or Q is None: continue
    P, Q = list(P), list(Q); Q[0] = P[0]
    # plant: put Q_4 on the LINE through P_3,P_4 but OUTSIDE the segment, so it
    # is a collinear triple of three vertices AKR's rule freezes -- and NOT a
    # vertex-side degeneracy, so Theorem 17 never touches it.
    u = sub2(P[4], P[3])
    Q[4] = (P[3][0] + 3*u[0], P[3][1] + 3*u[1])
    if len(set(P)) != 7 or len(set(Q)) != 7: continue
    if not U.simple(P) or not U.simple(Q): continue
    V0 = P+Q
    coinc, deps = detect(V0)
    if deps or len(coinc) != 1: continue
    cfg = Config(V0, coinc, deps)
    bad, pts = sanity(cfg)
    if bad: continue
    tot += 1
    r,a = gp_report(cfg, f'B{tot}')
    flip += (not r)
print(f'  --> flipped to IMPOSSIBLE {flip}/{tot}   <- must be {tot}')
