#!/usr/bin/env python3
"""Solve all 125 instances of the 25-combination coverage enumeration and emit a
DRAT certificate for every UNSAT one.

REQUIRES python-sat.  This is the only step that needs a solver; everything the
evidence rests on (CNF regeneration, DRAT re-checking, model checking) is
solver-free and is done by gen_cnf.py / verify_all.py.

Three independent solvers are used and must AGREE on every instance:
  cadical153, glucose42  -- verdict only
  lingeling              -- verdict + DRAT proof for UNSAT

Outputs (all tracked in git; they are small):
  results.json            per-instance verdicts, timings, CNF sha256
  drat/<tag>.drat         DRAT refutation for each UNSAT instance
  models/<tag>.model      satisfying assignment for each SAT instance
  ARTIFACT_SHA256SUMS.txt sha256 of every drat/ and models/ file

Every certificate is bound to its formula by the CNF sha256 recorded alongside
it in results.json; verify_all.py re-derives the CNF from source and refuses to
check a certificate whose formula hash does not match.
"""
import hashlib, json, os, sys, time

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import pq_types                                            # noqa: E402

try:
    from pysat.solvers import Cadical153, Glucose42, Lingeling
except Exception as e:                                     # pragma: no cover
    sys.exit("FATAL: python-sat is required for solve_all.py (%s).\n"
             "  Create the isolated venv:\n"
             "    python3 -m venv coverage25/.venv && "
             "coverage25/.venv/bin/pip install python-sat\n"
             "  Then:  coverage25/.venv/bin/python solve_all.py\n"
             "  Re-CHECKING the results needs no solver: python3 verify_all.py" % e)

CNFDIR = os.path.join(HERE, "cnf")
DRATDIR = os.path.join(HERE, "drat")
MODELDIR = os.path.join(HERE, "models")


def read_cnf(path):
    cls = []
    nv = 0
    for line in open(path):
        line = line.strip()
        if not line or line[0] == 'c':
            continue
        if line[0] == 'p':
            nv = int(line.split()[2]); continue
        cls.append([int(x) for x in line.split()][:-1])
    return nv, cls


def main():
    if not os.path.isdir(CNFDIR):
        sys.exit("FATAL: %s missing.  Run:  python3 gen_cnf.py --write" % CNFDIR)
    os.makedirs(DRATDIR, exist_ok=True)
    os.makedirs(MODELDIR, exist_ok=True)
    rows, bad = [], []
    t_all = time.time()
    for ptype, qtype, status in pq_types.instances():
        tag = pq_types.tag(ptype, qtype, status)
        path = os.path.join(CNFDIR, tag + ".cnf")
        raw = open(path, "rb").read()
        h = hashlib.sha256(raw).hexdigest()
        nv, cls = read_cnf(path)

        t0 = time.time()
        s = Cadical153(bootstrap_with=cls); r_cad = s.solve()
        mdl = s.get_model() if r_cad else None
        s.delete()
        s = Glucose42(bootstrap_with=cls); r_glu = s.solve(); s.delete()
        s = Lingeling(with_proof=True)
        for c in cls:
            s.add_clause(c)
        r_lin = s.solve()
        proof = s.get_proof() if not r_lin else None
        s.delete()
        dt = time.time() - t0

        if not (r_cad == r_glu == r_lin):
            bad.append("%s: SOLVER DISAGREEMENT cadical=%s glucose=%s lingeling=%s"
                       % (tag, r_cad, r_glu, r_lin))
        verdict = "SAT" if r_cad else "UNSAT"
        cert = None
        if verdict == "UNSAT":
            dp = os.path.join(DRATDIR, tag + ".drat")
            with open(dp, "w") as f:
                f.write("".join(l + "\n" for l in proof))
            cert = {"kind": "drat", "file": "drat/%s.drat" % tag,
                    "steps": len(proof),
                    "sha256": hashlib.sha256(open(dp, "rb").read()).hexdigest()}
        else:
            mp = os.path.join(MODELDIR, tag + ".model")
            with open(mp, "w") as f:
                f.write(" ".join(map(str, mdl)) + "\n")
            cert = {"kind": "model", "file": "models/%s.model" % tag,
                    "sha256": hashlib.sha256(open(mp, "rb").read()).hexdigest()}
        rows.append({"tag": tag, "ptype": ptype, "qtype": qtype, "status": status,
                     "legacy": pq_types.legacy_tag(ptype, qtype, status),
                     "vars": nv, "clauses": len(cls), "cnf_sha256": h,
                     "verdict": verdict,
                     "cadical153": "SAT" if r_cad else "UNSAT",
                     "glucose42": "SAT" if r_glu else "UNSAT",
                     "lingeling": "SAT" if r_lin else "UNSAT",
                     "seconds": round(dt, 3), "certificate": cert})
        print("%-34s %-5s  vars=%-4d clauses=%-6d %s=%s  %.2fs"
              % (tag, verdict, nv, len(cls), cert["kind"],
                 cert["sha256"][:12], dt), flush=True)

    # vacuity analysis: a combination whose 'none' instance is UNSAT is vacuous
    byc = {}
    for r in rows:
        byc.setdefault((r["ptype"], r["qtype"]), {})[r["status"]] = r["verdict"]
    vac = sorted(k for k, v in byc.items() if v["none"] == "UNSAT")
    summary = {
        "generated": time.strftime("%Y-%m-%dT%H:%M:%SZ", time.gmtime()),
        "n_combinations": len(byc), "n_instances": len(rows),
        "vacuous_combinations": ["P%s/Q%s" % k for k in vac],
        "n_vacuous": len(vac),
        "forbidden_all_unsat": all(byc[k][s] == "UNSAT"
                                   for k in byc for s in pq_types.FORBIDDEN),
        "total_seconds": round(time.time() - t_all, 2),
    }
    with open(os.path.join(HERE, "results.json"), "w") as f:
        json.dump({"summary": summary, "rows": rows}, f, indent=1)

    sums = []
    for d in ("drat", "models"):
        base = os.path.join(HERE, d)
        for fn in sorted(os.listdir(base)):
            p = os.path.join(base, fn)
            sums.append((hashlib.sha256(open(p, "rb").read()).hexdigest(),
                         "%s/%s" % (d, fn)))
    with open(os.path.join(HERE, "ARTIFACT_SHA256SUMS.txt"), "w") as f:
        f.write("# SHA-256 of every DRAT certificate and model of the\n"
                "# 25-combination coverage enumeration.  Checked by verify_all.py.\n")
        for h, n in sums:
            f.write("%s  %s\n" % (h, n))

    print("\ncombinations: %d   instances: %d   wall: %.1fs"
          % (summary["n_combinations"], summary["n_instances"],
             summary["total_seconds"]))
    print("VACUOUS combinations (base pattern 'none' is UNSAT): %d" % len(vac))
    for k in vac:
        print("   P%s/Q%s" % k)
    print("both-hooking and both-hooked UNSAT in all 25 combinations: %s"
          % summary["forbidden_all_unsat"])
    if bad:
        print("\n*** %d FAILURE(S) ***" % len(bad))
        for x in bad:
            print("  " + x)
        sys.exit(1)


if __name__ == "__main__":
    main()
