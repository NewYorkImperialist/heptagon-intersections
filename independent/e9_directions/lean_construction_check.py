from fractions import Fraction as F
import random
random.seed(555)
def rnd(): return F(random.randint(-9,9), random.randint(1,3))
def orientR(a,b,c): return (b[0]-a[0])*(c[1]-a[1]) - (b[1]-a[1])*(c[0]-a[0])
def pc(a,b,c,d):
    return orientR(a,b,c)*orientR(a,b,d) < 0 and orientR(c,d,a)*orientR(c,d,b) < 0
def cross(u,v): return u[0]*v[1]-u[1]*v[0]

tested=0; fail=0; ctrl_tested=0; ctrl_cross=0
for _ in range(200000):
    ak=(rnd(),rnd()); bl=(rnd(),rnd())
    if cross(ak,bl)==0: continue
    tested+=1
    E=(bl[0]-ak[0], bl[1]-ak[1])
    for e in (F(1,2),F(1,10),F(9,10),F(1,100),F(99,100),F(1,3)):
        P1=(e*E[0], e*E[1]); P2=(e*E[0]+ak[0], e*E[1]+ak[1])
        if not pc(P1,P2,(F(0),F(0)),bl): fail+=1
    if tested>=3000: break
# control: when cross(ak,bl)==0 no epsilon should ever work
for _ in range(400000):
    ak=(rnd(),rnd())
    if ak==(0,0): continue
    m=F(random.randint(-5,5), random.randint(1,3))
    bl=(m*ak[0], m*ak[1])           # forced parallel
    if cross(ak,bl)!=0: continue
    E=(bl[0]-ak[0], bl[1]-ak[1])
    ctrl_tested+=1
    for e in (F(1,2),F(1,10),F(9,10),F(1,3)):
        P1=(e*E[0], e*E[1]); P2=(e*E[0]+ak[0], e*E[1]+ak[1])
        if pc(P1,P2,(F(0),F(0)),bl): ctrl_cross+=1
    if ctrl_tested>=3000: break
print("non-parallel (ak,bl) pairs :", tested, " x 6 epsilons")
print("  FAILURES to cross properly :", fail)
print("parallel pairs (control)    :", ctrl_tested, " x 4 epsilons")
print("  spurious proper crossings  :", ctrl_cross, "  <- must be 0")
