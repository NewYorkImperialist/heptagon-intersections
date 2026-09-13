#!/usr/bin/env python3
"""
compare_paths.py -- set-level comparison of the two independent code paths.

  path A : certificate_a7opt.py  (Python; the project's ORIGINAL predicates,
           exec'd out of python/elimination/audit_enum.py; P-side recursion
           with an edge budget; union-find components; DFS 2-colouring)
  path B : reduction_a7opt.cpp   (C++; derived from Implementation B; Q-side
           column enumeration by degree sequence; bitmask-closure components;
           union-find-with-parity bipartiteness)

Compares, as SETS of (classP, classQ, graph) triples:
  * the residual that survives everything with A7 OFF;
  * the triples KILLED by the final avoiding-pair filter with A7 OFF;
  * the A7-ON baseline (which must be 225 killed, 0 surviving, in both).
"""
import json
import sys

A_on = json.load(open("py_with_a7.json"))
A_off = json.load(open("py_no_a7.json"))
B_on = json.load(open("cpp_with_a7.json"))
B_off = json.load(open("cpp_no_a7.json"))


def trip(c):
    m = c.get("P_neighbourhood_bitmasks")
    if m is None:
        m = c["graph"]["P_neighbourhood_bitmasks"]
    return (c["class_P"], c["class_Q"], tuple(m))


def A_survivors(d):
    return {trip(c) for c in d["cases"] if c.get("SURVIVES")}


def A_killed(d):
    return {trip(c) for c in d["cases"] if not c.get("SURVIVES")}


def A_reaching(d):
    return {trip(c) for c in d["cases"]}


def B_survivors(d):
    return {(c["class_P"], c["class_Q"], tuple(c["P_neighbourhood_bitmasks"]))
            for c in d["residual_survivors"]}


def B_reaching(d):
    return {(c["class_P"], c["class_Q"], tuple(c["P_neighbourhood_bitmasks"]))
            for c in d["triples_canonical"]}


bad = 0


def eq(name, x, y):
    global bad
    ok = (x == y)
    print(f"  [{'OK  ' if ok else 'FAIL'}] {name}: |A|={len(x)} |B|={len(y)}"
          + ("" if ok else f"  A\\B={len(x - y)} B\\A={len(y - x)}"))
    if not ok:
        bad += 1


print("A7 ON (baseline; must reproduce the shipped result)")
eq("triples reaching the final avoiding-pair filter", A_reaching(A_on), B_reaching(B_on))
eq("triples surviving everything", A_survivors(A_on), B_survivors(B_on))
assert len(A_survivors(A_on)) == 0, "baseline must have ZERO survivors"
print("      baseline survivor count is 0 in both paths, as shipped")

print("A7 OFF (the experiment)")
eq("triples reaching the final avoiding-pair filter", A_reaching(A_off), B_reaching(B_off))
eq("triples SURVIVING everything", A_survivors(A_off), B_survivors(B_off))

print("cross-relations")
R = A_reaching(A_off)
S = A_survivors(A_off)
K = A_killed(A_off)
base = A_reaching(A_on)
print(f"  reaching={len(R)}  surviving={len(S)}  killed={len(K)}")
print(f"  [{'OK  ' if K == base else 'FAIL'}] the triples killed by the "
      f"avoiding-pair filter with A7 OFF are EXACTLY the 225 that the shipped "
      f"A7-ON pipeline produces")
if K != base:
    bad += 1
print(f"  [{'OK  ' if not (S & base) else 'FAIL'}] no residual triple is one "
      f"of the shipped 225")
gS = {t[2] for t in S}
gB = {t[2] for t in base}
print(f"  residual distinct graphs = {len(gS)}, shipped distinct graphs = {len(gB)},"
      f" intersection = {len(gS & gB)}")

print("RESULT: PATHS AGREE" if bad == 0 else f"RESULT: {bad} DISAGREEMENTS")
sys.exit(1 if bad else 0)
