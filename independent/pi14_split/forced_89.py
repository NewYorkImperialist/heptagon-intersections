import itertools, random
from z3 import *
from core_tools import conds_for, PT, orient, XS
BASE = {k: None for k in XS}; BASE[0]=0; BASE[7]=0
base=[]
for k,b in BASE.items(): base += conds_for(k,b)
def ask(C, tries=8, each=2500, seed=0):
    rng=random.Random(seed)
    for i in range(tries):
        D=list(C)
        if i: rng.shuffle(D)
        s=Tactic('qfnra-nlsat').solver(); s.set('timeout',each); s.set('nlsat.seed',i)
        s.add(D); r=s.check()
        if r!=unknown: return str(r)
    return 'unknown'
det=0; tot=0; res=[]
for u,v in itertools.combinations([0,1,2,3,4,7,10,11,12],2):
    e1=orient(PT[8],PT[9],PT[u]); e2=orient(PT[8],PT[9],PT[v])
    rp=ask(base+[e1*e2>0], seed=u*31+v); rm=ask(base+[e1*e2<0], seed=u*31+v+7)
    tot+=1
    if rp=='unsat' and rm!='unsat': det+=1; res.append((u,v,'OPP'))
    elif rm=='unsat' and rp!='unsat': det+=1; res.append((u,v,'SAME'))
print(f'line V8V9: {det}/{tot} pairs forced')
for u,v,t in res: print(f'    or(8,9,{u})*or(8,9,{v}) : {t}')
