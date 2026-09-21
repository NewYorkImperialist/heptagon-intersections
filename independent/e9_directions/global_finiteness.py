#!/usr/bin/env python3
"""
Closing the gap opened by eps_uniform/R3.md Finding R3-1.

R3-1: a direction satisfying AKR's stated criterion can make dP(e) cap dQ(e)
INFINITE, destroying AKR's own standing finiteness assumption.  On that
certificate e9_directions' degeneracy-free clause happened to reject it.  Is
that a theorem or luck?

CLAIM (global degeneracy-freeness => finiteness).  Let P(e) differ from P only
in the vertex P_i |-> P_i + e*E.  If no vertex of P(e) lies on dQ and no vertex
of Q lies on dP(e), then dP(e) cap dQ is finite.
  Proof: if infinite, some P(e)-side and some Q-side overlap in a segment of
  positive length; an endpoint of that overlap is an endpoint of one of the two
  sides, i.e. a vertex lying on the other's boundary.  Contradiction.

CLAIM (existence, global form).  Such an E exists, and can simultaneously be
chosen to create a proper crossing near the apex.
  Proof sketch: the crossing condition holds on a nonempty OPEN cone (the local
  lemma).  Each potential degeneracy -- a vertex of P(e) on a Q-side, or a
  vertex of Q on one of the two moved P-sides -- is a polynomial equation in E,
  homogeneous, hence a finite union of LINES through the origin in E-space.
  Only the two sides at the moved apex change, so there are finitely many.  An
  open 2-D cone is not covered by finitely many lines.

This script tests both on WHOLE heptagon pairs, not just the local picture.
"""
from fractions import Fraction as F
from math import gcd
import random, itertools

def V(x,y): return (F(x),F(y))
def sub(a,b): return (a[0]-b[0],a[1]-b[1])
def cross2(u,v): return u[0]*v[1]-u[1]*v[0]
def dot(u,v): return u[0]*v[0]+u[1]*v[1]
def orient(a,b,c): return (b[0]-a[0])*(c[1]-a[1])-(b[1]-a[1])*(c[0]-a[0])
def on_closed(p,a,b):
    if orient(a,b,p)!=0: return False
    return min(a[0],b[0])<=p[0]<=max(a[0],b[0]) and min(a[1],b[1])<=p[1]<=max(a[1],b[1])
def pc(p,q,r,s):
    return orient(p,q,r)*orient(p,q,s)<0 and orient(r,s,p)*orient(r,s,q)<0
def sides(R): return [(R[i],R[(i+1)%len(R)]) for i in range(len(R))]
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
def finite(P,Q):
    for a in sides(P):
        for b in sides(Q):
            if seg_inter(*a,*b)[0]=='seg': return False
    return True
def degfree(P,Q):
    """no vertex of either polygon on the other's boundary -- TOO STRONG, see
    moved_clean below.  Kept because the first version of this script used it
    and the correction matters."""
    for v in P:
        for b in sides(Q):
            if on_closed(v,*b): return False
    for v in Q:
        for a in sides(P):
            if on_closed(v,*a): return False
    return True

def moved_clean(Pe, Q, moved):
    """THE RIGHT CONDITION.  Section 9.1 removes vertex-VERTEX coincidences and
    deliberately LEAVES vertex-side degeneracies for section 9.2 ("we will
    simultaneously perturb all vertex-vertex degeneracies while leaving
    vertex-side degeneracies intact").  So requiring the whole configuration to
    be degeneracy-free is wrong: a pre-existing P-vertex on a Q-side is not the
    perturbation's business and cannot be fixed by choosing E.

    What finiteness actually needs is that the two MOVED sides carry no
    incidence: no Q-vertex on them, and neither of their endpoints on a Q-side.
    Only those two sides changed, so only they can create a NEW overlap."""
    S=sides(Pe)
    for k in moved:
        a=S[k]
        for v in Q:
            if on_closed(v,*a): return False
        for endpoint in a:
            for b in sides(Q):
                if on_closed(endpoint,*b): return False
    return True

def DIRS(R=9):
    out=[]
    for dx in range(-R,R+1):
        for dy in range(-R,R+1):
            if (dx,dy)!=(0,0) and gcd(abs(dx),abs(dy))==1: out.append((F(dx),F(dy)))
    return out
D=DIRS()

def test(P,Q,i,eps):
    """i = index of the P-vertex coincident with a Q-vertex"""
    res={"degfree_and_cross":None,"any_cross":None,"degfree_implies_finite":True}
    for E in D:
        Pe=list(P); Pe[i]=(P[i][0]+eps*E[0], P[i][1]+eps*E[1])
        # a proper crossing near the apex: one of the two moved sides vs a Q-side at the apex
        near=any(pc(*a,*b) for a in (sides(Pe)[(i-1)%len(P)], sides(Pe)[i]) for b in sides(Q))
        df=moved_clean(Pe,Q,((i-1)%len(P), i))
        if near and res["any_cross"] is None: res["any_cross"]=E
        if df and not finite(Pe,Q): res["degfree_implies_finite"]=False
        if near and df and res["degfree_and_cross"] is None: res["degfree_and_cross"]=E
    return res

def rand_simple(n, lo, hi, rnd):
    """random star-shaped (hence simple) polygon: points sorted by angle about origin"""
    while True:
        pts=set()
        while len(pts)<n: pts.add((rnd.randint(lo,hi), rnd.randint(lo,hi)))
        pts=[p for p in pts if p!=(0,0)]
        if len(pts)<n: continue
        import math
        pts=sorted(pts, key=lambda p: math.atan2(p[1],p[0]))
        R=[V(*p) for p in pts[:n]]
        if len(set(R))<n: continue
        # reject if any angle tie made it non-simple
        ok=True
        S=sides(R)
        for a in range(n):
            for b in range(a+1,n):
                adj=(b==a+1) or (a==0 and b==n-1)
                r=seg_inter(*S[a],*S[b])
                if r[0]=='seg': ok=False
                elif r[0]=='point' and not adj: ok=False
        if ok: return R

if __name__=="__main__":
    rnd=random.Random(17); eps=F(1,10**6)
    n_ok=n_cross=n_both=n_bad=0; trials=0
    local_only_fails=0
    for _ in range(400):
        P=rand_simple(7,-14,14,rnd); Q=rand_simple(7,-14,14,rnd)
        # translate Q so Q_0 coincides with P_0  -> a vertex-vertex coincidence
        d=sub(P[0],Q[0]); Q=[(q[0]+d[0], q[1]+d[1]) for q in Q]
        if len(set(P)&set(Q))!=1: continue
        if not finite(P,Q): continue
        trials+=1
        r=test(P,Q,0,eps)
        if r["any_cross"] is not None: n_cross+=1
        if r["degfree_and_cross"] is not None: n_both+=1
        if not r["degfree_implies_finite"]: n_bad+=1
        # CONTROL: is the LOCAL clause (apex only) enough for finiteness?
        for E in D:
            Pe=list(P); Pe[0]=(P[0][0]+eps*E[0], P[0][1]+eps*E[1])
            loc = not any(on_closed(v,*a) for v in (Q[0],Q[1],Q[len(Q)-1])
                          for a in (sides(Pe)[len(P)-1], sides(Pe)[0])) \
                  and not any(on_closed(v,*b) for v in (Pe[len(P)-1],Pe[0],Pe[1])
                          for b in (sides(Q)[len(Q)-1], sides(Q)[0]))
            if loc and not finite(Pe,Q): local_only_fails+=1; break
    print(f"heptagon pairs with a coincidence, finite at eps=0 : {trials}")
    print(f"  some direction gives a crossing near the apex    : {n_cross}")
    print(f"  some direction gives crossing AND globally       : {n_both}")
    print(f"    degeneracy-free")
    print(f"  moved-sides-clean but NOT finite (want 0)        : {n_bad}")
    print(f"  CONTROL: LOCAL-only clause admits a NON-finite   : {local_only_fails}")
    print(f"           direction (if >0, local is NOT enough)")

    print("\n--- the R3-1 certificate ---")
    P=[V(0,0),V(0,-3),V(5,-6),V(9,-1),V(6,4),V(-1,5),V(-3,0)]
    Q=[V(0,0),V(2,-1),V(7,-4),V(11,2),V(8,7),V(1,8),V(4,0)]
    r=test(P,Q,0,F(1,50))
    print(f"  a direction with a crossing exists              : {r['any_cross'] is not None}")
    print(f"  a globally degeneracy-free such direction exists: {r['degfree_and_cross']}")
    print(f"  global degeneracy-free ever gave infinite       : {not r['degfree_implies_finite']}")
    Pe=list(P); Pe[0]=(F(1,50)*2, F(0))
    print(f"  the bad E=(2,0): moved-sides-clean={moved_clean(Pe,Q,(6,0))}  finite={finite(Pe,Q)}")
