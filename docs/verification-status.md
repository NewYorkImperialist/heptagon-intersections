# Verification status

**Last updated:** 2026-09-13

This file is the authoritative statement of what is and is not established in
this repository. Where a claim in `proof-outline.md`, `audit-report.md`, the
superseded `archive/superseded/REPORT.md`, or any transcript conflicts with
this file, **this file wins**.

Overall status:

> **Candidate computer-assisted proof that f(7,7) = 38, undergoing independent
> verification and formalization.**

Nothing here has been peer-reviewed. Nothing here has been verified by a person
other than the original author working with LLM assistance. No Lean file in
this repository has been compiled.

## Legend

| Category | Meaning |
|---|---|
| `VERIFIED IN LEAN` | A Lean proof exists, compiles against Mathlib, and is free of `sorry` and project-specific axioms. **Nothing in this repository currently has this status.** |
| `VERIFIED BY EXACT COMPUTATION` | Re-run from source in a clean directory on 2026-09-13, exact integer/Boolean arithmetic, output matches the documented figure. Trust rests on the correctness of the code. |
| `MANUALLY CHECKED` | A written human proof exists in this repository and has been read for coherence. Not machine-checked; not refereed. |
| `EXTERNAL PUBLISHED LEMMA` | Imported from a peer-reviewed paper. Statement and applicability checked by the author; the paper's internal proof was **not** re-verified here. |
| `COMPUTATION, NEEDS INDEPENDENT REPRODUCTION` | Reproduced here, but only ever by this one Python codebase. No second implementation in another language or by another person exists in this repository. |
| `SKELETON / CONTAINS sorry` | Lean source exists but does not constitute a proof. Includes files that are incomplete *or* simply never compiled. |
| `SUPERSEDED` | Retained as research record only; replaced by a later artifact. Do not cite. |
| `TODO` | Asserted in prose somewhere, with no artifact in this repository. |

## Status table

| # | Claim | Status | Evidence | Notes |
|---|---|---|---|---|
| 1 | Explicit 38-crossing lower-bound construction, `f(7,7) ≥ 38` | **VERIFIED IN LEAN** (combinatorial core) + **VERIFIED BY EXACT COMPUTATION** | `lean/LowerBound.lean`; `results/validation/2026-09-13_lean_build.log`; `data/lower_bound/lower_bound_38.json` | Kernel-checked 2026-09-13. `crossing_count_eq_38 : crossCount = 38`, plus `P_simple`, `Q_simple`, `general_position`, `per_P_side_counts = [6,6,6,6,6,6,2]`, `disjoint_count_eq_11`. **Core Lean only — zero imports**, verified to build with an empty `LEAN_PATH`, so Mathlib is not in its trust base. Axioms: `propext` only. Coordinates verified identical to the committed JSON. **Scope limit:** simplicity is proved at the *orientation* level (distinct vertices, no 3 of the 7 collinear, consecutive sides non-collinear, no proper crossing of non-adjacent sides). The step from that to "the closed polygonal curve is a Jordan curve in ℝ²" is standard but **not formalized**. |
| 2 | Lemma A (new): an uncrossable `S ⊆ sides(P)` forces `|E| ≥ n + (m−|S|)` | **VERIFIED IN LEAN** (counting reduction only) | `lean/LemmaA.lean`; `results/validation/2026-09-13_lean_build.log` | Kernel-checked 2026-09-13 against Mathlib v4.33.1. `card_E_ge`, `card_E_ge_ten`, `card_E_ge_eleven` (the parity upgrade), and `crossings_le_38 : I ≤ 38`. Axioms: the three standard ones only. **What is proved is an implication**: the geometric content (`h1`, `h2`), parity (`hpar`) and `I + |E| = 49` (`hIE`) remain explicit hypotheses, discharged in Lean only for the one explicit certificate pair (`nonvacuous`, `cert_I_le_38`, `Rcert_card_E = 11`). The (★) vertex-avoiding-line subtlety lives in `h1` and is **not** formalized. |
| 3 | Parity / `I + \|E\| = 49`, and `I` even | **MANUALLY CHECKED** + **VERIFIED BY EXACT COMPUTATION** on instances | `docs/proof-outline.md` Step 1; checked on the lower-bound certificate | Elementary. Two non-collinear segments meet at most once; ∂P, ∂Q are closed curves. |
| 4 | General-position reduction (`f = f_general position`) | **EXTERNAL PUBLISHED LEMMA** (AKR §9.1) — the project's own earlier argument is **SUPERSEDED / KNOWN DEFECT** | `docs/proof-outline.md` Step 0; `docs/external-lemma-audit.md` §7; `known-issues.md` K-10 | **Repaired 2026-09-13.** Step 0 now cites AKR §9.1 rather than proving the reduction itself, and states exactly the consequences used downstream (simplicity; no vertex on the other boundary; no three combined vertices collinear; no two combined sides parallel; hence `ℓ(q_j)` contains no `P`-vertex; intersections countable as proper crossings). The **earlier project-specific perturbation rule was incorrect** — its type-(iii) step destroys the intersection point when `Cone_P(v) ⊂ Cone_Q(w)` — and never addressed a side participating in several degeneracies at once. The failed argument is preserved in git history, not edited away. |
| 5 | Exceptional classification: exactly 16 labelled / 14 classes | **INDEPENDENTLY REIMPLEMENTED + EXTERNAL CROSS-CHECK** | `independent/order_type_audit/`; `data/exceptional_profiles/exceptional_profiles_14.json` | Audited 2026-09-13 by a fresh agent with no inherited context, from an external order-type database, without importing `chiro.py`/`geom.py`. Independently reproduced 6342 simple heptagons, the 6007/319/**16** split and the **14** classes. **All four downstream profile fields match 14/14** (`M_set`, `maximal_crossing_sets`, `lemma2_windows`, `avoiding_pairs`), verified twice: by the auditor recomputing its predicates on the project's representatives, and independently by the main agent transporting the project's stored fields through the dihedral group element. 33/33 adversarial tests pass, including 490 explicit rational witness lines and exhaustive chirotope-vs-coordinate cross-checks. |
| 6 | Order-type enumeration: 1, 2, 3, 16, 135 for n = 3…7 | **EXTERNALLY CROSS-CHECKED (exact set equality)** | `independent/order_type_audit/external/otypes07.b08`; `data/order_types/order_types_7.json` | Compared 2026-09-13 against the **TU Graz order-type database** (`otypes07.b08`, 1890 bytes = 135×7×2, sha256 `0f13421854f049…`). The project's 135 chirotopes are **exactly** the 135 realizable order types up to relabelling and reflection — set equality in both directions, 0 in either difference. **Consequence:** the project's "superset of realizable order types" argument is sound but turns out to be *unnecessary* — the sets are equal. Every representative was independently confirmed to be a uniform rank-3 oriented matroid (44 topes each). |
| 7 | Graph enumeration: 13,003,620 nine-edge bipartite graphs with min degree ≥ 1 | **VERIFIED BY EXACT COMPUTATION** | `results/logs/2026-09-13_audit_enum_E9.log`; `results/counts/pipeline_counts.json` | Reproduced exactly. Also cross-checked against the closed form and against the corrected split 5,040 + 476,280 + 13,003,620 = 13,484,940 (see `known-issues.md` K-01). |
| 8 | AKR Lemma 5 translation (consecutive **and avoiding** pairs) | **EXTERNAL PUBLISHED LEMMA** + **VERIFIED** translation | `docs/external-lemma-audit.md` §4; `lean/Endgame.lean` | Audited against the journal text hypothesis by hypothesis on 2026-09-13: both the consecutive and the avoiding instances match, and the `avoiding` orientation-sign test was re-derived independently from AKR's definition. The deduction to the neighbourhood-difference form used by the search is now **kernel-checked as an `iff`** in `lean/Endgame.lean` (`akr5Conclusion_iff_adjacent`), so the filter is provably neither a weakening nor a strengthening of the lemma's conclusion. |
| 9 | AKR Lemma 7 ⟹ `H` bipartite | **EXTERNAL PUBLISHED LEMMA** + **PROBABLY CORRECT — HUMAN REVIEW STILL DESIRABLE** | `docs/external-lemma-audit.md` §5 | **Materially de-risked 2026-09-13, by two findings the project had not noticed.** (i) The **SoCG 2020** proof of Lemma 7 selects the associated pairs *with the cone conditions stated explicitly* (`I(q,q±1) ∈ Cone(p_i,p_{i+1})`), which forces the **existential** reading of "is hooking" that the whole `H`-bipartite filter depends on. The journal version **deleted** those clauses, making its own next sentence a non sequitur — so cite SoCG for this one point. Verified verbatim in both PDFs by the main agent. (ii) **AKR §10.2 (journal-only) reports the authors' own independent computer verification of Lemma 7** — 158,830 eight-line arrangements, 840 assignments each, yielding 14 configurations of which 13 fail Lemma 5's hooking/hooked pattern. This is the best available corroboration of the project's principal import and should be cited. Not VERIFIED because AKR's **Observation 6 (Axis Property) is unproved in both versions** and is false under AKR's literal definition of "associated"; it is used throughout Lemma 7's case analysis. That residual risk is in the *source*, not in the project's translation. |
| 10 | Černý Lemma 2 use (4 consecutive sides, D inside triangle ABC) | **EXTERNAL PUBLISHED LEMMA** + **VERIFIED** translation | `docs/external-lemma-audit.md` §3 | Audited 2026-09-13 against the published statement. A real pipeline rejection was exhibited end to end: an exact integer realisation of the heptagon, the points A,B,C,D,E identified, `D ∈ int(ABC)` verified exactly, and the induced 4×4 block displayed as an exact perfect matching. An 8-probe adversarial battery confirms the filter does **not** fire on an extra edge, a missing edge, a non-injective map, or a wrong window. |
| 11 | Černý Lemma 3 is **not needed** | **VERIFIED BY EXACT COMPUTATION** | `data/certificates/final_elimination_225.json` (generated with L3 **off**); `results/logs/2026-09-13_make_final_certificate_no_cernyL3.log` vs `..._with_cernyL3.log` | Resolved 2026-09-13 (`known-issues.md` K-06). The pipeline was run with and without Černý L3: both give 2,300 → 121 → 225 → **0**, and the two certificates are identical case for case. The 15,288 graphs L3 removes are all removed by crossing-set compatibility anyway, so L3 is redundant *given* that filter. **The elimination therefore rests on four published lemmas — Černý L1, L2 and AKR L5, L7 — not five.** Established from a single codebase; inherits K-02 and K-09. |
| 12 | Final elimination: zero survivors | **COMPUTATION, NEEDS INDEPENDENT REPRODUCTION** | `results/logs/2026-09-13_audit_enum_E9.log`; `results/logs/2026-09-13_audit_pairs_196_class_pairs.log`; `data/certificates/final_elimination_225.json`; `independent/implementation_b/` | Reproduced end-to-end: 13,003,620 → 42,238 → 24,990 → 9,702 → 2,300 → 121 → **0**, and separately **0** for each of the 196 ordered class pairs under three representative labellings. The reduction up to the final filter is now reproduced by a second, materially different implementation (row 14), and the final filter itself ships a per-case certificate (row 13). What remains single-sourced is the **order-type enumeration and exceptional classification** that both implementations consume, and the reading of the external lemmas that both encode. |
| 13 | The 225-case endgame | **VERIFIED IN LEAN** (each case) / **NEEDS INDEPENDENT REPRODUCTION** (completeness of the list) | `lean/Endgame.lean`; `data/certificates/final_elimination_225.json`; `results/validation/2026-09-13_lean_endgame_build.log` | Kernel-checked 2026-09-13, **core Lean, no Mathlib** (confirmed standalone with `LEAN_PATH=.`). `all_225_cases_fail_AKR5_requirement` and `all_225_cases_fail_AKR5_conclusion` prove every one of the 225 cases violates AKR Lemma 5's conclusion. `akr5Conclusion_iff_adjacent` proves the tested neighbourhood-difference predicate is **equivalent** (not merely implied by) the lemma's edge/non-edge conclusion — so the filter is neither a weakening nor a strengthening; it depends on **no axioms at all**. `all_225_pairs_in_different_components` **recomputes** the component separation in the kernel rather than trusting the stored array. Axioms elsewhere: `propext`, `Quot.sound` only — no `Classical.choice`. Non-vacuity: 2016 of the 4725 side pairs in these same graphs *do* satisfy the condition (independently recomputed by the main agent). **Still not proved: completeness of the 225-case list**, which rests on the unformalized 13,003,620-graph enumeration. |
| 14 | Independent implementation of the finite reduction | **COMPUTATION, REPRODUCED BY A SECOND IMPLEMENTATION** (code independence) / **TODO** (specification and author independence) | `independent/implementation_b/`; `results/validation/2026-09-13_implementation_b_vs_certificate.log`; `results/logs/2026-09-13_graph_count_closed_form.log` | Partially resolved 2026-09-13 (`known-issues.md` K-02). A C++ reimplementation written from a written spec, with a transposed enumeration axis, a degree-sequence-first traversal, bitboard graph keys, bitmask-closure components, parity union-find bipartiteness and SDR-based Černý L2, reproduces every count **and the exact 225-triple set** (zero elements in either set difference). The 13,003,620 figure is separately confirmed by a closed-form generating-function derivation with no enumeration. **But it is not clean-room**: the same agent wrote it having already read Implementation A, both encode the same reading of the external lemmas, and B consumes the profile data rather than re-deriving it. A check by a different person is still missing. |
| 15 | `lean/LemmaA.lean` and `lean/LowerBound.lean` | **VERIFIED IN LEAN** | `results/validation/2026-09-13_lean_build.log` | Both compile clean (`lake build`, exit 0, 742 jobs). No `sorry`, no `admit`, no new `axiom`, no `native_decide`, no `unsafe`, no floating point — verified by scanning the code with comments stripped. `#print axioms` re-run independently by the main agent shows only `propext` / `Classical.choice` / `Quot.sound`. The previous `LemmaA.lean` skeleton had never compiled; it was **rewritten**, not patched. A latent defect in the old file is worth recording: `Odd` was not in scope under its imports, so auto-bound-implicits silently turned it into a free variable and two theorems elaborated as vacuous nonsense **without any error**. `set_option autoImplicit false` now prevents this. |
| 16 | `Model.lean`, `Imported.lean`, `Profiles.lean`, `Classification.lean`, `Main.lean` | **TODO** | `docs/lean-architecture.md` | Of the seven-file plan, file 0 (`LowerBound.lean`), file 1 (`LemmaA.lean`) and the decisive finite theorem of file 6 (`Endgame.lean`) now exist and are kernel-checked. The remaining pieces — the model, the five published lemmas as axioms, the profile table, the classification, and the `Main.lean` assembly — are not started. `f(7,7) = 38` is **not** a Lean theorem. |
| 17 | Final Lean theorem `f 7 7 = 38` | **TODO** | — | Not started. Per `docs/lean-architecture.md` it would depend on `Imported.lean` (five published lemmas as `axiom`s) and initially on an axiomatized classification — so even when it first compiles it will be **conditional on project-specific axioms**, not kernel-verified from Mathlib foundations. |
| 18 | Independent human verification | **TODO** | — | None. No person other than the original author has checked any part of this. |
| 19 | Superseded first pipeline (13,484,940 / 43,330 / 3,522 / 64, using Černý L3) | **SUPERSEDED** | `archive/superseded/` | Retained as research record. Its headline graph count was mislabelled (defect D1) and its intermediate counts were labelling-dependent (defect D2). Do not cite. |

## What a reader should take away

**Headline status.**

> The candidate proof has **no known computational gap**. One superseded internal
> perturbation argument is known to be **incorrect**, but the required reduction
> follows from AKR §9.1. The principal remaining mathematical review item is the
> interpretation and application of **AKR Observation 6 and Lemma 7** in the
> deduction that the auxiliary graph `H` is bipartite.

This is **not** a claim that `f(7,7) = 38` is proved, formally verified, or free
of gaps. It is a claim about where the remaining risk is concentrated.

### Verified / checked

| Item | How |
|---|---|
| Explicit 38-crossing construction | **Lean kernel-checked**, core Lean, no Mathlib |
| Lemma A counting + parity | **Lean kernel-checked** (as an implication) |
| 225-case endgame | **Lean kernel-checked**, plus certificate + independent checker |
| `AKR5Conclusion ↔ AKR5Adjacent` | **Lean kernel-checked**, axiom-free |
| Černý L1, Černý L2 | Audited against the published paper, hypothesis by hypothesis |
| AKR L5 (consecutive **and** avoiding) | Audited against the published paper |
| Strict Lemma-A line condition | Proved from AKR §3's collinearity assumption |
| AKR §9.1 general-position reduction | Audited; **imported**, not reproved |
| 135 order types | Exact set equality with the TU Graz database |
| 6,342 simple heptagons | Externally cross-checked (`hamilt07.b08`) |
| 14 exceptional profiles | Independently reimplemented; all fields match |
| Finite reduction → 225 triples | Two implementations (Python, C++), exact set match |

### Superseded / known defect

| Item | Status |
|---|---|
| The project's original Step 0 perturbation proof | **INCORRECT** in the cone-containment sub-case. Removed from the active proof and replaced by a citation to AKR §9.1. Preserved in git history; documented in `known-issues.md` K-10. |

### Remaining human-review item

| Item | Status |
|---|---|
| **AKR Observation 6 / Lemma 7, and the deduction that `H` is bipartite** | Observation 6 is unproved in both published versions and is **false** under the printed definition of "associated"; it holds under the narrower reading the project uses. The SoCG 2020 proof of Lemma 7 makes the intended existential choice explicit via cone conditions that the journal version deleted. No counterexample to the bipartiteness deduction was found. **Requires external expert confirmation** — see [`akr-l7-human-review.md`](akr-l7-human-review.md), which is self-contained and includes a drafted author question. |

### Other standing limitations

* Nothing establishes **completeness** of the 225-case list beyond the two
  independent enumerations; it is not formalized.
* `f(7,7) = 38` is **not** a Lean theorem; five of the seven planned Lean files
  do not exist.
* No person outside this AI-assisted process has reviewed any of it.
