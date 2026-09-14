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

> **Completed 2026-09-14, in one overnight run:** the `I2` milestone
> (`DisjointnessGraph.lean`), then enumeration obligations **(1)**
> (`EnumerationDomain.lean`), **(2)** (`DomainCount.lean` —
> `domainFinset.card = 13003620`) and **(3)** (`EnumerationComplete.lean` —
> `enumerate_complete`, by induction on the recursion depth, with
> `enumerate_sound` pinning the enumeration exactly). `CounterexampleCount.lean`
> joins (1) and (2): a counterexample is one of exactly 13,003,620 mask
> functions. The previous entry in this slot proposed (3) as the next milestone
> and predicted the induction would be the tractable route; it was.

**Next: enumeration obligation (4) — that every valid configuration survives
each filter down to a terminal case proved impossible.**

This is now the **sole remaining enumeration gap**, and the only one of the four
obligations untouched by Lean. The filters, in pipeline order, are AKR L5
(consecutive pairs), AKR L7 ⟹ `H` bipartite, crossing-set compatibility,
Černý L2 (class-dependent), and AKR L5 (avoiding pairs). Each needs the same
shape of result: *if a valid configuration induces this graph, the filter does
not discard it.*

Two of the five already have a Lean-side foothold, which is why this is bounded
rather than open-ended:
* `Endgame.akr5Conclusion_iff_adjacent` already kernel-checks the L5 filter as an
  **iff**, so it is provably neither a weakening nor a strengthening of the
  lemma's conclusion;
* `CernyL2Interface.lean` certifies the L2 filter fires *iff* an exact induced
  perfect matching exists.

The gap is that neither is connected to a `Config`. `DisjointnessGraph.lean` now
supplies exactly that connection for the graph itself, so the missing step is
per-filter soundness against the geometry, not new infrastructure.

Note what obligation (4) is **not**: it is not the claim that the 225 surviving
cases die — `Endgame.lean` already proves that, and the certificate checker
re-proves it independently. It is the claim that nothing was dropped on the way
down. K-17 is a worked example of the distinction: a filter question that looked
like a gap in (4) and turned out not to be one.

Explicitly **not** recommended next: a Lean SAT checker (large, and A7 is
corroborated with certificates since K-16's closure); the full classification;
point-set semantics (needs ℝ², orthogonal — see the `I2b` note).

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
