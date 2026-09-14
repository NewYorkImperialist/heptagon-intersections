#!/usr/bin/env python3
"""Validate evidence/tools/dratcheck.py itself.

POSITIVE: the four pigeonhole fixtures php4/php5 x {lingeling, glucose4} must
          verify as UNSAT.
NEGATIVE: four proofs that MUST be rejected.  A checker that accepts everything
          is worthless, so this is the part that gives the positive results
          meaning.

Note on dratcheck.py's exit codes: it exits 1 only when a lemma fails the
RUP/RAT test; if the proof simply never derives the empty clause it prints
"proof did not derive the empty clause" and exits 0.  This script (like
run_drat_all.py) therefore requires the string "PROOF VERIFIED (UNSAT)", not
just a zero exit status.
"""
import os, subprocess, sys
HERE = os.path.dirname(os.path.abspath(__file__))
CHECKER = os.path.join(HERE, "tools", "dratcheck.py")
FIX = os.path.join(HERE, "fixtures"); NEG = os.path.join(FIX, "negative")
CNF = os.path.join(HERE, "cnf")

def run(cnf, drat):
    p = subprocess.run([sys.executable, CHECKER, cnf, drat], capture_output=True, text=True)
    return p.returncode, p.stdout.strip() + p.stderr.strip()

def verified(out): return "PROOF VERIFIED (UNSAT)" in out

def build_negatives():
    os.makedirs(NEG, exist_ok=True)
    # N1: corrupt one literal in a real UNSAT proof.
    src = open(os.path.join(FIX, "php4_lingeling.drat")).read().splitlines()
    lines = list(src)
    for i, l in enumerate(lines):
        if not l.startswith("d") and l.strip() not in ("0", ""):
            t = l.split()
            t[0] = str(-int(t[0]))            # flip the first literal
            lines[i] = " ".join(t); break
    else:
        sys.exit("FATAL: could not build N1, no addition step found in php4_lingeling.drat")
    open(os.path.join(NEG, "php4_corrupt.drat"), "w").write("\n".join(lines) + "\n")
    # N2: a trivially SATISFIABLE formula with a proof that claims the empty clause.
    open(os.path.join(NEG, "sat_trivial.cnf"), "w").write("p cnf 2 2\n1 2 0\n-1 2 0\n")
    open(os.path.join(NEG, "sat_trivial.drat"), "w").write("0\n")
    # N3: a proof whose lemma is simply not implied (unit 1 from an empty-ish formula).
    open(os.path.join(NEG, "unjustified.cnf"), "w").write("p cnf 3 2\n1 2 3 0\n-1 2 3 0\n")
    open(os.path.join(NEG, "unjustified.drat"), "w").write("2 0\n0\n")

def main():
    if not os.path.isfile(CHECKER): sys.exit("FATAL: missing %s" % CHECKER)
    fails = []
    print("== POSITIVE controls: pigeonhole PHP(4), PHP(5) — must VERIFY ==")
    pos = ["php4_lingeling", "php4_glucose4", "php5_lingeling", "php5_glucose4"]
    for tag in pos:
        cnf = os.path.join(FIX, tag + ".cnf"); drat = os.path.join(FIX, tag + ".drat")
        if not (os.path.isfile(cnf) and os.path.isfile(drat)):
            fails.append("%s: fixture MISSING" % tag); print("%-20s FIXTURE MISSING" % tag); continue
        rc, out = run(cnf, drat)
        ok = verified(out)
        print("%-20s %s" % (tag, "VERIFIED UNSAT (as required)" if ok else "*** DID NOT VERIFY ***"))
        if not ok: fails.append("%s: positive fixture failed to verify\n%s" % (tag, out))

    build_negatives()
    print("\n== NEGATIVE controls: each MUST be rejected ==")
    negs = [
        ("php4_corrupt", os.path.join(FIX, "php4_lingeling.cnf"),
         os.path.join(NEG, "php4_corrupt.drat"),
         "real PHP(4) proof with one literal sign flipped"),
        ("sat_trivial", os.path.join(NEG, "sat_trivial.cnf"),
         os.path.join(NEG, "sat_trivial.drat"),
         "satisfiable formula + proof asserting the empty clause"),
        ("unjustified", os.path.join(NEG, "unjustified.cnf"),
         os.path.join(NEG, "unjustified.drat"),
         "lemma not implied by the formula"),
        ("wrong_formula", os.path.join(CNF, "generic_none.cnf"),
         os.path.join(HERE, "drat", "generic_both-hooking.drat"),
         "real UNSAT proof checked against the weaker SATISFIABLE generic_none CNF"),
    ]
    for tag, cnf, drat, why in negs:
        if not (os.path.isfile(cnf) and os.path.isfile(drat)):
            fails.append("%s: input missing (%s / %s)" % (tag, cnf, drat))
            print("%-16s INPUT MISSING" % tag); continue
        rc, out = run(cnf, drat)
        rejected = not verified(out)
        last = [l for l in out.splitlines() if l.strip()][-1] if out.strip() else "(no output)"
        print("%-16s %-9s  %s\n%18s%s\n%18s%s"
              % (tag, "REJECTED" if rejected else "*** ACCEPTED ***", why, "", last, "", ""))
        if not rejected:
            fails.append("%s: checker ACCEPTED a proof it must reject (%s)" % (tag, why))

    if fails:
        print("\n*** CHECKER VALIDATION FAILED (%d) ***" % len(fails))
        for x in fails: print("  " + x)
        sys.exit(1)
    print("OK: dratcheck.py accepts all 4 pigeonhole proofs and rejects all 4 bad proofs.")

main()
