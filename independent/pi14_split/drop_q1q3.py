#!/usr/bin/env python3
"""For every branch the final census refuted, ask: is it still unsat with the
Q1 x/ Q3 condition DELETED?  If yes, the partner branch (same bits, Q1/Q3
disjunct flipped) is unsat too, by monotonicity -- no solver call needed."""
import sys, time
from core_tools import *

REF = [0,1,4,5,12,13,16,17,20,28,29,30,32,33,36,37,40,44,45,46,48,49,52,53,56,57,60,61,
       65,69,77,81,85,93,97,101,109,112,113,125,
       128,132,133,136,140,141,144,145,148,149,152,156,157,160,161,164,165,168,172,173,
       176,177,180,181,188,189,
       193,197,205,209,224,225,229,237,245,253]
assert len(REF)==76
Q1Q3 = 19   # index into PI14 of ((8,9),(10,11),False)
assert PI14[Q1Q3] == ((8,9),(10,11),False)

lo, hi = (int(sys.argv[1]), int(sys.argv[2])) if len(sys.argv)>2 else (0,76)
out=[]
for idx in range(lo,hi):
    n = REF[idx]
    ch = [(n>>(7-i))&1 for i in range(8)]
    sel = {k: None for k in XS}
    for i,k in enumerate(NEGS): sel[k] = ch[i]
    trial = {k:b for k,b in sel.items() if k != Q1Q3}
    t=time.time(); r,_ = solve_set(trial, each=4000)
    print(f'branch {n:3d} (bit1={ch[6]}) without Q1/Q3 : {r}  ({time.time()-t:.0f}s)', flush=True)
    if r=='unsat': out.append(n)
print('DROPPABLE:', out, flush=True)
