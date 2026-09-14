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

**Formalize the disjointness graph and its component structure over the
orientation predicates, and discharge interface `I2`.**

Why this one:
* it is the single prerequisite shared by `I3`, `I4` and `I5` — nothing else in
  the endgame can be connected to geometry without it;
* it is Mathlib-free and finite, like the milestone just completed;
* it converts `Endgame.lean` from a theorem about a file into a theorem about a
  configuration, which is the change that most improves the trust story;
* it is bounded: `toMasks` plus `toMasks_spec`, no classification, no
  enumeration.

Explicitly **not** recommended next: a Lean SAT checker (large, and A7 is
corroborated); the full classification (needs `I5`, the largest piece); point-set
semantics (needs ℝ², orthogonal).

## 6. On estimates

No week or month figures are given. Observed: the geometric milestone took one
bounded agent session; the A7 attack took five agent sessions and produced a
counterexample rather than a proof. Both are data, neither is a schedule.

## 7. Status

Unchanged: **a candidate computer-assisted proof**. Component C is the first
external dependency replaced by a proof; nothing else moved.
