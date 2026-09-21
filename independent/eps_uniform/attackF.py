"""ATTACK F -- an AKR-admissible direction that makes  dP(eps) n dQ(eps) INFINITE.

Finding 2 of FINDINGS.md exhibits an AKR-admissible direction that leaves a
vertex-SIDE degeneracy behind; that is survivable, because sec 9.2 exists to
remove vertex-side degeneracies.  This attack is aimed one level lower: at
sec 9.2's *hypothesis* (F), "dP n dQ is finite", which AKR carry as a standing
assumption from sec 1 and never re-establish after the perturbation.

Geometry.  At a coincidence P_i = Q_j put the apex at the origin and let
    a1 = P_{i-1} - P_i   and   b1 = Q_{j-1} - Q_j
be ANTIPARALLEL.  Then the P-side [P_i,P_{i-1}] and the Q-side [Q_j,Q_{j-1}]
are collinear and meet in exactly the apex, so (F) holds at eps = 0 and
e9_directions' criterion (not all four rays parallel) is satisfied.  Now move
P_i along b1.  The two sides slide into a genuine overlap of length propto eps.

Exact rational arithmetic only.
"""
import sys
from fractions import Fraction as F
sys.path.insert(0, '/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform')
import uniform as U
from epslib import Poly, Vec, orient as porient, root_free_radius, sgn
import r3

def pt(x, y): return (F(x), F(y))

P0 = [pt(0,0), pt(0,-3), pt(5,-6), pt(9,-1), pt(6,4), pt(-1,5), pt(-3,0)]
Q0 = [pt(0,0), pt(2,-1), pt(7,-4), pt(11,2), pt(8,7), pt(1,8), pt(4,0)]

print('P simple:', U.simple(P0), '  Q simple:', U.simple(Q0))
pts, inf = U.cross_points(P0, Q0)
print('|dP n dQ| at eps=0 :', len(pts), ' infinite:', inf)
coinc, deps = r3.detect(P0 + Q0)
print('coincidences:', coinc, '  vertex-side deps:', deps)

apex = (0, 7)
a1 = r3.sub2(P0[6], P0[0]); a2 = r3.sub2(P0[1], P0[0])
b1 = r3.sub2(Q0[6], Q0[0]); b2 = r3.sub2(Q0[1], Q0[0])
print('a1,a2,b1,b2 =', a1, a2, b1, b2)
print('cross(a1,b1) =', r3.cross2(a1,b1), '  <- 0 means the two sides are collinear')
print('all four mutually parallel?',
      all(r3.cross2(u,v)==0 for u in (a1,a2,b1,b2) for v in (a1,a2,b1,b2)))

cfg = r3.Config(P0 + Q0, coinc, deps)
bad, _ = r3.sanity(cfg)
print('AKR standing hypotheses violated:', bad or 'none')

# ---- the bad direction, and AKR's own criterion applied to it ---------------
for name, E in (('E = 2*b1/4 = (2,0)  [parallel to b1]', pt(2,0)),
                ('E = (1,-1)          [generic, inside a cone]', pt(1,-1))):
    print('\n=== ' + name + ' ===')
    alpha = {v: {} for v in range(14)}
    alpha[0] = {'E0': F(1)}
    vals = {'E0': E}
    ok, kl = r3.r2_straddle(cfg, alpha, vals, 0, 7)
    print('  (R2): AKR criterion "at least one nondegenerate intersection"  ->', ok, kl)
    Vn, Wn, e0, Z = r3.eps0_and_signs(cfg, alpha, vals)
    print('  eps_0 =', e0)
    for t in (1, 2, 20, 60):
        e = e0 / F(2)**t
        s14 = U.snap(Vn, e)
        p, i = U.cross_points(s14[:7], s14[7:])
        print(f'  eps = eps_0/2^{t:<3d}  |dP n dQ| = {"INFINITE" if i else len(p)}')
    v = r3.verify_end_to_end(cfg, alpha, vals)
    print('  end-to-end:', 'PASS' if v['ok'] else 'FAIL ' + str(v['why']),
          ' counts', v['counts'])
    # the overlap, exactly
    e = F(1, 1000)
    A = (2*e*E[0]/2, 0) if False else (e*E[0], e*E[1])
    print('  at eps=1/1000: P-side [P_6,P_0(eps)] =', (P0[6], A),
          '  Q-side [Q_6,Q_0] =', (Q0[6], Q0[0]))
    print('  seg_inter ->', U.seg_inter(P0[6], A, Q0[6], Q0[0]))

# ---- is the bad direction really inside an e9_directions cone? -------------
print('\n=== is E=(2,0) inside an e9_directions cone? ===')
for (ak, bl) in r3.cones_at(cfg, 0, 7):
    # solve  t*bl - s*ak = (2,0)
    det = r3.cross2(bl, r3.sub2((0,0), ak))
    if det == 0: continue
    import fractions
    M = [[bl[0], -ak[0]], [bl[1], -ak[1]]]
    D = M[0][0]*M[1][1] - M[0][1]*M[1][0]
    if D == 0: continue
    t = (F(2)*M[1][1] - F(0)*M[0][1]) / D
    s = (M[0][0]*F(0) - M[1][0]*F(2)) / D
    print(f'  cone from a={ak}, b={bl}:  t={t}, s={s}',
          ' -> INSIDE (s,t>0)' if (s > 0 and t > 0) else ' -> outside')

print('\n=== sweep every integer direction in [-8,8]^2 on this configuration ===')
good = []; badfin = []; deg = []; nocross = []
for x in range(-8, 9):
    for y in range(-8, 9):
        if (x, y) == (0, 0): continue
        E = (F(x), F(y))
        alpha = {v: {} for v in range(14)}; alpha[0] = {'E0': F(1)}
        vals = {'E0': E}
        ok, _ = r3.r2_straddle(cfg, alpha, vals, 0, 7)
        if not ok: nocross.append(E); continue
        v = r3.verify_end_to_end(cfg, alpha, vals)
        if 'infinite-intersection' in v['why']: badfin.append(E)
        elif v['ok']: good.append(E)
        else: deg.append((E, v['why']))
print(f'  directions tested                : {17*17-1}')
print(f'  fail AKR criterion (R2)          : {len(nocross)}')
print(f'  AKR-admissible                   : {len(good)+len(badfin)+len(deg)}')
print(f'    ... destroy FINITENESS         : {len(badfin)}   {badfin[:12]}')
print(f'    ... other end-to-end failure   : {len(deg)}   {[d for d in deg[:6]]}')
print(f'    ... fully good                 : {len(good)}   e.g. {good[:6]}')
