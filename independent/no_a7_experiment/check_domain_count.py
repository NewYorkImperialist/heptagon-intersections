#!/usr/bin/env python3
"""
check_domain_count.py -- closed-form cross-check of the enumeration domain.

The number of bipartite graphs on 7+7 labelled vertices with exactly 9 edges and
minimum degree >= 1 on BOTH sides, by inclusion-exclusion over the Q-side
vertices that are allowed to be isolated:

    N = sum_{j=0..7} (-1)^j C(7,j) [x^9] ((1+x)^(7-j) - 1)^7

(the inner bracket counts, for each P-side, a non-empty neighbourhood inside the
7-j permitted Q-sides).  Exact integer arithmetic, no enumeration.
"""
from math import comb

def polymul(a, b, cap):
    out = [0] * (cap + 1)
    for i, x in enumerate(a):
        if not x:
            continue
        for k, y in enumerate(b):
            if i + k > cap:
                break
            out[i + k] += x * y
    return out

CAP = 9
total = 0
for j in range(8):
    m = 7 - j
    base = [comb(m, t) for t in range(min(m, CAP) + 1)]
    base[0] -= 1                      # (1+x)^m - 1
    p = [1]
    for _ in range(7):
        p = polymul(p, base, CAP)
    total += (-1) ** j * comb(7, j) * (p[CAP] if CAP < len(p) else 0)

print(f"closed form  : {total}")
print(f"expected     : 13003620")
print("MATCH" if total == 13003620 else "MISMATCH")
