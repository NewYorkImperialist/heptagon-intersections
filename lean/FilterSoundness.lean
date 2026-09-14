/-
  FilterSoundness.lean

  ENUMERATION-COMPLETENESS OBLIGATION (4), STATED FILTER BY FILTER.

  Imports `DisjointnessGraph`, `Lemma7Bridge` and `CernyL2Interface` -- all of
  them Mathlib-free -- so this file stays outside Mathlib's trust base.  No
  `sorry`, no `admit`, no project-level `axiom`, no `native_decide`, no
  `unsafe`, no `partial`.  `set_option autoImplicit false` throughout.

  ---------------------------------------------------------------------------
  1. WHAT OBLIGATION (4) SAYS
  ---------------------------------------------------------------------------

  `EnumerationDomain.lean`'s header splits "enumeration completeness" into four
  obligations.  Obligations (1), (2) and (3) are proved elsewhere in this
  development (`EnumerationDomain.lean`, `DomainCount.lean`,
  `EnumerationComplete.lean`).  This file is about the fourth:

      (4) EVERY VALID CONFIGURATION SURVIVES EACH FILTER, until it reaches a
          terminal case that is proved impossible.

  Made precise.  Let `K : DisjointnessGraph.Config` be a valid configuration --
  two simple heptagons in general position, at the orientation level at which
  the whole development works -- and suppose (as the upper-bound proof does)
  that `K` has 40 boundary intersections, so that `M := toMasks K` lies in the
  enumeration domain (that is obligation (1),
  `EnumerationDomain.toMasks_inDomain_of_crossCount_eq_40`).  The search then
  runs five filters on `M`, in this order:

      (a) AKR Lemma 5 on CONSECUTIVE pairs          (`L5_ok`   / `l5_consecutive`)
      (b) AKR Lemma 7  =>  H is bipartite           (`H_bip`   / `h_bipartite`)
      (c) crossing-set compatibility                (`al`      / `compatible`)
      (d) Cerny et al. Lemma 2, class-dependent     (`L2_ok`   / `l2_ok`)
      (e) AKR Lemma 5 on AVOIDING pairs             (`L5_ok` over `AV`)

  Obligation (4) is the conjunction of five statements of the form

      for EVERY valid `K` (with 40 crossings), filter `X` accepts `toMasks K`.

  Two remarks that are easy to get wrong, and that this file's statements
  encode explicitly.

  * The five filters are applied in sequence, so a priori obligation (4) for
    filter `X` need only cover configurations that survived the earlier
    filters.  Nothing below uses that weakening: each statement below is
    "filter `X` accepts the mask function of every valid configuration",
    which is stronger and is what the informal argument actually claims.

  * Filters (c), (d), (e) are not predicates on the graph alone.  They are
    applied to (class, graph) pairs, and the rejection test of the search is
    "NO class survives" (`if not okP or not okQ: continue`).  So the
    obligation for those three filters is NOT "all classes survive" but
    "the TRUE class of `K` survives" -- which additionally presupposes that
    `K`'s heptagons are among the 14 enumerated exceptional classes, and that
    the stored data (maximal crossing sets, Lemma-2 windows, avoiding pairs)
    of that class is correct for `K`.  Those presuppositions are carried below
    as explicit hypotheses; they are not proved anywhere in this development.

  ---------------------------------------------------------------------------
  2. WHAT THIS FILE PROVES, AND WHAT IT ONLY STATES
  ---------------------------------------------------------------------------

  Nothing here closes obligation (4).  What is done is the Lemma7Bridge /
  CernyL2Interface manoeuvre, applied five times: the external mathematical
  content is isolated as an explicitly named hypothesis of a theorem, and the
  implication from that hypothesis to "the filter accepts `toMasks K`" is
  kernel-checked.

  PROVED (theorems below; each is an implication, from a named hypothesis):

    * `akr5ConclusionG_iff`   -- the GEOMETRIC conclusion of AKR Lemma 5 for a
                                 pair of sides of `K` is equivalent to
                                 `Endgame.AKR5Conclusion (toMasks K)`, hence
                                 (by `Endgame.akr5Conclusion_iff_adjacent`,
                                 already an iff) to the Boolean test
                                 `akr5AdjB` the search actually runs.  This is
                                 the missing link the task description names:
                                 `akr5Conclusion_iff_adjacent` relates two
                                 predicates on a mask function `M`, and
                                 `akr5ConclusionG_iff` relates those to a
                                 statement about the geometry of `K`.
    * `filterA_sound`, `filterA_sound_Q`, `filterE_sound`, `filterE_sound_Q`
                              -- filters (a), (e) accept, from AKR Lemma 5's
                                 conclusion as a hypothesis.
    * `bipartite_of_statuses`, `filterB_sound`, `filterB_sound_Q`
                              -- filter (b) accepts, from AKR Lemma 7's
                                 conclusion (nonempty, pairwise-disjoint status
                                 sets on the auxiliary graph H) as a
                                 hypothesis.  The graph-theoretic step is
                                 `Lemma7Bridge.disjoint_statuses_imply_bipartite`;
                                 what is added here is that H is built from the
                                 CONNECTIVITY of `K`'s disjointness graph
                                 (`HAdjR`) and that the search's label-based H
                                 (`HAdj`) agrees with it when the component
                                 labelling is correct (`hAdj_iff_of_cmp`).
    * `bitAt_crossMask_iff`, `filterC_sound`, `filterC_sound_Q`
                              -- filter (c) accepts, from the order-type fact
                                 as a hypothesis.  The proved content is that
                                 the bit-twiddling `(~N[j]) & 127` the search
                                 performs really does compute the set of sides
                                 of `P` crossed by side `j` of `Q`.
    * `geoWindowMatching_iff`, `filterD_sound`, `filterD_sound_Q`
                              -- filter (d) accepts, from Cerny Lemma 2 as a
                                 hypothesis.  `CernyL2Interface.l2OkB_iff`
                                 already certifies that the filter fires iff an
                                 exact induced perfect matching exists in a
                                 MASK FUNCTION; `geoWindowMatching_iff` supplies
                                 the missing step, that this is equivalent to
                                 the corresponding pattern in the DISJOINTNESS
                                 RELATION of a geometric `Config`.
    * `filterCDE_sound`       -- the class stage as the code actually rejects:
                                 the list of surviving classes is nonempty.

  STATED ONLY (hypotheses of the theorems above; NOT proved anywhere here, and
  not assumed globally -- there is no `axiom` in this file):

    (E1) AKR Lemma 5 for consecutive pairs: if two cyclically consecutive sides
         of `P` lie in different components of `K`'s disjointness graph, the
         lemma's conclusion holds for them.  Hypothesis `hAKR5` of
         `filterA_sound`.
    (E2) AKR Lemma 5 for avoiding pairs, plus the claim that the stored list
         `AV` of the matched class really consists of avoiding pairs of `K`.
         Hypotheses `hAVlist`, `hAKR5` of `filterE_sound`.
    (E3) AKR Lemma 7, in the form used by the project: every vertex of H has a
         nonempty status set and adjacent vertices have disjoint status sets.
         Hypotheses `hne`, `hdisj` of `filterB_sound`.  AKR Lemma 7 itself is
         neither stated nor proved here (nor in `Lemma7Bridge.lean`).
    (E4) The order-type fact behind filter (c): the set of sides of `P` crossed
         by a side of `Q` is contained in a maximal crossing set of `P`'s
         class.  Hypothesis `hcross` of `filterC_sound`.
    (E5) Cerny et al. Lemma 2: no Lemma-2 window of `K` carries an exact
         induced perfect matching.  Hypothesis `hC2` of `filterD_sound`.
    (E6) Correctness of the component labelling computed by the search's
         union-find.  Hypothesis `hcmp`.  NOTE the asymmetry, which this file
         makes explicit and which is easy to miss: filters (a) and (e) need
         only the direction "different labels => really different components"
         (`hcmp` of `filterA_sound`), because a labelling that merges
         components only makes those filters test FEWER pairs; filter (b) needs
         BOTH directions (`hcmp` of `filterB_sound` is an iff), because H's
         edges are defined by label distinctness, so a labelling that splits a
         component can give H MORE edges, and bipartiteness of the true H says
         nothing about a supergraph of it.
    (E7) `K`'s heptagons are among the 14 enumerated exceptional classes, and
         the stored `ClassData` of the matched class is correct for `K`.
         Hypothesis `hmem` of `filterCDE_sound` together with (E2), (E4), (E5).
    (E8) That the search program's bipartiteness routine (DSU with parity, or
         the Python DFS 2-colouring) returns `true` exactly when H is
         bipartite.  This is a standard algorithmic fact; it is NOT formalised,
         and `HBipOk` below is the mathematical predicate, not a transcription
         of that routine.

  TRANSCRIPTION, NOT EXTRACTION.  Exactly as in `CernyL2Interface.lean`: the
  Lean definitions `l5TestB`, `HAdj`, `CompatOk`, `L2Ok`, `L5PairsOk` were
  written BY HAND from `python/elimination/audit_enum.py` (`process`, `L5_ok`,
  `H_bip`, `L2_ok`, `classdata`) and `independent/implementation_b/reduction.cpp`
  (`handleGraph`, `l5_consecutive`, `h_bipartite`, `compatible`, `l2_ok`).
  Nothing in Lean reads, compiles or cross-checks either program.  Where a
  theorem below says "the filter", read "the Lean transcription of the filter".

  TWO DISCREPANCIES BETWEEN THE TWO IMPLEMENTATIONS, recorded here because they
  bear directly on obligation (4) and are not visible from the five-filter
  description:

    * `python/elimination/audit_enum.py` runs a SIXTH filter, `L3_ok` (Cerny et
      al. Lemma 3), between (b) and (c), on both `N` and `NQ`.  Its soundness
      obligation -- that deleting one side of `P` and one side of `Q` from a
      valid configuration never leaves an exact induced perfect matching on the
      remaining 6 + 6 sides -- is NOT stated in this file.  It is a genuine
      sixth obligation and it is open.
    * `independent/implementation_b/reduction.cpp` does NOT implement filter
      (e); its own header (line 20) and `SPEC.md` sec. 6 say so, and its output
      records `"final_avoiding_pair_filter_applied": false`.  So the two
      implementations run different pipelines, and the intersection of what
      they check is (a), (b), (c), (d).

  ---------------------------------------------------------------------------
  3. AXIOMS (verbatim `#print axioms`, Lean 4.33.1)
  ---------------------------------------------------------------------------

  Only the three standard Lean axioms occur; nothing project-specific is
  assumed, and this file contains no `axiom` command.  The principal
  declarations:

    'Heptagon.FilterSoundness.mod7_lt' does not depend on any axioms
    'Heptagon.FilterSoundness.instDecidableCycAdj' does not depend on any axioms
    'Heptagon.FilterSoundness.specOf_false' does not depend on any axioms
    'Heptagon.FilterSoundness.specOf_toMasks' depends on axioms: [propext, Quot.sound]
    'Heptagon.FilterSoundness.specOf_toMasksQ' depends on axioms: [propext, Quot.sound]
    'Heptagon.FilterSoundness.toMasks_min_degree' depends on axioms: [propext, Quot.sound]
    'Heptagon.FilterSoundness.akr5ConclusionG_iff' does not depend on any axioms
    'Heptagon.FilterSoundness.l5TestB_of_akr5G' depends on axioms: [propext, Quot.sound]
    'Heptagon.FilterSoundness.consecPairs_ok' does not depend on any axioms
    'Heptagon.FilterSoundness.filterA_sound' depends on axioms: [propext, Quot.sound]
    'Heptagon.FilterSoundness.filterA_sound_Q' depends on axioms: [propext, Quot.sound]
    'Heptagon.FilterSoundness.filterE_sound' depends on axioms: [propext, Quot.sound]
    'Heptagon.FilterSoundness.filterE_sound_Q' depends on axioms: [propext, Quot.sound]
    'Heptagon.FilterSoundness.hAdj_symm' does not depend on any axioms
    'Heptagon.FilterSoundness.hVertex_iff_of_cmp' does not depend on any axioms
    'Heptagon.FilterSoundness.hAdj_iff_of_cmp' does not depend on any axioms
    'Heptagon.FilterSoundness.bipartite_of_statuses' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.FilterSoundness.hBipOk_of_statuses' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.FilterSoundness.filterB_sound' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.FilterSoundness.filterB_sound_Q' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.FilterSoundness.bitAt_crossMask' depends on axioms: [propext, Quot.sound]
    'Heptagon.FilterSoundness.bitAt_crossMask_iff' depends on axioms: [propext, Quot.sound]
    'Heptagon.FilterSoundness.filterC_sound' depends on axioms: [propext, Quot.sound]
    'Heptagon.FilterSoundness.filterC_sound_Q' depends on axioms: [propext, Quot.sound]
    'Heptagon.FilterSoundness.geoWindowMatching_iff' does not depend on any axioms
    'Heptagon.FilterSoundness.filterD_sound' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.FilterSoundness.filterD_sound_Q' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.FilterSoundness.filterCDE_sound' depends on axioms: [propext, Quot.sound]

  Every theorem of the `Example` namespace reports one of
  `does not depend on any axioms`, `[propext]`, `[propext, Quot.sound]` or
  `[propext, Classical.choice, Quot.sound]`; the full list was checked, and no
  other axiom appears anywhere.

  Where `Classical.choice` comes from, so that nobody mistakes it for hidden
  mathematics: `filterB_sound` uses
  `Lemma7Bridge.disjoint_statuses_imply_bipartite_classical`, whose own header
  explains that the classical step only discharges a decidability hypothesis
  needed to write down a `Bool`-valued colouring; and `filterD_sound` inherits
  it from `CernyL2Interface.l2OkB_iff`, which already reports
  `[propext, Classical.choice, Quot.sound]`.

  NON-VACUITY.  Section 8 proves, as Lean theorems and not as assertions, that
  each filter predicate is a real constraint (there are mask functions each one
  REJECTS) and that the hypotheses are satisfiable -- for (a), (d) and (e) at
  the actual certificate pair of heptagons `DisjointnessGraph.certConfig`, by
  APPLYING the theorems above to it rather than by `decide` on the conclusion.

  WHAT THIS FILE IS NOT.  It is not a proof of obligation (4); it is not a
  proof of AKR Lemma 5, AKR Lemma 7 or Cerny Lemma 2; it does not show that
  `K`'s heptagons are exceptional; it does not verify any component-labelling
  or bipartiteness algorithm; and it does not verify that the Lean definitions
  agree with the Python or C++ source.  Every one of those is listed above as
  (E1)-(E8) or as a transcription caveat, and every one of them is still open.
-/
import DisjointnessGraph
import Lemma7Bridge
import CernyL2Interface

set_option autoImplicit false

namespace Heptagon
namespace FilterSoundness

open Heptagon.Endgame
open Heptagon.DisjointnessGraph

/-! ## 0. Small arithmetic and decidability helpers -/

theorem mod7_lt (x : Nat) : x % 7 < 7 := Nat.mod_lt x (by decide)

instance instDecidableCycAdj (x y : Nat) : Decidable (CycAdj x y) := by
  unfold CycAdj; infer_instance

/-! ## 1. The specification relating a mask function to a geometric relation

Every filter is a predicate on a *mask function* `M : Nat -> Nat`.  Geometry
enters only through `SpecOf M R`, which says that `M` is the incidence matrix of
the relation `R` on side indices `0..6`.  `DisjointnessGraph.toMasks_spec` says
exactly that `toMasks K` satisfies `SpecOf` for `DisjointO K`, and
`toMasksQ_spec` the same for the transposed relation -- so everything proved in
the abstract sections below applies verbatim to both sides of a `Config`, with
no duplicated argument. -/

/-- `M` is the incidence matrix of `R` on `0..6`. -/
def SpecOf (M : Nat → Nat) (R : Nat → Nat → Prop) : Prop :=
  ∀ i j, i < 7 → j < 7 → (bitAt (M i) j = true ↔ R i j)

/-- The negative half of `SpecOf`: an unset bit is a non-related pair. -/
theorem specOf_false {M : Nat → Nat} {R : Nat → Nat → Prop} (hspec : SpecOf M R)
    {i j : Nat} (hi : i < 7) (hj : j < 7) : bitAt (M i) j = false ↔ ¬ R i j := by
  constructor
  · intro hf hr
    have h := (hspec i j hi hj).mpr hr
    rw [hf] at h
    exact Bool.noConfusion h
  · intro hnr
    cases h : bitAt (M i) j with
    | false => rfl
    | true => exact absurd ((hspec i j hi hj).mp h) hnr

/-- **The `P`-side instance.**  `toMasks K` is the incidence matrix of `K`'s
orientation-level disjointness relation.  This is `toMasks_spec`. -/
theorem specOf_toMasks (K : Config) : SpecOf (toMasks K) (DisjointO K) :=
  fun i j hi hj => toMasks_spec K i j hi hj

/-- **The `Q`-side instance.**  `toMasksQ K` is the incidence matrix of the
transposed relation.  This is `toMasksQ_spec`. -/
theorem specOf_toMasksQ (K : Config) : SpecOf (toMasksQ K) (fun j i => DisjointO K i j) :=
  fun j i hj hi => toMasksQ_spec K i j hi hj

/-- **Standing precondition.**  The filters are only ever applied to mask
functions coming from the enumeration domain, whose minimum-degree clause is a
theorem about every configuration (`DisjointnessGraph.min_degree_both_sides`,
proved from the parity argument of `SegmentGeometry.lean`).  Recorded here
because it is the only property of the *input* to the pipeline that this
development actually establishes. -/
theorem toMasks_min_degree (K : Config) :
    (∀ i, i < 7 → 1 ≤ deg (toMasks K i)) ∧ (∀ j, j < 7 → 1 ≤ deg (toMasksQ K j)) :=
  min_degree_both_sides K

/-! ## 2. Filters (a) and (e): AKR Lemma 5, on consecutive and on avoiding pairs

Both filters run the SAME test, `L5_ok(N[a], N[b])` in Python /
`l5_consecutive(row[a], row[b])` in C++, on a pair `(a,b)` of sides that the
component labelling separates; they differ only in WHICH pairs are tested, and
therefore in which instance of AKR Lemma 5 is needed to justify them. -/

/-- The Boolean test the search runs on a pair of sides.  It is
`Endgame.akr5AdjB` applied to the two neighbourhood masks: `A = N_a \ N_b`,
`B = N_b \ N_a`, and the test asks for `k in A`, `k' in B` cyclically
consecutive. -/
def l5TestB (M : Nat → Nat) (a b : Nat) : Bool := akr5AdjB (M a) (M b)

/-- The GEOMETRIC form of AKR Lemma 5's conclusion for the pair of sides
`(a, b)`: two cyclically consecutive sides `i, i'` of the other polygon with
`i` disjoint from `a` but not from `b`, and `i'` disjoint from `b` but not from
`a`.  Stated with the relation `R`, so that at a `Config` it is a statement
about `DisjointO K` -- i.e. about the geometry -- and not about bitmasks. -/
def AKR5ConclusionG (R : Nat → Nat → Prop) (a b : Nat) : Prop :=
  ∃ i, i < 7 ∧ ∃ i', i' < 7 ∧ CycAdj i i' ∧ R a i ∧ R b i' ∧ ¬ R a i' ∧ ¬ R b i

/-- **The geometry-to-mask bridge for AKR Lemma 5.**  The lemma's conclusion,
read off the geometry, is exactly `Endgame.AKR5Conclusion` for the induced mask
function.  Composed with `Endgame.akr5Conclusion_iff_adjacent` (already an iff)
this makes the filter provably neither a weakening nor a strengthening of the
lemma's geometric conclusion. -/
theorem akr5ConclusionG_iff {M : Nat → Nat} {R : Nat → Nat → Prop} (hspec : SpecOf M R)
    {a b : Nat} (ha : a < 7) (hb : b < 7) :
    AKR5ConclusionG R a b ↔ AKR5Conclusion M a b := by
  constructor
  · intro ⟨i, hi, i', hi', hadj, r1, r2, r3, r4⟩
    exact ⟨i, hi, i', hi', hadj, (hspec a i ha hi).mpr r1, (hspec b i' hb hi').mpr r2,
      (specOf_false hspec ha hi').mpr r3, (specOf_false hspec hb hi).mpr r4⟩
  · intro ⟨i, hi, i', hi', hadj, b1, b2, b3, b4⟩
    exact ⟨i, hi, i', hi', hadj, (hspec a i ha hi).mp b1, (hspec b i' hb hi').mp b2,
      (specOf_false hspec ha hi').mp b3, (specOf_false hspec hb hi).mp b4⟩

/-- **The whole content of filters (a) and (e), for one pair.**  If AKR Lemma
5's geometric conclusion holds for `(a,b)`, the search's Boolean test on that
pair returns `true`, i.e. the configuration is not discarded because of it. -/
theorem l5TestB_of_akr5G {M : Nat → Nat} {R : Nat → Nat → Prop} (hspec : SpecOf M R)
    {a b : Nat} (ha : a < 7) (hb : b < 7) (h : AKR5ConclusionG R a b) :
    l5TestB M a b = true :=
  (akr5AdjB_iff _ _).mpr ((akr5Conclusion_iff_adjacent M a b).mp
    ((akr5ConclusionG_iff hspec ha hb).mp h))

/-- The search's rejection test over a list `L` of side pairs: every pair whose
endpoints the component labelling `cmp` separates must pass `l5TestB`.  Filter
(a) is this at `L = consecPairs`; filter (e) is this at `L = ` the avoiding
pairs of the matched class. -/
def L5PairsOk (M : Nat → Nat) (cmp : Nat → Nat) (L : List (Nat × Nat)) : Prop :=
  ∀ p ∈ L, cmp p.1 ≠ cmp p.2 → l5TestB M p.1 p.2 = true

/-- The seven cyclically consecutive ordered pairs of sides: the `for i in
range(7)` loop of `process`. -/
def consecPairs : List (Nat × Nat) := [(0,1), (1,2), (2,3), (3,4), (4,5), (5,6), (6,0)]

/-- `consecPairs` really is a list of in-range, cyclically consecutive pairs, so
the hypothesis `hAKR5` of `filterA_sound` is an instance of AKR Lemma 5 *for
consecutive pairs* and of nothing stronger. -/
theorem consecPairs_ok : ∀ p ∈ consecPairs, p.1 < 7 ∧ p.2 < 7 ∧ CycAdj p.1 p.2 := by decide

/-- **FILTER (a) IS SOUND, given AKR Lemma 5 for consecutive pairs.**

`hcmp` is (E6) in the weak direction only: if the search's component labelling
gives two sides different labels, they really are in different components of
`K`'s disjointness graph (`Endgame.Conn (toMasks K)` *is* that connectivity, by
`DisjointnessGraph.conn_of_disjointO`).  A labelling that wrongly MERGES two
components is harmless here -- it only makes the filter test fewer pairs.

`hAKR5` is (E1): AKR Lemma 5 itself, for the seven consecutive pairs, with its
conclusion read geometrically off `DisjointO K`.  It is not proved anywhere in
this development. -/
theorem filterA_sound (K : Config) (cmp : Nat → Nat)
    (hcmp : ∀ a b, a < 7 → b < 7 → cmp a ≠ cmp b → ¬ Conn (toMasks K) (Vtx.P a) (Vtx.P b))
    (hAKR5 : ∀ p ∈ consecPairs, ¬ Conn (toMasks K) (Vtx.P p.1) (Vtx.P p.2) →
        AKR5ConclusionG (DisjointO K) p.1 p.2) :
    L5PairsOk (toMasks K) cmp consecPairs := by
  intro p hp hne
  obtain ⟨h1, h2, _⟩ := consecPairs_ok p hp
  exact l5TestB_of_akr5G (specOf_toMasks K) h1 h2 (hAKR5 p hp (hcmp _ _ h1 h2 hne))

/-- **FILTER (a) IS SOUND -- the `Q`-side copy.**  The search runs the same
filter on the transposed graph (`NQ` in Python, `col` in C++); the roles of the
two heptagons are exchanged, so the relation is `fun j i => DisjointO K i j` and
connectivity is taken at the `Q`-vertices of the same bipartite graph. -/
theorem filterA_sound_Q (K : Config) (cmp : Nat → Nat)
    (hcmp : ∀ a b, a < 7 → b < 7 → cmp a ≠ cmp b → ¬ Conn (toMasks K) (Vtx.Q a) (Vtx.Q b))
    (hAKR5 : ∀ p ∈ consecPairs, ¬ Conn (toMasks K) (Vtx.Q p.1) (Vtx.Q p.2) →
        AKR5ConclusionG (fun j i => DisjointO K i j) p.1 p.2) :
    L5PairsOk (toMasksQ K) cmp consecPairs := by
  intro p hp hne
  obtain ⟨h1, h2, _⟩ := consecPairs_ok p hp
  exact l5TestB_of_akr5G (specOf_toMasksQ K) h1 h2 (hAKR5 p hp (hcmp _ _ h1 h2 hne))

/-- **FILTER (e) IS SOUND, given AKR Lemma 5 for avoiding pairs.**

`AV` is the list of avoiding pairs stored for the matched exceptional class
(`CD[a][2]` in Python).  `Avoiding` is an ABSTRACT predicate: this development
contains no geometric definition of "avoiding" at all -- `EndgameDefs.Case`
records it as a stored Boolean flag and says so.  The two hypotheses therefore
split the external content honestly:

* `hAVlist` is the class-matching half of (E2): every pair the search tests
  really is an avoiding pair of `K`.  Unprovable here, since `Avoiding` is
  abstract and the class data is not formalised.
* `hAKR5` is AKR Lemma 5 for avoiding pairs, again with its conclusion read off
  `DisjointO K`.

`hcmp` is (E6), in the same weak direction as in `filterA_sound`. -/
theorem filterE_sound (K : Config) (cmp : Nat → Nat) (AV : List (Nat × Nat))
    (Avoiding : Nat → Nat → Prop)
    (hAV : ∀ p ∈ AV, p.1 < 7 ∧ p.2 < 7)
    (hAVlist : ∀ p ∈ AV, Avoiding p.1 p.2)
    (hcmp : ∀ a b, a < 7 → b < 7 → cmp a ≠ cmp b → ¬ Conn (toMasks K) (Vtx.P a) (Vtx.P b))
    (hAKR5 : ∀ a b, a < 7 → b < 7 → Avoiding a b →
        ¬ Conn (toMasks K) (Vtx.P a) (Vtx.P b) → AKR5ConclusionG (DisjointO K) a b) :
    L5PairsOk (toMasks K) cmp AV := by
  intro p hp hne
  obtain ⟨h1, h2⟩ := hAV p hp
  exact l5TestB_of_akr5G (specOf_toMasks K) h1 h2
    (hAKR5 _ _ h1 h2 (hAVlist p hp) (hcmp _ _ h1 h2 hne))

/-- **FILTER (e) IS SOUND -- the `Q`-side copy.** -/
theorem filterE_sound_Q (K : Config) (cmp : Nat → Nat) (AV : List (Nat × Nat))
    (Avoiding : Nat → Nat → Prop)
    (hAV : ∀ p ∈ AV, p.1 < 7 ∧ p.2 < 7)
    (hAVlist : ∀ p ∈ AV, Avoiding p.1 p.2)
    (hcmp : ∀ a b, a < 7 → b < 7 → cmp a ≠ cmp b → ¬ Conn (toMasks K) (Vtx.Q a) (Vtx.Q b))
    (hAKR5 : ∀ a b, a < 7 → b < 7 → Avoiding a b →
        ¬ Conn (toMasks K) (Vtx.Q a) (Vtx.Q b) →
        AKR5ConclusionG (fun j i => DisjointO K i j) a b) :
    L5PairsOk (toMasksQ K) cmp AV := by
  intro p hp hne
  obtain ⟨h1, h2⟩ := hAV p hp
  exact l5TestB_of_akr5G (specOf_toMasksQ K) h1 h2
    (hAKR5 _ _ h1 h2 (hAVlist p hp) (hcmp _ _ h1 h2 hne))

/-! ## 3. Filter (b): AKR Lemma 7 and the auxiliary graph H

The search builds an auxiliary graph `H` on the sides of `P`:

    V(H) = { i : comp[i] != comp[i+1] }
    i ~ k  iff  (k-i) mod 7 not in {0,1,6}  and  comp[i], comp[i+1], comp[k],
                comp[k+1]  are four distinct components

and rejects the graph unless `H` is bipartite.  Two versions of `H` are defined
below: `HAdj cmp`, built from the search's component LABELS, and `HAdjC M`,
built from the actual connectivity of the disjointness graph.  They agree when
the labelling is correct, and the direction of correctness needed is an iff --
see (E6) in the file header. -/

/-- `i` and `k` are in the same component of the disjointness graph, both on the
`P` side.  `Endgame.Conn M` *is* the connectivity of `K`'s disjointness graph
when `M = toMasks K`; no new component notion is introduced. -/
def ConnP (M : Nat → Nat) (i k : Nat) : Prop := Conn M (Vtx.P i) (Vtx.P k)

/-- The same on the `Q` side of the same bipartite graph. -/
def ConnQ (M : Nat → Nat) (i k : Nat) : Prop := Conn M (Vtx.Q i) (Vtx.Q k)

/-- A vertex of the search's `H`, defined from the component labels. -/
def HVertex (cmp : Nat → Nat) (i : Nat) : Prop := i < 7 ∧ cmp i ≠ cmp ((i + 1) % 7)

/-- An edge of the search's `H`, defined from the component labels.  The clause
`¬ CycAdj i k` together with `i ≠ k` is the code's `(k-i) % 7 not in {0,1,6}`;
the last four clauses complete "the four components are distinct" (the other
two, `cmp i ≠ cmp (i+1)` and `cmp k ≠ cmp (k+1)`, are the `HVertex` clauses). -/
def HAdj (cmp : Nat → Nat) (i k : Nat) : Prop :=
  HVertex cmp i ∧ HVertex cmp k ∧ i ≠ k ∧ ¬ CycAdj i k ∧
  cmp i ≠ cmp k ∧ cmp i ≠ cmp ((k + 1) % 7) ∧
  cmp ((i + 1) % 7) ≠ cmp k ∧ cmp ((i + 1) % 7) ≠ cmp ((k + 1) % 7)

/-- The same vertex condition, in terms of a connectivity relation `Cn` rather
than of labels.  Instantiated at `ConnP M` for the `P` side and at `ConnQ M` for
the `Q` side. -/
def HVertexR (Cn : Nat → Nat → Prop) (i : Nat) : Prop := i < 7 ∧ ¬ Cn i ((i + 1) % 7)

/-- The same adjacency, in terms of the true connectivity: this is the graph `H`
that AKR Lemma 7 is about. -/
def HAdjR (Cn : Nat → Nat → Prop) (i k : Nat) : Prop :=
  HVertexR Cn i ∧ HVertexR Cn k ∧ i ≠ k ∧ ¬ CycAdj i k ∧
  ¬ Cn i k ∧ ¬ Cn i ((k + 1) % 7) ∧
  ¬ Cn ((i + 1) % 7) k ∧ ¬ Cn ((i + 1) % 7) ((k + 1) % 7)

/-- Filter (b) accepts iff `H` is bipartite, in `Lemma7Bridge`'s sense (it
admits a proper 2-colouring).  The search decides this with a union-find with
parity (C++) or a DFS 2-colouring (Python); that those routines decide
bipartiteness correctly is (E8), and is NOT formalised. -/
def HBipOk (cmp : Nat → Nat) : Prop := Lemma7Bridge.Bipartite (HAdj cmp)

/-- `H` is an undirected graph: `HAdj` is symmetric.  (Nothing below needs it;
it is recorded because the code adds each edge in both directions.) -/
theorem hAdj_symm {cmp : Nat → Nat} {i k : Nat} (h : HAdj cmp i k) : HAdj cmp k i := by
  obtain ⟨hv1, hv2, hik, hcyc, d1, d2, d3, d4⟩ := h
  refine ⟨hv2, hv1, fun he => hik he.symm, ?_, fun he => d1 he.symm, fun he => d3 he.symm,
    fun he => d2 he.symm, fun he => d4 he.symm⟩
  intro hc
  exact hcyc (Or.symm hc)

/-- If the component labelling is correct, the search's `H` is the true `H` --
vertices. -/
theorem hVertex_iff_of_cmp {Cn : Nat → Nat → Prop} {cmp : Nat → Nat}
    (hcmp : ∀ a b, a < 7 → b < 7 → (cmp a = cmp b ↔ Cn a b)) (i : Nat) :
    HVertex cmp i ↔ HVertexR Cn i := by
  constructor
  · intro ⟨hi, h⟩
    exact ⟨hi, fun hc => h ((hcmp i ((i + 1) % 7) hi (mod7_lt _)).mpr hc)⟩
  · intro ⟨hi, h⟩
    exact ⟨hi, fun he => h ((hcmp i ((i + 1) % 7) hi (mod7_lt _)).mp he)⟩

/-- If the component labelling is correct, the search's `H` is the true `H` --
edges.  This is where BOTH directions of (E6) are consumed. -/
theorem hAdj_iff_of_cmp {Cn : Nat → Nat → Prop} {cmp : Nat → Nat}
    (hcmp : ∀ a b, a < 7 → b < 7 → (cmp a = cmp b ↔ Cn a b)) (i k : Nat) :
    HAdj cmp i k ↔ HAdjR Cn i k := by
  constructor
  · intro ⟨hv1, hv2, hik, hcyc, d1, d2, d3, d4⟩
    have hi := hv1.1
    have hk := hv2.1
    exact ⟨(hVertex_iff_of_cmp hcmp i).mp hv1, (hVertex_iff_of_cmp hcmp k).mp hv2, hik, hcyc,
      fun hc => d1 ((hcmp i k hi hk).mpr hc),
      fun hc => d2 ((hcmp i ((k + 1) % 7) hi (mod7_lt _)).mpr hc),
      fun hc => d3 ((hcmp ((i + 1) % 7) k (mod7_lt _) hk).mpr hc),
      fun hc => d4 ((hcmp ((i + 1) % 7) ((k + 1) % 7) (mod7_lt _) (mod7_lt _)).mpr hc)⟩
  · intro ⟨hv1, hv2, hik, hcyc, d1, d2, d3, d4⟩
    have hi := hv1.1
    have hk := hv2.1
    exact ⟨(hVertex_iff_of_cmp hcmp i).mpr hv1, (hVertex_iff_of_cmp hcmp k).mpr hv2, hik, hcyc,
      fun he => d1 ((hcmp i k hi hk).mp he),
      fun he => d2 ((hcmp i ((k + 1) % 7) hi (mod7_lt _)).mp he),
      fun he => d3 ((hcmp ((i + 1) % 7) k (mod7_lt _) hk).mp he),
      fun he => d4 ((hcmp ((i + 1) % 7) ((k + 1) % 7) (mod7_lt _) (mod7_lt _)).mp he)⟩

/-- **The graph-theoretic step, specialised to a vertex predicate.**  A status
assignment that is nonempty on the vertices of `A` and disjoint across edges of
`A` makes `A` bipartite.  This is `Lemma7Bridge.disjoint_statuses_imply_bipartite`
with the nonemptiness hypothesis relaxed to the vertices that actually carry an
edge -- which is what AKR Lemma 7 supplies: side indices outside `V(H)` have no
status set at all, so the unrestricted form of the hypothesis would be a
misstatement. -/
theorem bipartite_of_statuses {A : Nat → Nat → Prop} {V : Nat → Prop}
    (hAV : ∀ i k, A i k → V i ∧ V k)
    (S : Nat → Lemma7Bridge.Status → Prop)
    (hne : ∀ i, V i → ∃ s, S i s)
    (hdisj : ∀ i k s, A i k → S i s → S k s → False) :
    Lemma7Bridge.Bipartite A := by
  refine Lemma7Bridge.disjoint_statuses_imply_bipartite_classical A
    (fun i s => (V i ∧ S i s) ∨ (¬ V i ∧ s = Lemma7Bridge.Status.hooking)) ?_ ?_
  · intro i
    by_cases hv : V i
    · obtain ⟨s, hs⟩ := hne i hv
      exact ⟨s, Or.inl ⟨hv, hs⟩⟩
    · exact ⟨Lemma7Bridge.Status.hooking, Or.inr ⟨hv, rfl⟩⟩
  · intro i k s hadj h1 h2
    obtain ⟨hvi, hvk⟩ := hAV i k hadj
    have s1 : S i s := by
      cases h1 with
      | inl h => exact h.2
      | inr h => exact absurd hvi h.1
    have s2 : S k s := by
      cases h2 with
      | inl h => exact h.2
      | inr h => exact absurd hvk h.1
    exact hdisj i k s hadj s1 s2

/-- The label-level form, used for the non-vacuity example of section 8. -/
theorem hBipOk_of_statuses (cmp : Nat → Nat) (S : Nat → Lemma7Bridge.Status → Prop)
    (hne : ∀ i, HVertex cmp i → ∃ s, S i s)
    (hdisj : ∀ i k s, HAdj cmp i k → S i s → S k s → False) :
    HBipOk cmp :=
  bipartite_of_statuses (V := HVertex cmp) (fun _ _ h => ⟨h.1, h.2.1⟩) S hne hdisj

/-- **FILTER (b) IS SOUND, given AKR Lemma 7.**

`hcmp` is (E6) in its strong, two-directional form; `hne` and `hdisj` are (E3),
AKR Lemma 7's conclusion as the project reads it: every vertex of the TRUE
auxiliary graph `HAdjR (ConnP (toMasks K))` carries at least one status (`is hooking` /
`is hooked`), and two adjacent vertices never carry a common status.  AKR Lemma
7 itself is not stated, let alone proved, anywhere in this development;
`Lemma7Bridge.lean`'s header says the same thing about its own hypothesis.

The status type is `Lemma7Bridge.Status`, so `hne`/`hdisj` are literally the
hypotheses of `Lemma7Bridge.disjoint_statuses_imply_bipartite`, restricted to
the vertices of `H`. -/
theorem filterB_sound (K : Config) (cmp : Nat → Nat) (S : Nat → Lemma7Bridge.Status → Prop)
    (hcmp : ∀ a b, a < 7 → b < 7 → (cmp a = cmp b ↔ ConnP (toMasks K) a b))
    (hne : ∀ i, HVertexR (ConnP (toMasks K)) i → ∃ s, S i s)
    (hdisj : ∀ i k s, HAdjR (ConnP (toMasks K)) i k → S i s → S k s → False) :
    HBipOk cmp := by
  obtain ⟨f, hf⟩ := bipartite_of_statuses (A := HAdjR (ConnP (toMasks K)))
    (V := HVertexR (ConnP (toMasks K))) (fun _ _ h => ⟨h.1, h.2.1⟩) S hne hdisj
  exact ⟨f, fun i k h => hf i k ((hAdj_iff_of_cmp hcmp i k).mp h)⟩

/-- **FILTER (b) IS SOUND -- the `Q`-side copy.**  Same statement with the
auxiliary graph built on the sides of `Q`, i.e. from the `Q`-vertices of the
same bipartite disjointness graph. -/
theorem filterB_sound_Q (K : Config) (cmp : Nat → Nat) (S : Nat → Lemma7Bridge.Status → Prop)
    (hcmp : ∀ a b, a < 7 → b < 7 → (cmp a = cmp b ↔ ConnQ (toMasks K) a b))
    (hne : ∀ i, HVertexR (ConnQ (toMasks K)) i → ∃ s, S i s)
    (hdisj : ∀ i k s, HAdjR (ConnQ (toMasks K)) i k → S i s → S k s → False) :
    HBipOk cmp := by
  obtain ⟨f, hf⟩ := bipartite_of_statuses (A := HAdjR (ConnQ (toMasks K)))
    (V := HVertexR (ConnQ (toMasks K))) (fun _ _ h => ⟨h.1, h.2.1⟩) S hne hdisj
  exact ⟨f, fun i k h => hf i k ((hAdj_iff_of_cmp hcmp i k).mp h)⟩

/-! ## 4. Filter (c): crossing-set compatibility

For each side `q_j` of `Q` the search forms `x = (~N(q_j)) & 127`, the set of
sides of `P` that `q_j` CROSSES, and demands that `x` be contained in one of the
maximal crossing sets stored for the candidate class of `P`.  A class for which
some `x` fits nowhere is discarded; the graph is discarded when no class
survives. -/

/-- The 7-bit complement of a mask: `(~m) & 127`, written as a `mkMask` so that
`DisjointnessGraph.bitAt_mkMask` applies. -/
def crossMask (m : Nat) : Nat := mkMask (fun i => !bitAt m i)

theorem bitAt_crossMask (m i : Nat) (hi : i < 7) : bitAt (crossMask m) i = !bitAt m i :=
  bitAt_mkMask _ i hi

/-- **The one genuinely proved thing about filter (c):** the bit-twiddling the
search performs really does compute the geometric crossing set.  Bit `i` of
`crossMask (M j)` is set exactly when the pair `(j, i)` is NOT in the relation
`R` -- at a `Config`, exactly when side `i` of `P` properly crosses side `j` of
`Q`. -/
theorem bitAt_crossMask_iff {M : Nat → Nat} {R : Nat → Nat → Prop} (hspec : SpecOf M R)
    {i j : Nat} (hj : j < 7) (hi : i < 7) :
    bitAt (crossMask (M j)) i = true ↔ ¬ R j i := by
  rw [bitAt_crossMask _ i hi]
  constructor
  · intro h
    exact (specOf_false hspec hj hi).mp (by
      cases hb : bitAt (M j) i with
      | false => rfl
      | true => rw [hb] at h; exact Bool.noConfusion h)
  · intro h
    rw [(specOf_false hspec hj hi).mpr h]
    rfl

/-- `x` is a submask of `C`, on bits `0..6`: the code's `(x & ~C & 127) == 0`. -/
def SubMask (x C : Nat) : Prop := ∀ i, i < 7 → bitAt x i = true → bitAt C i = true

/-- The filter's test for ONE class, whose maximal crossing sets are `mcs`:
every side of the opposite polygon crosses a set of sides that fits inside one
of them.  `Mopp` is the mask function of the OPPOSITE side (`col` in C++, `NQ`
in Python, when the class being tested is a class of `P`). -/
def CompatOk (Mopp : Nat → Nat) (mcs : List Nat) : Prop :=
  ∀ j, j < 7 → ∃ C ∈ mcs, SubMask (crossMask (Mopp j)) C

/-- **FILTER (c) IS SOUND for the true class, given the order-type fact.**

`hcross` is (E4): for every side `j` of `Q`, the set of sides of `P` crossed by
`q_j` is contained in one of the maximal crossing sets `mcs` of `P`'s class.
That is the elementary order-type statement -- a segment crosses a subset of
what its supporting LINE crosses, and the sets cut off by lines are determined
by the order type -- and it is not formalised here: this development has no
notion of order type, no half-plane subsets, and no maximal crossing sets.
Neither is the claim that `mcs` is the correct stored list for `K`'s `P`.

What IS proved is the step from `hcross` to the filter's actual test, namely
that `crossMask` computes the crossing set (`bitAt_crossMask_iff`). -/
theorem filterC_sound (K : Config) (mcs : List Nat)
    (hcross : ∀ j, j < 7 → ∃ C ∈ mcs, ∀ i, i < 7 → ¬ DisjointO K i j → bitAt C i = true) :
    CompatOk (toMasksQ K) mcs := by
  intro j hj
  obtain ⟨C, hC, hsub⟩ := hcross j hj
  refine ⟨C, hC, ?_⟩
  intro i hi hbit
  exact hsub i hi ((bitAt_crossMask_iff (specOf_toMasksQ K) hj hi).mp hbit)

/-- **FILTER (c) IS SOUND -- the `Q`-side copy** (testing a class of `Q`
against the sides of `P`). -/
theorem filterC_sound_Q (K : Config) (mcs : List Nat)
    (hcross : ∀ i, i < 7 → ∃ C ∈ mcs, ∀ j, j < 7 → ¬ DisjointO K i j → bitAt C j = true) :
    CompatOk (toMasks K) mcs := by
  intro i hi
  obtain ⟨C, hC, hsub⟩ := hcross i hi
  refine ⟨C, hC, ?_⟩
  intro j hj hbit
  exact hsub j hj ((bitAt_crossMask_iff (specOf_toMasks K) hi hj).mp hbit)

/-! ## 5. Filter (d): Cerny et al. Lemma 2

`CernyL2Interface.lean` already proves that the filter's Boolean test `l2OkB`
holds exactly when no window of the class carries an EXACT INDUCED PERFECT
MATCHING between four consecutive sides of `P` and four sides of `Q`.  What is
missing there -- and supplied here -- is the connection to a geometric `Config`:
that the mask-level pattern is the same as the pattern in `DisjointO K`. -/

/-- The forbidden pattern of Cerny Lemma 2, stated geometrically: four distinct
sides `j0..j3` of `Q` such that, among the four consecutive sides
`w, w+1, w+2, w+3` of `P`, side `w+t` is disjoint from `j_u` exactly when
`t = u`.  Identical in shape to `CernyL2.IsExactInducedMatching`, but about the
relation `R` rather than about bitmasks. -/
def GeoWindowMatching (R : Nat → Nat → Prop) (w j0 j1 j2 j3 : Nat) : Prop :=
  (∀ u, u < 4 → CernyL2.qAt j0 j1 j2 j3 u < 7) ∧
  (∀ t, t < 4 → ∀ u, u < 4 → t ≠ u →
      CernyL2.qAt j0 j1 j2 j3 t ≠ CernyL2.qAt j0 j1 j2 j3 u) ∧
  (∀ t, t < 4 → ∀ u, u < 4 → (R ((w + t) % 7) (CernyL2.qAt j0 j1 j2 j3 u) ↔ t = u))

/-- **The geometry-to-mask bridge for Cerny Lemma 2.**  The geometric forbidden
pattern and `CernyL2.IsExactInducedMatching` for the induced mask function are
the same statement.  Together with `CernyL2.l2OkB_iff` this identifies the
filter's test with the absence of the pattern in the CONFIGURATION. -/
theorem geoWindowMatching_iff {M : Nat → Nat} {R : Nat → Nat → Prop} (hspec : SpecOf M R)
    (w j0 j1 j2 j3 : Nat) :
    GeoWindowMatching R w j0 j1 j2 j3 ↔ CernyL2.IsExactInducedMatching M w j0 j1 j2 j3 := by
  constructor
  · intro ⟨h1, h2, h3⟩
    refine ⟨h1, h2, ?_⟩
    intro t ht u hu
    exact Iff.trans (hspec ((w + t) % 7) (CernyL2.qAt j0 j1 j2 j3 u) (mod7_lt _) (h1 u hu))
      (h3 t ht u hu)
  · intro ⟨h1, h2, h3⟩
    refine ⟨h1, h2, ?_⟩
    intro t ht u hu
    exact Iff.trans
      (hspec ((w + t) % 7) (CernyL2.qAt j0 j1 j2 j3 u) (mod7_lt _) (h1 u hu)).symm
      (h3 t ht u hu)

/-- Filter (d)'s test for one class, whose Lemma-2 windows are `W`: the Lean
transcription `CernyL2.l2OkB` returns `true`. -/
def L2Ok (M : Nat → Nat) (W : List Nat) : Prop := CernyL2.l2OkB M W = true

/-- **FILTER (d) IS SOUND for the true class, given Cerny Lemma 2.**

`hC2` is (E5): no Lemma-2 window of `K` carries the forbidden pattern, stated
purely in terms of `DisjointO K`.  That is the geometric content of Cerny et
al. Lemma 2 (plus the claim that `W` is the correct window list of `K`'s
class); neither is proved here, and `CernyL2Interface.lean` says the same.

The implication from `hC2` to the search's test is kernel-checked. -/
theorem filterD_sound (K : Config) (W : List Nat)
    (hC2 : ∀ w ∈ W, ¬ ∃ j0 j1 j2 j3, GeoWindowMatching (DisjointO K) w j0 j1 j2 j3) :
    L2Ok (toMasks K) W := by
  refine (CernyL2.l2OkB_iff (toMasks K) W).mpr ?_
  intro w hw hex
  obtain ⟨j0, j1, j2, j3, hm⟩ := hex
  exact hC2 w hw ⟨j0, j1, j2, j3,
    (geoWindowMatching_iff (specOf_toMasks K) w j0 j1 j2 j3).mpr hm⟩

/-- **FILTER (d) IS SOUND -- the `Q`-side copy.** -/
theorem filterD_sound_Q (K : Config) (W : List Nat)
    (hC2 : ∀ w ∈ W, ¬ ∃ j0 j1 j2 j3,
        GeoWindowMatching (fun j i => DisjointO K i j) w j0 j1 j2 j3) :
    L2Ok (toMasksQ K) W := by
  refine (CernyL2.l2OkB_iff (toMasksQ K) W).mpr ?_
  intro w hw hex
  obtain ⟨j0, j1, j2, j3, hm⟩ := hex
  exact hC2 w hw ⟨j0, j1, j2, j3,
    (geoWindowMatching_iff (specOf_toMasksQ K) w j0 j1 j2 j3).mpr hm⟩

/-! ## 6. The class stage as the code actually rejects

Filters (c), (d), (e) are applied to a LIST of candidate classes, cumulatively,
and the graph is discarded exactly when that list becomes empty.  So the
obligation is an existential: some class survives all three.  Soundness means
the TRUE class of `K` is such a class -- which is why `hmem` below (the claim
that `K`'s `P` is one of the 14 enumerated exceptional classes, with the stored
data attached) is part of the external input, not a formality. -/

/-- The per-class data the search stores: maximal crossing sets, Lemma-2
windows, avoiding pairs.  A transcription of `classdata(d)`'s three outputs
(`al` is the membership test derived from the first field, `W` the second,
`AV` the third).  No geometric meaning is attached to these fields anywhere in
this development. -/
structure ClassData where
  /-- maximal crossing sets, as 7-bit masks -/
  mcs : List Nat
  /-- the Lemma-2 windows `W` of the class -/
  windows : List Nat
  /-- the avoiding pairs of the class -/
  avoiding : List (Nat × Nat)

/-- One class survives filters (c), (d), (e). -/
def ClassSurvives (M Mopp : Nat → Nat) (cmp : Nat → Nat) (cd : ClassData) : Prop :=
  CompatOk Mopp cd.mcs ∧ L2Ok M cd.windows ∧ L5PairsOk M cmp cd.avoiding

/-- The class stage accepts: the surviving-class list is nonempty.  This is the
negation of the code's `if not okP: continue`. -/
def ClassStageOk (M Mopp : Nat → Nat) (cmp : Nat → Nat) (classes : List ClassData) : Prop :=
  ∃ cd ∈ classes, ClassSurvives M Mopp cmp cd

/-- **FILTERS (c), (d), (e) TOGETHER ARE SOUND, given (E2), (E4), (E5), (E7).**
The Lean content is only the bookkeeping -- an existential introduction at the
true class.  Everything of substance is in the three hypotheses, and in `hmem`,
which is the unformalised claim that `K`'s `P` is one of the 14 enumerated
exceptional classes with `cd` its stored data. -/
theorem filterCDE_sound (K : Config) (cmp : Nat → Nat)
    (classes : List ClassData) (cd : ClassData) (hmem : cd ∈ classes)
    (hc : CompatOk (toMasksQ K) cd.mcs)
    (hd : L2Ok (toMasks K) cd.windows)
    (he : L5PairsOk (toMasks K) cmp cd.avoiding) :
    ClassStageOk (toMasks K) (toMasksQ K) cmp classes :=
  ⟨cd, hmem, hc, hd, he⟩

/-! ## 7. Decidability instances for the finite examples of section 8 -/

instance instDecidableHVertex (cmp : Nat → Nat) (i : Nat) : Decidable (HVertex cmp i) := by
  unfold HVertex; infer_instance

instance instDecidableHAdj (cmp : Nat → Nat) (i k : Nat) : Decidable (HAdj cmp i k) := by
  unfold HAdj; infer_instance

instance instDecidableSubMask (x C : Nat) : Decidable (SubMask x C) := by
  unfold SubMask; infer_instance

/-! ## 8. Non-vacuity

Three separate failure modes are ruled out here, as theorems:

  (i)   the filter predicates are not identically true -- each one REJECTS some
        mask function, so "the filter accepts" is a real conclusion;
  (ii)  the external hypotheses are satisfiable -- exhibited at the actual
        certificate pair of heptagons `DisjointnessGraph.certConfig` for (a),
        (d) and (e), and at explicit finite data for (b) and (c);
  (iii) the soundness theorems really apply: `cert_filterA`, `cert_filterC`,
        `cert_filterD`, `cert_filterE` and `cert_classStage` below are obtained
        by APPLYING `filterA_sound`, `filterC_sound`, `filterD_sound`,
        `filterE_sound` and `filterCDE_sound` to `certConfig`, not by `decide`
        on their conclusions.

`certConfig` is the `f(7,7) >= 38` lower-bound certificate of
`LowerBound.lean`, i.e. an actual pair of simple heptagons in general position.
It has 38 boundary intersections, not 40, so it is NOT a configuration the
search would ever be handed; it is used here only because it is the one
concrete `Config` this development possesses, and it shows the hypotheses and
conclusions below are about something real. -/

namespace Example

/-! ### 8.1 The filters are real constraints -/

/-- A mask function on which the AKR-5 test FAILS: `N(p_0) \ N(p_1) = {0}` and
`N(p_1) \ N(p_0) = {2}`, and `0`, `2` are not cyclically consecutive. -/
def N5 : Nat → Nat := fun i => if i = 0 then 1 else 4

theorem l5TestB_can_fail : l5TestB N5 0 1 = false := by decide

/-- So filter (a) is not a predicate that holds of everything. -/
theorem filterA_not_vacuous : ¬ L5PairsOk N5 (fun i => i) consecPairs := by
  intro h
  have h1 : l5TestB N5 0 1 = true := h (0, 1) (by decide) (by decide)
  rw [l5TestB_can_fail] at h1
  exact Bool.noConfusion h1

/-- Seven singleton components: `H` is then the complement of the 7-cycle, which
contains the triangle `0 - 2 - 4`. -/
def idCmp : Nat → Nat := fun i => i

theorem idCmp_triangle :
    HAdj idCmp 0 2 ∧ HAdj idCmp 2 4 ∧ HAdj idCmp 0 4 := by decide

/-- **Filter (b) is not vacuous:** `H` can fail to be bipartite. -/
theorem filterB_not_vacuous : ¬ HBipOk idCmp := by
  intro h
  obtain ⟨f, hf⟩ := h
  have h1 : f 0 ≠ f 2 := hf 0 2 idCmp_triangle.1
  have h2 : f 2 ≠ f 4 := hf 2 4 idCmp_triangle.2.1
  have h3 : f 0 ≠ f 4 := hf 0 4 idCmp_triangle.2.2
  cases hu : f 0 <;> cases hv : f 2 <;> cases hw : f 4 <;>
    rw [hu, hv] at h1 <;> rw [hv, hw] at h2 <;> rw [hu, hw] at h3 <;>
    first | exact h1 rfl | exact h2 rfl | exact h3 rfl

/-- **Filter (c) is not vacuous:** with the single maximal crossing set `63`
(sides `0..5`), side `q_2` of the certificate configuration, which crosses side
`p_6` as well, fits nowhere. -/
theorem filterC_not_vacuous : ¬ CompatOk (toMasksQ certConfig) [63] := by
  intro h
  obtain ⟨C, hC, hsub⟩ := h 2 (by decide)
  have hCe : C = 63 := by
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hC
    exact hC
  subst hCe
  have h6 : bitAt (crossMask (toMasksQ certConfig 2)) 6 = true := by decide
  exact absurd (hsub 6 (by decide) h6) (by decide)

/-- **Filter (d) is not vacuous:** `CernyL2.Npos` is the exact induced perfect
matching of `CernyL2Interface.lean`'s positive fixture, and the filter discards
it at window `0`. -/
theorem filterD_not_vacuous : ¬ L2Ok CernyL2.Npos [0] := by
  intro h
  have h' : CernyL2.l2OkB CernyL2.Npos [0] = true := h
  rw [show CernyL2.l2OkB CernyL2.Npos [0] = false from by decide] at h'
  exact Bool.noConfusion h'

/-! ### 8.2 Filter (b): the hypotheses of `hBipOk_of_statuses` are satisfiable
together with a genuine edge of `H` -/

/-- Component labels for which `H` has the four edges `0-2`, `1-3`, `2-4`,
`3-5`. -/
def exCmp : Nat → Nat := fun i => [0, 1, 2, 3, 0, 1, 2].getD i 0

/-- `H` really has an edge here, so the example is not the empty graph. -/
theorem exCmp_hasEdge : HAdj exCmp 0 2 := by decide

/-- A two-valued status assignment: `p_2` and `p_3` are "hooked", the rest
"hooking". -/
def exCol (i : Nat) : Bool := decide (i = 2 ∨ i = 3)

def exS (i : Nat) (s : Lemma7Bridge.Status) : Prop :=
  match s with
  | Lemma7Bridge.Status.hooking => exCol i = false
  | Lemma7Bridge.Status.hooked => exCol i = true

theorem exS_ne : ∀ i, HVertex exCmp i → ∃ s, exS i s := by
  intro i _
  cases h : exCol i with
  | false => exact ⟨Lemma7Bridge.Status.hooking, h⟩
  | true => exact ⟨Lemma7Bridge.Status.hooked, h⟩

/-- Kernel-checked over all 49 index pairs: adjacent vertices of this `H` get
different colours. -/
theorem exCmp_edges_bichromatic :
    ∀ i, i < 7 → ∀ k, k < 7 → HAdj exCmp i k → exCol i ≠ exCol k := by decide

theorem exS_disj : ∀ i k s, HAdj exCmp i k → exS i s → exS k s → False := by
  intro i k s hadj h1 h2
  have hne := exCmp_edges_bichromatic i hadj.1.1 k hadj.2.1.1 hadj
  cases s with
  | hooking => exact hne (by rw [h1, h2])
  | hooked => exact hne (by rw [h1, h2])

/-- The hypotheses of `hBipOk_of_statuses` are consistent, and the conclusion is
obtained by applying it. -/
theorem exCmp_bipartite : HBipOk exCmp := hBipOk_of_statuses exCmp exS exS_ne exS_disj

/-! ### 8.3 Filter (c): the hypothesis of `filterC_sound` is satisfiable

`certMcs` below is NOT the stored data of any exceptional class -- no class data
is formalised in this development.  It is exactly the list of crossing sets that
the certificate configuration actually realises, exhibited to show that the
shape of hypothesis `hcross` is satisfiable and that `filterC_sound` then
applies. -/

def certMcs : List Nat := [63, 71, 120]

theorem cert_hcross :
    ∀ j, j < 7 → ∃ C ∈ certMcs, ∀ i, i < 7 → ¬ DisjointO certConfig i j → bitAt C i = true := by
  decide

/-- Filter (c) accepts the certificate configuration, by APPLYING
`filterC_sound`. -/
theorem cert_filterC : CompatOk (toMasksQ certConfig) certMcs :=
  filterC_sound certConfig certMcs cert_hcross

/-! ### 8.4 The certificate configuration: correct component labelling

The three components of `certConfig`'s disjointness graph are
`{p0,p1,p2,q3}`, `{p3,p4,p5,q2}` and `{p6,q0,q1,q4,q5,q6}`.  Each is certified
by a separator that the kernel checks is closed under adjacency
(`Endgame.sepClosedB`), exactly as `Endgame.lean` does for the 225 records; the
separation conclusion is then `Endgame.not_conn_of_sep`. -/

def certCmp : Nat → Nat := fun i => [0, 0, 0, 1, 1, 1, 2].getD i 0
def certPm : Nat → Nat := fun l => [7, 56, 64].getD l 0
def certQm : Nat → Nat := fun l => [8, 4, 115].getD l 0

theorem cert_sepClosed : ∀ a, a < 7 →
    sepClosedB (toMasks certConfig) (certPm (certCmp a)) (certQm (certCmp a)) = true := by decide

theorem cert_sep_sound : ∀ a, a < 7 → ∀ b, b < 7 → certCmp a ≠ certCmp b →
    bitAt (certPm (certCmp a)) a = true ∧ bitAt (certPm (certCmp a)) b = false := by decide

/-- Hypothesis `hcmp` of `filterA_sound` holds for `certCmp`: different labels
really do mean different components. -/
theorem cert_hcmp : ∀ a b, a < 7 → b < 7 → certCmp a ≠ certCmp b →
    ¬ Conn (toMasks certConfig) (Vtx.P a) (Vtx.P b) := by
  intro a b ha hb hne
  obtain ⟨h1, h2⟩ := cert_sep_sound a ha b hb hne
  exact not_conn_of_sep (sepClosed_of_sepClosedB (cert_sepClosed a ha)) h1 h2

/-! ### 8.5 Filter (a) at the certificate configuration

For each of the seven consecutive pairs either the two sides are visibly
connected (so the filter's guard does not fire and the hypothesis is vacuous
there), or AKR Lemma 5's geometric conclusion is exhibited explicitly.  Nothing
here proves AKR Lemma 5: these are the three instances of its CONCLUSION that
happen to be true at `certConfig`, checked by `decide`. -/

theorem cert_conn_01 : Conn (toMasks certConfig) (Vtx.P 0) (Vtx.P 1) :=
  Conn.stepQP (Conn.stepPQ (j := 3) (Conn.refl _) (by decide) (by decide) (by decide))
    (by decide) (by decide) (by decide)

theorem cert_conn_12 : Conn (toMasks certConfig) (Vtx.P 1) (Vtx.P 2) :=
  Conn.stepQP (Conn.stepPQ (j := 3) (Conn.refl _) (by decide) (by decide) (by decide))
    (by decide) (by decide) (by decide)

theorem cert_conn_34 : Conn (toMasks certConfig) (Vtx.P 3) (Vtx.P 4) :=
  Conn.stepQP (Conn.stepPQ (j := 2) (Conn.refl _) (by decide) (by decide) (by decide))
    (by decide) (by decide) (by decide)

theorem cert_conn_45 : Conn (toMasks certConfig) (Vtx.P 4) (Vtx.P 5) :=
  Conn.stepQP (Conn.stepPQ (j := 2) (Conn.refl _) (by decide) (by decide) (by decide))
    (by decide) (by decide) (by decide)

theorem cert_akr5_23 : AKR5ConclusionG (DisjointO certConfig) 2 3 :=
  ⟨3, by decide, 2, by decide, by decide, by decide, by decide, by decide, by decide⟩

theorem cert_akr5_56 : AKR5ConclusionG (DisjointO certConfig) 5 6 :=
  ⟨2, by decide, 1, by decide, by decide, by decide, by decide, by decide, by decide⟩

theorem cert_akr5_60 : AKR5ConclusionG (DisjointO certConfig) 6 0 :=
  ⟨4, by decide, 3, by decide, by decide, by decide, by decide, by decide, by decide⟩

/-- Hypothesis `hAKR5` of `filterA_sound`, at the certificate configuration. -/
theorem cert_hAKR5 : ∀ p ∈ consecPairs,
    ¬ Conn (toMasks certConfig) (Vtx.P p.1) (Vtx.P p.2) →
    AKR5ConclusionG (DisjointO certConfig) p.1 p.2 := by
  intro p hp hnc
  simp only [consecPairs, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with h | h | h | h | h | h | h <;> subst h
  · exact absurd cert_conn_01 hnc
  · exact absurd cert_conn_12 hnc
  · exact cert_akr5_23
  · exact absurd cert_conn_34 hnc
  · exact absurd cert_conn_45 hnc
  · exact cert_akr5_56
  · exact cert_akr5_60

/-- **Filter (a) accepts the certificate configuration** -- obtained by APPLYING
`filterA_sound`, i.e. the general theorem really does fire on an actual pair of
simple heptagons in general position. -/
theorem cert_filterA : L5PairsOk (toMasks certConfig) certCmp consecPairs :=
  filterA_sound certConfig certCmp cert_hcmp cert_hAKR5

/-! ### 8.6 Filter (e) at the certificate configuration

`certAV` is a one-element list and `certAvoiding` DECLARES that pair to be
avoiding.  This is a satisfiability witness for the SHAPE of the hypotheses of
`filterE_sound`, and nothing more: no claim is made -- and none could be proved
here -- that sides `2` and `5` of `certConfig`'s `P` are geometrically
avoiding, since this development contains no definition of "avoiding". -/

def certAV : List (Nat × Nat) := [(2, 5)]
def certAvoiding : Nat → Nat → Prop := fun a b => a = 2 ∧ b = 5

theorem cert_hAVlist : ∀ p ∈ certAV, certAvoiding p.1 p.2 := by
  intro p hp
  simp only [certAV, List.mem_cons, List.not_mem_nil, or_false] at hp
  subst hp
  exact ⟨rfl, rfl⟩

theorem cert_akr5_25 : AKR5ConclusionG (DisjointO certConfig) 2 5 :=
  ⟨3, by decide, 2, by decide, by decide, by decide, by decide, by decide, by decide⟩

theorem cert_hAKR5_avoid : ∀ a b, a < 7 → b < 7 → certAvoiding a b →
    ¬ Conn (toMasks certConfig) (Vtx.P a) (Vtx.P b) →
    AKR5ConclusionG (DisjointO certConfig) a b := by
  intro a b _ _ hav _
  obtain ⟨ha, hb⟩ := hav
  subst ha; subst hb
  exact cert_akr5_25

/-- **Filter (e) accepts the certificate configuration**, by applying
`filterE_sound`.  The guard genuinely fires: `certCmp 2 = 0` and
`certCmp 5 = 1`, so the pair `(2,5)` really is tested. -/
theorem cert_filterE : L5PairsOk (toMasks certConfig) certCmp certAV :=
  filterE_sound certConfig certCmp certAV certAvoiding (by decide) cert_hAVlist
    cert_hcmp cert_hAKR5_avoid

theorem cert_filterE_guard_fires : certCmp 2 ≠ certCmp 5 := by decide

/-! ### 8.7 Filter (d) at the certificate configuration -/

theorem cert_l2OkB : CernyL2.l2OkB (toMasks certConfig) CernyL2.idx7 = true := by decide

/-- Hypothesis `hC2` of `filterD_sound` holds at `certConfig` for all seven
windows: no window carries the forbidden pattern.  Derived from the Boolean
check through `CernyL2.l2OkB_iff` and `geoWindowMatching_iff` -- i.e. the
GEOMETRIC statement is obtained, not just the mask-level one. -/
theorem cert_hC2 : ∀ w ∈ CernyL2.idx7,
    ¬ ∃ j0 j1 j2 j3, GeoWindowMatching (DisjointO certConfig) w j0 j1 j2 j3 := by
  intro w hw hex
  obtain ⟨j0, j1, j2, j3, hm⟩ := hex
  exact (CernyL2.l2OkB_iff (toMasks certConfig) CernyL2.idx7).mp cert_l2OkB w hw
    ⟨j0, j1, j2, j3,
      (geoWindowMatching_iff (specOf_toMasks certConfig) w j0 j1 j2 j3).mp hm⟩

/-- **Filter (d) accepts the certificate configuration**, by applying
`filterD_sound`. -/
theorem cert_filterD : L2Ok (toMasks certConfig) CernyL2.idx7 :=
  filterD_sound certConfig CernyL2.idx7 cert_hC2

/-! ### 8.8 The class stage, assembled -/

def certClass : ClassData :=
  { mcs := certMcs, windows := CernyL2.idx7, avoiding := certAV }

/-- The class stage accepts `certConfig` with `certClass` surviving -- again by
applying the general theorem.  (`certClass` is fabricated from the data above;
see the caveats in 8.3 and 8.6.) -/
theorem cert_classStage :
    ClassStageOk (toMasks certConfig) (toMasksQ certConfig) certCmp [certClass] :=
  filterCDE_sound certConfig certCmp [certClass] certClass (by simp)
    cert_filterC cert_filterD cert_filterE

end Example

end FilterSoundness
end Heptagon
