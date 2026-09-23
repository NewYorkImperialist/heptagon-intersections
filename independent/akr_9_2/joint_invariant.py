from fractions import Fraction as F
import random
random.seed(2024)
def rnd(): return F(random.randint(-9,9), random.randint(1,3))
def orientR(a,b,c): return (b[0]-a[0])*(c[1]-a[1]) - (b[1]-a[1])*(c[0]-a[0])
def pc(a,b,c,d):
    return orientR(a,b,c)*orientR(a,b,d)<0 and orientR(c,d,a)*orientR(c,d,b)<0
def onseg(a,b,x):
    if orientR(a,b,x)!=0: return False
    return min(a[0],b[0])<=x[0]<=max(a[0],b[0]) and min(a[1],b[1])<=x[1]<=max(a[1],b[1])
def tilt(u,t): return (-u[1]+t*u[0], u[0]+t*u[1])
def crossPairs(P,Q):
    return {(k,j) for k in range(7) for j in range(7) if pc(P[k],P[(k+1)%7],Q[j],Q[(j+1)%7])}
def segDeg(P,Q):  return {(k,j) for k in range(7) for j in range(7) if onseg(P[k],P[(k+1)%7],Q[j])}
def segDegP(P,Q): return {(j,k) for j in range(7) for k in range(7) if onseg(Q[j],Q[(j+1)%7],P[k])}
def total(P,Q): return len(crossPairs(P,Q))+len(segDeg(P,Q))+len(segDegP(P,Q))
def coincs(P,Q): return {(k,j) for k in range(7) for j in range(7) if P[k]==Q[j]}
def selfint(Poly):     # non-adjacent sides of one polygon meeting
    for a in range(7):
        for b in range(7):
            if a==b or (a+1)%7==b or (b+1)%7==a: continue
            if pc(Poly[a],Poly[(a+1)%7],Poly[b],Poly[(b+1)%7]): return True
    return False

MAGS=[F(1,2**e) for e in range(6,26)]
tested=0; drops=0; reasons={'coincidence':0,'self-intersecting':0,'unexplained':0}
examples=[]
for _ in range(600000):
    P=[(rnd(),rnd()) for _ in range(7)]; Q=[(rnd(),rnd()) for _ in range(7)]
    for _ in range(random.randint(1,2)):
        i=random.randrange(7); j=random.randrange(7)
        A,B=P[i],P[(i+1)%7]; u=(B[0]-A[0],B[1]-A[1])
        if u==(0,0): continue
        s=F(random.randint(2,8),10); Q[j]=(A[0]+s*u[0], A[1]+s*u[1])
    if len(segDeg(P,Q))+len(segDegP(P,Q))==0: continue
    i=random.randrange(7); A,B=P[i],P[(i+1)%7]; u=(B[0]-A[0],B[1]-A[1])
    if u==(0,0): continue
    t=F(random.randint(0,3)); w=tilt(u,t)
    before=total(P,Q); tested+=1
    best=None
    for mag in MAGS:
        for sgn in (1,-1):
            d=sgn*mag
            P2=list(P); P2[i]=(P[i][0]+d*w[0],P[i][1]+d*w[1])
            P2[(i+1)%7]=(P[(i+1)%7][0]+d*w[0],P[(i+1)%7][1]+d*w[1])
            aft=total(P2,Q)
            if best is None or aft>best: best=aft
    if best<before:
        drops+=1
        if coincs(P,Q): reasons['coincidence']+=1
        elif selfint(P) or selfint(Q): reasons['self-intersecting']+=1
        else:
            reasons['unexplained']+=1
            if len(examples)<1: examples.append((before,best,i,t))
    if tested>=1200: break
print("shifts tested:", tested, " with 20 magnitudes down to 2^-25, both signs")
print("total never maintained:", drops)
print("  attributable to a vertex-vertex COINCIDENCE   :", reasons['coincidence'])
print("  attributable to a SELF-INTERSECTING polygon   :", reasons['self-intersecting'])
print("  UNEXPLAINED                                   :", reasons['unexplained'])
print("first unexplained (before, best, side, t):", examples)
