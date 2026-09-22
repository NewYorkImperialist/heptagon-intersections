from fractions import Fraction as F
import random
random.seed(20260922)

def rnd(): return F(random.randint(-12,12), random.randint(1,7))

def off(a,A,X): return -a[1]*(X[0]-A[0]) + a[0]*(X[1]-A[1])
def cross(u,v): return u[0]*v[1]-u[1]*v[0]
def ip(u,v): return u[0]*v[0]+u[1]*v[1]

bad_id = 0; bad_sig = 0; n = 0; skipped = 0
worst = None
for _ in range(40000):
    a=(rnd(),rnd()); A=(rnd(),rnd()); Y=(rnd(),rnd()); w=(rnd(),rnd())
    s=F(random.randint(1,99),100); d=F(random.randint(-9,9),random.randint(50,400))
    n2a = ip(a,a)
    if n2a==0 or d==0: skipped+=1; continue
    y = off(a,A,Y); N = cross(a,w)
    if y==0 or N==0: skipped+=1; continue
    X=(A[0]+s*a[0], A[1]+s*a[1])
    t = d*N/y
    Z=(X[0]+t*(Y[0]-X[0]), X[1]+t*(Y[1]-X[1]))
    # Z must lie on the shifted line {off = d*N}
    if off(a,A,Z) != d*N: bad_sig+=1
    mu = ((N/y)*ip(a,(Y[0]-X[0],Y[1]-X[1])) - ip(a,w))/n2a
    sig = s + d*mu
    L=(Z[0]-d*w[0], Z[1]-d*w[1])
    R=(A[0]+sig*a[0], A[1]+sig*a[1])
    if L!=R: bad_id+=1
    n+=1
    # how large can |d*mu| get before sigma leaves (0,1)?
    if 0 < sig < 1: pass
    else:
        if worst is None: worst=(float(s),float(d),float(mu),float(sig))
print("instances      :", n, " skipped:", skipped)
print("identity fails :", bad_id)
print("Z off shifted  :", bad_sig)
print("example sigma outside (0,1):", worst)

# control: the identity must FAIL if mu is perturbed
ctrl=0
for _ in range(2000):
    a=(rnd(),rnd()); A=(rnd(),rnd()); Y=(rnd(),rnd()); w=(rnd(),rnd())
    s=F(random.randint(1,99),100); d=F(random.randint(1,9),random.randint(50,400))
    n2a=ip(a,a); 
    if n2a==0: continue
    y=off(a,A,Y); N=cross(a,w)
    if y==0 or N==0: continue
    X=(A[0]+s*a[0],A[1]+s*a[1]); t=d*N/y
    Z=(X[0]+t*(Y[0]-X[0]),X[1]+t*(Y[1]-X[1]))
    mu=((N/y)*ip(a,(Y[0]-X[0],Y[1]-X[1]))-ip(a,w))/n2a + 1   # WRONG mu
    sig=s+d*mu
    if (Z[0]-d*w[0],Z[1]-d*w[1]) != (A[0]+sig*a[0],A[1]+sig*a[1]): ctrl+=1
print("control (wrong mu) fires:", ctrl, "/2000")
