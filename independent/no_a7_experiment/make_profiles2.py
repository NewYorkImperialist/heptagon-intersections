#!/usr/bin/env python3
"""
make_profiles2.py -- format converter ONLY (no mathematics).

Extends independent/implementation_b/make_profiles.py with the AVOIDING PAIRS
field, which the original converter did not need because Implementation B
stopped short of the final avoiding-pair AKR Lemma 5 filter.

Every value is copied verbatim from the canonical profile JSON
(data/exceptional_profiles/exceptional_profiles_14.json); side-index lists are
turned into 7-bit masks.  Nothing is derived, corrected or reordered.

Output format:
    <number of classes>
    then one line per class:
      <class_index> <M_mask>
      <nW>   <w_0 .. w_{nW-1}>
      <nMCS> <mcs_mask_0 .. >
      <nAV>  <i_0 j_0 i_1 j_1 ...>

Usage: python3 make_profiles2.py <profiles.json> <out.txt>
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
        av = c["avoiding_pairs"]
        flat_av = " ".join(f"{i} {j}" for (i, j) in av)
        fh.write(f"{c['class_index']} {mask(c['M_set'])} "
                 f"{len(w)} {' '.join(map(str, w))} "
                 f"{len(mcs)} {' '.join(map(str, mcs))} "
                 f"{len(av)}{' ' + flat_av if av else ''}\n")
print(f"wrote {dst}: {len(cls)} classes")
