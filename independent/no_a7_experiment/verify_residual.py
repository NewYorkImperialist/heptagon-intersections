#!/usr/bin/env python3
"""
verify_residual.py -- INDEPENDENT RE-CHECK of the no-A7 residual set.

Reads only
  * data/exceptional_profiles/exceptional_profiles_14.json   (canonical input)
  * the residual list emitted by reduction_a7opt.cpp (or the Python path)

and re-derives, from scratch and with deliberately different code, every
property that the pipeline claims about each residual (classP, classQ, graph)
triple:

  1. |E| = 9 and minimum degree >= 1 on both sides   (enumeration domain)
  2. the P-side and Q-side neighbourhoods are consistent transposes
  3. connected components, recomputed by BFS
  4. AKR Lemma 5 on CONSECUTIVE pairs: satisfied on both polygons
  5. crossing-set compatibility: satisfied for classP on P and classQ on Q
  6. Cerny Lemma 2: satisfied for classP on P and classQ on Q
  7. AKR Lemma 5 on AVOIDING pairs: satisfied for classP on P and classQ on Q
  8. AKR Lemma 7 (H bipartite): FAILS -- this is why the triple is residual

Every predicate here is written independently of both pipeline
implementations: sets and lists instead of bitmasks, BFS instead of
union-find/closure, explicit injection enumeration for Lemma 2.

This script does NOT re-derive the 14 profiles and does NOT re-enumerate the
13,003,620 graphs; it checks the residual set it is given.  Completeness of the
residual set rests on the two enumerators, not on this file.

Usage: python3 verify_residual.py <residual.json> [--key residual_survivors]
"""
import json
import os
import sys
from itertools import permutations

_HERE = os.path.dirname(os.path.abspath(__file__))
_REPO = os.path.abspath(os.path.join(_HERE, os.pardir, os.pardir))
PROF_JSON = os.path.join(_REPO, "data", "exceptional_profiles",
                         "exceptional_profiles_14.json")

# --------------------------------------------------------------------------
# independent predicate implementations (sets, not bitmasks)
# --------------------------------------------------------------------------


def mask_to_set(m):
    return frozenset(i for i in range(7) if (m >> i) & 1)


def bfs_components(NP, NQ):
    """NP[i] = set of Q-sides adjacent to P-side i; NQ[j] symmetric.
    Returns (compP, compQ) as lists of component ids, ids assigned in order of
    first visit over P-sides then Q-sides."""
    compP = [None] * 7
    compQ = [None] * 7
    cid = 0
    for start in range(14):
        if start < 7:
            if compP[start] is not None:
                continue
            queue = [("P", start)]
            compP[start] = cid
        else:
            j = start - 7
            if compQ[j] is not None:
                continue
            queue = [("Q", j)]
            compQ[j] = cid
        while queue:
            side, v = queue.pop()
            if side == "P":
                for w in NP[v]:
                    if compQ[w] is None:
                        compQ[w] = cid
                        queue.append(("Q", w))
            else:
                for w in NQ[v]:
                    if compP[w] is None:
                        compP[w] = cid
                        queue.append(("P", w))
        cid += 1
    return compP, compQ


def cyc_adj(x, y):
    return (x - y) % 7 == 1 or (y - x) % 7 == 1


def l5(Na, Nb):
    """AKR Lemma 5 neighbour-adjacency condition: some element of Na\\Nb is
    cyclically adjacent to some element of Nb\\Na."""
    A = [x for x in Na if x not in Nb]
    B = [y for y in Nb if y not in Na]
    return any(cyc_adj(x, y) for x in A for y in B)


def h_bipartite(comp):
    V = [i for i in range(7) if comp[i] != comp[(i + 1) % 7]]
    E = []
    for a in range(len(V)):
        for b in range(a + 1, len(V)):
            i, k = V[a], V[b]
            if (k - i) % 7 in (0, 1, 6):
                continue
            if len({comp[i], comp[(i + 1) % 7], comp[k], comp[(k + 1) % 7]}) == 4:
                E.append((i, k))
    # brute-force 2-colouring over all assignments (n <= 7, so 2^7 = 128)
    for bits in range(1 << len(V)):
        col = {V[t]: (bits >> t) & 1 for t in range(len(V))}
        if all(col[i] != col[k] for (i, k) in E):
            return True
    return False


def compatible(crossed_sets, opp_neighbourhoods):
    """opp_neighbourhoods[j] = set of THIS polygon's sides that the other
    polygon's side j does NOT cross.  The crossed set must sit inside some
    maximal crossing set."""
    for Nj in opp_neighbourhoods:
        X = set(range(7)) - set(Nj)
        if not any(X <= C for C in crossed_sets):
            return False
    return True


def l2_ok(N, windows):
    """Cerny Lemma 2: reject if for some window the induced 4x4 block on four
    distinct opposite sides is EXACTLY a perfect matching.  Enumerated over
    ordered 4-tuples of distinct opposite sides (permutations)."""
    for w in windows:
        sides = [(w + t) % 7 for t in range(4)]
        for tup in permutations(range(7), 4):
            if any(tup[t] not in N[sides[t]] for t in range(4)):
                continue
            S = set(tup)
            if all(len(set(N[sides[t]]) & S) == 1 for t in range(4)):
                return False
    return True


def av_ok(N, comp, avoiding_pairs):
    for (i, j) in avoiding_pairs:
        if comp[i] != comp[j] and not l5(N[i], N[j]):
            return False
    return True


# --------------------------------------------------------------------------
def main():
    path = sys.argv[1]
    key = "residual_survivors"
    if "--key" in sys.argv:
        key = sys.argv[sys.argv.index("--key") + 1]

    P = json.load(open(PROF_JSON))["classes"]
    MCS = [[frozenset(s) for s in c["maximal_crossing_sets"]] for c in P]
    WIN = [c["lemma2_windows"] for c in P]
    AV = [[tuple(p) for p in c["avoiding_pairs"]] for c in P]

    doc = json.load(open(path))
    items = doc[key]
    print(f"checking {len(items)} residual triples from {path}")

    bad = 0
    graphs = set()
    for it in items:
        a, b = it["class_P"], it["class_Q"]
        rows = it["P_neighbourhood_bitmasks"]
        NP = [sorted(mask_to_set(m)) for m in rows]
        NQ = [sorted(i for i in range(7) if j in NP[i]) for j in range(7)]
        graphs.add(tuple(rows))

        errs = []
        # 1. domain
        if sum(len(x) for x in NP) != 9:
            errs.append("|E| != 9")
        if any(len(x) == 0 for x in NP) or any(len(x) == 0 for x in NQ):
            errs.append("min degree < 1")
        # 2. transpose consistency against the emitted Q masks, if present
        if "Q_neighbourhood_bitmasks" in it:
            if [sorted(mask_to_set(m)) for m in it["Q_neighbourhood_bitmasks"]] != NQ:
                errs.append("Q masks are not the transpose of the P masks")
        # 3. components
        compP, compQ = bfs_components(NP, NQ)
        if "components_P" in it:
            # component ids may be numbered differently; compare partitions
            def part(x):
                d = {}
                for idx, c in enumerate(x):
                    d.setdefault(c, []).append(idx)
                return sorted(tuple(v) for v in d.values())
            if part(compP) != part(it["components_P"]):
                errs.append("P components differ")
            if part(compQ) != part(it["components_Q"]):
                errs.append("Q components differ")
        # 4. consecutive AKR L5
        for i in range(7):
            k = (i + 1) % 7
            if compP[i] != compP[k] and not l5(NP[i], NP[k]):
                errs.append(f"consecutive L5 fails on P at {i}")
        for j in range(7):
            k = (j + 1) % 7
            if compQ[j] != compQ[k] and not l5(NQ[j], NQ[k]):
                errs.append(f"consecutive L5 fails on Q at {j}")
        # 5. compatibility
        if not compatible(MCS[a], NQ):
            errs.append("classP incompatible")
        if not compatible(MCS[b], NP):
            errs.append("classQ incompatible")
        # 6. Cerny L2
        if not l2_ok(NP, WIN[a]):
            errs.append("classP fails Cerny L2")
        if not l2_ok(NQ, WIN[b]):
            errs.append("classQ fails Cerny L2")
        # 7. avoiding-pair L5
        if not av_ok(NP, compP, AV[a]):
            errs.append("classP killed by avoiding-pair L5")
        if not av_ok(NQ, compQ, AV[b]):
            errs.append("classQ killed by avoiding-pair L5")
        # 8. A7 must FAIL (that is the whole point of the residual)
        if h_bipartite(compP):
            errs.append("H IS bipartite on P -- would have survived WITH A7 too")
        if h_bipartite(compQ):
            errs.append("H IS bipartite on Q -- would have survived WITH A7 too")

        if errs:
            bad += 1
            if bad <= 10:
                print(f"  FAIL (classP={a}, classQ={b}, rows={rows}): {errs}")

    print(f"distinct graphs: {len(graphs)}")
    print("VERIFY: OK -- every residual triple genuinely passes every applied "
          "filter and genuinely fails A7" if bad == 0
          else f"VERIFY: {bad} FAILURES")
    sys.exit(1 if bad else 0)


main()
