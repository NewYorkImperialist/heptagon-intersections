import SignExp

/-!
# Theorem C⁺: the constructive choice of perturbation directions

AKR assert the existence of the directions `E_i` and give no argument
(`independent/e9_directions/`).  `independent/eps_uniform/R3_CLOSE.md` replaces
the existence claim by an explicit per-apex rule and proves it suffices.  This
file formalises the combinatorial core of that rule.

At a coincidence the two boundaries contribute four ray directions
`a₁, a₂, b₁, b₂`.  Pick a pair `(a_k, b_l)` with `cross a_k b_l ≠ 0` and set

    E(t) = t • b_l − a_k .

**Theorem C⁺** forbids `E` parallel to *all four* rays — the strengthening that
certificate K7 forced, because a direction parallel to a ray can **create** a
vertex-side degeneracy while satisfying every other requirement.  The claim is
that `t ∈ {1,2,3}` always contains a good value:

* `cross (E t) a_k = t · cross b_l a_k`, nonzero for every `t ≠ 0`;
* `cross (E t) b_l = − cross a_k b_l`, a nonzero constant;
* for each remaining ray `r ≠ 0`, `t ↦ cross (E t) r` is a **nonzero affine**
  function of `t`, so it kills at most one value.

Two rays kill at most one `t` each, so three candidates always suffice.

Nothing here is an axiom and nothing here proves `f(7,7) = 38`.
-/

namespace Heptagon
namespace R3Construct

open Heptagon.SignExp

/-- The scalar cross product of two plane vectors. -/
def cross (u v : ℝ × ℝ) : ℝ := u.1 * v.2 - u.2 * v.1

/-- The candidate direction `E(t) = t·b_l − a_k`. -/
def Edir (ak bl : ℝ × ℝ) (t : ℝ) : ℝ × ℝ := (t * bl.1 - ak.1, t * bl.2 - ak.2)

theorem cross_Edir (ak bl r : ℝ × ℝ) (t : ℝ) :
    cross (Edir ak bl t) r = t * cross bl r - cross ak r := by
  simp only [cross, Edir]; ring

/-- Against `a_k` itself the value is `t · cross b_l a_k`: nonzero for `t ≠ 0`. -/
theorem cross_Edir_ak {ak bl : ℝ × ℝ} (h : cross ak bl ≠ 0) {t : ℝ} (ht : t ≠ 0) :
    cross (Edir ak bl t) ak ≠ 0 := by
  rw [cross_Edir]
  have h1 : cross ak ak = 0 := by simp [cross]; ring
  have h2 : cross bl ak = -cross ak bl := by simp [cross]; ring
  rw [h1, h2]
  simpa using mul_ne_zero ht (neg_ne_zero.mpr h)

/-- Against `b_l` the value is the nonzero constant `−cross a_k b_l`. -/
theorem cross_Edir_bl {ak bl : ℝ × ℝ} (h : cross ak bl ≠ 0) (t : ℝ) :
    cross (Edir ak bl t) bl ≠ 0 := by
  rw [cross_Edir]
  have h1 : cross bl bl = 0 := by simp [cross]; ring
  rw [h1]
  simpa using neg_ne_zero.mpr h

/-- **The affine step.**  For any ray `r` not parallel to *both* `a_k` and
`b_l`, the function `t ↦ cross (E t) r` is a nonzero affine function, so it
vanishes at no more than one `t`. -/
theorem eq_of_cross_Edir_eq_zero {ak bl r : ℝ × ℝ}
    (hr : cross bl r ≠ 0 ∨ cross ak r ≠ 0) {t₁ t₂ : ℝ}
    (h1 : cross (Edir ak bl t₁) r = 0) (h2 : cross (Edir ak bl t₂) r = 0) :
    t₁ = t₂ := by
  rw [cross_Edir] at h1 h2
  rcases hr with hb | ha
  · have : (t₁ - t₂) * cross bl r = 0 := by linarith
    rcases mul_eq_zero.mp this with h | h
    · linarith [sub_eq_zero.mp h]
    · exact absurd h hb
  · by_contra hne
    have hb : cross bl r = 0 := by
      have : (t₁ - t₂) * cross bl r = 0 := by linarith
      rcases mul_eq_zero.mp this with h | h
      · exact absurd (sub_eq_zero.mp h) hne
      · exact h
    rw [hb, mul_zero] at h1
    exact ha (by linarith)

/-- A ray parallel to neither is impossible when `cross a_k b_l ≠ 0`: if `r`
were parallel to both, `a_k` and `b_l` would be parallel to each other. -/
theorem not_both_parallel {ak bl r : ℝ × ℝ} (h : cross ak bl ≠ 0) (hr : r ≠ 0) :
    cross bl r ≠ 0 ∨ cross ak r ≠ 0 := by
  by_contra hcon
  push_neg at hcon
  obtain ⟨hb, ha⟩ := hcon
  apply h
  have hrne : r.1 ≠ 0 ∨ r.2 ≠ 0 := by
    by_contra hz; push_neg at hz; exact hr (Prod.ext hz.1 hz.2)
  simp only [cross] at hb ha ⊢
  -- both `a_k` and `b_l` are parallel to `r`, so each coordinate of `r`
  -- annihilates `cross a_k b_l`
  have e1 : r.1 * (ak.1 * bl.2 - ak.2 * bl.1) = 0 := by
    linear_combination bl.1 * ha - ak.1 * hb
  have e2 : r.2 * (ak.1 * bl.2 - ak.2 * bl.1) = 0 := by
    linear_combination bl.2 * ha - ak.2 * hb
  rcases hrne with h1 | h1
  · exact (mul_eq_zero.mp e1).resolve_left h1
  · exact (mul_eq_zero.mp e2).resolve_left h1

/-- **Theorem C⁺, combinatorial core.**  Three candidates always contain a
direction not parallel to any of the four rays. -/
theorem exists_good_t {ak bl r s : ℝ × ℝ}
    (h : cross ak bl ≠ 0) (hr : r ≠ 0) (hs : s ≠ 0) :
    ∃ t : ℝ, (t = 1 ∨ t = 2 ∨ t = 3) ∧
      cross (Edir ak bl t) ak ≠ 0 ∧ cross (Edir ak bl t) bl ≠ 0 ∧
      cross (Edir ak bl t) r ≠ 0 ∧ cross (Edir ak bl t) s ≠ 0 := by
  have hrp := not_both_parallel h hr
  have hsp := not_both_parallel h hs
  -- `r` and `s` each kill at most one candidate, so one of 1, 2, 3 survives
  by_cases c1r : cross (Edir ak bl 1) r = 0 <;>
  by_cases c1s : cross (Edir ak bl 1) s = 0 <;>
  by_cases c2r : cross (Edir ak bl 2) r = 0 <;>
  by_cases c2s : cross (Edir ak bl 2) s = 0 <;>
  by_cases c3r : cross (Edir ak bl 3) r = 0 <;>
  by_cases c3s : cross (Edir ak bl 3) s = 0 <;>
  first
    | (exact ⟨1, Or.inl rfl, cross_Edir_ak h one_ne_zero, cross_Edir_bl h 1, c1r, c1s⟩)
    | (exact ⟨2, Or.inr (Or.inl rfl), cross_Edir_ak h two_ne_zero, cross_Edir_bl h 2, c2r, c2s⟩)
    | (exact ⟨3, Or.inr (Or.inr rfl), cross_Edir_ak h (by norm_num), cross_Edir_bl h 3, c3r, c3s⟩)
    | (exact absurd (eq_of_cross_Edir_eq_zero hrp c1r c2r) (by norm_num))
    | (exact absurd (eq_of_cross_Edir_eq_zero hrp c1r c3r) (by norm_num))
    | (exact absurd (eq_of_cross_Edir_eq_zero hrp c2r c3r) (by norm_num))
    | (exact absurd (eq_of_cross_Edir_eq_zero hsp c1s c2s) (by norm_num))
    | (exact absurd (eq_of_cross_Edir_eq_zero hsp c1s c3s) (by norm_num))
    | (exact absurd (eq_of_cross_Edir_eq_zero hsp c2s c3s) (by norm_num))

#print axioms exists_good_t
#print axioms eq_of_cross_Edir_eq_zero
#print axioms not_both_parallel

end R3Construct
end Heptagon
