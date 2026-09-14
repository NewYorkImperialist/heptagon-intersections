# A reviewer's guide

**For:** a combinatorialist, graph theorist, or discrete geometer who has never
heard of this problem.
**Assumes:** finite combinatorics, graphs, proof. **Assumes nothing about:** the
polygon-intersection literature, order types / oriented matroids, Lean, or SAT
certificates. Those are explained where they are used.

**What this repository claims.** A *candidate* computer-assisted proof that
`f(7,7) = 38`. Not peer-reviewed, and not reviewed by anyone outside an
AI-assisted development process. The authoritative claim-by-claim status is
[`verification-status.md`](verification-status.md); where anything below appears
to conflict with it, that file wins.

**What this guide is for.** To get you to an *independent* judgement about where
the argument is weak, in an afternoon, without reading the code. §6 is the point
of the document. If you read only one section, read §6.

---

## 1. The problem

Let `P` and `Q` be simple polygons in the plane with `m` and `n` sides — closed
polygonal curves, no self-intersections; the enclosed region plays no role.
Write `I(P,Q)` for the number of points where the two boundaries meet, and

```
f(m,n) = max { I(P,Q) : P has m sides, Q has n sides, in general position }.
```

*General position* here means: finitely many intersection points (no overlapping
sides), no vertex of one polygon on the other polygon, no three of the `m+n`
vertices collinear, no two of the `m+n` sides parallel. Every intersection is
then a transversal crossing in the interiors of two sides.

The trivial upper bound is `mn`. Dillencourt, Mount and Saalfeld (CCCG 1993)
settled both cases with an even side count:

| case | value |
|---|---|
| `m, n` both even | `mn` |
| `m` even, `n` odd | `m(n−1)` |
| `m, n` both odd | **open in general** |

For the odd–odd case they conjectured

```
f(m,n) = mn − m − n + 3,
```

which at `m = n = 7` predicts **38**. Their claimed odd–odd upper-bound proof
contains what Ackerman–Keszegh–Rote later called an "unrecoverable error", so
the odd–odd case is genuinely open.

**Why `(7,7)` is the smallest open odd–odd case.** The odd–odd cases with a
small side are settled: `f(3,n) = 2n`, and `f(5,n) = 4n − 2` was proved by
Černý, Kára, Kráľ, Podbrdský, Sotáková and Šámal (2003). (Both agree with the
conjectured `mn − m − n + 3`.) The same paper states explicitly that
`k = l = 7` remains open. So `(7,7)` is the first odd–odd pair with both sides
`≥ 7`, and it is the smallest open case.

**What the published bounds leave.**

* *Lower:* the DMS construction gives `f(7,7) ≥ 38`.
* *Upper:* Černý et al., Theorem 4, give `f(k,l) ≤ kl − ⌈k/6⌉ − l` for odd
  `7 ≤ k ≤ l`; at `k = l = 7` that is `49 − 2 − 7 = 40`.
* Ackerman–Keszegh–Rote (SoCG 2020; DCG 68 (2022) 1049–1077) prove
  `mn − (m+n) + C` with an explicit but astronomical `C ≈ 2^(2^70)` —
  asymptotically optimal, and **vacuous** at `m = n = 7`.

Two closed curves in general position cross an even number of times, so `39` and
`41` are impossible. Hence

```
f(7,7) ∈ {38, 40},
```

and **the entire question is whether 40 is attainable.** This project's claim is
that it is not.

One notational point that matters later. There are `7 × 7 = 49` ordered side
pairs. In general position two non-parallel segments meet at most once, so
crossings biject with *intersecting* side pairs. Define the **disjointness
graph**

```
G^D : bipartite on sides(P) ⊔ sides(Q),   (p_i, q_j) ∈ E^D  ⟺  p_i ∩ q_j = ∅.
```

(Note the orientation of the definition: an **edge means the two sides are
disjoint**.) Then for every configuration

```
I + |E^D| = 49.                                            (★)
```

So `I = 40` is exactly `|E^D| = 9`, and the problem becomes one about a sparse
bipartite graph on `7 + 7` vertices.

---

## 2. The strategy

The lower bound and the upper bound are completely different objects and should
be judged separately.

### 2.1 Lower bound: `f(7,7) ≥ 38`

An explicit pair of integer-coordinate heptagons with `I = 38`. This uses no
external lemma, no enumeration, and no interpretation of anybody's paper. It is
checked in `< 1 s` by a Python script and is kernel-checked in Lean
(`lean/LowerBound.lean`, zero imports). See §4.1. **Nothing in §6 threatens
this half.** If you want to spend five minutes rather than an afternoon, spend
them here and stop.

### 2.2 Upper bound: a reductio on `I = 40`

Assume a pair of simple heptagons in general position with `I = 40`, and derive
a contradiction. The chain is:

```
I = 40
  ⟹ |E^D| = 9                                         by (★)
  ⟹ δ(G^D) ≥ 1                                        Černý L1
  ⟹ P and Q are both "exceptional"                    Lemma A + parity
  ⟹ their order types lie in a 14-class table         finite classification
  ⟹ 13,003,620 candidate graphs G^D
  ⟹ filters cut this to 121 graphs / 225 terminal triples
  ⟹ each of the 225 violates a consequence of AKR Lemma 5
  ⟹ ⊥.
```

Then `I ≠ 40`; with `I ≤ 42` (Černý L1), `I ≠ 42` (a separate argument, §2.8),
and `I` even, we get `I ≤ 38`, matched by the construction. Each step in detail:

### 2.3 `δ(G^D) ≥ 1` — Černý Lemma 1

A line meets a simple `k`-gon an even number of times (it enters and leaves), so
for odd `k` it meets at most `k − 1` of the `k` sides. Apply this to the
supporting line `ℓ(q_j)` of each side of `Q`: it misses some side of `P`, so
`q_j` itself misses that side. Symmetrically for each `p_i`. Hence every vertex
of `G^D` has degree `≥ 1`, so `|E^D| ≥ 7` and `I ≤ 42`.

(This is *only* the weak cap. The project deliberately does **not** import
Černý's Theorem 4, i.e. `f(7,7) ≤ 40`, because that rests on a four-page case
analysis the project has not audited. Theorem 4 is therefore independent
corroboration of the upper bound, not an input to it — which is why the `I = 42`
case has to be excluded by hand in §2.8.)

### 2.4 Lemma A — the project's own counting lemma

Call `S ⊆ sides(P)` **uncrossable** if

```
(★★)  every line ℓ with ℓ ∩ V(P) = ∅ misses at least one member of S.
```

The restriction to lines avoiding the *vertices* of `P` is load-bearing; see
§6.6.

> **Lemma A.** If `S ⊆ sides(P)` is uncrossable, then `|E^D| ≥ n + (m − |S|)`.

*Proof.* Each `ℓ(q_j)` avoids `V(P)` (general position), so by `(★★)` it misses
some `p ∈ S`, hence `q_j ∩ p = ∅`: that is `n` edges of `G^D` with distinct
`Q`-endpoints and `P`-endpoints inside `S`. By Černý L1, each `p ∉ S` misses
some side of `Q`: that is `m − |S|` further edges with distinct `P`-endpoints
outside `S`. The two families are disjoint because their `P`-endpoints are
inside versus outside `S`. ∎

For `m = n = 7`, `|S| = 4`: `|E^D| ≥ 10`. Since `I` is even, `|E^D| = 49 − I` is
odd, so in fact `|E^D| ≥ 11` and `I ≤ 38`.

Call a simple heptagon **exceptional** when *no* 4-subset of its sides is
uncrossable. Contrapositive:

```
I = 40  ⟹  P and Q are both exceptional.
```

That is the reduction that makes everything else finite.

### 2.5 The classification of exceptional heptagons

Every predicate used downstream — simplicity, which side pairs can cross, the
"avoiding" relation, the Černý-L2 hypothesis — depends only on the **order
type** of the 7 vertices.

> *Order types, briefly.* For a point set `x_1,…,x_k` in general position, the
> **chirotope** records, for each ordered triple, the sign of the orientation
> determinant `det(x_b − x_a, x_c − x_a) ∈ {+,−}`. Two sets have the same
> **order type** if their chirotopes agree up to relabelling and global
> reflection. Order types are the combinatorial shadow of a point configuration:
> anything expressible purely in terms of "is `c` left or right of the directed
> line `ab`" is an order-type invariant. There are exactly `1, 2, 3, 16, 135`
> order types of `3,…,7` points (Aichholzer–Aurenhammer–Krasser).

So the classification is a finite computation:

```
135 order types × 360 cyclic orders  →  6,342 simple heptagons
                                     →  6,007 with an uncrossable 3-set
                                        319 with an uncrossable 4-set (none smaller)
                                         16 exceptional
                                     →  14 classes up to the dihedral group.
```

(`360 = 6!/2` is the number of cyclic orders of 7 labelled points up to rotation
and reflection.) Each of the 14 classes carries a *profile*: its set `M` of
"missable" sides (`|M| = 5` in every class), its five maximal crossing sets (all
of size 6, each of the form `FULL \ {m}`, `m ∈ M`), its Černý-L2 windows, and
its avoiding pairs (two, except one class with none).

This is the step with the strongest external corroboration: the 135 order types
match the TU Graz database exactly (set equality both ways), the 6,342 simple
heptagons match an external dataset, and the 16/14 split was independently
recomputed by a separate implementation that did not reuse the project's
predicates.

### 2.6 The graph enumeration

`I = 40` forces `|E^D| = 9` with `δ ≥ 1`. The number of bipartite graphs on
`7 + 7` vertices with exactly 9 edges and no isolated vertex is

```
Σ_{j=0}^{7} (−1)^j C(7,j) [x^9] ((1+x)^{7−j} − 1)^7  =  13,003,620,
```

by inclusion–exclusion over uncovered `Q`-sides. This closed form was evaluated
independently of both enumerations, and both enumerations agree with it.

### 2.7 The filters, and the terminal 225

| survivors | next filter | justification |
|---|---|---|
| 13,003,620 | AKR L5 on **consecutive** side pairs in different components | published |
| 42,238 | AKR L7 ⟹ an auxiliary graph `H` is bipartite | published + interpretation (**the risk**) |
| 24,990 | crossing-set compatibility with an exceptional class | elementary, order-type |
| 2,300 | Černý L2, class-dependent windows | published |
| 121 graphs | *(change of counted object — not a filter)* | — |
| 225 triples | AKR L5 on **avoiding** side pairs | published |
| **0** | — | — |

The `121 → 225` step is **not** a reduction: `13,003,620 … 121` count *graphs*,
while `225` counts *triples* `(class_P, class_Q, G)` on those same 121 graphs.
And the intermediate counts `2,300` and `121` are artifacts — they depend on
which labelled heptagon is stored as each class representative (see §6.2). Only
the terminal `0` is labelling-invariant, which is why the project separately
verifies emptiness for each of the `14 × 14 = 196` ordered class pairs under
three different representative labellings.

**AKR Lemma 5, and what the filter actually tests.** Lemma 5 says: if two sides
`p_a, p_b` of `P` are consecutive *or avoiding*, and lie in different components
of `G^D`, then there exist consecutive sides `q_i, q_{i±1}` of `Q` with
`(p_a,q_i), (p_b,q_{i±1}) ∈ E^D` and `(p_a,q_{i±1}), (p_b,q_i) ∉ E^D`.
Unfolding, this is exactly

```
∃ k ∈ N(p_a) \ N(p_b),  ∃ k' ∈ N(p_b) \ N(p_a),  with  k' ≡ k ± 1 (mod 7),   (L5)
```

where `N(·)` is the neighbourhood in `G^D`. (Since `CC(p_a) ≠ CC(p_b)`, the two
neighbourhoods are disjoint anyway, so the set differences are the
neighbourhoods themselves.) This equivalence is Lean-kernel-checked, and that
matters: it certifies that the implemented predicate is neither a weakening nor
a strengthening of the published conclusion.

**A worked terminal case — checkable by hand in two minutes.** Take the first
certificate entry. The `P`-side neighbourhoods are

```
N(p_0),…,N(p_6)  =  {0}, {0}, {1}, {2,4}, {3}, {4}, {5,6}.
```

`P` carries exceptional class 12, whose avoiding pairs are `(0,2)` and `(4,6)`.
The sides `p_4` and `p_6` are avoiding and lie in different components. Now
`N(p_4)\N(p_6) = {3}` and `N(p_6)\N(p_4) = {5,6}`; in `ℤ_7`, `3` is cyclically
adjacent only to `2` and `4`, neither of which lies in `{5,6}`. So (L5) fails —
contradiction. All 225 cases have exactly this shape.

The condition is genuinely discriminating, which is the right control: on the
*same* graph, the other avoiding pair `(0,2)` of the same class gives
`N(p_0)\N(p_2) = {0}` and `N(p_2)\N(p_0) = {1}`, and `0` *is* adjacent to `1`,
so (L5) holds there. Across the 225 certificate graphs, `2,016` of the `4,725`
side pairs satisfy (L5).

### 2.8 Excluding `I = 42`

Because only the weak cap `I ≤ 42` is imported, this case needs its own
argument. `I = 42` means `|E^D| = 7` with `δ ≥ 1` on `7 + 7` vertices, so `G^D`
is a **perfect matching**, and its components are the 7 matched pairs. Lemma A
with `|S| = 4` would force `|E^D| ≥ 10 > 7`, so both polygons are exceptional.
Fix `j`: `N(q_j) = {i_j}` is a singleton, so `q_j` *crosses* the 6-set
`FULL \ {i_j}`. Compatibility puts that inside a maximal crossing set of `P`'s
class; every such set is `FULL \ {m}` with `m ∈ M_P`, also of size 6; two
6-subsets of a 7-set nest only if equal, so `i_j ∈ M_P`. The `i_j` are distinct
(matching), so all seven sides lie in `M_P`, contradicting `|M_P| = 5`.

Note what this consumes: Černý L1, Lemma A, and the exceptional-class invariants
only. **Not** AKR Lemma 7. That is deliberate, and it means the one genuinely
contested import (§3, §6.3) is load-bearing at *exactly one* point in the whole
proof: the `I = 40` endgame. It cannot simply be dropped there — with that
filter off, the pipeline ends at 2,187 surviving triples on 412 graphs, not 0.

---

## 3. Imported versus proved here

This is the boundary a reviewer most needs to see clearly.

### 3.1 Used as published black boxes

Statements and applicability were audited against the papers hypothesis by
hypothesis; **the papers' internal proofs were not re-verified here.**

| tag | content | source |
|---|---|---|
| **GP** | the general-position regime may be assumed w.l.o.g. | AKR 2022 §9.1 and §3 |
| **C1** | a line meets a simple odd `k`-gon in at most `k−1` sides; hence `δ(G^D) ≥ 1` | Černý et al. 2003, Lemma 1 |
| **C2** | for 5 consecutive vertices `A,B,C,D,E` of `P` with `D ∈ int(△ABC)`, no 4 sides of `Q` induce *exactly* a perfect matching on the 4 sides `AB,BC,CD,DE` | Černý et al. 2003, Lemma 2 |
| **A5** | the existence statement of §2.7, for consecutive **and** avoiding pairs | AKR 2022, Lemma 5 |
| **A7** | two disjoint pairs of consecutive sides of `P` whose four sides lie in four different components of `G^D` cannot both be "hooking", nor both "hooked" | AKR 2022, Lemma 7 |

Plus AKR §9.1 for the general-position reduction. **Černý Lemma 3 is not a
dependency**: running the pipeline with and without it gives identical results
at every stage and an identical terminal set, because the graphs it removes are
removed by crossing-set compatibility anyway. So the list is four lemmas, not
five.

Two things *not* imported, on purpose: Černý's Theorem 4 (`f(7,7) ≤ 40`), and
anything from the withdrawn Günther preprint.

### 3.1a The upper-bound chain, and exactly which links are machine-checked

Added 2026-09-14. The whole upper bound is this chain, and it is now a Lean
theorem (`lean/UpperBoundAssembly.lean`), so you can see at a glance where the
weight sits:

| step | status |
|---|---|
| `I + \|E\| = 49` | **kernel-checked for every configuration** |
| `δ(G^D) ≥ 1`, hence `\|E\| ≥ 7`, hence **`I ≤ 42`** | **kernel-checked, unconditional** |
| `I` is even | **kernel-checked** (`lean/IntersectionParity.lean`) |
| `I ≠ 42` | **kernel-checked** (`lean/Exclude42.lean`), modulo the class invariant |
| `I ≠ 40` | **the entire enumeration** — the one open input, and where the risk lives |
| ⟹ `I ≤ 38` | **kernel-checked** |

**As of 2026-09-14 exactly one line of that table is open.** The best current
statement is `IntersectionParity.isGreatest_38_final`, which needs the
exceptional-class data — shared with the enumeration branch, so not an extra
thing to believe — and `I ≠ 40`. If you want to spend your time where it
matters, spend it on that row; everything above it is machine-checked.

Two remarks a reviewer should weigh.

First, `I ≤ 42` being unconditional is worth pausing on: it is this project's use
of **C1**, but it is *not imported*. The minimum-degree fact it rests on is
**derived here** from a parity argument (a closed polygon meets a line an even
number of times, so a side cannot cross all seven sides of the other polygon),
in `lean/SegmentGeometry.lean`. So C1 appears in the table above as a published
black box, but the consequence this proof actually needs does not depend on
trusting it.

Second, **`I ≤ 42` is what reduces the problem to two branches.** Since `I` is
even, the only values left above 38 are 42 and 40. That is why the entire
difficulty concentrates in `I = 40`, and why §6.1 is ordered the way it is.

Note that "I is even" is a genuinely different statement from the parity
machinery that was already in the geometry group: `metCount_even` there is about
a polygon meeting a **line**, which is what feeds the minimum-degree step.
Total-intersection parity between two closed curves is now proved separately in
`lean/IntersectionParity.lean`, and — worth knowing if you are checking the trust
base — it stays inside `Int` arithmetic, with `inside` defined by ray-crossing
parity under a sheared height order. No reals are introduced anywhere.

### 3.2 One black box has since been replaced by a proof

**Černý L1's required consequence is now proved in Lean** (2026-09-14,
`lean/GeometryDefs.lean` + `lean/SegmentGeometry.lean`). The project did not
formalize Černý's paper; it identified the one consequence the argument actually
uses — `δ(G^D) ≥ 1`, plus Lemma A's second edge family (`h2`) — and proved that
from a parity argument: the number of sign alternations around a closed cycle is
always even, by induction, so a vertex-avoiding line cannot strictly meet all
sides of an *odd* polygon. Mathlib-free, no `Classical.choice`, no `decide` over
the general statement.

Two honest caveats. First, the statement is at the **orientation-predicate
level**: "no proper transversal crossing", not the point-set statement
"the closed segments are disjoint in `ℝ²`". The step between them is standard
and is not formalized. Second, the same file machine-checks the strict-vs-loose
distinction of §6.6 — exhibiting a triangle and a line meeting all three
*closed* sides while the strict count is 1 — which is a real check, not a
restatement.

### 3.3 Proved here, machine-checked

> *Lean, briefly.* Lean 4 is a proof assistant. A file compiles only if a small
> trusted kernel accepts every proof term. `#print axioms T` reports exactly
> which axioms `T` depends on; "the three standard ones" are `propext`,
> `Classical.choice`, `Quot.sound`. No file in this project declares its own
> `axiom`, and none uses `sorry`, `native_decide` or `unsafe` — so nothing is
> assumed on the project's say-so inside Lean.

All Lean sources build (`lake build`, exit 0 — observed while writing this; see
§4.4). Only `LemmaA.lean` reaches Mathlib; five files import literally nothing
and compile against an empty `LEAN_PATH`. (The file count is live — the
authoritative per-claim record is
[`verification-status.md`](verification-status.md) row 15.)

| what | file | scope limit |
|---|---|---|
| the 38-crossing construction: simplicity, general position, `crossCount = 38` over provably all 49 pairs | `LowerBound.lean` | orientation-level; not "Jordan curve in `ℝ²`" |
| Lemma A's counting + parity upgrade ⟹ `I ≤ 38` | `LemmaA.lean` | proved **as an implication**; the geometric premises `h1, h2` stay hypotheses |
| Černý L1's consequence and Lemma A's `h2`, from a parity proof | `SegmentGeometry.lean` | orientation-level; `h1` untouched |
| every one of the 225 cases fails the AKR-L5 conclusion; component separation *recomputed* in the kernel | `Endgame.lean` | a theorem about a **stored certificate**, not about polygons; see §6.4 |
| `AKR5Conclusion ↔ AKR5Adjacent` — published conclusion ⟺ implemented predicate | `EndgameDefs.lean` | axiom-free |
| non-empty + pairwise-disjoint status sets ⟹ `H` bipartite | `Lemma7Bridge.lean` | AKR L7 is an explicit **hypothesis**, never an axiom |
| the Lean transcription of the Černý-L2 filter fires ⟺ an exact induced perfect matching exists | `CernyL2Interface.lean` | certifies the *Lean transcription*, not the Python/C++ source |

**`f(7,7) = 38` is not a Lean theorem.** Five planned files do not exist at all:
the model of a configuration (`Model.lean`), the published lemmas as declared
imports (`Imported.lean`), the profile table (`Profiles.lean`), the
classification (`Classification.lean`), and the assembly (`Main.lean`).

### 3.4 Proved here, prose + computation only

Lemma A itself; the exceptional classification; the 13,003,620-graph
enumeration and the filter pipeline; the `I = 42` exclusion; the reading of AKR
Lemma 7 as "the graph `H` is bipartite"; the extension of AKR Lemma 5 to
avoiding pairs via an order-type predicate.

### 3.5 The one contested import

**A7-EXT**, the exact statement the proof needs from AKR Lemma 7. Define the
auxiliary graph `H` on the "relevant" consecutive pairs of `P`:

```
V(H) = { i ∈ ℤ_7 : CC(p_i) ≠ CC(p_{i+1}) },   e_i = (p_i, p_{i+1})
i ~_H k  ⟺  {i,i+1} ∩ {k,k+1} = ∅  and  the four sides lie in four
             distinct components of G^D.
```

For `e ∈ V(H)`, `S(e) ⊆ {hooking, hooked}` is the set of statuses witnessed by
*some* associated pair of consecutive `Q`-sides. Then

```
A7-EXT :   e ~_H e'  ⟹  S(e) ∩ S(e') = ∅.
```

This is AKR Lemma 7 read with an **existential** reading of "is hooking", and
with "associated" read as carrying AKR Lemma 5's cone dichotomy rather than just
the two `E^D`-edges. Whether the published text licenses that reading is the
open question. Its current status is `VERY STRONGLY CORROBORATED — HUMAN REVIEW
STILL DESIRABLE`, not verified, and the evidence is described in §6.3.

Everything downstream is clean: `A7-EXT` + `S(e) ≠ ∅` ⟹ `H` bipartite is
Lean-kernel-checked with **no axioms at all**, and the Lean file does not mention
AKR Lemma 7 (the disjointness condition is a hypothesis). That file also
*proves* that a both-status vertex is isolated, which disposes of the
"different associated pairs might witness different statuses on different edges"
worry.

---

## 4. What you can check yourself, in an afternoon

All four commands below were run from a clean shell on macOS/arm64 while writing
this guide, and the timings are what was observed. Run them from the repository
root.

**Or run everything at once.** `scripts/verify-all.sh` drives every check in
this section plus the hash manifests, the A7 DRAT certificates and the second
C++ implementation, and it fails loudly and specifically rather than skipping:

```bash
bash scripts/verify-all.sh            # full run
bash scripts/verify-all.sh --quick    # steps 1-4 + the DRAT gate self-test
```

Observed warm: **4 s** for `--quick` (9 checks passed, 2 steps deferred,
exit 2). A cold clone must first build Mathlib, which is why `--quick` defers
the Lean build entirely when the `.olean` cache is absent, and then reports
PARTIAL rather than success.

Exit `0` means complete success, `1` a failed check (a **missing** required
input counts as a failure, never a skip), `2` partial (something was deferred
and is therefore unverified), `3`-`6` a missing tool. It does not trust the
underlying scripts' exit codes: it asserts `cases checked : 225`, 121 distinct
graphs, an absolute `I = 38`, and for each DRAT proof that the empty clause was
actually derived — and on every run it pushes a deliberately truncated proof
through its own gate, failing the whole run if the gate accepts it. The reason
for that paranoia is [`known-issues.md`](known-issues.md) **K-19**: three of the
underlying tools used to exit `0` on inputs that establish nothing (an empty
case list; a self-consistent lower-bound file reporting `I = 0`; a proof
deriving no empty clause). Two are now fixed at source; `dratcheck.py` is not,
and the gate is what catches it.

A companion script, `scripts/negative-tests.sh`, checks the harness itself by
corrupting throwaway copies and requiring rejection — 10 mutations, 10
rejections. If you want to know whether this repository's verification means
anything, that script is the shortest answer.

### 4.1 The lower bound — `< 1 s`, no external lemma, no enumeration

```bash
python3 python/validation/check_lower_bound.py
```

Expected output (abridged):

```
checking data/lower_bound/lower_bound_38.json
  PASS  P is a simple polygon: True
  PASS  Q is a simple polygon: True
  PASS  all 14 vertices in general position: True
  PASS  no vertex lies on the other boundary: True
  PASS  boundary intersections I: 38
  PASS  disjointness graph edges |E|: 11
  PASS  I + |E| = 49: 49
  PASS  minimum degree on the P side: 1
  PASS  per-P-side crossing counts: [6, 6, 6, 6, 6, 6, 2]
  PASS  disjointness graph components: 3
All checks passed.  This certifies f(7,7) >= 38.
It does NOT certify the upper bound f(7,7) <= 38.
```

Observed: **0.08 s**. Exact integer arithmetic on 14 integer points. This
settles `f(7,7) ≥ 38` outright — it depends on no published lemma, no
enumeration, and no interpretation. If you disbelieve everything else in this
repository, this still stands.

### 4.2 The 225-case endgame certificate — `< 1 s`

```bash
python3 python/validation/check_final_certificate.py data/certificates/final_elimination_225.json
```

Expected output:

```
certificate : final_elimination_225.json
profiles    : exceptional_profiles_14.json (14 classes)
Cerny L3 active in generation: False
external lemmas relied on    : Cerny L1, Cerny L2, AKR L5, AKR L7

cases checked        : 225
distinct graphs      : 121
degree sequences (P) : {(2, 2, 1, 1, 1, 1, 1): 225}
degree sequences (Q) : {(2, 2, 1, 1, 1, 1, 1): 225}
classes P            : [1, 2, 3, 4, 9, 10, 11, 12, 13]
classes Q            : [1, 2, 3, 4, 9, 10, 11, 12, 13]

OK: all 225 cases establish the AKR Lemma 5 contradiction.
Each case is refuted; COMPLETENESS of the case list is NOT checked here.
```

Observed: **0.05 s**. The checker shares no code with the generator, recomputes
neighbourhoods, degree sequences, components (by BFS, where the generator used
union-find), and the set differences from a canonical encoding, and treats the
certificate's convenience fields as claims rather than input. Note the last line
— it is the honest one, and it is the subject of §6.1.

### 4.3 The A7 / DRAT evidence — about 8 minutes

```bash
independent/akr_l7_reproduction/reproduce.sh
```

Observed: exit 0, `ALL CHECKS PASSED`. Since 2026-09-14 it also runs the **load-bearing step 10**, the K-16 replacement coverage (`coverage25/`), which adds a few minutes; the run fails if that step is missing, non-executable, exits non-zero, or does not print its success line. Requires `python3` and
the `z3` Python package (`pip install z3-solver`); without `z3` you can run
`REPRO_SKIP_Z3=1 independent/akr_l7_reproduction/reproduce.sh`, which is honest
about the gap and exits `2` (PARTIAL), never `0`.

> *DRAT, briefly.* When a SAT solver reports UNSAT you should not take its word
> for it. A DRAT proof is the solver's log of derived clauses, each of which an
> independent checker can confirm by unit propagation alone. So "UNSAT" becomes
> a claim you check rather than trust — and here the checker was written from
> scratch and is itself validated on pigeonhole instances plus four negative
> controls (a sign-flipped proof, a proof of the empty clause from a satisfiable
> formula, an unjustified lemma, and a valid proof checked against the wrong
> formula — all four correctly rejected).

The run does nine things; the substantive ones are: regenerate all 20 CNFs
byte-identically from source; re-check **15/15 DRAT refutations** (the slow
part, ~5 min, pure Python); confirm the 5 satisfiable instances from exported
models with no solver; cross-check all 20 with `z3`; a **positive control** in
which AKR's own Figure 6 configuration satisfies all 64,566 clauses of the real
encoding (this is what rules out a vacuously over-constrained encoding); the
Observation 6 counterexample of §5; and the `n = 7` case coverage.

> **Read step 9 with care.** The script's last step prints
> `--- PASS: coverage argument reproduced`, and the overall run exits `0` with
> `ALL CHECKS PASSED`. That step faithfully re-runs the project's **original,
> now-superseded** coverage argument — the one shown to be wrong in K-16. The
> `PQ-adj` instance it justifies is *vacuous* (`PQ-adj/none` is UNSAT in the
> `z3` output of this very run, and status `none` imposes no constraints, so
> every `PQ-adj` verdict is vacuously UNSAT). The correction is stated in
> `independent/akr_l7_reproduction/REPRODUCE.md` §6 and in `known-issues.md`
> K-16. The replacement — all 25
> `(P-type × Q-type)` combinations with no symmetry reduction — is **not
> re-run here**, and its script is not in the repository (§6.3).

What this does and does not buy is in §6.3.

### 4.4 The Lean build

```bash
export PATH="$HOME/.elan/bin:$PATH"     # lake is not on PATH by default
cd lean && lake build
```

Expected: `Build completed successfully (N jobs).`, exit 0. Observed: **2 s**,
`N = 756`, with `.lake` already populated (the repository ships the build
products). A cold build needs the Mathlib `v4.33.1` prebuilt `.olean` cache —
only `LemmaA.lean` touches Mathlib, so if you want to skip that entirely:

```bash
LEAN_PATH= lean lean/LowerBound.lean      # ~2.5 s, zero imports
```

To confirm nothing is assumed, `#print axioms` output for every principal
theorem is tabulated verbatim in [`../lean/README.md`](../lean/README.md).

### 4.5 Optional: rebuild the classification and the search yourself

Verified while writing this guide. Run from a scratch directory with
`PYTHONPATH` pointing at `python/core`:

```bash
export REPO=$PWD; export PYTHONPATH=$REPO/python/core
mkdir -p /tmp/f77 && cd /tmp/f77
python3 $REPO/python/core/chiro.py                                   # ~12 s CPU
python3 $REPO/python/classification/make_exceptional_profiles.py     # ~4 s CPU
python3 $REPO/python/elimination/audit_enum.py 9                     # ~6 min
```

All three were run while writing this guide and produced exactly the documented
figures: `chiro.py` → order-type counts `1, 2, 3, 16, 135`;
`make_exceptional_profiles.py` → `simple 7-gons examined: 6342`,
`minimum uncrossable-set size distribution: {3: 6007, 4: 319, 5: 16}`,
`exceptional polygon classes: 14`; and `audit_enum.py 9` (**6 min 13 s**
observed) →

```
  graphs with min degree >=1 on both sides : 13003620
  after AKR Lemma 5 (consecutive pairs)    : 42238
  after AKR Lemma 7 (H bipartite)          : 24990
  after Cerny et al. Lemma 3               : 9702
  after crossing-set compatibility with the 14 exceptional classes : 2300
  after Cerny et al. Lemma 2 (class-dependent)                     : 121
  after AKR Lemma 5 on AVOIDING pairs (class-dependent)            : 0
  FINAL SURVIVORS: 0
```

(`audit_enum.py` also applies Černý L3 — the `9,702` line — which is why its
trace has one more row than §2.7. That filter is redundant; see §3.1.) This is
the part §6.1 says is weakest, so if you have the time, this is where to spend
it. Note that re-running this code confirms the code is deterministic, not that
it is correct; §6.1 explains what would actually help.

For the labelling-invariant version — emptiness checked separately for each of
the 196 ordered class pairs under three representative labellings — see
[`computational-method.md`](computational-method.md) Tier 3, which is the run
that actually carries the claim.

---

## 5. A self-contained ten-minute check: AKR's Observation 6 is false as printed

This is the single most concrete, most checkable finding in the repository, and
it needs nothing from the rest of the project. Full record:
[`known-issues.md`](known-issues.md) K-14 and
[`a7-independent-resolution.md`](a7-independent-resolution.md) §3.

### 5.1 The statement being refuted

> **Observation 6 (Axis Property; AKR 2022, verbatim).** If the pair
> `p_i, p_{i+1}` and the pair `q_j, q_{j±1}` are associated such that
> `(p_i,q_j), (p_{i+1},q_{j±1}) ∈ E^D`, then the line through `I(p_i,p_{i+1})`
> and `I(q_j,q_{j±1})` separates `p_i` and `q_{j±1}` on the one side from
> `p_{i+1}` and `q_j` on the other side.

Here `I(s,t)` is the intersection of the supporting lines; for consecutive sides
of a polygon it is just their shared vertex. Observation 6 is stated **without
proof** in both the SoCG and the DCG version, and is used throughout the case
analysis of Lemma 7.

### 5.2 The counterexample

```
P (triangle) = (2,0), (3,4), (−2,0)
Q (pentagon) = (4,−4), (−3,1), (0,−1), (3,3), (2,1)
```

with sides `p_0 = (2,0)(3,4)`, `p_1 = (3,4)(−2,0)`, `p_2 = (−2,0)(2,0)` and
`q_0 = (4,−4)(−3,1)`, `q_1 = (−3,1)(0,−1)`, `q_2 = (0,−1)(3,3)`,
`q_3 = (3,3)(2,1)`, `q_4 = (2,1)(4,−4)`.

Everything below is exact integer arithmetic on 8 points.

**(a) General position holds — all of it.** `P` and `Q` are simple; the 8
vertices are distinct; **no three of the 8 combined vertices are collinear**; no
vertex of one polygon lies on the other; **no two of the 8 sides are parallel**.
That is exactly AKR's §3 assumption list (GP0–GP3). `I(P,Q) = 8`, even, so the
parity sanity check passes too. There is nothing degenerate to appeal to.

**(b) The disjointness graph.** With an `E` marking a disjoint (= adjacent)
pair:

```
        q0 q1 q2 q3 q4
   p0 :  E  E  .  .  .
   p1 :  .  .  E  E  E
   p2 :  .  .  .  E  E
```

`|E^D| = 7`, and `3·5 = 15 = 8 + 7` confirms (★) in the `(3,5)` case. The two
components are `{p_0, q_0, q_1}` and `{p_1, p_2, q_2, q_3, q_4}`, so
`CC(p_0) ≠ CC(p_1)`.

**(c) The pair is associated under the printed definition.** Take
`a = p_0`, `b = p_1` (consecutive, apex `(3,4)`), and `A = q_0`, `B = q_4`
(consecutive, apex `(4,−4)`). Read off the table: `(p_0,q_0) ∈ E^D` and
`(p_1,q_4) ∈ E^D` — that is precisely AKR's hypothesis. The two cross non-edges
also hold: `(p_0,q_4) ∉ E^D` and `(p_1,q_0) ∉ E^D`. So no reading of "associated"
that only adds the non-edges escapes this example.

**(d) The Axis Property fails.** The axis is the line through the two apexes
`(3,4)` and `(4,−4)`. Its signed-area form is

```
D(x,y) = det( (3,4), (4,−4), (x,y) ) = 8x + y − 28.
```

Evaluate on the eight endpoints:

| side | endpoints | `D` values | side of the axis |
|---|---|---|---|
| `a = p_0` | `(2,0)`, `(3,4)` | `−12`, `0` | negative / on |
| `b = p_1` | `(3,4)`, `(−2,0)` | `0`, `−44` | on / negative |
| `A = q_0` | `(4,−4)`, `(−3,1)` | `0`, `−51` | on / negative |
| `B = q_4` | `(2,1)`, `(4,−4)` | `−11`, `0` | negative / on |

All four sides lie in the closed half-plane `8x + y − 28 ≤ 0`. Observation 6
demands `{a, B}` strictly on one side and `{b, A}` strictly on the other. The
axis separates **nothing**. That is four determinant evaluations; you can do it
on paper.

**(e) Why it fails: the cone dichotomy is absent.** AKR Lemma 5's "furthermore"
clause says that for the pair it produces, either `I(a,b) ∈ Cone(A,B)` or
`I(A,B) ∈ Cone(a,b)`, where `Cone(s,t)` is the closed convex cone at `I(s,t)`
spanned by the two rays containing `s` and `t`. Check both:

* `Cone(a,b)` has apex `(3,4)` and rays toward `(2,0)` and `(−2,0)`, i.e.
  directions `(−1,−4)` and `(−5,−4)`. The test point is
  `(4,−4) − (3,4) = (1,−8)`. Cross products:
  `(−1,−4) × (1,−8) = 12 > 0` while `(−1,−4) × (−5,−4) = −16 < 0`, so `(1,−8)`
  is on the far side of the first ray from the second. **Not in the cone.**
* `Cone(A,B)` has apex `(4,−4)` and rays toward `(−3,1)` and `(2,1)`, i.e.
  directions `(−7,5)` and `(−2,5)`. The test point is
  `(3,4) − (4,−4) = (−1,8)`. Cross products:
  `(−7,5) × (−2,5) = −25`, `(−7,5) × (−1,8) = −51`, `(−1,8) × (−2,5) = +11`.
  The last has the wrong sign. **Not in the cone.**

So the pair is **neither hooking nor hooked**.

**(f) Reproduce it in one command** (also run as step 8 of §4.3):

```bash
python3 independent/akr_l7_reproduction/evidence/tools/certificate.py
```

Observed: **0.02 s**. It prints the general-position checks, the `G^D` table, the
association, both cone tests, the four side-signs, and finally
`AXIS PROPERTY HOLDS: False`.

### 5.3 What this refutes, and what it does not

**It refutes:**

1. **Observation 6 exactly as printed**, inside genuine simple polygons, under
   every general-position condition AKR themselves impose. This is a published
   erratum, not a difficulty of interpretation.
2. **The "add the cross non-edges" repair.** Those hold here too. (In fact the
   non-edges are *automatic* whenever `CC(p_i) ≠ CC(p_{i+1})`: if
   `(p_i, q_{j±1}) ∈ E^D` then `p_i — q_{j±1} — p_{i+1}` is a path in `G^D` and
   the two sides are in the same component. Pure connectivity.) The
   indispensable ingredient is the **cone dichotomy**.
3. **Any formalization that asserts Observation 6 for all "associated" pairs in
   the broad sense.**

**It does not refute:**

1. **AKR Lemma 7, or A7-EXT.** `S(e) ⊆ {hooking, hooked}`, and each status *is*
   one disjunct of the dichotomy. A pair for which the dichotomy fails
   contributes nothing to any `S(e)` and can never be a witness. In this very
   configuration, `q_0, q_4` is neither hooking nor hooked, so it is not in
   `A(p_0,p_1)`.
2. **AKR Lemma 5.** Lemma 5 asserts the existence of a *good* pair; it does not
   claim every pair satisfying the edge/non-edge conditions is good.
3. **The use of Observation 6 inside Lemma 7's own proof**, where the dichotomy
   arrives free from the hooking hypothesis. A repaired "Observation 6′" that
   adds the dichotomy as a hypothesis is proved in
   [`a7-independent-proof.md`](a7-independent-proof.md).
4. **Anything about AKR's §10.2 computer check, or the twelve-case body of
   Lemma 7's proof.**

If you want to attack this project via §5, the productive question is not
whether the counterexample is real — check it in ten minutes — but whether the
narrow reading of "associated" that saves the argument is the reading the
published text supports. That is §6.3.

---

## 6. Where I think this is weakest

Blunt, in order of where a reviewer's time is worth most. Note the ordering:
the item with the worst *track record* comes first, not the item that sounds
scariest.

### 6.1 Completeness of the enumeration — the largest weak point

Everything after §2.5 is an exhaustive finite search, and **nothing certifies
that the search was exhaustive.** `Endgame.lean` proves that each of the 225
stored cases dies; it explicitly does not prove that 225 is the right number of
cases. The certificate checker says the same thing in its own last line.

What makes this the top item is not its size but its history. **Three defects
have been found in this area, and two of them were symmetry or bookkeeping
errors that survived review:**

* **K-01.** An enumeration reported `13,484,940` as "the number of 9-edge
  graphs". Its recursion's leaf test checked that every `Q`-side was covered but
  never that the edge budget was exhausted, so it enumerated
  `|E^D| ∈ {7,8,9}`: `5,040 + 476,280 + 13,003,620 = 13,484,940`. Harmless — a
  superset was searched — but the headline number was wrong.
* **K-11 / defect D2.** The intermediate survivor counts (`2,300`, `121` — the
  superseded pipeline reported `3,522`, `64`) depend on which labelled heptagon
  is stored as each class representative. Relabelling carries the survivor set
  bijectively for a fixed *ordered class pair*, so emptiness is invariant but
  the union over classes is not. **Treat every intermediate count in this
  project as an artifact; only the per-ordered-pair emptiness is a claim.**
* **K-16.** The A7 encoder's coverage argument claimed that the four
  Q-adjacency cases form a single orbit, so one representative suffices. True
  for a Q-adjacency in isolation; **false** in combination with a P-adjacency,
  because the relabelling generators act in tandem — the combined types split
  into four orbits, and the one tested was *vacuous* (status `none` imposes no
  constraints, and the base pattern was already UNSAT, so every verdict for that
  orbit was vacuously UNSAT). **This gap had been endorsed as sound by an
  earlier hostile review.** **Closed, with certificates, on 2026-09-14** by
  `independent/akr_l7_reproduction/coverage25/`: all **25** labelled
  (P-type x Q-type) combinations solved with no symmetry reduction,
  `both-hooking` and `both-hooked` UNSAT in all 25, backed by **110 DRAT
  refutations and 15 explicit models, 125/125 re-verified** against CNFs
  re-derived from source and matched by SHA-256. The 25-figure is itself derived
  in exact Z_7 arithmetic (50,176 labelled cases, 0 violations), so it is exact
  rather than a superset. **12 of the 25 are vacuous and the tooling says so** --
  including the legacy `PQ-adj` case, which is the original defect: the one
  combination previously tested was a vacuous one.py` and must not be read as establishing exhaustive
  coverage.

The pattern is clear and worth stating for its own sake: *symmetry reductions
compress the search and are correspondingly easy to get wrong in a way that
leaves the headline number unchanged.* Two independent implementations (Python
and C++17, transposed enumeration axis, different graph keys, different
component and bipartiteness algorithms, SDR-based Černý L2) agree on the
13,003,620 universe, every intermediate count, and the exact 225-triple set with
zero set difference either way — and the universe count is separately confirmed
by a closed form with no enumeration at all. But the two implementations were
written by the same agent, the second having read the first, so this is evidence
against *coding* error and not against a shared misreading.

**The four obligations, which are routinely conflated.** "Completeness of the
enumeration" is not one claim but four, and it is worth keeping them apart when
reading anything in this repository:

1. a hypothetical counterexample produces a graph satisfying the search
   conditions;
2. the abstract search domain has 13,003,620 elements;
3. the search *actually visits* every element of that domain;
4. every valid configuration survives each filter until it reaches a terminal
   case proved impossible.

A correct domain count is **not** a proof that an implementation enumerates the
right set. As of 2026-09-14, `lean/EnumerationDomain.lean` kernel-checks (1) in
full — for an *arbitrary* configuration, not the certificate pair: 40 properly
crossing side pairs forces the mask function into the domain, with axioms
`propext, Quot.sound` and no `Classical.choice`. For (2) it proves both *ends*
(the numeric identity, and the inclusion-exclusion step) but **not** their
composition; the only cardinality fact kernel-checked is that the domain is
non-empty. **(3) and (4) are untouched by anything in Lean** — nothing there
inspects, extracts or certifies any search program. That is the gap.

One question here was raised and closed on 2026-09-14, recorded as **K-17**, and
is worth knowing so you do not re-raise it: `Endgame.graphShapeOK` demands degree
sequence `(2,2,1,1,1,1,1)` on both sides, while the domain also admits
`{3,1,1,1,1,1,1}` — and that branch is genuinely non-empty. This looks like an
unchecked filter and is not one. `graphShapeOK` is a *descriptive* check on the
225 survivors, not a search precondition, and both implementations do enumerate
the degree-3 branch (`reduction.cpp:310-317`, `audit_enum.py:68-69`), where it
dies in the L5/L7/L3 filters.

**Where to spend your time:** re-derive `13,003,620` from the inclusion–exclusion
formula in §2.6 (a five-minute exercise); then either write your own filter
pipeline from §2.7 or attack the classification instead (§6.5). If you
reproduce `13,003,620 → 42,238` independently, that is the single most valuable
contribution available — it is obligation (3), the one nothing currently
certifies.

### 6.2 `S(e) ≠ ∅` — sharper than it looks

The bipartiteness deduction needs **two** things, not one: `A7-EXT` (adjacent
`H`-vertices have disjoint status sets) *and* `S(e) ≠ ∅` for every relevant `e`.
The second is a separate dependency with **no independent verification of any
kind**, and it is machine-checked nowhere.

It requires AKR Lemma 5's existence clause **and** its cone dichotomy **for the
same witness pair**. The existence clause alone is not enough — a broadly
associated pair may be neither hooking nor hooked, which is exactly what §5
exhibits. And the dichotomy is **not a function of `G^D`**: the §5 configuration
satisfies the edge and non-edge conditions and violates the dichotomy. So no
strengthening of any combinatorial filter can supply it. Its only source is AKR
Lemma 5's proof, which is *global* — it uses every side of `Q` and the parity of
`n` — so none of the oriented-matroid work in `independent/akr_l7_reproduction/`
bears on it.

I regard this as the sharpest residual mathematical dependency, and it is easy
to miss because the A7 discussion is louder.

### 6.3 The four geometry-to-model bridges for A7

The A7 evidence is genuinely strong *as a statement about a finite model*:
oriented-matroid (rank-3 chirotope) encodings over the twelve segment endpoints
make "both hooking" and "both hooked" UNSAT while the mixed Figure 6 patterns are
SAT; independently re-encoded from scratch; re-solved with CaDiCaL, Glucose and
MiniSat; 15 DRAT proofs re-verified by a from-scratch checker; a positive control
in which AKR's own Figure 6 satisfies all 64,566 clauses; all 25 case
combinations covered without symmetry reduction; and 0 violations in a direct
exact-arithmetic search over ~57,000 heptagon configurations.

**One gap in the evidence as shipped.** The committed artifact set is the
**20**-instance one (`om_lemma7_results.json` has 20 entries, and `reproduce.sh`
re-verifies those). The K-16 closure — all **25** `(P-type × Q-type)`
combinations with no symmetry reduction — is recorded only as prose
([`a7-specification.md`](a7-specification.md) §9.7), and that document says so
itself: the script was written in a session scratchpad and **is not in the
repository**. So the *fix* for the project's most recently discovered error is,
at present, the part of the A7 evidence a reviewer cannot re-run. It is
described precisely enough to rewrite (parameterize `om_lemma7.build`'s
hard-coded `ident` over the 25 pairs), and doing so would be a genuinely useful
hour.

Four further steps from the certificates to the geometric statement are
**prose**,
each hand-checked and none certified:

1. general position of the ≤ 12 vertices is WLOG (inherited from AKR §9;
   perturbation can change `G^D`);
2. "four distinct components" yields exactly the encoded pair pattern — 24 pair
   requirements, of which those sharing an endpoint carry no expressible
   constraint, leaving 24 / 23 / 23 / 22 explicit crossing predicates in the
   four variants (an earlier revision said "20-pair pattern"; that was wrong);
3. the four cases `generic / P-adj / Q-adj / PQ-adj` exhaust `n = 7`;
4. AKR Lemma 7's quantification matches `A7-EXT`'s existential `S(e)`.

Also: the translation of "segments cross" and "point in cone" into chirotope
conditions is validated by exact random testing, not by proof.

Note also the honest shape of the UNSAT argument: unsatisfiability over a
*superset* of realizable configurations is sound for an impossibility claim, so
under-constraining is safe and only over-constraining would be fatal — which is
why the Figure 6 positive control matters so much. And the non-vacuity evidence
covers the `generic` variant only; no straight-line or OM-realizable witness is
exhibited for any of the adjacency base patterns (soundness unaffected,
confidence reduced).

**Where to spend your time:** bridge (2) or (3). Both are finite claims about
which crossing predicates a "four distinct components" hypothesis forces, and
both are precisely written down in
[`a7-specification.md`](a7-specification.md) §§7–10 — which is what makes them
attackable. Bridge (4) is really the same question as §5.3's closing question.

### 6.4 The stored `avoiding` flag in `Endgame.lean`

`Endgame.lean` is a theorem about a stored certificate: `class_P` and `class_Q`
are **opaque `Nat` labels** with no proved relation to any polygon, and
`pair_kind = "avoiding"` is a **stored Boolean copied out of the JSON**. Lean
recomputes only the necessary combinatorial part — the two indices are `< 7`,
distinct, and not cyclically consecutive. **A record whose flag was wrong would
pass every theorem in the file.**

This is a small, bounded, entirely checkable gap, and it is the cheapest real
thing a reviewer could close: recompute, from the 14-class profile table, that
each certificate's stored `(class, pairI, pairJ)` really is an avoiding pair of
that class. The project names this interface `I3` in
[`../lean/README.md`](../lean/README.md), together with `I5` (the formalized
counterpart of the enumeration, i.e. §6.1) — and those two are where the Lean
development stops being about a file and starts being about a configuration.

To Lean's credit, one thing it does *not* trust is component separation: the
certificate's stored `components_P` array is ignored, and the kernel recomputes
the separation via a separator argument. That is the right pattern; the
`avoiding` flag is where it was not applied.

### 6.5 The classification, and the strict-vs-loose reading

Two things here.

**The reading of "uncrossable".** The strict form `(★★)` quantifies over lines
that avoid `V(P)`; the loose form says "no line at all meets all four closed
sides". Over the 6,342 simple heptagons these give **16** versus **2,268**
exceptional objects — a factor of 140, and the whole search is infeasible under
the loose reading. The strict reading is justified because Lemma A is only ever
instantiated at lines `ℓ(q_j)`, and general position forces those to contain no
vertex of `P`. This is correct but it is *exactly* the kind of quantifier
placement that is easy to get wrong, and an early draft of the project did get
it wrong. It is now machine-checked in `SegmentGeometry.lean`. Check the
justification rather than the computation.

**Lemma A's hypothesis `h1`.** `LemmaA.lean` proves the counting as an
*implication*; `h2` (each `p ∉ S` misses some `q_j`) is now proved from
geometry, but `h1` — that each `ℓ(q_j)` misses some member of `S`, i.e. the
step from `(★★)` to actual disjointness — remains prose, discharged in Lean only
for the one explicit certificate pair. It is also where the point-set/orientation
distinction lives.

### 6.6 Point-set semantics

Everything Lean proves is at the level of **orientation predicates on integer
coordinates**. "No proper crossing" is not literally "the closed segments are
disjoint in `ℝ²`"; the orientation-level simplicity data is not literally "the
closed polygonal curve is a Jordan curve". These steps are standard, and I would
be surprised if any of them were false. But they are real work, and none of them
is formalized — so the Lean claims are narrower than their file names suggest.

### 6.7 Where *not* to spend your time

* **Re-deriving the DRAT certificates.** They re-verify, with a from-scratch
  checker validated on positive and negative controls. If A7 is wrong, it is
  wrong at a bridge (§6.3), not at the solver.
* **The lower bound.** It is exact, tiny, and kernel-checked.
* **Černý Lemma 3.** Shown redundant; not a dependency.
* **The `I = 42` branch.** It is short, hand-checkable (§2.8), routed around the
  contested import, and swept exhaustively over all 5,040 perfect matchings on
  two independent profile reconstructions.

### 6.8 Highest value per hour, if you only have a few

1. **Ten minutes:** verify §5 by hand. Four determinants. It is a published
   erratum either way.
2. **One hour:** re-derive `13,003,620` from the inclusion–exclusion formula of
   §2.6, independently of any code (§6.1). Still worth your time as an
   *independent* check — but note that since 2026-09-14 Lean also proves it:
   `DomainCount.domainFinset_card : domainFinset.card = 13003620`, where the
   `C(7,j)` falls out of regrouping rather than being asserted.
3. ~~**One hour:** recompute the stored `avoiding` flags from the 14-class
   profile table (§6.4).~~ **Done 2026-09-14** — `lean/AvoidingFlag.lean` proves
   by `decide` that all 225 stored flags *equal* the class-table predicate (an
   equality, so the `false` case is checked too), with the table generated from
   the JSON. What remains there is the *geometric* half: that the classification
   is correct (E7) and what "avoiding" means about actual polygons, which the
   development still does not define.
4. **One hour:** re-run the 25-case symmetry-free enumeration and re-check its
   certificates yourself — `coverage25/verify_all.py`, stdlib-only, ~3 min, no
   solver and no trust in ours (§6.3). Better still, re-derive the 25-figure
   independently from `coverage25/completeness.py`'s argument.
5. **An afternoon, highest value of all:** read
   [`a7-specification.md`](a7-specification.md) §§4–6 and tell the project
   whether the narrow reading of "associated" is what AKR's published text
   means, and whether Lemma 5's clause (L5c) attaches to the pair (L5a)
   produces. That single judgement settles both §6.2 and most of §6.3.

### 6.9 A remark on process, stated plainly

Essentially all of the code, the Lean, the audits and the documentation here
were produced with LLM assistance. Several substantive errors were introduced
that way — and several were found and fixed by the project's own checking
mechanisms (K-01, K-10, K-11, K-16, the `autoImplicit` defect that made two Lean
theorems silently vacuous, the raw component-ID comparison). That is evidence
about process quality in both directions, and it should be read as such: the
mechanisms work, *and* the errors were the kind that pass a careless read. It is
also why the standing status is "candidate", why the defect list is kept rather
than quietly repaired, and why the top item in this section is the one with the
worst track record rather than the one that sounds worst.

---

## 7. How to say "this is wrong"

Concretely. In each case, the artifact to attack and what a refutation looks
like.

| # | Claim | Where | A counterexample is… |
|---|---|---|---|
| 1 | `f(7,7) ≥ 38` | `data/lower_bound/lower_bound_38.json`, `lean/LowerBound.lean` | a demonstration that the stored pair is not simple, not in general position, or does not have 38 crossings. Fully exact and finite — this either is or is not true. |
| 2 | Lemma A | §2.4; `lean/LemmaA.lean` | a simple heptagon `P`, a 4-set `S` satisfying `(★★)`, and a `Q` with `|E^D| < 10`. Or a flaw in the disjointness of the two edge families. |
| 3 | "16 exceptional heptagons / 14 classes" | `data/exceptional_profiles/exceptional_profiles_14.json`; `python/classification/` | a simple heptagon, given by 7 integer points, with **no** uncrossable 4-set whose order type is not in the table — or one *in* the table that does have an uncrossable 4-set, witnessed by a rational line. |
| 4 | "13,003,620 candidate graphs", and the filter counts | §2.6–2.7; `python/elimination/audit_enum.py`; `independent/implementation_b/` | a 9-edge bipartite graph on `7+7` with `δ ≥ 1` that the enumeration misses; or a graph the pipeline discards for which the cited lemma does not in fact apply. |
| 5 | **Completeness of the 225-case list** | `data/certificates/final_elimination_225.json` | a `(class_P, class_Q, G)` triple surviving every filter and absent from the certificate. **This is the most valuable single refutation available.** |
| 6 | Each of the 225 dies by AKR L5 | `lean/Endgame.lean`; `python/validation/check_final_certificate.py` | a certificate record for which (L5) actually holds. Kernel-checked, so this would be a Lean bug — but see #7. |
| 7 | The stored `avoiding` flag | `lean/EndgameData.lean`; `data/certificates/final_elimination_225.json` | a record whose `(class, pairI, pairJ)` is **not** an avoiding pair of that class. This would break the endgame without breaking any Lean theorem. |
| 8 | `A7-EXT` | §3.5; [`a7-specification.md`](a7-specification.md) §5 | two consecutive `P`-pairs sharing no side, in four distinct components, with associated `Q`-pairs (edges **and** cone dichotomy) witnessing the **same** status. Twelve points suffice. |
| 9 | The four A7 bridges | [`a7-specification.md`](a7-specification.md) §§8–10 | a geometric configuration whose induced pattern is not among the encoded ones; or a `n = 7` case outside `generic / P-adj / Q-adj / PQ-adj`. |
| 10 | `S(e) ≠ ∅` | [`a7-specification.md`](a7-specification.md) §6 | a relevant `e ∈ V(H)` with no associated pair carrying either status. This would need a reading of AKR Lemma 5 under which (L5c) does not attach to the pair (L5a) produces. |
| 11 | The narrow reading of "associated" | §5.3; [`known-issues.md`](known-issues.md) K-14 | an argument that AKR's published text means the *broad* reading — in which case §5's counterexample becomes load-bearing against the project, not just against Observation 6. |

**Anything at all — including "I read §2 and the reductio does not close".** The
project's standing position is that this is a *candidate* proof requiring
independent expert review; a reviewer who finds a gap is doing exactly what the
repository exists for.

Two secondary observations that are also worth an expert eye, both about the
published papers rather than this project:

* AKR §10.2's `158,830` is a **nine**-element count (abstract order types on 9
  points), not eight. Benign: `x`-monotone PSLAs of 8 pseudolines correspond to
  abstract order types on 9 points, the ninth element being the line at
  infinity, so a complete but redundant superset was enumerated.
* AKR §10.2's `840 = 8!/48` quotients by `Aut` of the disjointness graph alone
  (`≅ Q_3`, order 48), a group that does not preserve which pairs are
  consecutive. The configuration stabilizer has order 16, giving
  `8!/16 = 2520 = 3 × 840` (reproduced by brute force over `S_8`).

Neither affects AKR's conclusion; both are fair questions for the authors.

---

## Where to go next

| you want | read |
|---|---|
| the authoritative status of any single claim | [`verification-status.md`](verification-status.md) |
| the full dependency manifest, with a trust DAG | [`../paper/proof-manifest.tex`](../paper/proof-manifest.tex) |
| every open gap, numbered | [`known-issues.md`](known-issues.md) |
| the one open mathematical review item, standalone, ~3 pages | [`akr-l7-human-review.md`](akr-l7-human-review.md) |
| the precise A7 specification and bridge audit | [`a7-specification.md`](a7-specification.md) |
| the A7 verdict and the Observation 6 erratum | [`a7-independent-resolution.md`](a7-independent-resolution.md) |
| what is and is not in Lean, per file, with axioms | [`../lean/README.md`](../lean/README.md) |
| reproduction tiers and timings | [`computational-method.md`](computational-method.md) |
| risks ranked, and the next formalization milestone | [`roadmap.md`](roadmap.md) |
| how this work was produced | [`ai-disclosure.md`](ai-disclosure.md) |
