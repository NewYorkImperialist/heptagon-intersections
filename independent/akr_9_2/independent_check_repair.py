#!/usr/bin/env python3
"""Independent check of the tilted-shift repair to AKR section 9.2.

SELF-CONTAINED.  Run it from anywhere with a plain `python3`: no arguments,
no data files, no imports outside the standard library, no project code.

    $ python3 independent_check_repair.py

Provenance: until 2026-09-24 this file began with

    exec(open("$HOME/.claude/jobs/<id>/tmp/cert.py").read().split(...)[0])

-- a scratch file from an AI agent run that exists on exactly one laptop, so
the "independent check" could not be run by anyone else.  The exact-rational
geometry prelude it was pulling in is now inlined verbatim below.  Nothing
about what is checked changed; only where the helpers come from.

What it checks, on the configuration that refuted AKR's printed procedure
(commit 0bcfb87, a vertex-side degeneracy: Q3 = (2,0) lies in the interior of
P-side 0):

  1. AKR's own rule for the two shift directions leaves the shift G UNDEFINED
     on that side, while the tilted rule leaves it DEFINED;
  2. under the tilted rule the shifted heptagon stays simple, the degeneracy
     is cleared, and the averaging identity |dP(d)| + |dP(-d)| = 2|dP| holds
     at every tested delta;
  3. the boundary-intersection count never decreases in at least one of the
     two directions -- the property section 9.2's argument actually needs.

This is a check on ONE witness, in exact arithmetic.  It is not a proof, and
the tilted shift is this project's repair, not AKR's operation.
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


def G(R, i, a, b, delta):
    """A_d = A + (delta*N/<a,n>)a ;  B_d = B + (delta*N/<b,n>)b"""
    m=len(R); A=R[i]; B=R[(i+1)%m]
    u=sub(B,A); n=(-u[1],u[0]); N=dot(u,u)
    if dot(a,n)==0 or dot(b,n)==0: return None      # (G) fails
    Ad=(A[0]+F(delta*N,1)/dot(a,n)*a[0], A[1]+F(delta*N,1)/dot(a,n)*a[1])
    Bd=(B[0]+F(delta*N,1)/dot(b,n)*b[0], B[1]+F(delta*N,1)/dot(b,n)*b[1])
    S=list(R); S[i]=Ad; S[(i+1)%m]=Bd; return S

def dirs_akr(R,i):
    m=len(R); C=R[(i-1)%m]; A=R[i]; B=R[(i+1)%m]; D=R[(i+2)%m]
    return sub(A,C), sub(D,B)                        # slide along adjacent side lines

def dirs_tilted(R,i,Other):
    m=len(R); A=R[i]; B=R[(i+1)%m]; u=sub(B,A); n=(-u[1],u[0])
    def pick(X):
        t=None
        for j in range(len(Other)):
            if on_open(X, Other[j], Other[(j+1)%len(Other)]): t=(Other[j],Other[(j+1)%len(Other)])
        if t is None: return n
        v=sub(t[1],t[0])
        return n if dot(u,v)!=0 else (n[0]+u[0], n[1]+u[1])
    return pick(A), pick(B)

P=[V(2,-4),V(2,1),V(2,4),V(1,3),V(-1,3),V(-3,4),V(-2,2)]
Q=[V(-4,-3),V(0,-2),V(3,-1),V(2,0),V(1,1),V(-1,1),V(-3,0)]
print("the configuration that REFUTED AKR's procedure (commit 0bcfb87)")
print("  |dP cap dQ| =",bcount(P,Q),"  degeneracy: Q3=(2,0) interior to P-side 0")
a,b = dirs_akr(P,0)
print(f"\nAKR's rule on P-side 0: a={a} b={b} -> G {'DEFINED' if G(P,0,a,b,F(1,64)) else 'UNDEFINED'}")
at,bt = dirs_tilted(P,0,Q)
print(f"tilted rule on P-side 0: a={at} b={bt} -> G {'DEFINED' if G(P,0,at,bt,F(1,64)) else 'UNDEFINED'}")

print("\n  delta      simple?   |dP(d) cap dQ|   Q3 still on P-side 0?")
base=bcount(P,Q); tot={}
for k in (4,6,10,20):
    d=F(1,2**k); row=[]
    for s in (d,-d):
        Pd=G(P,0,at,bt,s)
        ok,_=simple(Pd); n=bcount(Pd,Q)
        still=on_open(Q[3],Pd[0],Pd[1])
        row.append(n)
        print(f"  {'+' if s>0 else '-'}2^-{k}    {ok!s:5}     {n}                {still}")
    tot[k]=row
print(f"\naveraging identity  |dP(d)|+|dP(-d)| = 2*{base} = {2*base}?")
for k,(x,y) in tot.items():
    print(f"  delta=2^-{k}: {x} + {y} = {x+y}   {'OK' if x+y==2*base else 'FAILS'}")
print("\ncount never decreased in at least one direction:",
      all(max(v)>=base for v in tot.values()))
