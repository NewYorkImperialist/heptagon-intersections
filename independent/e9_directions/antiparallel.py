#!/usr/bin/env python3
"""
The family where finiteness is actually at risk (eps_uniform/R3.md Finding R3-1):
a coincidence whose two opposing rays are COLLINEAR (a1 parallel to b1).  Then
the P-side [a1, apex] and the Q-side [b1, O] lie on one line and meet only at
the apex, so finiteness holds at eps = 0 -- and moving the apex ALONG that line
slides them into a positive-length overlap.

Random heptagon pairs never produce this (the control in the companion run
found 0 of 113 pairs where any direction destroys finiteness), so it has to be
built deliberately.

CLAIM (corrected -- the first version of this script said "parallel to a1",
and the mismatch counter below caught it).  With a1 parallel to b1, the
directions that destroy finiteness are EXACTLY the POSITIVE multiples of b1.

Parallelism alone is not enough: E must also point INTO the opposing side.
[a1, eps*E] is collinear with the line of [b1,O] only if E is parallel to a1,
which is one line in E-space -- but of that line's two rays, moving towards b1
creates the overlap and moving away from it does not.  So the bad set is a
single open RAY, and an open cone minus one ray is still nonempty.
"""
from fractions import Fraction as F
from math import gcd
import random

def V(x,y): return (F(x),F(y))
def sub(a,b): return (a[0]-b[0],a[1]-b[1])
def cross2(u,v): return u[0]*v[1]-u[1]*v[0]
def dot(u,v): return u[0]*v[0]+u[1]*v[1]
def orient(a,b,c): return (b[0]-a[0])*(c[1]-a[1])-(b[1]-a[1])*(c[0]-a[0])
def pc(p,q,r,s):
    return orient(p,q,r)*orient(p,q,s)<0 and orient(r,s,p)*orient(r,s,q)<0
def overlap(p1,p2,q1,q2):
    """do the two closed segments share a positive-length subsegment?"""
    r=sub(p2,p1); s=sub(q2,q1)
    if cross2(r,s)!=0 or cross2(sub(q1,p1),r)!=0: return False
    rr=dot(r,r)
    if rr==0: return False
    t0=F(dot(sub(q1,p1),r),rr); t1=F(dot(sub(q2,p1),r),rr)
    lo,hi=max(min(t0,t1),F(0)),min(max(t0,t1),F(1))
    return hi>lo
def dirs(R=14):
    return [(F(dx),F(dy)) for dx in range(-R,R+1) for dy in range(-R,R+1)
            if (dx,dy)!=(0,0) and gcd(abs(dx),abs(dy))==1]
D=dirs()

if __name__=="__main__":
    rnd=random.Random(5); eps=F(1,10**6)
    n=bad_pred=0; no_good=0; tot_bad_dirs=0
    for _ in range(3000):
        m=rnd.randint(1,9)                      # a1 = (-m,0), b1 = (k,0): antiparallel
        k=rnd.randint(1,9)
        a1=V(-m,0); b1=V(k,0)
        a2=V(rnd.randint(-9,9), rnd.randint(-9,9))
        b2=V(rnd.randint(-9,9), rnd.randint(-9,9))
        if a2==(0,0) or b2==(0,0): continue
        if cross2(a1,a2)==0 or cross2(b1,b2)==0: continue   # genuine V's
        # deliberately do NOT exclude a2 parallel to b2: that is a second
        # overlap channel and the characterisation must cover it
        O=(F(0),F(0))
        # AKR's standing hypothesis (F) must hold at eps = 0: the four local
        # segments must not already overlap.  Without this filter the sample
        # contains configurations section 9 never sees.
        if (overlap(a1,O,b1,O) or overlap(a1,O,O,b2)
            or overlap(O,a2,b1,O) or overlap(O,a2,O,b2)): continue
        n+=1
        good=None; nbad=0
        for E in D:
            ap=(eps*E[0], eps*E[1])
            inf = overlap(a1,ap,b1,O) or overlap(a1,ap,O,b2) \
               or overlap(ap,a2,b1,O) or overlap(ap,a2,O,b2)
            # GENERAL: the overlap [a_k, eps*E] vs [b_l, O] needs a_k parallel
            # to b_l AND E a positive multiple of b_l.  Both ray pairs count.
            pred = any(cross2(ak,bl)==0 and cross2(E,bl)==0 and dot(E,bl)>0
                       for ak in (a1,a2) for bl in (b1,b2))
            if inf != pred: bad_pred+=1
            if inf: nbad+=1
            cross_ok = pc(a1,ap,b1,O) or pc(a1,ap,O,b2) or pc(ap,a2,b1,O) or pc(ap,a2,O,b2)
            if cross_ok and not inf and good is None: good=E
        tot_bad_dirs+=nbad
        if good is None: no_good+=1
    print(f"antiparallel-ray configurations tested        : {n}")
    print(f"  directions destroying finiteness, total     : {tot_bad_dirs}   <- non-vacuous")
    print(f"  mismatches vs the general characterisation  : {bad_pred}")
    print(f"  configurations with NO safe crossing dir    : {no_good}")
