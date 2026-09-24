from fractions import Fraction as F
from itertools import product

def orientR(a,b,c): return (b[0]-a[0])*(c[1]-a[1])-(b[1]-a[1])*(c[0]-a[0])
def pc(a,b,c,d):
    return orientR(a,b,c)*orientR(a,b,d)<0 and orientR(c,d,a)*orientR(c,d,b)<0
def onseg(a,b,x):
    if orientR(a,b,x)!=0: return False
    return min(a[0],b[0])<=x[0]<=max(a[0],b[0]) and min(a[1],b[1])<=x[1]<=max(a[1],b[1])
def simple(P):
    n=7
    for a in range(n):
        if P[a]==P[(a+1)%n]: return False
    for a in range(n):
        for b in range(a+1,n):
            A,B=P[a],P[(a+1)%n]; C,D=P[b],P[(b+1)%n]
            adj = ((a+1)%n==b) or ((b+1)%n==a)
            if adj:
                # adjacent sides may meet ONLY at the shared vertex
                sh = set([A,B])&set([C,D])
                if orientR(A,B,C)==0 and orientR(A,B,D)==0: return False
                for x in (C,D):
                    if x not in sh and onseg(A,B,x): return False
                for x in (A,B):
                    if x not in sh and onseg(C,D,x): return False
            else:
                if pc(A,B,C,D): return False
                for x in (C,D):
                    if onseg(A,B,x): return False
                for x in (A,B):
                    if onseg(C,D,x): return False
    return True
def finite(P,Q):
    for k in range(7):
        A,B=P[k],P[(k+1)%7]
        for j in range(7):
            C,D=Q[j],Q[(j+1)%7]
            if orientR(A,B,C)!=0 or orientR(A,B,D)!=0: continue
            u=(B[0]-A[0],B[1]-A[1]); ax=0 if u[0]!=0 else 1
            lo1,hi1=sorted([A[ax],B[ax]]); lo2,hi2=sorted([C[ax],D[ax]])
            if max(lo1,lo2)<min(hi1,hi2): return False
    return True
def meas(P,Q):
    c=sum(1 for k in range(7) for j in range(7) if pc(P[k],P[(k+1)%7],Q[j],Q[(j+1)%7]))
    sd=sum(1 for k in range(7) for j in range(7) if onseg(P[k],P[(k+1)%7],Q[j]))
    sdp=sum(1 for m in range(7) for v in range(7) if onseg(Q[m],Q[(m+1)%7],P[v]))
    return c,sd,sdp
def coinc(P,Q): return sum(1 for v in range(7) for j in range(7) if P[v]==Q[j])
def pt(t): return (F(t[0]),F(t[1]))

P=[pt(v) for v in [(0,0),(6,1),(10,5),(3,8),(-3,8),(-10,5),(-6,1)]]
Q=[pt(v) for v in [(0,0),(1,-6),(5,-10),(8,-3),(8,3),(5,10),(1,6)]]
print("P simple:",simple(P)," Q simple:",simple(Q)," finite:",finite(P,Q))
c,sd,sdp=meas(P,Q); M0=c+sd+sdp
print(f"base: cross={c} segDeg={sd} segDegP={sdp} MEASURE={M0} coinc={coinc(P,Q)}")
print("agent claimed: cross=1 segDeg=3 segDegP=3 MEASURE=7 coinc=1")
print()
# sweep displacements d applied to P[0] (apex i=0)
best=None; adm=0; results={}
step=F(1,16)
rng=[F(a,16) for a in range(-32,33)]
for dx in rng:
    for dy in rng:
        if dx==0 and dy==0: continue
        P2=list(P); P2[0]=(P[0][0]+dx,P[0][1]+dy)
        if not simple(P2): continue
        if not finite(P2,Q): continue
        if coinc(P2,Q)>=coinc(P,Q): continue      # must strictly decrease
        adm+=1
        c2,s2,sp2=meas(P2,Q); M=c2+s2+sp2
        d=M-M0
        results[d]=results.get(d,0)+1
        if best is None or d>best[0]: best=(d,dx,dy,c2,s2,sp2)
print(f"admissible displacements in the |d|<=2 box at step 1/16 : {adm}")
print("delta-MEASURE histogram :", dict(sorted(results.items())))
print("best :", best)
print()
print("VERDICT:", "CONFIRMED - no admissible move preserves MEASURE" if best and best[0]<0
      else "NOT CONFIRMED - some move achieves delta >= 0")

print()
print("="*74)
print("SAME WITNESS, but scored with M_pt = |crossPairs| + |degPts|")
print("="*74)
def degpts(P,Q):
    s=set()
    for x in set(P)|set(Q):
        onP=any(onseg(P[k],P[(k+1)%7],x) for k in range(7))
        onQ=any(onseg(Q[m],Q[(m+1)%7],x) for m in range(7))
        if onP and onQ: s.add(x)
    return s
c0,_,_=meas(P,Q); d0=len(degpts(P,Q)); N0=c0+d0
print(f"base: cross={c0} degPts={d0} M_pt={N0}")
best2=None; hist={}
for dx in rng:
    for dy in rng:
        if dx==0 and dy==0: continue
        P2=list(P); P2[0]=(P[0][0]+dx,P[0][1]+dy)
        if not simple(P2): continue
        if not finite(P2,Q): continue
        if coinc(P2,Q)>=coinc(P,Q): continue
        c2,_,_=meas(P2,Q); d2=len(degpts(P2,Q)); N=c2+d2
        dd=N-N0
        hist[dd]=hist.get(dd,0)+1
        if best2 is None or dd>best2[0]: best2=(dd,dx,dy,c2,d2)
print("delta-M_pt histogram :", dict(sorted(hist.items())))
print("best :", best2)
print()
print("VERDICT for M_pt:", "SURVIVES - some admissible move has delta >= 0"
      if best2 and best2[0]>=0 else "ALSO REFUTED on this witness")
