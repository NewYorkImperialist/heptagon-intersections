"""Checks for the REPAIRED proof of (Loc), REPAIR.md 2.4.

The repaired step is

  (Loc-1)  if a Q-side t and one of the three base sides sigma in {s-,s,s+}
           satisfy  dist(t,sigma) < 3r,  then  t n sigma != empty,

whose proof is Fact (E) (endpoint_fact.py) plus rho_2(i) >= 3r.  With (Loc-1)
the moving side's OWN base side is met by t, so Lemma 1, tau_1 and K_rot all
apply to t -- which is exactly what ATTACK.md 4.4 shows the printed proof
cannot justify when t meets s+ but not s-.

Sections:
  A  the ATTACK.md 4.2 certificate: does the repaired constant cover it?
  B  (Loc-1) on random configurations, with a deliberate-weakening control
  C  the (Loc) conclusion itself, below and above delta_0

Exact rationals throughout.
"""
import sys, random
from fractions import Fraction as F
sys.path.insert(0, __file__.rsplit('/', 1)[0])
from shift import (sub, add, cross, seg_inter, sides, is_simple, inter_points,
                   count, vertex_vertex, vertex_side)
from repair import dot, frame, gen_shift, host_side_through, DIRS, shift
from attack3 import (delta0, degset_idx, dyadic_below, sqrt_lb, sqrt_ub,
                     d2_pt, d2_pt_seg, d2_seg_seg, strictly_inside)

# ---------------------------------------------------------------- rho_2(i)

def rho2i_sq(P, Q):
    """min over (vertex p of one polygon, side t of the OTHER, p not on t) of
    dist(p,t)^2 -- exact rational (a square, so exactly representable)."""
    c = []
    for p in P:
        for (x, y) in sides(Q):
            v = d2_pt_seg(p, x, y)
            if v != 0: c.append(v)
    for p in Q:
        for (x, y) in sides(P):
            v = d2_pt_seg(p, x, y)
            if v != 0: c.append(v)
    return min(c) if c else None

def r_and_parts(P, Q, i, mode):
    d0, parts = delta0(P, Q, i, mode)
    return d0, parts

# ---------------------------------------------------------------- A

def section_A():
    print('=' * 70)
    print('A.  The ATTACK.md 4.2 certificate under the repaired (Loc) step')
    print('=' * 70)
    P = ((F(0), F(0)), (F(10), F(0)), (F(14), F(10)), (F(4), F(18)),
         (F(-8), F(12)), (F(-12), F(4)), (F(-6), F(-4)))
    eps = F(1, 2**12)
    Q = ((F(5), eps), (F(11), F(20)), (F(-2), F(22)), (F(-4), F(6)))
    i = 1
    assert is_simple(P) and is_simple(Q)
    assert not vertex_vertex(P, Q), 'VV must hold'
    assert not vertex_side(P, Q), 'certificate has NO vertex-side degeneracy'
    assert count(P, Q) == 2
    A, B, C, D, u, n, N = frame(P, i)
    sm, s0, sp = (C, A), (A, B), (B, D)
    t = (Q[0], Q[1])                      # the offending Q-side
    print('  s- =', sm, '  s =', s0, '  s+ =', sp)
    print('  offending Q-side t =', t)
    for nm, sg in (('s-', sm), ('s', s0), ('s+', sp)):
        print('    t n %-2s :' % nm, seg_inter(t[0], t[1], sg[0], sg[1])[0])
    d2 = d2_seg_seg(t[0], t[1], sm[0], sm[1])
    print('  dist(t,s-)^2 =', d2, ' = eps^2 ?', d2 == eps*eps)
    r2i = rho2i_sq(P, Q)
    print('  rho_2(i)^2   =', r2i, ' attained at the Q-vertex (5,eps) vs s-:',
          r2i == eps*eps)
    print('  Fact (E): dist(t,s-) is attained at an ENDPOINT of t  ->',
          d2 == min(d2_pt_seg(t[0], sm[0], sm[1]), d2_pt_seg(t[1], sm[0], sm[1]),
                    d2_pt_seg(sm[0], t[0], t[1]), d2_pt_seg(sm[1], t[0], t[1])))
    print()
    for mode in ('akr', 'translate', 'tilt'):
        d0, parts = delta0(P, Q, i, mode)
        r = parts['r']
        a, b = DIRS[mode](P, Q, i)
        ca = F(N, 1) / dot(a, n)
        Kend = parts['K_end']
        dist_t_sm = sqrt_lb(d2)
        print('  rule %-10s delta_0 = %.6e' % (mode, float(d0)))
        print('     r = %.6e   rho_2 = %.6e   3r <= rho_2 : %s'
              % (float(r), float(parts['rho2']), 3*r <= parts['rho2']))
        print('     dist(t,s-) >= rho_2(i) >= 3r :', dist_t_sm >= 3*r,
              '   [the repaired step]')
        print('     K_end = %.4f ; max displacement of s- at |delta|<delta_0'
              ' = |delta|*|c_a a| < %.6e' % (float(Kend), float(d0*Kend)))
        print('     |delta|*K_end < r/10 < dist(t,s-) :',
              d0*Kend < r/10 and r/10 < dist_t_sm)
        # direct exact verification on a ladder of delta
        db = dyadic_below(d0)
        bad = 0; tested = 0
        for k in range(0, 8):
            dl = db / (2**k)
            for sgn in (1, -1):
                Pd = shift(P, Q, i, sgn*dl, mode)
                e_d = (C, Pd[i])
                tested += 1
                if seg_inter(e_d[0], e_d[1], t[0], t[1])[0] != 'none': bad += 1
        print('     rotated s- meets t at any |delta| <= 2^%d (%d tests): %d'
              % (-(db.denominator.bit_length()-1), tested, bad))
        # NON-VACUITY: above delta_0 the sweep DOES happen
        hit = []
        for e in range(8, 24):
            dl = F(1, 2**e)
            for sgn in (1, -1):
                Pd = shift(P, Q, i, sgn*dl, mode)
                if Pd is None: continue
                if seg_inter(C, Pd[i], t[0], t[1])[0] != 'none':
                    hit.append((e, sgn))
        print('     NON-VACUITY: (e,sign) with |delta|=2^-e at which the'
              ' rotated s- DOES meet t:')
        print('       ', hit if hit else 'NONE')
        print()

# ---------------------------------------------------------------- B

def section_B(trials=400, seed=777, k=7, g=7, weaken=10):
    """(Loc-1) on random configurations.

    CLAIM tested, purely rationally (squared distances, no sqrt):
        for every Q-side t and every sigma in {s-,s,s+},
            t n sigma = empty   ==>   dist(t,sigma)^2 >= rho_2(i)^2 >= (3r)^2.
    The first inequality is Fact (E) + the definition of rho_2(i); the second
    is r = (1/3) min(rho_1..rho_4).

    CONTROL: the same test with rho_2(i) multiplied by `weaken` must FAIL.
    PHENOMENON: the count of (t,sigma) pairs of the exact kind ATTACK.md 4.4
    says escapes rho_2(ii)/K_rot/tau_1 -- t meets the union s- u s u s+ but
    not sigma itself.
    """
    from sweep2 import rand_simple
    print('=' * 70)
    print('B.  (Loc-1) on random heptagon pairs  (seed %d, grid %d)' % (seed, g))
    print('=' * 70)
    rng = random.Random(seed)
    pairs = kept = 0
    tot = disj = meets = 0
    viol_fact = 0          # disjoint but dist^2 < rho2i^2   -- refutes Fact(E)/rho2(i)
    viol_3r = 0            # rho2i^2 < (3r)^2                -- refutes rho_2 >= 3r
    viol_weak = 0          # the deliberately weakened claim
    phen = 0               # t meets the union but not sigma  (ATTACK 4.4's class)
    phen_ok = 0
    ex = []
    while pairs < trials:
        P = rand_simple(rng, k, g); Q = rand_simple(rng, k, g)
        if P is None or Q is None: continue
        pairs += 1
        if inter_points(P, Q) is None: continue
        if vertex_vertex(P, Q): continue
        kept += 1
        r2i = rho2i_sq(P, Q)
        if r2i is None: continue
        for i in range(len(P)):
            d0, parts = delta0(P, Q, i, 'tilt')
            if d0 is None: continue
            r = parts['r']
            if r2i < (3*r)**2: viol_3r += 1
            A, B, C, D, u, n, N = frame(P, i)
            tri = [(C, A), (A, B), (B, D)]
            for (c, d) in sides(Q):
                hits = [seg_inter(c, d, x, y)[0] != 'none' for (x, y) in tri]
                for j, (x, y) in enumerate(tri):
                    tot += 1
                    dd = d2_seg_seg(c, d, x, y)
                    if hits[j]:
                        meets += 1; continue
                    disj += 1
                    if dd < r2i:
                        viol_fact += 1
                        if len(ex) < 4: ex.append((P, Q, i, j, (c, d), dd, r2i))
                    if dd < weaken*weaken*r2i: viol_weak += 1
                    if any(hits):
                        phen += 1
                        if dd >= r2i and dd >= (3*r)**2: phen_ok += 1
    print('  pairs drawn %d, usable %d' % (pairs, kept))
    print('  (Q-side, base-side) pairs examined      : %d' % tot)
    print('    they MEET                             : %d' % meets)
    print('    they are DISJOINT                     : %d' % disj)
    print('  VIOLATIONS of  disjoint => dist^2 >= rho_2(i)^2 : %d' % viol_fact)
    print('  VIOLATIONS of  rho_2(i) >= 3r                   : %d' % viol_3r)
    print()
    print('  PHENOMENON (ATTACK.md 4.4 class): t meets s- u s u s+ but not the')
    print('    particular base side sigma           : %d' % phen)
    print('    of these, covered by rho_2(i) >= 3r  : %d' % phen_ok)
    print()
    print('  NON-VACUITY CONTROL: same checker, bound inflated by %dx' % weaken)
    print('    violations of  disjoint => dist^2 >= (%d rho_2(i))^2 : %d / %d'
          % (weaken, viol_weak, disj))
    for e in ex: print('  EX', e)
    return dict(tot=tot, disj=disj, meets=meets, viol_fact=viol_fact,
                viol_3r=viol_3r, phen=phen, phen_ok=phen_ok,
                viol_weak=viol_weak, kept=kept)

# ---------------------------------------------------------------- C

def loc_data(P, Q, i, mode):
    d0, parts = delta0(P, Q, i, mode)
    if d0 is None: return None
    r = parts['r']
    A, B, C, D, u, n, N = frame(P, i)
    tri = [(C, A), (A, B), (B, D)]
    Dset = inter_points(P, Q)
    Fset = set()
    for x in Dset:
        for (c, d) in tri:
            if d2_pt_seg(x, c, d) == 0: Fset.add(x); break
    Fset.add(A); Fset.add(B)
    return d0, r, Fset, Dset

def in_U(x, Fset, r):
    return [p for p in Fset if d2_pt(x, p) < r*r]

def section_C(trials=400, seed=808, k=7, g=7, modes=('tilt', 'translate', 'akr'),
              big_exps=(2, 4)):
    """The (Loc) conclusion, tested directly, below delta_0 and above it."""
    from sweep2 import rand_simple
    print('=' * 70)
    print('C.  (Loc) itself: (dP(d) n dQ) \\ U  ==  (dP n dQ) \\ U   (seed %d)' % seed)
    print('=' * 70)
    rng = random.Random(seed)
    import collections
    tal = collections.defaultdict(collections.Counter)
    pairs = kept = 0
    while pairs < trials:
        P = rand_simple(rng, k, g); Q = rand_simple(rng, k, g)
        if P is None or Q is None: continue
        pairs += 1
        if inter_points(P, Q) is None: continue
        if vertex_vertex(P, Q): continue
        kept += 1
        for i in range(len(P)):
            for mode in modes:
                dat = loc_data(P, Q, i, mode)
                if dat is None:
                    tal[mode]['skip'] += 1; continue
                d0, r, Fset, Dset = dat
                t = tal[mode]
                # discs pairwise disjoint?
                fl = sorted(Fset)
                for x in range(len(fl)):
                    for y in range(x+1, len(fl)):
                        if d2_pt(fl[x], fl[y]) < 4*r*r:
                            t['U_p NOT DISJOINT'] += 1
                far0 = {x for x in Dset if not in_U(x, Fset, r)}
                db = dyadic_below(d0)
                for tag, dl in ([('below', db / (2**kk)) for kk in (0, 1, 6)] +
                                [('above:2^-%d' % e, F(1, 2**e)) for e in big_exps]):
                    for sgn in (1, -1):
                        Pd = shift(P, Q, i, sgn*dl, mode)
                        if Pd is None: t[tag + ' skip'] += 1; continue
                        if not is_simple(Pd): t[tag + ' skip'] += 1; continue
                        Dd = inter_points(Pd, Q)
                        if Dd is None: t[tag + ' skip'] += 1; continue
                        fard = {x for x in Dd if not in_U(x, Fset, r)}
                        t[tag + ' tested'] += 1
                        if fard != far0: t[tag + ' LOC VIOLATION'] += 1
                        # every near point belongs to exactly one U_p
                        for x in Dd:
                            hs = in_U(x, Fset, r)
                            if len(hs) > 1: t[tag + ' AMBIGUOUS'] += 1
    print('  pairs drawn %d, usable %d' % (pairs, kept))
    for m in modes:
        print('  %-10s' % m, dict(sorted(tal[m].items())))
    return tal

if __name__ == '__main__':
    import argparse
    ap = argparse.ArgumentParser()
    ap.add_argument('--full', action='store_true')
    a = ap.parse_args()
    if a.full:
        section_A()
        section_B(trials=900, seed=777)
        print()
        section_B(trials=900, seed=1234, g=9)
        print()
        section_C(trials=600, seed=808)
