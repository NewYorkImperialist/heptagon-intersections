#!/usr/bin/env python3
"""
Independent re-implementation of AKR Sect. 10.2's METHOD for Lemma 7, in exact
integer arithmetic, over randomly sampled arrangements of eight lines.

AKR Sect. 10.2, verbatim:

  "Lemma 7 involves eight polygon sides.  Thus, we enumerated all 158830
   arrangements of eight lines. ...  For each arrangement, we tried all possible
   ways of assigning the sides p_i,p_{i+1},p_j,p_{j+1} and q_{i'},q_{i'+-1},
   q_{j'},q_{j'+-1} ... to these lines.  Since there are symmetries in the
   configuration of the eight sides, we did not have to try all 8! = 40320
   assignments, but only 840.  Once this assignment is given, we know where the
   vertices between consecutive sides, like p_i,p_{i+1}, are in the arrangement.
   This specifies one endpoint of each side.  It is then easy to check whether it
   is possible to realize the required intersection pattern of a perfect matching
   among the eight involved sides.  We first took into account the required
   intersections among the sides, for example, between p_i and q_{j'}.  On each
   line, these required intersection points must lie on one side of the vertex
   that we already know.  If this is the case, we get a minimum range on the line
   that the side must cover.  We then check if all forbidden intersections (for
   example, between p_i and q_{i'}, or between p_i and p_j) are avoided."

This file implements exactly that recipe, independently.  Differences from AKR,
stated up front:

  * We do NOT enumerate all arrangements of eight (pseudo)lines.  We sample
    random arrangements of eight straight lines with integer coefficients.  The
    search is therefore INCOMPLETE: it can find configurations, it cannot prove
    that none exists.  Coverage is measured by counting distinct realised
    combinatorial types.
  * We use 2520 assignment classes, not 840; see README (the automorphism group
    of the required pattern has order 16, not 48).
  * Everything is exact: lines have integer coefficients, intersection points are
    integer homogeneous triples, and every comparison is an integer sign test.
    No floating point is used anywhere.

------------------------------------------------------------------ THE PATTERN
Sides a,b (consecutive in P), a',b' (consecutive in P), A,B (consecutive in Q),
A',B' (consecutive in Q).
  DISJOINT: a-A, b-B, a'-A', b'-B'        (the four E_D edges = the matching)
  DISJOINT: a-a', a-b', b-a', b-b'        (non-adjacent sides of simple P)
  DISJOINT: A-A', A-B', B-A', B-B'        (non-adjacent sides of simple Q)
  CROSS   : the remaining 12 P-Q pairs    (four distinct components of G_D means
                                           sides in different components may not
                                           be disjoint)
  hooking(a,b) := I(A,B)  in Cone(a,b)      hooked(a,b) := I(a,b)  in Cone(A,B)
  hooking(a',b') := I(A',B') in Cone(a',b') hooked(a',b') := I(a',b') in Cone(A',B')

Lemma 7 asserts: never both-hooking, and never both-hooked.
"""
import sys, random, itertools, json, hashlib, time
from collections import Counter

SIDES = ["a", "b", "ap", "bp", "A", "B", "Ap", "Bp"]
SI = {s: i for i, s in enumerate(SIDES)}
VERTEX_PAIRS = [("a", "b"), ("ap", "bp"), ("A", "B"), ("Ap", "Bp")]
ED = [("a", "A"), ("b", "B"), ("ap", "Ap"), ("bp", "Bp")]

def build_pattern():
    want = {}
    P = ["a", "b", "ap", "bp"]; Q = ["A", "B", "Ap", "Bp"]
    for x in P:
        for y in Q:
            want[frozenset((x, y))] = ((x, y) not in ED)
    for x, y in [("a","ap"),("a","bp"),("b","ap"),("b","bp"),
                 ("A","Ap"),("A","Bp"),("B","Ap"),("B","Bp")]:
        want[frozenset((x, y))] = False
    return want

WANT = build_pattern()
REQUIRED = {s: [t for t in SIDES
                if t != s and frozenset((s, t)) in WANT and WANT[frozenset((s, t))]]
            for s in SIDES}
FORBIDDEN = {s: [t for t in SIDES
                 if t != s and frozenset((s, t)) in WANT and not WANT[frozenset((s, t))]]
             for s in SIDES}
PARTNER = {}                      # the consecutive partner (shares the apex)
for x, y in VERTEX_PAIRS:
    PARTNER[x] = y; PARTNER[y] = x

# ------------------------------------------------------------- automorphisms
def automorphisms():
    """The 16 relabelings of the eight sides preserving the whole pattern
    (both the disjoint/cross relation AND which pairs share a vertex)."""
    out = []
    for perm in itertools.permutations(SIDES):
        m = dict(zip(SIDES, perm))
        ok = all(frozenset((m[x], m[y])) in WANT and
                 WANT[frozenset((m[x], m[y]))] == v
                 for pr, v in WANT.items() for x, y in [tuple(pr)])
        if not ok:
            continue
        if set(frozenset((m[x], m[y])) for x, y in VERTEX_PAIRS) != \
           set(frozenset(p) for p in VERTEX_PAIRS):
            continue
        out.append(m)
    return out

AUT = automorphisms()

def assignment_classes():
    """One representative per orbit of the 8! side->line bijections under AUT."""
    seen = set(); reps = []
    for p in itertools.permutations(range(8)):
        # p[SI[s]] = line index of side s
        key = min(tuple(p[SI[m[s]]] for s in SIDES) for m in AUT)
        if key in seen:
            continue
        seen.add(key); reps.append(p)
    return reps

# ------------------------------------------------------- exact line geometry
def meet(L1, L2):
    """Homogeneous intersection point (x,y,w) of lines A x + B y + C = 0, w>0."""
    a1, b1, c1 = L1; a2, b2, c2 = L2
    x = b1*c2 - b2*c1
    y = c1*a2 - c2*a1
    w = a1*b2 - a2*b1
    if w == 0:
        return None
    if w < 0:
        x, y, w = -x, -y, -w
    return (x, y, w)

def orient(p, q, r):
    """sign of the 3x3 determinant of homogeneous points, all with w>0."""
    d = (p[0]*(q[1]*r[2] - q[2]*r[1])
         - p[1]*(q[0]*r[2] - q[2]*r[0])
         + p[2]*(q[0]*r[1] - q[1]*r[0]))
    return (d > 0) - (d < 0)

def param(p, d):
    """(numerator, denominator>0) of the parameter of point p along direction d."""
    return (p[0]*d[0] + p[1]*d[1], p[2])

def cmp_param(t1, t2):
    v = t1[0]*t2[1] - t2[0]*t1[1]            # both denominators > 0
    return (v > 0) - (v < 0)

# ------------------------------------------------------------------- the test
def analyse(lines, assign, X):
    """lines: 8 integer triples.  assign: tuple, assign[SI[s]] = line index.
       X[i][j]: precomputed meet(lines[i],lines[j]).  D[i]: direction of line i.
       Returns None if the pattern is not realisable for this assignment, else a
       dict with the realised combinatorial type and hooking statuses."""
    D = X["D"]; M = X["M"]
    ln = {s: assign[SI[s]] for s in SIDES}
    apex = {}
    for x, y in VERTEX_PAIRS:
        p = M[ln[x]][ln[y]]
        apex[x] = p; apex[y] = p
    # direction + minimal extent of every side
    dirn = {}; extent = {}; seq = {}
    for s in SIDES:
        li = ln[s]; d = D[li]; t0 = param(apex[s], d)
        ts = []
        for t in REQUIRED[s]:
            pt = M[li][ln[t]]
            c = cmp_param(param(pt, d), t0)
            if c == 0:
                return None                      # degenerate: crossing at apex
            ts.append((c, param(pt, d), t))
        signs = set(c for c, _, _ in ts)
        if len(signs) != 1:
            return None                          # required crossings straddle apex
        sg = signs.pop()
        dirn[s] = sg
        # farthest required crossing in that direction
        far = max(ts, key=lambda z: (z[1][0]*1, 0)) if False else None
        best = ts[0]
        for z in ts[1:]:
            if cmp_param(z[1], best[1]) * sg > 0:
                best = z
        extent[s] = best[1]
        seq[s] = sorted(ts, key=_keyfun(sg))
    # forbidden intersections must be avoided: the crossing point must lie
    # outside at least one of the two minimal ranges.
    for pr, v in WANT.items():
        if v:
            continue
        x, y = tuple(pr)
        pt = M[ln[x]][ln[y]]
        if _covered(pt, ln[x], apex[x], dirn[x], extent[x], D) and \
           _covered(pt, ln[y], apex[y], dirn[y], extent[y], D):
            return None
    # hooking / hooked
    def ray_point(s):
        """some point on the ray of s beyond its apex (the first required crossing)"""
        return M[ln[s]][ln[seq[s][0][2]]]
    def in_cone(x_pt, s, t):
        """x_pt in Cone(s,t), where s,t share an apex"""
        v = apex[s]; Ps = ray_point(s); Pt = ray_point(t)
        o1, o2 = orient(v, Ps, x_pt), orient(v, Ps, Pt)
        o3, o4 = orient(v, Pt, x_pt), orient(v, Pt, Ps)
        if 0 in (o1, o2, o3, o4):
            return None
        return o1 == o2 and o3 == o4
    st = {}
    st["hooking1"] = in_cone(apex["A"],  "a",  "b")     # I(A,B)  in Cone(a,b)
    st["hooked1"]  = in_cone(apex["a"],  "A",  "B")     # I(a,b)  in Cone(A,B)
    st["hooking2"] = in_cone(apex["Ap"], "ap", "bp")
    st["hooked2"]  = in_cone(apex["ap"], "Ap", "Bp")
    if any(v is None for v in st.values()):
        return None
    # ---- Observation 6 (Axis Property), checked for both associated pairs.
    # "If the pair p_i,p_{i+1} and the pair q_j,q_{j+-1} are associated such that
    #  (p_i,q_j),(p_{i+1},q_{j+-1}) in E_D, then the line through I(p_i,p_{i+1})
    #  and I(q_j,q_{j+-1}) separates p_i and q_{j+-1} on the one side from
    #  p_{i+1} and q_j on the other side."
    # Block 1: p_i=a, p_{i+1}=b, q_j=A, q_{j+-1}=B.  Axis = line(I(a,b), I(A,B)).
    # Every one of a,b,A,B has an endpoint ON the axis, so the side of the axis a
    # segment lies on is the sign of the orientation of any other of its points.
    def axis_ok(x, y, Xc, Yc):
        v = apex[x]; w = apex[Xc]
        if orient(v, w, ray_point(x)) == 0:
            return None
        s = {t: orient(v, w, ray_point(t)) for t in (x, y, Xc, Yc)}
        if 0 in s.values():
            return None
        return s[x] == s[Yc] and s[y] == s[Xc] and s[x] != s[y]
    ax = {"axis1": axis_ok("a", "b", "A", "B"),
          "axis2": axis_ok("ap", "bp", "Ap", "Bp")}
    trace = {s: tuple(z[2] for z in seq[s]) for s in SIDES}
    return {"status": st, "axis": ax, "trace": trace, "assign": assign}

def _keyfun(sg):
    import functools
    def cmpf(u, v):
        return cmp_param(u[1], v[1]) * sg
    return functools.cmp_to_key(cmpf)

def _covered(pt, li, ap, sg, ext, D):
    d = D[li]; t = param(pt, d)
    c0 = cmp_param(t, param(ap, d))
    if c0 == 0:
        return True
    if c0 != sg:
        return False                      # wrong side of the apex
    return cmp_param(t, ext) * sg <= 0    # at or before the minimal far end

# block 1 = {a,b,A,B}, block 2 = {a',b',A',B'}.  A block's local status is the
# ordered pair (hooking, hooked) of the P-pair of that block with respect to the
# Q-pair of that block.  An automorphism m sends block k to the block containing
# m("a") resp. m("ap"); if m maps the P-pair of block k onto a Q-pair, the local
# status is FLIPPED (hooking <-> hooked), because "hooking" and "hooked" are the
# two directions of the same cone relation.
_BLOCK = {"a": (1, "P"), "b": (1, "P"), "A": (1, "Q"), "B": (1, "Q"),
          "ap": (2, "P"), "bp": (2, "P"), "Ap": (2, "Q"), "Bp": (2, "Q")}

def canon_trace(res):
    """Canonical form of the realised combinatorial type under the 16
    automorphisms, together with the (canonically permuted) hooking statuses."""
    st0 = {1: (res["status"]["hooking1"], res["status"]["hooked1"]),
           2: (res["status"]["hooking2"], res["status"]["hooked2"])}
    ax0 = {1: res["axis"]["axis1"], 2: res["axis"]["axis2"]}
    best = None
    for m in AUT:
        tr = tuple(sorted((m[s], tuple(m[t] for t in res["trace"][s])) for s in SIDES))
        st = {}; ax = {}
        for k, src in ((1, "a"), (2, "ap")):
            tgt, side = _BLOCK[m[src]]
            st[tgt] = st0[k] if side == "P" else (st0[k][1], st0[k][0])
            ax[tgt] = ax0[k]
        key = (tr, (st[1], st[2]), (ax[1], ax[2]))
        if best is None or key < best:
            best = key
    return best

def status_word(pair):
    hooking, hooked = pair
    return ("both" if hooking and hooked else
            "hooking" if hooking else "hooked" if hooked else "neither")

# ----------------------------------------------------------------------- main
def random_line(rnd, M=40):
    while True:
        A = rnd.randint(-M, M); B = rnd.randint(-M, M); C = rnd.randint(-M, M)
        if A or B:
            return (A, B, C)

def prep(lines):
    n = 8
    M = [[None]*n for _ in range(n)]
    for i in range(n):
        for j in range(n):
            if i != j:
                p = meet(lines[i], lines[j])
                if p is None:
                    return None
                M[i][j] = p
    # simple arrangement: no three concurrent
    for i, j, k in itertools.combinations(range(n), 3):
        if M[i][j] == M[i][k]:
            return None
        if orient(M[i][j], M[i][k], M[j][k]) == 0:
            return None
    D = [(-L[1], L[0]) for L in lines]
    return {"M": M, "D": D}

def main():
    global OUT
    trials = int(sys.argv[1]) if len(sys.argv) > 1 else 300
    seed = int(sys.argv[2]) if len(sys.argv) > 2 else 20260913
    OUT = sys.argv[3] if len(sys.argv) > 3 else "arr8_results.json"
    rnd = random.Random(seed)
    reps = assignment_classes()
    print("automorphism group of the pattern : %d" % len(AUT))
    print("assignment classes (8!/|Aut|)     : %d" % len(reps))
    sys.stdout.flush()
    types = {}
    both = []
    axis_viol = []
    blockstat = Counter()
    axis_fail_conforming = []
    n_arr = 0; n_hit = 0
    t0 = time.time()
    while n_arr < trials:
        lines = [random_line(rnd) for _ in range(8)]
        X = prep(lines)
        if X is None:
            continue
        n_arr += 1
        for p in reps:
            r = analyse(lines, p, X)
            if r is None:
                continue
            n_hit += 1
            k = canon_trace(r)
            if k not in types:
                types[k] = {"count": 0, "example_lines": lines, "example": r}
            types[k]["count"] += 1
            s = r["status"]
            for bi, (hk, hd, axk) in enumerate(
                    [(s["hooking1"], s["hooked1"], r["axis"]["axis1"]),
                     (s["hooking2"], s["hooked2"], r["axis"]["axis2"])]):
                w = status_word((hk, hd))
                blockstat[(w, axk)] += 1
                if w != "neither" and axk is False:
                    axis_fail_conforming.append(
                        {"lines": lines, "assign": p, "block": bi + 1,
                         "block_status": w, "status": s, "axis": r["axis"],
                         "trace": r["trace"]})
            if r["axis"]["axis1"] is False or r["axis"]["axis2"] is False:
                axis_viol.append({"lines": lines, "assign": p, "status": s,
                                  "axis": r["axis"], "trace": r["trace"]})
            if (s["hooking1"] and s["hooking2"]) or (s["hooked1"] and s["hooked2"]):
                both.append({"lines": lines, "assign": p, "status": s,
                             "axis": r["axis"], "trace": r["trace"]})
        if n_arr % 50 == 0:
            print("  %5d arrangements, %7d realisations, %3d distinct types, "
                  "%d both-h, %d axis-violations   (%.0fs)"
                  % (n_arr, n_hit, len(types), len(both), len(axis_viol), time.time()-t0))
            sys.stdout.flush()
    print("\n--- summary ---")
    print("random 8-line arrangements sampled     : %d" % n_arr)
    print("assignment classes tried per arrangement: %d" % len(reps))
    print("realisations of the required pattern    : %d" % n_hit)
    print("distinct combinatorial types (up to the 16 automorphisms): %d" % len(types))
    print("BOTH-HOOKING or BOTH-HOOKED found       : %d" % len(both))
    print("AXIS PROPERTY (Observation 6) violations : %d realisations" % len(axis_viol))
    print("\nper-associated-pair table  (block status vs Axis Property):")
    for k in sorted(blockstat, key=lambda z: (z[0], str(z[1]))):
        print("   status %-8s  axis-holds=%-5s : %d" % (k[0], k[1], blockstat[k]))
    print("\nAXIS FAILURES ON A LEMMA-5-CONFORMING PAIR (hooking/hooked/both): %d"
          % len(axis_fail_conforming))
    tab = Counter()
    for k, v in types.items():
        tab[tuple(sorted(((status_word(k[1][0]), k[2][0]),
                          (status_word(k[1][1]), k[2][1]))))] += 1
    print("\nstatus profiles over the distinct combinatorial types:")
    for k, v in sorted(tab.items()):
        print("   block1 (status=%-8s axis=%-5s)  block2 (status=%-8s axis=%-5s) : %d types"
              % (k[0][0], k[0][1], k[1][0], k[1][1], v))
    out = {"n_arrangements": n_arr, "n_assignment_classes": len(reps),
           "n_realisations": n_hit, "n_distinct_types": len(types),
           "both_hooking_or_hooked": both[:20],
           "n_both": len(both),
           "n_axis_violations": len(axis_viol),
           "block_status_vs_axis": {str(k): v for k, v in sorted(blockstat.items(), key=lambda z: str(z[0]))},
           "n_axis_fail_on_conforming_pair": len(axis_fail_conforming),
           "axis_fail_conforming_examples": axis_fail_conforming[:10],
           "axis_violation_examples": axis_viol[:10],
           "status_profile_counts": {str(k): v for k, v in sorted(tab.items())},
           "types": [{"key": repr(k), "count": v["count"],
                      "status": [status_word(k[1][0]), status_word(k[1][1])],
                      "axis_ok": [k[2][0], k[2][1]],
                      "example_lines": v["example_lines"],
                      "example_assign": v["example"]["assign"],
                      "example_trace": {s: list(t) for s, t in v["example"]["trace"].items()}}
                     for k, v in sorted(types.items(), key=lambda z: -z[1]["count"])],
           "seed": seed}
    with open(OUT, "w") as f:
        json.dump(out, f, indent=1, default=str)
    print("\nwrote %s" % OUT)

if __name__ == "__main__":
    main()
