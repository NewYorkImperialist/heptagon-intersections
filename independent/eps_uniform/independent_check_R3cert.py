#!/usr/bin/env python3
"""Independent check of the R3 certificate.  SELF-CONTAINED.

Previously this file began with

    sys.path.insert(0, "$HOME/.claude/jobs/<id>/tmp")
    exec(open("$HOME/.claude/jobs/<id>/tmp/cert.py").read().split(...)[0])

i.e. it executed a transient scratch file from an AI agent run that exists on
no other machine -- so despite its name it could never have been run
independently by anyone.  The geometry prelude it relied on is now inlined
below verbatim.  Exact rational arithmetic throughout; no floating point.
"""
from fractions import Fraction as F

# ---------------------------------------------------------------------------
# Exact-rational plane geometry.  Points are pairs of Fractions; every
# predicate below is an exact integer/rational sign test -- no floating point.
# ---------------------------------------------------------------------------

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


P0=[V(0,0),V(0,-3),V(5,-6),V(9,-1),V(6,4),V(-1,5),V(-3,0)]
Q0=[V(0,0),V(2,-1),V(7,-4),V(11,2),V(8,7),V(1,8),V(4,0)]
print("P simple:",simple(P0)); print("Q simple:",simple(Q0))
print("|dP cap dQ| at eps=0 :",bcount(P0,Q0))
print("coincident vertices  :",sorted(set(P0)&set(Q0)))
a1=sub(P0[6],P0[0]); a2=sub(P0[1],P0[0]); b1=sub(Q0[6],Q0[0]); b2=sub(Q0[1],Q0[0])
print(f"a1={a1} a2={a2} b1={b1} b2={b2}")
print("cross(a1,b1) =",cross2(a1,b1),"  -> a1,b1 parallel:",cross2(a1,b1)==0)
print("all four mutually parallel:",all(cross2(a1,v)==0 for v in (a2,b1,b2)))
# is E=(2,0) in an e9_directions cone?  E = t*b_l - s*a_k with s,t>0
E=V(2,0)
for nk,ak in (("a1",a1),("a2",a2)):
    for nl,bl in (("b1",b1),("b2",b2)):
        d=cross2(bl,(-ak[0],-ak[1]))
        if d==0: continue
        t=F(cross2(E,(-ak[0],-ak[1])),d); s=F(cross2(bl,E),d)
        if t>0 and s>0: print(f"  E in cone({nl}, -{nk}):  t={t}  s={s}   <- e9_directions PRODUCES this direction")
# now move only the apex P0 by eps*E and test finiteness
print("\nmove apex P_0 -> eps*E, E=(2,0):")
for k in (1,2,20,60):
    eps=F(1,25)/F(2**k)
    Pe=list(P0); Pe[0]=(eps*E[0], eps*E[1])
    r=seg_inter(Pe[6],Pe[0],Q0[6],Q0[0])
    n=bcount(Pe,Q0)
    print(f"  eps=eps0/2^{k}: [P6,P0(eps)] cap [Q6,Q0] = {r[0]}"
          + (f" of positive length {r[1]}..{r[2]}" if r[0]=='seg' else "")
          + f"   |dP cap dQ| = {'INFINITE' if n is None else n}")
# would e9_directions' own degeneracy-free clause have rejected E?
eps=F(1,50); Pe=list(P0); Pe[0]=(eps*E[0],eps*E[1])
flag = on_open(Q0[0], Pe[6], Pe[0])
print(f"\ne9_directions degeneracy-free test: Q_j=(0,0) interior to P-side [P6,P0(eps)]? {flag}")
print("  -> that clause DOES reject E" if flag else "  -> clause would NOT catch it")
