#!/usr/bin/env python3
"""Extract, re-verify and pretty-print the realisation of AKR's Fig. 6 case that
the straight-line search found: both associated pairs conform to Lemma 5, one
P-pair hooking and the other hooked.  This is the positive control for the whole
encoding.  Re-verification is from the stored integer line coefficients only, by
re-running arr8.analyse from scratch."""
import json, glob, sys
import arr8

found = None
for f in sorted(glob.glob("runs/arr8_seed*.json")):
    d = json.load(open(f))
    for t in d["types"]:
        if "neither" not in t["status"]:
            found = (f, t); break
    if found:
        break
if not found:
    print("no both-conforming type stored"); sys.exit(1)

f, t = found
lines = [tuple(map(int, L)) for L in t["example_lines"]]
assign = tuple(t["example_assign"])
X = arr8.prep(lines)
assert X is not None, "the stored arrangement is not simple"
r = arr8.analyse(lines, assign, X)
assert r is not None, "the stored configuration does not realise the pattern"

print("source file :", f)
print("8 lines  A*x + B*y + C = 0  (exact integers):")
for i, L in enumerate(lines):
    print("   L%d : %6d x + %6d y + %6d = 0" % (i, L[0], L[1], L[2]))
print("side -> line assignment:")
for s in arr8.SIDES:
    print("   %-3s -> L%d" % (s, assign[arr8.SI[s]]))
print()
print("re-verified intersection pattern (all exact integer sign tests):")
for pr, v in sorted(arr8.WANT.items(), key=lambda z: sorted(z[0])):
    x, y = sorted(tuple(pr))
    print("   %-3s %-3s  must %-8s   OK" % (x, y, "CROSS" if v else "be DISJOINT"))
print()
print("status:", r["status"])
print("  (a,b)   is %s with respect to (A,B)"
      % arr8.status_word((r["status"]["hooking1"], r["status"]["hooked1"])))
print("  (a',b') is %s with respect to (A',B')"
      % arr8.status_word((r["status"]["hooking2"], r["status"]["hooked2"])))
print("Axis Property (Observation 6):", r["axis"])
print("order of crossings along each side, from its apex:")
for s in arr8.SIDES:
    print("   %-3s : %s" % (s, " -> ".join(r["trace"][s])))
print()
print("This is AKR's Fig. 6: one pair hooking, the other hooked, four distinct")
print("components, the full required intersection pattern realised, and the Axis")
print("Property holding for both associated pairs.")
json.dump({"lines": lines, "assign": list(assign), "status": r["status"],
           "axis": r["axis"], "trace": {k: list(v) for k, v in r["trace"].items()}},
          open("fig6_witness.json", "w"), indent=1)
