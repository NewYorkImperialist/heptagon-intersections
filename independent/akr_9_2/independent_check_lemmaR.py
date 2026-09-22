# Independent check of Lemma R and of K_rot's failure.
# Setup: the neighbour side s- has fixed far endpoint C and moving endpoint A.
# Put C at the origin, w = A - C.  The shift moves A by delta*e_a, so the LINE
# through C rotates: direction w -> w + delta*e_a.
# A Q-side t lies on the line {p0 + beta*v}.
#   X0 = crossing before,  x = crossing after.
# Lemma R claims  |x - X0| = |delta| * |lam0| * |cross(e_a,w)| * |v|
#                            / |cross(v, w + delta*e_a)|
from fractions import Fraction as F
import random
def cross(u,v): return u[0]*v[1]-u[1]*v[0]
def sub(a,b): return (a[0]-b[0],a[1]-b[1])
def add(a,b): return (a[0]+b[0],a[1]+b[1])
def smul(c,u): return (c*u[0],c*u[1])
def n2(u): return u[0]*u[0]+u[1]*u[1]

def cross_pt(w, p0, v):
    """intersection of {alpha*w} with {p0 + beta*v}; returns alpha"""
    d = cross(w,v)
    if d == 0: return None
    return F(cross(p0,v), d)

rnd=random.Random(2027); n=bad=0
for _ in range(4000):
    w  = (F(rnd.randint(-9,9)), F(rnd.randint(-9,9)))
    ea = (F(rnd.randint(-9,9)), F(rnd.randint(-9,9)))
    v  = (F(rnd.randint(-9,9)), F(rnd.randint(-9,9)))
    p0 = (F(rnd.randint(-9,9)), F(rnd.randint(-9,9)))
    d  = F(rnd.randint(1,7), rnd.randint(8,40))
    wd = add(w, smul(d, ea))
    a0 = cross_pt(w, p0, v); a1 = cross_pt(wd, p0, v)
    if a0 is None or a1 is None: continue
    n+=1
    X0 = smul(a0, w); x = smul(a1, wd)
    lhs2 = n2(sub(x, X0))
    den = cross(v, wd)
    if den == 0: continue
    rhs = F(abs(d)) * abs(a0) * abs(cross(ea,w)) / abs(den)
    rhs2 = rhs*rhs*n2(v)
    if lhs2 != rhs2: bad+=1
print(f"Lemma R tested on {n} exact instances")
print(f"  mismatches (with lam0 = the parameter of X0 along w) : {bad}   <- want 0")

print("\n--- and the printed K_rot is the delta->0 limit, so it UNDERSTATES ---")
print("ratio = |lam0| * sin(e_a,w) * |cross(v,w)| / |cross(v, w + delta*e_a)|")
w=(F(1),F(0)); ea=(F(0),F(1)); v=(F(0),F(1)); p0=(F(1),F(0))
# delta*_t = -cross(v,w)/cross(v,ea)
dstar = -F(cross(v,w), cross(v,ea)) if cross(v,ea)!=0 else None
print(f"  with w=(1,0), e_a=(0,1), v=(0,1): delta*_t = {dstar}")
for d in (F(1,120), F(1,1000), F(1,10**6), F(-3,200)):
    third = abs(F(cross(v,w))) / abs(cross(v, add(w, smul(d,ea))))
    print(f"    delta={str(d):>12}  third factor = {float(third):.12f}   {'>1 VIOLATES' if third>1 else 'safe'}")
