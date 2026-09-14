#!/usr/bin/env python3
"""Minimal UNSAT core for the decisive queries.

The Grassmann-Plucker and acyclicity axioms are asserted outright (they are the
definition of "is an oriented matroid").  Every PATTERN constraint and every
STATUS constraint is asserted under a tracking literal, so z3 can report which of
them the contradiction actually uses; the core is then minimised greedily.

This answers: does the impossibility of both-hooking really depend on all of the
intersection pattern, or only on part of it?
"""
import sys, json, itertools
from z3 import Solver, Bool, Not, And, sat, unsat
import om_lemma7 as L

def build_labelled(variant, which):
    C, seg, cons, forced, want = L.build(variant)
    # rebuild the pattern constraints separately from the axioms
    axioms = list(C.gp_axioms()) + list(C.acyclicity())
    pat = []
    for (x, y), v in sorted(want.items()):
        s, t = seg[x], seg[y]
        if set(s) & set(t):
            continue
        pat.append((("CROSS" if v else "DISJOINT") + " %s-%s" % (x, y),
                    C.cross(s, t) if v else Not(C.cross(s, t))))
    for i, c in enumerate(L.status_constraints(C, seg, which)):
        pat.append(("STATUS %s #%d" % (which, i + 1), c))
    return C, axioms, pat

def core(variant, which):
    C, axioms, pat = build_labelled(variant, which)
    s = Solver()
    for a in axioms:
        s.add(a)
    lits = []
    for name, c in pat:
        p = Bool("assume::" + name)
        s.add(p == c)
        lits.append((name, p))
    r = s.check([p for _, p in lits])
    if r != unsat:
        return str(r), None
    names = {str(p): n for n, p in lits}
    cur = [p for _, p in lits if str(p) in {str(x) for x in s.unsat_core()}]
    # greedy minimisation
    changed = True
    while changed:
        changed = False
        for p in list(cur):
            trial = [q for q in cur if q is not p]
            if s.check(trial) == unsat:
                cur = [q for q in cur if str(q) in
                       {str(x) for x in s.unsat_core()}] or trial
                changed = True
                break
    return "unsat", sorted(names[str(p)] for p in cur)

if __name__ == "__main__":
    out = {}
    for variant, which in [("generic", "both-hooking"), ("generic", "both-hooked"),
                           ("P-adj", "both-hooking"), ("P-adj", "mixed-1")]:
        r, c = core(variant, which)
        out["%s/%s" % (variant, which)] = {"result": r, "core_size": len(c) if c else None,
                                           "core": c}
        print("=== %s / %s -> %s" % (variant, which, r))
        if c:
            print("    minimal core has %d of the pattern/status constraints:" % len(c))
            for n in c:
                print("      ", n)
        sys.stdout.flush()
    json.dump(out, open("unsat_core.json", "w"), indent=1)
    print("\nwrote unsat_core.json")
