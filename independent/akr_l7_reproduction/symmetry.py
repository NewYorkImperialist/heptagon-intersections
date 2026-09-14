#!/usr/bin/env python3
"""
Checks AKR Sect. 10.2's symmetry reduction "not all 8! = 40320 assignments, but
only 840".

The eight sides carry two structures:
  (D) the DISJOINTNESS relation: the 12 pairs that must be disjoint, namely the
      four E_D edges a-A, b-B, a'-A', b'-B', the four intra-P pairs
      a-a', a-b', b-a', b-b', and the four intra-Q pairs A-A', A-B', B-A', B-B';
  (V) the SHARES-A-VERTEX matching: a-b, a'-b', A-B, A'-B' (consecutive sides).

A side->line assignment is only redundant with another if the relabelling
preserves BOTH structures.  This script computes:
  * |Aut(D)|                      -> 48, and 8!/48 = 840  (AKR's number)
  * that (V,D) graph is the 3-cube Q3
  * |Aut(D and V)|                -> 16, and 8!/16 = 2520 (the correct number)
  * the orbit of V under Aut(D)   -> size 3, and 2520 = 3 * 840
"""
import itertools

V = ['a', 'b', 'ap', 'bp', 'A', 'B', 'Ap', 'Bp']
DISJ = [('a','A'),('b','B'),('ap','Ap'),('bp','Bp'),
        ('a','ap'),('a','bp'),('b','ap'),('b','bp'),
        ('A','Ap'),('A','Bp'),('B','Ap'),('B','Bp')]
VERT = [('a','b'),('ap','bp'),('A','B'),('Ap','Bp')]
CROSS = [(x, y) for x in ['a','b','ap','bp'] for y in ['A','B','Ap','Bp']
         if frozenset((x, y)) not in set(map(frozenset, DISJ))]

D = set(map(frozenset, DISJ))
Vm = set(map(frozenset, VERT))

def img(m, S):
    return set(frozenset((m[x], m[y])) for e in S for x, y in [tuple(e)])

def aut(preserve_V):
    out = []
    for p in itertools.permutations(V):
        m = dict(zip(V, p))
        if img(m, D) != D:
            continue
        if preserve_V and img(m, Vm) != Vm:
            continue
        out.append(m)
    return out

if __name__ == "__main__":
    assert len(D) == 12 and len(Vm) == 4 and len(CROSS) == 12
    a1 = aut(False); a2 = aut(True)
    print("pairs: %d disjoint, %d share-a-vertex, %d must-cross (total %d = C(8,2))"
          % (len(D), len(Vm), len(CROSS), len(D)+len(Vm)+len(CROSS)))
    print("|Aut(disjointness graph)|            = %3d   8!/|Aut| = %d"
          % (len(a1), 40320 // len(a1)))
    print("|Aut(disjointness AND shares-vertex)|= %3d   8!/|Aut| = %d"
          % (len(a2), 40320 // len(a2)))
    orb = set(frozenset(img(m, Vm)) for m in a1)
    print("orbit of the shares-a-vertex matching under Aut(disjointness) = %d" % len(orb))
    for o in sorted(orb, key=lambda s: sorted(map(sorted, s))):
        print("   ", sorted(tuple(sorted(e)) for e in o))
    # is the disjointness graph the 3-cube?
    Q = list(itertools.product([0, 1], repeat=3))
    QE = set(frozenset((p, q)) for p in Q for q in Q
             if sum(x != y for x, y in zip(p, q)) == 1)
    iso = None
    for perm in itertools.permutations(Q):
        m = dict(zip(V, perm))
        if img(m, D) == QE:
            iso = m; break
    print("disjointness graph isomorphic to the 3-cube Q3:", iso is not None)
    if iso:
        print("   ", {k: ''.join(map(str, v)) for k, v in iso.items()})
    print()
    print("CONCLUSION: 840 = 8!/|Aut(Q3)| uses a group that does NOT preserve")
    print("            which pairs of sides are consecutive; the correct number")
    print("            of assignment classes is 2520 = 3 x 840.")
