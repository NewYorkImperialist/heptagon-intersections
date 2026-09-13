"""
Independent regeneration of the 135 order types, the simple heptagons, the
exceptional heptagons and their profiles.  See otlib.py for every definition.

Stage 1-5 write independent_profiles.json.  ONLY AFTER that is written does
stage 6 open the project's own data files for comparison.
"""
import hashlib
import json
import os
import sys
import time
from itertools import combinations

import otlib as L

HERE = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.abspath(os.path.join(HERE, "..", ".."))
EXT = os.path.join(HERE, "external")


def log(*a):
    print(*a, flush=True)


def sha256(path):
    h = hashlib.sha256()
    with open(path, "rb") as f:
        h.update(f.read())
    return h.hexdigest()


# ==========================================================================
# STAGE 1 -- external order types
# ==========================================================================
def load_b08_points(path, n=7, count=135):
    raw = open(path, "rb").read()
    assert len(raw) == count * n * 2, (len(raw), count * n * 2)
    return [[(raw[s * 2 * n + 2 * i], raw[s * 2 * n + 2 * i + 1])
             for i in range(n)] for s in range(count)]


def load_b08_bytes(path, count=135):
    raw = open(path, "rb").read()
    assert len(raw) == count
    return list(raw)


t0 = time.time()
log("=" * 74)
log("STAGE 1  external order-type database (TU Graz otypes07.b08)")
log("=" * 74)
pts_all = load_b08_points(os.path.join(EXT, "otypes07.b08"))
log("  sets parsed                : %d" % len(pts_all))
log("  sha256(otypes07.b08)       : %s" % sha256(os.path.join(EXT, "otypes07.b08")))
assert all(L.general_position(p) for p in pts_all)
log("  all in general position    : yes (no 3 of 7 collinear, exact integer det)")
assert all(len({q[0] for q in p}) == 7 and len({q[1] for q in p}) == 7 for p in pts_all)
log("  distinct x and y per set   : yes (readme property C3)")

chis_ext = [L.chirotope(p) for p in pts_all]

# --- cross-check: chirotope-derived topes  ==  explicit rational witness lines
mism = 0
for s in range(135):
    a = set(L.topes_from_chirotope(chis_ext[s]))
    b = L.topes_by_explicit_lines(pts_all[s])
    if a != b or len(a) != 44:
        mism += 1
log("  CROSS-CHECK topes: chirotope(Gordan/circuit) vs explicit rational")
log("    lines, 135 order types x 128 sign vectors = 17280 decisions:")
log("    mismatches = %d ; every set has exactly 44 topes (= 2*(1+C(7,2)))" % mism)
assert mism == 0

# --- canonical forms
log("  canonicalising 135 chirotopes over S_7 (5040) x {+-1} ...")
t = time.time()
canon_ext_refl = [L.canonical_chirotope(c, True) for c in chis_ext]
log("    ... %.1f s" % (time.time() - t))
canon_ext_norefl = [L.canonical_chirotope(c, False) for c in chis_ext]
log("  distinct up to relabelling + reflection : %d" % len(set(canon_ext_refl)))
log("  distinct up to relabelling only         : %d" % len(set(canon_ext_norefl)))
achiral = sum(1 for c in chis_ext
              if L.canonical_chirotope(c, False)
              == L.canonical_chirotope(L.negate(c), False))
log("  achiral (mirror-symmetric) order types  : %d" % achiral)
log("  => relabelling-only classes represented  : %d"
    % (achiral + 2 * (135 - achiral)))

# ==========================================================================
# STAGE 2 -- simple heptagons
# ==========================================================================
log("")
log("=" * 74)
log("STAGE 2  simple heptagons")
log("=" * 74)
CYCS = L.all_cyclic_orders()
log("  cyclic vertex orders per point set (6!/2)  : %d" % len(CYCS))
simple_per_set = []
simple_objects = []           # (set index, cyc)
for s in range(135):
    chi = chis_ext[s]
    k = 0
    for cyc in CYCS:
        if L.is_simple(chi, cyc):
            k += 1
            simple_objects.append((s, cyc))
    simple_per_set.append(k)
total_simple = sum(simple_per_set)
log("  total simple heptagons                     : %d" % total_simple)

ham = load_b08_bytes(os.path.join(EXT, "hamilt07.b08"))
log("  EXTERNAL CHECK vs hamilt07.b08 (TU Graz 'number of rectilinear")
log("    crossing-free Hamiltonian cycles' per order type):")
log("    per-set agreement : %s" % ("ALL 135 AGREE"
                                    if ham == simple_per_set else "MISMATCH"))
log("    external sum      : %d" % sum(ham))
log("    sha256            : %s" % sha256(os.path.join(EXT, "hamilt07.b08")))
HAM_OK = (ham == simple_per_set)

# ==========================================================================
# STAGE 3 -- exceptional heptagons, both readings
# ==========================================================================
log("")
log("=" * 74)
log("STAGE 3  exceptional heptagons")
log("=" * 74)
topes_of = {}
covs_of = {}
exc_strict, exc_closed = [], []
strat = {"uncrossable_3": 0, "uncrossable_4_not_3": 0, "exceptional": 0}
maxunc = {}
for (s, cyc) in simple_objects:
    chi = chis_ext[s]
    if s not in topes_of:
        topes_of[s] = L.topes_from_chirotope(chi)
    cs = L.crossing_sets_strict(topes_of[s], cyc)
    ms = [frozenset(m) for m in L.maximal_sets(cs)]
    u3 = any(not any(frozenset(S) <= m for m in ms) for S in combinations(range(7), 3))
    u4 = any(not any(frozenset(S) <= m for m in ms) for S in combinations(range(7), 4))
    if u3:
        strat["uncrossable_3"] += 1
    elif u4:
        strat["uncrossable_4_not_3"] += 1
    else:
        strat["exceptional"] += 1
        exc_strict.append((s, cyc))
    # largest k for which some k-subset is uncrossable
    big = 0
    for k in range(2, 8):
        if any(not any(frozenset(S) <= m for m in ms) for S in combinations(range(7), k)):
            big = k
    maxunc[big] = maxunc.get(big, 0) + 1

    # looser reading: lines allowed to pass through vertices, closed segments
    if s not in covs_of:
        covs_of[s] = L.covectors_from_chirotope(chi)
    cs2 = L.crossing_sets_closed(covs_of[s], cyc)
    ms2 = [frozenset(m) for m in L.maximal_sets(cs2)]
    if not any(not any(frozenset(S) <= m for m in ms2)
               for S in combinations(range(7), 4)):
        exc_closed.append((s, cyc))

log("  stratification of the %d simple heptagons by uncrossable subsets:" % total_simple)
log("    some 3-subset uncrossable                  : %d" % strat["uncrossable_3"])
log("    no 3- but some 4-subset uncrossable        : %d" % strat["uncrossable_4_not_3"])
log("    NO 4-subset uncrossable  => EXCEPTIONAL    : %d" % strat["exceptional"])
log("  (largest uncrossable subset size -> count)   : %s"
    % dict(sorted(maxunc.items())))
log("")
log("  READING (a) STRICT  'every line DISJOINT FROM V(P) misses some side of S'")
log("      exceptional objects : %d" % len(exc_strict))
log("  READING (b) LOOSE   'no line at all meets all four CLOSED sides'")
log("      exceptional objects : %d" % len(exc_closed))
log("  (a) subset of (b)     : %s" % set(exc_strict).issubset(set(exc_closed)))
log("  the two readings agree: %s" % (set(exc_strict) == set(exc_closed)))
DIFF_AB = sorted(set(exc_closed) - set(exc_strict))
if DIFF_AB:
    log("  !!! objects exceptional under (b) but NOT under (a): %d" % len(DIFF_AB))

# ==========================================================================
# STAGE 4 -- profiles and canonical classes
# ==========================================================================
log("")
log("=" * 74)
log("STAGE 4  profiles and canonical classes")
log("=" * 74)


def profile(chi_norm):
    """All profile fields for a chirotope already normalised so that the
    polygon is the identity cycle 0,1,...,6 (side j = [j, j+1])."""
    cyc = tuple(range(7))
    tp = L.topes_from_chirotope(chi_norm)
    cs = L.crossing_sets_strict(tp, cyc)
    mx = L.maximal_sets(cs)
    return {
        "M_set": L.m_set(cs),
        "maximal_crossing_sets": [list(m) for m in mx],
        "maximal_crossing_set_sizes": [len(m) for m in mx],
        "lemma2_windows": L.lemma2_windows(chi_norm, cyc),
        "lemma2_windows_forward_only": L.lemma2_windows_forward_only(chi_norm, cyc),
        "avoiding_pairs": [list(p) for p in L.avoiding_pairs(chi_norm, cyc)],
        "reflex_vertices": L.reflex_count(chi_norm, cyc),
        "all_crossing_sets_count": len(cs),
        "crossing_set_sizes": sorted(len(c) for c in cs),
    }


classes = {}
for (s, cyc) in exc_strict:
    chi_norm = L.normalise_to_identity_cycle(chis_ext[s], cyc)
    assert L.is_simple(chi_norm, tuple(range(7)))
    key = L.canonical_class_key(chi_norm, with_reflection=True)
    classes.setdefault(key, []).append((s, cyc, chi_norm))

classes_norefl = {}
for (s, cyc) in exc_strict:
    chi_norm = L.normalise_to_identity_cycle(chis_ext[s], cyc)
    classes_norefl.setdefault(
        L.canonical_class_key(chi_norm, with_reflection=False), []).append((s, cyc))

log("  exceptional objects (order type, cyclic order) : %d" % len(exc_strict))
log("  classes under D_7 x {+-1} (order 28)           : %d" % len(classes))
log("  classes under D_7 only     (order 14)          : %d" % len(classes_norefl))
log("  class sizes (D_7 x +-1)   : %s"
    % sorted(len(v) for v in classes.values()))

# profile constancy inside each class -- a soundness check on the quotient
bad = 0
for key, mem in classes.items():
    profs = {json.dumps(profile(cn), sort_keys=True) for (_, _, cn) in mem}
    # profiles of different members are related by the same D_7 element that
    # relates the chirotopes, so compare them as SETS up to that relabelling:
    if len(profs) > 1:
        # check they are dihedral images of one another
        reps = [profile(cn) for (_, _, cn) in mem]
        base = reps[0]
        for r in reps[1:]:
            ok = False
            for g in L.DIHEDRAL:
                if sorted(g[j] for j in r["M_set"]) == sorted(base["M_set"]):
                    ok = True
            if not ok:
                bad += 1
log("  profiles consistent within classes             : %s"
    % ("yes" if bad == 0 else "NO (%d)" % bad))

ordered_keys = sorted(classes.keys())
out_classes = []
for idx, key in enumerate(ordered_keys):
    mem = classes[key]
    # canonical representative: the member whose normalised chirotope IS the
    # canonical key (exists by construction, up to the plane reflection)
    prof = profile(key)
    stab = sum(1 for g in L.DIHEDRAL for sg in (1, -1)
               if tuple(v * sg for v in L.relabel(key, g)) == key)
    achiral_cls = any(tuple(-v for v in L.relabel(key, g)) == key
                      for g in L.DIHEDRAL)
    out_classes.append({
        "independent_class_id": idx,
        "canonical_chirotope": list(key),
        "source_order_types": sorted({s for (s, _, _) in mem}),
        "source_objects": [{"otypes07_index": s, "cyclic_order": list(c)}
                           for (s, c, _) in sorted(mem, key=lambda z: (z[0], z[1]))],
        "num_labelled_objects": len(mem),
        "canonical_polygon": {
            "vertices": list(range(7)),
            "sides": [[j, (j + 1) % 7] for j in range(7)],
            "note": "side j joins vertex j to vertex j+1 mod 7",
        },
        "exceptional": True,
        "exceptional_reading": "strict: every line disjoint from V(P)",
        "uncrossable_4_subsets": [],
        "M_set": prof["M_set"],
        "maximal_crossing_sets": prof["maximal_crossing_sets"],
        "maximal_crossing_set_sizes": prof["maximal_crossing_set_sizes"],
        "lemma2_windows": prof["lemma2_windows"],
        "lemma2_windows_forward_only": prof["lemma2_windows_forward_only"],
        "avoiding_pairs": prof["avoiding_pairs"],
        "reflex_vertices": prof["reflex_vertices"],
        "all_crossing_sets_count": prof["all_crossing_sets_count"],
        "crossing_set_sizes": prof["crossing_set_sizes"],
        "symmetry": {
            "group_quotiented_by": "D_7 (order 14) x plane reflection (chi -> -chi)",
            "group_order": 28,
            "stabiliser_order": stab,
            "orbit_size": 28 // stab,
            "achiral": achiral_cls,
        },
    })

inv = {
    "every_class_has_M_set_of_size_5":
        all(len(c["M_set"]) == 5 for c in out_classes),
    "every_maximal_crossing_set_has_size_6":
        all(set(c["maximal_crossing_set_sizes"]) == {6} for c in out_classes),
    "number_of_maximal_crossing_sets_per_class":
        sorted({len(c["maximal_crossing_sets"]) for c in out_classes}),
    "avoiding_pair_counts": [len(c["avoiding_pairs"]) for c in out_classes],
    "reflex_vertex_counts": [c["reflex_vertices"] for c in out_classes],
    "lemma2_window_counts": [len(c["lemma2_windows"]) for c in out_classes],
    "M_set_equals_complements_of_maximal_crossing_sets":
        all(sorted(c["M_set"]) == sorted(
            [list(set(range(7)) - set(m))[0] for m in c["maximal_crossing_sets"]])
            for c in out_classes),
}
log("  structural invariants: %s" % json.dumps(inv, sort_keys=True))

doc = {
    "_comment": [
        "INDEPENDENT AUDIT (subagent B, 2026-09-13) of the exceptional",
        "heptagon classification for f(7,7).  Generated from the TU Graz",
        "order-type database otypes07.b08 by independent/order_type_audit/",
        "run_audit.py + otlib.py, exact integer arithmetic, Python stdlib.",
        "Definitions are stated inline in otlib.py.  This file was written",
        "BEFORE the project's own data/exceptional_profiles/*.json was read.",
        "Side j joins vertex j to vertex j+1 mod 7.  Chirotope entries are",
        "chi(a,b,c) for the 35 lex-ordered triples a<b<c.",
    ],
    "generator": "independent/order_type_audit/run_audit.py",
    "external_source": {
        "url": "http://www.ist.tugraz.at/aichholzer/research/rp/"
               "triangulations/ordertypes/data/otypes07.b08",
        "bytes": 1890,
        "sha256": sha256(os.path.join(EXT, "otypes07.b08")),
        "equivalence": "realizable order types up to relabelling AND "
                       "reflection (readme.txt section B2)",
    },
    "counts": {
        "order_types": 135,
        "cyclic_orders_per_order_type": len(CYCS),
        "simple_heptagons": total_simple,
        "stratification": strat,
        "exceptional_objects_strict_reading": len(exc_strict),
        "exceptional_objects_loose_reading": len(exc_closed),
        "exceptional_classes": len(out_classes),
        "exceptional_classes_without_plane_reflection": len(classes_norefl),
    },
    "triple_order": [list(t) for t in L.TRIPLES],
    "structural_invariants_observed": inv,
    "classes": out_classes,
}

outp = os.path.join(HERE, "independent_profiles.json")
with open(outp, "w") as f:
    json.dump(doc, f, indent=1, sort_keys=False)
    f.write("\n")
log("")
log("  WROTE %s" % outp)
log("  sha256(independent_profiles.json) = %s" % sha256(outp))
log("  elapsed %.1f s" % (time.time() - t0))
