# Independent check of Lemma U / Theorem U / Corollary U'.
# Vertices move affinely: V_i(e) = V0_i + e*E_i.  Every orient determinant is
# then a degree-<=2 polynomial in e.  Claim: the sign vector of all of them is
# CONSTANT on (0, eps0) with eps0 = min rho(p), rho(p)=min(1,|c_m|/(1+sum_{j>m}|c_j|)),
# and eps0 >= 1/(1+8(N+M)^2) for integer data bounded by N, M.
from fractions import Fraction as F
import random, itertools

def polymul(a,b):
    r=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b): r[i+j]+=x*y
    return r
def polysub(a,b):
    n=max(len(a),len(b)); return [ (a[i] if i<len(a) else 0)-(b[i] if i<len(b) else 0) for i in range(n)]
def ev(p,e): return sum(c*e**i for i,c in enumerate(p))

def orient_poly(A,B,C):
    # A,B,C are pairs of linear polys [c0,c1]
    bx=polysub(B[0],A[0]); by=polysub(B[1],A[1])
    cx=polysub(C[0],A[0]); cy=polysub(C[1],A[1])
    return polysub(polymul(bx,cy), polymul(by,cx))

def rho(p):
    nz=[i for i,c in enumerate(p) if c!=0]
    if not nz: return None
    m=nz[0]; tail=sum(abs(c) for c in p[m+1:])
    return min(F(1), F(abs(p[m]), 1+tail))

random.seed(21)
N,M,K = 12, 9, 8          # coord bound, velocity bound, number of points
bad_sign=bad_bound=trials=0
for _ in range(300):
    V=[([F(random.randint(-N,N)),F(random.randint(-M,M))],
        [F(random.randint(-N,N)),F(random.randint(-M,M))]) for _ in range(K)]
    polys=[orient_poly(*t) for t in itertools.combinations(V,3)]
    rs=[rho(p) for p in polys if rho(p) is not None]
    if not rs: continue
    trials+=1
    eps0=min(rs)
    # Corollary U': claimed lower bound
    if eps0 < F(1, 1+8*(N+M)**2): bad_bound+=1
    # Theorem U: sign vector constant on (0, eps0)
    ref=None
    for frac in (F(1,1000), F(1,7), F(1,3), F(1,2), F(99,100)):
        e=eps0*frac
        sv=tuple((ev(p,e)>0)-(ev(p,e)<0) for p in polys)
        if ref is None: ref=sv
        elif sv!=ref: bad_sign+=1; break
print(f"trials                                  : {trials}")
print(f"  sign vector NOT constant on (0,eps0)  : {bad_sign}")
print(f"  eps0 below the claimed 1/(1+8(N+M)^2) : {bad_bound}")
# NON-VACUITY: sign vector must NOT be constant beyond eps0 in at least some cases
changed=0
random.seed(33)
for _ in range(300):
    V=[([F(random.randint(-N,N)),F(random.randint(-M,M))],
        [F(random.randint(-N,N)),F(random.randint(-M,M))]) for _ in range(K)]
    polys=[orient_poly(*t) for t in itertools.combinations(V,3)]
    rs=[rho(p) for p in polys if rho(p) is not None]
    if not rs: continue
    eps0=min(rs)
    a=tuple((ev(p,eps0*F(1,1000))>0)-(ev(p,eps0*F(1,1000))<0) for p in polys)
    b=tuple((ev(p,F(50))>0)-(ev(p,F(50))<0) for p in polys)
    if a!=b: changed+=1
print(f"  control: sign vector DOES change by eps=50 in {changed}/300  <- not vacuous")
