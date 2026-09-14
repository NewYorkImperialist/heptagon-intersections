/-
  EnumerationDomain.lean
  ======================

  THE ENUMERATION DOMAIN OF THE f(7,7) = 38 ENDGAME, AND WHAT IT DOES AND DOES
  NOT ESTABLISH.

  ---------------------------------------------------------------------------
  READ THIS FIRST: FOUR SEPARATE OBLIGATIONS
  ---------------------------------------------------------------------------

  The project's "enumeration completeness" risk decomposes into four claims
  that are routinely conflated.  They are NOT the same claim, and this file
  addresses only the first two:

    (1) a hypothetical counterexample produces a graph satisfying the search
        conditions;                                                  <-- HERE
    (2) the abstract search domain has 13 003 620 elements;          <-- HERE
        (partially: see PART B for the honest split)
    (3) the enumeration ACTUALLY COVERS that domain (i.e. the Python/C++
        search visits every element of it);                          <-- NOT HERE
    (4) every valid configuration survives each filter until it reaches a
        terminal case proved impossible.                             <-- NOT HERE

  A correct domain count is NOT a proof that an implementation enumerates the
  right set.  Nothing in this file inspects, extracts, or certifies any search
  program.  Obligations (3) and (4) are untouched here.

  ---------------------------------------------------------------------------
  WHAT IS PROVED
  ---------------------------------------------------------------------------

  PART A (the domain characterisation, and its link to actual geometry)

    * `InDomain M`   -- the abstract search domain over mask functions
                        `M : Nat -> Nat`: seven 7-bit masks, nine edges in
                        total, minimum degree at least one on BOTH sides.

    * `degSum_transposeMask`
                     -- the transpose double-count: summing the seven P-side
                        degrees and summing the seven Q-side degrees give the
                        same number, for EVERY mask function.  (So the
                        "9 edges" condition needs to be imposed only once.)

    * `cross_disjoint_link`, `crossCount_40_iff_edges_9`
                     -- the arithmetic link  I + |E| = 49  =>  (I = 40 <-> |E| = 9).

    * `toMasks_inDomain_of_crossCount_eq_40`   <<-- OBLIGATION (1)
                     -- for an ARBITRARY `DisjointnessGraph.Config K` (a pair of
                        simple heptagons in general position) whose number of
                        properly crossing side pairs is 40, the abstraction map
                        `toMasks K` lands in `InDomain`.  The minimum-degree
                        clauses come from `DisjointnessGraph.min_degree_both_sides`
                        (which comes, in turn, from the parity argument in
                        `SegmentGeometry.lean`); the 7-bit bound from
                        `toMasks_lt_128`; the edge count is supplied here by
                        `crossCountC_add_degSum`.

    * `degSeq_of_sum_nine`                     <<-- the degree-sequence fact
                     -- minimum degree >= 1 on seven sides with degree sum 9
                        forces the multiset {3,1,1,1,1,1,1} or {2,2,1,1,1,1,1}.
                        This is asserted in several project documents and, as
                        far as this file's author could find, proved nowhere.
                        It is proved here, for an arbitrary `d : Nat -> Nat`.

    * `maskOf_mem_domainFinset`                <<-- OBLIGATION (1), finite form
                     -- the same statement landing inside `domainFinset`, the
                        actual finite set `{M : Fin 7 -> Fin 128 | ...}` whose
                        cardinality the project quotes as 13 003 620.

  PART B (the counting identity 13 003 620) -- HONESTLY SPLIT, NOT CLOSED

    * `ieAlternatingSum_eq` -- the NUMERIC half: the inclusion-exclusion
                        expression  sum_j (-1)^j C(7,j) [x^9](((1+x)^(7-j) - 1)^7)
                        evaluates to 13 003 620.  This is an arithmetic fact
                        about integers and binomial coefficients.  BY ITSELF IT
                        SAYS NOTHING ABOUT ANY SET OF MASKS.

    * `gfCoeff9_eq_coeff` -- and the "[x^9]" in that expression is honest: the
                        integer summed above really is the coefficient of x^9 in
                        the polynomial ((1+x)^m - 1)^7, proved from the binomial
                        theorem rather than defined to be it.

    * `card_filter_forall_not` / `domain_card_inclusion_exclusion`
                     -- the COMBINATORIAL half, in general and instantiated at
                        the real domain: the cardinality of the set of mask
                        functions with all seven Q-side degrees >= 1 is the
                        alternating sum, over subsets `t` of the seven Q-sides,
                        of the number of mask functions whose Q-sides in `t` are
                        all empty.

    * NOT PROVED, and deliberately not stated as if it were: that the `t`-th
      term depends only on `#t` (a column-permutation symmetry argument), and
      that it equals `[x^9](((1+x)^(7-#t) - 1)^7)` (a generating-function
      argument).  Those two steps are the only remaining gap between
      `domain_card_inclusion_exclusion` and `ieAlternatingSum_eq`; until they
      are proved, the cardinality of the domain is NOT formally 13 003 620 in
      this development.  See the section header of PART B.

    * `domainFinset_card_pos` -- what IS proved about that cardinality: it is
      positive (`sampleMask` is an explicit element).

  ---------------------------------------------------------------------------
  TRUST
  ---------------------------------------------------------------------------

  No `sorry`, no `admit`, no project-level `axiom`, no `unsafe`, no
  `native_decide`, no `partial`.  `set_option autoImplicit false` throughout.

  AXIOMS (verbatim `#print axioms`, Lean 4.33.1 / Mathlib v4.33.1).  Only the
  three standard Lean axioms occur; nothing project-specific is assumed.

    'Heptagon.EnumerationDomain.degSum_transposeMask' depends on axioms: [propext, Quot.sound]
    'Heptagon.EnumerationDomain.cross_disjoint_link' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.EnumerationDomain.crossCountC_add_degSum' depends on axioms: [propext, Quot.sound]
    'Heptagon.EnumerationDomain.crossCount_40_iff_edges_9' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.EnumerationDomain.toMasks_inDomain_of_crossCount_eq_40' depends on axioms: [propext, Quot.sound]
    'Heptagon.EnumerationDomain.degSeq_of_sum_nine' depends on axioms: [propext, Quot.sound]
    'Heptagon.EnumerationDomain.config_degSeq' depends on axioms: [propext, Quot.sound]
    'Heptagon.EnumerationDomain.sampleM_inDomain' depends on axioms: [propext]
    'Heptagon.EnumerationDomain.sampleM_degsP' depends on axioms: [propext]
    'Heptagon.EnumerationDomain.sampleM_degsQ' depends on axioms: [propext]
    'Heptagon.EnumerationDomain.degSum_eq_edgeCount' depends on axioms: [propext]
    'Heptagon.EnumerationDomain.sampleM_fails_isDegSeq2211111' depends on axioms: [propext]
    'Heptagon.EnumerationDomain.cert_crossCountC_eq' depends on axioms: [propext, Quot.sound]
    'Heptagon.EnumerationDomain.cert_not_inDomain' depends on axioms: [propext, Quot.sound]
    'Heptagon.EnumerationDomain.ieAlternatingSum_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.EnumerationDomain.gfCoeff9_eq_coeff' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.EnumerationDomain.card_filter_forall_not' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.EnumerationDomain.domain_card_inclusion_exclusion' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.EnumerationDomain.maskOf_mem_domainFinset' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.EnumerationDomain.domainFinset_card_pos' depends on axioms: [propext, Classical.choice, Quot.sound]

  PART A uses core Lean only (no Mathlib lemma and no Mathlib tactic: only
  `decide`, `omega`, `simp only`, `rcases`/`obtain`, `refine`, `by_cases`).  It
  could be moved verbatim into a Mathlib-free file, keeping the geometry group's
  Mathlib-free trust base intact.  PART B uses Mathlib (`Finset`, `Fintype`, big
  operators, `Finset.sum_powerset_neg_one_pow_card`, `Nat.choose`,
  `Polynomial`, `sub_pow`) and is the only reason this file imports Mathlib at
  all.  `set_option maxRecDepth 8000` is an elaboration limit, not a trust
  setting.
-/

import DisjointnessGraph
import Endgame
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Polynomial.Coeff
import Mathlib.Combinatorics.Enumerative.InclusionExclusion
import Mathlib.Data.Nat.Choose.Sum

set_option autoImplicit false
set_option maxRecDepth 8000

namespace Heptagon
namespace EnumerationDomain

open Heptagon.Endgame
open Heptagon.DisjointnessGraph

/-! # PART A -- the domain characterisation

## A.1  Degree sums over the seven sides
-/

/-- Sum of `d 0, …, d 6`, in the left-fold shape of `Endgame.edgeCount`. -/
def sum7 (d : Nat → Nat) : Nat := idx7.foldl (fun acc i => acc + d i) 0

theorem sum7_eq (d : Nat → Nat) :
    sum7 d = d 0 + d 1 + d 2 + d 3 + d 4 + d 5 + d 6 := by
  simp only [sum7, idx7, List.foldl]
  omega

/-- The number of edges of the disjointness graph, read off the `P`-side masks.
This is `Endgame.edgeCount` with the `Case` wrapper removed: `degSum c.M` is
literally `Endgame.edgeCount c`. -/
def degSum (M : Nat → Nat) : Nat := sum7 (fun i => deg (M i))

/-- `degSum` is the `edgeCount` fold, definitionally. -/
theorem degSum_eq_fold (M : Nat → Nat) :
    degSum M = idx7.foldl (fun a i => a + deg (M i)) 0 := rfl

theorem degSum_eq (M : Nat → Nat) :
    degSum M = deg (M 0) + deg (M 1) + deg (M 2) + deg (M 3) + deg (M 4) + deg (M 5)
      + deg (M 6) := sum7_eq _

/-- **The transpose double-count.**  Summing the seven `P`-side degrees and
summing the seven `Q`-side degrees give the same number, for every mask
function whatsoever (no 7-bit hypothesis is needed: `deg` and `transposeMask`
both read only bits `0 … 6`).

Consequence: in `InDomain` the "nine edges" condition on the `Q` side is not an
extra assumption — it follows from the `P`-side one. -/
theorem degSum_transposeMask (M : Nat → Nat) : degSum (transposeMask M) = degSum M := by
  have h : ∀ i, i < 7 → ∀ j, bitAt (transposeMask M j) i = bitAt (M i) j :=
    fun i hi j => bitAt_transposeMask M i j hi
  simp only [degSum, sum7_eq, deg_eq_degB, h 0 (by omega), h 1 (by omega), h 2 (by omega),
    h 3 (by omega), h 4 (by omega), h 5 (by omega), h 6 (by omega), degB]
  omega

/-! ## A.2  The abstract search domain -/

/-- **The enumeration domain, over mask functions.**

`M` is a function `Nat → Nat`; only the values `M 0, …, M 6` matter.  The six
clauses are, in order: the masks are 7-bit; the disjointness graph has nine
edges; every `P`-side has degree at least one; the transposed masks are 7-bit;
the transposed graph has nine edges; every `Q`-side has degree at least one.

These are exactly the graph-shape conditions of `Endgame.graphShapeOK` MINUS
the degree-sequence clauses — which, by `degSeq_of_sum_nine` below, are not
independent conditions but consequences (up to the choice between the two
possible multisets). -/
def InDomain (M : Nat → Nat) : Prop :=
  (∀ i, i < 7 → M i < 128) ∧
  degSum M = 9 ∧
  (∀ i, i < 7 → 1 ≤ deg (M i)) ∧
  (∀ j, j < 7 → transposeMask M j < 128) ∧
  degSum (transposeMask M) = 9 ∧
  (∀ j, j < 7 → 1 ≤ deg (transposeMask M j))

/-- Only four of the six clauses have to be checked: the `Q`-side 7-bit bound is
automatic, and the `Q`-side edge count follows from the `P`-side one by
`degSum_transposeMask`. -/
theorem inDomain_of (M : Nat → Nat)
    (h1 : ∀ i, i < 7 → M i < 128) (h2 : degSum M = 9)
    (h3 : ∀ i, i < 7 → 1 ≤ deg (M i))
    (h4 : ∀ j, j < 7 → 1 ≤ deg (transposeMask M j)) : InDomain M :=
  ⟨h1, h2, h3, fun j _ => transposeMask_lt M j, by rw [degSum_transposeMask]; exact h2, h4⟩

/-! ## A.3  The arithmetic link  I + |E| = 49 -/

/-- **The arithmetic link.**  With 49 (P-side, Q-side) pairs in total, a
crossing count of 40 is the same thing as a disjointness graph with 9 edges. -/
theorem cross_disjoint_link {I E : Nat} (h : I + E = 49) : I = 40 ↔ E = 9 :=
  ⟨fun h1 => by omega, fun h2 => by omega⟩

/-! ## A.4  From a configuration to the domain  (OBLIGATION (1))

Everything in this section is about an ARBITRARY `Config`: a pair of simple
heptagons in general position, in the sense of `DisjointnessGraph.lean`.  No
`decide` is used on any particular pair of heptagons except in the explicitly
labelled certificate cross-checks of §A.5.
-/

/-- Boolean form of orientation-level disjointness of side `i` of `P` and side
`j` of `Q`. -/
def disjB (K : Config) (i j : Nat) : Bool := decide (DisjointO K i j)

/-- The mask bits ARE the disjointness bits — the `Bool`-valued form of
`DisjointnessGraph.toMasks_spec`. -/
theorem bitAt_toMasks (K : Config) (i j : Nat) (hi : i < 7) (hj : j < 7) :
    bitAt (toMasks K i) j = disjB K i j := by
  rw [toMasks_apply K i hi, bitAt_mkMask _ j hj]
  rfl

/-- `disjB K i j = false` says precisely that the two sides cross properly. -/
theorem disjB_eq_false_iff (K : Config) (i j : Nat) :
    disjB K i j = false ↔
      Geometry.ProperCross (Geometry.vtx 7 K.PV i) (Geometry.vtx 7 K.PV (i + 1))
        (Geometry.vtx 7 K.QV j) (Geometry.vtx 7 K.QV (j + 1)) := by
  rw [disjB, decide_eq_false_iff_not, DisjointO, Decidable.not_not]

/-- The number of sides of `Q` that side `i` of `P` crosses properly. -/
def crossRow (K : Config) (i : Nat) : Nat :=
  idx7.foldl (fun acc j => acc + (if disjB K i j then 0 else 1)) 0

/-- **The crossing number of a configuration**: the number of the 49
(P-side, Q-side) pairs that cross properly.  Compare `LowerBound.crossCount`,
which is this number for the certificate pair only; `cert_crossCountC_eq`
below checks that the two agree there. -/
def crossCountC (K : Config) : Nat := idx7.foldl (fun acc i => acc + crossRow K i) 0

/-- `DisjointnessGraph.degB` with the bits complemented: the number of CLEAR
bits among seven. -/
def coDegB (b0 b1 b2 b3 b4 b5 b6 : Bool) : Nat :=
  0 + (if b0 then 0 else 1) + (if b1 then 0 else 1) + (if b2 then 0 else 1)
    + (if b3 then 0 else 1) + (if b4 then 0 else 1) + (if b5 then 0 else 1)
    + (if b6 then 0 else 1)

theorem crossRow_eq_coDegB (K : Config) (i : Nat) :
    crossRow K i = coDegB (disjB K i 0) (disjB K i 1) (disjB K i 2) (disjB K i 3)
      (disjB K i 4) (disjB K i 5) (disjB K i 6) := rfl

theorem coDegB_add_degB : ∀ b0 b1 b2 b3 b4 b5 b6 : Bool,
    coDegB b0 b1 b2 b3 b4 b5 b6 + degB b0 b1 b2 b3 b4 b5 b6 = 7 := by decide

/-- **Row balance**: side `i` of `P` crosses `crossRow K i` sides of `Q` and is
disjoint from `deg (toMasks K i)` of them, and there are seven sides. -/
theorem crossRow_add_deg (K : Config) (i : Nat) (hi : i < 7) :
    crossRow K i + deg (toMasks K i) = 7 := by
  rw [crossRow_eq_coDegB, deg_eq_degB, bitAt_toMasks K i 0 hi (by omega),
    bitAt_toMasks K i 1 hi (by omega), bitAt_toMasks K i 2 hi (by omega),
    bitAt_toMasks K i 3 hi (by omega), bitAt_toMasks K i 4 hi (by omega),
    bitAt_toMasks K i 5 hi (by omega), bitAt_toMasks K i 6 hi (by omega)]
  exact coDegB_add_degB _ _ _ _ _ _ _

/-- **`I + |E| = 49` for every configuration.**  This is the step the geometry
side has to supply; `LowerBound.crossCount_add_disjointCount` is its certificate
instance. -/
theorem crossCountC_add_degSum (K : Config) : crossCountC K + degSum (toMasks K) = 49 := by
  have h0 := crossRow_add_deg K 0 (by omega)
  have h1 := crossRow_add_deg K 1 (by omega)
  have h2 := crossRow_add_deg K 2 (by omega)
  have h3 := crossRow_add_deg K 3 (by omega)
  have h4 := crossRow_add_deg K 4 (by omega)
  have h5 := crossRow_add_deg K 5 (by omega)
  have h6 := crossRow_add_deg K 6 (by omega)
  simp only [crossCountC, degSum, sum7, idx7, List.foldl]
  omega

/-- **40 crossings = 9 edges**, for every configuration. -/
theorem crossCount_40_iff_edges_9 (K : Config) :
    crossCountC K = 40 ↔ degSum (toMasks K) = 9 :=
  cross_disjoint_link (crossCountC_add_degSum K)

/-- **OBLIGATION (1).**  A pair of simple heptagons in general position with 40
properly crossing side pairs — i.e. a hypothetical counterexample to
`f(7,7) = 38`, at the orientation level — produces a mask function lying in the
abstract search domain.

The proof uses:
  * `DisjointnessGraph.toMasks_lt_128`          (masks are 7-bit),
  * `crossCountC_add_degSum` + `omega`          (nine edges),
  * `DisjointnessGraph.min_degree_both_sides`   (minimum degree, both sides),
and nothing else.  In particular NO property of any particular heptagon pair.

CAVEAT.  The hypothesis `crossCountC K = 40` is an INPUT here.  Why a
counterexample to `f(7,7) = 38` would have exactly 40 crossings — i.e. why 39
and 41+ are excluded — is a separate argument (parity, plus the upper bound
machinery) that this file does not contain. -/
theorem toMasks_inDomain_of_crossCount_eq_40 (K : Config) (h40 : crossCountC K = 40) :
    InDomain (toMasks K) := by
  have hlink := crossCountC_add_degSum K
  exact inDomain_of (toMasks K) (fun i hi => toMasks_lt_128 K i hi) (by omega)
    (min_degree_both_sides K).1 (min_degree_both_sides K).2

/-! ## A.5  Certificate cross-checks

These `decide`s are only sanity checks that `crossCountC` is the crossing count
that `LowerBound.lean` computes — they are not used by anything above. -/

section Certificate

/-- `crossCountC` agrees with `LowerBound.crossCount` at the certificate pair. -/
theorem cert_crossCountC_eq : crossCountC certConfig = LowerBound.crossCount := by decide

/-- …which is 38, so the certificate is NOT a counterexample, as it should not be. -/
theorem cert_crossCountC : crossCountC certConfig = 38 := by decide

theorem cert_degSum : degSum (toMasks certConfig) = 11 := by decide

/-- The certificate configuration is not in the search domain: it has 11 edges,
not 9.  (The domain describes a hypothetical 40-crossing configuration; the
certificate has 38.) -/
theorem cert_not_inDomain : ¬ InDomain (toMasks certConfig) := by
  intro h
  have h9 := h.2.1
  rw [cert_degSum] at h9
  exact absurd h9 (by decide)

end Certificate

/-! ## A.6  The degree-sequence fact

Minimum degree at least one on seven sides, with degree sum nine, forces the
degree multiset to be `{3,1,1,1,1,1,1}` or `{2,2,1,1,1,1,1}`.  The statement is
phrased with explicit witnesses (which side carries the excess), which is
strictly more information than the multiset statement. -/

/-- The two possible degree sequences, with witnesses. -/
def DegSeq739 (d : Nat → Nat) : Prop :=
  (∃ a, a < 7 ∧ d a = 3 ∧ ∀ i, i < 7 → i ≠ a → d i = 1) ∨
  (∃ a b, a < 7 ∧ b < 7 ∧ a ≠ b ∧ d a = 2 ∧ d b = 2 ∧
    ∀ i, i < 7 → i ≠ a → i ≠ b → d i = 1)

/-- If some side has degree 3, all the others have degree 1. -/
theorem degSeq_of_three (d : Nat → Nat) (a : Nat) (ha : a < 7) (h3 : d a = 3)
    (hmin : ∀ i, i < 7 → 1 ≤ d i)
    (hsum : d 0 + d 1 + d 2 + d 3 + d 4 + d 5 + d 6 = 9) : DegSeq739 d := by
  have k0 := hmin 0 (by omega)
  have k1 := hmin 1 (by omega)
  have k2 := hmin 2 (by omega)
  have k3 := hmin 3 (by omega)
  have k4 := hmin 4 (by omega)
  have k5 := hmin 5 (by omega)
  have k6 := hmin 6 (by omega)
  refine Or.inl ⟨a, ha, h3, ?_⟩
  intro i hi hne
  have hA : a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 ∨ a = 4 ∨ a = 5 ∨ a = 6 := by omega
  have hI : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 := by omega
  rcases hA with rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    rcases hI with rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> omega

/-- If two distinct sides have degree 2, all the others have degree 1. -/
theorem degSeq_of_pair (d : Nat → Nat) (a b : Nat) (ha : a < 7) (hb : b < 7) (hab : a ≠ b)
    (h2a : d a = 2) (h2b : d b = 2) (hmin : ∀ i, i < 7 → 1 ≤ d i)
    (hsum : d 0 + d 1 + d 2 + d 3 + d 4 + d 5 + d 6 = 9) : DegSeq739 d := by
  have k0 := hmin 0 (by omega)
  have k1 := hmin 1 (by omega)
  have k2 := hmin 2 (by omega)
  have k3 := hmin 3 (by omega)
  have k4 := hmin 4 (by omega)
  have k5 := hmin 5 (by omega)
  have k6 := hmin 6 (by omega)
  refine Or.inr ⟨a, b, ha, hb, hab, h2a, h2b, ?_⟩
  intro i hi hia hib
  have hA : a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 ∨ a = 4 ∨ a = 5 ∨ a = 6 := by omega
  have hB : b = 0 ∨ b = 1 ∨ b = 2 ∨ b = 3 ∨ b = 4 ∨ b = 5 ∨ b = 6 := by omega
  have hI : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 := by omega
  rcases hA with rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    rcases hB with rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
      rcases hI with rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> omega

/-- **THE DEGREE-SEQUENCE FACT.**  Seven non-negative side degrees, each at
least one, summing to nine, form the multiset `{3,1,1,1,1,1,1}` or
`{2,2,1,1,1,1,1}` — with the witnessing indices exhibited.

This is the statement that project documents assert and do not prove. -/
theorem degSeq_of_sum_nine (d : Nat → Nat) (hmin : ∀ i, i < 7 → 1 ≤ d i)
    (hsum : sum7 d = 9) : DegSeq739 d := by
  rw [sum7_eq] at hsum
  have k0 := hmin 0 (by omega)
  have k1 := hmin 1 (by omega)
  have k2 := hmin 2 (by omega)
  have k3 := hmin 3 (by omega)
  have k4 := hmin 4 (by omega)
  have k5 := hmin 5 (by omega)
  have k6 := hmin 6 (by omega)
  by_cases c0 : d 0 = 3
  · exact degSeq_of_three d 0 (by omega) c0 hmin hsum
  by_cases c1 : d 1 = 3
  · exact degSeq_of_three d 1 (by omega) c1 hmin hsum
  by_cases c2 : d 2 = 3
  · exact degSeq_of_three d 2 (by omega) c2 hmin hsum
  by_cases c3 : d 3 = 3
  · exact degSeq_of_three d 3 (by omega) c3 hmin hsum
  by_cases c4 : d 4 = 3
  · exact degSeq_of_three d 4 (by omega) c4 hmin hsum
  by_cases c5 : d 5 = 3
  · exact degSeq_of_three d 5 (by omega) c5 hmin hsum
  by_cases c6 : d 6 = 3
  · exact degSeq_of_three d 6 (by omega) c6 hmin hsum
  -- no side has degree 3, so every degree is 1 or 2
  have u0 : d 0 ≤ 2 := by omega
  have u1 : d 1 ≤ 2 := by omega
  have u2 : d 2 ≤ 2 := by omega
  have u3 : d 3 ≤ 2 := by omega
  have u4 : d 4 ≤ 2 := by omega
  have u5 : d 5 ≤ 2 := by omega
  have u6 : d 6 ≤ 2 := by omega
  by_cases p0 : d 0 = 2
  · by_cases q1 : d 1 = 2
    · exact degSeq_of_pair d 0 1 (by omega) (by omega) (by omega) p0 q1 hmin hsum
    by_cases q2 : d 2 = 2
    · exact degSeq_of_pair d 0 2 (by omega) (by omega) (by omega) p0 q2 hmin hsum
    by_cases q3 : d 3 = 2
    · exact degSeq_of_pair d 0 3 (by omega) (by omega) (by omega) p0 q3 hmin hsum
    by_cases q4 : d 4 = 2
    · exact degSeq_of_pair d 0 4 (by omega) (by omega) (by omega) p0 q4 hmin hsum
    by_cases q5 : d 5 = 2
    · exact degSeq_of_pair d 0 5 (by omega) (by omega) (by omega) p0 q5 hmin hsum
    by_cases q6 : d 6 = 2
    · exact degSeq_of_pair d 0 6 (by omega) (by omega) (by omega) p0 q6 hmin hsum
    exact absurd hsum (by omega)
  by_cases p1 : d 1 = 2
  · by_cases q2 : d 2 = 2
    · exact degSeq_of_pair d 1 2 (by omega) (by omega) (by omega) p1 q2 hmin hsum
    by_cases q3 : d 3 = 2
    · exact degSeq_of_pair d 1 3 (by omega) (by omega) (by omega) p1 q3 hmin hsum
    by_cases q4 : d 4 = 2
    · exact degSeq_of_pair d 1 4 (by omega) (by omega) (by omega) p1 q4 hmin hsum
    by_cases q5 : d 5 = 2
    · exact degSeq_of_pair d 1 5 (by omega) (by omega) (by omega) p1 q5 hmin hsum
    by_cases q6 : d 6 = 2
    · exact degSeq_of_pair d 1 6 (by omega) (by omega) (by omega) p1 q6 hmin hsum
    exact absurd hsum (by omega)
  by_cases p2 : d 2 = 2
  · by_cases q3 : d 3 = 2
    · exact degSeq_of_pair d 2 3 (by omega) (by omega) (by omega) p2 q3 hmin hsum
    by_cases q4 : d 4 = 2
    · exact degSeq_of_pair d 2 4 (by omega) (by omega) (by omega) p2 q4 hmin hsum
    by_cases q5 : d 5 = 2
    · exact degSeq_of_pair d 2 5 (by omega) (by omega) (by omega) p2 q5 hmin hsum
    by_cases q6 : d 6 = 2
    · exact degSeq_of_pair d 2 6 (by omega) (by omega) (by omega) p2 q6 hmin hsum
    exact absurd hsum (by omega)
  by_cases p3 : d 3 = 2
  · by_cases q4 : d 4 = 2
    · exact degSeq_of_pair d 3 4 (by omega) (by omega) (by omega) p3 q4 hmin hsum
    by_cases q5 : d 5 = 2
    · exact degSeq_of_pair d 3 5 (by omega) (by omega) (by omega) p3 q5 hmin hsum
    by_cases q6 : d 6 = 2
    · exact degSeq_of_pair d 3 6 (by omega) (by omega) (by omega) p3 q6 hmin hsum
    exact absurd hsum (by omega)
  by_cases p4 : d 4 = 2
  · by_cases q5 : d 5 = 2
    · exact degSeq_of_pair d 4 5 (by omega) (by omega) (by omega) p4 q5 hmin hsum
    by_cases q6 : d 6 = 2
    · exact degSeq_of_pair d 4 6 (by omega) (by omega) (by omega) p4 q6 hmin hsum
    exact absurd hsum (by omega)
  by_cases p5 : d 5 = 2
  · by_cases q6 : d 6 = 2
    · exact degSeq_of_pair d 5 6 (by omega) (by omega) (by omega) p5 q6 hmin hsum
    exact absurd hsum (by omega)
  exact absurd hsum (by omega)

/-- The degree-sequence fact on the `P` side of an element of the domain. -/
theorem inDomain_degSeqP {M : Nat → Nat} (h : InDomain M) :
    DegSeq739 (fun i => deg (M i)) :=
  degSeq_of_sum_nine _ h.2.2.1 h.2.1

/-- The degree-sequence fact on the `Q` side of an element of the domain. -/
theorem inDomain_degSeqQ {M : Nat → Nat} (h : InDomain M) :
    DegSeq739 (fun j => deg (transposeMask M j)) :=
  degSeq_of_sum_nine _ h.2.2.2.2.2 h.2.2.2.2.1

/-- **The degree-sequence fact, for a hypothetical counterexample.**  Both sides
of the disjointness graph of a 40-crossing configuration have degree multiset
`{3,1,1,1,1,1,1}` or `{2,2,1,1,1,1,1}`. -/
theorem config_degSeq (K : Config) (h40 : crossCountC K = 40) :
    DegSeq739 (fun i => deg (toMasks K i)) ∧
    DegSeq739 (fun j => deg (toMasksQ K j)) :=
  ⟨inDomain_degSeqP (toMasks_inDomain_of_crossCount_eq_40 K h40),
   inDomain_degSeqQ (toMasks_inDomain_of_crossCount_eq_40 K h40)⟩

/-! ## A.7  Non-vacuity

`InDomain` is not the empty predicate.  (At the `Config` level it had better be
empty — that is the theorem the whole project is trying to prove — so the
non-vacuity instance must be, and is, at the mask level.) -/

/-- A concrete element of the domain: six singleton `P`-masks plus one triple. -/
def sampleM : Nat → Nat := fun i => [1, 2, 4, 8, 16, 32, 67].getD i 0

/-- **Non-vacuity**: the domain is inhabited. -/
theorem sampleM_inDomain : InDomain sampleM := by
  refine ⟨by decide, by decide, by decide, by decide, by decide, by decide⟩

/-- The sample's `P`-side degree sequence is the `{3,1,1,1,1,1,1}` shape … -/
theorem sampleM_degsP : idx7.map (fun i => deg (sampleM i)) = [1, 1, 1, 1, 1, 1, 3] := by decide

/-- … and its `Q`-side degree sequence is the `{2,2,1,1,1,1,1}` shape.  So BOTH
multisets allowed by `degSeq_of_sum_nine` actually occur in the domain: the
`{3,1,1,1,1,1,1}` shape is not vacuous and cannot be dismissed by counting
alone.  (`Endgame.graphShapeOK` accepts only `{2,2,1,1,1,1,1}`, on both sides;
whoever discharges obligation (4) owes an argument that kills the
`{3,1,1,1,1,1,1}` branch.) -/
theorem sampleM_degsQ :
    idx7.map (fun j => deg (transposeMask sampleM j)) = [2, 2, 1, 1, 1, 1, 1] := by decide

/-! ## A.8  What the certificate checker's graph-shape test actually accepts

`Endgame.graphShapeOK` — the Boolean the 225 certificate records are checked
against — demands the degree sequence `(2,2,1,1,1,1,1)` on BOTH sides.  By
`degSeq_of_sum_nine` that is one of the two possibilities, and by
`sampleM_inDomain` + `sampleM_fails_isDegSeq2211111` the other possibility
really does occur in the domain.  So the restriction to `(2,2,1,1,1,1,1)` is NOT
a consequence of the domain conditions.

RESOLVED — SEE `docs/known-issues.md` K-17.  The text above, and the
parenthesis in `sampleM_degsQ`, originally read this as an unchecked FILTER,
i.e. as a hole in obligation (4).  That reading is WRONG; it is kept here only
so the corrected record stays legible.  `graphShapeOK` is a DESCRIPTIVE check on
the 225 records that already survived the search, not a precondition applied
during it.  Both independent implementations DO enumerate the
`{3,1,1,1,1,1,1}` branch —
`independent/implementation_b/reduction.cpp:310-317` walks it explicitly, and
`python/elimination/audit_enum.py:68-69` generates P-sides of degree 3 — and
those graphs are killed by the AKR L5 / AKR L7 / Cerny L3 filters.  The
all-`(2,2,1,1,1,1,1)` shape is an OUTPUT of the elimination, not an input to it.

Obligation (4) itself remains open, for every branch alike; nothing in this file
addresses it, and the degree-3 case is not special in that respect. -/

/-- `degSum` IS `Endgame.edgeCount`, on the nose: the edge-count clause of
`InDomain` is character-for-character the one the certificate checker
recomputes. -/
theorem degSum_eq_edgeCount (c : Case) : degSum c.M = Endgame.edgeCount c := rfl

/-- The nine-edge, minimum-degree-one element `sampleM` of the domain is
REJECTED by the certificate checker's degree-sequence test. -/
theorem sampleM_fails_isDegSeq2211111 :
    Endgame.isDegSeq2211111 (idx7.map (fun i => deg (sampleM i))) = false := by decide

/-! # PART B -- the counting identity 13 003 620

## READ THIS BEFORE BELIEVING ANYTHING IN THIS SECTION

The target is

    #{M : Fin 7 -> Fin 128 | sum of P-degrees = 9, all P-degrees >= 1,
                             all Q-degrees >= 1}  =  13 003 620.

It is NOT proved here.  What is proved is the two ends of the argument, and the
gap between them is stated explicitly:

  * `ieAlternatingSum_eq` (B.1) is the NUMERIC end: the integer
    `sum_{j<8} (-1)^j C(7,j) * gfCoeff9 (7-j)` equals `13003620`, where
    `gfCoeff9 m` is DEFINED by the binomial expansion
    `sum_{t<8} (-1)^(7-t) C(7,t) C(m*t, 9)`.  Section B.2 then PROVES that this
    number really is the polynomial coefficient `[x^9] (((1+x)^m - 1)^7)`, so
    the numeric end is a statement about the generating function, not merely
    about a formula someone wrote down.  But it is still only arithmetic: on
    its own it says nothing about any set of masks.

  * `card_filter_forall_not` (B.3) is the COMBINATORIAL end: a general
    inclusion-exclusion step.  `domain_card_inclusion_exclusion` (B.5)
    instantiates it at the actual domain, giving

        #domain = sum_{t subset of the 7 Q-sides} (-1)^#t * #{M : rows OK,
                                                               Q-sides in t empty}.

  * THE GAP (not proved, not assumed, not stated as a theorem anywhere):
      (i)  the t-th term above depends only on `#t` -- a column-permutation
           symmetry argument, which would produce the factor `C(7,j)`;
      (ii) for `#t = j` that term equals `[x^9] (((1+x)^(7-j) - 1)^7)` -- the
           generating-function count of 7 nonempty rows inside `7-j` allowed
           columns with 9 cells in total.
    Closing (i) and (ii) would join the two ends and prove the count.  Until
    then, the cardinality of `domainFinset` is an open number in this
    development.  It is deliberately NOT asserted below.

## B.1  The numeric half
-/

/-- Binomial coefficient in a kernel-friendly form (`Nat.choose`'s Pascal
recursion is far too slow to evaluate `C(49,9)` in the kernel). -/
def binom (n k : Nat) : Nat := n.descFactorial k / k.factorial

theorem binom_eq (n k : Nat) : binom n k = Nat.choose n k :=
  (Nat.choose_eq_descFactorial_div_factorial n k).symm

/-- The coefficient of `x^9` in `((1+x)^m - 1)^7`, written out by the binomial
expansion of the seventh power.  That this really IS that coefficient is
`gfCoeff9_eq_coeff` in B.2 — it is proved, not assumed. -/
def gfCoeff9 (m : Nat) : Int :=
  ∑ t ∈ Finset.range 8, (-1 : Int) ^ (7 - t) * (Nat.choose 7 t : Int) * (Nat.choose (m * t) 9 : Int)

/-- The inclusion–exclusion expression
`sum_j (-1)^j C(7,j) [x^9] (((1+x)^(7-j) - 1)^7)`. -/
def ieAlternatingSum : Int :=
  ∑ j ∈ Finset.range 8, (-1 : Int) ^ j * (Nat.choose 7 j : Int) * gfCoeff9 (7 - j)

/-- **The numeric half of Part B.**  Pure integer arithmetic: it is about
binomial coefficients, and about NO set of masks. -/
theorem ieAlternatingSum_eq : ieAlternatingSum = 13003620 := by
  simp only [ieAlternatingSum, gfCoeff9, Finset.sum_range_succ, Finset.sum_range_zero,
    ← binom_eq]
  decide

/-! ## B.2  `gfCoeff9` really is the generating-function coefficient -/

open Polynomial in
/-- **`gfCoeff9 m` is the coefficient of `x^9` in `((1+x)^m - 1)^7`.**  Proved
from the binomial theorem (`sub_pow`) and `Polynomial.coeff_one_add_X_pow`;
nothing about the expansion is assumed. -/
theorem gfCoeff9_eq_coeff (m : Nat) :
    (((1 + X : Polynomial Int) ^ m - 1) ^ 7).coeff 9 = gfCoeff9 m := by
  rw [sub_pow, finsetSum_coeff, gfCoeff9]
  refine Finset.sum_congr rfl (fun t ht => ?_)
  have ht7 : t ≤ 7 := by
    have := Finset.mem_range.mp ht
    omega
  have hsign : ((-1 : Int)) ^ (t + 7) = (-1 : Int) ^ (7 - t) := by
    rw [show t + 7 = (7 - t) + 2 * t by omega, pow_add, pow_mul]
    simp
  have hterm : ((-1 : Polynomial Int)) ^ (t + 7) * ((1 + X : Polynomial Int) ^ m) ^ t
        * (1 : Polynomial Int) ^ (7 - t) * ((Nat.choose 7 t : Nat) : Polynomial Int)
      = C (((-1 : Int) ^ (t + 7)) * ((Nat.choose 7 t : Nat) : Int))
        * ((1 + X : Polynomial Int) ^ (m * t)) := by
    simp only [one_pow, mul_one, ← pow_mul, map_mul, map_pow, map_neg, map_one,
      Polynomial.C_eq_natCast]
    ring
  rw [hterm, Polynomial.coeff_C_mul, Polynomial.coeff_one_add_X_pow, hsign]

/-! ## B.3  The inclusion–exclusion step, in general

This is the step the project roadmap calls for: it is proved for an arbitrary
finite set `s`, an arbitrary number `n` of "bad" conditions, and arbitrary
decidable conditions — not for the specific domain, and not by enumeration. -/

/-- **Inclusion–exclusion over `n` bad conditions.**  The number of elements of
`s` satisfying none of the `bad j` is the alternating sum, over subsets `t` of
the conditions, of the number of elements satisfying all the conditions in `t`.

Proof: swap the two sums and use `Finset.sum_powerset_neg_one_pow_card`
(`sum_{t subset B} (-1)^#t = [B = empty]`). -/
theorem card_filter_forall_not {α : Type*} [DecidableEq α] {n : Nat} (s : Finset α)
    (bad : Fin n → α → Prop) [∀ j a, Decidable (bad j a)] :
    ((s.filter (fun a => ∀ j, ¬ bad j a)).card : ℤ) =
      ∑ t ∈ (Finset.univ : Finset (Fin n)).powerset, (-1 : ℤ) ^ t.card *
        ((s.filter (fun a => ∀ j ∈ t, bad j a)).card : ℤ) := by
  classical
  have key : ∀ a : α,
      (∑ t ∈ (Finset.univ : Finset (Fin n)).powerset,
        (-1 : ℤ) ^ t.card * (if (∀ j ∈ t, bad j a) then (1 : ℤ) else 0))
        = if (∀ j, ¬ bad j a) then (1 : ℤ) else 0 := by
    intro a
    have hsub : ∀ t : Finset (Fin n),
        (∀ j ∈ t, bad j a) ↔ t ⊆ Finset.univ.filter (fun j => bad j a) := by
      intro t
      constructor
      · intro h j hj; simp [Finset.mem_filter, h j hj]
      · intro h j hj; have := h hj; simp [Finset.mem_filter] at this; exact this
    calc (∑ t ∈ (Finset.univ : Finset (Fin n)).powerset,
              (-1 : ℤ) ^ t.card * (if (∀ j ∈ t, bad j a) then (1 : ℤ) else 0))
        = ∑ t ∈ (Finset.univ : Finset (Fin n)).powerset,
            (if t ⊆ Finset.univ.filter (fun j => bad j a) then ((-1 : ℤ) ^ t.card) else 0) := by
          refine Finset.sum_congr rfl ?_
          intro t _
          by_cases h : (∀ j ∈ t, bad j a)
          · rw [if_pos h, if_pos ((hsub t).mp h), mul_one]
          · rw [if_neg h, if_neg (fun hc => h ((hsub t).mpr hc)), mul_zero]
      _ = ∑ t ∈ (Finset.univ.filter (fun j => bad j a)).powerset, (-1 : ℤ) ^ t.card := by
          rw [← Finset.sum_filter]
          refine Finset.sum_congr ?_ (fun _ _ => rfl)
          ext t
          simp [Finset.mem_filter, Finset.mem_powerset]
      _ = if (Finset.univ.filter (fun j => bad j a)) = ∅ then (1 : ℤ) else 0 :=
          Finset.sum_powerset_neg_one_pow_card
      _ = if (∀ j, ¬ bad j a) then (1 : ℤ) else 0 := by
          by_cases h : ∀ j, ¬ bad j a
          · rw [if_pos, if_pos h]
            ext j
            simp [Finset.mem_filter, h j]
          · rw [if_neg, if_neg h]
            rw [not_forall] at h
            simp only [not_not] at h
            obtain ⟨j, hj⟩ := h
            intro hcon
            have : j ∈ Finset.univ.filter (fun j => bad j a) := by simp [Finset.mem_filter, hj]
            rw [hcon] at this
            simp at this
  calc ((s.filter (fun a => ∀ j, ¬ bad j a)).card : ℤ)
      = ∑ a ∈ s, (if (∀ j, ¬ bad j a) then (1 : ℤ) else 0) := by
        rw [Finset.card_filter]
        push_cast
        simp
    _ = ∑ a ∈ s, ∑ t ∈ (Finset.univ : Finset (Fin n)).powerset,
          (-1 : ℤ) ^ t.card * (if (∀ j ∈ t, bad j a) then (1 : ℤ) else 0) := by
        refine Finset.sum_congr rfl ?_
        intro a _
        rw [key a]
    _ = ∑ t ∈ (Finset.univ : Finset (Fin n)).powerset, ∑ a ∈ s,
          (-1 : ℤ) ^ t.card * (if (∀ j ∈ t, bad j a) then (1 : ℤ) else 0) := Finset.sum_comm
    _ = ∑ t ∈ (Finset.univ : Finset (Fin n)).powerset, (-1 : ℤ) ^ t.card *
          ((s.filter (fun a => ∀ j ∈ t, bad j a)).card : ℤ) := by
        refine Finset.sum_congr rfl ?_
        intro t _
        rw [← Finset.mul_sum, Finset.card_filter]
        push_cast
        simp

/-! ## B.4  The domain as a `Finset` -/

/-- The finite index set the enumeration is supposed to range over: seven 7-bit
masks. -/
abbrev MaskFn := Fin 7 → Fin 128

/-- A `MaskFn` read as a mask function `Nat → Nat` (zero outside `0 … 6`), so
that `InDomain` — which is stated for `Nat → Nat`, as everything downstream in
`Endgame.lean` is — applies to it. -/
def toNatFun (M : MaskFn) : Nat → Nat := fun i => if h : i < 7 then (M ⟨i, h⟩ : Nat) else 0

theorem toNatFun_lt (M : MaskFn) (i : Nat) (hi : i < 7) : toNatFun M i < 128 := by
  simp only [toNatFun, dif_pos hi]
  exact (M ⟨i, hi⟩).isLt

instance (M : MaskFn) : Decidable (InDomain (toNatFun M)) :=
  inferInstanceAs (Decidable (_ ∧ _ ∧ _ ∧ _ ∧ _ ∧ _))

/-- **The enumeration domain as a finite set.**  Its cardinality is the number
the project quotes as 13 003 620 — a number this file does NOT prove. -/
def domainFinset : Finset MaskFn := Finset.univ.filter (fun M => InDomain (toNatFun M))

theorem mem_domainFinset (M : MaskFn) : M ∈ domainFinset ↔ InDomain (toNatFun M) := by
  simp [domainFinset, Finset.mem_filter]

/-- The `P`-side ("row") half of the domain conditions. -/
def RowsOK (M : MaskFn) : Prop :=
  degSum (toNatFun M) = 9 ∧ ∀ i, i < 7 → 1 ≤ deg (toNatFun M i)

instance (M : MaskFn) : Decidable (RowsOK M) := inferInstanceAs (Decidable (_ ∧ _))

theorem inDomain_toNatFun_iff (M : MaskFn) :
    InDomain (toNatFun M) ↔
      (RowsOK M ∧ ∀ j : Fin 7, ¬ (deg (transposeMask (toNatFun M) j.val) = 0)) := by
  constructor
  · intro h
    refine ⟨⟨h.2.1, h.2.2.1⟩, fun j hj => ?_⟩
    have h1 : 1 ≤ deg (transposeMask (toNatFun M) j.val) := h.2.2.2.2.2 j.val j.isLt
    omega
  · intro h
    refine inDomain_of (toNatFun M) (fun i hi => toNatFun_lt M i hi) h.1.1 h.1.2 ?_
    intro j hj
    have h0 : ¬ (deg (transposeMask (toNatFun M) j) = 0) := h.2 ⟨j, hj⟩
    omega

/-! ## B.5  The inclusion–exclusion step at the actual domain -/

/-- **Inclusion–exclusion for the enumeration domain.**  The number of mask
functions with nine edges, every `P`-side nonempty and every `Q`-side nonempty
is the alternating sum, over sets `t` of `Q`-sides, of the number of mask
functions with nine edges, every `P`-side nonempty, and every `Q`-side in `t`
EMPTY.

This is the `sum_j (-1)^j ...` skeleton of the 13 003 620 count.  What is still
missing is that the `t`-th summand depends only on `#t` and equals
`gfCoeff9 (7 - #t)`; see the section header. -/
theorem domain_card_inclusion_exclusion :
    (domainFinset.card : ℤ) =
      ∑ t ∈ (Finset.univ : Finset (Fin 7)).powerset, (-1 : ℤ) ^ t.card *
        (((Finset.univ.filter RowsOK).filter
          (fun M => ∀ j ∈ t, deg (transposeMask (toNatFun M) j.val) = 0)).card : ℤ) := by
  classical
  have hset : domainFinset =
      (Finset.univ.filter RowsOK).filter
        (fun M => ∀ j : Fin 7, ¬ (deg (transposeMask (toNatFun M) j.val) = 0)) := by
    ext M
    simp only [domainFinset, Finset.mem_filter, Finset.mem_univ, true_and,
      inDomain_toNatFun_iff M]
  rw [hset]
  exact card_filter_forall_not _ _

/-! ## B.6  Non-vacuity of the `Finset` domain, and obligation (1) inside it -/

/-- `sampleM` as an element of `Fin 7 → Fin 128`. -/
def sampleMask : MaskFn := fun i => ⟨sampleM i.val % 128, Nat.mod_lt _ (by omega)⟩

theorem sampleMask_mem : sampleMask ∈ domainFinset :=
  (mem_domainFinset sampleMask).mpr (by decide)

/-- The domain is not empty (so the count, whatever it is, is positive). -/
theorem domainFinset_nonempty : domainFinset.Nonempty := ⟨sampleMask, sampleMask_mem⟩

theorem domainFinset_card_pos : 0 < domainFinset.card :=
  Finset.card_pos.mpr domainFinset_nonempty

/-- `InDomain` only looks at `M 0, …, M 6`. -/
theorem transposeMask_congr {M N : Nat → Nat} (h : ∀ i, i < 7 → M i = N i) (j : Nat) :
    transposeMask M j = transposeMask N j := by
  simp only [transposeMask_eq_mkMask, mkMask_eq_mkMaskB, h 0 (by omega), h 1 (by omega),
    h 2 (by omega), h 3 (by omega), h 4 (by omega), h 5 (by omega), h 6 (by omega)]

theorem inDomain_congr {M N : Nat → Nat} (h : ∀ i, i < 7 → M i = N i) (hM : InDomain M) :
    InDomain N := by
  have e : ∀ i, i < 7 → N i = M i := fun i hi => (h i hi).symm
  refine inDomain_of N (fun i hi => by rw [e i hi]; exact hM.1 i hi) ?_
    (fun i hi => by rw [e i hi]; exact hM.2.2.1 i hi) ?_
  · rw [degSum_eq, e 0 (by omega), e 1 (by omega), e 2 (by omega), e 3 (by omega),
      e 4 (by omega), e 5 (by omega), e 6 (by omega), ← degSum_eq]
    exact hM.2.1
  · intro j hj
    rw [← transposeMask_congr h j]
    exact hM.2.2.2.2.2 j hj

/-- The masks of a configuration, packaged as an element of `Fin 7 → Fin 128`. -/
def maskOf (K : Config) : MaskFn := fun i => ⟨toMasks K i.val, toMasks_lt_128 K i.val i.isLt⟩

theorem toNatFun_maskOf (K : Config) (i : Nat) (hi : i < 7) :
    toNatFun (maskOf K) i = toMasks K i := by
  show (if h : i < 7 then ((maskOf K) ⟨i, h⟩ : Nat) else 0) = toMasks K i
  rw [dif_pos hi]
  rfl

/-- **OBLIGATION (1), inside the finite domain.**  A pair of simple heptagons in
general position with 40 properly crossing side pairs produces an ELEMENT OF
`domainFinset` — the very finite set the enumeration is supposed to sweep.

(What this does not say: that any particular program sweeps it.  That is
obligation (3), and it is not addressed anywhere in this file.) -/
theorem maskOf_mem_domainFinset (K : Config) (h40 : crossCountC K = 40) :
    maskOf K ∈ domainFinset :=
  (mem_domainFinset (maskOf K)).mpr
    (inDomain_congr (fun i hi => (toNatFun_maskOf K i hi).symm)
      (toMasks_inDomain_of_crossCount_eq_40 K h40))


end EnumerationDomain
end Heptagon
