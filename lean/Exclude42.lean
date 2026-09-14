/-
  Exclude42.lean

  DEPENDENCY `UB42`: "I = 42 is impossible", the project-original argument of
  `paper/proof-manifest.tex` §"Excluding I = 42".

  Imports `EnumerationDomain` (for `degSum`, `crossCountC`, the transpose
  double-count) and `FilterSoundness` (for `CompatOk`, `crossMask`, and the
  geometric soundness of filter (c)), hence Mathlib.  No `sorry`, no `admit`,
  no project-level `axiom`, no `native_decide`, no `unsafe`, no `partial`.
  `set_option autoImplicit false` throughout.

  ---------------------------------------------------------------------------
  1. THE ARGUMENT
  ---------------------------------------------------------------------------

  With `I` the number of boundary intersections and `|E|` the number of edges of
  the bipartite disjointness graph `G^D`, `I + |E| = 49`
  (`EnumerationDomain.crossCountC_add_degSum`).  So `I = 42` forces `|E| = 7`.
  With minimum degree `≥ 1` on `7 + 7` vertices and only `7` edges, every
  vertex has degree exactly `1`: `G^D` is a PERFECT MATCHING.

  Both heptagons are then exceptional (Lemma A with `|S| = 4` would otherwise
  force `|E| ≥ 10 > 7`), so the crossing-set data of the 14 exceptional classes
  applies to `P`.  Fix a side `q_j` of `Q`.  Since `G^D` is a matching, the
  unique `P`-side disjoint from `q_j` is some `i_j`, so the set of `P`-sides
  that `q_j` CROSSES is `{0..6} \ {i_j}`, of size 6.  Compatibility requires
  that crossing set to sit inside a maximal crossing set of `P`'s class, and
  every exceptional class has maximal crossing sets exactly
  `{FULL \ {m} : m ∈ M_P}` with `|M_P| = 5`.  Two 6-subsets of a 7-set nest only
  if they are equal, so `i_j ∈ M_P`.  The `i_j` are pairwise distinct because
  `G^D` is a matching, so all seven side indices lie in `M_P`, contradicting
  `|M_P| = 5`.

  ---------------------------------------------------------------------------
  2. WHAT IS PROVED HERE, AND WHAT IS ONLY A NAMED HYPOTHESIS
  ---------------------------------------------------------------------------

  PROVED (kernel-checked, from the hypotheses displayed in each statement):

    * `deg_eq_one_of_degSum_seven`  -- seven edges + minimum degree 1 forces
                                      every degree to be exactly 1, on either
                                      side (`degQ_eq_one_of_degSum_seven` is
                                      the `Q`-side copy, via the transpose
                                      double-count `degSum_transposeMask`).
    * `bit_unique_of_deg_one`       -- a degree-1 mask has at most one set bit.
    * `partner`, `partner_lt`, `partner_spec`, `partner_unique`
                                    -- the matching function `j ↦ i_j` and its
                                      defining property.
    * `partner_injOn`               -- the `i_j` are pairwise distinct.
    * `partner_mem_of_nest`         -- THE NESTING STEP: a 6-set
                                      `{i : i ≠ i_j}` contained in a 6-set
                                      `{i : i ≠ m}` forces `m = i_j`.
    * `no_matching_of_card_le_six`  -- MAIN THEOREM (mask level): seven edges,
                                      minimum degree 1 on both sides, and every
                                      `Q`-side crossing set nested in
                                      `FULL \ {m}` for some `m` in a set `MP`
                                      of at most six indices, is contradictory.
    * `no_compat_of_matching`       -- the same with the nesting hypothesis
                                      packaged as the search's actual filter-(c)
                                      predicate `FilterSoundness.CompatOk`
                                      together with the class invariant.
    * `not_crossCount_42`           -- COROLLARY at the level of a geometric
                                      `Config`: `crossCountC K = 42` is
                                      impossible.  `I + |E| = 49` and the
                                      minimum-degree bound `δ(G^D) ≥ 1` are NOT
                                      hypotheses here -- they are imported
                                      theorems (`crossCountC_add_degSum`,
                                      `min_degree_both_sides`).

  STATED ONLY (explicit named hypotheses, in the style of
  `FilterSoundness.lean`; nothing below is proved here and nothing is
  axiomatised):

    (X1) THE EXCEPTIONAL-CLASS INVARIANT, hypothesis `hclass` (and, in its
         unpackaged form, `hnest` / `hMP`): the maximal crossing sets of `P`'s
         class are exactly `{FULL \ {m} : m ∈ MP}` -- only the direction "every
         stored maximal crossing set is `FULL \ {m}` for some `m ∈ MP`" is
         used -- and `MP.card = 5` (any bound `≤ 6` suffices, and that is what
         the main theorem takes).  This is DATA about the 14 exceptional
         classes.  It was verified outside Lean by recomputing it from the class
         data for all 14 classes, in two independent profile reconstructions;
         it is not verified here, and this file contains no enumeration of the
         classes.

    (X2) THE ORDER-TYPE FACT behind filter (c), hypothesis `hcross` of
         `not_crossCount_42`: the set of sides of `P` crossed by a side of `Q`
         is contained in a maximal crossing set of `P`'s class.  This is
         exactly (E4) of `FilterSoundness.lean`, reused verbatim through
         `FilterSoundness.filterC_sound`.

    (X3) THAT `P` IS EXCEPTIONAL, i.e. that (X1)/(X2) may be instantiated at a
         class of the 14 at all.  The manifest derives this from Lemma A with
         `|S| = 4` (`|E| ≥ 10 > 7`); that derivation is NOT formalised here,
         because this development has no bridge from `LemmaA.E` cardinalities to
         `degSum`.  It enters only as the justification for supplying `mcs`,
         `MP` and `hclass` at a call site, and is therefore subsumed by (X1).

  NON-VACUITY.  `matchMask` is a concrete perfect matching (`matchMask_degSum`,
  `matchMask_degP`, `matchMask_degQ`), and `sampleMcs` / `sampleMP` are concrete
  data satisfying the class invariant (`sampleMP_card`, `sampleMcs_class`).  So
  neither group of hypotheses is empty; it is their CONJUNCTION that is
  contradictory, which is the content of `matchMask_not_compat`.

  ---------------------------------------------------------------------------
  3. AXIOMS (verbatim `#print axioms`, Lean 4.33.1 / Mathlib v4.33.1)
  ---------------------------------------------------------------------------

  Only the three standard Lean axioms occur; nothing project-specific.

    'Heptagon.Exclude42.deg_eq_one_of_degSum_seven' depends on axioms: [propext, Quot.sound]
    'Heptagon.Exclude42.degQ_eq_one_of_degSum_seven' depends on axioms: [propext, Quot.sound]
    'Heptagon.Exclude42.bit_unique_of_deg_one' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.Exclude42.exists_bit_of_one_le_deg' depends on axioms: [propext, Quot.sound]
    'Heptagon.Exclude42.partner_lt' depends on axioms: [propext, Quot.sound]
    'Heptagon.Exclude42.partner_spec_of_exists' depends on axioms: [propext]
    'Heptagon.Exclude42.partner_spec' depends on axioms: [propext, Quot.sound]
    'Heptagon.Exclude42.partner_unique' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.Exclude42.partner_injOn' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.Exclude42.partner_mem_of_nest' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.Exclude42.no_matching_of_card_le_six' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.Exclude42.no_compat_of_matching' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.Exclude42.not_crossCount_42' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.Exclude42.matchMask_degSum' depends on axioms: [propext]
    'Heptagon.Exclude42.matchMask_degP' depends on axioms: [propext]
    'Heptagon.Exclude42.matchMask_degQ' depends on axioms: [propext]
    'Heptagon.Exclude42.matchMask_is_perfect_matching' depends on axioms: [propext]
    'Heptagon.Exclude42.sampleMP_card' depends on axioms: [propext, Quot.sound]
    'Heptagon.Exclude42.sampleMcs_class' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.Exclude42.matchMask_not_compat' depends on axioms: [propext, Classical.choice, Quot.sound]
-/

import EnumerationDomain
import FilterSoundness
import Mathlib.Tactic.IntervalCases
import Mathlib.Data.Finset.Card

set_option autoImplicit false

namespace Heptagon
namespace Exclude42

open Heptagon.Endgame
open Heptagon.DisjointnessGraph
open Heptagon.EnumerationDomain
open Heptagon.FilterSoundness

/-! ## 1. Seven edges and minimum degree 1 force a perfect matching -/

/-- **Step 1.**  If the seven `P`-side degrees sum to `7` and each is at least
`1`, each is exactly `1`.  Pure arithmetic, after unfolding the `sum7` fold. -/
theorem deg_eq_one_of_degSum_seven {M : Nat → Nat} (hE : degSum M = 7)
    (hmin : ∀ i, i < 7 → 1 ≤ deg (M i)) : ∀ i, i < 7 → deg (M i) = 1 := by
  rw [degSum_eq] at hE
  have h0 := hmin 0 (by omega)
  have h1 := hmin 1 (by omega)
  have h2 := hmin 2 (by omega)
  have h3 := hmin 3 (by omega)
  have h4 := hmin 4 (by omega)
  have h5 := hmin 5 (by omega)
  have h6 := hmin 6 (by omega)
  intro i hi
  interval_cases i <;> omega

/-- **Step 1, `Q` side.**  The transpose double-count `degSum_transposeMask`
turns the `P`-side edge count into the `Q`-side one, so the same argument
applies to the transposed masks. -/
theorem degQ_eq_one_of_degSum_seven {M : Nat → Nat} (hE : degSum M = 7)
    (hmin : ∀ j, j < 7 → 1 ≤ deg (transposeMask M j)) :
    ∀ j, j < 7 → deg (transposeMask M j) = 1 :=
  deg_eq_one_of_degSum_seven (by rw [degSum_transposeMask]; exact hE) hmin

/-- **Step 2.**  A mask of degree `1` has at most one set bit among bits
`0 … 6`.  Proved through `deg_eq_degB` and the 49 index cases. -/
theorem bit_unique_of_deg_one {m j k : Nat} (hd : deg m = 1) (hj : j < 7) (hk : k < 7)
    (hbj : bitAt m j = true) (hbk : bitAt m k = true) : j = k := by
  rw [deg_eq_degB] at hd
  interval_cases j <;> interval_cases k <;> simp_all [degB] <;> split_ifs at hd <;> omega

/-- A mask of positive degree has a set bit among bits `0 … 6`. -/
theorem exists_bit_of_one_le_deg {m : Nat} (h : 1 ≤ deg m) : ∃ i, i < 7 ∧ bitAt m i = true := by
  by_contra hc
  have e : ∀ i, i < 7 → bitAt m i = false := by
    intro i hi
    cases hb : bitAt m i with
    | false => rfl
    | true => exact absurd ⟨i, hi, hb⟩ hc
  rw [deg_eq_degB, e 0 (by omega), e 1 (by omega), e 2 (by omega), e 3 (by omega),
    e 4 (by omega), e 5 (by omega), e 6 (by omega)] at h
  simp [degB] at h

/-! ## 2. The matching function

`partner M j` is the index of the first `P`-side joined to `q_j` in `G^D`.
Under the perfect-matching hypotheses it is THE unique such index, which is
what `partner_spec` and `partner_unique` record. -/

/-- The least `i < 7` with bit `j` of `M i` set (`6` if there is none). -/
def partner (M : Nat → Nat) (j : Nat) : Nat :=
  if bitAt (M 0) j then 0 else
  if bitAt (M 1) j then 1 else
  if bitAt (M 2) j then 2 else
  if bitAt (M 3) j then 3 else
  if bitAt (M 4) j then 4 else
  if bitAt (M 5) j then 5 else 6

theorem partner_lt (M : Nat → Nat) (j : Nat) : partner M j < 7 := by
  unfold partner; split_ifs <;> omega

/-- **Step 3, existence.**  If some `P`-side is joined to `q_j`, then
`partner M j` is one. -/
theorem partner_spec_of_exists {M : Nat → Nat} {j : Nat}
    (h : ∃ i, i < 7 ∧ bitAt (M i) j = true) : bitAt (M (partner M j)) j = true := by
  unfold partner
  split_ifs with h0 h1 h2 h3 h4 h5
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4
  · exact h5
  · obtain ⟨i, hi, hb⟩ := h
    interval_cases i <;> simp_all

/-- **Step 3, existence** under the perfect-matching hypotheses: every `Q`-side
has positive degree, hence a partner. -/
theorem partner_spec {M : Nat → Nat} {j : Nat} (hj : j < 7)
    (hmin : ∀ j, j < 7 → 1 ≤ deg (transposeMask M j)) :
    bitAt (M (partner M j)) j = true := by
  refine partner_spec_of_exists ?_
  obtain ⟨i, hi, hb⟩ := exists_bit_of_one_le_deg (hmin j hj)
  exact ⟨i, hi, by rwa [bitAt_transposeMask M i j hi] at hb⟩

/-- **Step 3, uniqueness.**  With every `Q`-side degree equal to `1`, any
`P`-side joined to `q_j` IS `partner M j`. -/
theorem partner_unique {M : Nat → Nat} {i j : Nat} (hi : i < 7) (hj : j < 7)
    (hQ : ∀ j, j < 7 → deg (transposeMask M j) = 1) (hb : bitAt (M i) j = true) :
    i = partner M j := by
  have hex : bitAt (M (partner M j)) j = true :=
    partner_spec hj (fun j hj => le_of_eq (hQ j hj).symm)
  refine bit_unique_of_deg_one (hQ j hj) hi (partner_lt M j) ?_ ?_
  · rwa [bitAt_transposeMask M i j hi]
  · rwa [bitAt_transposeMask M _ j (partner_lt M j)]

/-- **Step 4.**  The partners of distinct `Q`-sides are distinct: otherwise one
`P`-side would carry two set bits, contradicting its degree being `1`. -/
theorem partner_injOn {M : Nat → Nat} {j k : Nat} (hj : j < 7) (hk : k < 7)
    (hP : ∀ i, i < 7 → deg (M i) = 1)
    (hQ : ∀ j, j < 7 → deg (transposeMask M j) = 1)
    (h : partner M j = partner M k) : j = k := by
  have hbj : bitAt (M (partner M j)) j = true :=
    partner_spec hj (fun j hj => le_of_eq (hQ j hj).symm)
  have hbk : bitAt (M (partner M k)) k = true :=
    partner_spec hk (fun j hj => le_of_eq (hQ j hj).symm)
  rw [← h] at hbk
  exact bit_unique_of_deg_one (hP _ (partner_lt M j)) hj hk hbj hbk

/-! ## 3. The nesting step

The crossing set of `q_j` is `{i < 7 : i ≠ partner M j}` and a maximal crossing
set is `{i < 7 : i ≠ m}`.  "Two 6-subsets of a 7-set nest only if they are
equal" is, at this level of description, the single instantiation `i := m`. -/

/-- **Step 5.**  If the crossing set of `q_j` is contained in `FULL \ {m}` then
`m = partner M j`; in particular `partner M j` lies in whatever set the index
`m` was drawn from. -/
theorem partner_mem_of_nest {M : Nat → Nat} {j m : Nat} (hj : j < 7) (hm : m < 7)
    (hQ : ∀ j, j < 7 → deg (transposeMask M j) = 1)
    (hnest : ∀ i, i < 7 → bitAt (M i) j = false → i ≠ m) :
    m = partner M j := by
  by_contra hne
  have hfalse : bitAt (M m) j = false := by
    cases hb : bitAt (M m) j with
    | false => rfl
    | true => exact absurd (partner_unique hm hj hQ hb) hne
  exact hnest m hm hfalse rfl

/-! ## 4. The main theorem -/

/-- **MAIN THEOREM (mask level).**  There is no mask function with

* seven edges (`degSum M = 7`, i.e. `I = 42`),
* minimum degree `≥ 1` on both sides,

whose `Q`-side crossing sets are all nested in sets `FULL \ {m}` with `m`
ranging over a set `MP` of at most six side indices.

`hnest` is the nesting requirement in index form: for each `Q`-side `j` there is
an `m ∈ MP` such that every `P`-side crossed by `q_j` differs from `m`.  The
seven partners are distinct elements of `MP`, so `6 < 7 ≤ MP.card`. -/
theorem no_matching_of_card_le_six {M : Nat → Nat} {MP : Finset Nat}
    (hE : degSum M = 7)
    (hminP : ∀ i, i < 7 → 1 ≤ deg (M i))
    (hminQ : ∀ j, j < 7 → 1 ≤ deg (transposeMask M j))
    (hMP : MP.card ≤ 6)
    (hnest : ∀ j, j < 7 → ∃ m ∈ MP, m < 7 ∧ ∀ i, i < 7 → bitAt (M i) j = false → i ≠ m) :
    False := by
  have hP : ∀ i, i < 7 → deg (M i) = 1 := deg_eq_one_of_degSum_seven hE hminP
  have hQ : ∀ j, j < 7 → deg (transposeMask M j) = 1 :=
    degQ_eq_one_of_degSum_seven hE hminQ
  -- every partner lies in `MP`
  have hmem : ∀ j, j < 7 → partner M j ∈ MP := by
    intro j hj
    obtain ⟨m, hmMP, hm7, hsub⟩ := hnest j hj
    rwa [partner_mem_of_nest hj hm7 hQ hsub] at hmMP
  -- the seven partners are distinct
  have hinj : Set.InjOn (partner M) ↑(Finset.range 7) := by
    intro j hj k hk h
    simp only [Finset.coe_range, Set.mem_Iio] at hj hk
    exact partner_injOn hj hk hP hQ h
  have hsubset : (Finset.range 7).image (partner M) ⊆ MP := by
    intro x hx
    obtain ⟨j, hj, rfl⟩ := Finset.mem_image.mp hx
    exact hmem j (Finset.mem_range.mp hj)
  have hcard : ((Finset.range 7).image (partner M)).card = 7 := by
    rw [Finset.card_image_of_injOn hinj, Finset.card_range]
  have := Finset.card_le_card hsubset
  omega

/-! ## 5. The same theorem against the search's filter-(c) predicate

`FilterSoundness.CompatOk Mopp mcs` is the Lean transcription of the
compatibility filter: every side of the opposite polygon crosses a set of sides
fitting inside one of the stored maximal crossing sets `mcs`.  `hclass` below is
the exceptional-class invariant (X1) in the only direction the argument needs. -/

/-- **MAIN THEOREM, packaged for the filter.**  `hclass` says every stored
maximal crossing set of `P`'s class is `FULL \ {m}` for some `m ∈ MP`, and
`hMPcard` says `|MP| = 5` -- the invariant of all 14 exceptional classes, here
an explicit hypothesis, not a proved fact.  Together with a seven-edge
minimum-degree-1 graph, compatibility is impossible. -/
theorem no_compat_of_matching {M : Nat → Nat} {mcs : List Nat} {MP : Finset Nat}
    (hE : degSum M = 7)
    (hminP : ∀ i, i < 7 → 1 ≤ deg (M i))
    (hminQ : ∀ j, j < 7 → 1 ≤ deg (transposeMask M j))
    (hMPcard : MP.card = 5)
    (hclass : ∀ C ∈ mcs, ∃ m ∈ MP, m < 7 ∧ ∀ i, i < 7 → (bitAt C i = true ↔ i ≠ m))
    (hcompat : CompatOk (transposeMask M) mcs) :
    False := by
  refine no_matching_of_card_le_six (MP := MP) hE hminP hminQ (by omega) ?_
  intro j hj
  obtain ⟨C, hCmem, hsub⟩ := hcompat j hj
  obtain ⟨m, hmMP, hm7, hiff⟩ := hclass C hCmem
  refine ⟨m, hmMP, hm7, ?_⟩
  intro i hi hbit
  refine (hiff i hi).mp (hsub i hi ?_)
  rw [bitAt_crossMask _ i hi, bitAt_transposeMask M i j hi, hbit]
  rfl

/-! ## 6. The corollary in terms of `I = 42`

At a geometric `Config` nothing combinatorial has to be assumed any more:
`I + |E| = 49` is `EnumerationDomain.crossCountC_add_degSum` and `δ(G^D) ≥ 1` is
`DisjointnessGraph.min_degree_both_sides`, both already proved.  What remains
are exactly the two external inputs (X1) and (X2). -/

/-- **`I = 42` IS IMPOSSIBLE**, given

* (X2) `hcross`: the order-type fact behind filter (c) -- the set of sides of
  `P` crossed by `q_j` is contained in one of the maximal crossing sets `mcs`
  of `P`'s class.  This is (E4) of `FilterSoundness.lean`;
* (X1) `hMPcard`, `hclass`: the exceptional-class invariant for `P`'s class.

No other hypothesis: `crossCountC K = 42` alone supplies `|E| = 7`, and the
minimum degree comes from the geometry. -/
theorem not_crossCount_42 {K : Config} {mcs : List Nat} {MP : Finset Nat}
    (hI : crossCountC K = 42)
    (hMPcard : MP.card = 5)
    (hclass : ∀ C ∈ mcs, ∃ m ∈ MP, m < 7 ∧ ∀ i, i < 7 → (bitAt C i = true ↔ i ≠ m))
    (hcross : ∀ j, j < 7 → ∃ C ∈ mcs, ∀ i, i < 7 → ¬ DisjointO K i j → bitAt C i = true) :
    False := by
  have h49 := crossCountC_add_degSum K
  have hE : degSum (toMasks K) = 7 := by omega
  exact no_compat_of_matching hE (one_le_deg_toMasks K) (one_le_deg_toMasksQ K) hMPcard hclass
    (filterC_sound K mcs hcross)

/-! ## 7. Non-vacuity

The two hypothesis groups are separately satisfiable; only their conjunction is
contradictory. -/

/-- The identity perfect matching: `P`-side `i` is joined to `Q`-side `i` only. -/
def matchMask : Nat → Nat := fun i => 2 ^ i

theorem matchMask_degSum : degSum matchMask = 7 := by decide

theorem matchMask_degP : ∀ i, i < 7 → deg (matchMask i) = 1 := by
  intro i hi; interval_cases i <;> decide

theorem matchMask_degQ : ∀ j, j < 7 → deg (transposeMask matchMask j) = 1 := by
  intro j hj; interval_cases j <;> decide

/-- The combinatorial hypotheses of the main theorem are satisfiable: a perfect
matching has seven edges and every degree equal to `1` on both sides. -/
theorem matchMask_is_perfect_matching :
    degSum matchMask = 7 ∧ (∀ i, i < 7 → deg (matchMask i) = 1) ∧
      (∀ j, j < 7 → deg (transposeMask matchMask j) = 1) :=
  ⟨matchMask_degSum, matchMask_degP, matchMask_degQ⟩

/-- Five maximal crossing sets of the exceptional shape, `FULL \ {m}` for
`m = 0, 1, 2, 3, 4`. -/
def sampleMcs : List Nat := [126, 125, 123, 119, 111]

/-- The corresponding five-element index set `M_P`. -/
def sampleMP : Finset Nat := {0, 1, 2, 3, 4}

theorem sampleMP_card : sampleMP.card = 5 := by decide

/-- The class invariant is satisfiable on its own. -/
theorem sampleMcs_class :
    ∀ C ∈ sampleMcs, ∃ m ∈ sampleMP, m < 7 ∧ ∀ i, i < 7 → (bitAt C i = true ↔ i ≠ m) := by
  intro C hC
  simp only [sampleMcs, List.mem_cons, List.not_mem_nil, or_false] at hC
  rcases hC with rfl | rfl | rfl | rfl | rfl
  · exact ⟨0, by decide, by decide, by intro i hi; interval_cases i <;> decide⟩
  · exact ⟨1, by decide, by decide, by intro i hi; interval_cases i <;> decide⟩
  · exact ⟨2, by decide, by decide, by intro i hi; interval_cases i <;> decide⟩
  · exact ⟨3, by decide, by decide, by intro i hi; interval_cases i <;> decide⟩
  · exact ⟨4, by decide, by decide, by intro i hi; interval_cases i <;> decide⟩

/-- **The conjunction is what fails.**  The concrete perfect matching
`matchMask` satisfies every combinatorial hypothesis, and `sampleMcs` /
`sampleMP` satisfy the class invariant, so the compatibility filter must
reject: no side of `Q` can have its crossing set nested in a maximal crossing
set of an exceptional class. -/
theorem matchMask_not_compat : ¬ CompatOk (transposeMask matchMask) sampleMcs := by
  intro h
  exact no_compat_of_matching matchMask_degSum
    (fun i hi => le_of_eq (matchMask_degP i hi).symm)
    (fun j hj => le_of_eq (matchMask_degQ j hj).symm)
    sampleMP_card sampleMcs_class h

end Exclude42
end Heptagon
