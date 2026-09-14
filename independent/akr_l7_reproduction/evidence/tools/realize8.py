"""Extract a satisfying chirotope for the 8-point 'NEITHER inside genuine polygons'
model and realise it with actual integer coordinates (all abstract order types on
8 points are realisable, so a realisation must exist)."""
import itertools,random,math,sys
from indep_om import Enc
from pysat.solvers import Cadical153

walk=sys.argv[1]; T=set(int(x) for x in sys.argv[2])
n=len(walk)
# rebuild the encoding and grab a model
pts=["O","a2","b2"]+["q%d"%i for i in range(n)]
def build_and_model(walk,T):
    # replicate om_global2.solve but return the model
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
        if len({p,q,r,w})!=4: assert want; return
        L=[E.lit(p,q,r),E.lit(p,q,w),E.lit(r,w,p),E.lit(r,w,q)]
        cr=lambda z:(z[0]!=z[1]) and (z[2]!=z[3])
        if want: E.unit_true(L,cr)
        else: E.block(L,cr)
    for i in range(n):
        for j in range(i+1,n):
            if j==i+1 or (i==0 and j==n-1): continue
            rel("s%d"%i,"s%d"%j,False)
    for i,w in enumerate(walk):
        rel("s%d"%i,"a",w=="a"); rel("s%d"%i,"b",w=="b"); rel("s%d"%i,"c", i in T)
    cone=lambda x,v,s2,t2:[E.lit(v,s2,x),E.lit(v,s2,t2),E.lit(v,t2,x),E.lit(v,t2,s2)]
    inc=lambda z: z[0]==z[1] and z[2]==z[3]
    E.block(cone("q0","O","a2","b2"), inc)
    E.block(cone("O","q0","q%d"%(n-1),"q1"), inc)
    s=Cadical153(bootstrap_with=E.cls); assert s.solve()
    m=set(l for l in s.get_model() if l>0); s.delete()
    return E,{t:(E.var[t] in m) for t in E.var}
E,chi=build_and_model(walk,T)
tgt={t:(1 if chi[t] else -1) for t in chi}
def det(p,q,r): return (q[0]-p[0])*(r[1]-p[1])-(q[1]-p[1])*(r[0]-p[0])
def bad(X):
    k=0
    for t,s in tgt.items():
        d=det(X[t[0]],X[t[1]],X[t[2]])
        if d==0 or (d>0)!=(s>0): k+=1
    return k
rnd=random.Random(int(sys.argv[3]) if len(sys.argv)>3 else 0)
R=int(sys.argv[4]) if len(sys.argv)>4 else 400
best=(999,None)
for restart in range(6000):
    X=[(rnd.randint(-R,R),rnd.randint(-R,R)) for _ in range(8)]
    cc=bad(X)
    for step in range(15000):
        Tm=max(0.05,2.0*(1-step/15000)); i=rnd.randrange(8)
        sc=max(1,int(R*(1-step/15000)/3))
        X2=list(X); X2[i]=(X[i][0]+rnd.randint(-sc,sc),X[i][1]+rnd.randint(-sc,sc))
        c2=bad(X2)
        if c2<=cc or rnd.random()<math.exp(-(c2-cc)/Tm): X,cc=X2,c2
        if cc==0: break
    if cc<best[0]: best=(cc,list(X))
    if cc==0:
        print("REALISED! points (O,a2,b2,q0..q%d) ="%(n-1),X); sys.exit(0)
print("best mismatch count",best[0],"of",len(tgt),best[1])
