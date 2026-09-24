"""move_effect_extra.py -- four dedicated, large studies that back the verdicts.

  E1  how often a random simple pair even carries the claim-B mechanism
  E2  the CLAIM C three-case characterisation, at scale
  E3  CLAIM D on the family where (Fin) is actually at risk
  E4  the corrected recipe: choose E off the finitely many bad lines and check
      A, B, C(corrected) and D all at once

Appends to move_effect_report.log.
"""

import random
from fractions import Fraction as F

from move_effect_lib import (N, orientR, cross, dot, sub, smul, onSeg,
                             simple_closed, moveV, segDeg, segDegP, lineDeg,
                             finite_boundary_intersection, seg_inter)
import move_effect_gen as G

OUT = []


def log(*a):
    s = " ".join(str(x) for x in a)
    print(s)
    OUT.append(s)


GRID3 = [(F(a), F(b)) for a in range(-3, 4) for b in range(-3, 4) if (a, b) != (0, 0)]
GRID5 = [(F(a), F(b)) for a in range(-5, 6) for b in range(-5, 6) if (a, b) != (0, 0)]
SM = [F(1, 10**6), F(-1, 10**6), F(1, 10**15), F(-1, 10**15)]


def e1():
    log("")
    log("=" * 78)
    log("E1 -- is the CLAIM B mechanism even reachable?  (Q-vertex on an INCIDENT")
    log("      P-side LINE but strictly OFF the segment -- the only way a new")
    log("      degeneracy can ever be created)")
    log("=" * 78)
    rng = random.Random(4242)
    n = withline = withoff = 0
    while n < 400:
        pr = G.random_pair(rng, spread=6)
        if pr is None:
            continue
        P, Q = pr
        n += 1
        i = rng.randrange(N)
        inc = {i, (i - 1) % N}
        ld, sd = lineDeg(P, Q), segDeg(P, Q)
        if any(k in inc for (k, j) in ld):
            withline += 1
        if [(k, j) for (k, j) in ld if k in inc and (k, j) not in sd]:
            withoff += 1
    log(f"    random simple pairs sampled                           : {n}")
    log(f"    with a Q-vertex on an INCIDENT P-side LINE            : {withline}")
    log(f"    with one on the line but OFF the segment (mechanism)  : {withoff}")


def e2():
    log("")
    log("=" * 78)
    log("E2 -- CLAIM C, the three-case characterisation, at scale (small e only)")
    log("=" * 78)
    log("    (a) Q[j] = the FIXED endpoint of the incident side -> survives always")
    log("    (b) cross(E, Fixed - Q[j]) != 0, i.e. E NOT parallel to the side")
    log("           -> dies for every e != 0")
    log("    (c) E parallel to the side -> dies only if Q[j] = P[i] and e*E points")
    log("           strictly from P[i] towards the fixed endpoint")
    log("    segDegP mirror: (b') cross(Q[j+1]-Q[j], E) != 0 -> dies;")
    log("           (c') E parallel to the Q-side -> dies only if P[i] is an")
    log("           endpoint of that Q-side and e*E points outward")
    rng = random.Random(31337)
    gens = [G.gen_incident_segDeg, G.gen_incident_segDegP,
            lambda r: G.gen_coincidence(r, 'apex'),
            lambda r: G.gen_coincidence(r, 'next'),
            lambda r: G.gen_coincidence(r, 'prev')]
    st = dict(entries=0, a=0, b=0, c=0, ma=0, mb=0, mc=0, died=0, surv=0)
    n = tries = 0
    while n < 400 and tries < 20000:
        tries += 1
        cfg = rng.choice(gens)(rng)
        if cfg is None:
            continue
        P, Q, i = cfg['P'], cfg['Q'], cfg['i']
        inc = {i, (i - 1) % N}
        sd0, sp0 = segDeg(P, Q), segDegP(P, Q)
        incsd = [x for x in sd0 if x[0] in inc]
        incsp = [x for x in sp0 if x[1] == i]
        if not incsd and not incsp:
            continue
        n += 1
        dirs = list(GRID3)
        for u in (sub(P[(i + 1) % N], P[i]), sub(P[i], P[(i - 1) % N])):
            dirs += [u, smul(F(-1), u)]
        for j in range(N):
            u = sub(Q[(j + 1) % N], Q[j])
            dirs += [u, smul(F(-1), u)]
        for E in dirs:
            if E == (0, 0):
                continue
            for e in SM:
                Pm = moveV(P, i, E, e)
                sd1, sp1 = segDeg(Pm, Q), segDegP(Pm, Q)
                for (k, j) in incsd:
                    st['entries'] += 1
                    Fx = P[(i + 1) % N] if k == i else P[(i - 1) % N]
                    M, C = P[i], Q[j]
                    W = sub(Fx, C)
                    died = (k, j) not in sd1
                    st['died' if died else 'surv'] += 1
                    if W == (0, 0):
                        st['a'] += 1
                        if died:
                            st['ma'] += 1
                    elif cross(E, W) != 0:
                        st['b'] += 1
                        if not died:
                            st['mb'] += 1
                    else:
                        st['c'] += 1
                        if (C == M and dot(smul(e, E), sub(Fx, M)) > 0) != died:
                            st['mc'] += 1
                for (j, v) in incsp:
                    st['entries'] += 1
                    u = sub(Q[(j + 1) % N], Q[j])
                    M = P[i]
                    died = (j, v) not in sp1
                    st['died' if died else 'surv'] += 1
                    if cross(u, E) != 0:
                        st['b'] += 1
                        if not died:
                            st['mb'] += 1
                    else:
                        st['c'] += 1
                        eE = smul(e, E)
                        pred = ((M == Q[j] and dot(eE, u) < 0) or
                                (M == Q[(j + 1) % N] and dot(eE, u) > 0))
                        if pred != died:
                            st['mc'] += 1
    log(f"    configurations with an incident degeneracy : {n} "
        f"(attempts {tries})")
    log(f"    incident degeneracy ENTRIES tested         : {st['entries']}")
    log(f"      destroyed {st['died']}   survived {st['surv']}")
    log(f"      case (a) {st['a']:>7}   mismatches {st['ma']}")
    log(f"      case (b) {st['b']:>7}   mismatches {st['mb']}")
    log(f"      case (c) {st['c']:>7}   mismatches {st['mc']}")


def e3():
    log("")
    log("=" * 78)
    log("E3 -- CLAIM D on the family where (Fin) is genuinely at risk")
    log("=" * 78)
    rng = random.Random(5150)
    n = tries = inst = fail = genfail = mism = risky = 0
    while n < 300 and tries < 40000:
        tries += 1
        cfg = G.gen_collinear_touch(rng)
        if cfg is None:
            continue
        P, Q, i = cfg['P'], cfg['Q'], cfg['i']
        if not finite_boundary_intersection(P, Q):
            continue
        n += 1
        inc = {i, (i - 1) % N}
        coll = [(k, j) for k in inc for j in range(N)
                if orientR(P[k], P[(k + 1) % N], Q[j]) == 0
                and orientR(P[k], P[(k + 1) % N], Q[(j + 1) % N]) == 0]
        if coll:
            risky += 1
        dirs = list(GRID3)
        for j in range(N):
            u = sub(Q[(j + 1) % N], Q[j])
            dirs += [u, smul(F(-1), u)]
        for E in dirs:
            if E == (0, 0):
                continue
            for e in SM:
                inst += 1
                Pm = moveV(P, i, E, e)
                ok = finite_boundary_intersection(Pm, Q)
                pred = False
                for (k, j) in coll:
                    u = sub(Q[(j + 1) % N], Q[j])
                    if cross(E, u) != 0:
                        continue
                    r = seg_inter(Pm[k], Pm[(k + 1) % N], Q[j], Q[(j + 1) % N])
                    if r is not None and r[0] == 'seg':
                        pred = True
                if not ok:
                    fail += 1
                    if all(cross(E, sub(Q[(j + 1) % N], Q[j])) != 0
                           for (k, j) in coll):
                        genfail += 1
                if pred != (not ok):
                    mism += 1
    log(f"    collinear-touch configurations built : {n} (attempts {tries});"
        f" with a collinear incident pair: {risky}")
    log(f"    instances at small e                 : {inst}")
    log(f"    (Fin) DESTROYED at small e           : {fail}")
    log(f"      of those, with E NOT parallel to any collinear Q-side : {genfail}")
    log(f"    mismatches vs 'E parallel to that Q-side and sliding INTO it': {mism}")


def e4():
    log("")
    log("=" * 78)
    log("E4 -- the corrected recipe, all four claims at once")
    log("=" * 78)
    log("    choose E with cross(E,u) != 0 for u = P[i+1]-P[i], u = P[i]-P[i-1],")
    log("    and u = Q[j+1]-Q[j] for every j; then test A, B, C(corrected), D")
    log("    at |e| in {1e-6, 1e-15, 1e-30}, both signs.")
    rng = random.Random(20260924)
    smx = [F(1, 10**6), F(-1, 10**6), F(1, 10**15), F(-1, 10**15),
           F(1, 10**30), F(-1, 10**30)]
    gens = [G.gen_incident_segDeg, G.gen_incident_segDegP,
            lambda r: G.gen_coincidence(r, 'apex'),
            lambda r: G.gen_coincidence(r, 'next'),
            lambda r: G.gen_coincidence(r, 'prev'),
            G.gen_collinear_touch]
    tot = nA = nB = nC = nD = n = tries = nocand = obstructed = 0
    while n < 300 and tries < 40000:
        tries += 1
        cfg = rng.choice(gens)(rng)
        if cfg is None:
            continue
        P, Q, i = cfg['P'], cfg['Q'], cfg['i']
        inc = {i, (i - 1) % N}
        sd0, sp0 = segDeg(P, Q), segDegP(P, Q)
        incsd = [x for x in sd0 if x[0] in inc]
        incsp = [x for x in sp0 if x[1] == i]
        if not incsd and not incsp:
            continue
        fin0 = finite_boundary_intersection(P, Q)
        n += 1
        bad = [sub(P[(i + 1) % N], P[i]), sub(P[i], P[(i - 1) % N])] + \
              [sub(Q[(j + 1) % N], Q[j]) for j in range(N)]
        good = [E for E in GRID5
                if all(cross(E, u) != 0 for u in bad if u != (0, 0))]
        if not good:
            nocand += 1
            continue
        exempt = {(k, j) for (k, j) in incsd
                  if (k == i and Q[j] == P[(i + 1) % N])
                  or (k == (i - 1) % N and Q[j] == P[(i - 1) % N])}
        if exempt:
            obstructed += 1
        for E in good[:25]:
            for e in smx:
                tot += 1
                Pm = moveV(P, i, E, e)
                sd1, sp1 = segDeg(Pm, Q), segDegP(Pm, Q)
                if (frozenset(x for x in sd0 if x[0] not in inc) !=
                        frozenset(x for x in sd1 if x[0] not in inc)) or \
                   (frozenset(x for x in sp0 if x[1] != i) !=
                        frozenset(x for x in sp1 if x[1] != i)):
                    nA += 1
                if (sd1 - sd0) or (sp1 - sp0):
                    nB += 1
                if any(x in sd1 for x in incsd if x not in exempt) or \
                   any(x in sp1 for x in incsp):
                    nC += 1
                if fin0 and not finite_boundary_intersection(Pm, Q):
                    nD += 1
    log(f"    configurations with an incident degeneracy        : {n} "
        f"(attempts {tries})")
    log(f"      carrying the unconditional claim-C obstruction  : {obstructed}")
    log(f"      with no good direction in the 120-point grid    : {nocand}")
    log(f"    instances tested                                  : {tot}")
    log(f"      claim A violations                              : {nA}")
    log(f"      claim B violations                              : {nB}")
    log(f"      claim C (corrected, exempting Q[j]=P[i+-1])     : {nC}")
    log(f"      claim D violations                              : {nD}")


def main():
    log("")
    log("#" * 78)
    log("# DEDICATED LARGE STUDIES")
    log("#" * 78)
    e1()
    e2()
    e3()
    e4()
    with open("move_effect_report.log", "a") as fh:
        fh.write("\n".join(OUT) + "\n")


if __name__ == "__main__":
    main()
