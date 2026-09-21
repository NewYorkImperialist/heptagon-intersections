#!/usr/bin/env python3
"""Cross-check derived.py's 46 pinned signs against chirocheck.c's solver-free,
exact-arithmetic, non-degenerate sampler.

chirocheck prints every triple whose eta-normalised sign (eta = or(1,2,8)) is
constant over all configurations it found.  Every fact in derived.py must
appear there with the same value.  A mismatch would mean derived.py is wrong;
a fact that is NOT in the forced list means the sampler saw both signs, i.e.
the fact is false."""
import re, subprocess, sys
from derived import SIGNS

mode = sys.argv[1] if len(sys.argv)>1 else 'thm'
secs = sys.argv[2] if len(sys.argv)>2 else '60'
seed = sys.argv[3] if len(sys.argv)>3 else '13579'
out = subprocess.run(['./chirocheck', mode, secs, seed], capture_output=True, text=True).stdout
nconf = int(re.search(r'hypotheses = (\d+)', out).group(1))
forced = {}
for m in re.finditer(r'or\((\d+),(\d+),(\d+)\) = ([+-]1) \* eta', out):
    a,b,c,s = int(m.group(1)),int(m.group(2)),int(m.group(3)),int(m.group(4))
    forced[(a,b,c)] = s

def canon(a,b,c):
    """orient is alternating: reduce to sorted indices with a sign."""
    t=[a,b,c]; sgn=1
    for i in range(3):
        for j in range(i+1,3):
            if t[i]>t[j]: t[i],t[j]=t[j],t[i]; sgn=-sgn
    return tuple(t), sgn

print('mode=%s  configurations=%d  forced triples=%d' % (mode, nconf, len(forced)))
ok=miss=wrong=0
for (a,b,c,s,prov) in SIGNS:
    key,sg = canon(a,b,c)
    if key not in forced:
        miss+=1; print('  NOT FORCED  or(%d,%d,%d) %+d [%s]'%(a,b,c,s,prov))
    elif forced[key]*sg != s:
        wrong+=1; print('  *** WRONG *** or(%d,%d,%d) expected %+d, sampler says %+d [%s]'%(a,b,c,s,forced[key]*sg,prov))
    else: ok+=1
print('derived signs: %d confirmed forced, %d not forced, %d WRONG (of %d)'%(ok,miss,wrong,len(SIGNS)))
