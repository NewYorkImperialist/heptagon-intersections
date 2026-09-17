# The 412 residual graphs, refuted in Lean

**Status:** the Lean theorem is kernel-checked. What it *removes from the
project's trusted set* is narrower than "AKR Lemma 7 is no longer needed"; read
§3 before quoting this anywhere.

> **Superseded as a route, 2026-09-17.** Everything in this file is still true.
> But the 412 graphs, and the `13,003,620 → 412` reduction that produces them,
> are no longer on the path to the upper bound. The same technique was pushed
> all the way: two minimal forbidden crossing patterns cover **every** one of
> the 13,003,620 candidate `I = 40` graphs *and* all 5,040 perfect matchings of
> the `I = 42` branch, the covering argument is a Lean theorem, and
> `ConfigBridge` instantiates it at `Config`. So both branches of the upper
> bound hold for configurations in general position importing **no published
> lemma** — `docs/covering-step.md`, `verification-status.md` rows 41–44.
>
> What survives from this file and is still worth reading is **§4**: the `GP`
> versus `Config` gap it records is exactly the hypothesis the new theorems
> carry, now named `ConfigBridge.FullGP`.

## 1. The theorem

`lean/ResidualAll.lean`:

```lean
theorem residual_not_realizable (V : Fin 14 → Pt) (hGP : GP V)
    (hSP : SimpleP V) (hSQ : SimpleQ V) (g : Fin 7 → Nat)
    (hg : g ∈ residual412) (hR : Realizes V g) : False
```

Read: fourteen points in the plane with integer coordinates, no three
collinear; vertices `0..6` traverse a simple heptagon `P` and `7..13` a simple
heptagon `Q`; `g` records which of the 49 (side of `P`, side of `Q`) pairs are
disjoint, bit `j` of `g i` set meaning side `i` of `P` misses side `j` of `Q`.
The theorem says: for none of the 412 graphs in `residual412` does such a
configuration exist.

Axioms: `propext`, `Classical.choice`, `Quot.sound`. No `sorry`, no
`native_decide`, no project axiom.

## 2. Where the 412 come from, and how they are refuted

`independent/no_a7_experiment/` runs the elimination pipeline with AKR Lemma 7's
filter switched off. Instead of ending at nothing it ends at 2,187
`(class_P, class_Q, graph)` triples on **412** distinct disjointness graphs.
A7 is the only filter in the pipeline that touches them; every other trusted
ingredient was checked against the 412 and removes none.

`independent/residual_realizability/` encodes each graph as an oriented-matroid
satisfiability problem and refutes it. Those refutations were DRAT
certificates — evidence, not proof. This is what changed:

1. The 412 fall into **four orbits** under relabelling (rotate or reflect either
   polygon's vertex cycle, optionally exchange `P` with `Q`), of sizes
   **36, 144, 196, 36**. The decomposition is recomputed and checked on all 49
   side pairs, per graph, in `independent/residual_realizability/verify.py` and
   again in `python/residual/gen_lean_symmetry.py`.
2. For each of the four representatives, `drat-trim` extracts an unsatisfiable
   core (167/371/242/513 clauses) and a self-contained LRAT proof
   (102/164/114/148 steps). See `independent/residual_realizability/lean_export/README.md`.
3. `python/residual/gen_lean_refutation.py` transcribes each LRAT proof into
   Lean: one `have` per step, each step unit propagation in the order the hints
   give. Nothing searches. Result: `ResidualCore00k.lean`, whose theorem says
   the core's clauses are jointly contradictory as propositions.
4. `python/residual/gen_lean_clauses.py` proves each of those clauses *from the
   geometry*: Grassmann–Plücker and acyclicity clauses from polynomial
   identities in the coordinates (`lean/ResidualBridge.lean`, closed by `ring`),
   crossing-pattern clauses from `GeometryDefs.ProperCross`, which is what the
   encoder's `crossing` predicate literally is. Result:
   `ResidualClauses00k.orbit00k_impossible`.
5. `python/residual/gen_lean_symmetry.py` carries each representative's
   refutation across its orbit: a relabelled configuration's sides are the
   original's sides with endpoints possibly renamed in the other order, which
   `pc_swapL`/`pc_swapR`/`pc_swapS` in `lean/ResidualSymBase.lean` absorb.

**The SAT solver is no longer trusted for any of this.** It found the proofs;
the kernel rechecks them. Neither the CNFs, the DRAT files, the LRAT files nor
`drat-trim` itself is in the trusted base of the Lean theorem.

## 3. What this does and does not remove

*(Section superseded 2026-09-17: the upper bound no longer reaches the
elimination argument at all, so it removes AKR Lemma 7 along with AKR Lemma 5,
Černý Lemma 2, the order-type crossing fact, the exceptional classification and
the 225-case list. The trade described below was the one available on
2026-09-16.)*

It removes **AKR Lemma 7's reading** from the elimination argument. Before: the
pipeline *with* the A7 filter reaches nothing, and one must believe A7 says what
the project reads it as saying. After: the pipeline *without* the A7 filter
reaches 412 graphs, and those 412 are impossible as a Lean theorem.

It does **not** put the pipeline in Lean. The 412 are the output of Python and
C++ (two independent implementations, `independent/no_a7_experiment/`), and that
13,003,620 → 412 reduction remains unformalized — as does the corresponding
13,003,620 → 225 reduction the project already relied on. So the trade is:
*one contested reading of a published sentence* out, *nothing* in, with the
pipeline's own correctness unchanged on both sides of the trade.

Untouched: AKR Lemma 5, Černý Lemma 2, the order-type crossing fact, **(HP)**
(`docs/e7-geometric-residue.md`), completeness of the 225-case list, and the gap
between the `Config`-level statement and `f(7,7) = 38` over ℝ.
**`f(7,7) = 38` remains not a Lean theorem.**

> **Corrected 2026-09-17.** The "untouched" list is obsolete: AKR Lemma 5,
> Černý Lemma 2, the order-type crossing fact, the exceptional classification
> and the 225-case list are all **off the path** to the upper bound, not merely
> untouched by *this* theorem. (HP) likewise. `f(7,7) = 38` is indeed still not
> a Lean theorem — but the reason is now narrow and specific: `Config` has
> **integer** coordinates (`RealConfig.exists_integer_model` gives the
> sign-vector half), and the general-position reduction is imported prose (AKR
> §9, plus the "count is unchanged" half of §3's clause). The "gap between the
> `Config`-level statement and `f(7,7) = 38` over ℝ" is not one gap but those
> two — and the pair-count-versus-point-count part of it is **closed**,
> `IntersectionCount.crossCountC_eq_pointCount` and
> `ConfigBridge.isGreatest_38_pointCount`.

`independent/realizability_sweep/` pushes the same technique much further — every
one of the 13,003,620 `I = 40` candidate graphs is refuted by the encoding
alone, and four minimal forbidden patterns cover all of them — but the step that
would make that part of the proof, coverage in Lean, is not done. See
`verification-status.md` row 41.

> **Done, 2026-09-17.** Coverage in Lean *is* now done, and with **two**
> patterns rather than four: the 154,794-step covering refutation was never
> transcribed — the covering claim was split by degree shape into 28 ordinary
> cases instead. `lean/CoverAll.lean`, `lean/CoverShape.lean`,
> `lean/CoverCase<k><r>.lean`; `docs/covering-step.md`.

`docs/akr-l7-review-request.md` is **superseded-pending, not withdrawn**: the
reading still matters to anyone else using that lemma, and AKR's Observation 6
being false as printed (`docs/known-issues.md` K-14) is worth telling the
authors regardless.

## 4. The general-position hypothesis is stronger than `Config`'s

`GP V` says **all 364** orientation determinants of the fourteen vertices are
nonzero. The project's own `DisjointnessGraph.Config` assumes less: `Simple7 Pv`
and `Simple7 Qv` give the all-`P` and all-`Q` triples, and
`no_Q_vertex_on_P_side_line` / `no_P_vertex_on_Q_side_line` give the mixed
triples **whose two same-polygon vertices form a side**. Nothing in `Config`
rules out a vertex of `Q` lying on the line through two *non-adjacent* vertices
of `P`.

The eight refutations here use **218** of the 364 triples, and **111 of those
218 are of exactly the kind `Config` does not supply** — 70 with two
non-adjacent `Q` vertices and a `P` vertex, 41 the other way round. So these
theorems are not directly instantiable at an arbitrary `Config`; they need the
stronger hypothesis.

That is the project's standing "general position as WLOG" bridge (`docs/verification-status.md`
row 9a lists it among the prose steps), and it is unproved here as elsewhere.
It is recorded in this file because the gap is easy to miss: `GP` and `Config`
look like they say the same thing and do not.

> **Updated 2026-09-17, and this section is the part of the file that still
> matters.** The gap is no longer unstated: it is the named hypothesis
> `ConfigBridge.FullGP`, and the count is **196** missing triples out of 364
> (`Config` forces 168). Two further corrections. Its warrant is **AKR §3's
> unproved "for convenience" clause**, not §9.1 — §9 justifies only "no vertex
> of one polygon on the boundary of the other", and this file's pointer to
> row 9a should now be read as pointing to row 4 and
> `docs/akr-9-1-obligation.md`. And "unproved here as elsewhere" is no longer
> quite right: `RealConfig.exists_near_generic` proves, in Lean, that every
> configuration is arbitrarily close to one in full general position — the
> perturbation-iteration half of §3's clause. What is **not** proved is that
> the perturbation leaves the intersection count unchanged, which is the bulk
> of the clause, nor that the perturbed polygons remain simple, which nothing
> in §9 or §3 asserts either. Row 45.

## 5. Controls

`lean/ResidualControl.lean`, against the lower-bound certificate's own fourteen
vertices — a pair of simple heptagons that demonstrably exists, with 38
crossings:

* `control_satisfiable` — `GP`, `SimpleP`, `SimpleQ` and `Realizes` all hold of
  it, so the theorem's hypotheses are not vacuous.
* `control_cert_not_residual` — its graph `![8, 8, 8, 4, 4, 4, 115]` is **not**
  among the 412, so the theorem cannot be applied to it. A refutation that also
  covered a configuration that exists would be proving something false.

`lean/ResidualNonVacuity.lean` keeps the sharper per-orbit version: the
certificate fails hypothesis `h5_9` of `orbit000_impossible` outright.

## 6. Reproducing

```sh
# the exported cores and proofs (needs drat-trim)
#   independent/residual_realizability/lean_export/README.md

# the Lean sources, byte-for-byte
for k in 0 1 2 3; do
  python3 python/residual/gen_lean_refutation.py \
      independent/residual_realizability/lean_export core00$k > lean/ResidualCore00$k.lean
  python3 python/residual/gen_lean_clauses.py $k > lean/ResidualClauses00$k.lean
done
for s in $(seq 0 25); do
  python3 python/residual/gen_lean_symmetry.py $s > lean/ResidualGraphs$(printf %02d $s).lean
done
python3 python/residual/gen_lean_symmetry.py all > lean/ResidualAll.lean

# build, one module at a time -- a bare parallel `lake build` is OOM-killed here
cd lean && lake build ResidualAll ResidualControl
```
