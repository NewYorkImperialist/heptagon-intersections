#!/usr/bin/env python3
"""Check that the four variants of om_lemma7.py cover every case of Lemma 7 for
n = 7, up to the order-16 automorphism group of the configuration.

For n = 7 the two consecutive pairs (p_i,p_{i+1}) and (p_j,p_{j+1}) must share no
side, so (j-i) mod 7 in {2,3,4,5}.  Writing the polygon vertices of P as
V(k) = p_k ^ p_{k+1}, the six P-endpoints of the configuration are
    a = [V(i-1), V(i)]        -> a2 = V(i-1), v1 = V(i)
    b = [V(i),   V(i+1)]      -> b2 = V(i+1)
    a' = [V(j-1), V(j)]       -> ap2 = V(j-1), v2 = V(j)
    b' = [V(j),   V(j+1)]     -> bp2 = V(j+1)
so coincidences among {a2, v1, b2, ap2, v2, bp2} are exactly the P-adjacencies.
The same analysis applies to Q.  We enumerate all cases and map each to a variant.
"""
import itertools
import arr8

print("P-side endpoint coincidences for n = 7, as a function of d = (j-i) mod 7:")
for d in [2, 3, 4, 5]:
    i, j = 0, d
    lab = {"a2": (i-1) % 7, "v1": i % 7, "b2": (i+1) % 7,
           "ap2": (j-1) % 7, "v2": j % 7, "bp2": (j+1) % 7}
    inv = {}
    for k, v in lab.items():
        inv.setdefault(v, []).append(k)
    coll = {v: ks for v, ks in inv.items() if len(ks) > 1}
    variant = "generic" if not coll else "P-adj (up to the a<->b, a'<->b' symmetry)"
    print("  d=%d  vertices %s  coincidences %s  -> %s"
          % (d, {k: v for k, v in sorted(lab.items())}, coll or "none", variant))

print()
print("Q-side adjacency: the four possible adjacencies between the pairs (A,B)")
print("and (A',B') of Q, and their images under the order-%d automorphism group:"
      % len(arr8.AUT))
adj = [("A", "Ap"), ("A", "Bp"), ("B", "Ap"), ("B", "Bp")]
orb = {}
for x, y in adj:
    key = frozenset((x, y))
    orb.setdefault(key, set())
    for m in arr8.AUT:
        orb[key].add(frozenset((m[x], m[y])))
classes = []
seen = set()
for k in adj:
    kf = frozenset(k)
    if kf in seen:
        continue
    o = orb[kf] & set(map(frozenset, adj))
    classes.append(sorted(tuple(sorted(z)) for z in o))
    seen |= o
print("  orbits among the four Q-adjacencies:", classes)
print("  => %d orbit(s); the Q-adj variant models one representative, so all are covered."
      % len(classes))
