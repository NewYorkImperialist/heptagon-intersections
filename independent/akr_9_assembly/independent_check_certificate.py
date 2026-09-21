# Independent verification of the akr_9_assembly certificate, from scratch.
from fractions import Fraction as F
from itertools import combinations
def V(x,y): return (F(x),F(y))
def orient(a,b,c): return (b[0]-a[0])*(c[1]-a[1])-(b[1]-a[1])*(c[0]-a[0])
def on_closed(p,a,b):
    if orient(a,b,p)!=0: return False
    return min(a[0],b[0])<=p[0]<=max(a[0],b[0]) and min(a[1],b[1])<=p[1]<=max(a[1],b[1])
def on_open(p,a,b): return on_closed(p,a,b) and p!=a and p!=b
def sub(a,b): return (a[0]-b[0],a[1]-b[1])
def cross2(u,v): return u[0]*v[1]-u[1]*v[0]
def dot(u,v): return u[0]*v[0]+u[1]*v[1]
def seg_inter(p1,p2,q1,q2):
    r=sub(p2,p1); s=sub(q2,q1); d=cross2(r,s); qp=sub(q1,p1)
    if d!=0:
        t=F(cross2(qp,s),d); u=F(cross2(qp,r),d)
        if 0<=t<=1 and 0<=u<=1: return ('point',(p1[0]+t*r[0],p1[1]+t*r[1]))
        return ('empty',)
    if cross2(qp,r)!=0: return ('empty',)
    rr=dot(r,r)
    t0=F(dot(sub(q1,p1),r),rr); t1=F(dot(sub(q2,p1),r),rr)
    lo,hi=max(min(t0,t1),F(0)),min(max(t0,t1),F(1))
    if lo>hi: return ('empty',)
    A=(p1[0]+lo*r[0],p1[1]+lo*r[1]); B=(p1[0]+hi*r[0],p1[1]+hi*r[1])
    return ('point',A) if A==B else ('seg',A,B)
def sides(P): return [(P[i],P[(i+1)%len(P)]) for i in range(len(P))]
def simple(P):
    n=len(P); S=sides(P)
    for i in range(n):
        for j in range(i+1,n):
            res=seg_inter(*S[i],*S[j])
            adj = (j==i+1) or (i==0 and j==n-1)
            if res[0]=='seg': return False,f"sides {i},{j} overlap"
            if res[0]=='point':
                if adj:
                    shared = P[(i+1)%n] if j==i+1 else P[0]
                    if res[1]!=shared: return False,f"adjacent {i},{j} meet off-vertex"
                else: return False,f"non-adjacent {i},{j} meet"
    return True,"ok"
def bcount(P,Q):
    pts=set()
    for a in sides(P):
        for b in sides(Q):
            r=seg_inter(*a,*b)
            if r[0]=='point': pts.add(r[1])
            elif r[0]=='seg': return None
    return len(pts)

P=[V(2,-4),V(2,1),V(2,4),V(1,3),V(-1,3),V(-3,4),V(-2,2)]
Q=[V(-4,-3),V(0,-2),V(3,-1),V(2,0),V(1,1),V(-1,1),V(-3,0)]
print("P simple:",simple(P)); print("Q simple:",simple(Q))
print("|dP cap dQ| =",bcount(P,Q))
print("coincident vertices:",sorted(set(P)&set(Q)))
# vertex-side degeneracies
deg=[]
for k,v in enumerate(Q):
    for i,(a,b) in enumerate(sides(P)):
        if on_open(v,a,b): deg.append(("Q",k,"on P-side",i))
for k,v in enumerate(P):
    for j,(a,b) in enumerate(sides(Q)):
        if on_open(v,a,b): deg.append(("P",k,"on Q-side",j))
print("vertex-side degeneracies:",deg)
# straight vertices
def straight(R): return [i for i in range(len(R)) if orient(R[i-1],R[i],R[(i+1)%len(R)])==0]
print("straight vertices of P:",straight(P)," of Q:",straight(Q))
# (NC)-definedness of each side: BOTH endpoints must be non-straight
sp,sq=set(straight(P)),set(straight(Q))
ncP=[i for i in range(7) if i not in sp and (i+1)%7 not in sp]
ncQ=[j for j in range(7) if j not in sq and (j+1)%7 not in sq]
print("(NC)-defined P-sides:",ncP)
print("(NC)-defined Q-sides:",ncQ)
print("total (NC)-defined of 14:",len(ncP)+len(ncQ))
# which sides could remove the degeneracy?
print("\nthe degeneracy is Q3=(2,0) interior to P-side 0")
print("  sides whose shift could remove it: P-side 0, Q-side 2, Q-side 3")
for lbl,idx,ncset in (("P",0,ncP),("Q",2,ncQ),("Q",3,ncQ)):
    print(f"    {lbl}-side {idx}: (NC)-defined? {idx in ncset}")

print("\n=== PERMANENCE: can ANY admissible shift break a collinear triple? ===")
def shift(R,idx,delta):
    n=len(R); v0=R[idx]; v1=R[(idx+1)%n]; prev=R[(idx-1)%n]; nxt=R[(idx+2)%n]
    d=sub(v1,v0); nrm=(-d[1],d[0]); off=delta*dot(nrm,nrm)
    def slide(direction,base):
        den=dot(direction,nrm)
        if den==0: return None
        t=F(off-dot(sub(base,v0),nrm),den)
        return (base[0]+t*direction[0], base[1]+t*direction[1])
    n0=slide(sub(v0,prev),v0); n1=slide(sub(v1,nxt),v1)
    if n0 is None or n1 is None: return None
    S=list(R); S[idx]=n0; S[(idx+1)%n]=n1; return S

d=F(1,1024)
print(" side | defined | P-triple(0,1,2) still collinear | Q-triple(2,3,4) still collinear | degeneracy removed")
for lbl,R,other,idxs in (("P",P,Q,range(7)),("Q",Q,P,range(7))):
    for i in idxs:
        for s in (d,-d):
            out=shift(R,i,s)
            if out is None:
                if s==d: print(f"  {lbl}{i}   | UNDEFINED (a straight endpoint)")
                continue
            NP,NQ = (out,Q) if lbl=="P" else (P,out)
            pcol = orient(NP[0],NP[1],NP[2])==0
            qcol = orient(NQ[2],NQ[3],NQ[4])==0
            gone = not on_open(NQ[3],NP[0],NP[1])
            if s==d:
                print(f"  {lbl}{i}   | defined | P collinear: {pcol!s:5} | Q collinear: {qcol!s:5} | deg removed: {gone}")
