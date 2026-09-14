#!/usr/bin/env python3
"""
Search for an ACTUAL geometric realisation (exact rational coordinates) of the
local 8-side configuration of AKR Lemma 7 with a prescribed hooking status.

Two independent engines:

  engine "z3real" : encode the 12 endpoints as 24 real variables and hand the
                    semialgebraic system to z3's nonlinear real arithmetic.
                    UNSAT here is a proof over the reals; SAT gives a rational
                    witness which is then re-verified with exact Fractions.

  engine "anneal" : randomised local search over floating-point coordinates
                    (heuristic only, NEVER used as evidence), whose output is
                    snapped to integers and re-verified exactly.  Only an
                    exactly-verified integer configuration is reported.

Usage:  python3 realize_search.py <variant> <status> [engine] [restarts]
        variant in generic|P-adj|Q-adj|PQ-adj
        status  in none|mixed-1|mixed-2|both-hooking|both-hooked
"""
import sys, math, random, json
from fractions import Fraction

# ---------------------------------------------------------------- the pattern
# point order: 0 v1, 1 a2, 2 b2, 3 v2, 4 ap2, 5 bp2, 6 v3, 7 A2, 8 B2,
#              9 v4, 10 Ap2, 11 Bp2
PTS = ["v1", "a2", "b2", "v2", "ap2", "bp2", "v3", "A2", "B2", "v4", "Ap2", "Bp2"]

def make_pattern(variant):
    ident = {}
    if variant in ("P-adj", "PQ-adj"):
        ident["ap2"] = "b2"
    if variant in ("Q-adj", "PQ-adj"):
        ident["Ap2"] = "B2"
    nm = lambda p: ident.get(p, p)
    names = []
    for p in PTS:
        q = nm(p)
        if q not in names:
            names.append(q)
    ix = {n: i for i, n in enumerate(names)}
    seg = {"a":  (ix[nm("v1")],  ix[nm("a2")]),
           "b":  (ix[nm("v1")],  ix[nm("b2")]),
           "ap": (ix[nm("v2")],  ix[nm("ap2")]),
           "bp": (ix[nm("v2")],  ix[nm("bp2")]),
           "A":  (ix[nm("v3")],  ix[nm("A2")]),
           "B":  (ix[nm("v3")],  ix[nm("B2")]),
           "Ap": (ix[nm("v4")],  ix[nm("Ap2")]),
           "Bp": (ix[nm("v4")],  ix[nm("Bp2")])}
    P = ["a", "b", "ap", "bp"]; Q = ["A", "B", "Ap", "Bp"]
    ED = {("a", "A"), ("b", "B"), ("ap", "Ap"), ("bp", "Bp")}
    want = {}
    for x in P:
        for y in Q:
            want[(x, y)] = ((x, y) not in ED)
    for x, y in [("a","ap"),("a","bp"),("b","ap"),("b","bp"),
                 ("A","Ap"),("A","Bp"),("B","Ap"),("B","Bp")]:
        want[(x, y)] = False
    if variant in ("P-adj", "PQ-adj"):
        want[("b", "ap")] = True      # b and a' are adjacent sides of P
    if variant in ("Q-adj", "PQ-adj"):
        want[("B", "Ap")] = True      # B and A' are adjacent sides of Q
    # pairs that share an endpoint are automatically intersecting and are
    # dropped from the constraint list (the adjacency variants).
    pairs = []
    forced = []
    for (x, y), v in sorted(want.items()):
        if set(seg[x]) & set(seg[y]):
            forced.append((x, y, v))
            assert v is True, "variant %s: %s-%s share a vertex but must be disjoint" % (variant, x, y)
            continue
        pairs.append((x, y, v))
    return names, seg, pairs, forced

def cone_goals(seg, status):
    """list of (apex, s2, t2, x) meaning x must lie in Cone(apex; s2, t2)."""
    v1, a2 = seg["a"]; _, b2 = seg["b"]
    v2, ap2 = seg["ap"]; _, bp2 = seg["bp"]
    v3, A2 = seg["A"]; _, B2 = seg["B"]
    v4, Ap2 = seg["Ap"]; _, Bp2 = seg["Bp"]
    hooking1 = (v1, a2, b2, v3)
    hooking2 = (v2, ap2, bp2, v4)
    hooked1 = (v3, A2, B2, v1)
    hooked2 = (v4, Ap2, Bp2, v2)
    return {"none": [], "mixed-1": [hooking1, hooked2],
            "mixed-2": [hooked1, hooking2],
            "both-hooking": [hooking1, hooking2],
            "both-hooked": [hooked1, hooked2]}[status]

# ---------------------------------------------------------------- exact check
def det_e(p, q, r):
    return (q[0]-p[0])*(r[1]-p[1]) - (q[1]-p[1])*(r[0]-p[0])

def sgn(x):
    return (x > 0) - (x < 0)

def cross_e(pts, s, t):
    p, q = pts[s[0]], pts[s[1]]; r, w = pts[t[0]], pts[t[1]]
    d1, d2 = det_e(p, q, r), det_e(p, q, w)
    d3, d4 = det_e(r, w, p), det_e(r, w, q)
    if 0 in (d1, d2, d3, d4):
        return None                                  # degenerate
    return sgn(d1) != sgn(d2) and sgn(d3) != sgn(d4)

def in_cone_e(pts, v, s2, t2, x):
    V, S, T, X = pts[v], pts[s2], pts[t2], pts[x]
    d1, d2 = det_e(V, S, X), det_e(V, S, T)
    d3, d4 = det_e(V, T, X), det_e(V, T, S)
    if 0 in (d1, d2, d3, d4):
        return None
    return sgn(d1) == sgn(d2) and sgn(d3) == sgn(d4)

def verify_exact(pts, seg, pairs, cones):
    """pts: list of (int|Fraction, int|Fraction).  Returns (ok, report)."""
    rep = []
    ok = True
    for x, y, v in pairs:
        c = cross_e(pts, seg[x], seg[y])
        good = (c is v)
        ok &= good
        rep.append(("cross" if v else "disjoint", x, y, c, good))
    for (v, s2, t2, xx) in cones:
        c = in_cone_e(pts, v, s2, t2, xx)
        ok &= (c is True)
        rep.append(("cone", v, s2, t2, xx, c, c is True))
    return ok, rep

# ---------------------------------------------------------------- engine: z3
def run_z3(variant, status, timeout_ms=600000):
    from z3 import Real, RealVal, Solver, And, Or, Not, sat, unsat, set_param
    names, seg, pairs, forced = make_pattern(variant)
    n = len(names)
    X = [Real("x%d" % i) for i in range(n)]
    Y = [Real("y%d" % i) for i in range(n)]
    s = Solver(); s.set("timeout", timeout_ms)
    # frame: v1 = (0,0), a2 = (1,0).  All predicates are invariant under
    # orientation preserving similarities and under reflection, so this is WLOG.
    s.add(X[0] == 0, Y[0] == 0, X[1] == 1, Y[1] == 0)
    D = lambda p, q, r: ((X[q]-X[p])*(Y[r]-Y[p]) - (Y[q]-Y[p])*(X[r]-X[p]))
    def crossing(sg, tg):
        p, q = sg; r, w = tg
        return And(D(p, q, r)*D(p, q, w) < 0, D(r, w, p)*D(r, w, q) < 0)
    for x, y, v in pairs:
        c = crossing(seg[x], seg[y])
        s.add(c if v else Not(c))
    for (v, s2, t2, xx) in cone_goals(seg, status):
        s.add(D(v, s2, xx)*D(v, s2, t2) > 0)
        s.add(D(v, t2, xx)*D(v, t2, s2) > 0)
    r = s.check()
    if r == sat:
        m = s.model()
        pts = []
        for i in range(n):
            def val(e):
                v = m.evaluate(e, model_completion=True)
                try:
                    return Fraction(v.numerator_as_long(), v.denominator_as_long())
                except Exception:
                    return None
            pts.append((val(X[i]), val(Y[i])))
        if any(a is None or b is None for a, b in pts):
            return "sat-irrational", None
        ok, rep = verify_exact(pts, seg, pairs, cone_goals(seg, status))
        return ("sat-verified" if ok else "sat-UNVERIFIED"), pts
    return str(r), None

# ------------------------------------------------------- engine: local search
def run_anneal(variant, status, restarts=4000, iters=4000, seed=1):
    names, seg, pairs, forced = make_pattern(variant)
    n = len(names)
    cones = cone_goals(seg, status)
    rnd = random.Random(seed)

    def detf(P, p, q, r):
        return (P[q][0]-P[p][0])*(P[r][1]-P[p][1]) - (P[q][1]-P[p][1])*(P[r][0]-P[p][0])

    def cost(P):
        c = 0.0
        for x, y, v in pairs:
            p, q = seg[x]; r, w = seg[y]
            d1, d2 = detf(P, p, q, r), detf(P, p, q, w)
            d3, d4 = detf(P, r, w, p), detf(P, r, w, q)
            if v:                                # must cross
                c += max(0.0, d1*d2) + max(0.0, d3*d4)
            else:                                # must NOT cross
                c += min(max(0.0, -d1*d2), max(0.0, -d3*d4))
        for (v, s2, t2, xx) in cones:
            e1 = detf(P, v, s2, xx)*detf(P, v, s2, t2)
            e2 = detf(P, v, t2, xx)*detf(P, v, t2, s2)
            c += max(0.0, -e1) + max(0.0, -e2)
        return c

    best = None
    for R in range(restarts):
        P = [[rnd.uniform(-1, 1), rnd.uniform(-1, 1)] for _ in range(n)]
        cur = cost(P)
        T0 = 0.35
        for it in range(iters):
            if cur <= 0.0:
                break
            T = T0 * (1.0 - it / iters) + 1e-4
            i = rnd.randrange(n); k = rnd.randrange(2)
            old = P[i][k]
            P[i][k] = old + rnd.gauss(0, T)
            new = cost(P)
            if new <= cur:
                cur = new
            else:
                P[i][k] = old
        if best is None or cur < best[0]:
            best = (cur, [pt[:] for pt in P])
        if cur <= 0.0:
            # snap to exact integers on a fine grid and verify exactly
            for scale in (10**3, 10**4, 10**5, 10**6, 10**7):
                ipts = [(int(round(a*scale)), int(round(b*scale))) for a, b in P]
                if len(set(ipts)) != n:
                    continue
                ok, rep = verify_exact(ipts, seg, pairs, cones)
                if ok:
                    return "sat-verified", ipts, R
    return "not-found", (best[1] if best else None), restarts

# ---------------------------------------------------------------------- main
if __name__ == "__main__":
    variant = sys.argv[1] if len(sys.argv) > 1 else "generic"
    status = sys.argv[2] if len(sys.argv) > 2 else "both-hooking"
    engine = sys.argv[3] if len(sys.argv) > 3 else "anneal"
    if engine == "z3real":
        r, pts = run_z3(variant, status)
        print(json.dumps({"engine": "z3real", "variant": variant,
                          "status": status, "result": r,
                          "points": [[str(a), str(b)] for a, b in pts] if pts else None},
                         indent=1))
    else:
        nres = int(sys.argv[4]) if len(sys.argv) > 4 else 3000
        r, pts, info = run_anneal(variant, status, restarts=nres)
        names, seg, pairs, forced = make_pattern(variant)
        out = {"engine": "anneal", "variant": variant, "status": status,
               "result": r, "restarts_used": info, "point_names": names}
        if r == "sat-verified":
            out["points_exact_integer"] = pts
            ok, rep = verify_exact(pts, seg, pairs, cone_goals(seg, status))
            out["exact_verification"] = {"all_ok": ok,
                                         "checks": [list(map(str, x)) for x in rep]}
        print(json.dumps(out, indent=1))
