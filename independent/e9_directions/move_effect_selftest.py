"""move_effect_selftest.py -- unit self-tests on the primitives.

The whole study is worthless if the primitives are wrong, so the driver runs
these first and ABORTS if any fails.
"""

from fractions import Fraction as F
from move_effect_lib import (orientR, properCrossR, onSeg, seg_inter,
                             simple_closed, moveV, segDeg, segDegP, coincSet,
                             crossPairs, finite_boundary_intersection, adjacent,
                             overlaps_in_more_than_a_point)

FAILS = []


def check(name, got, want):
    if got != want:
        FAILS.append(f"  FAIL {name}: got {got!r}, want {want!r}")
        return False
    return True


def P(*xy):
    return tuple((F(a), F(b)) for a, b in xy)


# A convex heptagon whose vertices 0,1,2 are collinear: (5,0) is the midpoint of
# the edge (0,0)-(10,0) of a convex hexagon.  SimpleClosed must ACCEPT this.
COLLINEAR_HEP = P((0, 0), (5, 0), (10, 0), (15, 8), (10, 16), (0, 16), (-5, 8))

# Same vertex set, reordered so that two non-adjacent sides cross.
CROSSING_HEP = P((0, 0), (5, 0), (10, 16), (15, 8), (10, 0), (0, 16), (-5, 8))


def run(log):
    log("=" * 78)
    log("SELF-TESTS on the primitives")
    log("=" * 78)

    # ---- orientR signs
    check("orientR ccw > 0", orientR((F(0), F(0)), (F(1), F(0)), (F(0), F(1))), 1)
    check("orientR cw < 0", orientR((F(0), F(0)), (F(1), F(0)), (F(0), F(-1))), -1)
    check("orientR collinear == 0",
          orientR((F(0), F(0)), (F(2), F(2)), (F(5), F(5))), 0)
    check("orientR scale", orientR((F(0), F(0)), (F(3), F(0)), (F(0), F(4))), 12)
    check("orientR antisym",
          orientR((F(0), F(0)), (F(0), F(1)), (F(1), F(0))), -1)
    check("orientR rational",
          orientR((F(0), F(0)), (F(1, 2), F(0)), (F(0), F(1, 3))), F(1, 6))

    # ---- onSeg, endpoints INCLUDED
    a, b = (F(0), F(0)), (F(4), F(0))
    check("onSeg left endpoint", onSeg(a, b, a), True)
    check("onSeg right endpoint", onSeg(a, b, b), True)
    check("onSeg interior", onSeg(a, b, (F(3, 2), F(0))), True)
    check("onSeg beyond right", onSeg(a, b, (F(5), F(0))), False)
    check("onSeg beyond left", onSeg(a, b, (F(-1, 100), F(0))), False)
    check("onSeg off line", onSeg(a, b, (F(2), F(1, 1000))), False)
    # diagonal, rational interior point
    a2, b2 = (F(1), F(1)), (F(4), F(7))
    check("onSeg diag interior", onSeg(a2, b2, (F(2), F(3))), True)
    check("onSeg diag off", onSeg(a2, b2, (F(2), F(3) + F(1, 10**9))), False)
    check("onSeg degenerate hit", onSeg(a, a, a), True)
    check("onSeg degenerate miss", onSeg(a, a, b), False)

    # ---- properCrossR
    check("properCross yes",
          properCrossR((F(0), F(0)), (F(4), F(0)), (F(2), F(-1)), (F(2), F(1))), True)
    check("properCross touching endpoint is NOT proper",
          properCrossR((F(0), F(0)), (F(4), F(0)), (F(2), F(0)), (F(2), F(1))), False)
    check("properCross disjoint",
          properCrossR((F(0), F(0)), (F(4), F(0)), (F(2), F(1)), (F(2), F(2))), False)
    check("properCross collinear overlap is NOT proper",
          properCrossR((F(0), F(0)), (F(4), F(0)), (F(2), F(0)), (F(6), F(0))), False)

    # ---- seg_inter
    check("seg_inter transversal",
          seg_inter((F(0), F(0)), (F(4), F(0)), (F(2), F(-1)), (F(2), F(1))),
          ('pt', (F(2), F(0))))
    check("seg_inter disjoint",
          seg_inter((F(0), F(0)), (F(1), F(0)), (F(5), F(0)), (F(6), F(0))), None)
    check("seg_inter touch at a point (collinear)",
          seg_inter((F(0), F(0)), (F(2), F(0)), (F(2), F(0)), (F(5), F(0))),
          ('pt', (F(2), F(0))))
    check("seg_inter collinear overlap",
          seg_inter((F(0), F(0)), (F(4), F(0)), (F(2), F(0)), (F(6), F(0))),
          ('seg', (F(2), F(0)), (F(4), F(0))))
    check("seg_inter parallel distinct",
          seg_inter((F(0), F(0)), (F(4), F(0)), (F(0), F(1)), (F(4), F(1))), None)
    check("overlap detector positive",
          overlaps_in_more_than_a_point((F(0), F(0)), (F(4), F(0)),
                                        (F(2), F(0)), (F(6), F(0))), True)
    check("overlap detector point-touch is not an overlap",
          overlaps_in_more_than_a_point((F(0), F(0)), (F(2), F(0)),
                                        (F(2), F(0)), (F(6), F(0))), False)

    # ---- adjacency (cyclic, Fin 7)
    check("adjacent 6,0", adjacent(6, 0), True)
    check("adjacent 0,6", adjacent(0, 6), True)
    check("adjacent 0,2", adjacent(0, 2), False)
    check("adjacent 3,3", adjacent(3, 3), True)

    # ---- SimpleClosed: MUST accept three collinear vertices
    ok, why = simple_closed(COLLINEAR_HEP, why=True)
    check("SimpleClosed accepts 3 collinear vertices (" + why + ")", ok, True)
    check("  and they really are collinear",
          orientR(COLLINEAR_HEP[0], COLLINEAR_HEP[1], COLLINEAR_HEP[2]), 0)
    # ---- SimpleClosed: MUST reject a self-crossing heptagon
    ok2, why2 = simple_closed(CROSSING_HEP, why=True)
    check("SimpleClosed rejects self-crossing heptagon", ok2, False)
    # ---- SimpleClosed: rejects a degenerate (repeated) side
    dup = list(COLLINEAR_HEP)
    dup[3] = dup[2]
    check("SimpleClosed rejects repeated adjacent vertex",
          simple_closed(tuple(dup)), False)
    # ---- SimpleClosed: rejects a backtracking spike (collinear but overlapping)
    spike = P((0, 0), (10, 0), (4, 0), (15, 8), (10, 16), (0, 16), (-5, 8))
    check("SimpleClosed rejects a backtracking spike", simple_closed(spike), False)

    # ---- moveV changes EXACTLY one vertex, and never touches Q
    Pp = COLLINEAR_HEP
    E = (F(3), F(-5))
    e = F(1, 7)
    Pm = moveV(Pp, 4, E, e)
    changed = [k for k in range(7) if Pm[k] != Pp[k]]
    check("moveV changes exactly one vertex", changed, [4])
    check("moveV moves it by e*E", Pm[4],
          (Pp[4][0] + e * E[0], Pp[4][1] + e * E[1]))
    check("moveV with e=0 is the identity", moveV(Pp, 4, E, F(0)), Pp)
    check("moveV does not move P[i+1]", Pm[5], Pp[5])
    check("moveV does not move P[i-1]", Pm[3], Pp[3])

    # ---- the four measures on a hand-built configuration
    #   P = unit-ish square-ish heptagon;  Q has a vertex exactly on P-side 0,
    #   P has a vertex exactly on a Q-side, and one vertex-vertex coincidence.
    Ph = P((0, 0), (10, 0), (10, 10), (6, 14), (0, 10), (-4, 7), (-4, 3))
    Qh = P((5, 0), (20, 0), (20, 20), (0, 0), (-10, 20), (-14, 7), (-14, 3))
    sd = segDeg(Ph, Qh)
    check("segDeg finds Q[0]=(5,0) on P-side 0", (0, 0) in sd, True)
    check("segDeg finds the coincidence Q[3]=P[0] as an endpoint hit",
          (0, 3) in sd, True)
    check("coincSet finds P[0]==Q[3]", coincSet(Ph, Qh), frozenset({(0, 3)}))
    check("segDegP is a set of (Qside, Pvertex) pairs",
          all(isinstance(x, tuple) and len(x) == 2 for x in segDegP(Ph, Qh)), True)
    # crossPairs sanity: a clean transversal pair
    Pc = P((0, 0), (10, 0), (10, 10), (6, 14), (0, 10), (-4, 7), (-4, 3))
    Qc = P((5, -5), (5, 5), (7, 5), (9, 5), (11, 5), (11, -5), (8, -5))
    cp = crossPairs(Pc, Qc)
    check("crossPairs nonempty on a transversal pair", len(cp) > 0, True)

    # ---- finiteness detector can say FALSE
    Pf = P((0, 0), (10, 0), (10, 10), (6, 14), (0, 10), (-4, 7), (-4, 3))
    Qf = P((2, 0), (8, 0), (8, -6), (4, -10), (0, -6), (-3, -4), (-3, -1))
    check("(Fin) is FALSE when P-side 0 and Q-side 0 overlap",
          finite_boundary_intersection(Pf, Qf), False)
    Qg = P((2, -1), (8, -1), (8, -6), (4, -10), (0, -6), (-3, -4), (-3, -1))
    check("(Fin) is TRUE when they do not",
          finite_boundary_intersection(Pf, Qg), True)

    if FAILS:
        log(f"SELF-TESTS FAILED ({len(FAILS)}):")
        for f in FAILS:
            log(f)
        return False
    log("All self-tests PASSED.")
    log("")
    return True
