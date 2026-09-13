# f(7,7) = 38 — the proof, in theorem/lemma form

**Theorem.** Two simple heptagons in general position have at most 38 boundary
intersection points, and 38 is attained.  Hence f(7,7) = 38.

External results used (statements verified, internal proofs not re-verified):

* **C1** = Černý–Kára–Kráľ–Podbrdský–Sotáková–Šámal 2003, Lemma 1.
* **C2** = same paper, Lemma 2.
* **A5** = Ackerman–Keszegh–Rote, DCG 68 (2022), Lemma 5.
* **A7** = same paper, Lemma 7.

**Černý Lemma 3 is NOT needed.**  Verified: removing it from the pipeline leaves
the final survivor count at 0.  This shrinks the external dependencies from five
published lemmas to four.

---

## Step 0 (reduction to general position — proved here, not assumed)

Every degeneracy is a vertex of one polygon on a side-interior of the other
(type ii) or a vertex on a vertex (type iii).  Type (ii): move the vertex across
the line of that side, choosing the side that yields 2 crossings when both
neighbours lie on one side, else either (1 crossing).  Type (iii): if the four
wedge-rays interleave, any move yields 2; if not — the case where separation
would lose the point — push the vertex a distance δ **into the cone of Q at w**,
so both incident sides of P must exit across q⁻ or q⁺ within O(δ) of w, yielding
2.  Only two sides move; transversal crossings and simplicity are open
conditions.  Finitely many degeneracies.  Afterwards the configuration lies in an
open set on which I is constant, and "three of the 14 vertices collinear" /
"two of the 14 sides parallel" are finitely many proper algebraic subsets, which
cannot cover a nonempty open set.  Hence f = f_general position.

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
impossible (|E| = 7 forces a perfect matching, hence 14 singleton components,
hence a triangle in H, contradicting A7); I = 41, 39 are impossible by parity.
With the explicit 38-example, **f(7,7) = 38**. ∎

---

## Certificates

| object | value |
|---|---|
| order-type classes, n = 3…7 | 1, 2, 3, 16, 135 |
| simple heptagons | 6342 |
| exceptional | 16 labelled, 14 classes |
| 9-edge graphs, min degree 1 | 13,003,620 (enumeration = closed form) |
| after A5 / A7 / C-L3 | 42,238 / 24,990 / 9,702 |
| SHA-256 of sorted survivor set | `451cd2893234813952946fc2c92671853827035be337003451bdd7cea631d467` |
| SHA-256 of the 14-class profile table | `dabf1fb12de23a81a8285da306d9cccd16287758fe4a547d658bdf23627f09a5` |
| combinations reaching the last filter | 225, on 121 graphs, all (2,2,1⁵)/(2,2,1⁵) |
| final survivors | 0, over all 196 ordered class pairs, under 3 representative labellings, in 2 independent implementations |
