from fractions import Fraction as F
import sys
sys.path.insert(0,".")
from sweep import DIRS, parallel, crossings as cross_translate
from apexonly import crossings_apexonly
def V(x,y): return (F(x),F(y))
def orient(a,b,c): return (b[0]-a[0])*(c[1]-a[1])-(b[1]-a[1])*(c[0]-a[0])
def on_seg(p,a,b):
    if orient(a,b,p)!=0: return False
    return min(a[0],b[0])<=p[0]<=max(a[0],b[0]) and min(a[1],b[1])<=p[1]<=max(a[1],b[1])
def local_deg_apexonly(a1,a2,b1,b2,E,eps):
    ap=(eps*E[0],eps*E[1]); O=(F(0),F(0))
    Pseg=((a1,ap),(ap,a2)); Qseg=((b1,O),(O,b2))
    for v in (a1,ap,a2):
        for (r,s) in Qseg:
            if on_seg(v,r,s): return True
    for v in (b1,O,b2):
        for (r,s) in Pseg:
            if on_seg(v,r,s): return True
    return False
EPS=F(1,10**7)

print("=== FINDING 1: their certificate, apex-only model ===")
for cert in [((2,2),(8,-15),(5,7),(15,15)), ((12,6),(1,3),(3,9),(7,-13)), ((-4,3),(-1,15),(-4,5),(-8,6))]:
    a1,a2,b1,b2=[V(*t) for t in cert]
    nx=sum(1 for E in DIRS if crossings_apexonly(a1,a2,b1,b2,E,EPS)>=1)
    good=sum(1 for E in DIRS if crossings_apexonly(a1,a2,b1,b2,E,EPS)>=1
             and not local_deg_apexonly(a1,a2,b1,b2,E,EPS))
    print(f"  {cert}: crossing dirs {nx}, crossing AND degeneracy-free {good}")
    # is a neighbour frozen on a Q-side?
    O=(F(0),F(0))
    frozen=[n for n,v in (("a1",a1),("a2",a2)) if on_seg(v,b1,O) or on_seg(v,O,b2)]
    print(f"      frozen incidence at: {frozen}")

print("\n=== FINDING 3: the corollary's proof ===")
a1,a2,b1,b2 = V(1,0),V(2,0),V(-1,0),V(-2,0)
print("  a1=(1,0) a2=(2,0) b1=(-1,0) b2=(-2,0): all four parallel:",
      all(not (v[0]*a1[1]-v[1]*a1[0]) for v in (a2,b1,b2)))
print("  P's V spans x in [0,2]; Q's V spans x in [-2,0]; overlap = {O} -> FINITE")
print("  so 'all four parallel => infinite intersection' is FALSE")
print("  but a1,a2 are positive multiples -> P's two edges overlap -> NOT simple")

print("\n=== FINDING 7: mu, nu in (0,1) for every eps? ===")
ak,bl = V(1,0), V(0,1); s0,t0 = F(1),F(6)
for e in (F(1,100),F(1,10),F(1,4),F(1,2)):
    mu=e*s0/(1+e*s0); nu=e*t0/(1+e*s0)
    print(f"  eps={e}: mu={mu}  nu={nu}  {'BOTH in (0,1)' if 0<mu<1 and 0<nu<1 else '*** nu NOT in (0,1) ***'}")

print("\n=== FINDING 4: is orient(eps*E, a_k, b_l) homogeneous in E? ===")
ak,bl=V(1,0),V(0,1)
for E in (V(-1,6),V(-1,11),V(-1,101)):
    # orient(eps E, a_k, b_l) as a function of eps
    def f(e): 
        ap=(e*E[0],e*E[1]); return orient(ap,ak,bl)
    print(f"  E={E}: orient at eps=0 is {f(F(0))} (constant term nonzero => AFFINE, not homogeneous)")
    # find eps where it vanishes
    c0=f(F(0)); c1=f(F(1))-c0
    print(f"      vanishes at eps = {-F(c0,1)/c1 if c1!=0 else 'never'}")
