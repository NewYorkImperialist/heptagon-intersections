from fractions import Fraction as F
import random
random.seed(303)
def rnd(): return F(random.randint(-9,9), random.randint(1,4))
def S2(d,a,b,y): return (-(d*a))*(y-d*b) < 0
def cc2(d,a,b,c,y,z): return (1 if S2(d,a,b,y) else 0)+(1 if S2(d,a,c,z) else 0)

n=0; bad=0; dist={}
for _ in range(600000):
    d=rnd(); a=rnd(); b=rnd(); c=rnd(); y=rnd(); z=rnd()
    if d*a==0: continue
    if not (abs(d*b)<abs(y) and abs(d*c)<abs(z)): continue
    n+=1
    s = cc2(d,a,b,c,y,z)+cc2(-d,a,b,c,y,z)
    dist[s]=dist.get(s,0)+1
    if s!=2: bad+=1
    if n>=150000: break
print("instances (b and c INDEPENDENT of a, i.e. genuine rotation):", n)
print("  sum != 2 :", bad)
print("  distribution:", dict(sorted(dist.items())))
# how often does the single-N model get it wrong?  (b=c=a is the translation case)
diff=0; m=0
for _ in range(600000):
    d=rnd(); a=rnd(); b=rnd(); c=rnd(); y=rnd(); z=rnd()
    if d*a==0: continue
    if not (abs(d*b)<abs(y) and abs(d*c)<abs(z)): continue
    if not (abs(d*a)<abs(y) and abs(d*a)<abs(z)): continue
    m+=1
    if cc2(d,a,b,c,y,z) != cc2(d,a,a,a,y,z): diff+=1
    if m>=100000: break
print("rotation vs translation model differ on", diff, "of", m,
      " <- the two models AGREE under the smallness hypotheses")
