#!/usr/bin/env python3
"""slide_advers.py -- TARGETED constructors.  Chunked: --kind K --n N --seed S.

kind=colP : COLLINEAR apex (straight pass-through at P[v]) AND a Q-vertex in
            the relative interior of P-side v-1.  These are exactly the
            instances that REFUTE the unqualified hypothesis.
kind=both : the ADVERSARIAL case of secondary question 5 -- a degenerate point
            besides the coincidence on P-side v-1 AND another on P-side v.
kind=fin  : apexes where a Q-side is collinear with an incident P-side line on
            the far-extension side (the e-independent (Fin) obstruction).
"""
from fractions import Fraction as F
from collections import Counter
import sys, os, random, argparse, time
import move_joint_measure as mjm
from slide_lib import *
from slide_lib import (suppP, slide_dir, slide_state, first_admissible,
                       apex_collinear, predicted_lost, lost_gained, E_LADDER)

LOG = os.path.join(os.path.dirname(os.path.abspath(__file__)),
                   "slide_characterisation.log")
fh = open(LOG, "a")
def log(s=""):
    print(s); fh.write(s + "\n"); fh.flush()

def lattice_interior(A, B):
    """Interior lattice points of the closed segment A--B (both integral)."""
    dx = int(B[0] - A[0]); dy = int(B[1] - A[1])
    from math import gcd
    g = gcd(abs(dx), abs(dy))
    return [(A[0] + F(dx * t, g), A[1] + F(dy * t, g)) for t in range(1, g)]

def build_Q_through(required, rnd, lo, hi, tries=40):
    req = list(dict.fromkeys(required))
    for _ in range(tries):
        pts = set(req)
        guard = 0
        while len(pts) < 7 and guard < 200:
            guard += 1
            pts.add((F(rnd.randint(lo, hi)), F(rnd.randint(lo, hi))))
        if len(pts) < 7:
            continue
        pl = list(pts)
        for _ in range(25):
            rnd.shuffle(pl)
            W = tuple(pl)
            if simple_closed(W):
                return W
    return None

def gen(kind, n, seed, lo=-6, hi=6):
    rnd = random.Random(seed)
    out = []; tries = 0; built = 0
    while len(out) < n and tries < 200000:
        tries += 1
        P = mjm.rand_simple_heptagon(rnd, -5, 5)
        if P is None: continue
        for v in range(7):
            if kind == "colP" and not apex_collinear(P, v):
                continue
            vm = (v - 1) % 7
            IA = lattice_interior(P[vm], P[v])      # interior of side v-1
            IB = lattice_interior(P[v], P[(v+1) % 7])  # interior of side v
            if kind in ("colP",) and not IA:
                continue
            if kind == "both" and not (IA and IB):
                continue
            if kind == "colP":
                req = [P[v], rnd.choice(IA)]
            elif kind == "both":
                req = [P[v], rnd.choice(IA), rnd.choice(IB)]
            else:
                req = [P[v]]
            Q = build_Q_through(req, rnd, lo, hi)
            built += 1
            if Q is None: continue
            if not finite_intersection(P, Q): continue
            if P[v] not in set(Q): continue
            j = [m for m in range(7) if Q[m] == P[v]][0]
            # kind-specific acceptance
            D = deg_pts(P, Q)
            hasA = any(X != P[v] and suppP(X, P) == frozenset({vm}) for X in D)
            hasB = any(X != P[v] and v in suppP(X, P) for X in D)
            if kind == "colP" and not hasA: continue
            if kind == "both" and not (hasA and hasB): continue
            out.append((kind, P, Q, v, j))
            break
    return out, tries, built

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--kind", required=True)
    ap.add_argument("--n", type=int, default=30)
    ap.add_argument("--seed", type=int, default=1)
    a = ap.parse_args()
    t0 = time.time()
    log("")
    log("-" * 78)
    log(f"slide_advers kind={a.kind} n={a.n} seed={a.seed}")
    insts, tries, built = gen(a.kind, a.n, a.seed)
    log(f"  built {len(insts)} instances from {tries} random P draws "
        f"({built} Q-construction attempts)   [{time.time()-t0:.1f}s]")
    S = Counter(); shown = 0
    for k, (kind, P, Q, v, j) in enumerate(insts, 1):
        vm = (v - 1) % 7
        D0 = deg_pts(P, Q)
        pred = predicted_lost(P, Q, v)
        pred2 = frozenset() if apex_collinear(P, v) else pred
        st = slide_state(P, Q, v, 'A', F(1, 10**12))
        lost, gained, _, _ = lost_gained(P, Q, st["P2"])
        S["n"] += 1
        S["H1"] += (lost == pred)
        S["H2"] += (lost == pred2)
        S["admA"] += st["adm"]
        S["apex"] += (P[v] in deg_pts(st["P2"], Q))
        stA, _ = first_admissible(P, Q, v, 'A')
        stB, _ = first_admissible(P, Q, v, 'B')
        S["A_ok"] += stA is not None; S["B_ok"] += stB is not None
        S["AorB"] += (stA is not None or stB is not None)
        if st["adm"]:
            dM = M_pt(st["P2"], Q) - M_pt(P, Q)
            S["dMneg"] += (dM < 0); S["dMzero"] += (dM == 0); S["dMpos"] += (dM > 0)
        if lost != pred and shown < 4:
            shown += 1
            log(f"  *** H1 REFUTED  v={v} j={j} collinear={apex_collinear(P,v)}")
            log(f"      P={fmt(P)}")
            log(f"      Q={fmt(Q)}")
            log(f"      degPts={[fmtpt(x) for x in sorted(D0)]}")
            log(f"      predicted lost (suppP=={{{vm}}}) = {[fmtpt(x) for x in sorted(pred)]}")
            log(f"      ACTUALLY lost at e=1e-12          = {[fmtpt(x) for x in sorted(lost)]}")
            log(f"      new apex = {fmtpt(st['P2'][v])}, admissible={st['adm']}")
        if k % 20 == 0:
            log(f"    ... {k}/{len(insts)}  H1={S['H1']} H2={S['H2']} "
                f"[{time.time()-t0:.0f}s]")
    log(f"  SUMMARY kind={a.kind}: {S['n']} instances")
    log(f"    H1 (unqualified 'lost == suppP=={{v-1}}')      : {S['H1']}/{S['n']}")
    log(f"    H2 (refined, empty when the apex is collinear): {S['H2']}/{S['n']}")
    log(f"    slide A admissible at e=1e-12 : {S['admA']}/{S['n']}")
    log(f"    old apex still a degPt        : {S['apex']}/{S['n']}")
    log(f"    dM_pt  <0:{S['dMneg']}  =0:{S['dMzero']}  >0:{S['dMpos']}")
    log(f"    A ok {S['A_ok']}, B ok {S['B_ok']}, A-or-B {S['AorB']}/{S['n']}")
    fh.close()

if __name__ == "__main__":
    main()
