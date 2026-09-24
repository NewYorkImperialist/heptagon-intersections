#!/usr/bin/env python3
"""slide_selftest.py -- primitive self-tests + deliberately-false controls.
Exits nonzero if anything fails.  Appends to slide_characterisation.log."""
from fractions import Fraction as F
import sys, os, random

import move_joint_measure as mjm
import pt_measure_check as ptm
from slide_lib import *
from slide_lib import (suppP, slide_dir, slide_state, first_admissible,
                       apex_collinear, predicted_lost, lost_gained, E_LADDER)

LOG = os.path.join(os.path.dirname(os.path.abspath(__file__)),
                   "slide_characterisation.log")

def mklog():
    fh = open(LOG, "a")
    def log(s=""):
        print(s); fh.write(s + "\n"); fh.flush()
    return log, fh

def main():
    log, fh = mklog()
    log("=" * 78)
    log("slide_selftest.py -- primitive self-tests and false controls")
    log("=" * 78)
    ok = True
    def chk(name, cond):
        nonlocal ok
        log(f"  [{'PASS' if cond else 'FAIL'}] {name}")
        if not cond: ok = False

    log("\n-- imported primitive self-tests (mjm + ptm) --")
    ok = ptm.selftests(log) and ok

    log("\n-- slide-specific self-tests --")
    # a hand polygon, P[0] = Q[0] coincidence (the designed X pair D1)
    Pa = tuple((F(a), F(b)) for a, b in
               [(0,0),(6,1),(10,5),(3,8),(-3,8),(-10,5),(-6,1)])
    Qa = tuple((F(a), F(b)) for a, b in
               [(0,0),(1,-6),(5,-10),(8,-3),(8,3),(5,10),(1,6)])
    chk("designed pair simple", simple_closed(Pa) and simple_closed(Qa))
    chk("designed pair has the coincidence P[0]=Q[0]", (0,0) in coinc_set(Pa,Qa))

    # slide directions
    EA = slide_dir(Pa, 0, 'A'); EB = slide_dir(Pa, 0, 'B')
    chk("slide A direction is P[v]-P[v+1]", EA == (Pa[0][0]-Pa[1][0], Pa[0][1]-Pa[1][1]))
    chk("slide B direction is P[v]-P[v-1]", EB == (Pa[0][0]-Pa[6][0], Pa[0][1]-Pa[6][1]))

    # moveV changes exactly one vertex
    P2 = moveV(Pa, 0, EA, F(1,10))
    chk("slide changes exactly one P vertex",
        [k for k in range(7) if P2[k] != Pa[k]] == [0])

    # THE GROWTH FACT: old side v is contained in new side v, for every e>0
    growth_ok = True
    for e in [F(1), F(1,3), F(1,1000), F(1,10**12)]:
        P3 = moveV(Pa, 0, EA, e)
        # sample points of old side 0
        for t in [F(0), F(1,7), F(1,2), F(6,7), F(1)]:
            X = (Pa[0][0] + t*(Pa[1][0]-Pa[0][0]), Pa[0][1] + t*(Pa[1][1]-Pa[0][1]))
            if not on_closed(X, P3[0], P3[1]):
                growth_ok = False
    chk("slide A: old side v is contained in the NEW side v (every e>0)", growth_ok)
    chk("slide A: the OLD apex lies on the new side v",
        on_closed(Pa[0], moveV(Pa,0,EA,F(1,10))[0], Pa[1]))

    # degPts counts a coincidence ONCE
    D = deg_pts(Pa, Qa)
    chk("degPts agrees with the direct definition", D == deg_pts_direct(Pa, Qa))
    chk("degPts counts the coincidence exactly ONCE",
        list(D).count(Pa[0]) == 1 and Pa[0] in D)
    sd, sdp = seg_deg(Pa,Qa), seg_degP(Pa,Qa)
    chk("...while segDeg+segDegP charge it FOUR times",
        len([1 for (k,j) in sd if Qa[j]==Pa[0]]) + len([1 for (j,u) in sdp if Pa[u]==Pa[0]]) == 4)

    # suppP
    chk("suppP of a P-vertex is its two incident sides",
        suppP(Pa[3], Pa) == frozenset({2,3}))
    mid = ((Pa[2][0]+Pa[3][0])/2, (Pa[2][1]+Pa[3][1])/2)
    chk("suppP of a side midpoint is that one side", suppP(mid, Pa) == frozenset({2}))

    # SimpleClosed forces the collinear apex to be the MIDDLE point
    col = tuple((F(a),F(b)) for a,b in [(0,0),(1,0),(2,0),(3,1),(2,3),(1,3),(0,2)])
    chk("SimpleClosed accepts a straight pass-through at P[1]", simple_closed(col))
    chk("...and P[1] is strictly between P[0] and P[2]",
        apex_collinear(col,1) and on_closed(col[1], col[0], col[2]))
    bad = tuple((F(a),F(b)) for a,b in [(0,0),(2,0),(1,0),(3,1),(2,3),(1,3),(0,2)])
    chk("SimpleClosed REJECTS the collinear backtrack (apex not in the middle)",
        not simple_closed(bad))

    log("\n-- DELIBERATELY FALSE CONTROLS (these MUST fail) --")
    rnd = random.Random(20260924)
    insts, cnt, stats = ptm.generate(lambda s: None,
        {"plain":60,"hardP":60,"hardN":60,"hardM":30}, 909091, 4000)
    log(f"  control corpus: {len(insts)} instances, " +
        " ".join(f"{k}={cnt[k]}" for k in sorted(cnt)))

    c_e0_adm = 0; c_e0_tot = 0
    c_strict = 0; c_strict_tot = 0
    c_nondec = 0; c_nondec_tot = 0
    c_allsurv = 0
    for (tag,P,Q,v,j,feat) in insts:
        # FALSE CONTROL 1: "slide A is admissible at e = 0"
        st0 = slide_state(P,Q,v,'A',F(0))
        c_e0_tot += 1
        if st0["adm"]: c_e0_adm += 1
        st,_ = first_admissible(P,Q,v,'A')
        if st is None: continue
        m0 = M_pt(P,Q); m1 = M_pt(st["P2"],Q)
        # FALSE CONTROL 2: "M_pt STRICTLY increases under an admissible slide A"
        c_strict_tot += 1
        if m1 > m0: c_strict += 1
        # TRUE reference: M_pt non-decreases
        c_nondec_tot += 1
        if m1 >= m0: c_nondec += 1
        # FALSE CONTROL 3: "no degenerate point is ever lost"
        lost,_g,_a,_b = lost_gained(P,Q,st["P2"])
        if not lost: c_allsurv += 1
    log(f"  FALSE CONTROL 1  'slide A admissible at e=0'  : holds {c_e0_adm}/{c_e0_tot}"
        f"  -> {c_e0_tot-c_e0_adm} failures")
    log(f"  FALSE CONTROL 2  'M_pt strictly increases'    : holds {c_strict}/{c_strict_tot}"
        f"  -> {c_strict_tot-c_strict} failures")
    log(f"  FALSE CONTROL 3  'no degPt is ever lost'      : holds {c_allsurv}/{c_nondec_tot}"
        f"  -> {c_nondec_tot-c_allsurv} failures")
    log(f"  (reference, expected TRUE) 'M_pt non-decreasing': holds {c_nondec}/{c_nondec_tot}")
    chk("false control 1 does fail", c_e0_adm == 0)
    chk("false control 2 does fail", c_strict < c_strict_tot)
    chk("harness is sensitive: at least one degPt loss somewhere",
        c_allsurv < c_nondec_tot)

    log(f"\nSELFTEST {'OK' if ok else 'FAILED'}")
    fh.close()
    sys.exit(0 if ok else 1)

if __name__ == "__main__":
    main()
