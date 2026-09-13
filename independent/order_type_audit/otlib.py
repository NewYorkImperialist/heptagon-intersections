"""
Independent audit of the f(7,7) order-type / exceptional-profile classification.

SUBAGENT B, written 2026-09-13, from mathematical definitions only.
Python 3 standard library.  EXACT INTEGER ARITHMETIC everywhere in every
predicate (Fraction is used only to build explicit rational witness *lines*
for the coordinate-vs-chirotope cross-check; no float appears anywhere).

Files that had been read at the time this file was written:
    docs/proof-outline.md, docs/literature-notes.md, docs/known-issues.md,
    docs/verification-status.md, data/hashes/SHA256SUMS,
    the *_comment/count/triple_order[:5]* header fields and the JSON key
    schema (key names + types only, no values) of
    data/order_types/order_types_7.json and
    data/exceptional_profiles/exceptional_profiles_14.json,
    external: TU Graz order-type DB page + readme.txt.
Files deliberately NOT read: python/core/chiro.py, python/core/geom.py,
    python/classification/*, python/elimination/*, python/validation/*,
    independent/implementation_b/*, docs/computational-method.md,
    docs/audit-report.md, README.md, archive/*, transcripts/*, results/*.
"""

from fractions import Fraction
from itertools import combinations, permutations

N = 7

# --------------------------------------------------------------------------
# DEFINITION 1 (orientation).
#   For points a,b,c in Z^2, orient(a,b,c) = sign of the 2x2 determinant
#       | b.x-a.x  b.y-a.y |
#       | c.x-a.x  c.y-a.y |
#   = +1 if (a,b,c) is a counterclockwise turn, -1 if clockwise, 0 if
#   collinear.  Exact integer arithmetic.
# --------------------------------------------------------------------------


def det(a, b, c):
    return (b[0] - a[0]) * (c[1] - a[1]) - (b[1] - a[1]) * (c[0] - a[0])


def orient(a, b, c):
    d = det(a, b, c)
    return (d > 0) - (d < 0)


# --------------------------------------------------------------------------
# DEFINITION 2 (chirotope / order type).
#   For a labelled point set p_0..p_{n-1} in general position the chirotope is
#   the map chi : {(a,b,c) : a<b<c} -> {-1,+1},  chi(a,b,c) = orient(p_a,p_b,p_c).
#   It extends to all ordered triples by full antisymmetry.
#   The ORDER TYPE is the equivalence class of chi under relabelling
#   (chi ~ chi o sigma for sigma in S_n).  Two order types are a
#   "reorientation pair" / mirror pair when chi ~ -chi' ; the TU Graz database
#   identifies those as well (readme B2), so its 135 count for n=7 is
#   "up to relabelling AND reflection".
#   Internally a chirotope is a tuple of 35 values in {-1,+1}, indexed by the
#   lexicographically sorted triples (this is the same index convention the
#   project's JSON declares in its 'triple_order' field; a pure format choice).
# --------------------------------------------------------------------------

TRIPLES = [t for t in combinations(range(N), 3)]          # 35, lex order
TRIPLE_INDEX = {t: i for i, t in enumerate(TRIPLES)}
QUADS = [q for q in combinations(range(N), 4)]            # 35


def chirotope(pts):
    return tuple(orient(pts[a], pts[b], pts[c]) for (a, b, c) in TRIPLES)


def chi_of(chi, a, b, c):
    """chi extended antisymmetrically to arbitrary distinct a,b,c."""
    s = 1
    x, y, z = a, b, c
    if x > y:
        x, y, s = y, x, -s
    if y > z:
        y, z, s = z, y, -s
    if x > y:
        x, y, s = y, x, -s
    return s * chi[TRIPLE_INDEX[(x, y, z)]]


def general_position(pts):
    return all(det(pts[a], pts[b], pts[c]) != 0 for (a, b, c) in TRIPLES)


# --------------------------------------------------------------------------
# Relabelling / reflection group action on chirotopes.
#   (chi . sigma)(a,b,c) = chi(sigma(a), sigma(b), sigma(c))   (antisymmetric
#   extension used), and reflection of the plane acts as chi -> -chi.
# --------------------------------------------------------------------------


def relabel(chi, sigma):
    return tuple(chi_of(chi, sigma[a], sigma[b], sigma[c]) for (a, b, c) in TRIPLES)


def negate(chi):
    return tuple(-v for v in chi)


ALL_PERMS = list(permutations(range(N)))                  # 5040


def _precompute_perm_tables(perms):
    """For each sigma: a list over the 35 lex triples of (target_index, sign)."""
    tables = []
    for sigma in perms:
        row = []
        for (a, b, c) in TRIPLES:
            x, y, z, s = sigma[a], sigma[b], sigma[c], 1
            if x > y:
                x, y, s = y, x, -s
            if y > z:
                y, z, s = z, y, -s
            if x > y:
                x, y, s = y, x, -s
            row.append((TRIPLE_INDEX[(x, y, z)], s))
        tables.append(row)
    return tables


_PERM_TABLES = None


def canonical_chirotope(chi, with_reflection=True, perms=None):
    """Canonical representative = lexicographic minimum over the orbit."""
    global _PERM_TABLES
    if perms is None:
        perms = ALL_PERMS
        if _PERM_TABLES is None:
            _PERM_TABLES = _precompute_perm_tables(ALL_PERMS)
        tables = _PERM_TABLES
    else:
        tables = _precompute_perm_tables(perms)
    signs = (1, -1) if with_reflection else (1,)
    best = None
    for row in tables:
        base = [chi[i] * s for (i, s) in row]
        for sg in signs:
            cand = tuple(v * sg for v in base) if sg == -1 else tuple(base)
            if best is None or cand < best:
                best = cand
    return best


# --------------------------------------------------------------------------
# DEFINITION 3 (circuits / Radon partitions).
#   Four points in general position have a unique (up to scale) affine
#   dependence sum_i lambda_i p_i = 0, sum_i lambda_i = 0.  By Cramer,
#     (lambda_a, lambda_b, lambda_c, lambda_d)
#         ~ ( det(b,c,d), -det(a,c,d), det(a,b,d), -det(a,b,c) ).
#   Its SIGN vector, the circuit C_{abcd} in {-1,+1}^4, is therefore a
#   chirotope-only quantity:
#       C = ( chi(b,c,d), -chi(a,c,d), chi(a,b,d), -chi(a,b,c) ).
#   (Defined up to global sign, which is all we ever use.)
# --------------------------------------------------------------------------


def circuits(chi):
    out = []
    for (a, b, c, d) in QUADS:
        C = (chi_of(chi, b, c, d), -chi_of(chi, a, c, d),
             chi_of(chi, a, b, d), -chi_of(chi, a, b, c))
        out.append(((a, b, c, d), C))
    return out


# --------------------------------------------------------------------------
# DEFINITION 4 (topes = line bipartitions = "lines disjoint from the points").
#   X in {-1,+1}^n is a TOPE iff there is an affine line L with no point on it
#   such that X_i = +1 for points strictly on one side and -1 on the other.
#
#   DERIVATION of the exact test (Gordan's theorem, done here from scratch):
#   lift p_i to phat_i = (x_i, y_i, 1) in R^3.  X is realised iff there is
#   c in R^3 with <c, X_i * phat_i> > 0 for every i.  By Gordan's theorem this
#   fails iff there are mu_i >= 0, not all zero, with sum_i mu_i X_i phat_i = 0.
#   Writing nu_i = mu_i X_i, that is a nonzero affine dependence whose sign
#   vector is CONFORMAL to X (sign(nu_i) in {0, X_i}).  Taking one of minimal
#   support gives a circuit; for n points in general position in the plane the
#   minimal affine dependences have support exactly 4.  Hence
#
#       X is a tope  <=>  for every 4-subset Q, X|_Q is neither C_Q nor -C_Q.
#
#   This is a purely chirotope-level test.  It is cross-checked below against
#   explicitly constructed rational witness lines.
#
#   Sanity invariant: a uniform rank-3 oriented matroid on 7 elements has
#   exactly 2*(1 + C(7,2)) = 44 topes (cells of an arrangement of 7 great
#   circles in general position on S^2: 42 - 84 + F = 2 => F = 44).
# --------------------------------------------------------------------------


def topes_from_chirotope(chi):
    circs = circuits(chi)
    res = []
    for mask in range(1 << N):
        X = tuple(1 if (mask >> i) & 1 else -1 for i in range(N))
        ok = True
        for (Q, C) in circs:
            r = (X[Q[0]], X[Q[1]], X[Q[2]], X[Q[3]])
            if r == C or r == tuple(-v for v in C):
                ok = False
                break
        if ok:
            res.append(X)
    return res


# --------------------------------------------------------------------------
# Coordinate-side construction of the same object, for cross-checking.
#   Around each "dual vertex" (= line through p_i,p_j) there are exactly four
#   tope cells; we realise all four by explicit rational lines:
#     - translate the line through p_i,p_j by +-eps along its normal;
#     - rotate it by +-eps about the midpoint of p_i p_j.
#   Every cell of an arrangement of >=2 great circles in general position has a
#   vertex on its boundary, so the 4*C(n,2) lines hit every tope.
#   eps = 1/10^7 is small enough: all nonzero orientation determinants are
#   integers (|.| >= 1) and the perturbation terms are bounded by 255^2*8.
# --------------------------------------------------------------------------

EPS = Fraction(1, 10 ** 7)


def _signs_of_line(pts, A, D):
    """Signs of the 7 points w.r.t. the line through rational point A with
    rational direction D; sign_k = sign of cross(D, p_k - A)."""
    out = []
    for p in pts:
        v = (Fraction(p[0]) - A[0], Fraction(p[1]) - A[1])
        cr = D[0] * v[1] - D[1] * v[0]
        out.append((cr > 0) - (cr < 0))
    return tuple(out)


def topes_by_explicit_lines(pts):
    found = set()
    for i, j in combinations(range(N), 2):
        pi = (Fraction(pts[i][0]), Fraction(pts[i][1]))
        pj = (Fraction(pts[j][0]), Fraction(pts[j][1]))
        d = (pj[0] - pi[0], pj[1] - pi[1])
        nrm = (-d[1], d[0])
        m = ((pi[0] + pj[0]) / 2, (pi[1] + pj[1]) / 2)
        for e in (EPS, -EPS):
            # translated line
            A = (pi[0] + e * nrm[0], pi[1] + e * nrm[1])
            s = _signs_of_line(pts, A, d)
            if 0 not in s:
                # a line has two orientations; both sign vectors are realised
                found.add(s)
                found.add(tuple(-v for v in s))
            # rotated line about the midpoint
            D = (d[0] + e * nrm[0], d[1] + e * nrm[1])
            s = _signs_of_line(pts, m, D)
            if 0 not in s:
                found.add(s)
                found.add(tuple(-v for v in s))
    return found


def covectors_by_explicit_lines(pts):
    """ALL sign vectors realisable by a genuine affine line, INCLUDING lines
    through one or two of the points (zero entries).  Used only for the
    'closed segment / line may touch a vertex' reading of the exceptional
    condition."""
    found = set(topes_by_explicit_lines(pts))
    for i, j in combinations(range(N), 2):
        pi = (Fraction(pts[i][0]), Fraction(pts[i][1]))
        pj = (Fraction(pts[j][0]), Fraction(pts[j][1]))
        d = (pj[0] - pi[0], pj[1] - pi[1])
        nrm = (-d[1], d[0])
        # line exactly through p_i and p_j : zero set {i,j}
        s = _signs_of_line(pts, pi, d)
        found.add(s)
        found.add(tuple(-v for v in s))
        # lines through p_i only, and through p_j only : zero set of size 1
        for base in (pi, pj):
            for e in (EPS, -EPS):
                D = (d[0] + e * nrm[0], d[1] + e * nrm[1])
                s = _signs_of_line(pts, base, D)
                found.add(s)
                found.add(tuple(-v for v in s))
    return found


def covectors_from_chirotope(chi):
    """X in {-1,0,1}^n, X != 0, orthogonal to every circuit.
    Orthogonality of X and C: either supp(X) cap supp(C) = empty, or there are
    e,f in the common support with X_e*C_e = +1 and X_f*C_f = -1."""
    circs = circuits(chi)
    res = []
    for code in range(3 ** N):
        c, X = code, []
        for _ in range(N):
            X.append(c % 3 - 1)
            c //= 3
        X = tuple(X)
        if all(v == 0 for v in X):
            continue
        ok = True
        for (Q, C) in circs:
            prods = [X[Q[t]] * C[t] for t in range(4) if X[Q[t]] != 0]
            if not prods:
                continue
            if not (any(p > 0 for p in prods) and any(p < 0 for p in prods)):
                ok = False
                break
        if ok:
            res.append(X)
    return res


# --------------------------------------------------------------------------
# DEFINITION 5 (proper segment crossing).
#   Segments [p_a,p_b] and [p_c,p_d] with a,b,c,d distinct and the 7 points in
#   general position CROSS PROPERLY iff each segment's supporting line strictly
#   separates the other segment's endpoints:
#       chi(a,b,c) != chi(a,b,d)  and  chi(c,d,a) != chi(c,d,b).
#   (In general position no other kind of intersection can occur.)
# --------------------------------------------------------------------------


def cross(chi, a, b, c, d):
    return (chi_of(chi, a, b, c) != chi_of(chi, a, b, d)
            and chi_of(chi, c, d, a) != chi_of(chi, c, d, b))


# --------------------------------------------------------------------------
# DEFINITION 6 (polygon, sides, simplicity).
#   A cyclic order v = (v_0,...,v_6) of the 7 labels defines the closed polygon
#   with SIDE j = [p_{v_j}, p_{v_{j+1 mod 7}}], j = 0..6.  Sides j and k are
#   ADJACENT iff (j-k) = +-1 mod 7 (they share a vertex).
#   The polygon is SIMPLE iff no two NON-ADJACENT sides cross properly.
#   Adjacent sides meet only at their shared vertex, since no 3 points are
#   collinear.
#   Two cyclic orders describe the same polygon iff they differ by a rotation
#   or by a reversal, so there are 6!/2 = 360 polygons per labelled point set.
# --------------------------------------------------------------------------


def sides_of(cyc):
    return [(cyc[j], cyc[(j + 1) % N]) for j in range(N)]


NONADJ_SIDE_PAIRS = [(j, k) for j in range(N) for k in range(j + 1, N)
                     if (k - j) % N not in (1, N - 1)]           # 14 pairs


def is_simple(chi, cyc):
    S = sides_of(cyc)
    for (j, k) in NONADJ_SIDE_PAIRS:
        a, b = S[j]
        c, d = S[k]
        if cross(chi, a, b, c, d):
            return False
    return True


def all_cyclic_orders():
    """All cyclic sequences of 0..6 up to rotation and reversal: 360."""
    seen, out = set(), []
    for rest in permutations(range(1, N)):
        cyc = (0,) + rest
        rev = (0,) + tuple(reversed(rest))
        key = min(cyc, rev)
        if key in seen:
            continue
        seen.add(key)
        out.append(cyc)
    return out


# --------------------------------------------------------------------------
# DEFINITION 7 (the supporting-line / segment relation used by Lemma A).
#   Let X be the sign vector of a line L with respect to the 7 vertices.
#
#   (a) STRICT reading -- L disjoint from V(P), i.e. X a TOPE:
#           L meets side j = [v_j, v_{j+1}]   <=>   X_{v_j} != X_{v_{j+1}}.
#       Here "meets the closed segment", "meets the open segment" and "strictly
#       separates the endpoints" all coincide, because L contains no vertex.
#
#   (b) CLOSED reading -- L arbitrary, X any covector:
#           L meets the CLOSED side j  <=>  X_{v_j} * X_{v_{j+1}} <= 0
#       (a line through a vertex meets both sides incident to that vertex).
#
#   CROSSING SET of a line: the set of sides it meets.
#   A set S of sides is CROSSABLE (reading a) iff some tope's crossing set
#   contains S; UNCROSSABLE otherwise, i.e. iff every line disjoint from V(P)
#   fails to meet at least one member of S -- exactly Lemma A's hypothesis.
# --------------------------------------------------------------------------


def crossing_sets_strict(chi_topes, cyc):
    """The distinct crossing sets (as frozensets of side indices) achieved by
    lines disjoint from V(P)."""
    S = sides_of(cyc)
    out = set()
    for X in chi_topes:
        out.add(frozenset(j for j in range(N) if X[S[j][0]] != X[S[j][1]]))
    return out


def crossing_sets_closed(covs, cyc):
    S = sides_of(cyc)
    out = set()
    for X in covs:
        out.add(frozenset(j for j in range(N)
                          if X[S[j][0]] * X[S[j][1]] <= 0))
    return out


def down_closed_contains(csets, S):
    return any(S <= c for c in csets)


def maximal_sets(csets):
    return sorted(
        (tuple(sorted(c)) for c in csets
         if not any(c < d for d in csets)),
        key=lambda t: (len(t), t))


# --------------------------------------------------------------------------
# DEFINITION 8 (Lemma A exceptional predicate, four sides).
#   P is EXCEPTIONAL iff NO 4-subset S of sides(P) satisfies
#       "every line disjoint from V(P) fails to meet at least one member of S"
#   i.e. iff EVERY 4-subset of sides is crossable by some line disjoint from
#   V(P).   [This is the (a) reading, the one Lemma A actually needs, since in
#   general position the supporting line of every side of Q avoids V(P).]
#
#   The LOOSER reading substitutes "no line whatsoever meets all four closed
#   sides".  That is a strictly stronger uncrossability requirement, hence
#   yields a SUPERSET of exceptional polygons.  Both are computed and compared.
# --------------------------------------------------------------------------


def is_exceptional(csets, maxsets=None):
    """True iff every 4-subset of the 7 sides is contained in some crossing set."""
    if maxsets is None:
        maxsets = [frozenset(m) for m in maximal_sets(csets)]
    else:
        maxsets = [frozenset(m) for m in maxsets]
    for S in combinations(range(N), 4):
        fs = frozenset(S)
        if not any(fs <= m for m in maxsets):
            return False
    return True


def uncrossable_subsets(csets, k):
    maxs = [frozenset(m) for m in maximal_sets(csets)]
    return [S for S in combinations(range(N), k)
            if not any(frozenset(S) <= m for m in maxs)]


# --------------------------------------------------------------------------
# DEFINITION 9 (M_set).
#   M = { j : the 6-set of all sides except j is crossable }, i.e. the sides
#   that some line misses while meeting all six others.  By Cerny Lemma 1 a
#   line meets a simple 7-gon an even number of times, so 6 is the maximum and
#   the maximal crossing sets of an exceptional polygon are expected to be
#   exactly the complements of M.
# --------------------------------------------------------------------------


def m_set(csets):
    maxs = [frozenset(m) for m in maximal_sets(csets)]
    return [j for j in range(N)
            if any(frozenset(set(range(N)) - {j}) <= m for m in maxs)]


# --------------------------------------------------------------------------
# DEFINITION 10 (AKR avoiding pair).
#   Two NON-ADJACENT sides [a,b] and [c,d] are AVOIDING when neither segment
#   contains the intersection point z of the two supporting lines.
#
#   DERIVATION of the sign test (done here from that definition):
#   z lies on line(c,d), so z in the segment [a,b] iff line(c,d) meets [a,b],
#   which -- since a,b are not on line(c,d) by general position -- happens iff
#   line(c,d) strictly separates a and b, i.e. chi(c,d,a) != chi(c,d,b).
#   Symmetrically z in [c,d] iff chi(a,b,c) != chi(a,b,d).  Hence
#
#       avoiding  <=>  chi(c,d,a) == chi(c,d,b)  AND  chi(a,b,c) == chi(a,b,d).
#
#   If the two lines are parallel there is no z at all; both equalities then
#   hold automatically, which is the correct answer.  Note "avoiding" is
#   strictly stronger than "non-crossing": non-crossing is the OR of the two
#   equalities, avoiding is the AND.
# --------------------------------------------------------------------------


def is_avoiding(chi, a, b, c, d):
    return (chi_of(chi, c, d, a) == chi_of(chi, c, d, b)
            and chi_of(chi, a, b, c) == chi_of(chi, a, b, d))


def avoiding_pairs(chi, cyc):
    S = sides_of(cyc)
    out = []
    for (j, k) in NONADJ_SIDE_PAIRS:
        a, b = S[j]
        c, d = S[k]
        if is_avoiding(chi, a, b, c, d):
            out.append((j, k))
    return sorted(out)


# --------------------------------------------------------------------------
# DEFINITION 11 (Cerny Lemma 2 windows).
#   Cerny et al. Lemma 2 applies to a path A,B,C,D,E of five consecutive
#   VERTICES -- i.e. the four consecutive sides AB, BC, CD, DE -- under the
#   geometric hypothesis that D lies inside triangle ABC.
#   WINDOW w (w = 0..6) is the one starting at vertex v_w:
#       A = v_w, B = v_{w+1}, C = v_{w+2}, D = v_{w+3}, E = v_{w+4},
#       sides w, w+1, w+2, w+3.
#   The hypothesis is chirotope-decidable:
#       D strictly inside triangle ABC
#           <=> chi(A,B,D) == chi(B,C,D) == chi(C,A,D).
#
#   *** DIRECTION.  A "path of four consecutive sides" is an unoriented
#   sub-path of the boundary: the same four sides are equally the path
#   E,D,C,B,A.  Instantiating the lemma on the reversed traversal gives the
#   hypothesis "B inside triangle EDC", and the lemma's conclusion (the
#   disjointness graph on THOSE FOUR SIDES is not a perfect matching) is
#   invariant under reversing the labelling of the four sides.  So the lemma
#   is available at window w as soon as EITHER traversal satisfies its
#   hypothesis, and the correct predicate is the union.
#   (The forward-only version is kept for auditing; using it alone would make
#   the Cerny-L2 filter weaker, not unsound.)
# --------------------------------------------------------------------------


def point_in_triangle(chi, A, B, C, D):
    s1 = chi_of(chi, A, B, D)
    s2 = chi_of(chi, B, C, D)
    s3 = chi_of(chi, C, A, D)
    return s1 == s2 == s3


def lemma2_window_forward(chi, cyc, w):
    """Traversal A,B,C,D,E : hypothesis 'D inside triangle ABC'."""
    A, B, C, D = (cyc[w % N], cyc[(w + 1) % N],
                  cyc[(w + 2) % N], cyc[(w + 3) % N])
    return point_in_triangle(chi, A, B, C, D)


def lemma2_window_reverse(chi, cyc, w):
    """Traversal E,D,C,B,A : hypothesis 'B inside triangle EDC'."""
    B, C, D, E = (cyc[(w + 1) % N], cyc[(w + 2) % N],
                  cyc[(w + 3) % N], cyc[(w + 4) % N])
    return point_in_triangle(chi, E, D, C, B)


def lemma2_windows(chi, cyc):
    """Direction-symmetric predicate (see the derivation above)."""
    return [w for w in range(N)
            if lemma2_window_forward(chi, cyc, w)
            or lemma2_window_reverse(chi, cyc, w)]


def lemma2_windows_forward_only(chi, cyc):
    return [w for w in range(N) if lemma2_window_forward(chi, cyc, w)]


# --------------------------------------------------------------------------
# DEFINITION 11b (reflex vertices).
#   Vertex v_j is REFLEX iff the turn chi(v_{j-1}, v_j, v_{j+1}) has the sign
#   opposite to the polygon's orientation.  The orientation is chirotope-
#   decidable: a vertex of a simple polygon that is EXTREME in the underlying
#   point set (on the convex hull) is necessarily a convex vertex, so the turn
#   sign there equals the polygon's orientation.  Extremeness is chirotope-
#   decidable: e is extreme iff there is f != e with chi(e,f,g) equal for all
#   g not in {e,f}.
# --------------------------------------------------------------------------


def turn_signs(chi, cyc):
    return [chi_of(chi, cyc[(j - 1) % N], cyc[j], cyc[(j + 1) % N])
            for j in range(N)]


def is_extreme(chi, e):
    for f in range(N):
        if f == e:
            continue
        s = {chi_of(chi, e, f, g) for g in range(N) if g not in (e, f)}
        if len(s) == 1:
            return True
    return False


def polygon_orientation(chi, cyc):
    for j in range(N):
        if is_extreme(chi, cyc[j]):
            return chi_of(chi, cyc[(j - 1) % N], cyc[j], cyc[(j + 1) % N])
    raise AssertionError("no extreme vertex")


def reflex_count(chi, cyc):
    o = polygon_orientation(chi, cyc)
    return sum(1 for s in turn_signs(chi, cyc) if s != o)


def reflex_count_coords(pts, cyc):
    """Independent coordinate computation: sign of twice the signed area."""
    a = 0
    for j in range(N):
        p, q = pts[cyc[j]], pts[cyc[(j + 1) % N]]
        a += p[0] * q[1] - q[0] * p[1]
    o = 1 if a > 0 else -1
    n = 0
    for j in range(N):
        t = orient(pts[cyc[(j - 1) % N]], pts[cyc[j]], pts[cyc[(j + 1) % N]])
        if t != o:
            n += 1
    return n


# --------------------------------------------------------------------------
# DEFINITION 12 (canonicalisation of an exceptional class).
#   An exceptional object is a pair (point set order type, cyclic vertex
#   order).  Relabel the points so that the polygon is 0,1,2,3,4,5,6 in order;
#   the object is then carried entirely by the relabelled chirotope chi'.
#   Two such normalised objects describe the same polygon-with-order-type iff
#   they differ by a relabelling that preserves the cyclic order 0..6 --
#   that is, by an element of the DIHEDRAL group D_7 of order 14
#       rotations  k -> k+t          (7)
#       reflections k -> t-k         (7)
#   possibly composed with a reflection of the PLANE, which acts as chi -> -chi
#   and fixes every profile quantity (crossing sets, M, avoiding pairs, windows
#   are all reflection-invariant).  So the full group is D_7 x {+-1}, order 28.
#   CANONICAL REPRESENTATIVE = lexicographic minimum of the 28 images.
#   SOUNDNESS: canonical() is by construction constant on orbits and equal
#   canonical values imply the same orbit (the minimum determines the orbit it
#   was taken over), so two inequivalent objects can never merge.
# --------------------------------------------------------------------------


def dihedral_perms():
    out = []
    for t in range(N):
        out.append(tuple((k + t) % N for k in range(N)))       # rotation
    for t in range(N):
        out.append(tuple((t - k) % N for k in range(N)))       # reflection
    return out


DIHEDRAL = dihedral_perms()


def normalise_to_identity_cycle(chi, cyc):
    """Relabel so the polygon becomes 0,1,...,6."""
    sigma = tuple(cyc)          # new label j  <->  old label cyc[j]
    return relabel(chi, sigma)


def canonical_class_key(chi_norm, with_reflection=True):
    signs = (1, -1) if with_reflection else (1,)
    best = None
    for g in DIHEDRAL:
        r = relabel(chi_norm, g)
        for sg in signs:
            cand = tuple(v * sg for v in r)
            if best is None or cand < best:
                best = cand
    return best
