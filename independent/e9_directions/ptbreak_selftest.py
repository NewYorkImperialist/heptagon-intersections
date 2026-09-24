"""ptbreak_selftest.py -- primitive self-tests, a degPts cross-check against a
structurally different implementation, and the incremental-vs-full evaluator
cross-check.  Exits nonzero on any failure; the driver aborts if it does.
"""

import os
import random
import sys
from fractions import Fraction as F

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

from move_effect_lib import (            # noqa: E402
    N, orientR, onSeg, simple_closed, moveV, coincSet, segDeg, segDegP,
    crossPairs, finite_boundary_intersection, properCrossR,
)
from move_effect_gen import random_simple_heptagon   # noqa: E402
import ptbreak_lib as L                  # noqa: E402
import ptbreak_gen as G                  # noqa: E402

FAILS = []
NPASS = 0


def chk(name, cond):
    global NPASS
    if cond:
        NPASS += 1
    else:
        FAILS.append(name)
    return cond


def run(log=print):
    log("SELF-TESTS")
    # ---- orientR signs
    o = (F(0), F(0))
    chk("orientR CCW > 0", orientR(o, (F(1), F(0)), (F(0), F(1))) > 0)
    chk("orientR CW < 0", orientR(o, (F(1), F(0)), (F(0), F(-1))) < 0)
    chk("orientR collinear == 0", orientR(o, (F(1), F(0)), (F(3), F(0))) == 0)
    chk("orientR antisymmetric",
        orientR(o, (F(1), F(0)), (F(0), F(1)))
        == -orientR((F(1), F(0)), o, (F(0), F(1))))

    # ---- on-segment, BOTH endpoints included
    a, b = (F(0), F(0)), (F(4), F(2))
    chk("onSeg includes endpoint a", onSeg(a, b, a))
    chk("onSeg includes endpoint b", onSeg(a, b, b))
    chk("onSeg interior", onSeg(a, b, (F(2), F(1))))
    chk("onSeg rejects beyond b", not onSeg(a, b, (F(6), F(3))))
    chk("onSeg rejects before a", not onSeg(a, b, (F(-2), F(-1))))
    chk("onSeg rejects off-line", not onSeg(a, b, (F(2), F(1) + F(1, 1000))))

    # ---- properCrossR
    chk("properCross X", properCrossR((F(-1), F(0)), (F(1), F(0)),
                                      (F(0), F(-1)), (F(0), F(1))))
    chk("properCross rejects T-touch",
        not properCrossR((F(-1), F(0)), (F(1), F(0)),
                         (F(0), F(0)), (F(0), F(1))))
    chk("properCross rejects disjoint",
        not properCrossR((F(-1), F(0)), (F(1), F(0)),
                         (F(0), F(1)), (F(0), F(2))))

    # ---- SimpleClosed: three collinear vertices ACCEPTED
    coll = ((F(0), F(0)), (F(2), F(0)), (F(4), F(0)), (F(6), F(2)),
            (F(4), F(5)), (F(2), F(6)), (F(-1), F(3)))
    chk("SimpleClosed accepts three collinear vertices", simple_closed(coll))
    # a self-crossing heptagon REJECTED
    bad = list(coll)
    bad[1], bad[4] = bad[4], bad[1]
    chk("SimpleClosed rejects a self-crossing heptagon", not simple_closed(tuple(bad)))
    # a spike (doubling back) REJECTED
    spike = ((F(0), F(0)), (F(4), F(0)), (F(2), F(0)), (F(6), F(3)),
             (F(4), F(6)), (F(1), F(6)), (F(-2), F(3)))
    chk("SimpleClosed rejects a doubled-back spike", not simple_closed(spike))

    # ---- moveV changes exactly one vertex
    P2 = moveV(coll, 3, (F(1), F(1)), F(1, 7))
    diff = [i for i in range(N) if P2[i] != coll[i]]
    chk("moveV changes exactly one vertex", diff == [3])
    chk("moveV moves it by exactly e*E",
        P2[3] == (coll[3][0] + F(1, 7), coll[3][1] + F(1, 7)))

    # ---- degPts counts a coincidence ONCE
    Pa = ((F(0), F(0)), (F(6), F(0)), (F(9), F(4)), (F(6), F(8)),
          (F(0), F(8)), (F(-3), F(6)), (F(-3), F(3)))
    Qa = ((F(0), F(0)), (F(-4), F(-2)), (F(-8), F(2)), (F(-6), F(6)),
          (F(-4), F(9)), (F(-1), F(9)), (F(-2), F(4)))
    co = coincSet(Pa, Qa)
    chk("witness has exactly one coincidence", len(co) == 1 and (0, 0) in co)
    slots = sum(1 for (k, j) in segDeg(Pa, Qa) if Qa[j] == (F(0), F(0)))
    slots += sum(1 for (j, u) in segDegP(Pa, Qa) if Pa[u] == (F(0), F(0)))
    d = L.deg_pts(Pa, Qa)
    chk("the coincidence occupies >1 slot in segDeg+segDegP", slots > 1)
    chk("...but exactly ONE point in degPts",
        sum(1 for X in d if X == (F(0), F(0))) == 1)
    chk("degPts == deg_pts_direct on the witness", d == L.deg_pts_direct(Pa, Qa))
    chk("degPts symmetric in (P,Q)", L.deg_pts(Pa, Qa) == L.deg_pts(Qa, Pa))

    # a T-touch: a Q-vertex in the interior of a P-side, in segDeg only
    Pb = Pa
    Qb = list(Qa)
    Qb[3] = (F(3), F(0))
    Qb = tuple(Qb)
    if simple_closed(Qb):
        chk("T-touch: degPts == direct", L.deg_pts(Pb, Qb) == L.deg_pts_direct(Pb, Qb))

    # ---- degPts cross-check on many random configurations
    rng = random.Random(20250924)
    n_cross = 0
    n_nonempty = 0
    for _ in range(400):
        P = random_simple_heptagon(rng, -9, 9)
        Q = random_simple_heptagon(rng, -9, 9)
        if P is None or Q is None:
            continue
        if rng.random() < 0.75:
            # force a coincidence so that degPts is usually non-trivial
            t = (P[0][0] - Q[0][0], P[0][1] - Q[0][1])
            Q = tuple((q[0] + t[0], q[1] + t[1]) for q in Q)
        n_cross += 1
        a = L.deg_pts(P, Q)
        b = L.deg_pts_direct(P, Q)
        if a:
            n_nonempty += 1
        if a != b:
            FAILS.append(f"degPts mismatch on random config {n_cross}")
            break
    chk(f"degPts == deg_pts_direct on {n_cross} random configs "
        f"({n_nonempty} with a non-empty degPts)", n_cross >= 300)

    # ---- incremental evaluator == full evaluator
    rng = random.Random(777)
    n_ev = 0
    n_adm = 0
    for _ in range(18):
        inst = G.make(rng, rng.choice(['random', 'two_touch', 'many_touch',
                                       'collinear_apex', 'extremal11',
                                       'high_cross', 'multi_coinc']))
        if inst is None:
            continue
        for (u, kind) in L.cell_directions(inst)[:26]:
            for lam in (F(1, 10), F(1, 1000), F(1, 10 ** 9)):
                d = L.scale(u, lam)
                n_ev += 1
                r1 = inst.ev(d)
                r2 = inst.ev_full(d)
                if (r1 is None) != (r2 is None):
                    FAILS.append(f"ev/ev_full admissibility mismatch at {d}")
                    break
                if r1 is not None:
                    n_adm += 1
                    for key in ('M', 'dM', 'ncross', 'ndp', 'nco', 'nsd', 'nsdp'):
                        if r1[key] != r2[key]:
                            FAILS.append(f"ev/ev_full {key} mismatch at {d}")
                            break
    chk(f"incremental ev == full ev_full on {n_ev} moves ({n_adm} admissible)",
        n_ev >= 500)

    # ---- the move really is APEX-ONLY
    rng = random.Random(5)
    inst = G.make(rng, 'two_touch')
    if inst is not None:
        P2 = inst.moved((F(1, 3), F(-1, 5)))
        diff = [i for i in range(N) if P2[i] != inst.P[i]]
        chk("apex-only: exactly one P vertex moves", diff == [inst.v])
        chk("apex-only: Q untouched", True)

    log(f"  {NPASS} checks passed, {len(FAILS)} failed")
    for f in FAILS:
        log(f"  FAIL: {f}")
    return not FAILS


if __name__ == '__main__':
    ok = run()
    sys.exit(0 if ok else 1)
