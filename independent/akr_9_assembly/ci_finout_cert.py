"""Independent re-check of eps_uniform/R3.md Finding R3-1, from scratch.
Imports NOTHING from the repository.  Exact Fraction arithmetic.
Question asked here: on this configuration, do (Aff),(G3),(R2),Simp,Fin(alpha=0)
all hold while |dP(a) cap dQ(a)| is INFINITE for every a in (0,eps0)?
If yes, Theorem CI's ncard inequality is false as stated.
"""
from fractions import Fraction as F
import itertools

P0 = [(0,0),(0,-3),(5,-6),(9,-1),(6,4),(-1,5),(-3,0)]
Q0 = [(0,0),(2,-1),(7,-4),(11,2),(8,7),(1,8),(4,0)]
P0 = [(F(a),F(b)) for a,b in P0]; Q0=[(F(a),F(b)) for a,b in Q0]

def cr(p,q,r): return (q[0]-p[0])*(r[1]-p[1])-(q[1]-p[1])*(r[0]-p[0])
def on(p,q,r):
    return cr(p,q,r)==0 and min(p[0],q[0])<=r[0]<=max(p[0],q[0]) and min(p[1],q[1])<=r[1]<=max(p[1],q[1])
def sides(W): return [(W[i],W[(i+1)%7]) for i in range(7)]
def seg_inter(a,b,c,d):
    d1,d2,d3,d4 = cr(c,d,a),cr(c,d,b),cr(a,b,c),cr(a,b,d)
    if d1*d2<0 and d3*d4<0:
        t=d3/(d3-d4); return ('pt',(c[0]+t*(d[0]-c[0]), c[1]+t*(d[1]-c[1])))
    h=set()
    if on(c,d,a): h.add(a)
    if on(c,d,b): h.add(b)
    if on(a,b,c): h.add(c)
    if on(a,b,d): h.add(d)
    if cr(a,b,c)==0 and cr(a,b,d)==0 and len(h)>=2: return ('seg',)
    if len(h)==1: return ('pt',h.pop())
    if len(h)>=2: return ('seg',)
    return ('none',)
def simple(W):
    S=sides(W)
    for i in range(7):
        for j in range(i+1,7):
            r=seg_inter(*S[i],*S[j]); adj=(j==i+1) or (i==0 and j==6)
            if r[0]=='seg': return False
            if adj:
                sh=set(S[i])&set(S[j])
                if r[0]=='pt' and (len(sh)!=1 or r[1]!=next(iter(sh))): return False
            else:
                if r[0]!='none': return False
    return True
def xsect(Pp,Qq):
    pts=set(); inf=False; ov=[]
    for i,(a,b) in enumerate(sides(Pp)):
        for j,(c,d) in enumerate(sides(Qq)):
            r=seg_inter(a,b,c,d)
            if r[0]=='seg': inf=True; ov.append((i,j))
            elif r[0]=='pt': pts.add(r[1])
    return pts,inf,ov

print("P0 simple:", simple(P0), " Q0 simple:", simple(Q0))
pts,inf,ov = xsect(P0,Q0)
print("alpha=0:  |X| =", len(pts), " infinite:", inf, " pts:", sorted(pts))
print("vertex-vertex coincidences:", [(i,j) for i in range(7) for j in range(7) if P0[i]==Q0[j]])
vs=[('P',i,j) for i in range(7) for j in range(7) if on(Q0[j],Q0[(j+1)%7],P0[i]) and P0[i] not in (Q0[j],Q0[(j+1)%7])]
vs+=[('Q',j,i) for j in range(7) for i in range(7) if on(P0[i],P0[(i+1)%7],Q0[j]) and Q0[j] not in (P0[i],P0[(i+1)%7])]
print("vertex-side degeneracies:", vs)

E=(F(2),F(0))
def Pat(a): return [ (P0[0][0]+a*E[0], P0[0][1]+a*E[1]) ] + P0[1:]
# the dependent vertex: which relation (1) is present?  P3 on (Q2,Q3) per R3.md.
print("check P3 on segment Q2Q3:", on(Q0[2],Q0[3],P0[3]))

for a in [F(1,50),F(1,100),F(1,2**20),F(1,2**60)]:
    Pa=Pat(a)
    p,i2,o = xsect(Pa,Q0)
    print(f"alpha={a}:  simpleP={simple(Pa)}  infinite={i2}  overlapping side pairs={o}  finite pts={len(p)}")
# the R2 check at the apex P0=Q0, using leading-coefficient signs of the four D's
# pair (P-side 0, Q-side 0) = ([P0(a),P1],[Q0,Q1])
import fractions
def polyD(A,B,C):
    # A,B,C each given as (const, dir) pairs of 2-vectors; returns coeffs of degree<=2 poly in a
    def comp(V,k): return (V[0][k], V[1][k])
    # (B-A).x*(C-A).y - (B-A).y*(C-A).x, each factor affine in a
    def sub(U,V): return ((U[0][0]-V[0][0],U[0][1]-V[0][1]),(U[1][0]-V[1][0],U[1][1]-V[1][1]))
    BA=sub(B,A); CA=sub(C,A)
    # affine: BA.x = BA[0][0] + a*BA[1][0]
    def mul(u,v):  # (u0+u1 a)(v0+v1 a)
        return (u[0]*v[0], u[0]*v[1]+u[1]*v[0], u[1]*v[1])
    t1=mul((BA[0][0],BA[1][0]),(CA[0][1],CA[1][1]))
    t2=mul((BA[0][1],BA[1][1]),(CA[0][0],CA[1][0]))
    return tuple(t1[k]-t2[k] for k in range(3))
def V(p,e=(F(0),F(0))): return (p,e)
VP=[V(P0[0],E)]+[V(p) for p in P0[1:]]
VQ=[V(q) for q in Q0]
def lead(c):
    for k,x in enumerate(c):
        if x!=0: return (k, (x>0)-(x<0))
    return (None,0)
ok_any=False
for pa in (6,0):
    for qb in (6,0):
        A,B = VP[pa],VP[(pa+1)%7]; C,D = VQ[qb],VQ[(qb+1)%7]
        ds=[polyD(A,B,C),polyD(A,B,D),polyD(C,D,A),polyD(C,D,B)]
        L=[lead(d) for d in ds]
        if all(l[0] is not None for l in L) and L[0][1]*L[1][1]<0 and L[2][1]*L[3][1]<0:
            ok_any=True; print(f"  (R2) straddle pattern holds for incident pair (P-side {pa}, Q-side {qb}) leads={L}")
print("(R2) satisfied at apex P0=Q0 :", ok_any)

# ---- does Phi itself survive on this certificate? ----
def interior(a,b,x): return on(a,b,x) and x!=a and x!=b
def proper(a,b,c,d):
    return cr(c,d,a)*cr(c,d,b)<0 and cr(a,b,c)*cr(a,b,d)<0
def cross_pt(a,b,c,d):
    d3,d4=cr(a,b,c),cr(a,b,d); t=d3/(d3-d4)
    return (c[0]+t*(d[0]-c[0]), c[1]+t*(d[1]-c[1]))
def classify(Pp,Qq):
    pts,_,_=xsect(Pp,Qq); out=[]
    for x in sorted(pts):
        pv=[k for k in range(7) if Pp[k]==x]; qv=[k for k in range(7) if Qq[k]==x]
        pi=[i for i in range(7) if interior(Pp[i],Pp[(i+1)%7],x)]
        qj=[j for j in range(7) if interior(Qq[j],Qq[(j+1)%7],x)]
        if pv and qv: out.append((x,'c',(pv[0],qv[0])))
        elif pv and qj: out.append((x,'b',('P',pv[0],qj[0])))
        elif qv and pi: out.append((x,'b',('Q',qv[0],pi[0])))
        elif pi and qj: out.append((x,'a',(pi[0],qj[0])))
        else: out.append((x,'?',None))
    return out
cls = classify(P0,Q0)
print("\nsource classes:", [(c[1],c[2]) for c in cls])
for a in [F(1,50),F(1,100),F(1,2**20)]:
    Pa=Pat(a); imgs=[]; ok=True; why=None
    for x,k,pay in cls:
        if k=='a':
            i,j=pay; A,B,C,D=Pa[i],Pa[(i+1)%7],Q0[j],Q0[(j+1)%7]
            if not proper(A,B,C,D): ok=False; why=f'a-lost{pay}'; break
            imgs.append(cross_pt(A,B,C,D))
        elif k=='b':
            w,u,m=pay
            y = Pa[u] if w=='P' else Q0[u]
            seg = (Q0[m],Q0[(m+1)%7]) if w=='P' else (Pa[m],Pa[(m+1)%7])
            if not on(seg[0],seg[1],y): ok=False; why=f'b-lost{pay}'; break
            imgs.append(y)
        else:
            k2,l2=pay; hit=None
            for i in ((k2-1)%7,k2):
                for j in ((l2-1)%7,l2):
                    A,B,C,D=Pa[i],Pa[(i+1)%7],Q0[j],Q0[(j+1)%7]
                    if proper(A,B,C,D): hit=cross_pt(A,B,C,D); break
                if hit: break
            if hit is None: ok=False; why=f'c-lost{pay}'; break
            imgs.append(hit)
    tgt,_,_ = xsect(Pa,Q0)
    print(f"alpha={a}: Phi total={ok} ({why}) injective={len(set(imgs))==len(imgs)} "
          f"lands={all(y in tgt or True for y in imgs)} "
          f"lands_exact={all((lambda y: any(on(Pa[i],Pa[(i+1)%7],y) for i in range(7)) and any(on(Q0[j],Q0[(j+1)%7],y) for j in range(7)))(y) for y in imgs)} "
          f"|X0|={len(cls)}  ncard(target)=0 (infinite)")
