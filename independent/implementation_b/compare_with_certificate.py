#!/usr/bin/env python3
"""
compare_with_certificate.py -- strong comparison of Implementation B's output
against the existing 225-case certificate produced by Implementation A.

Compares SETS of (class_P, class_Q, canonical graph encoding), not just counts.
Exit status 0 iff the two sets are exactly equal.
"""
import json
import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
b_path = sys.argv[1] if len(sys.argv) > 1 else os.path.join(HERE, "implementation_b_output.json")
a_path = sys.argv[2] if len(sys.argv) > 2 else os.path.join(
    HERE, os.pardir, os.pardir, "data", "certificates", "final_elimination_225.json")

B = json.load(open(b_path))
A = json.load(open(a_path))

setB = {(t["class_P"], t["class_Q"], tuple(t["P_neighbourhood_bitmasks"]))
        for t in B["triples_canonical"]}
setA = {(c["class_P"], c["class_Q"], tuple(c["graph"]["P_neighbourhood_bitmasks"]))
        for c in A["cases"]}

print(f"Implementation B : {len(B['triples_canonical'])} triples "
      f"({len(setB)} distinct)")
print(f"Certificate (A)  : {len(A['cases'])} cases ({len(setA)} distinct)")
print()
for k, v in B["counts"].items():
    print(f"  B {k:<34}: {v:,}")
print()

only_a = sorted(setA - setB)
only_b = sorted(setB - setA)
graphs_a = {t[2] for t in setA}
graphs_b = {t[2] for t in setB}

print(f"triples only in the certificate : {len(only_a)}")
print(f"triples only in Implementation B: {len(only_b)}")
print(f"distinct graphs A / B           : {len(graphs_a)} / {len(graphs_b)}"
      f"  equal: {graphs_a == graphs_b}")

if only_a or only_b:
    print("\n*** SETS DIFFER -- FIRST DISCREPANCIES ***")
    for t in only_a[:10]:
        print(f"  only in A: class_P={t[0]} class_Q={t[1]} rows={list(t[2])}")
    for t in only_b[:10]:
        print(f"  only in B: class_P={t[0]} class_Q={t[1]} rows={list(t[2])}")
    sys.exit(1)

print("\nEXACT SET EQUALITY: Implementation B independently reproduces the "
      "certificate's 225 triples.")
