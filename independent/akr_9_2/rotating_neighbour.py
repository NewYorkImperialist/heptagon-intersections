from fractions import Fraction as F
import random
random.seed(7)
def rnd(): return F(random.randint(-10,10), random.randint(1,5))
def orientR(a,b,c): return (b[0]-a[0])*(c[1]-a[1]) - (b[1]-a[1])*(c[0]-a[0])
def pc(a,b,c,d):
    return orientR(a,b,c)*orientR(a,b,d) < 0 and orientR(c,d,a)*orientR(c,d,b) < 0
def mov(A,w,d): return (A[0]+d*w[0], A[1]+d*w[1])

inside_fail=0; n=0; lost_beyond=0; tested_beyond=0
for _ in range(200000):
    F_=(rnd(),rnd()); A=(rnd(),rnd()); C=(rnd(),rnd()); D=(rnd(),rnd()); w=(rnd(),rnd())
    if not pc(F_,A,C,D): continue
    n+=1
    c0=orientR(F_,A,C); c1=orientR(F_,A,D); c2=orientR(C,D,A)
    m0=w[0]*(C[1]-F_[1]) - w[1]*(C[0]-F_[0])
    m1=w[0]*(D[1]-F_[1]) - w[1]*(D[0]-F_[0])
    m2=(D[0]-C[0])*w[1] - (D[1]-C[1])*w[0]
    d0=min(abs(c0)/(1+abs(m0)), abs(c1)/(1+abs(m1)), abs(c2)/(1+abs(m2)))
    # theorem: every |delta| < d0 keeps it proper
    for k in (F(1,2), F(9,10), F(99,100), F(-1,2), F(-99,100), F(1,7)):
        d = k*d0
        if abs(d) < d0 and not pc(F_,mov(A,w,d),C,D): inside_fail+=1
    # is the bound doing work?  try much larger shifts
    for mult in (2, 5, 20, 100):
        d = mult*d0
        tested_beyond+=1
        if not pc(F_,mov(A,w,d),C,D): lost_beyond+=1
    if n>=4000: break
print("crossings tested        :", n)
print("FAILURES inside delta_0 :", inside_fail)
print("crossings lost beyond   :", lost_beyond, "/", tested_beyond,
      "(shows the bound is not vacuous)")
