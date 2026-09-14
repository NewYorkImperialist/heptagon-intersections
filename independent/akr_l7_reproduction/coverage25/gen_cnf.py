#!/usr/bin/env python3
"""Generate the 125 DIMACS CNFs of the 25-combination coverage enumeration.

Pure Python, deterministic, NO SAT SOLVER REQUIRED.  This is what makes it safe
to gitignore coverage25/cnf/ (~65 MB): the files are an exact function of
pq_types.py + ../evidence/tools/indep_om.py, both of which are tracked.

  python3 gen_cnf.py                 # regenerate and compare to CNF_SHA256SUMS.txt
  python3 gen_cnf.py --write         # also (re)write coverage25/cnf/*.cnf
  python3 gen_cnf.py --write --init  # create CNF_SHA256SUMS.txt for the first time

PROVENANCE CHECK.  Four of the 25 combinations coincide with the four legacy
variants (generic, P-adj, Q-adj, PQ-adj).  For those 20 instances the generated
DIMACS must be BYTE-IDENTICAL to the committed hashes in
../evidence/SHA256SUMS.txt.  That ties the 105 new formulas to the existing,
already-audited encoder rather than to a fresh re-implementation.
"""
import hashlib, os, sys

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import pq_types                                            # noqa: E402

REPRO = os.path.dirname(HERE)
CNFDIR = os.path.join(HERE, "cnf")
MANIFEST = os.path.join(HERE, "CNF_SHA256SUMS.txt")
LEGACY_MANIFEST = os.path.join(REPRO, "evidence", "SHA256SUMS.txt")


def load_sums(path, prefix=""):
    m = {}
    if not os.path.isfile(path):
        return m
    for line in open(path):
        line = line.strip()
        if not line or line.startswith("#"):
            continue
        h, name = line.split(None, 1)
        name = name.strip()
        if name.startswith(prefix):
            m[name[len(prefix):]] = h
    return m


def main():
    write = "--write" in sys.argv
    init = "--init" in sys.argv
    if write:
        os.makedirs(CNFDIR, exist_ok=True)
    man = {} if init else load_sums(MANIFEST)
    legacy = load_sums(LEGACY_MANIFEST, prefix="cnf/")
    rows, bad, nlegacy = [], [], 0
    for ptype, qtype, status in pq_types.instances():
        tag = pq_types.tag(ptype, qtype, status)
        text = pq_types.dimacs(ptype, qtype, status)
        h = hashlib.sha256(text.encode()).hexdigest()
        nv, ncl = text.splitlines()[0].split()[2:4]
        if write:
            with open(os.path.join(CNFDIR, tag + ".cnf"), "w") as f:
                f.write(text)
        note = ""
        lt = pq_types.legacy_tag(ptype, qtype, status)
        if lt is not None:
            exp = legacy.get(lt + ".cnf")
            if exp is None:
                bad.append("%s: legacy twin %s not found in evidence/SHA256SUMS.txt" % (tag, lt))
                note = "legacy=%s NOT-IN-MANIFEST" % lt
            elif exp != h:
                bad.append("%s: does NOT match committed legacy CNF %s\n"
                           "   expected %s\n   got      %s" % (tag, lt, exp, h))
                note = "legacy=%s *** MISMATCH ***" % lt
            else:
                nlegacy += 1
                note = "legacy=%s BYTE-IDENTICAL" % lt
        if not init:
            e = man.get(tag + ".cnf")
            if e is None:
                bad.append("%s: not in CNF_SHA256SUMS.txt" % tag)
            elif e != h:
                bad.append("%s: sha256 mismatch vs CNF_SHA256SUMS.txt" % tag)
        rows.append((tag, nv, ncl, h, note))
        print("%-34s vars=%-4s clauses=%-6s %s  %s" % (tag, nv, ncl, h[:16], note),
              flush=True)
    if init:
        with open(MANIFEST, "w") as f:
            f.write("# SHA-256 of the 125 DIMACS CNFs of the 25-combination coverage\n"
                    "# enumeration (docs/known-issues.md K-16 replacement).\n"
                    "# Regenerate and check with:  python3 gen_cnf.py\n")
            for tag, nv, ncl, h, note in rows:
                f.write("%s  %s.cnf\n" % (h, tag))
        print("\nwrote %s (%d entries)" % (MANIFEST, len(rows)))
    if bad:
        print("\n*** %d FAILURE(S) ***" % len(bad))
        for x in bad:
            print("  " + x)
        sys.exit(1)
    print("\nOK: %d CNFs generated deterministically" % len(rows))
    print("    %d/20 legacy-twin instances byte-identical to the committed CNFs"
          % nlegacy)
    if not init:
        print("    %d/%d match CNF_SHA256SUMS.txt" % (len(rows), len(rows)))


if __name__ == "__main__":
    main()
