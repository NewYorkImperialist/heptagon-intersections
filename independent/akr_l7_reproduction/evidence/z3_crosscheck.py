#!/usr/bin/env python3
"""Solver-independent cross-check of all 20 indep_om CNFs using z3 as a SAT
solver, and export of an explicit MODEL for every SAT instance.

Why this exists: the DRAT certificates only cover the 15 UNSAT instances.  The
other 5 have no proof because they are satisfiable.  Rather than asserting that,
this script re-solves all 20 and writes evidence/models/<tag>.model for each SAT
one.  A model is a *checkable* certificate: evidence/check_models.py verifies it
against the CNF in pure Python with no solver at all.

Requires: z3 (python `z3-solver`).  If z3 is absent this exits non-zero.
"""
import json, os, sys, time
HERE = os.path.dirname(os.path.abspath(__file__))
CNF = os.path.join(HERE, "cnf")
DRAT = os.path.join(HERE, "drat")
try:
    import z3
except ImportError:
    sys.exit("FATAL: z3 not importable; cannot run the SAT cross-check.\n"
             "  (The DRAT re-check, evidence/run_drat_all.py, needs no solver.)")

VARIANTS = ["generic", "P-adj", "Q-adj", "PQ-adj"]
STATUSES = ["none", "mixed-1", "mixed-2", "both-hooking", "both-hooked"]
# Expected results, taken from RESULTS.md section 4 (the independent z3/om_lemma7
# encoding).  Any disagreement here is a hard failure, not a warning.
EXPECTED = {("generic", "none"): "sat", ("generic", "mixed-1"): "sat",
            ("generic", "mixed-2"): "sat", ("P-adj", "none"): "sat",
            ("Q-adj", "none"): "sat"}

def read(p):
    nv = 0; cls = []
    for line in open(p):
        line = line.strip()
        if not line: continue
        if line[0] == 'p': nv = int(line.split()[2]); continue
        if line[0] == 'c': continue
        cls.append([int(x) for x in line.split()][:-1])
    return nv, cls

def main():
    os.makedirs(os.path.join(HERE, "models"), exist_ok=True)
    rows = []; bad = []
    for v in VARIANTS:
        for st in STATUSES:
            tag = "%s_%s" % (v, st)
            path = os.path.join(CNF, tag + ".cnf")
            if not os.path.isfile(path):
                bad.append("%s: CNF MISSING (run regen_cnf.py --write proofs)" % tag); continue
            nv, cls = read(path)
            B = [z3.Bool("x%d" % i) for i in range(nv + 1)]
            s = z3.Solver()
            for c in cls:
                s.add(z3.Or([B[abs(l)] if l > 0 else z3.Not(B[abs(l)]) for l in c]))
            t0 = time.time(); r = str(s.check()); dt = time.time() - t0
            exp = EXPECTED.get((v, st), "unsat")
            ok = (r == exp)
            if not ok: bad.append("%s: z3 says %s, expected %s" % (tag, r, exp))
            if r == "sat":
                m = s.model()
                lits = []
                for i in range(1, nv + 1):
                    val = m.eval(B[i], model_completion=True)
                    lits.append(i if z3.is_true(val) else -i)
                with open(os.path.join(HERE, "models", tag + ".model"), "w") as f:
                    f.write(" ".join(map(str, lits)) + "\n")
            rows.append({"tag": tag, "z3": r, "expected": exp, "ok": ok,
                         "vars": nv, "clauses": len(cls), "seconds": dt})
            print("%-22s z3=%-5s expected=%-5s %s  vars=%-4d clauses=%-6d %6.2fs"
                  % (tag, r, exp, "OK" if ok else "*** MISMATCH ***", nv, len(cls), dt),
                  flush=True)
    with open(os.path.join(HERE, "logs", "z3_crosscheck.json"), "w") as f:
        json.dump(rows, f, indent=1)
    if bad:
        print("\n*** %d FAILURE(S) ***" % len(bad))
        for x in bad: print("  " + x)
        sys.exit(1)
    print("\nOK: z3 agrees with RESULTS.md on all %d instances "
          "(%d unsat, %d sat with exported models)"
          % (len(rows), sum(1 for r in rows if r["z3"] == "unsat"),
             sum(1 for r in rows if r["z3"] == "sat")))

main()
