"""Certify one Attack-A configuration in full detail, exactly."""
import sys
from fractions import Fraction as F
sys.path.insert(0,'/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform')
from epslib import Poly, Vec, cross, orient, sgn

a1=(F(1),F(-3)); a2=(F(3),F(-4)); b1=(F(4),F(-1)); b2=(F(3),F(5)); c=F(2)
E=(-c*a1[0], -c*a1[1])
def P(p): return Vec(Poly.const(p[0]), Poly.const(p[1]))
def mv(p0,e):
    X=Poly.x(); return Vec(Poly.const(p0[0])+X*Poly.const(e[0]),
                           Poly.const(p0[1])+X*Poly.const(e[1]))
Qj = P((F(0),F(0))); Pi = mv((F(0),F(0)),E)
Pm, Pp, Qm, Qp = P(a1), P(a2), P(b1), P(b2)
print("a1,a2,b1,b2 =", a1,a2,b1,b2, " E =", E, " (E = -2*a1, so E || a1)")
print()
print("Q's V is non-degenerate: cross(b1,b2) =", cross(P(b1),P(b2)).c[0])
print("P's V is non-degenerate: cross(a1,a2) =", cross(P(a1),P(a2)).c[0])
print()
print("PERSISTENT DEGENERACY: orient(P_i(e), P_{i-1}, Q_j) =",
      orient(Pi,Pm,Qj), " <- identically zero")
for e in (F(1,2),F(1,10),F(1,10**9)):
    ax,ay = Pi.at(e); bx,by = Pm.at(e)
    lam = (0-ax)/(bx-ax)
    print(f"   at eps={e}: Q_j = P_i + {lam} * (P_(i-1) - P_i);  0<lam<1 : {0<lam<1}")
print()
print("AKR's literal criterion IS met: proper crossings of P-side (P_i,P_{i+1}) with")
for name,(A,B,C,D) in [("Q-side (Q_j,Q_{j-1})",(Pi,Pp,Qj,Qm)),
                       ("Q-side (Q_j,Q_{j+1})",(Pi,Pp,Qj,Qp))]:
    o=[orient(A,B,C),orient(A,B,D),orient(C,D,A),orient(C,D,B)]
    s=[sgn(p.lead_low()[1]) for p in o]
    print(f"   {name}: leading signs {s} -> ProperCross for small eps>0:",
          s[0]*s[1]<0 and s[2]*s[3]<0)
    for e in (F(1,4),F(1,100)):
        oo=[p(e) for p in o]
        print(f"      eps={e}: orient values {oo}  ProperCross:",
              oo[0]*oo[1]<0 and oo[2]*oo[3]<0)
print()
print("So: the vertex-VERTEX coincidence does separate (P_i(eps) = eps*E != Q_j),")
print("two nondegenerate intersections appear, AND a vertex-SIDE degeneracy")
print("(Q_j on side P_i P_{i-1}) is present for EVERY eps > 0.")
