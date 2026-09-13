"""AUDIT PART 2: corrected enumeration (|E| exactly E), full filter pipeline,
using the DETERMINISTIC exceptional classes."""
import sys, pickle
from itertools import combinations
from chiro import *
FULL=127
def bits(x): return [i for i in range(7) if x>>i&1]
def pc(x): return bin(x).count('1')

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
    comp=[idx[c] for c in comp]; return comp[:7],comp[7:],len(r)
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
                dd=N[k]&mq
                if pc(dd)!=1: ok=False; break
                dq[dd.bit_length()-1]+=1
            if ok and all(dq[t]==1 for t in range(7) if t!=j): return False
    return True

E_TARGET=int(sys.argv[1])
survivors=[]; stats={'total':0,'L5':0,'L7':0,'L3':0}
SUBS=[[m for m in range(1,128) if pc(m)==s] for s in range(4)]
def rec(i,N,used,budget):
    if i==7:
        if budget!=0 or used!=FULL: return
        process(N); return
    rem=7-i
    hi=min(3,budget-(rem-1))
    for size in range(1,hi+1):
        for msk in SUBS[size]:
            N.append(msk); rec(i+1,N,used|msk,budget-size); N.pop()
def process(N):
    stats['total']+=1
    NQ=[0]*7
    for i in range(7):
        for j in bits(N[i]): NQ[j]|=1<<i
    compP,compQ,nc=components(N)
    for i in range(7):
        if compP[i]!=compP[(i+1)%7] and not L5_ok(N[i],N[(i+1)%7]): return
    for j in range(7):
        if compQ[j]!=compQ[(j+1)%7] and not L5_ok(NQ[j],NQ[(j+1)%7]): return
    stats['L5']+=1
    if not H_bip(compP) or not H_bip(compQ): return
    stats['L7']+=1
    if not L3_ok(N) or not L3_ok(NQ): return
    stats['L3']+=1
    survivors.append((tuple(N),nc))
rec(0,[],0,E_TARGET)
print(f"|E| = {E_TARGET}")
print(f"  graphs with min degree >=1 on both sides : {stats['total']}")
print(f"  after AKR Lemma 5 (consecutive pairs)    : {stats['L5']}")
print(f"  after AKR Lemma 7 (H bipartite)          : {stats['L7']}")
print(f"  after Cerny et al. Lemma 3               : {stats['L3']}")
if not survivors:
    print("  -> ELIMINATED ENTIRELY\n"); sys.exit()
print(f"  component counts: {sorted(set(nc for _,nc in survivors))}")

# ---------- downstream: exceptional classes, Lemma 2, avoiding-pair Lemma 5 ----------
exc=pickle.load(open("exc_det.pkl","rb"))
def classdata(d):
    chi=Chi(d,7)
    fam=set()
    for A in halfplane_subsets(chi,7):
        m=0
        for s in range(7):
            if ((s in A)!=(((s+1)%7) in A)): m|=1<<s
        fam.add(m)
    al=[any((( FULL^N)&~C)==0 for C in fam) for N in range(128)]
    W=set()
    for i in range(7):
        if inside_tri(chi,(i+3)%7,i,(i+1)%7,(i+2)%7): W.add(i)
        if inside_tri(chi,(i+1)%7,(i+4)%7,(i+3)%7,(i+2)%7): W.add(i)
    AV=[]
    for i in range(7):
        for j in range(i+1,7):
            if (j-i)%7 in (1,6): continue
            a,b,c,dd=i,(i+1)%7,j,(j+1)%7
            if (not line_cuts_seg(chi,c,dd,a,b)) and (not line_cuts_seg(chi,a,b,c,dd)):
                AV.append((i,j))
    return al,sorted(W),AV
CD=[classdata(d) for d in exc]
FOUR=list(combinations(range(7),4))
def L2_ok(N,W):
    for i in W:
        sides=[(i+t)%7 for t in range(4)]
        for qs in FOUR:
            mq=0
            for j in qs: mq|=1<<j
            dq={j:0 for j in qs}; ok=True
            for s in sides:
                dd=N[s]&mq
                if pc(dd)!=1: ok=False; break
                dq[dd.bit_length()-1]+=1
            if ok and all(v==1 for v in dq.values()): return False
    return True
step={'cls':0,'L2':0,'AV':0}
alive=[]
for N,nc in survivors:
    NQ=[0]*7
    for i in range(7):
        for j in bits(N[i]): NQ[j]|=1<<i
    compP,compQ,_=components(list(N))
    okP=[a for a in range(len(CD)) if all(CD[a][0][x] for x in NQ)]
    okQ=[b for b in range(len(CD)) if all(CD[b][0][x] for x in N)]
    if not okP or not okQ: continue
    step['cls']+=1
    okP=[a for a in okP if L2_ok(list(N),CD[a][1])]
    okQ=[b for b in okQ if L2_ok(NQ,CD[b][1])]
    if not okP or not okQ: continue
    step['L2']+=1
    okP=[a for a in okP if all(L5_ok(N[i],N[j]) for (i,j) in CD[a][2] if compP[i]!=compP[j])]
    okQ=[b for b in okQ if all(L5_ok(NQ[i],NQ[j]) for (i,j) in CD[b][2] if compQ[i]!=compQ[j])]
    if not okP or not okQ: continue
    step['AV']+=1
    alive.append((N,okP,okQ))
print(f"  after crossing-set compatibility with the 14 exceptional classes : {step['cls']}")
print(f"  after Cerny et al. Lemma 2 (class-dependent)                     : {step['L2']}")
print(f"  after AKR Lemma 5 on AVOIDING pairs (class-dependent)            : {step['AV']}")
print(f"  FINAL SURVIVORS: {len(alive)}\n")
