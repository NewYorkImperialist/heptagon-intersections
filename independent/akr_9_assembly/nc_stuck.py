"""Is the (NC) interface gap a HOLE or only an inconvenience?

docs/akr-9-2-obligation.md measures that AKR's procedure "could not be started"
-- the FIRST side it had to shift had a collinear neighbour -- in 17.7% of
random hexagon pairs.  That is not the same as the procedure being STUCK: a
vertex-side degeneracy (a vertex v of one polygon interior to a side s of the
other) can be removed by shifting s, but ALSO by shifting either of the two
sides incident to v, since AKR's shift moves the shifted side's two endpoints.

This script asks the sharper question: is there a configuration in which EVERY
side that would remove SOME remaining degeneracy is (NC)-undefined?  That -- and
only that -- makes the gap a hole rather than a choice of order.

Exact rational arithmetic throughout.  Small integer grids are used on purpose:
collinear triples are what is being hunted.
"""
import sys, random
from fractions import Fraction as F
BASE='/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform'
sys.path.insert(0, BASE)
from uniform import simple, cross_points

def cr(p,q,r): return (q[0]-p[0])*(r[1]-p[1]) - (q[1]-p[1])*(r[0]-p[0])
def on_seg(a,b,x):
    return cr(a,b,x)==0 and min(a[0],b[0])<=x[0]<=max(a[0],b[0]) \
                        and min(a[1],b[1])<=x[1]<=max(a[1],b[1])
def interior(a,b,x): return on_seg(a,b,x) and x!=a and x!=b

def rand_simple(R, N, m):
    import math
    for _ in range(3000):
        pts=set()
        while len(pts)<m: pts.add((F(R.randint(-N,N)),F(R.randint(-N,N))))
        pts=list(pts)
        cx=sum(p[0] for p in pts)/m; cy=sum(p[1] for p in pts)/m
        pts.sort(key=lambda p: math.atan2(float(p[1]-cy),float(p[0]-cx)))
        if simple(pts): return pts
    return None

def degeneracies(Pp,Qq):
    """(owner, vertex index, other-polygon side index) for each vertex-side
    degeneracy.  owner 'P' means a P-vertex interior to a Q-side."""
    m,n=len(Pp),len(Qq); out=[]
    for i in range(m):
        for j in range(n):
            if interior(Qq[j],Qq[(j+1)%n],Pp[i]): out.append(('P',i,j))
    for j in range(n):
        for i in range(m):
            if interior(Pp[i],Pp[(i+1)%m],Qq[j]): out.append(('Q',j,i))
    return out

def vv(Pp,Qq): return [(i,j) for i in range(len(Pp)) for j in range(len(Qq)) if Pp[i]==Qq[j]]

def nc_ok(Z,k):
    m=len(Z)
    return cr(Z[(k-1)%m],Z[k],Z[(k+1)%m])!=0 and cr(Z[k],Z[(k+1)%m],Z[(k+2)%m])!=0

def usable_sides(Pp,Qq,degs):
    """Sides whose shift is (NC)-defined AND removes at least one degeneracy."""
    m,n=len(Pp),len(Qq); out=[]
    for (Z,other,name,ln,oln) in ((Pp,Qq,'P',m,n),(Qq,Pp,'Q',n,m)):
        for k in range(ln):
            kills=False
            for (own,vi,si) in degs:
                if own==name and vi in (k,(k+1)%ln): kills=True      # endpoint moves
                if own!=name and si==k: kills=True                    # vertex interior to this side
            if kills and nc_ok(Z,k): out.append((name,k))
    return out

def blocked_sides(Pp,Qq,degs):
    m,n=len(Pp),len(Qq); out=[]
    for (Z,name,ln) in ((Pp,'P',m),(Qq,'Q',n)):
        for k in range(ln):
            kills=False
            for (own,vi,si) in degs:
                if own==name and vi in (k,(k+1)%ln): kills=True
                if own!=name and si==k: kills=True
            if kills and not nc_ok(Z,k): out.append((name,k))
    return out

def run(trials, N, m, seed):
    R=random.Random(seed)
    stat=dict(built=0,withdeg=0,stuck=0,someblocked=0,allopen=0,examples=[])
    for _ in range(trials):
        Pp=rand_simple(R,N,m); Qq=rand_simple(R,N,m)
        if Pp is None or Qq is None: continue
        stat['built']+=1
        if vv(Pp,Qq): continue                       # (VV): 9.1 already ran
        pts,inf=cross_points(Pp,Qq)
        if inf: continue                             # (F)
        degs=degeneracies(Pp,Qq)
        if not degs: continue
        stat['withdeg']+=1
        u=usable_sides(Pp,Qq,degs); b=blocked_sides(Pp,Qq,degs)
        if b: stat['someblocked']+=1
        if not u:
            stat['stuck']+=1
            if len(stat['examples'])<3: stat['examples'].append((Pp,Qq,degs,b))
        else: stat['allopen']+=1
    return stat

if __name__=='__main__':
    for (N,m,label) in ((3,6,'6-gons, grid [-3,3]'),(2,6,'6-gons, grid [-2,2]'),
                        (3,7,'7-gons, grid [-3,3]'),(4,7,'7-gons, grid [-4,4]')):
        s=run(int(sys.argv[1]) if len(sys.argv)>1 else 4000, N, m, 424242+N*10+m)
        print(f'--- {label}')
        print(f'    pairs built {s["built"]}, with (F),(VV) and >=1 degeneracy: {s["withdeg"]}')
        print(f'    at least one degeneracy-killing side is (NC)-BLOCKED : {s["someblocked"]}')
        print(f'    NO degeneracy-killing side is (NC)-defined  = STUCK  : {s["stuck"]}')
        print(f'    some usable side exists (procedure can proceed)      : {s["allopen"]}')
        if s['examples']:
            Pp,Qq,degs,b=s['examples'][0]
            print(f'    example  P={[(str(a),str(c)) for a,c in Pp]}')
            print(f'             Q={[(str(a),str(c)) for a,c in Qq]}')
            print(f'             degeneracies={degs}  blocked killers={b}')
        print()
