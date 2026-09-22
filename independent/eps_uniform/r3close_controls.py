"""Non-vacuity controls for the (R3) closing pass.

Every control below is a statement of the SAME shape, evaluated by the SAME
code, that must come out NEGATIVE.  A checker that cannot say no proves
nothing.  This directory has shipped two vacuous controls; K6 in particular
exists because the `t = 2` branch of the construction never fired in any sweep
and an untested branch is exactly that failure mode.

Exact Fractions.  No float.  No Lean build.
"""
import sys, random, itertools
from fractions import Fraction as F
HERE = '/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform'
sys.path.insert(0, HERE)
import r3, r3b, r3close, uniform as U
from r3 import Config, detect, cross2, sub2, direction_map, symbolic_vertices, \
               witness_family, forced_zero_set, zero_set_at, flatten
from r3b import requirements, violated
from r3close import construct_E_at, construct_E, req_status, rays_at


def hdr(s):
    print('\n' + '=' * 74 + '\n' + s + '\n' + '=' * 74)


def analyse_with(cfg, vals):
    alpha, fvars = direction_map(cfg)
    V, n, fi = symbolic_vertices(cfg, alpha, fvars)
    W = witness_family(V)
    Zf = forced_zero_set(W)
    st = req_status(cfg, alpha, fi, W, Zf, vals)
    e2e = r3.verify_end_to_end(cfg, alpha, vals)
    return alpha, st, e2e


# ============================================================ K1 ============
hdr('K1  all four rays at the apex mutually parallel: construct_E_at must '
    'report EMPTY-CONE, not invent a direction')
P = [(F(0),F(0)), (F(3),F(0)), (F(6),F(2)), (F(6),F(6)), (F(0),F(7)),
     (F(-4),F(4)), (F(-3),F(0))]
Q = [(F(0),F(0)), (F(5),F(0)), (F(9),F(3)), (F(9),F(8)), (F(1),F(9)),
     (F(-6),F(5)), (F(-6),F(0))]
cfg = Config(P + Q, [(0, 7)], {})
a, b = rays_at(cfg, 0, 7)
print('rays a1,a2,b1,b2 =', a[0], a[1], b[0], b[1])
print('all mutually parallel:',
      all(cross2(u, v) == 0 for u in a + b for v in a + b))
E, det = construct_E_at(cfg, 0, 7)
print(f'construct_E_at -> {E!r}   {"FIRES" if E == "EMPTY-CONE" else "DID NOT FIRE"}')


# ============================================================ K2 ============
hdr('K2  Finding R3-1\'s certificate: the requirement checker must FLAG '
    'E=(2,0) and the end-to-end checker must report infinite-intersection.  '
    'And the construction must pick something else.')
P0 = [(F(0),F(0)),(F(0),F(-3)),(F(5),F(-6)),(F(9),F(-1)),(F(6),F(4)),
      (F(-1),F(5)),(F(-3),F(0))]
Q0 = [(F(0),F(0)),(F(2),F(-1)),(F(7),F(-4)),(F(11),F(2)),(F(8),F(7)),
      (F(1),F(8)),(F(4),F(0))]
coinc, deps = detect(P0 + Q0)
cfgF = Config(P0 + Q0, coinc, deps)
print('coincidences', coinc, ' dependencies', deps)
print('Fsh requirements present:',
      [l for t, _, _, l in requirements(cfgF) if t == 'Fsh'])
for E in ((F(2), F(0)), (F(1), F(0)), (F(5), F(0))):
    alpha, st, e2e = analyse_with(cfgF, {'E0': E})
    print(f'  E={E}  Fsh-violated={[t for t,_ in st["viol_req"]]}  '
          f'R2_all={st["R2_all"]}  end-to-end ok={e2e["ok"]}  why={e2e["why"]}')
alpha, fvars = direction_map(cfgF)
vals, info = construct_E(cfgF, fvars)
print('  construction picks E =', vals, ' detail(k,l,t) =', info)
alpha, st, e2e = analyse_with(cfgF, vals)
print(f'  -> violations {st["viol_req"]}   R2_all={st["R2_all"]}   '
      f'end-to-end ok={e2e["ok"]} why={e2e["why"]}')


# ============================================================ K3 ============
hdr('K3  power of the Fsh check: a DELIBERATELY BAD rule (E := the Q-ray b_l '
    'itself, i.e. AKR-admissible-looking but parallel to an incident edge) '
    'must break the requirement at a measurable rate on the Fsh families, '
    'while the real construction breaks it 0 times on the same configurations.')
for name in ('anti', 'antidep', 'doubleanti', 'multianti', 'hard'):
    R = random.Random(900 + len(name))
    G = r3close.GENS[name]
    tot = badviol = goodviol = badinf = goodinf = fsh = 0
    tries = 0
    while tot < 15 and tries < 4000:
        tries += 1
        g = G(R)
        if g is None: continue
        cfg, _ = g
        alpha, fvars = direction_map(cfg)
        if alpha is None: continue
        tot += 1
        fsh += sum(1 for t, _, _, _ in requirements(cfg) if t == 'Fsh')
        # the bad rule: E_{P_i} := b_1 (a Q-ray at the apex)
        bad = {}
        for f in fvars:
            v = int(f[1:]); j = [j for (i, j) in cfg.coinc if i == v][0]
            aa, bb = rays_at(cfg, v, j)
            bad[f] = bb[0]
        try:
            _, stb, e2b = analyse_with(cfg, bad)
            badviol += 1 if stb['viol_req'] else 0
            badinf += 1 if 'infinite-intersection' in e2b['why'] else 0
        except Exception as ex:
            pass
        vals, info = construct_E(cfg, fvars)
        if vals is None: continue
        _, stg, e2g = analyse_with(cfg, vals)
        goodviol += 1 if stg['viol_req'] else 0
        goodinf += 1 if 'infinite-intersection' in e2g['why'] else 0
    print(f'  {name:11s} cfgs={tot:3d}  Fsh-requirements={fsh:3d}  | '
          f'BAD rule: req-violations={badviol:3d} infinite={badinf:3d}  | '
          f'construction: req-violations={goodviol:3d} infinite={goodinf:3d}')


# ============================================================ K4 ============
hdr('K4  the strong-form grid search must be able to return NOTHING: ask for '
    'Z(E) = {} (AKR\'s literal sentence "there will be no degenerate '
    'situations") on configurations that carry a forced zero.')
R = random.Random(77)
tot = withforced = achieved_empty = achieved_min = 0
while tot < 20:
    g = r3.gen(R)
    if g is None: continue
    cfg, _ = g
    alpha, fvars = direction_map(cfg)
    if alpha is None: continue
    tot += 1
    V, n, fi = symbolic_vertices(cfg, alpha, fvars)
    W = witness_family(V); Zf = forced_zero_set(W)
    if Zf: withforced += 1
    v1, _ = r3close.grid_clean(cfg, fvars, W, Zf, fi, 3)
    if v1 is not None: achieved_min += 1
    v2, _ = r3close.grid_clean(cfg, fvars, W, set(), fi, 3)   # demand Z(E) = {}
    if v2 is not None: achieved_empty += 1
print(f'  configurations {tot}, of which carrying a forced zero {withforced}')
print(f'  grid reaching Z(E) = Z_forced : {achieved_min}   <- the target, >0')
print(f'  grid reaching Z(E) = {{}}       : {achieved_empty}   <- must be 0')


# ============================================================ K5 ============
hdr('K5  apply AKR\'s E=0 rule to the coincident vertex itself (the one place '
    'AKR do NOT apply it).  Z_forced must then break (R1) every time.')
R = random.Random(55)
tot = fired = 0
while tot < 20:
    g = r3.gen(R)
    if g is None: continue
    cfg, _ = g; tot += 1
    alpha, fvars = direction_map(cfg)
    alpha = dict(alpha)
    for (i, j) in cfg.coinc:
        alpha[i] = {}
    V, n, fi = symbolic_vertices(cfg, alpha, fvars)
    Zf = forced_zero_set(witness_family(V))
    if any(t == 'R1' for t, _ in violated(requirements(cfg), Zf)):
        fired += 1
print(f'  configurations {tot}, reporting (R1) forced-broken {fired}  '
      f'<- must be {tot}')


# ============================================================ K6 ============
hdr('K6  THE BRANCH THAT NEVER FIRED.  The construction takes the first t in '
    '{1,2}; every sweep so far chose t=1, so the t=2 branch is untested and '
    'the claim "t in {1,2} always suffices" is, so far, vacuous in half its '
    'content.  Build a configuration where t=1 is CATASTROPHIC.')

# Designed by hand from the algebra:  a1 = (3,0), b1 = (3,-3), a2 = (0,4),
# b2 = (0,-5).  Then (k,l) = (a1,b1) is the first non-parallel pair,
# E(1) = b1 - a1 = (0,-3) is a POSITIVE multiple of b2 and parallel to a2,
# and a2 || b2 antiparallel means the P-side [P0,P1] and the Q-side [Q0,Q1]
# are collinear and meet exactly at the apex.  So E(1) slides them into a
# positive-length overlap: finiteness dies.  E(2) = 2b1 - a1 = (3,-6) is
# parallel to neither a1 nor a2.
def build_K6():
    Pfix = {0: (F(0), F(0)), 1: (F(0), F(4)), 6: (F(3), F(0))}
    Qfix = {0: (F(0), F(0)), 1: (F(0), F(-5)), 6: (F(3), F(-3))}
    R = random.Random(20260921)
    for _ in range(400000):
        P = [None] * 7; Q = [None] * 7
        for k, v in Pfix.items(): P[k] = v
        for k, v in Qfix.items(): Q[k] = v
        for k in (2, 3, 4, 5):
            P[k] = (F(R.randint(-14, 0)), F(R.randint(0, 14)))
            Q[k] = (F(R.randint(0, 14)), F(R.randint(-14, 0)))
        if len(set(P)) != 7 or len(set(Q)) != 7: continue
        if not U.simple(P) or not U.simple(Q): continue
        V0 = P + Q
        coinc, deps = detect(V0)
        if (0, 7) not in coinc: continue
        if any(i in deps or j in deps for (i, j) in coinc): continue
        if not r3.reaches_free(deps): continue
        cfg = Config(V0, coinc, deps)
        bad, pts = r3.sanity(cfg)
        if bad: continue
        if not any(t == 'Fsh' for t, _, _, _ in requirements(cfg)): continue
        return cfg, pts
    return None, None

cfg6, pts6 = build_K6()
if cfg6 is None:
    print('  could not build the K6 configuration -- REPORTING THE FAILURE')
else:
    print('  P =', [tuple(map(str, p)) for p in cfg6.P()])
    print('  Q =', [tuple(map(str, p)) for p in cfg6.Q()])
    print('  |dP n dQ| =', len(pts6), ' coincidences', cfg6.coinc,
          ' dependencies', cfg6.deps)
    a, b = rays_at(cfg6, 0, 7)
    print('  a1,a2 =', a, '  b1,b2 =', b, '  cross(a2,b2) =', cross2(a[1], b[1]))
    print('  Fsh requirements:',
          [l for t, _, _, l in requirements(cfg6) if t == 'Fsh'])
    for t in (1, 2):
        E = (F(t) * b[0][0] - a[0][0], F(t) * b[0][1] - a[0][1])
        alpha, st, e2e = analyse_with(cfg6, {'E0': E})
        print(f'  t={t}: E={E}  cross(E,a1)={cross2(E,a[0])} '
              f'cross(E,a2)={cross2(E,a[1])}  violations={st["viol_req"]}  '
              f'R2={st["R2_all"]}  end-to-end ok={e2e["ok"]} why={e2e["why"]}')
    E, det = construct_E_at(cfg6, 0, 7)
    print(f'  construct_E_at picks E={E} with (k,l,t)={det}   '
          f'<- t=2 branch {"FIRES" if det and det[2] == 2 else "DID NOT FIRE"}')
