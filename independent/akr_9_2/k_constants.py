"""INDEPENDENT audit of K_end, K_slide, K_rot  (REPAIR.md 2.3).

Written 2026-09-22 by a fourth agent.  Everything is exact rational; there is
no float anywhere except in printed diagnostics.

REUSED from the existing code base, deliberately, so that a disagreement shows
up as a disagreement:
    shift.py   : sub/add/cross/sides/is_simple/inter_points/seg_inter
    repair.py  : frame, DIRS (akr / translate / tilt), gen_shift
    sweep2.py  : rand_simple
    attack3.py : delta0 (as a CROSS-CHECK only -- see below), d2_seg_seg,
                 d2_pt_seg, degset_idx

REWRITTEN here, independently:
    * delta0_sq  -- the EXACT rational delta_0^2.  attack3.delta0 replaces every
      norm by a rational bound in the safe direction and so returns a strict
      lower bound; squaring instead keeps everything rational and EXACT, which
      both sharpens the attack (larger admissible delta) and gives an
      independent check on attack3.
    * the three constants, as exact rational SQUARES;
    * the exact displacement laws (E1),(E2),(E3), from scratch.
"""
import sys, random, collections, math
from fractions import Fraction as F
sys.path.insert(0, __file__.rsplit('/', 1)[0])
from shift import (sub, add, cross, sides, is_simple, inter_points,
                   seg_inter, vertex_vertex)
from repair import dot, frame, gen_shift, DIRS, host_side_through
from attack3 import d2_seg_seg, d2_pt_seg, d2_pt, degset_idx

# ---------------------------------------------------------------- geometry

def line_meet_par(p, dp, q, dq):
    """Parameter lam with p+lam*dp on the line q+theta*dq.  None if parallel."""
    den = cross(dp, dq)
    if den == 0: return None
    return F(cross(sub(q, p), dq), 1) / den

def meet(p, dp, q, dq):
    lam = line_meet_par(p, dp, q, dq)
    if lam is None: return None
    return (p[0] + lam*dp[0], p[1] + lam*dp[1])

def norm2(v): return v[0]*v[0] + v[1]*v[1]

# ---------------------------------------------------------------- constants

def disp_vectors(P, Q, i, mode):
    """(e_a, e_b) = (c_a a, c_b b), the unit-delta displacements, exactly."""
    A, B, C, D, u, n, N = frame(P, i)
    a, b = DIRS[mode](P, Q, i)
    da, db = dot(a, n), dot(b, n)
    if da == 0 or db == 0: return None
    ca, cb = F(N, 1)/da, F(N, 1)/db
    return ((ca*a[0], ca*a[1]), (cb*b[0], cb*b[1]))

def K_squares(P, Q, i, mode):
    """(K_end^2, K_slide^2, K_rot^2) as EXACT rationals, plus the per-t data.

    Definitions are REPAIR.md 2.3 verbatim:
      K_end   = max(|e_a|, |e_b|)
      K_slide = max over Q-sides t with <v_t,n> != 0 of  N|v_t| / |<v_t,n>|
      K_rot   = max over Q-sides t MEETING s^-  of  |e_a||w||v_t|/|cross(w,v_t)|
                and the same with (z, e_b) for s^+.
    """
    A, B, C, D, u, n, N = frame(P, i)
    ev = disp_vectors(P, Q, i, mode)
    if ev is None: return None
    ea, eb = ev
    w, z = sub(A, C), sub(D, B)
    Kend2 = max(norm2(ea), norm2(eb))
    Ksl2 = [F(0)]
    slide_terms = []
    for (c, d) in sides(Q):
        v = sub(d, c)
        vn = dot(v, n)
        if vn != 0:
            val = F(N*N, 1) * norm2(v) / F(vn*vn, 1)
            Ksl2.append(val); slide_terms.append(((c, d), val))
    Krot2 = [F(0)]
    rot_terms = []
    for (c, d) in sides(Q):
        v = sub(d, c)
        if d2_seg_seg(c, d, C, A) == 0 and cross(w, v) != 0:
            val = F(norm2(ea), 1) * norm2(w) * norm2(v) / F(cross(w, v)**2, 1)
            Krot2.append(val); rot_terms.append((('m', c, d), val))
        if d2_seg_seg(c, d, B, D) == 0 and cross(z, v) != 0:
            val = F(norm2(eb), 1) * norm2(z) * norm2(v) / F(cross(z, v)**2, 1)
            Krot2.append(val); rot_terms.append((('p', c, d), val))
    return dict(Kend2=Kend2, Kslide2=max(Ksl2), Krot2=max(Krot2),
                slide_terms=slide_terms, rot_terms=rot_terms,
                ea=ea, eb=eb, w=w, z=z, A=A, B=B, C=C, D=D, u=u, n=n, N=N)

# ---------------------------------------------------------------- delta_0^2

def rho_squares(P, Q, i):
    """(rho1^2, rho2^2, rho3^2, rho4^2) exactly, or None + reason."""
    m = len(P); SP, SQ = sides(P), sides(Q)
    A, B, C, D, u, n, N = frame(P, i)
    w, z = sub(A, C), sub(D, B)
    Dset = inter_points(P, Q)
    if Dset is None: return None, 'infinite (F fails)'
    pts = sorted(set(Dset) | set(P) | set(Q))
    r1 = None
    for x in range(len(pts)):
        for y in range(x+1, len(pts)):
            v = d2_pt(pts[x], pts[y])
            if v == 0: return None, 'coincident (VV?)'
            r1 = v if r1 is None else min(r1, v)
    if r1 is None: return None, 'rho1 empty'
    cands = []
    for p in P:
        for (c, d) in SQ:
            q = d2_pt_seg(p, c, d)
            if q != 0: cands.append(q)
    for p in Q:
        for (c, d) in SP:
            q = d2_pt_seg(p, c, d)
            if q != 0: cands.append(q)
    tri = [(C, A), (A, B), (B, D)]
    for (c, d) in SQ:
        ds = [d2_seg_seg(c, d, x, y) for (x, y) in tri]
        if min(ds) != 0: cands.append(min(ds))
    if not cands: return None, 'rho2 empty'
    r2 = min(cands)
    c3 = []
    for x in range(m):
        for y in range(x+1, m):
            if y == x+1 or (x == 0 and y == m-1): continue
            c3.append(d2_seg_seg(SP[x][0], SP[x][1], SP[y][0], SP[y][1]))
    if any(v == 0 for v in c3): return None, 'P not simple'
    r3 = min(c3) if c3 else None            # None = +infinity (triangle)
    r4 = min(norm2(w), norm2(u), norm2(z))
    return (r1, r2, r3, r4), None

def delta0_sq(P, Q, i, mode):
    """EXACT rational delta_0^2 of REPAIR.md 2.3, with min(empty) = +infinity.

    Every term of delta_0 is a square root of a rational, so delta_0^2 is
    rational and the min can be taken on the squares.  Returned with the name
    of the BINDING term, which is the thing 4.3 of K_CONSTANTS.md is about.
    """
    rs, why = rho_squares(P, Q, i)
    if rs is None: return None, why
    r1, r2, r3, r4 = rs
    K = K_squares(P, Q, i, mode)
    if K is None: return None, 'undefined (G fails)'
    A, B, C, D, u, n, N = frame(P, i)
    ea, eb, w, z = K['ea'], K['eb'], K['w'], K['z']
    a, b = DIRS[mode](P, Q, i)
    mins = [r1, r2, r4] + ([r3] if r3 is not None else [])
    rsq = F(min(mins), 1) / 9                                   # r = (1/3) min
    maxK2 = max(K['Kend2'], K['Kslide2'], K['Krot2'], F(1))
    branchK = rsq / (100 * maxK2)
    t1 = []
    for (c, d) in sides(Q):
        v = sub(d, c)
        if d2_seg_seg(c, d, C, A) == 0 and cross(ea, v) != 0:
            t1.append(F(cross(w, v)**2, 1) / F(cross(ea, v)**2, 1))
        if d2_seg_seg(c, d, B, D) == 0 and cross(eb, v) != 0:
            t1.append(F(cross(z, v)**2, 1) / F(cross(eb, v)**2, 1))
    tau1sq = min(t1) if t1 else None
    if tau1sq == 0: return None, 'tau1 = 0'
    t2 = []
    for q in Q:
        e = dot(sub(q, A), n)
        if e != 0: t2.append(F(e*e, 1)/F(N*N, 1))
    for (c, d) in sides(Q):
        v = sub(d, c)
        if dot(v, n) == 0:
            e = dot(sub(c, A), n)
            if e != 0: t2.append(F(e*e, 1)/F(N*N, 1))
    tau2sq = min(t2) if t2 else None
    cand = [('K', branchK)]
    if tau1sq is not None: cand.append(('tau1', tau1sq))
    if tau2sq is not None: cand.append(('tau2', tau2sq))
    who, val = min(cand, key=lambda kv: kv[1])
    return val, dict(binding=who, rsq=rsq, maxK2=maxK2, tau1sq=tau1sq,
                     tau2sq=tau2sq, branchK=branchK, r1=r1, r2=r2, r3=r3,
                     r4=r4, **K)

def rat_below_sqrt(q, bits=64):
    """Largest dyadic p/2^bits with (p/2^bits)^2 < q, for rational q > 0."""
    S = 1 << bits
    num = q.numerator * S * S
    p = math.isqrt(num // q.denominator)
    x = F(p, S)
    while x*x >= q: p -= 1; x = F(p, S)
    return x

# ------------------------------------------------- the three claims, exactly

def test_E1(P, Q, i, mode, delta, taus=None):
    """max over sampled points x of the three moving sides of
       dist(x, own base side)^2 / (delta^2 K_end^2).   Claim: <= 1."""
    K = K_squares(P, Q, i, mode)
    A, B, C, D, u, n, N = frame(P, i)
    ea, eb = K['ea'], K['eb']
    Ad = (A[0]+delta*ea[0], A[1]+delta*ea[1])
    Bd = (B[0]+delta*eb[0], B[1]+delta*eb[1])
    if taus is None:
        taus = [F(k, 16) for k in range(17)]
    worst = F(0); arg = None
    for (p0, p1, b0, b1) in ((C, Ad, C, A), (Ad, Bd, A, B), (Bd, D, B, D)):
        for t in taus:
            x = (p0[0] + t*(p1[0]-p0[0]), p0[1] + t*(p1[1]-p0[1]))
            dd = d2_pt_seg(x, b0, b1)
            rr = dd / (delta*delta*K['Kend2'])
            if rr > worst: worst, arg = rr, (b0, b1, t)
    return worst, arg

def test_E2(P, Q, i, mode, delta):
    """max over Q-sides t meeting s of |x-X0|^2/(delta^2 K_slide^2).  <= 1?"""
    K = K_squares(P, Q, i, mode)
    A, B, C, D, u, n, N = frame(P, i)
    ea, eb = K['ea'], K['eb']
    Ad = (A[0]+delta*ea[0], A[1]+delta*ea[1])
    Bd = (B[0]+delta*eb[0], B[1]+delta*eb[1])
    ud = sub(Bd, Ad)
    if ud == (0, 0): return None, 'A_d = B_d'
    if K['Kslide2'] == 0: return F(0), None
    worst = F(0); arg = None
    for (c, d) in sides(Q):
        v = sub(d, c)
        if d2_seg_seg(c, d, A, B) != 0: continue      # t must meet s
        if dot(v, n) == 0: continue                   # excluded by Lemma 1
        X0 = meet(c, v, A, u)
        x = meet(c, v, Ad, ud)
        if X0 is None or x is None: return None, 'parallel'
        rr = d2_pt(x, X0) / (delta*delta*K['Kslide2'])
        if rr > worst: worst, arg = rr, (c, d)
    return worst, arg

def test_E3(P, Q, i, mode, delta):
    """max over Q-sides t meeting s^- (resp s^+) of
       |x-X0|^2 / (delta^2 K_rot^2).   Claim of REPAIR 2.3: <= 1.
    Also returns, for the worst t, the three factors of K_CONSTANTS 4.2."""
    K = K_squares(P, Q, i, mode)
    A, B, C, D, u, n, N = frame(P, i)
    ea, eb, w, z = K['ea'], K['eb'], K['w'], K['z']
    if K['Krot2'] == 0: return F(0), None
    worst = F(0); arg = None
    for (pivot, base, e, seg) in ((C, w, ea, (C, A)), (D, (-z[0], -z[1]), eb, (B, D))):
        for (c, d) in sides(Q):
            v = sub(d, c)
            if d2_seg_seg(c, d, seg[0], seg[1]) != 0: continue
            if cross(base, v) == 0: continue          # excluded by Lemma 1
            bd = (base[0] + delta*e[0], base[1] + delta*e[1])
            if cross(bd, v) == 0: return None, 'delta = tau1 exactly'
            X0 = meet(pivot, base, c, v)
            x = meet(pivot, bd, c, v)
            rr = d2_pt(x, X0) / (delta*delta*K['Krot2'])
            if rr > worst:
                lam0 = line_meet_par(pivot, base, c, v)
                worst, arg = rr, dict(t=(c, d), pivot=pivot, lam0=lam0,
                                      base=base, e=e, v=v)
    return worst, arg

def lemmaR_check(P, Q, i, mode, delta):
    """Verify Lemma R (K_CONSTANTS 4.1) as an EXACT identity against the
    brute-force line intersection, for every (neighbour, Q-side) pair."""
    K = K_squares(P, Q, i, mode)
    A, B, C, D, u, n, N = frame(P, i)
    ea, eb, w, z = K['ea'], K['eb'], K['w'], K['z']
    ok = bad = 0
    for (pivot, base, e) in ((C, w, ea), (D, (-z[0], -z[1]), eb)):
        for (c, d) in sides(Q):
            v = sub(d, c)
            if cross(base, v) == 0: continue
            bd = (base[0] + delta*e[0], base[1] + delta*e[1])
            if cross(bd, v) == 0: continue
            X0 = meet(pivot, base, c, v); x = meet(pivot, bd, c, v)
            lhs = d2_pt(x, X0)
            lam0 = line_meet_par(pivot, base, c, v)
            rhs = (delta*delta * lam0*lam0 * F(cross(e, base)**2, 1)
                   * norm2(v) / F(cross(v, bd)**2, 1))
            if lhs == rhs: ok += 1
            else: bad += 1
    return ok, bad

def plucker_check(rng, n=20000):
    """cross(p,q)cross(r,s) - cross(p,r)cross(q,s) + cross(p,s)cross(q,r) = 0."""
    bad = 0
    for _ in range(n):
        p, q, r, s = [(rng.randint(-50, 50), rng.randint(-50, 50))
                      for _ in range(4)]
        if cross(p, q)*cross(r, s) - cross(p, r)*cross(q, s) + \
           cross(p, s)*cross(q, r) != 0: bad += 1
    return n - bad, bad

# ---------------------------------------------------------------- driver

MODES = ('tilt', 'translate', 'akr')

def instances(rng, trials, k, g, require_deg=False):
    from sweep2 import rand_simple
    pairs = 0
    while pairs < trials:
        P = rand_simple(rng, k, g); Q = rand_simple(rng, k, g)
        if P is None or Q is None: continue
        pairs += 1
        if inter_points(P, Q) is None: continue
        if vertex_vertex(P, Q): continue              # (VV), 9.1's output
        if require_deg and not degset_idx(P, Q): continue
        yield P, Q

def sweep(trials, seed, k, g, modes=MODES, weaken=F(1), require_deg=False,
          frac=F(1023, 1024), verbose=False):
    """weaken: multiply each K by this before testing.  weaken<1 must produce
    violations (non-vacuity control); weaken=1 is the real test."""
    rng = random.Random(seed)
    tal = collections.defaultdict(collections.Counter)
    best = collections.defaultdict(lambda: collections.defaultdict(
        lambda: (F(0), None)))
    binding = collections.Counter()
    pairs = kept = 0
    for P, Q in instances(rng, trials, k, g, require_deg):
        kept += 1
        for i in range(len(P)):
            for mode in modes:
                d2, parts = delta0_sq(P, Q, i, mode)
                if d2 is None:
                    tal[mode]['skip:' + str(parts)[:20]] += 1; continue
                binding[(mode, parts['binding'])] += 1
                d0 = rat_below_sqrt(d2)
                for delta in (frac*d0, -frac*d0, d0/1024):
                    tal[mode]['tested'] += 1
                    for nm, fn in (('E1', test_E1), ('E2', test_E2),
                                   ('E3', test_E3)):
                        rr, arg = fn(P, Q, i, mode, delta)
                        if rr is None:
                            tal[mode]['skip ' + nm] += 1; continue
                        rr = rr / (weaken*weaken)
                        if rr > 0: tal[mode][nm + ' nonzero'] += 1
                        if rr > 1:
                            tal[mode][nm + ' VIOLATION'] += 1
                        if rr > best[mode][nm][0]:
                            best[mode][nm] = (rr, (P, Q, i, mode, delta, arg))
    return tal, best, kept, binding

def show(tag, tal, best, kept, binding, modes=MODES):
    print('=' * 72); print(tag, ' usable pairs:', kept)
    for m in modes:
        if m not in tal: continue
        print(' [%s] %s' % (m, dict(tal[m])))
        for nm in ('E1', 'E2', 'E3'):
            rr = best[m][nm][0]
            print('    max ratio %s = %s  (%.6f)' % (nm, rr, float(rr)**0.5
                                                     if rr else 0.0), end='')
            print('   [ratio of TRUE displacement to the bound, as a ratio of'
                  ' SQUARES above; sqrt shown]')
    print(' binding term of delta_0:', dict(binding))

# ------------------------------------------------- targeted adversarial hunt

def adversarial(seed=11, rounds=200000, maxc=9, verbose=False):
    """Hunt for the largest E3 ratio.  K_CONSTANTS 4.2 says the ratio is
        lam0 * sin(e_a,w) * 1/(1-delta/delta*_t),
    so the target features are: a Q-side t through A (lam0 = 1); e_a
    perpendicular to w, which for the translation means  w || u, i.e. a
    STRAIGHT VERTEX at A -- exactly AKR's undefined case; and v nearly
    parallel to u, which makes delta*_t small.  The polygons are built around
    those features and completed at random."""
    rng = random.Random(seed)
    from shift import is_simple
    bestr = F(0); bestinfo = None; tried = 0; feats = collections.Counter()
    for _ in range(rounds):
        L = rng.randint(1, maxc)
        p = rng.randint(1, maxc); q = rng.choice([0, 0, 0, 1, -1, 2, -2])
        A = (F(0), F(0)); B = (F(L), F(0)); C = (F(-p), F(q))
        k = rng.randint(1, maxc); j = rng.choice([1, -1, 2, -2])
        al = rng.randint(1, 3); be = rng.randint(1, 3)
        R = (F(-al*k), F(-al*j)); S = (F(be*k), F(be*j))
        # P: C, A, B, then 2-3 random vertices closing it
        extra = [(F(rng.randint(-maxc, maxc)), F(rng.randint(-maxc, maxc)))
                 for _ in range(rng.randint(2, 3))]
        P = (C, A, B) + tuple(extra)
        Qe = [(F(rng.randint(-maxc, maxc)), F(rng.randint(-maxc, maxc)))
              for _ in range(rng.randint(2, 3))]
        Qp = (R, S) + tuple(Qe)
        if len(set(P)) != len(P) or len(set(Qp)) != len(Qp): continue
        if not is_simple(P) or not is_simple(Qp): continue
        if inter_points(P, Qp) is None: continue
        if vertex_vertex(P, Qp): continue
        tried += 1
        i = 1                                   # side s = [A,B] = P_1 P_2
        for mode in ('translate', 'tilt'):
            d2, parts = delta0_sq(P, Qp, i, mode)
            if d2 is None: continue
            d0 = rat_below_sqrt(d2)
            for sgn in (1, -1):
                delta = sgn * F(4095, 4096) * d0
                rr, arg = test_E3(P, Qp, i, mode, delta)
                if rr is None: continue
                if rr > bestr:
                    bestr = rr
                    bestinfo = (P, Qp, i, mode, delta, arg, parts['binding'])
                    feats['improved'] += 1
    return bestr, bestinfo, tried, feats
