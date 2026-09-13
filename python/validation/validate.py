"""
VALIDATION.  Run every filter used in the I=40 elimination against REAL,
realizable configurations.  Any filter that rejects a realizable configuration
is buggy.  We use the 38-intersection configurations found by the search, plus
many random pairs of simple 7-gons, and also the proven-optimal (5,5) case.
"""
import pickle, random
from itertools import combinations, permutations
from geom import *

FULL=127
def bits(x): return [i for i in range(7) if x>>i&1]
def pc(x): return bin(x).count('1')

def dgraph(P,Q):
    SP,SQ=poly_sides(P),poly_sides(Q)
    N=[]
    for (a,b) in SP:
        m=0
        for j,(c,d) in enumerate(SQ):
            if not seg_cross(P[a],P[b],Q[c],Q[d]): m|=1<<j
        N.append(m)
    return N
def transpose(N,n=7):
    NQ=[0]*n
    for i in range(len(N)):
        for j in bits(N[i]): NQ[j]|=1<<i
    return NQ
def components(N):
    par=list(range(14))
    def find(a):
        while par[a]!=a: par[a]=par[par[a]]; a=par[a]
        return a
    def uni(a,b):
        ra,rb=find(a),find(b)
        if ra!=rb: par[ra]=rb
    for i in range(7):
        for j in bits(N[i]): uni(i,7+j)
    comp=[find(v) for v in range(14)]
    r=sorted(set(comp)); idx={x:k for k,x in enumerate(r)}
    comp=[idx[c] for c in comp]; return comp[:7],comp[7:]
def L5_ok(Na,Nb):
    A=Na&~Nb; B=Nb&~Na
    for j in range(7):
        if A>>j&1:
            for e in (1,-1):
                if B>>((j+e)%7)&1: return True
    return False
def H_bip(comp):
    V=[i for i in range(7) if comp[i]!=comp[(i+1)%7]]
    adj={i:[] for i in V}
    for a in range(len(V)):
        for b in range(a+1,len(V)):
            i,k=V[a],V[b]
            if (k-i)%7 in (1,6): continue
            if len({comp[i],comp[(i+1)%7],comp[k],comp[(k+1)%7]})==4:
                adj[i].append(k); adj[k].append(i)
    col={}
    for s in V:
        if s in col: continue
        col[s]=0; st=[s]
        while st:
            u=st.pop()
            for w in adj[u]:
                if w not in col: col[w]=1-col[u]; st.append(w)
                elif col[w]==col[u]: return False
    return True
def L3_ok(N):
    for i in range(7):
        for j in range(7):
            mq=FULL^(1<<j); ok=True; dq=[0]*7
            for k in range(7):
                if k==i: continue
                d=N[k]&mq
                if pc(d)!=1: ok=False;break
                dq[d.bit_length()-1]+=1
            if ok and all(dq[t]==1 for t in range(7) if t!=j): return False
    return True
def inside_tri(p,a,b,c):
    o1=orient(a,b,p);o2=orient(b,c,p);o3=orient(c,a,p)
    return o1==o2==o3 and o1!=0
def L2_windows(poly):
    W=set()
    for i in range(7):
        A,B,C,D=poly[i],poly[(i+1)%7],poly[(i+2)%7],poly[(i+3)%7]
        if inside_tri(D,A,B,C): W.add(i)
        A2,B2,C2,D2=poly[(i+4)%7],poly[(i+3)%7],poly[(i+2)%7],poly[(i+1)%7]
        if inside_tri(D2,A2,B2,C2): W.add(i)
    return sorted(W)
FOUR=list(combinations(range(7),4))
def L2_ok(N,W):
    for i in W:
        sides=[(i+t)%7 for t in range(4)]
        for qs in FOUR:
            mq=0
            for j in qs: mq|=1<<j
            dq={j:0 for j in qs}; ok=True
            for s in sides:
                d=N[s]&mq
                if pc(d)!=1: ok=False;break
                dq[d.bit_length()-1]+=1
            if ok and all(v==1 for v in dq.values()): return False
    return True
def avoiding_pairs(poly):
    S=poly_sides(poly); out=[]
    for i in range(7):
        for j in range(i+1,7):
            if (j-i)%7 in (1,6): continue
            a,b=poly[S[i][0]],poly[S[i][1]]; c,d=poly[S[j][0]],poly[S[j][1]]
            if (not line_cuts_seg(c,d,a,b)) and (not line_cuts_seg(a,b,c,d)): out.append((i,j))
    return out

def check_all(P,Q,verbose=False):
    N=dgraph(P,Q); NQ=transpose(N); compP,compQ=components(N)
    res={}
    res['|E|']=sum(pc(x) for x in N)
    res['I']=49-res['|E|']
    res['mindeg']=min(min(pc(x) for x in N),min(pc(x) for x in NQ))
    res['ncomp']=len(set(compP)|set(compQ))
    res['L5']=all(L5_ok(N[i],N[(i+1)%7]) for i in range(7) if compP[i]!=compP[(i+1)%7]) and \
              all(L5_ok(NQ[j],NQ[(j+1)%7]) for j in range(7) if compQ[j]!=compQ[(j+1)%7])
    res['L5avoid']=all(L5_ok(N[i],N[j]) for (i,j) in avoiding_pairs(P) if compP[i]!=compP[j]) and \
                   all(L5_ok(NQ[i],NQ[j]) for (i,j) in avoiding_pairs(Q) if compQ[i]!=compQ[j])
    res['L7']=H_bip(compP) and H_bip(compQ)
    res['L3']=L3_ok(N) and L3_ok(NQ)
    res['L2']=L2_ok(N,L2_windows(P)) and L2_ok(NQ,L2_windows(Q))
    return res

# 1) the 38-intersection configurations found by search
print("=== validating on realizable 38-intersection configurations ===")
for seed in (3,4):
    b,(P,Q)=pickle.load(open(f"best_7_7_{seed}.pkl","rb"))
    r=check_all(P,Q)
    print(f" seed {seed}: I={r['I']} |E|={r['|E|']} comps={r['ncomp']} mindeg={r['mindeg']} "
          f"L5={r['L5']} L5avoid={r['L5avoid']} L7={r['L7']} L3={r['L3']} L2={r['L2']}")
    assert r['I']==b
    for k in ('L5','L5avoid','L7','L3','L2'):
        if not r[k]: print("   *** FILTER",k,"REJECTS A REALIZABLE CONFIGURATION -> BUG ***")

# 2) many random pairs of simple 7-gons: no filter may ever reject
print("\n=== validating on random simple 7-gon pairs (no filter may reject) ===")
rng=random.Random(7)
def rand_poly(k,R,rng):
    for _ in range(5000):
        pts=[(rng.randint(0,R),rng.randint(0,R)) for _ in range(k)]
        if general_position(pts) and is_simple(pts): return pts
    return None
bad={k:0 for k in ('L5','L5avoid','L7','L3','L2')}
tested=0; hist={}
for _ in range(4000):
    P=rand_poly(7,300,rng); Q=rand_poly(7,300,rng)
    if P is None or Q is None: continue
    ok=True
    for a in P:
        for j in range(7):
            if orient(Q[j],Q[(j+1)%7],a)==0: ok=False
    for a in Q:
        for i in range(7):
            if orient(P[i],P[(i+1)%7],a)==0: ok=False
    if not ok: continue
    tested+=1
    r=check_all(P,Q); hist[r['I']]=hist.get(r['I'],0)+1
    for k in bad:
        if not r[k]: bad[k]+=1
print(f" tested {tested} random pairs; filter rejections:", bad)
print(" intersection-count histogram:", dict(sorted(hist.items())))
print("\n(any nonzero rejection count above would indicate a BUG in that filter)")
