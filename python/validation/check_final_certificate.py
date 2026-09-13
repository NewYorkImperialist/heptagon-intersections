#!/usr/bin/env python3
"""
check_final_certificate.py  --  INDEPENDENT CHECKER for the final elimination.

Reads ONLY:
  * the certificate JSON emitted by make_final_certificate.py, and
  * data/exceptional_profiles/exceptional_profiles_14.json (canonical profiles).

Shares NO code with the generator or with any search script: standard library
only, no chiro, no geom, no pickles.  Every quantity is recomputed from the
canonical graph encoding; the certificate's convenience fields are treated as
CLAIMS TO BE CHECKED, never as input.

Components are recomputed by BFS; the generator used union-find.  Component
IDs are therefore arbitrary labels, so the checker compares the PARTITIONS
they induce rather than the raw integers.

Exit status 0 iff every case establishes its contradiction.  Any failure is
reported and the exit status is 1.

WHAT THIS PROVES, AND WHAT IT DOES NOT
--------------------------------------
Proves: each listed (classP, classQ, graph) combination is refuted by the
neighbour-adjacency consequence of AKR Lemma 5.
Does NOT prove: that the list is COMPLETE.  Completeness rests on the
exhaustive enumeration in the generator, which this checker does not repeat.
Also assumed, not checked: the correctness of the canonical profile data, and
that the neighbour-adjacency condition really is implied by AKR Lemma 5.

Usage:
    python3 check_final_certificate.py <certificate.json> [profiles.json]
"""
import json
import os
import sys
from collections import Counter, deque

cert_path = sys.argv[1]
prof_path = (sys.argv[2] if len(sys.argv) > 2 else
             os.path.join(os.path.dirname(os.path.abspath(__file__)),
                          os.pardir, os.pardir, "data", "exceptional_profiles",
                          "exceptional_profiles_14.json"))

cert = json.load(open(cert_path))
prof = json.load(open(prof_path))
AVOID = {c["class_index"]: {tuple(p) for p in c["avoiding_pairs"]} for c in prof["classes"]}

errors = []


def fail(cid, msg):
    errors.append(f"case {cid}: {msg}")


def nbrs(mask):
    return [k for k in range(7) if mask >> k & 1]


def components(P):
    """Components of the bipartite graph on P-sides 0..6 and Q-sides 7..13, by BFS."""
    adj = {v: [] for v in range(14)}
    for i in range(7):
        for j in nbrs(P[i]):
            adj[i].append(7 + j)
            adj[7 + j].append(i)
    comp, cid = {}, 0
    for s in range(14):
        if s in comp:
            continue
        comp[s] = cid
        dq = deque([s])
        while dq:
            u = dq.popleft()
            for w in adj[u]:
                if w not in comp:
                    comp[w] = cid
                    dq.append(w)
        cid += 1
    return [comp[v] for v in range(7)], [comp[7 + v] for v in range(7)]


def adjacent_in_Z7(x, y):
    return (x - y) % 7 == 1 or (y - x) % 7 == 1


for case in cert["cases"]:
    cid = case.get("case_id", "?")

    if case.get("SURVIVES"):
        fail(cid, "entry is marked SURVIVES: the elimination is INCOMPLETE")
        continue
    if "witness" not in case or "graph" not in case:
        fail(cid, "missing witness or graph")
        continue

    g, w = case["graph"], case["witness"]

    # --- recompute the graph from the canonical encoding ---
    P = list(g["P_neighbourhood_bitmasks"])
    if len(P) != 7 or any(not (0 <= m < 128) for m in P):
        fail(cid, "malformed P_neighbourhood_bitmasks")
        continue
    Q = [0] * 7
    for i in range(7):
        for j in nbrs(P[i]):
            Q[j] |= 1 << i

    if sum(bin(m).count("1") for m in P) != 9:
        fail(cid, f"edge count is {sum(bin(m).count('1') for m in P)}, expected 9")
    if min(bin(m).count("1") for m in P) < 1 or min(bin(m).count("1") for m in Q) < 1:
        fail(cid, "minimum degree is 0 on some side")
    if sorted((bin(m).count("1") for m in P), reverse=True) != g["degree_sequence_P"]:
        fail(cid, "claimed degree_sequence_P does not match the graph")
    if sorted((bin(m).count("1") for m in Q), reverse=True) != g["degree_sequence_Q"]:
        fail(cid, "claimed degree_sequence_Q does not match the graph")

    # --- the witness side fixes which neighbourhoods and components apply ---
    side = w["side"]
    if side == "P":
        N, cls = P, case["class_P"]
    elif side == "Q":
        N, cls = Q, case["class_Q"]
    else:
        fail(cid, f"witness side {side!r} is neither P nor Q")
        continue
    if cls != w["class_used"]:
        fail(cid, f"class_used {w['class_used']} disagrees with the {side}-side class {cls}")

    compP, compQ = components(P)
    comp = compP if side == "P" else compQ

    # Component IDs are arbitrary labels (the generator uses union-find, this
    # checker uses BFS), so compare the PARTITIONS they induce, not the labels.
    def partition(lbl):
        return {frozenset(k for k in range(7) if lbl[k] == v) for v in set(lbl)}

    if partition(compP) != partition(g["components_P"]):
        fail(cid, "claimed components_P induce a different partition of the "
                  "P-sides than recomputation")
    if partition(compQ) != partition(g["components_Q"]):
        fail(cid, "claimed components_Q induce a different partition of the "
                  "Q-sides than recomputation")

    i, j = w["pair"]
    if not (0 <= i < 7 and 0 <= j < 7) or i == j:
        fail(cid, f"bad side pair {(i, j)}")
        continue

    # --- (1) the pair must be avoiding (or consecutive) for that class ---
    is_consecutive = (j - i) % 7 in (1, 6)
    is_avoiding = (min(i, j), max(i, j)) in AVOID.get(cls, set())
    if w["pair_kind"] == "avoiding":
        if not is_avoiding:
            fail(cid, f"pair {(i, j)} is not an avoiding pair of class {cls} "
                      f"in the canonical profile data")
        if is_consecutive:
            fail(cid, f"pair {(i, j)} is adjacent, so it cannot be avoiding")
    elif w["pair_kind"] == "consecutive":
        if not is_consecutive:
            fail(cid, f"pair {(i, j)} is not consecutive")
    else:
        fail(cid, f"unknown pair_kind {w['pair_kind']!r}")

    # --- (2) the two sides must lie in DIFFERENT components ---
    if comp[i] == comp[j]:
        fail(cid, f"sides {i} and {j} are in the SAME component ({comp[i]}): "
                  f"AKR Lemma 5 does not apply")
    claimed = g["components_P"] if side == "P" else g["components_Q"]
    if [claimed[i], claimed[j]] != [w["component_of_i"], w["component_of_j"]]:
        fail(cid, f"witness component IDs {[w['component_of_i'], w['component_of_j']]} "
                  f"are inconsistent with the certificate's own component array")
    if (claimed[i] == claimed[j]) != (comp[i] == comp[j]):
        fail(cid, "certificate and recomputation disagree on whether the two "
                  "sides share a component")

    # --- (3) neighbourhoods and their differences ---
    Ni, Nj = nbrs(N[i]), nbrs(N[j])
    if Ni != w["N_i"] or Nj != w["N_j"]:
        fail(cid, f"claimed neighbourhoods {w['N_i']}/{w['N_j']} disagree with "
                  f"recomputed {Ni}/{Nj}")
    A = [x for x in Ni if x not in Nj]
    B = [x for x in Nj if x not in Ni]
    if A != w["A_i_minus_j"] or B != w["B_j_minus_i"]:
        fail(cid, f"claimed differences {w['A_i_minus_j']}/{w['B_j_minus_i']} "
                  f"disagree with recomputed {A}/{B}")
    if not A or not B:
        fail(cid, "one of the neighbourhood differences is empty; AKR Lemma 5 "
                  "asserts an alternating 2x2 pattern, which needs both non-empty")

    # --- (4) THE CONTRADICTION: no element of A is cyclically adjacent to B ---
    found = [[x, y] for x in A for y in B if adjacent_in_Z7(x, y)]
    if found:
        fail(cid, f"AKR Lemma 5 is SATISFIED via {found}: this case is NOT killed")
    if found != w["cyclic_adjacent_pairs_found"]:
        fail(cid, "claimed cyclic_adjacent_pairs_found disagrees with recomputation")

# --------------------------------------------------------------------------
n = len(cert["cases"])
graphs = {tuple(c["graph"]["P_neighbourhood_bitmasks"]) for c in cert["cases"] if "graph" in c}
dsP = Counter(tuple(c["graph"]["degree_sequence_P"]) for c in cert["cases"] if "graph" in c)
dsQ = Counter(tuple(c["graph"]["degree_sequence_Q"]) for c in cert["cases"] if "graph" in c)

print(f"certificate : {os.path.basename(cert_path)}")
print(f"profiles    : {os.path.basename(prof_path)} ({len(AVOID)} classes)")
print(f"Cerny L3 active in generation: {cert['filters_active']['Cerny_Lemma_3']}")
print(f"external lemmas relied on    : {', '.join(cert['external_lemmas_relied_on'])}")
print()
print(f"cases checked        : {n}")
print(f"distinct graphs      : {len(graphs)}")
print(f"degree sequences (P) : {dict(dsP)}")
print(f"degree sequences (Q) : {dict(dsQ)}")
print(f"classes P            : {sorted({c['class_P'] for c in cert['cases']})}")
print(f"classes Q            : {sorted({c['class_Q'] for c in cert['cases']})}")
print()

if errors:
    print(f"*** FAILED: {len(errors)} problem(s) ***")
    for e in errors[:40]:
        print("  " + e)
    if len(errors) > 40:
        print(f"  ... and {len(errors) - 40} more")
    sys.exit(1)

print(f"OK: all {n} cases establish the AKR Lemma 5 contradiction.")
print("Each case is refuted; COMPLETENESS of the case list is NOT checked here.")
