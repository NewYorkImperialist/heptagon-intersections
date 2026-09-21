#!/usr/bin/env python3
"""Recount the branch census using two SOUND closure rules that need no solver:

 R1  the two disjuncts of P1 /x Q1 are equivalent given six of the prescribed
     crossings (lemma1.c, exhaustive on the order-type database), so branch n
     and branch n^16 have logically equivalent constraint sets;
 R2  every unsat CORE found by cube_cover.py fixes only some of the eight
     disjunct bits, so the whole subcube of branches agreeing on those bits is
     unsat by monotonicity.
"""
import re, sys, glob, itertools

CENSUS = [0,1,4,5,12,13,16,17,20,28,29,30,32,33,36,37,40,44,45,46,48,49,52,53,56,57,60,61,
       65,69,77,81,85,93,97,101,109,112,113,125,
       128,132,133,136,140,141,144,145,148,149,152,156,157,160,161,164,165,168,172,173,
       176,177,180,181,188,189,
       193,197,205,209,224,225,229,237,245,253]
NEGNAME = ['P0/P2','P0/P3','P1/P3','P1/Q1','Q0/Q2','Q0/Q3','Q1/Q3','Q1/Q4']

cubes = []
for fn in sorted(glob.glob('cube_*.log')):
    for line in open(fn):
        m = re.match(r'branch\s+(\d+): fixed \d+ bits (\{.*?\})', line)
        if m: cubes.append((int(m.group(1)), eval(m.group(2))))

def members(bits):
    out = []
    free = [i for i in range(8) if i not in bits]
    for combo in itertools.product([0,1], repeat=len(free)):
        n = 0
        d = dict(bits); d.update(dict(zip(free, combo)))
        for i in range(8): n |= d[i] << (7-i)
        out.append(n)
    return out

ref = set(CENSUS)
print(f'census                      : {len(ref)} / 256')
r1 = set(ref) | {n ^ 16 for n in ref}
print(f'+ R1 (P1/Q1 equivalence)    : {len(r1)} / 256')
r2 = set(ref)
for n, bits in cubes: r2 |= set(members(bits))
print(f'+ R2 (cube cover, {len(cubes)} cores): {len(r2)} / 256')
allr = r2 | {n ^ 16 for n in r2}
print(f'+ both                      : {len(allr)} / 256')

def split(S, i):
    a = sum(1 for n in S if not (n >> (7-i)) & 1)
    return a, len(S)-a
print()
for i,nm in enumerate(NEGNAME):
    lo = [n for n in range(256) if not (n>>(7-i))&1]
    hi = [n for n in range(256) if (n>>(7-i))&1]
    print(f'  {nm}:  bit0 {sum(1 for n in lo if n in allr):3d}/128   bit1 {sum(1 for n in hi if n in allr):3d}/128')
print()
print('still open:', sorted(set(range(256)) - allr))
