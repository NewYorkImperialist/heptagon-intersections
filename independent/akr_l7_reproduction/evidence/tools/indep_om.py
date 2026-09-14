"""Fully independent re-encoding of AKR Lemma 7 as a rank-3 chirotope SAT problem.
Written from the geometric statement only; no z3, no reuse of subagent B's code.
Direct DIMACS CNF construction by brute-force blocking-clause enumeration."""
import itertools, sys
from pysat.solvers import Cadical153, Glucose42

class Enc:
    def __init__(self, pts):
        self.pts = list(pts); self.idx = {p:i for i,p in enumerate(self.pts)}
        self.n = len(self.pts); self.var = {}; self.nv = 0; self.cls = []
        for t in itertools.combinations(range(self.n),3):
            self.nv += 1; self.var[t] = self.nv
    def lit(self,p,q,r):
        """returns signed literal L with L true <=> chi(p,q,r)=+"""
        i,j,k = self.idx[p],self.idx[q],self.idx[r]
        assert len({i,j,k})==3
        s=1; a=[i,j,k]
        # parity of sorting permutation
        for u in range(3):
            for v in range(2):
                if a[v]>a[v+1]: a[v],a[v+1]=a[v+1],a[v]; s=-s
        return s*self.var[tuple(a)]
    def block(self, lits, pred):
        """lits: list of signed literals. pred: fn(tuple of bools)->bool 'is forbidden'.
        adds a blocking clause for every forbidden truth assignment."""
        k=len(lits)
        for bits in itertools.product([False,True],repeat=k):
            if pred(bits):
                self.cls.append([-l if b else l for l,b in zip(lits,bits)])
    def unit_true(self, lits, pred):
        """require pred(bits) to be TRUE -> block all assignments where it is false"""
        self.block(lits, lambda b: not pred(b))

def build(points, segs, pattern, status):
    E = Enc(points)
    n = E.n
    # (1) 3-term Grassmann-Plucker (rank 3, uniform)
    for five in itertools.combinations(range(n),5):
        for a in five:
            b,c,d,e = [x for x in five if x!=a]
            P=E.pts
            L=[E.lit(P[a],P[b],P[c]), E.lit(P[a],P[d],P[e]),
               E.lit(P[a],P[b],P[d]), E.lit(P[a],P[c],P[e]),
               E.lit(P[a],P[b],P[e]), E.lit(P[a],P[c],P[d])]
            def bad(x):
                T1 = (x[0]==x[1]); T2 = (x[2]!=x[3]); T3=(x[4]==x[5])
                return T1==T2 and T2==T3
            E.block(L,bad)
    # (2) acyclicity: circuit on every 4-set is never all-one-sign
    for i,j,k,l in itertools.combinations(range(n),4):
        P=E.pts
        L=[E.lit(P[j],P[k],P[l]), E.lit(P[i],P[k],P[l]),
           E.lit(P[i],P[j],P[l]), E.lit(P[i],P[j],P[k])]
        def bad(x):
            e0,e1,e2,e3 = x[0], not x[1], x[2], not x[3]
            return e0==e1==e2==e3
        E.block(L,bad)
    # (3) pattern
    for (s,t),want_cross in pattern.items():
        p,q = segs[s]; r,w = segs[t]
        if len({p,q,r,w})!=4:
            assert want_cross, (s,t)   # share endpoint => they meet
            continue
        L=[E.lit(p,q,r),E.lit(p,q,w),E.lit(r,w,p),E.lit(r,w,q)]
        crossing = lambda x: (x[0]!=x[1]) and (x[2]!=x[3])
        if want_cross: E.unit_true(L, crossing)
        else:          E.block(L, crossing)
    # (4) status: x in cone(apex v, rays to s2,t2)
    for (x,v,s2,t2) in status:
        L=[E.lit(v,s2,x),E.lit(v,s2,t2),E.lit(v,t2,x),E.lit(v,t2,s2)]
        E.unit_true(L, lambda z: z[0]==z[1] and z[2]==z[3])
    return E

def model(variant):
    ident={}
    if variant in ("P-adj","PQ-adj"): ident["ap2"]="b2"
    if variant in ("Q-adj","PQ-adj"): ident["Ap2"]="B2"
    nm=lambda p: ident.get(p,p)
    base=["v1","a2","b2","v2","ap2","bp2","v3","A2","B2","v4","Ap2","Bp2"]
    pts=[]
    for p in base:
        if nm(p) not in pts: pts.append(nm(p))
    segs={"a":(nm("v1"),nm("a2")),"b":(nm("v1"),nm("b2")),
          "ap":(nm("v2"),nm("ap2")),"bp":(nm("v2"),nm("bp2")),
          "A":(nm("v3"),nm("A2")),"B":(nm("v3"),nm("B2")),
          "Ap":(nm("v4"),nm("Ap2")),"Bp":(nm("v4"),nm("Bp2"))}
    Pp=["a","b","ap","bp"]; Qq=["A","B","Ap","Bp"]
    ED={("a","A"),("b","B"),("ap","Ap"),("bp","Bp")}
    pat={}
    for x in Pp:
        for y in Qq: pat[(x,y)] = (x,y) not in ED
    for x,y in [("a","ap"),("a","bp"),("b","ap"),("b","bp")]: pat[(x,y)]=False
    for x,y in [("A","Ap"),("A","Bp"),("B","Ap"),("B","Bp")]: pat[(x,y)]=False
    if variant in ("P-adj","PQ-adj"): pat[("b","ap")]=True
    if variant in ("Q-adj","PQ-adj"): pat[("B","Ap")]=True
    return pts,segs,pat

def statuses(segs,which):
    v1,a2=segs["a"]; _,b2=segs["b"]; v2,ap2=segs["ap"]; _,bp2=segs["bp"]
    v3,A2=segs["A"]; _,B2=segs["B"]; v4,Ap2=segs["Ap"]; _,Bp2=segs["Bp"]
    hooking1=(v3,v1,a2,b2); hooking2=(v4,v2,ap2,bp2)
    hooked1=(v1,v3,A2,B2);  hooked2=(v2,v4,Ap2,Bp2)
    return {"none":[], "both-hooking":[hooking1,hooking2], "both-hooked":[hooked1,hooked2],
            "mixed-1":[hooking1,hooked2], "mixed-2":[hooked1,hooking2]}[which]

if __name__=="__main__":
    for variant in ["generic","P-adj","Q-adj","PQ-adj"]:
        pts,segs,pat=model(variant)
        for which in ["none","mixed-1","mixed-2","both-hooking","both-hooked"]:
            E=build(pts,segs,pat,statuses(segs,which))
            s=Cadical153(bootstrap_with=E.cls); r=s.solve(); s.delete()
            s2=Glucose42(bootstrap_with=E.cls); r2=s2.solve(); s2.delete()
            print("%-8s %-13s pts=%2d vars=%4d clauses=%6d -> %-5s (glucose %s)" %
                  (variant,which,len(pts),E.nv,len(E.cls),"SAT" if r else "UNSAT",
                   "SAT" if r2 else "UNSAT"))
            sys.stdout.flush()
