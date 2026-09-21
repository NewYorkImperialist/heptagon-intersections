"""TARGETED adversarial families for the generalised shift G(a,b).

Each family is built to break one specific clause.  Exact rationals only.

  X1  many simultaneous degeneracies on the shifted side
  X2  STRAIGHT VERTICES AT BOTH ENDS of the shifted side (AKR's rule is
      undefined here; the repairs must not be)
  X3  a Q-side NEARLY PARALLEL to the shifted side (tests that delta_0 must
      depend on sigma)
  X4  degeneracies AT BOTH MOVING ENDPOINTS simultaneously
  X5  PERPENDICULAR Q-sides at both moving endpoints (the pure translation's
      one failure mode, doubled)
"""
import sys, random, collections
from fractions import Fraction as F
sys.path.insert(0, __file__.rsplit('/', 1)[0])
from shift import is_simple, count, vertex_vertex, inter_points, sides, cross, sub
from repair import shift, frame, dot
from attack import check_instance, degset, touching
from sweep2 import strictly_inside

MODES = ('akr', 'translate', 'tilt')

def tally(res, tal, key):
    st = res.get('status')
    if st != 'ok': tal[key + '/skip:' + st] += 1; return
    tal[key + '/tested'] += 1
    if not res['identity']: tal[key + '/IDENTITY VIOLATION'] += 1
    if res['ntouch'] and not res['cleared']: tal[key + '/NOT CLEARED'] += 1
    if not res['nonew']: tal[key + '/DEG COUNT ROSE'] += 1

# ---------------------------------------------------------------- X1
def X1(trials, seed, exps, modes=MODES):
    """P = rectangle, Q random with 2..5 vertices forced onto P's bottom side."""
    rng = random.Random(seed)
    G, k = 8, 9
    P = ((F(0), F(0)), (F(G), F(0)), (F(G), F(5)), (F(0), F(5)))
    zero = [(F(x), F(0)) for x in range(1, G)]
    rest = [(F(x), F(y)) for x in range(G+1) for y in (-2,-1,1,2)]
    tal = collections.Counter(); bydeg = collections.Counter(); used = 0
    for _ in range(trials):
        nz = rng.randint(2, 5)
        pts = rng.sample(zero, nz) + rng.sample(rest, k - nz)
        Q = None
        for _ in range(40):
            rng.shuffle(pts)
            if is_simple(tuple(pts)): Q = tuple(pts); break
        if Q is None: continue
        if inter_points(P, Q) is None or vertex_vertex(P, Q): continue
        d = sum(1 for v in Q if strictly_inside(v, P[0], P[1]))
        if d == 0: continue
        used += 1; bydeg[d] += 1
        for e in exps:
            for m in modes: tally(check_instance(P, Q, 0, F(1, 2**e), m), tal, m)
    return tal, bydeg, used

# ---------------------------------------------------------------- X2
def X2(trials, seed, exps, modes=MODES):
    """P has FOUR consecutive collinear vertices, so the shifted side has a
    straight vertex at BOTH ends.  AKR's rule is undefined at both."""
    rng = random.Random(seed)
    P = tuple((F(x), F(y)) for x, y in
              [(0,0),(3,0),(9,0),(12,0),(12,8),(6,11),(0,8)])
    A, B = P[1], P[2]
    zero = [(F(x), F(0)) for x in range(4, 9)]
    rest = [(F(x), F(y)) for x in range(0, 13) for y in (-3,-2,-1,1,2,3)]
    tal = collections.Counter(); used = 0
    for _ in range(trials):
        nz = rng.randint(1, 3)
        pts = rng.sample(zero, nz) + rng.sample(rest, 9 - nz)
        Q = None
        for _ in range(40):
            rng.shuffle(pts)
            if is_simple(tuple(pts)): Q = tuple(pts); break
        if Q is None: continue
        if inter_points(P, Q) is None or vertex_vertex(P, Q): continue
        if not any(strictly_inside(v, A, B) for v in Q): continue
        used += 1
        for e in exps:
            for m in modes: tally(check_instance(P, Q, 1, F(1, 2**e), m), tal, m)
    return tal, used

# ---------------------------------------------------------------- X3
def X3(slopes, exps, modes=MODES):
    """A Q-side nearly parallel to the shifted side: Q has a vertex at (4,0)
    in the interior of P's bottom side, with edges of slope 1/k.  As k grows
    the crossing point slides ~k times further for the same delta, so delta_0
    must shrink.  Reports the smallest exponent that still works."""
    P = ((F(0), F(0)), (F(20), F(0)), (F(20), F(9)), (F(0), F(9)))
    rows = []
    for k in slopes:
        # Q: a "V" touching P's bottom side at (4,0) from above, arms of slope 1/k
        Q = ((F(4), F(0)), (F(4)+F(k), F(1)), (F(4)+F(k), F(4)), (F(4)-F(k), F(4)),
             (F(4)-F(k), F(1)))
        if not is_simple(Q): rows.append((k, 'Q not simple', {})); continue
        if inter_points(P, Q) is None or vertex_vertex(P, Q):
            rows.append((k, 'bad base', {})); continue
        r = {}
        for m in modes:
            worst = None
            for e in exps:
                res = check_instance(P, Q, 0, F(1, 2**e), m)
                good = (res.get('status') == 'ok' and res.get('identity'))
                r.setdefault(m, []).append((e, res.get('status'), res.get('identity'), res.get('c')))
        rows.append((k, 'ok', r))
    return rows

# ---------------------------------------------------------------- X4/X5
def X45(trials, seed, exps, perp, modes=MODES):
    """Q built so that BOTH endpoints A, B of the shifted side lie in the
    relative interior of a Q-side.  perp=True forces both those Q-sides to be
    PERPENDICULAR to the shifted side (the pure translation's failure mode)."""
    rng = random.Random(seed)
    P = tuple((F(x), F(y)) for x, y in
              [(0,0),(3,0),(9,0),(12,0),(12,8),(6,11),(0,8)])
    A, B = P[1], P[2]
    tal = collections.Counter(); used = 0
    cand = [(a, b) for a in range(-3, 4) for b in range(1, 4)]
    for _ in range(trials):
        e1 = rng.choice([(0, b) for b in range(1, 4)] if perp else
                        [c for c in cand if c[0] != 0])
        e2 = rng.choice([(0, b) for b in range(1, 4)] if perp else
                        [c for c in cand if c[0] != 0])
        mid = rng.choice([(F(6), F(y)) for y in (4, 5, 6, 7)])
        low = rng.choice([(F(6), F(y)) for y in (-4, -5, -6)])
        Q = ((A[0]-e1[0], A[1]-e1[1]), (A[0]+e1[0], A[1]+e1[1]), mid,
             (B[0]+e2[0], B[1]+e2[1]), (B[0]-e2[0], B[1]-e2[1]), low)
        if len(set(Q)) != 6 or not is_simple(Q): continue
        if inter_points(P, Q) is None or vertex_vertex(P, Q): continue
        T = touching(P, Q, 1)
        if len(T) < 2: continue
        used += 1
        for e in exps:
            for m in modes: tally(check_instance(P, Q, 1, F(1, 2**e), m), tal, m)
    return tal, used

def show(name, tal, extra):
    print(f"--- {name}  {extra}")
    for m in MODES + ('skew',):
        keys = {k: v for k, v in tal.items() if k.startswith(m + '/')}
        if keys: print(f"    {m:<10}", {k.split('/',1)[1]: v for k, v in sorted(keys.items())})

if __name__ == '__main__':
    import argparse
    ap = argparse.ArgumentParser(); ap.add_argument('--which', default='all')
    a = ap.parse_args()
    exps = [20, 34]
    if a.which in ('all', 'X1'):
        t, bydeg, used = X1(6000, 71, exps)
        show('X1 many simultaneous degeneracies on the shifted side', t,
             f'usable configs={used} #deg histogram={dict(sorted(bydeg.items()))}')
    if a.which in ('all', 'X2'):
        t, used = X2(6000, 72, exps)
        show('X2 straight vertices at BOTH ends of the shifted side', t,
             f'usable configs={used}')
    if a.which in ('all', 'X4'):
        t, used = X45(6000, 73, exps, perp=False)
        show('X4 degeneracies at BOTH moving endpoints', t, f'usable configs={used}')
    if a.which in ('all', 'X5'):
        t, used = X45(6000, 74, exps, perp=True)
        show('X5 PERPENDICULAR Q-sides at both moving endpoints', t,
             f'usable configs={used}')
    if a.which in ('all', 'X3'):
        print('--- X3 nearly-parallel Q-side: identity vs delta as the slope flattens')
        rows = X3([1, 2, 4, 8, 16, 32, 64], [2, 4, 6, 8, 10, 14, 20])
        for k, st, r in rows:
            if st != 'ok': print(f'    k={k}: {st}'); continue
            for m in MODES:
                bad = [e for (e, s, idt, c) in r[m] if s != 'ok' or not idt]
                print(f'    k={k:<3} {m:<10} exponents where identity fails or shift is bad: {bad}')
