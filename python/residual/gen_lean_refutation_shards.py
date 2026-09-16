"""Emit a long propagation chain as a chain of Lean modules, not one theorem.

    python3 python/residual/gen_lean_refutation_shards.py <dir> <tag> <block> <Prefix> <out-dir>

`gen_lean_refutation.py` emits one theorem per refutation.  That is right for a
few hundred steps and wrong for a few thousand: a 2,934-step proof becomes a
300,000-line file that does not elaborate on an 8 GB machine.

This splits the same proof into blocks of `block` steps.  Each block is its own
module and its own theorem, taking as hypotheses only

  * the original core clauses its steps actually cite, and
  * the clauses derived by earlier blocks that its steps actually cite,

and concluding the conjunction of the clauses it derives that are cited later —
or `False`, for the last block.  The assembly module chains them: it holds every
original clause, applies each block in turn, and keeps the derived clauses in
scope for the blocks that need them.

The per-block context is what governs elaboration cost, and it is far smaller
than the whole core: for the four covering cases, about 120 original clauses and
200 derived ones per 50-step block, against 543 to 610 in the core.

Nothing about the proof changes.  Each step is still unit propagation in the
order the LRAT hints give, and no tactic searches.
"""
import os, sys

W, TAG, BLOCK, PREFIX, OUTDIR = sys.argv[1], sys.argv[2], int(sys.argv[3]), sys.argv[4], sys.argv[5]

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
    return f"exact absurd {tm} {nm}" if x > 0 else f"exact absurd {nm} {tm}"

def proof_of(cid, lits, hints, indent):
    """The propagation proof of one step, as lines at the given indent."""
    body = []
    known = {-x for x in lits}
    local = {}
    if lits:
        body.append("by_contra hc")
        if len(lits) > 1:
            body.append("push_neg at hc")
            ns = [f"n{i}" for i in range(len(lits))]
            body.append(f"obtain ⟨{', '.join(ns)}⟩ := hc")
            for nm, x in zip(ns, lits): local[-x] = nm
        else:
            local[-lits[0]] = "hc"
    k = 0; done = False
    for h in hints:
        c = cls[h]; hn = f"c{h}"
        free = [x for x in c if -x not in known]
        if not free:
            if len(c) == 1:
                body.append(f"{kill(c[0], local[-c[0]], hn)}")
            else:
                body.append(f"rcases {hn} with " + "|".join("a" for _ in c))
                for x in c: body.append(f"· {kill(x, local[-x])}")
            done = True; break
        assert len(free) == 1, f"step {cid}: hint {h} left {len(free)} free literals"
        f = free[0]; k += 1; nm = f"u{k}"
        if len(c) == 1:
            body.append(f"have {nm} : {lit(f)} := {hn}")
        else:
            body.append(f"have {nm} : {lit(f)} := by")
            body.append(f"  rcases {hn} with " + "|".join("a" for _ in c))
            for x in c:
                body.append("  · exact a" if x == f else f"  · {kill(x, local[-x])}")
        known.add(f); local[f] = nm
    assert done, f"step {cid}: hints exhausted without a conflict"
    return [indent + b for b in body]

pos = {cid: i for i, (cid, _, _) in enumerate(steps)}
blocks = [steps[i:i+BLOCK] for i in range(0, len(steps), BLOCK)]
allv = sorted({abs(x) for c in cls.values() for x in c})

# For each block: the original clauses and earlier-derived clauses it cites,
# and the clauses it derives that are cited later.
info = []
for b, blk in enumerate(blocks):
    lo = b * BLOCK
    mine = {cid for cid, _, _ in blk}
    origs, earlier = set(), set()
    for _, _, hints in blk:
        for h in hints:
            if h not in pos: origs.add(h)
            elif pos[h] < lo: earlier.add(h)
    later = set()
    for cid in mine:
        for c2, _, h2 in steps[lo+len(blk):]:
            if cid in h2: later.add(cid)
    info.append((sorted(origs), sorted(earlier), sorted(later)))

os.makedirs(OUTDIR, exist_ok=True)
names = []
for b, blk in enumerate(blocks):
    origs, earlier, later = info[b]
    last = (b == len(blocks) - 1)
    used = sorted({abs(x) for cid in origs + earlier for x in cls[cid]}
                  | {abs(x) for cid, lits, _ in blk for x in lits}
                  | {abs(x) for cid in later for x in cls[cid]})
    out = ["import Mathlib.Tactic", "",
           "-- One block of a propagation chain; see",
           "-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is",
           "-- unaffected by this option.",
           "set_option maxHeartbeats 0", ""]
    concl = "False" if last else " ∧ ".join(f"({dis(cls[c])})" for c in later)
    out.append(f"/-- Steps {b*BLOCK}-{b*BLOCK+len(blk)-1} of the {len(steps)}-step refutation of "
               f"{TAG}: {len(origs)} core clauses and {len(earlier)} earlier-derived ones give "
               f"{'a contradiction' if last else f'{len(later)} more'}. -/")
    out.append(f"theorem {PREFIX}_block{b:03d}")
    out.append("    (" + " ".join(f"v{v}" for v in used) + " : Prop)")
    for c in origs + earlier:
        out.append(f"    (c{c} : {dis(cls[c])})")
    out.append(f"    : {concl} := by")
    for cid, lits, hints in blk:
        if last and not lits:
            out += proof_of(cid, lits, hints, "  ")
        else:
            out.append(f"  have c{cid} : {dis(lits)} := by")
            out += proof_of(cid, lits, hints, "    ")
    if not last:
        out.append("  exact ⟨" + ", ".join(f"c{c}" for c in later) + "⟩")
    nm = f"{PREFIX}Block{b:03d}"
    open(f"{OUTDIR}/{nm}.lean", "w").write("\n".join(out) + "\n")
    names.append(nm)

# assembly
out = [f"import {nm}" for nm in names] + ["", "set_option maxHeartbeats 0", ""]
out.append(f"/-- The {NORIG}-clause unsatisfiable core of {TAG} is contradictory.")
out.append(f"{len(steps)} steps, transcribed from the LRAT proof and split across")
out.append(f"{len(blocks)} modules of at most {BLOCK} steps; this file only chains them. -/")
out.append(f"theorem {PREFIX}_false")
out.append("    (" + " ".join(f"v{v}" for v in allv) + " : Prop)")
for i in range(1, NORIG + 1):
    out.append(f"    (c{i} : {dis(cls[i])})")
out.append("    : False := by")
for b in range(len(blocks)):
    origs, earlier, later = info[b]
    used = sorted({abs(x) for cid in origs + earlier for x in cls[cid]}
                  | {abs(x) for cid, lits, _ in blocks[b] for x in lits}
                  | {abs(x) for cid in later for x in cls[cid]})
    args = " ".join(f"v{v}" for v in used) + " " + " ".join(f"c{c}" for c in origs + earlier)
    if b == len(blocks) - 1:
        out.append(f"  exact {PREFIX}_block{b:03d} {args}")
    else:
        out.append(f"  obtain ⟨" + ", ".join(f"c{c}" for c in later) + f"⟩ := {PREFIX}_block{b:03d} {args}")
open(f"{OUTDIR}/{PREFIX}All.lean", "w").write("\n".join(out) + "\n")
names.append(f"{PREFIX}All")
print(" ".join(names))
