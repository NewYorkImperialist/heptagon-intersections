# Heptagon Intersection Project

A computer-assisted investigation of `f(7,7)`, the smallest open case of the
Dillencourt–Mount–Saalfeld conjecture on intersections of two simple polygons.

> **Status: candidate computer-assisted proof that `f(7,7) = 38`, undergoing
> independent verification and Lean formalization.**
>
> This is **not** a peer-reviewed result, and it has not been reviewed by any
> expert outside the AI-assisted development process.
>
> Several components **are** now formally verified in Lean, and the finite
> reduction has been independently reimplemented in a second language — but
> `f(7,7) = 38` is **not** a Lean theorem. See
> [`docs/verification-status.md`](docs/verification-status.md) and
> [`paper/proof-manifest.tex`](paper/proof-manifest.tex) before citing or relying
> on anything here.
>
> **Updated 2026-09-17, and this page has not caught up below.** The **whole
> upper bound**, both the `I ≠ 40` and the `I ≠ 42` branch, is now a Lean
> theorem for configurations in **general position**, importing **no published
> lemma** — not AKR Lemma 5, not AKR Lemma 7, not Černý Lemma 2, not the
> exceptional classification, not the 225-case list, not the 13,003,620-graph
> enumeration (`lean/ConfigBridge.lean`; `verification-status.md` rows 42–44).
> The strongest statement in the development is
> `ConfigBridge.isGreatest_38_pointCount`: **38 is the greatest number of points
> in `∂P ∩ ∂Q` as a set in `ℝ × ℝ`**, over configurations in general position.
> It carries one hypothesis, `FullGP`.
>
> **This is still not `f(7,7) = 38`, and exactly two things stand in the way.**
>
> **(a) Integer coordinates — CLOSED for the upper bound, commit `9b2b926`.**
> The `Config`-level theorems above have **integer** vertices.
> `lean/RealConfig.lean` transports all 364 orientation-determinant signs from
> a real configuration to an integer one, and `lean/RealUpperBound.lean` uses
> that to prove `pointsR_le_38 (R : RConfig) : (intersectionPointsR R).ncard ≤ 38`
> — **two simple heptagons with real coordinates, in general position, meet in
> at most 38 boundary points**, `intersectionPointsR R` being
> `boundaryP R ∩ boundaryQ R` as a genuine set in `ℝ × ℝ` built from Mathlib's
> `segment ℝ`. It imports no published lemma. **And later the same day, the
> equality: `isGreatest_38_real` (row 47) is `IsGreatest {n | ∃ R : RConfig,
> (intersectionPointsR R).ncard = n} 38`** — the attaining configuration is the
> integer lower-bound certificate cast into `ℝ × ℝ`. One caveat remains, stated
> in the file: `Set.ncard` is `0` on infinite sets, so it says nothing
> about boundaries sharing a segment — general position excludes that, but any
> weakening must re-examine it. A committed `verify-all` log now covers the
> module (`results/validation/2026-09-17_verify_all_after_real_equality.log`,
> COMPLETE SUCCESS, exit 0). *This sentence previously said no committed log
> covered the
> module.

> **Update, later on 2026-09-17 (rows 48–50): AKR §3's clause is discharged for
> the crossing-pair count.** `RealPerturb` (a crossing is an **open** condition,
> so a small perturbation loses none), `SegmentStable` (**disjoint segments stay
> disjoint** under a small perturbation — the fact simplicity needs, simplicity
> being a *closed* condition) and `RawConfig` (the assembly) together prove
> `raw_crossPairs_card_le_38 (R : RawPair) : (crossPairsOf R.V).card ≤ 38`,
> where `RawPair` is two heptagons simple **as point sets** and has **no
> general-position field at all**. This sharpens the remaining import: **§3's
> clause is no longer load-bearing for the *pair* count**, and **§9 is
> load-bearing specifically for the *point* count**, because at a degenerate
> configuration a point of `∂P ∩ ∂Q` can lie on **no** crossing pair — two
> sides that merely touch have a common point but vanishing determinants — so
> the pair bound does not give a point bound. `f(7,7) = 38` is still **not** a
> Lean theorem.

> **Update, later on 2026-09-17 (row 51): the remaining import is now AKR §9
> ALONE.** `lean/AKR9.lean` proves
> `points_le_38_of_no_vertex_on_boundary (R : Pair9) (h9 : NoVertexOnOther R) :
> (points9 R).ncard ≤ 38` — the **point** count, for two heptagons simple only
> *as point sets*, with **no general-position condition anywhere in the
> structure** and three collinear vertices allowed. The single hypothesis
> `NoVertexOnOther` is **(E9)**: no vertex of either polygon lies on the other's
> boundary, which is exactly what AKR §9 delivers, carried as an explicit named
> hypothesis and never as an axiom.
>
> **So AKR §3's unproved "for convenience" clause is no longer an input
> anywhere** — discharged for the pair count by rows 48–50 and for the point
> count here. Two further things worth noting: `lean/CollinearSegment.lean`,
> which does the real work (an interior common point with no endpoint on the
> other segment is a transversal crossing), **imports only Mathlib and
> `PointSetSemantics`**, so it is independently reviewable; and **finiteness is
> now a conclusion rather than a hypothesis** (`points9_finite`), which closes
> the `Set.ncard`-on-infinite-sets trap of `docs/akr-9-1-obligation.md` §5.4
> instead of assuming it away. Non-vacuity: every `RConfig` yields a `Pair9`
> satisfying (E9).
>
> `f(7,7) = 38` is still **not** a Lean theorem — nothing proves (E9), and the
> §9 audit advises against attempting it. `verification-status.md` row 51.

> **Update, 2026-09-24 (rows 113, 121): §9's import is now NARROWER — §9.2's
> half is proved.** `lean/Pair9Shift.lean` proves
> `points9_le_38_of_coincFree (R : Pair9) (hfin : (points9 R).Finite)
> (hcoinc : ∀ v j, R.V (pP v) ≠ R.V (pQ j)) : (points9 R).ncard ≤ 38` — the
> point count under a **strictly weaker** hypothesis than (E9). (E9) forbids a
> vertex anywhere on the other boundary; this forbids only vertex-**equals**-
> vertex. A `Q`-vertex sitting in the **interior** of a `P`-side is now
> **allowed**, and is handled by a proved chain of tilted shifts rather than
> assumed away. Since (E9) implies coincidence-freeness,
> `isGreatest_38_of_coincFree` **subsumes** `isGreatest_38_of_E9`.
>
> **What this does and does not change.** §9.2's job — removing vertex–**side**
> degeneracies — is no longer imported; it is a theorem, with the chain shown
> to terminate and both of its standing hypotheses shown to reproduce
> themselves along it. **§9.1's job — removing vertex–vertex coincidences — is
> still imported**, and is exactly the `hcoinc` above. The measure that drives
> §9.2's chain is provably the **wrong** one for §9.1 (row 117: a coincidence
> is one point but four incidences, and all 4,159 admissible moves on a
> committed witness drop it by exactly 3); the replacement is identified and
> supported numerically but **not proved** (rows 124, 130).
>
> Two checks worth stating: the bound is **attained** under the weaker
> hypothesis — `certPair9_tight` gives `≤ 38` on a configuration whose count is
> *exactly* 38, so the hypotheses are satisfiable and the bound is not slack —
> and an adversarial search over 251,003 configurations, 94% of them carrying a
> genuine degeneracy, found **nothing above 38** (row 126).
>
> `f(7,7) = 38` is still **not** a Lean theorem: §9.1's conclusion is assumed,
> and none of this has been reviewed by a mathematician.

>
> **(b) The general-position reduction — partly moved.** *(Corrected
> 2026-09-24: this item read "not moved … AKR §9 … (five pages, not formalized,
> **not attempted**)". That is no longer true and it contradicts the §9 box
> above in this same file.)* **§9.2's half is a Lean theorem** —
> `Pair9Shift.points9_le_38_of_coincFree`, `sorry`-free, which handles a vertex
> lying in the *interior* of a side of the other polygon. What is still
> **imported as prose** is **§9.1's half** — no vertex of one polygon *equal*
> to a vertex of the other — plus §3's unproved "for convenience"
> clause for the collinearity the development actually consumes. The
> perturbation-iteration half of §3's clause is now proved in Lean
> (`RealConfig.exists_near_generic`); the "count is unchanged" half is the bulk
> and is not.
>
> The interpretation of AKR Observation 6 / Lemma 7 is **still an open question
> about the published paper**, but it is **no longer a dependency** of anything
> here. Everything below this box that treats the enumeration, the 225-case
> list or the published lemmas as load-bearing describes the **historical
> route**. `docs/verification-status.md` is authoritative.

## Problem

For simple polygons `P` and `Q` with `m` and `n` sides in general position, let
`I(P,Q)` be the number of points where their boundaries meet, and let `f(m,n)`
be the maximum of `I(P,Q)`. The even cases were settled by Dillencourt, Mount
and Saalfeld in 1993; the odd–odd case is conjectured to be
`f(m,n) = mn − m − n + 3` and remains open in general.

For `m = n = 7` the conjecture predicts **38**. The published bounds are
`38 ≤ f(7,7) ≤ 40`, and `39` is excluded by parity — two closed curves in
general position cross an even number of times. **The entire question is
whether 40 is attainable.** Černý et al. (2003) explicitly flag `k = l = 7` as
open, and the Ackerman–Keszegh–Rote (2022) bound, while asymptotically optimal,
is vacuous at `m = n = 7`.

## Current claim

> This repository contains a **candidate computer-assisted proof that
> `f(7,7) = 38`**. The argument is undergoing independent verification and Lean
> formalization.

Two halves, with very different levels of support:

* **`f(7,7) ≥ 38`** — established. An explicit pair of integer-coordinate
  heptagons with 38 crossings, verifiable in under a second with no external
  lemma and no enumeration.
* **`f(7,7) ≤ 38`** — candidate. **For integer-coordinate configurations in
  general position it is a Lean theorem** as of 2026-09-17, importing no
  published lemma (`ConfigBridge.crossCountC_le_38_of_general_position`). What
  remains conditional is the passage from that class to arbitrary simple
  heptagons: integer → real coordinates, and the general-position reduction.
  *Historically*, and still for configurations outside general position, the
  argument is a finite case analysis conditional on external lemmas. Its Python
  source was written in one LLM-assisted session; the finite graph/profile
  reduction down to the 225 (class-pair, graph) triples has since been
  reproduced by a separately written C++ implementation, but the **final
  avoiding-pair filter has not** been run by any second implementation (K-20).
  **No step of any of this has been checked by a human outside the AI-assisted
  development process.**

## High-level proof idea

> **Read this section as the historical route (note added 2026-09-17).** Steps
> 2–7 below are how the upper bound was *found*, and they are still the only
> argument that covers configurations **not** in general position. They are no
> longer how the Lean development *proves* it. The formalized route is much
> shorter: a counterexample with `I = 40` (or `I = 42`) has a 7×7 disjointness
> graph with 9 (or 7) edges and no isolated side; **two** minimal local crossing
> patterns are impossible for any fourteen points in general position; every
> such graph contains a relabelled copy of one of them; therefore neither value
> occurs. With `I ≤ 42` and `I` even — both theorems for every configuration —
> that gives `I ≤ 38`, importing no published lemma. See
> `docs/covering-step.md` and `verification-status.md` rows 41–44.

1. **Lower bound.** An explicit 38-crossing construction.
2. **Lemma A (new).** If some set `S` of sides of `P` is *uncrossable* — no line
   disjoint from `V(P)` meets all of `S` — then `|E| ≥ n + (m − |S|)`. For
   `|S| = 4` this gives `|E| ≥ 10`, and since `I` is even, `|E|` is odd, so
   `|E| ≥ 11` and `I ≤ 38`. So any *non-exceptional* heptagon already forces the
   desired bound.
3. **Reduction.** A hypothetical 40-intersection configuration therefore
   requires **both** polygons to be *exceptional* (no uncrossable 4-set).
4. **Classification.** Exceptionality is a Boolean function of the chirotope, so
   it is decided by a finite enumeration: 135 order types of 7 points × 360
   cyclic orders → 6,342 simple heptagons → exactly **16 exceptional** (14
   classes up to symmetry). Only *necessary* realizability conditions are
   imposed, so the enumeration is a **superset** of realizable order types —
   sound for an exclusion theorem, and requiring no realizability certificates.
5. **External necessary conditions.** Published lemmas of **Černý et al.**
   (Lemmas 1–3) and **Ackerman–Keszegh–Rote** (Lemmas 5, 7) constrain the finite
   graph search. `I = 40` forces `|E| = 9` with minimum degree 1: 13,003,620
   bipartite graphs, cut to 9,702.
6. **Elimination.** Class-dependent filters reduce the survivors to **zero**,
   for each of the 196 ordered pairs of exceptional classes, under three
   different representative labellings. Exactly **225** (class-pair, graph)
   combinations reach the final filter, and each is refuted by AKR Lemma 5 on an
   avoiding pair — all 225 ship as a checkable certificate.
7. **Formalization and reproduction** are ongoing, and incomplete.

**New in this work:** Lemma A; the exceptional classification; the
"`H` is bipartite" reformulation of AKR Lemma 7; the extension of AKR Lemma 5 to avoiding pairs;
the final elimination. **Added 2026-09-17:** the two minimal forbidden crossing
patterns and the covering argument, which replace all of the above for
configurations in general position.

**External, imported as black boxes:** Černý et al. Lemmas 1 and 2, and AKR
Lemmas 5 and 7. (Černý Lemma 3 was shown redundant on 2026-09-13 — see
`docs/known-issues.md` K-06 — so the dependency list is four lemmas, not five.) Their statements and applicability were checked; **their internal
proofs were not re-verified here.** The translations of AKR Lemmas 5 and 7 into
combinatorial filters are the least secure steps in the argument — see
[`docs/known-issues.md`](docs/known-issues.md) K-09.

> **Superseded as a dependency list, 2026-09-17.** For the general-position
> upper bound the load-bearing count of published lemmas is **zero**. Černý
> Lemma 1's consequence (minimum disjointness degree) is *derived* in
> `lean/SegmentGeometry.lean` from a parity argument rather than imported;
> Černý Lemma 2, AKR Lemma 5 and AKR Lemma 7 are not used. The **one**
> remaining import is the general-position reduction (AKR §9, plus §3's
> unproved clause), and the least secure step in the argument is now that §3
> clause — one sentence asserted "for convenience", with no proof and no lemma
> number. See [`docs/akr-9-1-obligation.md`](docs/akr-9-1-obligation.md).

## Repository map

| Path | Contents |
|---|---|
| `docs/` | Mathematical exposition and project status. Start with `verification-status.md`. |
| `python/` | Active computational source. `core/` (exact predicates, chirotope enumeration), `classification/`, `elimination/`, `validation/`. |
| `lean/` | Formalization. **1,779 declared `[[lean_lib]]` targets**, of which **1,756 are in `defaultTargets`** — the other **23 are not**, so a plain `lake build` does **not** build them; they include `AKR9` and `Pair9Shift`, which carry the §9 headline theorems. **Use the `Headline` target instead** (added 2026-09-24): `cd lean && lake build Headline` builds the 331-module chain carrying every headline theorem in ~11 s on a warm tree and prints their `#print axioms` lines. No project-specific `axiom` anywhere. The most recent committed full build is **1,762 libraries, 6,523 jobs, exit 0** (log: `results/validation/2026-09-17_verify_all_after_e9_attempt.log`, commit `8e6358a`); it predates the **16** modules added since — `SimplicityStable`, `SimplicityBridge`, `UniformEps`, `DependentSystem`, `DegBound`, `SignExp`, `R3Construct`, `TiltedShift`, `CrossTransport`, `CIInstance`, `RotationLaw`, `Pair9Shift`, `FactE`, `E9Directions`, `SwapPQ`, `Compose` — so "all compiling" is attested **14 commits and 16 modules behind**, and those 16 are exactly the §9 work. Most of the 1,779 are generated per-shard data modules; the hand-written development is a few dozen files. Exactly **five** import literally nothing and compile against an empty `LEAN_PATH`. See [`lean/README.md`](lean/README.md). *(Corrected 2026-09-17: this cell read "25 libraries … 1395 jobs … 735 theorems, 212 of them depending on no axioms at all … eight reach Mathlib". The theorem census has **not** been re-measured since 2026-09-15 and is therefore dropped rather than restated.)* *(**Re-measured 2026-09-24**, all figures in this cell re-read from commit `5bd737b` and from the build log itself. It previously read "1,756 declared libraries (commit `d22c313`)", "1,755 libraries, 6,518 jobs" against the `…_after_real_config.log`, and "attested two commits behind" — every one of those was stale, the build-log pointer was not the newest committed log, and the `defaultTargets` shortfall was not mentioned at all. Direct `import Mathlib` lines appear in **243** modules; at most **16** of those are hand-written.)* |
| `data/` | Generated mathematical data and certificates: order types, exceptional profiles, the lower-bound certificate, the 225-case endgame certificate, SHA-256 manifests. |
| `results/` | Reproduction logs, filter counts and validation output from the 2026-09-13 run, plus the 2026-09-14 kernel-enumeration benchmark. See [`results/README.md`](results/README.md). |
| `independent/` | Separately written re-derivations, each in its own subdirectory: `implementation_b/` (a C++ reimplementation of the finite reduction, written from a written specification), `order_type_audit/` (an order-type/exceptional-classification audit against external data), `akr_l7_reproduction/` (the SAT/DRAT investigation of AKR Observation 6 / Lemma 7), `no_a7_experiment/` (what the pipeline gives with the A7 filter removed). See [`independent/README.md`](independent/README.md). |
| `transcripts/` | Unmodified LLM session transcripts, kept as provenance. |
| `archive/superseded/` | The earlier pipeline, including a file with a documented defect. Preserved, not deleted. Do not cite. |
| `paper/` | `proof-manifest.tex`/`.pdf` — the claim-by-claim manifest of what is and is not established, and its bibliography. |
| `scripts/` | `verify-all.sh` (the single end-to-end verification entry point), `negative-tests.sh`, `extract-transcripts.py`. |
| `references/` | Notes on the cited papers, identified by DOI and SHA-256. The PDFs themselves are **not** redistributed. |
| `PROGRESS.md` | Append-only working log of the formalization effort. Not a status document — `docs/verification-status.md` is. |

Key documents:

* [`docs/verification-status.md`](docs/verification-status.md) — **authoritative** trust status, claim by claim.
* [`docs/covering-step.md`](docs/covering-step.md) — **the current upper-bound route**: the two forbidden patterns, the covering argument, and the bridge to `Config`.
* [`docs/akr-9-1-obligation.md`](docs/akr-9-1-obligation.md) — **authoritative on the general-position citation**: what AKR §9 does and does not prove, and why the collinearity clause rests on §3.
* [`docs/known-issues.md`](docs/known-issues.md) — every open gap, numbered.
* [`docs/proof-outline.md`](docs/proof-outline.md) — the argument in theorem/lemma form (the historical route).
* [`docs/computational-method.md`](docs/computational-method.md) — method and reproduction guide.
* [`docs/audit-report.md`](docs/audit-report.md) — the project's adversarial self-audit.
* [`docs/literature-notes.md`](docs/literature-notes.md) — sources and imported lemmas.
* [`docs/lean-architecture.md`](docs/lean-architecture.md) — the *original* seven-file formalization plan; **superseded**, and not what was built.
* [`docs/ai-disclosure.md`](docs/ai-disclosure.md) — how this work was produced.

## Verification status

See **[`docs/verification-status.md`](docs/verification-status.md)** for the
full table. In brief:

| | |
|---|---|
| Verified in Lean, **unconditionally, for every configuration** | `I + \|E\| = 49`; minimum degree ≥ 1 (*derived* from a parity proof, not imported); **`I ≤ 42`**; **`I` is even**; the 38-crossing construction; the crossing-pair count **equals** the number of points of `∂P ∩ ∂Q` in `ℝ × ℝ` |
| **Verified in Lean, for configurations in general position, importing no published lemma** *(new 2026-09-17, rows 42–44)* | **`I ≠ 40`**; **`I ≠ 42`**; **`I ≤ 38`**; and **`isGreatest_38_pointCount`** — 38 is the greatest number of boundary intersection **points**, over *integer*-coordinate configurations. One hypothesis, `FullGP` |
| **Verified in Lean, for configurations with REAL coordinates in general position** *(new 2026-09-17, rows 46 and 47)* | **`pointsR_le_38`** — at most **38 boundary intersection points**, as a set in `ℝ × ℝ` — and **`isGreatest_38_real`**, the matching `IsGreatest`, so **38 is exactly the maximum**. Removes the integer-coordinate restriction outright, in both directions. One caveat: `Set.ncard` is 0 on infinite sets (general position excludes the bad case) |
| Verified in Lean, given the exceptional-class invariants | **`I ≠ 42`** — the *historical* proof (`Exclude42`). Superseded by the row above, which needs no class data at all, and which is therefore free of the K-22 entanglement |
| Verified in Lean (enumeration obligations) | a counterexample lands in the searched domain; the domain has **13,003,620** elements; the search visits every element of it *(of the Lean transcription — there is no extraction)* |
| Verified in Lean (interfaces) | all 225 endgame cases; the AKR-L5 bridge as an `iff`; the component labelling (both directions); a bipartiteness decision procedure; the 225 stored `avoiding` flags against the class table |
| **The one open input** *(narrowed 2026-09-17, row 51)* | **AKR §9 alone** — "no vertex of one polygon lies on the boundary of the other" — carried as a single explicit Lean hypothesis, `AKR9.NoVertexOnOther`. *(§3's unproved "for convenience" clause was listed here too; it is now discharged for both the crossing-pair count (rows 48–50) and the point count (row 51) and is no longer an input anywhere.)* *(The integer-coordinate input, listed here earlier the same day, was closed **outright** — `RealUpperBound.pointsR_le_38` for the upper bound and `RealUpperBound.isGreatest_38_real` for the equality, the attaining configuration being the certificate cast into `ℝ × ℝ`.)* *This cell read: "**The one open input** — `I ≠ 40`, the 13,003,620-graph enumeration; `roadmap.md` §8a measures why it cannot currently be closed inside the kernel: memory, not time." `I ≠ 40` **is** now a kernel theorem for general position, by an argument that evaluates no graph at all; `roadmap.md` has not been updated and should be read as a 2026-09-14 document.* |
| Verified by exact computation | lower bound; order types; classification; graph enumeration; the full elimination pipeline |
| Superseded — known defect | the project's own Step 0 general-position argument (incorrect; replaced by a citation to AKR **§9** together with **§3**'s unproved clause — *citation corrected 2026-09-17; this cell said "§9.1", which does not say it*) |
| **Open review item** | **AKR Observation 6 / Lemma 7 and the `H`-bipartite deduction** — a question about the published paper, **no longer a dependency** of anything here. See [`docs/akr-l7-review-request.md`](docs/akr-l7-review-request.md), which supersedes `akr-l7-human-review.md`; *this cell pointed at the superseded document* |
| External published lemmas | Černý L1, L2 and AKR L5, L7 — statements checked, proofs not re-verified. (Černý L3 was audited too, then shown redundant — K-06 — so it is not a dependency.) In Lean they enter as **explicit named hypotheses**, never as axioms. **Since 2026-09-17 none of them is an input to the upper bound**: the only remaining import is the general-position reduction |
| Reproduced by a second implementation | the finite graph/profile reduction down to the 225-triple set, exact match (C++, different enumeration). **It does not run the final avoiding-pair filter** — that step has certificate and Lean independence but no second implementation (K-20) |
| Independently reimplemented and externally cross-checked | the 135 order types (**exact set equality** with the TU Graz `otypes07.b08` database) and the exceptional classification (14/14 on every profile field), by `independent/order_type_audit/` — a fresh audit that does not import `chiro.py`/`geom.py` |
| Needs independent reproduction | the final avoiding-pair elimination (K-20); the reading of the external lemmas, which every implementation here shares; the upper bound as a whole. *Each of these concerns the historical route; the general-position upper bound of rows 42–44 depends on none of them* |
| Not formalized at all | *(narrowed 2026-09-24, rows 113/121: **§9.2's half is now formalized** — `points9_le_38_of_coincFree` proves the point bound allowing a vertex in the interior of the other's side, so what is imported is **§9.1's half alone**, no vertex equal to a vertex. §9.1's step is **not** proved; its measure question is rows 117/124/130.)* the **general-position reduction** — AKR §9, plus the "count is unchanged" half of §3's clause. *Corrected 2026-09-17: this cell said "the Jordan-curve step and AKR §9.1's general-position reduction — everything is orientation-level over `Int × Int`". The §9.1 citation is wrong (see row 4). The Jordan curve theorem is **not claimed and not needed** — row 29 says so, and row 30 proves the polygon is a simple closed curve without it. And "everything is orientation-level" no longer holds: rows 26, 29, 30, 44 and 45 are statements about point sets in `ℝ × ℝ`. What is still restricted to `Int × Int` is the* configuration *(row 45)* |

## Reproducibility

No third-party packages are required — the standard library only. There is
deliberately no `requirements.txt`, because there are no versions to pin.

**Everything at once** — `scripts/verify-all.sh` is the single verification
entry point. It runs the Lean build, both certificate checkers, all five
SHA-256 manifests, the A7 DRAT evidence and Implementation B, asserting on each
tool's *output* rather than its exit status, and reports one of four distinct
outcomes (see the header of the script). It needs `lake`, `python3`, `shasum`
and a C++17 compiler; a missing tool is reported, never silently skipped.

```bash
bash scripts/verify-all.sh            # everything; COMPLETE SUCCESS = exit 0
bash scripts/verify-all.sh --quick    # sub-minute subset; always PARTIAL (exit 2)
```

The individual checks below are the useful entry points if you only want one.

**Quickest meaningful check (under a second)** — the lower bound, standalone,
independent of every external lemma:

```bash
export REPO=$PWD
export PYTHONPATH=$REPO/python/core
python3 python/validation/check_lower_bound.py
```

**Check the endgame certificate (under a second)** — verifies all 225 final
cases of the upper-bound argument with an independent checker:

```bash
python3 python/validation/check_final_certificate.py \
        data/certificates/final_elimination_225.json
```

**Quick validation (about 15 seconds)** — adds the order-type enumeration and
the exceptional classification:

```bash
mkdir -p /tmp/f77 && cd /tmp/f77
python3 $REPO/python/core/chiro.py
python3 $REPO/python/classification/make_exceptional_profiles.py
```

**Independent reduction, Implementation B (about 2 seconds)** — a separate C++
codebase that reproduces the reduction and the exact 225-case set:

```bash
cd independent/implementation_b
c++ -O2 -std=c++17 -o reduction reduction.cpp
./reduction --test profiles.txt                      # 23 unit tests
./reduction profiles.txt implementation_b_output.json
python3 compare_with_certificate.py
```

**Full elimination (about 6.5 minutes)**:

```bash
cd /tmp/f77
python3 $REPO/python/elimination/audit_enum.py 7
python3 $REPO/python/elimination/audit_enum.py 8
python3 $REPO/python/elimination/audit_enum.py 9

# audit_pairs.py reads audit_enum.py from the working directory
cp $REPO/python/elimination/audit_enum.py .
python3 $REPO/python/elimination/audit_pairs.py
```

Full details, expected output and the parts that **cannot** currently be run are
in [`docs/computational-method.md`](docs/computational-method.md).

## AI-assisted research disclosure

Substantial portions of the exploration, code generation, proof development,
auditing, and formalization assistance in this project were performed using
**Claude** (Anthropic) and **ChatGPT** (OpenAI). The organization of this
repository was itself performed by Claude.

LLM output is not treated as authoritative here. Full session transcripts are
preserved in `transcripts/` as provenance — they record where ideas came from,
including false starts and self-corrections, but a claim in a transcript has no
verified status. **Human verification is ongoing and, at present, largely
incomplete.** See [`docs/ai-disclosure.md`](docs/ai-disclosure.md).

## Citation and status warning

**This repository should not be cited as a peer-reviewed proof of
`f(7,7) = 38`**, and should not be described as having settled the case, unless
and until its status changes.

If you refer to this work in the meantime, describe it as a *candidate
computer-assisted proof undergoing verification*, and cite the specific commit
you examined. `CITATION.cff` carries the same warning in machine-readable form.

The lower bound `f(7,7) ≥ 38` may be cited as verified computation; it is also
not new — the construction realizes the known Dillencourt–Mount–Saalfeld lower
bound.

## License

Code and documentation in this repository are released under the MIT License
(see `LICENSE`). The preserved transcripts in `transcripts/` are a record of
research provenance rather than licensed software; see `transcripts/README.md`.
