# Independent scrutiny of AKR's own computer verification of Lemma 7

**Author:** Subagent B (independent track). **Date:** 2026-09-13.

**Scope.** Everything in this directory is independent of the rest of this
repository. No code, data, or definition was taken from
`python/elimination/audit_enum.py`, `independent/implementation_b/reduction.cpp`,
or any other project artefact. The only inputs are the two AKR papers in
`references/` and published enumeration counts, cited below.

**Primary source.** M. Ackerman, B. Keszegh, G. Rote, *An Almost Optimal Bound on
the Number of Intersections of Two Simple Polygons*, Discrete & Computational
Geometry **68** (2022) 1049–1077 — `references/akr-dcg-2022.pdf`. Section 10.2
"Computer-Supported Proofs" is on PDF page 28. The SoCG 2020 version
(`references/akr-socg-2020.pdf`) has **no** computer-verification section
(checked: no occurrence of "enumerat", "158830", "840").

---

> **Reproducing this.** Run `./reproduce.sh` (about 5 minutes, no SAT solver
> required). It re-checks 15 DRAT refutation certificates, validates the
> checker against pigeonhole positives and deliberate negative controls,
> verifies models for the 5 satisfiable instances, and re-runs the Fig. 6
> positive control, the Observation 6 certificate and the n = 7 coverage
> argument. See **[REPRODUCE.md](REPRODUCE.md)** for prerequisites, the
> per-certificate table and known gaps.

---

## 0. Executive summary

**Positive.**

> **CORRECTION (hostile review, 2026-09-13).** Item 1 below is **wrong in its
> conclusion**. The non-edge argument is correct, but the risk item must stay
> OPEN: a counterexample to Observation 6 was subsequently built inside genuine
> simple polygons under full general position (triangle `(2,0),(3,4),(-2,0)` and
> pentagon `(4,-4),(-3,1),(0,-1),(3,3),(2,1)`), in which all four edge/non-edge
> conditions hold and the Axis Property still fails. The essential ingredient is
> the **cone dichotomy**, not the non-edges. Item 5 is also **overstated**:
> `158830` is a mislabeling with no consequence for AKR's result, not a
> mathematical error. The stated reason for item 1 — "because `G^D` is
> bipartite" — is wrong; it follows from connectivity alone. See
> [`../../docs/a7-independent-resolution.md`](../../docs/a7-independent-resolution.md).

1. **The "broad vs narrow associated" worry is vacuous.** Wherever "associated"
   is defined at all (`CC(p_i) ≠ CC(p_{i+1})`), the two cross non-edges of
   Lemma 5 are *automatic*, because `G^D` is bipartite. Broad-associated ⟹
   narrow-associated, always. This is a three-line argument, not a computation.
   The project's putative counterexample to Observation 6 is not an instance of
   the definition. **§2.**
2. **AKR's §10.2 does check the quantification A7-EXT needs** — a free choice of
   associated pair for each of the two consecutive pairs — not merely the
   witnesses their human proof selects. **§3.1.**
3. **Lemma 7 / A7-EXT was independently verified here**, by a method AKR did not
   use: oriented-matroid (rank-3 chirotope) unsatisfiability over the twelve
   segment endpoints. Both-hooking and both-hooked are **UNSAT**, while the
   mixed (Fig. 6) patterns are **SAT**. The verification is *stronger* than
   AKR's in three ways: it is at the oriented-matroid level (so it covers
   non-stretchable configurations too); it needs **no** appeal to Lemma 5 to
   discard configurations; and it covers the adjacency cases AKR's described
   filter excludes. **§6.2, §6.5.**
4. **The cyclic-distance-2 gap in AKR's computation is closed here.** AKR's
   filter treats `p_i ∩ p_j ≠ ∅` as forbidden, which excludes `j = i±2` — cases
   this project's graph `H` uses. In those cases the present verification shows
   something stronger: **no** configuration in which both associated pairs
   conform to Lemma 5 exists at all. **§3.3, §6.5.**

**Negative.**

5. **Two of AKR's four published numbers do not check out.** `158830` is the
   count for **nine** elements, not eight (eight gives 135 / 3315 / 1232944);
   and `840 = 8!/48` uses a group of order 48 that does **not** preserve the
   configuration — the correct number of assignment classes is `8!/16 = 2520`,
   exactly three times larger. **§4.**
6. AKR's counts of **14** realisable configurations and **13** exclusions were
   **not** reproduced; a complete enumeration was out of reach here. **§5.**

---

## 1. What §10.2 says, verbatim

> "We have independently confirmed Lemma 7 concerning the intersection structure
> of pairs of associated pairs of sides, which is our principal workhorse, by a
> computer enumeration.
>
> Lemma 7 involves eight polygon sides. Thus, we enumerated all 158830
> arrangements of eight lines. Actually, we enumerated pseudoline arrangements,
> but it is known that all pseudoline arrangements with less than nine lines are
> stretchable to line arrangements. For each arrangement, we tried all possible
> ways of assigning the sides p_i, p_{i+1}, p_j, p_{j+1} and q_{i′}, q_{i′±1},
> q_{j′}, q_{j′±1} (in the notation of Lemma 7) to these lines. Since there are
> symmetries in the configuration of the eight sides, we did not have to try all
> 8! = 40320 assignments, but only 840. Once this assignment is given, we know
> where the vertices between consecutive sides, like p_i, p_{i+1}, are in the
> arrangement. This specifies one endpoint of each side. It is then easy to check
> whether it is possible to realize the required intersection pattern of a
> perfect matching among the eight involved sides. We first took into account the
> required intersections among the sides, for example, between p_i and q_{j′}. On
> each line, these required intersection points must lie on one side of the
> vertex that we already know. If this is the case, we get a minimum range on the
> line that the side must cover. We then check if all forbidden intersections
> (for example, between p_i and q_{i′}, or between p_i and p_j) are avoided.
> After a few days of computing (and several weeks of programming), the result
> was that there were, up to isomorphism, 14 configurations with the required
> intersection pattern. In 13 of them, some associated pair did not conform to
> the hooking/hooked pattern of Lemma 5. The remaining configuration is the one
> in Fig. 6."

**The statement actually checked is:** *there is no realisation, by eight
segments lying on eight lines in general position, of the required intersection
pattern in which both P-pairs are hooking (or both hooked) and in which both
associated pairs conform to Lemma 5's hooking/hooked dichotomy.*

### 1.1 The "required intersection pattern", reconstructed

Rename as AKR do: `a = p_i`, `b = p_{i+1}`, `a' = p_j`, `b' = p_{j+1}` (sides of
`P`), `A = q_{i′}`, `B = q_{i′±1}`, `A' = q_{j′}`, `B' = q_{j′±1}` (sides of `Q`).

* four pairs **share a vertex**: `(a,b)`, `(a',b')`, `(A,B)`, `(A',B')`;
* four **`E^D` edges** (must be disjoint): `a–A`, `b–B`, `a'–A'`, `b'–B'`;
* the other twelve P–Q pairs must **cross** — forced, because the four
  components are distinct and `G^D` is bipartite, so sides in different
  components may not be disjoint. AKR state exactly this (p. 8): *"every side of
  P intersects every side of Q among the eight involved sides, except when their
  names differ only in their capitalization."*
* `a,b` must be **disjoint** from `a',b'`, and `A,B` from `A',B'` — non-adjacent
  sides of a simple polygon.

This reconstruction is pinned down by AKR's own two examples: their "required"
example is `p_i` vs `q_{j′}` (= `a` vs `A'`, cross); their "forbidden" examples
are `p_i` vs `q_{i′}` (= `a` vs `A`) and `p_i` vs `p_j` (= `a` vs `a'`). It is
implemented in `arr8.py:build_pattern` and `om_lemma7.py` (predicate P4).

---

## 2. Broad vs narrow "associated" — the distinction is VACUOUS

AKR's printed definition (§4) asks only for the two `E^D` edges:

> "Then by Lemma 5 there are sides `q_j, q_{j±1}` of `Q` such that
> `(p_i,q_j),(p_{i+1},q_{j±1}) ∈ E^D`. We say that such a pair `q_j,q_{j±1}` is
> **associated** to `p_i,p_{i+1}`."

Lemma 5 delivers more: also `(p_i,q_{j±1}), (p_{i+1},q_j) ∉ E^D`. The project
(`docs/akr-l7-human-review.md`) treats the gap between the two readings as a
risk, and its draft letter to the authors asks about it.

**It is not a risk.** `G^D` is *bipartite* with
`E^D = {(p_i,q_j) : p_i ∩ q_j = ∅}` (AKR p. 5), and "associated" is only defined
under the standing hypothesis `CC(p_i) ≠ CC(p_{i+1})`. Then:

```
(p_i, q_j) ∈ E^D          ⟹ CC(q_j)     = CC(p_i)
(p_{i+1}, q_{j±1}) ∈ E^D  ⟹ CC(q_{j±1}) = CC(p_{i+1})
if also (p_i, q_{j±1}) ∈ E^D  then  CC(p_i) = CC(q_{j±1}) = CC(p_{i+1}),
                                    contradicting the hypothesis.
```

Symmetrically for `(p_{i+1}, q_j)`. **The two cross non-edges are automatic**, so
broad-associated ≡ narrow-associated wherever the notion applies.

The project's putative counterexample to Observation 6 under the broad reading
(`docs/akr-l7-human-review.md` §B.2, repeated in its draft letter:
`a=[(0,0),(1,0)]`, `b=[(0,0),(0,1)]`, `A=[(1,-1),(2,-1)]`, `B=[(1,-1),(1,-2)]`)
has `a ∩ B = ∅` **and** `b ∩ A = ∅`, hence `CC(a) = CC(B) = CC(b)`. So
`CC(a) = CC(b)` in that configuration and `A,B` is not "associated" to `a,b`
under any reading — the definition never applies. **This risk item can be closed,
and the draft letter should not be sent in its present form**; §4 supplies two
far more pointed questions for the authors.

### 2.1 What "did not conform to the hooking/hooked pattern of Lemma 5" means

Since the non-edges are automatic, the 13 excluded configurations cannot be
excluded on that ground. What Lemma 5 additionally supplies is the **cone
dichotomy** — `I(q_j,q_{j±1}) ∈ Cone(p_i,p_{i+1})` or `I(p_i,p_{i+1}) ∈
Cone(q_j,q_{j±1})`, i.e. the pair is hooking or hooked. That dichotomy is
**global**: its proof needs *every* side of `Q` to meet `p_a` or `p_b`, and the
parity argument of Proposition 4 over the whole odd polygon `Q`. Eight sides in
isolation carry none of that, so a locally realisable associated pair can be
**neither hooking nor hooked**. That is what the 13 configurations are, and
discarding them by appeal to Lemma 5 is legitimate.

This is confirmed experimentally here: in `arr8.py`'s straight-line search the
great majority of local realisations contain a pair that is "neither", and the
**Axis Property (Observation 6) fails on exactly the non-conforming pairs and
holds on exactly the conforming ones** — a striking consistency with AKR's
narrative, obtained without reading it into the code (see `RESULTS.md` §1).

---

## 3. Does §10.2 verify the project's A7-EXT?

**A7-EXT** as this project states it: for two consecutive pairs `e, e'` whose
four sides lie in four distinct components, the status sets
`S(e) = {hooking : ∃ associated α, I(α) ∈ Cone(e)} ∪ {hooked : ∃ α, I(e) ∈ Cone(α)}`
satisfy `S(e) ∩ S(e') = ∅`.

### 3.1 The quantification is right

AKR's enumeration ranges over an *arbitrary* choice of associated pair for each
of the two P-pairs: the eight sides assigned to the eight lines include
`q_{i′},q_{i′±1}` and `q_{j′},q_{j′±1}` as free parameters. The enumeration
therefore sweeps all quadruples (pair₁, witness₁, pair₂, witness₂), and "both
hooking" means "hooking *as witnessed by the enumerated pair*" — exactly the
existential reading A7-EXT needs. **So §10.2, if complete, does support A7-EXT,
and does not merely re-check the witnesses the human proof selects.**

The eight sides are automatically distinct: `A ∈ CC(a)`, `B ∈ CC(b)`,
`A' ∈ CC(a')`, `B' ∈ CC(b')` lie in four distinct components, so no two Q-sides
coincide. There is no "overlapping witnesses" case.

### 3.2 The enumeration is not self-contained

Excluding 13 of the 14 configurations is by appeal to Lemma 5. So §10.2 verifies
"**Lemma 5 ⟹ Lemma 7**", not Lemma 7 outright, and Lemma 5's own proof
(Proposition 4 + the graph `G₀`) is machine-checked nowhere. Worth recording;
not a defect. (The verification in §6.2 below does *not* need this step.)

### 3.3 GAP in AKR's coverage: the cyclic-distance-2 case

AKR list "**between `p_i` and `p_j`**" among the *forbidden intersections*.
Lemma 7's hypothesis does **not** require the two consecutive pairs to be
non-adjacent. For `n = 7`, `(p_i,p_{i+1})` and `(p_j,p_{j+1})` with `j = i+2`
share no side and can lie in four distinct components, yet `p_{i+1}` and
`p_j = p_{i+2}` are **adjacent sides of `P`, hence intersect**. Such a
configuration is rejected by the filter as described, so it is not among AKR's
14. Same for `j = i+5` (equivalently `i = j+2`), which is the mirror image.

This matters: this project's graph `H` joins `i ∼ k` iff
`(k−i) mod 7 ∉ {0,1,6}`, i.e. cyclic distances **2, 3, 4 and 5** are all
`H`-edges, and 2 and 5 are precisely the adjacent cases. AKR's *human* proof is
not restricted this way — its set-up constrains only the P–Q pairs — so the
human proof plausibly covers them; but §10.2 confirms strictly less than Lemma 7
states.

**This gap is closed here** by the `P-adj` variant of `om_lemma7.py`: see §6.5.

### 3.4 Residual caveat

Even a complete §10.2 verifies a statement about *eight segments in isolation*;
it cannot see that they come from two simple **odd** polygons. That direction of
relaxation is safe for a non-existence claim (a superset is enumerated), so it is
not a gap — but the 13 exclusions show the relaxation is genuinely loose.

---

## 4. The published numbers

Run `python3 symmetry.py` for §4.2; the counts in §4.1 are from the literature.

### 4.1 `158830` is a NINE-element count, not eight

Felsner & Goodman, *Pseudoline Arrangements*, Handbook of Discrete and
Computational Geometry, **Table 5.6.1** (columns `n = 3 … 11`):

| row | 3 | 4 | 5 | 6 | 7 | **8** | **9** | 10 | 11 |
|---|---|---|---|---|---|---|---|---|---|
| Simple arr's of `n` lines | 1 | 1 | 1 | 4 | 11 | **135** | 4381 | 312114 | 41693377 |
| Simple arr's of `n` p'lines | 1 | 1 | 1 | 4 | 11 | **135** | 4382 | 312356 | 41848591 |
| Simple Eucl. arr's of `n` p'lines | 2 | 8 | 62 | 908 | 24698 | **1232944** | 112018190 | … | … |
| Simple Eucl. config's (order types) | 1 | 2 | 3 | 16 | 135 | **3315** | 158817 | 14309547 | 2334512907 |
| Simple Eucl. gen'd config's (abstract order types) | 1 | 2 | 3 | 16 | 135 | **3315** | **158830** | 14320182 | 2343203071 |

Cross-checked against OEIS **A006247** ("simple arrangements of `n` pseudolines
in the projective plane with a marked cell" = "nonisomorphic nondegenerate
acyclic rank-3 oriented matroids on `n` elements"): 1, 1, 1, 2, 3, 16, 135, 3315,
**158830**, 14320182, …, offset 1.

So:

* `158830` = abstract order types of **nine** points = simple arrangements of
  **nine** pseudolines with a marked cell.
* For **eight** lines the counts are **135** (projective, unmarked — identical
  for lines and pseudolines, which is exactly why *"all pseudoline arrangements
  with less than nine lines are stretchable"* is a correct remark), **3315**
  (with a marked cell, i.e. Euclidean), or **1232944** labelled Euclidean.
* `158830 = 2·5·7·2269` with 2269 prime, so it is not `135 × k` or `3315 × k`
  either.
* `158830 − 158817 = 13`: exactly 13 of the 158830 nine-point abstract order
  types are **not** realisable. So if 158830 really is the enumerated set, the
  stretchability remark is false *for that set*.

**Assessment.** The sentence *"we enumerated all 158830 arrangements of eight
lines … all pseudoline arrangements with less than nine lines are stretchable"*
is internally inconsistent: the number belongs to nine elements, the
stretchability remark to eight. The most likely benign reading is that a ninth
pseudoline (a line at infinity) was added to make the arrangement Euclidean, so
that the enumerated set is the 158830 nine-element abstract order types — which
would be a *superset* of what is needed, and harmless, though it would make the
stretchability sentence inapplicable (and unnecessary, since AKR elsewhere say
the verification "uses none of the properties of straight lines"). **This cannot
be decided from the paper.** A documentation defect at minimum. *This is
question 1 for the authors.*

### 4.2 `840` over-quotients by exactly a factor of 3

`8!/840 = 48`. Computed by brute force over `S₈` in `symmetry.py`:

* The **disjointness graph on the eight sides** — the 12 pairs required to be
  disjoint (four `E^D` edges, four intra-`P`, four intra-`Q`) — is **isomorphic
  to the 3-cube `Q₃`**, and `|Aut(Q₃)| = 48`, so `8!/48 = 840`. This is
  certainly where AKR's 840 comes from.
* But the configuration also records **which four pairs share a vertex**. The
  group preserving *both* the disjointness relation *and* the shared-vertex
  matching has order exactly **16**, giving `8!/16 = 2520` classes.
* The shared-vertex matching has an orbit of size exactly **3** under `Aut(Q₃)`
  — the three matchings being `{ab, a'b', AB, A'B'}`,
  `{A a', A' a, B b', B' b}`, `{A b', A' b, B a', B' a}` — and `2520 = 3 × 840`.

**Assessment.** Unless AKR ran a two-stage scheme (840 disjointness classes, each
× 3 choices of which pairs are consecutive), the stated reduction quotients by a
group that is *not* a symmetry of the problem, and the enumeration would miss two
thirds of the assignment classes. A concrete, reproducible arithmetic
discrepancy. `arr8.py` deliberately uses 2520. *This is question 2 for the
authors.*

### 4.3 `14` and `13`

Not independently checkable without a complete enumeration; see §5.

---

## 5. Feasibility of a full reproduction — honest assessment

**A complete reproduction is not the multi-day computation AKR describe**, but it
was still out of reach here, for a mundane reason.

* The object is small: 135 simple arrangements of 8 pseudolines (projective),
  3315 with a marked cell, 1 232 944 labelled Euclidean. At 2520 assignment
  classes each, `3315 × 2520 ≈ 8.4 × 10⁶` checks of a few hundred integer sign
  tests apiece — **seconds to minutes**. `arr8.py` sustains ~50 000 such checks
  per second in pure Python. Even AKR's own stated set size,
  `158830 × 840 ≈ 1.3 × 10⁸`, is hours in Python and minutes in C.
* The hard part is an **isomorph-free generator** for the arrangements. The
  repository contains only `data/order_types/order_types_7.json`; no 8-point
  order-type database is present and none could be downloaded in this
  environment. Writing a correct isomorph-free generator for simple arrangements
  of 8 pseudolines (commutation classes of reduced words for `w₀ ∈ S₈`,
  1 232 944 of them) from scratch is substantial and error-prone work, and an
  *incorrect* one would produce a confident but worthless "verified".
* **Decision: do not attempt it.** No multi-hour run was started. Task 3 was
  pursued instead — and the oriented-matroid route in §6.2 turned out to settle
  the mathematical question outright, which a re-enumeration would not have done
  any better.

---

## 6. What was actually run

All programs use **exact integer or rational arithmetic, or pure Boolean
reasoning**. Floating point appears in exactly one place — the heuristic
annealer in `realize_search.py` — and its output is never used as evidence.

### 6.1 `arr8.py` — independent re-implementation of AKR's method

AKR's recipe, literally: eight lines → assignment → the apexes are the
arrangement vertices between consecutive sides → each side's direction is forced
by requiring its three required crossings to lie on one side of its apex →
minimal extent = up to the farthest required crossing → a forbidden pair is
avoided iff its crossing point lies outside at least one of the two minimal
ranges. Lines have integer coefficients; intersection points are integer
homogeneous triples with `w > 0`; every comparison is an integer sign test.

*Difference from AKR:* arrangements are **randomly sampled**, not enumerated.
This search can find configurations; it cannot prove none exists.

Also computed for every realisation, which AKR do not report: the four cone
relations (giving each associated pair a status in
`{hooking, hooked, both, neither}`), and the **Axis Property** (Observation 6)
for each associated pair.

Companions: `hunt.py` (line coefficients drawn on a log scale, to reach the
extremely elongated arrangements AKR's Fig. 6 is drawn as — zooming into the
figure, two of the blue P-sides pass within a hair of each other without
crossing) and `perturb_hunt.py` (hill climbing on line coefficients).

### 6.2 `om_lemma7.py` — oriented-matroid unsatisfiability (the decisive experiment)

A completely different attack. The twelve segment endpoints (`v1,a2,b2`,
`v2,a'2,b'2`, `v3,A2,B2`, `v4,A'2,B'2`) are treated as an abstract rank-3
chirotope; crossing and cone membership are Boolean functions of the chirotope;
z3 is asked for a model. AKR's own general-position assumption (p. 5: *"no three
vertices of `P` and `Q` combined lie on a line"*) licenses a uniform chirotope,
and all twelve points are polygon vertices.

**Every encoded predicate** (documented in the file, P1–P7):

| | predicate | meaning |
|---|---|---|
| P1 | `X[i<j<k]` | `χ(i,j,k) = +`; general position (uniform rank-3 chirotope). `χ` of a permuted triple = `X` xor permutation parity. |
| P2 | 3-term Grassmann–Plücker | for all 5 points, `T1 = χ(abc)χ(ade)`, `T2 = −χ(abd)χ(ace)`, `T3 = χ(abe)χ(acd)` are not all equal. `5·C(12,5) = 3960` axioms. |
| P7 | **acyclicity** | for every 4-subset, the circuit signs `(χ(jkl), −χ(ikl), χ(ijl), −χ(ijk))` are not all equal. Necessary for real points because those coefficients sum to zero. `C(12,4) = 495` axioms. |
| P3 | `CROSS(s,t)` | `χ(p,q,r) ≠ χ(p,q,w) ∧ χ(r,w,p) ≠ χ(r,w,q)`; under general position this is exactly "the two segments intersect". |
| P4 | the pattern | §1.1. |
| P5 | `IN_CONE(x; v,s2,t2)` | `χ(v,s2,x) = χ(v,s2,t2) ∧ χ(v,t2,x) = χ(v,t2,s2)`; the convex cone at `v` spanned by the rays through `s2` and `t2`, which is AKR's `Cone`. |
| P6 | hooking / hooked | `hooking(a,b) := IN_CONE(v3; v1,a2,b2)` (= `I(A,B) ∈ Cone(a,b)`); `hooked(a,b) := IN_CONE(v1; v3,A2,B2)` (= `I(a,b) ∈ Cone(A,B)`). |

**P7 was missing from the first version of this encoding, and the controls caught
it.** Without acyclicity the model admits *cyclic* oriented matroids, in which
"segment" and "cone" have no affine meaning; every query came out `sat`, and the
control "all three pairings of four points cross" — geometrically impossible —
also came out `sat`. Adding P7 fixed all four controls. This is recorded because
it is the one place where a wrong answer was produced and then detected.

**Validation of the encoding** (all exact, all rerunnable):

* `validate_encoding.py` — 40 random integer 12-point sets: **158 400** GP-axiom
  instances, **19 800** acyclicity instances, **59 400** `CROSS` comparisons and
  **237 600** `IN_CONE` comparisons against direct exact geometry (Cramer's
  rule): **0 violations, 0 mismatches**. This establishes that every asserted
  constraint is *necessary* — which is what makes `unsat` a proof.
* `validate_axioms.py` — brute force over all `2^C(n,3)` sign assignments for
  `n = 3..6`; reorientation/relabelling classes come out **1, 1, 1, 4**, matching
  the published "Simple arr's of `n` p'lines" row exactly. The axiom set is
  therefore neither too weak nor too strong.
* `om_control.py` — four controls, all passing: "all three pairings of four
  points cross" → `unsat`; "exactly one pairing crosses" → `sat`; **AKR's
  Observation 3** (a segment with an endpoint inside `Cone(s,s′)` and not through
  the apex cannot cross both `s` and `s′`) → its negation is `unsat`, i.e.
  Observation 3 is machine-verified here as a by-product; the compatible variant
  → `sat`.
* `export_cnf.py` — every query is exported to DIMACS in `cnf/`, and each file is
  re-checked through z3's **DIMACS front end** (a different code path from the
  Python API). All 20 verdicts agree. `cnf/INDEX.txt` records sizes and SHA-256
  hashes, so **any third-party SAT solver can re-check these results**; an
  `unsat` here is re-verifiable without trusting this code at all.

> **SUPERSEDED (2026-09-14) — see `coverage25/` and `REPRODUCE.md` §6.**
> The orbit step below is **wrong**, and is kept only as the record of what was
> claimed. It is valid for a `Q`-adjacency *in isolation* — that much is
> reconfirmed by `coverage25/completeness.py` — but **not** in combination with a
> `P`-adjacency: the relabelling generators act in tandem, so the combined
> `(P-type, Q-type)` classes split into **5** orbits, not 1. Worse, the single
> `PQ-adj` representative actually tested is **vacuous** (its `none` instance is
> UNSAT, so every verdict for it carried no information). The four-variant split
> `generic / P-adj / Q-adj / PQ-adj` therefore does **not** exhaust `n = 7`.
> The replacement solves **all 25** labelled combinations with no symmetry
> reduction — `both-hooking` and `both-hooked` UNSAT in all 25, backed by 110
> DRAT refutations and 15 models, all re-verified. See `known-issues.md` K-16.

**Variants and completeness of the case split.** `coverage.py` enumerates, for
`n = 7`, every value of `d = (j−i) mod 7 ∈ {2,3,4,5}` (the two pairs must share
no side) and computes which of the six P-endpoints coincide:

| `d` | coincidence | variant |
|---|---|---|
| 2 | `b2 = a'2` (`p_{i+1}`, `p_{i+2}` adjacent) | `P-adj` |
| 3 | none | `generic` |
| 4 | none | `generic` |
| 5 | `a2 = b'2` (`p_{j+1}`, `p_i` adjacent) | `P-adj`, via the `a↔b, a'↔b'` automorphism |

and checks that the four possible adjacencies between the two associated pairs of
`Q` (`A–A'`, `A–B'`, `B–A'`, `B–B'`) form a **single orbit** under the order-16
automorphism group, so one representative suffices. Hence
`generic`, `P-adj`, `Q-adj`, `PQ-adj` **exhaust all cases for `n = 7`**.

**That last sentence is false.** See the banner above; the exhaustive
replacement is `coverage25/`.

### 6.3 `realize_search.py`, `om_realize.py` — failed realisability engines

Two engines, **both of which failed their own positive controls, so their
negative results are worthless**; kept only so the failure is on the record:

* z3 nonlinear real arithmetic over 24 coordinates returned `unknown` on the
  *known-realisable* `mixed-1` (Fig. 6) control after 10 minutes;
* the coordinate-wise exact-LP realiser could not recover even a chirotope *taken
  from actual random points* (self-test: 0/5);
* the floating-point annealer never found the `mixed-1` control either.

These are now moot: the decisive results in §6.2 are `unsat`, and `unsat` at the
oriented-matroid level implies the geometric statement without any realisability
argument.

### 6.4 Results — oriented matroid

From `runs/log_om_lemma7.txt` / `om_lemma7_results.json` / `cnf/INDEX.txt`:

| variant | endpoints | `none` | `mixed-1` | `mixed-2` | **`both-hooking`** | **`both-hooked`** |
|---|---:|---|---|---|---|---|
| `generic` | 12 | sat | sat | sat | **unsat** | **unsat** |
| `P-adj` | 11 | sat | unsat | unsat | **unsat** | **unsat** |
| `Q-adj` | 11 | sat | unsat | unsat | **unsat** | **unsat** |
| `PQ-adj` | 10 | unsat | unsat | unsat | **unsat** | **unsat** |

### 6.5 Reading of those results

* **`generic` / `both-hooking` and `both-hooked` are `unsat`: Lemma 7, and hence
  A7-EXT, holds.** Every real configuration satisfies all the asserted
  constraints (§6.2 validation), so no configuration of eight polygon sides in
  general position, in four distinct components, has both consecutive pairs
  hooking — or both hooked — with respect to *any* associated pairs. Since the
  enumerated witnesses are free parameters, this is exactly the status-set
  disjointness A7-EXT asserts.
* **This is stronger than §10.2 in three ways.** (i) It is an oriented-matroid
  result, so it covers generalised (non-stretchable) configurations, not only
  straight lines. (ii) It needs **no** appeal to Lemma 5: AKR must discard 13 of
  their 14 configurations using Lemma 5, whereas here both-hooking is
  outright impossible. (iii) It covers the adjacency cases of §3.3.
* **`generic` / `mixed-1` and `mixed-2` are `sat`** — the Fig. 6 pattern (one
  pair hooking, one hooked) is consistent, as it must be. Together with the two
  `unsat` rows this is the sharp dichotomy AKR describe.
* **`P-adj`: everything except `none` is `unsat`.** In the cyclic-distance-2 (and
  -5) case, *no* pair of conforming associated pairs exists at all. So the
  project's use of Lemma 7 on `H`-edges at cyclic distance 2 and 5 is safe — in
  fact more than safe, since the premise is unrealisable there. **§3.3's gap in
  AKR's coverage does not translate into a gap in the project's argument.**
* **`PQ-adj` is `unsat` outright** — but this row is **VACUOUS**: its `none`
  instance is UNSAT, so the base pattern is itself infeasible and no verdict for
  it carries information (K-16). Superseded by `coverage25/`. Originally read as:
  the doubly-adjacent configuration cannot
  occur at all.
* The `sat` rows are *not* claims of geometric realisability — a satisfiable
  oriented matroid need not be realisable. Only the `unsat` rows carry
  mathematical weight; they are the ones that matter.

### 6.6 Minimal UNSAT core — which hypotheses the result actually uses

`unsat_core.py` asserts the oriented-matroid axioms outright but puts every
*pattern* and *status* constraint under a tracking literal, then minimises the
core greedily. For `generic / both-hooking` the minimal core has **22** of the
26 constraints:

* all **12 required crossings** (`a–B, a–A', a–B', b–A, b–A', b–B', a'–A, a'–B,
  a'–B', b'–A, b'–B, b'–A'`);
* all **8 intra-polygon disjointnesses** (`a–a', a–b', b–a', b–b'` and
  `A–A', A–B', B–A', B–B'`);
* the **2 cone conditions** `I(A,B) ∈ Cone(a,b)` and `I(A',B') ∈ Cone(a',b')`.

Notably the four `E^D` edges (`a–A, b–B, a'–A', b'–B'`) are **not** in the core:
they are what *forces* the twelve crossings via the four-distinct-components
hypothesis, and once the crossings are assumed they are not needed again. So the
impossibility of both-hooking is a consequence of exactly:

> twelve segments-pairs crossing, four pairs of same-polygon sides disjoint, and
> both consecutive pairs hooking

and of nothing else. The cores for `generic / both-hooked` (22 constraints),
`P-adj / both-hooking` (18) and `P-adj / mixed-1` (19) are in `unsat_core.json`.

`drop_one.py` confirms this independently: dropping any **one** of the 26 pattern
/ status constraints from `generic / both-hooking` turns the instance **sat** for
exactly 22 of them, and leaves it **unsat** for exactly the four `E^D` edges
`a–A, b–B, a'–A', b'–B'`. So the core is exactly minimal, the four `E^D` edges are
genuinely redundant once the crossings they force are assumed, and the
contradiction is not an artefact of an over-constrained model.

### 6.7 Results — straight-line search

See `RESULTS.md`, generated by `aggregate.py` from `runs/`. Summary: no
both-hooking or both-hooked realisation was found (consistent with §6.4), the
Axis Property failed on exactly the non-conforming pairs, and the Fig. 6
configuration type was never hit by random sampling — a coverage limitation of
that search, documented rather than glossed over.

---

## 7. What is and is not established

**Established here.**

* Broad-associated ≡ narrow-associated under the hypothesis that defines
  "associated" (§2).
* `158830` is the nine-element count; the eight-element counts are 135 / 3315 /
  1232944 (§4.1).
* `8!/840 = 48 = |Aut(Q₃)|` is the automorphism group of the *disjointness graph
  alone*; the automorphism group of the *configuration* has order 16 and the
  correct class count is 2520 (§4.2).
* AKR's §10.2 filter, as described, excludes the `j = i±2` cases this project's
  graph `H` uses (§3.3) — but those cases are settled independently here (§6.5).
* **Lemma 7 / A7-EXT holds**, verified at the oriented-matroid level, with
  DIMACS artefacts that any SAT solver can re-check (§6.2, §6.4).
* AKR's Observation 3 is machine-verified as a by-product (§6.2).
* The impossibility of both-hooking uses only the twelve required crossings, the
  eight intra-polygon disjointnesses and the two cone conditions (§6.6).

**Not established.**

* AKR's counts of **14** configurations and **13** exclusions are not reproduced.
* Whether AKR's program used 840 or 2520 classes, and whether it enumerated 8- or
  9-element structures, cannot be decided from the paper.
* The verification in §6.2 rests on AKR's general-position assumption for the
  polygon vertices, and on the intersection pattern of §1.1 being the right
  encoding of Lemma 7's hypothesis. Both are argued from the paper's own text,
  but both are *interpretations*, and a reader who disputes either disputes the
  result. The `unsat` itself is machine-checkable; the modelling is not.
* Nothing here verifies Lemma 5, Observation 6, or any other part of AKR.
* `S(e) ≠ ∅` (needed by A7-BRIDGE alongside A7-EXT) is *not* verified here; it
  follows from Lemma 5, which is not machine-checked anywhere.

---

## 8. Reproducing

```
cd independent/akr_l7_reproduction
python3 symmetry.py                        # the 840 vs 2520 discrepancy
python3 validate_encoding.py 40            # every predicate, vs exact coordinates
python3 validate_axioms.py 6               # axiom set vs published counts
python3 om_control.py                      # 4 sanity controls (incl. AKR Observation 3)
python3 om_lemma7.py                       # THE RESULT: all variants x all statuses
python3 export_cnf.py                      # DIMACS export + independent re-check
python3 unsat_core.py                      # minimal UNSAT cores
python3 drop_one.py                        # drop-one minimality check
python3 coverage.py                        # the case split is exhaustive for n=7
python3 arr8.py  <n_arrangements> <seed> <out.json>
python3 hunt.py  <n_arrangements> <seed> <out.json>
python3 perturb_hunt.py <seedfile.json> <seconds> <seed> <out.json>
python3 aggregate.py                       # writes RESULTS.md from runs/
```

Deterministic: every program takes an explicit integer seed and uses only
`random.Random(seed)`; `om_lemma7.py` sets `sat.random_seed = smt.random_seed = 0`.
The `unsat` verdicts do not depend on any seed.

**Environment** (`ENVIRONMENT.txt`): macOS 24.6.0 arm64, CPython 3.14.7, z3
Python bindings 5.1.0, z3 CLI `/opt/homebrew/bin/z3`. No third-party Python
packages other than `z3`. `SHA256SUMS` hashes every file here.

## 9. Two questions for the authors

Narrow, checkable, and worth asking — they replace the broad/narrow question in
the project's current draft letter, which §2 shows to be a non-issue.

1. §10.2 reports enumerating "all 158830 arrangements of eight lines". 158830 is
   the number of simple arrangements of **nine** pseudolines with a marked cell
   (= abstract order types of nine points); for eight the corresponding counts
   are 135, 3315 and 1232944. Which set was enumerated?
2. §10.2 reduces 8! = 40320 assignments to 840 = 8!/48. The automorphism group of
   the required pattern — preserving both the disjointness relation and which
   pairs of sides are consecutive — has order 16, giving 2520 classes; 48 is the
   automorphism group of the disjointness graph alone (the 3-cube), which does
   not preserve the consecutive-pair structure, and 2520 = 3 × 840. Was a
   two-stage scheme used, or were 840 classes tried?
