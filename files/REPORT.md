# The maximum number of intersections of two simple 7-gons

**Result obtained here:** `f(7,7) = 38`, the smallest previously open case of the
Dillencourt–Mount–Saalfeld conjecture.  The proof is a finite case analysis that
combines four published lemmas with an exhaustive computer search over all order
types of 7 points and all 13,484,940 candidate disjointness graphs.

---

## 1. State of the literature (verified by reading the sources)

| Case | Value | Status |
|---|---|---|
| m, n both even | mn | Theorem, Dillencourt–Mount–Saalfeld 1993 |
| m even, n odd | m(n−1) | Theorem, DMS 1993 |
| m, n odd, m = 3 | 2n | Theorem (trivial bound = construction) |
| m, n odd, m = 5 | 4n − 2 | **Theorem**, Černý–Kára–Kráľ–Podbrdský–Sotáková–Šámal 2003 |
| m, n odd ≥ 7 | mn − m − n + 3 | **Conjecture** |

* M. B. Dillencourt, D. M. Mount, A. J. Saalfeld, *On the maximum number of
  intersections of two polyhedra in 2 and 3 dimensions*, CCCG 1993, 49–54.
  Solves both even cases; their claimed odd–odd proof contains an
  "unrecoverable error" (so described by Ackerman–Keszegh–Rote).
* J. Černý, J. Kára, D. Kráľ, P. Podbrdský, M. Sotáková, R. Šámal,
  *On the number of intersections of two polygons*, Comment. Math. Univ.
  Carolin. **44** (2003) 217–228.
  <https://cmuc.karlin.mff.cuni.cz/pdf/cmuc0302/cerny.pdf>
  Proves f(k,l) ≤ kl − ⌈k/6⌉ − l for odd k ≤ l, and f(5,l) = 4l − 2.
  States explicitly that k = l = 7 is open.
* E. Ackerman, B. Keszegh, G. Rote, *An almost optimal bound on the number of
  intersections of two simple polygons*, SoCG 2020; **Discrete Comput. Geom. 68
  (2022) 1049–1077**, arXiv:2002.05680.  Proves mn − (m+n) + C with
  C ≈ 2^(2^70) — asymptotically optimal, vacuous at m = n = 7.
* F. Günther, arXiv:1207.0996, claims the full conjecture. **Withdrawn by the
  author**; AKR confirm the proof is faulty.  Several secondary sources still
  advertise the claim; do not cite it.

For m = n = 7 the published bounds are 38 ≤ f(7,7) ≤ 40, and 39 is impossible
because the number of crossings of two closed curves is even.  **The entire open
question is whether 40 is attainable.**

## 2. Lemmas used (all read in full, all peer-reviewed)

* **(L1)** A line meets a simple k-gon an even number of times, hence ≤ k−1 for
  odd k.  (Černý et al., Lemma 1.)
* **(L2)** For a path A,B,C,D,E of four consecutive sides with D inside triangle
  ABC, no intersection-free family of 4 segments has disjointness graph with
  those 4 sides *equal to* a perfect matching.  (Černý et al., Lemma 2.)
* **(L3)** Same statement for 6 consecutive sides and 6 segments, with no
  geometric hypothesis.  (Černý et al., Lemma 3.)
* **(L5)** If two sides of P that are *consecutive or avoiding* lie in different
  components of the disjointness graph G, there are two consecutive sides
  q_i, q_{i±1} of Q with (p_a,q_i),(p_b,q_{i±1}) ∈ E and
  (p_a,q_{i±1}),(p_b,q_i) ∉ E.  (AKR, Lemma 5.)
* **(L7)** Two disjoint pairs of consecutive sides whose four sides lie in four
  different components cannot both be hooking, nor both hooked.  (AKR, Lemma 7.)

**Reformulation of L7 used here.** Each consecutive pair in different components
carries a status in {hooking, hooked}; a pair that is both conflicts with every
neighbour.  Hence the graph H — vertices = consecutive pairs in different
components, edges = disjoint pairs whose four sides lie in four different
components — must be **bipartite**.

## 3. New lemma

**Lemma A.** If P has a set S of s sides such that no line meets all of S, then
|E(G)| ≥ n + (m − s), hence I ≤ mn − n − m + s.

*Proof.* For each side q of Q the line ℓ(q) misses some p ∈ S, so q ∩ p = ∅:
that is n distinct edges into S.  By (L1) each of the other m − s sides of P
misses some side of Q: m − s further edges, with distinct P-endpoints. ∎

For m = n = 7: s = 3 gives I ≤ 38 directly; **s = 4 gives |E| ≥ 10, and since I
is even, |E| is odd, so |E| ≥ 11 and I ≤ 38.**

Call a simple 7-gon **exceptional** if its minimum "uncrossable" set of sides has
size 5, i.e. every 4 of its sides are met by some line.  By Lemma A,
**I = 40 forces both P and Q to be exceptional.**

## 4. Exhaustive classification of exceptional 7-gons

Whether a set of sides is met by a common line depends only on the order type of
the vertices: a line meets side uv iff it separates u from v, and the realizable
separations are exactly the halfplane subsets (verified: |halfplane subsets| =
n(n−1)+2).  Side s_j is missable by a 6-crossing line iff the triple
{v_{j+2}, v_{j+4}, v_{j+6}} is linearly separable.

All 135 order types of 7 points were generated (canonical chirotope form; the
count matches Aichholzer–Aurenhammer–Krasser) and crossed with all 360 cyclic
orders, giving **6342 simple 7-gons — every simple 7-gon up to order type**:

* 6007 admit an uncrossable 3-set → I ≤ 38;
*  319 admit an uncrossable 4-set → I ≤ 38 (via parity);
*   **16** are exceptional (14 classes up to symmetry).  Each has exactly two
    reflex vertices, exactly five maximal crossing sets (all of size 6) and
    exactly two avoiding pairs of sides (one class has none).

## 5. Elimination of I = 40

I = 40 ⟺ |E(G)| = 9 with minimum degree 1 on both sides (L1).

| filter | candidates remaining |
|---|---|
| all 9-edge graphs, min degree 1 | 13,484,940 |
| + (L5) on consecutive pairs | 43,330 |
| + (L7) H bipartite | 24,990 |
| + (L3) | 9,702 (all with exactly 5 components) |
| + crossing-set compatibility with the 14 exceptional classes | 3,522 |
| + (L2), class-dependent | 64 (all with degree sequence 2,2,1,1,1,1,1) |
| + (L5) on **avoiding** pairs, class-dependent | **0** |

Separately, I = 42 is impossible: |E| = 7 forces a perfect matching, so all 14
sides lie in 14 distinct components; the three disjoint consecutive pairs
(p₀p₁),(p₂p₃),(p₄p₅) then give a triangle in H, contradicting (L7).

**Therefore f(7,7) = 38.**

A typical final elimination, checkable by hand: sides 1 and 6 of the class-8
representative are avoiding and lie in different components, with N(1) = {q₁} and
N(6) = {q₅,q₆}.  L5 requires an element of N(1)∖N(6) = {1} to be cyclically
adjacent in ℤ₇ to an element of N(6)∖N(1) = {5,6}; but 1 is adjacent only to 0
and 2.

## 6. Lower bound: explicit certificate

P = (373,157), (132,5), (369,182), (88,157), (327,282), (60,272), (372,298)
Q = (344,24), (89,303), (345,19), (373,214), (270,338), (325,93), (192,284)

Both simple, vertices in general position, no vertex on the other boundary,
**38 crossings**; disjointness graph has 11 edges and 3 components; the per-side
crossing counts are (6,6,6,6,6,6,2).

## 7. Validation (attempts to break the proof)

* Search controls hit the **proven** optima exactly: (5,5) → 18, (5,7) → 26.
* Two independent annealing runs for (7,7) both reach 38 and never exceed it.
* Restricting **both** polygons to the exceptional classes — the only regime in
  which 40 could live — still caps at 38.
* Every filter was run against realizable configurations: 2 explicit
  38-configurations, 3,952 random pairs, and 129,812 high-intersection
  configurations (62,051 of them at I = 38).  **Zero false rejections.**
* Internal checks: crossing sets always have even size; halfplane-subset count
  n(n−1)+2; order-type count 135; parity of I never violated in ~134k samples.

## 8. Caveats and what remains

* The result is **conditional on the four published lemmas** (CMUC 2003, DCG
  2022) and on the correctness of the computation.  It should be independently
  reimplemented before being regarded as settled.
* The order types were obtained by random sampling; the count landed exactly on
  the published 135, which is corroboration rather than proof.  A cleaner
  version would use the Aichholzer order-type database.
* **This is not the general conjecture.**  The mechanism used here is Lemma A,
  which needs an uncrossable 4-set.  Exactly 16 of 6342 simple 7-gons defeat it,
  and the proportion should grow with k, so the general odd–odd case needs a
  different idea.
* Natural next steps: (i) rerun this pipeline for (7,9) and (9,9); (ii) determine
  the maximum size of an uncrossable set as a function of k; (iii) turn the
  64 → 0 step into a human-readable case analysis.

## Reproducing

`geom.py` (exact predicates) → `ot_fast.py` (135 order types) →
`questionA.py` (6342 simple 7-gons; exceptional classification) →
`enum9.py` (13.5M graphs → 9702) → `combine.py` (→3522) → `final.py` (→64) →
`avoid.py` (→0).  `validate.py`, `trace.py`, `confirm.py` are the correctness
tests; `search.py` is the annealer (`python3 search.py m n iters restarts seed`).
All arithmetic is exact integer arithmetic.
