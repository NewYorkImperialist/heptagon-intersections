from fractions import Fraction as F
import random
random.seed(4242)
def rnd(): return F(random.randint(-9,9), random.randint(1,3))
def orientR(a,b,c): return (b[0]-a[0])*(c[1]-a[1]) - (b[1]-a[1])*(c[0]-a[0])
def tilt(u,t): return (-u[1]+t*u[0], u[0]+t*u[1])

def degSet(P,Q):
    return {(k,j) for k in range(7) for j in range(7)
            if orientR(P[k],P[(k+1)%7],Q[j]) == 0}

def shift(P,i,w,d):
    P2=list(P)
    for k in (i,(i+1)%7):
        P2[k]=(P[k][0]+d*w[0], P[k][1]+d*w[1])
    return P2

from collections import Counter
reasons=Counter()
runs=0; bad_step=0; never_cleared=0; total_steps=0; maxsteps=0
for _ in range(4000):
    P=[(rnd(),rnd()) for _ in range(7)]
    Q=[(rnd(),rnd()) for _ in range(7)]
    # force 1-3 degeneracies onto random P-sides
    for _ in range(random.randint(1,3)):
        i=random.randrange(7); j=random.randrange(7)
        A,B=P[i],P[(i+1)%7]; u=(B[0]-A[0],B[1]-A[1])
        if u==(0,0): continue
        s=F(random.randint(1,9),10)
        Q[j]=(A[0]+s*u[0], A[1]+s*u[1])
    D=degSet(P,Q)
    if not D: continue
    runs+=1
    steps=0
    while D and steps < 60:
        i,j0 = sorted(D)[0]
        A,B=P[i],P[(i+1)%7]; u=(B[0]-A[0],B[1]-A[1])
        if u==(0,0):
            reasons['degenerate side']+=1; break
        t=F(random.randint(0,3)); w=tilt(u,t)
        # affine coefficients by interpolation (exact: the map is affine in d)
        bad=set()
        for (k,j) in [(k,j) for k in range(7) for j in range(7)]:
            if (k,j) in D: continue
            f0=orientR(P[k],P[(k+1)%7],Q[j])
            P1=shift(P,i,w,F(1))
            f1=orientR(P1[k],P1[(k+1)%7],Q[j])
            m=f1-f0
            if m!=0: bad.add(F(-f0,1)/m)
        d=None
        for cand in [F(1, 8*(2**e)) for e in range(40)] + [F(1,3*(2**e)) for e in range(40)]:
            if cand not in bad and cand!=0: d=cand; break
        if d is None:
            reasons['no delta among candidates']+=1; break
        P=shift(P,i,w,d)
        Dn=degSet(P,Q)
        if not (Dn < D):    # must be a STRICT subset
            bad_step+=1
            break
        D=Dn; steps+=1
    total_steps+=steps; maxsteps=max(maxsteps,steps)
    if D: never_cleared+=1
    if runs>=600: break
print("runs with at least one degeneracy :", runs)
print("steps that failed to strictly shrink degSet :", bad_step)
print("runs that never cleared (<=60 steps) :", never_cleared)
print("total steps:", total_steps, " max steps in a run:", maxsteps)
print("early-stop reasons:", dict(reasons))
