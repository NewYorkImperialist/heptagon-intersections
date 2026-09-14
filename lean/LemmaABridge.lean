/-
  LemmaABridge.lean
  =================

  CONNECTING LEMMA A'S CARDINALITIES TO THE MASK REPRESENTATION.

  `LemmaA.lean` counts disjoint side pairs as a `Finset (Fin 7 x Fin 7)` and
  proves `10 <= |E|` whenever an uncrossable 4-set exists.  Everything else in
  the development counts them as `degSum`, a fold over seven bitmasks.  Nothing
  connected the two, which is why `Exclude42.lean` had to carry its "both
  polygons are exceptional" step as hypothesis (X3) rather than deriving it:
  Lemma A was unusable at the mask level.

  This file supplies the missing identity and draws the consequence.

  WHAT IS PROVED
    * `deg_eq_card`       -- `deg m` really is the number of set bits among
                             positions 0..6, as a `Finset.card`.
    * `card_E_eq_degSum`  -- the two counts agree:
                             `(E (Rgeo K)).card = degSum (toMasks K)`.
    * `no_uncrossable_four_set_of_degSum_lt_ten`
                          -- (X3), DISCHARGED: if `degSum (toMasks K) < 10`
                             then no uncrossable 4-set of `P`-sides exists.
                             This is exactly "P is exceptional", and it is the
                             step `Exclude42.lean` had to assume.

  SCOPE.  "Exceptional" is used here in its operative sense -- admitting no
  uncrossable 4-set -- which is the property Lemma A actually bounds.  That the
  14 enumerated classes are precisely the exceptional heptagons up to order
  type is a separate matter (the classification), is NOT proved here, and
  remains (E7).
-/

import LemmaA
import DisjointnessGraph
import EnumerationDomain
import Mathlib.Algebra.BigOperators.Fin

set_option autoImplicit false

namespace Heptagon
namespace LemmaABridge

open Finset
open Heptagon.Endgame
open Heptagon.DisjointnessGraph
open Heptagon.EnumerationDomain

/-- `deg` counts the set bits among positions `0 … 6`. -/
theorem deg_eq_card (m : Nat) :
    deg m = (univ.filter (fun j : Fin 7 => bitAt m j.val = true)).card := by
  rw [Finset.card_filter, Fin.sum_univ_seven, deg_eq_degB]
  simp [degB]

/-- The disjointness relation of a configuration, as a relation on `Fin 7`,
which is the shape `LemmaA` works in. -/
def Rgeo (K : Config) (i j : Fin 7) : Prop := DisjointO K i.val j.val

instance (K : Config) : DecidableRel (Rgeo K) :=
  fun i j => inferInstanceAs (Decidable (DisjointO K i.val j.val))

/-- **THE BRIDGE.**  `LemmaA`'s edge count and the mask-level `degSum` are the
same number. -/
theorem card_E_eq_degSum (K : Config) :
    (Heptagon.LemmaA.E (Rgeo K)).card = degSum (toMasks K) := by
  have hrow : ∀ i : Fin 7,
      (univ.filter (fun j : Fin 7 => Rgeo K i j)).card = deg (toMasks K i.val) := by
    intro i
    rw [deg_eq_card]
    congr 1
    apply Finset.filter_congr
    intro j _
    simp only [Rgeo]
    exact (toMasks_spec K i.val j.val i.isLt j.isLt).symm
  rw [Heptagon.LemmaA.E, Finset.card_filter, Fintype.sum_prod_type]
  have : ∀ i : Fin 7, (∑ j : Fin 7, if Rgeo K i j then 1 else 0)
      = deg (toMasks K i.val) := by
    intro i; rw [← hrow i, Finset.card_filter]
  rw [Finset.sum_congr rfl (fun i _ => this i)]
  simp [degSum, sum7, idx7, List.foldl, Fin.sum_univ_seven]

/-- **(X3), DISCHARGED.**  A configuration whose disjointness graph has fewer
than ten edges admits no uncrossable 4-set of `P`-sides -- i.e. `P` is
exceptional in the operative sense.

This is the contrapositive of `LemmaA.card_E_ge_ten`, transported across the
bridge.  `Exclude42.lean` needed exactly this at `degSum = 7`. -/
theorem no_uncrossable_four_set_of_degSum_lt_ten (K : Config)
    (hlt : degSum (toMasks K) < 10) :
    ¬ ∃ S : Finset (Fin 7), S.card = 4 ∧
        (∀ j : Fin 7, ∃ i ∈ S, Rgeo K i j) ∧
        (∀ i : Fin 7, i ∉ S → ∃ j : Fin 7, Rgeo K i j) := by
  rintro ⟨S, hS, h1, h2⟩
  have hten := Heptagon.LemmaA.card_E_ge_ten (Rgeo K) S hS h1 h2
  rw [card_E_eq_degSum] at hten
  omega

/-- The instance `Exclude42.lean` needs: seven edges is fewer than ten. -/
theorem no_uncrossable_four_set_of_seven_edges (K : Config)
    (h7 : degSum (toMasks K) = 7) :
    ¬ ∃ S : Finset (Fin 7), S.card = 4 ∧
        (∀ j : Fin 7, ∃ i ∈ S, Rgeo K i j) ∧
        (∀ i : Fin 7, i ∉ S → ∃ j : Fin 7, Rgeo K i j) :=
  no_uncrossable_four_set_of_degSum_lt_ten K (by omega)

/-! ## Non-vacuity

At the certificate pair the bridge is checked against both sides' own arithmetic:
`LemmaA`'s count and `degSum` both give 11, matching
`LowerBound.disjoint_count_eq_11`. -/

theorem cert_card_E_eq_degSum :
    (Heptagon.LemmaA.E (Rgeo certConfig)).card = degSum (toMasks certConfig) :=
  card_E_eq_degSum certConfig

theorem cert_degSum_eq_11 : degSum (toMasks certConfig) = 11 := by decide

end LemmaABridge
end Heptagon
