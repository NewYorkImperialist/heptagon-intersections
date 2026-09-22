# Independent check of Fact (E): for DISJOINT closed segments in R^2,
#   dist(sigma,t) = min( d(p,t), d(q,t), d(c,sigma), d(d,sigma) ).
# Written from the statement.  Exact rationals; grid refutation test.
from fractions import Fraction as F
import random, itertools
def sub(a,b): return tuple(x-y for x,y in zip(a,b))
def dot(u,v): return sum(x*y for x,y in zip(u,v))
def d2_pt_seg(x,a,b):
    e=sub(b,a); ee=dot(e,e)
    if ee==0: return dot(sub(x,a),sub(x,a))
    t=F(dot(sub(x,a),e),ee)
    t=max(F(0),min(F(1),t))
    y=tuple(a[k]+t*e[k] for k in range(len(a)))
    return dot(sub(x,y),sub(x,y))
def endpoint_min(p,q,c,d):
    return min(d2_pt_seg(p,c,d), d2_pt_seg(q,c,d), d2_pt_seg(c,p,q), d2_pt_seg(d,p,q))
def grid_min(p,q,c,d,N):
    best=None
    for i in range(N+1):
        s=F(i,N); x=tuple(p[k]+s*(q[k]-p[k]) for k in range(len(p)))
        for j in range(N+1):
            t=F(j,N); y=tuple(c[k]+t*(d[k]-c[k]) for k in range(len(c)))
            v=dot(sub(x,y),sub(x,y))
            if best is None or v<best: best=v
    return best
def seg_disjoint2d(p,q,c,d):
    def orient(a,b,e): return (b[0]-a[0])*(e[1]-a[1])-(b[1]-a[1])*(e[0]-a[0])
    def on(x,a,b):
        return orient(a,b,x)==0 and min(a[0],b[0])<=x[0]<=max(a[0],b[0]) and min(a[1],b[1])<=x[1]<=max(a[1],b[1])
    if (orient(p,q,c)*orient(p,q,d)<0) and (orient(c,d,p)*orient(c,d,q)<0): return False
    return not any(on(*args) for args in [(c,p,q),(d,p,q),(p,c,d),(q,c,d)])

rnd=random.Random(3); N=24
print("=== PLANAR, DISJOINT (the theorem) ===")
n=bad=0
for _ in range(4000):
    p,q,c,d=[(F(rnd.randint(-9,9)),F(rnd.randint(-9,9))) for _ in range(4)]
    if p==q or c==d: continue
    if not seg_disjoint2d(p,q,c,d): continue
    n+=1
    if grid_min(p,q,c,d,N) < endpoint_min(p,q,c,d): bad+=1
print(f"  disjoint planar pairs tested : {n}")
print(f"  grid beats the endpoint min  : {bad}   <- want 0")

print("\n=== CONTROL 1: planar but CROSSING (hypothesis dropped) ===")
n2=fire=0
for _ in range(3000):
    p,q,c,d=[(F(rnd.randint(-9,9)),F(rnd.randint(-9,9))) for _ in range(4)]
    if p==q or c==d: continue
    if seg_disjoint2d(p,q,c,d): continue
    n2+=1
    if grid_min(p,q,c,d,N) < endpoint_min(p,q,c,d): fire+=1
print(f"  crossing pairs tested        : {n2}")
print(f"  endpoint formula WRONG       : {fire}   <- want LARGE")

print("\n=== CONTROL 2: R^3 skew (dimension hypothesis dropped) ===")
n3=fire3=0
for _ in range(1500):
    p,q,c,d=[tuple(F(rnd.randint(-9,9)) for _ in range(3)) for _ in range(4)]
    if p==q or c==d: continue
    n3+=1
    if grid_min(p,q,c,d,N) < endpoint_min(p,q,c,d): fire3+=1
print(f"  R^3 pairs tested             : {n3}")
print(f"  endpoint formula WRONG       : {fire3}   <- want LARGE")
