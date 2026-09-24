from fractions import Fraction as F

def orientR(a,b,c): return (b[0]-a[0])*(c[1]-a[1])-(b[1]-a[1])*(c[0]-a[0])
def onseg(a,b,x):
    if orientR(a,b,x)!=0: return False
    return min(a[0],b[0])<=x[0]<=max(a[0],b[0]) and min(a[1],b[1])<=x[1]<=max(a[1],b[1])
def pc(a,b,c,d): return orientR(a,b,c)*orientR(a,b,d)<0 and orientR(c,d,a)*orientR(c,d,b)<0

def seg_int(a,b,c,d):
    """Exact intersection of closed segments [a,b],[c,d]:
       returns ('none',), ('pt',p) or ('seg',)."""
    d1=(b[0]-a[0],b[1]-a[1]); d2=(d[0]-c[0],d[1]-c[1])
    den=d1[0]*d2[1]-d1[1]*d2[0]
    if den!=0:
        t=((c[0]-a[0])*d2[1]-(c[1]-a[1])*d2[0])/den
        u=((c[0]-a[0])*d1[1]-(c[1]-a[1])*d1[0])/den
        if 0<=t<=1 and 0<=u<=1:
            return ('pt',(a[0]+t*d1[0], a[1]+t*d1[1]))
        return ('none',)
    if orientR(a,b,c)!=0: return ('none',)
    ax=0 if d1[0]!=0 else 1
    lo1,hi1=sorted([a[ax],b[ax]]); lo2,hi2=sorted([c[ax],d[ax]])
    lo=max(lo1,lo2); hi=min(hi1,hi2)
    if lo>hi: return ('none',)
    if lo<hi: return ('seg',)
    # single shared point
    for p in (a,b,c,d):
        if p[ax]==lo and onseg(a,b,p) and onseg(c,d,p): return ('pt',p)
    return ('none',)

def simple(P):
    n=7
    for a in range(n):
        if P[a]==P[(a+1)%n]: return False,"repeated adjacent vertex"
    for a in range(n):
        for b in range(a+1,n):
            A,B=P[a],P[(a+1)%n]; C,D=P[b],P[(b+1)%n]
            adj=((a+1)%n==b) or ((b+1)%n==a); sh=set([A,B])&set([C,D])
            if adj:
                if orientR(A,B,C)==0 and orientR(A,B,D)==0: return False,"collinear adjacent"
                for x in (C,D):
                    if x not in sh and onseg(A,B,x): return False,"adjacent touch"
                for x in (A,B):
                    if x not in sh and onseg(C,D,x): return False,"adjacent touch"
            else:
                if pc(A,B,C,D): return False,"self-crossing"
                for x in (C,D):
                    if onseg(A,B,x): return False,"non-adjacent touch"
                for x in (A,B):
                    if onseg(C,D,x): return False,"non-adjacent touch"
    return True,"ok"

def points9(P,Q):
    pts=set(); 
    for k in range(7):
        for j in range(7):
            r=seg_int(P[k],P[(k+1)%7],Q[j],Q[(j+1)%7])
            if r[0]=='seg': return None
            if r[0]=='pt': pts.add(r[1])
    return pts

def crossPairs(P,Q):
    return sum(1 for k in range(7) for j in range(7)
               if pc(P[k],P[(k+1)%7],Q[j],Q[(j+1)%7]))

def coincidences(P,Q):
    return [(v,j) for v in range(7) for j in range(7) if P[v]==Q[j]]

def degens(P,Q):
    sd=[(k,j) for k in range(7) for j in range(7) if onseg(P[k],P[(k+1)%7],Q[j])]
    sp=[(m,v) for m in range(7) for v in range(7) if onseg(Q[m],Q[(m+1)%7],P[v])]
    return sd,sp

def gp(P,Q):
    V=P+Q
    for a in range(14):
        for b in range(a+1,14):
            for c in range(b+1,14):
                if orientR(V[a],V[b],V[c])==0: return False,(a,b,c)
    return True,None

def pt(t): return (F(t[0]),F(t[1]))

def report(name,P,Q):
    P=[pt(v) for v in P]; Q=[pt(v) for v in Q]
    sP,rP=simple(P); sQ,rQ=simple(Q)
    print(f"--- {name} ---")
    print("  P simple:",sP,rP," Q simple:",sQ,rQ)
    co=coincidences(P,Q)
    print("  coincidences:",co)
    pts=points9(P,Q)
    if pts is None:
        print("  INFINITE intersection (overlap) -> (Fin) FAILS"); return
    sd,sp=degens(P,Q)
    print("  |points9| =",len(pts),"   crossPairs =",crossPairs(P,Q),
          "  segDeg =",len(sd),"  segDegP =",len(sp))
    g,tri=gp(P,Q)
    print("  general position:",g, "" if g else f"(collinear triple {tri})")

# 1. the repo certificate sanity: not available here, skip.
# 2. claimed 37-point DEGENERATE configuration
report("claimed 37-point degenerate",
  [(373,157),(F(9509,45),F(7529,45)),(369,182),(88,157),(327,282),(60,272),(372,298)],
  [(344,24),(89,303),(345,19),(373,214),(270,338),(325,93),(192,284)])
print()
# 3. claimed NEW 38-point general-position configuration
report("claimed NEW 38-point config",
  [(16605,7785),(9907,6577),(19215,4950),(9045,6120),(15750,10350),(2925,12330),(15480,12240)],
  [(14535,2160),(5445,12645),(16740,-990),(16515,8775),(11610,13590),(15615,3150),(10170,15525)])
