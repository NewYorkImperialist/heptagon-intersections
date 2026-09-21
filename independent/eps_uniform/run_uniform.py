"""Driver: verify the uniform-eps_0 reduction on full 14-vertex configurations.

For each configuration we check, in exact arithmetic:
  (S) SIGN-CONSTANCY   the sign vector of the 1638 witnesses is the same at
      every sampled rational eps in (0, eps_0), and equals the vector of
      lowest-nonzero-coefficient signs predicted from the coefficients alone;
  (V) the vertex-vertex coincidences are gone for every eps in (0, eps_0);
  (C) the intersection-point count does not decrease;
  (M) both heptagons are still simple;
  (D) the maintained vertex-side relation (1) still holds, with the same lambda.

CONTROLS (a checker that always says yes proves nothing):
  (K1) at eps = 0 the sign vector DIFFERS from the small-eps one  -> the test
       can distinguish;
  (K2) at an eps that is an actual root of a witness (necessarily >= eps_0) the
       sign vector DIFFERS -> eps_0 is not vacuously large;
  (K3) with E = 0 (no motion) the coincidence survives -> (V) reports FAIL;
  (K4) with E parallel to an incident edge (Finding 2) a NEW witness is
       identically zero -> the "no new persistent degeneracy" test reports FAIL.
"""
import sys, random, itertools
from fractions import Fraction as F
sys.path.insert(0,'/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform')
from epslib import Poly, Vec, cross, orient, root_free_radius, sgn
from uniform import (witnesses, eps0_of, signvec, leadsignvec, simple,
                     cross_points, snap, build, make_motion, CAND, dot)

P0, P1, Q0, Q3, Q5 = 0, 1, 7, 10, 12

def zeroset(W):
    return frozenset(k for k, p in W.items() if p.is_zero())

def sample_eps(e0, R, n=6):
    out = [e0/2, e0/3, e0/1000, e0/10**9]
    for _ in range(n):
        out.append(e0 * F(R.randint(1, 999), 1000))
    return out

def try_config(Pp, Qq, lam, R, tries=300):
    V0 = [Vec(Poly.const(p[0]), Poly.const(p[1])) for p in list(Pp)+list(Qq)]
    W0 = witnesses(V0); Z0 = zeroset(W0)
    cands = [(a, b) for a in CAND for b in CAND]
    R.shuffle(cands)
    for E0, E1 in cands[:tries]:
        V = make_motion(Pp, Qq, lam, E0, E1)
        W = witnesses(V); Z = zeroset(W)
        if not Z <= Z0:                      # NEW persistent degeneracy
            continue
        if ('X',P0,Q0) in Z and ('Y',P0,Q0) in Z:   # coincidence not broken
            continue
        if ('X',P1,Q3) in Z and ('Y',P1,Q3) in Z:
            continue
        return E0, E1, V, W, Z, Z0
    return None

def check(Pp, Qq, lam, E0, E1, V, W, Z, Z0, R):
    rep = {}
    e0, _ = eps0_of(W)
    rep['eps0'] = e0
    lead = leadsignvec(W)
    es = sample_eps(e0, R)
    svs = {signvec(W, e) for e in es}
    rep['S_constant'] = (len(svs) == 1)
    rep['S_matches_lead'] = (len(svs) == 1 and svs.pop() == lead)
    cnt0 = len(cross_points(Pp, Qq)[0])
    rep['count0'] = cnt0
    ok_v = ok_c = ok_m = ok_d = True
    counts = set()
    for e in es:
        pts = snap(V, e)
        Pe, Qe = pts[:7], pts[7:]
        if Pe[P0] == Qe[0] or Pe[P1] == Qe[3]: ok_v = False
        if not (simple(Pe) and simple(Qe)):     ok_m = False
        c, inf = cross_points(Pe, Qe)
        if inf: ok_c = False
        counts.add(len(c))
        if lam is not None:
            want = (lam*Pe[P0][0] + (1-lam)*Pe[P1][0],
                    lam*Pe[P0][1] + (1-lam)*Pe[P1][1])
            if Qe[5] != want: ok_d = False
    rep['V_separated'] = ok_v
    rep['M_simple']    = ok_m
    rep['D_relation']  = ok_d if lam is not None else None
    rep['counts']      = sorted(counts)
    rep['C_nodrop']    = ok_c and all(c >= cnt0 for c in counts)
    rep['C_constant']  = (len(counts) == 1)
    # ---- controls ----
    rep['K1_eps0_differs'] = (signvec(W, F(0)) != lead)
    roots = []
    for k, p in W.items():
        c = p.c
        if p.is_zero(): continue
        if len(c) == 3 and c[2] != 0:
            disc = c[1]*c[1] - 4*c[2]*c[0]
            if disc >= 0:
                import math
                s = math.isqrt(disc.numerator*disc.denominator)
                if s*s == disc.numerator*disc.denominator and disc.denominator:
                    pass
        # exact rational roots only: linear case c1*e + c0
        if len(c) >= 2 and c[1] != 0 and (len(c) < 3 or c[2] == 0):
            r = -c[0]/c[1]
            if r > 0: roots.append(r)
    rep['K2_root_found'] = bool(roots)
    if roots:
        r = min(roots)
        rep['K2_smallest_root'] = r
        rep['K2_root_ge_eps0'] = (r >= e0)
        rep['K2_signvec_differs_at_root'] = (signvec(W, r) != lead)
    return rep

def control_K3_K4(Pp, Qq, lam, R):
    """K3: no motion.  K4: E parallel to an incident edge."""
    out = {}
    V = make_motion(Pp, Qq, lam, (F(0),F(0)), (F(0),F(0)))
    W = witnesses(V); Z = zeroset(W)
    out['K3_coincidence_survives'] = (('X',P0,Q0) in Z and ('Y',P0,Q0) in Z)
    V0 = [Vec(Poly.const(p[0]), Poly.const(p[1])) for p in list(Pp)+list(Qq)]
    Z0 = zeroset(witnesses(V0))
    a = (Pp[6][0]-Pp[0][0], Pp[6][1]-Pp[0][1])     # edge P_0 -> P_6
    hits = 0
    for c in (F(1),F(2),F(3)):
        Epar = (-c*a[0], -c*a[1])
        V = make_motion(Pp, Qq, lam, Epar, (F(0),F(0)))
        Z = zeroset(witnesses(V))
        if not Z <= Z0: hits += 1
    out['K4_new_persistent_degeneracy_detected'] = hits
    out['K4_tested'] = 3
    return out

def main(n=40, seed=424242):
    R = random.Random(seed)
    tot = dict(built=0, direction_found=0, S_constant=0, S_matches_lead=0,
               V_separated=0, M_simple=0, D_relation=0, C_nodrop=0,
               C_constant=0, K1=0, K2_root=0, K2_ge=0, K2_diff=0,
               K3=0, K4_hits=0, K4_tested=0)
    eps0s = []
    fails = []
    while tot['built'] < n:
        b = build(R)
        if b is None: continue
        Pp, Qq, lam = b
        tot['built'] += 1
        r = try_config(Pp, Qq, lam, R)
        if r is None: continue
        tot['direction_found'] += 1
        E0, E1, V, W, Z, Z0 = r
        rep = check(Pp, Qq, lam, E0, E1, V, W, Z, Z0, R)
        eps0s.append(rep['eps0'])
        for key, tk in [('S_constant','S_constant'),('S_matches_lead','S_matches_lead'),
                        ('V_separated','V_separated'),('M_simple','M_simple'),
                        ('C_nodrop','C_nodrop'),('C_constant','C_constant')]:
            if rep[key]: tot[tk] += 1
            else: fails.append((key, Pp, Qq, lam, E0, E1, rep))
        if rep['D_relation']: tot['D_relation'] += 1
        if rep['K1_eps0_differs']: tot['K1'] += 1
        if rep['K2_root_found']:
            tot['K2_root'] += 1
            if rep['K2_root_ge_eps0']: tot['K2_ge'] += 1
            if rep['K2_signvec_differs_at_root']: tot['K2_diff'] += 1
        c = control_K3_K4(Pp, Qq, lam, R)
        if c['K3_coincidence_survives']: tot['K3'] += 1
        tot['K4_hits'] += c['K4_new_persistent_degeneracy_detected']
        tot['K4_tested'] += c['K4_tested']
    return tot, eps0s, fails

if __name__ == '__main__':
    tot, eps0s, fails = main()
    for k, v in tot.items(): print(f"{k:22s} {v}")
    print()
    if eps0s:
        print("eps_0 range:", min(eps0s), "..", max(eps0s))
        print("median-ish  :", sorted(eps0s)[len(eps0s)//2])
    print()
    print("FAILURES:", len(fails))
    for f in fails[:3]:
        print("  ", f[0], f[1], f[2], f[4], f[5])
