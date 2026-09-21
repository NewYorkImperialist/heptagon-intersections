import sys, random
from fractions import Fraction as F
sys.path.insert(0,'/Users/jaydenlin/dev/lean/heptagon-intersections/independent/akr_9_2')
from shift import *
from sweep2 import rand_simple
D=F(1,2**20)
rng=random.Random(99)
tot=bad=lose=0; ex=[]
while tot<6000:
    A=rand_simple(rng,6,6); B=rand_simple(rng,6,6)
    if A is None or B is None: continue
    ia=rng.randrange(6); ib=rng.randrange(6)
    dx=A[ia][0]-B[ib][0]; dy=A[ia][1]-B[ib][1]
    B=tuple((x+dx,y+dy) for x,y in B)
    if not is_simple(B): continue
    if inter_points(A,B) is None: continue
    if not vertex_vertex(A,B): continue
    c=count(A,B)
    for i in (ia,(ia-1)%6):
        Pp=shift_side(A,i,D,'akr'); Pm=shift_side(A,i,-D,'akr')
        if Pp is None or Pm is None: continue
        if not(is_simple(Pp) and is_simple(Pm)): continue
        x,y=count(Pp,B),count(Pm,B)
        if x is None or y is None: continue
        tot+=1
        if x+y!=2*c: bad+=1
        if max(x,y)<c:
            lose+=1
            if len(ex)<3: ex.append((A,B,i,c,x,y))
print("tested",tot,"averaging violations",bad,"BOTH DIRECTIONS LOSE",lose)
for e in ex: print(e)
