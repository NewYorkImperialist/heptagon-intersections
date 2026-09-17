# Lean formalization

> **Current state (2026-09-17): 1,756 `[[lean_lib]]` targets, all compiled
> clean with `lake build` on Lean 4.33.1. 1,698 of them carry an explicit
> generator-provenance marker; the other 58 do not, and that 58 is an *upper
> bound* on the hand-written count (at least fifteen generated modules are
> missing a header — see "Counting the libraries" below).**
>
> **The headline theorem is `RealUpperBound.isGreatest_38_real`:** 38 is exactly
> the greatest number of points at which the boundaries of two simple heptagons
> with **real** coordinates meet, as a set in `ℝ × ℝ`, on the three standard
> axioms, **importing no published lemma**. Its one hypothesis is general
> position, a structure field of `RConfig`. `f(7,7) = 38` is still **not** a
> Lean theorem: discharging general position is AKR §9 plus §3's unproved "for
> convenience" clause. See `docs/verification-status.md` rows 40–50.
>
> *This box previously read "forty-five Lean libraries of substance … plus 1,363
> generated per-shard data modules whose only purpose is to split four `decide
> +kernel` computations". That was accurate on 2026-09-15; the shard families
> have since roughly doubled and now include the propagation chains and the
> covering step's lemmas.* Read the scope notes below before
> extrapolating. What is kernel-checked is the explicit integer certificate, the
> combinatorial counting reduction, the finite 225-case endgame *as a statement
> about a stored certificate*, one purely logical bridge lemma, a Lean
> transcription of one filter predicate, and — since 2026-09-14 — the first
> genuinely *geometric* results: a parity argument that discharges Černý L1's
> required consequence and Lemma A's hypothesis `h2` instead of assuming them,
> plus the bridge that turns a configuration of two heptagons into the
> bitmasks the endgame files consume.
> Still *not* kernel-checked: the full `f(7,7) = 38` theorem, the Jordan-curve
> step, AKR §9.1's general-position reduction, and anything about polygons in
> the endgame files. The main theorem chain is entirely orientation-level over
> `Pt := Int × Int`; the one library that reaches ℝ² (`PointSetSemantics.lean`,
> interface I2b) is not imported by it.

## The three statuses that must never be conflated

1. **Theorem proved from Mathlib / kernel foundations.** Compiles, no `sorry`,
   no project-specific `axiom`. Trust rests on Lean's kernel and Mathlib.
   → All thirty-three libraries have this status, *for the statements they actually
   make* — which in several cases is much narrower than the name of the file
   suggests. Check the scope note at the top of each file before quoting it.
2. **Theorem proved conditional on explicit axioms.** Compiles and is
   `sorry`-free, but depends on `axiom` declarations standing in for
   unformalized mathematics.
   → Nothing here has this status; no file declares an `axiom`.
3. **Unfinished theorem with `sorry`.** Not a proof at all.
   → Nothing here has this status.

The five published lemmas, the exceptional classification, the elimination step
and the assembly into `f 7 7 = 38` are **not formalized at all**. `Endgame.lean`
proves things about a *stored certificate*, not about polygons;
`Lemma7Bridge.lean` proves one purely logical implication with the geometric
input as an explicit hypothesis; `CernyL2Interface.lean` certifies a Lean
*transcription* of one filter predicate, not the Python/C++ implementations. See
`../docs/lean-architecture.md`.

## What is here

**Updated 2026-09-17.** 1,756 `[[lean_lib]]` targets build; see "Counting the
libraries" below for the split and for why the hand-written figure is quoted as
a bound rather than a count. The build numbers below were read off an actual
run, not carried over from an earlier edit — but note that the run they came
from predates the 2026-09-16/17 modules:

```
$ export PATH="$HOME/.elan/bin:$PATH"
$ cd lean && lake build
Build completed successfully (1444 jobs).
```

* **`lakefile.toml` declares twenty-five `[[lean_lib]]` targets**, all twenty-five in
  `defaultTargets`: `LowerBound`, `LemmaA`, `EndgameDefs`, `EndgameData`,
  `Endgame`, `Lemma7Bridge`, `CernyL2Interface`, `GeometryDefs`,
  `SegmentGeometry`, `DisjointnessGraph`, `EnumerationDomain`, `DomainCount`,
  `EnumerationComplete`, `CounterexampleCount`, `FilterSoundness`, `Exclude42`,
  `UpperBoundAssembly`, `ComponentLabelling`, `BipartiteDecision`,
  `LemmaABridge`, `MainTheorem`, `IntersectionParity`, `AvoidingFlag`,
  `PointSetSemantics`, `CernyL2Derivation`.
* **1397 jobs** is the steady state, once Mathlib's `.olean` cache is in
  place; the warm rebuild then takes about 4 s. The count jumped from 758 to
  1279 when `EnumerationDomain.lean` was added: it imports
  `Mathlib.Combinatorics.Enumerative.InclusionExclusion` and
  `Mathlib.Algebra.Polynomial.Coeff`, which drag in several hundred further
  Mathlib modules. Rebuilding from `rm -rf .lake/build` (packages retained)
  takes **1 min 8 s**. The **cold-clone** figures in this section — previously
  766 jobs / 5 min 9 s / ~1.4 GB — were measured *before* `EnumerationDomain`
  was wired in and are **stale**; they have not been re-measured since, and the
  cold cost is now higher. Warm figures measured 2026-09-14.
* A `lean/*.lean` file that is **not** declared as a `[[lean_lib]]` is not part
  of the build at all. `scripts/verify-all.sh` lists any such file separately
  rather than letting it look verified.

The job count is *not* a stable identifier: it moves whenever a library is
added or Mathlib's cache layout changes. Re-read it from `lake build` rather
than trusting this paragraph if the two disagree.

### Per-file trust summary

Every entry in the `Axioms` column is the *union* of `#print axioms` over all
theorems declared in that file, re-read with `lake env lean` for this revision.
It is not copied from an earlier version of this document.

| File | `import` line(s) | `autoImplicit false`? | Axioms (union over the file) | Proves |
|---|---|---|---|---|
| `LowerBound.lean` | **none** | no | `propext` (2 of its 20 theorems need none) | 38 crossings; simplicity; general position; counted over provably all 49 pairs |
| `LemmaA.lean` | 4 × Mathlib + `LowerBound` | **yes** | `propext`, `Classical.choice`, `Quot.sound` | counting + parity ⟹ `I ≤ 38`, as an implication; non-vacuity |
| `EndgameDefs.lean` | **none** | no | `propext`, `Quot.sound` (25 of its 38 theorems need none) | bitmasks, `Conn`, separator lemmas; `akr5Conclusion_iff_adjacent`, `conn_symm`, `conn_trans`, `conn_mem_sep` are axiom-free |
| `EndgameData.lean` | `EndgameDefs` | no | — (generated data; declares no theorem) | the 225 records, transcribed by `gen_endgame_data.py` |
| `Endgame.lean` | `EndgameData` | no | `propext`, `Quot.sound` (5 of its 24 theorems need none) | properties of the **stored certificate**: component separation recomputed in-kernel, and failure of the AKR-L5 conclusion. **Not a statement about polygons** |
| `Lemma7Bridge.lean` | **none** | **yes** | **none at all** for 25 of its 26 theorems; the 26th is the deliberate classical corollary (`propext`, `Classical.choice`, `Quot.sound`) | non-empty + disjoint status sets ⟹ `H` bipartite; both-status vertices *proved* isolated. AKR L7 is a **hypothesis**, never an axiom |
| `CernyL2Interface.lean` | **none** | **yes** | `propext`, `Classical.choice`, `Quot.sound` | the **Lean transcription** of the Černý-L2 filter fires **iff** an exact induced perfect matching exists |
| `GeometryDefs.lean` | **none** | **yes** | `propext`, `Quot.sound` — **no `Classical.choice`** (11 of its 22 theorems need none) | points, the orientation determinant, `ProperCross`, lines and their `eval`/`side`, the strict `Separates` vs. loose `MeetsClosed` distinction, cyclic vertex/side indexing, `metCount`. Definitions only agree *on the nose* with `LowerBound`/`EndgameDefs` |
| `SegmentGeometry.lean` | `GeometryDefs`, `LowerBound`, `EndgameDefs` (all Mathlib-free) | **yes** | `propext`, `Quot.sound` — **no `Classical.choice`** (21 of its 59 theorems need none) | **the first geometric milestone.** A parity argument about sign alternations round a cycle ⟹ a vertex-avoiding line cannot meet every side of an odd cycle; hence Černý L1's required consequence (min disjointness degree ≥ 1) and **Lemma A's hypothesis `h2`**, *derived* rather than assumed |
| `DisjointnessGraph.lean` | `GeometryDefs`, `LowerBound`, `EndgameDefs`, `SegmentGeometry` (all Mathlib-free) | **yes** | `propext`, `Quot.sound` — **no `Classical.choice`** (8 of its 58 theorems need none) | **the geometry→endgame bridge.** `Config` (two simple heptagons in general position) and `toMasks : Config → (Nat → Nat)` with `toMasks_spec`, i.e. interface item **I1** and **I2 at the orientation level**. Bit `j` of mask `i` holds iff side `i` of `P` does not properly cross side `j` of `Q`. The point-set form of I2 needs ℝ² and is *not* proved here |
| `EnumerationDomain.lean` | `DisjointnessGraph`, `Endgame`, **Mathlib** (`BigOperators`, `Polynomial.Coeff`, `InclusionExclusion`, `Nat.Choose.Sum`) | **yes** | `propext`, `Quot.sound` on all of Part A — **no `Classical.choice`**; Part B adds `Classical.choice` via Mathlib `Finset`/`Polynomial` | **enumeration obligations (1) and (2), partially.** Part A proves that any `Config` with 40 properly crossing side pairs has `toMasks K` in the abstract search domain (`InDomain`: 7-bit masks, 9 edges, min degree ≥ 1 both sides) — obligation (1), complete and Mathlib-free in substance. Part B proves the numeric identity `Σⱼ(−1)ʲC(7,j)[x⁹](((1+x)^{7−j}−1)⁷) = 13003620` and the inclusion–exclusion step, but **not** that these compose into the domain's cardinality; only `0 < domainFinset.card` is proved as a cardinality fact. Obligations (3) and (4) are untouched |
| `DomainCount.lean` | `EnumerationDomain`, **Mathlib** | **yes** | `propext`, `Classical.choice`, `Quot.sound` | **enumeration obligation (2), CLOSED.** `domainFinset_card : domainFinset.card = 13003620`. Supplies the two steps `EnumerationDomain`'s Part B left open: `term_eq` (each inclusion–exclusion term is `gfCoeff9 (7 − |t|)`, so it depends only on `|t|` and the `C(7,j)` falls out rather than being asserted) and `coeff_pow_eq_card` (that term is `[x⁹]` of the row generating function, itself `(1+X)^(7−|t|) − 1` by a bijection onto non-empty subsets) |
| `EnumerationComplete.lean` | `EnumerationDomain` | **yes** | `propext`, `Classical.choice`, `Quot.sound` | **enumeration obligation (3), CLOSED for the Lean transcription.** `audit_enum.py`'s `rec` as a *total* function `enumRec` (structural on `rem = 7 − i`, no `partial`), with `enumerate_complete : ∀ M, InDomain M → maskList M ∈ enumerate` by induction on recursion depth — **nothing evaluates the 13,003,620-element output**. The prune `min 3 (budget − rem)` is modelled exactly and proved harmless. `enumerate_sound` gives the converse, so `enumerate` enumerates `InDomain` *exactly*. **Not** an extraction: that `enumRec` is the Python `rec` rests on reading plus three byte-identical small-case diffs |
| `CounterexampleCount.lean` | `DomainCount` | **yes** | `propext`, `Classical.choice`, `Quot.sound` | **the capstone joining (1) and (2).** `counterexample_confined`: `domainFinset.card = 13003620` **and** every `Config` with 40 crossings has `maskFnOf K ∈ domainFinset`. `cert_not_mem_domainFinset` guards non-vacuity — the 38-crossing certificate pair is *outside* the domain. Says nothing about (3) or (4) |
| `FilterSoundness.lean` | `DisjointnessGraph`, `Lemma7Bridge`, `CernyL2Interface` | **yes** | `propext`, `Classical.choice`, `Quot.sound` | **enumeration obligation (4), STATED filter by filter and partially proved — NOT closed.** The two genuinely new bridges are axiom-free: `akr5ConclusionG_iff` (AKR L5's conclusion read off the geometry ⟺ the mask-level predicate) and `geoWindowMatching_iff` (the same for Černý L2). External content enters as explicit hypotheses (E1)–(E8), never as axioms |
| `Exclude42.lean` | `EnumerationDomain`, `FilterSoundness`, **Mathlib** (`Tactic.IntervalCases`, `Data.Finset.Card`) | **yes** | `propext`, `Classical.choice`, `Quot.sound` | **UB42, formalized.** `not_crossCount_42`: a `Config` with `crossCountC K = 42` gives `False`. `I + \|E\| = 49` and min-degree are *discharged*, not assumed. Remaining: (X1) the class invariant, (X2) = (E4). (X3) is discharged by `LemmaABridge` |
| `UpperBoundAssembly.lean` | `EnumerationDomain`, `Exclude42` | **yes** | `propext`, `Classical.choice`, `Quot.sound` | **the upper-bound skeleton.** `crossCountC_le_42` is **unconditional** (`propext`, `Quot.sound` only) — every configuration has `I ≤ 42`, which is what reduces the problem to the two branches 42 and 40. `crossCountC_le_38_of_enumeration` discharges the 42 branch, leaving parity and the enumeration |
| `ComponentLabelling.lean` | `FilterSoundness` | **yes** | `propext`, `Classical.choice`, `Quot.sound` | **(E6) discharged, both directions.** `label_eq_iff : label M u = label M v ↔ Conn M u v`, against `EndgameDefs.Conn` itself. Structural `Nat`-fuel closure, no `partial`; **fuel sufficiency is proved**. `filterB_sound'` consequently has *no* `hcmp` hypothesis — the case that needed the iff |
| `BipartiteDecision.lean` | `FilterSoundness` | **yes** | `propext`, `Quot.sound`, `Classical.choice` | **(E8): a verified bipartiteness decision procedure.** See the file header for exactly which routine is verified and what residual gap remains against the shipped C++/Python |
| `LemmaABridge.lean` | `LemmaA`, `DisjointnessGraph`, `EnumerationDomain`, **Mathlib** | **yes** | `propext`, `Classical.choice`, `Quot.sound` | **(X3) discharged.** `card_E_eq_degSum` identifies `LemmaA`'s `Finset` edge count with the mask-level `degSum`, making Lemma A usable where the rest of the development lives; `no_uncrossable_four_set_of_seven_edges` is the consequence `Exclude42` needed |
| `MainTheorem.lean` | `UpperBoundAssembly`, **Mathlib** | **yes** | `propext`, `Classical.choice`, `Quot.sound` | **the target statement.** `isGreatest_38` with parity, `≠42`, `≠40` as named hypotheses; `attained_38_and_le_42` is **unconditional**. **Not** `f(7,7) = 38`: orientation-level, over `Pt := Int × Int`, no Jordan-curve step. Read its header before quoting |
| `IntersectionParity.lean` | `UpperBoundAssembly`, `MainTheorem` | **yes** | `propext`, `Classical.choice`, `Quot.sound` | **`I` is even, PROVED.** `crossCountC_even : ∀ K : Config, crossCountC K % 2 = 0`, for an arbitrary configuration. Stays inside `Int` — `inside` is ray-crossing parity under a sheared height order, identified with an integer linear functional — so **no reals enter**. Chain: four-point bridge → `crossRow_parity` (a side of `P` crosses `∂Q` oddly iff its endpoints differ in inside-ness) → cyclic sum, where each indicator occurs twice. Discharges `heven`, leaving `hne40` as the only open input (`isGreatest_38_final`) |
| `AvoidingFlag.lean` | `Endgame` | no | `propext`, `Quot.sound` | **interface I3, closed.** `all_225_avoiding_flags_eq` proves by `decide` that every one of the 225 stored `avoiding` flags **equals** `(pairI, pairJ) ∈ avoidingPairs classUsed` — an equality, so the `false` case is checked too. The class table is *generated from* `exceptional_profiles_14.json`. Removes the stored flag as an independent failure mode; does **not** touch the geometric half (the classification (E7), or what "avoiding" means about polygons) |
| `PointSetSemantics.lean` | `DisjointnessGraph`, **Mathlib** (`Analysis.Convex.Segment`, `Data.Real.Basic`, tactics) | **yes** | `propext`, `Classical.choice`, `Quot.sound` (1 of its 17 theorems needs none) | **interface I2b, proved in both directions.** Embeds `Pt := Int × Int` into `ℝ × ℝ` coordinatewise and proves `disjointO_iff_disjoint` — the orientation predicate "no proper crossing" holds **iff** the two *closed real* side segments are disjoint point sets — then composes it with I2a as `toMasks_pointSet_spec`. Non-vacuity is `decide`-checked on the certificate pair in both directions. This is the only library that uses ℝ. **It is not imported by `MainTheorem.lean`**, so the main chain is still orientation-level; what it removes is the *possibility* that the orientation reading and the point-set reading differ for integer segments |
| `PolygonSimple.lean` | `PointSetSemantics`, **Mathlib** | no | `propext`, `Classical.choice`, `Quot.sound` | **the heptagon is a simple closed curve in ℝ².** `simple_closed_polygon` gives the *exact* intersection of any two distinct sides as a set equality: the shared vertex when they are cyclically adjacent, `∅` otherwise. Builds on I2b. **Does NOT prove the Jordan curve theorem** — no separation of the plane into interior and exterior is claimed |
| `CernyL2Derivation.lean` | `FilterSoundness`, **Mathlib** (`Tactic.Ring`) | **yes** | `propext`, `Classical.choice`, `Quot.sound` (1 of its 12 theorems needs none) | **an attempt at (E5) that does NOT discharge it.** The unresolved step is isolated as an explicit predicate `CollisionObstruction`, and the conclusion is conditional on it. What *is* proved: the integer affine identity behind the triangle half-plane argument, that a triangle's interior preserves a strict half-plane, and that simplicity excludes adjacent-side proper crossings. `localFixture` is a `decide`-checked concrete obstruction showing why testing each selected segment separately cannot finish the argument — it satisfies every local condition and is deliberately **not** a `Config`. Read the file header before quoting this file |
| `ClassDataWitness.lean` | `Exclude42`, **Mathlib** | no | `propext`, `Classical.choice`, `Quot.sound` | **non-vacuity witness for `hclass`.** Exhibits `certMcs = [123, 119, 111, 95, 63]` with `certMP = {2,3,4,5,6}` satisfying the class condition, so `Exclude42`'s hypothesis group is not vacuously satisfiable-by-emptiness |
| `ExceptionalClass.lean` | `Exclude42`, **Mathlib** | no | `propext`, `Classical.choice`, `Quot.sound` | **the K-22 repair is impossible.** `exceptional_of_crossCount_42` proves that `crossCountC K = 42` *forces* `Exceptional K`, so the 42 branch cannot be separated from the exceptional-class data by weakening the hypothesis |
| `AKRL5Derivation.lean` | `FilterSoundness`, **Mathlib** | **yes** | `propext`, `Classical.choice`, `Quot.sound` | **an attempt at (E1) that does NOT discharge it**, recorded in the same shape as `CernyL2Derivation`. `contact_iff_full` proves the missing `AdjacentContact` hypothesis is *equivalent* to (E1), so the attempt is blocked rather than nearly finished |
| `IntersectionCount.lean` | `PolygonSimple`, **Mathlib** | no | `propext`, `Classical.choice`, `Quot.sound` | **crossing-pair count = boundary-intersection point count.** `crossCountC_eq_pointCount` closes the gap between the combinatorial count and `(intersectionPoints K).ncard`, with **no extra hypotheses**; `cert_pointCount` evaluates it to 38 on the lower-bound certificate |
| `ClassInvariant.lean` | `Exclude42`, **Mathlib** | no | `propext`, `Classical.choice`, `Quot.sound` (1 of its 5 theorems needs no `Classical.choice`) | **(X1) discharged for the 14 stored classes.** Tables generated from `exceptional_profiles_14.json`; `maximal_exact` is a set equality in both directions, so the table neither weakens nor strengthens the invariant. `not_crossCount_42` is `Exclude42`'s theorem with X1 supplied instead of assumed |
| `ClassDataFromChirotope.lean` | `ClassInvariant`, **Mathlib** | no | `propext`, `Classical.choice`, `Quot.sound` | **(E7b), the finite half.** `recomputed_eq` rebuilds `M_set` and the inclusion-maximal crossing sets from each `canonical_chirotope` alone and proves they equal the stored fields, 14/14. A transcription of `classdata()` in `python/classification/export_profiles.py`. `lemma2_windows` and `avoiding_pairs` are **not** yet recomputed |
| `OrderTypeClassification.lean` | `ClassDataFromChirotope`, **Mathlib** | no | `propext`, `Classical.choice`, `Quot.sound` (its two main results, `classFam_eq` and `stored_classes_exceptional`, need only `propext`) | **(E7a) subchecks only.** All 14 stored classes pass the uncrossable-four-subset test, and each of the 16 expected labelled polygons is simple and reduces by an explicit dihedral relabelling to a stored class, hitting all 14. **Exhaustiveness is written down (`exceptionalPolygons`) and left unproved** — see `docs/verification-status.md` rows 32 and 33 |

| `ClassDataFields.lean` | `ClassDataFromChirotope`, **Mathlib** | no | `propext` | **(E7b) completed.** `fields_recomputed_eq` recomputes the other two stored class-data fields, `lemma2_windows` and `avoiding_pairs`, from each stored chirotope and proves them equal to the stored tables, 14/14. `avoiding_pairs` is the load-bearing one: `AvoidingFlag` checks the 225 endgame certificates against it |
| `OTEnumShard.lean` + **540** `OTEnum<nnn><A–D>.lean` + `OTEnumAll.lean` | `OrderTypeClassification`, **Mathlib** | no | `propext`, `Classical.choice`, `Quot.sound` | **(E7a) exhaustiveness, generated and sharded.** One module per (order-type representative, block of 90 cyclic orders); `OTEnumAll` assembles them by rewriting and runs no search of its own. These are **generated**, not hand-written — see the note below — and they exist in this shape only because a single `decide +kernel` over all 48,600 candidates does not finish |
| `OTCompleteDefs.lean` + **256** `OTComp<ii>_<kk>.lean` + `OTCompleteWitness.lean` + `OTCompleteAll.lean` | `Mathlib.Tactic` / each other | no | `propext` | **completeness of the 135-representative list, generated and sharded.** 16 × 2¹⁵ = 524,288 one-point extensions, 1,657 survivors, each shipped with an explicit relabelling witness so Lean verifies rather than searches — `canonical`, the subtlest function in `chiro.py`, never had to be transcribed. The induction hypothesis is **not** proved; it is stated in the module header |
| `OTBridge.lean` | `OTCompleteWitness`, `OrderTypeClassification` | no | `propext` | **the two forms of the 135, identified.** The completeness proof packs each chirotope into 35 bits, the enumeration keeps 35 signs; `stored135_eq_orderSigns` proves they are the same 135. Without it, combining the two results would be an appeal to the reader's memory |
| `SimpleCountDefs.lean` + **27** `SimpleCount<nn>.lean` + `SimpleCountAll.lean` | `OTEnumShard` | no | `propext` | **exactly 6,342 simple heptagons**, and the count for each individual representative |
| `StratificationDefs.lean` + **540** `Strat<nnn><A–D>.lean` + `StratificationAll.lean` | `OTEnumShard` | no | `propext` | **the 6,007 / 319 / 16 split** of those 6,342 by largest uncrossable side-subset |
| `ClassificationSummary.lean` | `OTBridge`, `OTCompleteAll`, `OTEnumAll` | no | `propext`, `Classical.choice`, `Quot.sound` | **assembly only; proves nothing new.** One citable conjunction of the classification results, and one header listing what is assumed — the induction hypothesis and any geometric reading |

**Counting the libraries.** `lakefile.toml` declares **1,756** `[[lean_lib]]`
targets, and that number would mislead badly if quoted flat. Here is a rule you
can re-run instead of a figure to take on trust:

```bash
cd lean
grep -c '^\[\[lean_lib\]\]' lakefile.toml                      # -> 1756
ls *.lean | while read f; do \
  grep -qi 'gen_lean|generated by|auto-generated|GENERATED FILE' "$f" \
  || echo "$f"; done | wc -l                                    # -> 58
```

So **1,698** modules carry an explicit generator-provenance marker and **58** do
not. **58 is an upper bound on the hand-written count, not the count.** At least
fifteen of the 58 are generator output that simply lacks a provenance header —
`ResidualCore000`–`003`, `PatternCore000`–`003`,
`MinPatternCore000`–`001`, `CCase000All`–`CCase003All` and `MCase000All` — so
the hand-written figure is at most **43**. Adding the missing headers is a
recorded follow-up; it is deferred only because a prose-only edit to any file in
this directory invalidates the whole generated shard set and costs a multi-hour
serial rebuild.

The generated bulk exists because several computations will not run in one
piece: the 48,600-candidate classification enumeration, the 524,288-candidate
completeness search, the simple count, the stratification, and — new on
2026-09-16/17 — the propagation-chain shards (`CCase*Block*`, 218 modules,
10,597 steps) and the covering step's 741 degree and avoidance lemmas
(`CoverRowDeg*`, `CoverColDeg`, `CoverAvoid*`). See rows 33 and 40–47 of
`docs/verification-status.md`.

*This paragraph previously said "34 original + 11 new + 1,363 generated =
1,408", and that the substantive count was 45. Those figures are from
2026-09-15 and no rule reproduces them now.*

**Adding a library.** The table above is one row per library of substance, in lakefile order, and is meant to be extended by appending.
Generated families get a single row, as above. To add a library:
add a `[[lean_lib]]` block plus a `defaultTargets` entry in `lakefile.toml`,
append one row here, append its principal theorems to the axiom table below,
and re-read the job count from `lake build` — do not adjust it by hand. Keep
the columns in the same order; nothing else in this file needs to move.

If `lakefile.toml` declares more *hand-written* libraries than those listed above,
**this section is the stale one, not the lakefile**. Regenerate the count and the
axiom column mechanically rather than by editing prose:

```
grep -c '^\[\[lean_lib\]\]' lean/lakefile.toml      # how many rows there should be
cd lean && lake build                                # re-read the job count
```

and for the axiom column, elaborate a file that `import`s every library and
walks each module's own declarations (this is how the numbers below were
produced — not by transcription):

```lean
import Lean
-- import every lean_lib here
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for mod in #[`LowerBound, /- ... -/ `DisjointnessGraph] do
    let some idx := env.getModuleIdx? mod | pure ()
    let mut used : Array Name := #[]
    for n in env.header.moduleData[idx.toNat]!.constNames do
      if n.isInternal then continue
      match env.find? n with
      | some (.thmInfo _) => for a in (← collectAxioms n) do
          unless used.contains a do used := used.push a
      | _ => pure ()
    logInfo m!"{mod} :: {used.toList}"
```

Reading the import column: **five** files — `LowerBound`, `EndgameDefs`,
`Lemma7Bridge`, `CernyL2Interface`, `GeometryDefs` — import *nothing at all*
and compile with a bare `lean` against an empty `LEAN_PATH`.

**Nine** files import Mathlib directly — `LemmaA`, `EnumerationDomain`,
`DomainCount`, `Exclude42`, `LemmaABridge`, `MainTheorem`, `PointSetSemantics`,
`IntersectionCount` and `CernyL2Derivation` — and they are the reason the
`require` on Mathlib is in `lakefile.toml`. `PointSetSemantics` and
`PolygonSimple` are the only ones that use `ℝ`. `EnumerationDomain`'s Part A
uses no Mathlib result in substance (its axiom set is `propext`, `Quot.sound`);
Part B's `Finset`/`Polynomial` reasoning is why the import is there.

> **Corrected 2026-09-14.** This paragraph previously read "eighteen of the
> twenty-six libraries are Mathlib-free", obtained by adding the files that
> import nothing to the files whose `import` lines name only local modules.
> That sum is wrong: importing only local modules does not make a library
> Mathlib-free, because those modules may themselves import Mathlib. Computed
> over the **transitive** import closure instead, **14 of the 33 libraries are
> Mathlib-free** — `LowerBound`, `EndgameDefs`, `Lemma7Bridge`,
> `CernyL2Interface`, `GeometryDefs`, `EndgameData`, `Endgame`,
> `SegmentGeometry`, `DisjointnessGraph`, `FilterSoundness`,
> `ComponentLabelling`, `BipartiteDecision`, `AvoidingFlag` and
> `AKRL5Derivation` — and the other 19 reach it. In particular
> `EnumerationComplete`, `CounterexampleCount`, `UpperBoundAssembly` and
> `IntersectionParity` were listed as Mathlib-free and are not. The quarantine
> that matters is unaffected and still holds: `GeometryDefs`,
> `SegmentGeometry` and `DisjointnessGraph` reach neither Mathlib nor
> `Classical.choice`. `paper/proof-manifest.tex` had this right all along — it
> defines its "core" column as "the library *and everything it imports* are
> Mathlib-free" and counted thirteen of the then-twenty-six. Where this file and
> the manifest disagreed, the manifest was correct.

Reading the `autoImplicit` column: **twenty** files set
`set_option autoImplicit false` — every declared library except the five listed
next. The other **five** (`LowerBound`, `EndgameDefs`, `EndgameData`, `Endgame`,
`AvoidingFlag`) do **not**;
they rely on all binders being explicitly bound, which is easy to satisfy
because they are written entirely in terms of `Nat` literals and concrete
structures, but the guard that caught the earlier `Odd` defect in `LemmaA.lean`
is not switched on in them. `Endgame.lean` additionally sets
`maxRecDepth 100000` and `linter.unusedVariables false`; no other declared
library sets any option.

No `sorry`, `admit`, project `axiom`, `unsafe`, `native_decide` or `partial` in
any of the twenty-five declared libraries (verified by scanning with comments stripped;
`scripts/verify-all.sh` re-runs that scan on every build, because `lake build`
exits 0 on a `sorry` — it is only a warning).
`f(7,7) = 38` is **not** a Lean theorem.

### `LowerBound.lean` — the explicit `f(7,7) ≥ 38` certificate

Core Lean only: it imports **nothing**, so it can be checked with a bare
`lean LowerBound.lean` against an empty `LEAN_PATH`, in about 2.5 seconds. Every
proof is `by decide`, i.e. kernel reduction of exact `Int` arithmetic. There is
no Mathlib in its trust base.

Coordinates are transcribed from `../data/lower_bound/lower_bound_38.json` and
were checked to match it character for character.

Main theorems:

* `P_vertices_distinct`, `Q_vertices_distinct`
* `P_no_three_collinear`, `Q_no_three_collinear` — no three of the seven
  vertices of either heptagon are collinear
* `P_consecutive_sides_not_collinear`, `Q_consecutive_sides_not_collinear`
* `P_nonadjacent_no_proper_cross`, `Q_nonadjacent_no_proper_cross`
* `P_simple`, `Q_simple` — the conjunction of the four clauses above
* `no_Q_vertex_on_P_side_line`, `no_P_vertex_on_Q_side_line`,
  `general_position` — all four orientation determinants of every one of the 49
  (P-side, Q-side) pairs are nonzero
* `allPairs_length` / `allPairs_nodup` / `allPairs_complete` — the index list the
  count runs over really is all 49 pairs, each exactly once
* `crossing_count_eq_38` — `crossCount = 38`
* `per_P_side_counts` — the per-side breakdown `[6,6,6,6,6,6,2]`
* `disjoint_count_eq_11`, `crossCount_add_disjointCount` (`38 + 11 = 49`)

**Scope note.** Everything is stated at the level of orientation predicates on
integer coordinates. `P_simple` proves the *orientation-level* simplicity data
(distinct vertices, no three collinear, consecutive sides non-collinear, no
proper crossing of non-adjacent sides). The standard inference from that data to
"the closed polygonal curve is a simple closed curve in ℝ²", and from "properly
crossing" to "the closed segments meet in exactly one interior point", are
**not** formalized here.

### `LemmaA.lean` — the counting reduction

Rewritten from the earlier skeleton, which had never been submitted to the
elaborator and carried six `-- CHECK` markers on Mathlib lemma names. Nothing
about that earlier version was ever verified; the surviving statements are
`card_E_ge`, `card_E_ge_eleven` and `crossings_le_38`, reproved from scratch.
The proof no longer uses `choose`: both halves of the count come from
`Finset.card_le_card_of_surjOn` applied to the two coordinate projections.

Main theorems:

* `card_E_ge` — if every `Q`-side is disjoint from some `P`-side in `S`, and
  every `P`-side outside `S` is disjoint from some `Q`-side, then
  `n + (m - |S|) ≤ |E|`
* `card_E_ge_ten` — specialised to `m = n = 7`, `|S| = 4`: `10 ≤ |E|`
* `ge_eleven_of_ge_ten_of_odd`, `card_E_ge_eleven` — the parity upgrade
* `crossings_le_38` — with `I + |E| = 49`, conclude `I ≤ 38`

The geometric content sits in the hypotheses `h1`, `h2`, `hpar` and `hIE`, which
are **not** discharged for a general pair of heptagons. That is the intended
division of labour, but it means this file proves an implication, not `I ≤ 38`.

**Non-vacuity.** `Rcert` instantiates `R` with the actual disjointness relation
of the two explicit heptagons of `LowerBound.lean` and `Scert = {0,1,3,6}`.
`Rcert_h1`, `Rcert_h2`, `Rcert_odd` and `Rcert_card_E : |E| = 11` are all proved
by `decide`, so the hypotheses are simultaneously satisfiable and the bound
`|E| ≥ 11` is tight (`nonvacuous`, `cert_I_le_38`).
`hypotheses_are_restrictive` shows the empty relation fails `h1` and has
`|E| = 0`, so the hypotheses are doing real work.

### `GeometryDefs.lean` + `SegmentGeometry.lean` — the first geometric milestone

**Added 2026-09-14.** Core Lean only, `autoImplicit false` in both,
**no `Classical.choice` anywhere in either file**. `GeometryDefs.lean` imports
nothing at all; `SegmentGeometry.lean` imports `GeometryDefs`, `LowerBound` and
`EndgameDefs`, which between them import nothing, so the whole geometry group
sits outside Mathlib's trust base.

Until these two files existed, *every* geometric input to the development was a
hypothesis or a stored flag. These are the first results that derive one.

**`GeometryDefs.lean` — vocabulary, deliberately not new vocabulary.** Points
(`Pt := Int × Int`), the orientation determinant `orient`, `Collinear`,
`ProperCross`, a `Line` record with `eval`/`side`/`On`/`Avoids`, `lineThrough`,
cyclic vertex and side indexing for a closed `n`-cycle, `MeetsSide`, and the
counter `metCount`. `orient` and `ProperCross` are character-for-character the
definitions of `LowerBound.lean`, and `CycAdj` is the `mod n` form of
`EndgameDefs.CycAdj`; `SegmentGeometry.lean` proves the agreements
(`orient_eq_lowerBound`, `properCross_iff_lowerBound`,
`cycAdj_seven_iff_endgame`) **by `rfl`**, so the two developments cannot drift
apart silently.

The one distinction the file is careful about: `Line.Separates` (strict,
`eval u * eval v < 0`) and `Line.MeetsClosed` (loose, `≤ 0`) are **different**
predicates, equal only when the line avoids both endpoints
(`separates_iff_meetsClosed_of_avoids`). That difference is exactly the one
`../docs/known-issues.md` K-09 turns on.

**`SegmentGeometry.lean` — the results.**

* **The parity fact.** `cycChanges_even`: label each vertex of a closed
  `n`-cycle with a `Bool`; the number of sides whose two endpoint labels differ
  is even. Proved by induction on a path count plus the observation that a
  cycle returns to its starting label — *not* by `decide` over `Fin 7`.
  `sevenCycle_exists_no_change_decide` re-derives the `n = 7` instance by
  `decide` as an independent cross-check, and the two agree.
* **The geometric theorem.** `exists_side_not_met` / `metCount_lt_of_odd`: a
  line that avoids every vertex of a closed cycle of **odd** length cannot
  strictly meet every side; it meets at most `n - 1`. This is the half of Černý
  Lemma 1 the project actually uses, and it is now proved rather than imported.
* **Minimum disjointness degree** (`exists_disjoint_Pside`,
  `min_disjointness_degree_fin7`), i.e. `δ(G^D) ≥ 1`.
* **Lemma A's hypothesis `h2`** (`exists_disjoint_Qside`, `lemmaA_h2_fin7`):
  every side of `P` fails to properly cross some side of `Q`.
  `lemmaA_h2_fin7` is written to have literally the shape of the `h2` binder of
  `LemmaA.card_E_ge` with `R i j := ¬ ProperCross …`, so it can be plugged in
  directly. Note the direction of travel: `LemmaA.lean` still *assumes* `h2`;
  what changed is that `h2` is no longer only assumable.
* **Instantiation at the certificate.** `cert_min_disjointness_degree` and
  `cert_lemmaA_h2` apply the general results to the actual heptagons of
  `LowerBound.lean`, by `decide`.

**The hypotheses are shown to be necessary, not merely stated.** Three explicit
counterexamples, all `decide`-checked:

* `triangle_loose_fails` — a simple triangle (odd!) and a line meeting all three
  of its **closed** sides. So the *loose* reading of the main theorem is false,
  and `triangle_metCount_odd` shows the parity conclusion itself fails for that
  line. The vertex-avoidance hypothesis is load-bearing.
* `dart_meets_all_four_sides` — a vertex-avoiding line meeting **all four**
  sides of a quadrilateral. So the oddness hypothesis is load-bearing too.
* `certLine_metCount = 6` — at the certificate heptagons the bound `n - 1 = 6`
  is attained, so `metCount_lt_of_odd` is tight.

**Scope note — what this still does not give you.** Everything is at the
orientation-predicate level of `LowerBound.lean`.

* `¬ ProperCross s t` is the orientation-level "the two closed segments do not
  cross transversally". The step to the point-set statement `s ∩ t = ∅` needs
  the general-position facts recorded separately (no vertex of one polygon on a
  side of the other, no three vertices collinear) and is **not** formalized.
* `Line.MeetsClosed` is the affine-sign surrogate for "the line meets the closed
  segment"; that equivalence is a statement about ℝ² and is **not** formalized.
* Nothing here says a closed polygonal cycle is a simple closed curve.
* Černý Lemma 1 in full, AKR Lemmas 5 and 7, and the classification remain
  external. Only L1's *consequence used here* is discharged.

## Building

```
export PATH="$HOME/.elan/bin:$PATH"
cd lean
lake build        # all twenty-six libraries; eight of them reach Mathlib
```

Mathlib is pinned by `lake-manifest.json` to the tag `v4.33.1`
(rev `0df444a360eaa60ab8c11dca51a86af692955474`) and comes with prebuilt
`.olean` files, so no Mathlib source compilation is needed.

**From a clean clone, measured — but STALE.** The figures in the table below
were taken before `EnumerationDomain.lean` and the fourteen libraries after it
were wired in, when the build reported 758 warm jobs rather than the current
**1395**. They have not been re-measured; treat them as a lower bound on the
cold cost, not as current numbers. The shape of the finding still holds: a first
`lake build` on a machine that has never seen this Mathlib revision needs no
extra command — plain `lake build` clones the dependency packages and fetches
their caches — but it is not cheap:

| | cold (`git clone` into an empty directory, no `.lake`) | warm (`.lake` already populated) |
|---|---|---|
| wall time | **5 min 9 s** (309 s) | **7.9 s** |
| jobs reported | **766** | **758** |
| bytes left in `lean/.lake` | **1.4 GB** | same |

Measured on Apple silicon, macOS 24.6 (Darwin 24.6.0), Lean 4.33.1,
over a home connection, by cloning this repository into an empty directory and
running `lake build` there. The cold run reports 8 jobs more than the warm one:
those are the dependency packages being materialised, not extra project work.
Almost all of the 5 minutes is download and unpack, not elaboration; the
twenty-five project libraries themselves account for well under a minute of it.

The job count is not a stable identifier — re-read it rather than trusting this
table if the two disagree.

Because of that cost, `scripts/verify-all.sh --quick` **defers** the Lean build
when `lean/.lake/packages/mathlib/.lake/build/lib` does not yet exist, and exits
2 (PARTIAL) rather than 0 so the deferral cannot be mistaken for a pass. Once
Mathlib is built, `--quick` runs the Lean build like any other sub-minute check.

`LowerBound.lean` can also be checked in isolation with no dependencies at all:

```
LEAN_PATH= lean lean/LowerBound.lean
```

Toolchain: `leanprover/lean4:v4.33.1`.

## Axioms

`#print axioms` output, verbatim, for every principal theorem
(Lean 4.33.1, Mathlib `v4.33.1`). Re-read for this revision with
`lake env lean` over a file that imports all twenty-six libraries; nothing below is
transcribed from an earlier edit.

Per-library summary first — the *union* of the axioms of every theorem the file
itself declares, and how many of those theorems need none.

> Re-generated 2026-09-14 over all twenty-six libraries. For the record: the
> `IntersectionParity.lean` row was briefly left blank rather than estimated,
> because a guessed number in a table whose whole point is that it was *not*
> transcribed would defeat the table. The measured values (46 / 18) differ
> substantially from the estimate that was nearly written (25 / 2), which is the
> argument for the practice. Produced by the
`run_cmd` snippet given under "Adding a library" above, which walks each
module's own `constNames`, so it cannot miss a theorem the way a hand-written
list can:

| library | theorems declared | axiom-free | union of axioms |
|---|---|---|---|
| `LowerBound.lean` | 20 | 2 | `propext` |
| `LemmaA.lean` | 17 | 0 | `propext`, `Classical.choice`, `Quot.sound` |
| `EndgameDefs.lean` | 38 | 25 | `propext`, `Quot.sound` |
| `EndgameData.lean` | 0 | — | *(declares no theorem)* |
| `Endgame.lean` | 24 | 5 | `propext`, `Quot.sound` |
| `Lemma7Bridge.lean` | 26 | 25 | `propext`, `Classical.choice`, `Quot.sound` |
| `CernyL2Interface.lean` | 25 | 6 | `propext`, `Quot.sound`, `Classical.choice` |
| `GeometryDefs.lean` | 22 | 11 | `propext`, `Quot.sound` |
| `SegmentGeometry.lean` | 59 | 21 | `propext`, `Quot.sound` |
| `DisjointnessGraph.lean` | 58 | 8 | `propext`, `Quot.sound` |
| `EnumerationDomain.lean` | 53 | 7 | `propext`, `Quot.sound`, `Classical.choice` |
| `DomainCount.lean` | 24 | 1 | `propext`, `Classical.choice`, `Quot.sound` |
| `EnumerationComplete.lean` | 34 | 6 | `propext`, `Classical.choice`, `Quot.sound` |
| `CounterexampleCount.lean` | 5 | 0 | `propext`, `Classical.choice`, `Quot.sound` |
| `FilterSoundness.lean` | 66 | 15 | `propext`, `Classical.choice`, `Quot.sound` |
| `Exclude42.lean` | 21 | 1 | `propext`, `Classical.choice`, `Quot.sound` |
| `UpperBoundAssembly.lean` | 10 | 0 | `propext`, `Classical.choice`, `Quot.sound` |
| `ComponentLabelling.lean` | 64 | 15 | `propext`, `Classical.choice`, `Quot.sound` |
| `BipartiteDecision.lean` | 79 | 44 | `propext`, `Quot.sound`, `Classical.choice` |
| `LemmaABridge.lean` | 7 | 0 | `propext`, `Classical.choice`, `Quot.sound` |
| `MainTheorem.lean` | 5 | 0 | `propext`, `Classical.choice`, `Quot.sound` |
| `IntersectionParity.lean` | 46 | 18 | `propext`, `Classical.choice`, `Quot.sound` |
| `AvoidingFlag.lean` | 3 | 0 | `propext`, `Quot.sound` |
| `PointSetSemantics.lean` | 17 | 1 | `propext`, `Classical.choice`, `Quot.sound` |
| `CernyL2Derivation.lean` | 12 | 1 | `propext`, `Quot.sound`, `Classical.choice` |
| `PolygonSimple.lean` | 5 | 0 | `propext`, `Classical.choice`, `Quot.sound` |
| `ClassDataWitness.lean` | 4 | 0 | `propext`, `Quot.sound`, `Classical.choice` |
| `ExceptionalClass.lean` | 5 | 0 | `propext`, `Classical.choice`, `Quot.sound` |
| `AKRL5Derivation.lean` | 12 | 0 | `propext`, `Quot.sound` |
| `IntersectionCount.lean` | 13 | 0 | `propext`, `Classical.choice`, `Quot.sound` |
| `ClassInvariant.lean` | 5 | 0 | `propext`, `Quot.sound`, `Classical.choice` |
| `ClassDataFromChirotope.lean` | 1 | 0 | `propext`, `Classical.choice`, `Quot.sound` |
| `OrderTypeClassification.lean` | 6 | 2 | `propext`, `Classical.choice`, `Quot.sound` |
| **total** | **786** | **214** | **no project-specific axiom anywhere** |

Then the per-theorem detail:

| theorem | axioms |
|---|---|
| `LowerBound.P_simple` | `propext` |
| `LowerBound.Q_simple` | `propext` |
| `LowerBound.general_position` | `propext` |
| `LowerBound.crossing_count_eq_38` | `propext` |
| `LemmaA.card_E_ge` | `propext, Classical.choice, Quot.sound` |
| `LemmaA.card_E_ge_eleven` | `propext, Classical.choice, Quot.sound` |
| `LemmaA.crossings_le_38` | `propext, Classical.choice, Quot.sound` |
| `LemmaA.nonvacuous` | `propext, Classical.choice, Quot.sound` |
| `Endgame.card_certificates` | *does not depend on any axioms* |
| `Endgame.akr5Conclusion_iff_adjacent` (in `EndgameDefs.lean`) | *does not depend on any axioms* |
| `Endgame.akr5_not_vacuous` | `propext` |
| `Endgame.keys_distinct` | `propext, Quot.sound` |
| `Endgame.all_graphs_have_shape` | `propext, Quot.sound` |
| `Endgame.all_witnesses_consistent` | `propext, Quot.sound` |
| `Endgame.all_225_pairs_in_different_components` | `propext, Quot.sound` |
| `Endgame.all_225_neighbourhoods_disjoint` | `propext, Quot.sound` |
| `Endgame.all_225_cases_fail_AKR5_requirement` | `propext, Quot.sound` |
| `Endgame.all_225_cases_fail_AKR5_conclusion` | `propext, Quot.sound` |
| `Endgame.endgame_summary` | `propext, Quot.sound` |
| `Lemma7Bridge.adj_irrefl` | *does not depend on any axioms* |
| `Lemma7Bridge.isolated_of_both` | *does not depend on any axioms* |
| `Lemma7Bridge.statusIs_of_adj` | *does not depend on any axioms* |
| `Lemma7Bridge.opposite_of_adj` | *does not depend on any axioms* |
| `Lemma7Bridge.disjoint_statuses_imply_bipartite` | *does not depend on any axioms* |
| `Lemma7Bridge.disjoint_statuses_imply_bipartite'` | *does not depend on any axioms* |
| `Lemma7Bridge.Example.bipartite` | *does not depend on any axioms* |
| `Lemma7Bridge.Example.tri_not_bipartite` | *does not depend on any axioms* |
| `Lemma7Bridge.Example.tri_no_status_assignment` | *does not depend on any axioms* |
| **`Lemma7Bridge.disjoint_statuses_imply_bipartite_classical`** | **`propext, Classical.choice, Quot.sound`** |
| `CernyL2.l2FiresB_iff` | `propext, Classical.choice, Quot.sound` |
| `CernyL2.l2OkB_iff` | `propext, Classical.choice, Quot.sound` |
| `CernyL2.test_matching_detected` | `propext` |
| `CernyL2.test_extraEdge_notDetected` | `propext` |
| `CernyL2.test_outsideEdge_detected` | `propext` |
| `CernyL2.test_extraEdge_noPattern` | `propext, Classical.choice, Quot.sound` |
| `Geometry.orient_eq_lowerBound` (in `SegmentGeometry.lean`) | *does not depend on any axioms* |
| `Geometry.properCross_iff_lowerBound` | *does not depend on any axioms* |
| `Geometry.cycAdj_seven_iff_endgame` | *does not depend on any axioms* |
| `Geometry.triangle_loose_fails` | *does not depend on any axioms* |
| `Geometry.dart_meets_all_four_sides` | *does not depend on any axioms* |
| `Geometry.sevenCycle_exists_no_change_decide` | *does not depend on any axioms* |
| `Geometry.meetsSideB_iff` (in `GeometryDefs.lean`) | `propext` |
| `Geometry.adjacent_iff_cycAdj` | `propext` |
| `Geometry.lineThrough_eval` (in `GeometryDefs.lean`) | `propext, Quot.sound` |
| `Geometry.separates_iff_meetsClosed_of_avoids` (in `GeometryDefs.lean`) | `propext, Quot.sound` |
| **`Geometry.cycChanges_even`** | `propext, Quot.sound` |
| **`Geometry.metCount_even`** | `propext, Quot.sound` |
| **`Geometry.metCount_lt_of_odd`** | `propext, Quot.sound` |
| **`Geometry.exists_side_not_met`** | `propext, Quot.sound` |
| `Geometry.exists_side_not_met_seven` | `propext, Quot.sound` |
| `Geometry.exists_disjoint_Pside` | `propext, Quot.sound` |
| `Geometry.exists_disjoint_Qside` | `propext, Quot.sound` |
| **`Geometry.min_disjointness_degree_fin7`** | `propext, Quot.sound` |
| **`Geometry.lemmaA_h2_fin7`** | `propext, Quot.sound` |
| `Geometry.cert_min_disjointness_degree` | `propext, Quot.sound` |
| `Geometry.cert_lemmaA_h2` | `propext, Quot.sound` |
| `DisjointnessGraph.transposeMask_eq_mkMask` | *does not depend on any axioms* |
| `DisjointnessGraph.Config.general_position` | `propext` |
| `DisjointnessGraph.simple7_Pv` | `propext` |
| **`DisjointnessGraph.toMasks_spec`** | `propext, Quot.sound` |
| **`DisjointnessGraph.toMasksQ_spec`** | `propext, Quot.sound` |
| `DisjointnessGraph.toMasks_eq_getD` | `propext, Quot.sound` |
| `DisjointnessGraph.case_M_eq_toMasks` | `propext, Quot.sound` |
| `DisjointnessGraph.disjointO_iff_fin` | `propext, Quot.sound` |
| `DisjointnessGraph.exists_disjointO_Pside` | `propext, Quot.sound` |
| `DisjointnessGraph.exists_disjointO_Qside` | `propext, Quot.sound` |
| **`DisjointnessGraph.min_degree_both_sides`** | `propext, Quot.sound` |
| `DisjointnessGraph.conn_of_disjointO` | `propext, Quot.sound` |
| `DisjointnessGraph.no_common_disjointO_of_sep` | `propext, Quot.sound` |
| `DisjointnessGraph.cert_masks` | `propext, Quot.sound` |
| `DisjointnessGraph.cert_min_degree_P` | `propext, Quot.sound` |
| `DisjointnessGraph.cert_edgeCount_eq_disjointCount` | `propext, Quot.sound` |
| `DisjointnessGraph.cert_disjointO_nontrivial` | `propext, Quot.sound` |

Only the three standard Lean axioms appear; no project-specific `axiom` is
declared anywhere. **No file in the geometry group reaches `Classical.choice`**
— `GeometryDefs.lean`, `SegmentGeometry.lean` and `DisjointnessGraph.lean`
together declare 139 theorems, and the union over all 139, not just the ones
tabulated above, is `{propext, Quot.sound}`. The whole geometry group stays
strictly inside core Lean's trust base.

**The "`Lemma7Bridge` has no axioms at all" claim, stated precisely.** It holds
for every theorem in that file *except* the classical corollary
`disjoint_statuses_imply_bipartite_classical`, which was added deliberately and
which depends on `Classical.choice` because it discharges the decidability
hypothesis with `Classical.propDecidable`. The load-bearing theorems —
`disjoint_statuses_imply_bipartite` and `disjoint_statuses_imply_bipartite'` —
remain axiom-free, and the corollary must not be quoted in support of the
axiom-free claim.

## What is designed but not written

`../docs/lean-architecture.md` lays out a numbered file plan, entries `0`–`7`,
i.e. eight files. **Two of the eight exist; six still do not.** (The prose at
the top of that document says "seven files" while its own table lists eight
rows; the table is the one to go by.)

| # | File | Contents | Present? |
|---|---|---|---|
| 0 | `LowerBound.lean` | explicit 38-crossing certificate | **yes, compiles** |
| 1 | `LemmaA.lean` | abstract counting lemma + parity upgrade | **yes, compiles** |
| 2 | `Model.lean` | `DGraph`, degrees, components, `L3cond`/`L5consec`/`HBip` | no |
| 3 | `Imported.lean` | Černý L1–L3 and AKR L5, L7 as `axiom`s | no |
| 4 | `Profiles.lean` | `structure Profile` + the 14-entry `ExcTable` | no |
| 5 | `Classification.lean` | the classification, axiomatic at first | no |
| 6 | `Elimination.lean` | the decisive finite theorem | no |
| 7 | `Main.lean` | assembly: `f 7 7 = 38` | no |

**Twenty-three** of the twenty-six libraries present in this directory are
**not** in that numbering, having been added since: `EndgameDefs.lean`,
`EndgameData.lean` and `Endgame.lean` (the 225-case endgame),
`Lemma7Bridge.lean` (A7 bridge), `CernyL2Interface.lean` (C2 bridge),
`GeometryDefs.lean` + `SegmentGeometry.lean` + `DisjointnessGraph.lean` +
`PointSetSemantics.lean` (the geometry group), `EnumerationDomain.lean` +
`DomainCount.lean` + `EnumerationComplete.lean` + `CounterexampleCount.lean`
(the enumeration obligations), `FilterSoundness.lean` +
`ComponentLabelling.lean` + `BipartiteDecision.lean` + `CernyL2Derivation.lean`
(filter soundness and its discharged inputs), `Exclude42.lean` +
`UpperBoundAssembly.lean` + `LemmaABridge.lean` + `MainTheorem.lean` +
`IntersectionParity.lean` (the upper-bound skeleton) and `AvoidingFlag.lean`
(interface I3). They are bridges, finite checks and now some genuine geometry —
not steps of the plan above, and none of them replaces files 3–7.

Three qualifications on that, so the twenty-five-vs-eight bookkeeping is not
read as progress it is not:

* `SegmentGeometry.lean` **does** discharge two things files 2–7 would otherwise
  have had to assume — Černý L1's required consequence and Lemma A's `h2` — but
  it discharges them at the orientation-predicate level only. It is not file 2.
* `DisjointnessGraph.lean` supplies the parts of file 2 (`Model.lean`) that the
  endgame actually consumes: a `Config` type and `toMasks`/`toMasks_spec`,
  i.e. interface items **I1** and **I2**, the latter at the orientation level.
  It does *not* supply `L3cond`/`L5consec`/`HBip`, and the point-set reading of
  I2 remains unformalised, so calling it "file 2" would overstate it.
* The heaviest absent pieces are unchanged: `Classification.lean` (5) and
  `Elimination.lean` (6), i.e. interface items **I3** and **I5** below.

## Two design constraints from the architecture document

**Shrink analytically before any decision procedure.** A naive `decide` over
13,003,620 graphs is far beyond kernel reduction, and `native_decide` would put
the whole result on the compiler's trust base — unacceptable for a result whose
entire purpose is to be checkable. Nothing in this directory uses
`native_decide`, and nothing should.

**State the classification as an inclusion, never an equality.** The enumeration
imposes only *necessary* realizability conditions, so what it proves is

> every exceptional simple 7-gon's profile occurs in `ExcTable`, up to dihedral
> relabelling

and that is all an exclusion theorem needs.


## The 225-case endgame (`EndgameDefs.lean`, `EndgameData.lean`, `Endgame.lean`)

Like `LowerBound.lean`, these three files import **nothing** outside themselves:
`EndgameDefs.lean` imports nothing at all, `EndgameData.lean` imports
`EndgameDefs`, `Endgame.lean` imports `EndgameData`. Core Lean only, no Mathlib,
no Batteries; none of the three sets `autoImplicit false`. They compile with bare
`lean` and `LEAN_PATH` pointing at their own build directory (verified). Every
proof is an ordinary `decide`/`rfl`, i.e. a kernel reduction; the axioms reached
are at most `propext` and `Quot.sound` (notably **not** `Classical.choice`), and
some theorems reach none.

* `EndgameDefs.lean` — side indices mod 7, 7-bit neighbourhood bitmasks,
  cyclic adjacency, the bipartite disjointness graph and its connectivity
  relation `Conn`, the `Case` record, and the two forms of the AKR Lemma 5
  requirement (`AKR5Conclusion`, the lemma's literal conclusion, and
  `AKR5Adjacent`, the neighbourhood-difference condition the search code tests).
  `akr5Conclusion_iff_adjacent` proves they are equivalent.
* `EndgameData.lean` — **generated**, do not edit. Produced deterministically by
  `gen_endgame_data.py` from `data/certificates/final_elimination_225.json`.
* `Endgame.lean` — the theorems. Headline:
  `all_225_cases_fail_AKR5_requirement` and
  `all_225_cases_fail_AKR5_conclusion`.

Regenerate and check the data with

```
python3 lean/gen_endgame_data.py --stdout | diff - lean/EndgameData.lean
```

### Scope — these are theorems about a stored certificate, not about polygons

`certificates` is a list of 225 records of integers and lists of integers. No
theorem statement in these files mentions a polygon, a point or a coordinate;
the objects quantified over are `Nat`s, `List Nat`s and `Case` records. Read the
header of `Endgame.lean` for the long form; the short form is:

**Lean verifies, for each of the 225 records:**

1. **Component separation**, recomputed in the kernel via the separator
   argument. The certificate's own `components_P` array is *not* trusted:
   `sepP`/`sepQ` are derived data (not JSON fields), and the kernel checks that
   the vertex set they encode is closed under adjacency, contains `p_pairI` and
   omits `p_pairJ`. That is what makes "the two sides lie in different
   components" a theorem (`all_225_pairs_in_different_components`) rather than
   an assumption.
2. **Failure of the AKR-L5 adjacency conclusion** for the stored pair
   (`all_225_cases_fail_AKR5_conclusion`, equivalently
   `..._fail_AKR5_requirement`).
3. Bookkeeping: 225 records, `case_id`s `0..224`, distinct canonical keys,
   well-formed 7-bit masks, 9 edges and degree sequence `(2,2,1,1,1,1,1)` on
   both sides recomputed from the masks, and consistency of the stored witness
   fields with the masks.

**Lean does NOT establish:**

* **The geometric *avoiding* status of the stored side pair.**
  `pair_kind = "avoiding"` is a **stored Boolean flag** copied out of the JSON,
  and `witnessConsistent` only checks that the Boolean is `true`. That is a fact
  about the file on disk, not a geometric proof. What *is* recomputed is the
  necessary combinatorial part only: that the two indices are `< 7`, distinct,
  and not cyclically consecutive. A record whose flag was wrong would pass every
  theorem in the file.
* **The correspondence between exceptional-class profiles and actual polygons.**
  `class_P` and `class_Q` are opaque `Nat` labels; nothing ties them to
  exceptional simple 7-gons, to the 14-entry classification table, or to any
  geometric object, and nothing says a surviving pair of heptagons must have a
  profile in this list.
* **AKR Lemma 5 itself** — external and geometric; its conclusion is
  *formalised* (`AKR5Conclusion`) but never derived, and never assumed as an
  `axiom` either.
* **Completeness of the 225-case list**, which rests entirely on the
  unformalised enumeration upstream.

So the conditional actually proved is: *given* the certificate data, *given*
that the stored `avoiding` flags are geometrically correct, and *given* AKR
Lemma 5, all 225 remaining cases die.

Non-vacuity is checked inside Lean: `akr5_not_vacuous` shows that 2016 of the
225 × 21 = 4725 side pairs of these very graphs *do* satisfy the condition, and
`case0_contrast` exhibits one graph where the stored pair fails it while another
pair of the same graph satisfies it.

### The future interface for the endgame (specified, not built)

Turning the above into an impossibility theorem about polygons — something of
the shape `theorem no_exceptional_survivor (K : Config) : ¬ Survives K` — would
need the following. This is **one sufficient route**, not the only conceivable
one, and **none of it exists**: what follows is a specification of missing work,
not a claim about it. File names follow `../docs/lean-architecture.md`.

| # | What must be supplied | By |
|---|---|---|
| I1 | `Config`: a type of pairs of simple 7-gons in general position, at the orientation-predicate level of `LowerBound.lean` | **supplied** by `DisjointnessGraph.lean` (`Config`, with `simple7_Pv`/`simple7_Qv` exhibiting `LowerBound.P_simple`/`Q_simple` as instances) |
| I2a | `toMasks : Config → (Nat → Nat)` **and** `toMasks_spec` at the **orientation level**: bit `j` of mask `i` holds iff side `i` of `P` does not properly cross side `j` of `Q` | **supplied** by `DisjointnessGraph.lean` (`toMasks`, `toMasks_spec`, `toMasksQ_spec`) |
| I2b | the same specification with *point-set* disjointness of the two closed sides in place of "no proper crossing". Needs real coordinates, `segment`, `Convex` — i.e. Mathlib — and so cannot live in the Mathlib-free endgame group | **supplied**, in a separate library: `PointSetSemantics.lean` proves `disjointO_iff_disjoint` (both directions) and `toMasks_pointSet_spec`, keeping `DisjointnessGraph.lean` itself Mathlib-free. It is **not** imported by `MainTheorem.lean`, so the main chain remains orientation-level; I2b is available, not yet used |
| I3 | `Avoiding : Config → Nat → Nat → Prop` (the order-type notion) **and** `avoiding_of_flag : ProfileOf K = c → c.avoiding = true → Avoiding K c.pairI c.pairJ`. This is exactly the gap left by the stored flag; it cannot be proved *from* the flag and must be re-derived from the exceptional class of `K` | `Classification.lean` + `Profiles.lean` (absent) |
| I4 | AKR Lemma 5 as an imported statement, honestly flagged as an `axiom` or proved: `akr5 : (CycAdj a b ∨ Avoiding K a b) → ¬ Conn (toMasks K) (P a) (P b) → AKR5Conclusion (toMasks K) a b` | `Imported.lean` (absent) |
| I5 | `ProfileOf : Config → Case` **and** `profile_complete : Survives K → ∃ c ∈ certificates, ProfileOf K = c`, plus invariance under the dihedral relabelling used to canonicalise. The formalised counterpart of the 13,003,620-graph enumeration, and by far the largest missing piece | `Elimination.lean` (absent) |

Given I1, I2a, I3, I4 and I5 the assembly is short, purely logical, and uses
these files unchanged: I5 yields a record `c`; rewriting along `ProfileOf K = c` turns
`all_225_pairs_in_different_components c` into disconnection in `toMasks K`;
`all_witnesses_consistent c` gives distinctness, non-consecutiveness and
`c.avoiding = true`, which I3 upgrades to `Avoiding K c.pairI c.pairJ`; I4 then
forces `AKR5Conclusion (toMasks K) c.pairI c.pairJ`, contradicting
`all_225_cases_fail_AKR5_conclusion c`.

The value of writing the interface down is that it localises the remaining
gaps: **I3 is where the `avoiding` flag stops being a flag**, **I5 is where the
225-case list stops being a list someone handed us**, and **I2b is where the
orientation predicates would have to become statements about point sets in ℝ².**
I1 and I2a are no longer gaps.

## `DisjointnessGraph.lean` — the geometry→endgame bridge

**Added 2026-09-14.** Core Lean only, `autoImplicit false`, **no
`Classical.choice`**. It imports `GeometryDefs`, `LowerBound`, `EndgameDefs` and
`SegmentGeometry`; none of those reaches Mathlib, so the whole group stays
outside Mathlib's trust base.

It supplies interface items **I1** and **I2a** of the endgame table above:

* `Config` — two heptagons given as vertex functions, carrying the
  general-position package (`Simple7` for each, no vertex of one on a side line
  of the other). `simple7_Pv` and `simple7_Qv` show that the certificate
  heptagons of `LowerBound.lean` are instances, so `Config` demands exactly what
  that file already proves and nothing more.
* `toMasks : Config → (Nat → Nat)` and `toMasksQ`, with `toMasks_spec` /
  `toMasksQ_spec`: bit `j` of mask `i` is `true` **iff** `DisjointO K i j`,
  where `DisjointO K i j := ¬ ProperCross (side i of P) (side j of Q)`.
* `min_degree_both_sides` — every side on either heptagon has mask degree ≥ 1,
  obtained from `SegmentGeometry`'s `exists_disjoint_Pside`/`_Qside`, so the
  minimum-degree hypothesis the enumeration assumes is *derived* for any
  `Config`.
* `conn_of_disjointO` and `no_common_disjointO_of_sep` connect `toMasks` to
  `EndgameDefs.Conn` and to the separator argument `Endgame.lean` uses.
* `cert_masks`, `cert_masksQ`, `cert_min_degree_P/Q`, `cert_degsP/Q`,
  `cert_edgeCount_eq_disjointCount` — the whole thing instantiated at the
  certificate heptagons, which is what makes it non-vacuous.
  `cert_edgeCount_eq_disjointCount` proves, by `decide`, that the sum of the
  seven mask degrees of `toMasks certConfig` equals `LowerBound.disjointCount`
  — which `LowerBound.disjoint_count_eq_11` separately evaluates to 11 — so the
  bridge's graph is literally the one the lower-bound file counts.
  `cert_disjointO_nontrivial` shows `DisjointO` is a real constraint there:
  side 0 of `P` is `DisjointO` from side 3 of `Q` but not from side 0.

**No new vocabulary without a proved agreement.** `Pt`, `orient`,
`ProperCross`, `vtx`, `liftFin7` come from the geometry group; `bitAt`, `deg`,
`transposeMask`, `Conn`, `InSep`, `SepClosed` come from `EndgameDefs`. No
component notion is introduced: `Conn` is already parametric in the mask
function, so `Conn (toMasks K)` *is* the connectivity of the configuration's
disjointness graph. `transposeMask_eq_mkMask` is `rfl` and needs no axioms at
all; `toMasks_eq_getD` and `case_M_eq_toMasks` match `toMasks` to `Case.M`'s
shape, so a future `ProfileOf K = c` rewrites a certificate record into a
configuration's masks in one step.

**Scope note — the one place it departs from `Endgame.lean`'s sketch of (I2).**
`Endgame.lean` phrases I2 with *set-theoretic* disjointness of the two closed
sides. That is **not** what is proved here and the file does not claim it:
`Pt` is `Int × Int`, and nowhere in this development is a side defined as a set
of points. Writing that statement would require ℝ², `segment` and `Convex`,
i.e. Mathlib, which would destroy the Mathlib-free trust base shared by
`GeometryDefs`, `SegmentGeometry`, `LowerBound` and the endgame files. The step
from "the two closed segments do not cross transversally" to "the two closed
segments are disjoint as point sets" is the same unformalised step flagged in
`LowerBound.lean` and `SegmentGeometry.lean`, and is listed as **I2b** above.

`DisjointnessGraph.lean` supplies **nothing** of I3 (the `avoiding` flag), I4
(AKR Lemma 5) or I5 (`ProfileOf` and completeness of the 225-case list). Those
remain exactly as open as `Endgame.lean` says they are.

## `Lemma7Bridge.lean` — the A7 bridge

Core Lean, zero imports, `autoImplicit false`. It formalises **only** the
project's own inference

> non-empty status sets + status sets disjoint across edges ⟹ `H` is bipartite

AKR Lemma 7 is never assumed, axiomatised, or **stated**: the disjointness
condition is an explicit hypothesis `hdisj` of every theorem, and nothing in the
file derives it. (Precisely: with comments stripped, the string `AKR` does not
occur in the file at all; it appears three times in prose — the header, the
docstring of `Status`, and the docstring of the main theorem. So "not named"
holds of the *code*, not of the file as a text.)

**On the decidability hypothesis `hdec`.** `disjoint_statuses_imply_bipartite`
takes `hdec : ∀ e, Decidable (S e Status.hooking)`. This is a **formalization
convenience, not a mathematical assumption, and not an unproved geometric
hypothesis.** `Bipartite` is defined as the existence of a `Bool`-valued proper
2-colouring while `S` is an arbitrary `Prop`-valued predicate, so a decision
procedure is needed purely to *write down* a function `V → Bool`. Three
independent confirmations that it costs nothing:

* it is discharged definitionally for any explicitly given status assignment
  (`Example.bipartite`);
* `disjoint_statuses_imply_bipartite'` reaches the same conclusion in partition
  form with no decidability hypothesis at all, and no axioms;
* `disjoint_statuses_imply_bipartite_classical` drops `hdec` outright, deriving
  the `Bool`-colouring conclusion from `hne` and `hdisj` alone via
  `Classical.propDecidable` — at the cost of `Classical.choice`, as the axiom
  table above records. It is the only declaration in the file that depends on
  any axiom.

Non-vacuity is proved, not asserted: a three-vertex model in which the
hypotheses hold *and there is a real edge*; a concrete both-status vertex shown
isolated; and the triangle shown **not** bipartite, hence admitting no valid
status assignment at all.

## `CernyL2Interface.lean` — the C2 bridge

Core Lean, zero imports, `autoImplicit false`. `l2FiresB_iff` and `l2OkB_iff`
prove that the filter predicate **as transcribed in this file** fires at a
window exactly when some 4-tuple of Q-sides induces, with the four window sides,
a block that is *exactly* a perfect matching: all four matching edges present
and all twelve cross pairs absent.

**Verified transcription ≠ verified implementation.** What is kernel-checked is
a property of the Lean definitions `matchAtB` / `l2FiresB` / `l2OkB`. Those
definitions were transcribed **by hand** from `L2_ok` in
`../python/elimination/audit_enum.py` and `l2_ok` in
`../independent/implementation_b/reduction.cpp`. There is **no code extraction
out of Lean**, no compilation of these definitions into the pipeline, and **no
mechanised cross-check against the Python source or the C++ binary**. That the
Lean definitions faithfully mirror the two implementations is an unverified
human reading, and is where this bridge can still fail.

**The extra-edge fixtures, stated correctly.** Adding an edge inside a 4×4 block
destroys the exact-matching property of **that particular block**. It does *not*
follow that the filter stops firing: `l2FiresB` quantifies existentially over
all ordered 4-tuples of Q-sides and `l2OkB` over all windows of the class, so
**another block — at the same window or a different one — can still trigger the
filter.** The fixtures are per-fixture facts, not general laws:

* `test_extraEdge_notDetected` / `test_extraEdge_noPattern`: for the specific
  mask family `Nextra` (`Npos` plus the edge `(p_0, q_1)`, inside the block), no
  window fires at all. True of `Nextra`; **not** a general "an extra edge stops
  the filter" law.
* `test_outsideEdge_detected`: for `Noutside` (`Npos` plus `(p_0, q_4)`, outside
  the block) the filter still fires — the forbidden pattern is a property of the
  *induced* subgraph, so edges leaving the block are harmless to it.

Nothing geometric is proved: the file says nothing about polygons, triangles,
`D ∈ int(ABC)`, or order types, and Černý Lemma 2 itself remains an external
mathematical dependency.
