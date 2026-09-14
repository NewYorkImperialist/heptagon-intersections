#!/usr/bin/env python3
"""Run evidence/tools/dratcheck.py over every (cnf, drat) pair in evidence/proofs/.

Exit status 0 iff every .drat present verifies UNSAT and every .cnf without a
.drat is accounted for in EXPECTED_SAT. Fails loudly; never skips silently.
"""
import os, subprocess, sys, time, json

HERE = os.path.dirname(os.path.abspath(__file__))
CNF = os.path.join(HERE, "cnf")
DRAT = os.path.join(HERE, "drat")
CHECKER = os.path.join(HERE, "tools", "dratcheck.py")

VARIANTS = ["generic", "P-adj", "Q-adj", "PQ-adj"]
STATUSES = ["none", "mixed-1", "mixed-2", "both-hooking", "both-hooked"]
# Instances for which gen_all_proofs.py reported SAT, hence no DRAT exists.
EXPECTED_SAT = {"generic_mixed-1", "generic_mixed-2", "generic_none",
                "P-adj_none", "Q-adj_none"}

def main():
    if not os.path.isfile(CHECKER):
        sys.exit("FATAL: missing checker %s" % CHECKER)
    if not os.path.isdir(CNF):
        sys.exit("FATAL: missing CNF directory %s\n"
                 "  evidence/cnf/ is gitignored because it is 19 MB and exactly\n"
                 "  regenerable.  Run:  python3 regen_cnf.py --write cnf" % CNF)
    if not os.path.isdir(DRAT):
        sys.exit("FATAL: missing DRAT directory %s (it is tracked; the checkout is broken)" % DRAT)
    rows, failures = [], []
    t_all = time.time()
    for v in VARIANTS:
        for s in STATUSES:
            tag = "%s_%s" % (v, s)
            cnf = os.path.join(CNF, tag + ".cnf")
            drat = os.path.join(DRAT, tag + ".drat")
            if not os.path.isfile(cnf):
                failures.append("%s: CNF MISSING" % tag); rows.append((tag, "CNF-MISSING", None, None, None)); continue
            if not os.path.isfile(drat):
                if tag in EXPECTED_SAT:
                    rows.append((tag, "SAT (no proof expected)", None, None, None))
                else:
                    failures.append("%s: DRAT MISSING and not in EXPECTED_SAT" % tag)
                    rows.append((tag, "DRAT-MISSING", None, None, None))
                continue
            if tag in EXPECTED_SAT:
                failures.append("%s: DRAT present but listed as EXPECTED_SAT" % tag)
            t0 = time.time()
            p = subprocess.run([sys.executable, CHECKER, cnf, drat],
                               capture_output=True, text=True)
            dt = time.time() - t0
            out = p.stdout.strip()
            ok = (p.returncode == 0) and ("PROOF VERIFIED (UNSAT)" in out)
            ncl = nst = None
            for line in out.splitlines():
                if line.startswith("formula:"):
                    ncl = int(line.split()[1]); nst = int(line.split()[4])
            rows.append((tag, "VERIFIED UNSAT" if ok else "FAILED", ncl, nst, dt))
            if not ok:
                failures.append("%s: dratcheck FAILED (rc=%d)\n%s\n%s" % (tag, p.returncode, out, p.stderr))
            print("%-22s %-26s clauses=%-7s steps=%-6s %6.2fs" %
                  (tag, rows[-1][1], ncl, nst, dt), flush=True)
    total = time.time() - t_all
    print("\ntotal wall time: %.2fs" % total)
    with open(os.path.join(HERE, "logs", "drat_results.json"), "w") as f:
        json.dump({"rows": [{"tag": r[0], "result": r[1], "clauses": r[2],
                             "steps": r[3], "seconds": r[4]} for r in rows],
                   "total_seconds": total}, f, indent=1)
    if failures:
        print("\n*** %d FAILURE(S) ***" % len(failures))
        for x in failures: print("  " + x)
        sys.exit(1)
    n_ver = sum(1 for r in rows if r[1] == "VERIFIED UNSAT")
    n_sat = sum(1 for r in rows if r[1].startswith("SAT"))
    print("OK: %d DRAT proofs verified UNSAT, %d instances SAT (no proof), %d total" %
          (n_ver, n_sat, len(rows)))

main()
