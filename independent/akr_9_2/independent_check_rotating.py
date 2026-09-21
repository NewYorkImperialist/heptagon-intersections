from fractions import Fraction as F
def V(x,y): return (F(x),F(y))
def sub(a,b): return (a[0]-b[0],a[1]-b[1])
def cross2(u,v): return u[0]*v[1]-u[1]*v[0]
def dot(u,v): return u[0]*v[0]+u[1]*v[1]
def orient(a,b,c): return (b[0]-a[0])*(c[1]-a[1])-(b[1]-a[1])*(c[0]-a[0])
def on_open(p,a,b):
    if orient(a,b,p)!=0: return False
    return min(a[0],b[0])<=p[0]<=max(a[0],b[0]) and min(a[1],b[1])<=p[1]<=max(a[1],b[1]) and p!=a and p!=b
def sides(R): return [(R[i],R[(i+1)%len(R)]) for i in range(len(R))]
def seg_inter(p1,p2,q1,q2):
    r=sub(p2,p1); s=sub(q2,q1); d=cross2(r,s); qp=sub(q1,p1)
    if d!=0:
        t=F(cross2(qp,s),d); u=F(cross2(qp,r),d)
        if 0<=t<=1 and 0<=u<=1: return ('point',(p1[0]+t*r[0],p1[1]+t*r[1]))
        return ('empty',)
    if cross2(qp,r)!=0: return ('empty',)
    rr=dot(r,r)
    if rr==0: return ('empty',)
    t0=F(dot(sub(q1,p1),r),rr); t1=F(dot(sub(q2,p1),r),rr)
    lo,hi=max(min(t0,t1),F(0)),min(max(t0,t1),F(1))
    if lo>hi: return ('empty',)
    A=(p1[0]+lo*r[0],p1[1]+lo*r[1]); B=(p1[0]+hi*r[0],p1[1]+hi*r[1])
    return ('point',A) if A==B else ('seg',A,B)
def bcount(P,Q):
    pts=set()
    for a in sides(P):
        for b in sides(Q):
            r=seg_inter(*a,*b)
            if r[0]=='point': pts.add(r[1])
            elif r[0]=='seg': return None
    return len(pts)
def G(R,i,a,b,delta):
    m=len(R); A=R[i]; B=R[(i+1)%m]; u=sub(B,A); n=(-u[1],u[0]); N=dot(u,u)
    if dot(a,n)==0 or dot(b,n)==0: return None
    Ad=(A[0]+F(delta*N)/dot(a,n)*a[0], A[1]+F(delta*N)/dot(a,n)*a[1])
    Bd=(B[0]+F(delta*N)/dot(b,n)*b[0], B[1]+F(delta*N)/dot(b,n)*b[1])
    S=list(R); S[i]=Ad; S[(i+1)%m]=Bd; return S

P=[V(0,0),V(10,0),V(14,10),V(4,18),V(-8,12),V(-12,4),V(-6,-4)]
Q=[(F(5),F(1,2**12)),V(11,20),V(-2,22),V(-4,6)]
i=1
m=len(P); C=P[(i-1)%m]; A=P[i]; B=P[(i+1)%m]; D=P[(i+2)%m]
u=sub(B,A); n=(-u[1],u[0])
rules={"AKR":(sub(A,C),sub(D,B)), "translate":(n,n)}
# tilt: a = n unless the endpoint lies interior to a Q-side orthogonal to u
def tilt_dir(X):
    for (r,s) in sides(Q):
        if on_open(X,r,s):
            v=sub(s,r)
            if dot(u,v)==0: return (n[0]+u[0], n[1]+u[1])
    return n
rules["tilt"]=(tilt_dir(A), tilt_dir(B))

base=bcount(P,Q)
print(f"|dP cap dQ| at delta=0 : {base}   (finite: {base is not None})")
print(f"coincident vertices    : {sorted(set(P)&set(Q))}")
deg=[(k,j) for k,v in enumerate(Q) for j,(r,s) in enumerate(sides(P)) if on_open(v,r,s)] \
   +[(k,j) for k,v in enumerate(P) for j,(r,s) in enumerate(sides(Q)) if on_open(v,r,s)]
print(f"vertex-side degeneracies: {deg}")
d=F(1,2**13)
print(f"\nshift side {i}, delta = 2^-13:")
for name,(a,b) in rules.items():
    plus=G(P,i,a,b,d); minus=G(P,i,a,b,-d)
    if plus is None or minus is None:
        print(f"  {name:10s}: UNDEFINED"); continue
    cp,cm=bcount(plus,Q), bcount(minus,Q)
    ok = (cp is not None and cm is not None and cp+cm==2*base)
    print(f"  {name:10s}: ({base},{cp},{cm})   identity {'TRUE ' if ok else 'FALSE'}  ({cp}+{cm} vs {2*base})")
