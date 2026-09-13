# Literature notes

**Last updated:** 2026-09-13

Extracted and consolidated from `archive/superseded/REPORT.md` §1–2 and the
session transcript. The bibliographic facts below were established by the
original author reading the sources; they have **not** been re-checked against
the papers during repository organization, and no PDF of any source paper is
included in this repository.

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

* **(C-L1)** *Černý et al., Lemma 1.* A line meets a simple `k`-gon an even
  number of times, hence at most `k−1` times for odd `k`. Used for: minimum
  degree 1 in the disjointness graph, and the second edge family in Lemma A.
* **(C-L2)** *Černý et al., Lemma 2.* For a path `A,B,C,D,E` of four
  consecutive sides with `D` inside triangle `ABC`, no intersection-free family
  of 4 segments has disjointness graph on those 4 sides equal to a perfect
  matching. **Load-bearing**: dropping it leaves survivors.
* **(C-L3)** *Černý et al., Lemma 3.* The same for 6 consecutive sides and 6
  segments, with no geometric hypothesis. The project claims this lemma is
  **not needed** — but the code supporting that claim is absent, so the
  conservative dependency count remains five. See `known-issues.md` K-06.
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

## What is new here

* **Lemma A**, the counting lemma driving the whole reduction.
* The **exhaustive classification of exceptional heptagons** (16 labelled, 14
  classes).
* The **general-position reduction**, proved rather than assumed.
* The **`H` bipartite** reformulation of AKR Lemma 7, and the extension of
  AKR Lemma 5 to avoiding pairs via a chirotope predicate.
* The **finite elimination** of `I = 40`.

## Scope

This is **not** the general odd–odd conjecture. Lemma A needs an uncrossable
4-set, and 16 of 6,342 simple heptagons already defeat it; that proportion
should grow with `k`, so the general case needs a different idea. Natural next
steps recorded in the research materials: rerun the pipeline for `(7,9)` and
`(9,9)`; determine the maximum size of an uncrossable set as a function of `k`.
