import SimplicityStable

/-!
# (Sign-exp): the corner condition is a sign condition

`docs/akr-9-assembly.md` §3 lists **hypothesis 10 (Sign-exp)** as the small
residue of the §9 reduction: `SimpleClosed` must be a Boolean function of the
*sign vector* of the witness family, so that `UniformEps.bootstrap` can lift
simplicity from "for all sufficiently small `α`" to "on all of `(0, ε₀)`".

`SimplicityStable.simpleClosed_iff` splits `SimpleClosed` into two halves:

* every corner has `cornerVec ≠ 0`;
* non-adjacent sides are disjoint.

This file discharges the **first** half. `cornerVec` is built from norms, so it
is not itself polynomial; the content here is that its vanishing is equivalent
to a condition on the signs of a determinant and a dot product, both of which
*are* polynomial in the coordinates and therefore degree-`≤ 2` in the motion
parameter.

The second half (disjointness of non-adjacent sides) is **not** done here.

Nothing here is an axiom and nothing here proves `f(7,7) = 38`.
-/

namespace Heptagon
namespace SignExp

open Heptagon.SimplicityStable

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- `cornerVec` vanishes exactly at a degenerate edge or a *spur*: the two edge
vectors being positive multiples of one another. Norm-free on the right. -/
theorem cornerVec_eq_zero_iff {a b c : E} :
    cornerVec a b c = 0 ↔
      a = b ∨ c = b ∨ ∃ t : ℝ, 0 < t ∧ a - b = t • (c - b) := by
  constructor
  · intro h
    by_cases hu : a - b = 0
    · exact Or.inl (sub_eq_zero.mp hu)
    by_cases hv : c - b = 0
    · exact Or.inr (Or.inl (sub_eq_zero.mp hv))
    refine Or.inr (Or.inr ⟨‖a - b‖ / ‖c - b‖,
      div_pos (norm_pos_iff.mpr hu) (norm_pos_iff.mpr hv), ?_⟩)
    have hvn : ‖c - b‖ ≠ 0 := norm_ne_zero_iff.mpr hv
    rw [cornerVec, sub_eq_zero] at h
    have := congrArg (fun x => (‖c - b‖)⁻¹ • x) h
    simpa [smul_smul, inv_mul_cancel₀ hvn, div_eq_inv_mul, mul_comm] using this
  · rintro (h | h | ⟨t, ht, h⟩)
    · subst h; simp [cornerVec]
    · subst h; simp [cornerVec]
    · rw [cornerVec, h, norm_smul, Real.norm_eq_abs, abs_of_pos ht, smul_smul,
        mul_comm]
      simp

/-! ## The ℝ² specialisation: a determinant and a dot product -/

/-- The determinant of the two edge vectors at the corner `a — b — c`. -/
def cdet (a b c : ℝ × ℝ) : ℝ := (a.1 - b.1) * (c.2 - b.2) - (a.2 - b.2) * (c.1 - b.1)

/-- Their dot product. -/
def cdot (a b c : ℝ × ℝ) : ℝ := (a.1 - b.1) * (c.1 - b.1) + (a.2 - b.2) * (c.2 - b.2)

theorem normsq_pos {v : ℝ × ℝ} (hv : v ≠ 0) : 0 < v.1 * v.1 + v.2 * v.2 := by
  rcases eq_or_ne v.1 0 with h1 | h1
  · have h2 : v.2 ≠ 0 := fun h2 => hv (Prod.ext h1 h2)
    have := mul_self_pos.mpr h2
    nlinarith [mul_self_nonneg v.1]
  · have := mul_self_pos.mpr h1
    nlinarith [mul_self_nonneg v.2]

theorem exists_pos_smul_iff {u v : ℝ × ℝ} (hv : v ≠ 0) :
    (∃ t : ℝ, 0 < t ∧ u = t • v) ↔
      (u.1 * v.2 - u.2 * v.1 = 0 ∧ 0 < u.1 * v.1 + u.2 * v.2) := by
  have hD : 0 < v.1 * v.1 + v.2 * v.2 := normsq_pos hv
  constructor
  · rintro ⟨t, ht, rfl⟩
    simp only [Prod.smul_fst, Prod.smul_snd, smul_eq_mul]
    constructor
    · ring
    · have : t * v.1 * v.1 + t * v.2 * v.2 = t * (v.1 * v.1 + v.2 * v.2) := by ring
      rw [this]; positivity
  · rintro ⟨hcross, hdot⟩
    have hD' : v.1 * v.1 + v.2 * v.2 ≠ 0 := ne_of_gt hD
    refine ⟨(u.1 * v.1 + u.2 * v.2) / (v.1 * v.1 + v.2 * v.2), div_pos hdot hD, ?_⟩
    apply Prod.ext
    · simp only [Prod.smul_fst, smul_eq_mul, div_mul_eq_mul_div, eq_div_iff hD']
      linear_combination v.2 * hcross
    · simp only [Prod.smul_snd, smul_eq_mul, div_mul_eq_mul_div, eq_div_iff hD']
      linear_combination (-v.1) * hcross

/-- **(Sign-exp), corner half.** The corner condition is a Boolean function of
the signs of two polynomials. -/
theorem cornerVec_ne_zero_iff_sign (a b c : ℝ × ℝ) :
    cornerVec a b c ≠ 0 ↔ a ≠ b ∧ c ≠ b ∧ ¬(cdet a b c = 0 ∧ 0 < cdot a b c) := by
  rw [Ne, cornerVec_eq_zero_iff]
  constructor
  · intro h
    refine ⟨fun hab => h (Or.inl hab), fun hcb => h (Or.inr (Or.inl hcb)), ?_⟩
    rintro ⟨hd, hp⟩
    have hv : c - b ≠ 0 := fun hv => h (Or.inr (Or.inl (sub_eq_zero.mp hv)))
    refine h (Or.inr (Or.inr ((exists_pos_smul_iff hv).mpr ⟨?_, ?_⟩)))
    · simp only [Prod.fst_sub, Prod.snd_sub]
      simp only [cdet] at hd; linarith
    · simp only [Prod.fst_sub, Prod.snd_sub]
      simp only [cdot] at hp; linarith
  · rintro ⟨hab, hcb, hspur⟩ (h | h | h)
    · exact hab h
    · exact hcb h
    · have hv : c - b ≠ 0 := sub_ne_zero.mpr hcb
      obtain ⟨hd, hp⟩ := (exists_pos_smul_iff hv).mp h
      refine hspur ⟨?_, ?_⟩
      · simp only [Prod.fst_sub, Prod.snd_sub] at hd
        simp only [cdet]; linarith
      · simp only [Prod.fst_sub, Prod.snd_sub] at hp
        simp only [cdot]; linarith

/-! ## Betweenness: membership of a closed segment is a sign condition

This is the primitive the *other* half of (Sign-exp) is built from, and it is
the reason `eps_uniform`'s witness family carries 1092 dot products alongside
the 364 determinants: an orientation determinant alone cannot distinguish a
point *on* a segment from a point on its extension. -/

/-- Orientation of `c` against the directed segment `a → b`. -/
def sdet (a b c : ℝ × ℝ) : ℝ := (b.1 - a.1) * (c.2 - a.2) - (b.2 - a.2) * (c.1 - a.1)

/-- `⟪c - a, c - b⟫`; non-positive exactly when `c` is between `a` and `b`. -/
def sdot (a b c : ℝ × ℝ) : ℝ := (c.1 - a.1) * (c.1 - b.1) + (c.2 - a.2) * (c.2 - b.2)

theorem mem_segment_iff_sign (a b c : ℝ × ℝ) :
    c ∈ segment ℝ a b ↔ sdet a b c = 0 ∧ sdot a b c ≤ 0 := by
  constructor
  · intro hc
    rw [segment_eq_image'] at hc
    obtain ⟨t, ht, rfl⟩ := hc
    have h1 : (a + t • (b - a)).1 - a.1 = t * (b.1 - a.1) := by simp
    have h2 : (a + t • (b - a)).2 - a.2 = t * (b.2 - a.2) := by simp
    have h3 : (a + t • (b - a)).1 - b.1 = (t - 1) * (b.1 - a.1) := by
      rw [show (a + t • (b - a)).1 - b.1
            = ((a + t • (b - a)).1 - a.1) - (b.1 - a.1) by ring, h1]; ring
    have h4 : (a + t • (b - a)).2 - b.2 = (t - 1) * (b.2 - a.2) := by
      rw [show (a + t • (b - a)).2 - b.2
            = ((a + t • (b - a)).2 - a.2) - (b.2 - a.2) by ring, h2]; ring
    refine ⟨by simp only [sdet, h1, h2]; ring, ?_⟩
    simp only [sdot, h1, h2, h3, h4]
    have : t * (b.1 - a.1) * ((t - 1) * (b.1 - a.1))
         + t * (b.2 - a.2) * ((t - 1) * (b.2 - a.2))
         = t * (t - 1) * ((b.1 - a.1) * (b.1 - a.1) + (b.2 - a.2) * (b.2 - a.2)) := by ring
    rw [this]
    have hnn : 0 ≤ (b.1 - a.1) * (b.1 - a.1) + (b.2 - a.2) * (b.2 - a.2) := by
      nlinarith [mul_self_nonneg (b.1 - a.1), mul_self_nonneg (b.2 - a.2)]
    have htt : t * (t - 1) ≤ 0 := by nlinarith [ht.1, ht.2]
    nlinarith [htt, hnn]
  · rintro ⟨hdet, hdot⟩
    rcases eq_or_ne b a with rfl | hba
    · have hc : c = b := by
        have : (c.1 - b.1) * (c.1 - b.1) + (c.2 - b.2) * (c.2 - b.2) ≤ 0 := by
          simpa [sdot] using hdot
        have h1 : c.1 = b.1 := by nlinarith [mul_self_nonneg (c.1 - b.1), mul_self_nonneg (c.2 - b.2)]
        have h2 : c.2 = b.2 := by nlinarith [mul_self_nonneg (c.1 - b.1), mul_self_nonneg (c.2 - b.2)]
        exact Prod.ext h1 h2
      simpa [hc] using left_mem_segment ℝ b b
    · have hD : 0 < (b.1 - a.1) * (b.1 - a.1) + (b.2 - a.2) * (b.2 - a.2) :=
        normsq_pos (sub_ne_zero.mpr hba)
      have hDne : (b.1 - a.1) * (b.1 - a.1) + (b.2 - a.2) * (b.2 - a.2) ≠ 0 := ne_of_gt hD
      set t : ℝ := ((c.1 - a.1) * (b.1 - a.1) + (c.2 - a.2) * (b.2 - a.2))
                    / ((b.1 - a.1) * (b.1 - a.1) + (b.2 - a.2) * (b.2 - a.2)) with hts
      have e1 : c.1 - a.1 = t * (b.1 - a.1) := by
        rw [hts, div_mul_eq_mul_div, eq_div_iff hDne]
        simp only [sdet] at hdet; linear_combination (-(b.2 - a.2)) * hdet
      have e2 : c.2 - a.2 = t * (b.2 - a.2) := by
        rw [hts, div_mul_eq_mul_div, eq_div_iff hDne]
        simp only [sdet] at hdet; linear_combination (b.1 - a.1) * hdet
      have hquad : t * (t - 1) * ((b.1 - a.1) * (b.1 - a.1) + (b.2 - a.2) * (b.2 - a.2)) ≤ 0 := by
        simp only [sdot] at hdot
        have g1 : c.1 - b.1 = (t - 1) * (b.1 - a.1) := by linarith [e1]
        have g2 : c.2 - b.2 = (t - 1) * (b.2 - a.2) := by linarith [e2]
        rw [e1, e2, g1, g2] at hdot; linarith [hdot, sq_nonneg (b.1 - a.1)]
      have ht : 0 ≤ t ∧ t ≤ 1 := by
        have hts0 : t * (t - 1) ≤ 0 := by
          by_contra hcon
          push_neg at hcon
          linarith [hquad, mul_pos hcon hD]
        constructor <;> nlinarith [hts0]
      rw [segment_eq_image']
      exact ⟨t, ⟨ht.1, ht.2⟩, Prod.ext (by simp; linarith [e1]) (by simp; linarith [e2])⟩

#print axioms mem_segment_iff_sign

#print axioms cornerVec_eq_zero_iff
#print axioms cornerVec_ne_zero_iff_sign

end SignExp
end Heptagon
