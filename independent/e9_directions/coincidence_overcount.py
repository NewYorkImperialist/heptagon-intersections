#!/usr/bin/env python3
"""Why section 9.2's joint measure is the WRONG measure for section 9.1.

Section 9.2's chain is driven by

    M_seg(R) = |crossPairs| + |segDeg| + |segDegP|

and `Pair9Shift.points9_le_38_of_coincFree` needs M_seg to never decrease along
the chain.  That works on the 9.2 side, where every degeneracy is a vertex
lying STRICTLY INSIDE a side of the other polygon.

It does not transfer to 9.1.  At a vertex-vertex coincidence P_i = Q_j the
single intersection point is an ENDPOINT of four different sides -- P-sides
i-1 and i, and Q-sides j-1 and j -- so it is counted FOUR times by
segDeg + segDegP while contributing ONE point to points9.

Clearing that coincidence therefore costs 4 units of M_seg, and a move of one
apex cannot in general gain 4 crossings.  The measure that does not overcount
is the one already in the development:

    M_pt(R) = |crossPairs| + |degPts|,        degPts = points9 ∩ verts

which counts each degenerate intersection POINT once
(`Pair9Shift.points9_ncard_le_crossPairs_add_deg`).

Exact rational arithmetic; no floats.
"""

from fractions import Fraction as F

def orientR(a, b, c):
    return (b[0]-a[0])*(c[1]-a[1]) - (b[1]-a[1])*(c[0]-a[0])

def on_segment(a, b, x):
    if orientR(a, b, x) != 0:
        return False
    return (min(a[0], b[0]) <= x[0] <= max(a[0], b[0]) and
            min(a[1], b[1]) <= x[1] <= max(a[1], b[1]))

def proper_cross(a, b, c, d):
    return orientR(a,b,c)*orientR(a,b,d) < 0 and orientR(c,d,a)*orientR(c,d,b) < 0

def pt(t): return (F(t[0]), F(t[1]))

def measures(P, Q):
    cross = [(k,j) for k in range(7) for j in range(7)
             if proper_cross(P[k], P[(k+1)%7], Q[j], Q[(j+1)%7])]
    segDeg  = [(k,j) for k in range(7) for j in range(7)
               if on_segment(P[k], P[(k+1)%7], Q[j])]
    segDegP = [(m,v) for m in range(7) for v in range(7)
               if on_segment(Q[m], Q[(m+1)%7], P[v])]
    # degPts: intersection points that are a vertex of either polygon
    verts = set(P) | set(Q)
    degpts = set()
    for x in verts:
        onP = any(on_segment(P[k], P[(k+1)%7], x) for k in range(7))
        onQ = any(on_segment(Q[m], Q[(m+1)%7], x) for m in range(7))
        if onP and onQ:
            degpts.add(x)
    return cross, segDeg, segDegP, degpts

print("=" * 74)
print("A single vertex-vertex coincidence, and how each measure counts it")
print("=" * 74)

P = [pt(v) for v in [(0,0),(4,0),(6,3),(4,6),(0,6),(-2,4),(-2,1)]]
Q = [pt(v) for v in [(0,0),(3,-3),(8,1),(7,7),(1,9),(-4,6),(-4,-1)]]

coinc = [(v,j) for v in range(7) for j in range(7) if P[v] == Q[j]]
cross, segDeg, segDegP, degpts = measures(P, Q)

print("coincidences (v,j)      :", coinc)
print("crossPairs              :", len(cross), cross)
print("segDeg  entries         :", len(segDeg), segDeg)
print("segDegP entries         :", len(segDegP), segDegP)
print("degPts (POINTS, ncard)  :", len(degpts), sorted((int(a),int(b)) for a,b in degpts))
print()
print("the ONE coincidence point is counted")
print("   segDeg + segDegP :", len(segDeg) + len(segDegP), "times")
print("   degPts           :", len(degpts), "time(s)")
print()
print("M_seg = |crossPairs| + |segDeg| + |segDegP| =",
      len(cross) + len(segDeg) + len(segDegP))
print("M_pt  = |crossPairs| + |degPts|             =", len(cross) + len(degpts))
print()
over = (len(segDeg) + len(segDegP)) - len(degpts)
print(f"VERDICT: M_seg overcounts this coincidence by {over} units.")
print("         Clearing it must be paid for", len(segDeg)+len(segDegP),
      "crossings under M_seg, but only", len(degpts), "under M_pt.")

print()
print("=" * 74)
print("CONTROL -- on a 9.2-style degeneracy (vertex strictly INSIDE a side)")
print("the two measures agree, which is why M_seg works there")
print("=" * 74)
# Q[0] placed strictly inside P-side 0, no coincidence
P2 = [pt(v) for v in [(0,0),(4,0),(6,3),(4,6),(0,6),(-2,4),(-2,1)]]
Q2 = [pt(v) for v in [(2,0),(3,-3),(8,1),(7,7),(1,9),(-4,6),(-4,-1)]]
co2 = [(v,j) for v in range(7) for j in range(7) if P2[v] == Q2[j]]
c2, sd2, sdp2, dp2 = measures(P2, Q2)
print("coincidences            :", co2, " (empty)")
print("Q[0] strictly inside P-side 0 :",
      on_segment(P2[0], P2[1], Q2[0]) and Q2[0] != P2[0] and Q2[0] != P2[1])
print("segDeg + segDegP        :", len(sd2) + len(sdp2))
print("degPts                  :", len(dp2))
print("overcount               :", (len(sd2) + len(sdp2)) - len(dp2),
      " <- ZERO, the two measures agree")

print()
print("=" * 74)
print("SANITY -- the primitives are not permissive")
print("=" * 74)
print("on_segment rejects an off-line point  :",
      not on_segment(pt((0,0)), pt((1,0)), pt((0,1))))
print("on_segment accepts an endpoint        :",
      on_segment(pt((0,0)), pt((1,0)), pt((1,0))))
print("proper_cross on a clean crossing      :",
      proper_cross(pt((0,0)), pt((2,0)), pt((1,-1)), pt((1,1))))
print("proper_cross rejects a touch          :",
      not proper_cross(pt((0,0)), pt((2,0)), pt((1,0)), pt((1,1))))
