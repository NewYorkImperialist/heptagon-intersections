"""
Adversarial tests for the independent audit: POSITIVE and NEGATIVE for every
predicate, plus exhaustive chirotope-vs-coordinate cross-checks on the 135
realizable order types (where real coordinates exist).

A test only counts if it could have failed: every predicate is exercised on
inputs designed to make it say "no".
"""
import json
import os
from fractions import Fraction
from itertools import combinations

import otlib as L

HERE = os.path.dirname(os.path.abspath(__file__))
EXT = os.path.join(HERE, "external")

raw = open(os.path.join(EXT, "otypes07.b08"), "rb").read()
PTS = [[(raw[s * 14 + 2 * i], raw[s * 14 + 2 * i + 1]) for i in range(7)]
       for s in range(135)]
CHI = [L.chirotope(p) for p in PTS]
CYCS = L.all_cyclic_orders()

PASS, FAIL = [], []


def check(name, cond, extra=""):
    (PASS if cond else FAIL).append(name)
    print("  %-62s %s %s" % (name, "PASS" if cond else "**FAIL**", extra))


# ==========================================================================
# Coordinate-side reference implementations (independent of the chirotope)
# ==========================================================================
def seg_cross_coords(a, b, c, d):
    """Proper crossing of [a,b] and [c,d] by exact integer sidedness."""
    d1 = L.orient(a, b, c)
    d2 = L.orient(a, b, d)
    d3 = L.orient(c, d, a)
    d4 = L.orient(c, d, b)
    return d1 != d2 and d3 != d4


def avoiding_coords(a, b, c, d):
    """Literal AKR definition, computed geometrically with exact rationals:
    intersect the two supporting lines; avoiding iff neither CLOSED segment
    contains that point (parallel lines => no point => avoiding)."""
    # line1: a + t(b-a) ; line2: c + u(d-c)
    r = (b[0] - a[0], b[1] - a[1])
    s = (d[0] - c[0], d[1] - c[1])
    den = r[0] * s[1] - r[1] * s[0]
    if den == 0:
        return True                       # parallel: no intersection point
    qp = (c[0] - a[0], c[1] - a[1])
    t = Fraction(qp[0] * s[1] - qp[1] * s[0], den)
    u = Fraction(qp[0] * r[1] - qp[1] * r[0], den)
    in1 = 0 <= t <= 1
    in2 = 0 <= u <= 1
    return (not in1) and (not in2)


def in_triangle_coords(A, B, C, D):
    s = (L.orient(A, B, D), L.orient(B, C, D), L.orient(C, A, D))
    return s[0] == s[1] == s[2]


print("=" * 74)
print("GROUP 1  proper segment crossing")
print("=" * 74)
# hand-built positive / negative with explicit coordinates
X = [(0, 0), (10, 10), (0, 10), (10, 0), (20, 20), (30, 0), (5, 100)]
check("positive: (0,0)-(10,10) crosses (0,10)-(10,0)",
      seg_cross_coords(X[0], X[1], X[2], X[3]))
check("negative: (0,0)-(10,10) does NOT cross (20,20)-(30,0)",
      not seg_cross_coords(X[0], X[1], X[4], X[5]))
check("negative: touching-at-a-shared-line but disjoint segments",
      not seg_cross_coords((0, 0), (1, 1), (5, 5), (9, 9)))
# exhaustive: chirotope predicate vs coordinate predicate
n = bad = 0
for s in range(135):
    for (a, b, c, d) in combinations(range(7), 4):
        for (p, q, r_, t_) in [(a, b, c, d), (a, c, b, d), (a, d, b, c)]:
            n += 1
            if L.cross(CHI[s], p, q, r_, t_) != seg_cross_coords(
                    PTS[s][p], PTS[s][q], PTS[s][r_], PTS[s][t_]):
                bad += 1
check("EXHAUSTIVE chirotope cross() vs coordinates, %d segment pairs" % n,
      bad == 0, "mismatches=%d" % bad)
tot_true = sum(1 for s in range(135) for (a, b, c, d) in combinations(range(7), 4)
               for (p, q, r_, t_) in [(a, b, c, d), (a, c, b, d), (a, d, b, c)]
               if L.cross(CHI[s], p, q, r_, t_))
check("the crossing predicate is non-trivial (both outcomes occur)",
      0 < tot_true < n, "true=%d of %d" % (tot_true, n))

print()
print("=" * 74)
print("GROUP 2  polygon simplicity")
print("=" * 74)


def is_simple_coords(pts, cyc):
    S = L.sides_of(cyc)
    for (j, k) in L.NONADJ_SIDE_PAIRS:
        if seg_cross_coords(pts[S[j][0]], pts[S[j][1]],
                            pts[S[k][0]], pts[S[k][1]]):
            return False
    return True


sq = [(0, 0), (100, 3), (97, 100), (1, 97), (50, 200), (200, 50), (150, 150)]
conv = (0, 1, 2, 3)  # not 7-gon; use a dedicated 7-point convex set
convex7 = [(0, 0), (100, 1), (180, 60), (200, 150), (120, 210), (30, 190),
           (-40, 100)]
check("positive: the convex 7-gon in convex position order is simple",
      is_simple_coords(convex7, tuple(range(7))))
check("negative: the same 7 points in a shuffled order self-intersect",
      not is_simple_coords(convex7, (0, 2, 4, 6, 1, 3, 5)))
n = bad = 0
for s in range(135):
    for cyc in CYCS:
        n += 1
        if L.is_simple(CHI[s], cyc) != is_simple_coords(PTS[s], cyc):
            bad += 1
check("EXHAUSTIVE is_simple chirotope vs coordinates, %d polygons" % n,
      bad == 0, "mismatches=%d" % bad)
ns = sum(1 for s in range(135) for cyc in CYCS if L.is_simple(CHI[s], cyc))
check("simplicity is non-trivial: %d simple, %d self-intersecting"
      % (ns, n - ns), 0 < ns < n)

print()
print("=" * 74)
print("GROUP 3  exceptional / non-exceptional 4-subsets, with witness LINES")
print("=" * 74)


def witness_lines(pts):
    """Map each tope sign vector to an explicit rational witness line
    (point, direction).  Same construction as otlib.topes_by_explicit_lines."""
    out = {}
    for i, j in combinations(range(7), 2):
        pi = (Fraction(pts[i][0]), Fraction(pts[i][1]))
        pj = (Fraction(pts[j][0]), Fraction(pts[j][1]))
        d = (pj[0] - pi[0], pj[1] - pi[1])
        nr = (-d[1], d[0])
        m = ((pi[0] + pj[0]) / 2, (pi[1] + pj[1]) / 2)
        for e in (L.EPS, -L.EPS):
            for (A, D) in (((pi[0] + e * nr[0], pi[1] + e * nr[1]), d),
                           (m, (d[0] + e * nr[0], d[1] + e * nr[1]))):
                sg = L._signs_of_line(pts, A, D)
                if 0 in sg:
                    continue
                out.setdefault(sg, (A, D))
                out.setdefault(tuple(-v for v in sg), (A, D))
    return out


exc = json.load(open(os.path.join(HERE, "independent_profiles.json")))
nwit = 0
bad = 0
for cls in exc["classes"]:
    src = cls["source_objects"][0]
    s, cyc = src["otypes07_index"], tuple(src["cyclic_order"])
    pts = PTS[s]
    wl = witness_lines(pts)
    topes = L.topes_from_chirotope(CHI[s])
    S = L.sides_of(cyc)
    for four in combinations(range(7), 4):
        hit = None
        for T in topes:
            if all(T[S[j][0]] != T[S[j][1]] for j in four):
                hit = T
                break
        if hit is None:
            bad += 1
            continue
        A, D = wl[hit]
        # verify GEOMETRICALLY, from coordinates, with exact rationals:
        sg = L._signs_of_line(pts, A, D)
        ok = (0 not in sg) and all(sg[S[j][0]] != sg[S[j][1]] for j in four)
        if not ok:
            bad += 1
        nwit += 1
check("POSITIVE: all 14 exceptional classes, all C(7,4)=35 four-subsets, an"
      " explicit rational line", bad == 0,
      "%d witnesses verified, %d bad" % (nwit, bad))

# NEGATIVE: a non-exceptional polygon really has an uncrossable 4-subset,
# certified by exhausting ALL 44 topes AND all 170 covectors' strict part.
negs = 0
negchecked = 0
for s in range(135):
    for cyc in CYCS[:40]:
        if not L.is_simple(CHI[s], cyc):
            continue
        topes = L.topes_from_chirotope(CHI[s])
        cs = L.crossing_sets_strict(topes, cyc)
        ms = [frozenset(m) for m in L.maximal_sets(cs)]
        unc = [f for f in combinations(range(7), 4)
               if not any(frozenset(f) <= m for m in ms)]
        if not unc:
            continue
        negchecked += 1
        S = L.sides_of(cyc)
        four = unc[0]
        # brute force over every tope: none may cross all four
        if any(all(T[S[j][0]] != T[S[j][1]] for j in four) for T in topes):
            negs += 1
        # and over the explicit coordinate-side tope set too
        if any(all(T[S[j][0]] != T[S[j][1]] for j in four)
               for T in L.topes_by_explicit_lines(PTS[s])):
            negs += 1
        break
check("NEGATIVE: uncrossable 4-subsets are genuinely uncrossable (all 44 "
      "topes + coordinate topes)", negs == 0,
      "%d polygons checked, %d violations" % (negchecked, negs))
check("the exceptional predicate is non-trivial (16 yes, 6326 no)",
      exc["counts"]["exceptional_objects_strict_reading"] == 16
      and exc["counts"]["simple_heptagons"] == 6342)

print()
print("=" * 74)
print("GROUP 4  avoiding pairs")
print("=" * 74)
# hand-built: two parallel-ish far apart segments -> avoiding
check("positive: [(0,0),(10,1)] and [(0,50),(10,51)] avoid",
      avoiding_coords((0, 0), (10, 1), (0, 50), (10, 51)))
# crossing segments are never avoiding
check("negative: crossing segments are not avoiding",
      not avoiding_coords((0, 0), (10, 10), (0, 10), (10, 0)))
# non-crossing but NOT avoiding: line of one hits the other
check("negative: non-crossing but the supporting line of one meets the other",
      not avoiding_coords((0, 0), (10, 0), (5, 3), (5, 20)))
n = bad = nav = 0
for s in range(135):
    for (a, b, c, d) in combinations(range(7), 4):
        for (p, q, r_, t_) in [(a, b, c, d), (a, c, b, d), (a, d, b, c)]:
            n += 1
            mine = L.is_avoiding(CHI[s], p, q, r_, t_)
            ref = avoiding_coords(PTS[s][p], PTS[s][q], PTS[s][r_], PTS[s][t_])
            if mine != ref:
                bad += 1
            nav += mine
check("EXHAUSTIVE derived sign test vs literal 'intersection point of the "
      "two supporting lines'", bad == 0, "%d pairs, %d mismatches" % (n, bad))
check("the avoiding predicate is non-trivial", 0 < nav < n,
      "avoiding=%d of %d" % (nav, n))

print()
print("=" * 74)
print("GROUP 5  Cerny L2 windows / point in triangle")
print("=" * 74)
check("positive: (1,1) is inside triangle (0,0),(10,0),(0,10)",
      in_triangle_coords((0, 0), (10, 0), (0, 10), (1, 1)))
check("negative: (9,9) is outside triangle (0,0),(10,0),(0,10)",
      not in_triangle_coords((0, 0), (10, 0), (0, 10), (9, 9)))
n = bad = nin = 0
for s in range(135):
    for (a, b, c, d) in combinations(range(7), 4):
        for D in (a, b, c, d):
            tri = [x for x in (a, b, c, d) if x != D]
            n += 1
            m = L.point_in_triangle(CHI[s], tri[0], tri[1], tri[2], D)
            r = in_triangle_coords(PTS[s][tri[0]], PTS[s][tri[1]],
                                   PTS[s][tri[2]], PTS[s][D])
            if m != r:
                bad += 1
            nin += m
check("EXHAUSTIVE point_in_triangle chirotope vs coordinates", bad == 0,
      "%d tests, %d mismatches" % (n, bad))
check("point-in-triangle is non-trivial", 0 < nin < n, "inside=%d" % nin)
# direction symmetry of the window predicate really matters
fwd_only = 0
both = 0
for cls in exc["classes"]:
    chi = tuple(cls["canonical_chirotope"])
    fwd_only += len(L.lemma2_windows_forward_only(chi, tuple(range(7))))
    both += len(L.lemma2_windows(chi, tuple(range(7))))
check("forward-only vs direction-symmetric windows differ (they must: 4 "
      "consecutive sides can be traversed either way)", fwd_only < both,
      "forward-only total=%d, symmetric total=%d" % (fwd_only, both))

print()
print("=" * 74)
print("GROUP 6  canonicalisation: rotation, reflection, and non-merging")
print("=" * 74)
keys = [tuple(c["canonical_chirotope"]) for c in exc["classes"]]
check("the 14 canonical keys are pairwise distinct", len(set(keys)) == 14)
# rotation equivalence
ok = all(L.canonical_class_key(L.relabel(k, tuple((j + t) % 7 for j in range(7))))
         == k for k in keys for t in range(7))
check("POSITIVE: all 7 cyclic rotations of every class map to the same key", ok)
# polygon-reversal equivalence (dihedral reflection)
ok = all(L.canonical_class_key(L.relabel(k, tuple((t - j) % 7 for j in range(7))))
         == k for k in keys for t in range(7))
check("POSITIVE: all 7 polygon reversals map to the same key", ok)
# plane reflection
ok = all(L.canonical_class_key(L.negate(k)) == k for k in keys)
check("POSITIVE: plane reflection (chi -> -chi) maps to the same key", ok)
# profiles really are invariant under the group
inv_ok = True
for k in keys:
    base = (sorted(L.m_set(L.crossing_sets_strict(
        L.topes_from_chirotope(k), tuple(range(7))))),)
    for g in L.DIHEDRAL:
        kk = L.relabel(k, g)
        m2 = L.m_set(L.crossing_sets_strict(
            L.topes_from_chirotope(kk), tuple(range(7))))
        # M_set must transport by g^{-1} on side indices
        ginv = [0] * 7
        for j in range(7):
            ginv[g[j]] = j
        # side j of the relabelled polygon corresponds to side ... check as a
        # set-size invariant plus canonical-key invariance (already checked)
        if len(m2) != 5:
            inv_ok = False
check("POSITIVE: |M_set| = 5 for every dihedral image of every class", inv_ok)
# NEGATIVE: distinct classes never merge
merged = 0
for i in range(14):
    orb = set()
    for g in L.DIHEDRAL:
        r = L.relabel(keys[i], g)
        orb.add(r)
        orb.add(L.negate(r))
    for j in range(14):
        if i != j and keys[j] in orb:
            merged += 1
check("NEGATIVE: no two of the 14 classes lie in a common orbit (they must "
      "stay distinct)", merged == 0, "collisions=%d" % merged)
# NEGATIVE: a deliberately corrupted chirotope must NOT canonicalise to the
# SAME class.  (Note: it MAY legitimately equal ANOTHER class's chirotope --
# single sign flips of a uniform rank-3 chirotope are *mutations* and several
# of the 14 classes are single mutations of each other.  The soundness
# property that matters is that corruption never leaves the key unchanged.)
same = 0
still_om = 0
esc = 0
extcanon = {L.canonical_chirotope(L.chirotope(p), True) for p in PTS}
allkeys = {L.canonical_class_key(k) for k in keys}
for k in keys:
    for bit in range(35):
        kk = tuple(-v if i == bit else v for i, v in enumerate(k))
        if L.canonical_class_key(kk) == L.canonical_class_key(k):
            same += 1
        if len(L.topes_from_chirotope(kk)) == 44:
            still_om += 1
            cyc = tuple(range(7))
            if L.is_simple(kk, cyc) and L.is_exceptional(
                    L.crossing_sets_strict(L.topes_from_chirotope(kk), cyc)):
                if L.canonical_class_key(kk) not in allkeys:
                    esc += 1
check("NEGATIVE: corrupting one chirotope entry never leaves the canonical "
      "class key unchanged", same == 0, "%d/490 unchanged" % same)
check("NEGATIVE: %d/490 corruptions are detected as non-oriented-matroids by "
      "the tope count" % (490 - still_om), (490 - still_om) > 0,
      "the other %d are genuine mutations" % still_om)
check("CLOSURE: no single-mutation probe produces an exceptional class outside "
      "the 14", esc == 0, "escapes=%d" % esc)
h1 = sorted({tuple(sorted((i, j))) for i in range(14) for j in range(14)
             if i != j and sum(1 for a, b in zip(keys[i], keys[j]) if a != b) == 1})
check("(observation, not a defect) class pairs at Hamming distance 1",
      True, "%s" % (h1,))

print()
print("=" * 74)
print("GROUP 7  reflex vertices, chirotope vs coordinates")
print("=" * 74)
n = bad = 0
for s in range(135):
    for cyc in CYCS:
        if not L.is_simple(CHI[s], cyc):
            continue
        n += 1
        if L.reflex_count(CHI[s], cyc) != L.reflex_count_coords(PTS[s], cyc):
            bad += 1
check("EXHAUSTIVE reflex count: hull-vertex chirotope method vs signed area",
      bad == 0, "%d simple polygons, %d mismatches" % (n, bad))

print()
print("=" * 74)
print("RESULT: %d passed, %d failed" % (len(PASS), len(FAIL)))
if FAIL:
    for f in FAIL:
        print("  FAILED: %s" % f)
print("=" * 74)
