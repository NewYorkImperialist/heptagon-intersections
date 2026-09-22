"""An explicitly RATIONAL a-priori lower bound for the delta_0 of REPAIR.md 2.3.

ATTACK.md 8.2 item 1: "2.3's sentence 'finitely many strictly positive
rationals' is FALSE: rho_1..rho_4 and the K's are square roots.  Harmless for
the theorem, blocking for Lean, which needs a constructive rational lower
bound."  2.3 also leaves the empty `min` undefined.

THEOREM (delta_0^Q).  Let P be a simple m-gon and Q a simple n-gon, m,n >= 3,
with INTEGER coordinates, all |coordinate| <= M, M >= 1, satisfying
  (F)  dP n dQ finite,     (VV) no vertex of P is a vertex of Q.
Let i be any side index and let the shift rule be the TILT or the PURE
TRANSLATION of REPAIR.md 1.4 / 1.2.  Then, with min(empty) := +infinity,

        delta_0  >=  1 / (61440 M^7)  >=  2^-16 M^-7 .

Term by term (proofs in LOC_AND_DELTA0.md 3):
  rho_1   >= 1/(64 M^4)      rho_2 >= 1/(3M)     rho_3 >= 1/(3M)   rho_4 >= 1
  r       >= 1/(192 M^4)
  K_end   <= 4M              K_slide <= 23 M^3   K_rot <= 32 M^3
  tau_1   >= 1/(16 M^2)      tau_2   >= 1/(8 M^2)

This file verifies every one of those, plus the composite bound, plus the
scale-invariance of delta_0 that carries the result to RATIONAL coordinates,
against `attack3.delta0` (which is itself a rational LOWER bound for the true
delta_0, so the comparison is conservative in the right direction).

Non-vacuity: the same checker is re-run with M understated and with the
exponent lowered; it must then report failures.
"""
import sys, random, collections, math
from fractions import Fraction as F
sys.path.insert(0, __file__.rsplit('/', 1)[0])
from shift import inter_points, vertex_vertex, is_simple, sides, sub, cross
from repair import dot, frame, DIRS
from attack3 import delta0, degset_idx, sqrt_lb

# ---------------------------------------------------------------- the bounds

def bounds(M):
    M = F(M)
    return dict(
        rho1=F(1) / (64 * M**4),
        rho2=F(1) / (3 * M),
        rho3=F(1) / (3 * M),
        rho4=F(1),
        r=F(1) / (192 * M**4),
        K_end=4 * M,
        K_slide=23 * M**3,
        K_rot=32 * M**3,
        tau1=F(1) / (16 * M**2),
        tau2=F(1) / (8 * M**2),
    )

def apriori(M):
    return F(1) / (61440 * F(M)**7)

def apriori_dyadic(M):
    return F(1, 2**16) / F(M)**7

LOWER = ('rho1', 'rho2', 'rho3', 'rho4', 'r', 'tau1', 'tau2')   # bound from BELOW
UPPER = ('K_end', 'K_slide', 'K_rot')                            # bound from ABOVE

def coord_max(P, Q):
    return max(max(abs(c) for v in P for c in v),
               max(abs(c) for v in Q for c in v))

def scale(P, lam):
    return tuple((lam*x, lam*y) for (x, y) in P)

# ---------------------------------------------------------------- driver

def run(trials, seed, k, g, modes=('tilt', 'translate'), Mfudge=1, expo=7,
        const=61440, require_deg=False):
    from sweep2 import rand_simple
    rng = random.Random(seed)
    tal = collections.defaultdict(collections.Counter)
    ratios = collections.defaultdict(list)
    empties = collections.Counter()
    worst = {}
    pairs = kept = 0
    while pairs < trials:
        P = rand_simple(rng, k, g); Q = rand_simple(rng, k, g)
        if P is None or Q is None: continue
        pairs += 1
        if inter_points(P, Q) is None: continue
        if vertex_vertex(P, Q): continue
        if require_deg and not degset_idx(P, Q): continue
        kept += 1
        M = coord_max(P, Q)
        assert M == int(M)
        Muse = max(1, int(M) // Mfudge)
        bb = bounds(Muse)
        ap = F(1) / (const * F(Muse)**expo)
        for i in range(len(P)):
            for mode in modes:
                d0, parts = delta0(P, Q, i, mode)
                t = tal[mode]
                if d0 is None:
                    t['skip:' + str(parts)[:20]] += 1; continue
                t['tested'] += 1
                for nm in LOWER:
                    if nm in parts and parts[nm] < bb[nm]:
                        t['BOUND FAILS ' + nm] += 1
                for nm in UPPER:
                    if nm in parts and parts[nm] > bb[nm]:
                        t['BOUND FAILS ' + nm] += 1
                # the sentinel attack3 uses for min(empty)
                for nm in ('rho3', 'tau1', 'tau2'):
                    if parts[nm] == F(10**9): empties[nm] += 1
                if d0 < ap:
                    t['APRIORI BOUND FAILS'] += 1
                    if 'ex' not in worst: worst['ex'] = (P, Q, i, mode, d0, ap)
                ratios[mode].append(d0 / ap)
    return tal, ratios, pairs, kept, empties, worst

def report(tag, tal, ratios, pairs, kept, empties, modes):
    print('-' * 70)
    print(tag, ': pairs drawn %d, usable %d' % (pairs, kept))
    for m in modes:
        if m not in tal: continue
        print('  %-10s' % m, dict(sorted(tal[m].items())))
        rs = sorted(ratios[m])
        if rs:
            print('     slack delta_0 / apriori :  min %.3g   median %.3g   max %.3g'
                  % (float(rs[0]), float(rs[len(rs)//2]), float(rs[-1])))
            import math
            print('     in binary orders log2   :  min %.2f   median %.2f   max %.2f'
                  % (math.log2(float(rs[0])), math.log2(float(rs[len(rs)//2])),
                     math.log2(float(rs[-1]))))
    if empties: print('  min(empty) sentinel hit for:', dict(empties))

def two_sided(trials, seed, k, g, S=1 << 80, modes=('tilt', 'translate')):
    """delta_0^Q (rho down, K up) vs delta_0^UB (rho up, K down): a RIGOROUS
    two-sided bracket for the irrational true delta_0."""
    from sweep2 import rand_simple
    rng = random.Random(seed)
    out = collections.defaultdict(list)
    bad = collections.Counter()
    emptyc = collections.Counter(); ninst = 0
    pairs = kept = 0
    while pairs < trials:
        P = rand_simple(rng, k, g); Q = rand_simple(rng, k, g)
        if P is None or Q is None: continue
        pairs += 1
        if inter_points(P, Q) is None: continue
        if vertex_vertex(P, Q): continue
        kept += 1
        M = int(coord_max(P, Q)); ap = apriori(M)
        for i in range(len(P)):
            for mode in modes:
                lb, pl = delta0_sided(P, Q, i, mode, S, 'lb')
                ub, pu = delta0_sided(P, Q, i, mode, S, 'ub')
                if lb is None or ub is None: bad['skip'] += 1; continue
                ninst += 1
                for kk, vv in pl['empty'].items():
                    if vv: emptyc[kk] += 1
                if lb <= 0: bad['lb <= 0'] += 1; continue
                if ub < lb: bad['UB < LB'] += 1
                if ap > lb: bad['APRIORI > LB'] += 1
                if ap > ub: bad['APRIORI > UB (would refute)'] += 1
                out[mode].append((ub/lb, lb/ap))
    return out, bad, pairs, kept, emptyc, ninst


def sqrt_lemma_check(n=20000, seed=5150, S=1 << 40):
    """The rational square-root device, and a control that must fail."""
    rng = random.Random(seed)
    ok = bad = badctl = 0
    for _ in range(n):
        x = F(rng.randint(1, 10**6), rng.randint(1, 10**6))
        lo, hi = rt_lb(x, S), rt_ub(x, S)
        if lo*lo <= x <= hi*hi and lo <= hi: ok += 1
        else: bad += 1
        # CONTROL: the same floor device used as an UPPER bound, which it is not
        c = F(math.isqrt((x*S*S).numerator // (x*S*S).denominator), S)
        if not (x <= c*c): badctl += 1
    return ok, bad, badctl


def rt_lb(x, S):
    """Rational q with q <= sqrt(x), for rational x >= 0.  q = isqrt(floor(x S^2))/S."""
    if x == 0: return F(0)
    n = (x * S * S).numerator // (x * S * S).denominator
    return F(math.isqrt(n), S)

def rt_ub(x, S):
    """Rational q with q >= sqrt(x).  q = (isqrt(ceil(x S^2)) + 1)/S."""
    if x == 0: return F(0)
    n = -((-(x * S * S).numerator) // (x * S * S).denominator)
    return F(math.isqrt(n) + 1, S)

INF = None   # min(empty) = +infinity, represented explicitly

def mn(lst):
    return min(lst) if lst else INF

def cap(a, b):
    if a is INF: return b
    if b is INF: return a
    return min(a, b)

def delta0_sided(P, Q, i, mode, S=1 << 80, side='lb'):
    """delta_0 of REPAIR.md 2.3 with every square root replaced by a rational
    bound.  side='lb': rho down / K up  -> result <= true delta_0.
            side='ub': rho up   / K down -> result >= true delta_0.
    Empty index sets give min(empty) = +infinity (INF), handled explicitly."""
    from shift import sides as SIDES, inter_points as IP
    from attack3 import d2_pt, d2_pt_seg, d2_seg_seg
    rlo = (lambda x: rt_lb(x, S)) if side == 'lb' else (lambda x: rt_ub(x, S))
    rhi = (lambda x: rt_ub(x, S)) if side == 'lb' else (lambda x: rt_lb(x, S))
    m = len(P)
    A, B, C, D, u, n, N = frame(P, i)
    a, b = DIRS[mode](P, Q, i)
    da, db = dot(a, n), dot(b, n)
    if da == 0 or db == 0: return None, 'undefined (G fails)'
    ca = F(N, 1)/da; cb = F(N, 1)/db
    w = sub(A, C); z = sub(D, B)
    Dset = IP(P, Q)
    if Dset is None: return None, 'infinite (F fails)'
    SP, SQ = SIDES(P), SIDES(Q)
    pts = sorted(set(Dset) | set(P) | set(Q))
    c1 = [d2_pt(pts[x], pts[y]) for x in range(len(pts)) for y in range(x+1, len(pts))]
    if any(v == 0 for v in c1): return None, 'coincident points'
    rho1 = rlo(mn(c1))
    c2 = [d2_pt_seg(p, c, d) for p in P for (c, d) in SQ if d2_pt_seg(p, c, d) != 0]
    c2 += [d2_pt_seg(p, c, d) for p in Q for (c, d) in SP if d2_pt_seg(p, c, d) != 0]
    n_rho2i = len(c2)
    tri = [(C, A), (A, B), (B, D)]
    c2ii = []
    for (c, d) in SQ:
        ds = min(d2_seg_seg(c, d, x, y) for (x, y) in tri)
        if ds != 0: c2ii.append(ds)
    c2 += c2ii
    if not c2: return None, 'rho2 empty'
    rho2 = rlo(mn(c2))
    c3 = [d2_seg_seg(SP[x][0], SP[x][1], SP[y][0], SP[y][1])
          for x in range(m) for y in range(x+1, m)
          if not (y == x+1 or (x == 0 and y == m-1))]
    if any(v == 0 for v in c3): return None, 'P not simple'
    rho3 = rlo(mn(c3)) if c3 else INF
    rho4 = rlo(min(dot(w, w), dot(u, u), dot(z, z)))
    K_end = max(rhi(ca*ca*dot(a, a)), rhi(cb*cb*dot(b, b)))
    Ks = [F(1)] + [F(N, 1)*rhi(dot(sub(d, c), sub(d, c))) / abs(dot(sub(d, c), n))
                   for (c, d) in SQ if dot(sub(d, c), n) != 0]
    K_slide = max(Ks)
    Kr = [F(1)]
    for (c, d) in SQ:
        v = sub(d, c)
        if d2_seg_seg(c, d, C, A) == 0 and cross(w, v) != 0:
            Kr.append(rhi(ca*ca*dot(a, a))*rhi(dot(w, w))*rhi(dot(v, v))/abs(cross(w, v)))
        if d2_seg_seg(c, d, B, D) == 0 and cross(z, v) != 0:
            Kr.append(rhi(cb*cb*dot(b, b))*rhi(dot(z, z))*rhi(dot(v, v))/abs(cross(z, v)))
    K_rot = max(Kr)
    taus = []
    for (c, d) in SQ:
        v = sub(d, c)
        if d2_seg_seg(c, d, C, A) == 0 and cross(a, v) != 0:
            taus.append(abs(F(cross(w, v), 1)/(ca*cross(a, v))))
        if d2_seg_seg(c, d, B, D) == 0 and cross(b, v) != 0:
            taus.append(abs(F(cross(z, v), 1)/(cb*cross(b, v))))
    tau1 = mn(taus)
    if tau1 == 0: return None, 'tau1 = 0'
    t2 = [abs(F(dot(sub(q, A), n), 1)/N) for q in Q if dot(sub(q, A), n) != 0]
    t2 += [abs(F(dot(sub(c, A), n), 1)/N) for (c, d) in SQ
           if dot(sub(d, c), n) == 0 and dot(sub(c, A), n) != 0]
    tau2 = mn(t2)
    rr = [rho1, rho2, rho4] + ([rho3] if rho3 is not INF else [])
    r = min(rr) / 3
    d0 = r / (10 * max(K_end, K_slide, K_rot, F(1)))
    d0 = cap(cap(d0, tau1), tau2)
    return d0, dict(rho1=rho1, rho2=rho2, rho3=rho3, rho4=rho4, r=r,
                    K_end=K_end, K_slide=K_slide, K_rot=K_rot,
                    tau1=tau1, tau2=tau2, n_rho2i=n_rho2i,
                    empty=dict(rho3=(rho3 is INF), tau1=(tau1 is INF),
                               tau2=(tau2 is INF), rho2ii=(not c2ii)))

    print()
    print('=' * 70)

if __name__ == '__main__':
    modes = ('tilt', 'translate', 'akr')
    print('=' * 70)
    print('A.  Term-by-term and composite verification of the a-priori bound')
    print('=' * 70)
    for (k, g, tr, sd) in ((7, 7, 400, 2026), (7, 9, 300, 4242), (6, 5, 300, 77),
                           (7, 12, 200, 999), (5, 4, 300, 31)):
        tal, ratios, pairs, kept, emp, worst = run(tr, sd, k, g, modes=modes)
        report('k=%d grid=%d seed=%d' % (k, g, sd), tal, ratios, pairs, kept,
               emp, modes)
        if worst: print('  WORST:', worst)

    print()
    print('=' * 70)
    print('B.  NON-VACUITY: the same checker with the bound deliberately strengthened')
    print('=' * 70)
    for tag, kw in (('M understated by 2x', dict(Mfudge=2)),
                    ('M understated by 4x', dict(Mfudge=4)),
                    ('exponent 7 -> 5',     dict(expo=5)),
                    ('exponent 7 -> 3',     dict(expo=3)),
                    ('exponent 7 -> 1',     dict(expo=1)),
                    ('exponent 7 -> 0',     dict(expo=0)),
                    ('constant 61440 -> 1', dict(const=1)),
                    ('bound x 10^4 (const 6.144)', dict(const=F(6144,1000))),
                    ('bound x 10^5 (const 0.6144)', dict(const=F(6144,10000))),
                    ('bound x 10^6 (const 0.06144)', dict(const=F(6144,100000))),
                    ('bound x 10^7', dict(const=F(6144,1000000))),
                    ('bound x 10^9', dict(const=F(6144,10**8)))):
        tal, ratios, pairs, kept, emp, worst = run(300, 2026, 7, 7,
                                                   modes=('tilt',), **kw)
        t = tal['tilt']
        print('  %-24s  APRIORI BOUND FAILS: %5d / %5d'
              % (tag, t.get('APRIORI BOUND FAILS', 0), t.get('tested', 0)))
    print()
    print('  per-term controls (each rho lower bound tightened 10x, each K upper')
    print('  bound loosened... i.e. claim rho >= 10 x bound):')
    from sweep2 import rand_simple
    rng = random.Random(2026)
    cnt = collections.Counter(); tot = 0
    pairs = 0
    while pairs < 300:
        P = rand_simple(rng, 7, 7); Q = rand_simple(rng, 7, 7)
        if P is None or Q is None: continue
        pairs += 1
        if inter_points(P, Q) is None: continue
        if vertex_vertex(P, Q): continue
        M = int(coord_max(P, Q)); bb = bounds(M)
        for i in range(len(P)):
            d0, parts = delta0(P, Q, i, 'tilt')
            if d0 is None: continue
            tot += 1
            for nm in LOWER:
                if nm in parts and parts[nm] < 10*bb[nm]: cnt['rho/tau ' + nm] += 1
            for nm in UPPER:
                if nm in parts and parts[nm] > bb[nm]/10: cnt['K ' + nm] += 1
    print('   instances %d ; violations of the 10x-tightened per-term claims:' % tot)
    for kk in sorted(cnt): print('     %-16s %6d' % (kk, cnt[kk]))

    print()
    print('=' * 70)
    print('C.  The sharp constructive rational delta_0^Q, two-sided')
    print('=' * 70)
    ok, bad, badctl = sqrt_lemma_check()
    print('  sqrt device lemma  lb^2 <= x <= ub^2 : %d ok, %d BAD' % (ok, bad))
    print('  control: the "round to nearest" variant used as a LOWER bound is')
    print('           not one -- failures: %d / 20000' % badctl)
    for (k, g, tr, sd) in ((7, 7, 250, 2026), (7, 12, 150, 999)):
        for S in (1 << 20, 1 << 40, 1 << 80):
            out, bd, pairs, kept, emptyc, ninst = two_sided(tr, sd, k, g, S)
            for m in ('tilt', 'translate'):
                rs = sorted(x[0] for x in out[m])
                sl = sorted(x[1] for x in out[m])
                if not rs: continue
                print('  k=%d g=%d S=2^%-3d %-10s n=%5d   UB/LB: max %.6g'
                      '   LB/apriori: min %.4g median %.4g'
                      % (k, g, S.bit_length()-1, m, len(rs), float(rs[-1]),
                         float(sl[0]), float(sl[len(sl)//2])))
            if bd: print('      anomalies:', dict(bd))
        print('      min(empty) actually occurred:', dict(emptyc), 'of', ninst, 'instances')

    print()
    print('=' * 70)
    print('D.  Scale invariance of delta_0  (carries the bound to RATIONAL data)')
    print('=' * 70)
    rng = random.Random(1717)
    pairs = 0; ok_scale = 0; bad_scale = 0; ratok = 0; ratbad = 0
    S = 1 << 120
    while pairs < 120:
        P = rand_simple(rng, 7, 7); Q = rand_simple(rng, 7, 7)
        if P is None or Q is None: continue
        pairs += 1
        if inter_points(P, Q) is None: continue
        if vertex_vertex(P, Q): continue
        for i in range(len(P)):
            lb0, _ = delta0_sided(P, Q, i, 'tilt', S, 'lb')
            ub0, _ = delta0_sided(P, Q, i, 'tilt', S, 'ub')
            if lb0 is None: continue
            for lam in (F(2), F(3), F(1, 4), F(5, 7)):
                Ps, Qs = scale(P, lam), scale(Q, lam)
                lbs, _ = delta0_sided(Ps, Qs, i, 'tilt', S, 'lb')
                ubs, _ = delta0_sided(Ps, Qs, i, 'tilt', S, 'ub')
                if lbs is None: continue
                # the TRUE delta_0 lies in both brackets, so they must overlap
                if lbs <= ub0 and lb0 <= ubs: ok_scale += 1
                else: bad_scale += 1
                if lam.denominator > 1:
                    D = lam.denominator
                    Mden = max(1, int(coord_max(Ps, Qs) * D))
                    if lbs >= apriori(Mden): ratok += 1
                    else: ratbad += 1
    print('  brackets for delta_0(lambda P) and delta_0(P) OVERLAP :'
          '  %d yes, %d NO' % (ok_scale, bad_scale))
    print('     (delta_0^Q is NOT exactly scale-invariant -- the rational')
    print('      rounding is not homogeneous -- but the TRUE delta_0 is, and')
    print('      the two rigorous brackets must and do contain a common point.)')
    print('  rational-data corollary  delta_0 >= 1/(61440 (D*M)^7) : %d hold, %d FAIL'
          % (ratok, ratbad))

    print()
    print('=' * 70)
    print('E.  Where the slack lives: which term is loose?')
    print('=' * 70)
    rng = random.Random(2026)
    import collections as _c
    tight = _c.Counter(); tot = 0; pairs = 0
    worstterm = _c.Counter()
    while pairs < 250:
        P = rand_simple(rng, 7, 7); Q = rand_simple(rng, 7, 7)
        if P is None or Q is None: continue
        pairs += 1
        if inter_points(P, Q) is None: continue
        if vertex_vertex(P, Q): continue
        M = int(coord_max(P, Q)); bb = bounds(M)
        for i in range(len(P)):
            d0, parts = delta0(P, Q, i, 'tilt')
            if d0 is None: continue
            tot += 1
            rat = {}
            for nm in LOWER:
                if nm in parts and parts[nm] != F(10**9):
                    rat[nm] = parts[nm] / bb[nm]
            for nm in UPPER:
                if nm in parts: rat[nm] = bb[nm] / parts[nm]
            for nm, v in rat.items(): tight[nm] += 1
            worstterm[min(rat, key=lambda nm: rat[nm])] += 1
            for nm, v in rat.items():
                if v < 10: tight['<10x ' + nm] += 1
    print('  instances %d' % tot)
    print('  term that is TIGHTEST (smallest true/bound ratio):')
    for kk, vv in worstterm.most_common(): print('     %-10s %5d' % (kk, vv))
    print('  terms whose a-priori bound is within a factor 10 of the truth:')
    for kk in sorted(k2 for k2 in tight if k2.startswith('<10x')):
        print('     %-18s %5d / %d' % (kk, tight[kk], tot))
