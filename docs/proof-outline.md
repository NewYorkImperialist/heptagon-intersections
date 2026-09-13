# f(7,7) = 38 — the candidate proof, in theorem/lemma form

**Claim.** Two simple heptagons in general position have at most 38 boundary
intersection points, and 38 is attained.  Hence f(7,7) = 38.

> **Status.** This is a *candidate* proof. It has no known computational gap, and
> most steps are now kernel-checked or independently cross-checked, but one
> mathematical review item remains open: the interpretation and application of
> AKR Observation 6 and Lemma 7 in the deduction that the auxiliary graph `H` is
> bipartite (Step 7). See [`akr-l7-human-review.md`](akr-l7-human-review.md) and
> [`verification-status.md`](verification-status.md). Do not read the word
> "Theorem" below as a settled result.

External results used (statements checked against the papers in
[`external-lemma-audit.md`](external-lemma-audit.md); their internal proofs are
**not** re-verified here):

* **C1** = Černý–Kára–Kráľ–Podbrdský–Sotáková–Šámal 2003, Lemma 1.
* **C2** = same paper, Lemma 2.
* **A5** = Ackerman–Keszegh–Rote, DCG 68 (2022), Lemma 5.
* **A7** = same paper, Lemma 7 — **the open review item**.
* **A9** = same paper, §9.1 (and §3), for the general-position reduction of
  Step 0. This dependency replaces a project-specific argument that was found to
  be incorrect; see Step 0.

**Černý Lemma 3 is NOT needed.**  Verified: removing it from the pipeline leaves
the final survivor count at 0.  This shrinks the *lemma* dependencies from five
to four, though Step 0 now cites AKR §9 in addition.

---

## Step 0 (reduction to general position — imported from AKR §9.1)

By Ackerman–Keszegh–Rote §9.1 (DCG 68 (2022), PDF pp. 22–24, journal pp. 1070–1072), it suffices for the extremal upper-bound argument
to work in the stated general-position regime: their perturbation removes the
relevant degeneracies without decreasing the number of boundary intersections.

Precisely the following consequences are used later, and nothing stronger:

* both polygons remain **simple**;
* **no vertex of one polygon lies on the boundary of the other**, so every
  intersection point is an interior point of two sides — AKR §3 draws exactly
  this consequence, and it is what licenses counting intersections as proper
  crossings in the combinatorial argument;
* **no three vertices of P and Q combined are collinear**;
* **no two sides of P and Q combined are parallel**;
* consequently **the supporting line ℓ(q_j) of any side of Q contains no vertex
  of P** — ℓ(q_j) passes through two vertices of Q, so a vertex of P on it would
  be a third collinear combined vertex. This is exactly the hypothesis the
  strict form of Lemma A (Step 3) needs, and it is the only kind of line at
  which Lemma A is ever instantiated.

AKR obtain the first two by the perturbation of §9.1–§9.2 and the last two by a
further small perturbation that does not change the intersection pattern (§3).

> **Note on a superseded argument.** Earlier versions of this document proved
> Step 0 by a project-specific perturbation rule ("proved here, not assumed").
> That argument was found to be **incorrect** in one cone-containment sub-case:
> its type-(iii) rule, *push the coincident vertex into Cone_Q(w)*, destroys the
> intersection point whenever Cone_P(v) ⊂ Cone_Q(w), yielding 0 crossings
> instead of ≥ 1. It also never addressed the case AKR §9.1 exists to handle, in
> which one side participates in several degeneracies at once. It has been
> replaced by the citation above, which is what the theorem actually needs. The
> failed argument remains visible in this repository's git history and is
> documented in `known-issues.md` K-10; it has not been edited to conceal the
> error.

**Caveat on the counting model.** AKR §9.3 explicitly leaves the variant that
counts intersecting *side pairs* rather than intersection *points* as future
research. Everything here is in the intersection-**point** model, and the result
must not be restated in the pairs model.

## Step 1  I + |E(G^D)| = 49, and I is even

Two non-collinear segments meet at most once, so crossings biject with
intersecting side pairs; and ∂P, ∂Q are closed curves, so I is even.  Hence
|E(G^D)| is odd.

## Step 2  minimum degree 1, so I ≤ 42

By **C1** a line meets a simple 7-gon at most 6 times, so every side of either
polygon misses at least one side of the other.

## Step 3  Lemma A (new)

*If S ⊆ sides(P) is such that every line disjoint from V(P) misses some member of
S, then |E| ≥ n + (m − |S|).*

For each side q of Q, ℓ(q) avoids V(P) by general position, so some p ∈ S has
ℓ(q) ∩ p = ∅, hence q ∩ p = ∅: n edges with distinct Q-endpoints, all with
P-endpoint in S.  By **C1** each p ∉ S misses some side of Q: m − |S| further
edges with distinct P-endpoints outside S.  The families are disjoint. ∎

**Corollary.** If some 4-subset of sides(P) has this property then |E| ≥ 10,
hence |E| ≥ 11 by parity, hence I ≤ 38.

## Step 4  exceptional heptagons

Call P *exceptional* if every 4 of its sides are met by a common line disjoint
from V(P).  By Step 3, **I = 40 ⟹ P and Q are both exceptional.**

## Step 5  the classification (finite)

Crossing sets, simplicity, the C2-windows and the avoiding relation are Boolean
functions of the chirotope.  Deterministic staged enumeration under the 3-term
Grassmann–Plücker and 4-point Radon relations (both *necessary* for realizability,
so the output is a superset of the realizable order types — sufficient for an
exclusion theorem) yields 1, 2, 3, 16, **135** classes for n = 3…7.  Crossed with
the 360 cyclic orders: **6342** simple heptagons, split 6007 / 319 / **16**, i.e.
exactly 16 exceptional labelled polygons in **14** classes, each with exactly two
reflex vertices and at most two avoiding pairs of sides.

## Step 6  the graph universe (finite)

I = 40 forces |E| = 9 with minimum degree 1: exactly **13,003,620** graphs, a
count confirmed by inclusion–exclusion, T(k) = [x⁹]((1+x)^k − 1)⁷.

## Step 7  necessary conditions

* **A5** on consecutive pairs in different components → 42,238.
* **A7**, in the form "*H is bipartite*" → 24,990.
* crossing-set compatibility (every side of Q misses a side of P inside a
  common crossing set) and **C2** on the windows.
* **A5** on *avoiding* pairs in different components.

## Step 8  the endgame — now explicit

After compatibility and **C2**, exactly **225** (class-pair, graph) combinations
remain, on **121** distinct graphs, and *every one of them* has degree sequence
**(2,2,1,1,1,1,1) on both sides**; only 9 of the 14 classes survive this far.
The structure is forced:

> Let A_P be the two sides of P outside M_P.  A degree-1 side of Q attaches
> inside M_P, so each a ∈ A_P attaches only to a side of Q of degree ≥ 2 — and
> there are exactly two of those.  Hence each a ∈ A_P has degree exactly 1.
> Symmetrically on the Q side.

Each of the 225 then dies to a two-line check.  Writing N(·) for neighbourhoods:

**Neighbour-adjacency form of A5.** If p_a, p_b are consecutive or avoiding and
lie in different components, there must exist k ∈ N(p_a)∖N(p_b) cyclically
adjacent in ℤ₇ to some k′ ∈ N(p_b)∖N(p_a).

Example (the first surviving combination): N = [{0},{0},{1},{2,4},{3},{4},{5,6}],
class a = 12 with M_P = {0,2,3,4,6}, avoiding pair (4,6).  Here N(p₄) = {3} and
N(p₆) = {5,6}; 3 is cyclically adjacent only to 2 and 4, neither in {5,6}.
A5 is violated.  All 225 cases are of this shape.

## Step 9  conclusion

No admissible configuration survives, so I = 40 is impossible; I = 42 is
impossible (|E| = 7 forces a perfect matching, hence 7 components, each one
matched pair, so no two sides of P share a component; every consecutive pair is
then relevant and every two index-non-adjacent pairs span four distinct
components, making H the complement of C₇, which contains a triangle,
contradicting A7); I = 41, 39 are impossible by parity.
With the explicit 38-example, **f(7,7) = 38**. ∎

---

## Certificates

| object | value |
|---|---|
| order-type classes, n = 3…7 | 1, 2, 3, 16, 135 |
| simple heptagons | 6342 |
| exceptional | 16 labelled, 14 classes |
| 9-edge graphs, min degree 1 | 13,003,620 (enumeration = closed form) |
| after A5 / A7 | 42,238 / 24,990 |
| after A5 / A7 / C-L3 *(historical; L3 no longer applied)* | 42,238 / 24,990 / 9,702 |
| SHA-256 of sorted survivor set | `451cd2893234813952946fc2c92671853827035be337003451bdd7cea631d467` |
| SHA-256 of the 14-class profile table | `dabf1fb12de23a81a8285da306d9cccd16287758fe4a547d658bdf23627f09a5` |
| combinations reaching the last filter | 225, on 121 graphs, all (2,2,1⁵)/(2,2,1⁵) |
| final survivors | 0, over all 196 ordered class pairs, under 3 representative labellings, in 2 independent implementations |
