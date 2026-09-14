#!/usr/bin/env python3
"""Optional independent SOLVER cross-check of the 125 verdicts in results.json.

Writes nothing.  Uses whichever solvers are importable:
    z3        (z3-solver)   -- a completely different solver family
    python-sat (cadical153, glucose42)
and requires every available solver to agree with results.json on every
instance.  Exits non-zero on any disagreement, and non-zero if NO solver is
available (so the gap is never silent).

This is a cross-check, not the evidence: the evidence is verify_all.py, which
re-checks a DRAT refutation or an explicit model for all 125 with no solver.
"""
import json, os, sys, time

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import pq_types                                            # noqa: E402

HAVE = []
try:
    import z3                                              # noqa: F401
    HAVE.append("z3")
except Exception:
    pass
try:
    from pysat.solvers import Cadical153, Glucose42
    Cadical153(bootstrap_with=[[1]]).delete()
    HAVE.append("pysat")
except Exception:
    pass


def read_cnf(path):
    nv, cls = 0, []
    for line in open(path):
        line = line.strip()
        if not line or line[0] == 'c':
            continue
        if line[0] == 'p':
            nv = int(line.split()[2]); continue
        cls.append([int(x) for x in line.split()][:-1])
    return nv, cls


def main():
    if not HAVE:
        sys.exit("FATAL: no SAT solver importable (need z3 and/or python-sat).\n"
                 "  The certificate re-check (verify_all.py) needs neither and is\n"
                 "  the load-bearing step; this cross-check is simply unavailable.")
    res = json.load(open(os.path.join(HERE, "results.json")))
    rows = {r["tag"]: r for r in res["rows"]}
    print("solvers available: %s\n" % ", ".join(HAVE), flush=True)
    bad = []
    t0 = time.time()
    for ptype, qtype, status in pq_types.instances():
        tag = pq_types.tag(ptype, qtype, status)
        path = os.path.join(HERE, "cnf", tag + ".cnf")
        if not os.path.isfile(path):
            sys.exit("FATAL: %s missing.  Run: python3 gen_cnf.py --write" % path)
        nv, cls = read_cnf(path)
        exp = rows[tag]["verdict"]
        got = {}
        if "z3" in HAVE:
            B = [z3.Bool("x%d" % i) for i in range(nv + 1)]
            s = z3.Solver()
            for c in cls:
                s.add(z3.Or([B[abs(l)] if l > 0 else z3.Not(B[abs(l)]) for l in c]))
            got["z3"] = "SAT" if str(s.check()) == "sat" else "UNSAT"
        if "pysat" in HAVE:
            s = Cadical153(bootstrap_with=cls); got["cadical153"] = "SAT" if s.solve() else "UNSAT"; s.delete()
            s = Glucose42(bootstrap_with=cls); got["glucose42"] = "SAT" if s.solve() else "UNSAT"; s.delete()
        ok = all(v == exp for v in got.values())
        if not ok:
            bad.append("%s: expected %s, got %s" % (tag, exp, got))
        print("%-34s expected=%-5s %s  %s"
              % (tag, exp, " ".join("%s=%s" % kv for kv in sorted(got.items())),
                 "OK" if ok else "*** MISMATCH ***"), flush=True)
    print("\n%d instances, %.1fs" % (len(rows), time.time() - t0))
    if bad:
        print("*** %d DISAGREEMENT(S) ***" % len(bad))
        for x in bad:
            print("  " + x)
        sys.exit(1)
    print("OK: every available solver agrees with results.json on all 125 instances.")


if __name__ == "__main__":
    main()
