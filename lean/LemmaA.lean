/-
  LemmaA.lean

  The combinatorial core of the f(7,7) ≤ 38 argument, in a purely counting form
  that needs no geometry.  All geometry is confined to discharging the
  hypotheses `h1`, `h2`, `hpar` and `hIE` at the call site; those remain explicit
  hypotheses here, which is exactly the intended division of labour.  What is
  kernel-checked in this file is the *counting reduction*.

  No `sorry`, no `axiom`, no `native_decide`.

  History: this file previously existed as an uncompiled skeleton carrying six
  `-- CHECK` markers on Mathlib lemma names the original author was unsure of.
  It has been rewritten and now actually compiles; nothing about the earlier
  version was ever verified.
-/
import Mathlib.Data.Finset.Card
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Card
import Mathlib.Algebra.Ring.Parity
import LowerBound

set_option autoImplicit false

open Finset

namespace Heptagon
namespace LemmaA

variable {m n : ℕ}

/-! ## The abstract counting lemma -/

section Abstract

variable (R : Fin m → Fin n → Prop) [DecidableRel R]

/-- The **disjointness graph** of `R`, as a finset of pairs.
`R i j` is read "side `i` of `P` is disjoint from side `j` of `Q`". -/
def E : Finset (Fin m × Fin n) := univ.filter fun p => R p.1 p.2

@[simp] theorem mem_E {p : Fin m × Fin n} : p ∈ E R ↔ R p.1 p.2 := by
  simp [E]

/--
**Lemma A (abstract form).**

Let `S` be a set of `P`-sides such that

* `h1` : every `Q`-side `j` is disjoint from at least one `P`-side *inside* `S`;
* `h2` : every `P`-side `i` *outside* `S` is disjoint from at least one `Q`-side.

Then the disjointness graph has at least `n + (m - |S|)` edges.

The two edge families are disjoint because the first consists of edges whose
`P`-endpoint lies in `S` and the second of edges whose `P`-endpoint lies outside
`S`.  The first family has at least `n` edges because the projection to the
`Q`-coordinate is onto all of `Fin n`; the second has at least `m - |S|` edges
because the projection to the `P`-coordinate is onto all of `Sᶜ`.
-/
theorem card_E_ge (S : Finset (Fin m))
    (h1 : ∀ j : Fin n, ∃ i ∈ S, R i j)
    (h2 : ∀ i : Fin m, i ∉ S → ∃ j : Fin n, R i j) :
    n + (m - S.card) ≤ (E R).card := by
  classical
  set A : Finset (Fin m × Fin n) := (E R).filter fun p => p.1 ∈ S with hA
  set B : Finset (Fin m × Fin n) := (E R).filter fun p => p.1 ∉ S with hB
  have hAB : Disjoint A B := by
    refine Finset.disjoint_left.mpr ?_
    intro p hp hp'
    rw [hA, Finset.mem_filter] at hp
    rw [hB, Finset.mem_filter] at hp'
    exact hp'.2 hp.2
  have hunion : A ∪ B = E R := by
    ext p
    by_cases h : p.1 ∈ S <;> simp [hA, hB, h]
  -- Family 1: the `Q`-coordinate projection is onto, so `|A| ≥ n`.
  have h1card : n ≤ A.card := by
    have hsurj : Set.SurjOn Prod.snd (A : Set (Fin m × Fin n))
        ((univ : Finset (Fin n)) : Set (Fin n)) := by
      intro j _
      obtain ⟨i, hiS, hij⟩ := h1 j
      refine ⟨(i, j), ?_, rfl⟩
      simp only [Finset.mem_coe, hA, Finset.mem_filter, mem_E]
      exact ⟨hij, hiS⟩
    have := Finset.card_le_card_of_surjOn (s := A) (t := (univ : Finset (Fin n)))
      Prod.snd hsurj
    simpa using this
  -- Family 2: the `P`-coordinate projection is onto `Sᶜ`, so `|B| ≥ m - |S|`.
  have h2card : m - S.card ≤ B.card := by
    have hsurj : Set.SurjOn Prod.fst (B : Set (Fin m × Fin n))
        ((Sᶜ : Finset (Fin m)) : Set (Fin m)) := by
      intro i hi
      have hiS : i ∉ S := by simpa using hi
      obtain ⟨j, hij⟩ := h2 i hiS
      refine ⟨(i, j), ?_, rfl⟩
      simp only [Finset.mem_coe, hB, Finset.mem_filter, mem_E]
      exact ⟨hij, hiS⟩
    have hle := Finset.card_le_card_of_surjOn (s := B) (t := (Sᶜ : Finset (Fin m)))
      Prod.fst hsurj
    have hcompl : (Sᶜ : Finset (Fin m)).card = m - S.card := by
      rw [Finset.card_compl, Fintype.card_fin]
    omega
  calc n + (m - S.card) ≤ A.card + B.card := Nat.add_le_add h1card h2card
    _ = (A ∪ B).card := (Finset.card_union_of_disjoint hAB).symm
    _ = (E R).card := by rw [hunion]

end Abstract

/-! ## Specialisation to two heptagons, with the parity upgrade -/

section Heptagons

variable (R : Fin 7 → Fin 7 → Prop) [DecidableRel R]

/-- **Lemma A for heptagons.**  With `|S| = 4` the bound reads `|E| ≥ 7 + 3 = 10`. -/
theorem card_E_ge_ten (S : Finset (Fin 7)) (hS : S.card = 4)
    (h1 : ∀ j : Fin 7, ∃ i ∈ S, R i j)
    (h2 : ∀ i : Fin 7, i ∉ S → ∃ j : Fin 7, R i j) :
    10 ≤ (E R).card := by
  have h := card_E_ge R S h1 h2
  rw [hS] at h
  simpa using h

/--
**The parity upgrade.**  `hpar` says the number of disjoint side pairs is odd
(equivalently, the number of properly crossing pairs is even, which holds for two
closed curves in general position).  An odd number that is at least 10 is at
least 11.
-/
theorem card_E_ge_eleven (S : Finset (Fin 7)) (hS : S.card = 4)
    (h1 : ∀ j : Fin 7, ∃ i ∈ S, R i j)
    (h2 : ∀ i : Fin 7, i ∉ S → ∃ j : Fin 7, R i j)
    (hpar : Odd (E R).card) :
    11 ≤ (E R).card := by
  have h10 := card_E_ge_ten R S hS h1 h2
  obtain ⟨t, ht⟩ := hpar
  omega

/-- Parity upgrade in isolation, free of any geometry: `|E| ≥ 10` and `|E|` odd
give `|E| ≥ 11`. -/
theorem ge_eleven_of_ge_ten_of_odd {k : ℕ} (h10 : 10 ≤ k) (hodd : Odd k) : 11 ≤ k := by
  obtain ⟨t, ht⟩ := hodd; omega

/--
**The intersection bound.**  `hIE` records that each of the `7 × 7 = 49`
(P-side, Q-side) pairs contributes either one crossing or one disjointness edge.
-/
theorem crossings_le_38 (I : ℕ) (hIE : I + (E R).card = 49)
    (S : Finset (Fin 7)) (hS : S.card = 4)
    (h1 : ∀ j : Fin 7, ∃ i ∈ S, R i j)
    (h2 : ∀ i : Fin 7, i ∉ S → ∃ j : Fin 7, R i j)
    (hpar : Odd (E R).card) :
    I ≤ 38 := by
  have h11 := card_E_ge_eleven R S hS h1 h2 hpar
  omega

end Heptagons

/-! ## Non-vacuity check

The hypotheses of `crossings_le_38` are not vacuous, and the bound `|E| ≥ 11` is
attained.  We instantiate `R` with the *actual* disjointness relation of the two
explicit heptagons of `LowerBound.lean` (side `i` of `P` is disjoint from side
`j` of `Q` exactly when they do not cross properly), take
`S = {0, 1, 3, 6} ⊆ Fin 7`, and verify every hypothesis by kernel computation.
The resulting graph has exactly 11 edges and exactly 38 crossings, so the
conclusion `I ≤ 38` is sharp and the hypotheses are simultaneously satisfiable.
-/

section NonVacuity

open Heptagon.LowerBound

/-- The disjointness relation of the explicit certificate pair `(P, Q)`. -/
def Rcert (i j : Fin 7) : Prop := ¬ PQCross i j

instance : DecidableRel Rcert := fun _ _ => inferInstanceAs (Decidable (¬ _))

/-- The 4-element set of `P`-sides used as `S`. -/
def Scert : Finset (Fin 7) := {0, 1, 3, 6}

theorem Scert_card : Scert.card = 4 := by decide

theorem Rcert_h1 : ∀ j : Fin 7, ∃ i ∈ Scert, Rcert i j := by decide

theorem Rcert_h2 : ∀ i : Fin 7, i ∉ Scert → ∃ j : Fin 7, Rcert i j := by decide

theorem Rcert_card_E : (E Rcert).card = 11 := by decide

theorem Rcert_odd : Odd (E Rcert).card := by
  rw [Rcert_card_E]; exact ⟨5, rfl⟩

/-- The certificate satisfies every hypothesis of `card_E_ge_eleven`, and meets
the bound with equality: the hypotheses are consistent and the bound is tight. -/
theorem nonvacuous : 11 ≤ (E Rcert).card ∧ (E Rcert).card = 11 :=
  ⟨card_E_ge_eleven Rcert Scert Scert_card Rcert_h1 Rcert_h2 Rcert_odd, Rcert_card_E⟩

/-- Applying `crossings_le_38` to the certificate with `I = 38` (the number of
properly crossing pairs proved in `LowerBound.crossing_count_eq_38`) gives
`38 ≤ 38`: the hypothesis `hIE` is satisfiable together with `h1`, `h2`, `hpar`. -/
theorem cert_I_le_38 : crossCount ≤ 38 := by
  refine crossings_le_38 Rcert crossCount ?_ Scert Scert_card Rcert_h1 Rcert_h2 Rcert_odd
  rw [Rcert_card_E, crossing_count_eq_38]

/-- The hypotheses are genuinely restrictive, not trivially satisfied: the empty
disjointness relation has `|E| = 0`, which is below the bound, and it fails `h1`
even for the largest possible `S`.  So `card_E_ge_eleven` is not vacuously
strong, and its conclusion is not provable without `h1`/`h2`. -/
theorem hypotheses_are_restrictive :
    (E (fun _ _ : Fin 7 => False)).card = 0 ∧
    ¬ (∀ j : Fin 7, ∃ i ∈ (univ : Finset (Fin 7)), (fun _ _ : Fin 7 => False) i j) := by
  constructor
  · decide
  · intro h; obtain ⟨_, _, hf⟩ := h 0; exact hf

/-- `Rcert` really is the complement of the crossing relation, and its edge count
agrees with `LowerBound.disjointCount`. -/
theorem Rcert_matches_lower_bound : (E Rcert).card = disjointCount := by
  rw [Rcert_card_E, disjoint_count_eq_11]

end NonVacuity

end LemmaA
end Heptagon
