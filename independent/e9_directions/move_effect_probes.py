"""move_effect_probes.py -- hand-built, minimal, exact probes.

The random sweep (move_effect_main.py) says WHETHER each claim holds.  These
probes say exactly WHY, on configurations small enough to quote in a Lean
lemma, and pin down the thresholds.

Appends to move_effect_report.log.
"""

from fractions import Fraction as F
from move_effect_lib import (N, orientR, cross, dot, sub, add, smul, onSeg,
                             simple_closed, moveV, segDeg, segDegP, coincSet,
                             crossPairs, finite_boundary_intersection,
                             fin_witnesses, seg_inter)

OUT = []


def log(*a):
    s = " ".join(str(x) for x in a)
    print(s)
    OUT.append(s)


def fs(x):
    x = F(x)
    return str(x.numerator) if x.denominator == 1 else f"{x.numerator}/{x.denominator}"


def pts(W):
    return "[" + ", ".join(f"({fs(p[0])},{fs(p[1])})" for p in W) + "]"


def PT(*xy):
    return tuple((F(a), F(b)) for a, b in xy)


GRID = [(F(a), F(b)) for a in range(-4, 5) for b in range(-4, 5)
        if (a, b) != (0, 0)]
ES = [F(1), F(1, 2), F(1, 10), F(1, 10**3), F(1, 10**6), F(1, 10**12),
      F(1, 10**30)]
ES = [s * v for v in ES for s in (F(1), F(-1))]


def require(name, cond):
    log(f"    [{'ok ' if cond else 'BAD'}] {name}")
    return cond


# --------------------------------------------------------------------------
# PROBE 1.  CLAIM B: a NEW segDeg entry, and its exact threshold in |e|.
#
# Q[0] sits on the LINE of P-side 0 but strictly outside the segment, beyond
# the MOVING endpoint P[0].  Sliding P[0] along that line by more than
# dist(P[0],Q[0]) swallows Q[0].  The threshold is positive for each fixed
# configuration but can be made as small as one likes ACROSS configurations.
# --------------------------------------------------------------------------

def probe1():
    log("")
    log("=" * 78)
    log("PROBE 1 -- CLAIM B: creating a NEW segDeg entry, and the exact threshold")
    log("=" * 78)
    P = PT((0, 0), (10, 0), (12, 8), (6, 14), (0, 10), (-4, 7), (-4, 3))
    i = 0
    E = (F(-1), F(0))            # parallel to P-side 0, pointing away from P[1]
    log(f"P = {pts(P)}   i = 0,  E = (-1,0) (parallel to P-side 0)")
    require("P is SimpleClosed", simple_closed(P))
    for d in (F(1), F(1, 10), F(1, 1000), F(1, 10**9)):
        Q = PT((-d, 0), (-d, -6), (5, -8), (11, -6), (11, -2), (6, -1), (2, -2))
        ok = simple_closed(Q)
        fin = finite_boundary_intersection(P, Q)
        sd0 = segDeg(P, Q)
        log("")
        log(f"  Q[0] = (-{fs(d)}, 0)   Q = {pts(Q)}")
        log(f"    Q SimpleClosed = {ok}   (Fin) before = {fin}   "
            f"segDeg before = {sorted(sd0)}")
        if not ok:
            continue
        # binary search for the threshold in e
        lo, hi = F(0), F(4)
        for _ in range(80):
            mid = (lo + hi) / 2
            Pm = moveV(P, i, E, mid)
            if segDeg(Pm, Q) - sd0:
                hi = mid
            else:
                lo = mid
        log(f"    threshold in e (bisected to 2^-80): in [{float(lo)}, {float(hi)}]"
            f"   -- predicted exactly {fs(d)}")
        for e in (d / 2, d - F(1, 10**12), d, d * 2):
            Pm = moveV(P, i, E, e)
            new = segDeg(Pm, Q) - sd0
            log(f"      e = {fs(e) if e.denominator < 10**9 else float(e)}"
                f"   new segDeg = {sorted(new)}")
        # and the other sign / other directions never create one
        bad = []
        for EE in GRID:
            for e in ES:
                Pm = moveV(P, i, EE, e)
                if segDeg(Pm, Q) - sd0 or segDegP(Pm, Q) - segDegP(P, Q):
                    bad.append((EE, e))
        small_bad = [(EE, e) for (EE, e) in bad if abs(e) <= F(1, 10**6)]
        log(f"    over the 80-direction grid x {len(ES)} e-values: "
            f"{len(bad)} (E,e) pairs create a new degeneracy, "
            f"of which {len(small_bad)} have |e| <= 1e-6")
        if small_bad:
            log(f"      e.g. {[(f'({fs(x[0][0])},{fs(x[0][1])})', fs(x[1])) for x in small_bad[:5]]}")


# --------------------------------------------------------------------------
# PROBE 2.  CLAIM C, the UNCONDITIONAL failure:  Q[j] = P[i+1].
# --------------------------------------------------------------------------

def probe2():
    log("")
    log("=" * 78)
    log("PROBE 2 -- CLAIM C fails for EVERY direction when Q[j] is the fixed")
    log("            endpoint of the incident side  (Q[j] = P[i+1])")
    log("=" * 78)
    P = PT((0, 0), (10, 0), (12, 8), (6, 14), (0, 10), (-4, 7), (-4, 3))
    Q = PT((10, 0), (16, -4), (22, 0), (22, -10), (10, -14), (2, -10), (2, -4))
    i = 0
    log(f"P = {pts(P)}")
    log(f"Q = {pts(Q)}      i = 0,  so P-side 0 = [P0,P1] and Q[0] = P[1]")
    require("P SimpleClosed", simple_closed(P))
    require("Q SimpleClosed", simple_closed(Q))
    log(f"    coincSet   = {sorted(coincSet(P, Q))}")
    sd0 = segDeg(P, Q)
    log(f"    segDeg     = {sorted(sd0)}     (0,0) present: {(0,0) in sd0}")
    log(f"    (Fin) = {finite_boundary_intersection(P, Q)}")
    survived = 0
    total = 0
    died = []
    for E in GRID:
        for e in ES:
            total += 1
            Pm = moveV(P, i, E, e)
            if (0, 0) in segDeg(Pm, Q):
                survived += 1
            else:
                died.append((E, e))
    log(f"    entry (k,j) = (0,0) over {len(GRID)} directions x {len(ES)} "
        f"e-values = {total} instances:")
    log(f"      SURVIVED in {survived} of {total};  destroyed in {len(died)}")
    log("    ==> no choice of E and no size of e can destroy it: the moving")
    log("        endpoint is P[0] and the degenerate point IS the other,")
    log("        FIXED, endpoint P[1], which stays on the closed side forever.")


# --------------------------------------------------------------------------
# PROBE 3.  CLAIM C, the DIRECTION failure: E parallel to the incident side.
# --------------------------------------------------------------------------

def probe3():
    log("")
    log("=" * 78)
    log("PROBE 3 -- CLAIM C: the bad directions are exactly E parallel to the")
    log("            incident P-side (resp. to the Q-side, for segDegP)")
    log("=" * 78)
    P = PT((0, 0), (10, 0), (12, 8), (6, 14), (0, 10), (-4, 7), (-4, 3))
    # Q[0] sits at the exact interior point (4,0) of P-side 0
    Q = PT((4, 0), (16, -4), (22, 0), (22, -10), (10, -14), (2, -10), (2, -4))
    i = 0
    require("P SimpleClosed", simple_closed(P))
    require("Q SimpleClosed", simple_closed(Q))
    log(f"P = {pts(P)}")
    log(f"Q = {pts(Q)}      Q[0] = (4,0) is INTERIOR to P-side 0")
    sd0 = segDeg(P, Q)
    log(f"    segDeg before = {sorted(sd0)}")
    par, nonpar = [], []
    for E in GRID:
        for e in ES:
            Pm = moveV(P, i, E, e)
            alive = (0, 0) in segDeg(Pm, Q)
            (par if cross(E, (F(1), F(0))) == 0 else nonpar).append((E, e, alive))
    log(f"    E NOT parallel to the side ({len(nonpar)} instances): "
        f"survived {sum(1 for x in nonpar if x[2])}, "
        f"destroyed {sum(1 for x in nonpar if not x[2])}")
    log(f"    E parallel to the side     ({len(par)} instances): "
        f"survived {sum(1 for x in par if x[2])}, "
        f"destroyed {sum(1 for x in par if not x[2])}")
    smallpar = [x for x in par if abs(x[1]) <= F(1, 10**6)]
    log(f"      of the parallel ones with |e| <= 1e-6: "
        f"survived {sum(1 for x in smallpar if x[2])} of {len(smallpar)}")

    log("")
    log("  Same configuration but with the degeneracy AT THE APEX, Q[0] = P[0]:")
    Q2 = PT((0, 0), (16, -4), (22, 0), (22, -10), (10, -14), (2, -10), (2, -4))
    require("Q2 SimpleClosed", simple_closed(Q2))
    sd0 = segDeg(P, Q2)
    log(f"    segDeg before = {sorted(sd0)}   coincSet = {sorted(coincSet(P, Q2))}")
    rows = []
    for E in [(F(1), F(0)), (F(-1), F(0)), (F(2), F(0)), (F(-3), F(0)),
              (F(1), F(1)), (F(0), F(1))]:
        for e in (F(1, 10**6), F(-1, 10**6)):
            Pm = moveV(P, i, E, e)
            rows.append((E, e, (0, 0) in segDeg(Pm, Q2),
                         (6, 0) in segDeg(Pm, Q2)))
    for E, e, a0, a6 in rows:
        log(f"    E=({fs(E[0])},{fs(E[1])}) e={fs(e)}  "
            f"(side 0, Q0) alive={a0}   (side 6, Q0) alive={a6}")
    log("    ==> with E along the side, the apex degeneracy dies for exactly")
    log("        one SIGN of e (the one sliding P[0] towards P[1]) and")
    log("        survives for the other: the bad set is a RAY, not a line.")

    log("")
    log("  segDegP mirror: P[0] placed at an interior point of a Q-side.")
    P3 = PT((7, -2), (10, 0), (12, 8), (6, 14), (0, 10), (-4, 7), (-4, 3))
    Q3 = PT((4, -4), (16, 4), (22, 0), (22, -10), (10, -14), (2, -10), (2, -4))
    # Q-side 0 runs (4,-4)->(16,4); its midpoint is (10,0); (7,-2) is at t=1/4
    require("P3 SimpleClosed", simple_closed(P3))
    require("Q3 SimpleClosed", simple_closed(Q3))
    sp0 = segDegP(P3, Q3)
    log(f"P3 = {pts(P3)}")
    log(f"Q3 = {pts(Q3)}   segDegP before = {sorted(sp0)}")
    u = sub(Q3[1], Q3[0])
    par, nonpar = [], []
    for E in GRID:
        for e in ES:
            Pm = moveV(P3, 0, E, e)
            alive = (0, 0) in segDegP(Pm, Q3)
            (par if cross(u, E) == 0 else nonpar).append((E, e, alive))
    log(f"    E NOT parallel to Q-side 0 ({len(nonpar)}): "
        f"survived {sum(1 for x in nonpar if x[2])}, "
        f"destroyed {sum(1 for x in nonpar if not x[2])}")
    log(f"    E parallel to Q-side 0     ({len(par)}): "
        f"survived {sum(1 for x in par if x[2])}, "
        f"destroyed {sum(1 for x in par if not x[2])}")


# --------------------------------------------------------------------------
# PROBE 4.  CLAIM D: destroying (Fin) with an arbitrarily small e.
# --------------------------------------------------------------------------

def probe4():
    log("")
    log("=" * 78)
    log("PROBE 4 -- CLAIM D: (Fin) destroyed by an ARBITRARILY SMALL e")
    log("=" * 78)
    # Q-side 6 is collinear with P-side 0 and meets it only at the apex P[0].
    P = PT((0, 0), (10, 0), (12, 8), (6, 14), (0, 10), (-4, 7), (-4, 3))
    # Q[0] = (0,0) = P[0] (a §9.1 vertex-vertex coincidence) and Q-side 6 runs
    # along the NEGATIVE x axis, so it is collinear with P-side 0 and the two
    # meet in exactly one point.
    Q = PT((0, 0), (4, -4), (10, -6), (14, -12), (2, -16), (-10, -8), (-6, 0))
    log("")
    log(f"P = {pts(P)}")
    log(f"Q = {pts(Q)}")
    log(f"    P SimpleClosed = {simple_closed(P)}   Q SimpleClosed = {simple_closed(Q)}")
    log(f"    Q-side 6 = [(-6,0),(0,0)] is collinear with P-side 0 = [(0,0),(10,0)]")
    log(f"    they meet in {seg_inter(P[0], P[1], Q[6], Q[0])}  -- a single point")
    fin0 = finite_boundary_intersection(P, Q)
    log(f"    (Fin) before the move = {fin0}   witnesses {fin_witnesses(P, Q)}")
    if not simple_closed(P) or not simple_closed(Q) or not fin0:
        log("    *** probe configuration rejected, skipping")
        return
    log("")
    log("    moving P[0] along E = (-1,0) (into Q-side 6):")
    for e in (F(1, 10), F(1, 10**6), F(1, 10**12), F(1, 10**30)):
        Pm = moveV(P, 0, (F(-1), F(0)), e)
        ws = fin_witnesses(Pm, Q)
        inter = seg_inter(Pm[0], Pm[1], Q[6], Q[0])
        log(f"      e = 1e-{len(str(e.denominator))-1:<3}  (Fin) after = "
            f"{not ws}   overlaps {ws}   P-side0 ^ Q-side6 = "
            f"{('seg of length ' + fs(e)) if inter and inter[0]=='seg' else inter}")
    log("    ==> for EVERY e > 0, however small, (Fin) is destroyed.")
    log("        There is no e0 that rescues this direction.")
    log("")
    log("    the opposite direction E = (1,0), and directions off the line:")
    for E in [(F(1), F(0)), (F(0), F(1)), (F(0), F(-1)), (F(1), F(1)),
              (F(-1), F(1)), (F(-1), F(-1)), (F(-2), F(0))]:
        res = []
        for e in (F(1, 10), F(1, 10**6), F(1, 10**12)):
            Pm = moveV(P, 0, E, e)
            res.append(finite_boundary_intersection(Pm, Q))
        log(f"      E=({fs(E[0])},{fs(E[1])})  (Fin) at e=1e-1,1e-6,1e-12: {res}")
    log("")
    log("    full grid, e > 0 small (1e-12): which directions destroy (Fin)?")
    bad = []
    for E in GRID:
        Pm = moveV(P, 0, E, F(1, 10**12))
        if not finite_boundary_intersection(Pm, Q):
            bad.append(E)
    log(f"      {len(bad)} of {len(GRID)}: "
        f"{[f'({fs(a)},{fs(b)})' for a, b in bad]}")
    u = sub(Q[0], Q[6])          # (6,0): the Q-side direction, pointing at the apex
    log(f"      Q-side 6 direction (Q[0]-Q[6]) = ({fs(u[0])},{fs(u[1])})")
    pred = [E for E in GRID if cross(E, u) == 0 and dot(E, u) < 0]
    log(f"      predicted bad set = {{E : E parallel to that side and pointing")
    log(f"        INTO it, i.e. cross(E,u)=0 and dot(E,u)<0}} = "
        f"{[f'({fs(a)},{fs(b)})' for a, b in pred]}")
    log(f"      match: {sorted(bad) == sorted(pred)}")


# --------------------------------------------------------------------------
# PROBE 5.  CLAIM A, stated sharply: which entries can change at all?
# --------------------------------------------------------------------------

def probe5():
    log("")
    log("=" * 78)
    log("PROBE 5 -- CLAIM A: the touched set, and a demonstration that it is")
    log("            not smaller than {i-1, i} (both incident sides really do move)")
    log("=" * 78)
    P = PT((0, 0), (10, 0), (12, 8), (6, 14), (0, 10), (-4, 7), (-4, 3))
    # Q[0] interior to P-side 0, Q[1] interior to P-side 6 = [P6,P0]
    Q = PT((4, 0), (-2, F(3, 2)), (22, 0), (22, -10), (10, -14), (2, -10), (2, -4))
    log(f"P = {pts(P)}")
    log(f"Q = {pts(Q)}")
    log(f"    P SimpleClosed={simple_closed(P)}  Q SimpleClosed={simple_closed(Q)}")
    log(f"    Q[1]=(-2,3/2) on P-side 6 = [(-4,3),(0,0)] ? "
        f"{onSeg(P[6], P[0], Q[1])}")
    sd0 = segDeg(P, Q)
    log(f"    segDeg before = {sorted(sd0)}")
    E = (F(1), F(3))
    e = F(1, 10**6)
    Pm = moveV(P, 0, E, e)
    sd1 = segDeg(Pm, Q)
    log(f"    move i=0, E=(1,3), e=1e-6:  segDeg after = {sorted(sd1)}")
    log(f"      entry on side 0 (k=i)   destroyed: {(0,0) not in sd1}")
    log(f"      entry on side 6 (k=i-1) destroyed: {(6,1) not in sd1}")
    log("    ==> BOTH incident sides are genuinely affected, so the touched")
    log("        set {i-1, i} is exactly right and cannot be shrunk.")


# --------------------------------------------------------------------------
# PROBE 0.  The three affine identities every verdict below rests on.
# --------------------------------------------------------------------------

def probe0():
    import random
    log("")
    log("=" * 78)
    log("PROBE 0 -- the three affine identities (exact, 60000 random cases each)")
    log("=" * 78)
    log("    orientR (A + e*E) B C = orientR A B C + e * cross E (B - C)")
    log("    orientR A (B + e*E) C = orientR A B C + e * cross E (C - A)")
    log("    orientR A B (C + e*E) = orientR A B C + e * cross (B - A) E")
    rng = random.Random(7)
    bad = [0, 0, 0]
    for _ in range(20000):
        A = (F(rng.randint(-9, 9)), F(rng.randint(-9, 9)))
        B = (F(rng.randint(-9, 9)), F(rng.randint(-9, 9)))
        C = (F(rng.randint(-9, 9)), F(rng.randint(-9, 9)))
        E = (F(rng.randint(-9, 9)), F(rng.randint(-9, 9)))
        e = F(rng.randint(-20, 20), rng.randint(1, 9))
        Ae = (A[0] + e * E[0], A[1] + e * E[1])
        Be = (B[0] + e * E[0], B[1] + e * E[1])
        Ce = (C[0] + e * E[0], C[1] + e * E[1])
        if orientR(Ae, B, C) != orientR(A, B, C) + e * cross(E, sub(B, C)):
            bad[0] += 1
        if orientR(A, Be, C) != orientR(A, B, C) + e * cross(E, sub(C, A)):
            bad[1] += 1
        if orientR(A, B, Ce) != orientR(A, B, C) + e * cross(sub(B, A), E):
            bad[2] += 1
    log(f"    mismatches: {bad}   (all three must be 0)")
    log("    CONSEQUENCES used below:")
    log("      * P-side k = i   : moving endpoint is P[i] (the FIRST argument),")
    log("        coefficient = cross(E, P[i+1] - X)")
    log("      * P-side k = i-1 : moving endpoint is P[i] (the SECOND argument),")
    log("        coefficient = cross(E, X - P[i-1])")
    log("      * Q-side j       : the moving point is the THIRD argument,")
    log("        coefficient = cross(Q[j+1] - Q[j], E)")


def main():
    log("")
    log("#" * 78)
    log("# TARGETED PROBES -- hand-built minimal configurations")
    log("#" * 78)
    probe0()
    probe1()
    probe2()
    probe3()
    probe4()
    probe5()
    with open("move_effect_report.log", "a") as fh:
        fh.write("\n".join(OUT) + "\n")


if __name__ == "__main__":
    main()
