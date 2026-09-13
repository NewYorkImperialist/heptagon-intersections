"""
Deterministic, exhaustive enumeration of abstract order types (uniform rank-3
chirotopes) on up to 7 elements, together with chirotope-only implementations of
every geometric predicate used in the proof.

Soundness note: the 3-term Grassmann-Plucker relations are NECESSARY for any
real point configuration (they are sign consequences of the exact identity
 [abc][ade] - [abd][ace] + [abe][acd] = 0 ).
So the set enumerated here CONTAINS every realizable order type.  A universal
statement verified on this set therefore holds for all point configurations,
whether or not every enumerated chirotope is realizable.
"""
from itertools import combinations, permutations

def sort3(a,b,c):
    s=1
    if a>b: a,b=b,a; s=-s
    if b>c: b,c=c,b; s=-s
    if a>b: a,b=b,a; s=-s
    return (a,b,c),s

class Chi:
    __slots__=('d','n')
    def __init__(self,d,n): self.d=d; self.n=n
    def __call__(self,a,b,c):
        t,s=sort3(a,b,c)
        return s*self.d[t]

def gp_relations(n, must_contain=None):
    """One relation per (5-subset, distinguished element)."""
    rels=[]
    for S in combinations(range(n),5):
        if must_contain is not None and must_contain not in S: continue
        for a in S:
            rest=[x for x in S if x!=a]
            rels.append((a,)+tuple(rest))
    return rels

def radon_relations(n, must_contain=None):
    """4-element relations.  For v0..v3 in R^3 Cramer gives
       det(v1v2v3) v0 - det(v0v2v3) v1 + det(v0v1v3) v2 - det(v0v1v2) v3 = 0;
    reading the homogeneous coordinate,
       det(123) - det(023) + det(013) - det(012) = 0,
    so the four nonzero terms chi(bcd), -chi(acd), chi(abd), -chi(abc) sum to
    zero and cannot all have the same sign.  NECESSARY for realizability."""
    out=[]
    for S in combinations(range(n),4):
        if must_contain is not None and must_contain not in S: continue
        out.append(S)
    return out

def radon_ok(chi, rels):
    for (a,b,c,d) in rels:
        t0= chi(b,c,d); t1=-chi(a,c,d); t2= chi(a,b,d); t3=-chi(a,b,c)
        if t0==t1==t2==t3:
            return False
    return True

def gp_ok(chi, rels):
    for (a,b,c,d,e) in rels:
        t1= chi(a,b,c)*chi(a,d,e)
        t2=-chi(a,b,d)*chi(a,c,e)
        t3= chi(a,b,e)*chi(a,c,d)
        if t1==t2==t3:            # three nonzero terms summing to 0 cannot agree
            return False
    return True

# ---------- chirotope-only predicates ----------
def seg_cross(chi,a,b,c,d):
    return chi(a,b,c)!=chi(a,b,d) and chi(c,d,a)!=chi(c,d,b)
def line_cuts_seg(chi,c,d,a,b):
    return chi(c,d,a)!=chi(c,d,b)
def inside_tri(chi,p,a,b,c):
    return chi(a,b,p)==chi(b,c,p)==chi(c,a,p)
def halfplane_subsets(chi,n):
    out={frozenset(),frozenset(range(n))}
    for i,j in permutations(range(n),2):
        L=frozenset(k for k in range(n) if k!=i and k!=j and chi(i,j,k)>0)
        out.add(L); out.add(L|{i}); out.add(L|{j}); out.add(L|{i,j})
    return out

# ---------- canonical form (combinatorial analogue of the angular sort) ----------
def canonical(chi,n):
    trip=list(combinations(range(n),3)); best=None
    for i in range(n):
        for j in range(n):
            if i==j: continue
            rest=[k for k in range(n) if k!=i and k!=j]
            left =[k for k in rest if chi(i,j,k)>0]
            right=[k for k in rest if chi(i,j,k)<0]
            def srt(g):
                g=list(g)
                for a in range(len(g)):
                    for b in range(a+1,len(g)):
                        if chi(i,g[b],g[a])>0: g[a],g[b]=g[b],g[a]
                return g
            ccw=srt(left)+srt(right)
            for eps in (1,-1):
                lab=[i,j]+(ccw if eps==1 else ccw[::-1])
                s=tuple(eps*chi(lab[a],lab[b],lab[c]) for (a,b,c) in trip)
                if best is None or s<best: best=s
    return best

def enumerate_order_types(nmax=7, verbose=True):
    """Stage-by-stage: extend representatives on n-1 elements by one new point."""
    reps={canonical(Chi({(0,1,2):1},3),3): {(0,1,2):1}}
    if verbose: print(f"  n=3: {len(reps)} order types")
    for n in range(4,nmax+1):
        newtrip=[t for t in combinations(range(n),3) if t[-1]==n-1]
        rels=gp_relations(n, must_contain=n-1)
        rad=radon_relations(n, must_contain=n-1)
        out={}
        for d in reps.values():
            for mask in range(1<<len(newtrip)):
                d2=dict(d)
                for b,t in enumerate(newtrip):
                    d2[t]= 1 if mask>>b&1 else -1
                chi=Chi(d2,n)
                if not radon_ok(chi,rad): continue
                if not gp_ok(chi,rels): continue
                c=canonical(chi,n)
                if c not in out: out[c]=d2
        reps=out
        if verbose: print(f"  n={n}: {len(reps)} order types")
    return reps

if __name__=="__main__":
    import pickle, random
    # --- check the Plucker identity numerically on real points ---
    random.seed(0); worst=0
    for _ in range(200):
        P=[(random.uniform(-1,1),random.uniform(-1,1)) for _ in range(5)]
        def det(x,y,z):
            return ((P[y][0]-P[x][0])*(P[z][1]-P[x][1])
                   -(P[y][1]-P[x][1])*(P[z][0]-P[x][0]))
        a,b,c,d,e=0,1,2,3,4
        v=det(a,b,c)*det(a,d,e)-det(a,b,d)*det(a,c,e)+det(a,b,e)*det(a,c,d)
        worst=max(worst,abs(v))
    print("max |[abc][ade]-[abd][ace]+[abe][acd]| over random points:", f"{worst:.2e}")
    print("\ndeterministic enumeration of abstract order types:")
    reps=enumerate_order_types(7)
    print("known counts of order types (Aichholzer-Aurenhammer-Krasser):",
          "n=3:1  n=4:2  n=5:3  n=6:16  n=7:135")
    # verify ALL 105 GP relations for the final representatives
    allrels=gp_relations(7); allrad=radon_relations(7)
    assert all(gp_ok(Chi(d,7),allrels) and radon_ok(Chi(d,7),allrad)
               for d in reps.values())
    print("all 105 GP + 35 Radon relations verified for every representative: True")
    pickle.dump(list(reps.values()), open("ot7_det.pkl","wb"))
