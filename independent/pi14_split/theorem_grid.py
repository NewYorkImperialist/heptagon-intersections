#!/usr/bin/env python3
"""The clean statement: with all 13 prescribed crossings present, which
combinations of (P0/P2 disjunct, P1/Q1 disjunct) refute the FIRST disjunct of
Q1/Q3 and of Q1/Q4?"""
import time
from core_tools import *
from shuffle_port import solve_shuf
P0P2, P1Q1, Q1Q3, Q1Q4 = 0, 7, 19, 20
for target, tn in ((Q1Q3,'Q1/Q3'), (Q1Q4,'Q1/Q4')):
    for b0 in (None,0,1):
        for b3 in (None,0,1):
            sel = {k: None for k in XS}
            if b0 is not None: sel[P0P2] = b0
            if b3 is not None: sel[P1Q1] = b3
            sel[target] = 0
            t=time.time(); r,_ = solve_shuf(sel, tries=16, each=4000, seed=b0.__hash__()*7+b3.__hash__()+target)
            print(f'  13 crossings + P0/P2={b0} + P1/Q1={b3} + {tn}=bit0 : {r}  ({time.time()-t:.0f}s)', flush=True)
