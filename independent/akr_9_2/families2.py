"""Round-2 adversarial families for the tilted translation.

Targets the cases REPAIR.md's own families do NOT force:

  Y1  a Q-side through the FIXED PIVOT C (case P4), and NEARLY COLLINEAR with
      the neighbour side s^-.  This is the case guarded only by tau_1, which is
      new to the repair (AKR's rule never rotates s^-), and which REPAIR.md
      4.2 never builds a family for.
  Y2  a Q-VERTEX in the relative interior of the ROTATING neighbour s^- (case
      P2-i), pushed close to the moving endpoint A.
  Y3  everything at once: a Q-vertex inside s, degeneracies at BOTH endpoints,
      a straight vertex at BOTH ends, a Q-vertex on s^- and one on s^+.
  Y4  a Q-side NEARLY PARALLEL to s that also carries the moving endpoint A
      (X3 and X5 crossed; REPAIR.md tests them separately).
  Y5  a Q-side nearly PERPENDICULAR (not exactly) to s at a moving endpoint --
      the neighbourhood of the tilt's decision boundary.

Exact rationals.  No float.
"""
import sys, random, collections
from fractions import Fraction as F
sys.path.insert(0, __file__.rsplit('/', 1)[0])
from shift import is_simple, count, vertex_vertex, inter_points, sides, cross, sub
from repair import frame, dot, DIRS, host_side_through
from attack3 import (check, degset_idx, strictly_inside, delta0, dyadic_below)

MODES = ('akr', 'translate', 'tilt')

def tally(res, tal, mode):
    st = res.get('status')
    if st != 'ok':
        tal[mode + '/skip:' + st] += 1; return
    tal[mode + '/tested'] += 1
    if res['interior_deg']: tal[mode + '/has interior deg'] += 1
    if res['endpoint_deg']: tal[mode + '/has endpoint deg'] += 1
    if res['guaranteed']:   tal[mode + '/clause3 nonvacuous'] += 1
    if res['pivot_deg']:    tal[mode + '/has pivot deg (P4)'] += 1
    if res['rot_deg']:      tal[mode + '/has rotating-neighbour deg (P2)'] += 1
    if res['ep_before']:    tal[mode + '/endpoint deg before'] += 1
    if res['ep_surv']:      tal[mode + '/ENDPOINT DEG SURVIVES'] += 1
    if not res['identity']: tal[mode + '/IDENTITY VIOLATION'] += 1
    if not res['cleared']:  tal[mode + '/NOT CLEARED'] += 1
    if not res['nonew_strict']: tal[mode + '/NEW DEGENERACY (strict)'] += 1
    if not res['nonew_count']:  tal[mode + '/deg COUNT rose'] += 1
    if res['vv_new']: tal[mode + '/NEW VERTEX-VERTEX'] += 1
    if not res['xcheck']: tal[mode + '/XCHECK MISMATCH'] += 1

def assemble(rng, anchors, filler, nfill, tries=60):
    """Shuffle anchors+filler into a simple polygon."""
    pool = list(anchors) + rng.sample(filler, nfill)
    if len(set(pool)) != len(pool): return None
    for _ in range(tries):
        rng.shuffle(pool)
        t = tuple(pool)
        if is_simple(t): return t
    return None

def usable(P, Q):
    return (Q is not None and inter_points(P, Q) is not None
            and not vertex_vertex(P, Q) and bool(degset_idx(P, Q)))

# base heptagon with straight vertices at P1 and P2 (side 1 = [A,B])
PSTRAIGHT = tuple((F(x), F(y)) for x, y in
                  [(0,0),(3,0),(9,0),(12,0),(12,8),(6,11),(0,8)])
# base heptagon with NO straight vertex, side 1 = [A,B] = [(3,0),(9,0)]
PBENT = tuple((F(x), F(y)) for x, y in
              [(0,2),(3,0),(9,0),(12,2),(12,8),(6,11),(0,8)])

# ---------------------------------------------------------------- Y1
def Y1(trials, seed, kslopes, base=PBENT, modes=MODES, exps=(20, 34)):
    """Q has a vertex-free SIDE through the pivot C = P[0], nearly collinear
    with s^- = [C, A].  Built by putting two Q-vertices on the line through C
    with direction w + (1/k) * perp(w), so C is strictly inside that Q-side."""
    rng = random.Random(seed)
    P = base; i = 1
    A, B, C, D, u, n, N = frame(P, i)
    w = sub(A, C); wp = (-w[1], w[0])
    tal = collections.Counter(); used = 0; bycase = collections.Counter()
    for k in kslopes:
        dirv = (w[0]*k + wp[0], w[1]*k + wp[1])     # ~ w as k grows
        for _ in range(trials):
            s1 = rng.choice([F(1), F(2), F(1,2)])
            s2 = rng.choice([F(1), F(2), F(1,2)])
            q1 = (C[0] - s1*dirv[0], C[1] - s1*dirv[1])
            q2 = (C[0] + s2*dirv[0], C[1] + s2*dirv[1])
            filler = [(F(x), F(y)) for x in range(-6, 19) for y in (-5,-4,14,15)]
            Qc = assemble(rng, [q1, q2], filler, 3)
            if Qc is None: continue
            # need q1,q2 adjacent in Q so that C is inside a Q-side
            if not any(strictly_inside(C, c, d) for (c, d) in sides(Qc)): continue
            if not usable(P, Qc): continue
            used += 1; bycase[k] += 1
            for e in exps:
                for m in modes: tally(check(P, Qc, i, F(1, 2**e), m), tal, m)
            # and at delta just under delta_0
            for m in modes:
                d0, pt = delta0(P, Qc, i, m)
                if d0 is None: continue
                tally(check(P, Qc, i, dyadic_below(d0), m), tal, m + '@d0')
    return tal, used, bycase

# ---------------------------------------------------------------- Y2
def Y2(trials, seed, base=PBENT, modes=MODES, exps=(20, 34)):
    """A Q-VERTEX strictly inside the rotating neighbour s^- = [C,A], at
    parameter tau close to 1 (i.e. close to the moving endpoint A)."""
    rng = random.Random(seed)
    P = base; i = 1
    A, B, C, D, u, n, N = frame(P, i)
    tal = collections.Counter(); used = 0
    for _ in range(trials):
        tau = rng.choice([F(1,2), F(3,4), F(7,8), F(15,16), F(31,32), F(63,64)])
        q = (C[0] + tau*(A[0]-C[0]), C[1] + tau*(A[1]-C[1]))
        filler = [(F(x), F(y)) for x in range(-6, 19) for y in (-5,-4,-3,13,14,15)]
        Qc = assemble(rng, [q], filler, 4)
        if Qc is None or not usable(P, Qc): continue
        if not any(strictly_inside(q, c, d) for (c, d) in sides(P)): continue
        used += 1
        for e in exps:
            for m in modes: tally(check(P, Qc, i, F(1, 2**e), m), tal, m)
    return tal, used

# ---------------------------------------------------------------- Y3
def Y3(trials, seed, base=PSTRAIGHT, perp=True, modes=MODES, exps=(20, 34)):
    """Everything at once on side 1 of PSTRAIGHT (straight vertex at BOTH ends):
    a Q-vertex strictly inside s, a Q-side through A, a Q-side through B, and
    optionally both those Q-sides perpendicular to s."""
    rng = random.Random(seed)
    P = base; i = 1
    A, B, C, D, u, n, N = frame(P, i)
    tal = collections.Counter(); used = 0
    for _ in range(trials):
        e1 = (F(0), F(rng.choice([1,2,3]))) if perp else \
             (F(rng.choice([-2,-1,1,2])), F(rng.choice([1,2,3])))
        e2 = (F(0), F(rng.choice([1,2,3]))) if perp else \
             (F(rng.choice([-2,-1,1,2])), F(rng.choice([1,2,3])))
        mid = (F(rng.choice([4,5,6,7,8])), F(0))      # Q-vertex inside s
        anchors = [(A[0]-e1[0], A[1]-e1[1]), (A[0]+e1[0], A[1]+e1[1]),
                   mid,
                   (B[0]+e2[0], B[1]+e2[1]), (B[0]-e2[0], B[1]-e2[1])]
        if len(set(anchors)) != 5: continue
        # keep the anchors in this cyclic order so A,B really sit inside sides
        extra = [(F(rng.choice(range(-4, 17))), F(rng.choice([-6,-5,12,13])))]
        for perm in ([anchors[0], anchors[1], anchors[2], anchors[3], anchors[4]] + extra,):
            Qc = tuple(perm)
            if not is_simple(Qc): continue
            if not usable(P, Qc): continue
            nend = sum(1 for v in (A, B) if host_side_through(v, Qc) is not None)
            nint = sum(1 for v in Qc if strictly_inside(v, A, B))
            if nend < 2 or nint < 1: continue
            used += 1
            for e in exps:
                for m in modes: tally(check(P, Qc, i, F(1, 2**e), m), tal, m)
            for m in modes:
                d0, pt = delta0(P, Qc, i, m)
                if d0 is None: continue
                tally(check(P, Qc, i, dyadic_below(d0), m), tal, m + '@d0')
    return tal, used

# ---------------------------------------------------------------- Y4
def Y4(ks, seed, base=PBENT, modes=MODES, exps=(2,4,6,8,10,14,20,34)):
    """A Q-side NEARLY PARALLEL to s that CARRIES the moving endpoint A."""
    rng = random.Random(seed)
    P = base; i = 1
    A, B, C, D, u, n, N = frame(P, i)
    rows = []
    for k in ks:
        # Q-side through A with direction (k,1): nearly parallel to u=(6,0)
        q1 = (A[0]-F(k), A[1]-F(1)); q2 = (A[0]+F(k), A[1]+F(1))
        Qc = (q1, q2, (F(6), F(14)), (F(-6), F(14)))
        if not is_simple(Qc) or not usable(P, Qc):
            rows.append((k, 'unusable', None, None)); continue
        r = {}
        for m in modes:
            d0, pt = delta0(P, Qc, i, m)
            bad = []
            for e in exps:
                res = check(P, Qc, i, F(1, 2**e), m)
                if res['status'] != 'ok' or not res['identity'] or not res['cleared'] \
                   or not res['nonew_strict']:
                    bad.append((e, res['status'], res.get('identity'),
                                res.get('cleared'), res.get('nonew_strict')))
            r[m] = (None if d0 is None else d0, bad)
        rows.append((k, 'ok', r, None))
    return rows

# ---------------------------------------------------------------- Y5
def Y5(trials, seed, base=PBENT, modes=MODES, exps=(20, 34)):
    """A Q-side at the tilt's DECISION BOUNDARY: direction (eps, 1) with eps a
    tiny nonzero rational, so u.v != 0 but only just -- the tilt does NOT tilt,
    and a = n is only just transversal to the Q-side."""
    rng = random.Random(seed)
    P = base; i = 1
    A, B, C, D, u, n, N = frame(P, i)
    tal = collections.Counter(); used = 0; rows = []
    for e2 in range(0, 13):
        eps = F(1, 2**e2)
        v = (eps, F(1))
        q1 = (A[0]-v[0], A[1]-v[1]); q2 = (A[0]+v[0], A[1]+v[1])
        Qc = (q1, q2, (F(6), F(14)), (F(-6), F(14)))
        if not is_simple(Qc) or not usable(P, Qc):
            rows.append((e2, 'unusable', {})); continue
        r = {}
        for m in modes:
            d0, pt = delta0(P, Qc, i, m)
            bad = []
            for e in exps + (2, 4, 6, 8, 10):
                res = check(P, Qc, i, F(1, 2**e), m)
                if res['status'] != 'ok' or not res['identity'] or not res['cleared'] \
                   or not res['nonew_strict']:
                    bad.append((e, res['status'], res.get('identity'),
                                res.get('cleared'), res.get('nonew_strict')))
            r[m] = (None if d0 is None else d0, sorted(bad))
        rows.append((e2, 'ok', r))
    return rows

def show(name, tal, extra=''):
    print(f"--- {name}   {extra}")
    pref = sorted({k.split('/')[0] for k in tal})
    for m in pref:
        print(f"    {m:<14}", {k.split('/',1)[1]: v for k, v in sorted(tal.items())
                               if k.split('/')[0] == m})

# ---------------------------------------------------------------- Y6
def Y6(eps_exps, base=None, modes=MODES):
    """A Q-VERTEX at distance ~2^-j from the ROTATING NEIGHBOUR s^-, with the
    Q-side it belongs to crossing s^+ so that rho_2(ii) does NOT apply to it.

    This is the term of delta_0 that REPAIR.md never measures.  4.2's X3
    measures K_slide (a Q-side nearly parallel to the SHIFTED side); nothing
    there measures rho_2(i), and the localisation proof in 2.4 justifies the
    rotating-neighbour case by rho_2(ii), which is about Q-sides DISJOINT from
    s^- u s u s^+ and so says nothing here.  If delta_0 did not track this
    epsilon, the rotated s^- would sweep across the Q-vertex and create an
    intersection point for one sign of delta only -- a direct violation of the
    averaging identity.
    """
    P = tuple((F(x), F(y)) for x, y in
              [(0,0),(10,0),(10,10),(0,16),(-8,10),(-10,4),(-6,-4)])
    assert is_simple(P), 'base P not simple'
    i = 1
    A, B, C, D, u, n, N = frame(P, i)      # C=(0,0) A=(10,0) B=(10,10) D=(0,16)
    rows = []
    for j in eps_exps:
        eps = F(1, 2**j)
        # Q-side t from (5, eps) -- just above the middle of s^- = [(0,0),(10,0)]
        # -- up to (5, 20), which crosses s^+ = [(10,10),(0,16)].
        Qc = ((F(5), eps), (F(5), F(20)), (F(-2), F(20)), (F(-2), F(18)))
        if not is_simple(Qc): rows.append((j, 'Q not simple', {})); continue
        if inter_points(P, Qc) is None or vertex_vertex(P, Qc):
            rows.append((j, 'bad base', {})); continue
        r = {}
        for m in modes:
            d0, parts = delta0(P, Qc, i, m)
            bad = []
            for e in range(1, 40, 1):
                res = check(P, Qc, i, F(1, 2**e), m)
                if res['status'] != 'ok' or not res['identity'] \
                   or not res['nonew_strict'] or not res['cleared']:
                    bad.append(e)
            r[m] = (d0, parts, bad)
        rows.append((j, 'ok', r))
    return rows

# ---------------------------------------------------------------- Y7
def Y7(eps_exps, modes=MODES, emax=34):
    """Y6 done right: the neighbour s^- must ACTUALLY ROTATE.

    In Y6 the angle at A was a right angle, so a = n was parallel to w and s^-
    only changed length (case P2-ii) -- the sweep could not happen.  Here the
    angle at A is oblique, so the rotated s^- rises by ~2*delta at x = 5, and a
    Q-vertex placed at height eps = 2^-j there is swept across as soon as
    delta > eps/2, for ONE SIGN OF delta ONLY.  That is a direct averaging-
    identity violation, and the question is whether delta_0 excludes it.
    """
    P = tuple((F(x), F(y)) for x, y in
              [(0,0),(10,0),(14,10),(4,18),(-8,12),(-12,4),(-6,-4)])
    assert is_simple(P), 'base P not simple'
    i = 1
    rows = []
    for j in eps_exps:
        eps = F(1, 2**j)
        Qc = ((F(5), eps), (F(11), F(20)), (F(-2), F(22)), (F(-4), F(6)))
        if not is_simple(Qc): rows.append((j, 'Q not simple', {})); continue
        if inter_points(P, Qc) is None or vertex_vertex(P, Qc):
            rows.append((j, 'bad base', {})); continue
        r = {}
        for m in modes:
            d0, parts = delta0(P, Qc, i, m)
            bad = []
            for e in range(1, emax):
                res = check(P, Qc, i, F(1, 2**e), m)
                if res['status'] != 'ok' or not res['identity'] \
                   or not res['nonew_strict'] or not res['cleared']:
                    bad.append((e, res.get('status'), res.get('identity'),
                                res.get('nonew_strict')))
            r[m] = (d0, parts, bad)
        rows.append((j, 'ok', r))
    return rows
