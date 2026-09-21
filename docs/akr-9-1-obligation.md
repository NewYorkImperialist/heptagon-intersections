# A9 made precise — the general-position reduction, as an obligation

**Status: an obligation statement, not a proof.** Nothing here is proved, in
Lean or otherwise. This document does three things: it reads what
Ackerman–Keszegh–Rote (AKR) actually prove about degenerate configurations,
it states what this project actually needs, and it writes the difference down
as a named Lean hypothesis in the `(E1)`–`(E8)` idiom of
[`../lean/FilterSoundness.lean`](../lean/FilterSoundness.lean).

It also records **three discrepancies** between the paper and how the project
cites it. One of them touches the load-bearing hypothesis of the project's
strongest Lean theorem. See [§6](#6-discrepancies-between-the-paper-and-the-project).

Written 2026-09-17. No Lean file was created or modified; no build was run.

---

## 0. Sources, method, and what I could not read

**Primary source.** `references/akr-dcg-2022.pdf` — E. Ackerman, B. Keszegh,
G. Rote, *An almost optimal bound on the number of intersections of two simple
polygons*, Discrete Comput. Geom. **68** (2022) 1049–1077, SHA-256
`f0ae336e…c548a` as pinned in [`../references/README.md`](../references/README.md).

**Secondary source.** `references/akr-socg-2020.pdf` — the SoCG 2020 version.
Checked, per the task, because for AKR Lemma 5 the conference version was the
more explicit one. **For this material it is the opposite: the conference
version contains nothing at all.** Its section list is

> 1 Introduction · 2 Overview of the proof · 3 An auxiliary lemma on closed odd
> walks · 4 General assumptions and notations · 4.1 Associated pairs of
> consecutive sides · 5 The principal structure lemma… · 6 A weaker bound ·
> 7 Ramsey-theoretic tools · 8 Proof of Theorem 1 · 8.1 … · 8.2 Finalizing the
> analysis

There is no degenerate-cases section, and the strings `perturb`, `degenerac`
and `coincid` do not occur anywhere in the conference text. General position is
imposed by fiat in the first paragraph of its introduction and never discharged:

> "For simplicity we always assume general position in the sense that no three
> vertices (of *P* and *Q* combined) lie on a line and no two sides (of *P* and
> *Q* combined) are parallel."
> — [AKR-C] §1, PDF p. 1:1

and again in §4:

> "As mentioned, we assume that the vertices of *P* and *Q* are in general
> position (no three of them on a line), and so every intersection point between
> *P* and *Q* is an interior point of two polygon sides."
> — [AKR-C] §4, PDF p. 1:5

This confirms [`external-lemma-audit.md`](external-lemma-audit.md) §8's finding
that §9 is a journal-only addition, and it means **the journal version is the
only source for A9 at all.**

### Method, and a caveat on the quotations

`pdftoppm`/poppler is not installed on this machine, so the Read tool cannot
render PDF pages, and the sandbox has no network, so no PDF library could be
installed. I extracted the text by decompressing the PDF's `FlateDecode`
content streams and interpreting the `Tj`/`TJ` text-showing operators directly,
then mapped content-stream objects to PDF page numbers through the `/Pages`
tree. The page mapping is therefore exact; the following objects carry §9:

| PDF page | content object | contents |
|---|---|---|
| 4 | 38 | §3, the **General Position** paragraph |
| 21 | 258 | end of proof of Thm 1; **§9** opening; the two degeneracy types |
| 22 | 271 | Fig. 26; **§9.1** opening; dependence graph; free vertices; eq. (2) |
| 23 | 291 | Observation 15; Lemma 16; **Theorem 17** statement |
| 24 | 305 | proof of Thm 17; Lemma 18; "One final point"; footnote 7; **§9.2** heading |
| 25 | 309 | Figs. 27, 28; **§9.2** body; **§9.3** |
| 26 | 331 | §10 Discussion |

**Caveat, and the one place I had to intervene in a quotation.** The embedded
fonts encode the `fi`/`fl` ligatures at codepoints that carry no Latin-1
meaning, so my extractor drops them: the raw text reads "nite" for "finite",
"justied" for "justified", "coefcient" for "coefficient". **In every quotation
below I have restored those two ligatures silently**; no other character has
been changed, and no word has been supplied. Where the extractor dropped a
whole run of text I say so rather than paraphrase.

**Journal page numbers are derived, not read.** This PDF does not carry printed
page numbers in its content streams (only the running head "Discrete &
Computational Geometry" and the Springer "123" mark), so I could not read them
off the page. Using the article's page range 1049–1077 from
`references/README.md`, the offset is 1048, which reproduces the range
"§9 (pp. 1069–1073)" already recorded in
[`external-lemma-audit.md`](external-lemma-audit.md) §7.3 and the range
"PDF pp. 22–24, journal pp. 1070–1072" in
[`proof-outline.md`](proof-outline.md) Step 0. I therefore cite **PDF page**
as primary and give the journal page as `= 1048 + PDF page`, flagged as derived.

---

## 1. What AKR actually say

### 1.1 The standing finiteness assumption — §1, PDF p. 2 (journal 1050)

> "Let *P* and *Q* be two simple polygons with *m* and *n* sides, respectively,
> where *m*, *n* ≥ 3. We are interested in the maximum number of intersection
> points of the boundaries of *P* and *Q*, hence we assume that this number is
> **finite**, that is, there are no sides of *P* and *Q* that overlap."

This is an assumption, and **§9 does not discharge it.** §3 repeats it as "the
basic assumption that is made throughout the paper".

### 1.2 The general-position package, and who discharges which half — §3, PDF p. 4 (journal 1052)

This is the single most important passage for this project, and it is **not in
§9**. Verbatim, under the run-in heading "General Position.":

> "The basic assumption that is made throughout the paper is that *P* and *Q*
> have only finitely many intersection points, i.e., there are no overlapping
> edges. In addition, we will assume from now on that **no vertex of one polygon
> lies on the other polygon. This assumption will be justified in Sect. 9 by a
> non-trivial perturbation.** Thus, every intersection point between *P* and *Q*
> is an interior point of two polygon sides.
>
> Furthermore, we assume **for convenience** that no three vertices of *P* and
> *Q* combined lie on a line, and no two sides of *P* and *Q* combined are
> parallel. Indeed, given that no vertex of one polygon lies on the other
> polygon, **this can be achieved easily by another small perturbation of the
> sides without changing the intersection pattern.**"

(Emphasis mine.) The paragraph divides AKR's general position into two halves
with **two different warrants**:

* **half A** — *no vertex of one polygon lies on the other polygon* — warranted
  by §9, "a non-trivial perturbation", with a five-page proof;
* **half B** — *no three combined vertices collinear, and no two combined sides
  parallel* — warranted by one sentence containing the words "for convenience"
  and "can be achieved easily", with no proof, no lemma number, and no figure.

### 1.3 §9 opening — PDF p. 21 (journal 1069)

> "We will now justify our general-position assumption that we introduced in
> Sect. 3 stating that **no vertex of one polygon lies on the boundary of the
> other polygon**. That is, we will show that one can get rid of such degenerate
> cases **without decreasing the number of intersection points**. There are two
> types of degenerate cases:
>
> **vertex-vertex:** Two vertices from different polygons coincide.
> **vertex-side:** A vertex of one polygon lies on a side of the other polygon."

Note the scope sentence: §9 justifies **half A only**, and says so in its own
first sentence.

Then, PDF p. 22 (journal 1070):

> "We will first use a global perturbation governed by a parametric system of
> linear equations to get rid of vertex-vertex degeneracies. Vertex-side
> degeneracies can then be treated locally by shifting sides one by one."

### 1.4 §9.1 *Coincident Vertices* — PDF pp. 22–24 (journal 1070–1072)

Opening:

> "Finding a good perturbation is delicate because a side may be involved in
> multiple degeneracies. We will simultaneously perturb all vertex-vertex
> degeneracies while leaving vertex-side degeneracies intact."

The dependence set-up:

> "For each vertex-side degeneracy, some point *A* of one polygon lies on a side
> *BC* of the other polygon: There is a ratio λ = λ_ABC ∈ (0,1) such that
> *A* = λ*B* + (1−λ)*C*.  (1)
> Our perturbation will maintain this relation, with the same value λ. We say
> that *A* **depends** on *B* and *C*. We can set up a **dependence graph** that
> has arcs (*A*,*B*) and (*A*,*C*), for each such vertex-side degeneracy. This
> graph may contain cycles. The polygon vertices that don't depend on other
> vertices are called **free**."

The motion, and the choice of directions — this is the step the project's own
superseded argument got wrong (K-10):

> "We specify the movement of the free vertices as follows: Free vertices that
> are not involved in a degeneracy stay where they are. For each pair (*P_i*,
> *Q_j*) of coincident vertices, we leave *Q_j* stationary but we move
> *P_i* = *P_i*(ε) := *P⁰_i* + ε*E_i* linearly, with constant speed in an
> appropriate direction *E_i*. **We choose each direction *E_i* independently so
> that the two polygons have at least one nondegenerate intersection in the
> neighborhood of the original configuration, assuming that all other points stay
> where they are.** Theorem 17 below shows that we can perform such a motion in a
> continuous way while simultaneously maintaining all vertex-side degeneracies (1)."

> **Correction 2026-09-20 — the paper's parameter is α, not ε.** The
> quotations in this subsection write ε; the journal writes **α** ("depending
> linearly on some parameter α", PDF p. 23; "*P_i* = *P*⁰_i + α*E_i*", PDF
> p. 24; Fig. 27's label reads "α*E_i*"). Read off a 4× PDFKit raster —
> the ligature-lossy extractor used for this document drops the α glyph, so
> the ε was supplied, contrary to §0's "no other character has been changed".
> **No mathematical content changes.** See
> [`akr-9-2-obligation.md`](akr-9-2-obligation.md) §1.5.

The abstract machinery (PDF p. 23, journal 1071). A system of points
*A*_1,…,*A*_N split into dependent (*D*) and free (*F* = [N]∖*D*), with
*A_i* = Σ_{j≠i} λ_ij *A_j* (2), Σ_j λ_ij = 1, and *A_i* = *A⁰_i* + ε*E_i* for
*i* ∈ *F* (3).

> "**Observation 15** If (2) holds for a dependent point *A_i*, then either
> (i) all points *A_j* on which *A_i* depends coincide with *A_i*, or
> (ii) some point *A_j* on which *A_i* depends is strictly larger than *A_i*, in
> the lexicographic order according to the coordinates (*x*, *y*)."

> "**Lemma 16** Suppose that from every dependent point, one can reach a free
> point in the dependence graph. Then, in every solution of the system of
> equations (2), all points lie in the convex hull of the free points."

> "**Theorem 17** Suppose that from every dependent point, one can reach a free
> point in the dependence graph. If the system of equations (2)–(3) has a
> solution for ε = 0, then it has a unique solution for all ε, and the solution
> depends linearly on ε."

Its proof splits into an *x*-system and a *y*-system, and shows the |*D*|×|*D*|
coefficient matrix is nonsingular: a singular system would have an affine space
of solutions, hence solutions with arbitrarily large coordinates, contradicting
Lemma 16.

> "**Lemma 18** In the dependence graph derived from the system of dependencies
> (1) describing the vertex-side degeneracies, one can reach a free point from
> every dependent point."

And then, PDF p. 24 (journal 1072), the analytic step — quoted in full, because
this is the one I judge hardest to formalize:

> "**One final point:** We have chosen each movement *P_i* = *P⁰_i* + ε*E_i* of a
> free point that is involved in a vertex-vertex degeneracy in such a way that
> there are no degeneracies in the vicinity of *P_i*, **assuming that the other
> points do not move**. In reality, the other endpoints of the four involved sides
> may move on linear trajectories. However, as we start from coinciding points,
> the movement of the other endpoints has a lower-order effect. To see this,
> consider the marked distance from *Q_j* to the intersection between
> *Q_{j−1}Q_j* and *P_iP_{i−1}* in Fig. 27. *P_i* and *Q_j* are free, and *Q_j*
> remains stationary. If *P_i* moves linearly as ε*E*₁, the marked distance
> changes like *k*ε + O(ε²) for some constant *k* > 0 if all other points remain
> fixed, see Fig. 27b: The distance would have a linear growth of the form *k*ε
> if the sides would undergo a parallel shift, but in fact the sides are rotated.
> If one or both endpoints of an edge move by a distance O(ε), the rotation angle
> is bounded by O(ε). Since the leading side ε*E_i* of the shaded triangle is of
> length O(ε), the effect of the rotation on the side lengths of the triangle is
> of order O(ε²). (This can be checked by using the sine law.) An additional
> linear movement of *P_{i−1}* (see Fig. 27c) or *Q_{j−1}* by a distance O(ε)
> will cause an additional change of direction by O(ε). Still, the side lengths
> of the triangle change only by O(ε²). Thus, for small enough ε, the linear
> growth *k*ε dominates, and there will be no degenerate situations."

Footnote 7 to that section:

> "The morphing procedure goes back to Floater and Gotsman [7]. The idea for
> proving unique solvability in Theorem 17 was used, in a different context, in [4]."

### 1.5 §9.2 *Vertex-Side Degeneracies* — PDF p. 25 (journal 1073)

The whole of §9.2's argument is five sentences:

> "Once there are no more coincident vertices, it is easy to get rid of the
> remaining degeneracies by looking at the sides one by one, see Fig. 28.
> If we perform a small parallel shift of a side, an intersection point may
> disappear or multiply into two intersection points, depending on the direction
> of the shift. However, the average number of intersections over the two
> possible directions is always the same as before. Thus, there exists a small
> parallel shift that does not decrease the number of intersection points."

Fig. 28's caption:

> "Perturbing a blue polygon side to get rid of collinear vertices without
> decreasing the number of intersection points: **a** before, **b** after"

> **Update 2026-09-20 — §9.2 now has its own document.** See
> [`akr-9-2-obligation.md`](akr-9-2-obligation.md) and
> `independent/akr_9_2/`. Three corrections to this subsection: the quoted
> argument is **four** sentences, not five (count them — the fifth sentence
> above is this document's own); the *first* of the four is at the foot of
> **PDF p. 24**, not p. 25; and Fig. 28 carries a step the text omits
> entirely, namely that the shifted side's **endpoints slide along the lines
> of the two adjacent sides**, which is undefined when those sides are
> collinear with it.

### 1.6 §9.3 *The Combinatorial Counting Model* — PDF p. 25 (journal 1073)

> "Instead of counting intersection points, one could count pairs of sides that
> intersect. A vertex-side degeneracy is then counted twice, and a vertex-vertex
> degeneracy is counted four times. **We leave this variation for future
> research.**"

with footnote 3:

> "In [3], a more refined counting model is used: a further distinction is made
> for vertex-side degeneracies, in accordance with the number of intersection
> points that can be achieved by perturbation: if one polygon *touches* the other
> (i.e., two adjacent sides lie on the same side of the side of the other
> polygon), the intersection is counted twice. If one polygon *crosses* the
> other, it is counted as one intersection. In vertex-vertex degeneracies,
> depending on the angles in which the sides meet, the number of intersections
> that one can get after perturbation can be any number between 1 and 4. With
> this type of accounting, our results carry over."

This confirms [`proof-outline.md`](proof-outline.md) Step 0's "Caveat on the
counting model" verbatim. No change needed there.

---

## 2. What the project needs

### 2.1 The needed statement, as the task puts it

> For any pair of simple heptagons in the plane, there is a pair in general
> position — no three of the fourteen combined vertices collinear — whose
> boundary-intersection count is at least as large.

### 2.2 What the Lean development consumes, exactly

The consumer is [`../lean/ConfigBridge.lean`](../lean/ConfigBridge.lean), whose
two top theorems are

```
crossCountC_le_38_of_general_position (K : Config) (hgp : FullGP K) : crossCountC K ≤ 38
isGreatest_38_pointCount :
  IsGreatest { n | ∃ K : Config, FullGP K ∧ (IntersectionCount.intersectionPoints K).ncard = n } 38
```

with `FullGP K := GP (Vcfg K)` and
`GP V := ∀ i j k : Fin 14, i ≠ j → j ≠ k → i ≠ k → orient (V i) (V j) (V k) ≠ 0`.

So the Lean side consumes **exactly one** general-position fact: `FullGP`, all
364 orientation determinants of the fourteen combined vertices nonzero. It is
worth being precise about what that single predicate already subsumes, because
it changes the shape of the obligation:

| `Config` / `Simple7` component | implied by `FullGP`? |
|---|---|
| `Simple7` (1): the seven vertices of a polygon are pairwise distinct | **yes** (a repeated point makes every determinant through it vanish) |
| `Simple7` (2): no three vertices of the same polygon collinear | **yes** (these are 35 + 35 of the 364 triples) |
| `Simple7` (3): no three *consecutive* vertices collinear | **yes** (special case of (2)) |
| `Simple7` (4): non-adjacent sides of the same polygon do not properly cross | **no** — this is genuine simplicity, and `FullGP` says nothing about it |
| `no_Q_vertex_on_P_side_line`, `no_P_vertex_on_Q_side_line` | **yes** (98 of the mixed triples) |

Hence the Lean-level need collapses to two things and no more:

> **(N)** each of the two heptagons is a simple closed polygon, and the fourteen
> combined vertices satisfy `FullGP`.

Nothing in the Lean development uses "no two combined sides parallel", and
nothing uses "no vertex of one polygon lies on the other" *as a separate
hypothesis* — the latter is a consequence of `FullGP`.

### 2.3 Step 0's five consequences, checked one by one

[`proof-outline.md`](proof-outline.md) Step 0 says "precisely the following
consequences are used later, and nothing stronger". Against the paper:

| # | Step 0's consequence | who in AKR supplies it | verdict |
|---|---|---|---|
| 1 | both polygons remain **simple** | **nobody.** Neither §9, §9.1, §9.2 nor §3 ever states that the perturbed polygons are still simple. | **not in the source** — see [§6.2](#62-nobody-says-the-perturbed-polygons-are-still-simple) |
| 2 | no vertex of one polygon on the boundary of the other | §9 (= §9.1 for vertex-vertex + §9.2 for vertex-side), proved | **matches**, but the citation must be §9, not §9.1 |
| 3 | no three combined vertices collinear | §3's one sentence, **not** §9.1 | **matches in content, mis-cited** — see [§6.1](#61-fullgp-comes-from-3-not-from-91) |
| 4 | no two combined sides parallel | §3's same sentence | matches in content, mis-cited; and **the project does not need it** in Lean |
| 5 | hence ℓ(q_j) contains no vertex of *P* | the project's own one-line derivation from 3 | fine; it is the project's, not AKR's, and Step 0 says so |

Step 0's own body sentence — "AKR obtain the first two by the perturbation of
§9.1–§9.2 and the last two by a further small perturbation that does not change
the intersection pattern (§3)" — is **accurate**, except that it also claims
simplicity (consequence 1) for §9.1–§9.2, which they do not state. The problem
is not Step 0's body; it is the headline citation and everything downstream of
it (§6).

### 2.4 Does §9.1 give exactly what the project needs — more, or less?

**Less.** Specifically:

* **§9.1 alone is not even half of what is needed.** It resolves *vertex-vertex*
  coincidences only; *vertex-side* degeneracies are explicitly and deliberately
  left in place ("while leaving vertex-side degeneracies intact") for §9.2.
* **§9 (= §9.1 + §9.2) gives half A only.** It gives "no vertex of one polygon
  lies on the other polygon", without decreasing the intersection-point count.
  It does **not** give `FullGP`. A vertex of *P* collinear with two
  **non-adjacent** vertices of *Q* is untouched by §9 — and those are exactly the
  196 determinants `ConfigBridge.lean`'s header identifies as the ones `Config`
  does not force.
* **`FullGP` comes from §3's unproved sentence**, which covers the remaining
  collinearities *and* the non-parallelism, in one clause, given half A.
* **Neither §9 nor §3 discharges the finiteness assumption.** A pair of simple
  heptagons with a pair of overlapping collinear sides is outside AKR's scope
  entirely, by the standing assumption of §1 and §3.
* **Neither states that simplicity survives.**

**More**, in three directions the project does not use: AKR prove it for all
*m*, *n* ≥ 3, not just 7; §9.2 gives that the count may strictly *increase*,
where the project only needs ≥; and §3's clause claims the stronger "without
changing the intersection pattern" (equality) where ≥ suffices.

---

## 3. The obligation, stated

> **(A9)** Let *P*, *Q* be simple heptagons in the plane whose boundaries meet
> in finitely many points. Then there exist simple heptagons *P*′, *Q*′ such
> that no three of the fourteen vertices of *P*′ and *Q*′ combined are
> collinear, and |∂*P*′ ∩ ∂*Q*′| ≥ |∂*P* ∩ ∂*Q*|.

That is the whole of what the project needs from A9 and, by §2.2, nothing
weaker would do. It is **not** what any single section of AKR proves: it is
§9.1 + §9.2 + §3's unproved clause + an unstated preservation-of-simplicity
claim, composed.

---

## 4. The drafted Lean hypothesis

**This is a draft in a Markdown fence. No `.lean` file was created.** It is
written in the idiom of the `(E1)`–`(E8)` block at the head of
[`../lean/FilterSoundness.lean`](../lean/FilterSoundness.lean): the external
mathematical content is isolated as a named `Prop`, it is a hypothesis of every
theorem that uses it, it is never an `axiom`, and the implication from it to the
conclusion is the only thing that would be kernel-checked.

### 4.1 The problem the draft has to solve first

The reduction's **source** object — an arbitrary pair of simple heptagons — has
**no representation anywhere in this development**, at integer or real
coordinates. `Config` cannot serve: it carries `no_Q_vertex_on_P_side_line` and
`no_P_vertex_on_Q_side_line` as *fields*, so a `Config` is already half in
general position, and `Simple7`'s second conjunct already forbids three
collinear vertices within a polygon. Quantifying the reduction over `K : Config`
would state a reduction from "almost general position" to "full general
position" — a real statement, but **not A9**, and it would silently assume away
precisely the degeneracies §9 exists to remove. So the draft introduces the
source type.

### 4.2 The draft

```lean
/-
  AKR91.lean  —  DRAFT ONLY, not part of the build.
  See docs/akr-9-1-obligation.md.

  THE GENERAL-POSITION REDUCTION, AS A NAMED HYPOTHESIS.

  Nothing here is proved.  This file would state obligation (E9) and would
  kernel-check only the implication  (E9) -> the unconditional upper bound.
  There is no `axiom`, no `sorry`, no `native_decide`.

    (E9) AKR's general-position reduction: every pair of simple heptagons with
         finitely many boundary intersections is dominated, in
         boundary-intersection count, by a pair whose fourteen combined
         vertices are in general position.

         SOURCE.  Ackerman-Keszegh-Rote, DCG 68 (2022):
           * Sect. 9.1 (PDF pp. 22-24, journal 1070-1072) removes VERTEX-VERTEX
             coincidences;
           * Sect. 9.2 (PDF p. 25, journal 1073) removes VERTEX-SIDE
             degeneracies;
           * together, Sect. 9 gives only "no vertex of one polygon lies on the
             other polygon";
           * the remaining content of `RawGP` -- no three COMBINED vertices
             collinear, including the 196 triples with two NON-ADJACENT
             same-polygon vertices -- is asserted, without proof, in one
             sentence of Sect. 3 (PDF p. 4, journal 1052);
           * that the perturbed polygons are still SIMPLE is stated NOWHERE in
             the paper, and is folded into (E9)'s conclusion here deliberately,
             so that the gap is visible rather than assumed.

         Citing this hypothesis as "AKR Sect. 9.1" would be an under-citation on
         all four counts.
-/
set_option autoImplicit false

namespace Heptagon.AKR91

open scoped Classical

/-! ## 1. The source object: a pair of simple heptagons, with NO general
position built in.

Contrast `DisjointnessGraph.Simple7`, whose second conjunct ("no three vertices
collinear") is already a general-position condition, and `Config`, whose two
`no_*_vertex_on_*_side_line` fields are already half of AKR's Sect. 3 package.
Neither can be the source of a reduction whose job is to CREATE those
conditions. -/

/-- Simplicity of a closed heptagon as a curve, and nothing else: no degenerate
side, non-adjacent sides disjoint, adjacent sides meeting exactly in their
shared endpoint.  Three collinear vertices are ALLOWED. -/
def SimpleClosed (V : Fin 7 → ℝ × ℝ) : Prop :=
  (∀ i : Fin 7, V i ≠ V (i + 1)) ∧
  (∀ i j : Fin 7, ¬ LowerBound.Adjacent i j →
      segment ℝ (V i) (V (i + 1)) ∩ segment ℝ (V j) (V (j + 1)) = ∅) ∧
  (∀ i : Fin 7,
      segment ℝ (V i) (V (i + 1)) ∩ segment ℝ (V (i + 1)) (V (i + 2))
        = {V (i + 1)})

/-- A pair of simple heptagons in the real plane.  No general position. -/
structure RawPair where
  Pv : Fin 7 → ℝ × ℝ
  Qv : Fin 7 → ℝ × ℝ
  P_simple : SimpleClosed Pv
  Q_simple : SimpleClosed Qv

/-- The fourteen combined vertices, `P` then `Q` -- the shape of
`ConfigBridge.Vcfg`, over `ℝ × ℝ` instead of `Pt`. -/
def Vraw (R : RawPair) : Fin 14 → ℝ × ℝ := fun i =>
  if h : (i : Nat) < 7 then R.Pv ⟨i, h⟩ else R.Qv ⟨(i : Nat) - 7, by omega⟩

def rawBoundary (V : Fin 7 → ℝ × ℝ) : Set (ℝ × ℝ) :=
  ⋃ i : Fin 7, segment ℝ (V i) (V (i + 1))

/-- `∂P ∩ ∂Q` as a set of points of the real plane -- the shape of
`IntersectionCount.intersectionPoints`. -/
def rawPoints (R : RawPair) : Set (ℝ × ℝ) :=
  rawBoundary R.Pv ∩ rawBoundary R.Qv

/-- General position over the reals: no three of the fourteen combined vertices
collinear.  The real-coordinate twin of `ConfigBridge.FullGP`; `det` is the
`ℝ`-valued determinant `IntersectionCount` already uses, and
`Geometry.orient` is its `Int` shadow. -/
def RawGP (R : RawPair) : Prop :=
  ∀ i j k : Fin 14, i ≠ j → j ≠ k → i ≠ k →
    det (Vraw R i) (Vraw R j) (Vraw R k) ≠ 0

/-! ## 2. (E9), the hypothesis -/

/-- **(E9) — AKR's general-position reduction, in the generality the project
needs.**  STATED, NEVER PROVED, NEVER AN AXIOM.

The finiteness hypothesis is AKR's own standing assumption (Sect. 1, PDF p. 2:
"we assume that this number is finite, that is, there are no sides of `P` and
`Q` that overlap"), and Sect. 9 does not discharge it.  It is carried here
rather than dropped, because dropping it would make the statement claim more
than the paper does -- see the note on `Set.ncard` in
`docs/akr-9-1-obligation.md` Sect. 5.3. -/
def GPReduction : Prop :=
  ∀ R : RawPair, (rawPoints R).Finite →
    ∃ R' : RawPair, RawGP R' ∧ (rawPoints R).ncard ≤ (rawPoints R').ncard

/-! ## 3. The same hypothesis, parameterised, so it can be instantiated at
whichever configuration type exists.

Today the only configuration type in the development is
`DisjointnessGraph.Config`, over `Pt := Int × Int`.  A real-coordinate type is
being built elsewhere.  `GPReductionAt` is the shape both instantiate; the
source type `Src` and the target type `Tgt` are kept separate ON PURPOSE,
because the reduction's source is NOT a `Config` (Sect. 4.1 of the doc). -/
def GPReductionAt {Src Tgt : Type*}
    (srcPts : Src → Set (ℝ × ℝ)) (tgtPts : Tgt → Set (ℝ × ℝ))
    (gp : Tgt → Prop) : Prop :=
  ∀ s : Src, (srcPts s).Finite →
    ∃ t : Tgt, gp t ∧ (srcPts s).ncard ≤ (tgtPts t).ncard

/-- The instantiation this development can consume TODAY.  Read the scope note:
the target is `Config`, so this asks additionally that the general-position
witness have INTEGER coordinates.  AKR prove nothing of the sort; see
`docs/akr-9-1-obligation.md` Sect. 5.4. -/
abbrev GPReductionToConfig : Prop :=
  GPReductionAt (Src := RawPair) (Tgt := DisjointnessGraph.Config)
    rawPoints IntersectionCount.intersectionPoints ConfigBridge.FullGP

/-! ## 4. What (E9) would buy, and it is the whole remaining gap on this side.

The implication below is the ONLY thing that would be kernel-checked. -/

theorem le_38_of_gpReduction (h : GPReductionToConfig)
    (R : RawPair) (hfin : (rawPoints R).Finite) :
    (rawPoints R).ncard ≤ 38 := by
  obtain ⟨K, hgp, hle⟩ := h R hfin
  exact hle.trans (ConfigBridge.isGreatest_38_pointCount.2 ⟨K, hgp, rfl⟩)

/-- `f(7,7) = 38`, modulo (E9) and modulo the non-vacuity of the certificate as
a `RawPair` (`hcert`, which is the OTHER agent's integer-to-real half, not this
one -- it is a hypothesis here, not a theorem). -/
theorem isGreatest_38_raw (h : GPReductionToConfig)
    (hcert : ∃ R : RawPair, (rawPoints R).ncard = 38) :
    IsGreatest { n | ∃ R : RawPair, (rawPoints R).Finite ∧ (rawPoints R).ncard = n } 38 := by
  refine ⟨?_, ?_⟩
  · obtain ⟨R, hR⟩ := hcert
    exact ⟨R, by sorry, hR⟩   -- finiteness of the certificate: also (E9)-free, also not proved
  · rintro n ⟨R, hfin, rfl⟩
    exact le_38_of_gpReduction h R hfin

end Heptagon.AKR91
```

**The `sorry` in the last theorem is deliberate and must not be read as an
oversight.** It marks that the *lower* bound also has to cross the
integer-to-real boundary — `IntersectionCount.cert_pointCount` gives 38 points
for `certConfig : Config`, and exhibiting that same pair as a `RawPair` needs
`Simple7 → SimpleClosed`, which is the other agent's half, not A9. A real file
would carry it as a further named hypothesis rather than a `sorry`; it is
written this way here only to keep the draft honest about where the second gap
is. If this draft is ever turned into a file, that `sorry` must become a
hypothesis first — the project has no `sorry` anywhere and this document is not
a licence to introduce one.

### 4.3 Which coordinate ring I assumed, and why the choice matters

I stated `GPReduction` over **real** coordinates, because that is what AKR prove
and what `f(7,7)` means. `GPReductionAt` is the parameterised form so the same
hypothesis can be instantiated at either.

`GPReductionToConfig` — the form the development could consume today — is
**strictly stronger than anything AKR prove**, because it demands the
general-position witness be an integer-coordinate `Config`. That is not a
formality:

* AKR's perturbation produces *P*′ from solving a linear system with
  parameter ε and choosing ε "small enough". If the input is rational, the ratios
  λ of (1) are rational and Theorem 17's solution is rational in ε, so a rational
  ε gives a rational witness, which scales to an integer one — **plausible, but a
  separate argument, absent from AKR and absent here**.
* The input to `GPReductionToConfig` is a `RawPair` with *real* coordinates,
  so the witness must be integral while the source need not be. That is a
  genuine extra obligation and should not be folded silently into A9.

**Recommendation:** when the real-coordinate configuration type lands, state
`GPReduction` (real → real) as A9, and keep the real→integer step as a separate
named hypothesis belonging to the *other* half. Merging them would hide which
of the two remaining gaps a future proof actually closed.

---

## 5. Formalizability

### 5.1 Verdict

**§9.1 is a plausible Lean target in principle and a project in itself in
practice.** I do not think it is out of reach — unlike, say, the Jordan curve
theorem, nothing in it is missing from Mathlib in kind — but I would estimate it
at the same order of magnitude as the existing enumeration development, and I
would not start it. The right thing is what the project already does: carry it
as a named hypothesis.

Section by section:

| step | difficulty | why |
|---|---|---|
| Observation 15 (lexicographic) | easy | finite case split on a convex combination |
| Lemma 16 (convex hull) | moderate | Mathlib has `convexHull`, and the argument is a finite reachability induction |
| Theorem 17 (nonsingularity) | moderate | Mathlib has `Matrix.det`, affine subspaces, and "an affine subspace of positive dimension is unbounded". The proof is short and genuinely algebraic |
| Lemma 18 | easy | Observation 15 again on the initial configuration |
| existence of the directions *E_i* | **hard, and unproved in the paper** | see §5.2 |
| the "One final point" ε-estimate | **hardest** | see §5.2 |
| §9.2 averaging | moderate–hard | needs "for small enough shift, the count in direction +*n* plus the count in direction −*n* equals twice the old count", which is a local analysis at every degeneracy on the shifted side simultaneously |

> **Update 2026-09-20 — this is now proved too, and the rating should be
> "moderate", below §9.1's hardest steps.** See
> [`akr-9-2-obligation.md`](akr-9-2-obligation.md) §4 and
> `independent/akr_9_2/`. The identity is a four-case local analysis; 47 346
> exact-rational tests found no violation. But §9.2 turns out to contain a
> *fourth* case its own text does not describe (the shifted side's moving
> endpoints), to be **undefined** when the shifted side has a collinear
> neighbour — which §9.2 may not assume away, since §3's clause is justified
> only after §9 — and to become **false** if its opening clause "Once there
> are no more coincident vertices" is dropped, for which there is an explicit
> exact counterexample. As with `e9_directions/`, **this does not close §9**:
> §9.2's hypothesis is §9.1's conclusion, and the "One final point" estimate
> below remains the blocker.

### 5.2 The single hardest step

**The "One final point" paragraph on PDF p. 24 (journal 1072).** It is the step
that makes the whole of §9.1 *true* rather than merely well-organised: Theorem
17 supplies a motion, but the motion is only useful if, for some actually
achievable ε, (i) every vertex-vertex coincidence really separates, (ii) the
nondegenerate intersection chosen near each *P_i* really appears, and (iii) no
new degeneracy appears anywhere. AKR argue this with an O(ε) / O(ε²) comparison
for **one** local picture (Fig. 27), sketched via the sine law, and then assert
it for all degeneracies at once with the words "for small enough ε".

Formalizing it means producing an **explicit, uniform ε₀ > 0** quantified over
every degeneracy and every non-degeneracy in a 14-vertex configuration, from a
motion that is only known to be "linear in ε" via Theorem 17. In Lean that is a
quantitative real-analysis argument with no Mathlib scaffolding: there is no
library notion of "the intersection point of two ε-moving segments", so one
would build the whole local theory first. This is the step I would name if asked
for one.

A close second, and a *different kind* of difficulty: **the existence of the
directions *E_i* is asserted, not constructed.** AKR write "We choose each
direction *E_i* independently so that the two polygons have at least one
nondegenerate intersection in the neighborhood" and give no argument that such a
direction exists. This is exactly the sub-case the project's own superseded Step
0 got wrong (K-10): it *fixed* a direction ("push into Cone_Q(w)") and that
direction gives 0 crossings when Cone_P(v) ⊂ Cone_Q(w). AKR do not make that
mistake — they quantify existentially — but they also do not discharge the
existential. I believe it is true and provable (at a coincidence the two
boundaries are locally two "V"s with a common apex; the translated *P*-V meets
the *Q*-V iff the translation lies in the Minkowski difference of the two V's,
which is a union of four 2-dimensional cones and therefore has nonempty interior
unless all four side-directions are parallel, which simplicity forbids) — but I
have not verified that reasoning against the paper, it is mine and not AKR's,
and it should not be relied on without checking. **Recorded as my reasoning,
not as a finding.**

> **Update 2026-09-20 — this is now proved, and the sketch above was right.**
> See `independent/e9_directions/`. The existential holds, with a sharp
> criterion: a direction giving at least one proper crossing exists **iff the
> four edge directions `a₁,a₂,b₁,b₂` at the apex are not all mutually
> parallel**. The proof is the cone argument sketched above, made precise — for
> `a_k ∦ b_l` the set `{t·b_l − s·a_k : s,t > 0}` is a nonempty open convex
> cone, and it is scale-invariant, which is what makes one direction work for
> *all* small `ε` rather than one `ε` at a time. The direction can additionally
> be chosen degeneracy-free, because each local degeneracy cuts out only
> finitely many lines through the origin in `E`-space and an open 2-D cone is
> not covered by finitely many lines.
>
> The failure case cannot arise: if all four were parallel, both V's would lie
> on one line and overlap in a segment, so `∂P ∩ ∂Q` would be infinite,
> contradicting **AKR's own standing finiteness assumption** (§1.1 above).
>
> Verified in exact rational arithmetic on 19,765 random configurations (zero
> failures, zero disagreements with the cone argument), on 8,628 configurations
> including degenerate ones against the sharp iff (zero mismatches, 66 genuine
> "no direction" cases so the criterion is not vacuous), and on 3,980
> configurations demanding a crossing *and* no local degeneracy (zero
> failures). The controls reproduce the K-10 failure exactly: on nested cones
> the superseded fixed rule gives 0 crossings while a direction does exist.
>
> **This does not close §9.** The "One final point" ε-estimate below is
> untouched, and remains the blocker: this lemma is local and assumes, as AKR's
> own sentence does, that all other points stay fixed.

### 5.3 A much softer target, which is what the project actually consumes

The part the project's Lean theorem actually needs on top of §9's output —
§3's clause, i.e. `FullGP` given "no vertex of one polygon on the other" — is
**far more tractable than §9.1 itself**, because it is a genericity argument
rather than a constructive perturbation:

* given half A, every boundary intersection is a transversal crossing of two
  side interiors, and transversality is an open condition, so all crossings
  survive any sufficiently small perturbation of the fourteen vertices;
* collinearity of a triple is the vanishing of one determinant, a nonzero
  polynomial in the 28 coordinates; the union of 364 such zero sets is nowhere
  dense;
* so *almost every* small perturbation is in general position and has the same
  count.

Mathlib has what that needs (`MvPolynomial`, "a nonzero polynomial over an
infinite field does not vanish identically", openness arguments). It is a real
piece of work — the openness of the crossing count is the bulk of it — but it is
a bounded one, hundreds of lines rather than thousands. **If any part of A9 is
ever attacked, this is the part to attack**, and it would reduce A9 to §9 as
published rather than to nothing.

> **Attacked the same day, and the first half is done — 2026-09-17.**
> `lean/RealConfig.lean` proves, over `ℝ × ℝ` and kernel-checked:
>
> * `exists_near_generic (V : Fin 14 → ℝ × ℝ) (hε : 0 < ε) : ∃ W, dist W V < ε ∧ ∀ distinct i j k, orientR (W i) (W j) (W k) ≠ 0` —
>   **every configuration is arbitrarily close to one in full general
>   position.** This is the second bullet of the sketch above, and it did not
>   need `MvPolynomial`: each single "this determinant is nonzero" set is open
>   and dense, there are 364 of them, and `Fin 14 → ℝ × ℝ` is a complete metric
>   space, so `dense_iInter_of_isOpen` finishes it. Density of each set comes
>   from a trick that removes all case analysis on where the three vertices
>   sit: move `j` in `x` and `k` in `y` by the same `t`, and the determinant
>   becomes a **monic** quadratic in `t` whatever the configuration, so it has
>   at most two roots.
> * `exists_integer_model` — separately, a real configuration in general
>   position has an **integer** one with the same 364 determinant signs, by an
>   openness-plus-homogeneity argument that needs no rationals. That addresses
>   a different gap (`Config`'s integer coordinates), not this one.
>
> **What is still missing is this section's first bullet — and §5.3 correctly
> identified it as the bulk.** Nothing yet proves that the perturbation leaves
> the number of boundary intersection points unchanged, nor assembles the two
> halves into the sentence §3 asserts. `verification-status.md` row 45 records
> the scope, including that the committed verify-all log predates
> `exists_near_generic`. And **§9 itself remains entirely untouched**: nothing
> in the Lean development gets from an arbitrary pair of simple heptagons to
> one with no vertex on the other's boundary.

### 5.4 A statement-level trap to avoid, if this is ever formalized

Mathlib's `Set.ncard` is **0** on an infinite set. So if the finiteness
hypothesis were dropped from `GPReduction`, a configuration with two overlapping
collinear sides would satisfy `(rawPoints R).ncard = 0 ≤ 38` vacuously, and the
resulting "`f(7,7) ≤ 38`" theorem would be silently *weaker* than it reads: it
would say nothing whatever about overlapping configurations rather than bounding
them. The draft carries `(rawPoints R).Finite` explicitly for that reason. This
is worth a line in `verification-status.md` if A9 ever becomes a Lean statement.

---

## 6. Discrepancies between the paper and the project

The project found a genuine defect in this paper once before (K-14, Observation
6 false as printed). Read with the same scepticism, I find **no error in §9**.
What I find is three attribution problems, one of which is load-bearing.

### 6.1 `FullGP` comes from §3, not from §9.1

**This is the finding.** `lean/ConfigBridge.lean`'s header says:

> "But row 4 / `proof-outline.md` Step 0, imported from **AKR §9.1** as
> dependency **A9**, lists among its consequences *'no three vertices of `P` and
> `Q` combined are collinear'* — which is exactly `FullGP`."

and `verification-status.md` row 43 repeats it. But §9's own first sentence
scopes itself to "no vertex of one polygon lies on the boundary of the other
polygon", and the collinearity of the **196 triples with two non-adjacent
same-polygon vertices** — precisely the ones `ConfigBridge`'s header identifies
as the gap between `Config` and `GP` — is untouched by §9.1 and by §9.2. Its
only warrant in the paper is §3's sentence, PDF p. 4:

> "Furthermore, we assume **for convenience** that no three vertices of *P* and
> *Q* combined lie on a line… Indeed, given that no vertex of one polygon lies on
> the other polygon, this can be achieved easily by another small perturbation of
> the sides without changing the intersection pattern."

So `FullGP` — the single hypothesis of `crossCountC_ne_40`, `crossCountC_ne_42`,
`crossCountC_le_38_of_general_position` and `isGreatest_38_pointCount`, i.e. of
everything the project currently calls its strongest result — rests on the
**thinnest-warranted sentence in the paper**, and is cited to the most
heavily-argued one.

This is not a claim that §3's sentence is false. I believe it is true and §5.3
sketches why. It is a claim that **the project is currently leaning on §9.1 for
something §9.1 does not say**, and that the citation understates the risk by
pointing at a five-page proof when the actual warrant is an aside.

**Suggested repair (documentation only, not applied here):** everywhere A9 is
cited as "AKR §9.1", cite instead

> AKR §9 (= §9.1, vertex-vertex, PDF pp. 22–24 / journal 1070–1072, and §9.2,
> vertex-side, PDF p. 25 / journal 1073) **together with** the unproved clause of
> §3 (PDF p. 4 / journal 1052), which is the actual source of "no three combined
> vertices collinear"

The affected places I found: `verification-status.md` rows 4, 43 and 44, and its two prose
summaries (the paragraph beginning "position is **AKR §9.1**, imported as prose"
and the dependency table row "AKR §9.1 general-position reduction"); `lean/ConfigBridge.lean`'s header (twice) and the
docstrings of `FullGP`, `crossCountC_ne_40` and `isGreatest_38_pointCount`;
`lean/IntersectionCount.lean`'s header; `proof-outline.md` Step 0's opening
sentence and its A9 bullet (the *body* of Step 0 is already correct);
`docs/literature-notes.md` lines 18 and 141. `external-lemma-audit.md` line 141
already cites §9.1 **and** §9.2 correctly and needs no change.

Note also that Step 0's page range for the citation, "PDF pp. 22–24, journal pp.
1070–1072", covers §9.1 only. §9.2 is on PDF p. 25 (journal 1073) and §3's clause
is on PDF p. 4 (journal 1052); both are outside the cited range.

### 6.2 Nobody says the perturbed polygons are still simple

Step 0's first listed consequence is "both polygons remain **simple**". I could
not find that claim anywhere in §9, §9.1, §9.2 or §3. §9.1 moves free vertices
and pins dependent ones to relation (1); §9.2 shifts a side. Neither passage
mentions simplicity, and Fig. 28's caption speaks only of the intersection count.

The claim is almost certainly true — non-adjacent sides of a simple polygon are
disjoint compact sets, hence at positive distance, hence still disjoint after a
small enough perturbation; adjacent sides can only fail by folding back, which is
a closed condition already excluded at ε = 0 — but that is my argument, not AKR's,
and it needs the *same* uniform-ε machinery as §5.2. It matters because
`Simple7`'s fourth conjunct (non-adjacent sides do not properly cross) is the one
component of `Config` that `FullGP` does **not** supply (§2.2), so simplicity is
genuinely load-bearing and genuinely unsourced.

**Suggested treatment:** keep it inside the (E9) hypothesis, as the draft does —
`GPReduction`'s witness is a `RawPair`, which carries `SimpleClosed` by
construction — rather than citing AKR for it.

### 6.3 The finiteness assumption is never discharged

§1 and §3 both assume, and never prove, that ∂*P* ∩ ∂*Q* is finite ("there are
no sides of *P* and *Q* that overlap"). §9's title is "Degenerate Cases" and its
scope sentence does not include this one. So a pair of simple heptagons sharing
a collinear overlapping side pair is outside AKR's theorem, and `f(7,7) = 38` as
the project states it must either exclude those configurations or adopt a
convention for them. The draft carries the hypothesis explicitly; §5.4 explains
why the `Set.ncard` convention would otherwise hide the issue.

### 6.4 Not a discrepancy: the counting model

§9.3 says, verbatim, "We leave this variation for future research" about the
intersecting-**pairs** model, and footnote 3 adds that under the refined
accounting of [3] "our results carry over". `proof-outline.md` Step 0's "Caveat
on the counting model" states this correctly and the project stays in the
point model throughout, including `IntersectionCount.crossCountC_eq_pointCount`.
**No action.**

---

## 7. Summary

| question | answer |
|---|---|
| Does §9.1 give what the project needs? | **No — less.** §9.1 removes vertex-vertex coincidences only. |
| Does §9 (§9.1 + §9.2)? | **No — still less.** §9 gives "no vertex of one polygon on the other", not `FullGP`. |
| Where does `FullGP` come from? | **§3's one unproved sentence**, PDF p. 4 / journal 1052. |
| Is the conference version more explicit? | **No — it has nothing.** No degenerate-cases section at all. |
| Is §9 wrong anywhere? | **Not that I can find.** Two steps are asserted rather than proved (the existence of *E_i*; the uniform ε), but I found no error. |
| Is it formalizable? | In principle yes, in practice a project of its own. Hardest step: the "One final point" ε-estimate, PDF p. 24. |
| Is there a softer target? | **Yes** — §3's clause alone (§5.3), which is the part the Lean development actually consumes. |
| Has any of it been formalized since? | **The genericity half of §3's clause, yes** — `RealConfig.exists_near_generic`, 2026-09-17; see the note in §5.3. The "count is unchanged" half, the assembly, and the whole of §9 have not. |
| Should A9 stay a hypothesis? | **Yes.** |

> **Added 2026-09-17, after this document was written.** Two things raise the
> stakes on everything above. First, the upper bound for configurations in
> general position is now a Lean theorem importing **no published lemma** at all
> (`lean/ConfigBridge.lean`; `verification-status.md` rows 41–44), so A9 is the
> **only** remaining published import — which means the strongest results in the
> repository rest on the one unproved sentence of §3 this document identifies.
> Second, part of §3's clause has since been proved in Lean (§5.3's note), which
> narrows the obligation without closing it. The answer to the last row is
> unchanged: A9 should stay a hypothesis.
