# Literature notes

**Last updated:** 2026-09-17 (corrections at the points marked; the body is
otherwise as of 2026-09-14)

Extracted and consolidated from `archive/superseded/REPORT.md` §1–2 and the
session transcript.

**Updated 2026-09-13.** The lemma statements below **have** since been checked
against the published papers, hypothesis by hypothesis — see
[`external-lemma-audit.md`](external-lemma-audit.md). The three source papers
are identified by DOI and SHA-256 in [`../references/README.md`](../references/README.md)
(the PDFs themselves are not committed; see that file for why).

Two corrections arising from the audit:

* The audit found the project's own general-position argument (`proof-outline.md`
  Step 0) to be **incorrect** in one sub-case; the needed statement is instead
  correctly proved in AKR (DCG 2022) §9.1. See `known-issues.md` K-10.

  > **Corrected 2026-09-17, and this is the sharpest stale citation in the
  > file.** §9.1 proves the vertex-vertex half of "no vertex of one polygon
  > lies on the boundary of the other" (§9.2 is the vertex-side half). It says
  > **nothing** about three combined vertices being collinear — which is the
  > half the Lean development actually consumes, as `ConfigBridge.FullGP`. That
  > clause has its only warrant in one sentence of **§3**, asserted "for
  > convenience" with no proof and no lemma number. So "correctly proved in
  > §9.1" is false of the needed statement. Cite **§9 together with §3's
  > unproved clause**. `docs/akr-9-1-obligation.md` is authoritative;
  > `verification-status.md` row 4 carries the same correction. Partial Lean
  > progress since: `RealConfig.exists_near_generic` proves the perturbation
  > iteration, `exists_integer_model` the integer reduction at the level of
  > determinant signs; the "intersection count is unchanged" half and the whole
  > of §9 remain unformalized.
* **AKR §10.2 of the journal version reports the authors' own independent
  computer verification of Lemma 7** — the project's principal external
  dependency. This should be cited; see `known-issues.md` K-09.

  > **Corrected 2026-09-17.** Lemma 7 is **no longer the project's principal
  > external dependency**, or a dependency at all: the upper bound for a
  > configuration in general position imports no published lemma
  > (`verification-status.md` rows 42–44). The principal — and now only —
  > external dependency is the general-position clause above. §10.2 is still
  > worth citing, and the *question* about Lemma 7's reading is still open
  > (`akr-l7-review-request.md`); nothing here turns on the answer.

## The problem

`f(m,n)` is the maximum number of boundary intersection points of two simple
polygons with `m` and `n` sides, in general position. The
Dillencourt–Mount–Saalfeld conjecture predicts, for `m, n` both odd,

```
f(m,n) = mn − m − n + 3
```

which for `m = n = 7` gives **38**.

## State of the art

| Case | Value | Status |
|---|---|---|
| `m, n` both even | `mn` | Theorem (DMS 1993) |
| `m` even, `n` odd | `m(n−1)` | Theorem (DMS 1993) |
| `m, n` odd, `m = 3` | `2n` | Theorem (trivial bound meets construction) |
| `m, n` odd, `m = 5` | `4n − 2` | Theorem (Černý et al. 2003) |
| `m, n` odd, both ≥ 7 | `mn − m − n + 3` | **Conjecture** |

For `m = n = 7` the published bounds are `38 ≤ f(7,7) ≤ 40`, and `39` is
impossible because two closed curves in general position cross an even number
of times. **The entire open question is whether 40 is attainable** — which is
what this project addresses.

## Sources

**M. B. Dillencourt, D. M. Mount, A. J. Saalfeld**, *On the maximum number of
intersections of two polyhedra in 2 and 3 dimensions*, CCCG 1993, 49–54.
Settles both even cases and gives the odd–odd lower-bound construction. Their
claimed odd–odd upper-bound proof contains what Ackerman–Keszegh–Rote describe
as an *"unrecoverable error"*.

**J. Černý, J. Kára, D. Kráľ, P. Podbrdský, M. Sotáková, R. Šámal**, *On the
number of intersections of two polygons*, Comment. Math. Univ. Carolin. **44**
(2003) 217–228.
<https://cmuc.karlin.mff.cuni.cz/pdf/cmuc0302/cerny.pdf>
Proves `f(k,l) ≤ kl − ⌈k/6⌉ − l` for odd `k ≤ l`, and solves `k = 5` exactly:
`f(5,l) = 4l − 2`. States explicitly that `k = l = 7` remains open. Source of
the `≤ 40` bound used here, and of Lemmas 1, 2, 3 below.

**E. Ackerman, B. Keszegh, G. Rote**, *An almost optimal bound on the number of
intersections of two simple polygons*, SoCG 2020; **Discrete Comput. Geom. 68
(2022) 1049–1077**, arXiv:2002.05680.
Proves `mn − (m+n) + C` with an explicit but astronomical `C ≈ 2^(2^70)` —
asymptotically optimal, and **vacuous at `m = n = 7`**. Source of Lemmas 5 and 7
below, and of the sharp local tools (associated pairs, the axis property,
hooking/hooked).

**F. Günther**, arXiv:1207.0996. Claims the full conjecture. **Withdrawn by the
author**; AKR confirm the proof is faulty. Several secondary sources still
advertise the claim. **Do not cite it.**

**O. Aichholzer, F. Aurenhammer, H. Krasser**, order-type database. Source of
the published counts 1, 2, 3, 16, 135 of order types of `n = 3…7` points, which
this project's independent enumeration reproduces as a correctness check. The
database itself is **not** used — the order types are re-derived from scratch.

## The four (or five) imported lemmas

The project imports these as black boxes: statements and applicability were
checked by the author, **internal proofs were not re-verified**. See
`verification-status.md` rows 8–11 and `known-issues.md` K-09.

**The load-bearing count is four, not five:** Černý L1, Černý L2, AKR L5 and
AKR L7. Černý L3 is listed below for completeness but is not used by the shipped
result (K-06).

> **Corrected 2026-09-17: for the upper bound the load-bearing count is now
> zero.** `ConfigBridge.crossCountC_le_38_of_general_position` imports none of
> Černý L1, Černý L2, AKR L5 or AKR L7 — Černý L1's consequence is *derived*
> from a parity argument in `lean/SegmentGeometry.lean`, and the other three are
> not used. The four lemmas remain load-bearing for the *enumeration* route of
> `proof-outline.md`, which is retained as the historical argument and is still
> the only treatment of configurations outside general position. The one
> remaining published import is the general-position clause (AKR §9 + §3).

Two of the four have since had their *required consequence* proved inside this
project rather than imported, which is a strictly different thing from
formalizing the papers: Černý L1's consequence `δ(G^D) ≥ 1` is kernel-checked in
`lean/SegmentGeometry.lean` (`verification-status.md` row 21), and AKR L5's
deduction to the form the search uses is kernel-checked as an `iff` in
`lean/Endgame.lean` (row 8). The lemmas themselves remain external.

* **(C-L1)** *Černý et al., Lemma 1.* A line meets a simple `k`-gon an even
  number of times, hence at most `k−1` times for odd `k`. Used for: minimum
  degree 1 in the disjointness graph, and the second edge family in Lemma A.
* **(C-L2)** *Černý et al., Lemma 2.* For a path `A,B,C,D,E` of four
  consecutive sides with `D` inside triangle `ABC`, no intersection-free family
  of 4 segments has disjointness graph on those 4 sides equal to a perfect
  matching. **Load-bearing**: dropping it leaves survivors.
* **(C-L3)** *Černý et al., Lemma 3.* The same for 6 consecutive sides and 6
  segments, with no geometric hypothesis. **Not needed.** *(Corrected
  2026-09-14: this entry used to say "the code supporting that claim is absent,
  so the conservative dependency count remains five". That was already out of
  date when written down — K-06 was resolved on 2026-09-13.)* The pipeline was
  run with and without L3 and both give `2,300 → 121 → 225 → 0` with certificates
  identical case for case; the 15,288 graphs L3 removes are all removed by
  crossing-set compatibility anyway. The shipped certificate records
  `"Cerny_Lemma_3": false` and lists **four** external lemmas. See
  `known-issues.md` K-06 and K-21, and `verification-status.md` row 11. Note
  that `python/elimination/audit_enum.py` still applies L3 unconditionally, so
  its intermediate counts differ from the certificate's (K-21).
* **(A-L5)** *AKR, Lemma 5.* If two sides of `P` that are *consecutive or
  avoiding* lie in different components of the disjointness graph, there are two
  consecutive sides `q_i, q_{i±1}` of `Q` with `(p_a,q_i),(p_b,q_{i±1}) ∈ E` and
  `(p_a,q_{i±1}),(p_b,q_i) ∉ E`.
* **(A-L7)** *AKR, Lemma 7.* Two disjoint pairs of consecutive sides whose four
  sides lie in four different components cannot both be hooking, nor both
  hooked. Reformulated here as "**the graph `H` is bipartite**".

AKR Lemma 7 is, per the author's own note, *"a twelve-case argument carried
largely by figures"* and is the project's main external dependency. Its
translation is the least secure step in the argument.

> **Corrected 2026-09-17.** Not any more. AKR Lemma 7 is not a dependency of
> the upper bound, and the least secure step in the argument is now **AKR §3's
> one-sentence collinearity assumption** — asserted "for convenience", with no
> proof and no lemma number, and carrying the whole of `FullGP`. The sentence
> above remains true of the enumeration route.

## What is new here

* **Lemma A**, the counting lemma driving the whole reduction.
* The **exhaustive classification of exceptional heptagons** (16 labelled, 14
  classes).
* ~~The **general-position reduction**, proved rather than assumed.~~
  **RETRACTED 2026-09-14.** This was an overclaim and is the most serious error
  found in this file. The project's own general-position argument was found
  **INCORRECT** in the cone-containment sub-case and has been removed from the
  active proof; the reduction is now **imported** from Ackerman–Keszegh–Rote
  **§9, together with §3's unproved "for convenience" clause** — *citation
  corrected 2026-09-17; this said "§9.1", which does not contain the clause the
  development consumes* — not proved here. See `known-issues.md` K-10,
  `proof-outline.md` Step 0, and `verification-status.md` row 4. The retraction
  is left visible rather than deleted, per this repository's house style.
  **Partly re-proved 2026-09-17, and only partly:**
  `RealConfig.exists_near_generic` proves that every configuration is
  arbitrarily close to one in full general position. That is the iteration half
  of §3's clause. The other half — that the perturbation does not change the
  intersection count — is not proved, and AKR §9 is not attempted at all.
* The **`H` bipartite** reformulation of AKR Lemma 7, and the extension of
  AKR Lemma 5 to avoiding pairs via a chirotope predicate.
* The **finite elimination** of `I = 40`.
* **Added 2026-09-17, and it is what the upper bound now rests on:** two
  minimal forbidden local crossing patterns, impossible for any fourteen points
  in general position, which between them cover every one of the 13,003,620
  candidate `I = 40` disjointness graphs *and* all 5,040 perfect matchings of
  the `I = 42` branch — so both branches are Lean theorems importing no
  published lemma. `docs/covering-step.md`; `verification-status.md` rows
  41–44.
* **Also added 2026-09-17:** the reduction from real to integer coordinates at
  the level of orientation-determinant signs, by a cone-plus-openness argument
  that needs no rationals (`RealConfig.exists_integer_model`).

## Scope

This is **not** the general odd–odd conjecture. Lemma A needs an uncrossable
4-set, and 16 of 6,342 simple heptagons already defeat it; that proportion
should grow with `k`, so the general case needs a different idea. Natural next
steps recorded in the research materials: rerun the pipeline for `(7,9)` and
`(9,9)`; determine the maximum size of an uncrossable set as a function of `k`.
