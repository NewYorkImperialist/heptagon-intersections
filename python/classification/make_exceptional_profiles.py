#!/usr/bin/env python3
"""
make_exceptional_profiles.py  --  WRAPPER ADDED DURING REPOSITORY ORGANIZATION.

This file is NOT part of the original research code.  It was added on
2026-09-13 purely to repair a broken link in the reproduction chain; it
contains no mathematics of its own.

THE PROBLEM IT SOLVES
---------------------
`audit_ot.py` does three things in sequence:

  (a) cross-check chirotope predicates against coordinate predicates,
  (b) confirm the deterministic order types equal the randomly sampled ones,
  (c) re-run "Question A" on the deterministic order types and write the
      14 exceptional class profiles to `exc_det.pkl`.

Parts (a) and (b) require `ot7.pkl`, the pickle of 135 *randomly sampled*
point realizations.  That file was NOT included in the project materials, and
the script that produced it (`ot_fast.py`, referenced in the superseded
REPORT.md) is also missing.  So `audit_ot.py` aborts at its first line of work,
and `exc_det.pkl` -- which `audit_enum.py` and `audit_pairs.py` both require --
can never be produced.

Part (c), however, depends only on `ot7_det.pkl`, which `chiro.py` regenerates
deterministically from nothing in about 8 seconds.

WHAT THIS WRAPPER DOES
----------------------
It execs the *unmodified source text of part (c)* of `audit_ot.py`, sliced out
at the original section marker, with `det` pre-loaded from `ot7_det.pkl`.  The
algorithm that runs is byte-for-byte the project's own code.  Nothing is
reimplemented, reordered or corrected here.

(The exec-a-slice-of-a-sibling-script idiom is the project's own: see
`audit_pairs.py`, which reuses `audit_enum.py`'s helpers the same way.)

Expected output (verified 2026-09-13):
    (c) simple 7-gons examined: 6342
        minimum uncrossable-set size distribution: {3: 6007, 4: 319, 5: 16}
        exceptional polygon classes: 14

Usage:
    python3 make_exceptional_profiles.py [ot7_det.pkl] [exc_det.pkl]

Writes `exc_det.pkl` into the current working directory, because that is where
the original part (c) code writes it.
"""
import os
import pickle
import sys
from itertools import combinations, permutations  # noqa: F401  (used by exec'd code)

_HERE = os.path.dirname(os.path.abspath(__file__))
_CORE = os.path.join(_HERE, os.pardir, "core")
sys.path.insert(0, os.path.abspath(_CORE))

from chiro import *  # noqa: E402,F401,F403  (used by exec'd code)

SECTION_MARKER = "# ---- (c) Question A on the deterministic order types"

in_path = sys.argv[1] if len(sys.argv) > 1 else "ot7_det.pkl"
out_path = sys.argv[2] if len(sys.argv) > 2 else "exc_det.pkl"

if not os.path.exists(in_path):
    sys.exit(
        f"error: {in_path!r} not found.\n"
        f"Generate it first with:  python3 {os.path.join(_CORE, 'chiro.py')}\n"
        f"(chiro.py writes ot7_det.pkl into the current directory)."
    )

source = open(os.path.join(_HERE, "audit_ot.py")).read()
if SECTION_MARKER not in source:
    sys.exit("error: section marker not found in audit_ot.py; the file has changed.")
part_c = source[source.index(SECTION_MARKER):]

det = pickle.load(open(in_path, "rb"))
print(f"loaded {len(det)} deterministic order types from {in_path}")

# `det` is the variable part (c) expects; the exec'd code writes exc_det.pkl.
exec(compile(part_c, "audit_ot.py[part-c]", "exec"))

if out_path != "exc_det.pkl" and os.path.exists("exc_det.pkl"):
    os.replace("exc_det.pkl", out_path)
print(f"wrote {out_path}")
