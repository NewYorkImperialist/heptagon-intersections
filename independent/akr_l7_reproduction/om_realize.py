#!/usr/bin/env python3
"""
(1) Re-run the oriented-matroid satisfiability question of om_lemma7.py with the
    additional ACYCLICITY-necessary condition (existence of a positive
    cocircuit: some ordered pair (i,j) with chi(i,j,k) = + for every other k).
    Only ACYCLIC rank-3 oriented matroids correspond to (generalised)
    configurations of points, in which "segment", "cone" and "crossing" have
    their intended meaning; a chirotope without a positive cocircuit cannot be
    an affine point configuration.

(2) If still satisfiable, attempt to REALISE the resulting chirotope with exact
    rational coordinates, by the classical coordinate-wise method: with all
    points but one fixed, the required sign of det(p_j, p_k, p_i) is a LINEAR
    condition on p_i, so the feasible set for p_i is an intersection of open
    half-planes; we clip a large box against all of them in exact rational
    arithmetic and move p_i to the centroid of the resulting convex polygon.
    Iterate.  This is a heuristic: success is a proof (the coordinates are then
    verified exactly), failure proves nothing.

Usage: python3 om_realize.py <status> [seed] [rounds]
"""
import sys, json, random, itertools
from fractions import Fraction
from z3 import Solver, Bool, Not, And, Or, sat, unsat

sys.path.insert(0, ".")
import om_lemma7 as L

def positive_cocircuit(C):
    """Or over ordered pairs (i,j) of And_k chi(i,j,k)."""
    opts = []
    for i, j in itertools.permutations(range(C.n), 2):
        opts.append(And(*[C.chi(C.pts[i], C.pts[j], C.pts[k])
                          for k in range(C.n) if k not in (i, j)]))
    return Or(*opts)

def solve(variant, which, acyclic=True, block=None):
    C, seg, cons, forced, want = L.build(variant)
    s = Solver()
    for c in cons:
        s.add(c)
    for c in L.status_constraints(C, seg, which):
        s.add(c)
    if acyclic:
        s.add(positive_cocircuit(C))
    for b in (block or []):
        s.add(Or(*[C.X[t] != b[t] for t in sorted(C.X)]))
    r = s.check()
    if r != sat:
        return str(r), None, C, seg
    m = s.model()
    chi = {t: bool(m.evaluate(C.X[t], model_completion=True)) for t in sorted(C.X)}
    return "sat", chi, C, seg

# ------------------------------------------------------------ exact realiser
BIG = Fraction(10**6)

def clip(poly, a, b, c):
    """keep the part of the convex polygon with a*x + b*y + c > 0 (exact)."""
    out = []
    n = len(poly)
    for i in range(n):
        p, q = poly[i], poly[(i + 1) % n]
        fp = a*p[0] + b*p[1] + c
        fq = a*q[0] + b*q[1] + c
        if fp > 0:
            out.append(p)
        if (fp > 0) != (fq > 0):
            t = fp / (fp - fq)
            out.append((p[0] + t*(q[0]-p[0]), p[1] + t*(q[1]-p[1])))
    return out

def centroid(poly):
    n = len(poly)
    return (sum(p[0] for p in poly)/n, sum(p[1] for p in poly)/n)

def chi_sign(chi, i, j, k):
    p = [i, j, k]; s = 1
    for a in range(2):
        for b in range(2-a):
            if p[b] > p[b+1]:
                p[b], p[b+1] = p[b+1], p[b]; s = -s
    v = 1 if chi[tuple(p)] else -1
    return v * s

def realise(chi, n, rounds=400, seed=0):
    rnd = random.Random(seed)
    P = [(Fraction(rnd.randint(-1000, 1000)), Fraction(rnd.randint(-1000, 1000)))
         for _ in range(n)]
    for it in range(rounds):
        bad = count_bad(P, chi, n)
        if bad == 0:
            return P
        order = list(range(n)); rnd.shuffle(order)
        for i in order:
            poly = [(-BIG, -BIG), (BIG, -BIG), (BIG, BIG), (-BIG, BIG)]
            for j, k in itertools.combinations([x for x in range(n) if x != i], 2):
                s = chi_sign(chi, j, k, i)
                pj, pk = P[j], P[k]
                # det(pj,pk,pi) = (xk-xj)(yi-yj) - (yk-yj)(xi-xj)
                a = -(pk[1]-pj[1]); b = (pk[0]-pj[0])
                c = -(a*pj[0] + b*pj[1])
                if s < 0:
                    a, b, c = -a, -b, -c
                poly = clip(poly, a, b, c)
                if len(poly) < 3:
                    break
            if len(poly) >= 3:
                P[i] = centroid(poly)
    return P if count_bad(P, chi, n) == 0 else None

def count_bad(P, chi, n):
    bad = 0
    for i, j, k in itertools.combinations(range(n), 3):
        d = ((P[j][0]-P[i][0])*(P[k][1]-P[i][1])
             - (P[j][1]-P[i][1])*(P[k][0]-P[i][0]))
        s = 1 if d > 0 else (-1 if d < 0 else 0)
        if s != (1 if chi[(i, j, k)] else -1):
            bad += 1
    return bad

if __name__ == "__main__":
    which = sys.argv[1] if len(sys.argv) > 1 else "both-hooking"
    seed = int(sys.argv[2]) if len(sys.argv) > 2 else 0
    tries = int(sys.argv[3]) if len(sys.argv) > 3 else 30
    variant = sys.argv[4] if len(sys.argv) > 4 else "generic"
    blocked = []
    report = {"variant": variant, "status": which, "acyclic_constraint": True,
              "attempts": []}
    for att in range(tries):
        res, chi, C, seg = solve(variant, which, acyclic=True, block=blocked)
        if res != "sat":
            report["om_result"] = res
            print(json.dumps({**report, "conclusion":
                  "no acyclic uniform rank-3 chirotope after %d distinct solutions" % att},
                  indent=1))
            sys.exit(0)
        blocked.append(chi)
        P = realise(chi, C.n, rounds=250, seed=seed + att)
        ok = P is not None
        rec = {"attempt": att, "om": "sat", "realised": ok}
        if ok:
            ipts = [(int(p[0]*10**6), int(p[1]*10**6)) for p in P]
            rec["exact_points_scaled_1e6"] = ipts
            names, seg2, pairs, forced = None, None, None, None
            import realize_search as RS
            names, seg2, pairs, forced = RS.make_pattern(variant)
            vok, vrep = RS.verify_exact(ipts, seg2, pairs, RS.cone_goals(seg2, which))
            rec["exact_verification_ok"] = vok
            rec["checks"] = [list(map(str, x)) for x in vrep]
        report["attempts"].append(rec)
        print("attempt %d: OM sat, realised=%s%s" %
              (att, ok, (" VERIFIED=%s" % rec.get("exact_verification_ok")) if ok else ""))
        sys.stdout.flush()
        if ok and rec.get("exact_verification_ok"):
            report["conclusion"] = "REALISED AND EXACTLY VERIFIED -- counterexample"
            with open("om_realize_%s.json" % which, "w") as f:
                json.dump(report, f, indent=1, default=str)
            print(json.dumps(rec, indent=1, default=str))
            sys.exit(0)
    report["conclusion"] = ("%d distinct acyclic chirotopes satisfying the pattern "
                            "+ %s were found; none could be realised with rational "
                            "coordinates by the coordinate-wise method" % (tries, which))
    with open("om_realize_%s.json" % which, "w") as f:
        json.dump(report, f, indent=1, default=str)
    print(report["conclusion"])
