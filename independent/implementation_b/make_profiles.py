#!/usr/bin/env python3
"""
make_profiles.py -- format converter ONLY.

Reads the canonical profile JSON and writes a flat text file that the C++
implementation can parse without a JSON dependency.  It performs NO
mathematics: every value is copied straight from the canonical data, with
side-index lists turned into 7-bit masks.

Output format:
    <number of classes>
    then one line per class:
    <class_index> <M_mask> <nW> <w_0..w_{nW-1}> <nMCS> <mcs_mask_0..>

Usage: python3 make_profiles.py <profiles.json> <out.txt>
"""
import json
import sys

src, dst = sys.argv[1], sys.argv[2]
d = json.load(open(src))
cls = d["classes"]

def mask(xs):
    m = 0
    for x in xs:
        m |= 1 << x
    return m

with open(dst, "w") as fh:
    fh.write(f"{len(cls)}\n")
    for c in cls:
        mcs = [mask(s) for s in c["maximal_crossing_sets"]]
        w = c["lemma2_windows"]
        fh.write(f"{c['class_index']} {mask(c['M_set'])} "
                 f"{len(w)} {' '.join(map(str, w))} "
                 f"{len(mcs)} {' '.join(map(str, mcs))}\n")
print(f"wrote {dst}: {len(cls)} classes")
