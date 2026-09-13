"""AUDIT PART 1: chirotope predicates vs coordinate predicates; Question A
re-run on the DETERMINISTICALLY enumerated order types."""
import pickle
from itertools import combinations, permutations
from chiro import *
import geom

# ---- (a) cross-check every chirotope predicate against the coordinate version
pts_sets = pickle.load(open("ot7.pkl","rb"))          # random realizations
bad=0; checked=0
for pts in pts_sets:
    d={t: geom.orient(pts[t[0]],pts[t[1]],pts[t[2]]) for t in combinations(range(7),3)}
    chi=Chi(d,7)
    for a,b,c,dd in permutations(range(7),4):
        if seg_cross(chi,a,b,c,dd)!=geom.seg_cross(pts[a],pts[b],pts[c],pts[dd]): bad+=1
        if line_cuts_seg(chi,c,dd,a,b)!=geom.line_cuts_seg(pts[c],pts[dd],pts[a],pts[b]): bad+=1
        checked+=2
    for p,a,b,c in permutations(range(7),4):
        o1=geom.orient(pts[a],pts[b],pts[p]); o2=geom.orient(pts[b],pts[c],pts[p]); o3=geom.orient(pts[c],pts[a],pts[p])
        if inside_tri(chi,p,a,b,c)!=(o1==o2==o3): bad+=1
        checked+=1
    if halfplane_subsets(chi,7)!=geom.halfplane_subsets(pts): bad+=1
    checked+=1
print(f"(a) chirotope-vs-coordinate predicate cross-check: {checked} tests, {bad} mismatches")

# ---- (b) deterministic order types coincide with the sampled ones
det=pickle.load(open("ot7_det.pkl","rb"))
cdet={canonical(Chi(d,7),7) for d in det}
csam=set()
for pts in pts_sets:
    d={t: geom.orient(pts[t[0]],pts[t[1]],pts[t[2]]) for t in combinations(range(7),3)}
    csam.add(canonical(Chi(d,7),7))
print(f"(b) deterministic set: {len(cdet)}, sampled set: {len(csam)}, identical: {cdet==csam}")

# ---- (c) Question A on the deterministic order types
CYC=[(0,)+p for p in permutations(range(1,7)) if p[0]<p[-1]]
FOURS=[sum(1<<i for i in c) for c in combinations(range(7),4)]
THREES=[sum(1<<i for i in c) for c in combinations(range(7),3)]
def relabel(d,cyc):
    nd={}
    for t in combinations(range(7),3):
        tt,s=sort3(cyc[t[0]],cyc[t[1]],cyc[t[2]])
        nd[t]=s*d[tt]
    return nd
def poly_canon(d):
    trip=list(combinations(range(7),3)); chi=Chi(d,7); best=None
    for st in range(7):
        for dd in (1,-1):
            lab=[(st+dd*t)%7 for t in range(7)]
            for eps in (1,-1):
                s=tuple(eps*chi(lab[a],lab[b],lab[c]) for a,b,c in trip)
                if best is None or s<best: best=s
    return best
nsimple=0; mins={}; exceptional={}
for d in det:
    for cyc in CYC:
        nd=relabel(d,cyc); chi=Chi(nd,7)
        simple=all(not seg_cross(chi,i,(i+1)%7,j,(j+1)%7)
                   for i in range(7) for j in range(i+1,7)
                   if len({i,(i+1)%7,j,(j+1)%7})==4)
        if not simple: continue
        nsimple+=1
        fam=set()
        for A in halfplane_subsets(chi,7):
            m=0
            for s in range(7):
                if ((s in A)!=(((s+1)%7) in A)): m|=1<<s
            fam.add(m)
        cov4=sum(1 for T in FOURS if any((T&~m)==0 for m in fam))
        cov3=sum(1 for T in THREES if any((T&~m)==0 for m in fam))
        sz = 3 if cov3<35 else (4 if cov4<35 else 5)
        mins[sz]=mins.get(sz,0)+1
        if sz==5:
            c=poly_canon(nd)
            if c not in exceptional: exceptional[c]=nd
print(f"(c) simple 7-gons examined: {nsimple}")
print(f"    minimum uncrossable-set size distribution: {dict(sorted(mins.items()))}")
print(f"    exceptional polygon classes: {len(exceptional)}")
pickle.dump(list(exceptional.values()), open("exc_det.pkl","wb"))
