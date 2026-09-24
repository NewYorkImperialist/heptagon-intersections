#!/usr/bin/env python3
"""
slide_sweep.py -- CHUNKED sweep.  Usage:
    python3 slide_sweep.py --chunk K --n 200 [--fam mix|col|adv]
Each run generates its own corpus from seed 1000003*K+17, analyses it, prints a
progress line every 50 instances and a summary, and APPENDS to
slide_characterisation.log.  Designed to finish in well under 3 minutes.
"""
from fractions import Fraction as F
from collections import Counter
import sys, os, argparse, random, time

import move_joint_measure as mjm
import pt_measure_check as ptm
from slide_lib import *
from slide_lib import (suppP, slide_dir, slide_state, first_admissible,
                       apex_collinear, predicted_lost, lost_gained,
                       classify_degpt, E_LADDER)

HERE = os.path.dirname(os.path.abspath(__file__))
LOG = os.path.join(HERE, "slide_characterisation.log")

# the three "small enough" rungs the main question is evaluated on
SMALL_ES = [F(1, 10**8), F(1, 10**10), F(1, 10**12)]

def mklog():
    fh = open(LOG, "a")
    def log(s=""):
        print(s); fh.write(s + "\n"); fh.flush()
    return log, fh

# --------------------------------------------------------------- generators

def gen_mix(n, seed, log):
    t = max(1, n // 4)
    insts, cnt, _ = ptm.generate(lambda s: None,
        {"plain": t, "hardP": t, "hardN": t, "hardM": t}, seed, 60000)
    return insts

def gen_col(n, seed, log):
    """Instances whose APEX is a straight pass-through: P[v-1],P[v],P[v+1]
    collinear (SimpleClosed allows it; it forces P[v] to be the middle one)."""
    rnd = random.Random(seed)
    out = []; tries = 0
    while len(out) < n and tries < 400000:
        tries += 1
        P = mjm.rand_simple_heptagon(rnd, -5, 5)
        Q0 = mjm.rand_simple_heptagon(rnd, -5, 5)
        if P is None or Q0 is None: continue
        cols = [v for v in range(7) if apex_collinear(P, v)]
        if not cols: continue
        for v in cols:
            for j in range(7):
                Q = mjm.translate(Q0, (P[v][0]-Q0[j][0], P[v][1]-Q0[j][1]))
                if not (simple_closed(Q) and finite_intersection(P, Q)): continue
                if (v, j) not in coinc_set(P, Q): continue
                out.append(("col", P, Q, v, j, None))
                break
            if len(out) >= n: break
    return out

# ---------------------------------------------------------------- analysis

def analyse(P, Q, v, j):
    """Everything the main + secondary questions need, for ONE instance."""
    r = {}
    D0 = deg_pts(P, Q)
    r["nD0"] = len(D0)
    r["col"] = apex_collinear(P, v)
    pred = predicted_lost(P, Q, v)
    r["npred"] = len(pred)
    # REFINED prediction H2: nothing is lost when the apex is a straight
    # pass-through (side v-1 shrinks along its own line and side v grows by
    # exactly the same sub-segment, so the P-boundary POINT SET is unchanged).
    pred2 = frozenset() if r["col"] else pred

    # --- main question, on the three small rungs ---
    outs = []
    for e in SMALL_ES:
        st = slide_state(P, Q, v, 'A', e)
        lost, gained, _d0, _d1 = lost_gained(P, Q, st["P2"])
        outs.append((st, lost, gained))
    st0, lost0, gained0 = outs[0]
    # stability compares the LOST sets (old points) and the SIZE of the gained
    # set: the gained set can contain the moved apex itself, whose coordinates
    # depend on e by construction, so comparing it pointwise is meaningless.
    r["stable"] = all(o[1] == lost0 and len(o[2]) == len(gained0) for o in outs)
    r["adm_small_A"] = all(o[0]["adm"] for o in outs)
    r["lost"] = lost0; r["gained"] = gained0
    r["match"] = (lost0 == pred)
    r["match2"] = (lost0 == pred2)
    r["nlost"] = len(lost0); r["ngain"] = len(gained0)
    # labels of what was actually lost / of what survived though predicted
    r["lost_labels"] = Counter(classify_degpt(X, P, Q, v) for X in lost0)
    r["surv_pred_labels"] = Counter(classify_degpt(X, P, Q, v) for X in (pred - lost0))
    r["lost_unpred_labels"] = Counter(classify_degpt(X, P, Q, v) for X in (lost0 - pred))

    # --- Q2 old apex survival ---
    r["apex_survives_small"] = P[v] in deg_pts(st0["P2"], Q)

    # --- Q3 measure deltas at the small rung ---
    c0 = len(cross_pairs(P, Q)); c1 = len(cross_pairs(st0["P2"], Q))
    r["dcross"] = c1 - c0
    r["dM"] = (c1 + len(deg_pts(st0["P2"], Q))) - (c0 + len(D0))

    # --- Q4 A-or-B over the whole ladder ---
    stA, rsA = first_admissible(P, Q, v, 'A')
    stB, rsB = first_admissible(P, Q, v, 'B')
    r["A_ok"] = stA is not None; r["B_ok"] = stB is not None
    r["failreasons"] = (rsA, rsB)
    # apex survival over EVERY admissible e on the ladder, slide A
    apex_bad = []
    for e in E_LADDER:
        st = slide_state(P, Q, v, 'A', e)
        if st["adm"] and P[v] not in deg_pts(st["P2"], Q):
            apex_bad.append(e)
    r["apex_bad_es"] = apex_bad
    # M_pt non-decreasing at the FIRST admissible A (any scale)
    if stA is not None:
        r["dM_firstadm"] = M_pt(stA["P2"], Q) - (c0 + len(D0))
        r["e_firstadm"] = stA["e"]
    return r

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--chunk", type=int, required=True)
    ap.add_argument("--n", type=int, default=200)
    ap.add_argument("--fam", default="mix")
    a = ap.parse_args()
    log, fh = mklog()
    t0 = time.time()
    seed = 1000003 * a.chunk + 17
    log("")
    log("-" * 78)
    log(f"slide_sweep chunk={a.chunk} n={a.n} fam={a.fam} seed={seed}")
    gen = {"mix": gen_mix, "col": gen_col}[a.fam]
    insts = gen(a.n, seed, log)
    log(f"  corpus: {len(insts)} instances  " +
        " ".join(f"{k}={c}" for k, c in sorted(Counter(i[0] for i in insts).items()))
        + f"   (gen {time.time()-t0:.1f}s)")

    S = Counter()
    lostlab = Counter(); survpred = Counter(); lostunpred = Counter()
    joint = Counter()
    breaks = []; gaininfo = []; unstable = []; dmneg = []; noab = []
    for n, (tag, P, Q, v, jj, feat) in enumerate(insts, 1):
        r = analyse(P, Q, v, jj)
        S["n"] += 1
        S["col"] += r["col"]
        S["stable"] += r["stable"]
        S["match"] += r["match"]
        S["match2"] += r["match2"]
        if r["col"]:
            S["col_match"] += r["match"]; S["col_match2"] += r["match2"]
        else:
            S["ncol_match"] += r["match"]; S["ncol_match2"] += r["match2"]
        S["ncol"] += (not r["col"])
        S["adm_small_A"] += r["adm_small_A"]
        S["apex_surv"] += r["apex_survives_small"]
        S["apex_bad_any_e"] += (len(r["apex_bad_es"]) > 0)
        S["A_ok"] += r["A_ok"]; S["B_ok"] += r["B_ok"]
        S["AorB"] += (r["A_ok"] or r["B_ok"])
        S["gained_any"] += (r["ngain"] > 0)
        lostlab += r["lost_labels"]; survpred += r["surv_pred_labels"]
        lostunpred += r["lost_unpred_labels"]
        if r["adm_small_A"]:
            S["adm_n"] += 1
            joint[(r["nlost"], r["dcross"])] += 1
            S["dM_neg"] += (r["dM"] < 0)
            if r["dM"] < 0: dmneg.append((tag, P, Q, v, jj, r))
            S["dM_zero"] += (r["dM"] == 0)
            S["dM_pos"] += (r["dM"] > 0)
        if "dM_firstadm" in r:
            S["fa_n"] += 1
            S["fa_neg"] += (r["dM_firstadm"] < 0)
        if r["ngain"]:
            gaininfo.append((P, Q, v, jj, [fmtpt(x) for x in r["gained"]]))
        if not r["stable"]:
            unstable.append((P, Q, v, jj))
        if not r["match2"] and len(breaks) < 6:
            breaks.append((tag, P, Q, v, jj, r))
        if not (r["A_ok"] or r["B_ok"]):
            noab.append((tag, P, Q, v, jj, r))
        if n % 50 == 0:
            log(f"    ... {n}/{len(insts)}  match={S['match']}  "
                f"admA={S['adm_small_A']}  AorB={S['AorB']}  "
                f"col={S['col']}  [{time.time()-t0:.0f}s]")

    log(f"  SUMMARY chunk {a.chunk} ({a.fam}), {S['n']} instances, "
        f"{time.time()-t0:.1f}s")
    log(f"    Q1 hypothesis 'lost == {{X : suppP(X)=={{v-1}}}}' at e<=1e-8:")
    log(f"        overall            {S['match']}/{S['n']}")
    log(f"        non-collinear apex {S['ncol_match']}/{S['ncol']}")
    log(f"        COLLINEAR apex     {S['col_match']}/{S['col']}")
    log(f"    Q1' REFINED H2 'lost == (empty if apex collinear else {{X:suppP=={{v-1}}}})':")
    log(f"        overall            {S['match2']}/{S['n']}")
    log(f"        non-collinear apex {S['ncol_match2']}/{S['ncol']}")
    log(f"        COLLINEAR apex     {S['col_match2']}/{S['col']}")
    log(f"        outcome stable across e=1e-8,1e-10,1e-12: {S['stable']}/{S['n']}")
    log(f"        labels of points ACTUALLY lost   : {dict(lostlab)}")
    log(f"        predicted-lost that SURVIVED     : {dict(survpred)}")
    log(f"        lost but NOT predicted           : {dict(lostunpred)}")
    log(f"        instances with a GAINED degPt    : {S['gained_any']}")
    log(f"        instances with an UNSTABLE outcome across the 3 rungs: {S['n']-S['stable']}")
    for (P, Q, v, jj, g) in gaininfo[:4]:
        log(f"      GAIN v={v} j={jj} gained={g}")
        log(f"        P={fmt(P)}")
        log(f"        Q={fmt(Q)}")
    for (P, Q, v, jj) in unstable[:4]:
        log(f"      UNSTABLE v={v} j={jj}")
        log(f"        P={fmt(P)}")
        log(f"        Q={fmt(Q)}")
    log(f"    Q2 old apex still a degPt after small-e slide A: {S['apex_surv']}/{S['n']}"
        f"   (instances with a bad e anywhere on the ladder: {S['apex_bad_any_e']})")
    log(f"    Q3 admissible small-e slide A: {S['adm_n']}/{S['n']};"
        f"  dM_pt <0:{S['dM_neg']} =0:{S['dM_zero']} >0:{S['dM_pos']}")
    log(f"        joint (|degPts lost|, dcross) = "
        f"{dict(sorted(joint.items()))}")
    for (tag, P, Q, v, jj, r) in dmneg[:5]:
        log(f"      dM_pt<0 [{tag}] v={v} j={jj} col={r['col']} dM={r['dM']} "
            f"nlost={r['nlost']} ngain={r['ngain']} dcross={r['dcross']}")
        log(f"        P={fmt(P)}")
        log(f"        Q={fmt(Q)}")
        log(f"        lost={[fmtpt(x) for x in r['lost']]}")
    for (tag, P, Q, v, jj, r) in noab[:5]:
        log(f"      NO-A-NO-B [{tag}] v={v} j={jj} col={r['col']} "
            f"reasonsA={r['failreasons'][0]} reasonsB={r['failreasons'][1]}")
        log(f"        P={fmt(P)}")
        log(f"        Q={fmt(Q)}")
    log(f"    Q3' at the FIRST admissible e on the full ladder: "
        f"{S['fa_n']} cases, dM_pt<0 in {S['fa_neg']}")
    log(f"    Q4 A admissible {S['A_ok']}/{S['n']}, B admissible {S['B_ok']}/{S['n']},"
        f" A-or-B {S['AorB']}/{S['n']}")
    for (tag, P, Q, v, jj, r) in breaks:
        log(f"    BREAK[{tag}] v={v} j={jj} col={r['col']} match={r['match']}"
            f" A={r['A_ok']} B={r['B_ok']}")
        log(f"      P={fmt(P)}")
        log(f"      Q={fmt(Q)}")
        log(f"      predicted-lost surv={dict(r['surv_pred_labels'])} "
            f"unpredicted-lost={dict(r['lost_unpred_labels'])} "
            f"lost={[fmtpt(x) for x in r['lost']]}")
    fh.close()

if __name__ == "__main__":
    main()
