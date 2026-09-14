# Dependency roadmap toward a kernel-checked `f(7,7) = 38`

**Date:** 2026-09-14. Written after the bounded A7/Lean work of 2026-09-13/14.

## 0. Two endpoints, kept apart

**Endpoint 1 — a mathematical paper.** May rely on correctly applied published
lemmas plus reproducible exact computation. On this endpoint the project is
close: every external lemma has been audited against the source, the
computations are reproduced by two implementations, and the endgame ships a
certificate with an independent checker.

**Endpoint 2 — an end-to-end kernel proof.** Must prove every required
dependency or replace it with a proved alternative. Leaving Černý L2 or AKR L5
external does **not** complete it. What is needed is their *required
consequences*, not formalisations of the whole papers — and the first such
consequence was obtained on 2026-09-14 (Černý L1's use, §2 below).

A **mathematical gap** and **a correct argument that is not yet formalized** are
different things. Most of what follows is the second kind. The exceptions are
flagged.

## 1. Current state by component

| # | Component | Status | Kernel-checked? |
|---|---|---|---|
| A | 38-crossing lower bound | verified, exact | **yes** (`LowerBound.lean`, core Lean) |
| B | Lemma A counting + parity | verified | **yes** as an implication (`LemmaA.lean`) |
| C | Černý L1 consequence (min degree), Lemma A `h2` | verified | **yes, from geometry** (`SegmentGeometry.lean`) |
| D | Lemma A `h1` (exceptional condition) | prose + classification | no |
| E | Order types / exceptional classification | externally cross-checked, reimplemented | no |
| F | 13,003,620 enumeration + filters → 225 | two implementations, exact set match | no |
| G | 225 → 0 endgame | certificate + checker | **yes, about the certificate** (`Endgame.lean`) |
| H | A7-EXT | very strongly corroborated | bridge only (`Lemma7Bridge.lean`) |
| I | Černý L2 consequence | source-audited | transcription only (`CernyL2Interface.lean`) |
| J | AKR L5 consequence | source-audited | `iff` bridge only |
| K | General position (AKR §9) | imported | no |

## 2. What changed on 2026-09-14

Component **C** moved from "imported lemma" to "kernel-checked from geometry".
That is the first time a *published lemma's required consequence* has been
replaced by a proof inside this project, and it is the template for the rest:
we did not formalize Černý's paper — we identified the one consequence the proof
actually uses (`δ(G^D) ≥ 1`) and proved that.

The proof is a parity argument: the number of sign alternations around a closed
cycle is always even, so a vertex-avoiding line cannot meet all sides of an
*odd* polygon. Mathlib-free, no `Classical.choice`.

It also machine-checked the **strict-vs-loose** distinction that the whole
classification rests on (16 exceptional heptagons vs 2,268).

## 3. Ranked by risk, not by effort

**Risk 1 — completeness of the enumeration (F, E).** The largest single
unformalized claim, and the one with the worst track record. Three defects have
now been found in this area, each leaving the headline number unchanged:
the mislabelled 13,484,940 count (K-01), the representative-labelling artifact
(K-11), and the vacuous PQ-adjacency orbit (K-16). **Two of the three were
symmetry or bookkeeping errors that survived review.** Nothing currently
certifies that the 225-case list is complete; `Endgame.lean` explicitly does not.

**Decomposed, 2026-09-14.** "Completeness of the enumeration" is four claims,
and conflating them has been a recurring source of confusion:

1. a counterexample produces a graph satisfying the search conditions;
2. the abstract domain has 13,003,620 elements;
3. the search actually visits every element of that domain;
4. every valid configuration survives each filter to a terminal case proved
   impossible.

`lean/EnumerationDomain.lean` closes **(1)** in full, for an arbitrary
configuration rather than the certificate pair, with no `Classical.choice` and
no Mathlib result used in substance. For **(2)** it proves both ends and neither
of the two links between them. **(3) and (4) remain the gap** — nothing in Lean
inspects, extracts or certifies any search program, and a correct domain count
is not a proof that an implementation enumerates the right set.

A fourth candidate defect in this area was raised and **closed** on 2026-09-14
(K-17): `graphShapeOK`'s degree-sequence requirement looked like an unchecked
filter hiding the `{3,1,1,1,1,1,1}` branch, but it is a descriptive check on the
survivors, and both implementations do enumerate that branch. Worth recording
because the track record above makes such reports easy to believe too quickly.

**Risk 2 — the geometry-to-model bridges for A7 (H).** Four prose steps between
the DRAT certificates and the geometric statement. Now precisely specified in
`docs/a7-specification.md`, which is what makes them attackable.

**Risk 3 — `S(e) ≠ ∅` (H).** Sharper than it looks. It needs AKR Lemma 5's
existence clause *and* its cone dichotomy for the same witness, and the dichotomy
is **not a function of `G^D`** — so no combinatorial filter can supply it. Machine-checked nowhere.

**Risk 4 — the stored `avoiding` flag (G).** `Endgame.lean` trusts a Boolean in
the certificate. A record with a wrong flag passes every theorem. This is
interface `I3` in `lean/README.md`.

**Risk 5 — point-set semantics (A, C).** Everything is at the orientation level.
"No proper crossing" ⟹ "disjoint segments" needs ℝ². Real work, low risk of
being *false*.

**Risk 6 — external lemmas L2/L5 (I, J).** Audited; consequences identified.
Following the component-C template is a known path.

## 4. Three routes to A7 in the kernel

| Route | What it needs | Evidence | Assessment |
|---|---|---|---|
| **Direct geometry** | Prove Observation 6′ + the parts of Lemma 7 used | Observation 6′ is proved in prose; 3 of 12 terminal cases closed | Honest but long. The remaining 9 cases are figure-driven in the source. |
| **Verified finite procedure** | A Lean decision procedure over the chirotope model | none yet | Plausible. The model is small (≤ 12 points). Would need the §3 bridges anyway. |
| **Certificate checking in Lean** | A verified DRAT/RUP checker, plus justified CNF conversion | 15 DRAT proofs exist and re-verify | **External DRAT checking is not kernel verification.** A kernel route must justify the CNF conversion and the checker itself. |

**Before building anything**, investigate existing work: Mathlib's
`SimpleGraph` and combinatorics for the bipartiteness side; any existing Lean
SAT/DRAT checker; and `Mathlib.Analysis.Convex` for the cone predicates. The
project has twice built infrastructure it did not need.

## 5. Recommended next milestone — one, bounded

> **Completed 2026-09-14, over one extended run:** the `I2` milestone; enumeration
> obligations **(1)**, **(2)** and **(3)**; obligation **(4)** *stated* filter by
> filter with (E6) fully and (E8) half discharged; **UB42** formalized; the
> **upper-bound assembly**, including the unconditional `I ≤ 42`; the **(X3)**
> bridge making Lemma A usable at the mask level; and **the target statement
> itself** (`MainTheorem.isGreatest_38`). Twenty-one Lean libraries, 657
> theorems, no project axiom anywhere.

**The situation has changed shape, and the next milestone should be chosen with
that in mind.**

After the above, the upper bound rests on exactly two things: **parity** (that
`I` is even) and **`hne40`** (the enumeration). Everything else is
kernel-checked. And `hne40`'s remaining hypotheses (E1)–(E5), (E7) are now *all*
external mathematics — the published Černý and AKR lemmas plus the exceptional
classification. There is no more "project's own algorithms" work left inside
obligation (4); that was (E6) and (E8), and they are done or half done.

So the candidate milestones are of two quite different kinds:

**(a) Formalize an external lemma.** Černý L2 is the most self-contained (a
statement about 5 consecutive vertices and a 4×4 induced matching). AKR L5 and
L7 are harder. This is real mathematical formalization, not bridge-building, and
should be scoped as such.

**(b) Attack the enumeration barrier itself.** See §8 below — this is the item
that determines whether the stated end goal is reachable at all, and it should
probably be settled before investing in (a).

Explicitly **not** recommended: point-set semantics (`I2b`, needs ℝ², orthogonal);
a Lean SAT checker (A7 is certificate-backed since K-16 closed).

### The `I2`/`I2a`/`I2b` split, recorded

`I2` as originally written stated `toMasks_spec` against **point-set**
disjointness of two segments. That is not statable in this development: `Pt` is
`Int × Int` and `side P i` is never defined as a set anywhere in the repository.
Stating it requires Mathlib's `segment`/`Convex` and the reals, which would
destroy the Mathlib-free trust base the geometry group exists to have — so the
milestone as documented was **not bounded**, its last line silently requiring
real analysis. It is therefore split:

* **`I2a`** — the orientation-level form, against
  `DisjointO K i j := ¬ ProperCross …`. **Proved** (`DisjointnessGraph.lean`),
  core Lean, no Mathlib, no reals.
* **`I2b`** — the single isolated lemma
  `DisjointO K i j ↔ Disjoint (segP K i) (segQ K j)`, needing ℝ² and Mathlib.
  **Not proved.** When proved it upgrades `I2a` to the interface as originally
  written, touching nothing else.

The split costs nothing downstream because `Endgame.lean` never consumes
`toMasks_spec`: every one of its theorems is parametric in `M : Nat → Nat`. It
needs a *function*, not a specification, so the statement form of the spec is a
free design choice.

## 6. On estimates

No week or month figures are given. Observed: the geometric milestone took one
bounded agent session; the A7 attack took five agent sessions and produced a
counterexample rather than a proof. Both are data, neither is a schedule.

## 7. Status

Unchanged: **a candidate computer-assisted proof**. Component C is the first
external dependency replaced by a proof; nothing else moved.

---

## 8. The enumeration barrier — measured, 2026-09-14

**This section decides whether the stated end goal is reachable, and it should
be read before planning any further formalization work.**

The goal is a kernel-checked `f(7,7) = 38` with **no unproved project-specific
axioms**. That excludes `native_decide`, which discharges a goal by running
compiled code and adds `Lean.ofReduceBool` to the axiom set — it would be exactly
the kind of unchecked computation the goal rules out.

So `hne40` — "no configuration attains 40" — has to be established by the kernel.
As currently structured that means the kernel must certify the outcome of a
search over **13,003,620** graphs. The question is whether it can.

### What was measured

* **Kernel `decide`, trivial per-element work** (seven bitmask tests per
  element): 10,000 elements in ~6.2 s and 20,000 in ~12.6 s of user time —
  clean linear scaling, about **2,000 elements/second**. At that rate 13,003,620
  elements would be roughly **1.8 hours**, and that is a *floor*: it does no
  filtering at all.
* **The project's own enumeration**, `EnumerationComplete.enumRec`, at depth 3 —
  **5,670** leaves, about 1/2,300 of the full run — did **not complete in over
  ten minutes** of kernel reduction under `decide`. Scaling that to the full
  13,003,620 leaves gives **weeks at minimum**, before any filter is applied.

Caveats, stated because the numbers are doing real work here: this is one
machine; another job was competing for CPU during the second measurement; and
`decide` cost is dominated by term construction, which grows worse than linearly
as the lists get longer. The measurement should be read as an order of
magnitude and a *lower bound*, not a precise figure. It is not close enough to
feasible for those caveats to change the conclusion.

Note also (found the hard way) that `#eval` here runs the **IR interpreter**, not
the kernel, because the project does not set `precompileModules`. `#eval` timings
say nothing about kernel cost in either direction.

### The conclusion

**`hne40` cannot be closed by kernel-evaluating the search.** Not "would be
slow" — not feasible as a build step, by orders of magnitude.

### The way forward, and there is a good one

**`UB42` is the proof of concept, and it is in this repository.**

The `I = 42` branch also had an exhaustive computational justification: a sweep
over all `7! = 5,040` perfect matchings against all 14 classes, 70,560 cases, 0
survivors. That sweep is *not* what `lean/Exclude42.lean` checks. Instead the
argument was restructured into: 7 edges with δ ≥ 1 forces a perfect matching; the
crossing set of each `q_j` is a 6-set; two 6-subsets of a 7-set nest only if
equal (**one line**, by instantiating containment at `i := m`); the partners are
distinct; seven distinct indices cannot fit in a 5-element set. The kernel checks
that in milliseconds.

The same should be sought for `I = 40`. There is direct evidence such structure
exists: the project's own pipeline reports that every surviving graph has degree
sequence `(2,2,1,1,1,1,1)` on **both** sides and that only 9 of the 14 classes
survive — the repository's own phrasing is that "the structure is forced, not
observed". If those forcings can be *proved* rather than observed, the case count
collapses and the residual may be small enough to check directly.

**Recommended next milestone: prove the structural forcings for `I = 40`** —
starting with "the degree sequence must be `(2,2,1,1,1,1,1)` on both sides",
which `EnumerationDomain.degSeq_of_sum_nine` already reduces to excluding the
`{3,1,1,1,1,1,1}` branch. That is a bounded, well-posed question with a known
answer (the branch does die in the filters — see K-17), and it is the natural
first step of the same restructuring that worked for `UB42`.

If no such restructuring exists, the honest options are to accept
`native_decide` with a clearly documented trust caveat — which **changes the
stated goal** and should be the user's decision, not a drift — or to leave
`hne40` as a computational result standing outside the kernel, which is what the
project has today.
