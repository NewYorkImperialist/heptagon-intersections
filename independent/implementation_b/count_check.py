#!/usr/bin/env python3
"""
count_check.py -- independent closed-form check of the graph count.

Counts 7x7 bipartite graphs with exactly 9 edges and minimum degree >= 1 on
BOTH sides, by inclusion-exclusion over the set of UNCOVERED Q-sides:

    count = sum_{j=0}^{7} (-1)^j C(7,j) T(7-j),
    T(k)  = [x^9] ((1+x)^k - 1)^7

Reading: each of the 7 P-sides independently chooses a NON-EMPTY subset of an
allowed k-subset of Q-sides (generating function (1+x)^k - 1 per P-side, x
marking edges); [x^9] fixes the total edge count at 9; inclusion-exclusion then
removes the tuples that fail to cover every Q-side.  Minimum degree >= 1 on the
P side is already forced by "non-empty" in the generating function.

Exact integer polynomial arithmetic; no enumeration, no floating point.
This derivation is independent of BOTH implementations.
"""
from math import comb

DEG = 9
N = 7


def poly_mul(a, b, cap):
    out = [0] * (cap + 1)
    for i, ai in enumerate(a):
        if ai:
            for j, bj in enumerate(b):
                if bj and i + j <= cap:
                    out[i + j] += ai * bj
    return out


def poly_pow(a, e, cap):
    r = [0] * (cap + 1)
    r[0] = 1
    for _ in range(e):
        r = poly_mul(r, a, cap)
    return r


def T(k):
    """[x^9] ((1+x)^k - 1)^7"""
    base = [comb(k, t) for t in range(min(k, DEG) + 1)]  # (1+x)^k truncated
    base[0] -= 1                                          # minus 1
    return poly_pow(base, N, DEG)[DEG]


total = 0
print("inclusion-exclusion over uncovered Q-sides:")
print(f"{'j':>2} {'C(7,j)':>7} {'T(7-j)':>14} {'term':>16}")
for j in range(N + 1):
    t = T(N - j)
    term = (-1) ** j * comb(N, j) * t
    total += term
    print(f"{j:>2} {comb(N, j):>7} {t:>14,} {term:>16,}")

print()
print(f"9-edge graphs, min degree >= 1 both sides : {total:,}")

# Cross-checks: the same formula at other edge counts, and the historical total.
def count_edges(E):
    global DEG
    save = DEG
    DEG = E
    r = sum((-1) ** j * comb(N, j) * T(N - j) for j in range(N + 1))
    DEG = save
    return r


c7, c8, c9 = count_edges(7), count_edges(8), count_edges(9)
print(f"  |E| = 7 : {c7:,}")
print(f"  |E| = 8 : {c8:,}")
print(f"  |E| = 9 : {c9:,}")
print(f"  sum     : {c7 + c8 + c9:,}   "
      f"(the historical 13,484,940 figure; see known-issues.md K-01)")
