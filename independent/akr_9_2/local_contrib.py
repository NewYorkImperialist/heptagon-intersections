from fractions import Fraction as F
import random
random.seed(77)
def rnd(): return F(random.randint(-9,9), random.randint(1,4))
def straddle(d,N,y): return (-(d*N))*(y-d*N) < 0
def crossCount(d,N,y,z): return (1 if straddle(d,N,y) else 0) + (1 if straddle(d,N,z) else 0)
def localContrib(d,N,y,z): return 1 if d*N==0 else crossCount(d,N,y,z)

bad=0; n=0; zeroN=0; exact2=0; sums={}
for _ in range(400000):
    N = F(0) if random.random()<0.25 else abs(rnd())
    if N<0: continue
    d = rnd()
    if d==0: continue
    y = rnd(); z = rnd()
    if y==0 or z==0: continue
    # the smallness hypotheses
    if not (abs(d)*N < abs(y) and abs(d)*N < abs(z)): continue
    n+=1
    s = localContrib(d,N,y,z) + localContrib(-d,N,y,z)
    sums[s] = sums.get(s,0)+1
    if s < 2: bad+=1
    if N==0: zeroN+=1
    if s==2: exact2+=1
    if n>=200000: break
print("instances satisfying the hypotheses :", n, " (of which N=0:", zeroN, ")")
print("VIOLATIONS of 2 <= sum              :", bad)
print("distribution of the sum             :", dict(sorted(sums.items())))
# control: drop the smallness hypothesis and the bound should fail sometimes
c=0; m=0
for _ in range(400000):
    N = abs(rnd())
    if N<=0: continue
    d = rnd()
    if d==0: continue
    y=rnd(); z=rnd()
    if y==0 or z==0: continue
    if abs(d)*N < abs(y) and abs(d)*N < abs(z): continue   # deliberately violate
    m+=1
    if localContrib(d,N,y,z) + localContrib(-d,N,y,z) < 2: c+=1
    if m>=100000: break
print("control (smallness violated):", c, "/", m, " sums below 2  <- must be > 0")
