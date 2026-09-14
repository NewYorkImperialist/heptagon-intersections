#!/usr/bin/env python3
"""SOLVER-FREE verification of the 25-combination coverage enumeration.

This is the load-bearing check.  It needs no SAT solver and no z3 -- only the
Python standard library and ../evidence/tools/dratcheck.py (the from-scratch
DRAT checker that ../evidence/validate_checker.py exercises in both directions).

For every one of the 125 instances it:

  1. RE-DERIVES the DIMACS from pq_types.py + ../evidence/tools/indep_om.py and
     checks its SHA-256 against CNF_SHA256SUMS.txt.  No certificate is accepted
     for a formula whose hash does not match -- this is what binds each
     certificate to its exact CNF.
  2. checks the certificate file's own SHA-256 against ARTIFACT_SHA256SUMS.txt;
  3. UNSAT -> runs dratcheck.py on (cnf, drat) and requires "PROOF VERIFIED";
     SAT   -> evaluates the recorded model against every clause, in pure Python.
  4. cross-checks the verdict against results.json.

It then re-derives, from the verified verdicts alone:
  * that both-hooking and both-hooked are UNSAT in ALL 25 combinations;
  * which combinations are VACUOUS (base pattern 'none' already UNSAT), so that
    their other verdicts are explicitly marked as carrying no information.

Usage:  python3 verify_all.py [-jN]      (default: one worker per CPU)
"""
import hashlib, json, multiprocessing, os, subprocess, sys, time

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import pq_types                                            # noqa: E402

REPRO = os.path.dirname(HERE)
CHECKER = os.path.join(REPRO, "evidence", "tools", "dratcheck.py")
CNFDIR = os.path.join(HERE, "cnf")
LOGDIR = os.path.join(HERE, "logs")


def load_sums(path):
    m = {}
    for line in open(path):
        line = line.strip()
        if not line or line.startswith("#"):
            continue
        h, n = line.split(None, 1)
        m[n.strip()] = h
    return m


def read_cnf(path):
    cls = []
    for line in open(path):
        line = line.strip()
        if not line or line[0] in "pc":
            continue
        cls.append([int(x) for x in line.split()][:-1])
    return cls


def check_model(cnf_path, model_path):
    lits = [int(x) for x in open(model_path).read().split()]
    val = {abs(l): (l > 0) for l in lits}
    n = 0
    for c in read_cnf(cnf_path):
        n += 1
        if not any(val.get(abs(l), False) == (l > 0) for l in c):
            return False, n, c
    return True, n, None


def work(args):
    ptype, qtype, status, expected, cnf_sha, cert = args
    tag = pq_types.tag(ptype, qtype, status)
    t0 = time.time()
    out = {"tag": tag, "ptype": ptype, "qtype": qtype, "status": status,
           "expected": expected, "ok": False, "detail": ""}
    text = pq_types.dimacs(ptype, qtype, status)
    h = hashlib.sha256(text.encode()).hexdigest()
    if h != cnf_sha:
        out["detail"] = "CNF SHA MISMATCH: regenerated %s, manifest %s" % (h, cnf_sha)
        return out
    out["cnf_sha256"] = h
    path = os.path.join(CNFDIR, tag + ".cnf")
    if not os.path.isfile(path) or \
            hashlib.sha256(open(path, "rb").read()).hexdigest() != h:
        with open(path, "w") as f:
            f.write(text)
    cpath = os.path.join(HERE, cert["file"])
    if not os.path.isfile(cpath):
        out["detail"] = "certificate file missing: " + cert["file"]
        return out
    ch = hashlib.sha256(open(cpath, "rb").read()).hexdigest()
    if ch != cert["sha256"]:
        out["detail"] = "certificate SHA MISMATCH for " + cert["file"]
        return out
    if cert["kind"] == "drat":
        if expected != "UNSAT":
            out["detail"] = "DRAT present for a SAT instance"; return out
        p = subprocess.run([sys.executable, CHECKER, path, cpath],
                           capture_output=True, text=True)
        txt = p.stdout
        ok = p.returncode == 0 and "PROOF VERIFIED (UNSAT)" in txt
        steps = None
        for line in txt.splitlines():
            if line.startswith("formula:"):
                steps = int(line.split()[4])
        out.update(ok=ok, kind="drat", steps=steps,
                   detail="" if ok else txt.strip()[-400:] + p.stderr.strip()[-200:])
    else:
        if expected != "SAT":
            out["detail"] = "model present for an UNSAT instance"; return out
        ok, n, c = check_model(path, cpath)
        out.update(ok=ok, kind="model", clauses_checked=n,
                   detail="" if ok else "model falsifies clause %d: %s" % (n, c))
    out["seconds"] = round(time.time() - t0, 2)
    return out


def main():
    jobs = multiprocessing.cpu_count()
    for a in sys.argv[1:]:
        if a.startswith("-j"):
            jobs = int(a[2:])
    for p in (CHECKER, os.path.join(HERE, "results.json"),
              os.path.join(HERE, "CNF_SHA256SUMS.txt"),
              os.path.join(HERE, "ARTIFACT_SHA256SUMS.txt")):
        if not os.path.isfile(p):
            sys.exit("FATAL: missing %s" % p)
    os.makedirs(CNFDIR, exist_ok=True)
    os.makedirs(LOGDIR, exist_ok=True)
    res = json.load(open(os.path.join(HERE, "results.json")))
    rows = {r["tag"]: r for r in res["rows"]}
    cnfsums = load_sums(os.path.join(HERE, "CNF_SHA256SUMS.txt"))
    artsums = load_sums(os.path.join(HERE, "ARTIFACT_SHA256SUMS.txt"))

    tasks, bad = [], []
    for ptype, qtype, status in pq_types.instances():
        tag = pq_types.tag(ptype, qtype, status)
        if tag not in rows:
            bad.append("%s: absent from results.json" % tag); continue
        r = rows[tag]
        if cnfsums.get(tag + ".cnf") != r["cnf_sha256"]:
            bad.append("%s: results.json cnf_sha256 disagrees with CNF_SHA256SUMS.txt" % tag)
        cert = r["certificate"]
        if artsums.get(cert["file"]) != cert["sha256"]:
            bad.append("%s: results.json certificate sha disagrees with "
                       "ARTIFACT_SHA256SUMS.txt" % tag)
        tasks.append((ptype, qtype, status, r["verdict"],
                      r["cnf_sha256"], cert))
    if len(tasks) != 125:
        bad.append("expected 125 instances, got %d" % len(tasks))

    t0 = time.time()
    print("verifying %d instances with %d worker(s); checker = %s\n"
          % (len(tasks), jobs, os.path.relpath(CHECKER, REPRO)), flush=True)
    with multiprocessing.Pool(jobs) as pool:
        out = pool.map(work, tasks)
    out.sort(key=lambda o: [pq_types.P_TYPES.index(o["ptype"]),
                            pq_types.Q_TYPES.index(o["qtype"]),
                            pq_types.STATUSES.index(o["status"])])
    ndrat = nmodel = 0
    for o in out:
        if not o["ok"]:
            bad.append("%s: VERIFICATION FAILED -- %s" % (o["tag"], o["detail"]))
        elif o.get("kind") == "drat":
            ndrat += 1
        else:
            nmodel += 1
        print("%-34s %-5s %-6s %-22s %s"
              % (o["tag"], o["expected"], o.get("kind", "-"),
                 "VERIFIED" if o["ok"] else "*** FAILED ***",
                 "steps=%s" % o.get("steps") if o.get("kind") == "drat" else ""),
              flush=True)

    verd = {(o["ptype"], o["qtype"], o["status"]): o["expected"]
            for o in out if o["ok"]}
    combos = pq_types.combos()
    missing = [(p, q, s) for p, q in combos for s in pq_types.STATUSES
               if (p, q, s) not in verd]
    forbidden_ok = all(verd.get((p, q, s)) == "UNSAT"
                       for p, q in combos for s in pq_types.FORBIDDEN)
    vac = [(p, q) for p, q in combos if verd.get((p, q, "none")) == "UNSAT"]
    nonvac = [(p, q) for p, q in combos if verd.get((p, q, "none")) == "SAT"]

    print("\n" + "=" * 74)
    print("PER-COMBINATION TABLE  (all verdicts below are CERTIFICATE-VERIFIED)")
    print("=" * 74)
    print("%-6s %-6s %-6s %-8s %-8s %-13s %-12s %s"
          % ("P-type", "Q-type", "none", "mixed-1", "mixed-2",
             "both-hooking", "both-hooked", "note"))
    for p, q in combos:
        v = [verd.get((p, q, s), "?") for s in pq_types.STATUSES]
        note = []
        if (p, q) in vac:
            note.append("VACUOUS")
        if (p, q) in pq_types.LEGACY:
            note.append("legacy=" + pq_types.LEGACY[(p, q)])
        print("%-6s %-6s %-6s %-8s %-8s %-13s %-12s %s"
              % (p, q, v[0], v[1], v[2], v[3], v[4], " ".join(note)))

    print("\n%d instances verified: %d DRAT refutations, %d models"
          % (ndrat + nmodel, ndrat, nmodel))
    print("combinations: %d   non-vacuous: %d   VACUOUS: %d"
          % (len(combos), len(nonvac), len(vac)))
    for p, q in vac:
        print("   VACUOUS  P%-5s Q%-5s  ('none' is UNSAT -> its other verdicts "
              "carry no information)" % (p, q))
    print("both-hooking AND both-hooked UNSAT in all %d combinations: %s"
          % (len(combos), forbidden_ok))
    print("wall time: %.1fs" % (time.time() - t0))

    with open(os.path.join(LOGDIR, "verify_all.json"), "w") as f:
        json.dump({"rows": out, "vacuous": ["P%s/Q%s" % k for k in vac],
                   "non_vacuous": ["P%s/Q%s" % k for k in nonvac],
                   "n_drat_verified": ndrat, "n_models_verified": nmodel,
                   "forbidden_all_unsat": forbidden_ok,
                   "failures": bad}, f, indent=1)

    if missing:
        bad.append("%d instance(s) unverified: %s" % (len(missing), missing[:5]))
    if not forbidden_ok:
        bad.append("both-hooking/both-hooked NOT UNSAT in every combination")
    if bad:
        print("\n*** %d FAILURE(S) ***" % len(bad))
        for x in bad:
            print("  " + x)
        sys.exit(1)
    print("\nOK: coverage of Lemma 7 for n = 7 is complete and certificate-backed.")
    print("    Every one of the 25 labelled (P-type x Q-type) combinations has")
    print("    both-hooking and both-hooked refuted by a DRAT proof that was")
    print("    re-checked here, against a CNF re-derived from source and matched")
    print("    by SHA-256.")


if __name__ == "__main__":
    main()
