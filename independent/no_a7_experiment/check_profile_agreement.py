#!/usr/bin/env python3
"""
check_profile_agreement.py -- sanity check, NOT part of the pipeline.

Confirms that the profile data the C++ path reads out of
data/exceptional_profiles/exceptional_profiles_14.json (M_set, maximal crossing
sets, Lemma-2 windows, AVOIDING PAIRS) is exactly what the Python path derives
at run time from exc_det.pkl via audit_enum.py's own `classdata`.

If the two disagree, the two "independent" code paths are not testing the same
mathematics, and the comparison is worthless.
"""
import json
import os
import pickle
import sys
from itertools import combinations

_HERE = os.path.dirname(os.path.abspath(__file__))
_REPO = os.path.abspath(os.path.join(_HERE, os.pardir, os.pardir))
_ELIM = os.path.join(_REPO, "python", "elimination")
sys.path.insert(0, os.path.join(_REPO, "python", "core"))
from chiro import *  # noqa

SRC = open(os.path.join(_ELIM, "audit_enum.py")).read()
# slice 1 of audit_enum.py: FULL, bits, pc, components, L5_ok, H_bip, L3_ok
exec(compile(SRC.split("E_TARGET=")[0].split('"""')[2],
             "audit_enum.py[helpers]", "exec"))
_d = SRC.index("# ---------- downstream")
exec(compile(SRC[_d:SRC.index("step={")], "audit_enum.py[classdata]", "exec"))
# now: exc, classdata, CD, FOUR, L2_ok

J = json.load(open(os.path.join(_REPO, "data", "exceptional_profiles",
                                "exceptional_profiles_14.json")))["classes"]
bad = 0
assert len(J) == len(CD), (len(J), len(CD))
for a, c in enumerate(J):
    al, W, AV = CD[a]
    # windows
    if sorted(c["lemma2_windows"]) != sorted(W):
        print(f"class {a}: WINDOWS differ  json={c['lemma2_windows']} pkl={W}"); bad += 1
    # avoiding pairs
    jav = sorted(tuple(p) for p in c["avoiding_pairs"])
    pav = sorted(tuple(p) for p in AV)
    if jav != pav:
        print(f"class {a}: AVOIDING PAIRS differ  json={jav} pkl={pav}"); bad += 1
    # crossing-set compatibility predicate, on all 128 neighbourhood masks
    mcs = [sum(1 << x for x in s) for s in c["maximal_crossing_sets"]]
    for N in range(128):
        want = any(((FULL ^ N) & ~C) == 0 for C in mcs)
        if want != al[N]:
            print(f"class {a}: compat differs at N={N}"); bad += 1; break
    # M_set
    if sorted(c["M_set"]) != sorted(x for x in range(7)
                                    if (FULL ^ (1 << x)) in mcs):
        print(f"class {a}: M_set vs mcs mismatch"); bad += 1

print("AGREEMENT: OK" if bad == 0 else f"AGREEMENT: {bad} DISCREPANCIES")
sys.exit(1 if bad else 0)
