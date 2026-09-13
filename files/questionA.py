"""
QUESTION A.  For every simple 7-gon, is there a set of 4 sides that no single
line meets?   (If yes for every simple 7-gon, then f(7,7)=38.)

We exhaustively check all 135 order types of 7 points x all simple
polygonalisations.  Everything below depends only on the order type, so this is
a complete case check over ALL simple 7-gons.
"""
import pickle
from itertools import combinations, permutations
from geom import *

reps = pickle.load(open("ot7.pkl","rb"))
print("order types loaded:", len(reps))

def all_cyclic_orders(n=7):
    """All cyclic sequences of 0..n-1 up to rotation and reflection: (n-1)!/2."""
    out=[]
    for perm in permutations(range(1,n)):
        if perm[0] < perm[-1]:          # kill reflection
            out.append((0,)+perm)
    return out

CYC = all_cyclic_orders(7)
print("cyclic orders (up to rotation/reflection):", len(CYC))
FOURS = [sum(1<<i for i in c) for c in combinations(range(7),4)]
THREES= [sum(1<<i for i in c) for c in combinations(range(7),3)]

best_cov = -1; best_ex=None
minimal_uncrossable = {}      # size -> count of polygons whose minimum uncrossable set has that size
num_simple = 0
histM = {}
for oi,pts in enumerate(reps):
    for cyc in CYC:
        poly=[pts[i] for i in cyc]
        if not is_simple(poly): continue
        num_simple += 1
        fam = crossing_sets(poly)          # bitmasks of side-index sets
        fam = [m for m in fam if popcount(m)>=4]
        # M = sides j such that the 6-set complement of j is a crossing set
        M = [j for j in range(7) if (127 ^ (1<<j)) in set(fam)]
        histM[len(M)] = histM.get(len(M),0)+1
        cov = sum(1 for T in FOURS if any((T & ~m)==0 for m in fam))
        cov3= sum(1 for T in THREES if any((T & ~m)==0 for m in fam))
        if cov3 < 35:
            msize = 3
        elif cov < 35:
            msize = 4
        else:
            msize = 5
        minimal_uncrossable[msize] = minimal_uncrossable.get(msize,0)+1
        if cov > best_cov:
            best_cov = cov; best_ex=(oi,cyc,list(poly),sorted(M),cov,cov3)
print("simple 7-gons examined (order type x polygonalisation):", num_simple)
print("max number of 4-subsets of sides coverable by lines:", best_cov, "out of 35")
print("distribution of |M| (# sides j with a line meeting the other 6):", dict(sorted(histM.items())))
print("minimum size of an 'uncrossable' set of sides, distribution:", dict(sorted(minimal_uncrossable.items())))
print()
print("extremal example:", best_ex)
