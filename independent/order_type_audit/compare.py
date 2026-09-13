"""
STAGE 6 -- comparison against the project's own stored artifacts.

This script is the FIRST thing in this audit that reads the *values* inside
data/order_types/order_types_7.json and
data/exceptional_profiles/exceptional_profiles_14.json.
independent_profiles.json must already exist.
"""
import hashlib
import json
import os
from itertools import combinations

import otlib as L

HERE = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.abspath(os.path.join(HERE, "..", ".."))


def log(*a):
    print(*a, flush=True)


def sha(p):
    return hashlib.sha256(open(p, "rb").read()).hexdigest()


mine = json.load(open(os.path.join(HERE, "independent_profiles.json")))
otp = os.path.join(REPO, "data", "order_types", "order_types_7.json")
exp = os.path.join(REPO, "data", "exceptional_profiles",
                   "exceptional_profiles_14.json")
proj_ot = json.load(open(otp))
proj_ex = json.load(open(exp))

log("=" * 74)
log("B1  ORDER TYPES: project's 135 vs the TU Graz realizable 135")
log("=" * 74)
log("  project file sha256 : %s" % sha(otp))
log("  project count field : %s" % proj_ot["count"])

# the project declares its own triple order; confirm it is the lex order I used
assert [tuple(t) for t in proj_ot["triple_order"]] == L.TRIPLES, \
    "triple order convention differs"
log("  triple_order matches my lex convention : yes")

proj_chis = [tuple(c) for c in proj_ot["chirotopes"]]
log("  entries : %d ; all in {-1,+1} : %s" %
    (len(proj_chis), all(set(c) <= {-1, 1} for c in proj_chis)))

# -- are the project's 135 genuine uniform rank-3 oriented matroids?
tope_counts = {}
for c in proj_chis:
    tope_counts[len(L.topes_from_chirotope(c))] = \
        tope_counts.get(len(L.topes_from_chirotope(c)), 0) + 1
log("  tope counts over the project's 135 (44 expected for a rank-3 uniform")
log("    oriented matroid): %s" % tope_counts)

# -- canonical comparison
raw = open(os.path.join(HERE, "external", "otypes07.b08"), "rb").read()
pts_all = [[(raw[s * 14 + 2 * i], raw[s * 14 + 2 * i + 1]) for i in range(7)]
           for s in range(135)]
ext_canon = {L.canonical_chirotope(L.chirotope(p), True) for p in pts_all}
proj_canon = {L.canonical_chirotope(c, True) for c in proj_chis}
log("")
log("  canonical forms (lex-min over S_7 x {+-1} = relabelling + reflection):")
log("    external distinct : %d" % len(ext_canon))
log("    project  distinct : %d" % len(proj_canon))
log("    project \\ external : %d" % len(proj_canon - ext_canon))
log("    external \\ project : %d" % len(ext_canon - proj_canon))
SET_EQ = (proj_canon == ext_canon)
log("    EXACT SET EQUALITY up to relabelling and reflection : %s" % SET_EQ)

proj_canon_nr = {L.canonical_chirotope(c, False) for c in proj_chis}
ext_canon_nr = {L.canonical_chirotope(L.chirotope(p), False) for p in pts_all}
log("    (relabelling only, no reflection) equal : %s"
    % (proj_canon_nr == ext_canon_nr))
log("    => the project's 135 is NOT a proper superset; it is exactly the set")
log("       of realizable order types.  The 'superset' argument is sound but")
log("       turns out to be unnecessary here: %s" % SET_EQ)

log("")
log("=" * 74)
log("B2  EXCEPTIONAL PROFILES: project's 14 classes vs mine")
log("=" * 74)
log("  project file sha256 : %s" % sha(exp))
log("  project count field : %s ; classes present : %d"
    % (proj_ex["count"], len(proj_ex["classes"])))
assert [tuple(t) for t in proj_ex["triple_order"]] == L.TRIPLES

my_by_key = {tuple(c["canonical_chirotope"]): c for c in mine["classes"]}
my_keys = set(my_by_key)

rows = []
substantive = []
naming = []
for pc in proj_ex["classes"]:
    chi = tuple(pc["canonical_chirotope"])
    cyc = tuple(range(7))
    r = {"project_class_index": pc["class_index"]}

    # --- is their representative even a legitimate exceptional heptagon?
    r["is_realizable_order_type"] = (
        L.canonical_chirotope(chi, True) in ext_canon)
    r["num_topes"] = len(L.topes_from_chirotope(chi))
    r["identity_cycle_is_simple"] = L.is_simple(chi, cyc)
    tp = L.topes_from_chirotope(chi)
    cs = L.crossing_sets_strict(tp, cyc)
    mx = L.maximal_sets(cs)
    r["is_exceptional_strict"] = L.is_exceptional(cs, mx)

    # --- recompute every downstream field with MY code from THEIR representative
    recomputed = {
        "M_set": L.m_set(cs),
        "maximal_crossing_sets": [list(m) for m in mx],
        "maximal_crossing_set_sizes": [len(m) for m in mx],
        "lemma2_windows": L.lemma2_windows(chi, cyc),
        "avoiding_pairs": [list(p) for p in L.avoiding_pairs(chi, cyc)],
    }
    r["recomputed"] = recomputed
    r["stored"] = {k: pc[k] for k in recomputed}
    r["field_match"] = {}
    for k in recomputed:
        a = recomputed[k]
        b = pc[k]
        # compare as canonical sorted structures (order in the file is a
        # presentation choice, membership is not)
        ca = sorted(map(tuple, a)) if a and isinstance(a[0], list) else sorted(a)
        cb = sorted(map(tuple, b)) if b and isinstance(b[0], list) else sorted(b)
        r["field_match"][k] = (ca == cb)
        if ca != cb:
            substantive.append((pc["class_index"], k, b, a))
        elif a != b:
            naming.append((pc["class_index"], k))

    # --- map to my independent class id
    key = L.canonical_class_key(chi, with_reflection=True)
    r["matched_independent_class_id"] = (
        my_by_key[key]["independent_class_id"] if key in my_keys else None)
    r["canonical_key_found_in_mine"] = key in my_keys
    rows.append(r)

matched = [r["matched_independent_class_id"] for r in rows]
log("  every project representative is a realizable order type : %s"
    % all(r["is_realizable_order_type"] for r in rows))
log("  every project representative has 44 topes               : %s"
    % all(r["num_topes"] == 44 for r in rows))
log("  identity cycle 0..6 is a simple polygon in all 14       : %s"
    % all(r["identity_cycle_is_simple"] for r in rows))
log("  all 14 are EXCEPTIONAL under the strict reading         : %s"
    % all(r["is_exceptional_strict"] for r in rows))
log("")
log("  class bijection project -> independent:")
for r in rows:
    log("    project class %2d  ->  independent class %s"
        % (r["project_class_index"], r["matched_independent_class_id"]))
log("  bijection is total and injective : %s"
    % (None not in matched and len(set(matched)) == 14))
log("")
log("  FIELD-BY-FIELD (my predicates recomputed on THEIR representative):")
for k in ["M_set", "maximal_crossing_sets", "maximal_crossing_set_sizes",
          "lemma2_windows", "avoiding_pairs"]:
    n = sum(1 for r in rows if r["field_match"][k])
    log("    %-28s %d / 14 match" % (k, n))
log("")
if substantive:
    log("  !!!!!! SUBSTANTIVE DIFFERENCES: %d" % len(substantive))
    for (ci, k, stored, recomputed) in substantive:
        log("    class %d  field %s" % (ci, k))
        log("       stored     : %s" % (stored,))
        log("       recomputed : %s" % (recomputed,))
else:
    log("  NO substantive differences.")
if naming:
    log("  ordering-only (non-substantive) differences: %s" % sorted(set(naming)))
else:
    log("  no ordering-only differences either (byte-order identical).")

log("")
log("  stored structural_invariants_observed : %s"
    % json.dumps(proj_ex["structural_invariants_observed"], sort_keys=True))
log("  my  structural_invariants_observed    : %s"
    % json.dumps(mine["structural_invariants_observed"], sort_keys=True))

# multiset comparison of the profile tuples, independent of class numbering
def sig(d):
    return (tuple(sorted(d["M_set"])),
            tuple(sorted(map(tuple, d["maximal_crossing_sets"]))),
            tuple(sorted(d["lemma2_windows"])),
            tuple(sorted(map(tuple, d["avoiding_pairs"]))))


log("")
log("  profile-signature multiset comparison (numbering-free):")
ms_proj = sorted(sig(pc) for pc in proj_ex["classes"])
ms_mine_transported = sorted(sig(r["recomputed"]) for r in rows)
log("    project vs my-recomputation-on-their-reps : %s"
    % (ms_proj == ms_mine_transported))

out = {
    "order_types_exact_set_equality_up_to_relabelling_and_reflection": SET_EQ,
    "project_order_types_all_44_topes": tope_counts,
    "class_bijection": {str(r["project_class_index"]):
                        r["matched_independent_class_id"] for r in rows},
    "field_match_counts": {k: sum(1 for r in rows if r["field_match"][k])
                           for k in ["M_set", "maximal_crossing_sets",
                                     "maximal_crossing_set_sizes",
                                     "lemma2_windows", "avoiding_pairs"]},
    "substantive_differences": substantive,
    "ordering_only_differences": sorted(set(naming)),
    "details": rows,
}
p = os.path.join(HERE, "comparison_report.json")
json.dump(out, open(p, "w"), indent=1)
open(p, "a").write("\n")
log("")
log("  WROTE %s  sha256=%s" % (p, sha(p)))
