from fractions import Fraction as F
import random
def orientR(a,b,c): return (b[0]-a[0])*(c[1]-a[1]) - (b[1]-a[1])*(c[0]-a[0])
def nrm(u): return (-u[1], u[0])
def add(a,b): return (a[0]+b[0], a[1]+b[1])
def mov(A,w,d): return (A[0]+d*w[0], A[1]+d*w[1])
def cross(a,b): return a[0]*b[1]-a[1]*b[0]

print("=== CERTIFICATE: the bad case is real ===")
Fp=(F(0),F(0)); A=(F(0),F(3)); B=(F(1),F(3)); V=(F(0),F(1))
u=(B[0]-A[0], B[1]-A[1])                      # direction of the SHIFTED side
print("pivot F =",Fp," moving endpoint A =",A," shifted side dir u =",u)
print("Q-vertex V =",V," lies on rotating side [F,A]:", orientR(Fp,A,V)==0)
for name,w in (("nrm u", nrm(u)), ("nrm u + u", add(nrm(u),u))):
    par = cross(w,(V[0]-Fp[0], V[1]-Fp[1]))
    stuck = all(orientR(Fp,mov(A,w,F(k,100)),V)==0 for k in (1,7,50,-3,-99,1000))
    print(f"  tilt {name:10s} w={str(w):10s} cross(w,V-F)={par!s:>4}  "
          f"degeneracy survives EVERY delta: {stuck}")

print()
print("=== the dichotomy, exhaustively over small integer data ===")
bad_both=0; bad_first=0; bad_second=0; n=0
for u1 in range(-6,7):
  for u2 in range(-6,7):
    if (u1,u2)==(0,0): continue
    u=(F(u1),F(u2)); w1=nrm(u); w2=add(nrm(u),u)
    for x1 in range(-6,7):
      for x2 in range(-6,7):
        if (x1,x2)==(0,0): continue
        x=(F(x1),F(x2)); n+=1
        a=(cross(w1,x)==0); b=(cross(w2,x)==0)
        if a and b: bad_both+=1
        elif a: bad_first+=1
        elif b: bad_second+=1
print(f"(u, V-F) pairs tested : {n}")
print(f"  nrm u fails alone   : {bad_first}")
print(f"  nrm u + u fails alone: {bad_second}")
print(f"  BOTH fail           : {bad_both}   <- must be 0 (the dichotomy)")
