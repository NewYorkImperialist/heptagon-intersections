from fractions import Fraction as F
import random
random.seed(11)
def rnd(): return F(random.randint(-12,12), random.randint(1,7))
def off(a,A,X): return -a[1]*(X[0]-A[0]) + a[0]*(X[1]-A[1])
def ip(u,v): return u[0]*v[0]+u[1]*v[1]
def nrm(u): return (-u[1], u[0])

bad=0; badb=0; n=0
for _ in range(30000):
    a=(rnd(),rnd()); A=(rnd(),rnd()); Y=(rnd(),rnd())
    s=F(random.randint(1,99),100); d=F(random.randint(-9,9),random.randint(50,400))
    n2=ip(a,a); y=off(a,A,Y)
    if n2==0 or y==0: continue
    w=nrm(a)
    X=(A[0]+s*a[0], A[1]+s*a[1])
    t=d*n2/y
    nu=d*(a[0]*(Y[0]-A[0]-s*a[0]) + a[1]*(Y[1]-A[1]-s*a[1]))/y
    L=(X[0]+t*(Y[0]-X[0])-d*w[0], X[1]+t*(Y[1]-X[1])-d*w[1])
    R=(A[0]+(s+nu)*a[0], A[1]+(s+nu)*a[1])
    if L!=R: bad+=1
    # the bound, in the regime where |y| >= 1
    if abs(y)>=1:
        lhs=abs(nu)
        rhs=abs(d)*(abs(a[0]*(Y[0]-A[0])+a[1]*(Y[1]-A[1])) + n2)
        if lhs>rhs: badb+=1
    n+=1
print("tilted instances:", n, " param identity fails:", bad, " bound violated:", badb)
# control: wrong nu must break the identity
c=0; m=0
for _ in range(3000):
    a=(rnd(),rnd()); A=(rnd(),rnd()); Y=(rnd(),rnd())
    s=F(random.randint(1,99),100); d=F(random.randint(1,9),random.randint(50,400))
    n2=ip(a,a); y=off(a,A,Y)
    if n2==0 or y==0: continue
    m+=1
    w=nrm(a); X=(A[0]+s*a[0],A[1]+s*a[1]); t=d*n2/y
    nu=d*(a[0]*(Y[0]-A[0]-s*a[0]) + a[1]*(Y[1]-A[1]-s*a[1]))/y + 1
    L=(X[0]+t*(Y[0]-X[0])-d*w[0], X[1]+t*(Y[1]-X[1])-d*w[1])
    R=(A[0]+(s+nu)*a[0], A[1]+(s+nu)*a[1])
    if L!=R: c+=1
print("control fires:", c, "/", m)
