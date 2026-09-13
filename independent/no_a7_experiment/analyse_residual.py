#!/usr/bin/env python3
"""
analyse_residual.py -- characterisation of the no-A7 residual, plus clearly
labelled DIAGNOSTICS.

Nothing in this file feeds the verdict.  The diagnostics marked [DIAG] apply
predicates that the project does NOT justify (Cerny Lemma 3, which is unaudited
and explicitly off-limits as an A7 replacement; and deliberately over-strong
variants of AKR Lemma 5).  They are computed only to show how far the residual
is from being eliminable, and are reported as such.
"""
import json
import os
import sys
from collections import Counter, defaultdict

_HERE = os.path.dirname(os.path.abspath(__file__))
_REPO = os.path.abspath(os.path.join(_HERE, os.pardir, os.pardir))
P = json.load(open(os.path.join(_REPO, "data", "exceptional_profiles",
                                "exceptional_profiles_14.json")))["classes"]
AVP = [[tuple(p) for p in c["avoiding_pairs"]] for c in P]

doc = json.load(open(sys.argv[1]))
S = doc["residual_survivors"]
FULL = 127


def bits(m):
    return [i for i in range(7) if m >> i & 1]


def comps(rows):
    NP = [bits(m) for m in rows]
    NQ = [[i for i in range(7) if j in NP[i]] for j in range(7)]
    cp = [None] * 7
    cq = [None] * 7
    cid = 0
    for s in range(7):
        if cp[s] is not None:
            continue
        cp[s] = cid
        st = [("P", s)]
        while st:
            side, v = st.pop()
            if side == "P":
                for w in NP[v]:
                    if cq[w] is None:
                        cq[w] = cid
                        st.append(("Q", w))
            else:
                for w in NQ[v]:
                    if cp[w] is None:
                        cp[w] = cid
                        st.append(("P", w))
        cid += 1
    return NP, NQ, cp, cq


def cyc_adj(x, y):
    return (x - y) % 7 == 1 or (y - x) % 7 == 1


def l5(Na, Nb):
    A = [x for x in Na if x not in Nb]
    B = [y for y in Nb if y not in Na]
    return any(cyc_adj(x, y) for x in A for y in B)


def l3_ok(N):
    """Cerny et al. Lemma 3, transcribed from audit_enum.py.  [DIAG ONLY]"""
    for i in range(7):
        for j in range(7):
            mq = FULL ^ (1 << j)
            ok = True
            dq = [0] * 7
            for k in range(7):
                if k == i:
                    continue
                dd = N[k] & mq
                if bin(dd).count("1") != 1:
                    ok = False
                    break
                dq[dd.bit_length() - 1] += 1
            if ok and all(dq[t] == 1 for t in range(7) if t != j):
                return False
    return True


# ---------------------------------------------------------------- structure
graphs = {}
for s in S:
    graphs.setdefault(tuple(s["P_neighbourhood_bitmasks"]), []).append(s)
print(f"residual: {len(S)} triples on {len(graphs)} distinct graphs")

# component-size profiles
prof = Counter()
for g in graphs:
    NP, NQ, cp, cq = comps(list(g))
    sizes = Counter()
    for i in range(7):
        sizes[cp[i]] += 1
    for j in range(7):
        sizes[cq[j]] += 1
    # (P-size, Q-size) multiset per component
    per = sorted((sum(1 for i in range(7) if cp[i] == c),
                  sum(1 for j in range(7) if cq[j] == c)) for c in set(cp))
    prof[tuple(per)] += 1
print("component (|P-sides|,|Q-sides|) profiles of the residual graphs:")
for k, v in sorted(prof.items()):
    print(f"   {k}: {v}")

# same for the 121 that A7 keeps, for contrast
b = json.load(open(os.path.join(_HERE, "baseline_with_a7.json")))
g121 = sorted({tuple(c["graph"]["P_neighbourhood_bitmasks"]) for c in b["cases"]})
prof2 = Counter()
for g in g121:
    NP, NQ, cp, cq = comps(list(g))
    per = sorted((sum(1 for i in range(7) if cp[i] == c),
                  sum(1 for j in range(7) if cq[j] == c)) for c in set(cp))
    prof2[tuple(per)] += 1
print("same, for the 121 graphs A7 KEEPS (killed by avoiding-pair L5):")
for k, v in sorted(prof2.items()):
    print(f"   {k}: {v}")
print("overlap between the two graph sets:", len(set(graphs) & set(g121)))

# ---------------------------------------------------------------- symmetry
def rot_graph(rows, r, t):
    """rotate P labels by r and Q labels by t."""
    out = [0] * 7
    for i in range(7):
        for j in bits(rows[i]):
            out[(i + r) % 7] |= 1 << ((j + t) % 7)
    return tuple(out)


def refl_graph(rows, fp, fq):
    out = [0] * 7
    for i in range(7):
        for j in bits(rows[i]):
            ii = (-i) % 7 if fp else i
            jj = (-j) % 7 if fq else j
            out[ii] |= 1 << jj
    return tuple(out)


def transpose(rows):
    NP = [bits(m) for m in rows]
    out = [0] * 7
    for j in range(7):
        for i in range(7):
            if j in NP[i]:
                out[j] |= 1 << i
    return tuple(out)


def orbit(g):
    seen = set()
    frontier = {tuple(g)}
    while frontier:
        nxt = set()
        for x in frontier:
            for y in [rot_graph(list(x), 1, 0), rot_graph(list(x), 0, 1),
                      refl_graph(list(x), 1, 0), refl_graph(list(x), 0, 1),
                      transpose(list(x))]:
                if y not in seen:
                    nxt.add(y)
        seen |= frontier
        frontier = nxt - seen
    return seen


def orbits(gs):
    gs = set(gs)
    seen = set()
    out = []
    for g in sorted(gs):
        if g in seen:
            continue
        o = orbit(g)
        out.append(o)
        seen |= o
    return out


ob = orbits(graphs)
print(f"\nresidual graphs fall into {len(ob)} orbits under "
      f"<rotate P, rotate Q, reflect P, reflect Q, transpose>")
print("   orbit sizes:", Counter(len(o) for o in ob))
print("   every orbit entirely inside the residual set:",
      all(o <= set(graphs) for o in ob))
ob121 = orbits(g121)
print(f"the 121 A7-kept graphs fall into {len(ob121)} orbits; sizes:",
      Counter(len(o) for o in ob121))

# ------------------------------------------------------- DIAGNOSTICS ONLY
print("\n=== DIAGNOSTICS (NOT part of the verdict; these predicates are NOT "
      "justified by the project) ===")

# [DIAG] Cerny Lemma 3 -- unaudited, explicitly off-limits as an A7 replacement
killed_l3 = 0
for g in graphs:
    NP, NQ, cp, cq = comps(list(g))
    nqm = [sum(1 << i for i in NQ[j]) for j in range(7)]
    if not l3_ok(list(g)) or not l3_ok(nqm):
        killed_l3 += 1
print(f"[DIAG] Cerny Lemma 3 would kill {killed_l3} of the {len(graphs)} "
      f"residual graphs ({len(graphs) - killed_l3} would remain)")

# [DIAG] avoiding-pair L5 WITHOUT the different-component guard (too strong)
kk = 0
for g, items in graphs.items():
    NP, NQ, cp, cq = comps(list(g))
    alive = False
    for s in items:
        a, bcl = s["class_P"], s["class_Q"]
        okP = all(l5(NP[i], NP[j]) for (i, j) in AVP[a])
        okQ = all(l5(NQ[i], NQ[j]) for (i, j) in AVP[bcl])
        if okP and okQ:
            alive = True
    if not alive:
        kk += 1
print(f"[DIAG] dropping the different-component guard on the avoiding-pair "
      f"filter would kill {kk} of the {len(graphs)} residual graphs")

# [DIAG] AKR L5 applied to ALL non-adjacent pairs (wildly too strong)
kk = 0
for g in graphs:
    NP, NQ, cp, cq = comps(list(g))
    bad = False
    for i in range(7):
        for j in range(i + 1, 7):
            if (j - i) % 7 in (1, 6):
                continue
            if cp[i] != cp[j] and not l5(NP[i], NP[j]):
                bad = True
            if cq[i] != cq[j] and not l5(NQ[i], NQ[j]):
                bad = True
    if bad:
        kk += 1
print(f"[DIAG] AKR L5 on ALL non-adjacent pairs would kill {kk} of "
      f"{len(graphs)} residual graphs")

# [DIAG] how many residual graphs admit a DIAGONAL (classP == classQ) triple
diag = sum(1 for g, items in graphs.items()
           if any(s["class_P"] == s["class_Q"] for s in items))
print(f"[DIAG] residual graphs admitting classP == classQ: {diag}")
