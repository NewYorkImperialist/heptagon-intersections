/-
  LemmaA.lean  --  the first file to implement.

  The genuinely new mathematical content of the f(7,7)=38 argument, stated in a
  purely combinatorial form that needs NO geometry.  All geometry is confined to
  discharging the two hypotheses h1, h2 at the call site.

  Status: skeleton.  Mathlib lemma names marked `-- CHECK` may need adjusting.
-/
import Mathlib.Data.Finset.Card
import Mathlib.Data.Fintype.Prod

open Finset

variable {m n : ℕ}

section LemmaA

variable (R : Fin m → Fin n → Prop) [DecidableRel R]

/-- The disjointness graph as a finset of pairs. -/
def E : Finset (Fin m × Fin n) := univ.filter fun p => R p.1 p.2

/--
**Lemma A (abstract form).**
`R i j` reads "side `i` of `P` is disjoint from side `j` of `Q`".
If every side of `Q` is disjoint from some member of `S`, and every side of `P`
outside `S` is disjoint from something, then `R` has at least `n + (m - |S|)`
pairs.

The two edge families are disjoint because the first has first coordinate in `S`
and the second has first coordinate outside `S`.
-/
theorem card_E_ge (S : Finset (Fin m))
    (h1 : ∀ j : Fin n, ∃ i ∈ S, R i j)
    (h2 : ∀ i : Fin m, i ∉ S → ∃ j : Fin n, R i j) :
    n + (m - S.card) ≤ (E R).card := by
  classical
  choose f hfS hf using h1
  -- family 1: for each j, the edge (f j, j); first coordinate lies in S
  set A : Finset (Fin m × Fin n) := (E R).filter fun p => p.1 ∈ S with hA
  set B : Finset (Fin m × Fin n) := (E R).filter fun p => p.1 ∉ S with hB
  have hAB : Disjoint A B := by
    simp [hA, hB, disjoint_filter_filter']            -- CHECK
  have hunion : A ∪ B = E R := by
    ext p; by_cases h : p.1 ∈ S <;> simp [hA, hB, h]
  have h1card : (n : ℕ) ≤ A.card := by
    have : ∀ j : Fin n, (f j, j) ∈ A := by
      intro j; simp [hA, E, hf j, hfS j]
    exact card_le_card_of_injOn (fun j => (f j, j)) (by simpa using this)
      (by intro a _ b _ h; exact congrArg Prod.snd h)   -- CHECK
  have h2card : (m - S.card) ≤ B.card := by
    have hcompl : (Sᶜ : Finset (Fin m)).card = m - S.card := by
      simp [card_compl]                                -- CHECK
    -- pick a witness for each i ∉ S
    have : ∀ i ∈ (Sᶜ : Finset (Fin m)), ∃ j, R i j := by
      intro i hi; exact h2 i (by simpa using hi)
    choose g hg using this
    rw [← hcompl]
    refine card_le_card_of_injOn (fun i => (i, g i _)) ?_ ?_   -- CHECK (dependent choose)
    · intro i hi; simp [hB, E, hg i hi]; simpa using hi
    · intro a _ b _ h; exact congrArg Prod.fst h
  calc n + (m - S.card) ≤ A.card + B.card := Nat.add_le_add h1card h2card
    _ = (A ∪ B).card := (card_union_of_disjoint hAB).symm   -- CHECK
    _ = (E R).card := by rw [hunion]

end LemmaA

section Heptagons

variable (R : Fin 7 → Fin 7 → Prop) [DecidableRel R]

/--
**Lemma A specialised, with the parity upgrade.**
`hS`  : `S` is a 4-element set of sides of `P` no line meets all of;
`hpar`: the number of disjoint side pairs is odd (equivalently the number of
        crossings is even -- two closed curves in general position).
Conclusion: at least 11 disjoint pairs, i.e. at most 38 crossings.
-/
theorem card_E_ge_eleven (S : Finset (Fin 7)) (hS : S.card = 4)
    (h1 : ∀ j : Fin 7, ∃ i ∈ S, R i j)
    (h2 : ∀ i : Fin 7, i ∉ S → ∃ j : Fin 7, R i j)
    (hpar : Odd (E R).card) :
    11 ≤ (E R).card := by
  have h10 : 10 ≤ (E R).card := by
    have := card_E_ge R S h1 h2
    rw [hS] at this; simpa using this
  obtain ⟨t, ht⟩ := hpar
  omega

/-- Restated as the intersection bound, using `I + |E| = 49`. -/
theorem crossings_le_38 (I : ℕ) (hIE : I + (E R).card = 49)
    (S : Finset (Fin 7)) (hS : S.card = 4)
    (h1 : ∀ j : Fin 7, ∃ i ∈ S, R i j)
    (h2 : ∀ i : Fin 7, i ∉ S → ∃ j : Fin 7, R i j)
    (hpar : Odd (E R).card) :
    I ≤ 38 := by
  have := card_E_ge_eleven R S hS h1 h2 hpar; omega

end Heptagons
