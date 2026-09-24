from fractions import Fraction as F
def orientR(a,b,c): return (b[0]-a[0])*(c[1]-a[1])-(b[1]-a[1])*(c[0]-a[0])
def onseg(a,b,x):
    if orientR(a,b,x)!=0: return False
    return min(a[0],b[0])<=x[0]<=max(a[0],b[0]) and min(a[1],b[1])<=x[1]<=max(a[1],b[1])
def pc(a,b,c,d): return orientR(a,b,c)*orientR(a,b,d)<0 and orientR(c,d,a)*orientR(c,d,b)<0
def simple(P):
    for a in range(7):
        if P[a]==P[(a+1)%7]: return False
    for a in range(7):
        for b in range(a+1,7):
            A,B=P[a],P[(a+1)%7]; C,D=P[b],P[(b+1)%7]
            adj=((a+1)%7==b) or ((b+1)%7==a); sh=set([A,B])&set([C,D])
            if adj:
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
def degpts(P,Q):
    s=set()
    for x in set(P)|set(Q):
        if any(onseg(P[k],P[(k+1)%7],x) for k in range(7)) and \
           any(onseg(Q[m],Q[(m+1)%7],x) for m in range(7)): s.add(x)
    return s
def cross(P,Q): return sum(1 for k in range(7) for j in range(7)
                           if pc(P[k],P[(k+1)%7],Q[j],Q[(j+1)%7]))
def coinc(P,Q): return [(v,j) for v in range(7) for j in range(7) if P[v]==Q[j]]
def pt(t): return (F(t[0]),F(t[1]))

P=[pt(x) for x in [(-4,1),(0,2),(3,5),(-5,3),(-5,0),(1,-2),(1,0)]]
Q=[pt(x) for x in [(2,1),(-2,-1),(5,-2),(0,6),(-5,2),(2,2),(-5,0)]]
v=4
print("P simple:",simple(P)," Q simple:",simple(Q)," (Fin):",finite(P,Q))
print("coincidences:",coinc(P,Q))
print("apex collinear with neighbours? orientR(P[v-1],P[v],P[v+1]) =",
      orientR(P[(v-1)%7],P[v],P[(v+1)%7]))
D0=degpts(P,Q); C0=cross(P,Q); M0=C0+len(D0)
print("crossPairs =",C0,"  degPts =",sorted((int(a),int(b)) for a,b in D0),"  M_pt =",M0)
print()
for name,base in (("slide A (E = P[v]-P[v+1])",P[(v+1)%7]),
                  ("slide B (E = P[v]-P[v-1])",P[(v-1)%7])):
    E=(P[v][0]-base[0],P[v][1]-base[1])
    print(f"{name}   E = {(int(E[0]),int(E[1]))}")
    for e in (F(1,10**6),F(1,10**12),F(1,10**24)):
        P2=list(P); P2[v]=(P[v][0]+e*E[0],P[v][1]+e*E[1])
        adm = simple(P2) and finite(P2,Q) and len(coinc(P2,Q))<len(coinc(P,Q))
        if not adm:
            print(f"   e=1/{1//e if e else 0}: NOT admissible"); continue
        D1=degpts(P2,Q); C1=cross(P2,Q); M1=C1+len(D1)
        print(f"   e≈{float(e):.0e}: admissible  cross {C0}->{C1}  degPts {len(D0)}->{len(D1)}"
              f"  M_pt {M0}->{M1}   lost={sorted((int(a),int(b)) for a,b in (D0-D1))}")
print()
print("VERDICT: if both slides give M_pt 11 -> 10, the slide-only route is REFUTED.")
