# AKR §9, assembled — the dependency graph, the count inequality, and the reduction theorem

**Status: an assembly document. It closes nothing.**
Written 2026-09-21. Its job is to state exactly how the pieces this project has
accumulated compose, what the composition still needs, and where it does not
compose. Every claim about a Lean theorem below was checked by reading the
`.lean` source, not a summary of it.

> **`f(7,7) = 38` is not proved.** It is a candidate resting on the import
> stated as (A9) in §3 of this document, which no mathematician has reviewed.
> Nothing below changes that, and this document is deliberately written so that
> a reader who skims it cannot come away with the opposite impression.

## Reading order

* §0 — the one statement being imported, and the one Lean theorem that consumes it.
* §1 — the dependency graph of §9, every step, what proves it, status.
* §2 — **the count inequality, assembled.** The piece nobody had written down.
  Two verdicts, and they go opposite ways. For §9.1 it **composes**: §2.3 gives
  the injection, §2.4 verifies it 285/285 against two firing controls. For §9
  as a whole it **does not**: §2.5a exhibits an exact pair of simple heptagons
  on which AKR's printed procedure cannot take a single step, and proves the
  blockage permanent. If you read one section, read §2.5a.
* §3 — the reduction theorem: (A9) from a numbered list of hypotheses,
  each proved-with-pointer or open-and-named.
* §4 — cost estimates and the best next target ((O2), for four reasons).
* §5 — corrections to the project's own status documents found while doing this,
  including one to this document's own framing.

---

## 0. The import and its consumer

### 0.1 The consumer, read from source

The consumer is [`../lean/AKR9.lean`](../lean/AKR9.lean). Its top theorem is

```lean
theorem points_le_38_of_no_vertex_on_boundary (R : Pair9) (h9 : NoVertexOnOther R) :
    (points9 R).ncard ≤ 38
```

and the equality form is

```lean
def attained9 : Set Nat := { n | ∃ R : Pair9, NoVertexOnOther R ∧ (points9 R).ncard = n }
theorem isGreatest_38_of_E9 : IsGreatest attained9 38
```

with, verbatim from the file:

```lean
def SimpleClosed (W : Fin 7 → ℝ × ℝ) : Prop :=
  (∀ i : Fin 7, W i ≠ W (i + 1)) ∧
  (∀ i j : Fin 7, ¬ LowerBound.Adjacent i j →
      Disjoint (segment ℝ (W i) (W (i + 1))) (segment ℝ (W j) (W (j + 1)))) ∧
  (∀ i : Fin 7,
      segment ℝ (W i) (W (i + 1)) ∩ segment ℝ (W (i + 1)) (W (i + 2)) = {W (i + 1)})

structure Pair9 where
  V : Fin 14 → ℝ × ℝ
  simpleP : SimpleClosed (fun i : Fin 7 => V (pP i))
  simpleQ : SimpleClosed (fun i : Fin 7 => V (pQ i))

def NoVertexOnOther (R : Pair9) : Prop :=
  (∀ i j : Fin 7, R.V (pP i) ∉ segment ℝ (R.V (pQ j)) (R.V (pQ (j + 1)))) ∧
  (∀ i j : Fin 7, R.V (pQ j) ∉ segment ℝ (R.V (pP i)) (R.V (pP (i + 1))))

def points9 (R : Pair9) : Set (ℝ × ℝ) := bdryP9 R ∩ bdryQ9 R
```

`bdryP9`/`bdryQ9` are the unions of the seven closed `segment ℝ` sides.
Confirmed by reading `lean/AKR9.lean` lines 71–120 and 354–410.

So the external input is **exactly** `NoVertexOnOther`, on a structure that
assumes simplicity as a parametrised closed curve and **no general position of
any kind**. `FullGP` (all 364 orientation determinants nonzero) is *not*
consumed; AKR §3's "for convenience" clause is *not* used. This is confirmed by
`RawConfig.raw_crossPairs_card_le_38`, which bounds crossing **pairs** with no
general-position hypothesis.

### 0.2 The import, stated to match the consumer

> **(A9)** Let `R : Pair9` with `(points9 R)` finite. Then there is
> `R' : Pair9` with `NoVertexOnOther R'` and
> `(points9 R').ncard ≥ (points9 R).ncard`.

Two remarks on the quantifiers, both load-bearing.

1. **Finiteness must be a hypothesis of (A9)**, even though it is a *conclusion*
   of `points9_finite` on the target side. `Set.ncard` is `0` on an infinite
   set, so without it (A9) is satisfied vacuously by any `R'` whatever, and the
   composite `f(7,7) ≤ 38` would silently say nothing about a pair with
   overlapping collinear sides. Recorded at `akr-9-1-obligation.md` §5.4 and
   `akr-9-2-obligation.md` §6.1; repeated here because it is the single easiest
   place for this assembly to become vacuous.
2. **"Simple heptagon" means `SimpleClosed`, which forbids `W i = W (i+1)`.**
   A hexagon padded to seven vertices by repeating one is therefore outside the
   scope of both (A9) and `isGreatest_38_of_E9`. This is not a stylistic choice:
   `SimplicityStable.degenerate_corner_not_stable` proves that *no* "small
   perturbations preserve simplicity" theorem can hold without it.

---

## 1. The dependency graph of AKR §9

### 1.0 The top-level split, which is a Lean theorem

`lean/AKR9Reduction.lean` proves

```lean
theorem noVertexOnOther_iff (R : Pair9) :
    NoVertexOnOther R ↔ NoCoincidentVertices R ∧ NoVertexInOpenSide R
```

with `NoCoincidentVertices R := ∀ i j, R.V (pP i) ≠ R.V (pQ j)` and
`NoVertexInOpenSide` the same as `NoVertexOnOther` with `openSegment` for
`segment`. So the §9.1 / §9.2 split of the *goal* is exact and kernel-checked:
§9.1 delivers the first conjunct, §9.2 the second. That is the one piece of the
decomposition that needs no trust at all.

### 1.1 The graph

Nodes are numbered `S*` for steps of the paper and `L*` for things this project
supplies that the paper does not. "Status" is what I could verify today.

| # | step | depends on | who proves it | status |
|---|---|---|---|---|
| **S0** | Standing finiteness: `∂P ∩ ∂Q` finite, i.e. no side of `P` overlaps a side of `Q` | — | nobody. AKR §1/§3 **assume** it | **ASSUMPTION.** Must be a hypothesis of (A9). Used four separate times below (S4, S6, S10, L3) |
| **S1** | Obs. 15 — lexicographic maximality in the dependence system | — | AKR, proof given | paper-proved, not reviewed here, not in Lean |
| **S2** | Lemma 16 — all points in the convex hull of the free points | S1 | AKR, proof given | as S1 |
| **S3** | Thm 17 — the system (2)–(3) has a unique solution, **linear in α** | S2 | AKR, proof given | as S1. **This project assumes it**; `eps_uniform` calls the consequence **(Aff)** and everything downstream needs it |
| **S4** | Lemma 18 — a free point is reachable from every dependent point | S1 | AKR, proof given | as S1 |
| **S5** | Existence of the directions `E_i` | S0 | **AKR assert it.** Proved in `independent/e9_directions/` with a sharp iff; failure case excluded by S0 | **PROVED ON PAPER** (not Lean, not reviewed). A Lean instance for the specific direction `E = b − a` exists: `AKR9Reduction.coincidence_crossing_linear` |
| **S5′** | `E_i` can additionally be chosen **degeneracy-free** | S5 | `e9_directions` README, "Nondegeneracy" | **PROVED ON PAPER.** Not in AKR, and `eps_uniform` Finding 2 shows it is **load-bearing**, not decorative |
| **S6** | The "One final point" α-estimate — `kα + O(α²)`, "for small enough α no degenerate situations" | S3, S5 | AKR sketch it via the sine law for one picture | **FALSE AS WRITTEN** (`eps_uniform` Finding 2, exact certificate). The true weaker statement is (G1)+(G2)+(G3) below |
| **L1** | **Lemma U / Theorem U** — the sign vector of the 1638 witness polynomials is constant on an explicit `(0, ε₀)` | S3 (=(Aff)) | `independent/eps_uniform/` Finding 3; **`lean/UniformEps.lean`** `lemmaU_sign`, `theoremU_sameSign` | **IN LEAN** (landed 2026-09-21 while this document was being written; I read the statements and the file has no `sorry`, but I did not build it — another agent holds Lean) |
| **L2** | **Bootstrapping** — any sign-expressible property true for *some* small α is true on all of `(0, ε₀)` | L1 | `lean/UniformEps.lean` `bootstrap`; also `properCrossR_move_iff` for the crossing pattern specifically | **IN LEAN** (same caveat). Replaces S6 as the uniformity mechanism |
| **R1** | separation: `E_i ≠ E_j` at each coincidence | — | a condition on the choice, satisfied by S5's cone | hypothesis of the reduction |
| **R2** | first-order crossing at each apex: the four `D`-polynomials of some incident side pair are `≢ 0` with straddle leading signs | S5 | `e9_directions` + `eps_uniform` Finding 1 (leading coefficients at an apex do not involve the neighbours' directions) | **PROVED ON PAPER.** Lean: `coincidence_crossing_linear` is this at one apex for one direction |
| **R3** | no *removable* identically-zero witness is left | S5′ | **OPEN** | **OPEN.** `eps_uniform` Finding 4: "the residue". Sketch recorded there is explicitly flagged as reasoning, not a finding. 18.6 % of AKR-admissible directions violate it (`control2.log`) |
| **G1** | §9.1 output: no vertex-vertex coincidence remains | R1, L1 | `eps_uniform` Reduction Thm | conditional on R1, L1, S3 |
| **G2** | §9.1 output: the count does not drop | S0, R2, G3, G4, L1 | **§2 of this document** | see §2 — assembles, with a correction |
| **G3** | §9.1 output: every vertex-side degeneracy is maintained with the same λ | S3 | AKR's construction | conditional on S3 |
| **G4** | §9.1 output: both polygons are still simple | — | `lean/SimplicityStable.lean` `heptagon_simplicity_stable_linear`, **kernel-checked**, plus L2 to extend it to all of `(0,ε₀)` | **VERIFIED IN LEAN** (the soft half). AKR never state it |
| **S7** | §9.2 shift operator `P(δ)` well-defined | **(NC)** | Fig. 28 only; the text does not define it | **the interface gap.** See §2.4 |
| **S8** | §9.2 averaging identity `I(P(δ)) + I(P(−δ)) = 2 I(P)` | S0, G1, S7 | AKR assert it; `docs/akr-9-2-obligation.md` §4 proves it in four cases | **PROVED ON PAPER**, 47 346 exact tests, 0 violations |
| **S9** | §9.2 step: one shift does not decrease the count and strictly decreases the degeneracy count | S8 | AKR's fourth sentence + clause 4 (the project's, not AKR's) | **PROVED ON PAPER** |
| **S10** | §9.2 termination of "one by one" | S9 | the project's monovariant; **no termination argument in AKR** | **PROVED ON PAPER** |
| **L3** | §9.2 output polygons still simple | — | `SimplicityStable` again (a shift is a small displacement of two vertices) | **VERIFIED IN LEAN** (soft half) |
| **C** | **(A9)** itself | all of the above | — | **NOT PROVED** |

### 1.2 Two edges in the graph that the project's documents get wrong

**(i) `akr-9-1-obligation.md` §5.2 ranks S6 as the single hardest step.** That
ranking is superseded. `eps_uniform` Finding 4 shows S6 splits into a
*uniformity* part, which is three lines given S3 (this is L1/L2), and a
*first-order sign* part, which is R2 and R3 — and the content is entirely in the
second. Its controlled experiment is the evidence: with uniformity alone
(arm A) the count dropped in 20 of 60 configurations; with R2 as well (arm B),
0 of 60. The §9.1 document has a 2026-09-20 update pointing at `e9_directions`
but **still says the α-estimate "remains the blocker"**, which is no longer the
best description: the blocker is **R3**.

**(ii) `verification-status.md` stops at row 56 and is dated 2026-09-17.** It has
no row for `lean/SimplicityStable.lean`, `lean/SimplicityBridge.lean`,
`independent/eps_uniform/` or `independent/akr_9_2/` — four of the artifacts this
assembly depends on. `docs/simplicity-preservation.md` §4 records the omission
for the first two and calls it outstanding; nothing records it for the last two.

---

## 2. The count inequality, assembled

This is the piece nobody had written down end to end. The verdict, up front:

> **It assembles — for §9.1 — and the injection is *combinatorial*, not metric.**
> No localisation, no shrinking balls, and no continuity of the intersection
> point is needed. What is needed is a classification lemma that nobody had
> stated, and the injectivity has one case (class (c) against class (c)) that
> fails without AKR's standing finiteness assumption.
>
> **It does not assemble for §9.2 as printed.** §9.2's shift operator needs
> **(NC)** and §9.1 provably cannot supply it (§2.5) — and worse, §2.5a exhibits
> an exact pair of simple heptagons, satisfying every hypothesis §9 is given, on
> which **§9.1 is the identity and no side §9.2 could shift is defined**. §9's
> printed procedure does not terminate on that input. This refutes the
> procedure, not the conclusion.

### 2.1 The classification lemma

> **Lemma CL.** Let `P`, `Q` be `SimpleClosed` heptagons with `X := ∂P ∩ ∂Q`
> finite. Then every `x ∈ X` falls into exactly one of:
>
> * **(a)** `x` is in the *relative interior* of a `P`-side and of a `Q`-side.
>   Those sides are unique, the two sides **properly cross** at `x`, and `x` is
>   not a vertex of either polygon.
> * **(b)** `x` is a vertex of exactly one polygon, and lies in the relative
>   interior of a unique side of the other.
> * **(c)** `x` is a vertex of both. The two indices are unique, and `x` lies on
>   exactly four sides: `P_{i-1}, P_i, Q_{j-1}, Q_j`.

*Proof.* On a side, a point is an endpoint (a vertex) or interior; that gives
the three classes, exhaustive and disjoint. Uniqueness of the side in the
interior cases is simplicity: if `x` is interior to `P`-side `i` and lies on
`P`-side `k ≠ i`, then either the sides are non-adjacent (contradicting
`disj`), or adjacent, in which case their intersection is the shared vertex,
which is not interior to side `i`. For (a), the two sides are not collinear —
two collinear segments sharing an interior point overlap in a segment, making
`X` infinite — so they meet only at `x` and each has its endpoints strictly off
the other's line: that is `ProperCrossR`. For (c), `x = P_i = Q_j`; `x` cannot
lie on a third `P`-side by the same simplicity argument. ∎

Note what Lemma CL needs and what it does not: **simplicity and finiteness
only.** `NoVertexOnOther` is not used. Contrast `AKR9.sideP9_unique`, which
carries `h9 : NoVertexOnOther` — it must, because there `x` is an arbitrary
point of `points9`, not known to be interior to a side.

### 2.2 A corollary nobody has stated: an unconditional bound of 52

> **Corollary U52.** For `R : Pair9` with `points9 R` finite,
>
> `(points9 R).ncard ≤ 38 + d`, where `d` is the number of degenerate points
> (classes (b) and (c)), and `d ≤ 14`. Hence **`(points9 R).ncard ≤ 52`
> unconditionally** — with no general position, and **with no import from AKR
> §9 at all**.

*Proof.* By Lemma CL the class-(a) points are in bijection with
`crossPairsOf R.V`: forward by (a)'s proper-crossing clause, backward because a
proper crossing has a unique common point and that point is strictly interior
to both segments. So `#(a) = (crossPairsOf R.V).card ≤ 38` by
`RawConfig.raw_crossPairs_card_le_38` applied to `AKR9.toRawPair R`. Each
degenerate point consumes at least one of the fourteen vertices, and distinct
degenerate points consume distinct vertices, so `d ≤ 14`. ∎

I flag this because it changes what the import is *for*. AKR §9 is not needed to
get a finite bound on `f(7,7)`; it is needed only to close the gap from 52 to
38. That is a much smaller-sounding obligation than "the upper bound rests on an
unproved import", and it is a fair description — but it is **not** a weakening of
the honest position: `f(7,7) = 38` still rests entirely on §9, because 52 is not
38. `AKR9.lean` does not contain U52; it is a Lean target of maybe a few hundred
lines reusing the existing `cp9` machinery, and it would be the project's first
upper bound on `f(7,7)` with **no external input whatsoever**.

> **Correction, 2026-09-21 — `≤ 52` is weaker than a triviality, and should not
> be formalized as stated.**
>
> If `∂P ∩ ∂Q` is finite then **`|∂P ∩ ∂Q| ≤ 49`**, immediately and with no
> input at all: `∂P` is a union of 7 closed segments and `∂Q` of 7, so the
> intersection is the union of the 49 sets `S_i ∩ T_j`; two closed segments
> meet in `∅`, a point, or a subsegment, and a subsegment of positive length
> would make the intersection infinite. So each of the 49 pairs contributes at
> most one point. No simplicity, no general position, no AKR — and `49 < 52`.
>
> So U52 as stated adds nothing, and "the project's first upper bound with no
> external input whatsoever" is not right: that bound is `49`, it is one
> paragraph, and the project's own `I + |E^D| = 49` identity already encodes it.
>
> **What does have content is the parametrised form the proof passes through:**
>
> > `|∂P ∩ ∂Q| ≤ 38 + d`, where `d` is the number of points that are a vertex
> > of either polygon.
>
> That beats 49 exactly when `d ≤ 10`, and it degrades gracefully: at `d = 0` it
> recovers the general-position bound of 38. **This is the statement worth
> formalizing**, and the `≤ 52` packaging obscures it, because `d ≤ 14` is the
> one case where the trivial bound wins.
>
> Checked on 596 random finite heptagon pairs (`independent/akr_9_assembly/u52_check.py`):
> 0 violations of `≤ 49`, and `38 + d` was the better of the two bounds in all
> 596. Largest intersection observed: 10.

### 2.3 The count inequality for §9.1

> **Theorem CI.** Let `P⁰, Q⁰ : Fin 7 → ℝ × ℝ` be `SimpleClosed` with
> `X := ∂P⁰ ∩ ∂Q⁰` finite. Let the motion be affine,
> `V_i(α) = V⁰_i + α E_i` (this is **(Aff)**, i.e. AKR's Theorem 17 — S3),
> maintaining every relation (1) with its original `λ` (**(G3)**). Assume
> **(R2)** at every vertex-vertex coincidence. Let `ε₀` be Theorem U's bound
> (**L1**). Then for **every** `α ∈ (0, ε₀)`:
>
> `|∂P(α) ∩ ∂Q(α)| ≥ |X|`,
>
> and the witnessing injection `Φ_α : X → ∂P(α) ∩ ∂Q(α)` is explicit:
>
> | class of `x` | `Φ_α(x)` | why it exists |
> |---|---|---|
> | (a), sides `(i,j)` | the crossing point of `P_i(α)` and `Q_j(α)` | the four `D`-polynomials of that pair have `c₀ ≠ 0`, so Theorem U keeps the straddle signs on all of `(0,ε₀)` |
> | (b), vertex `P_i` on `Q`-side `j` | `P_i(α)` | (G3): relation (1) is one of the equations Theorem 17 solves |
> | (c), apex `P_i = Q_j` | the crossing point of the (R2) pair, one of `{i-1,i} × {j-1,j}` | (R2) + Theorem U |

*Proof of injectivity.* Four facts, each from Lemma CL plus simplicity of
`P(α), Q(α)` (**(G4)**, which is `SimplicityStable.heptagon_simplicity_stable_linear`
plus bootstrapping):

1. **Distinct side pairs give distinct points.** If pairs `(i₁,j₁) ≠ (i₂,j₂)`
   crossed at the same `Y`, then `Y` lies on two distinct `P`-sides or on two
   distinct `Q`-sides, and `Y` is interior to all of them — contradicting
   simplicity exactly as in Lemma CL. This covers (a)-vs-(a), (c)-vs-(c) from
   *different* apexes, and (a)-vs-(c), **provided the relevant pairs differ.**
2. **The class-(a) pairs and the class-(c) pairs are disjoint.** A class-(c)
   pair at apex `x⁰` consists of two sides that both contain `x⁰` as an
   *endpoint*. If such a pair were also a class-(a) pair, the two segments would
   meet both at `x⁰` and at an interior point, so they would be collinear, so
   `X` would be infinite.
3. **Two different apexes have disjoint pair sets.** *This is the step that
   needs finiteness and that no document states.* Suppose apexes `P_i = Q_j` and
   `P_k = Q_l` (`i ≠ k`, `j ≠ l`, since the coincidence relation is a partial
   matching) share a pair `(a,b)`. Then `a ∈ {i-1,i} ∩ {k-1,k}` forces
   `k = i ± 1`, and `b ∈ {j-1,j} ∩ {l-1,l}` forces `l = j ± 1`. In each of the
   four resulting cases the `P`-side `a` and the `Q`-side `b` have **the same
   two endpoints** — e.g. `k = i+1, l = j+1` gives
   `[P_i, P_{i+1}] = [Q_j, Q_{j+1}]` — so they overlap in a segment and `X` is
   infinite. Contradiction.
4. **Class (b) is separate.** Its images are *vertices* of `P(α)` or `Q(α)`,
   while classes (a) and (c) produce points interior to two sides, which by
   simplicity are not vertices. Distinct class-(b) images are distinct vertices:
   within a polygon by `nondeg`+`disj`, across the two polygons because the two
   vertices are distinct at `α = 0` (a class-(b) vertex is interior to a side of
   the other polygon, hence not one of its vertices), so at least one of the two
   witnesses `Δˣ, Δʸ` of that vertex pair has `c₀ ≠ 0`, and Theorem U keeps that
   one nonzero on all of `(0,ε₀)`. ∎

**What this proof does *not* need**, and it is worth being explicit because the
obvious route needs all three: no ball of radius `r`, no bound on how far a
point moves, and no continuity of the map "two crossing segments ↦ their
crossing point". The bookkeeping is done by the *side pair*, which is a
combinatorial object, and by Theorem U, which converts every "for small enough"
into a statement true on all of `(0, ε₀)`.

**Where a naive version of this argument would fail**, i.e. the double counting
the assembly had to be checked for: step 3. A vertex-vertex coincidence is one
point that lies on **four** side pairs. If two coincidences were adjacent along
both boundaries, they would share a pair, the same new crossing would be
assigned to two different source points, and `Φ` would not be injective. Step 3
shows that configuration forces two sides to coincide as segments, which AKR's
standing finiteness assumption (**S0**) forbids. So the count inequality is one
of the places S0 is load-bearing, and the only one I found where the reason is
neither "otherwise `ncard` is 0" nor "otherwise two sides overlap in the
classification".

### 2.4 Verification of Theorem CI — `independent/akr_9_assembly/injection.py`

`eps_uniform/run_arms.py` checks that the *count* does not drop. That is
strictly weaker than Theorem CI and, it turns out, **not a valid proxy for it**.
`injection.py` checks `Φ` itself: that it is total (each class really produces
its prescribed image), that its images land in `∂P(α) ∩ ∂Q(α)`, and that it is
injective — all as exact rational points, never as a count.

Configurations are `eps_uniform`'s `build`: two vertex-vertex coincidences on
the same `P`-side (AKR Fig. 27c) plus a maintained relation (1). Three values of
`α` per configuration, including `ε₀/10⁶`. Two seeds. Log:
`independent/akr_9_assembly/injection.log`.

| arm | `Φ` total | `Φ` injective | images in target | count did not drop |
|---|---|---|---|---|
| **B** — directions satisfying (R2) | **285/285** | **285/285** | **285/285** | 285/285 |
| **A** — bare directions (control) | 174/285 | 174/285 | 174/285 | 231/285 |
| **E ∥ an incident edge** (control) | **0/285** | 0/285 | 0/285 | 129/285 |

Source points classified: 885 of class (a), 300 of class (b), 570 of class (c).

Three things to read off this table.

1. **The controls fire.** The `E ∥ edge` arm is `eps_uniform` Finding 2's
   family and it fails `Φ` in every single instance, so the checker can say no.
   Arm A fails in 111 of 285, reproducing Finding 4's arm-A/arm-B contrast at
   the level of the injection rather than the count.
2. **Every failure is `c-lost`** — the vertex-vertex class — in all 111 arm-A
   failures and all 285 bad-`E` failures. Never `a-lost`, never `b-lost`. That
   is exactly what Theorem CI predicts: classes (a) and (b) survive
   *unconditionally* given the motion (Theorem U on `c₀ ≠ 0`, and relation (1)
   respectively), and **(R2) is needed only for class (c)**.
3. **The count is not a proxy for the injection.** In the bad-`E` arm the count
   failed to drop in 129 of 285 instances while `Φ` failed in all 285: points
   were lost at the coincidences and gained elsewhere. A "count did not drop"
   experiment therefore cannot certify the count inequality's *proof*, only its
   conclusion, and it over-reports by a factor of about two here. This is the
   main reason I did not treat `run_arms.log` as sufficient evidence.

*Non-vacuity of the classification itself:* all three classes occur in every
arm, in the same numbers (the arms share their configurations), and the skipped
instances are counted in the log.

### 2.5 §9.2, and the interface gap — where it does **not** compose

For §9.2 the count inequality is not an injection argument at all; it is the
averaging identity `I(P(δ)) + I(P(−δ)) = 2 I(P)` (**S8**), proved in
`docs/akr-9-2-obligation.md` §4 in four cases and tested 47 346 times. Given
(S8), the `≥` is one line and termination is the degeneracy-count monovariant
(**S10**). I have no correction to make to that argument.

**But §9.2's operator is undefined unless (NC) holds** — `P_{i-1},P_i,P_{i+1}`
and `P_i,P_{i+1},P_{i+2}` non-collinear — because Fig. 28's endpoints slide
along the *lines* of the two adjacent sides, and a line parallel to the shifted
one never meets it. And:

> **Finding (the interface gap). §9.1 cannot deliver (NC), and this is not an
> artefact of a bad choice of directions — it is forced by AKR's own rule.**
>
> AKR specify: "Free vertices that are not involved in a degeneracy stay where
> they are." Suppose `P⁰` has three consecutive collinear vertices
> `P_{i-1}, P_i, P_{i+1}`, none of them involved in any degeneracy. All three
> are free and stationary, so `E_{i-1} = E_i = E_{i+1} = 0` and the witness
> `D_{i-1,i,i+1}(α)` is **identically zero**: collinear at `α = 0`, collinear at
> every `α`. No choice of the other directions and no smallness of `α` changes
> it. §9.2 must then shift some side of `P`; if the side it needs is `[P_{i-1},P_i]`
> or `[P_i,P_{i+1}]`, its operator does not exist.
>
> **And §9.2 cannot break such a triple either.** An AKR shift of side `k`
> replaces `P_k` by a point of `aff(P_{k−1},P_k)` and `P_{k+1}` by a point of
> `aff(P_{k+1},P_{k+2})`; both of those lines are unchanged, so every collinear
> consecutive triple survives the shift. See §2.5a.

Note carefully that this is **not** blocked by **(R3)** either. (R3) as
`eps_uniform` Finding 4 states it asks that every identically-zero witness be
*forced* — "it vanishes identically for **every** admissible direction tuple" —
and under AKR's stationary rule the admissible tuples all have `E = 0` at those
three vertices, so the triple **is** forced and (R3) is satisfied while (NC)
fails. **(R3) and (NC) are different obligations, and (R3) as stated does not
imply (NC).** Any document that treats "R3 is the residue" as covering the whole
of the §9.1 residue is wrong by this one case.

*The repair I would look at, recorded as reasoning and not as a finding:*
widen the admissible class — give **every** free vertex a direction rather than
only the coincidence partners, subject to (R2) at the apexes. (R2) cuts out a
nonempty open set of tuples (a product of open cones, `e9_directions` + Finding
1); the non-forced collinearity conditions cut out proper Zariski-closed sets;
an open set is not covered by finitely many of those. That would give (NC) and
(R3) together. It is **not AKR's construction**, it interacts with Theorem 17's
determination of the dependent directions, and I have not checked it. The
alternative repair is `akr-9-2-obligation.md` §6.5's translation variant of the
shift, which is always defined, tests clean on 16 716 instances, and is likewise
**not** what AKR do and **not** proved.

### 2.5a An exact certificate: §9 as printed does nothing at all on this input

The gap above is sharper than "the procedure may have to choose its sides
carefully". A vertex-side degeneracy — a vertex `v` of one polygon interior to a
side `s` of the other — can be removed by shifting `s`, but **also** by shifting
either of the two sides incident to `v`, since AKR's shift moves the shifted
side's two endpoints. So the question is whether *all* the sides that would
remove a given degeneracy can be (NC)-blocked at once. They can.

`independent/akr_9_assembly/certificate.py` (self-contained, exact integers,
does not import the `eps_uniform` code it cross-checks) certifies:

```
P = (2,-4) (2,1) (2,4) (1,3) (-1,3) (-3,4) (-2,2)
Q = (-4,-3) (0,-2) (3,-1) (2,0) (1,1) (-1,1) (-3,0)
```

* both heptagons are simple (full pairwise side check, adjacent and non-adjacent);
* `∂P ∩ ∂Q` has exactly **4** points and no side overlaps — so **(Fin)** holds;
* there are **no coincident vertices** — so **(VV)** holds and **§9.1 is the
  identity map on this input**: no vertex is involved in a vertex-vertex
  degeneracy, so AKR's rule leaves every free vertex where it is;
* there is exactly one vertex-side degeneracy: `Q₃ = (2,0)` lies in the interior
  of the `P`-side `[(2,-4),(2,1)]`;
* the three sides whose shift could remove it are `P`-side 0, `Q`-side 2 and
  `Q`-side 3, and **all three are (NC)-blocked**: `P₀P₁P₂` are collinear (all
  `x = 2`) and `Q₂Q₃Q₄` are collinear (all on `y = −x + 2`);
* of the fourteen sides, the seven that are (NC)-defined all remove **no**
  degeneracy, and the three that would remove one are all blocked.

Control: on a generic pair with two degeneracies the same checker reports six
usable sides, so it is not a checker that always says "blocked".

Sampling rate (`nc_stuck.py`, 4 000 random pairs per row, exact arithmetic):

| population | pairs with (Fin), (VV) and ≥ 1 degeneracy | ≥ 1 killer side blocked | **fully stuck** |
|---|---|---|---|
| hexagons, grid `[−3,3]` | 835 | 284 | **8** |
| hexagons, grid `[−2,2]` | 354 | 202 | **5** |
| heptagons, grid `[−3,3]` | 701 | 292 | **4** |
| heptagons, grid `[−4,4]` | 1004 | 329 | **8** |

Roughly 1 % of degenerate pairs, not 17.7 % — the alternative sides rescue most
cases. But 1 % of a universally quantified statement is a counterexample.

**And the blockage is permanent.** A collinear consecutive triple of `P`
survives *every* AKR shift that is defined:

> AKR's shift of `P`-side `k` replaces `P_k` by a point of `aff(P_{k−1},P_k)`
> and `P_{k+1}` by a point of `aff(P_{k+1},P_{k+2})`. **Both of those lines are
> unchanged by the shift.** So a collinear triple `(k−2,k−1,k)` — which lies in
> `aff(P_{k−1},P_k)` — stays collinear, and likewise `(k+1,k+2,k+3)`. The only
> triples that could be broken are `(k−1,k,k+1)` and `(k,k+1,k+2)`, and those
> being collinear is exactly the failure of (NC), in which case the shift does
> not exist. Shifting a side of `Q` does not move `P` at all. And §9.1 fixes
> every vertex not involved in a vertex-vertex degeneracy.

So on this input the set of (NC)-blocked sides can never shrink, and §9 as
printed can never remove the degeneracy at `Q₃`.

**What this does and does not refute.** It refutes **§9's printed procedure**,
not §9's conclusion. The conclusion (A9) is very plausibly true here — a
sufficiently small generic translation of `Q` alone would remove the degeneracy
without dropping the count — but that is not AKR's argument, and it is exactly
the kind of "obvious" perturbation step that §9 exists to replace, because it
can lose intersection points at a *touching* degeneracy. Whether the repairs of
§2.5 close this is open.

### 2.6 Verdict on the count inequality

**§9.1's half assembles.** Theorem CI is a complete argument from (Aff), (R2),
(G3), (G4), simplicity and finiteness, with the double-counting hazard located
(step 3) and closed by finiteness, and checked 285/285 against two firing
controls.

**§9.2's half assembles as a count argument** — the averaging identity is, as far
as I can tell, correct and well proved in `akr-9-2-obligation.md` §4 — **but not
as a composition.** Its operator's precondition (NC) is not available from §9.1
(§2.5), is not implied by (R3) (§2.5), and cannot be imported from §3 without
circularity. §2.5a turns that from a missing hypothesis into a **counterexample
to the printed procedure**: an exact pair of simple heptagons on which §9.1 does
nothing and §9.2 cannot start, and on which the blockage is provably permanent
under any sequence of AKR shifts.

The honest bottom line of this section, in one sentence: **the count inequality
for §9.1 composes and I believe it; §9 as a whole does not compose, and the
break is at the seam rather than inside either half.** I want to be precise
about the strength of that: the *Proposition* (A9) may well still be true — I
have no reason to doubt it, and two candidate repairs are on the table — but the
published argument for it has a hole, and this project has been importing that
argument.

---

## 3. The reduction theorem — the whole remaining obligation on one page

> **Theorem A9-RED.** Assume (1)–(14) below. *(It read "(1)–(12)" until 2026-09-21; two hypotheses were missing — see 13 and 14, and the retraction of 5.)* Then **(A9)** holds: for every
> `R : Pair9` with `points9 R` finite there is `R' : Pair9` with
> `NoVertexOnOther R'` and `(points9 R').ncard ≥ (points9 R).ncard`.
>
> Consequently, with `AKR9.points_le_38_of_no_vertex_on_boundary` and
> `AKR9.certPair9_ncard`, 38 is the maximum of `(points9 R).ncard` over pairs of
> `SimpleClosed` heptagons with finite boundary intersection.

**Proof.** By `AKR9Reduction.noVertexOnOther_iff`, `NoVertexOnOther` splits as
`NoCoincidentVertices ∧ NoVertexInOpenSide`. Phase 1 applies (1)–(8) to reach a
pair with no coincident vertices and no smaller count; Phase 2 applies
(9)–(12) repeatedly to that pair to remove the remaining vertex-side
degeneracies, each step not decreasing the count and strictly decreasing a
non-negative integer. ∎

### The hypotheses

| # | hypothesis | status | pointer |
|---|---|---|---|
| **1** | **(Fin)** `∂P ∩ ∂Q` finite | **hypothesis of (A9)**, not a gap — but it must be *carried*, or `ncard = 0` makes the statement vacuous | `akr-9-1-obligation.md` §5.4 |
| **2** | **(Simp)** each heptagon is `SimpleClosed`, in particular `W i ≠ W (i+1)` | **hypothesis of (A9)** | `lean/AKR9.lean` |
| **3** | **(Thm17)** AKR Obs. 15, Lemma 16, **Theorem 17**, Lemma 18: the dependence system has a unique solution, **affine in α**, maintaining every relation (1) | **IMPORTED.** AKR give proofs; this project has neither reviewed nor formalised them. Everything downstream is conditional on this | AKR §9.1, PDF pp. 23–24; `akr-9-1-obligation.md` §1.4 |
| **4** | **(E-exists)** at each vertex-vertex coincidence a direction `E_i` exists giving ≥ 1 proper crossing for all small α | **PROVED ON PAPER** (sharp iff; failure case excluded by **(Simp)**, not (Fin) — corrected 2026-09-21) | `independent/e9_directions/README.md`; Lean instance for `E = b − a` tolerating moving neighbours: `AKR9Reduction.coincidence_crossing_linear` |
| **5** | ~~**(E-clean)** `E_i` can additionally be chosen with no local degeneracy~~ | **REFUTED 2026-09-21.** Not merely unproved — **unsatisfiable** on inputs §9.1 must handle: if a *fixed* neighbour of the apex already lies on a `Q`-side, no `E` clears it (45 of 3,980 sampled configurations). §9.1 deliberately leaves vertex-side degeneracies for §9.2, so such inputs are normal. **Replace every use of this hypothesis by 5′ below.** | retraction in `independent/e9_directions/README.md`; `apexonly_nondegeneracy_check.py` |
| **5′** | **(Fin-pres)** the direction `E_i` can be chosen so that finiteness is *preserved*: no P-side and Q-side acquire a positive-length overlap | **PROVED ON PAPER**, with a sharp criterion — the bad directions are exactly the positive multiples of a `b_l` parallel to some `a_k`, finitely many open rays, so a safe direction survives inside the cone | `independent/e9_directions/antiparallel.py`, `global_finiteness.py`; `verification-status.md` row 62 |
| **6** | **(U)** Theorem U: the sign vector of the witness family is constant on `(0, ε₀)` with `ε₀` explicit; and the bootstrapping principle | **IN LEAN.** `lemmaU_sign`, `theoremU_sameSign`, `bootstrap`, `properCrossR_move_iff`, `rho_orient_ge`. I read the statements; no `sorry` in the file; I did not build it | `lean/UniformEps.lean`; `eps_uniform` Finding 3 |
| **7** | **(R2)** at every apex, some incident side pair has all four `D`'s `≢ 0` with the straddle leading-sign pattern | **PROVED ON PAPER** (per-apex, and the per-apex choices provably do not interfere) | `eps_uniform` Finding 1 + Finding 4; `e9_directions` |
| **8** | **(CI)** the count inequality for the §9.1 motion | **PROVED ON PAPER — §2 of this document.** 285/285 with two firing controls | §2.3, §2.4; `independent/akr_9_assembly/` |
| **9** | **(Simp-stable)** small perturbations preserve `SimpleClosed`, including along a linear motion | **VERIFIED IN LEAN**, kernel-checked | `lean/SimplicityStable.lean`, `heptagon_simplicity_stable_linear` |
| **10** | **(Sign-exp)** `SimpleClosed` is a Boolean function of the sign vector of the witness family `W` | **VERIFIED IN LEAN, 2026-09-21**, kernel-checked, zero `sorryAx`. `simpleClosed_iff_sign` in `lean/SignExp.lean`, via `cornerVec_ne_zero_iff_sign` (the corner half) and `disjoint_iff_sign` (the disjointness half, resting on `mem_segment_iff_sign`: a point lies on a closed segment iff a determinant vanishes **and** an inner product is non-positive — which is why the witness family needs dot products, not just determinants) | `eps_uniform` Finding 4's table asserts it; `SimplicityStable.meet_eq_singleton_of_cornerVec_ne_zero` supplies the corner half |
| **11** | **(Avg)** §9.2's averaging identity, plus clauses 1–4 (simplicity, no new degeneracy, termination monovariant) | **PROVED ON PAPER**; 47 346 exact tests, 0 violations | `docs/akr-9-2-obligation.md` §4, §5 |
| **12** | **(NC)** at every side §9.2 must shift, that side's two endpoint-triples are non-collinear | **OPEN — and §2.5 shows §9.1 cannot supply it** | §2.5; `akr-9-2-obligation.md` §3.1 |
| **13** | **(Fin-out)** Phase 1's *output* pair still has finite boundary intersection | **ADDED 2026-09-21 — this was missing, and the theorem above was false without it.** Hypothesis 1 gives finiteness of the *input*; hypothesis 11, §9.2's averaging identity, needs it of the *intermediate* pair, and nothing carried it there. It is **not automatic**: `R3.md` Finding R3-1 is an exact certificate of an AKR-admissible direction making `∂P(α) ∩ ∂Q(α)` infinite for every `α>0`. It follows from 5′, and from (R3) below | `independent/eps_uniform/R3.md` Finding R3-1 and Theorem R3-F; `e9_directions` finiteness section |
| **14** | **(R3)** no *removable* witness polynomial is identically zero | **OPEN — this is (O1).** It had no row in this list until 2026-09-21 even though the proof of 13 uses it, so the list was not "the whole remaining obligation on one page" | `independent/eps_uniform/R3.md` Findings R3-2, R3-3 |

### The two genuinely open items, stated precisely

> **(O1) = (R3).** *No removable degeneracy is left.* Let `W` be the witness
> family of `eps_uniform` Finding 3 for the motion `V(α) = V⁰ + αE`. Every
> `p ∈ W` with `p ≡ 0` should vanish identically for every direction tuple `E`
> admissible under AKR's rule.
>
> Why it matters: an identically-zero witness has no small-α escape, so
> bootstrapping (6) says nothing about it. It is the one obligation of §9.1 the
> uniform-ε machinery provably cannot reach.
> Why it is not a technicality: 965 of 5198 AKR-admissible directions leave a
> removable degeneracy (18.6 %), `eps_uniform/control2.log`.
> Best evidence for: a fully good direction was found in 30/30 configurations.
> Status: sketch exists (`eps_uniform` Finding 4), flagged there by its author
> as reasoning rather than a finding, and **explicitly not checked against
> Theorem 17's determination of the dependent directions**.

> **(O2) = (NC), and §9's printed procedure is refuted on it.** §9.2's shift
> operator is defined only when the shifted side's two endpoint-triples are
> non-collinear. §9.1 leaves uninvolved free vertices stationary, so such a
> collinear triple is preserved exactly, for every α and every choice of the
> other directions; and an AKR shift moves its two endpoints *along the
> neighbouring side lines*, so no shift can ever break one either. (NC) is
> therefore not a consequence of §9.1, is not implied by (R3) as stated, and
> cannot be imported from §3 without circularity.
>
> **§2.5a gives an exact integer pair of simple heptagons** — (Fin), (VV), one
> vertex-side degeneracy — on which §9.1 is the identity and all three sides
> whose shift would remove the degeneracy are (NC)-blocked, permanently.
> Measured incidence of fully-stuck configurations: about 1 % of degenerate
> random pairs (`nc_stuck.log`); of blocked-at-the-first-side, 17.7 %
> (`akr-9-2-obligation.md` §5.4).
>
> **This is an open problem, not a defect in the Proposition.** Two candidate
> repairs exist (§2.5); neither is AKR's construction and neither is proved.
> Until one is, (A9) has **no complete published proof**, and this project's
> single import rests on an argument with a known hole.

### And one item that is open in a different sense

> **(O3) AKR's Theorem 17 is assumed.** Hypothesis 3 above. AKR prove it; this
> project has not reviewed the proof and has not formalised it. It is not a
> *gap in the literature* — it is a gap in **this project's verification**, and
> it is the largest single block of unreviewed imported mathematics remaining.
> Every statement in §2 and §3 above is conditional on it via **(Aff)**.

### What is *not* on this list, and used to be

* **§3's "for convenience" clause / `FullGP`.** Gone. `RawConfig.raw_crossPairs_card_le_38`
  and `AKR9.points_le_38_of_no_vertex_on_boundary` between them removed it. Any
  document still saying the project imports it is out of date.
* **"The perturbed polygons are still simple."** Gone as an unwarranted clause:
  hypothesis 9, kernel-checked. **(Hypothesis 10, its "small residue", is also
  gone as of 2026-09-21 — `lean/SignExp.lean`.)**
* **The existence of the directions `E_i`.** Gone: hypothesis 4.
* **A quantitative sine-law O(α²) estimate.** Not needed. Hypotheses 6 and 7
  replace it; see §1.2(i).

**And what came back onto it, 2026-09-21.** Hypothesis 5 (E-clean) was listed
here as proved and load-bearing; it is **refuted**, and unsatisfiable on normal
inputs. Its job is done instead by 5′ (Fin-pres), which is weaker and true. Two
hypotheses the theorem's proof actually uses — 13 (Fin-out) and 14 (R3) — were
absent from the list entirely, so the claim that it showed "the entire
remaining obligation on one page" was wrong. Both omissions trace to the same
cause: this document was written without reading `independent/eps_uniform/R3.md`,
finished thirteen hours earlier, and still contains no reference to it outside
the rows added today. That is this project's recorded failure mode — completed
work in `independent/` being invisible to the document assembling it — and this
time it cost a hypothesis in a reduction theorem.

---

## 4. What closing each remaining item would take, and the best next target

Estimates are deliberately coarse and are mine; treat them as an ordering, not
as a schedule.

| item | kind of work | rough size | risk |
|---|---|---|---|
| **(O2) (NC) / the §9.2 operator** | mathematics, then prose | the proof of `akr-9-2-obligation.md` §4 already exists; the translation variant changes **one** of its four cases (F3), which that document describes as "three lines of algebra" that must be redone. Plus re-establishing clause 3 for the variant | **low** — 16 716 exact tests, 0 violations; 1 500/1 500 complete procedure runs |
| **U52 (§2.2)** | Lean | a few hundred lines reusing `AKR9.lean`'s `cp9` machinery: Lemma CL, the bijection to `crossPairsOf`, `d ≤ 14` | **very low** — every ingredient is already kernel-checked |
| **(O1) (R3)** | mathematics, genuinely open | the sketch is one paragraph but has an unchecked interaction with Theorem 17's determination of the dependent directions. Widening the admissible class (§2.5) would close (O1) and (O2) together but is a larger bet | **high** — this is the one item where I would not predict the outcome |
| **(O3) Theorem 17 + Obs. 15 + Lemmas 16, 18** | Lean, no mathematical uncertainty | `akr-9-1-obligation.md` §5.1 rates these easy/moderate/moderate/easy. Mathlib has `Matrix.det`, `convexHull`, affine subspaces. I would guess 1 000–2 000 lines | **low** mathematically, **high** in effort |
| **Theorem CI (§2.3) in Lean** | Lean | needs Lemma CL, the classification, and the three-case injection, on top of `UniformEps.lean`. Lemma CL is the bulk and is shared with U52 | **low–moderate** |
| **hypothesis 10 (Sign-exp)** | Lean, small | `cornerVec w ≠ 0 ↔` a sign condition on `D`, `B`, `Δ`. `SimplicityStable` has the hard half already | **very low** |

### The best next target: (O2)

I would attack **(O2)**, and I would attack it before (O1), for four reasons.

1. **It is the only place where the pieces provably do not fit.** (O1) and (O3)
   are steps believed true and not yet proved. (O2) is a step that is **false
   as printed**, with an exact certificate (§2.5a). A project whose purpose is
   verification should close a hole before closing a gap.
2. **The repair is already identified and heavily tested**, and closing it needs
   one case of an existing proof redone rather than a new argument.
3. **It strictly reduces what the project imports.** Using the translation
   variant means §9.2 is no longer an import at all — it becomes a project
   lemma, proved here. That is a larger reduction in the import surface than
   anything (O1) could achieve, because (O1) closes a gap *inside* a step that
   would still be imported.
4. **It is the item most likely to be wrong in the other direction.** If the
   translation variant's averaging identity turns out to fail in some case that
   the 16 716 tests missed, that is a finding worth having early, and it would
   redirect the whole effort.

Concretely, the next piece of work is: state (A9.2-avg) for the translation
operator `A_δ = A + δn`, `B_δ = B + δn` with the two neighbours rotating about
their far endpoints; redo case F3 of `akr-9-2-obligation.md` §4.5; re-verify
clauses 1–4; and then check whether the resulting procedure composes with §9.1's
output under (R3) — which it should, since (NC) is no longer needed.

**Second target, and it is cheap: U52 in Lean.** It is a few hundred lines, it
needs nothing that is not already kernel-checked, and it would give the project
its **first upper bound on `f(7,7)` that imports nothing at all**. `52` is not
`38`, and the document that records it must say so in the same breath — but
"unconditionally ≤ 52, and ≤ 38 modulo one import" is a materially more
informative position than the project currently occupies, and Lemma CL is shared
with Theorem CI, so the work is not wasted.

**What I would not do next: (O3).** Formalising Theorem 17 is a large,
low-risk, low-information task. It should happen, but only once the statement it
supports is known to be repairable — otherwise it is a thousand lines of Lean in
support of a procedure with a hole in it.

---

## 5. Corrections to the project's own status documents

The task that produced this document asked for the status documents to be
reconciled, on the grounds that they have gone out of date before and that this
has caused real errors. It has happened again, in six places. **I have not
edited those files** — other agents are working in them concurrently — so each
is recorded here with what it should say.

1. **`docs/verification-status.md` is dated 2026-09-17 and stops at row 56.**
   It has no row for `lean/SimplicityStable.lean`, `lean/SimplicityBridge.lean`,
   `lean/UniformEps.lean`, `independent/eps_uniform/` or
   `independent/akr_9_2/`. Five artifacts, three of them Lean, one of them
   (`UniformEps.lean`) landing the same day. The task brief that commissioned
   this document asserted that "rows 48–56 describe all of the above"; they do
   not — row 56 is `e9_directions`, and the three files above are absent.
2. **`docs/akr-9-1-obligation.md` §2.2 names the wrong consumer.** It says the
   Lean development consumes `FullGP` via `ConfigBridge.lean`. It consumes
   `AKR9.NoVertexOnOther` via `AKR9.lean`. `akr-9-2-obligation.md` §6.1 already
   records this correction; the §9.1 document has not been updated to match, so
   a reader of the §9.1 document alone still gets the wrong statement of what
   the project imports.
3. **`docs/akr-9-1-obligation.md` §5.2's ranking is superseded.** It names the
   "One final point" α-estimate as the single hardest step and its 2026-09-20
   update still calls it "the blocker". `eps_uniform` Finding 4 shows the
   uniformity content of that step is three lines given Theorem 17, and the
   blocker is **(R3)**. §1.2(i) above.
4. **(O2) is recorded as a circularity; it is a refutation.**
   `akr-9-2-obligation.md` §3.1 identifies (NC) as a missing hypothesis, notes
   that §3 cannot supply it without circularity, and measures the
   "cannot be started at the first side" rate at 17.7 %. It stops short of
   asking whether the *other* sides that would remove the same degeneracy
   rescue it. §2.5a shows they do not always: there is an exact integer input,
   satisfying (Fin) and (VV), on which §9.1 is the identity and every
   degeneracy-removing shift is undefined — and the blockage cannot be broken
   by any sequence of AKR shifts, because a shift moves its endpoints along the
   neighbouring side *lines* and so preserves every collinear consecutive
   triple. This upgrade from "circular" to "refuted on an explicit input" is
   the most consequential thing in this document and it belongs in
   `known-issues.md` and `verification-status.md`.
5. **`docs/simplicity-preservation.md` §3.3's "no ε-conflict" argument is
   correct but is now redundant at one point.** It argues that the simplicity ε
   and AKR's ε intersect in `(0, min)`. With `UniformEps.bootstrap` the
   simplicity conclusion extends to all of `(0, ε₀)` and no minimum is needed —
   provided hypothesis 10 (Sign-exp) is discharged. Worth a line, because the
   current phrasing leaves the reader thinking two thresholds must be tracked.
6. **`independent/README.md` should list `akr_9_assembly/`.** The three scripts
   here (`injection.py`, `nc_stuck.py`, `certificate.py`) and their logs are the
   evidence for §2.4 and §2.5a.

### Claims from the commissioning brief that I checked and found accurate

For symmetry, and because this project's rule is to report what was checked:

* `lean/RealPerturb.lean` — `isOpen_Crossing`, `Keeps`, `isOpen_Keeps`,
  `exists_near_generic_keeping` all present with the stated content. ✔
* `lean/SegmentStable.lean` — `exists_eps_disjoint_stable` present. ✔
* `lean/SimplicityStable.lean` — `heptagon_simplicity_stable_linear` present,
  quantified over **every** `t` with `|t| ≤ t₀`, not just the endpoint. ✔
* `lean/RawConfig.lean` — `raw_crossPairs_card_le_38` present, hypothesis-free
  beyond `RawPair`. ✔
* `lean/AKR9.lean` — takes exactly one hypothesis, `NoVertexOnOther`. ✔
* No `sorry`, no `admit`, no `axiom` command anywhere in `lean/*.lean`
  (1 764 files grepped). ✔
* The four "still open" items in the brief — (R3), AKR's Theorem 17, §9.2's
  circular collinearity precondition, and the undischarged finiteness
  assumption — are all still open. **A correction to my own framing:** the third
  of those *is* (O2), so (O2) is not a new item. What is new is its strength.
  The brief, and `akr-9-2-obligation.md` §3.1, describe it as a *circularity*:
  the hypothesis that would supply (NC) is §3's, and §3's is justified only
  after §9. §2.5a shows it is worse than circular — it is **unavailable**, and
  permanently so, on an exact input satisfying every hypothesis §9 is given.
  A circularity can sometimes be broken by reordering; this cannot.

---

## 6. One last statement of what is and is not established

`f(7,7) = 38` is **not proved**. What this document adds is:

* a dependency graph in which every node has a status I checked against source;
* a proof of the count inequality for §9.1 (**Theorem CI**) with the
  double-counting hazard located and closed, verified 285/285 with two firing
  controls;
* an unconditional bound of **52** on the number of boundary intersection points
  of two simple heptagons with finitely many of them (**Corollary U52**), which
  imports nothing from AKR §9 — on paper only, not yet in Lean;
* and an exact certificate that **AKR §9's printed procedure does not terminate
  on some inputs it is given**, together with a proof that the blockage is
  permanent.

The last of these means the project's sole remaining import is currently
supported by an argument with a known hole. The Proposition may still be true;
the published proof of it is not complete. Any statement of this project's
result must say so.
