import random, time
from z3 import *
from core_tools import PI14, conds_for
from derived import DERIVED, SIGNS, sign_constraints
XS=[k for k,(_,_,w) in enumerate(PI14) if w]
C=[]
for k in list(XS)+[0,7]: C+=conds_for(k,None)
scs=sign_constraints()
for (a,b,c,s,prov),phi in zip(SIGNS,scs):
    if (a,b,c) not in ((8,9,12),(3,4,9)): continue
    rng=random.Random(77); res='unknown'
    t=time.time()
    for i in range(40):
        D=list(C)+[Not(phi)]
        if i: rng.shuffle(D)
        so=Tactic('qfnra-nlsat').solver(); so.set('timeout',8000); so.set('nlsat.seed',i)
        so.add(D); r=so.check()
        if r==unsat: res='unsat'; break
        if r==sat: res='SAT(WRONG)'; break
    print('or(%d,%d,%d) %+d [%s] : %s  order#%d (%.0fs)'%(a,b,c,s,prov,res,i,time.time()-t), flush=True)
