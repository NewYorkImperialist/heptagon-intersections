# A Proof Dependency Manifest for a Candidate Computer-Assisted Proof of `f(7,7) = 38`

**Jayden Lin** — Northeastern University · 14 September 2026

## Disclosure of generative-AI use

Generative-AI systems — principally Anthropic's Claude, together with OpenAI's
ChatGPT — were used substantially throughout this project: proof exploration and
the search for the reduction strategy; literature-guided reasoning about the
published results; generation of essentially all software, in Python, C++ and
Lean; the computational experimentation; debugging; the construction of redundant
and independent verification paths; the Lean formalisation; source auditing of
the cited papers; and the drafting of the documentation, including this manifest.

The named author is responsible for the claims made here. AI-generated output was
not treated as inherently trustworthy. Each major claim is discharged by an
explicit, separately recorded mechanism — source audit, independent
reimplementation in a second language, an externally sourced dataset, a
machine-checkable certificate with a standalone checker, or Lean-kernel
verification — and the dependency table records which applies to which claim.
Several substantive errors introduced during AI-assisted development were caught
by those mechanisms and are catalogued below rather than quietly repaired.
Project artifacts and provenance, including the complete development
transcripts, are preserved in the repository.

No claim is made about conformance with any particular publisher's or
institution's generative-AI policy; that must be assessed separately.


> **The authoritative version of this document is
> [`../paper/proof-manifest.tex`](../paper/proof-manifest.tex)** (compiled:
> `paper/proof-manifest.pdf`, 24 pages). This Markdown file is a convenience
> mirror; where the two differ, the LaTeX file is correct.

> **Status.** This describes a *candidate* computer-assisted proof. All currently
> known computational components have been independently checked or formally
> verified, but the interpretation of AKR Observation 6 / Lemma 7 remains subject
> to external human review. **`f(7,7) = 38` is not a Lean theorem**: the
> strongest formalised statement still carries two hypotheses. The result should
> not be treated as established.

> **SUPERSEDED IN PART, 2026-09-17. Read this before anything below.** This
> document is dated 14 September 2026 and has not been revised since. Three of
> its structural claims are now wrong, and the LaTeX original
> (`paper/proof-manifest.tex`) carries the same errors — it has **not** been
> updated either, and the note at the top of this file that says the LaTeX file
> is correct where the two differ should not be read as endorsing its status
> claims.
>
> 1. **"the strongest formalised statement still carries two hypotheses"** — it
>    carries one, and neither of the two named here. The strongest statement is
>    `ConfigBridge.isGreatest_38_pointCount`, and its only hypothesis is
>    `FullGP`. See the box immediately below.
> 2. **"the interpretation of AKR Observation 6 / Lemma 7 remains subject to
>    external human review"** — still true as a question about the published
>    paper, but AKR Lemma 7 is **no longer a dependency** of the upper bound,
>    nor is AKR Lemma 5, Černý Lemma 2, the order-type crossing fact, the
>    exceptional classification, the 225-case list, or the 13,003,620-graph
>    enumeration.
> 3. **Every citation of "AKR §9.1" for the general-position clause is wrong**
>    (it occurs at least three times below). §9 = §9.1 + §9.2 justifies only
>    "no vertex of one polygon lies on the boundary of the other"; the
>    collinearity clause the development consumes has its only warrant in one
>    unproved sentence of **§3**. `docs/akr-9-1-obligation.md` is authoritative.
>
> `f(7,7) = 38` is **still not a Lean theorem**, and **exactly two** things
> separate the development from it: `Config` has **integer** vertex coordinates
> (the sign-vector half of that reduction is `RealConfig.exists_integer_model`),
> and the **general-position reduction** is imported as prose — AKR §9, plus
> §3's unproved clause, of which the perturbation-iteration half is now proved
> (`RealConfig.exists_near_generic`) and the "count is unchanged" half is not.
> `docs/verification-status.md` is authoritative and wins over this file.

> **Update, later on 2026-09-17: the integer-coordinate item is now
> CLOSED for the upper bound.** `lean/RealUpperBound.lean` (commit `9b2b926`)
> proves, in two steps and importing **no published lemma**:
> `crossingPairsR_card_le_38 (R : RConfig) : (crossingPairsR R).card ≤ 38`, by
> transporting all 364 determinant signs through
> `RealConfig.exists_integer_model` into a genuine `Config` in `FullGP`; and
> then `pointsR_le_38 (R : RConfig) : (intersectionPointsR R).ncard ≤ 38`,
> where `intersectionPointsR R` is `boundaryP R ∩ boundaryQ R` — a genuine set
> in `ℝ × ℝ`, each boundary a union of Mathlib `segment ℝ`s over the fourteen
> **real** vertices. **So two simple heptagons with real coordinates, in
> general position, provably meet in at most 38 boundary points.**
>
> **What is left, and it is one thing plus two caveats.** The one thing is
> **AKR §9**: `RConfig` *assumes* general position as a structure field, and
> reaching it from an arbitrary pair of simple heptagons needs §9 followed by
> §3's clause. `RealConfig.exists_near_generic` proves §3's iteration half but
> **not** that the intersection count survives the perturbation, which is what
> would license any conclusion about the original configuration. *(Update,
> later the same day: the **second** caveat below is closed — `isGreatest_38_real`
> (row 47) proves the *equality* at the real level, the attaining configuration
> being the integer lower-bound certificate cast into `ℝ × ℝ`.)* The caveat that
> remains: `Set.ncard` is `0` on infinite sets, so
> `pointsR_le_38` says nothing about boundaries sharing a segment — general
> position excludes that here, but any weakening must re-examine it. No
> committed `verify-all` log covers this module.
> `verification-status.md` row 46.

## What is a Lean theorem today, and what is not

> **Corrected 2026-09-17.** The section below is retained as written on
> 2026-09-14. The strongest statement in the development is now
>
> ```lean
> theorem ConfigBridge.isGreatest_38_pointCount :
>     IsGreatest { n | ∃ K : Config, FullGP K ∧
>       (IntersectionCount.intersectionPoints K).ncard = n } 38
> ```
>
> where `intersectionPoints K` is `boundary K.PV ∩ boundary K.QV` as a set in
> `ℝ × ℝ`, built from Mathlib's `segment ℝ`. It takes **one** hypothesis,
> `FullGP` — all 364 orientation determinants of the fourteen combined vertices
> nonzero, of which `Config` already forces 168 — and imports **no published
> lemma**. `isGreatest_38_final` below is unchanged and still true; it is simply
> no longer the best available, and neither of its hypotheses is needed.

Twenty-six Lean libraries is enough to create a false impression of coverage.
*(Figure stale: `lakefile.toml` declares **1,756** libraries as of commit `d22c313`,
almost all of them generated per-shard data modules. The point the sentence
makes is, if anything, sharper now.)*
The strongest statement in the development is

```lean
theorem IntersectionParity.isGreatest_38_final
    (hclass : ∀ K : Config, ∃ mcs MP, MP.card = 5 ∧ …)   -- X1 + X2
    (hne40  : ∀ K : Config, crossCountC K ≠ 40)          -- UB40
    : IsGreatest MainTheorem.attained 38
```

and neither hypothesis is proved anywhere — *though, since 2026-09-17, both
are discharged for a configuration in general position:*

* `hclass` is the exceptional-class invariant together with the order-type
  crossing fact (**X1** and **X2**, i.e. **EX** and **E4**), asserted for *every*
  configuration. Its satisfiability is not established, and no non-vacuity
  witness is supplied.
* `hne40` is `I ≠ 40`, i.e. the whole 13,003,620-graph enumeration (**UB40**). It
  is **out of reach of the Lean kernel** — five routes tested, all dead.
  *(Corrected 2026-09-17. All five routes tried to evaluate the filter pipeline
  inside the kernel, and they remain dead. A sixth route deletes the pipeline:
  two minimal local crossing patterns are impossible for fourteen points in
  general position, every one of the 13,003,620 graphs contains a relabelled
  copy of one, and the covering argument is a Lean theorem. So
  `ConfigBridge.crossCountC_ne_40` discharges `hne40` for a configuration in
  general position, evaluating no graph at all. `crossCountC_ne_42` discharges
  the other branch with **no class data**, so `hclass` is not needed either.
  The unconditional `hne40`, over every `Config`, is still not a theorem.)*

Two further gaps sit outside the statement. `Config` is *orientation-level* over
`Pt := Int × Int`: "simple" is a conjunction of integer orientation predicates.
Since 2026-09-14 that predicate is *known* to give the point-set property —
`PolygonSimple.simple_closed_polygon` proves that distinct sides meet exactly at
a shared cyclic endpoint or not at all, as subsets of ℝ² — so "simple closed
polygonal curve" is no longer a gap. What is **not** formalized is the Jordan
curve theorem itself (separation of the plane), and the reduction to general
position, **GP** (AKR **§9**, together with **§3's unproved clause**), which is
cited. *(Citation corrected 2026-09-17: this said "AKR §9.1". §9.1 is the
vertex-vertex half of "no vertex of one polygon on the other's boundary" and
says nothing about collinearity — which is the half `ConfigBridge.FullGP`
consumes. Also: the Jordan curve theorem is not a gap, because it is neither
claimed nor needed — `verification-status.md` row 29. The integer-coordinate
restriction **is** a gap, and `RealConfig.exists_integer_model` closes only its
sign-vector half.)*

**Unconditional for an arbitrary `Config`:** `I + |E| = 49`; `δ(G^D) ≥ 1`;
`I ≤ 42`; `I` even; 38 attained. So the answer lies in `{38, 40, 42}` with no
hypotheses at all (`attained_38_and_le_42`, `attained_mem_three`). Adding
`hclass` removes 42 (`Exclude42.not_crossCount_42`). Only 40 resists.

## The reductio in one line

With `G^D` the bipartite disjointness graph on the 7+7 sides and `I + |E^D| = 49`:

```
I = 40  ⟹  |E^D| = 9                         [ I + |E^D| = 49 ]
        ⟹  δ(G^D) ≥ 1                        [ C1  = Černý L1 ]
        ⟹  P and Q both exceptional          [ LA  = Lemma A + parity ]
        ⟹  profiles ∈ {14} × {14}            [ OT, EX = order-type classification ]
        ⟹  225 terminal triples / 121 graphs [ GR, COMP + A5-C, A7-EXT, C2 ]
        ⟹  every triple violates AKR L5      [ A5-A, CERT, LEAN-END ]
        ⟹  ⊥
```

Hence `I ≠ 40`; with `I ≤ 42` (C1), `I ≠ 42` (UB42), and `I` even, `I ≤ 38`; and
the explicit construction attains 38. Therefore `f(7,7) = 38`.

**On `I = 42`.** Černý Theorem 4 gives `f(7,7) ≤ 40`, which would make the
`I = 42` case vacuous — but the project does **not** import it (it rests on
Černý Lemma 3, unaudited here). The argument uses only Černý *Lemma 1*, which
caps `I ≤ 42`, so `I = 42` must be excluded on its own. `|E| = 7` forces a
perfect matching, so each `N(q_j)` is a singleton `{i_j}` and `q_j`'s crossing
set is `FULL ∖ {i_j}`, of size 6. Lemma A forbids an uncrossable 4-set here (it
would force `|E| ≥ 10 > 7`), so both polygons are exceptional; compatibility puts
that 6-set inside a maximal crossing set, and every maximal crossing set is
`FULL ∖ {m}` for `m ∈ M`, also of size 6. Two 6-subsets of a 7-set nest only if
equal, so `i_j ∈ M` for all seven distinct `i_j` — giving `|M| = 7` against
`|M| = 5`. This uses **no A7-EXT**: the older route through `H` = complement of
`C₇` is correct but unnecessary, so A7-EXT is load-bearing at exactly one point,
the `I = 40` endgame. Theorem 4 is corroboration, not an input.

## Dependency summary

| ID | Claim | Type | Source | Verification | Remaining risk |
|---|---|---|---|---|---|
| **GP** | general position may be assumed | published | AKR **§9** (= §9.1 + §9.2) for "no vertex of one polygon on the boundary of the other"; AKR **§3** for "no three combined vertices collinear" and "no two combined sides parallel" | SOURCE-AUDITED | **§3's clause is asserted "for convenience" with no proof and no lemma number**, and it is the half `ConfigBridge.FullGP` consumes; nothing in §9 or §3 states that the perturbed polygons remain simple, which is also used. *(Row corrected 2026-09-17: the source column read "AKR §9.1, §3" and the risk column read "none known", both of which understated it. `docs/akr-9-1-obligation.md` is authoritative. The perturbation-iteration half of §3's clause is now proved in Lean — `RealConfig.exists_near_generic`.)* |
| **C1** | `δ(G^D) ≥ 1` | published | Černý L1 | SOURCE-AUDITED | none known |
| **C2** | forbidden local perfect matching | published | Černý L2 | SOURCE-AUDITED | none known |
| **C2-BRIDGE** | filter fires iff *exact induced* perfect matching | project inference | this project | LEAN-KERNEL-CHECKED | certifies the Lean transcription, not the Python/C++ source |
| **A5-C** | L5 on consecutive pairs | published | AKR L5 | SOURCE-AUDITED | none known |
| **A5-A** | L5 on avoiding pairs | published | AKR L5 | SOURCE-AUDITED; bridge LEAN-KERNEL-CHECKED | none known |
| **A7-EXT** | under the intended reading, AKR L7 gives: adjacent `H`-vertices have disjoint status sets | published + interpretation | AKR L7 | **VERY STRONGLY CORROBORATED — HUMAN REVIEW STILL DESIRABLE** | **principal open item**; Observation 6 is false as printed (K-14) but does not reach `S(e)`; four bridges remain the project's own reasoning |
| **A7-BRIDGE** | non-empty status sets + disjoint across edges ⟹ `H` bipartite | project inference | this project | LEAN-KERNEL-CHECKED | none known; conditional on A7-EXT |
| **LA** | Lemma A + parity ⟹ `I ≤ 38` | project lemma | this project | LEAN-KERNEL-CHECKED (counting core) | `h2` now *derived* (LEAN-GEO); `h1` and `(★)` stay hypotheses |
| **PAR** | `I` is even, every configuration | project lemma | this project | LEAN-KERNEL-CHECKED (2026-09-14) | none; was an assumption until then |
| **OT** | 135 order types | external dataset | Aichholzer et al. | EXTERNALLY CROSS-CHECKED (exact set equality) | none known |
| **EX** | 6,342 simple → 16 exceptional → 14 classes | enumeration | this project | INDEPENDENTLY REIMPLEMENTED; 6,342 externally cross-checked | not formalized; this is (E7)/(X1) |
| **GR** | 13,003,620 candidate graphs | enumeration | this project | INDEPENDENTLY REIMPLEMENTED + closed form + LEAN (`DomainCount`) | none known |
| **COMP** | pipeline → 121 graphs / 225 triples | enumeration | this project | INDEPENDENTLY REIMPLEMENTED (exact set match, filters (a)–(d)) | inherits **A7-EXT**; K-20 |
| **CERT** | each of the 225 violates AKR L5 | certificate | this project | CERTIFICATE-CHECKED | completeness not certified |
| **LEAN-LB** | 38 crossings, simple, general position | Lean | `lean/LowerBound.lean` | LEAN-KERNEL-CHECKED | counted over provably all 49 side pairs |
| **LEAN-LA** | counting + parity core | Lean | `lean/LemmaA.lean` | LEAN-KERNEL-CHECKED | an implication |
| **LEAN-END** | all 225 fail L5; `iff` bridge | Lean | `lean/Endgame.lean` | LEAN-KERNEL-CHECKED | completeness not formalized |
| **LEAN-GEO** | polygon meets a line evenly ⟹ `δ(G^D) ≥ 1` and Lemma A's `h2` | Lean | `lean/SegmentGeometry.lean` | LEAN-KERNEL-CHECKED | Mathlib-free; orientation level |
| **LEAN-I2** | the mask bit means point-set disjointness in ℝ² | Lean | `DisjointnessGraph` + `PointSetSemantics` | LEAN-KERNEL-CHECKED | I2a + I2b; the only step that reaches ℝ |
| **LEAN-MAIN** | 38 is the greatest attained crossing count over `Config` | Lean | `MainTheorem`, `IntersectionParity` | proved *from* `hclass` and `hne40` | **not a proof of `f(7,7) = 38`** |
| **LB38** | `f(7,7) ≥ 38` | construction | this project | LEAN-KERNEL-CHECKED | simplicity now point-set (`PolygonSimple`); the Jordan curve theorem is still not formalized |
| **UB42** | `I = 42` impossible | project inference | this project | LEAN-KERNEL-CHECKED; X1 decided for the 14 stored classes (`ClassInvariant`), X2 still assumed (`Exclude42`); also swept exhaustively | consumes C1, LA, EX only — **not** A7-EXT |
| **UB40** | `I = 40` impossible | composite | GP, C1, C2, A5-C, A5-A, A7-EXT, A7-BRIDGE, LA, COMP | NOT FORMALIZED; conditional on **A7-EXT** | **fails if A7-EXT fails**; carried in Lean as the bare hypothesis `hne40`, which is out of kernel reach |

## Filter pipeline

| Count | Next filter | Justification | Checked by |
|---:|---|---|---|
| 13,003,620 | AKR L5, consecutive | A5-C | Python, C++ |
| 42,238 | AKR L7 ⟹ `H` bipartite | A7-EXT + A7-BRIDGE | Python, C++ |
| 24,990 | crossing-set compatibility | elementary | Python, C++ |
| 2,300 | Černý L2, class-dependent | C2 | Python, C++ |
| 121 | *(change of counted object)* | — | — |
| 225 | AKR L5, avoiding | A5-A | Python, certificate, Lean |
| 0 | — | — | — |

**`121 → 225` is not a filter.** Counts up to 121 are *graphs*; 225 counts
*triples* `(class_P, class_Q, G)` on those same 121 graphs, since a graph may be
compatible with several classes on either side.

**The final step has no second implementation (K-20).** Implementation B
deliberately does not implement the avoiding-pair AKR L5 filter
(`reduction.cpp:20`, `SPEC.md` §6, `"final_avoiding_pair_filter_applied": false`).
So the step that actually refutes — `225 → 0` — has *certificate* and *Lean*
independence but no second implementation; "two implementations agree" covers
filters (a)–(d) only.

**Intermediate counts are artifacts (K-11).** 2,300 and 121 depend on which
representative labelling of each exceptional class the pipeline carries; a
superseded pipeline reported 3,522 and 64 at those stages. Only the terminal
emptiness is labelling-invariant, and it was re-derived per ordered class pair
(196 pairs × 3 labellings, 0 survivors in every case).

**A7-EXT cannot be dropped.** With that filter off and everything else identical
the pipeline ends at **2,187** surviving triples on **412** graphs, not 0. The
533 graphs surviving Černý L2 without A7 split as exactly 121 H-bipartite + 412
non-bipartite; the avoiding-pair filter kills all 121 and none of the 412.

**Černý Lemma 3 is not a dependency.** Running the pipeline with and without it
gives an identical set of 225 terminal triples.

## Strict vs loose exceptional condition

| Reading | Exceptional objects |
|---|---|
| **strict** — every line *disjoint from V(P)* misses some side of `S` | **16** |
| loose — no line at all meets all four closed sides | 2,268 |

Strict is the correct reading: Lemma A is only ever instantiated at the lines
`ℓ(q_j)`, which avoid `V(P)` by general position (GP5).

## Lean trust boundary

Lean 4.33.1, Mathlib `v4.33.1` (`0df444a3`). **1,756 declared libraries**
(commit `d22c313`). The most recent committed full build is **1,755 libraries,
6,518 jobs, exit 0** (log:
`results/validation/2026-09-17_verify_all_after_real_config.log`) and it
predates the last two committed modules, `RealConfig`'s `exists_near_generic`
extension and all of `RealUpperBound`. No `sorry`,
`admit`, project-specific `axiom`, `unsafe`, `partial` or `native_decide` in any
file (verified by scanning with comments stripped). All `decide` calls are
ordinary kernel reduction.

Exactly five libraries import literally nothing
(`LowerBound`, `GeometryDefs`, `EndgameDefs`, `Lemma7Bridge`,
`CernyL2Interface`), and compile against an empty `LEAN_PATH`.

> **Figures corrected 2026-09-17.** This paragraph read "**Twenty-six
> libraries, 1,397 jobs, exit 0**, re-verified 2026-09-14" and "Thirteen of the
> twenty-six are Mathlib-free … Only two — `PointSetSemantics` and
> `PolygonSimple` — reach ℝ." Three problems. The library and job counts are
> two generations out of date. The Mathlib-free count was measured over 26
> libraries and has **not** been re-measured; it is dropped rather than
> guessed, and what can be said is that 240 of the 1,756 modules carry a direct
> `import Mathlib…` line, 13 of them hand-written. And "only two reach ℝ" is
> now wrong: `IntersectionCount`, `ConfigBridge` and `RealConfig` all do —
> `RealConfig` works over `ℝ × ℝ` throughout, and `ConfigBridge`'s strongest
> theorem is a statement about a point set in `ℝ × ℝ`.
>
> The library table below also predates `CoverAll`, `CoverMatch`, `CoverShape`,
> `CoverColDeg`, `ConfigBridge`, `RealConfig`, the 218 `CCase*` modules and the
> `Cover*` / `MCase*` families, and does not list them.

| Layer | Libraries | What it gives |
|---|---|---|
| certificate & elementary geometry | `LowerBound`, `GeometryDefs`, `SegmentGeometry`, `LemmaA`, `LemmaABridge` | 38 crossings over provably all 49 pairs; `δ(G^D) ≥ 1` and Lemma A's `h2` from parity; the counting core; X3 |
| geometry → combinatorics | `DisjointnessGraph`, `PointSetSemantics`, `PolygonSimple` | I1, I2a; I2b (mask bit = point-set disjointness in ℝ²); `Simple7` ⟹ the real closed polygonal curve is non-self-intersecting — *not* the Jordan curve theorem |
| stored endgame | `EndgameDefs`, `EndgameData`, `Endgame`, `AvoidingFlag` | all 225 cases fail AKR-L5; components recomputed in-kernel; the `avoiding` flag *equals* the class table (I3, flag half) |
| filter transcriptions | `Lemma7Bridge`, `CernyL2Interface`, `FilterSoundness`, `ComponentLabelling`, `BipartiteDecision`, `CernyL2Derivation` | A7-BRIDGE; C2-BRIDGE; E1–E8 as named hypotheses; E6 and E8a discharged; E5 attempted and blocked |
| enumeration obligations | `EnumerationDomain`, `DomainCount`, `EnumerationComplete`, `CounterexampleCount` | obligations (1), (2), (3) proved; a counterexample is one of exactly 13,003,620 mask functions |
| upper-bound assembly | `Exclude42`, `UpperBoundAssembly`, `MainTheorem`, `IntersectionParity` | `I ≤ 42` unconditional; `I ≠ 42` from X1, X2; PAR; the final statement |

### The eight external inputs of the filter pipeline

`FilterSoundness.lean` proves each filter's soundness obligation as an
implication from explicitly *named* hypotheses. It declares no `axiom`, so
`#print axioms` stays clean and a reader can see which import carries which
theorem.

| ID | External input | Status |
|---|---|---|
| **E1** | AKR L5, consecutive pairs | open |
| **E2** | AKR L5, avoiding pairs + the stored `AV` list really is avoiding | open |
| **E3** | AKR L7 in the project's form (= **A7-EXT**) | open |
| **E4** | the order-type fact behind filter (c) (= **X2**) | open |
| **E5** | Černý L2: no window carries an exact induced perfect matching | open; **attempted and blocked** (`CernyL2Derivation.lean`) |
| **E6** | correctness of the component labelling | **discharged** (`ComponentLabelling.lean`, iff, both directions) |
| **E7** | the 14 exceptional classes, and the stored class data | open — but **its computational half is now closed**, and what remains is geometric. **(E7b), the stored class data:** every field of `ClassData` the development consumes is recomputed in Lean from the stored chirotope and proved equal to the stored table, 14/14. **(E7a), the enumeration:** exactly 16 of the 135 × 360 candidates are exceptional simple heptagons (`exceptionalPolygons_eq_expected`); exactly 6,342 are simple (`simple_total`); the 135-representative list is itself complete, modulo an explicit induction hypothesis (`allSurvivors_eq`, `witnesses_ok`). **What is left:** that a configuration belongs to the class its certificate names, and any geometric reading of the halfplane, simplicity and "avoiding" tests — the development has no geometric definition of any of them. See `verification-status.md` rows 32, 34, 35 and 36 |
| **E8a** | bipartiteness decided by a correct algorithm | **discharged** (`BipartiteDecision.lean`, iff, both directions) |
| **E8b** | the *shipped programs'* routine is such an algorithm | open (transcription) |

Six of eight open, plus E8b. Interfaces **I1**, **I2a**, **I2b** are supplied;
**I3** is closed on the flag half and open on the geometric half; **I4** (AKR L5
as an imported statement) and **I5** (`ProfileOf` and completeness of the
225-case list) do not exist. **X2** remains a hypothesis. **X1** — the exceptional-class invariant — was
**discharged 2026-09-14 for the 14 stored classes** by `ClassInvariant.lean`,
with the set equality decided in both directions, so the table is neither a
weakening nor a strengthening; deciding *which* class a configuration belongs to
is still the caller's obligation and is (E7). **X3** was discharged 2026-09-14 by
`LemmaABridge.lean`.

**Transcription, not extraction.** The Lean filter definitions were written *by
hand* from `python/elimination/audit_enum.py` and
`independent/implementation_b/reduction.cpp`. Where a theorem says "the filter",
read "the Lean transcription of the filter". This is one systematic gap, not
several, and it applies to C2-BRIDGE, to E8, to obligation (3), and to every
filter-soundness statement.

### `hne40` is out of reach of the kernel *by kernel-evaluating the enumeration*

> **Heading and conclusion rescoped 2026-09-17.** The heading read "`hne40` is
> out of reach of the kernel". Everything measured below is correct and remains
> correct: **evaluating the 13,003,620-graph filter pipeline inside the kernel
> is not feasible**, and five routes to doing so are dead. What is no longer
> correct is the unqualified conclusion. `hne40` was obtained by a route that
> evaluates no graph at all — two impossible local crossing patterns plus a
> covering argument — and `ConfigBridge.crossCountC_ne_40` is a kernel theorem
> for configurations in general position. The prediction at the end of this
> section, that UB40 "must first be made smaller", was borne out in a stronger
> form than intended: the domain was not made smaller, it was bypassed.

`native_decide` is excluded throughout (it adds `Lean.ofReduceBool`). With
ordinary kernel reduction, five routes were measured and all are dead:

1. **Monolithic evaluation** — 226,668,772 recursive calls; ≈15 CPU-hours by
   linear fit, but 20–25 KB peak RSS per call → 4.5–5.8 TB against 8 GB. Counting
   only, no filters.
2. **Chunked evaluation** — holds memory near 2 GB, retiring the 4.5 TB figure as
   a term-construction artifact, but measures the wrong problem: counting
   memoises 226,668,772 states into 1,925 (≈117,750× sharing) and was *already*
   proved by `DomainCount`. Filters consume the whole graph, so none of that
   sharing applies.
3. **Per-graph filter cost** — the decisive measurement: ≈1.03 CPU-s per graph for
   two of the five filters ⇒ ≈3,700 CPU-hours (≈154 days). Kernel-to-Python ratio
   ≈70,000×, not the ≈500× one assumes from arithmetic.
4. **Re-encoding the filters** — `Nat` bitmask arithmetic with a 14-step fixed
   point: 0.309 → 0.042 CPU-s per graph, a **7.3× speedup**, against the ~75×
   needed. Closed against a gate fixed in advance.
5. **Structural shortcuts** — a UB42-style argument from cheap invariants cuts
   ~33%; leading with the DP-able local filters still leaves 2,783,508 of the 13
   million for some class pair.

Not settled by this: a *mathematical* restructuring that shrinks the
13,003,620-element domain. That is mathematics, not engineering, and nobody has
one.

> **Corrected 2026-09-17: somebody does.** The restructuring did not shrink the
> domain, it removed it. Two minimal local crossing patterns are impossible for
> fourteen points in general position (`MinPatternClauses00k`), every one of the
> 13,003,620 graphs contains a relabelled copy of one (`CoverAll.no_nine_edges`),
> and the same two patterns cover all 5,040 perfect matchings of the `I = 42`
> branch. `docs/covering-step.md`; `verification-status.md` rows 41–44.

> Key finite and combinatorial components are formally verified in Lean; the
> published geometric lemmas remain external dependencies. `f(7,7) = 38` is
> **not** a Lean theorem — the strongest formalised statement carries `hclass`
> and `hne40` — the completeness of the 225-case list is not formalized, six of
> the eight external inputs E1–E8 are open, and every filter statement is about a
> hand-written Lean transcription rather than about the shipped programs.
>
> In particular: Lean verifies the project's *implication* A7-BRIDGE, **not**
> AKR's geometric theorem. The chain is
> `A7-EXT ⟹ A7-BRIDGE ⟹ H bipartite`, and only the second arrow is machine-checked.
>
> **Corrected 2026-09-17.** `f(7,7) = 38` is still not a Lean theorem, but
> every clause after the dash has been overtaken. The strongest formalised
> statement is `ConfigBridge.isGreatest_38_pointCount` and carries **neither**
> `hclass` nor `hne40`. The 225-case list, the eight external inputs E1–E8, and
> the filter transcriptions are **not inputs to the upper bound** for a
> configuration in general position — they remain unformalized, and that no
> longer bears on the result. The A7-BRIDGE / A7-EXT paragraph is likewise
> about a filter the upper bound does not reach. What *is* not a Lean theorem is
> the passage from integer-coordinate general-position configurations to
> arbitrary simple heptagons: two steps, both named in the status box at the top
> of this file.

## Known defects found during development

| Defect | Affected the theorem? | Superseded by |
|---|---|---|
| 13,484,940 enumeration bug (`\|E\| ∈ {7,8,9}`) | No — a superset was searched | corrected enumeration + closed form |
| Raw component-ID comparison in a checker | No — checker bug | relabelling-invariant comparison |
| Lean `Odd` / `autoImplicit` vacuity | No — file had never compiled | `LemmaA.lean` with `autoImplicit false` |
| Step 0 perturbation argument | No — AKR §9 gives the vertex-on-boundary statement; §3 gives the collinearity one, *unproved* | **GP** (citation). *Corrected 2026-09-17: this cell said "AKR §9.1 gives the statement". It does not.* |
| Strict vs loose exceptional condition | Would have been severe if implemented | strict form `(★)` |
| **AKR Observation 6 is false as printed** (a defect in a published paper) | No — a pair failing the cone dichotomy contributes nothing to `S(e)` | the narrow reading, corrected in the A7-EXT section |
| **The A7 encoder's coverage argument was wrong** — the combined PQ types split into four orbits, only one was solved, and that one was vacuous. An earlier hostile review had endorsed the orbit argument as sound | Conclusion survived; the *evidence* for it did not | all 25 combined types solved with no symmetry reduction; 125 certificates (110 DRAT + 15 models), hash-bound to their formulas |
| **Intermediate pipeline counts are labelling-dependent artifacts** | No — terminal emptiness is labelling-invariant | per-ordered-pair re-derivation: 196 pairs × 3 labellings, 0 survivors |

## Remaining work

1. **External human review of A7-EXT**, and in particular of the four bridges
   from the machine checks to the geometric statement — see
   [`akr-l7-human-review.md`](akr-l7-human-review.md).
2. **Independent expert review of the overall proof.** Every mechanism this
   project has is a mechanism against *implementation* error; none is a check on
   whether the argument is the right argument.
3. **Confirmation from an AKR author**, ideally.
4. **The geometric half of (E7)** — the computational half closed on
   2026-09-15 (enumeration, completeness of the 135-representative list, the
   6,342 and the 16). What is left is not a computation: the development has no
   geometric definition of the halfplane test, of simplicity for real polygons,
   or of "avoiding", so nothing connects the chirotope predicates to polygons in
   the plane.
5. Convert this manifest into a readable paper.
6. The human author learning the argument well enough to defend it.
7. Further Lean formalization only where it improves the trust boundary — and
   *not* another attempt at `hne40` by kernel computation, which is settled
   negative.

Formalizing all of Černý or all of AKR is **not** required by this architecture.

> **Re-prioritised 2026-09-17.** This list is ordered for the enumeration
> route. On the current route items 1–4 are no longer binding: A7-EXT, the
> 225-case list and (E7) are not inputs to the upper bound, and item 7's
> parenthesis should read "not another attempt at kernel-**evaluating** the
> 13,003,620-element domain" — `hne40` itself was obtained by other means. The
> two items that *are* binding are not on the list at all:
>
> * **A.** `Config` → real coordinates. `RealConfig.exists_integer_model` gives
>   the sign-vector half; what is missing is the easy-but-undone step from a
>   shared sign vector to the same crossing pattern and the same point count.
> * **B.** The general-position reduction. §3's clause: the perturbation
>   iteration is proved (`RealConfig.exists_near_generic`), the "intersection
>   count is unchanged" half is not, and it is the bulk. AKR **§9** is not
>   attempted at all, and nothing in §9 or §3 asserts that the perturbed
>   polygons remain simple — which the argument uses.
>
> "Formalizing all of AKR is not required" remains true, but **AKR §9 now is**
> the single remaining published import, so formalizing *that* section is the
> binding formalization item rather than an optional one.

## Final trust statement

> The project currently contains a heavily audited **candidate** computer-assisted
> proof of `f(7,7) = 38`. The novel finite reductions and the terminal elimination
> have been independently implemented, certificate checked, and in key places
> Lean-kernel verified. The principal remaining mathematical issue is
> **A7-EXT**: whether the published Observation 6 / Lemma 7 language
> licenses precisely the disjoint-status consequence the argument uses.
> Conditional on that consequence, the deduction that `H` is bipartite
> (**A7-BRIDGE**) is formally verified in Lean.
>
> Two things should be said plainly alongside that. First, `f(7,7) = 38` is
> **not** a Lean theorem and will not become one by further computation:
> `isGreatest_38_final` still carries `hclass` and `hne40`, and `hne40` is out of
> the kernel's reach by roughly 75× even after the fastest re-encoding measured.
> Second, the mechanisms used here
>
> *(**Corrected 2026-09-17.** Both halves of the first point have moved.
> `f(7,7) = 38` is still not a Lean theorem, but the reason is no longer this
> one: the strongest statement is `ConfigBridge.isGreatest_38_pointCount`,
> carrying only `FullGP`, and the 75× shortfall was a measurement about
> kernel-evaluating the enumeration, which nothing now does. And "A7-EXT is the
> principal remaining mathematical issue" is no longer true — A7-EXT is not a
> dependency of the upper bound. The principal remaining issues are `Config`'s
> integer coordinates and the general-position reduction, in that order of
> tractability. The second point — that reimplementation, certificates and
> kernel verification are checks on implementation error and not on whether the
> argument is the right argument, and that independent expert review is the
> binding constraint — stands entirely, and stands more sharply now that the
> upper bound rests on a single unproved sentence of §3.)* — reimplementation, certificates with
> standalone checkers, Lean-kernel verification — are all mechanisms against
> *implementation* error, and the defect list above shows they work. None of them
> is a check on whether the argument is the right argument. Independent expert
> review is therefore the binding constraint, and it remains required before the
> result should be treated as established.
