import PointSetSemantics
set_option autoImplicit false

/-! A common interior point forces proper crossing when neither segment contains
an endpoint of the other. Collinear overlap is excluded by reducing to scalar
parameters along one supporting line. -/

namespace Heptagon.CollinearSegment
open Heptagon.PointSetSemantics

/-- A vector with zero cross product with a nonzero vector is its scalar multiple. -/
theorem exists_smul_of_cross_zero {u v : ℝ × ℝ} (hu : u ≠ 0)
    (h : u.1 * v.2 - u.2 * v.1 = 0) : ∃ γ : ℝ, v = γ • u := by
  by_cases h1 : u.1 = 0
  · have h2 : u.2 ≠ 0 := by
      intro h2
      apply hu
      exact Prod.ext h1 h2
    refine ⟨v.2 / u.2, ?_⟩
    apply Prod.ext <;> simp only [Prod.smul_fst, Prod.smul_snd, smul_eq_mul]
    · simp only [h1, mul_zero, zero_mul, zero_sub] at h ⊢
      exact (mul_eq_zero.mp (neg_eq_zero.mp h)).resolve_left h2
    · field_simp
  · refine ⟨v.1 / u.1, ?_⟩
    apply Prod.ext <;> simp only [Prod.smul_fst, Prod.smul_snd, smul_eq_mul]
    · field_simp
    · field_simp
      nlinarith [h]

/-- The affine parameter of a point on a nondegenerate segment lies in `[0,1]`. -/
theorem mem_segment_param_iff {a b : ℝ × ℝ} (hab : a ≠ b) (γ : ℝ) :
    a + γ • (b - a) ∈ segment ℝ a b ↔ 0 ≤ γ ∧ γ ≤ 1 := by
  have hu : b - a ≠ 0 := sub_ne_zero.mpr (Ne.symm hab)
  rw [segment_eq_image']
  constructor
  · rintro ⟨t, ht, he⟩
    have : t = γ := smul_left_injective ℝ hu (add_left_cancel he)
    simpa [this] using ht
  · intro h
    exact ⟨γ, h, rfl⟩

/-- Collinearity at one endpoint would force an excluded endpoint contact. -/
theorem det_ne_zero_of_openSegment_common (a b c d x : ℝ × ℝ)
    (hx : x ∈ openSegment ℝ a b) (hy : x ∈ openSegment ℝ c d)
    (h₁ : a ∉ segment ℝ c d) (h₃ : c ∉ segment ℝ a b)
    (h₄ : d ∉ segment ℝ a b) : det a b c ≠ 0 := by
  have hx' := openSegment_subset_segment ℝ a b hx
  have hy' := openSegment_subset_segment ℝ c d hy
  have hab : a ≠ b := by
    rintro rfl
    have : x = a := by simpa only [openSegment_same, Set.mem_singleton_iff] using hx
    exact h₁ (this ▸ hy')
  have hu : b - a ≠ 0 := sub_ne_zero.mpr (Ne.symm hab)
  intro hc
  rw [openSegment_eq_image] at hy
  obtain ⟨t, ht, hxt⟩ := hy
  have hd : det a b d = 0 := by
    have hz := det_zero_of_mem a b x hx'
    rw [← hxt, det_mix, hc] at hz
    exact (mul_eq_zero.mp (by simpa using hz)).resolve_left (ne_of_gt ht.1)
  obtain ⟨γ, hγ⟩ := exists_smul_of_cross_zero (v := c - a) hu hc
  obtain ⟨δ, hδ⟩ := exists_smul_of_cross_zero (v := d - a) hu hd
  have hc' : c = a + γ • (b - a) := by rw [← hγ]; abel
  have hd' : d = a + δ • (b - a) := by rw [← hδ]; abel
  have hg : ¬ (0 ≤ γ ∧ γ ≤ 1) := by
    intro h
    exact h₃ (hc'.symm ▸ (mem_segment_param_iff hab γ).mpr h)
  have hdout : ¬ (0 ≤ δ ∧ δ ≤ 1) := by
    intro h
    exact h₄ (hd'.symm ▸ (mem_segment_param_iff hab δ).mpr h)
  rw [openSegment_eq_image'] at hx
  obtain ⟨σ, hs, hxs⟩ := hx
  have hm : σ = (1-t)*γ + t*δ := by
    apply smul_left_injective ℝ hu
    apply add_left_cancel (a := a)
    calc
      a + σ • (b-a) = x := hxs
      _ = (1-t) • c + t • d := hxt.symm
      _ = a + ((1-t)*γ + t*δ) • (b-a) := by rw [hc', hd']; module
  have hop : γ * δ < 0 := by
    have hgcases : γ < 0 ∨ 1 < γ := by
      rcases lt_or_ge γ 0 with h | h
      · exact Or.inl h
      · exact Or.inr (lt_of_not_ge (fun hh => hg ⟨h, hh⟩))
    have hdcases : δ < 0 ∨ 1 < δ := by
      rcases lt_or_ge δ 0 with h | h
      · exact Or.inl h
      · exact Or.inr (lt_of_not_ge (fun hh => hdout ⟨h, hh⟩))
    rcases hgcases with hg | hg <;> rcases hdcases with hd | hd
    · nlinarith only [hm, hs.1, mul_neg_of_pos_of_neg (sub_pos.mpr ht.2) hg, mul_neg_of_pos_of_neg ht.1 hd]
    · exact mul_neg_of_neg_of_pos hg (by linarith)
    · exact mul_neg_of_pos_of_neg (by linarith) hd
    · nlinarith only [hm, hs.2, mul_pos (sub_pos.mpr ht.2) (sub_pos.mpr hg), mul_pos ht.1 (sub_pos.mpr hd)]
  obtain ⟨hne, h0, h1⟩ := root_parameter γ δ hop
  apply h₁
  rw [segment_eq_image]
  refine ⟨γ / (γ-δ), ⟨h0, h1⟩, ?_⟩
  have hz : (1-γ/(γ-δ))*γ + (γ/(γ-δ))*δ = 0 := by field_simp; ring
  calc
    (1-γ/(γ-δ)) • c + (γ/(γ-δ)) • d =
        a + ((1-γ/(γ-δ))*γ + (γ/(γ-δ))*δ) • (b-a) := by rw [hc', hd']; module
    _ = a := by rw [hz, zero_smul, add_zero]

/-- Interior intersection without endpoint contacts is a proper crossing. -/
theorem properCross_of_openSegment_common (a b c d x : ℝ × ℝ)
    (hx : x ∈ openSegment ℝ a b) (hy : x ∈ openSegment ℝ c d)
    (h₁ : a ∉ segment ℝ c d) (h₂ : b ∉ segment ℝ c d)
    (h₃ : c ∉ segment ℝ a b) (h₄ : d ∉ segment ℝ a b) :
    det a b c * det a b d < 0 ∧ det c d a * det c d b < 0 := by
  have hyrev : x ∈ openSegment ℝ d c := by rwa [openSegment_symm]
  have hxrev : x ∈ openSegment ℝ b a := by rwa [openSegment_symm]
  exact straddle_of_common a b c d x
    (det_ne_zero_of_openSegment_common a b c d x hx hy h₁ h₃ h₄)
    (det_ne_zero_of_openSegment_common a b d c x hx hyrev
      (by rwa [segment_symm]) h₄ h₃)
    (det_ne_zero_of_openSegment_common c d a b x hy hx h₃ h₁ h₂)
    (det_ne_zero_of_openSegment_common c d b a x hy hxrev
      (by rwa [segment_symm]) h₂ h₁)
    (openSegment_subset_segment ℝ a b hx) (openSegment_subset_segment ℝ c d hy)

end Heptagon.CollinearSegment

#print axioms Heptagon.CollinearSegment.exists_smul_of_cross_zero
#print axioms Heptagon.CollinearSegment.mem_segment_param_iff
#print axioms Heptagon.CollinearSegment.det_ne_zero_of_openSegment_common
#print axioms Heptagon.CollinearSegment.properCross_of_openSegment_common
