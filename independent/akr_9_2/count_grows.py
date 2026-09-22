from fractions import Fraction as F
import random
random.seed(9001)
def rnd(): return F(random.randint(-9,9), random.randint(1,3))
def orientR(a,b,c): return (b[0]-a[0])*(c[1]-a[1]) - (b[1]-a[1])*(c[0]-a[0])
def pc(a,b,c,d):
    return orientR(a,b,c)*orientR(a,b,d) < 0 and orientR(c,d,a)*orientR(c,d,b) < 0
def nrm(u): return (-u[1],u[0])
def tilt(u,t): return (-u[1]+t*u[0], u[0]+t*u[1])
def off(u,A,X): return -u[1]*(X[0]-A[0]) + u[0]*(X[1]-A[1])

def crossPairs(P,Q):
    return {(a,b) for a in range(7) for b in range(7)
            if pc(P[a],P[(a+1)%7],Q[b],Q[(b+1)%7])}

tested=0; viol=0; strict=0; skipped=0
for _ in range(300000):
    P=[(rnd(),rnd()) for _ in range(7)]
    Q=[(rnd(),rnd()) for _ in range(7)]
    i=random.randrange(7)
    A,B=P[i],P[(i+1)%7]
    u=(B[0]-A[0], B[1]-A[1])
    if u==(0,0): continue
    # force one Q-vertex onto P-side i (strictly interior)
    j=random.randrange(7)
    s=F(random.randint(1,9),10)
    Q[j]=(A[0]+s*u[0], A[1]+s*u[1])
    D=[j]
    # hypotheses of the theorem
    ok=True
    for jj in D:
        y=off(u,A,Q[(jj-1)%7]); z=off(u,A,Q[(jj+1)%7])
        if y==0 or z==0: ok=False; break
        if not (orientR(Q[(jj-1)%7],Q[jj],A)*orientR(Q[(jj-1)%7],Q[jj],B) < 0): ok=False; break
        if not (orientR(Q[jj],Q[(jj+1)%7],A)*orientR(Q[jj],Q[(jj+1)%7],B) < 0): ok=False; break
    if not ok: skipped+=1; continue
    before=len(crossPairs(P,Q))
    t=F(random.randint(0,3)); w=tilt(u,t)
    found=False; grew=False
    for mag in (F(1,4),F(1,16),F(1,64),F(1,256),F(1,1024),F(1,4096)):
        for sgn in (1,-1):
            d=sgn*mag
            P2=list(P)
            P2[i]=(P[i][0]+d*w[0], P[i][1]+d*w[1])
            P2[(i+1)%7]=(P[(i+1)%7][0]+d*w[0], P[(i+1)%7][1]+d*w[1])
            after=len(crossPairs(P2,Q))
            if before + len(D) <= after:
                found=True
                if before + len(D) < after: grew=True
        if found: break
    tested+=1
    if not found: viol+=1
    if grew: strict+=1
    if tested>=1500: break
print("configs with a forced degeneracy meeting the hypotheses:", tested,
      " (skipped", skipped, ")")
print("VIOLATIONS (no sign/magnitude achieved before+|D| <= after):", viol)
print("cases where the growth was strictly more than |D|:", strict)
