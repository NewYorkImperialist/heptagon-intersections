from fractions import Fraction as F
import sys
sys.path.insert(0,"independent/e9_directions")
from global_finiteness import (V, sub, cross2, dot, orient, on_closed, sides,
                               seg_inter, finite, pc)
def on_relint(p,a,b): return on_closed(p,a,b) and p!=a and p!=b
def simple(R):
    n=len(R); S=sides(R)
    for i in range(n):
        for j in range(i+1,n):
            r=seg_inter(*S[i],*S[j]); adj=(j==i+1) or (i==0 and j==n-1)
            if r[0]=='seg': return False
            if r[0]=='point':
                sh = R[(i+1)%n] if j==i+1 else R[0]
                if not adj or r[1]!=sh: return False
    return True
def bcount(P,Q):
    pts=set()
    for a in sides(P):
        for b in sides(Q):
            r=seg_inter(*a,*b)
            if r[0]=='point': pts.add(r[1])
            elif r[0]=='seg': return None
    return len(pts)
def vs_degens(P,Q):
    out=[]
    for k,v in enumerate(Q):
        for i,(a,b) in enumerate(sides(P)):
            if on_relint(v,a,b): out.append(("Q",k,"on P-side",i))
    for k,v in enumerate(P):
        for j,(a,b) in enumerate(sides(Q)):
            if on_relint(v,a,b): out.append(("P",k,"on Q-side",j))
    return out

P=[V(0,0),V(-4,-1),V(-6,-4),V(-8,-16),V(-5,-11),V(-6,-15),V(4,0)]
Q=[V(0,0),V(0,6),V(14,18),V(16,11),V(14,10),V(11,8),V(4,4)]
print("P simple:",simple(P),"  Q simple:",simple(Q))
print("|dP cap dQ| =",bcount(P,Q))
print("coincidences:",sorted(set(P)&set(Q)))
print("vertex-side degeneracies at eps=0:",vs_degens(P,Q))
a1,a2 = sub(P[6],P[0]), sub(P[1],P[0])
b1,b2 = sub(Q[6],Q[0]), sub(Q[1],Q[0])
E=V(0,4)
print(f"\nrays: a1={a1} a2={a2} b1={b1} b2={b2}   E={E}")
print("E parallel to b2 = Q1-Q0:", cross2(E,b2)==0)
print("\nmove apex P0 -> eps*E:")
for k in (2,6,12,30):
    eps=F(1,2**k); Pe=list(P); Pe[0]=(eps*E[0],eps*E[1])
    d=vs_degens(Pe,Q)
    print(f"  eps=2^-{k}: P0(eps)={Pe[0]}  new degeneracies: {d}  finite={finite(Pe,Q)}")
