"""FULL EXACT CERTIFICATE: a genuine pair of simple polygons in which AKR's
Observation 6 (the Axis Property), as printed, FAILS."""
from fractions import Fraction as F
import itertools
Pv=[(2,0),(3,4),(-2,0)]
Qv=[(4,-4),(-3,1),(0,-1),(3,3),(2,1)]
def det(p,q,r): return (q[0]-p[0])*(r[1]-p[1])-(q[1]-p[1])*(r[0]-p[0])
def sgn(x): return (x>0)-(x<0)
def on(a,b,x): return det(a,b,x)==0 and min(a[0],b[0])<=x[0]<=max(a[0],b[0]) and min(a[1],b[1])<=x[1]<=max(a[1],b[1])
def segint(s,t):
    p,q=s;r,w=t
    if sgn(det(p,q,r))*sgn(det(p,q,w))<0 and sgn(det(r,w,p))*sgn(det(r,w,q))<0: return True
    return on(p,q,r) or on(p,q,w) or on(r,w,p) or on(r,w,q)
Ps=[(Pv[i],Pv[(i+1)%3]) for i in range(3)]
Qs=[(Qv[j],Qv[(j+1)%5]) for j in range(5)]
print("P (triangle) sides:"); [print("   p%d = %s"%(i,Ps[i])) for i in range(3)]
print("Q (pentagon) sides:"); [print("   q%d = %s"%(j,Qs[j])) for j in range(5)]
# simplicity
def simple(S):
    n=len(S)
    for i in range(n):
        for j in range(i+1,n):
            if j==i+1 or (i==0 and j==n-1):
                if len(set(S[i])&set(S[j]))!=1: return False
                continue
            if segint(S[i],S[j]): return False
    return True
print("\nP simple:",simple(Ps),"   Q simple:",simple(Qs))
V=Pv+Qv
print("14/8 vertices distinct:",len(set(V))==len(V))
print("no 3 of the 8 combined vertices collinear (GP2):",all(det(*t)!=0 for t in itertools.combinations(V,3)))
gp1=[(v,s) for v in Pv for s in Qs if on(s[0],s[1],v)]+[(v,s) for v in Qv for s in Ps if on(s[0],s[1],v)]
print("no vertex of one polygon on the other (GP1):",not gp1)
print("no two of the 8 sides parallel (GP3):",all(det((0,0),(b[0]-a[0],b[1]-a[1]),(d[0]-c[0],d[1]-c[1]))!=0
      for (a,b),(c,d) in itertools.combinations(Ps+Qs,2)))
print("\nDisjointness graph G^D  (edge = the two sides are DISJOINT):")
ED=[]
for i in range(3):
    row=[]
    for j in range(5):
        d = not segint(Ps[i],Qs[j])
        row.append("E" if d else ".")
        if d: ED.append((i,j))
    print("   p%d : %s"%(i," ".join(row)))
print("   (E = disjoint = edge of G^D,  . = they cross)")
par=list(range(8))
def find(x):
    while par[x]!=x: par[x]=par[par[x]]; x=par[x]
    return x
for i,j in ED:
    A,B=find(i),find(3+j)
    if A!=B: par[A]=B
comp={}
for x in range(8): comp.setdefault(find(x),[]).append(("p%d"%x) if x<3 else ("q%d"%(x-3)))
print("components:",list(comp.values()))
print("CC(p0) != CC(p1) :", find(0)!=find(1))
a,b=Ps[0],Ps[1]; A,B=Qs[0],Qs[4]
print("\nThe consecutive P-pair  a=p0, b=p1  (shared vertex %s)"%str(set(a)&set(b)))
print("The consecutive Q-pair  A=q0, B=q4  (shared vertex %s)"%str(set(A)&set(B)))
print("  (p0,q0) in E^D  [a,A disjoint] :", not segint(a,A))
print("  (p1,q4) in E^D  [b,B disjoint] :", not segint(b,B))
print("  => q0,q4 is ASSOCIATED to p0,p1 under AKR's printed definition")
print("  (p0,q4) NOT in E^D [a,B cross]  :", segint(a,B), "   <- Lemma 5's cross non-edge (N1)")
print("  (p1,q0) NOT in E^D [b,A cross]  :", segint(b,A), "   <- Lemma 5's cross non-edge (N2)")
o=(set(a)&set(b)).pop(); w=(set(A)&set(B)).pop()
ra=a[1] if a[0]==o else a[0]; rb=b[1] if b[0]==o else b[0]
rA=A[1] if A[0]==w else A[0]; rB=B[1] if B[0]==w else B[0]
def in_cone(x,v,s2,t2):
    u=(s2[0]-v[0],s2[1]-v[1]); z=(t2[0]-v[0],t2[1]-v[1]); y=(x[0]-v[0],x[1]-v[1])
    D=u[0]*z[1]-u[1]*z[0]
    s=F(y[0]*z[1]-y[1]*z[0],D); t=F(u[0]*y[1]-u[1]*y[0],D)
    return s>=0 and t>=0
print("\n  I(a,b) =",o,"   I(A,B) =",w)
print("  hooking?  I(A,B) in Cone(a,b) :",in_cone(w,o,ra,rb))
print("  hooked ?  I(a,b) in Cone(A,B) :",in_cone(o,w,rA,rB))
print("  => the pair is NEITHER hooking NOR hooked; Lemma 5's cone dichotomy FAILS for it")
side=lambda p: sgn(det(o,w,p))
print("\n  axis = the line through I(a,b)=%s and I(A,B)=%s"%(o,w))
for nm,s in [("a=p0",a),("b=p1",b),("A=q0",A),("B=q4",B)]:
    print("    %-5s endpoints on sides %s"%(nm,[side(p) for p in s]))
print("  Observation 6 demands {a,B} on one side and {b,A} on the other.")
sa={side(p) for p in a}-{0}; sb={side(p) for p in b}-{0}
sA={side(p) for p in A}-{0}; sB={side(p) for p in B}-{0}
print("  AXIS PROPERTY HOLDS:", len(sa)==1 and len(sb)==1 and len(sA)==1 and len(sB)==1 and sa==sB and sb==sA and sa!=sb)
