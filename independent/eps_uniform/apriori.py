"""Is eps_0 >= 1/(1 + 8*(N+M)^2) ?

Coefficients of D_ijk = orient(A0+ea, B0+eb, C0+ec):
   c0 = cross(B0-A0, C0-A0)
   c1 = cross(b-a, C0-A0) + cross(B0-A0, c-a)
   c2 = cross(b-a, c-a)
With |V^0|_inf <= N and |E|_inf <= M:  |c0| <= 8N^2, |c1| <= 16MN, |c2| <= 8M^2,
and the same bounds hold for the dot-product witnesses B_{i;jk}; the difference
witnesses X,Y are smaller.  For INTEGER data the lowest nonzero coefficient has
|c_m| >= 1, so
        rho(p) >= 1 / (1 + 8N^2 + 16MN + 8M^2) = 1 / (1 + 8(N+M)^2).
"""
import sys, random
from fractions import Fraction as F
sys.path.insert(0,'/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform')
from epslib import Poly, Vec, orient, sgn
from uniform import witnesses, eps0_of, build, make_motion, CAND
import run_arms as RA

def bound(N, M):
    return F(1, 1 + 8*(N+M)**2)

def main(n=60, seed=31337, N=9, M=7):
    R = random.Random(seed)
    B = bound(N, M)
    ok = bad = 0; built = 0; worst = None; ratios = []
    while built < n:
        b = build(R, N=N)
        if b is None: continue
        Pp,Qq,lam = b; built += 1
        r = RA.search(Pp,Qq,lam,R,require_akr=True)
        if r is None: continue
        E0,E1,V,W = r
        e0,_ = eps0_of(W)
        ratios.append(e0/B)
        if e0 >= B: ok += 1
        else:
            bad += 1
            if worst is None or e0 < worst[0]: worst = (e0,Pp,Qq,E0,E1)
    return built, ok, bad, B, worst, ratios

if __name__=='__main__':
    built,ok,bad,B,worst,ratios = main()
    print(f"N=9 (coords), M=7 (directions):  a-priori bound 1/(1+8(N+M)^2) = {B}")
    print(f"configurations: {built}   eps_0 >= bound: {ok}   violations: {bad}")
    if worst: print("  VIOLATION:", worst)
    if ratios:
        print(f"  eps_0/bound: min {min(ratios)} (~{float(min(ratios)):.2f})  "
              f"max {max(ratios)} (~{float(max(ratios)):.1f})")
    print()
    print("NON-VACUITY: the bound must be violated if we understate N or M.")
    for (Nb,Mb) in [(2,2),(3,3),(4,4)]:
        Bb = bound(Nb,Mb)
        v = sum(1 for r in ratios if r*B < Bb)
        print(f"   pretending N={Nb},M={Mb} -> bound {Bb}: violated in {v}/{len(ratios)} cases")
