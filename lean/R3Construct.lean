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

/-! ## The four-ray statement

At a real coincidence the rays are the edge directions `a₁, a₂` of `P` and
`b₁, b₂` of `Q`.  The geometric input is that the apex is a genuine vertex of
one polygon — `cross a₁ a₂ ≠ 0` — and then a usable pair exists for free:
`not_both_parallel` with the roles swapped already says so. -/

/-- Some `a_k` is non-parallel to `b₁`, as soon as `P`'s corner is genuine. -/
theorem exists_pair {a₁ a₂ b₁ : ℝ × ℝ} (ha : cross a₁ a₂ ≠ 0) (hb : b₁ ≠ 0) :
    cross a₂ b₁ ≠ 0 ∨ cross a₁ b₁ ≠ 0 :=
  not_both_parallel ha hb

/-- **Theorem C⁺, four-ray form.**  If the apex is a genuine vertex of `P` and
`Q`'s two rays are nonzero, there is a direction parallel to **none** of the
four — the clause certificate K7 showed is needed, and the one
`independent/e9_directions` had been asserting without proof. -/
theorem exists_good_direction {a₁ a₂ b₁ b₂ : ℝ × ℝ}
    (ha : cross a₁ a₂ ≠ 0) (hb₁ : b₁ ≠ 0) (hb₂ : b₂ ≠ 0) (ha₁ : a₁ ≠ 0) (ha₂ : a₂ ≠ 0) :
    ∃ E : ℝ × ℝ, cross E a₁ ≠ 0 ∧ cross E a₂ ≠ 0 ∧
      cross E b₁ ≠ 0 ∧ cross E b₂ ≠ 0 := by
  rcases exists_pair ha hb₁ with hk | hk
  · obtain ⟨t, _, h1, h2, h3, h4⟩ := exists_good_t hk ha₁ hb₂
    exact ⟨Edir a₂ b₁ t, h3, h1, h2, h4⟩
  · obtain ⟨t, _, h1, h2, h3, h4⟩ := exists_good_t hk ha₂ hb₂
    exact ⟨Edir a₁ b₁ t, h1, h3, h2, h4⟩

/-! ## Why the four-ray clause is the right one

Certificate K7 moves the apex along a direction **parallel to a `Q`-ray**, and
the apex then slides along that very side — a vertex-side degeneracy created
out of nothing, while every other requirement is met and the configuration
stays finite.  The lemma below is the exact reason, and its contrapositive is
what `exists_good_direction` buys: a direction non-parallel to a ray can never
put the moved apex onto that ray's side. -/

/-- If `E` is not parallel to `b`, the moved apex never lands on the segment
from the origin to `b`, for any nonzero displacement. -/
theorem apex_not_mem_segment {E b : ℝ × ℝ} (h : cross E b ≠ 0) {ε : ℝ} (hε : ε ≠ 0) :
    (ε * E.1, ε * E.2) ∉ segment ℝ (0 : ℝ × ℝ) b := by
  intro hmem
  rw [segment_eq_image'] at hmem
  obtain ⟨s, _, hs⟩ := hmem
  apply h
  have h1 : ε * E.1 = s * b.1 := by
    have := congrArg Prod.fst hs; simpa using this.symm
  have h2 : ε * E.2 = s * b.2 := by
    have := congrArg Prod.snd hs; simpa using this.symm
  have : ε * cross E b = 0 := by
    simp only [cross]
    linear_combination b.2 * h1 - b.1 * h2
  exact (mul_eq_zero.mp this).resolve_left hε

#print axioms apex_not_mem_segment

#print axioms exists_good_direction

end R3Construct
end Heptagon
