"""Corrected control.

  *** The first version of this control was WRONG and reported 0 hits. ***
  It asked whether `E` parallel to an incident edge creates a *new*
  identically-zero witness.  It does not: at eps = 0 the apex coincidence
  already makes that triple collinear, so the witness sits in Z_0 and the test
  "Z subset Z_0" passes.  That is exactly the Finding-2 failure mode slipping
  through a too-weak test.  The right question is whether a REMOVABLE
  degeneracy is left in place.

Setup: one coincidence Q_0 = P_0, only P_0 moves by E.  Only witnesses that
INVOLVE index 0 can depend on E, so the family reduces to
  - the 78 orientation polynomials D_{0jk},
  - the 26 difference polynomials X_{0j}, Y_{0j}.
A key k in Z_0 (identically zero when nothing moves) is REMOVABLE if some
direction E makes it non-identically-zero.
"""
import sys, random, itertools
from fractions import Fraction as F
sys.path.insert(0,'/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform')
from epslib import Poly, Vec, orient, sgn
from uniform import build, CAND, simple

def mk(Pp, Qq, E):
    X = Poly.x()
    V = []
    for i, p in enumerate(Pp):
        e = E if i == 0 else (F(0), F(0))
        V.append(Vec(Poly.const(p[0]) + X*Poly.const(e[0]),
                     Poly.const(p[1]) + X*Poly.const(e[1])))
    for q in Qq:
        V.append(Vec(Poly.const(q[0]), Poly.const(q[1])))
    return V

TRIPLES = [(0,) + t for t in itertools.combinations(range(1,14), 2)]
PAIRS   = [(0, j) for j in range(1,14)]

def Zof(V):
    Z = set()
    for t in TRIPLES:
        if orient(V[t[0]], V[t[1]], V[t[2]]).is_zero(): Z.add(('D',)+t)
    for (i,j) in PAIRS:
        d = V[i] - V[j]
        if d.x.is_zero(): Z.add(('X',i,j))
        if d.y.is_zero(): Z.add(('Y',i,j))
    return frozenset(Z)

def proper_small(V, a, b, c, d):
    o = [orient(V[a],V[b],V[c]), orient(V[a],V[b],V[d]),
         orient(V[c],V[d],V[a]), orient(V[c],V[d],V[b])]
    s = []
    for p in o:
        m, cf = p.lead_low()
        if m is None: return False
        s.append(sgn(cf))
    return s[0]*s[1] < 0 and s[2]*s[3] < 0

def akr_ok(V):
    return any(proper_small(V, 0, a, 7, b) for a in (1, 6) for b in (8, 13))

def analyse(Pp, Qq):
    Z0 = Zof(mk(Pp, Qq, (F(0), F(0))))
    removable, per_E = set(), {}
    for E in CAND:
        V = mk(Pp, Qq, E)
        Z = Zof(V)
        if not Z <= Z0: continue
        removable |= (Z0 - Z)
        per_E[E] = (Z, akr_ok(V))
    return Z0, removable, per_E

def main(n=30, seed=5150):
    R = random.Random(seed); built = 0; rows = []
    while built < n:
        b = build(R, second_coincidence=False, with_dependent=True)
        if b is None: continue
        Pp, Qq, lam = b; built += 1
        Z0, removable, per_E = analyse(Pp, Qq)
        if not removable: continue
        akr = [E for E,(Z,ok) in per_E.items() if ok]
        good = [E for E in akr if not (removable & per_E[E][0])]
        bad_akr = [E for E in akr if (removable & per_E[E][0])]
        par = []
        for nb in (1, 6):
            a = (Pp[nb][0]-Pp[0][0], Pp[nb][1]-Pp[0][1])
            for c in (F(-3),F(-2),F(-1),F(1),F(2),F(3)):
                E = (c*a[0], c*a[1])
                if E in per_E: par.append(E)
        par_bad = [E for E in par if (removable & per_E[E][0])]
        par_akr = [E for E in par if per_E[E][1]]
        par_akr_bad = [E for E in par_akr if (removable & per_E[E][0])]
        rows.append((len(removable), len(akr), len(good), len(bad_akr),
                     len(par), len(par_bad), len(par_akr), len(par_akr_bad)))
    return rows

if __name__ == '__main__':
    rows = main()
    print(f"configurations analysed (with at least one removable degeneracy): {len(rows)}")
    print()
    print(f"{'#removable':>11}{'#AKR-ok E':>11}{'#fully good':>13}{'#AKR-ok but leaves one':>24}"
          f"{'#E||edge':>10}{'#those leaving one':>20}{'#E||edge AND AKR-ok':>21}{'..leaving one':>15}")
    for r in rows:
        print(f"{r[0]:>11}{r[1]:>11}{r[2]:>13}{r[3]:>24}{r[4]:>10}{r[5]:>20}{r[6]:>21}{r[7]:>15}")
    T = [sum(c) for c in zip(*rows)] if rows else [0]*8
    print()
    print(f"TOTALS  removable keys {T[0]};  AKR-admissible directions {T[1]}, of which "
          f"{T[3]} ({100*T[3]/max(T[1],1):.1f}%) leave a removable degeneracy behind.")
    print(f"        directions parallel to an incident edge: {T[4]} tested, "
          f"{T[5]} ({100*T[5]/max(T[4],1):.1f}%) leave one behind;")
    print(f"        of those that are ALSO AKR-admissible: {T[6]} tested, "
          f"{T[7]} ({100*T[7]/max(T[6],1):.1f}%) leave one behind.")
    print(f"        configurations with a fully good direction: "
          f"{sum(1 for r in rows if r[2]>0)}/{len(rows)}")
