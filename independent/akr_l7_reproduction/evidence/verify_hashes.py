#!/usr/bin/env python3
"""Check every artifact listed in evidence/SHA256SUMS.txt against its recorded
SHA-256.  Missing tracked files are a hard failure.  Missing cnf/ files are
reported as a hard failure too, with the exact command that recreates them --
they are never silently skipped."""
import hashlib, os, sys
HERE = os.path.dirname(os.path.abspath(__file__))
MAN = os.path.join(HERE, "SHA256SUMS.txt")
if not os.path.isfile(MAN):
    sys.exit("FATAL: missing manifest %s" % MAN)
missing_cnf, mismatched, missing_other, n_ok = [], [], [], 0
for line in open(MAN):
    line = line.strip()
    if not line or line.startswith("#"): continue
    h, rel = line.split(None, 1); rel = rel.strip()
    p = os.path.join(HERE, rel)
    if not os.path.isfile(p):
        (missing_cnf if rel.startswith("cnf/") else missing_other).append(rel); continue
    got = hashlib.sha256(open(p, "rb").read()).hexdigest()
    if got != h: mismatched.append("%s\n     recorded %s\n     actual   %s" % (rel, h, got))
    else: n_ok += 1
print("hash-verified: %d file(s)" % n_ok)
bad = False
if missing_other:
    bad = True
    print("\n*** %d TRACKED FILE(S) MISSING -- the checkout is incomplete:" % len(missing_other))
    for r in missing_other: print("     " + r)
if missing_cnf:
    bad = True
    print("\n*** %d CNF FILE(S) MISSING from evidence/cnf/ (gitignored, 19 MB):" % len(missing_cnf))
    for r in missing_cnf[:5]: print("     " + r)
    if len(missing_cnf) > 5: print("     ... and %d more" % (len(missing_cnf) - 5))
    print("  Recreate them (pure Python, ~2 s, byte-identical):")
    print("      python3 %s --write cnf" % os.path.join(HERE, "regen_cnf.py"))
if mismatched:
    bad = True
    print("\n*** %d HASH MISMATCH(ES) -- an artifact has been altered:" % len(mismatched))
    for r in mismatched: print("     " + r)
if bad: sys.exit(1)
print("OK: every artifact matches SHA256SUMS.txt")
