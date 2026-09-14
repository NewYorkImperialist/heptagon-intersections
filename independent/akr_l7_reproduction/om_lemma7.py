#!/usr/bin/env python3
"""
Independent finite verification of the LOCAL configuration underlying AKR Lemma 7,
by oriented-matroid (rank-3 chirotope) satisfiability.

This is SUBAGENT B's independent experiment.  It deliberately does NOT reuse
anything from this project's own A7 implementation, and it does NOT reproduce
AKR's own method (enumeration of arrangements of 8 lines + segment extents).
It attacks the same finite question by a different, exact route.

---------------------------------------------------------------------------
WHAT IS ENCODED
---------------------------------------------------------------------------
AKR Lemma 7 concerns eight polygon sides:

    a  = p_i,      b  = p_{i+1}          (consecutive sides of P, share vertex v1)
    a' = p_j,      b' = p_{j+1}          (consecutive sides of P, share vertex v2)
    A  = q_{i'},   B  = q_{i'+-1}        (consecutive sides of Q, share vertex v3)
    A' = q_{j'},   B' = q_{j'+-1}        (consecutive sides of Q, share vertex v4)

with  (a,A), (b,B), (a',A'), (b',B')  in E_D (= DISJOINT pairs), i.e. A,B is an
associated pair of a,b and A',B' is an associated pair of a',b', and with
CC(a), CC(b), CC(a'), CC(b') four distinct components of the (bipartite)
disjointness graph G_D.

Each side is a segment with two endpoints.  Consecutive sides share an endpoint.
So the configuration is 12 points:

    v1, a2, b2   : a = [v1,a2],  b = [v1,b2]
    v2, ap2, bp2 : a'= [v2,ap2], b'= [v2,bp2]
    v3, A2, B2   : A = [v3,A2],  B = [v3,B2]
    v4, Ap2, Bp2 : A'= [v4,Ap2], B'= [v4,Bp2]

All 12 are polygon vertices, so AKR's general-position assumption (their Sect. 9.1)
licenses assuming no three of them are collinear.  Under general position every
predicate we need is a Boolean function of the ORDER TYPE (chirotope) of the 12
points, so we can search for a realisation at the oriented-matroid level.

EVERY ENCODED PREDICATE, explicitly:

 (P1) chi(i,j,k) in {+,-}  for every triple: general position / uniform rank-3
      chirotope.  Variable X[i<j<k] is TRUE iff chi(i,j,k) = + (counterclockwise).
      chi of a permuted triple = X xor (sign of the permutation).

 (P2) 3-term Grassmann-Plucker relations (the rank-3 chirotope axiom).
      For every 5 distinct points a,b,c,d,e the three quantities
          T1 = chi(abc)*chi(ade)
          T2 = -chi(abd)*chi(ace)
          T3 = chi(abe)*chi(acd)
      must NOT all be equal.  (For real coordinates this is forced by the
      identity  det(abc)det(ade) - det(abd)det(ace) + det(abe)det(acd) = 0.)
      Enumerated over all 5-subsets and all 5 choices of the distinguished
      element a -> 5*C(12,5) = 3960 axioms.

 (P3) CROSS(s,t) for two segments s=[p,q], t=[r,w] with 4 distinct endpoints:
          chi(p,q,r) != chi(p,q,w)  AND  chi(r,w,p) != chi(r,w,q).
      Under general position, two segments with 4 distinct endpoints intersect
      iff they properly cross, so CROSS = "they intersect" and NOT CROSS =
      "they are disjoint".

 (P4) The required intersection pattern (this is exactly AKR Sect. 10.2's
      "required intersection pattern of a perfect matching among the eight
      involved sides"):
        DISJOINT  a-A, b-B, a'-A', b'-B'      (the four E_D edges)
        DISJOINT  a-a', a-b', b-a', b-b'      (non-adjacent sides of simple P)
        DISJOINT  A-A', A-B', B-A', B-B'      (non-adjacent sides of simple Q)
        CROSS     the other 12 P-Q pairs      (forced: their components differ,
                                               so they may not be disjoint)
      AKR's own examples match: "required intersections ... for example between
      p_i and q_{j'}" (= a and A', CROSS) and "forbidden intersections (for
      example between p_i and q_{i'}, or between p_i and p_j)" (= a-A and a-a',
      DISJOINT).

 (P5) CONE.  For consecutive sides s=[v,s2], t=[v,t2] sharing apex v,
      AKR's Cone(s,t) is the convex cone at v spanned by the two rays from v
      through s and through t.  Membership of a point x:
          IN_CONE(x; v,s2,t2)  :=  chi(v,s2,x) == chi(v,s2,t2)
                              AND  chi(v,t2,x) == chi(v,t2,s2).
      (Intersection of the two closed half-planes; strict under general position.)

 (P6) hooking / hooked (AKR Sect. 4):
        "a,b is hooking (and A,B hooked)"  :=  I(A,B) in Cone(a,b)
                                           :=  IN_CONE(v3; v1,a2,b2)
        "a,b is hooked  (and A,B hooking)" :=  I(a,b) in Cone(A,B)
                                           :=  IN_CONE(v1; v3,A2,B2)

Lemma 7 says: it is impossible that both P-pairs are hooking, and impossible
that both are hooked.  We ask z3 for a chirotope satisfying (P1)-(P4) plus
BOTH-HOOKING, and separately plus BOTH-HOOKED.  UNSAT is a proof that no
general-position point configuration realises it -- a strictly combinatorial
(oriented-matroid) non-existence result, which implies the geometric one.

---------------------------------------------------------------------------
VARIANTS
---------------------------------------------------------------------------
"generic"  : i,j and i',j' chosen so that no two of the eight sides are adjacent
             across the two pairs.  12 distinct points.  This is the case AKR's
             Sect. 10.2 enumeration covers (they forbid p_i - p_j intersections).

"P-adj"    : j = i+2, i.e. b = p_{i+1} and a' = p_{i+2} are ADJACENT sides of P.
             They then share a vertex, so b2 == ap2 (11 distinct points) and
             b intersects a'.  This case satisfies Lemma 7's hypothesis (the
             four sides can still lie in four distinct components) and IS used
             by this project (its graph H joins pairs at cyclic distance 2), but
             AKR's Sect. 10.2 filter, as described, rejects it because it treats
             b-a' as a forbidden intersection.

"Q-adj"    : B and A' are adjacent sides of Q, so they share a vertex:
             A's far endpoint Ap2 equals B's far endpoint B2 (11 distinct points).

"PQ-adj"   : both of the above (10 distinct points).
"""

import itertools, sys, json, hashlib, time
from z3 import Bool, Solver, Not, And, Or, sat, unsat, set_param

# ---------------------------------------------------------------- chirotope

class Chi:
    def __init__(self, pts):
        self.pts = list(pts)                       # list of point names
        self.idx = {p: i for i, p in enumerate(self.pts)}
        self.n = len(self.pts)
        self.X = {}
        for t in itertools.combinations(range(self.n), 3):
            self.X[t] = Bool("x_%d_%d_%d" % t)

    def chi(self, p, q, r):
        """Boolean expression: chi(p,q,r) == '+' (counterclockwise)."""
        i, j, k = self.idx[p], self.idx[q], self.idx[r]
        assert len({i, j, k}) == 3, (p, q, r)
        # bubble sort, tracking parity
        perm = [i, j, k]
        sign = 1
        for a in range(2):
            for b in range(2 - a):
                if perm[b] > perm[b + 1]:
                    perm[b], perm[b + 1] = perm[b + 1], perm[b]
                    sign = -sign
        v = self.X[tuple(perm)]
        return v if sign == 1 else Not(v)

    def gp_axioms(self):
        out = []
        for five in itertools.combinations(range(self.n), 5):
            for a in five:
                rest = [x for x in five if x != a]
                b, c, d, e = rest                       # rest is sorted
                A, B_, C, D, E = (self.pts[a], self.pts[b], self.pts[c],
                                  self.pts[d], self.pts[e])
                t1 = (self.chi(A, B_, C) == self.chi(A, D, E))
                t2 = (self.chi(A, B_, D) != self.chi(A, C, E))
                t3 = (self.chi(A, B_, E) == self.chi(A, C, D))
                out.append(Not(And(t1 == t2, t2 == t3)))
        return out

    def acyclicity(self):
        """(P7) ACYCLICITY.  Only ACYCLIC oriented matroids correspond to
        configurations of points in the AFFINE plane, which is what "segment",
        "crossing" and "cone" presuppose.  For a uniform rank-3 chirotope the
        circuit supported on a 4-subset {i,j,k,l} has sign vector
            ( chi(jkl), -chi(ikl), chi(ijl), -chi(ijk) ),
        and the oriented matroid is acyclic iff no such circuit is all-positive
        or all-negative.  (For four real points the Radon partition is either
        1-vs-3 or 2-vs-2, never 0-vs-4, which is exactly this condition.)
        Equivalently: of the three ways of splitting four points into two
        segments, not all three are crossings."""
        out = []
        for i, j, k, l in itertools.combinations(range(self.n), 4):
            A, B_, C, D = (self.pts[i], self.pts[j], self.pts[k], self.pts[l])
            e = [self.chi(B_, C, D), Not(self.chi(A, C, D)),
                 self.chi(A, B_, D), Not(self.chi(A, B_, C))]
            out.append(Not(And(e[0] == e[1], e[1] == e[2], e[2] == e[3])))
        return out

    # ---- geometric predicates -------------------------------------------
    def cross(self, s, t):
        """Segments s=(p,q), t=(r,w) properly cross.  Requires 4 distinct pts."""
        p, q = s; r, w = t
        assert len({p, q, r, w}) == 4, (s, t)
        return And(self.chi(p, q, r) != self.chi(p, q, w),
                   self.chi(r, w, p) != self.chi(r, w, q))

    def in_cone(self, x, v, s2, t2):
        """x lies in the convex cone at apex v spanned by rays v->s2 and v->t2."""
        return And(self.chi(v, s2, x) == self.chi(v, s2, t2),
                   self.chi(v, t2, x) == self.chi(v, t2, s2))


# ---------------------------------------------------------------- the model

def build(variant):
    """Return (Chi, segments dict, point-identification map, constraint list)."""
    # canonical point names; identifications collapse some of them
    ident = {}
    if variant in ("P-adj", "PQ-adj"):
        ident["ap2"] = "b2"        # b = p_{i+1} and a' = p_{i+2} share a vertex
    if variant in ("Q-adj", "PQ-adj"):
        ident["Ap2"] = "B2"         # B and A' share a vertex of Q

    def nm(p):
        return ident.get(p, p)

    base = ["v1", "a2", "b2", "v2", "ap2", "bp2",
            "v3", "A2", "B2", "v4", "Ap2", "Bp2"]
    pts = []
    for p in base:
        q = nm(p)
        if q not in pts:
            pts.append(q)
    C = Chi(pts)

    seg = {
        "a":  (nm("v1"), nm("a2")),
        "b":  (nm("v1"), nm("b2")),
        "ap": (nm("v2"), nm("ap2")),
        "bp": (nm("v2"), nm("bp2")),
        "A":  (nm("v3"), nm("A2")),
        "B":  (nm("v3"), nm("B2")),
        "Ap": (nm("v4"), nm("Ap2")),
        "Bp": (nm("v4"), nm("Bp2")),
    }

    P = ["a", "b", "ap", "bp"]
    Q = ["A", "B", "Ap", "Bp"]
    ED = {("a", "A"), ("b", "B"), ("ap", "Ap"), ("bp", "Bp")}

    want = {}                      # unordered pair -> True(cross) / False(disjoint)
    for x in P:
        for y in Q:
            want[(x, y)] = (x, y) not in ED
    for x, y in [("a", "ap"), ("a", "bp"), ("b", "ap"), ("b", "bp")]:
        want[(x, y)] = False
    for x, y in [("A", "Ap"), ("A", "Bp"), ("B", "Ap"), ("B", "Bp")]:
        want[(x, y)] = False
    # In the adjacency variants b = p_{i+1} and a' = p_{i+2} are ADJACENT sides of
    # the simple polygon P: they share a vertex, hence they intersect, and the
    # "non-adjacent sides of P are disjoint" constraint does not apply to them.
    if variant in ("P-adj", "PQ-adj"):
        want[("b", "ap")] = True
    if variant in ("Q-adj", "PQ-adj"):
        want[("B", "Ap")] = True      # B and A' are adjacent sides of Q

    cons = list(C.gp_axioms()) + list(C.acyclicity())
    forced = []                    # pairs that share an endpoint -> always meet
    for (x, y), v in sorted(want.items()):
        s, t = seg[x], seg[y]
        shared = set(s) & set(t)
        if shared:
            # they share an endpoint => they intersect, no constraint expressible
            forced.append((x, y, v, sorted(shared)))
            if v is False:
                raise AssertionError(
                    "variant %s: %s and %s share endpoint %s but the pattern "
                    "demands they be disjoint" % (variant, x, y, shared))
            continue
        cons.append(C.cross(s, t) if v else Not(C.cross(s, t)))

    return C, seg, cons, forced, want


def status_constraints(C, seg, which):
    """which in {'both-hooking','both-hooked','mixed-1','mixed-2'}"""
    v1, a2 = seg["a"]; _, b2 = seg["b"]
    v2, ap2 = seg["ap"]; _, bp2 = seg["bp"]
    v3, A2 = seg["A"]; _, B2 = seg["B"]
    v4, Ap2 = seg["Ap"]; _, Bp2 = seg["Bp"]
    hooking1 = C.in_cone(v3, v1, a2, b2)     # I(A,B)  in Cone(a,b)
    hooking2 = C.in_cone(v4, v2, ap2, bp2)   # I(A',B') in Cone(a',b')
    hooked1 = C.in_cone(v1, v3, A2, B2)      # I(a,b)  in Cone(A,B)
    hooked2 = C.in_cone(v2, v4, Ap2, Bp2)    # I(a',b') in Cone(A',B')
    return {
        "both-hooking": [hooking1, hooking2],
        "both-hooked":  [hooked1, hooked2],
        "mixed-1":      [hooking1, hooked2],   # the Fig. 6 pattern
        "mixed-2":      [hooked1, hooking2],
        "none":         [],
    }[which]


def run(variant, which, timeout_ms=0):
    C, seg, cons, forced, want = build(variant)
    s = Solver()
    if timeout_ms:
        s.set("timeout", timeout_ms)
    for c in cons:
        s.add(c)
    for c in status_constraints(C, seg, which):
        s.add(c)
    t0 = time.time()
    r = s.check()
    dt = time.time() - t0
    model = None
    if r == sat:
        m = s.model()
        model = {"_".join(map(str, k)): bool(m.evaluate(v, model_completion=True))
                 for k, v in sorted(C.X.items())}
    return {
        "variant": variant,
        "status": which,
        "n_points": C.n,
        "points": C.pts,
        "n_chirotope_vars": len(C.X),
        "n_constraints": len(cons),
        "pairs_sharing_endpoint_not_constrained": forced,
        "result": str(r),
        "seconds": round(dt, 3),
        "chirotope": model,
    }


if __name__ == "__main__":
    set_param("sat.random_seed", 0)
    set_param("smt.random_seed", 0)
    out = []
    variants = ["generic", "P-adj", "Q-adj", "PQ-adj"]
    statuses = ["none", "mixed-1", "mixed-2", "both-hooking", "both-hooked"]
    for v in variants:
        for w in statuses:
            r = run(v, w)
            out.append(r)
            print("%-8s %-12s  n=%2d vars=%3d cons=%4d  -> %-6s  (%.2fs)" %
                  (v, w, r["n_points"], r["n_chirotope_vars"],
                   r["n_constraints"], r["result"], r["seconds"]))
            sys.stdout.flush()
    with open("om_lemma7_results.json", "w") as f:
        json.dump(out, f, indent=1, sort_keys=True)
    print("\nwrote om_lemma7_results.json")
