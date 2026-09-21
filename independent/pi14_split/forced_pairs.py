#!/usr/bin/env python3
"""Adapted from pi8_human/forced2.c: only EVEN products of orientation signs
can be forced (reflection flips every sign), so search forced PAIR PRODUCTS.

Here: under the 12-condition core CORE12, which products
orient(A,B,C)*orient(D,E,F) are forced?  Restricted to the lines of interest."""
import itertools, sys, random, time
from z3 import *
from core_tools import conds_for, PT, orient, NAME

CORE12 = {0:0, 2:None,3:None,4:None,6:None,7:0,8:None,9:None,10:None,11:None,12:None,13:None}

def forced(sel, e1, e2, tries=8, each=2500, seed=0):
    """Return +1 / -1 if the product e1*e2 is forced, else None."""
    base = []
    for k,b in sel.items(): base += conds_for(k,b)
    res = {}
    for sign, con in ((+1, e1*e2 > 0), (-1, e1*e2 < 0)):
        rng = random.Random(seed); out='unknown'
        for i in range(tries):
            D = list(base)+[con]
            if i: rng.shuffle(D)
            s = Tactic('qfnra-nlsat').solver(); s.set('timeout',each); s.set('nlsat.seed',i)
            s.add(D); r = s.check()
            if r != unknown: out = str(r); break
        res[sign] = out
    if res[+1]=='unsat' and res[-1]!='unsat': return -1, res
    if res[-1]=='unsat' and res[+1]!='unsat': return +1, res
    return None, res

if __name__ == '__main__':
    L = (8,9)
    others = [0,1,2,3,7,10,11,12]
    for u,v in itertools.combinations(others,2):
        e1 = orient(PT[L[0]],PT[L[1]],PT[u]); e2 = orient(PT[L[0]],PT[L[1]],PT[v])
        f,res = forced(CORE12, e1, e2, seed=u*31+v)
        tag = {None:'free', 1:'SAME side', -1:'OPPOSITE sides'}[f]
        print(f'  or(8,9,{u:2d}) * or(8,9,{v:2d}) : {tag:16s}  [>0:{res[1]}, <0:{res[-1]}]', flush=True)
