"""Checks the EXPLICIT INJECTION that docs/akr-9-assembly.md section 2 asserts.

`eps_uniform/run_arms.py` checks that the intersection-POINT COUNT does not
drop.  That is a weaker statement than the one the assembly needs: the proof of
the count inequality is an injection

    Phi : (dP0 cap dQ0)  ->  (dP(eps) cap dQ(eps))

defined by cases, and what has to be checked is that Phi is (i) TOTAL -- every
source point really does have the image its case prescribes -- and (ii)
INJECTIVE.  A count that happens not to drop does not establish either: points
could be lost in one class and gained in another.  This script checks Phi
itself, as exact rational points.

Classes (see the assembly doc section 2.1):
  (a) x interior to a P-side and to a Q-side      -> Phi(x) = crossing of that pair at eps
  (b) x a vertex of exactly one polygon           -> Phi(x) = that vertex at eps
  (c) x a vertex of both                          -> Phi(x) = crossing of an incident pair

All arithmetic is exact `fractions.Fraction`.  Nothing is floating point.
"""
import sys, random
from fractions import Fraction as F
BASE='/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform'
sys.path.insert(0, BASE)
from epslib import Poly, Vec, orient, sgn
from uniform import (witnesses, eps0_of, seg_inter, sides, simple,
                     cross_points, snap, build, make_motion, CAND)
import run_arms as RA

def cr(p,q,r): return (q[0]-p[0])*(r[1]-p[1]) - (q[1]-p[1])*(r[0]-p[0])

def on_seg(a,b,x):
    return cr(a,b,x)==0 and min(a[0],b[0])<=x[0]<=max(a[0],b[0]) \
                        and min(a[1],b[1])<=x[1]<=max(a[1],b[1])

def interior(a,b,x):
    return on_seg(a,b,x) and x!=a and x!=b

def proper(a,b,c,d):
    d1,d2 = cr(c,d,a), cr(c,d,b)
    d3,d4 = cr(a,b,c), cr(a,b,d)
    return d1*d2<0 and d3*d4<0

def cross_pt(a,b,c,d):
    d3,d4 = cr(a,b,c), cr(a,b,d)
    t = d3/(d3-d4)
    return (c[0]+t*(d[0]-c[0]), c[1]+t*(d[1]-c[1]))

def classify(Pp,Qq):
    """Returns (pts_with_class, infinite_flag).  Each entry is
    (x, kind, payload)."""
    pts, inf = cross_points(Pp,Qq)
    out=[]
    for x in sorted(pts):
        pv = [k for k in range(7) if Pp[k]==x]
        qv = [k for k in range(7) if Qq[k]==x]
        pi = [i for i in range(7) if interior(Pp[i],Pp[(i+1)%7],x)]
        qj = [j for j in range(7) if interior(Qq[j],Qq[(j+1)%7],x)]
        if pv and qv:                      out.append((x,'c',(pv[0],qv[0])))
        elif pv and qj:                    out.append((x,'b',('P',pv[0],qj[0])))
        elif qv and pi:                    out.append((x,'b',('Q',qv[0],pi[0])))
        elif pi and qj:                    out.append((x,'a',(pi[0],qj[0])))
        else:                              out.append((x,'?',(pv,qv,pi,qj)))
    return out, inf

def phi(cls, Pe, Qe):
    """Apply Phi at the perturbed configuration.  Returns (ok, images, why)."""
    imgs=[]
    for x,kind,pay in cls:
        if kind=='a':
            i,j = pay
            a,b = Pe[i],Pe[(i+1)%7]; c,d = Qe[j],Qe[(j+1)%7]
            if not proper(a,b,c,d): return False, imgs, f'a-lost {pay}'
            imgs.append(cross_pt(a,b,c,d))
        elif kind=='b':
            which,k,m = pay
            if which=='P':
                y = Pe[k]
                if not on_seg(Qe[m],Qe[(m+1)%7],y): return False,imgs,f'b-lost {pay}'
            else:
                y = Qe[k]
                if not on_seg(Pe[m],Pe[(m+1)%7],y): return False,imgs,f'b-lost {pay}'
            imgs.append(y)
        elif kind=='c':
            k,l = pay
            hit=None
            for i in ((k-1)%7, k%7):
                for j in ((l-1)%7, l%7):
                    a,b = Pe[i],Pe[(i+1)%7]; c,d = Qe[j],Qe[(j+1)%7]
                    if proper(a,b,c,d): hit=cross_pt(a,b,c,d); break
                if hit: break
            if hit is None: return False, imgs, f'c-lost {pay}'
            imgs.append(hit)
        else:
            return False, imgs, f'unclassified {pay}'
    return True, imgs, None

def check(Pp,Qq,V,eps):
    cls, inf0 = classify(Pp,Qq)
    if inf0: return dict(skip='infinite at eps=0')
    pts = snap(V,eps); Pe,Qe = pts[:7], pts[7:]
    if not (simple(Pe) and simple(Qe)): return dict(skip='not simple at eps')
    tgt, infe = cross_points(Pe,Qe)
    if infe: return dict(skip='infinite at eps')
    ok, imgs, why = phi(cls,Pe,Qe)
    inj = (len(set(imgs))==len(imgs))
    land = all(y in tgt for y in imgs)
    return dict(n0=len(cls), ne=len(tgt),
                na=sum(1 for c in cls if c[1]=='a'),
                nb=sum(1 for c in cls if c[1]=='b'),
                nc=sum(1 for c in cls if c[1]=='c'),
                total=ok, inj=ok and inj, land=ok and land, why=why,
                nodrop=len(tgt)>=len(cls))

def run(n, seed, arm, badE=False):
    R = random.Random(seed)
    tally = dict(built=0,tested=0,skip=0,total=0,inj=0,land=0,nodrop=0,
                 fails=[],classes=[0,0,0])
    while tally['built'] < n:
        b = build(R)
        if b is None: continue
        Pp,Qq,lam = b; tally['built'] += 1
        if badE:
            # Finding-2 family: E parallel to an incident P-edge at the apex.
            e = (Pp[6][0]-Pp[0][0], Pp[6][1]-Pp[0][1])
            if e==(0,0): continue
            V = make_motion(Pp,Qq,lam,e,(F(0),F(0)))
            W = witnesses(V)
        else:
            r = RA.search(Pp,Qq,lam,
                          random.Random(hash((seed,tally['built'],arm))%2**31),
                          arm=='B')
            if r is None: continue
            _,_,V,W = r
        e0,_ = eps0_of(W)
        if e0 is None or e0<=0: continue
        for eps in (e0/2, e0/7, e0/10**6):
            res = check(Pp,Qq,V,eps)
            if 'skip' in res: tally['skip'] += 1; continue
            tally['tested'] += 1
            for i,k in enumerate(('na','nb','nc')): tally['classes'][i] += res[k]
            for k in ('total','inj','land','nodrop'):
                if res[k]: tally[k] += 1
            if not (res['total'] and res['inj'] and res['land']):
                tally['fails'].append((res['why'], res['n0'], res['ne']))
    return tally

if __name__=='__main__':
    n = int(sys.argv[1]) if len(sys.argv)>1 else 40
    seed = int(sys.argv[2]) if len(sys.argv)>2 else 20260921
    for label,arm,bad in (('ARM B (AKR criterion R2)','B',False),
                          ('ARM A (bare, control)','A',False),
                          ('BAD E parallel to edge (control)','B',True)):
        t = run(n,seed,arm,bad)
        print(f'--- {label}')
        print(f'    built={t["built"]} tested={t["tested"]} skipped={t["skip"]}')
        print(f'    Phi total   : {t["total"]}/{t["tested"]}')
        print(f'    Phi injective: {t["inj"]}/{t["tested"]}')
        print(f'    Phi lands in target: {t["land"]}/{t["tested"]}')
        print(f'    count did not drop : {t["nodrop"]}/{t["tested"]}')
        print(f'    source points by class  a={t["classes"][0]} b={t["classes"][1]} c={t["classes"][2]}')
        if t['fails']:
            print(f'    first failures: {t["fails"][:5]}')
        print()
