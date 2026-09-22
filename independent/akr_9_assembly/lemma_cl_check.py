"""Lemma CL (docs/akr-9-assembly.md section 2.1), checked as a set of INCIDENCE
COUNTS rather than as prose.  For every x in dP n dQ with dP n dQ finite:

  (a)  x interior to exactly ONE P-side and exactly ONE Q-side, x on exactly
       2 sides in total, and those two sides PROPERLY CROSS at x;
  (b)  x a vertex of exactly one polygon: it is then on exactly 2 sides of that
       polygon and exactly 1 (interior) of the other -> 3 sides in total;
  (c)  x a vertex of both: on exactly 4 sides, namely P_{i-1},P_i,Q_{j-1},Q_j.

Also checked: vertices of a SimpleClosed heptagon are pairwise distinct (used
throughout, and not one of SimpleClosed's three literal conjuncts).

CONTROL: the same checks run on pairs whose intersection is INFINITE (a P-side
and a Q-side overlap in a segment).  Lemma CL's hypothesis fails there and the
conclusions must be observed to fail, or the checker proves nothing.
"""
import sys, random, collections
from fractions import Fraction as F
sys.path.insert(0,'/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform')
from uniform import rand_simple_heptagon, simple, cross_points, sides, seg_inter
N=7
def cr(p,q,r): return (q[0]-p[0])*(r[1]-p[1])-(q[1]-p[1])*(r[0]-p[0])
def on_seg(a,b,x):
    return cr(a,b,x)==0 and min(a[0],b[0])<=x[0]<=max(a[0],b[0]) and min(a[1],b[1])<=x[1]<=max(a[1],b[1])
def interior(a,b,x): return on_seg(a,b,x) and x!=a and x!=b
def proper(a,b,c,d): return cr(c,d,a)*cr(c,d,b)<0 and cr(a,b,c)*cr(a,b,d)<0

def audit(Pp,Qq):
    """Returns (counts, violations)."""
    pts, inf = cross_points(Pp,Qq)
    # cross_points reports a positive-length overlap only as a FLAG and
    # contributes no points from it.  Those points are nevertheless in
    # dP n dQ, and they are precisely where Lemma CL breaks when finiteness
    # is dropped, so audit representatives of every overlap explicitly.
    for i,(a,b) in enumerate(sides(Pp)):
        for j,(c,d) in enumerate(sides(Qq)):
            if seg_inter(a,b,c,d)[0] != 'seg': continue
            for t in (F(1,2), F(1,3), F(2,3)):
                lo = max(min(a[0],b[0]), min(c[0],d[0])); hi = min(max(a[0],b[0]), max(c[0],d[0]))
                if lo < hi:
                    xx = lo + t*(hi-lo)
                    if b[0]!=a[0]:
                        yy = a[1] + (xx-a[0])*(b[1]-a[1])/(b[0]-a[0]); pts.add((xx,yy))
                else:
                    lo2 = max(min(a[1],b[1]), min(c[1],d[1])); hi2 = min(max(a[1],b[1]), max(c[1],d[1]))
                    if lo2 < hi2 and b[1]!=a[1]:
                        yy = lo2 + t*(hi2-lo2)
                        xx = a[0] + (yy-a[1])*(b[0]-a[0])/(b[1]-a[1]); pts.add((xx,yy))
    cnt = collections.Counter(); bad=[]
    if len(set(Pp))!=N: bad.append('P vertices not distinct')
    if len(set(Qq))!=N: bad.append('Q vertices not distinct')
    for x in pts:
        onP=[i for i in range(N) if on_seg(Pp[i],Pp[(i+1)%N],x)]
        onQ=[j for j in range(N) if on_seg(Qq[j],Qq[(j+1)%N],x)]
        iP=[i for i in onP if interior(Pp[i],Pp[(i+1)%N],x)]
        iQ=[j for j in onQ if interior(Qq[j],Qq[(j+1)%N],x)]
        vP=[k for k in range(N) if Pp[k]==x]; vQ=[k for k in range(N) if Qq[k]==x]
        if vP and vQ:
            cnt['c']+=1
            if len(vP)!=1 or len(vQ)!=1: bad.append(('c: vertex index not unique',x))
            if len(onP)!=2 or len(onQ)!=2: bad.append(('c: not exactly 4 sides',x,len(onP),len(onQ)))
            if set(onP)!={(vP[0]-1)%N, vP[0]} or set(onQ)!={(vQ[0]-1)%N, vQ[0]}:
                bad.append(('c: the 4 sides are not the incident ones',x))
        elif vP or vQ:
            cnt['b']+=1
            if vP:
                if len(onP)!=2: bad.append(('b: not on exactly 2 sides of its own polygon',x,len(onP)))
                if len(iQ)!=1 or len(onQ)!=1: bad.append(('b: Q-side not unique/interior',x,len(onQ),len(iQ)))
            else:
                if len(onQ)!=2: bad.append(('b: not on exactly 2 sides of its own polygon',x,len(onQ)))
                if len(iP)!=1 or len(onP)!=1: bad.append(('b: P-side not unique/interior',x,len(onP),len(iP)))
        else:
            cnt['a']+=1
            if len(onP)!=1 or len(onQ)!=1: bad.append(('a: side not unique',x,len(onP),len(onQ)))
            if len(iP)!=1 or len(iQ)!=1: bad.append(('a: not interior to a unique side',x))
            if len(iP)==1 and len(iQ)==1:
                i,j=iP[0],iQ[0]
                if not proper(Pp[i],Pp[(i+1)%N],Qq[j],Qq[(j+1)%N]):
                    bad.append(('a: NOT a proper crossing',x,i,j))
    return cnt, bad, inf

def build_finite(R, force_deg):
    Pp = rand_simple_heptagon(R,9); Qq = rand_simple_heptagon(R,9)
    if Pp is None or Qq is None: return None
    Qq=list(Qq)
    if force_deg:
        Qq[R.randrange(N)] = Pp[R.randrange(N)]                    # vertex-vertex
        i=R.randrange(N); lam=F(R.randint(1,4),5); j=R.randrange(N)
        Qq[j]=(lam*Pp[i][0]+(1-lam)*Pp[(i+1)%N][0], lam*Pp[i][1]+(1-lam)*Pp[(i+1)%N][1])
    if len(set(Qq))!=N or not simple(Qq): return None
    return Pp,Qq

def build_overlap(R):
    """CONTROL family: dP n dQ INFINITE -- a Q-side laid on top of a P-side."""
    Pp = rand_simple_heptagon(R,9); Qq = rand_simple_heptagon(R,9)
    if Pp is None or Qq is None: return None
    Qq=list(Qq); i=R.randrange(N)
    a,b=Pp[i],Pp[(i+1)%N]
    l1,l2 = F(R.randint(1,3),10), F(R.randint(6,9),10)
    j=R.randrange(N)
    Qq[j]      = (a[0]+l1*(b[0]-a[0]), a[1]+l1*(b[1]-a[1]))
    Qq[(j+1)%N]= (a[0]+l2*(b[0]-a[0]), a[1]+l2*(b[1]-a[1]))
    if len(set(Qq))!=N or not simple(Qq): return None
    return Pp,Qq

def run(name, gen, n, seed, skip_inf=True):
    R=random.Random(seed); tot=collections.Counter(); nbad=0; built=0; infc=0; ex=[]
    tries=0
    while built<n and tries<n*80:
        tries+=1
        g=gen(R)
        if g is None: continue
        c,bad,inf=audit(*g); 
        if inf and skip_inf:
            infc+=1; continue          # Lemma CL's hypothesis fails: not a test of it
        built+=1; tot.update(c)
        if inf: infc+=1
        if bad:
            nbad+=1
            if len(ex)<3: ex.append(bad[0])
    print(f'{name}: pairs audited={built}  (infinite, excluded={infc})  '
          f'classes a={tot["a"]} b={tot["b"]} c={tot["c"]}  '
          f'pairs with a Lemma-CL violation = {nbad}')
    if ex: print(f'    examples: {ex}')
    return nbad, built

if __name__=='__main__':
    n=int(sys.argv[1]) if len(sys.argv)>1 else 400
    print('=== Lemma CL, main sample (finite intersection; hypothesis HOLDS) ===')
    b1,_=run('random pairs            ', lambda R: build_finite(R,False), n, 5551)
    b2,_=run('pairs forced degenerate ', lambda R: build_finite(R,True ), n, 5552)
    print()
    print('=== CONTROL: finiteness DROPPED (a Q-side laid on a P-side) ===')
    print('    Lemma CL must FAIL here, or the audit above has no power.')
    b3,_=run('overlapping-side pairs  ', build_overlap, n, 5553, skip_inf=False)
    print()
    print(f'SUMMARY: violations with the hypothesis = {b1+b2};  without it = {b3}')
