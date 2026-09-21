from fractions import Fraction as F
exec(open("/Users/jaydenlin/.claude/jobs/5df73377/tmp/cert.py").read().split("P=[V(2,-4)")[0])

def G(R, i, a, b, delta):
    """A_d = A + (delta*N/<a,n>)a ;  B_d = B + (delta*N/<b,n>)b"""
    m=len(R); A=R[i]; B=R[(i+1)%m]
    u=sub(B,A); n=(-u[1],u[0]); N=dot(u,u)
    if dot(a,n)==0 or dot(b,n)==0: return None      # (G) fails
    Ad=(A[0]+F(delta*N,1)/dot(a,n)*a[0], A[1]+F(delta*N,1)/dot(a,n)*a[1])
    Bd=(B[0]+F(delta*N,1)/dot(b,n)*b[0], B[1]+F(delta*N,1)/dot(b,n)*b[1])
    S=list(R); S[i]=Ad; S[(i+1)%m]=Bd; return S

def dirs_akr(R,i):
    m=len(R); C=R[(i-1)%m]; A=R[i]; B=R[(i+1)%m]; D=R[(i+2)%m]
    return sub(A,C), sub(D,B)                        # slide along adjacent side lines

def dirs_tilted(R,i,Other):
    m=len(R); A=R[i]; B=R[(i+1)%m]; u=sub(B,A); n=(-u[1],u[0])
    def pick(X):
        t=None
        for j in range(len(Other)):
            if on_open(X, Other[j], Other[(j+1)%len(Other)]): t=(Other[j],Other[(j+1)%len(Other)])
        if t is None: return n
        v=sub(t[1],t[0])
        return n if dot(u,v)!=0 else (n[0]+u[0], n[1]+u[1])
    return pick(A), pick(B)

P=[V(2,-4),V(2,1),V(2,4),V(1,3),V(-1,3),V(-3,4),V(-2,2)]
Q=[V(-4,-3),V(0,-2),V(3,-1),V(2,0),V(1,1),V(-1,1),V(-3,0)]
print("the configuration that REFUTED AKR's procedure (commit 0bcfb87)")
print("  |dP cap dQ| =",bcount(P,Q),"  degeneracy: Q3=(2,0) interior to P-side 0")
a,b = dirs_akr(P,0)
print(f"\nAKR's rule on P-side 0: a={a} b={b} -> G {'DEFINED' if G(P,0,a,b,F(1,64)) else 'UNDEFINED'}")
at,bt = dirs_tilted(P,0,Q)
print(f"tilted rule on P-side 0: a={at} b={bt} -> G {'DEFINED' if G(P,0,at,bt,F(1,64)) else 'UNDEFINED'}")

print("\n  delta      simple?   |dP(d) cap dQ|   Q3 still on P-side 0?")
base=bcount(P,Q); tot={}
for k in (4,6,10,20):
    d=F(1,2**k); row=[]
    for s in (d,-d):
        Pd=G(P,0,at,bt,s)
        ok,_=simple(Pd); n=bcount(Pd,Q)
        still=on_open(Q[3],Pd[0],Pd[1])
        row.append(n)
        print(f"  {'+' if s>0 else '-'}2^-{k}    {ok!s:5}     {n}                {still}")
    tot[k]=row
print(f"\naveraging identity  |dP(d)|+|dP(-d)| = 2*{base} = {2*base}?")
for k,(x,y) in tot.items():
    print(f"  delta=2^-{k}: {x} + {y} = {x+y}   {'OK' if x+y==2*base else 'FAILS'}")
print("\ncount never decreased in at least one direction:",
      all(max(v)>=base for v in tot.values()))
