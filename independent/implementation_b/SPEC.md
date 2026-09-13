# Specification for Implementation B

Written **before** any code, from the mathematical documents only.
Each section states the condition; the corresponding C++ function in
`reduction.cpp` carries the same heading so a referee can compare them
side by side.

## 0. Objects and conventions

`P` and `Q` are simple heptagons in general position. Sides are indexed
`0..6`; side `i` joins vertex `i` to vertex `i+1 mod 7`.

The **disjointness graph** `G` is bipartite on the 7 P-sides and 7 Q-sides,
with an edge `(p_i, q_j)` iff the two **closed** segments are disjoint.

`I + |E(G)| = 49`, because two non-collinear segments meet at most once, so
crossings biject with intersecting side pairs.

`I = 40  ⟺  |E| = 9`.

Minimum degree is at least 1 on both sides: by **Černý Lemma 1** a line meets a
simple 7-gon at most 6 times, so every side misses at least one side of the
other polygon.

**Notation.** `N(p_i) ⊆ {0..6}` is the set of Q-sides disjoint from `p_i`;
`N(q_j) ⊆ {0..6}` is the set of P-sides disjoint from `q_j`. `CC(·)` denotes
the connected component in `G`.

**Enumeration target.** All `G` with `|E| = 9` and minimum degree ≥ 1 on both
sides.

## 1. Consecutive-pair AKR Lemma 5

**Lemma (AKR 2022, Lemma 5).** If two sides of `P` that are *consecutive or
avoiding* lie in different components of `G`, then there exist two consecutive
sides `q_j, q_{j+e}` of `Q` (`e = ±1`) with

```
(p_a, q_j) ∈ E,  (p_b, q_{j+e}) ∈ E,  (p_a, q_{j+e}) ∉ E,  (p_b, q_j) ∉ E.
```

**Condition tested.** For every `i` with `CC(p_i) ≠ CC(p_{i+1})`:

> there exist `j ∈ N(p_i) \ N(p_{i+1})` and `e = ±1` with
> `(j+e) mod 7 ∈ N(p_{i+1}) \ N(p_i)`.

and symmetrically with `P` and `Q` exchanged.

**Simplification used.** If `CC(p_i) ≠ CC(p_{i+1})` then
`N(p_i) ∩ N(p_{i+1}) = ∅` — a shared neighbour would join the two sides in one
component. So the set differences are the neighbourhoods themselves, and the
condition reduces to

> `((N(p_i) ≪ 1) | (N(p_i) ≫ 1)) ∩ N(p_{i+1}) ≠ ∅`   (rotations cyclic mod 7).

*Why necessary:* it is the conclusion of a published lemma whose hypothesis
(consecutive sides in different components) is checked directly.

*Note:* only **consecutive** pairs are used at this stage. The avoiding-pair
instance of the same lemma is the final filter and is deliberately **NOT**
applied here.

## 2. AKR Lemma 7 ⟹ `H` is bipartite

**Lemma (AKR 2022, Lemma 7).** Two disjoint pairs of consecutive sides whose
four sides lie in four different components cannot both be *hooking*, nor both
*hooked*.

**Construction of `H`** (for the polygon `P`; symmetrically for `Q`):

* **Vertices:** `V(H) = { i : CC(p_i) ≠ CC(p_{i+1}) }`, i.e. consecutive pairs
  `e_i = (p_i, p_{i+1})` straddling two components.
* **Edges:** `i ~ k` iff
  1. the two pairs share no side: `{i, i+1} ∩ {k, k+1} = ∅`, equivalently
     `(k − i) mod 7 ∉ {0, 1, 6}`; and
  2. the four sides `p_i, p_{i+1}, p_k, p_{k+1}` lie in **four distinct**
     components.

**Condition tested:** `H` is bipartite.

*Why:* each vertex `e` of `H` carries a non-empty status set
`S(e) ⊆ {hooking, hooked}` (non-empty by Lemma 5 plus the cone dichotomy).
Adjacency in `H` is exactly Lemma 7's hypothesis, so adjacent vertices have
`S(e) ∩ S(e') = ∅`. Two disjoint non-empty subsets of a 2-element set are
distinct singletons, so `e ↦ S(e)` is a proper 2-colouring; isolated vertices
never obstruct 2-colourability. Hence `H` is bipartite.

*Common-mode note:* this translation is the project's own reading of AKR
Lemma 7 and has not been independently reviewed (`known-issues.md` K-09).
Implementation B **inherits** it; re-testing it is outside this task.

## 3. Exceptional-profile crossing-set compatibility

A **crossing set** of `P` is a set of P-sides that some single line disjoint
from `V(P)` crosses. A line crosses side `uv` iff it separates `u` from `v`, so
crossing sets are determined by the order type. The canonical profile data
lists, per exceptional class, the **maximal** crossing sets
(`maximal_crossing_sets`), each given as a sorted list of side indices.

**Derivation of the condition.** Side `q_j` is a segment contained in the line
`ℓ(q_j)`. The P-sides that the *segment* `q_j` crosses are a subset of the
P-sides that the *line* `ℓ(q_j)` crosses, and the latter is a crossing set of
`P`. The P-sides crossed by `q_j` are exactly those not disjoint from it, i.e.
the complement of `N(q_j)`. Hence:

> **For class `a` assigned to `P`:** for every `j ∈ {0..6}`,
> `complement(N(q_j))` is contained in some maximal crossing set of class `a`.
>
> **For class `b` assigned to `Q`:** for every `i ∈ {0..6}`,
> `complement(N(p_i))` is contained in some maximal crossing set of class `b`.

Containment in *some* crossing set is equivalent to containment in some
*maximal* one, so testing only the maximal sets is complete.

**Consistency check performed at load time.** The data reports every class as
having exactly five maximal crossing sets, all of size 6, and an `M_set` of
size 5. Since a 6-set is the complement of a single index, the maximal crossing
sets should be exactly `{ complement({m}) : m ∈ M_set }`. Implementation B
asserts this at start-up. When it holds, the condition above collapses to
`N(q_j) ∩ M_P ≠ ∅` for all `j`; B tests the general containment form anyway and
uses the collapsed form only as an independent cross-check.

## 4. Černý Lemma 2 (profile windows)

**Lemma (Černý et al. 2003, Lemma 2).** For a path `A,B,C,D,E` of four
consecutive sides with `D` inside triangle `ABC`, no intersection-free family
of 4 segments has disjointness graph on those 4 sides equal to a perfect
matching.

The geometric hypothesis ("`D` inside triangle `ABC`", in either reading
direction of the path) depends only on the order type and is supplied by the
canonical profile field **`lemma2_windows`**: `w ∈ lemma2_windows` means the
four consecutive sides `p_w, p_{w+1}, p_{w+2}, p_{w+3}` satisfy it.

**Condition tested.** For every window `w` of the class assigned to `P`:

> there is **no** choice of four **distinct** Q-sides `j_0, j_1, j_2, j_3` with
> `j_t ∈ N(p_{w+t})` for each `t`, such that the induced bipartite subgraph on
> `{p_w, p_{w+1}, p_{w+2}, p_{w+3}} × {j_0, j_1, j_2, j_3}` is **exactly** a
> perfect matching, i.e. `N(p_{w+t}) ∩ {j_0,j_1,j_2,j_3} = {j_t}` for every `t`.

Symmetrically for the class assigned to `Q`, using `N(q_j)`.

The "induced" requirement (no extra edges inside the 4×4 block) matches the
source's *equal to* a perfect matching, not *contains* one.

## 5. Stage semantics and the output set

For each graph `G` surviving §1 and §2:

* `okP` = classes `a` passing §3-for-P and then §4-for-P;
* `okQ` = classes `b` passing §3-for-Q and then §4-for-Q;
* `G` counts at a stage only if **both** lists are non-empty at that stage.

The reported output is the set of triples

```
{ (a, b, G) : a ∈ okP, b ∈ okQ }
```

i.e. every `(classP, classQ, graph)` combination **entering** the final
avoiding-pair AKR Lemma 5 filter. That final filter is **not** applied.

## 6. Filters deliberately NOT applied

* **Černý Lemma 3** — claimed redundant (`known-issues.md` K-06); omitted, so
  Implementation B depends on four published lemmas: Černý L1, L2 and AKR L5,
  L7.
* **Avoiding-pair AKR Lemma 5** — this is the already-certified final stage
  (`known-issues.md` K-03) and is the target set's successor, not part of it.

## 7. Independent count check

The number of 7×7 bipartite graphs with 9 edges and minimum degree ≥ 1 on both
sides is computed independently by inclusion–exclusion over uncovered Q-sides:

```
count = Σ_{j=0}^{7} (−1)^j C(7,j) · T(7−j),    T(k) = [x^9] ((1+x)^k − 1)^7
```

`count_check.py` evaluates this with exact integer polynomial arithmetic,
independently of both enumerations.
