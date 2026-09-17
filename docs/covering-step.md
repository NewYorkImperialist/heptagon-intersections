# The covering step: what is built, and what is left

**Status: incomplete.** Three of five layers are Lean theorems; two are not
written. Nothing in the candidate proof depends on any of it. Read §4 before
quoting anything here.

## 1. What the covering step would give

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
| **C** | Each of the 548 pattern-avoidance clauses holds | **Lean** — `lean/CoverAvoid*.lean`, 548 lemmas |
| **D** | The row-degree and column clauses hold | **not written** |
| **E** | Rotation WLOG, degree-shape split, assembly | **not written** |

Layer B is stated over 49 abstract propositions; `lean/CoverDefs.lean` says
variable `7i + j + 1` is `Miss V i j`, "side `i` of `P` does not cross side `j`
of `Q`".

## 3. What D and E need

**D — the column clauses** (7 per case) are
`Miss V 0 j ∨ Miss V 1 j ∨ … ∨ Miss V 6 j`: every side of `Q` misses some side
of `P`. The project proves this from the geometry in
`DisjointnessGraph.exists_disjointO_Pside`, but that is stated for a `Config`
and the covering theorems are stated for a bare `V : Fin 14 → Pt`. The honest
interim move is to carry it as a hypothesis and discharge it when the `Config`
bridge is written — which is the same bridge the general-position gap needs.

**D — the row-degree clauses** (169–189 per case) come from fixing the degree
shape. Each says "at most `k` of these seven hold" or "at least `k` of these
seven hold" for one row. They follow from a single generic counting lemma about
seven decidable propositions, instantiated 7 times per case.

**E** is three things: seven row degrees each `≥ 1` summing to 9 force the
multiset `(3,1,1,1,1,1,1)` or `(2,2,1,1,1,1,1)`; up to a rotation of `P` the
heavy rows can be placed canonically, which is sound because pattern
containment is relabelling-invariant (`ResidualSymBase`); and the four cases
then close by B + C + D.

## 4. Limits

* **Nothing here is load-bearing.** The candidate proof runs through the
  pipeline of `docs/proof-outline.md`; the sweep and this step are parallel
  work.
* Even complete, this gives `I ≠ 40` for a `V : Fin 14 → Pt` in **full** general
  position — all 364 orientation determinants nonzero — which is strictly more
  than `DisjointnessGraph.Config` supplies. See `docs/residual-412-lean.md` §4.
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
for s in $(seq 0 27); do
  python3 python/residual/gen_lean_avoid.py $s > lean/CoverAvoid$(printf %02d $s).lean
done
# build one module at a time; a bare parallel `lake build` is OOM-killed here
```
