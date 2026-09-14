/-
  DomainCount.lean
  ================
  Closing enumeration obligation (2): `domainFinset.card = 13003620`.
-/
import EnumerationDomain
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Algebra.BigOperators.Group.Finset.Powerset
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Finset.Powerset

set_option autoImplicit false
set_option maxRecDepth 8000

namespace Heptagon
namespace EnumerationDomain

open Heptagon.Endgame
open Heptagon.DisjointnessGraph

/-! ## 1. Masks as subsets of `Fin 7` -/

theorem bitAt_eq_testBit (m i : Nat) : bitAt m i = m.testBit i := by
  by_cases h : m / 2 ^ i % 2 = 1 <;>
    simp [bitAt, Nat.testBit_eq_decide_div_mod_eq, h]

theorem eq_of_bits_lt_128 {a b : Nat} (ha : a < 128) (hb : b < 128)
    (h : ∀ i, i < 7 → bitAt a i = bitAt b i) : a = b := by
  refine Nat.eq_of_testBit_eq (fun i => ?_)
  by_cases hi : i < 7
  · rw [← bitAt_eq_testBit, ← bitAt_eq_testBit]; exact h i hi
  · have h2 : (128 : Nat) ≤ 2 ^ i := by
      calc (128 : Nat) = 2 ^ 7 := by norm_num
        _ ≤ 2 ^ i := Nat.pow_le_pow_right (by norm_num) (by omega)
    rw [Nat.testBit_lt_two_pow (by omega), Nat.testBit_lt_two_pow (by omega)]

/-- The set of set bits of `m` among bits `0 … 6`. -/
def bitsOf (m : Nat) : Finset (Fin 7) :=
  Finset.univ.filter (fun j => bitAt m j.val = true)

theorem mem_bitsOf (m : Nat) (j : Fin 7) : j ∈ bitsOf m ↔ bitAt m j.val = true := by
  simp [bitsOf]

/-- `deg` counts exactly the elements of `bitsOf`. -/
theorem card_bitsOf (m : Nat) : (bitsOf m).card = deg m := by
  have h : ∀ b0 b1 b2 b3 b4 b5 b6 : Bool,
      ((if b0 then 1 else 0) + (if b1 then 1 else 0) + (if b2 then 1 else 0)
        + (if b3 then 1 else 0) + (if b4 then 1 else 0) + (if b5 then 1 else 0)
        + (if b6 then 1 else 0) : Nat) = degB b0 b1 b2 b3 b4 b5 b6 := by decide
  rw [bitsOf, Finset.card_filter, Fin.sum_univ_seven, deg_eq_degB]
  exact h _ _ _ _ _ _ _

theorem deg_eq_zero_iff (m : Nat) : deg m = 0 ↔ bitsOf m = ∅ := by
  rw [← card_bitsOf, Finset.card_eq_zero]

/-- The mask whose set bits are exactly `s`. -/
def maskOfBits (s : Finset (Fin 7)) : Nat :=
  mkMask (fun j => decide (∃ h : j < 7, (⟨j, h⟩ : Fin 7) ∈ s))

theorem maskOfBits_lt (s : Finset (Fin 7)) : maskOfBits s < 128 := mkMask_lt _

theorem bitAt_maskOfBits (s : Finset (Fin 7)) (j : Fin 7) :
    bitAt (maskOfBits s) j.val = decide (j ∈ s) := by
  rw [maskOfBits, bitAt_mkMask _ j.val j.isLt]
  refine decide_eq_decide.mpr ⟨?_, ?_⟩
  · rintro ⟨h, hj⟩
    simpa using hj
  · intro hj
    exact ⟨j.isLt, by simpa using hj⟩

theorem bitsOf_maskOfBits (s : Finset (Fin 7)) : bitsOf (maskOfBits s) = s := by
  ext j
  rw [mem_bitsOf, bitAt_maskOfBits]
  simp

theorem maskOfBits_bitsOf {m : Nat} (hm : m < 128) : maskOfBits (bitsOf m) = m := by
  refine eq_of_bits_lt_128 (maskOfBits_lt _) hm (fun i hi => ?_)
  have := bitAt_maskOfBits (bitsOf m) ⟨i, hi⟩
  rw [this]
  by_cases h : bitAt m i = true
  · simp [mem_bitsOf, h]
  · simp only [Bool.not_eq_true] at h
    simp [mem_bitsOf, h]

/-! ## 2. The rows available when the columns of `t` are forbidden -/

/-- The masks a `P`-row may take when every `Q`-column in `t` is forced empty:
nonempty masks avoiding `t`. -/
def RowSet (t : Finset (Fin 7)) : Finset (Fin 128) :=
  Finset.univ.filter (fun m => (∀ j ∈ t, bitAt m.val j.val = false) ∧ deg m.val ≠ 0)

theorem mem_RowSet {t : Finset (Fin 7)} {m : Fin 128} :
    m ∈ RowSet t ↔ (∀ j ∈ t, bitAt m.val j.val = false) ∧ deg m.val ≠ 0 := by
  simp [RowSet]

open Polynomial in
/-- `∑_{s ⊆ u} X^#s = (1 + X)^#u`. -/
theorem sum_powerset_X_pow_card (u : Finset (Fin 7)) :
    ∑ s ∈ u.powerset, (X : Polynomial Int) ^ s.card = (1 + X) ^ u.card := by
  have h := Finset.prod_one_add (s := u) (f := fun _ : Fin 7 => (X : Polynomial Int))
  simp only [Finset.prod_const, Finset.prod_const] at h
  exact h.symm

open Polynomial in
/-- **Step (ii), row half.**  The generating function of a single row, once the
columns in `t` are forbidden: a row is a NONEMPTY subset of the `7 - #t`
remaining columns, weighted by its size. -/
theorem rowPoly_eq (t : Finset (Fin 7)) :
    (∑ m ∈ RowSet t, (X : Polynomial Int) ^ (deg m.val)) = (1 + X) ^ (7 - t.card) - 1 := by
  classical
  have hbij : (∑ m ∈ RowSet t, (X : Polynomial Int) ^ (deg m.val))
      = ∑ s ∈ tᶜ.powerset.erase ∅, (X : Polynomial Int) ^ s.card := by
    refine Finset.sum_bij' (fun m _ => bitsOf m.val)
      (fun s _ => (⟨maskOfBits s, maskOfBits_lt s⟩ : Fin 128)) ?_ ?_ ?_ ?_ ?_
    · intro m hm
      rw [mem_RowSet] at hm
      refine Finset.mem_erase.mpr ⟨?_, ?_⟩
      · exact fun h0 => hm.2 ((deg_eq_zero_iff _).mpr h0)
      · refine Finset.mem_powerset.mpr (fun j hj => ?_)
        rw [mem_bitsOf] at hj
        refine Finset.mem_compl.mpr (fun hjt => ?_)
        rw [hm.1 j hjt] at hj
        exact Bool.noConfusion hj
    · intro s hs
      obtain ⟨hne, hsub⟩ := Finset.mem_erase.mp hs
      rw [Finset.mem_powerset] at hsub
      refine mem_RowSet.mpr ⟨fun j hjt => ?_, ?_⟩
      · have : j ∉ s := fun hjs => (Finset.mem_compl.mp (hsub hjs)) hjt
        simpa [bitAt_maskOfBits s j] using this
      · rw [← card_bitsOf, bitsOf_maskOfBits]
        exact fun h0 => hne (Finset.card_eq_zero.mp h0)
    · intro m _
      exact Fin.ext (maskOfBits_bitsOf m.isLt)
    · intro s _
      exact bitsOf_maskOfBits s
    · intro m _
      rw [card_bitsOf]
  rw [hbij]
  have hmem : (∅ : Finset (Fin 7)) ∈ tᶜ.powerset := Finset.empty_mem_powerset _
  have hsplit := Finset.add_sum_erase tᶜ.powerset
    (fun s => (X : Polynomial Int) ^ s.card) hmem
  have hcompl : tᶜ.card = 7 - t.card := by
    rw [Finset.card_compl]; simp
  rw [← hcompl, ← sum_powerset_X_pow_card tᶜ, ← hsplit]
  simp

/-! ## 3. The `t`-th inclusion-exclusion term -/

theorem toNatFun_val (M : MaskFn) (i : Fin 7) : toNatFun M i.val = (M i).val := by
  show (if h : i.val < 7 then ((M ⟨i.val, h⟩ : Fin 128) : Nat) else 0) = ((M i : Fin 128) : Nat)
  rw [dif_pos i.isLt]

theorem degSum_toNatFun (M : MaskFn) :
    degSum (toNatFun M) = ∑ i : Fin 7, deg (M i).val := by
  have e : ∀ i : Fin 7, deg ((M i : Fin 128) : Nat) = deg (toNatFun M i.val) :=
    fun i => by rw [toNatFun_val]
  rw [Fin.sum_univ_seven, e 0, e 1, e 2, e 3, e 4, e 5, e 6, degSum_eq]
  rfl

theorem rowsOK_iff (M : MaskFn) :
    RowsOK M ↔ ((∑ i : Fin 7, deg (M i).val) = 9 ∧ ∀ i : Fin 7, deg (M i).val ≠ 0) := by
  constructor
  · intro h
    refine ⟨by rw [← degSum_toNatFun]; exact h.1, fun i => ?_⟩
    have := h.2 i.val i.isLt
    rw [toNatFun_val] at this
    omega
  · intro h
    refine ⟨by rw [degSum_toNatFun]; exact h.1, fun i hi => ?_⟩
    have := h.2 ⟨i, hi⟩
    rw [show toNatFun M i = ((M ⟨i, hi⟩ : Fin 128) : Nat) from toNatFun_val M ⟨i, hi⟩]
    omega

theorem deg_transpose_eq_zero_iff (M : MaskFn) (j : Fin 7) :
    deg (transposeMask (toNatFun M) j.val) = 0 ↔ ∀ i : Fin 7, bitAt (M i).val j.val = false := by
  rw [deg_eq_zero_iff, Finset.eq_empty_iff_forall_notMem]
  constructor
  · intro h i
    have hi := h i
    rw [mem_bitsOf, bitAt_transposeMask (toNatFun M) i.val j.val i.isLt, toNatFun_val] at hi
    simpa using hi
  · intro h i hi
    rw [mem_bitsOf, bitAt_transposeMask (toNatFun M) i.val j.val i.isLt, toNatFun_val, h i] at hi
    exact Bool.noConfusion hi

/-- **Step (ii), set half.**  The mask functions counted by the `t`-th
inclusion-exclusion term are exactly the 7-tuples of rows drawn from `RowSet t`
whose sizes total 9. -/
theorem term_set_eq (t : Finset (Fin 7)) :
    (Finset.univ.filter RowsOK).filter
        (fun M => ∀ j ∈ t, deg (transposeMask (toNatFun M) j.val) = 0)
      = (Fintype.piFinset (fun _ : Fin 7 => RowSet t)).filter
          (fun M => (∑ i : Fin 7, deg (M i).val) = 9) := by
  classical
  ext M
  simp only [Finset.mem_filter, Finset.mem_univ, true_and, Fintype.mem_piFinset, mem_RowSet,
    rowsOK_iff]
  constructor
  · rintro ⟨⟨hsum, hmin⟩, hcols⟩
    exact ⟨fun i => ⟨fun j hj => ((deg_transpose_eq_zero_iff M j).mp (hcols j hj)) i, hmin i⟩, hsum⟩
  · rintro ⟨hrow, hsum⟩
    exact ⟨⟨hsum, fun i => (hrow i).2⟩,
      fun j hj => (deg_transpose_eq_zero_iff M j).mpr (fun i => (hrow i).1 j hj)⟩

open Polynomial in
/-- **The product of the row generating functions counts the 7-tuples.** -/
theorem coeff_pow_eq_card (t : Finset (Fin 7)) :
    ((∑ m ∈ RowSet t, (X : Polynomial Int) ^ (deg m.val)) ^ 7).coeff 9
      = (((Fintype.piFinset (fun _ : Fin 7 => RowSet t)).filter
           (fun M => (∑ i : Fin 7, deg (M i).val) = 9)).card : ℤ) := by
  classical
  have hprod : ((∑ m ∈ RowSet t, (X : Polynomial Int) ^ (deg m.val)) ^ 7)
      = ∑ M ∈ Fintype.piFinset (fun _ : Fin 7 => RowSet t),
          (X : Polynomial Int) ^ (∑ i : Fin 7, deg (M i).val) := by
    have h := Finset.prod_univ_sum (fun _ : Fin 7 => RowSet t)
      (fun (_ : Fin 7) (m : Fin 128) => (X : Polynomial Int) ^ (deg m.val))
    rw [Finset.prod_const, Finset.card_univ, Fintype.card_fin] at h
    rw [h]
    exact Finset.sum_congr rfl (fun M _ => Finset.prod_pow_eq_pow_sum _ _ _)
  rw [hprod, Polynomial.finsetSum_coeff, Finset.card_filter, Nat.cast_sum]
  refine Finset.sum_congr rfl (fun M _ => ?_)
  rw [Polynomial.coeff_X_pow]
  by_cases h : (∑ i : Fin 7, deg (M i).val) = 9
  · rw [if_pos h.symm, if_pos h, Nat.cast_one]
  · rw [if_neg (fun hc => h hc.symm), if_neg h, Nat.cast_zero]

/-- **STEPS (i) AND (ii) TOGETHER.**  The `t`-th inclusion-exclusion term equals
`gfCoeff9 (7 - #t) = [x^9] (((1+x)^(7-#t) - 1)^7)`.  In particular it depends
only on `#t`, not on which columns `t` contains. -/
theorem term_eq (t : Finset (Fin 7)) :
    (((Finset.univ.filter RowsOK).filter
        (fun M => ∀ j ∈ t, deg (transposeMask (toNatFun M) j.val) = 0)).card : ℤ)
      = gfCoeff9 (7 - t.card) := by
  rw [term_set_eq t, ← coeff_pow_eq_card t, rowPoly_eq t, gfCoeff9_eq_coeff]

/-! ## 4. Obligation (2) -/

theorem domainFinset_card_cast : (domainFinset.card : ℤ) = 13003620 := by
  rw [domain_card_inclusion_exclusion]
  have h1 : ∑ t ∈ (Finset.univ : Finset (Fin 7)).powerset, (-1 : ℤ) ^ t.card *
      (((Finset.univ.filter RowsOK).filter
        (fun M => ∀ j ∈ t, deg (transposeMask (toNatFun M) j.val) = 0)).card : ℤ)
      = ∑ t ∈ (Finset.univ : Finset (Fin 7)).powerset,
          (-1 : ℤ) ^ t.card * gfCoeff9 (7 - t.card) :=
    Finset.sum_congr rfl (fun t _ => by rw [term_eq t])
  rw [h1, Finset.sum_powerset, Finset.card_univ, Fintype.card_fin, ← ieAlternatingSum_eq,
    ieAlternatingSum]
  refine Finset.sum_congr rfl (fun j _ => ?_)
  rw [Finset.sum_powersetCard j Finset.univ (fun n => (-1 : ℤ) ^ n * gfCoeff9 (7 - n)),
    Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
  ring

/-- **ENUMERATION OBLIGATION (2), CLOSED.** -/
theorem domainFinset_card : domainFinset.card = 13003620 := by
  exact_mod_cast domainFinset_card_cast

end EnumerationDomain
end Heptagon
