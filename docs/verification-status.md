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
| 1 | Explicit 38-crossing lower-bound construction, `f(7,7) ≥ 38` | **VERIFIED BY EXACT COMPUTATION** | `data/lower_bound/lower_bound_38.json`; `python/validation/check_lower_bound.py`; `results/validation/2026-09-13_check_lower_bound.log` | Strongest result in the repository. Independent of every external lemma and every enumeration. Runs in <1 s. Confirms I=38, \|E\|=11, I+\|E\|=49, 3 components, per-side counts (6,6,6,6,6,6,2), both polygons simple, all 14 vertices in general position, no vertex on the other boundary. |
| 2 | Lemma A (new): an uncrossable `S ⊆ sides(P)` forces `\|E\| ≥ n + (m−\|S\|)` | **MANUALLY CHECKED** | `docs/proof-outline.md` Step 3; `docs/audit-report.md`; `lean/LemmaA.lean` (uncompiled) | Short, purely combinatorial, no geometry. The most reviewable piece of new mathematics here. A referee should read the (★) subtlety: the hypothesis must quantify over lines *disjoint from V(P)*, not over all lines — this was corrected mid-project (see transcript, "Repair made during this pass"). |
| 3 | Parity / `I + \|E\| = 49`, and `I` even | **MANUALLY CHECKED** + **VERIFIED BY EXACT COMPUTATION** on instances | `docs/proof-outline.md` Step 1; checked on the lower-bound certificate | Elementary. Two non-collinear segments meet at most once; ∂P, ∂Q are closed curves. |
| 4 | General-position reduction (`f = f_general position`) | **MANUALLY CHECKED** | `docs/proof-outline.md` Step 0; transcript §1B | Proved in this project rather than assumed, which is a genuine improvement over the one-sentence assertion in Černý et al. The type-(iii) non-interleaved case (push the vertex *into* the cone of Q) is the delicate one. Prose only — no formalization, and it has not been refereed. |
| 5 | Exceptional classification: exactly 16 labelled / 14 classes of exceptional simple 7-gons | **VERIFIED BY EXACT COMPUTATION** (classes) | `data/exceptional_profiles/exceptional_profiles_14.json`; `results/logs/2026-09-13_chiro_order_types.log` | Reproduced: 6342 simple 7-gons, split 6007 / 319 / 16, yielding 14 classes. Structural invariants independently re-derived here: every class has \|M\|=5, exactly five maximal crossing sets, **all of size 6**, and every class has exactly 2 avoiding pairs except class 7 which has 0. Must be read as an **inclusion**, never an equality. |
| 6 | Order-type enumeration: 1, 2, 3, 16, 135 for n = 3…7 | **VERIFIED BY EXACT COMPUTATION** | `python/core/chiro.py`; `data/order_types/order_types_7.json`; log as above | 8-second deterministic run. Counts match Aichholzer–Aurenhammer–Krasser. Only *necessary* conditions (3-term Grassmann–Plücker, 4-point Radon) are imposed, so the output is a **superset** of realizable order types — which is exactly what an exclusion theorem needs, and avoids any realizability claim. |
| 7 | Graph enumeration: 13,003,620 nine-edge bipartite graphs with min degree ≥ 1 | **VERIFIED BY EXACT COMPUTATION** | `results/logs/2026-09-13_audit_enum_E9.log`; `results/counts/pipeline_counts.json` | Reproduced exactly. Also cross-checked against the closed form and against the corrected split 5,040 + 476,280 + 13,003,620 = 13,484,940 (see `known-issues.md` K-01). |
| 8 | AKR Lemma 5 translation (consecutive **and avoiding** pairs) | **EXTERNAL PUBLISHED LEMMA** + **MANUALLY CHECKED** translation | `docs/audit-report.md` "Justification 2"; transcript §1A | The avoiding ⟺ chirotope-predicate equivalence is proved here. The definition of an *associated pair* was corrected mid-project to require the two non-edges; under the looser reading AKR's own Observation 6 is false (explicit counterexample in the transcript). **Not independently reviewed.** |
| 9 | AKR Lemma 7 ⟹ `H` bipartite | **EXTERNAL PUBLISHED LEMMA** + **MANUALLY CHECKED** translation | `docs/audit-report.md` "Justification 1"; transcript §1A | The most load-bearing and least secure translation in the project. It depends on reading Lemma 7's "both hooking" hypothesis **existentially**, which is how AKR's own proof uses it, but this reading is an interpretation of someone else's prose. The author flagged confirming it with the AKR authors as a priority. AKR Lemma 7 is itself a twelve-case, figure-driven argument. |
| 10 | Černý Lemma 2 use (4 consecutive sides, D inside triangle ABC) | **EXTERNAL PUBLISHED LEMMA** | `docs/proof-outline.md` Step 7; implemented as `L2_ok` | Load-bearing: dropping it leaves 64 (resp. 121) survivors rather than 0. |
| 11 | Černý Lemma 3 is **not needed** | **VERIFIED BY EXACT COMPUTATION** (claimed) / **TODO** (here) | `docs/proof-outline.md` header | Claimed in the transcript on the basis of a filter-minimality experiment. **No script in this repository performs that experiment**, and the pipeline as shipped still applies L3. Reducing the external dependency list from five lemmas to four rests on a run whose code is absent. See `known-issues.md` K-06. |
| 12 | Final elimination: zero survivors | **COMPUTATION, NEEDS INDEPENDENT REPRODUCTION** | `results/logs/2026-09-13_audit_enum_E9.log`; `results/logs/2026-09-13_audit_pairs_196_class_pairs.log` | Reproduced here end-to-end: 13,003,620 → 42,238 → 24,990 → 9,702 → 2,300 → 121 → **0**, and separately **0** for each of the 196 ordered class pairs under three representative labellings. This is the whole upper bound. It has been reproduced only from this one codebase. |
| 13 | The 225-case endgame with a uniform structural explanation | **TODO** | `docs/proof-outline.md` Step 8 | The human-readable account a referee will demand. The narrative and one worked example exist; the enumeration of the 225 combinations, the 121 distinct graphs and the (2,2,1⁵) degree-sequence claim are **not produced by any script here**, and there is no standalone certificate. See `known-issues.md` K-03. |
| 14 | Independent implementation ("Implementation B") | **TODO** | — | Claimed in `docs/proof-outline.md` ("2 independent implementations") and in the transcript, with a matching SHA-256. **No source code for Implementation B exists in these materials.** The claim is currently unauditable. `docs/audit-report.md` itself says the result is "not mitigated by an independent reimplementation, which a referee should demand". See `known-issues.md` K-02. |
| 15 | `lean/LemmaA.lean` | **SKELETON / NEVER COMPILED** | `lean/LemmaA.lean`; `lean/README.md` | Contains **no** `sorry`, **no** `axiom`, **no** `admit`, **no** `native_decide`. But it has never been compiled: there is no `lakefile`, no `lean-toolchain`, no Mathlib dependency, no build log, and no Lean toolchain was available when this repository was organized. Six proof steps carry `-- CHECK` markers flagging Mathlib lemma names the author was unsure of. **Absence of `sorry` is not evidence of correctness here.** |
| 16 | `LowerBound.lean`, `Model.lean`, `Imported.lean`, `Profiles.lean`, `Classification.lean`, `Elimination.lean`, `Main.lean` | **TODO** | `docs/lean-architecture.md` | Designed but **not written**. The transcript refers to several of these as existing in a `/heptagon/lean/` directory; they are not present in these materials. |
| 17 | Final Lean theorem `f 7 7 = 38` | **TODO** | — | Not started. Per `docs/lean-architecture.md` it would depend on `Imported.lean` (five published lemmas as `axiom`s) and initially on an axiomatized classification — so even when it first compiles it will be **conditional on project-specific axioms**, not kernel-verified from Mathlib foundations. |
| 18 | Independent human verification | **TODO** | — | None. No person other than the original author has checked any part of this. |
| 19 | Superseded first pipeline (13,484,940 / 43,330 / 3,522 / 64, using Černý L3) | **SUPERSEDED** | `archive/superseded/` | Retained as research record. Its headline graph count was mislabelled (defect D1) and its intermediate counts were labelling-dependent (defect D2). Do not cite. |

## What a reader should take away

1. **`f(7,7) ≥ 38` is solid.** One JSON file, one short script, a second of compute.
2. **`f(7,7) ≤ 38` is a candidate result.** The computation reproduces exactly and cleanly, but it is conditional on four external lemmas (two of them via non-trivial translations that no one else has reviewed), and it has been run only from a single Python codebase written in a single LLM-assisted session.
3. **Nothing is formalized.** The Lean directory is one uncompiled file.
