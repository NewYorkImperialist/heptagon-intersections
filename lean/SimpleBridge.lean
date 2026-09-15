/-
The simplicity bridge for the geometric half of (E7).
Natural indices in chiOf are converted to Fin 7 by Fin.ofNat 7, reducing modulo 7.
The full equivalence uses only the stated general-position hypothesis.
-/
import OrderTypeClassification
import DisjointnessGraph
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.SplitIfs
import Mathlib.Data.Fin.Basic

namespace Heptagon.SimpleBridge
open Geometry OrderTypeClassification

def chiOf (V : Fin 7 → Pt) (a b c : Nat) : Int :=
  let o := orient (V (Fin.ofNat 7 a)) (V (Fin.ofNat 7 b)) (V (Fin.ofNat 7 c))
  if o > 0 then 1 else if o < 0 then -1 else 0

theorem successor_val (i : Fin 7) : (i + 1).val = (i.val + 1) % 7 := rfl

theorem sign_ne_iff (x y : Int) (hx : x ≠ 0) (hy : y ≠ 0) :
    ((if x > 0 then 1 else if x < 0 then -1 else 0 : Int) ≠
      (if y > 0 then 1 else if y < 0 then -1 else 0 : Int)) ↔ x * y < 0 := by
  rcases lt_or_gt_of_ne hx with hx | hx <;>
    rcases lt_or_gt_of_ne hy with hy | hy <;>
    split_ifs <;> first | omega | constructor <;> intro h <;> first | omega | nlinarith

theorem pair_cross_iff (V : Fin 7 → Pt)
    (hgp : ∀ i j k : Fin 7, i ≠ j → j ≠ k → i ≠ k →
      orient (V i) (V j) (V k) ≠ 0)
    (i j : Fin 7) (h : ¬ LowerBound.Adjacent i j) :
    (chiOf V i (i+1 : Fin 7) j ≠ chiOf V i (i+1 : Fin 7) (j+1 : Fin 7) ∧
      chiOf V j (j+1 : Fin 7) i ≠ chiOf V j (j+1 : Fin 7) (i+1 : Fin 7)) ↔
    ProperCross (V i) (V (i+1)) (V j) (V (j+1)) := by
  have hi : i ≠ i + 1 := by intro e; have := congrArg Fin.val e; rw [successor_val] at this; omega
  have hj : j ≠ j + 1 := by intro e; have := congrArg Fin.val e; rw [successor_val] at this; omega
  have hij : i ≠ j := fun e => h (Or.inl e)
  have hji : j ≠ i + 1 := fun e => h (Or.inr (Or.inl e))
  have hij' : i ≠ j + 1 := fun e => h (Or.inr (Or.inr e))
  have hs : i + 1 ≠ j + 1 := by
    intro e
    have he := congrArg Fin.val e
    rw [successor_val, successor_val] at he
    have : i.val = j.val := by omega
    exact hij (Fin.ext this)
  simp only [chiOf, Fin.ofNat_val_eq_self, ProperCross]
  exact and_congr
    (sign_ne_iff _ _ (hgp _ _ _ hi hji.symm hij) (hgp _ _ _ hi hs hij'))
    (sign_ne_iff _ _ (hgp _ _ _ hj hij'.symm hij.symm) (hgp _ _ _ hj hs.symm hji))

theorem simple_chiOf_iff (V : Fin 7 → Pt)
    (hgp : ∀ i j k : Fin 7, i ≠ j → j ≠ k → i ≠ k →
      orient (V i) (V j) (V k) ≠ 0) :
    simple (chiOf V) = true ↔
      ∀ i j : Fin 7, ¬ LowerBound.Adjacent i j →
        ¬ ProperCross (V i) (V (i+1)) (V j) (V (j+1)) := by
  have hn : simple (chiOf V) = true ↔
      ∀ i j : Fin 7, i.val < j.val → ¬ LowerBound.Adjacent i j →
        ¬ ProperCross (V i) (V (i+1)) (V j) (V (j+1)) := by
    simp only [simple, List.all_eq_true, List.mem_range]
    simp only [Bool.ite_eq_true_distrib, Bool.and_eq_true, decide_eq_true_eq,
      bne_iff_ne, Bool.not_eq_true', Bool.and_eq_false_iff,
      bne_eq_false_iff_eq, if_true_right]
    constructor
    · intro h i j hij ha hc
      have hne : (i.val+1)%7 ≠ j.val ∧ (j.val+1)%7 ≠ i.val := by
        constructor <;> intro e <;> apply ha
        · exact Or.inr (Or.inl (Fin.ext e.symm))
        · exact Or.inr (Or.inr (Fin.ext e.symm))
      have hh := h i.val i.isLt j.val j.isLt
      have hp := (pair_cross_iff V hgp i j ha).mpr hc
      simp only [successor_val] at hp
      aesop
    · intro h a ha b hb
      let i : Fin 7 := ⟨a, ha⟩
      let j : Fin 7 := ⟨b, hb⟩
      intro hg
      have hij : i.val < j.val := hg.1.1
      have hn : ¬ LowerBound.Adjacent i j := by
        rcases hg with ⟨⟨hab, hab'⟩, hba'⟩
        intro he
        rcases he with he | he | he
        · have := congrArg Fin.val he; dsimp [i, j] at this; omega
        · exact hab' (congrArg Fin.val he).symm
        · exact hba' (congrArg Fin.val he).symm
      have hh := mt (pair_cross_iff V hgp i j hn).mp (h i j hij hn)
      simp only [i, j, successor_val] at hh
      rcases not_and_or.mp hh with hh | hh
      · exact Or.inl (Classical.not_not.mp hh)
      · exact Or.inr (Classical.not_not.mp hh)
  rw [hn]
  constructor
  · intro h i j ha
    have hne : i ≠ j := fun e => ha (Or.inl e)
    rcases lt_or_gt_of_ne (show i.val ≠ j.val from fun e => hne (Fin.ext e)) with hij | hji
    · exact h i j hij ha
    · have has : ¬ LowerBound.Adjacent j i := by
        unfold LowerBound.Adjacent at *
        aesop
      intro hc
      exact h j i hji has ⟨hc.2, hc.1⟩
  · intro h i j _ ha
    exact h i j ha

theorem simple_chiOf_of_Simple7 (V : Fin 7 → Pt) (hs : DisjointnessGraph.Simple7 V) :
    simple (chiOf V) = true :=
  (simple_chiOf_iff V hs.2.1).mpr hs.2.2.2

/-! ## Non-vacuity

The bridge is stated for an arbitrary `V` in general position, so it is worth
exhibiting it firing on an actual polygon rather than on a hypothesis.  The
lower-bound certificate's two heptagons are `Simple7` (`DisjointnessGraph.simple7_Pv`,
`simple7_Qv`), so their chirotopes pass the classification's simplicity test. -/

theorem simple_chiOf_Pv : simple (chiOf LowerBound.Pv) = true :=
  simple_chiOf_of_Simple7 _ DisjointnessGraph.simple7_Pv

theorem simple_chiOf_Qv : simple (chiOf LowerBound.Qv) = true :=
  simple_chiOf_of_Simple7 _ DisjointnessGraph.simple7_Qv

end Heptagon.SimpleBridge

#print axioms Heptagon.SimpleBridge.successor_val
#print axioms Heptagon.SimpleBridge.sign_ne_iff
#print axioms Heptagon.SimpleBridge.pair_cross_iff
#print axioms Heptagon.SimpleBridge.simple_chiOf_iff
#print axioms Heptagon.SimpleBridge.simple_chiOf_of_Simple7
#print axioms Heptagon.SimpleBridge.simple_chiOf_Pv
