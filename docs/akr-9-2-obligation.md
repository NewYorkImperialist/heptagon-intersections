# A9.2 made precise — vertex-side degeneracies, as an obligation

**Status: an obligation statement plus one proved lemma and a computational
check. Nothing here is in Lean.** This is the §9.2 companion to
[`akr-9-1-obligation.md`](akr-9-1-obligation.md), which did the same job for
§9.1. It reads what Ackerman–Keszegh–Rote (AKR) actually write in §9.2, states
the obligation with explicit quantifiers, assesses whether the printed argument
is complete, and reports what could and could not be proved.

Written 2026-09-20. No `.lean` file was created or modified; no build was run;
no git command was run.

**Headline.** §9.2's argument is **five sentences long** and contains **no case
analysis, no lemma, and no figure other than an illustration**. Its load-bearing
claim — "the average number of intersections over the two possible directions is
always the same as before" — is **asserted without proof**. This document proves
it, under hypotheses AKR do not state, and identifies **one hypothesis under
which the §9.2 construction is not even well defined** (three consecutive
collinear vertices of the shifted polygon), which §9.2 cannot assume because the
assumption that would supply it (§3's "for convenience" clause) is only
discharged *after* §9.

---

## 0. Sources and method

**Primary source.** `references/akr-dcg-2022.pdf` — E. Ackerman, B. Keszegh,
G. Rote, *An almost optimal bound on the number of intersections of two simple
polygons*, Discrete Comput. Geom. **68** (2022) 1049–1077, as pinned in
[`../references/README.md`](../references/README.md).

**The conference version has no §9 at all** — established in
[`akr-9-1-obligation.md`](akr-9-1-obligation.md) §0 and
[`external-lemma-audit.md`](external-lemma-audit.md) §8, re-confirmed here. The
journal version is the only source.

**Reading method, and why the quotations here are stronger than §9.1's.**
`pdftotext`, `mutool`, `qpdf`, `pypdf`, `pdfminer` and poppler are all absent on
this machine and the Read tool's `pages` renderer fails. I used **both** routes:

1. `independent/akr_9_2/pdftext.py` — a from-scratch extractor that inflates the
   `FlateDecode` content streams with `zlib`, walks the `/Pages` tree so the page
   numbering is exact, and interprets the `Tj`/`TJ`/`'`/`"` operators. It drops
   inter-token spacing, so words run together ("theaveragenumberofintersections").
2. `independent/akr_9_2/pdfrast.swift`, a Swift/PDFKit utility built with the
   system `swiftc`, that **rasterises a page to PNG (nominally 4×, in practice
   ~8× after the Retina backing scale) and renders the real text layer with its
   spacing and ligatures**. Pages 22, 23, 24 and 25 were read as images.

**Every quotation below was read off the rendered image**, not off the
ligature-lossy stream dump, and cross-checked against the stream dump. Unlike
§9.1's document, no ligature had to be silently restored and no character was
supplied. (§1.5 records one place where §9.1's document did supply one.)

**Page numbering.** Journal page = PDF page + 1048, the offset fixed in
[`akr-9-1-obligation.md`](akr-9-1-obligation.md) §0 and
[`external-lemma-audit.md`](external-lemma-audit.md) §7.3. §9.2 begins at the
foot of **PDF p. 24 (journal 1072)** and ends on **PDF p. 25 (journal 1073)**.
This is a **derived** journal number; the PDF carries no printed folio.

---

## 1. What AKR actually say

### 1.1 The scope sentence — §9 opening, PDF p. 21 (journal 1069)

Quoted in full in [`akr-9-1-obligation.md`](akr-9-1-obligation.md) §1.3; the
part that fixes §9.2's job:

> "There are two types of degenerate cases:
> **vertex-vertex:** Two vertices from different polygons coincide.
> **vertex-side:** A vertex of one polygon lies on a side of the other polygon."

and the division of labour, PDF p. 22 (journal 1070):

> "We will first use a global perturbation governed by a parametric system of
> linear equations to get rid of vertex-vertex degeneracies. **Vertex-side
> degeneracies can then be treated locally by shifting sides one by one.**"

§9.1 is explicit that it *preserves* vertex-side degeneracies rather than
removing them ("We will simultaneously perturb all vertex-vertex degeneracies
**while leaving vertex-side degeneracies intact**", PDF p. 22). So §9.2 is
handed a configuration in which

* vertex-vertex degeneracies have been removed (§9.1), and
* every vertex-side degeneracy of the *original* configuration is still present,
  with the same ratio λ (relation (1) of §9.1 is maintained).

### 1.2 §9.2 in full — PDF pp. 24–25 (journal 1072–1073)

**This is the complete text of §9.2.** One sentence — the last line of PDF
p. 24 — then three at the head of PDF p. 25, after Figs. 27 and 28. Both parts
were read off the rendered page.

> **9.2 Vertex-Side Degeneracies**
>
> Once there are no more coincident vertices, it is easy to get rid of the
> remaining degeneracies by looking at the sides one by one, see Fig. 28.
>
> If we perform a small parallel shift of a side, an intersection point may
> disappear or multiply into two intersection points, depending on the direction
> of the shift. However, the average number of intersections over the two
> possible directions is always the same as before. Thus, there exists a small
> parallel shift that does not decrease the number of intersection points.

(Four sentences, not five: `akr-9-1-obligation.md` §1.5 says "five sentences"
and then quotes four. The count of four is correct; the §9.1 document's word
"five" is an off-by-one and should be read as "four".)

Figure 28's caption, PDF p. 25 (journal 1073):

> "**Fig. 28** Perturbing a blue polygon side to get rid of collinear vertices
> without decreasing the number of intersection points: **a** before, **b** after"

### 1.3 What Fig. 28 shows that the text does not say

The figure was read as a high-resolution raster. It shows, in each of panels **a** and **b**:

* one **thick blue segment** — the side *s* being shifted;
* its **two neighbouring blue sides**, one leaving the left endpoint upward, one
  leaving the right endpoint downward;
* **two dotted blue lines parallel to *s***, one on each side of it — the two
  candidate shifted positions;
* **dotted blue rays continuing the two neighbouring sides beyond the endpoints
  of *s***;
* six **red** features meeting *s*: near-vertical red segments crossing it
  transversally, red "V"s whose apex lies on *s* with both arms above, and red
  "Λ"s whose apex lies on *s* with both arms below.

The dotted continuations of the neighbouring sides are the only place in the
whole of §9 where the following is said, and it is said **only pictorially**:

> **a "parallel shift of a side" moves the side's two endpoints, sliding each
> one along the line of the adjacent side.**

The text never states this. It matters, and §3 below shows exactly how much.

### 1.4 A wording discrepancy in the caption

The caption says the shift gets rid of "**collinear vertices**". §9.2's body and
§9's opening say it gets rid of **vertex-side degeneracies**. These are different
conditions: "no three of the fourteen combined vertices collinear" is §3's
"for convenience" half-B assumption, which §9 explicitly does *not* claim to
discharge (see [`akr-9-1-obligation.md`](akr-9-1-obligation.md) §1.2). A parallel
shift of one side of *P* does not remove, say, a collinear triple of three *Q*
vertices. **Read the caption as loose wording for "vertex-side degeneracies";
the body text is the operative statement.** Flagged because a reader taking the
caption at face value would over-credit §9.

### 1.5 A transcription discrepancy in the §9.1 document — the paper's parameter is α, not ε

Found while rendering the pages, reported because the project's standing rule is
that quotations must be exact. It is a naming matter only and changes no
mathematics.

[`akr-9-1-obligation.md`](akr-9-1-obligation.md) §1.4 quotes §9.1 with **ε**
throughout — "*P_i* = *P⁰_i* + ε*E_i*", "a solution for ε = 0", "the linear
growth *k*ε dominates". **The journal uses α.** Read off the rendered pages:

* PDF p. 23 (journal 1071): "whereas each free point *A_i* is given
  “externally”, depending linearly on some **parameter α**:"
* PDF p. 24 (journal 1072): "One final point: We have chosen each movement
  *P_i* = *P*⁰_i + **α***E_i* of a free point that is involved in a
  vertex-vertex degeneracy in such a way that there are no degeneracies…"
* Fig. 27's shaded-triangle label, PDF p. 25, reads "**α***E_i*".

The cause is visible in the stream dump: the extractor used for that document
drops the α glyph, so p. 24 comes out as "O()" and "O(2)", and the ε was
**supplied**. That document's own §0 says "no other character has been changed,
and no word has been supplied", so the note should be corrected. I have added a
pointer there but have not rewritten its quotations — that is for whoever owns
that document. **Everything §9.1 says is unaffected; only the letter differs.**

---

## 2. The obligation, stated precisely

§9.2 has no lemma number, so there is nothing to quote as a statement; what
follows is my reconstruction of what §9.2's four sentences would have to mean
for §9 to do the job §3 assigns it. **The wording is mine, not AKR's.**

### 2.1 Notation

Let *P* = (*P*₀,…,*P*_{m−1}) and *Q* = (*Q*₀,…,*Q*_{n−1}) be simple closed
polygons in ℝ², *m*, *n* ≥ 3, indices cyclic. Sides
*s*_k = [*P*_k, *P*_{k+1}] and *t*_j = [*Q*_j, *Q*_{j+1}]. Write
*I*(*P*,*Q*) = |∂*P* ∩ ∂*Q*|, the number of **points**.

Fix an index *i* and abbreviate *A* = *P*_i, *B* = *P*_{i+1}, *s* = [*A*,*B*],
*s*⁻ = [*P*_{i−1}, *A*], *s*⁺ = [*B*, *P*_{i+2}]. Let **u** = *B* − *A* and let
**n** = **u**^⊥ be **u** rotated by +90° (unnormalised: exactness costs nothing
and an unnormalised normal keeps every coordinate rational).

### 2.2 The shift operator — the definition AKR never write down

For δ ∈ ℝ let ℓ_δ = {*A* + δ**n** + τ**u** : τ ∈ ℝ}, the line parallel to
*ℓ*(*s*) at parameter δ. Define

* *A*_δ = ℓ_δ ∩ aff(*P*_{i−1}, *A*),
* *B*_δ = ℓ_δ ∩ aff(*B*, *P*_{i+2}),
* *P*(δ) = the *m*-gon *P* with *P*_i replaced by *A*_δ and *P*_{i+1} by *B*_δ.

*A*_δ and *B*_δ exist and are unique **iff** *ℓ*(*s*⁻) ∦ *ℓ*(*s*) and
*ℓ*(*s*⁺) ∦ *ℓ*(*s*); since *s*⁻ and *s* share the point *A*, "parallel" here is
the same as "collinear", so this is exactly

> **(NC)** *P*_{i−1}, *P*_i, *P*_{i+1} are not collinear, and *P*_i, *P*_{i+1},
> *P*_{i+2} are not collinear.

**(NC) is a hypothesis AKR never state and cannot assume** — see [§3.1](#31-gap-1--the-shift-is-undefined-at-a-straight-vertex-and-92-may-not-assume-it-away).

### 2.3 The averaging claim

> **(A9.2-avg)** Let *P*, *Q* be simple polygons with
>
> * **(F)** ∂*P* ∩ ∂*Q* finite (equivalently: no side of *P* overlaps a side of
>   *Q* in a segment) — AKR's standing assumption from §1 and §3;
> * **(VV)** no vertex of *P* equals a vertex of *Q* — the output of §9.1;
> * **(NC)** for the chosen index *i*, as in §2.2.
>
> Then there is δ₀ > 0 such that for every δ with 0 < |δ| < δ₀:
>
> 1. *P*(δ) is a simple *m*-gon;
> 2. ∂*P*(δ) ∩ ∂*Q* is finite and no vertex of *P*(δ) is a vertex of *Q*;
> 3. no vertex of *Q* lies on the side [*A*_δ, *B*_δ], and neither *A*_δ nor
>    *B*_δ lies on ∂*Q* — i.e. **every vertex-side degeneracy that involved
>    *s*, *A* or *B* is gone**, and no new one has appeared;
> 4. every vertex-side degeneracy of (*P*(δ), *Q*) is a vertex-side degeneracy
>    of (*P*, *Q*) — so their number strictly decreases whenever *s*, *A* or
>    *B* carried one;
> 5. **the averaging identity**
>    *I*(*P*(δ), *Q*) + *I*(*P*(−δ), *Q*) = 2 · *I*(*P*, *Q*).

Clause 5 is AKR's sentence "the average number of intersections over the two
possible directions is always the same as before". Clauses 1–4 are what
"small parallel shift" and "get rid of the remaining degeneracies" have to mean
for the sentence after it to follow. **AKR state clause 5 and nothing else.**

### 2.4 The immediate corollary — AKR's fourth sentence

> **(A9.2-step)** Under the hypotheses of (A9.2-avg), there is δ with
> 0 < |δ| < δ₀ such that *I*(*P*(δ), *Q*) ≥ *I*(*P*, *Q*), *P*(δ) is simple,
> and (*P*(δ), *Q*) has strictly fewer vertex-side degeneracies than (*P*, *Q*).

Immediate from 5: if both of *I*(*P*(δ),*Q*), *I*(*P*(−δ),*Q*) were < *I*(*P*,*Q*)
their sum would be < 2*I*(*P*,*Q*).

### 2.5 The section-level statement AKR's first sentence asserts

> **(A9.2)** Let *P*, *Q* be simple polygons with (F) and (VV). Then there are
> simple polygons *P*′, *Q*′ with the same numbers of vertices such that
> ∂*P*′ ∩ ∂*Q*′ is finite, **no vertex of either lies on the boundary of the
> other**, and *I*(*P*′, *Q*′) ≥ *I*(*P*, *Q*).

(A9.2) does **not** follow from (A9.2-step) alone. It needs, in addition, a
**termination** argument for "looking at the sides one by one" — clause 4 of
(A9.2-avg) supplies it (the degeneracy count is a strictly decreasing
non-negative integer), but clause 4 is mine, not AKR's: their text contains no
monovariant, no induction and no statement that a shift cannot re-create a
degeneracy on an already-processed side. And it needs (NC) at every step, which
can fail.

---

## 3. Assessment: is the printed argument complete?

**No.** §9.1 was found by [`akr-9-1-obligation.md`](akr-9-1-obligation.md) §5.2
to contain two steps asserted without proof. §9.2 is worse in kind, though the
mathematics it is hiding is much easier: **§9.2 is four sentences and every one
of them is an assertion.** There is no lemma, no case distinction, no ε, no
"for small enough", no proof of the averaging claim, and no definition of the
operation being averaged over. Concretely, five gaps.

### 3.1 Gap 1 — the shift is undefined at a straight vertex, and §9.2 may not assume it away

AKR write "a small parallel shift of a side". A side of a polygon is a segment
with two endpoints that are shared with the neighbouring sides; a polygon cannot
have a side translated off its neighbours and stay closed. Figure 28 resolves
this — the dotted rays show the endpoints sliding along the neighbouring side
**lines** — but **only in the picture**. The text never says it, and the text is
what carries the hypotheses.

The rule Fig. 28 draws requires **(NC)**. If *P*_{i−1}, *P*_i, *P*_{i+1} are
collinear then ℓ_δ ∥ *ℓ*(*s*⁻) and *A*_δ does not exist: **there is no such
thing as a small parallel shift of that side.**

This is not an idle case. §9.2 is handed the output of §9.1, and:

* a simple polygon may perfectly well have three consecutive collinear vertices;
* the assumption that forbids it — §3's "no three vertices of *P* and *Q*
  combined lie on a line" — is §3's **half B**, and §3 says half B is justified
  *given* "no vertex of one polygon lies on the other polygon", which is exactly
  what §9 is in the middle of establishing. §9.2 therefore **cannot** invoke it
  without circularity. (The two halves of §3's general-position package, and
  their different warrants, are set out in
  [`akr-9-1-obligation.md`](akr-9-1-obligation.md) §1.2.)
* §9.1 does not remove it either: §9.1 removes vertex-**vertex** coincidences
  between *different* polygons. Three collinear consecutive vertices of the same
  polygon are untouched — indeed §9.1's relation (1) is explicitly *maintained*.

**Measured.** In 1,500 random configurations of two simple hexagons on a 6×6
integer grid that have a vertex-side degeneracy and no vertex-vertex degeneracy,
AKR's procedure **could not be started** — the first side it had to shift had a
collinear neighbour — in a substantial fraction of cases; see
[§5.4](#54-running-the-whole-procedure) for the exact number. In the
side-by-side sweeps, 2,946 of 24,564 side/δ instances (12.0%) had to be skipped
as undefined for the same reason.

**Repairs exist but are not free.** (i) Delete straight vertices first: ∂*P* is
unchanged, so *I* is unchanged — but *m* drops, and AKR's theorem, and this
project's *f*(7,7), are statements about a **fixed** number of sides; re-inserting
a vertex in the interior of a side of the final general-position polygon can
destroy general position. (ii) Translate the side and let the neighbours rotate
about their far endpoints (*A*_δ = *A* + δ**n**, *B*_δ = *B* + δ**n**): always
defined, keeps *m*, and satisfies the same averaging identity in testing
([§6.5](#65-the-repair-i-would-use)) — but it is **not** the operation AKR
describe or draw, and it is not a parallel shift of anything, since the
neighbouring sides change direction.

### 3.2 Gap 2 — the averaging claim is asserted, with no case analysis

"However, the average number of intersections over the two possible directions
is always the same as before." That is the whole of the justification. AKR do
not distinguish

* a *transversal* crossing on *s* (contributes 1, 1),
* a *touching* vertex-side degeneracy on *s*° (contributes 2, 0),
* a *crossing* vertex-side degeneracy on *s*° (contributes 1, 1),
* a degeneracy at the **moving endpoint** *A* or *B* of *s* (see Gap 3),

nor do they say that the contributions are additive, which is the step that
turns "the average is preserved at each degeneracy" into "the average is
preserved in total". The audit's summary of the obligation —
[`akr-9-1-obligation.md`](akr-9-1-obligation.md) §5.1, "a local analysis at
every degeneracy on the shifted side simultaneously" — is exactly right, and it
is exactly what is missing.

The claim is nonetheless **true**. §4 proves it and §5 tests it.

### 3.3 Gap 3 — the moving-endpoint case is not described by AKR's own sentence

AKR describe the effect of the shift as "an intersection point may **disappear**
or **multiply into two** intersection points". That is a correct description of
what happens at a *Q*-vertex in the **interior** of *s*. It is **not** a
description of what happens at the two **endpoints** *A*, *B*, which also move
— and which may themselves be *P*-vertices lying on *Q*-sides, i.e. degeneracies
of the *other* sub-type. There the intersection point does not disappear or
double *in place*: it **migrates between two different sides of *P***, from
*s*⁻ to *s* or the reverse, and the local count is

> [sgn δ = sgn α] + [sgn δ = sgn κ]

for two nonzero reals α, κ defined in [§4.5](#45-case-f3--the-moving-endpoint-a-the-case-akr-omit) — which
does sum to 2 over the two directions, but for a reason AKR's sentence does not
cover. In my stratified sweeps this case (class **E**) is the *most common* one,
**12,776 of 47,346** tested side/δ instances. AKR say nothing about it at all.

### 3.4 Gap 4 — "one by one" has no termination argument

"it is easy to get rid of the remaining degeneracies by looking at the sides one
by one". There is no induction, no monovariant, and no claim that shifting side
*s* cannot re-create a degeneracy on a side already processed. This is not
obvious: shifting *s* **lengthens or shortens both neighbouring sides**, so it
edits two sides that may already have been processed. The repair is clause 4 of
(A9.2-avg) — for δ below the distance from *A* to the nearest *Q*-vertex and the
nearest *Q*-side not through *A*, the added stub of *s*⁻ is degeneracy-free — but
it is a repair, not a reading.

### 3.5 Gap 5 — "small enough" is never quantified, and one of the two directions may be *forced*

"a **small** parallel shift". No δ₀ is exhibited or shown to exist. This matters
twice over:

* the averaging identity is **false** for shifts that are not small — measured:
  at δ = 2⁻³ (relative to the unnormalised normal), **239 of 1,162** tested
  instances violate it; at δ = 2⁻⁶, **10 of 1,322**; at δ = 2⁻¹⁰ and below,
  **0 of 1,326**. See [§5.2](#52-the-smallness-threshold-is-real-and-is-the-checkers-own-failure-mode);
* the final δ must additionally avoid the finitely many values at which
  *A*_δ or *B*_δ lands on a *Q*-side, or a *Q*-vertex lands on the shifted side.
  AKR never mention this.

### 3.6 Gap 6 (inherited) — nobody says the perturbed polygons are still simple

Exactly as [`akr-9-1-obligation.md`](akr-9-1-obligation.md) §6.2 records for
§9.1. §9.2 shifts a side of *P* and never remarks that *P*(δ) is still a simple
polygon. It is, for small δ, and the proof is easy (§4.6, clause 1) — but it is not in the
paper, and it is load-bearing for this project, whose `Simple7` predicate has
non-self-crossing as its fourth conjunct.

### 3.7 What is *not* a gap

Three things I checked and found sound:

* **the two-sub-type symmetry.** §9.2 speaks of shifting "a side"; a *P*-vertex
  on a *Q*-side is handled by shifting the *Q*-side, and the argument is
  verbatim symmetric. AKR do not spell this out but nothing is hidden in it.
* **the ordering "§9.1 first".** "Once there are no more coincident vertices" is
  doing real work, and §5.5 shows it is **necessary, not stylistic**.
* **§9.3's disclaimer.** AKR are explicit that the pairs-of-sides counting model
  is *not* covered ("We leave this variation for future research"), and this
  project stays in the point model. Already recorded at
  [`external-lemma-audit.md`](external-lemma-audit.md) §7.3; re-confirmed from
  the rendered page here.

---

## 4. The proof of the averaging claim

**This is mine, not AKR's.** It is a pen-and-paper proof, not a Lean proof, and
it has not been reviewed by anyone. It is written out because the audit
([`akr-9-1-obligation.md`](akr-9-1-obligation.md) §5.1) rated the step
"moderate–hard" and it turns out to be neither: it is a four-case local
analysis, and the only work is the bookkeeping that makes the cases additive.

Throughout, *P*, *Q*, *i*, *A*, *B*, *s*, *s*⁻, *s*⁺, **u**, **n**, ℓ_δ,
*A*_δ, *B*_δ, *P*(δ) are as in §2.1–2.2, hypotheses (F), (VV), (NC) hold, and
*N* = |**u**|² = |**n**|². For a vector *x* write *h*(*x*) = ⟨*x* − *A*, **n**⟩,
the affine functional cutting out ℓ_δ as {*h* = δ*N*}.

### 4.1 Choice of δ₀

Let 𝒟 = ∂*P* ∩ ∂*Q*, a finite set by (F). Let

* *ρ*₁ = the minimum distance between two distinct points of 𝒟 ∪ {*A*, *B*} ∪
  *V*(*Q*), which is > 0 (all these points are distinct: *A*, *B* ∉ *V*(*Q*) by
  (VV));
* *ρ*₂ = the minimum of dist(*s*, *t*) over the *Q*-sides *t* with *t* ∩ *s* = ∅,
  and of dist(*A*, *t*), dist(*B*, *t*) over the *Q*-sides *t* not containing
  *A* resp. *B*; positive, finitely many;
* *ρ*₃ = the minimum distance between two non-adjacent sides of *P*, positive
  because *P* is simple and compact;
* *ρ*₄ = min(|*A* − *P*_{i−1}|, |*B* − *P*_{i+2}|, |*B* − *A*|);
* *σ* = the minimum of |⟨*v*_t, **n**⟩| over the *Q*-sides *t* that meet
  *ℓ*(*s*), *v*_t being *t*'s direction. Each term is nonzero: a *Q*-side
  parallel to *s* that meets *ℓ*(*s*) would lie in *ℓ*(*s*) and overlap *s*,
  which (F) forbids. **This term is easy to forget** — it is what stops a
  *Q*-side that is *nearly* parallel to *s* from having its crossing point slide
  a long way along the shifted side.

Take δ₀ > 0 with

> δ₀ · max(|**n**|, *N*/|α|, *N*/|α′|, *N*·max_t|*v*_t|/*σ*) < ¼ min(*ρ*₁,…,*ρ*₄),

where α = ⟨*A* − *P*_{i−1}, **n**⟩ ≠ 0 and α′ = ⟨*P*_{i+2} − *B*, **n**⟩ ≠ 0 are
the two quantities (NC) makes nonzero. Then for |δ| < δ₀ every point that moves
— every vertex, and every crossing point on the shifted side — moves by less
than ¼ min(*ρ*ᵢ). **This is the δ₀ AKR do not exhibit.** Note it depends on the
whole configuration, not just on *s*: *ρ*₁, *ρ*₂ and *σ* range over all of *Q*.

### 4.2 Localisation

Let *r* = ⅓ min(*ρ*₁, *ρ*₂, *ρ*₃, *ρ*₄) and, for each point *p* of the finite set

> ℱ = (𝒟 ∩ *s*) ∪ {*A*, *B*},

let *U*_p be the open disc of radius *r* about *p*. The *U*_p are pairwise
disjoint. Set *U* = ⋃_p *U*_p. I claim that for all |δ| < δ₀:

> **(Loc)** (∂*P*(δ) ∩ ∂*Q*) ∖ *U* = (∂*P* ∩ ∂*Q*) ∖ *U*.

*Proof.* ∂*P*(δ) and ∂*P* differ only inside *s*⁻ ∪ *s* ∪ *s*⁺. The stubs by
which *s*⁻ and *s*⁺ change lie inside *U*_A and *U*_B by the δ₀ bound, so the
only thing to check is a point *x* of the **shifted side** with *x* ∉ *U*.
Suppose *x* ∈ ∂*Q*, say *x* ∈ *t* for a *Q*-side *t*. Then *t* meets ℓ_δ, so *t*
meets a ¼*r*-neighbourhood of *s*, so by the choice of *ρ*₂ the side *t* meets
*s*, in a point *X*₀ ∈ 𝒟 ∩ *s* ⊆ ℱ. By (F), *t* ∦ *s*, so *t* meets ℓ_δ in the
single point *X*_δ, and the δ₀ bound involving *σ* gives |*X*_δ − *X*₀| < ¼*r*.
Hence *x* = *X*_δ ∈ *U*_{X₀} ⊆ *U*, a contradiction. The same argument with
δ = 0 gives the reverse inclusion. ∎

So *I*(*P*(δ),*Q*) = *I*_far + Σ_{p ∈ ℱ} *c*_p(δ) where *I*_far = |𝒟 ∖ *U*| is
independent of δ (including δ = 0) and *c*_p(δ) = |∂*P*(δ) ∩ ∂*Q* ∩ *U*_p|.
**Every *p* ∈ ℱ that is in 𝒟 has *c*_p(0) = 1** (the *U*_p are small enough to
contain one point of 𝒟 each); if *A* ∉ ∂*Q* then *c*_A(0) = 0 and, by the same
disc argument, *c*_A(±δ) = 0 too. So the identity to prove reduces to

> **(★)** *c*_p(δ) + *c*_p(−δ) = 2 for each *p* ∈ ℱ ∩ 𝒟, for all 0 < δ < δ₀.

Four cases exhaust ℱ ∩ 𝒟, by (VV) and by (F) (which makes each intersection of
a *Q*-side with *ℓ*(*s*) a single point).

### 4.3 Case F1 — a transversal crossing in the interior of *s*

*p* ∈ *s*°, *p* ∈ *t*° for a unique *Q*-side *t*, *p* not a *Q*-vertex. Then
*t* ∦ *s* (else *t* ⊆ *ℓ*(*s*) and, sharing *p* with *s*, overlapping it —
excluded by (F)). *t* meets ℓ_δ in one point, at distance *O*(δ) from *p*,
inside *t*° and inside the shifted side. So *c*_p(δ) = *c*_p(−δ) = 1. ✔

### 4.4 Case F2 — a *Q*-vertex in the interior of *s* (AKR's own case)

*p* = *Q*_j ∈ *s*°. Let *e*⁻ = *Q*_{j−1} − *p*, *e*⁺ = *Q*_{j+1} − *p*. Neither
is parallel to **u**: if *e*⁺ ∥ **u** then *t*_j ⊆ *ℓ*(*s*) and, sharing *p*,
overlaps *s* — excluded by (F). Put ε^± = sgn ⟨*e*^±, **n**⟩ ∈ {+1, −1}. For
0 < |δ| < δ₀, the segment [*p*, *Q*_{j±1}] meets ℓ_δ iff sgn δ = ε^±, and then
in a point at distance *O*(δ) from *p*, which lies in the shifted side. Hence

> *c*_p(δ) = [sgn δ = ε⁻] + [sgn δ = ε⁺],  so *c*_p(δ) + *c*_p(−δ) = 2. ✔

If ε⁻ = ε⁺ (*Q* **touches** *ℓ*(*s*) at *p*) the two values are 2 and 0 —
AKR's "multiply into two" / "disappear". If ε⁻ = −ε⁺ (*Q* **crosses**) they are
1 and 1. **This case, and only this case, is the one AKR's sentence describes.**

### 4.5 Case F3 — the moving endpoint *A* (the case AKR omit)

Suppose *A* lies in the relative interior of a *Q*-side *t*. (At most one such
*t*: two would meet at *A*, and *A* is not a *Q*-vertex by (VV), so they would
cross there and *Q* would not be simple.) Write *w* = *A* − *P*_{i−1},
*v* = direction of *t*, α = ⟨*w*, **n**⟩, β = ⟨*v*, **n**⟩, and

> **κ = ⟨*v*,**u**⟩ / β − ⟨*w*,**u**⟩ / α.**

* α ≠ 0 by **(NC)**;
* β ≠ 0, else *t* ∥ *s* and *A* ∈ *t* ∩ *ℓ*(*s*) forces *t* ⊆ *ℓ*(*s*), so *t*
  overlaps *s* — excluded by (F);
* κ ≠ 0: write *v* = *a***u** + *b***n** and *w* = *c***u** + *d***n** in the
  orthogonal basis (**u**, **n**), which have the same length √*N*. Then
  ⟨*v*,**u**⟩ = *aN*, β = ⟨*v*,**n**⟩ = *bN*, ⟨*w*,**u**⟩ = *cN*,
  α = ⟨*w*,**n**⟩ = *dN*, so κ = *a*/*b* − *c*/*d* and κ = 0 ⟺ *ad* = *bc* ⟺
  *v* ∥ *w*. But *t* and *s*⁻ both contain
  *A*, so *v* ∥ *w* makes them collinear and *t* overlaps *s*⁻ — excluded by (F).

Now compute *c*_A(δ) for 0 < |δ| < δ₀. Two sides of *P*(δ) meet *U*_A: the
shortened-or-lengthened *s*⁻ and the shifted *s*.

* *A*_δ = *A* + (δ*N*/α)·*w*, so *P*(δ)'s side *s*⁻ is {*A* + τ*w* : τ ∈
  [−1, δ*N*/α]}. Since aff(*t*) ∩ aff(*s*⁻) = {*A*} (they are distinct lines
  through *A*), *t* meets this segment **iff** δ*N*/α ≥ 0, i.e. iff
  sgn δ = sgn α.
* *t* meets ℓ_δ in *X*_δ = *A* + (δ*N*/β)·*v*, which lies in *t*° for |δ| small.
  *X*_δ lies on the shifted side iff *X*_δ = *A*_δ + σ**u** with σ ≥ 0 (σ ≤ its
  length is automatic for |δ| small). Taking the **u**-component of
  *X*_δ − *A*_δ = δ*N*(*v*/β − *w*/α) and dividing by *N* = |**u**|² gives
  **σ = δκ**. So *t* meets the shifted side iff sgn δ = sgn κ.

Hence

> *c*_A(δ) = [sgn δ = sgn α] + [sgn δ = sgn κ],  so *c*_A(δ) + *c*_A(−δ) = 2. ✔

and again both patterns occur: sgn α = sgn κ gives 2 and 0, sgn α = −sgn κ gives
1 and 1. **The mechanism is different from F2**: here the intersection point does
not vanish and reappear in place, it **migrates from *s*⁻ to *s*** (or the
reverse) as δ changes sign. The formula is checked against brute-force exact
counting in [§5.6](#56-the-endpoint-formula-checked-directly).

*B* is symmetric, with *w*′ = *P*_{i+2} − *B* and the shifted side's far end.

### 4.6 Conclusion

(★) holds in every case, so
*I*(*P*(δ),*Q*) + *I*(*P*(−δ),*Q*) = 2*I*_far + Σ_{p∈ℱ∩𝒟} 2 = 2·*I*(*P*,*Q*),
which is clause 5 of (A9.2-avg). Clauses 2 and 3 fall out of §4.1: no *Q*-vertex
is within δ₀|**n**| of *ℓ*(*s*) unless it is on *ℓ*(*s*), and a *Q*-vertex on
*ℓ*(*s*) is at distance δ|**n**| > 0 from ℓ_δ; and *A*_δ ∈ ∂*Q* would need a
*Q*-side within *O*(δ) of *A*, i.e. through *A*, and for the one such side the
computation above gives *A*_δ ∈ *t* iff σ = δκ = 0 iff δ = 0. Clause 4 follows
because ∂*P*(δ) and ∂*P* agree outside *U* and no degeneracy survives inside
*U*. Clause 1 (simplicity) holds because only *s*⁻, *s*, *s*⁺ move, each by less
than *ρ*₃/4 in Hausdorff distance, and non-adjacent sides of *P* are at distance
≥ *ρ*₃; adjacent sides still meet exactly at their shared (moved) vertex. ∎

### 4.7 What this proof needs that AKR do not state

| ingredient | in AKR's four sentences? |
|---|---|
| the definition of *P*(δ) (endpoints slide along the neighbour lines) | only in Fig. 28, pictorially |
| (NC), without which *P*(δ) is undefined | **no** |
| (F) used four separate times (F1, F2, β ≠ 0, κ ≠ 0) | as a standing assumption from §1/§3, never invoked here |
| (VV) used for *ρ*₁ and for "at most one *Q*-side through *A*" | as the section's opening clause, never invoked |
| the explicit δ₀ | **no** |
| the localisation (Loc) making contributions additive | **no** |
| case F3, the moving endpoint | **no** |
| clause 4, which is what makes "one by one" terminate | **no** |
| clause 1, simplicity | **no** |

---

## 5. The computational check

**Everything below is exact rational arithmetic** (`fractions.Fraction`). There
is no floating point anywhere in `independent/akr_9_2/`. Intersection counts are
computed as the cardinality of the **set of distinct points** of ∂*P* ∩ ∂*Q*,
by exact segment-segment intersection over all side pairs, with collinear
overlap detected and reported as "infinite" rather than counted.

Code: `independent/akr_9_2/` — `shift.py` (geometry and the shift operator),
`sweep2.py` (stratified sweep), `manydeg.py` (targeted many-degeneracy family),
`procedure.py` (the whole §9.2 loop), `endpoint_formula.py` (§4.5's closed
form), `controls.py` (non-vacuity), `pdftext.py` (the PDF reader). Logs in
`independent/akr_9_2/logs/`.

### 5.1 The main sweep

Random pairs of simple polygons on a small integer grid, filtered to those that
(i) have finitely many boundary intersections, (ii) have **no** vertex-vertex
degeneracy (§9.1's output), and (iii) have **at least one** vertex-side
degeneracy. Every side of *P* is shifted in both directions at δ = 2⁻²⁰ and
2⁻³⁰, and clause 5 of (A9.2-avg) is checked. Sides are stratified by what the
shifted side carries: **I** = a *Q*-vertex in its interior; **E** = one of its
two endpoints lies inside a *Q*-side; **IE** = both; **N** = neither.

| family | I | E | IE | N | tested | violations |
|---|---|---|---|---|---|---|
| hexagons, 6×6 grid, 12 000 pairs | 2 300 | 5 072 | 216 | 14 030 | **21 618** | **0** |
| heptagons, 7×7 grid, 8 000 pairs | 1 786 | 3 836 | 184 | 13 238 | **19 044** | **0** |
| pentagons, 4×4 grid, 30 000 pairs, I/E/IE only | 2 040 | 3 868 | 202 | — | **6 110** | **0** |
| many-degeneracy family (§5.3 below) | — | — | — | — | **574** | **0** |
| **total** | **6 126** | **12 776** | **602** | **27 268** | **47 346** | **0** |

(The class columns sum to 46 772; the 574 many-degeneracy tests are class **I**
or **IE** but were stratified by degeneracy *count* instead, in §5.3.)

Skipped as **undefined** because the shifted side had a collinear neighbour
((NC) fails): 2 946 + 1 816 + 1 408 = **6 170 side/δ instances**, against
46 772 tested in the same three sweeps — **11.7 %** of everything attempted.
This is Gap 1, measured.

### 5.2 The smallness threshold is real, and is the checker's own failure mode

Same code, same configurations (1 500 hexagon pairs), varying δ. δ is measured
against the **unnormalised** normal, so the geometric displacement is δ·|*s*|.

| δ | instances tested | violations of the averaging identity |
|---|---|---|
| 2⁻³ | 1 162 | **239** |
| 2⁻⁶ | 1 322 | **10** |
| 2⁻¹⁰ | 1 326 | 0 |
| 2⁻¹⁶ | 1 326 | 0 |
| 2⁻²⁴ | 1 326 | 0 |
| 2⁻⁴⁰ | 1 326 | 0 |

So AKR's unquantified "small" is doing real work, and **the checker demonstrably
reports failure** when the hypothesis is violated. (Log:
`independent/akr_9_2/logs/delta_threshold.log`.)

### 5.3 The targeted many-degeneracy family

The audit's stated worry is "a local analysis at every degeneracy on the shifted
side **simultaneously**". `manydeg.py` maximises that number: *P* is the
rectangle (0,0)–(9,0)–(9,5)–(0,5) and *Q* is a random simple 10-gon on the grid
*x* ∈ [0,9], *y* ∈ {−2,−1,0,1,2} with 2–5 of its vertices forced onto *y* = 0,
so that the shifted side (*P*'s bottom side) carries many degeneracies at once.

| simultaneous degeneracies on the shifted side | tested | violations |
|---|---|---|
| 2 | 320 | 0 |
| 3 | 178 | 0 |
| 4 | 74 | 0 |
| 5 | 2 | 0 |

### 5.4 Running the whole procedure

`procedure.py` runs §9.2's loop to completion: repeatedly pick a vertex-side
degeneracy, shift the side that carries it, halving δ until the shifted polygon
is simple, creates no new degeneracy, and satisfies the averaging identity;
take the direction with the larger count; stop when no degeneracy remains.
1 500 hexagon pairs with (F), ¬(VV-degeneracy) and at least one vertex-side
degeneracy:

| | AKR's rule (Fig. 28) | the translation repair (§3.1(ii)) |
|---|---|---|
| **terminated** | **1 234 / 1 500** | **1 500 / 1 500** |
| **undefined — three consecutive collinear vertices** | **266 (17.7 %)** | **0** |
| final count **decreased** | **0** | **0** |
| final count preserved | 429 | 484 |
| final count increased | 805 | 1 016 |
| steps to termination | ≤ 4 | ≤ 5 |

Two readings. First, **where AKR's procedure is defined it works**, terminates
quickly, and never loses a point — 1 234 independent end-to-end confirmations of
(A9.2). Second, **it is undefined on 17.7 % of these inputs**, and the reason is
always the same: the side it must shift has a collinear neighbour.

### 5.5 The "§9.1 first" ordering is necessary, not stylistic — and this is a refutation

AKR's first sentence is "**Once there are no more coincident vertices**, it is
easy to…". They give no reason. There is one, and it is sharp.

Take the same code and the same δ = 2⁻²⁰, but translate *Q* so that one of its
vertices coincides with a vertex of *P* — i.e. feed §9.2 an input §9.1 has not
processed. Over 6 000 tested shifts of a side incident to the shared vertex:

* **3 211 violate the averaging identity** (53.5 %);
* and **2 cases lose in *both* directions**, so (A9.2-step) — "there exists a
  small parallel shift that does not decrease the number of intersection
  points" — is **false** for them.

One of the two, verified independently and stable at δ = 2⁻²⁰ and δ = 2⁻⁴⁰:

```
P = (2,0) (2,2) (3,4) (4,4) (1,5) (1,2)          both simple
Q = (0,0) (2,2) (0,2) (-1,-3) (1,-1) (2,0)
∂P ∩ ∂Q = { (1,2), (4/3,4/3), (2,0), (2,2) }      4 points
  vertex-vertex degeneracies: (2,0) and (2,2)      <- §9.1 has NOT been run
  vertex-side degeneracy:     P-vertex (1,2) on Q-side [(0,2),(-1,-3)]
shift P's side 0 = [(2,0),(2,2)]:
  δ = +2⁻²⁰ → 3 points      δ = −2⁻²⁰ → 3 points
  δ = +2⁻⁴⁰ → 3 points      δ = −2⁻⁴⁰ → 3 points
```

Both directions strictly decrease the count. **This is a counterexample to
§9.2's conclusion with §9.2's own opening clause dropped.** It does not
contradict AKR — their sentence assumes the clause — but it shows the clause is
load-bearing, that §9 cannot be applied in the other order, and that a
formalisation that forgot it would be unsound. I have not seen this recorded
anywhere in the project.

### 5.6 The endpoint formula checked directly

§4.5 predicts that the local count near a moving endpoint *A* that lies on a
*Q*-side is [sgn δ = sgn α] + [sgn δ = sgn κ]. Checked against brute-force exact
counting of the points of ∂*P*(δ) ∩ ∂*Q* inside a disc of radius 2⁻¹⁰ about *A*,
at δ = 2⁻²⁴, on **3 000** such endpoint instances:

* **3 000 agree, 0 disagree**;
* the observed +δ local count was 0 in 948 cases, 1 in 1 021 and 2 in 1 031 —
  **all three values occur**, so the test is not vacuous.

Separately, over 3 000 endpoint instances drawn the same way, **190 had α = 0**
(so (NC) fails and *P*(δ) is undefined) and **0 had β = 0 or κ = 0** — which is
exactly what §4.5's proof predicts: β and κ are forced nonzero by finiteness
(F), while α is *not* forced by anything §9.2 may assume.

### 5.7 Non-vacuity controls

`controls.py`; full output in `independent/akr_9_2/logs/controls.log`. Each
control is a statement of the **same shape**, evaluated by the **same code**,
that is FALSE or undefined, and the code must say so.

| # | control | result |
|---|---|---|
| 0 | the point counter on hand-checked inputs: square × touching-V = 1, square × crossing-V = 2, disjoint = 0, overlapping sides → "infinite" | all four match |
| 1 | explicit touching degeneracy: shift up → 2 points, shift down → 0 | 2 and 0, sum = 2·1 ✔ |
| 2 | FALSE claim "the shift never changes the count" | reported false (2 ≠ 1) ✔ fires |
| 3 | FALSE claim "some direction strictly increases the count" on a *crossing* degeneracy | reported false (2, 2, 2) ✔ fires |
| 4 | averaging with a vertex-vertex degeneracy present (§5.5) | **161 / 301 violations** ✔ fires |
| 5 | averaging at δ = 2⁻³ instead of 2⁻²⁰ | **81 / 403 violations** ✔ fires |
| 6 | the shift at a straight vertex must be *undefined*, and the translation repair must not be | `None` / defined ✔ fires |

Control 4 and control 5 are the two that matter: they show the checker returns
"violation" on inputs built to violate, in the two directions in which the
hypotheses can fail. A checker that always said "holds" would prove nothing.

### 5.8 What the computation does **not** establish

* It is a finite sample of small polygons on small integer grids. It cannot
  prove (A9.2-avg); §4 is the proof, and §4 has not been machine-checked.
* Every test uses a **rational** δ of the form 2⁻ᵏ. A real δ₀ is not exhibited.
* The procedure runs (§5.4) accept a δ only after testing the averaging
  identity, so they confirm termination and monotonicity **given** the identity;
  they are not an independent test of it.
* Nothing here is in Lean, and no Lean build was run.

---

## 6. Does §9.2 deliver what the project needs?

### 6.1 What the project actually consumes — and a correction to `akr-9-1-obligation.md`

[`akr-9-1-obligation.md`](akr-9-1-obligation.md) §2.2 states that the Lean
development consumes "**exactly one** general-position fact: `FullGP`, all 364
orientation determinants of the fourteen combined vertices nonzero", via
`lean/ConfigBridge.lean`. **That is no longer the consumer.**
[`verification-status.md`](verification-status.md) row 51 and
[`../lean/AKR9.lean`](../lean/AKR9.lean) (committed 2026-09-17, the same day the
§9.1 document was written; the §9.1 document does not mention them) reduce the
external input to

```lean
structure Pair9 where
  V : Fin 14 → ℝ × ℝ
  simpleP : SimpleClosed (fun i : Fin 7 => V (pP i))
  simpleQ : SimpleClosed (fun i : Fin 7 => V (pQ i))

def NoVertexOnOther (R : Pair9) : Prop :=
  (∀ i j : Fin 7, R.V (pP i) ∉ segment ℝ (R.V (pQ j)) (R.V (pQ (j + 1)))) ∧
  (∀ i j : Fin 7, R.V (pQ j) ∉ segment ℝ (R.V (pP i)) (R.V (pP (i + 1))))

theorem points_le_38_of_no_vertex_on_boundary (R : Pair9) (h9 : NoVertexOnOther R) :
    (points9 R).ncard ≤ 38
```

`SimpleClosed` is simplicity **as a point set only**; the file's own comment
says "Three collinear vertices are **allowed** — that is the entire point." And
`NoVertexOnOther` is precisely §9's stated conclusion, both halves: §9.1 gives
the vertex-vertex half, §9.2 the vertex-side half. **The project's remaining
external input is now exactly §9's conclusion and nothing else** — §3's
"for convenience" clause is no longer used anywhere.

So the obligation §9.2 has to help discharge is:

> **(A9-red)** For every `Pair9` *R* whose `points9 R` is finite, there is a
> `Pair9` *R*′ with `NoVertexOnOther R′` and
> `(points9 R′).ncard ≥ (points9 R).ncard`.

(Finiteness has to be a hypothesis of the *reduction* even though it is a
*conclusion* of the Lean theorem: `Set.ncard` is `0` on infinite sets, so
without it (A9-red) is satisfied trivially and vacuously.)

### 6.2 Verdict, item by item

| what (A9-red) needs from the vertex-side half | does §9.2 give it? |
|---|---|
| removes every vertex-side degeneracy | **yes**, given (NC) at each step; the termination argument is clause 4 of (A9.2-avg), which is mine |
| count does not decrease | **yes** — this is exactly AKR's fourth sentence, and §4 proves it |
| output polygons still simple | **no, not stated**. §4.6 proves it; AKR do not |
| output still has seven vertices each | **yes** — a parallel shift moves two vertices and creates none |
| works when three consecutive vertices of the same polygon are collinear | **NO.** §3.1. And `SimpleClosed` **deliberately admits** exactly those configurations, while `Fin 7` forbids the obvious repair of deleting the straight vertex |
| works from an arbitrary `Pair9`, not from a half-general-position one | **yes**, that is §9's whole purpose |
| finiteness | **assumed**, never discharged, in §9.2 as in §1 and §3 |

### 6.3 More than needed, in three ways

* §9.2 is stated for all *m*, *n* ≥ 3; the project needs *m* = *n* = 7.
* §9.2's conclusion is ≥, and the count often strictly increases (in §5.4,
  805 of 1 234 completed runs ended strictly higher); the project needs only ≥.
* §9.2 removes vertex-side degeneracies in **both** directions (a *Q*-vertex on
  a *P*-side and a *P*-vertex on a *Q*-side); `NoVertexOnOther` is a conjunction
  of exactly those two, so this is an exact match, not an excess — but AKR's
  text mentions only "a side", leaving the symmetry implicit.

### 6.4 Less than needed, in two ways

1. **(NC).** This is the substantive shortfall, and it is not a technicality for
   this project specifically: `Pair9`'s `SimpleClosed` was *designed* to allow
   three collinear vertices, because a source type that forbade them would be
   assuming away part of what §9 exists to remove. §9.2 as printed and as drawn
   cannot be applied to such a configuration at the offending side. §5.4
   measures this at **17.7 %** of random hexagon pairs.
2. **Simplicity of the output.** `Pair9` has `SimpleClosed` as a *field*; §9.2
   never says the shifted polygon is still simple. Same gap
   [`akr-9-1-obligation.md`](akr-9-1-obligation.md) §6.2 records for §9.1, and
   [`known-issues.md`](known-issues.md) K-10 point 2 records as load-bearing
   ("That appears **nowhere** in §9, §9.1, §9.2 or §3, and it is
   load-bearing").

### 6.5 The repair I would use

Replace the Fig.-28 shift by the **translation** variant of §3.1(ii): move both
endpoints of *s* by δ**n** and let the two neighbouring sides rotate about their
far endpoints. It

* is **always defined** — no (NC) needed;
* keeps the vertex count, so it stays inside `Pair9`;
* satisfies the same averaging identity in **16 716** exact tests with **0**
  violations (`independent/akr_9_2/logs/translate_k6g6.log`);
* completed the whole procedure on **1 500 / 1 500** configurations with no
  count ever decreasing, against AKR's 1 234 / 1 500 (§5.4).

**It is not what AKR describe**, so using it means the project is no longer
importing §9.2 but replacing it. The proof of §4 does **not** transfer verbatim:
case F3 changes, because with the translation rule *A*_δ leaves the line of
*s*⁻, so the "migrates from *s*⁻ to *s*" computation has to be redone. I have
not written that proof; the 16 716 tests are evidence, not a proof.

---

## 7. Formalizability

[`akr-9-1-obligation.md`](akr-9-1-obligation.md) §5.1 rates the §9.2 averaging
step "moderate–hard". Having written the proof out, I would rate it **moderate,
and much easier than §9.1's "One final point"**, with one caveat:

| step | difficulty in Lean | why |
|---|---|---|
| the shift operator *P*(δ) | easy | two line-line intersections, Mathlib has `AffineSubspace` |
| cases F1, F2 | easy–moderate | sign conditions on `⟨·, n⟩`; no analysis, just linear algebra over ℝ |
| case F3 | moderate | the σ = δκ computation is three lines of algebra, but "for |δ| small" needs the localisation |
| **the localisation (Loc) and δ₀** | **the real work** | it is a finite minimum over a finite set of positive distances, which is easy to *state* and tedious to *use*: every "for small enough δ" has to be discharged against the same δ₀ |
| clause 1, simplicity | moderate | this is `lean/PerturbSimple.lean`'s territory (row 49, "disjoint segments stay disjoint under a small perturbation"), which already exists and depends on nothing in this project |
| clause 4 and termination | easy | strong induction on the number of degeneracies |
| **(NC)** | **not a proof step — a missing hypothesis** | must be added, or the operator changed (§6.5) |

Row 49's `Disjoint segments stay disjoint under a small perturbation` is exactly
the lemma clause 1 needs, and it is already verified. That is a real head start
that §9.1 does not get.

The honest summary: **§9.2 is formalizable, and I would attempt it before
§9.1.** But it does not close §9, because §9.1's "One final point" α-estimate —
which [`akr-9-1-obligation.md`](akr-9-1-obligation.md) §5.2 names as the single
hardest step and which `independent/e9_directions/` explicitly does **not**
close — is upstream of it: §9.2's hypothesis (VV) is §9.1's conclusion, and
§5.5 above shows that hypothesis cannot be dropped.

---

## 8. Summary of findings

1. **§9.2 is four sentences and has no proof in it.** The averaging claim, the
   definition of the shift, the smallness of δ, the termination of "one by one"
   and the preservation of simplicity are all asserted or omitted. §1.2 quotes
   the whole section; there is nothing else.
2. **The averaging claim is true.** §4 proves
   *I*(*P*(δ)) + *I*(*P*(−δ)) = 2*I*(*P*) by a four-case local analysis, under
   (F), (VV) and (NC). 47 346 exact-rational tests, 0 violations.
   **I could not break it, and I tried.**
3. **AKR's own description of the mechanism covers only one of the four cases.**
   "an intersection point may disappear or multiply into two" describes a
   *Q*-vertex in the interior of the shifted side. The **moving endpoints** of
   the side — the most frequent case in my sweeps, 12 776 of 47 346 instances —
   behave differently: the point migrates between two sides of *P*. §4.5.
4. **The construction is undefined when three consecutive vertices of the
   shifted polygon are collinear**, and §9.2 may not assume that away, because
   the assumption that would rule it out (§3's "for convenience" clause) is
   justified only *after* §9. Measured at **17.7 %** of random hexagon pairs and
   **11.7 %** of side/δ instances. This bites the project directly:
   `lean/AKR9.lean`'s `SimpleClosed` deliberately allows collinear triples and
   `Fin 7` blocks the delete-the-vertex repair.
5. **Dropping §9.2's opening clause makes its conclusion false**, and I have an
   explicit exact-rational counterexample (§5.5): two simple hexagons with a
   vertex-vertex coincidence where **both** shift directions strictly decrease
   the intersection count. So the §9.1-before-§9.2 ordering is necessary.
   §9.2's dependence on §9.1 is therefore not decorative, and §9.1's hardest
   step remains unclosed.
6. **A repair exists** (translate the side, let the neighbours rotate) that is
   always defined and tests clean on 16 716 instances and 1 500/1 500 complete
   procedure runs — but it is not AKR's operation and I have not proved it.
7. **`akr-9-1-obligation.md` §2 is out of date**: the Lean consumer is now
   `lean/AKR9.lean`'s `NoVertexOnOther`, which is exactly §9's conclusion, not
   `ConfigBridge.lean`'s `FullGP`. §6.1.

8. **Minor, but it is a quotation rule:** `akr-9-1-obligation.md` §1.4 writes
   the §9.1 motion parameter as ε; the journal writes **α**. §1.5.

**Nothing here proves *f*(7,7) = 38**, and nothing here should be read as
closing AKR §9. The value 38 in this project remains a candidate resting on an
imported, unreviewed statement.
