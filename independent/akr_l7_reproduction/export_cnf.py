#!/usr/bin/env python3
"""Export each om_lemma7 query as a DIMACS CNF so that the UNSAT results can be
re-checked by ANY SAT solver, independently of z3.  Writes cnf/<variant>_<status>.cnf
and re-checks each file with z3's own DIMACS front end as a round-trip test."""
import os, sys, subprocess, hashlib
from z3 import Solver, Goal, Tactic, Then, With, sat, unsat
import om_lemma7 as L

os.makedirs("cnf", exist_ok=True)
rows = []
for variant in ["generic", "P-adj", "Q-adj", "PQ-adj"]:
    for which in ["none", "mixed-1", "mixed-2", "both-hooking", "both-hooked"]:
        C, seg, cons, forced, want = L.build(variant)
        g = Goal()
        for c in cons:
            g.add(c)
        for c in L.status_constraints(C, seg, which):
            g.add(c)
        cnf = Then(Tactic("simplify"), Tactic("tseitin-cnf"))(g)[0]
        path = "cnf/%s_%s.cnf" % (variant, which)
        open(path, "w").write(cnf.dimacs())
        h = hashlib.sha256(open(path, "rb").read()).hexdigest()
        out = subprocess.run(["z3", "-dimacs", path], capture_output=True, text=True)
        verdict = out.stdout.strip().splitlines()[0] if out.stdout.strip() else "?"
        nv = cnf.dimacs().splitlines()[0]
        rows.append((variant, which, path, nv, verdict, h))
        print("%-8s %-12s %-28s %-8s sha256=%s" % (variant, which, nv, verdict, h[:16]))
        sys.stdout.flush()
with open("cnf/INDEX.txt", "w") as f:
    f.write("variant status file header verdict sha256\n")
    for r in rows:
        f.write(" ".join(map(str, r)) + "\n")
print("\nwrote cnf/INDEX.txt")
