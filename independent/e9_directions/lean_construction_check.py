from fractions import Fraction as F
import random
random.seed(555)
def rnd(): return F(random.randint(-9,9), random.randint(1,3))
def orientR(a,b,c): return (b[0]-a[0])*(c[1]-a[1]) - (b[1]-a[1])*(c[0]-a[0])
def pc(a,b,c,d):
    return orientR(a,b,c)*orientR(a,b,d)<0 and orientR(c,d,a)*orientR(c,d,b)<0
def cross(u,v): return u[0]*v[1]-u[1]*v[0]
O=(F(0),F(0))
EPS=(F(1,1000),F(1,2),F(1,10),F(9,10),F(1),F(3),F(100),F(10000))
TS=(F(1),F(1,2),F(1,10),F(99,100))

# A. the construction, APEX-ONLY model, t in (0,1], every epsilon > 0
n=0; fail=0
for _ in range(300000):
    ak=(rnd(),rnd()); bl=(rnd(),rnd())
    if cross(ak,bl)==0: continue
    n+=1
    for t in TS:
        for e in EPS:
            A=(e*(t*bl[0]-ak[0]), e*(t*bl[1]-ak[1]))
            if not pc(A,ak,O,bl): fail+=1
    if n>=1200: break
print("A. non-parallel pairs:",n,"x",len(TS),"t-values x",len(EPS),"epsilons")
print("   FAILURES:",fail)

# B. control: a_k parallel to b_l  =>  never a proper crossing
m=0; spur=0
for _ in range(400000):
    ak=(rnd(),rnd())
    if ak==(0,0): continue
    lam=F(random.randint(-5,5), random.randint(1,3))
    bl=(lam*ak[0], lam*ak[1])
    if cross(ak,bl)!=0: continue
    m+=1
    for t in TS:
        for e in EPS:
            A=(e*(t*bl[0]-ak[0]), e*(t*bl[1]-ak[1]))
            if pc(A,ak,O,bl): spur+=1
    if m>=1200: break
print("B. parallel pairs (control):",m)
print("   spurious crossings:",spur,"  <- must be 0")

# C. the general cone point really can fail:  t0 - s0 large, epsilon not small
bad=0; tot=0
for _ in range(200000):
    ak=(rnd(),rnd()); bl=(rnd(),rnd())
    if cross(ak,bl)==0: continue
    s0=F(1); t0=F(6)
    for e in (F(1,4),F(1,2),F(1)):
        A=(e*(t0*bl[0]-s0*ak[0]), e*(t0*bl[1]-s0*ak[1]))
        tot+=1
        if not pc(A,ak,O,bl): bad+=1
    if tot>=3000: break
print("C. general cone point s0=1,t0=6 at eps in {1/4,1/2,1}:")
print("   crossings LOST:",bad,"/",tot,"  <- must be > 0; this is why t<=1 is in the theorem")
