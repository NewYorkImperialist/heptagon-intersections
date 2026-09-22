import UniformEps
import RealPerturb

/-!
# The crossing-pair set is constant along the motion

`UniformEps.properCrossR_move_iff` says one side pair crosses at `e₁` iff it
crosses at `e₂`, for any two parameters in `(0, t)` with `t` below the four
witnesses' `ρ`.  This lifts that from one pair to the whole set.

That is the counting content of class (a) of Theorem CI in
`docs/akr-9-assembly.md` §2.3: the non-degenerate intersection points are in
bijection with crossing side pairs, so if the crossing **set** does not change
along the motion, neither does that part of the count.

Note what is and is not claimed.  Both parameters must be **positive**:
Theorem U's sign agreement holds on the open interval `(0, ρ)`, not at `0`.
Comparing to the unperturbed configuration needs the stronger hypothesis that
the relevant witness has nonzero *constant* term, which is exactly the
`c₀ ≠ 0` clause Theorem CI's class-(a) row invokes.

Nothing here is an axiom and nothing here proves `f(7,7) = 38`.
-/

namespace Heptagon
namespace CrossTransport

open Heptagon.UniformEps Heptagon.RealPerturb Heptagon.RealUpperBound
open Heptagon.ResidualSym

/-- If every side pair has the same crossing status at two parameters, the
crossing-pair sets coincide. -/
theorem crossPairsOf_eq_of_pairwise {V W : Fin 14 → ℝ × ℝ}
    (h : ∀ i j : Fin 7,
      ProperCrossR (V (pP i)) (V (pP (i + 1))) (V (pQ j)) (V (pQ (j + 1))) ↔
      ProperCrossR (W (pP i)) (W (pP (i + 1))) (W (pQ j)) (W (pQ (j + 1)))) :
    crossPairsOf V = crossPairsOf W := by
  ext ⟨i, j⟩
  simp only [mem_crossPairsOf]
  exact h i j

/-- Hence the count of crossing pairs is the same. -/
theorem crossPairs_card_eq_of_pairwise {V W : Fin 14 → ℝ × ℝ}
    (h : ∀ i j : Fin 7,
      ProperCrossR (V (pP i)) (V (pP (i + 1))) (V (pQ j)) (V (pQ (j + 1))) ↔
      ProperCrossR (W (pP i)) (W (pP (i + 1))) (W (pQ j)) (W (pQ (j + 1)))) :
    (crossPairsOf V).card = (crossPairsOf W).card := by
  rw [crossPairsOf_eq_of_pairwise h]

/-- **The crossing set is constant on `(0, t)`.**  The per-pair hypothesis is
exactly what `UniformEps.properCrossR_move_iff` supplies, once witnesses are
chosen for the four determinants of each of the `49` pairs. -/
theorem crossPairsOf_move_eq (V0 E : Fin 14 → ℝ × ℝ) {e₁ e₂ : ℝ}
    (h : ∀ i j : Fin 7,
      ProperCrossR (move V0 E e₁ (pP i)) (move V0 E e₁ (pP (i + 1)))
        (move V0 E e₁ (pQ j)) (move V0 E e₁ (pQ (j + 1))) ↔
      ProperCrossR (move V0 E e₂ (pP i)) (move V0 E e₂ (pP (i + 1)))
        (move V0 E e₂ (pQ j)) (move V0 E e₂ (pQ (j + 1)))) :
    crossPairsOf (move V0 E e₁) = crossPairsOf (move V0 E e₂) :=
  crossPairsOf_eq_of_pairwise h

#print axioms crossPairsOf_eq_of_pairwise
#print axioms crossPairsOf_move_eq

end CrossTransport
end Heptagon
