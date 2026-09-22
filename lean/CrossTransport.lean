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
open Heptagon.ResidualSym Heptagon.RealConfig

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

/-! ## Comparing to the *unperturbed* configuration

The restriction above — both parameters positive — is exactly what the `c₀ ≠ 0`
clause of Theorem CI's class-(a) row removes.  A witness whose **constant term**
is nonzero has `ord = 0`, and then its sign on `(0, ρ)` is the sign of that
constant term, which is its value at `0`.  So the comparison reaches the
unperturbed configuration after all. -/

theorem eval_zero (w : Wit) : w.eval 0 = w.coeff 0 := by
  simp only [Wit.eval]
  rw [Finset.sum_eq_single 0]
  · simp
  · intro b _ hb; simp [zero_pow hb]
  · intro h; exact absurd (Finset.mem_range.mpr (Nat.succ_pos _)) h

/-- **Class (a)'s `c₀ ≠ 0` clause.**  If the witness has nonzero constant term,
its sign at every parameter in `(0, ρ)` agrees with its sign at `0`. -/
theorem sameSign_eval_zero (w : Wit) (h0 : w.ord = 0) {e : ℝ}
    (he0 : 0 < e) (he : e < w.rho) : SameSignR (w.eval 0) (w.eval e) := by
  have hpos : 0 < w.coeff w.ord * w.eval e := w.lemmaU_sign he0 he
  rw [h0] at hpos
  rw [eval_zero]
  rcases lt_trichotomy (w.coeff 0) 0 with h | h | h
  · exact Or.inr ⟨h, by nlinarith⟩
  · exact absurd hpos (by rw [h]; simp)
  · exact Or.inl ⟨h, by nlinarith⟩

/-- **Class (a), assembled.**  A side pair crossing in the unperturbed
configuration, whose four determinants are witnessed with nonzero constant
term, still crosses at every parameter in `(0, ρ)`.  This is the class-(a) row
of Theorem CI, with `move_zero` supplying the identification of the parameter-0
configuration with `V0`. -/
theorem properCrossR_survives (V0 E : Fin 14 → ℝ × ℝ) (a b c d : Fin 14)
    (w₁ w₂ w₃ w₄ : Wit)
    (hw₁ : ∀ e : ℝ, w₁.eval e = orientR (move V0 E e a) (move V0 E e b) (move V0 E e c))
    (hw₂ : ∀ e : ℝ, w₂.eval e = orientR (move V0 E e a) (move V0 E e b) (move V0 E e d))
    (hw₃ : ∀ e : ℝ, w₃.eval e = orientR (move V0 E e c) (move V0 E e d) (move V0 E e a))
    (hw₄ : ∀ e : ℝ, w₄.eval e = orientR (move V0 E e c) (move V0 E e d) (move V0 E e b))
    (o₁ : w₁.ord = 0) (o₂ : w₂.ord = 0) (o₃ : w₃.ord = 0) (o₄ : w₄.ord = 0)
    {e : ℝ} (he0 : 0 < e)
    (k₁ : e < w₁.rho) (k₂ : e < w₂.rho) (k₃ : e < w₃.rho) (k₄ : e < w₄.rho)
    (hcross : ProperCrossR (V0 a) (V0 b) (V0 c) (V0 d)) :
    ProperCrossR (move V0 E e a) (move V0 E e b) (move V0 E e c) (move V0 E e d) := by
  have s₁ := sameSign_eval_zero w₁ o₁ he0 k₁
  have s₂ := sameSign_eval_zero w₂ o₂ he0 k₂
  have s₃ := sameSign_eval_zero w₃ o₃ he0 k₃
  have s₄ := sameSign_eval_zero w₄ o₄ he0 k₄
  rw [hw₁, hw₁, hw₂, hw₂, hw₃, hw₃, hw₄, hw₄] at *
  rw [move_zero] at s₁ s₂ s₃ s₄
  exact (properCrossR_congr s₁ s₂ s₃ s₄).mp hcross

/-- **The class-(a) count cannot drop.**  If every pair crossing at the start
still crosses at parameter `e`, the crossing-pair set only grows, so its
cardinality only grows.  With `DegBound.lemmaCL_regular` — regular points are
in bijection with crossing pairs — this is the class-(a) half of the count
inequality. -/
theorem crossPairs_card_mono {V0 E : Fin 14 → ℝ × ℝ} {e : ℝ}
    (h : ∀ i j : Fin 7,
      ProperCrossR (V0 (pP i)) (V0 (pP (i + 1))) (V0 (pQ j)) (V0 (pQ (j + 1))) →
      ProperCrossR (move V0 E e (pP i)) (move V0 E e (pP (i + 1)))
        (move V0 E e (pQ j)) (move V0 E e (pQ (j + 1)))) :
    (crossPairsOf V0).card ≤ (crossPairsOf (move V0 E e)).card := by
  apply Finset.card_le_card
  intro p hp
  obtain ⟨i, j⟩ := p
  exact mem_crossPairsOf.mpr (h i j (mem_crossPairsOf.mp hp))

/-! ## Classes (b) and (c) of the transport

Class (a) was the hard one — it needed Theorem U.  The other two are cheap, and
that is the point: `Φ_α` on them is *given* by what the motion maintains.

* **(b)** a vertex of one polygon lying on a side of the other.  AKR's
  relation (1) is one of the equations Theorem 17 solves, so the ratio is
  maintained and the point stays on the (moving) side.
* **(c)** a coincidence.  If the motion *separates* it, `Φ_α` is the (R2)
  crossing; if it *maintains* it, `Φ_α` is the apex itself, which needs no
  hypothesis at all.  That fourth rule is the one `CI_HARDENED.md` found
  missing — (R2) is unsatisfiable at an unseparated apex, and §9.1 processes
  coincidences one at a time, so any input with two or more produces exactly
  that case. -/

/-- A maintained convex combination stays in the moving segment.  This is
class (b): relation (1) with its original `λ`. -/
theorem classB_survives {Vb Vc Vi : ℝ → ℝ × ℝ} {t : ℝ}
    (ht0 : 0 ≤ t) (ht1 : t ≤ 1)
    (hrel : ∀ e : ℝ, Vi e = t • Vb e + (1 - t) • Vc e) (e : ℝ) :
    Vi e ∈ segment ℝ (Vb e) (Vc e) :=
  ⟨t, 1 - t, ht0, by linarith, by ring, (hrel e).symm⟩

/-- Rule **(c0)**: a maintained apex is still a common point.  No hypothesis
beyond the coincidence persisting. -/
theorem classC0_survives {Vp Vq : ℝ → ℝ × ℝ} {e : ℝ} (h : Vp e = Vq e)
    (Vp' Vq' : ℝ × ℝ) :
    Vp e ∈ segment ℝ (Vp e) Vp' ∧ Vp e ∈ segment ℝ (Vq e) Vq' :=
  ⟨left_mem_segment ℝ _ _, by rw [h]; exact left_mem_segment ℝ _ _⟩

#print axioms classB_survives
#print axioms classC0_survives

#print axioms crossPairs_card_mono

#print axioms properCrossR_survives

#print axioms eval_zero
#print axioms sameSign_eval_zero

#print axioms crossPairsOf_eq_of_pairwise
#print axioms crossPairsOf_move_eq

end CrossTransport
end Heptagon
