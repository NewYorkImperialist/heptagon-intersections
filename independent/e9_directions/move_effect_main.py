"""move_effect_main.py -- numerical characterisation of the APEX-ONLY move
    moveV(V, i, E, e) :  P[i] -> P[i] + e*E   (nothing else moves)
on the four set-valued measures crossPairs / segDeg / segDegP / coincSet.

Exact rational arithmetic throughout.  Run:

    python3 move_effect_main.py            # writes move_effect_report.log
"""

import sys
import random
from fractions import Fraction as F

from move_effect_lib import (N, orientR, cross, dot, sub, add, smul, onSeg,
                             simple_closed, moveV, segDeg, segDegP, coincSet,
                             crossPairs, lineDeg, lineDegP,
                             finite_boundary_intersection, fin_witnesses,
                             seg_inter)
import move_effect_gen as G
import move_effect_selftest as ST

LOGF = None


def log(*a):
    s = " ".join(str(x) for x in a)
    print(s)
    if LOGF:
        LOGF.write(s + "\n")
        LOGF.flush()


def fs(x):
    """short exact rendering of a Fraction"""
    x = F(x)
    return str(x.numerator) if x.denominator == 1 else f"{x.numerator}/{x.denominator}"


def pts(W):
    return "[" + ", ".join(f"({fs(p[0])},{fs(p[1])})" for p in W) + "]"


# ------------------------------------------------------------------ claim book

class Claim:
    def __init__(self, name, desc, expect=None):
        self.name = name
        self.desc = desc
        self.expect = expect       # 'TRUE' / 'FALSE' for the controls
        self.t = 0
        self.f = 0
        self.wit = []

    def record(self, ok, witness=None):
        if ok:
            self.t += 1
        else:
            self.f += 1
            if len(self.wit) < 4 and witness is not None:
                self.wit.append(witness)

    @property
    def verdict(self):
        if self.t + self.f == 0:
            return "VACUOUS (never tested)"
        return "TRUE" if self.f == 0 else "FALSE"

    def line(self):
        v = self.verdict
        extra = ""
        if self.expect:
            extra = "   [control: expected %s -> %s]" % (
                self.expect, "OK" if v == self.expect else "*** CONTROL BROKEN ***")
        return f"{self.name:<26} {v:<22} true={self.t:<8} false={self.f:<8}{extra}"


CLAIMS = {}


def mk(name, desc, expect=None):
    CLAIMS[name] = Claim(name, desc, expect)
    return CLAIMS[name]


# the four headline claims -- all e
A_segDeg = mk("A/segDeg (all e)", "segDeg entries with k not in {i-1,i} unchanged")
A_segDegP = mk("A/segDegP (all e)", "segDegP entries with v != i unchanged")
B_all = mk("B (all e)", "no NEW segDeg or segDegP entry")
B_small = mk("B (|e| <= 1e-6)", "no NEW segDeg or segDegP entry, small e")
C_all = mk("C (all e, all E)", "every incident segDeg/segDegP entry destroyed")
C_small = mk("C (|e| <= 1e-6, all E)", "same, small e")
C_generic = mk("C (small e, E generic)", "same, E not parallel to the relevant line")
C_generic_noF = mk("C (small e, generic, no Q=F)",
                   "same, and excluding the Q[j] = fixed-endpoint case")
D_all = mk("D (all e)", "(Fin) before => (Fin) after")
D_small = mk("D (|e| <= 1e-6)", "(Fin) before => (Fin) after, small e")
D_small_gen = mk("D (small e, E generic)", "(Fin) preserved for E off the bad rays")

# extra measures, reported for information
X_cross_mono = mk("X/crossPairs monotone",
                  "crossPairs before subset of crossPairs after (small e)")
X_coinc = mk("X/coincSet away from i", "coincSet entries with v != i unchanged")
X_lineDeg = mk("X/lineDeg away", "Lean degSetOf entries with k not in {i-1,i} unchanged")

# ---- MANDATORY controls: claims known to be FALSE
CTRL_destroy_far = mk("CTRL far-entries-destroyed",
                      "segDeg entries with k NOT in {i-1,i} are DESTROYED",
                      expect="FALSE")
CTRL_C_at_zero = mk("CTRL C-at-e=0",
                    "claim C holds at e = 0", expect="FALSE")
CTRL_A_touched_only = mk("CTRL only-side-i-touched",
                         "segDeg entries with k = i-1 are never changed",
                         expect="FALSE")
# ---- controls known to be TRUE (guards against a checker that always says no)
CTRL_identity = mk("CTRL e=0 is identity",
                   "all four measures unchanged at e = 0", expect="TRUE")
CTRL_Q_fixed = mk("CTRL Q untouched", "moveV never changes a Q vertex", expect="TRUE")


# ------------------------------------------------------------- C book-keeping

Cstat = dict(entries_segDeg=0, entries_segDegP=0,
             died=0, survived=0,
             mism_a=0, mism_b=0, mism_c=0,
             case_a=0, case_b=0, case_c=0,
             survivors_by_reason={})
Cwit = []

Bstat = dict(min_abs_e=None, witness=None, new_segDeg=0, new_segDegP=0,
             mech={})
Dwit = []
Dstat = dict(mech={})

SMALL = F(1, 10**6)


def note(d, k):
    d[k] = d.get(k, 0) + 1


# ----------------------------------------------------------------- the engine

def directions_for(P, Q, i):
    """A grid of integer directions plus every direction the theory says is
    special for this configuration."""
    ds = [(F(1), F(0)), (F(0), F(1)), (F(1), F(1)), (F(1), F(-1)),
          (F(2), F(3)), (F(-3), F(5)), (F(7), F(-2)), (F(-5), F(-11)),
          (F(13), F(4)), (F(-1), F(3))]
    ip, im = (i + 1) % N, (i - 1) % N
    for u in (sub(P[ip], P[i]), sub(P[i], P[im])):
        ds.append(u)
        ds.append(smul(F(-1), u))
    # directions from the fixed endpoint to a degenerate Q-vertex
    for (k, j) in segDeg(P, Q):
        if k == i:
            Ffix = P[ip]
        elif k == im:
            Ffix = P[im]
        else:
            continue
        w = sub(Ffix, Q[j])
        if w != (0, 0):
            ds.append(w)
            ds.append(smul(F(-1), w))
    # Q-side directions at a segDegP entry, and every Q-side direction
    for j in range(N):
        u = sub(Q[(j + 1) % N], Q[j])
        ds.append(u)
        ds.append(smul(F(-1), u))
    out = []
    seen = set()
    for d in ds:
        if d == (0, 0):
            continue
        if d in seen:
            continue
        seen.add(d)
        out.append(d)
    return out


EVALUES = [F(1), F(1, 2), F(1, 100), F(1, 10**8), F(1, 10**15)]
EVALUES = [s * v for v in EVALUES for s in (F(1), F(-1))]


def eval_instance(cfg, E, e, counters):
    P, Q, i = cfg['P'], cfg['Q'], cfg['i']
    ip, im = (i + 1) % N, (i - 1) % N
    inc = {i, im}
    Pm = moveV(P, i, E, e)

    sd, sdm = segDeg(P, Q), segDeg(Pm, Q)
    sp, spm = segDegP(P, Q), segDegP(Pm, Q)
    small = abs(e) <= SMALL

    wit = dict(P=P, Q=Q, i=i, E=E, e=e, kind=cfg['kind'])

    # ---- CLAIM A
    far_before = frozenset(x for x in sd if x[0] not in inc)
    far_after = frozenset(x for x in sdm if x[0] not in inc)
    A_segDeg.record(far_before == far_after,
                    dict(wit, detail=(far_before, far_after)))
    farP_before = frozenset(x for x in sp if x[1] != i)
    farP_after = frozenset(x for x in spm if x[1] != i)
    A_segDegP.record(farP_before == farP_after,
                     dict(wit, detail=(farP_before, farP_after)))
    counters['far_entries'] += len(far_before) + len(farP_before)

    # ---- CLAIM B
    new_sd = sdm - sd
    new_sp = spm - sp
    okB = (not new_sd) and (not new_sp)
    B_all.record(okB, dict(wit, detail=(new_sd, new_sp)))
    if small:
        B_small.record(okB, dict(wit, detail=(new_sd, new_sp)))
    if not okB:
        Bstat['new_segDeg'] += len(new_sd)
        Bstat['new_segDegP'] += len(new_sp)
        ae = abs(e)
        if Bstat['min_abs_e'] is None or ae < Bstat['min_abs_e']:
            Bstat['min_abs_e'] = ae
            Bstat['witness'] = dict(wit, detail=(new_sd, new_sp))
        for (k, j) in new_sd:
            on_line_before = orientR(P[k], P[(k + 1) % N], Q[j]) == 0
            note(Bstat['mech'],
                 ('segDeg', 'k in {i-1,i}' if k in inc else 'k FAR',
                  'was already on the side LINE' if on_line_before
                  else 'was OFF the line'))
        for (j, v) in new_sp:
            on_line_before = orientR(Q[j], Q[(j + 1) % N], P[v]) == 0
            note(Bstat['mech'],
                 ('segDegP', 'v = i' if v == i else 'v FAR',
                  'was already on the Q-side LINE' if on_line_before
                  else 'was OFF the line'))

    # ---- CLAIM C
    inc_sd = [x for x in sd if x[0] in inc]
    inc_sp = [x for x in sp if x[1] == i]
    counters['inc_entries'] += len(inc_sd) + len(inc_sp)
    if inc_sd or inc_sp:
        counters['inst_with_inc'] += 1
    survivors = [x for x in inc_sd if x in sdm] + \
                [('P',) + x for x in inc_sp if x in spm]
    okC = not survivors
    C_all.record(okC, dict(wit, detail=survivors))
    if small:
        C_small.record(okC, dict(wit, detail=survivors))

    # per-entry characterisation of C (only at small e, where "small enough"
    # is what a Lean lemma would assume)
    generic_all = True
    generic_noF = True
    for (k, j) in inc_sd:
        Cstat['entries_segDeg'] += 1
        Ffix = P[ip] if k == i else P[im]
        M = P[i]
        Cpt = Q[j]
        W = sub(Ffix, Cpt)
        died = (k, j) not in sdm
        Cstat['died' if died else 'survived'] += 1
        if W == (0, 0):
            Cstat['case_a'] += 1
            generic_all = False
            generic_noF = False
            if died:
                Cstat['mism_a'] += 1
                if len(Cwit) < 3:
                    Cwit.append(("case-a mismatch", dict(wit, entry=(k, j))))
            else:
                note(Cstat['survivors_by_reason'],
                     'segDeg: Q[j] EQUALS the fixed endpoint of the side')
        elif cross(E, W) != 0:
            Cstat['case_b'] += 1
            if not died:
                Cstat['mism_b'] += 1
                if len(Cwit) < 6:
                    Cwit.append(("case-b mismatch (E not parallel yet survived)",
                                 dict(wit, entry=(k, j))))
        else:
            Cstat['case_c'] += 1
            generic_all = False
            pred = (Cpt == M and dot(smul(e, E), sub(Ffix, M)) > 0)
            if small and pred != died:
                Cstat['mism_c'] += 1
                if len(Cwit) < 9:
                    Cwit.append(("case-c mismatch", dict(wit, entry=(k, j))))
            if not died:
                note(Cstat['survivors_by_reason'],
                     'segDeg: E parallel to the P-side line')
    for (j, v) in inc_sp:
        Cstat['entries_segDegP'] += 1
        u = sub(Q[(j + 1) % N], Q[j])
        M = P[i]
        died = (j, v) not in spm
        Cstat['died' if died else 'survived'] += 1
        if cross(u, E) != 0:
            Cstat['case_b'] += 1
            if not died:
                Cstat['mism_b'] += 1
                if len(Cwit) < 6:
                    Cwit.append(("case-b' mismatch (segDegP)",
                                 dict(wit, entry=(j, v))))
        else:
            Cstat['case_c'] += 1
            generic_all = False
            eE = smul(e, E)
            pred = ((M == Q[j] and dot(eE, u) < 0) or
                    (M == Q[(j + 1) % N] and dot(eE, u) > 0))
            if small and pred != died:
                Cstat['mism_c'] += 1
                if len(Cwit) < 9:
                    Cwit.append(("case-c' mismatch (segDegP)",
                                 dict(wit, entry=(j, v))))
            if not died:
                note(Cstat['survivors_by_reason'],
                     'segDegP: E parallel to the Q-side line')

    if small and (inc_sd or inc_sp):
        if generic_all:
            C_generic.record(okC, dict(wit, detail=survivors))
        if generic_noF and all(sub(P[ip] if k == i else P[im], Q[j]) != (0, 0)
                               for (k, j) in inc_sd):
            if generic_all:
                C_generic_noF.record(okC, dict(wit, detail=survivors))

    # ---- CLAIM D
    fin_before = finite_boundary_intersection(P, Q)
    if fin_before:
        counters['fin_before'] += 1
        fin_after = finite_boundary_intersection(Pm, Q)
        D_all.record(fin_after, dict(wit, detail=fin_witnesses(Pm, Q)))
        if small:
            D_small.record(fin_after, dict(wit, detail=fin_witnesses(Pm, Q)))
        if not fin_after:
            ws = fin_witnesses(Pm, Q)
            if len(Dwit) < 4:
                Dwit.append(dict(wit, detail=ws))
            for (k, j) in ws:
                u = sub(Q[(j + 1) % N], Q[j])
                par = (cross(E, u) == 0)
                posmult = par and dot(E, u) > 0
                note(Dstat['mech'],
                     ('k in {i-1,i}' if k in inc else 'k FAR',
                      'E || Qside' if par else 'E not || Qside',
                      'E positive multiple of Qside dir' if posmult else '-'))
            # "generic" for D: E not parallel to any Q-side that is collinear
            # with an incident P-side
            gen = True
            for j in range(N):
                u = sub(Q[(j + 1) % N], Q[j])
                for k in inc:
                    if (orientR(P[k], P[(k + 1) % N], Q[j]) == 0 and
                            orientR(P[k], P[(k + 1) % N], Q[(j + 1) % N]) == 0):
                        if cross(E, u) == 0:
                            gen = False
            if small and gen:
                D_small_gen.record(False, dict(wit, detail=ws))
        else:
            if small:
                D_small_gen.record(True)

    # ---- extras
    if small:
        X_cross_mono.record(crossPairs(P, Q) <= crossPairs(Pm, Q),
                            dict(wit, detail=(crossPairs(P, Q),
                                              crossPairs(Pm, Q))))
    cs, csm = coincSet(P, Q), coincSet(Pm, Q)
    X_coinc.record(frozenset(x for x in cs if x[0] != i) ==
                   frozenset(x for x in csm if x[0] != i), wit)
    ld, ldm = lineDeg(P, Q), lineDeg(Pm, Q)
    X_lineDeg.record(frozenset(x for x in ld if x[0] not in inc) ==
                     frozenset(x for x in ldm if x[0] not in inc), wit)

    # ---- CONTROLS
    if far_before:
        CTRL_destroy_far.record(not far_after, dict(wit, detail=far_after))
    if inc_sd or inc_sp:
        P0 = moveV(P, i, E, F(0))
        sd0, sp0 = segDeg(P0, Q), segDegP(P0, Q)
        surv0 = [x for x in inc_sd if x in sd0] + [x for x in inc_sp if x in sp0]
        CTRL_C_at_zero.record(not surv0, dict(wit, detail=surv0))
    inc_im_before = frozenset(x for x in sd if x[0] == im)
    inc_im_after = frozenset(x for x in sdm if x[0] == im)
    if inc_im_before or inc_im_after:
        CTRL_A_touched_only.record(inc_im_before == inc_im_after,
                                   dict(wit, detail=(inc_im_before,
                                                     inc_im_after)))
    # TRUE controls
    P0 = moveV(P, i, E, F(0))
    CTRL_identity.record(segDeg(P0, Q) == sd and segDegP(P0, Q) == sp and
                         coincSet(P0, Q) == cs and crossPairs(P0, Q) == crossPairs(P, Q))
    CTRL_Q_fixed.record(True)   # Q is not even an argument of moveV; structural


# ------------------------------------------------------------------- the sweep

def sweep(rng, nconfigs, gens, counters, label):
    made = 0
    tries = 0
    while made < nconfigs and tries < nconfigs * 60:
        tries += 1
        cfg = rng.choice(gens)(rng)
        if cfg is None:
            continue
        P, Q, i = cfg['P'], cfg['Q'], cfg['i']
        if not (simple_closed(P) and simple_closed(Q)):
            G.bump('post_check_rejected')
            continue
        made += 1
        counters['configs'] += 1
        counters['by_kind'][cfg['kind']] = counters['by_kind'].get(cfg['kind'], 0) + 1
        if any(k in {i, (i - 1) % N} for (k, j) in segDeg(P, Q)) or \
           any(v == i for (j, v) in segDegP(P, Q)):
            counters['configs_with_inc'] += 1
            counters['by_kind_inc'][cfg['kind']] = \
                counters['by_kind_inc'].get(cfg['kind'], 0) + 1
        Es = directions_for(P, Q, i)
        for E in Es:
            for e in EVALUES:
                counters['instances'] += 1
                eval_instance(cfg, E, e, counters)
    log(f"  [{label}] configurations built: {made} (attempts {tries})")


def main():
    global LOGF
    LOGF = open("move_effect_report.log", "w")
    log("move_effect_main.py -- apex-only move, exact rational characterisation")
    log("repo: heptagon-intersections, dir independent/e9_directions")
    log("")

    if not ST.run(log):
        log("ABORTING: primitive self-tests failed.")
        sys.exit(1)

    rng = random.Random(20260923)
    counters = dict(configs=0, instances=0, inc_entries=0, far_entries=0,
                    inst_with_inc=0, configs_with_inc=0, fin_before=0,
                    by_kind={}, by_kind_inc={})

    log("=" * 78)
    log("SWEEP")
    log("=" * 78)
    sweep(rng, 120, [G.gen_plain], counters, "plain random pairs")
    sweep(rng, 240, [G.gen_incident_segDeg], counters, "deliberate incident segDeg")
    sweep(rng, 200, [G.gen_incident_segDegP], counters, "deliberate segDegP at P[i]")
    sweep(rng, 90, [lambda r: G.gen_coincidence(r, 'apex')], counters,
          "coincidence Q[j] = P[i]")
    sweep(rng, 90, [lambda r: G.gen_coincidence(r, 'next')], counters,
          "coincidence Q[j] = P[i+1]")
    sweep(rng, 90, [lambda r: G.gen_coincidence(r, 'prev')], counters,
          "coincidence Q[j] = P[i-1]")
    sweep(rng, 90, [G.gen_collinear_touch], counters,
          "Q-side collinear with P-side i, touching at P[i]")

    log("")
    log("=" * 78)
    log("NON-VACUITY")
    log("=" * 78)
    log(f"configurations                       : {counters['configs']}")
    log(f"instances (config x E x e)           : {counters['instances']}")
    log(f"configurations carrying an INCIDENT degeneracy "
        f"(segDeg k in {{i-1,i}}, or segDegP v=i): {counters['configs_with_inc']}")
    log(f"instances carrying an INCIDENT degeneracy : {counters['inst_with_inc']}")
    log(f"incident degeneracy ENTRIES examined      : {counters['inc_entries']}")
    log(f"far (non-incident) entries examined       : {counters['far_entries']}")
    log(f"instances with (Fin) true before the move : {counters['fin_before']}")
    log("")
    log("configurations by generator:")
    for k, v in sorted(counters['by_kind'].items()):
        log(f"    {k:<28} {v:>6}   (with an incident degeneracy: "
            f"{counters['by_kind_inc'].get(k, 0)})")
    log("")
    log("generator rejections (simplicity / finiteness re-checks that failed):")
    for k, v in sorted(G.STATS.items()):
        log(f"    {k:<32} {v:>7}")

    log("")
    log("=" * 78)
    log("VERDICTS")
    log("=" * 78)
    for c in CLAIMS.values():
        log(c.line())

    log("")
    log("=" * 78)
    log("CLAIM C -- per-entry characterisation")
    log("=" * 78)
    log(f"incident segDeg  entries examined : {Cstat['entries_segDeg']}")
    log(f"incident segDegP entries examined : {Cstat['entries_segDegP']}")
    log(f"  destroyed by the move           : {Cstat['died']}")
    log(f"  SURVIVED the move               : {Cstat['survived']}")
    log("")
    log("case split used for the characterisation:")
    log(f"  (a) Q[j] equals the FIXED endpoint of the side  : {Cstat['case_a']}"
        f"   mismatches {Cstat['mism_a']}")
    log(f"  (b) E NOT parallel to the relevant line         : {Cstat['case_b']}"
        f"   mismatches {Cstat['mism_b']}")
    log(f"  (c) E parallel to the relevant line             : {Cstat['case_c']}"
        f"   mismatches {Cstat['mism_c']} (small e only)")
    log("")
    log("reasons an incident degeneracy survived:")
    for k, v in sorted(Cstat['survivors_by_reason'].items()):
        log(f"    {k:<58} {v:>7}")
    if Cwit:
        log("")
        log("characterisation mismatches (should be none):")
        for tag, w in Cwit:
            log(f"  {tag}: i={w['i']} E=({fs(w['E'][0])},{fs(w['E'][1])}) "
                f"e={fs(w['e'])} entry={w['entry']}")
            log(f"    P={pts(w['P'])}")
            log(f"    Q={pts(w['Q'])}")

    log("")
    log("=" * 78)
    log("CLAIM B -- where a NEW degeneracy came from")
    log("=" * 78)
    log(f"new segDeg entries created (total)  : {Bstat['new_segDeg']}")
    log(f"new segDegP entries created (total) : {Bstat['new_segDegP']}")
    if Bstat['min_abs_e'] is not None:
        log(f"SMALLEST |e| at which a NEW degeneracy was ever seen: "
            f"{fs(Bstat['min_abs_e'])}")
        w = Bstat['witness']
        log(f"  witness: kind={w['kind']} i={w['i']} "
            f"E=({fs(w['E'][0])},{fs(w['E'][1])}) e={fs(w['e'])}")
        log(f"    P={pts(w['P'])}")
        log(f"    Q={pts(w['Q'])}")
        log(f"    new segDeg={sorted(w['detail'][0])} "
            f"new segDegP={sorted(w['detail'][1])}")
    else:
        log("no NEW degeneracy was ever created, at any tested e")
    log("mechanism taxonomy:")
    for k, v in sorted(Bstat['mech'].items(), key=lambda kv: str(kv[0])):
        log(f"    {str(k):<72} {v:>7}")

    log("")
    log("=" * 78)
    log("CLAIM D -- how (Fin) was destroyed")
    log("=" * 78)
    log("mechanism taxonomy:")
    for k, v in sorted(Dstat['mech'].items(), key=lambda kv: str(kv[0])):
        log(f"    {str(k):<72} {v:>7}")
    for w in Dwit:
        log(f"  counterexample: kind={w['kind']} i={w['i']} "
            f"E=({fs(w['E'][0])},{fs(w['E'][1])}) e={fs(w['e'])} "
            f"new overlaps {w['detail']}")
        log(f"    P={pts(w['P'])}")
        log(f"    Q={pts(w['Q'])}")
        Pm = moveV(w['P'], w['i'], w['E'], w['e'])
        log(f"    P moved={pts(Pm)}")

    log("")
    log("=" * 78)
    log("COUNTEREXAMPLES (first few per failing claim)")
    log("=" * 78)
    for c in CLAIMS.values():
        if c.f and c.wit:
            log("")
            log(f"--- {c.name}: {c.desc}   ({c.f} failures)")
            for w in c.wit[:2]:
                log(f"  kind={w['kind']} i={w['i']} "
                    f"E=({fs(w['E'][0])},{fs(w['E'][1])}) e={fs(w['e'])}")
                log(f"    P={pts(w['P'])}")
                log(f"    Q={pts(w['Q'])}")
                log(f"    detail={w.get('detail')}")

    LOGF.close()


if __name__ == "__main__":
    main()
