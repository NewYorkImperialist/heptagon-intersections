#!/usr/bin/env python3
"""
Validate that the 3-term Grassmann-Plucker axiom set used in om_lemma7.py really
characterises uniform rank-3 chirotopes, by brute-force enumeration for small n
and comparison with the published counts.

For n elements we enumerate all 2^C(n,3) sign assignments, keep those satisfying
the axioms, and count equivalence classes under
    - relabeling (n! permutations), and
    - reorientation (flip the sign of a subset S of elements:
      chi'(i,j,k) = chi(i,j,k) * (-1)^|{i,j,k} cap S|).
Those classes are exactly the simple arrangements of n pseudolines.
Published values (Felsner & Goodman, Handbook of Discrete and Computational
Geometry, Table 5.6.1, row "Simple arr's of n p'lines"):
    n = 3,4,5,6,7  ->  1, 1, 1, 4, 11
"""
import itertools, sys
from collections import defaultdict

EXPECTED = {3: 1, 4: 1, 5: 1, 6: 4, 7: 11}

def triples(n):
    return list(itertools.combinations(range(n), 3))

def axioms(n):
    """list of (t1a,t1b, t2a,t2b, t3a,t3b) index-triples for the GP relations"""
    out = []
    for five in itertools.combinations(range(n), 5):
        for a in five:
            b, c, d, e = [x for x in five if x != a]
            out.append((srt(a, b, c), srt(a, d, e),
                        srt(a, b, d), srt(a, c, e),
                        srt(a, b, e), srt(a, c, d)))
    return out

def srt(i, j, k):
    """sorted triple + parity (+1/-1) of the sorting permutation"""
    p = [i, j, k]; s = 1
    for a in range(2):
        for b in range(2 - a):
            if p[b] > p[b + 1]:
                p[b], p[b + 1] = p[b + 1], p[b]; s = -s
    return (tuple(p), s)

def enumerate_chirotopes(n):
    T = triples(n); TI = {t: i for i, t in enumerate(T)}
    AX = axioms(n)
    ax = [tuple((TI[t], s) for (t, s) in a) for a in AX]
    good = []
    for mask in range(1 << len(T)):
        sg = [1 if (mask >> i) & 1 else -1 for i in range(len(T))]
        ok = True
        for (i1, s1), (i2, s2), (i3, s3), (i4, s4), (i5, s5), (i6, s6) in ax:
            t1 = sg[i1]*s1 * sg[i2]*s2
            t2 = -sg[i3]*s3 * sg[i4]*s4
            t3 = sg[i5]*s5 * sg[i6]*s6
            if t1 == t2 == t3:
                ok = False; break
        if ok:
            good.append(tuple(sg))
    return T, TI, good

def classes(n, T, TI, good):
    gs = set(good)
    seen = set(); reps = 0
    for g in good:
        if g in seen:
            continue
        reps += 1
        orb = set()
        for perm in itertools.permutations(range(n)):
            for S in range(1 << n):
                h = [0]*len(T)
                for t in T:
                    pt, s = srt(perm[t[0]], perm[t[1]], perm[t[2]])
                    v = g[TI[t]]
                    f = 1
                    for x in t:
                        if (S >> x) & 1:
                            f = -f
                    h[TI[pt]] = v * s * f
                orb.add(tuple(h))
        seen |= orb
    return reps

if __name__ == "__main__":
    nmax = int(sys.argv[1]) if len(sys.argv) > 1 else 6
    allok = True
    for n in range(3, nmax + 1):
        T, TI, good = enumerate_chirotopes(n)
        c = classes(n, T, TI, good)
        exp = EXPECTED.get(n)
        ok = (exp is None or c == exp)
        allok &= ok
        print("n=%d  sign assignments=2^%d  satisfying the axioms=%d  "
              "reorientation/relabeling classes=%d  published=%s  %s"
              % (n, len(T), len(good), c, exp, "OK" if ok else "*** MISMATCH ***"))
        sys.stdout.flush()
    print("RESULT:", "AXIOM SET VALIDATED" if allok else "*** AXIOM SET WRONG ***")
