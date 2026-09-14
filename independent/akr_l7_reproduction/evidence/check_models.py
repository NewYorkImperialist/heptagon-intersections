#!/usr/bin/env python3
"""Verify, with no solver at all, that each exported model in evidence/models/
satisfies every clause of the corresponding CNF.  Pure Python."""
import os, sys
HERE = os.path.dirname(os.path.abspath(__file__))
MODELS = os.path.join(HERE, "models"); CNF = os.path.join(HERE, "cnf")
EXPECTED_SAT = ["generic_none", "generic_mixed-1", "generic_mixed-2",
                "P-adj_none", "Q-adj_none"]
bad = []
for tag in EXPECTED_SAT:
    mp = os.path.join(MODELS, tag + ".model"); cp = os.path.join(CNF, tag + ".cnf")
    if not os.path.isfile(mp):
        bad.append("%s: model missing (run z3_crosscheck.py)" % tag); continue
    if not os.path.isfile(cp):
        bad.append("%s: cnf missing (run regen_cnf.py --write proofs)" % tag); continue
    val = {}
    for x in open(mp).read().split():
        l = int(x); val[abs(l)] = (l > 0)
    n = viol = 0
    for line in open(cp):
        line = line.strip()
        if not line or line[0] in "pc": continue
        c = [int(x) for x in line.split()][:-1]
        n += 1
        if not any(val[abs(l)] == (l > 0) for l in c): viol += 1
    print("%-20s clauses=%-7d satisfied=%-7d violated=%d" % (tag, n, n - viol, viol))
    if viol: bad.append("%s: %d clauses VIOLATED by its model" % (tag, viol))
if bad:
    print("\n*** MODEL CHECK FAILED ***")
    for x in bad: print("  " + x)
    sys.exit(1)
print("\nOK: all %d exported models verified in pure Python (no solver)." % len(EXPECTED_SAT))
