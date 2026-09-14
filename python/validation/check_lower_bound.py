#!/usr/bin/env python3
"""
check_lower_bound.py  --  ADDED DURING REPOSITORY ORGANIZATION (2026-09-13).

Standalone referee check of the f(7,7) >= 38 lower-bound certificate.

This is the cheapest meaningful audit of this project: it runs in well under a
second, uses only exact integer arithmetic from python/core/geom.py, and
depends on NO external lemma, NO enumeration and NO Lean.  It establishes the
lower bound outright.  It says nothing whatsoever about the upper bound
f(7,7) <= 38, which is the hard, still-unverified half of the claim.

Usage:
    python3 check_lower_bound.py [path/to/lower_bound_38.json]

Exit status 0 iff every asserted property holds.
"""
import json
import os
import sys

_HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.abspath(os.path.join(_HERE, os.pardir, "core")))

from geom import (  # noqa: E402
    count_intersections,
    disjointness_graph,
    general_position,
    is_simple,
    orient,
    popcount,
)

default = os.path.join(_HERE, os.pardir, os.pardir, "data", "lower_bound", "lower_bound_38.json")
path = sys.argv[1] if len(sys.argv) > 1 else default

with open(path) as fh:
    cert = json.load(fh)

P = [tuple(v) for v in cert["P"]]
Q = [tuple(v) for v in cert["Q"]]
exp = cert["verified"]

failures = []


def check(name, got, want):
    ok = got == want
    print(f"  {'PASS' if ok else 'FAIL'}  {name}: {got!r}" + ("" if ok else f"  (expected {want!r})"))
    if not ok:
        failures.append(name)


print(f"checking {os.path.relpath(path)}\n")

check("P is a simple polygon", is_simple(P), exp["P_simple"])
check("Q is a simple polygon", is_simple(Q), exp["Q_simple"])
check("all 14 vertices in general position", general_position(P + Q),
      exp["general_position_all_14_vertices"])

no_incidence = (
    all(orient(Q[j], Q[(j + 1) % 7], a) != 0 for a in P for j in range(7))
    and all(orient(P[i], P[(i + 1) % 7], a) != 0 for a in Q for i in range(7))
)
check("no vertex lies on the other boundary", no_incidence, exp["no_vertex_on_other_boundary"])

I = count_intersections(P, Q)
check("boundary intersections I", I, exp["boundary_intersections_I"])

E = disjointness_graph(P, Q)
nE = sum(popcount(x) for x in E)
check("disjointness graph edges |E|", nE, exp["disjointness_graph_edges_E"])
check("I + |E| = 49", I + nE, exp["I_plus_E"])
check("minimum degree on the P side", min(popcount(x) for x in E), exp["min_degree"])
check("per-P-side crossing counts",
      sorted((7 - popcount(x) for x in E), reverse=True),
      exp["per_P_side_crossing_counts"])

# connected components of the bipartite disjointness graph, by union-find
parent = list(range(14))


def find(a):
    while parent[a] != a:
        parent[a] = parent[parent[a]]
        a = parent[a]
    return a


for i in range(7):
    for j in range(7):
        if E[i] >> j & 1:
            ra, rb = find(i), find(7 + j)
            if ra != rb:
                parent[ra] = rb
check("disjointness graph components", len({find(v) for v in range(14)}),
      exp["disjointness_graph_components"])

# --------------------------------------------------------------------------
# ABSOLUTE checks (known-issues.md K-19).
#
# Every `check` above compares a recomputed value against the file's OWN
# `verified` block.  That catches a file whose stored numbers disagree with its
# coordinates, but it does NOT catch a file that is internally consistent and
# geometrically useless: translate Q far away, recompute the `verified` block,
# and everything above passes while I = 0.  These three checks are therefore
# stated against the CONSTANTS the claim is about, not against the file.
if I != 38:
    failures.append(f"ABSOLUTE: I = {I}, but this script certifies f(7,7) >= 38 "
                    f"and so requires exactly 38 boundary intersections")
if I + nE != 49:
    failures.append(f"ABSOLUTE: I + |E| = {I + nE}, expected 49")
if not no_incidence:
    failures.append("ABSOLUTE: a vertex lies on the other boundary; the "
                    "configuration is not in general position")

print()
if failures:
    print(f"FAILED: {len(failures)} check(s) did not hold: {', '.join(failures)}")
    sys.exit(1)
print("All checks passed.  This certifies f(7,7) >= 38.")
print("It does NOT certify the upper bound f(7,7) <= 38.")
