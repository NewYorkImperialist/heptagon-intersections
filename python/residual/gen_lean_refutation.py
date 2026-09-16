"""Emit one orbit's unsat-core refutation as a Lean theorem; run from the repo root.

Usage: python3 python/residual/gen_lean_refutation.py [dir] [tag] > lean/ResidualCore000.lean

`tag` is `core000`..`core003` (the four residual orbits, exported to
independent/residual_realizability/lean_export) or `pcore000`..`pcore003` (the
four forbidden patterns, exported to independent/realizability_sweep/lean_export).
Each pair was produced by drat-trim from a full 162,790- or 162,000-odd-clause
encoding; only the unsat core and its proof are needed, and all are committed.
See those directories' READMEs for the exact drat-trim invocation.

Each LRAT step becomes a `have`: assume the derived clause false, then walk the
hint clauses in order.  Every hint is unit under the accumulated assignment, so
the forced literal follows by `rcases` with each wrong branch closed by an
explicit `absurd`.  Nothing searches; the LRAT hints supply the order.
"""
import sys
W = sys.argv[1] if len(sys.argv) > 1 else 'independent/residual_realizability/lean_export'
TAG = sys.argv[2] if len(sys.argv) > 2 else 'core000'

cls = {}; n = 0
for l in open(f'{W}/{TAG}.cnf'):
    if not l.strip() or l[0] in 'pc': continue
    n += 1; cls[n] = [int(x) for x in l.split() if x != '0']
NORIG = n
steps = []
for line in open(f'{W}/{TAG}.lrat'):
    t = line.split()
    if len(t) > 1 and t[1] == 'd': continue
    z = t.index('0', 1)
    cid = int(t[0]); lits = [int(x) for x in t[1:z]]
    hints = [int(x) for x in t[z+1:] if x != '0']
    assert all(h > 0 for h in hints), f"step {cid} has a RAT hint"
    cls[cid] = lits; steps.append((cid, lits, hints))

def lit(x): return f"v{x}" if x > 0 else f"¬v{-x}"
def dis(c): return " ∨ ".join(lit(x) for x in c) if c else "False"
def kill(x, nm, tm="a"):
    """Close a branch holding `tm : lit(x)` given `nm : lit(-x)`.  absurd : a → ¬a → b."""
    return f"exact absurd {tm} {nm}" if x > 0 else f"exact absurd {nm} {tm}"

vs = sorted({abs(x) for c in cls.values() for x in c})
out = []
out.append("import Mathlib.Tactic")
out.append("")
out.append("-- The tail of a long propagation chain elaborates against a context holding")
out.append("-- every core clause and every clause derived so far, which outruns the default")
out.append("-- elaboration budget.  Kernel checking is unaffected by this option.")
# Cost grows with the size of that context, so cores past a thousand clauses --
# only the largest of the four forbidden patterns, so far -- get no limit at all.
out.append("set_option maxHeartbeats " + ("0" if NORIG > 1000 else "2000000"))
out.append("")
WHAT = (f"forbidden pattern {int(TAG[-3:])}" if TAG.startswith('pcore')
        else f"orbit_{TAG[-3:]}")
out.append(f"/-- The {NORIG}-clause unsatisfiable core of {WHAT}, contradictory.")
out.append(f"{len(steps)} steps, transcribed from the LRAT proof: each is unit propagation")
out.append("in the order the hints give, so no tactic searches. -/")
out.append(f"theorem {TAG}_false")
out.append("    (" + " ".join(f"v{v}" for v in vs) + " : Prop)")
for i in range(1, NORIG + 1):
    out.append(f"    (c{i} : {dis(cls[i])})")
out.append("    : False := by")

names = {}
for cid, lits, hints in steps:
    body = []
    known = {-x for x in lits}
    names_local = dict(names)
    if lits:
        body.append("    by_contra hc")
        # For a one-literal clause `by_contra` already yields the hypothesis in
        # the form we want (¬v for a positive literal, v for a negative one),
        # so push_neg would have nothing to do and errors out.
        if len(lits) > 1:
            body.append("    push_neg at hc")
        if len(lits) == 1:
            names_local[-lits[0]] = "hc"
        else:
            ns = [f"n{i}" for i in range(len(lits))]
            body.append(f"    obtain ⟨{', '.join(ns)}⟩ := hc")
            for nm, x in zip(ns, lits): names_local[-x] = nm
    k = 0
    done = False
    for h in hints:
        c = cls[h]; hn = names.get(('c', h), f"c{h}")
        free = [x for x in c if -x not in known]
        if not free:
            if len(c) == 1:
                body.append(f"    {kill(c[0], names_local[-c[0]], hn)}")
            else:
                body.append(f"    rcases {hn} with " + "|".join("a" for _ in c))
                for x in c: body.append(f"    · {kill(x, names_local[-x])}")
            done = True; break
        assert len(free) == 1, f"step {cid}: hint {h} left {len(free)} free literals"
        f = free[0]; k += 1; nm = f"u{k}"
        if len(c) == 1:
            body.append(f"    have {nm} : {lit(f)} := {hn}")
        else:
            body.append(f"    have {nm} : {lit(f)} := by")
            body.append(f"      rcases {hn} with " + "|".join("a" for _ in c))
            for x in c:
                body.append("      · exact a" if x == f else f"      · {kill(x, names_local[-x])}")
        known.add(f); names_local[f] = nm
    assert done, f"step {cid}: hints exhausted without a conflict"
    if lits:
        out.append(f"  have c{cid} : {dis(lits)} := by")
        out += body
    else:
        out += [b[2:] for b in body]     # final step: derive False directly
    names[('c', cid)] = f"c{cid}"

print("\n".join(out))
