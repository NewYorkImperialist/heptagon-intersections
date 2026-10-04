# The covering step: what is built, and what is left

**Status: complete, and connected to `Config`.** All five layers are Lean
theorems as of 2026-09-17, and `lean/ConfigBridge.lean` instantiates the result
at the project's own `Config`:

```lean
theorem crossCountC_ne_40 (K : Config) (hgp : FullGP K) : crossCountC K ≠ 40
```

`FullGP` — no three of the fourteen combined vertices collinear — is a carried
hypothesis, and it is exactly what AKR **§3**'s unproved "for convenience" clause supplies
(`verification-status.md` rows 4 and 43 — *not* §9.1; the citation was corrected
on 2026-09-17, see `docs/akr-9-1-obligation.md`). *(Updated 2026-10-04: §3's clause is now discharged —
`RawConfig.raw_crossPairs_card_le_38` — and the covering result feeds
`Pair9Shift.points9_le_38_of_coincFree`, which needs no general position and
assumes only finiteness and no shared vertex. `f(7,7) = 38` is still not a Lean
theorem: it needs the external AKR §9.1 reduction. This paragraph read: "That
clause is not formalized, so the* unconditional *`hne40` is still assumed and
`f(7,7) = 38` is still not a Lean theorem.")* Read §4 before quoting anything
here.

## 1. What the covering step gives

`independent/realizability_sweep/` establishes, with checked certificates, that
every one of the **13,003,620** candidate `I = 40` disjointness graphs is
refuted by the oriented-matroid encoding alone — no AKR Lemma 5, no AKR Lemma 7,
no Černý Lemma 2, no exceptional classification. Making that a Lean theorem
needs two halves:

* **the patterns** — two minimal forbidden local crossing patterns are
  impossible. **Done**: `MinPatternClauses00k.minpattern00k_impossible`.
* **the covering** — every candidate graph contains a relabelled copy of one of
  them. **This document.**

Together they **do** make `I ≠ 40` a Lean theorem resting on no published
lemma, modulo the general-position gap of `docs/residual-412-lean.md` §4.
*(Tense corrected 2026-09-17: this read "would make". Both halves are done —
`ConfigBridge.crossCountC_ne_40`.)*

The **`I = 42` branch fell to the same two patterns**, and it is not in this
document: `I = 42` leaves seven disjoint side pairs, minimum degree 1 on both
sides forces a perfect matching, and the two patterns already cover all
`7! = 5040` of those. See `lean/CoverMatch.lean`, `lean/CoverColDeg.lean`,
`lean/MCase000*.lean` and `verification-status.md` row 44. So the **whole**
upper bound for a configuration in general position now imports no published
lemma, and the `I ≠ 42` half needs no exceptional-class data either.

## 2. The five layers

| | what it says | status |
|---|---|---|
| **A** | The two patterns are impossible | **Lean** — `lean/MinPattern*.lean` |
| **B** | The four propositional cores are contradictory | **Lean** — `lean/CCase00k*.lean`, 10,597 steps over 218 modules |
| **C** | Each of the 588 pattern-avoidance clauses holds | **Lean** — `lean/CoverAvoid00..29.lean` |
| **D** | The row-degree and column clauses hold | **Lean** — `lean/CoverCount.lean`, `lean/CoverRowDeg0*.lean` (120 lemmas), `lean/CoverColumn.lean` |
| **E** | Degree-shape split, rotation WLOG, assembly | **Lean** — `lean/CoverShape.lean`, the 28 `lean/CoverCase<k><r>.lean`, `lean/CoverAll.lean` |

The result:

```lean
theorem no_nine_edges (V : Fin 14 → Pt) (hGP : GP V)
    (hSP : SimpleP V) (hSQ : SimpleQ V)
    (hcol : ∀ j : Fin 7, 0 < colDeg V j)
    (hrow : ∀ i : Fin 7, 0 < rowDeg V i)
    (htot : rowDeg V 0 + … + rowDeg V 6 = 9) : False
```

Axioms: `propext`, `Classical.choice`, `Quot.sound`. `degree_shape` depends on
**no axioms at all**.

Three things kept D and E to ordinary files rather than another 200 modules:

* the row-degree lemmas are **generic in the row index** — ~730 per-case clauses
  collapse to **120** covering every row of every case;
* the rotation is applied **at instantiation** (core variable `7i+j+1` becomes
  `Miss V ((i+r) mod 7) j`) rather than by relabelling the configuration, so the
  24 non-canonical degree shapes need no new refutations — only 40 more
  avoidance copies, the image set being closed under the group where the cited
  subset is not;
* `drat-trim` does not preserve literal order within a clause (1,998 of 2,272
  core clauses come back permuted), so each assembly rearranges disjuncts
  explicitly, per clause. Every core clause classifies as exactly one of the
  three kinds, and the generator refuses to emit if one is left over.

Layer B is stated over 49 abstract propositions; `lean/CoverDefs.lean` says
variable `7i + j + 1` is `Miss V i j`, "side `i` of `P` does not cross side `j`
of `Q`".

## 3. How D and E were built

**The row-degree clauses** (169–189 per case) say "at most `k` of these seven
hold" or "at least `k` of these seven hold" for one row, once the degree shape
is fixed. Both come from `CoverCount.lean`: if exactly `k` of a decidable
predicate's values hold on a finite type, no `k+1` elements all satisfy it and
no `card − k + 1` all fail. Because the lemmas quantify over the row index, 120
of them cover every row of every case.

**The column clauses** (7 per case) are
`Miss V 0 j ∨ … ∨ Miss V 6 j`: every side of `Q` misses some side of `P`.
`CoverColumn.colClause` derives each from `0 < colDeg V j` — and *that* is the
carried hypothesis. The project proves it from the geometry in
`DisjointnessGraph.exists_disjointO_Pside`, but for a `Config`, and these
theorems are stated for a bare `V : Fin 14 → Pt`. Carrying it is the honest
move; discharging it is the same work as closing the general-position gap.

**E** is three things. `CoverShape.degree_shape`: seven degrees each `≥ 1`
summing to 9 give one of 28 vectors — the four shapes at each of the seven
rotations of `P`. The 28 `CoverCase<k><r>` theorems, one per vector, each
supplying its core's clauses from A, C and D. And `CoverAll.no_nine_edges`,
which splits on the shape and applies the matching case.

Two elaborator obstacles are worth knowing before touching these files, because
neither is obvious from the failure:

* `degree_shape`'s `decide` over `4^7 = 16,384` cases **fails to find its
  `Decidable` instance at the default budgets** — `synthInstance.maxSize` is the
  binding one. It must also be stated as seven `Fin 4` arguments rather than one
  `Fin 7 → Fin 4`; through a function type the instance is not found at any
  budget. And a failure here is accepted with `sorryAx`, so the build error is
  the only signal — check `#print axioms`. (`omega` on the same 28-fold
  disjunction over `Nat` does not terminate; it ran this machine to a load
  average of 187.)
* `fin_cases` on a `∀` over `Fin 7` leaves the index as an anonymous
  constructor, after which `omega` cannot match the goal against the `hrow i`
  hypotheses. State the seven bounds one at a time.

## 4. Limits

* **Corrected 2026-09-17: this bullet said "Nothing here is load-bearing. The
  candidate proof runs through the pipeline of `docs/proof-outline.md`; the
  sweep and this step are parallel work." That is now the reverse of the
  truth.** This step *is* the upper bound for configurations in general
  position, and the pipeline of `proof-outline.md` is the parallel work — kept
  because it is the only argument that covers configurations outside general
  position, and because it is what produced the patterns in the first place.
  The bullet is corrected rather than deleted because it was accurate when
  written, a few hours earlier.
* It gives `I ≠ 40` only for configurations in **full** general position — all
  364 orientation determinants nonzero. `Config` forces 168 of those; the other
  **196** come from AKR §3's unproved "for convenience" clause, which is
  imported prose, not formalized (corrected 2026-09-17 — it is not §9.1). That is
  now an explicit named hypothesis (`ConfigBridge.FullGP`) rather than an
  unstated mismatch. See `docs/residual-412-lean.md` §4 and row 43.
* `hcol` is **no longer** a hypothesis — `ConfigBridge.colDeg_pos` discharges it
  from `DisjointnessGraph.exists_disjointO_Pside`, for every `Config`.
* The two patterns were found by a SAT solver and minimised by search, but they
  are Lean theorems now; the solver is not in the trusted base of A, B or C.
* `I = 42` and the lower bound are elsewhere — `lean/ConfigBridge.lean` for
  both, row 44 — and **`f(7,7) = 38` remains not a Lean theorem.** Two things
  separate the development from it: `Config`'s **integer** coordinates
  (`lean/RealConfig.lean` gives the sign-vector half; row 45) and the
  **general-position reduction** (AKR §9, plus the "count is unchanged" half of
  §3's clause; row 4).

> **Update, later on 2026-09-17: the integer-coordinate item is now
> CLOSED for the upper bound.** `lean/RealUpperBound.lean` (commit `9b2b926`)
> proves, in two steps and importing **no published lemma**:
> `crossingPairsR_card_le_38 (R : RConfig) : (crossingPairsR R).card ≤ 38`, by
> transporting all 364 determinant signs through
> `RealConfig.exists_integer_model` into a genuine `Config` in `FullGP`; and
> then `pointsR_le_38 (R : RConfig) : (intersectionPointsR R).ncard ≤ 38`,
> where `intersectionPointsR R` is `boundaryP R ∩ boundaryQ R` — a genuine set
> in `ℝ × ℝ`, each boundary a union of Mathlib `segment ℝ`s over the fourteen
> **real** vertices. **So two simple heptagons with real coordinates, in
> general position, provably meet in at most 38 boundary points.**
>
> **What is left, and it is one thing plus two caveats.** The one thing is
> **AKR §9**: `RConfig` *assumes* general position as a structure field, and
> reaching it from an arbitrary pair of simple heptagons needs §9 followed by
> §3's clause. `RealConfig.exists_near_generic` proves §3's iteration half but
> **not** that the intersection count survives the perturbation, which is what
> would license any conclusion about the original configuration. *(Update,
> later the same day: the **second** caveat below is closed — `isGreatest_38_real`
> (row 47) proves the *equality* at the real level, the attaining configuration
> being the integer lower-bound certificate cast into `ℝ × ℝ`.)* The caveat that
> remains: `Set.ncard` is `0` on infinite sets, so
> `pointsR_le_38` says nothing about boundaries sharing a segment — general
> position excludes that here, but any weakening must re-examine it. No
> *(Kernel-check scope, updated later the same day: a committed `verify-all` log
> now **does** cover this module —
> `results/validation/2026-09-17_verify_all_after_real_equality.log`,
> COMPLETE SUCCESS, exit 0, 33 checks passed, all 1,756 declared libraries
> built. This sentence previously read "No committed `verify-all` log covers
> this module.")*
> `verification-status.md` row 46.

> **Update, later on 2026-09-17 — AKR §3's clause is discharged for the
> crossing-pair count (rows 48–50).** Three modules, in sequence:
> `RealPerturb` proves a crossing is an **open** condition, so a small enough
> perturbation loses none of them (`exists_near_generic_keeping`);
> `SegmentStable` proves **disjoint segments stay disjoint** when their four
> endpoints move by less than some `ε`, over any real normed space and with no
> general-position hypothesis — which is the fact simplicity needs, simplicity
> being a *closed* condition that no openness argument can reach; and
> `RawConfig` assembles them into
> `raw_crossPairs_card_le_38 (R : RawPair) : (crossPairsOf R.V).card ≤ 38`,
> where `RawPair` is two heptagons that are simple **as point sets** and has
> **no general-position field at all**.
>
> **This sharpens where the remaining import sits.** It used to be "the
> general-position reduction: AKR §9 plus §3's unproved clause". Now:
> **§3's clause is no longer load-bearing for the *pair* count**, and **§9 is
> load-bearing specifically for the *point* count** — because at a degenerate
> configuration a point of `∂P ∩ ∂Q` can lie on **no** crossing pair (two sides
> merely touching have a common point but vanishing determinants), so the pair
> bound does not give a point bound. Removing that case is exactly §9's job.
> `f(7,7) = 38` is still **not** a Lean theorem. `verification-status.md`
> rows 48, 49 and 50.

> **Update, later on 2026-09-17 (row 51): the remaining import is now AKR §9
> ALONE.** `lean/AKR9.lean` proves
> `points_le_38_of_no_vertex_on_boundary (R : Pair9) (h9 : NoVertexOnOther R) :
> (points9 R).ncard ≤ 38` — the **point** count, for two heptagons simple only
> *as point sets*, with **no general-position condition anywhere in the
> structure** and three collinear vertices allowed. The single hypothesis
> `NoVertexOnOther` is **(E9)**: no vertex of either polygon lies on the other's
> boundary, which is exactly what AKR §9 delivers, carried as an explicit named
> hypothesis and never as an axiom.
>
> **So AKR §3's unproved "for convenience" clause is no longer an input
> anywhere** — discharged for the pair count by rows 48–50 and for the point
> count here. Two further things worth noting: `lean/CollinearSegment.lean`,
> which does the real work (an interior common point with no endpoint on the
> other segment is a transversal crossing), **imports only Mathlib and
> `PointSetSemantics`**, so it is independently reviewable; and **finiteness is
> now a conclusion rather than a hypothesis** (`points9_finite`), which closes
> the `Set.ncard`-on-infinite-sets trap of `docs/akr-9-1-obligation.md` §5.4
> instead of assuming it away. Non-vacuity: every `RConfig` yields a `Pair9`
> satisfying (E9).
>
> `f(7,7) = 38` is still **not** a Lean theorem — nothing proves (E9), and the
> §9 audit advises against attempting it. `verification-status.md` row 51.


## 5. Reproducing

```sh
python3 independent/realizability_sweep/coverage_cases.py \
        independent/realizability_sweep/patterns2.txt      # exports ccase00k
for k in 0 1 2 3; do
  python3 python/residual/gen_lean_refutation_shards.py \
      independent/realizability_sweep/lean_export ccase00$k 50 CCase00$k lean
done
for s in $(seq 0 29); do
  python3 python/residual/gen_lean_avoid.py $s > lean/CoverAvoid$(printf %02d $s).lean
done
for s in $(seq 0 5); do
  python3 python/residual/gen_lean_rowdeg.py $s > lean/CoverRowDeg$(printf %02d $s).lean
done
for k in 0 1 2 3; do for r in 0 1 2 3 4 5 6; do
  python3 python/residual/gen_lean_cover_case.py $k $r > lean/CoverCase$k$r.lean
done; done
python3 python/residual/gen_lean_cover_shape.py > lean/CoverShape.lean
python3 python/residual/gen_lean_cover_all.py   > lean/CoverAll.lean

# build one module at a time; a bare parallel `lake build` is OOM-killed here
```

All 66 generated files reproduce byte-for-byte.
