# Heptagon Intersection Project

A computer-assisted investigation of `f(7,7)`, the smallest open case of the
Dillencourt–Mount–Saalfeld conjecture on intersections of two simple polygons.

## Current status (4 October 2026)

This section supersedes the dated log further down. The mathematical write-up
is [`paper/heptagon-paper.pdf`](paper/heptagon-paper.pdf). The audit of the
formal statement and its evidence is [`docs/audit/audit.pdf`](docs/audit/audit.pdf).

**The problem.** `f(7,7)` is the maximum number of distinct points in
`∂P ∩ ∂Q`, over pairs of simple heptagons whose boundaries meet in finitely
many points. Shared vertices, vertex–side contacts, tangencies, and several
side pairs meeting at one point are all allowed, and each distinct point is
counted once. The conjectured value is 38.

### Proved (by human-readable argument)

- **The lower bound.** An explicit pair of integer-coordinate heptagons whose
  boundaries meet in exactly 38 points (paper, Proposition 6.1). It can be
  checked by hand or with exact arithmetic.
- **Elementary facts.** `I + |E^D| = 49`. The disjointness graph has minimum
  degree at least 1, so `I ≤ 42`. `I` is even. The 28 degree vectors (four
  shapes) of the `I = 40` case are enumerated in paper §2 and §4.
- **The pattern Π₈ is non-realizable** (paper, Theorem 3.2, via Lemma 3.3).
  This is also checked against all 3,315 order types of 8 points.

### Lean-verified (kernel-checked)

- **`Pair9Shift.points9_le_38_of_coincFree`** and
  **`Pair9Shift.isGreatest_38_of_coincFree`** (paper, Theorem 1.2). The
  hypotheses are exactly these:
  - each heptagon is `SimpleClosed`: no degenerate side, non-adjacent sides
    disjoint, and adjacent sides meeting only in their shared vertex;
    collinear vertices are allowed;
  - `(points9 R).Finite`: `∂P ∩ ∂Q` is finite;
  - no vertex of `P` equals a vertex of `Q`.

  Under these hypotheses the boundaries meet in at most 38 points, and 38 is
  attained. A vertex of one polygon may lie in the interior of a side of the
  other, and no general position is assumed.
- **Pairs in general position** are covered by the theorem above. They are
  also covered separately by `RealUpperBound.isGreatest_38_real`.
- **Supporting results, all kernel-checked:**
  - Π₁₄ is non-realizable;
  - the covering theorem: every crossing pattern with `I ∈ {40, 42}` contains
    Π₈ or Π₁₄;
  - the transfer from sign data to real point sets;
  - the removal of a vertex lying in the interior of a side.
- **Axioms.** The headline theorems depend only on `propext`,
  `Classical.choice` and `Quot.sound`. No `sorry`, no project axiom and no
  `native_decide` is used.

The kernel check is strong formal evidence for the theorem *as stated*. It
does not establish that the formal definitions match the intended
mathematics. Paper Appendix A and audit §2 set those definitions out for
that check.

### Assumed from the literature (external)

- **The vertex-coincidence reduction** of Ackerman–Keszegh–Rote, *Discrete
  Comput. Geom.* 68 (2022), §9.1. It says every pair can be replaced by one
  that shares no vertex, without decreasing the number of intersection
  points. It is **not formalized** here.

### Unresolved

- **Whether §9.1 applies to these exact definitions.** The perturbed pair
  must again be simple and again have finite intersection. AKR state neither
  explicitly. `SimplicityStable.heptagon_simplicity_stable_linear` is a
  kernel-checked partial result: simplicity survives every sufficiently
  small linear motion of the vertices. It has not been assembled with §9.1
  (paper, Remark 8.10).
- **Definitional faithfulness.** A human reader still has to judge whether
  the Lean definitions are the intended objects.
- **Independent review.** None has been completed. The project's records
  note that a colleague began reading an earlier dependency manifest in
  September 2026. No findings from that reading are recorded.

Therefore `f(7,7) = 38` is not established by this repository. It follows
from the Lean theorem only together with the external reduction and the
unresolved applicability point.

## Status / TheoremDB

The unrestricted `f(7,7)` problem has been submitted to TheoremDB and is
**pending review**: `<TheoremDB entry link, once assigned>`.

- The finding attached to the submission is the no-shared-vertex bound of 38
  above. It is contributor-supplied, self-reported evidence, not independent
  review.
- The shared-vertex step is recorded there as an open verification issue.

The submission does not imply acceptance, endorsement or publication.

## Reproducing the evidence

All commands run from the repository root unless a working directory is
given. Commands (b)–(e) were checked on 2026-10-04.

**(a) The headline Lean theorems and their axiom check.** The toolchain is
pinned to `leanprover/lean4:v4.33.1` (`lean/lean-toolchain`). Mathlib is
pinned to tag `v4.33.1` (`lean/lake-manifest.json`).

| working directory | command |
|---|---|
| `lean/` | `lake exe cache get` |
| `lean/` | `lake build Headline 2>&1 \| tee ../headline-build.log` |
| repository root | `bash scripts/verify-all.sh --axiom-log headline-build.log` |

- **Cost.** The Mathlib cache download is about 1.4 GB or more. On GitHub's
  2-core runners the headline build took about 32 minutes.
- **A bare `lake build` is not sufficient.** `defaultTargets` omits `AKR9`,
  `Pair9Shift` and `Headline`.
- **What `Headline` covers.** It is 332 modules: the 331-module import
  closure, plus `Headline` itself. Lake reports 3,344 jobs because Mathlib's
  jobs are counted too.
- **Expected checker output.** `AXIOM CHECK: CLEAN`, 409 declarations, and 6
  of 6 headline theorems confirmed.

**(b) Checking the committed build log without Lean.**

```bash
bash scripts/verify-all.sh --axiom-log results/validation/2026-09-24_headline_build.log
```

Expected: `AXIOM CHECK: CLEAN`, 409 declarations parsed, 6 of 6 headline
theorems confirmed.

**(c) Certificate verification.**

```bash
PYTHONPATH=$PWD/python/core python3 python/validation/check_lower_bound.py
```

Expected: `All checks passed.  This certifies f(7,7) >= 38.` The command
`python3 python/validation/check_final_certificate.py data/certificates/final_elimination_225.json`
checks the 225-case certificate of the **historical** enumeration route,
which the current proof does not use.

**(d) Negative tests**, which check that the checkers reject what they
should:

```bash
bash scripts/negative-tests.sh --groups A                                        # 8 cases, ~6 s, no Lean
NEGTESTS_LAKE_DIR=$PWD/lean/.lake bash scripts/negative-tests.sh --lean --groups L   # opt-in, slow
```

- **Group A** feeds synthetic logs to the axiom checker. Expected
  `RESULT: 8 passed, 0 failed`.
- **Group L** runs four full builds of deliberately mutated copies: a
  `sorry`, an `axiom`, a `native_decide`, and a changed definition. Its
  committed transcript, `results/validation/2026-09-24_negative_tests_L.log`,
  shows 4 passed.

**(e) Hash manifests.**

```bash
bash scripts/verify-all.sh --steps 4
```

The script exits 2 (PARTIAL) by design whenever steps are selected. Every
executed check must show `PASS`.

**(f) Everything.**

```bash
bash scripts/verify-all.sh
```

This runs the full build of all 1,779 declared libraries and every check
above. A cold run is dominated by 1,084 enumeration modules (`OTEnum*`,
`Strat*`) from the historical route, and takes many CPU-hours.

## Provenance of the committed evidence

The Lean sources have not changed since commit `a211140`
(2026-09-24 23:59 UTC).

| evidence | produced | Lean sources | committed in | notes |
|---|---|---|---|---|
| `results/validation/2026-09-24_headline_build.log` | local, 2026-09-25T01:36Z | `a211140` | `b070c2f` | header records date, machine, Lean 4.33.1 and command, but no commit |
| `results/validation/2026-09-24_negative_tests_L.log` | local, 2026-09-25T01:37Z | `a211140` | `b070c2f` | group L, 4 passed |
| `results/validation/2026-09-24_verify_all_after_audit.log` | local, 2026-09-25T02:12Z | `a211140` | `b78f372` | full `verify-all`, COMPLETE SUCCESS, 1,779 libraries, 6,523 jobs; the header's "Lean 4.34.1" was read at the repository root, outside the pin, and the build used 4.33.1 |
| GitHub Actions run `36086080499` | 2026-09-25 | `a211140` | run at `b78f372` | headline build, axiom check and group A, passed |
| GitHub Actions run `36089101301` | 2026-09-25 | `a211140` | run at `e984888` | same checks, passed |
| `paper/heptagon-paper.pdf`, `docs/audit/audit.pdf` | revised 2026-10-04 | `a211140` | tag `v1.0-theoremdb` | documentation only |

**Access.** As of 2026-10-04 the repository is private, and the CI runs are
visible only to people with access.

## History of the status (dated log, superseded by the section above)


> *[Historical framing, superseded — see "Current status" above.]*
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
> *(Superseded 2026-09-24 — see the update below: `Pair9Shift.points9_le_38_of_coincFree`
> reaches the same bound under `hcoinc`, "no shared vertex", which is strictly
> weaker than `FullGP`. This sentence is left in place because this section is a
> dated log, but it is no longer the strongest statement.)*
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

For simple polygons `P` and `Q` with `m` and `n` sides, let `I(P,Q)` be the
number of points where their boundaries meet, and let `f(m,n)` be the maximum
of `I(P,Q)` over pairs whose boundaries meet in **finitely many** points.
Degeneracies — shared vertices, a vertex on a side, tangencies — are allowed;
overlapping sides are excluded by finiteness. Černý et al. (2003) and the
SoCG version of Ackerman–Keszegh–Rote state the problem under general-position
assumptions; the AKR journal version assumes finiteness and justifies its
vertex condition in §9. The even cases were settled by Dillencourt, Mount and
Saalfeld in 1993; the odd–odd case is conjectured to be
`f(m,n) = mn − m − n + 3` and remains open in general.

For `m = n = 7` the conjecture predicts **38**. For pairs in general position
the published bounds are `38 ≤ I ≤ 40` (Černý et al.), and `39` is excluded by
parity — two closed curves in general position cross an even number of times;
so in general position the question was whether 40 is attainable. Černý et al.
(2003) explicitly flag `k = l = 7` as open, and the Ackerman–Keszegh–Rote
(2022) bound, while asymptotically optimal, is vacuous at `m = n = 7`.

## Current claim

See **Current status** at the top of this page; it supersedes this section's
earlier text. In short: the bound 38 is kernel-checked for simple heptagons
that share no vertex and meet in finitely many points (which includes every
general-position pair), and `f(7,7) = 38` follows using the external AKR §9.1
reduction, whose applicability to these exact definitions is not yet settled
here.

* **`f(7,7) ≥ 38`** — established. An explicit pair of integer-coordinate
  heptagons with 38 crossings, verifiable in under a second with no external
  lemma and no enumeration, and kernel-checked (`AKR9.certPair9_ncard`).
* **Upper bound** — kernel-checked as Theorem 1.2 (above). The older route —
  a finite case analysis conditional on external lemmas, whose final
  avoiding-pair filter has no second implementation (K-20) — is historical and
  is not used by the current proof.

## High-level proof idea

> **Read this section as the historical route (note added 2026-09-17).** Steps
> 2–7 below are how the upper bound was *found*. They are no longer how the
> Lean development *proves* it. *(Corrected 2026-10-04: this note said they
> were still the only argument covering configurations not in general
> position. That is no longer true. Degenerate configurations that share no
> vertex are covered by the Lean theorem `Pair9Shift.points9_le_38_of_coincFree`.)* The formalized route is much
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
> *(Superseded 2026-10-04: §3's clause is now proved (`RawConfig`) and §9.2's
> half is proved (`Pair9Shift`). Only the §9.1 vertex-coincidence reduction
> remains external, and its applicability to these definitions is unresolved.
> See "Current status" above.)*

## Repository map

| Path | Contents |
|---|---|
| `docs/` | Mathematical exposition and project status. Start with `verification-status.md`. |
| `python/` | Active computational source. `core/` (exact predicates, chirotope enumeration), `classification/`, `elimination/`, `validation/`. |
| `lean/` | Formalization. **1,779 declared `[[lean_lib]]` targets**, of which **1,756 are in `defaultTargets`** — the other **23 are not**, so a plain `lake build` does **not** build them; they include `AKR9` and `Pair9Shift`, which carry the §9 headline theorems. **Use the `Headline` target instead** (added 2026-09-24): `cd lean && lake build Headline` builds the 332-module `Headline` target (the 331-module closure plus `Headline`) carrying every headline theorem in ~11 s on a warm tree and prints their `#print axioms` lines. No project-specific `axiom` anywhere. The most recent committed full build is **1,762 libraries, 6,523 jobs, exit 0** (log: `results/validation/2026-09-17_verify_all_after_e9_attempt.log`, commit `8e6358a`) *(Updated 2026-10-04: a newer full run, `results/validation/2026-09-24_verify_all_after_audit.log`, committed in `b78f372`, attests **all 1,779 libraries, 6,523 jobs, COMPLETE SUCCESS**, so the "behind" caveat that follows is superseded.)*; it predates the **16** modules added since — `SimplicityStable`, `SimplicityBridge`, `UniformEps`, `DependentSystem`, `DegBound`, `SignExp`, `R3Construct`, `TiltedShift`, `CrossTransport`, `CIInstance`, `RotationLaw`, `Pair9Shift`, `FactE`, `E9Directions`, `SwapPQ`, `Compose` — so "all compiling" is attested **14 commits and 16 modules behind**, and those 16 are exactly the §9 work. Most of the 1,779 are generated per-shard data modules; the hand-written development is a few dozen files. Exactly **five** import literally nothing and compile against an empty `LEAN_PATH`. See [`lean/README.md`](lean/README.md). *(Corrected 2026-09-17: this cell read "25 libraries … 1395 jobs … 735 theorems, 212 of them depending on no axioms at all … eight reach Mathlib". The theorem census has **not** been re-measured since 2026-09-15 and is therefore dropped rather than restated.)* *(**Re-measured 2026-09-24**, all figures in this cell re-read from commit `5bd737b` and from the build log itself. It previously read "1,756 declared libraries (commit `d22c313`)", "1,755 libraries, 6,518 jobs" against the `…_after_real_config.log`, and "attested two commits behind" — every one of those was stale, the build-log pointer was not the newest committed log, and the `defaultTargets` shortfall was not mentioned at all. Direct `import Mathlib` lines appear in **243** modules; at most **16** of those are hand-written.)* |
| `data/` | Generated mathematical data and certificates: order types, exceptional profiles, the lower-bound certificate, the 225-case endgame certificate, SHA-256 manifests. |
| `results/` | Reproduction logs, filter counts and validation output from the 2026-09-13 run, plus the 2026-09-14 kernel-enumeration benchmark. See [`results/README.md`](results/README.md). |
| `independent/` | Separately written re-derivations, each in its own subdirectory: `implementation_b/` (a C++ reimplementation of the finite reduction, written from a written specification), `order_type_audit/` (an order-type/exceptional-classification audit against external data), `akr_l7_reproduction/` (the SAT/DRAT investigation of AKR Observation 6 / Lemma 7), `no_a7_experiment/` (what the pipeline gives with the A7 filter removed). See [`independent/README.md`](independent/README.md). |
| `transcripts/` | *Not distributed.* The LLM session transcripts are kept by the author as provenance and are not part of the public repository (removed from tracking 2026-10-04). |
| `archive/superseded/` | The earlier pipeline, including a file with a documented defect. Preserved, not deleted. Do not cite. |
| `paper/` | **`heptagon-paper.tex`/`.pdf` — the mathematical write-up (primary).** The audit of the formal statement is `docs/audit/audit.pdf`. `proof-manifest.tex`/`.pdf` is the **historical** claim-by-claim manifest of the enumeration route; do not cite it for the current status. |
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
| **Verified in Lean, for configurations in general position, importing no published lemma** *(new 2026-09-17, rows 42–44; superseded by the no-shared-vertex theorem)* | **`I ≠ 40`**; **`I ≠ 42`**; **`I ≤ 38`**; and **`isGreatest_38_pointCount`** — 38 is the greatest number of boundary intersection **points**, over *integer*-coordinate configurations. One hypothesis, `FullGP` |
| **Verified in Lean, for configurations with REAL coordinates in general position** *(new 2026-09-17, rows 46 and 47; superseded by the no-shared-vertex theorem)* | **`pointsR_le_38`** — at most **38 boundary intersection points**, as a set in `ℝ × ℝ` — and **`isGreatest_38_real`**, the matching `IsGreatest`, so **38 is exactly the maximum**. Removes the integer-coordinate restriction outright, in both directions. One caveat: `Set.ncard` is 0 on infinite sets (general position excludes the bad case) |
| Verified in Lean, given the exceptional-class invariants | **`I ≠ 42`** — the *historical* proof (`Exclude42`). Superseded by the row above, which needs no class data at all, and which is therefore free of the K-22 entanglement |
| Verified in Lean (enumeration obligations) | a counterexample lands in the searched domain; the domain has **13,003,620** elements; the search visits every element of it *(of the Lean transcription — there is no extraction)* |
| Verified in Lean (interfaces) | all 225 endgame cases; the AKR-L5 bridge as an `iff`; the component labelling (both directions); a bipartiteness decision procedure; the 225 stored `avoiding` flags against the class table |
| **The one open input** *(narrowed 2026-09-17, row 51)* | **AKR §9.1 alone** (shared vertices), outside the Lean theorem; the theorem's corresponding hypothesis is `hcoinc`. Its applicability to these definitions (simplicity and finiteness of the perturbed pair) is **unresolved**. *(Updated 2026-10-04. This cell previously named "AKR §9 alone", carried as `AKR9.NoVertexOnOther`; that described the superseded (E9) theorem.)* |
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
kept by the author as provenance (not distributed in this repository) — they record where ideas came from,
including false starts and self-corrections, but a claim in a transcript has no
verified status. **No independent review has been completed** (see
`docs/verification-status.md` row 18). See [`docs/ai-disclosure.md`](docs/ai-disclosure.md).

## Citation and status warning

**This repository should not be cited as a peer-reviewed proof of
`f(7,7) = 38`**, and should not be described as having settled the case, unless
and until its status changes.

If you refer to this work in the meantime, describe it as *a Lean-verified
bound of 38 for simple heptagons sharing no vertex, with `f(7,7) = 38`
depending on the external AKR §9.1 reduction*, and cite the release tag or
commit you examined. `CITATION.cff` carries the same warning in machine-readable form.

The lower bound `f(7,7) ≥ 38` may be cited as verified computation; it is also
not new — the construction realizes the known Dillencourt–Mount–Saalfeld lower
bound.

## License

Program code (`lean/`, `python/`, `scripts/`, `independent/`,
`docs/audit/*.py`, `.github/`) is released under the MIT License (`LICENSE`).
The manuscript, the audit document, the rest of the documentation, the data and
the recorded logs (`paper/`, `docs/`, `data/`, `results/` and the prose files)
are released under CC BY 4.0 (`LICENSE-docs`). Third-party data reproduced in
the repository remains under its own terms.
