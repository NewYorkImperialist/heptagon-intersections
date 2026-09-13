"""
AKR Lemma 5 holds for two sides that are 'consecutive OR AVOIDING'.  For the
exceptional classes the avoiding relation is determined by the order type, so we
can apply it as an extra class-dependent filter to the 64 survivors.
  s,s' avoiding  <=>  neither segment contains the intersection point of their
  two lines  <=>  line(s') misses segment s  AND  line(s) misses segment s'.
"""
import pickle
from itertools import combinations, permutations
from geom import *

FULL=127
def bits(x): return [i for i in range(7) if x>>i&1]
def pc(x): return bin(x).count('1')

reps=pickle.load(open("ot7.pkl","rb"))
CYC=[(0,)+p for p in permutations(range(1,7)) if p[0]<p[-1]]
def poly_canon(poly):
    trip=list(combinations(range(7),3)); best=None
    for st in range(7):
        for d in (1,-1):
            lab=[(st+d*t)%7 for t in range(7)]
            for eps in (1,-1):
                s=tuple(eps*orient(poly[lab[a]],poly[lab[b]],poly[lab[c]]) for a,b,c in trip)
                if best is None or s<best: best=s
    return best
classes={}
for pts in reps:
    for cyc in CYC:
        poly=[pts[i] for i in cyc]
        if not is_simple(poly): continue
        fam=set(crossing_sets(poly))
        M=[j for j in range(7) if (FULL^(1<<j)) in fam]
        if len(M)>=5:
            c=poly_canon(poly)
            if c not in classes: classes[c]=(poly,fam,sorted(M))
E=list(classes.values())

def avoiding_pairs(poly):
    S=poly_sides(poly); out=set()
    for i in range(7):
        for j in range(i+1,7):
            if (j-i)%7 in (1,6): continue          # adjacent
            a,b=poly[S[i][0]],poly[S[i][1]]
            c,d=poly[S[j][0]],poly[S[j][1]]
            if (not line_cuts_seg(c,d,a,b)) and (not line_cuts_seg(a,b,c,d)):
                out.add((i,j)); out.add((j,i))
    return out
AV=[avoiding_pairs(p) for (p,f,m) in E]
print("number of avoiding pairs per class:", [len(a)//2 for a in AV])

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
    comp=[idx[c] for c in comp]
    return comp[:7],comp[7:]

def L5_ok(Na,Nb):
    A=Na&~Nb; B=Nb&~Na
    for j in range(7):
        if A>>j&1:
            for e in (1,-1):
                if B>>((j+e)%7)&1: return True
    return False

alive=pickle.load(open("alive.pkl","rb"))
print("combinations entering the avoiding-pair filter:", len(alive))
final=[]
for gi,N,P2,Q2 in alive:
    NQ=[0]*7
    for i in range(7):
        for j in bits(N[i]): NQ[j]|=1<<i
    compP,compQ=components(list(N))
    P3=[]
    for a in P2:
        ok=True
        for (i,j) in AV[a]:
            if i<j and compP[i]!=compP[j] and not L5_ok(N[i],N[j]): ok=False;break
        if ok: P3.append(a)
    if not P3: continue
    Q3=[]
    for b in Q2:
        ok=True
        for (i,j) in AV[b]:
            if i<j and compQ[i]!=compQ[j] and not L5_ok(NQ[i],NQ[j]): ok=False;break
        if ok: Q3.append(b)
    if not Q3: continue
    final.append((gi,N,P3,Q3))
print("SURVIVORS after the avoiding-pair filter:", len(final))
for gi,N,P3,Q3 in final:
    NQ=[0]*7
    for i in range(7):
        for j in bits(N[i]): NQ[j]|=1<<i
    print("  G(P-side nbhds):",[bits(x) for x in N],
          " Q-degrees:",[pc(x) for x in NQ]," P-classes:",P3," Q-classes:",Q3)
pickle.dump(final,open("final.pkl","wb"))
