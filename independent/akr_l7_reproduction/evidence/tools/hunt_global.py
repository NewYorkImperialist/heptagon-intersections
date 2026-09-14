"""Hill-climbing search over genuine pairs of simple heptagons, starting from the
project's 38-crossing certificate, hunting for
  (i)  an associated pair whose status is NEITHER hooking nor hooked
       (= a genuine counterexample to AKR Observation 6 as printed), and
  (ii) an A7-EXT violation: two consecutive P-pairs in four distinct components
       sharing a status.
Exact integer / rational arithmetic throughout."""
from fractions import Fraction as F
import json, random, sys, itertools
from collections import Counter

def det(p,q,r): return (q[0]-p[0])*(r[1]-p[1])-(q[1]-p[1])*(r[0]-p[0])
def sgn(x): return (x>0)-(x<0)
def on(a,b,x): return det(a,b,x)==0 and min(a[0],b[0])<=x[0]<=max(a[0],b[0]) and min(a[1],b[1])<=x[1]<=max(a[1],b[1])
def segint(s,t):
    p,q=s; r,w=t
    if sgn(det(p,q,r))*sgn(det(p,q,w))<0 and sgn(det(r,w,p))*sgn(det(r,w,q))<0: return True
    return on(p,q,r) or on(p,q,w) or on(r,w,p) or on(r,w,q)
def simple(V):
    n=len(V); S=[(V[i],V[(i+1)%n]) for i in range(n)]
    for i in range(n):
        for j in range(i+1,n):
            if j==i+1 or (i==0 and j==n-1):
                # adjacent: must meet only at shared vertex
                sh=set(S[i])&set(S[j])
                if len(sh)!=1: return False
                # collinear overlap check
                p,q=S[i]; r,w=S[j]
                if det(p,q,r)==0 and det(p,q,w)==0: return False
                continue
            if segint(S[i],S[j]): return False
    return True
def genpos(P,Q):
    pts=[tuple(x) for x in P]+[tuple(x) for x in Q]
    if len(set(pts))!=len(pts): return False
    for t in itertools.combinations(pts,3):
        if det(*t)==0: return False
    # no vertex of one polygon on the other's boundary handled by collinearity+
    n=len(P); m=len(Q)
    Ps=[(tuple(P[i]),tuple(P[(i+1)%n])) for i in range(n)]
    Qs=[(tuple(Q[j]),tuple(Q[(j+1)%m])) for j in range(m)]
    for v in [tuple(x) for x in P]:
        for s in Qs:
            if on(s[0],s[1],v): return False
    for v in [tuple(x) for x in Q]:
        for s in Ps:
            if on(s[0],s[1],v): return False
    return True
def in_cone(x,v,s2,t2):
    u=(s2[0]-v[0],s2[1]-v[1]); w=(t2[0]-v[0],t2[1]-v[1]); z=(x[0]-v[0],x[1]-v[1])
    D=u[0]*w[1]-u[1]*w[0]
    if D==0: return None
    s=F(z[0]*w[1]-z[1]*w[0],D); t=F(u[0]*z[1]-u[1]*z[0],D)
    return s>=0 and t>=0

def evaluate(P,Q):
    n=len(P); m=len(Q)
    Ps=[(tuple(P[i]),tuple(P[(i+1)%n])) for i in range(n)]
    Qs=[(tuple(Q[j]),tuple(Q[(j+1)%m])) for j in range(m)]
    ED=set()
    I=0
    for i in range(n):
        for j in range(m):
            if segint(Ps[i],Qs[j]): I+=1
            else: ED.add((i,j))
    par=list(range(n+m))
    def find(x):
        while par[x]!=x: par[x]=par[par[x]]; x=par[x]
        return x
    for (i,j) in ED:
        a,b=find(i),find(n+j)
        if a!=b: par[a]=b
    CC=lambda x: find(x)
    out=[]   # (i, status set) per consecutive P-pair
    neither=[]
    for i in range(n):
        ai,bi=i,(i+1)%n
        if CC(ai)==CC(bi): continue
        S=set(); pairs=[]
        for j in range(m):
            for (jA,jB) in [(j,(j+1)%m),((j+1)%m,j)]:
                if (ai,jA) in ED and (bi,jB) in ED:
                    a=Ps[ai]; b=Ps[bi]; A=Qs[jA]; B=Qs[jB]
                    o=(set(a)&set(b)).pop(); w=(set(A)&set(B)).pop()
                    ra=a[1] if a[0]==o else a[0]; rb=b[1] if b[0]==o else b[0]
                    rA=A[1] if A[0]==w else A[0]; rB=B[1] if B[0]==w else B[0]
                    hg=in_cone(w,o,ra,rb); hd=in_cone(o,w,rA,rB)
                    if hg: S.add("hooking")
                    if hd: S.add("hooked")
                    if not hg and not hd: neither.append((i,jA,jB))
                    pairs.append((jA,jB,hg,hd))
        out.append((i,S,pairs,CC(ai),CC(bi)))
    # A7-EXT check
    viol=[]
    for (i1,S1,_,c1a,c1b) in out:
        for (i2,S2,_,c2a,c2b) in out:
            if i2<=i1: continue
            if len({i1,(i1+1)%n} & {i2,(i2+1)%n})>0: continue
            if len({c1a,c1b,c2a,c2b})!=4: continue
            if S1 & S2: viol.append((i1,i2,sorted(S1&S2)))
    return I,len(ED),out,neither,viol

d=json.load(open('/Users/jaydenlin/dev/lean/heptagon-intersections/data/lower_bound/lower_bound_38.json'))
P0=[tuple(x) for x in d["P"]]; Q0=[tuple(x) for x in d["Q"]]
assert simple(P0) and simple(Q0) and genpos(P0,Q0)
rnd=random.Random(int(sys.argv[1]) if len(sys.argv)>1 else 1)
best=None
tot_pairs=0; stat=Counter(); found_neither=[]; found_viol=[]
nconf=0
cur=(list(P0),list(Q0))
I,E,out,neither,viol = evaluate(*cur)
score=0.0
for it in range(int(sys.argv[2]) if len(sys.argv)>2 else 4000):
    P,Q=[list(cur[0]),list(cur[1])]
    which=rnd.random()<0.5
    k=rnd.randrange(7)
    dx=rnd.randint(-25,25); dy=rnd.randint(-25,25)
    if which: P[k]=(P[k][0]+dx,P[k][1]+dy)
    else:     Q[k]=(Q[k][0]+dx,Q[k][1]+dy)
    if not (simple(P) and simple(Q) and genpos(P,Q)): continue
    I,E,out,neither,viol=evaluate(P,Q)
    I2,E2,out2,neither2,viol2=evaluate(Q,P)
    out=out+out2; neither=neither+neither2; viol=viol+viol2
    nconf+=1
    for (i,S,pairs,_,_) in out:
        for (jA,jB,hg,hd) in pairs:
            tot_pairs+=1
            stat[("both" if hg and hd else "hooking" if hg else "hooked" if hd else "NEITHER")]+=1
    if neither: found_neither.append((P,Q,neither))
    if viol: found_viol.append((P,Q,viol))
    s=len(out)*3.0+sum(len(p[2]) for p in out)
    if s>=score or rnd.random()<0.30:
        cur=(P,Q); score=s
print("configs examined      :",nconf)
print("associated pairs seen :",tot_pairs)
print("status distribution   :",dict(stat))
print("NEITHER instances     :",len(found_neither))
print("A7-EXT violations     :",len(found_viol))
if found_neither:
    P,Q,nb=found_neither[0]; print("EXAMPLE NEITHER:",P,Q,nb)
if found_viol:
    P,Q,v=found_viol[0]; print("EXAMPLE VIOLATION:",P,Q,v)
