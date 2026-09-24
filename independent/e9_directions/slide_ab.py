#!/usr/bin/env python3
"""slide_ab.py -- the JOINT A/B question, chunked.
    --fam mix|both|colP   --n N   --chunk K
For every instance: slide A and slide B at e=1e-12 (and, for admissibility,
the whole ladder down to 1e-12), their admissibility, dM_pt, dDegPts, dCross.
Reports how often SOME admissible slide has dM_pt >= 0.
"""
from fractions import Fraction as F
from collections import Counter
import sys, os, argparse, time, random
import move_joint_measure as mjm
import pt_measure_check as ptm
from slide_lib import *
from slide_lib import (suppP, slide_dir, slide_state, first_admissible,
                       apex_collinear, predicted_lost, lost_gained, E_LADDER)
import slide_advers as adv

LOG = os.path.join(os.path.dirname(os.path.abspath(__file__)),
                   "slide_characterisation.log")
fh = open(LOG, "a")
def log(s=""):
    print(s); fh.write(s + "\n"); fh.flush()

SMALL = F(1, 10**12)

def one_side(P, Q, v, which):
    """Small-e outcome plus ladder admissibility for one slide."""
    st = slide_state(P, Q, v, which, SMALL)
    lost, gained, D0, D1 = lost_gained(P, Q, st["P2"])
    c0 = len(cross_pairs(P, Q)); c1 = len(cross_pairs(st["P2"], Q))
    dM = (c1 + len(D1)) - (c0 + len(D0))
    stL, rs = first_admissible(P, Q, v, which)
    return dict(adm_small=st["adm"], adm_any=stL is not None, dM=dM,
                dD=len(D1) - len(D0), dC=c1 - c0, reasons=rs, st=st)

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--fam", default="mix")
    ap.add_argument("--n", type=int, default=300)
    ap.add_argument("--chunk", type=int, default=1)
    a = ap.parse_args()
    t0 = time.time(); seed = 7778881 * a.chunk + 3
    log(""); log("-" * 78)
    log(f"slide_ab fam={a.fam} n={a.n} chunk={a.chunk} seed={seed}")
    if a.fam == "mix":
        t = max(1, a.n // 4)
        insts0, _c, _s = ptm.generate(lambda s: None,
            {"plain": t, "hardP": t, "hardN": t, "hardM": t}, seed, 60000)
        insts = [(tg, P, Q, v, j) for (tg, P, Q, v, j, f) in insts0]
    else:
        insts, tries, built = adv.gen(a.fam, a.n, seed)
        log(f"  built from {tries} P draws")
    log(f"  corpus {len(insts)}  [{time.time()-t0:.1f}s]")
    S = Counter(); bad = []
    for k, (tg, P, Q, v, j) in enumerate(insts, 1):
        A = one_side(P, Q, v, 'A'); B = one_side(P, Q, v, 'B')
        S["n"] += 1
        S["A_adm"] += A["adm_any"]; S["B_adm"] += B["adm_any"]
        S["AorB_adm"] += (A["adm_any"] or B["adm_any"])
        S["neither"] += not (A["adm_any"] or B["adm_any"])
        okA = A["adm_small"] and A["dM"] >= 0
        okB = B["adm_small"] and B["dM"] >= 0
        S["A_ok_nondec"] += okA; S["B_ok_nondec"] += okB
        S["some_ok_nondec"] += (okA or okB)
        if A["adm_small"]:
            S["A_admS"] += 1
            S["A_dMneg"] += (A["dM"] < 0)
        if B["adm_small"]:
            S["B_admS"] += 1
            S["B_dMneg"] += (B["dM"] < 0)
        if A["adm_small"] and A["dM"] < 0:
            S["Aneg_Bsaves"] += okB
            if not okB and len(bad) < 6:
                bad.append(("A<0 and B does not save", tg, P, Q, v, j, A, B))
        if not (okA or okB) and len(bad) < 10:
            bad.append(("no admissible non-decreasing slide", tg, P, Q, v, j, A, B))
        if k % 50 == 0:
            log(f"    ... {k}/{len(insts)} someOK={S['some_ok_nondec']} "
                f"neither={S['neither']} [{time.time()-t0:.0f}s]")
    log(f"  SUMMARY fam={a.fam} chunk={a.chunk}: {S['n']} instances, "
        f"{time.time()-t0:.1f}s")
    log(f"    admissible somewhere on the ladder:  A {S['A_adm']}, B {S['B_adm']},"
        f"  A-or-B {S['AorB_adm']}/{S['n']}   NEITHER {S['neither']}")
    log(f"    at e=1e-12: A admissible {S['A_admS']} of which dM_pt<0 in {S['A_dMneg']};"
        f"  B admissible {S['B_admS']} of which dM_pt<0 in {S['B_dMneg']}")
    log(f"    'some slide is admissible AND M_pt-non-decreasing' : "
        f"{S['some_ok_nondec']}/{S['n']}")
    log(f"    when A is admissible but loses M_pt, B saves it in "
        f"{S['Aneg_Bsaves']}/{S['A_dMneg']}")
    for (why, tg, P, Q, v, j, A, B) in bad:
        log(f"    !! {why}  [{tg}] v={v} j={j} col={apex_collinear(P,v)}")
        log(f"       P={fmt(P)}")
        log(f"       Q={fmt(Q)}")
        log(f"       A: adm_small={A['adm_small']} adm_any={A['adm_any']} "
            f"dM={A['dM']} dDeg={A['dD']} dCross={A['dC']} fail={A['reasons']}")
        log(f"       B: adm_small={B['adm_small']} adm_any={B['adm_any']} "
            f"dM={B['dM']} dDeg={B['dD']} dCross={B['dC']} fail={B['reasons']}")
    fh.close()

if __name__ == "__main__":
    main()
