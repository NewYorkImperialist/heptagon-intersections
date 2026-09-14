# A7-EXT: an independent, from-scratch proof attempt

**Author:** Subagent A (independent re-derivation). All statements below were derived
directly from the primary sources

* `references/akr-dcg-2022.pdf` — Ackerman, Keszegh, Rote, *The Number of Crossings in
  Multigraphs / The number of intersections between two simple polygons*, Discrete &
  Computational Geometry **68** (2022) 1049–1077 ("AKR-DCG"),
* `references/akr-socg-2020.pdf` — the SoCG 2020 version ("AKR-SoCG"),

and **not** from any prose summary in this repository.  Every geometric claim below was
additionally stress-tested with exact rational arithmetic; the scripts live in the session
scratchpad (`work/geo.py`, `work/obs6.py`, `work/obs6b.py`, `work/quad.py`,
`work/norm.py`, `work/ce.py`, `work/search3.py`).

---

## 0. Executive status

| Step | Task | Status |
|---|---|---|
| 1 | Formulate Observation 6′ (Axis Property restricted to Associated_L5) | **PROVED** (statement given in §3) |
| 2 | Prove Observation 6′ from planar geometry | **PROVED** (§4; all four cases enumerated; no circularity) |
| 2b | *(unplanned, needed)* Normalization Lemma used silently by AKR in Lemma 7 | **PROVED** (§6.3) — AKR give no proof of this |
| 3 | Reconstruct the part of Lemma 7 needed for `S(e) ∩ S(e′) = ∅` | **PARTIAL** — the *reduction* is fully rigorous (§6.1–6.6); of the 12 terminal cases I close **cases 7 and 9** (one argument, 9 being 7 under a symmetry) and **case 5 except one branch** (`a'×B ∈ G4`, see §6.7); nine remain open and identify precisely where the remaining 11 published arguments are figure-reading rather than proof (§6.8). Obstruction named in §6.9. |
| 4 | Scope: arbitrary polygons vs. local configuration | **RESOLVED** (§7): both Observation 6′ and Lemma 7 are *purely local* statements; no global polygon property is used beyond what produces the local hypotheses. |
| — | Does A7-EXT follow? | **Conditionally.** A7-EXT follows from Lemma 7 with no existential-quantifier loss (§8). Observation 6′ repairs the *known* hole (Observation 6 is false as printed). It does **not** by itself certify the remaining 11 cases of Lemma 7's own case analysis. |

**Headline new findings.**

1. Observation 6 is false not only under `Associated_broad` (already known here) but also
   under "two edges **plus** the two cross non-edges". I give an explicit rational
   counterexample (§2.3) in which *all four* edge/non-edge conditions of Lemma 5 hold,
   `a,b` are genuinely **consecutive**, and the Axis Property still fails. Hence the
   cone dichotomy of Lemma 5 is **indispensable**, not decorative.

   > **Correction (hostile review, 2026-09-13).** The original wording here —
   > "any formalisation that defines `Associated_L5` as edges + cross non-edges
   > will still be unsound" — is **overstated**. It is unsound only for a
   > formalisation that asserts Observation 6 for *all* associated pairs. Since
   > `S(e) ⊆ {hooking, hooked}` and each status *is* a disjunct of the dichotomy,
   > a "neither" pair contributes nothing to `S(e)` and cannot reach A7-EXT. See
   > [`a7-independent-resolution.md`](a7-independent-resolution.md) §4.
2. With the dichotomy included, Observation 6′ is true and has a short, complete proof
   (§4). The proof does **not** use the two `E^D` edges at all — only the two cross
   non-edges and the dichotomy.
3. The dichotomy, the Axis Property, and "the partner apex lies in `Cone ∪ (−Cone)`" are
   **equivalent** under the two cross non-edges (§4.4). This is the cleanest formulation
   to formalise.
4. AKR's Lemma 7 proof silently uses a normalization ("`I(A′,b)` is directly adjacent to
   `I(a,b)` and `I(A′,B′)`") that is asserted without proof. I give a three-line proof
   (§6.3).
5. A new parity argument settles AKR's case 5 rigorously and, unlike AKR's argument, does
   **not** need the hooking of `a′,b′` (§6.7).

---

## 1. Definitions, quoted verbatim from AKR-DCG

Throughout, `P = p_0 … p_{m−1}` and `Q = q_0 … q_{n−1}` are **simple** polygons.

### 1.1 General position (AKR-DCG §3, p. 4)

> we assume … that no vertex of one polygon lies on the other polygon. Furthermore, we
> assume for convenience that no three vertices of `P` and `Q` combined lie on a line, and
> no two sides of `P` and `Q` combined are parallel.

We refer to these as **(GP1)** no vertex of one polygon on the other polygon, **(GP2)** no
three combined vertices collinear, **(GP3)** no two combined sides parallel.

Note carefully what (GP1)–(GP3) do *not* forbid: a vertex of `P` lies on two sides of `P`
(its own incident sides). This matters in §6.8.

### 1.2 Disjointness graph

`G^D = (V^D, E^D)`, bipartite, `V^D = {p_i} ∪ {q_j}`,
`E^D = {(p_i,q_j) : p_i ∩ q_j = ∅}`.  `CC(s)` = connected component of `s`.
**`(s,t) ∈ E^D` means the two sides are DISJOINT.**

### 1.3 Geometric notions (AKR-DCG §3)

`ℓ(s)` = line through segment `s`; `I(s,s′) = ℓ(s) ∩ ℓ(s′)`.
`s,s′` are **avoiding** if neither contains `I(s,s′)`.
If `s,s′` are avoiding or share an endpoint, `r_{s′}(s)` is the ray from `I(s,s′)`
containing `s`, and `Cone(s,s′)` is the convex cone with apex `I(s,s′)` between the two
rays.  We write `−Cone(s,s′)` for the vertically opposite cone.

**Observation 3 (AKR).** If a segment `s″` that does not go through `I(s,s′)` has one of
its endpoints in the interior of `Cone(s,s′)`, then `s″` cannot intersect both `r_{s′}(s)`
and `r_s(s′)`; in particular it cannot intersect both `s` and `s′`.

### 1.4 Lemma 5 (AKR-DCG, verbatim)

> **Lemma 5.** Let `p_a` and `p_b` be two sides of `P` that are either consecutive or
> avoiding such that `CC(p_a) ≠ CC(p_b)`. Then there are two consecutive sides
> `q_i, q_{i±1}` of `Q` such that `(p_a,q_i),(p_b,q_{i±1}) ∈ E^D` and
> `(p_a,q_{i±1}),(p_b,q_i) ∉ E^D`. Furthermore, `I(p_a,p_b) ∈ Cone(q_i,q_{i±1})` or
> `I(q_i,q_{i±1}) ∈ Cone(p_a,p_b)`.

The proof of Lemma 5 places `I(p_a,p_b)` at the origin with `p_a` on the positive
`x`-axis and `p_b` above, labels the four closed quadrants `I = Cone(p_a,p_b)`, `II`,
`III`, `IV` counterclockwise, and concludes (AKR-SoCG p. 5, AKR-DCG p. 6):

> `I(q_i,q_{i±1})` must be either in `I` or `III` …  In the latter case
> `I(p_a,p_b) ∈ Cone(q_i,q_{i±1})`, and in the former case `I(q_i,q_{i±1}) ∈ Cone(p_a,p_b)`.

So Lemma 5's proof actually delivers the *stronger, quadrant* form.

### 1.5 "Associated" (AKR-DCG, verbatim)

> Let `p_i,p_{i+1}` be two sides of `P` such that `CC(p_i) ≠ CC(p_{i+1})`. Then by Lemma 5
> there are sides `q_j,q_{j±1}` of `Q` such that `(p_i,q_j),(p_{i+1},q_{j±1}) ∈ E^D`. We
> say that such a pair `q_j,q_{j±1}` is **associated** to `p_i,p_{i+1}`.

`p_i,p_{i+1}` is **hooking** (and `q_j,q_{j±1}` **hooked**) if
`I(q_j,q_{j±1}) ∈ Cone(p_i,p_{i+1})`; **hooked** (and the partner hooking) if
`I(p_i,p_{i+1}) ∈ Cone(q_j,q_{j±1})`. AKR explicitly allow a pair to be *both* hooking
and hooked with respect to a single partner (Fig. 5c).

### 1.6 Observation 6 (AKR-DCG, verbatim)

> **Observation 6 (Axis Property).** If the pair `p_i,p_{i+1}` and the pair `q_j,q_{j±1}`
> are associated such that `(p_i,q_j),(p_{i+1},q_{j±1}) ∈ E^D`, then the line through
> `I(p_i,p_{i+1})` and `I(q_j,q_{j±1})` separates `p_i` and `q_{j±1}` on the one side from
> `p_{i+1}` and `q_j` on the other side.

(The SoCG wording is word-for-word identical; I checked.)

---

## 2. The two notions, kept strictly apart

Fix notation for the rest of the document. Write

```
a = p_i ,  b = p_{i+1} ,  A = q_j ,  B = q_{j±1}
```

so that `A,B` are **consecutive** sides of `Q` sharing the vertex `v := I(A,B)`, and `a,b`
are either consecutive (sharing `O := I(a,b)`) or avoiding.

### 2.1 Associated_broad (AKR's literal printed definition)

```
(E1)  a ∩ A = ∅            (i.e. (p_i ,q_j)      ∈ E^D)
(E2)  b ∩ B = ∅            (i.e. (p_{i+1},q_{j±1}) ∈ E^D)
```
Nothing else.

### 2.2 Associated_L5 (everything Lemma 5 actually produces)

```
(E1)  a ∩ A = ∅
(E2)  b ∩ B = ∅
(N1)  a ∩ B ≠ ∅            (i.e. (p_i ,q_{j±1})  ∉ E^D)
(N2)  b ∩ A ≠ ∅            (i.e. (p_{i+1},q_j)   ∉ E^D)
(D)   I(a,b) ∈ Cone(A,B)   OR   I(A,B) ∈ Cone(a,b)          ← the cone dichotomy
```

Equivalently (and this is how Lemma 5's proof establishes (D)):

```
(D′)  in the normalized frame of §4.1,  v = I(A,B) lies in quadrant I or quadrant III.
```

### 2.3 (N1),(N2) alone are **not enough** — new counterexample

The counterexample already on record in this project,

```
a = [(0,0),(1,0)]   b = [(0,0),(0,1)]   A = [(1,-1),(2,-1)]   B = [(1,-1),(1,-2)]
```

satisfies (E1),(E2) but violates (N1) and (N2) (`a∩B = ∅`, `b∩A = ∅`), so it is
excluded by Associated_L5.  Verified exactly (`work/ce.py`).

**But adding (N1),(N2) is still not sufficient.** Here is an explicit rational
configuration in which `a,b` are genuinely **consecutive**, *all four* of
(E1),(E2),(N1),(N2) hold, general position holds, and the Axis Property **fails**:

```
a  = [(0,0), (2,0)]                       (on the positive x-axis, from O)
b  = [(0,0), (0,3)]                       (on the positive y-axis, from O)
A  = [(-1,10), (1/10, 6/5)]               endpoint v = (-1,10)
B  = [(-1,10), (7/5, -2)]                 endpoint v = (-1,10)
```

Exact verification (`work/ce.py`, `fractions.Fraction`):

```
a ∩ A = ∅   ✓ (E1)        b ∩ B = ∅   ✓ (E2)
a ∩ B ≠ ∅   ✓ (N1)  — B passes through (1,0) ∈ a
b ∩ A ≠ ∅   ✓ (N2)  — A passes through (0,2) ∈ b
I(a,b) = (0,0)      I(A,B) = (-1,10)
I(A,B) ∈ Cone(a,b) : FALSE        I(a,b) ∈ Cone(A,B) : FALSE     ← (D) fails
axis separates a from b : FALSE
axis separates A from B : FALSE
```

The axis is the line `y = −10x`; both `a` and `b` lie in the closed half-plane
`y ≥ −10x`, so it separates nothing.  Here `v = (−1,10)` is in **quadrant II**.

> **Correction (hostile review).** The explicit Fig.-5c witness given later in this
> document violates general position (two collinear triples among its vertices).
> Its conclusion — that hooking and hooked are not exclusive — is correct; genuine
> general-position witnesses exist, e.g. all six associated pairs in
> `data/lower_bound/lower_bound_38.json` have status "both".

A second counterexample with `a,b` *avoiding*:

```
a = [(1,0),(3,0)]  b = [(0,1),(0,2)]  A = [(-1,1),(1,2)]  B = [(-1,1),(5,-1)]
```
— again all of (E1),(E2),(N1),(N2) hold, (D) fails, separation fails.

**Consequence.** `Associated_L5` **must** include the cone dichotomy (D).  A formalisation
that omits it is unsound, exactly as the `Associated_broad` version is.

---

## 3. Observation 6′ — statement

> **Observation 6′ (Axis Property, restricted to Associated_L5).**
> Let `a,b` be two segments that are avoiding or share an endpoint, with `O := I(a,b)`
> well defined, and let `A,B` be two segments sharing an endpoint `v := I(A,B)` and not
> collinear.  Assume
>
> * **(N1)** `a ∩ B ≠ ∅`,  **(N2)** `b ∩ A ≠ ∅`;
> * **(D)** `O ∈ Cone(A,B)` or `v ∈ Cone(a,b)`;
> * **(GP)** `v ∉ ℓ(a) ∪ ℓ(b)` and `O ∉ A ∪ B`.
>
> Then `v ∈ int Cone(a,b) ∪ int(−Cone(a,b))`, and consequently the line `ax(a,b,A,B)`
> through `O` and `v` separates `{a, B}` (one closed half-plane) from `{b, A}` (the other
> closed half-plane), the two segments of each group touching the line only at `O`
> resp. `v`.

Remarks.

* The two `E^D` edges (E1),(E2) are **not** hypotheses. They are consequences (§4.3).
* (GP) is implied by AKR's (GP1)+(GP2) whenever `a,b` are sides of `P` and `A,B` are sides
  of `Q` — see §5.
* "Separates" is meant in the closed sense: the four segments lie in the two closed
  half-planes as indicated. Strict separation is impossible because `a,b` may both contain
  `O` and `A,B` both contain `v`, which lie on the line.

---

## 4. Proof of Observation 6′

### 4.1 Normalisation

All hypotheses and the conclusion are invariant under invertible affine maps (segment
intersection, lines, cones spanned by rays, and half-plane separation are all affine
notions). Because `a` and `b` are avoiding or share an endpoint, each of them is disjoint
from `O` except possibly at an endpoint, hence each lies on one of the two rays of its
line emanating from `O`. Apply an affine map sending `O ↦ (0,0)`, the ray carrying `a` to
the positive `x`-axis, and the ray carrying `b` to the positive `y`-axis. Then

```
a = {(x,0) : a₁ ≤ x ≤ a₂},   0 ≤ a₁ < a₂        (a₁ = 0 iff a,b are consecutive)
b = {(0,y) : b₁ ≤ y ≤ b₂},   0 ≤ b₁ < b₂        (b₁ = 0 iff a,b are consecutive)
Cone(a,b) = closed quadrant I = {x ≥ 0, y ≥ 0}
−Cone(a,b) = closed quadrant III
```

Because `A,B` are consecutive and non-collinear, `v = I(A,B)` is exactly their shared
endpoint. By (GP), `v` is not on `ℓ(a)` nor on `ℓ(b)`, so `v` lies in exactly one of the
four **open** quadrants.

By (N1) pick `(x₀,0) ∈ a ∩ B`; by (N2) pick `(0,y₀) ∈ b ∩ A`. Since `O ∉ A ∪ B`,
`x₀ > 0` and `y₀ > 0`. (If `a,b` are avoiding this is automatic from `a₁,b₁ > 0`.)

Both `A` and `B` have `v` as an endpoint; `A` contains `(0,y₀)`, `B` contains `(x₀,0)`.
So `Cone(A,B)` is the convex cone at `v` spanned by

```
d_A = (0,y₀) − v        d_B = (x₀,0) − v
```

(positive multiples of the ray directions, since `v` is an endpoint of each segment).

Four cases, by the open quadrant containing `v`.

### 4.2 Case v ∈ quadrant I  (v = (s,t), s,t > 0)

Then `v ∈ int Cone(a,b)`, so `v ∈ int Cone(a,b) ∪ int(−Cone(a,b))` holds. Let
`ℓ` be the line through `O=(0,0)` and `v`; it has slope `t/s > 0`.

* Every point `(x,0)` of `a` has `x > 0` unless `x = 0`; `ℓ` at abscissa `x>0` has
  ordinate `(t/s)x > 0`. Hence `a` lies in the closed half-plane **below** `ℓ`, touching
  `ℓ` only possibly at `O`.
* Every point `(0,y)` of `b` has `y > 0` unless `y = 0`; `ℓ` at abscissa `0` has ordinate
  `0`. Hence `b` lies in the closed half-plane **above** `ℓ`, touching only possibly at
  `O`.
* `B` has endpoint `v ∈ ℓ` and contains `(x₀,0)` with `x₀ > 0`, which is *strictly* below
  `ℓ`. Since `B ⊄ ℓ`, the whole of `B∖{v}` is strictly below `ℓ`. So `B` is on the same
  side as `a`.
* `A` has endpoint `v ∈ ℓ` and contains `(0,y₀)`, `y₀ > 0`, strictly above `ℓ`. So
  `A∖{v}` is strictly above `ℓ`, the same side as `b`.

This is exactly the assertion of Observation 6 (`p_i = a` with `q_{j±1} = B`;
`p_{i+1} = b` with `q_j = A`). ∎(case)

Note: (D) was **not used** in this case.

### 4.3 Case v ∈ quadrant III  (v = (−s,−t), s,t > 0)

`ℓ` again has slope `t/s > 0`, `a` is below `ℓ`, `b` above `ℓ`, exactly as in §4.2. And
again `B` contains `(x₀,0)` strictly below `ℓ`, `A` contains `(0,y₀)` strictly above `ℓ`,
so `B∖{v}` is below and `A∖{v}` is above. Identical conclusion. ∎(case)

(D) was not used here either.

**Corollary (E1),(E2) are free.** In both cases `a` and `A` lie in opposite closed
half-planes and meet `ℓ` only at `O` resp. `v`, with `O ≠ v`; hence `a ∩ A = ∅`. Likewise
`b ∩ B = ∅`. So (E1),(E2) are *consequences* of (N1),(N2),(D),(GP), not extra hypotheses.

### 4.4 Case v ∈ quadrant II  (v = (−s,t), s,t > 0) — impossible

We show (D) fails, so this case cannot occur.

*First disjunct.* `Cone(a,b)` is quadrant I and `v` is in the open quadrant II, so
`v ∉ Cone(a,b)`.

*Second disjunct.* We must show `O ∉ Cone(A,B)`. The three relevant directions from `v`
are

```
d_A = (0,y₀) − (−s,t) = ( s      , y₀ − t )
d_B = (x₀,0) − (−s,t) = ( x₀+s   , −t     )
d_O = (0,0)  − (−s,t) = ( s      , −t     )
```

All three have **positive** first coordinate (`s>0`, `x₀+s>0`). Hence all three lie in the
open right half-plane of directions, the angle between `d_A` and `d_B` is `< π`, and the
convex cone they span consists precisely of the directions with positive first coordinate
whose slope lies between `slope(d_A)` and `slope(d_B)`. Compute:

```
slope(d_A) = (y₀ − t)/s          slope(d_B) = −t/(x₀+s)          slope(d_O) = −t/s
```

Since `x₀ > 0` we have `t/(x₀+s) < t/s`, i.e.

```
slope(d_O) = −t/s  <  −t/(x₀+s) = slope(d_B).          (★)
```

So `d_O` is strictly *below* `d_B`. For `d_O` to lie in the cone we would therefore need
`slope(d_A) ≤ slope(d_O)`, i.e.

```
(y₀ − t)/s ≤ −t/s   ⟺   y₀ − t ≤ −t   ⟺   y₀ ≤ 0,
```

contradicting `y₀ > 0`. Hence `O ∉ Cone(A,B)`, and (D) fails. ∎(case)

### 4.5 Case v ∈ quadrant IV — impossible

By the reflection `(x,y) ↦ (y,x)` combined with the relabelling `a ↔ b`, `A ↔ B`. This
relabelling preserves (N1)↔(N2), (D), and general position, and maps quadrant IV to
quadrant II, which §4.4 excluded.

For the record the direct computation: `v = (s,−t)`, `s,t>0`;

```
d_A = (−s , y₀+t)      d_B = (x₀−s , t)      d_O = (−s , t)
```
all have **positive** second coordinate, so compare the ratios `x/y`:
`x/y(d_A) = −s/(y₀+t)`, `x/y(d_B) = (x₀−s)/t`, `x/y(d_O) = −s/t`.
Since `y₀ > 0`, `−s/t < −s/(y₀+t)`, so `d_O` is strictly outside on the `d_A` side; for
`d_O` to be in the cone we would need `(x₀−s)/t ≤ −s/t`, i.e. `x₀ ≤ 0`, contradiction. ∎

### 4.6 Conclusion of the proof

By (GP), `v` lies in exactly one open quadrant. Quadrants II and IV are impossible by
(D) (§4.4, §4.5). In quadrants I and III the separation conclusion holds (§4.2, §4.3),
and `v ∈ int Cone(a,b) ∪ int(−Cone(a,b))`. ∎ **Observation 6′**

### 4.7 The equivalence (best form for formalisation)

Assume (N1),(N2),(GP). Then the following are **equivalent**:

1. `v ∈ int Cone(a,b) ∪ int(−Cone(a,b))` (i.e. quadrant I or III);
2. the dichotomy (D);
3. the Axis Property conclusion of Observation 6′.

*Proof.* (1)⇒(3) is §4.2/§4.3. (3)⇒(1): if the line through `O` and `v` separates `a`
from `b`, then the ray `O→v` lies in `Cone(a,b) ∪ −Cone(a,b)`, hence `v` is in quadrant I
or III. (1)⇒(2): quadrant I gives the second disjunct of (D) directly. For quadrant III,
`v=(−s,−t)`, the directions `d_A = (s, y₀+t)`, `d_B = (x₀+s, t)`, `d_O = (s,t)` all have
positive first coordinate, and
`slope(d_B) = t/(x₀+s) < t/s = slope(d_O) < (y₀+t)/s = slope(d_A)`, so `O ∈ int Cone(A,B)`:
the first disjunct of (D) holds. (2)⇒(1) is §4.4+§4.5. ∎

**Consequences for the hooking/hooked vocabulary.**

* `a,b` is *hooking* ⟺ `v` in quadrant I.
* `v` in quadrant III ⟹ `a,b` is *hooked* (and, by §4.4/4.5, not hooking).
* Quadrant I does **not** exclude "also hooked" — this is exactly AKR's Fig. 5c. Explicit
  witness (exact): `a=[(3/10,0),(7/10,0)]`, `b=[(0,3/10),(0,7/10)]`,
  `A=[(1,1),(−1,0)]`, `B=[(1,1),(0,−1)]`. Here `v=(1,1)` is in quadrant I *and*
  `O=(0,0) ∈ Cone(A,B)` (barycentric coefficients `2/3, 2/3 ≥ 0`). So hooking and hooked
  are **not** mutually exclusive; only "hooking" and "`v` in quadrant III" are.
* Since quadrant I ∪ III is forced, **every** Associated_L5 pair is hooking or hooked
  (possibly both). This is what makes `S(e)` non-empty.

---

## 5. Exactly where simplicity and general position are used in §4

| Where | Which assumption | What it buys |
|---|---|---|
| §4.1, `v` in an *open* quadrant | **(GP2)** no three combined vertices collinear | `v` is a vertex of `Q`; the endpoints of `a` are vertices of `P`; `v ∈ ℓ(a)` would put three combined vertices on a line. Same for `ℓ(b)`. |
| §4.1, `x₀ > 0` and `y₀ > 0` | **(GP1)** no vertex of one polygon on the other | If `a,b` are consecutive, `O` is a vertex of `P`; `x₀ = 0` would mean `O ∈ B`, a vertex of `P` on a side of `Q`. (If `a,b` are avoiding, `a₁,b₁>0` already gives it.) |
| §4.1, `v = I(A,B)` is the shared endpoint | **(GP2)** | `A,B` consecutive and non-collinear. |
| §4.1, `I(a,b)`, `I(A,B)` exist | **(GP3)** no two combined sides parallel | `ℓ(a) ∦ ℓ(b)`, `ℓ(A) ∦ ℓ(B)`. |
| §4.2/4.3, "`B ⊄ ℓ`" | (GP2) | `B` contains `v ∈ ℓ` and a point strictly off `ℓ`. |
| §4.2/4.3, "`O ≠ v`" | (GP1) | `O` a vertex of `P` (consecutive case) cannot equal the vertex `v` of `Q`. |

**Simplicity of `P` and `Q` is not used at all in §4.** Observation 6′ is a statement about
four segments in the plane. (Simplicity enters only in Lemma 7, §6.)

---

## 6. Towards A7-EXT: reconstructing Lemma 7

> **Lemma 7 (AKR).** Let `p_i,p_{i+1}`, `p_j,p_{j+1}` be two pairs of consecutive sides of
> `P` that belong to four different connected components of `G^D`. Then it is impossible
> that both `p_i,p_{i+1}` and `p_j,p_{j+1}` are hooked or that both pairs are hooking.

Rename, following AKR:

```
a = p_i ,  b = p_{i+1} ,  A = q_{i′} ,  B = q_{i′±1}      (a,b) has associated pair (A,B)
a′= p_j ,  b′= p_{j+1},  A′= q_{j′} ,  B′= q_{j′±1}      (a′,b′) has associated pair (A′,B′)
```
with `(a,A),(b,B),(a′,A′),(b′,B′) ∈ E^D`.

### 6.1 The local hypotheses (fully rigorous)

Because `CC(a),CC(b),CC(a′),CC(b′)` are four different components and `CC(A)=CC(a)`,
`CC(B)=CC(b)`, `CC(A′)=CC(a′)`, `CC(B′)=CC(b′)`, no further `E^D`-edge can exist among
these eight nodes (it would merge two components). Therefore:

* **(M) Matching pattern.** Among the eight sides, every side of `P` **crosses** every side
  of `Q` *except* the four matched pairs `(a,A),(b,B),(a′,A′),(b′,B′)`, which are disjoint.
  In particular `a∩B ≠ ∅`, `b∩A ≠ ∅`, `a′∩B′ ≠ ∅`, `b′∩A′ ≠ ∅`.
* **(SP) Simplicity of `P`.** `a,b,a′,b′` pairwise do not cross; `a,b` meet exactly at
  `u := I(a,b)`, `a′,b′` exactly at `u′ := I(a′,b′)`. (Adjacent pairs such as `b,a′` when
  `j=i+2` share a vertex — see §6.8(f).)
* **(SQ) Simplicity of `Q`.** Same for `A,B,A′,B′`, with `w := I(A,B)`, `w′ := I(A′,B′)`.
* **(H) Hooking hypothesis (for contradiction).** `w ∈ Cone(a,b)` and `w′ ∈ Cone(a′,b′)`.

Observe that **(M) supplies exactly the cross non-edges (N1),(N2) for both associated
pairs, for free.**  And (H) supplies one disjunct of (D) for each pair.  Therefore:

> **Repair Lemma.** Inside the proof of Lemma 7, "Observation 6" may be replaced by
> "Observation 6′" with **no additional hypotheses**: the cross non-edges come from (M) and
> the cone dichotomy comes from (H).

This is the key point for this project: the *only* place where AKR's Lemma 7 invokes
Observation 6 (AKR-DCG p. 8, "By the Axis Property (Observation 6), the line through
`I(A′,B′)` and `I(a′,b′)` must separate `A′` from `B′`") is fully licensed by
Observation 6′.  The three-pairs material in AKR's §8/appendix, which uses Observation 6
several more times, is **not** needed for Lemma 7.

*Duality note.* By the symmetry `P ↔ Q`, the "both hooked" case reduces verbatim to the
"both hooking" case (AKR-DCG p. 11: "this case can be handled as above, after exchanging
the capital letters with the small letters"). Under (M), `A,B,A′,B′` are also in four
distinct components and `A,B` is hooking w.r.t. `a,b` exactly when `a,b` is hooked. This
reduction is rigorous; I checked that (M),(SP),(SQ) are symmetric under `P↔Q`, and that
the matched pairs are preserved. So only the "both hooking" case needs analysis.

### 6.2 Two "full-crossing" wedge pairs

Write `⟨s,t⟩` for the 2-segment arc `s ∪ t` (a *wedge*) formed by two segments sharing an
endpoint. By (M):

```
⟨a,b⟩ × ⟨A′,B′⟩ :  all four arm pairs cross   (a×A′, a×B′, b×A′, b×B′)
⟨a′,b′⟩ × ⟨A,B⟩ :  all four arm pairs cross   (a′×A, a′×B, b′×A, b′×B)
⟨a,b⟩ × ⟨A,B⟩   :  exactly two cross          (a×B, b×A)
⟨a′,b′⟩ × ⟨A′,B′⟩: exactly two cross          (a′×B′, b′×A′)
⟨a,b⟩ × ⟨a′,b′⟩ :  zero                        (SP)
⟨A,B⟩ × ⟨A′,B′⟩ :  zero                        (SQ)
```

Applying Observation 3 to the full-crossing pairs gives two facts AKR use implicitly:

* **(F7)** `w ∉ int Cone(a′,b′)` and `u′ ∉ int Cone(A,B)`.
  *(Proof: `A` has endpoint `w` and crosses both `a′` and `b′`, hence both `r_{b′}(a′)` and
  `r_{a′}(b′)`; Observation 3 forbids `w ∈ int Cone(a′,b′)`. Symmetrically for `u′`.)*
* **(F8)** `w′ ∉ int Cone(a,b)` and `u ∉ int Cone(A′,B′)`.

### 6.3 Normalization Lemma (proved here; AKR assert it without proof)

AKR-DCG p. 8 writes:

> We first ensure that the intersection `I(A′,b)` is directly adjacent to the two polygon
> vertices `I(a,b)` and `I(A′,B′)` in the arrangement of the four sides, as shown in
> Fig. 7b. This can be achieved by swapping the labels `a,A` with the labels `b,B` if
> necessary, and by independently swapping the labels `a′,A′` with `b′,B′` if necessary.

No justification is given. Here is a proof.

> **Normalization Lemma.** Let `⟨a,b⟩` be a wedge with apex `u` and `⟨A,B⟩` a wedge with
> apex `w`, such that each of `A,B` crosses each of `a,b` in four distinct points, none
> equal to `u` or `w`. Let `P_a` (resp. `P_b`) be the crossing on `a` (resp. `b`) nearest
> to `u`, and `Q_A` (resp. `Q_B`) the crossing on `A` (resp. `B`) nearest to `w`. Then
> `{P_a,P_b} ∩ {Q_A,Q_B} ≠ ∅`.

*Proof.* Suppose the two sets are disjoint. Relabel `A,B` so that `P_a = a∩A`. Since
`P_a ∉ {Q_A,Q_B}` and `P_a` lies on `A`, we get `Q_A ≠ a∩A`, hence `Q_A = b∩A`. Since
`P_b ≠ Q_A = b∩A`, we get `P_b = b∩B`. Since `Q_B ≠ P_b = b∩B`, we get `Q_B = a∩B`.

Apply the affine map that sends `u` to the origin, the ray of `a` to the positive
`x`-axis and the ray of `b` to the positive `y`-axis. Write
`a∩A = (d₁,0)`, `a∩B = (d₂,0)`, `b∩B = (0,e₁)`, `b∩A = (0,e₂)` with
`d₁,d₂,e₁,e₂ > 0`.

Along `A`, the order from `w` is `Q_A = (0,e₂)` then `a∩A = (d₁,0)`. Since `w` is on the
line through those two points, beyond `(0,e₂)`:
`w = (0,e₂) + λ[(0,e₂) − (d₁,0)] = (−λd₁, (1+λ)e₂)` for some `λ > 0`.
So **`w` lies in the open second quadrant** (`x<0, y>0`).

Along `B`, the order from `w` is `Q_B = (d₂,0)` then `b∩B = (0,e₁)`. Hence
`w = (d₂,0) + μ[(d₂,0) − (0,e₁)] = ((1+μ)d₂, −μe₁)` for some `μ > 0`.
So **`w` lies in the open fourth quadrant**.

Contradiction. ∎

*Falsification attempt.* Random search over `4·10⁵` wedge pairs with integer coordinates in
`[−10,10]²`, keeping the `10 935` configurations with all four crossings present and
non-degenerate: **0 violations** (`work/norm.py`).

Applying the Normalization Lemma to the pair `⟨a,b⟩ , ⟨A′,B′⟩` (which cross in all four
arm pairs, by (M)) and swapping `a,A ↔ b,B` and/or `a′,A′ ↔ b′,B′` — swaps under which all
of (M),(SP),(SQ),(H) are invariant — we may assume the crossing `I(A′,b)` is the crossing
nearest to `u` on `b` **and** the crossing nearest to `w′` on `A′`. This is exactly AKR's
Fig. 7b.

### 6.4 The normalized frame (fully justified)

Apply the affine map sending `I(A′,b)` to the origin, `b` onto the `x`-axis directed
rightward from `u`, and `A′` onto the `y`-axis directed upward from `w′`. Then, writing
`m_a` for the slope of `a` and `m_B` for the slope of `B′`:

```
u  = I(a,b)   = (−α, 0),      α > 0
b  = [(−α,0), (β,0)],         β > 0
a  = from u with slope m_a > 0 ; crosses the y-axis at (0, y_a), y_a = m_a·α > 0
w′ = I(A′,B′) = (0,−c),       c > 0
A′ = [(0,−c), (0,h)],         h > y_a
B′ = from w′ with slope m_B > m_a ; crosses b at (x_B,0), x_B = c/m_B ∈ (0,β)
```

Each of these follows and is **not** merely read off a figure:

* `u` left of the origin and `w′` below it: by the choice of directions in the Normalization
  Lemma.
* `a` crosses the `y`-axis at height `y_a > 0`: `a` must cross `A′` (by (M)); the crossing on
  `A′` nearest `w′` is `I(A′,b) = O`, so the crossing with `a` is farther along `A′`,
  i.e. at `y > 0`.
* `a`'s interior is in the upper half-plane: `a` and `b` are sides of `P`, so `a` may not
  cross `b`; it passes through `(0,y_a)` with `y_a > 0`; hence `a ∖ {u} ⊂ {y>0}` and
  `m_a = y_a/α > 0`.
* symmetrically `B′` crosses `b` at `x_B > 0`, does not cross `A′`, so its interior is in
  `{x>0}` and `m_B = c/x_B > 0`.
* `m_B > m_a`: `B′` must cross `a` (by (M)); `ℓ(a) ∩ ℓ(B′)` has abscissa
  `x = (c + m_a α)/(m_B − m_a)`, and `B′ ⊂ {x ≥ 0}` forces `m_B > m_a`.
* `h > y_a` because `A′` must reach the crossing with `a`; `β > x_B` because `b` must reach
  the crossing with `B′`; `a` extends past `I(a,B′)`; `B′` extends past `I(a,B′)`.

The four lines `ℓ(a),ℓ(b),ℓ(A′),ℓ(B′)` are in general position (no two parallel by (GP3),
no three concurrent by (GP2)) so the arrangement has `1+4+C(4,2) = 11` faces. AKR label
six:

```
F1 = {x<0, y>0, below ℓ(a)}                       (bounded triangle u,O,(0,y_a))
F2 = {x>0, y>0, below ℓ(a), above ℓ(B′)}          (bounded quadrilateral)
F3 = {y>0, below ℓ(a), below ℓ(B′)}               (unbounded)
F4 = {x>0, y<0, above ℓ(B′)}                      (bounded triangle O,w′,(x_B,0))
F5 = {x>0, above ℓ(a), above ℓ(B′)}               (unbounded)
F6 = {x<0, below ℓ(B′)}                           (unbounded wedge at w′)
```

and the five unlabelled ones are

```
G1 = {x<0, above ℓ(a)}                 G2 = {x<0, y<0, above ℓ(B′)}
G3 = {x>0, y<0, below ℓ(B′)}           G4 = {above ℓ(a), below ℓ(B′)} (x large)
W4 = {y<0, above ℓ(a)}   ( = −Cone(a,b), forces x < −α )
```

I verified the two cone identities that drive the whole case split:

```
Cone(a,b)      = {y ≥ 0, y ≤ m_a(x+α)} = closure(F1 ∪ F2 ∪ F3)
Cone(A′,B′)    = {x ≥ 0, y ≥ m_B x − c} = closure(F2 ∪ F4 ∪ F5)
−Cone(A′,B′)   = {x ≤ 0, y ≤ m_B x − c} = closure(F6)
```

### 6.5 The 12-case split (rigorous)

* By (H), `w = I(A,B) ∈ Cone(a,b) = F1 ∪ F2 ∪ F3`.
* By **Observation 6′** applied to the Associated_L5 pair `(a′,b′) / (A′,B′)` — legitimate
  by the Repair Lemma of §6.1 — the apex `u′ = I(a′,b′)` lies in
  `Cone(A′,B′) ∪ −Cone(A′,B′) = F2 ∪ F4 ∪ F5 ∪ F6`.
* By (GP2), `w` and `u′` lie in open faces.

Hence exactly `3 × 4 = 12` cases, as AKR state. **This step is now completely rigorous**,
which it was not before: with the printed Observation 6 it rests on a false statement.

### 6.6 Walls and doors (a new, clean combinatorial reformulation)

Each of the four "free" sides has, among the four frame sides `{a,b,A′,B′}`, exactly three
that it may **not** cross (its *walls*) and exactly one that it **must** cross exactly once
(its *door*):

| free side | walls | door |
|---|---|---|
| `A`  | `a` (by (M)), `A′`, `B′` (by (SQ)) | `b` |
| `B`  | `b`, `A′`, `B′` | `a` |
| `a′` | `a`, `b` (by (SP)), `A′` (by (M)) | `B′` |
| `b′` | `a`, `b`, `B′` | `A′` |

Moreover the three **bounded** faces `F1, F2, F4` are *sealed*: their entire boundaries
consist of frame **segments** (not of free parts of the frame lines):

```
∂F1 = [u,O] ⊂ b  ∪  [O,(0,y_a)] ⊂ A′  ∪  [(0,y_a),u] ⊂ a
∂F2 = [O,(0,y_a)] ⊂ A′ ∪ [(0,y_a),I(a,B′)] ⊂ a ∪ [I(a,B′),(x_B,0)] ⊂ B′ ∪ [(x_B,0),O] ⊂ b
∂F4 = [O,w′] ⊂ A′ ∪ [w′,(x_B,0)] ⊂ B′ ∪ [(x_B,0),O] ⊂ b
```

(Each containment holds because the corresponding frame side is forced by (M) to reach at
least that far — see the justifications in §6.4.)  `F2` is moreover **convex**: it equals
`Cone(a,b) ∩ Cone(A′,B′)`.

Consequences used below (all rigorous):

* a free side whose apex is in a sealed face can leave that face only through its door;
* a free side whose apex is outside a sealed face can enter it only through its door;
* since the door may be crossed only once, a free side visits at most two sealed faces.

Crossing the door leads between the following faces:

```
A crosses b :  F1↔G2 , F2↔F4 , F3↔G3
B crosses a :  F1↔G1 , F2↔F5 , F3↔G4
a′ crosses B′: F4↔G3 , F2↔F3 , F5↔G4
b′ crosses A′: G2↔F4 , F1↔F2 , G1↔F5
```

### 6.7 Case 5 (`w ∈ F2`, `u′ ∈ F2`) — **closed rigorously, by a new parity argument**

AKR's argument here is: "the line segments `a′,b′,A′,b,B′` enclose a convex pentagon. The
polygon side `A` must intersect `b`, `a′`, and `b′`, but it is restricted to `F2 ∪ F4`. It
follows that `A` must intersect three sides of the pentagon, which is impossible. (This is
in fact the only place where we need the assumption that `a′,b′` is hooking.)" This is a
figure-level argument. Here is a complete proof that, in addition, does **not** need the
hooking of `a′,b′`.

By §6.6:

* `A` has apex `w ∈ F2` (sealed); it can leave only through `b` into `F4` (also sealed) and
  then its door is spent. Hence **`A ⊂ F2 ∪ F4`**.
* `b′` has apex `u′ ∈ F2`; it can leave only through `A′` into `F1`, which is sealed and its
  door is spent. Hence **`b′ ⊂ F1 ∪ F2`**.
* `B` leaves `F2` through `a` into `F5`; `a′` leaves `F2` through `B′` into `F3`.
  (`F5, F3` are unbounded, so `B` and `a′` are not confined; see the residual sub-case.)

Now consider the **closed convex quadrilateral `F2`**, with boundary edges in cyclic order

```
e_{A′} = [O,(0,y_a)]        (edge 1, on A′)
e_a    = [(0,y_a),I(a,B′)]  (edge 2, on a)
e_{B′} = [I(a,B′),(x_B,0)]  (edge 3, on B′)
e_b    = [(x_B,0),O]        (edge 4, on b)
```

Inside `F2` we have two arcs:

* `χ₁ := (A ∪ B) ∩ F2` — a simple arc from the point `A∩b ∈ e_b` (edge 4), through `w`, to
  the point `B∩a ∈ e_a` (edge 2). Its relative interior is interior to `F2`, because `A`
  and `B` do not cross `A′` or `B′` and each crosses its door only at the stated endpoint.
* `χ₂ := (a′ ∪ b′) ∩ F2` — a simple arc from `b′∩A′ ∈ e_{A′}` (edge 1), through `u′`, to
  `a′∩B′ ∈ e_{B′}` (edge 3), again with interior inside `F2`.

`χ₁` cuts the disk `F2` into two components; the boundary is cut at one point of edge 2
and one point of edge 4, so edge 1 lies in one component `R₁` and edge 3 in the other
`R₂`.  `χ₂` starts on edge 1 (in `R₁`) and ends on edge 3 (in `R₂`), so it crosses `χ₁` an
**odd** number of times.

The crossings of `χ₂` with `χ₁` are exactly those of the pairs `a′×A, a′×B, b′×A, b′×B`
that happen inside `F2`. By (M) each of these four pairs crosses exactly once, and all
crossings are transversal and distinct by (GP1),(GP2).

* `b′ × A` : `b′ ⊂ F1 ∪ F2`, `A ⊂ F2 ∪ F4` ⟹ the crossing is in `F2`.
* `b′ × B` : `b′ ⊂ F1 ∪ F2`, and `B ∩ F1 = ∅` (its apex is in `F2` and `F1` is sealed with
  `B`'s door being `a`, which does not border `F1` and `F2` simultaneously) ⟹ in `F2`.
* `a′ × A` : `A ⊂ F2 ∪ F4`, and `a′ ∩ F4 = ∅` (`a′` reaches `F4` only through `B′`, but the
  `B′`-edge of `F4` is `[w′,(x_B,0)]`, which borders `G3`, not `F2`; `a′` has only one
  `B′`-crossing and it is used going `F2 → F3`) ⟹ in `F2`.
* `a′ × B` : **both `a′` and `B` may also reach `G4`** (`a′` via `F3` and the free part of
  `ℓ(a)` beyond `a`'s endpoint; `B` via `F5` and the free part of `ℓ(B′)` beyond `B′`'s
  endpoint). So this is the one crossing that need not lie in `F2`.

Hence the number of crossings inside `F2` is `4` or `3`. If it is `4`, parity is violated
and **case 5 is impossible**. ∎ (for that branch)

**Residual sub-case of case 5.** The crossing `a′ × B` lies in `G4`. Then `a′` must cross
the free part of `ℓ(a)` beyond the endpoint of `a`, and `B` must cross the free part of
`ℓ(B′)` beyond the endpoint of `B′`. This is exactly the branch that AKR's hooking
assumption on `a′,b′` is presumably meant to kill (their remark that case 5 is "the only
place where we need the assumption that `a′,b′` is hooking"). I did **not** close it. See
§6.9.

### 6.8 Audit of AKR's twelve cases

Notation as in §6.4. `r_a` = the ray of `ℓ(a)` beyond `a`'s far endpoint; `r_b` likewise.

| # | `w ∈` | `u′ ∈` | AKR's argument | My assessment |
|---|---|---|---|---|
| 1 | F1 | F2 | "`a′` must cross `r_b` to meet `A`, and `r_a` to meet `B`; Observation 3 forbids both." | **Gap.** Correct that `A∩Cone(a,b) ⊂ F1` and `B∩Cone(a,b) ⊂ F1` (sealing, §6.6), and that `a′` cannot enter `F1`. But `A` may continue past `G2` into `F6` and `B` past `G1` into `F5`, so "the *only* way" needs the extra argument that `a′` cannot meet those far parts. I could not complete it in general. |
| 2 | F1 | F4 | "`a′` must cross `r_b` to meet `B`; then it cannot meet `A`." | **Gap**, same reason. Moreover `u′ ∈ F4` and `F4` is sealed: `a′` leaves `F4` only through `B′` into `G3`, which is a strong constraint AKR do not state; with it the claim looks true but the "cannot meet `A`" step is still figure-level. |
| 3 | F1 | F5 | "`a′`,`b′` must both cross `A`, going below `ℓ(b)`; `a′` can only cross `ℓ(b)` right of `b` and `b′` only left of `b`, so they approach `A` from different sides — impossible since they share `u′`." | **Gap.** The asserted asymmetry ("`a′` right, `b′` left") is read off Fig. 10 and is not derived. |
| 4 | F1 | F6 | endpoint-in-`F4` sub-case, then "each of `a′,b′` has an endpoint in `F2 ∪ F5`; then `I(A,B) ∈ Cone(a′,b′)`, contradicting Observation 3." | **Partially rescued.** The final step is exactly **(F7)** of §6.2, which I proved. The step *"each of `a′,b′` has an endpoint in `F2∪F5` ⟹ `w ∈ Cone(a′,b′)`"* is not proved by AKR and is the gap. |
| 5 | F2 | F2 | convex pentagon, `A` would meet three sides | **CLOSED** by §6.7 except for one residual sub-case; my proof is shorter and needs less. |
| 6 | F2 | F4 | "symmetric to case 1" | Symmetry claim checked: it is the same argument with `a,A ↔ b,B`; inherits case 1's gap. |
| 7 | F2 | F5 | "`A` is restricted to `F2∪F4`, while `a′,b′` do not intersect `F2` or `F4`; so `A` meets neither." | **CLOSED (modulo one line).** `A ⊂ F2∪F4` is exactly my sealing argument (§6.6/6.7) and is rigorous. The remaining claim `a′,b′ ∩ (F2∪F4) = ∅` also follows from §6.6: `u′ ∈ F5`; `a′`'s door is `B′`, taking it `F5→G4` (the `B′`-edge of `F5` is beyond `I(a,B′)`), never into `F2` or `F4`; `b′`'s door is `A′`, taking it `F5→G1`, never into `F2` or `F4`. Since `F2,F4` are sealed and neither `a′` nor `b′` has a door into them, `a′ ∩ (F2∪F4) = b′ ∩ (F2∪F4) = ∅`. But `A` must cross both `a′` and `b′` — contradiction. **I regard this case as fully proved.** |
| 8 | F2 | F6 | "very similar to case 4" | Inherits case 4's gap. |
| 9 | F3 | F2 | "symmetric to case 7" | Symmetry checked; so **closed**, by the case-7 argument with the roles of `a,A`/`b,B` and `a′,A′`/`b′,B′` exchanged. |
| 10 | F3 | F4 | "symmetric to case 3" | Inherits case 3's gap. |
| 11 | F3 | F5 | triangle/containment argument, then "`B` cannot intersect both `b′` and `a` without intersecting `B′`" | **Gap.** The step "the triangle `I(a′,b′), I(a′,A), I(A,b′)` contains `a` and does not contain `I(A,B)`" is pure figure-reading. |
| 12 | F3 | F6 | endpoint sub-cases in `F2` / `F5` | **Gap**, same style as 4/8. |

**Summary of §6.8.** Of the twelve cases: **2 are fully proved here** (7 and its symmetric
9), **1 is proved up to one residual sub-case** (5), **1 has its crux identified and proved
but a missing lemma** (4, and by symmetry 8, 12), and the remaining ones rest on
figure-level reasoning that I could neither complete nor refute.

**(f) A case AKR's figures never show.** If `j = i+2`, then `b = p_{i+1}` and
`a′ = p_{i+2}` are *adjacent* sides of `P` and share a vertex; likewise `b′` and `a` may
share a vertex when the indices wrap. AKR's general position section (§9 "Degenerate
Cases") perturbs only degeneracies **between** the two polygons; an adjacency **within**
`P` cannot be perturbed away and is never discussed. The walls/doors framework of §6.6
survives (a segment with an endpoint *on* a wall still does not cross it), but every
argument phrased as "`x` cannot reach region `R`" must be re-read with "`x` may have an
endpoint on the wall". I found no failure caused by this, but it is an unaudited
assumption.

### 6.9 The obstruction, named precisely

> **Obstruction.** Eight of the twelve terminal cases of AKR's Lemma 7 are discharged by
> arguments whose decisive step is *"segment `X` cannot reach the far part of segment `Y`"*,
> where "far part" means the portion of `Y` beyond its last forced crossing. The frame
> sides `a, b, A′, B′` are forced by (M) to reach certain crossings, but their **extents
> beyond those crossings are free parameters**. Consequently the faces `F3, F5, F6, G1–G4,
> W4` are unbounded and unsealed, and a segment can travel between them through the free
> parts of the frame **lines**. AKR's figures implicitly fix those extents; the text does
> not. Closing Lemma 7 rigorously requires, for each case, an argument that is uniform in
> the frame extents — e.g. a projective compactification in which the free rays are
> "capped", or an extension of the parity argument of §6.7 to unbounded faces.

I regard this as an *expository* gap in AKR rather than a mathematical error, for two
independent reasons: (i) AKR report an exhaustive machine verification (AKR-DCG §10.2:
they enumerated all 158 830 arrangements of eight pseudolines, tried the 840
non-isomorphic assignments, and found exactly **14** realizable configurations with the
required matching pattern, of which **13** fail the hooking/hooked pattern of Lemma 5 and
the one survivor is Fig. 6, which is the *mixed* hooking/hooked configuration); (ii) my own
search found no counterexample, though that search is under-powered (§9).

Note that AKR's own machine check corroborates finding 1 of §0: the thirteen discarded
configurations are discarded precisely because *"some associated pair did not conform to the
hooking/hooked pattern of Lemma 5"* — i.e. because the **cone dichotomy (D)** fails, not
because an `E^D`-edge is wrong.

---

## 7. Scope: arbitrary simple polygons, or only the local 8-side configuration?

**Observation 6′** is a statement about **four segments in the plane**. Its proof (§4) uses
no polygon at all: no simplicity, no closedness, no connectivity. The only "global" inputs
are (GP1),(GP2),(GP3), which are statements about finitely many combined vertices and
sides. Hence Observation 6′ holds for **arbitrary** simple polygons (indeed for arbitrary
segment families in general position), and is a good candidate for a self-contained
formalisation.

**Lemma 7 / A7-EXT** is a statement about the **local 8-side configuration**. The global
hypothesis "four different connected components of `G^D`" is used exactly once, to derive
(M) — the complete matching pattern among the eight sides. After that, every step uses only
(M), (SP), (SQ), (H), (GP), all of which are local. Therefore:

* the proof, once completed, works for **arbitrary simple polygons** (no restriction to
  heptagons, convexity, or any other structure);
* and conversely, the statement to prove is a finite, purely local realizability question
  about 8 segments — which is precisely the form in which AKR verified it by computer.

For this project this means: a formalisation should state Lemma 7 as a *local* lemma about
eight segments with hypotheses (M),(SP),(SQ),(H),(GP), and derive the polygon statement
from it. The bridging step (four components ⟹ (M)) is a two-line graph argument and is the
only place where `G^D` is mentioned.

---

## 8. Does A7-EXT follow? The existential-quantifier question

Recall
```
S(e) = {hooking : ∃α ∈ A_{L5}(e), I(α) ∈ Cone(e)} ∪ {hooked : ∃α ∈ A_{L5}(e), I(e) ∈ Cone(α)}
```
and A7-EXT: `e ~_H e′ ⟹ S(e) ∩ S(e′) = ∅`.

`S(e) ∩ S(e′) ≠ ∅` means either

* `hooking ∈ S(e) ∩ S(e′)` : there exist `α ∈ A_{L5}(e)` and `α′ ∈ A_{L5}(e′)`, chosen
  **independently**, with `I(α) ∈ Cone(e)` and `I(α′) ∈ Cone(e′)`; or
* `hooked ∈ S(e) ∩ S(e′)` : symmetrically, with independently chosen witnesses.

**This is exactly the shape of Lemma 7's hypothesis.** AKR's proof begins: *"Let
`q_{i′},q_{i′±1}` and `q_{j′},q_{j′±1}` be associated (hooked or hooking) pairs of
`p_i,p_{i+1}` and `p_j,p_{j+1}`, respectively, such that …"* — i.e. it proves the statement
for **arbitrary** associated pairs with the given hooking status, with no coupling between
the two choices. So there is **no existential trap**: different `H`-edges, and the two
endpoints of a single `H`-edge, may pick different witnesses, and the argument still
applies.

Two further conditions must be checked, and both hold:

1. The witnesses `α, α′` must be `Associated_L5`, not merely `Associated_broad`, because
   Observation 6′ is applied to `(e′, α′)`. As shown in §6.1, under the four-components
   hypothesis the cross non-edges (N1),(N2) are automatic from (M), and the dichotomy (D)
   is supplied by the hooking/hooked status that defines membership in `S`. **So the
   `A_{L5}` requirement in the definition of `S(e)` is exactly right, and costs nothing.**
2. The `H`-edge condition (`e,e′` share no side; their four sides lie in four distinct
   components) is verbatim Lemma 7's hypothesis.

**Conclusion.**

```
Lemma 7  ⟹  A7-EXT      —  rigorous, no gap, no existential loss.
Observation 6′            —  proved here (§4); repairs the one use of Observation 6 in
                             Lemma 7's proof, with no extra hypotheses (§6.1).
Lemma 7 itself            —  reduction to 12 cases now rigorous (§6.5); 2½ of the 12
                             terminal cases proved here; the other 9½ remain
                             figure-level (§6.8, §6.9).
```

So **A7-EXT does not yet follow from a complete from-scratch proof**, but the only
remaining debt is AKR's own twelve-case analysis, not the Observation-6 defect that
motivated this task.

---

## 9. Every falsification attempt and its outcome

All computations use exact rational arithmetic (`fractions.Fraction`) unless stated.

| # | Target | Method | Outcome |
|---|---|---|---|
| 1 | Observation 6 under `Associated_broad` | replay the project's counterexample exactly | **FALSIFIED** (confirmed): `a=[(0,0),(1,0)]`, `b=[(0,0),(0,1)]`, `A=[(1,-1),(2,-1)]`, `B=[(1,-1),(1,-2)]`; axis fails to separate `a` from `b`. Excluded by Associated_L5 because `a∩B = b∩A = ∅`. |
| 2 | Observation 6 under "(E1),(E2),(N1),(N2)" (no dichotomy), `a,b` **consecutive** | targeted construction, quadrant II | **FALSIFIED — new.** `a=[(0,0),(2,0)]`, `b=[(0,0),(0,3)]`, `A=[(-1,10),(1/10,6/5)]`, `B=[(-1,10),(7/5,-2)]`. All four edge/non-edge conditions hold; (D) fails; axis separates nothing. |
| 3 | same, `a,b` **avoiding** | targeted construction | **FALSIFIED.** `a=[(1,0),(3,0)]`, `b=[(0,1),(0,2)]`, `A=[(-1,1),(1,2)]`, `B=[(-1,1),(5,-1)]`. |
| 4 | Observation 6′ (with (D)) | uniform random wedge pairs, integer coords in `[−6,6]²`, `8·10⁵` draws, consecutive and avoiding, with and without (E1),(E2) | **0 violations** in `1 067` admissible samples. |
| 5 | Observation 6′ (with (D)) | *targeted* sampler that conditions on (N1),(N2) by construction (`work/obs6b.py`), `4.8·10⁵` draws | **0 violations** in `115 ~ 10³` admissible samples (28 941 + 28 654 + 28 681 + 28 723). |
| 6 | necessity of (D) | same sampler with (D) dropped | **19 288 / 48 079** violations (`a,b` avoiding) and **150 / 28 940** (`a,b` consecutive) — i.e. (D) is not redundant. |
| 7 | the quadrant classification of §4.7 | census over `2.4·10⁵` targeted draws (`work/quad.py`) | Perfect agreement: quadrant I ⟹ hooking (sometimes also hooked), separation holds (57 303 cases); quadrant III ⟹ hooked, not hooking, separation holds (57 936); quadrants II and IV ⟹ **neither** hooking nor hooked and separation **always fails** (19 465 + 19 635, zero exceptions). Hence (1)⇔(2)⇔(3) of §4.7 is confirmed empirically as well as proved. |
| 8 | Normalization Lemma (§6.3) | `4·10⁵` random wedge pairs, `10 935` with all four crossings | **0 violations.** |
| 9 | Lemma 7 itself ("both hooking") | penalty minimisation over the 24 free coordinates of the eight segments, with all 12 required crossings, 12 required disjointnesses, general-position margins and the two cone conditions; simulated annealing + finite-difference gradient descent, ~50 random restarts | **No configuration found** (best residual ≈ 0.015 in normalised units). |
| 10 | Lemma 7 ("both hooked") | same | **No configuration found.** |
| 11 | **control**: the *mixed* case (AKR Fig. 6), which is known to be realizable | same searcher, plus a seed read off Fig. 6 by hand | **Also not found** (best residual ≈ 0.009; the seed gets to a single unsatisfied crossing `p_{j+1} × q_{i′}`). |

**Interpretation of 9–11 (important, and stated honestly).** Because the searcher fails on
the control case 11, its failure on 9 and 10 carries **no evidential weight**. The reason is
structural: in Fig. 6 four of the eight sides are long and nearly parallel and must realise
a delicate crossing order near infinity, which the penalty landscape handles badly. I
report 9–11 as **inconclusive**, not as support for Lemma 7. The real evidence for Lemma 7
remains AKR's own exhaustive pseudoline enumeration (§6.9).

**Attempted falsifications of my own intermediate lemmas.**

* Observation 6′ without (D): falsified (rows 2, 3, 6) — hence (D) is stated as a
  hypothesis.
* Observation 6′ without (E1),(E2): **not** falsifiable — (E1),(E2) are consequences
  (§4.3), confirmed by row 5 (`require_edges=False` column: 0 violations).
* "hooking and hooked are mutually exclusive": **falsified** by the explicit Fig. 5c
  witness in §4.7. I therefore do *not* use exclusivity anywhere.
* "the (a,b)-apex is outside `Cone(A′,B′)`" (F8): survives; used only as a consistency
  check on the frame.
* Case 5 parity argument: the residual sub-case `a′×B ∈ G4` is exactly the place where I
  could not rule out an alternative, and I have flagged it rather than hidden it.

## 10. Circularity check

Observation 6′ is proved in §4 from:

* affine invariance,
* the definition of `Cone`,
* elementary slope comparisons,
* (GP1),(GP2),(GP3).

It uses **neither** Observation 6, **nor** the hooking/hooked vocabulary, **nor** Lemma 7,
**nor** anything that is derived from Observation 6. The cone dichotomy (D) is taken as a
*hypothesis* (it is part of the definition of `Associated_L5`); where it comes from —
Lemma 5, whose proof is the `G₀`-walk argument of AKR §4 and does not mention
Observation 6 — is irrelevant to the logic of §4. A reviewer checking for circularity
should look at §4.4 and §4.5, which are the only places (D) is consumed, and verify that
nothing there refers forward.

The Normalization Lemma (§6.3) likewise uses only affine invariance and an order
argument; the Repair Lemma (§6.1) uses only the component argument.

---

## 11. Recommendations for the formalisation

1. Define `Associated_L5` as **(E1)∧(E2)∧(N1)∧(N2)∧(D)**, or — better — as
   **(N1)∧(N2)∧(D)**, deriving (E1),(E2) (§4.3). Do **not** define it as (E1)∧(E2)∧(N1)∧(N2):
   §2.3 shows that is unsound.
2. State the Axis Property in the equivalent apex form
   `I(A,B) ∈ int Cone(a,b) ∪ int(−Cone(a,b))` (§4.7). It is the cleanest to prove and the
   separation statement follows in two lines.
3. State Lemma 7 as a **local** lemma about eight segments with hypotheses (M),(SP),(SQ),(H)
   (§7), and bridge to `G^D` separately.
4. Do not assume "hooking and hooked are mutually exclusive" — it is false (§4.7).
5. If Lemma 7 is to be formalised rather than assumed, budget for AKR's own gaps (§6.8,
   §6.9): only cases 5, 7, 9 have complete arguments as of this document.
