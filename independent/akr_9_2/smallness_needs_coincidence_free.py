#!/usr/bin/env python3
"""Why the smallness condition of the averaging identity needs coincidence-freeness.

The averaging identity of AKR 9.2 is false without a bound on the shift
(`TiltedShift.averaging_fails_without_smallness`).  The bound it needs is

    |delta * m1| < |y|   and   |delta * m2| < |z|,

where y and z are the determinants of the two NEIGHBOURS of the degenerate
vertex against the side it lies on.  Choosing delta small enough is possible
exactly when y and z are nonzero.

CLAIM UNDER TEST: finiteness of the intersection alone does NOT give y != 0.

Part 1 exhibits a witness, in exact rational arithmetic: two simple heptagons
meeting in finitely many points, with a Q-vertex lying on a P-side whose
predecessor lies on that side's LINE, so y = 0.  The two polygons share a
vertex.

Part 2 is the non-vacuity control, and is the interesting half.  It shows the
mechanism the Lean proof (`Pair9Shift.neighbour_off_ne_zero`) uses: once the
degenerate vertex is STRICTLY inside the side -- which is what excluding a
shared vertex buys -- forcing y = 0 forces a whole sub-segment of the
neighbouring edge into the side, and the intersection becomes infinite.  So the
witness of Part 1 cannot be repaired while keeping coincidence-freeness.

Exact arithmetic throughout (fractions.Fraction); no floating point.
"""

from fractions import Fraction as F
from itertools import product
import random

# ---------------------------------------------------------------- primitives
# orientR and ProperCross exactly as in lean/GeometryDefs.lean and
# lean/Pair9Shift.lean (orientR A B C = cross(B-A, C-A)).

def orientR(a, b, c):
    return (b[0] - a[0]) * (c[1] - a[1]) - (b[1] - a[1]) * (c[0] - a[0])

def proper_cross(a, b, c, d):
    return orientR(a, b, c) * orientR(a, b, d) < 0 and \
           orientR(c, d, a) * orientR(c, d, b) < 0

def on_segment(a, b, x):
    if orientR(a, b, x) != 0:
        return False
    return (min(a[0], b[0]) <= x[0] <= max(a[0], b[0]) and
            min(a[1], b[1]) <= x[1] <= max(a[1], b[1]))

def simple(P):
    """Simple closed heptagon: adjacent vertices distinct, non-adjacent sides
    do not meet, adjacent sides meet only at their shared vertex."""
    n = len(P)
    for a in range(n):
        if P[a] == P[(a + 1) % n]:
            return False
    for a in range(n):
        for b in range(n):
            if a >= b:
                continue
            adj = ((a + 1) % n == b) or ((b + 1) % n == a)
            A, B = P[a], P[(a + 1) % n]
            C, D = P[b], P[(b + 1) % n]
            if adj:
                # collinear adjacent sides that fold back would overlap
                if orientR(A, B, C) == 0 and orientR(A, B, D) == 0:
                    return False
            else:
                if proper_cross(A, B, C, D):
                    return False
                for x in (C, D):
                    if on_segment(A, B, x):
                        return False
                for x in (A, B):
                    if on_segment(C, D, x):
                        return False
    return True

def overlapping_sides(P, Q):
    """Pairs (k, j) whose sides are collinear AND share more than one point.
    A nonempty result means the intersection of the two boundaries is
    infinite, i.e. hypothesis (Fin) fails."""
    out = []
    for k in range(7):
        A, B = P[k], P[(k + 1) % 7]
        for j in range(7):
            C, D = Q[j], Q[(j + 1) % 7]
            if orientR(A, B, C) != 0 or orientR(A, B, D) != 0:
                continue
            # collinear: project onto the dominant axis and test overlap length
            u = (B[0] - A[0], B[1] - A[1])
            ax = 0 if u[0] != 0 else 1
            lo1, hi1 = sorted([A[ax], B[ax]])
            lo2, hi2 = sorted([C[ax], D[ax]])
            if max(lo1, lo2) < min(hi1, hi2):
                out.append((k, j))
    return out

def coincidences(P, Q):
    return [(k, j) for k in range(7) for j in range(7) if P[k] == Q[j]]

def seg_deg(P, Q):
    """Entries (k, j): Q-vertex j lies on P-side k."""
    return [(k, j) for k in range(7) for j in range(7)
            if on_segment(P[k], P[(k + 1) % 7], Q[j])]

def pt(t):
    return (F(t[0]), F(t[1]))

# ------------------------------------------------------- part 1: the witness
print("=" * 72)
print("PART 1 -- the witness: finiteness holds, y = 0")
print("=" * 72)

P = [pt(v) for v in [(0, 0), (1, 0), (3, 1), (3, 3), (0, 4), (-3, 3), (-3, 1)]]
Q = [pt(v) for v in [(0, 0), (2, 2), (4, -1), (5, 5), (-5, 5), (-4, -2), (-1, 0)]]

print("P =", [(int(a), int(b)) for a, b in P])
print("Q =", [(int(a), int(b)) for a, b in Q])
print()
print("P simple                     :", simple(P))
print("Q simple                     :", simple(Q))
ov = overlapping_sides(P, Q)
print("overlapping side pairs       :", ov, "  (empty => (Fin) holds)")
co = coincidences(P, Q)
print("shared vertices (k, j)       :", co)
print("segDeg entries (k, j)        :", seg_deg(P, Q))
print()

k, j = 0, 0
y = orientR(P[k], P[(k + 1) % 7], Q[(j - 1) % 7])
z = orientR(P[k], P[(k + 1) % 7], Q[(j + 1) % 7])
print(f"at the degeneracy (k, j) = ({k}, {j}):")
print("  Q[j] on P-side k           :", on_segment(P[k], P[(k + 1) % 7], Q[j]))
print("  y = orientR(P0, P1, Q[j-1]):", y, " <- VANISHES")
print("  z = orientR(P0, P1, Q[j+1]):", z)
print()
ok1 = (simple(P) and simple(Q) and not ov and y == 0 and co)
print("PART 1 RESULT:", "witness confirmed" if ok1 else "WITNESS FAILED")
print("  finiteness holds, no smallness bound exists for y, and the")
print("  configuration has a shared vertex:", co)

# -------------------------------------- part 2: the non-vacuity control
print()
print("=" * 72)
print("PART 2 -- control: with the vertex STRICTLY inside, y = 0 forces")
print("          an infinite intersection (so the witness cannot be repaired)")
print("=" * 72)

def build_attempt(s, r):
    """Place Q[j] strictly inside P-side 0 at parameter s, and place its
    predecessor Q[j-1] on the SAME LINE at parameter r -- i.e. force y = 0.
    Returns the pair (P, Q)."""
    A, B = P[0], P[1]
    u = (B[0] - A[0], B[1] - A[1])
    inside = (A[0] + s * u[0], A[1] + s * u[1])
    onliney = (A[0] + r * u[0], A[1] + r * u[1])
    # Q with Q[0] = the interior point, Q[6] = its predecessor on the line
    Qn = [inside, pt((2, 2)), pt((4, -1)), pt((5, 5)), pt((-5, 5)),
          pt((-4, -2)), onliney]
    return P, Qn

random.seed(20260923)
params = [F(a, b) for b in (2, 3, 4, 5, 7) for a in range(1, b) if F(a, b) != 0]
rs = [F(a, b) for b in (1, 2, 3, 4, 5) for a in range(-6, 8)]

tested = 0
forced_infinite = 0
violations = []
for s in params:
    for r in rs:
        if r == s:
            continue
        Pn, Qn = build_attempt(s, r)
        # only meaningful if y really vanishes and the degeneracy is there
        if not on_segment(Pn[0], Pn[1], Qn[0]):
            continue
        if orientR(Pn[0], Pn[1], Qn[6]) != 0:
            continue
        if Qn[0] == Pn[0] or Qn[0] == Pn[1]:
            continue          # a shared vertex: that is Part 1's case
        if coincidences(Pn, Qn):
            continue          # coincidence-free only
        tested += 1
        ov2 = overlapping_sides(Pn, Qn)
        if ov2:
            forced_infinite += 1
        else:
            violations.append((s, r, ov2))

print(f"attempts with y = 0, vertex strictly inside, coincidence-free : {tested}")
print(f"  of these, intersection forced INFINITE (overlapping sides)  : {forced_infinite}")
print(f"  of these, finite intersection survived (would refute Lean)  : {len(violations)}")
if violations:
    print("  VIOLATIONS (these would contradict neighbour_off_ne_zero):")
    for v in violations[:5]:
        print("   ", v)
print()
print("PART 2 RESULT:",
      "control passed -- every attempt forced infinitude"
      if tested > 0 and not violations else
      ("CONTROL VACUOUS (no attempts constructed)" if tested == 0
       else "CONTROL FAILED"))

# ------------------------------------------------------- vacuity guard
print()
print("=" * 72)
print("SANITY -- the checkers are not trivially permissive")
print("=" * 72)
bad = [pt(v) for v in [(0, 0), (1, 0), (2, 0), (3, 1), (2, 2), (1, 2), (0, 1)]]
print("degenerate (three collinear, folded) polygon rejected by simple():",
      not simple([pt(v) for v in [(0,0),(2,0),(1,0),(1,2),(0,3),(-1,2),(-1,1)]]))
print("overlapping_sides detects a deliberate overlap:",
      bool(overlapping_sides(
          [pt(v) for v in [(0,0),(4,0),(4,3),(3,4),(0,4),(-1,3),(-1,1)]],
          [pt(v) for v in [(1,0),(3,0),(5,2),(5,6),(1,7),(-2,5),(-2,2)]])))
print("on_segment rejects a point off the line:",
      not on_segment(pt((0,0)), pt((1,0)), pt((0,1))))
