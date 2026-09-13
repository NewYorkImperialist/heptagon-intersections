"""
Enumerate every candidate disjointness graph for I(P,Q)=40 with m=n=7, i.e.
every bipartite graph G on P-sides {0..6} x Q-sides {0..6} with
   |E| = 9,  min degree >= 1 on both sides,
and test the purely combinatorial necessary conditions implied by the published
lemmas:

 (L3) Cerny-Kara-Kral-Podbrdsky-Sotakova-Samal 2003, Lemma 3:
      six consecutive sides of one polygon and six sides of the other never
      induce exactly a perfect matching in the disjointness graph.
 (L5) Ackerman-Keszegh-Rote 2022, Lemma 5:
      if two CONSECUTIVE sides p_i,p_{i+1} lie in different components of G then
      there are two CONSECUTIVE sides q_j,q_{j+e} (e=+-1) with
      (p_i,q_j),(p_{i+1},q_{j+e}) edges and (p_i,q_{j+e}),(p_{i+1},q_j) non-edges.
 (L7) Ackerman-Keszegh-Rote 2022, Lemma 7 (my reformulation):
      the graph H whose vertices are the consecutive pairs in different
      components, adjacent when the two pairs are disjoint and their four sides
      lie in four different components, must be BIPARTITE.
"""
import sys
from itertools import combinations

FULL = 127
def bits(x): return [i for i in range(7) if x>>i & 1]
def pc(x): return bin(x).count('1')

# ---------- component computation ----------
def components(N):
    """N[i] = bitmask of Q-neighbours of p_i.  Returns (compP, compQ, ncomp)."""
    par = list(range(14))
    def find(a):
        while par[a]!=a:
            par[a]=par[par[a]]; a=par[a]
        return a
    def uni(a,b):
        ra,rb=find(a),find(b)
        if ra!=rb: par[ra]=rb
    for i in range(7):
        for j in bits(N[i]):
            uni(i, 7+j)
    comp=[find(v) for v in range(14)]
    roots=sorted(set(comp))
    idx={r:k for k,r in enumerate(roots)}
    comp=[idx[c] for c in comp]
    return comp[:7], comp[7:], len(roots)

# ---------- (L5) ----------
def L5_ok(Na, Nb):
    """Is there j and e=+-1 with j in Na\\Nb and j+e in Nb\\Na (cyclically in Z_7)?"""
    A = Na & ~Nb; B = Nb & ~Na
    for j in range(7):
        if A>>j & 1:
            for e in (1,-1):
                k=(j+e)%7
                if B>>k & 1:
                    return True
    return False

# ---------- (L7) ----------
def H_bipartite(comp):
    """comp = list of 7 component ids for the sides of one polygon, in cyclic order."""
    V=[i for i in range(7) if comp[i]!=comp[(i+1)%7]]
    adj={i:[] for i in V}
    for a in range(len(V)):
        for b in range(a+1,len(V)):
            i,k=V[a],V[b]
            if (k-i)%7 in (1,6) or i==k:   # share a side
                continue
            s={comp[i],comp[(i+1)%7],comp[k],comp[(k+1)%7]}
            if len(s)==4:
                adj[i].append(k); adj[k].append(i)
    col={}
    for s in V:
        if s in col: continue
        col[s]=0; stack=[s]
        while stack:
            u=stack.pop()
            for w in adj[u]:
                if w not in col:
                    col[w]=1-col[u]; stack.append(w)
                elif col[w]==col[u]:
                    return False
    return True

# ---------- (L3) ----------
def L3_ok(N, NQ):
    """No 6 consecutive sides of P (= all but one) and 6 sides of Q inducing
    exactly a perfect matching; and symmetrically with P and Q swapped."""
    for i in range(7):                 # omitted P side
        for j in range(7):             # omitted Q side
            mq = FULL ^ (1<<j)
            ok=True
            degQ=[0]*7
            for k in range(7):
                if k==i: continue
                d = N[k] & mq
                if pc(d)!=1: ok=False; break
                degQ[d.bit_length()-1]+=1
            if ok and all(degQ[t]==1 for t in range(7) if t!=j):
                return False           # found the forbidden configuration
    return True

# ---------- enumeration ----------
survivors=[]
count=0
stats={'total':0,'L5':0,'L7':0,'L3':0,'comp':0}

def rec(i, N, used, budget):
    global count
    if i==7:
        if used!=FULL: return
        process(N)
        return
    # each remaining side needs >=1
    rem = 7-i
    for m in range(1, 8):
        pass
    # iterate over neighbourhoods of size 1..min(3,budget-(rem-1))
    hi = min(3, budget-(rem-1))
    for size in range(1, hi+1):
        for c in combinations(range(7), size):
            msk=0
            for t in c: msk|=1<<t
            N.append(msk)
            rec(i+1, N, used|msk, budget-size)
            N.pop()

def process(N):
    stats['total']+=1
    NQ=[0]*7
    for i in range(7):
        for j in bits(N[i]): NQ[j]|=1<<i
    if min(pc(x) for x in NQ)==0: return
    compP,compQ,nc = components(N)
    stats['comp']+=1
    # (L5) both polygons
    for i in range(7):
        if compP[i]!=compP[(i+1)%7] and not L5_ok(N[i], N[(i+1)%7]):
            return
    for j in range(7):
        if compQ[j]!=compQ[(j+1)%7] and not L5_ok(NQ[j], NQ[(j+1)%7]):
            return
    stats['L5']+=1
    if not H_bipartite(compP) or not H_bipartite(compQ):
        return
    stats['L7']+=1
    if not L3_ok(N, NQ):
        return
    stats['L3']+=1
    survivors.append((tuple(N), nc))

rec(0, [], 0, 9)
print("graphs with |E|=9, min deg>=1 both sides:", stats['comp'])
print("  surviving (L5)  [AKR Lemma 5]        :", stats['L5'])
print("  surviving (L7)  [AKR Lemma 7]        :", stats['L7'])
print("  surviving (L3)  [Cerny et al Lemma 3]:", stats['L3'])
ncs={}
for s,nc in survivors: ncs[nc]=ncs.get(nc,0)+1
print("  component counts among survivors:", ncs)
import pickle
pickle.dump(survivors, open("survivors9.pkl","wb"))
if survivors:
    print("\nfirst few survivors (neighbourhoods of p_0..p_6 as Q-side sets):")
    for s,nc in survivors[:12]:
        print("   ", [bits(x) for x in s], " components:", nc)
