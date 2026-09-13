"""
Exact-arithmetic geometry utilities for the two-simple-polygons intersection problem.
All coordinates are integers; all predicates are exact.
"""
from itertools import combinations, permutations


def orient(a, b, c):
    """>0 if c is strictly left of directed line a->b, <0 right, 0 collinear."""
    v = (b[0] - a[0]) * (c[1] - a[1]) - (b[1] - a[1]) * (c[0] - a[0])
    return (v > 0) - (v < 0)


def general_position(pts):
    """No three points collinear."""
    for a, b, c in combinations(range(len(pts)), 3):
        if orient(pts[a], pts[b], pts[c]) == 0:
            return False
    return True


def seg_cross(p1, p2, q1, q2):
    """Proper crossing (interiors meet transversally). Assumes general position
    (no three of the four endpoints collinear, endpoints distinct)."""
    d1 = orient(p1, p2, q1)
    d2 = orient(p1, p2, q2)
    d3 = orient(q1, q2, p1)
    d4 = orient(q1, q2, p2)
    return d1 * d2 < 0 and d3 * d4 < 0


def line_cuts_seg(a, b, q1, q2):
    """Does the (full) line through a,b separate q1 from q2 strictly?
    i.e. does the line meet the open segment q1q2."""
    return orient(a, b, q1) * orient(a, b, q2) < 0


def poly_sides(poly):
    """List of index pairs of the sides of the cyclic polygon given as a list of points."""
    k = len(poly)
    return [(i, (i + 1) % k) for i in range(k)]


def is_simple(poly):
    """Is the closed polyline through poly (in order) a simple polygon?
    Requires general position of the vertices."""
    k = len(poly)
    S = poly_sides(poly)
    for i in range(k):
        for j in range(i + 1, k):
            a, b = S[i]
            c, d = S[j]
            if len({a, b, c, d}) < 4:
                # adjacent sides: they share exactly one endpoint; with general
                # position (no 3 collinear) they meet only at that endpoint.
                continue
            if seg_cross(poly[a], poly[b], poly[c], poly[d]):
                return False
    return True


def count_intersections(P, Q):
    """Number of transversal crossings between the boundaries of P and Q."""
    n = 0
    for (a, b) in poly_sides(P):
        for (c, d) in poly_sides(Q):
            if seg_cross(P[a], P[b], Q[c], Q[d]):
                n += 1
    return n


def disjointness_graph(P, Q):
    """Bipartite adjacency: E[i] = bitmask of sides of Q disjoint from side i of P."""
    SP = poly_sides(P)
    SQ = poly_sides(Q)
    E = []
    for (a, b) in SP:
        m = 0
        for j, (c, d) in enumerate(SQ):
            if not seg_cross(P[a], P[b], Q[c], Q[d]):
                m |= 1 << j
        E.append(m)
    return E


def halfplane_subsets(pts):
    """All subsets of indices obtainable as (point set) intersect (open halfplane).
    Returned as a set of frozensets.  Standard rotation/translation enumeration."""
    n = len(pts)
    out = {frozenset(), frozenset(range(n))}
    for i, j in permutations(range(n), 2):
        L = frozenset(k for k in range(n)
                      if k != i and k != j and orient(pts[i], pts[j], pts[k]) > 0)
        out.add(L)
        out.add(L | {i})
        out.add(L | {j})
        out.add(L | {i, j})
    return out


def crossing_sets(poly):
    """The family of subsets of SIDE-indices that can be crossed by a single line.
    A line crosses side (u,v) iff it separates u from v; the separation pattern of
    the vertex set by a line is exactly a halfplane subset."""
    k = len(poly)
    S = poly_sides(poly)
    fam = set()
    for A in halfplane_subsets(poly):
        m = 0
        for idx, (u, v) in enumerate(S):
            if (u in A) != (v in A):
                m |= 1 << idx
        fam.add(m)
    return fam


def popcount(x):
    return bin(x).count('1')
