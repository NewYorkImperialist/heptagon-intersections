#!/usr/bin/env python3
"""
Test the SHARP criterion, including the degenerate cases sweep.py filters out.

Claim:  a direction E exists  <=>  the four ray directions a1,a2,b1,b2 are NOT
        all mutually parallel.

Proof sketch being tested: ray(eps*E, a_k) meets ray(O, b_l) iff
eps*E = t*b_l - s*a_k for some s,t>0, i.e. iff E lies in the cone
C_kl = {t*b_l - s*a_k : s,t>0}.  If a_k is not parallel to b_l then {b_l,-a_k}
is a basis and C_kl is a nonempty OPEN 2-D cone, and the crossing is transversal
hence proper.  So a direction exists iff SOME pair (a_k, b_l) is non-parallel,
which fails only when all four are mutually parallel.
"""
from fractions import Fraction as F
import random, itertools
from sweep import some_direction_works, parallel

def V(x,y): return (F(x),F(y))
random.seed(5)

def all_parallel(a1,a2,b1,b2):
    vs=[a1,a2,b1,b2]
    return all(parallel(vs[0],v) for v in vs[1:])

tested=bad=0
# deliberately include degenerate configs: small coords, and forced-parallel cases
pool=[]
for _ in range(9000):
    pool.append(tuple(V(random.randint(-4,4),random.randint(-4,4)) for _ in range(4)))
# forced all-parallel families
for m in range(1,5):
    for s1 in (1,-1):
        for s2 in (1,-1):
            for s3 in (1,-1):
                pool.append((V(m,0),V(s1*m,0),V(s2*2*m,0),V(s3*3*m,0)))
                pool.append((V(m,m),V(s1*m,s1*m),V(s2*2*m,s2*2*m),V(s3*m,s3*m)))

for (a1,a2,b1,b2) in pool:
    if any(v==(0,0) for v in (a1,a2,b1,b2)): continue
    tested+=1
    got = some_direction_works(a1,a2,b1,b2) is not None
    want = not all_parallel(a1,a2,b1,b2)
    if got != want:
        bad+=1
        if bad<=5:
            print(f"  MISMATCH a1={a1} a2={a2} b1={b1} b2={b2} sweep={got} criterion={want}")
print(f"configurations tested (degenerates included) : {tested}")
print(f"  mismatches against the sharp criterion     : {bad}")
n_ap=sum(1 for c in pool if not any(v==(0,0) for v in c) and all_parallel(*c))
print(f"  of which all-four-parallel (the NO cases)  : {n_ap}   <- non-vacuous")
