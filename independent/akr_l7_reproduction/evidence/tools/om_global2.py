"""Corrected: P = triangle (a,b,c), Q = n-gon.  Enumerate ALL admissible
c-crossing sets, not just one.  Ask whether a 'NEITHER' associated pair
(a,b)/(A,B) can exist in a genuine polygon pair with CC(a) != CC(b)."""
import itertools, sys
from indep_om import Enc
from pysat.solvers import Cadical153

def solve(walk, T, neither=True, verbose=False):
    n=len(walk)
    pts=["O","a2","b2"]+["q%d"%i for i in range(n)]
    E=Enc(pts); P=E.pts; N=E.n
    for five in itertools.combinations(range(N),5):
        for x in five:
            b_,c_,d_,e_=[y for y in five if y!=x]
            L=[E.lit(P[x],P[b_],P[c_]),E.lit(P[x],P[d_],P[e_]),
               E.lit(P[x],P[b_],P[d_]),E.lit(P[x],P[c_],P[e_]),
               E.lit(P[x],P[b_],P[e_]),E.lit(P[x],P[c_],P[d_])]
            E.block(L,lambda z:(z[0]==z[1])==(z[2]!=z[3]) and (z[2]!=z[3])==(z[4]==z[5]))
    for i,j,k,l in itertools.combinations(range(N),4):
        L=[E.lit(P[j],P[k],P[l]),E.lit(P[i],P[k],P[l]),E.lit(P[i],P[j],P[l]),E.lit(P[i],P[j],P[k])]
        E.block(L,lambda z: z[0]==(not z[1])==z[2]==(not z[3]))
    seg={"a":("O","a2"),"b":("O","b2"),"c":("a2","b2")}
    for i in range(n): seg["s%d"%i]=("q%d"%i,"q%d"%((i+1)%n))
    def rel(s,t,want):
        p,q=seg[s]; r,w=seg[t]
        if len({p,q,r,w})!=4:
            assert want; return
        L=[E.lit(p,q,r),E.lit(p,q,w),E.lit(r,w,p),E.lit(r,w,q)]
        cr=lambda z:(z[0]!=z[1]) and (z[2]!=z[3])
        if want: E.unit_true(L,cr)
        else:    E.block(L,cr)
    for i in range(n):
        for j in range(i+1,n):
            if j==i+1 or (i==0 and j==n-1): continue
            rel("s%d"%i,"s%d"%j,False)
    for i,w in enumerate(walk):
        rel("s%d"%i,"a",w=="a"); rel("s%d"%i,"b",w=="b")
        rel("s%d"%i,"c", i in T)
    def cone(x,v,s2,t2):
        return [E.lit(v,s2,x),E.lit(v,s2,t2),E.lit(v,t2,x),E.lit(v,t2,s2)]
    inc=lambda z: z[0]==z[1] and z[2]==z[3]
    if neither:
        E.block(cone("q0","O","a2","b2"), inc)
        E.block(cone("O","q0","q%d"%(n-1),"q1"), inc)
    s=Cadical153(bootstrap_with=E.cls); r=s.solve(); s.delete()
    return r

def admissible_T(walk):
    n=len(walk)
    acr={i for i,w in enumerate(walk) if w=="a"}; bcr={i for i,w in enumerate(walk) if w=="b"}
    out=[]
    for r in range(n+1):
        for T in itertools.combinations(range(n),r):
            T=set(T)
            if len(T)%2==0: continue          # Q must cross dP an even number of times
            if not (acr<=T or bcr<=T): continue
            out.append(frozenset(T))
    return out

n=int(sys.argv[1]) if len(sys.argv)>1 else 5
tot=0; satw=[]
for w in itertools.product("ab",repeat=n):
    if w[0]!="b" or w[n-1]!="a": continue     # A=s0 disjoint from a ; B=s_{n-1} disjoint from b
    for T in admissible_T(w):
        tot+=1
        if solve(list(w),T):
            satw.append(("".join(w),sorted(T)))
print("n=%d  (walk, c-crossing-set) instances tested: %d"%(n,tot))
print("SATISFIABLE (i.e. an oriented matroid with a NEITHER associated pair exists):",len(satw))
for x in satw[:20]: print("   ",x)
