from fractions import Fraction as F
import random
random.seed(31337)
def rnd(): return F(random.randint(-10,10), random.randint(1,4))
def orientR(a,b,c): return (b[0]-a[0])*(c[1]-a[1]) - (b[1]-a[1])*(c[0]-a[0])
def nrm(u): return (-u[1],u[0])
def tilt(u,t): return (-u[1]+t*u[0], u[0]+t*u[1])
def dcoef(A,B,C,w,ca,cb,cc):
    return ((cb-ca)*w[0]*(C[1]-A[1]) + (B[0]-A[0])*((cc-ca)*w[1])
            - (cb-ca)*w[1]*(C[0]-A[0]) - (B[1]-A[1])*((cc-ca)*w[0]))

quad_nonzero=0; affine_fail=0; sign_fail=0; changed_beyond=0; beyond_tested=0; n=0
for _ in range(400):
    V=[(rnd(),rnd()) for _ in range(14)]
    i=random.randrange(7); t=F(random.randint(0,4))
    u=(V[(i+1)%7][0]-V[i][0], V[(i+1)%7][1]-V[i][1])
    if u==(0,0): continue
    w=tilt(u,t)
    cf=[F(1) if (k==i or k==(i+1)%7) else F(0) for k in range(14)]
    def sh(d,k): return (V[k][0]+d*cf[k]*w[0], V[k][1]+d*cf[k]*w[1])
    # collect nonzero determinants and the proved delta_0
    trips=[]
    for a in range(14):
      for b in range(14):
        for c in range(14):
            c0=orientR(V[a],V[b],V[c])
            if c0!=0:
                m=dcoef(V[a],V[b],V[c],w,cf[a],cf[b],cf[c])
                trips.append((a,b,c,c0,m))
    if not trips: continue
    n+=1
    d0=min(abs(c0)/(1+abs(m)) for _,_,_,c0,m in trips)
    # 1. affine identity exact, and no quadratic term
    for a,b,c,c0,m in trips[:200]:
        d=F(3,7)
        lhs=orientR(sh(d,a),sh(d,b),sh(d,c))
        if lhs != c0 + d*m: affine_fail+=1
    # 2. inside delta_0: every sign preserved
    for k in (F(1,2),F(99,100),F(-99,100)):
        d=k*d0
        for a,b,c,c0,m in trips:
            if c0*orientR(sh(d,a),sh(d,b),sh(d,c)) <= 0: sign_fail+=1
    # 3. beyond: does the order type actually change?
    for mult in (5,50,500):
        d=mult*d0; beyond_tested+=1
        if any(c0*orientR(sh(d,a),sh(d,b),sh(d,c)) <= 0 for a,b,c,c0,m in trips):
            changed_beyond+=1
    if n>=120: break
print("configurations        :", n)
print("affine identity fails :", affine_fail, " (quadratic term must vanish)")
print("sign flips inside d0  :", sign_fail)
print("order type changed beyond d0:", changed_beyond, "/", beyond_tested)
