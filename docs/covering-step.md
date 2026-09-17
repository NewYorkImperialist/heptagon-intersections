# The covering step: what is built, and what is left

**Status: complete, and connected to `Config`.** All five layers are Lean
theorems as of 2026-09-17, and `lean/ConfigBridge.lean` instantiates the result
at the project's own `Config`:

```lean
theorem crossCountC_ne_40 (K : Config) (hgp : FullGP K) : crossCountC K ≠ 40
```

`FullGP` — no three of the fourteen combined vertices collinear — is a carried
hypothesis, and it is exactly what AKR §9.1 was already imported to supply
(`verification-status.md` rows 4 and 43). §9.1 is not formalized, so the
*unconditional* `hne40` is still assumed and `f(7,7) = 38` is still not a Lean
theorem. Read §4 before quoting anything here.

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

Together they would make `I ≠ 40` a Lean theorem resting on no published lemma,
modulo the general-position gap of `docs/residual-412-lean.md` §4.

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

* **Nothing here is load-bearing.** The candidate proof runs through the
  pipeline of `docs/proof-outline.md`; the sweep and this step are parallel
  work.
* It gives `I ≠ 40` only for configurations in **full** general position — all
  364 orientation determinants nonzero. `Config` forces 168 of those; the other
  **196** come from AKR §9.1, which is imported prose, not formalized. That is
  now an explicit named hypothesis (`ConfigBridge.FullGP`) rather than an
  unstated mismatch. See `docs/residual-412-lean.md` §4 and row 43.
* `hcol` is **no longer** a hypothesis — `ConfigBridge.colDeg_pos` discharges it
  from `DisjointnessGraph.exists_disjointO_Pside`, for every `Config`.
* The two patterns were found by a SAT solver and minimised by search, but they
  are Lean theorems now; the solver is not in the trusted base of A, B or C.
* `I = 42` and the lower bound are elsewhere, and `f(7,7) = 38` remains not a
  Lean theorem.

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
