"""Non-vacuity controls for the (R3) checker.

A checker that always answers "an admissible direction exists" proves nothing.
Each control below is a statement of the SAME shape, evaluated by the SAME code,
that is FALSE or unsatisfiable, and the code must say so.  Counts are printed.
"""
import sys, random, itertools
from fractions import Fraction as F
sys.path.insert(0, '/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform')
import r3, r3b, uniform as U
from r3 import Config, detect, reaches_free, sanity
from r3b import requirements, violated


def hdr(s): print('\n' + '=' * 72 + '\n' + s + '\n' + '=' * 72)


# --- C1: all four rays at the apex parallel -> e9_directions' failure case ---
hdr('C1  all four rays at the apex mutually parallel: the checker must report '
    'that NO admissible direction exists')
P = [(F(0),F(0)), (F(3),F(0)), (F(6),F(2)), (F(6),F(6)), (F(0),F(7)),
     (F(-4),F(4)), (F(-3),F(0))]
Q = [(F(0),F(0)), (F(5),F(0)), (F(9),F(3)), (F(9),F(8)), (F(1),F(9)),
     (F(-6),F(5)), (F(-6),F(0))]
print('P simple', U.simple(P), 'Q simple', U.simple(Q))
coinc, deps = detect(P+Q)
cfg = Config(P+Q, [(0,7)], {})
a1 = r3.sub2(P[6],P[0]); a2 = r3.sub2(P[1],P[0])
b1 = r3.sub2(Q[6],Q[0]); b2 = r3.sub2(Q[1],Q[0])
print('rays', a1, a2, b1, b2, ' all mutually parallel:',
      all(r3.cross2(u,v)==0 for u in (a1,a2,b1,b2) for v in (a1,a2,b1,b2)))
print('cones_at ->', r3.cones_at(cfg, 0, 7), ' (empty = criterion unsatisfiable)')
R = random.Random(1)
res = r3.analyse(cfg, R, nsamples=25)
nn = sum(1 for s in res['samples'] if s['nocone'])
print(f'RESULT: samples reporting "no admissible direction": {nn}/25',
      ' <- fires' if nn == 25 else ' <- DID NOT FIRE')
_, pts = None, U.cross_points(P, Q)
print('and AKR\'s standing hypothesis (F) is indeed violated here:',
      'infinite intersection' if pts[1] else 'FINITE -- unexpected')


# --- C2: AKR's LITERAL claim, "there will be no degenerate situations" -------
hdr('C2  target strengthened to Z(E) = empty  (AKR\'s literal sentence).  On '
    'configurations that carry a forced zero the answer must be NO, always.')
R = random.Random(2026)
tot = withforced = zero_achieved = minimal_achieved = 0
while tot < 25:
    g = r3.gen(R)
    if g is None: continue
    cfg, pts = g; tot += 1
    res = r3.analyse(cfg, R, nsamples=12)
    if res['Zforced']: withforced += 1
    for s in res['samples']:
        if s['nocone']: continue
        Z = set(s['removable']) | res['Zforced']
        if not Z: zero_achieved += 1
        if not s['removable']: minimal_achieved += 1
print(f'configurations                                  : {tot}')
print(f'  ... carrying at least one FORCED zero         : {withforced}')
print(f'  admissible directions achieving Z(E) = {{}}      : {zero_achieved}'
      f'   <- must be 0')
print(f'  admissible directions achieving Z(E) = Zforced : {minimal_achieved}'
      f'   <- the (R3) target, must be > 0')


# --- C3: apply AKR's E=0 rule where AKR do NOT apply it ----------------------
hdr('C3  objection (2) applied to the coincident vertex itself: set E=0 for the'
    ' moved P-vertex.  Then the bad set really does contain the whole subspace '
    'and the checker must report (R1) FORCED-broken on every configuration.')
R = random.Random(11)
tot = fired = 0
while tot < 25:
    g = r3.gen(R)
    if g is None: continue
    cfg, pts = g; tot += 1
    alpha, fvars = r3.direction_map(cfg)
    alpha = dict(alpha)
    for (i, j) in cfg.coinc:
        alpha[i] = {}                      # <- the lie: "P_i stays where it is"
    for ow in cfg.deps:                    # recompute the dragged vertices
        pass
    V, n, fi = r3.symbolic_vertices(cfg, alpha, fvars)
    W = r3.witness_family(V)
    Zf = r3.forced_zero_set(W)
    v = violated(requirements(cfg), Zf)
    if any(t == 'R1' for t, _ in v): fired += 1
print(f'configurations: {tot}   reporting (R1) forced-broken: {fired}'
      f'   <- must be {tot}')


# --- C4: drop "we leave Q_j stationary" -------------------------------------
hdr('C4  drop AKR\'s "we leave Q_j stationary" and let Q_j be dragged with the '
    'same direction as P_i.  Delta_ij == 0 for every tuple; must report FORCED.')
R = random.Random(12)
tot = fired = 0
while tot < 25:
    g = r3.gen(R)
    if g is None: continue
    cfg, pts = g; tot += 1
    alpha, fvars = r3.direction_map(cfg)
    alpha = dict(alpha)
    for (i, j) in cfg.coinc:
        alpha[j] = dict(alpha[i])          # <- Q_j dragged along with P_i
    V, n, fi = r3.symbolic_vertices(cfg, alpha, fvars)
    W = r3.witness_family(V)
    Zf = r3.forced_zero_set(W)
    v = violated(requirements(cfg), Zf)
    if any(t == 'R1' for t, _ in v): fired += 1
print(f'configurations: {tot}   reporting (R1) forced-broken: {fired}'
      f'   <- must be {tot}')


# --- C5: the end-to-end checker must be able to FAIL ------------------------
hdr('C5  verify_end_to_end must be able to say FAIL: re-run attackF\'s two bad '
    'directions through it.')
P0 = [(F(0),F(0)),(F(0),F(-3)),(F(5),F(-6)),(F(9),F(-1)),(F(6),F(4)),
      (F(-1),F(5)),(F(-3),F(0))]
Q0 = [(F(0),F(0)),(F(2),F(-1)),(F(7),F(-4)),(F(11),F(2)),(F(8),F(7)),
      (F(1),F(8)),(F(4),F(0))]
coinc, deps = detect(P0+Q0)
cfg = Config(P0+Q0, coinc, deps)
for E in ((F(2),F(0)), (F(1),F(-1)), (F(2),F(2))):
    alpha = {v: {} for v in range(14)}; alpha[0] = {'E0': F(1)}
    for ow,(s1,s2,lam) in cfg.deps.items():
        alpha[ow] = {}
    v = r3.verify_end_to_end(cfg, alpha, {'E0': E})
    print(f'  E = {E}   ->  {"PASS" if v["ok"] else "FAIL " + str(v["why"])}')
