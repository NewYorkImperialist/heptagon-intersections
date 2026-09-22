import SimplicityStable
import CollinearSegment

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

open Heptagon.SimplicityStable Heptagon.PointSetSemantics Heptagon.CollinearSegment

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

/-- `sdet` is `PointSetSemantics.det`, definitionally. -/
theorem sdet_eq_det (a b c : ℝ × ℝ) : sdet a b c = det a b c := rfl

/-! ## (Sign-exp), second half: disjointness of two segments

Two closed segments meet iff they cross properly **or** an endpoint of one lies
on the other.  Every disjunct is a sign condition: the first by definition, the
other four by `mem_segment_iff_sign`.  Hence `Disjoint` is a Boolean function of
the witness sign vector, which is what `UniformEps.bootstrap` needs. -/
theorem inter_nonempty_iff (a b c d : ℝ × ℝ) :
    (∃ x, x ∈ segment ℝ a b ∧ x ∈ segment ℝ c d) ↔
      (det a b c * det a b d < 0 ∧ det c d a * det c d b < 0) ∨
      a ∈ segment ℝ c d ∨ b ∈ segment ℝ c d ∨
      c ∈ segment ℝ a b ∨ d ∈ segment ℝ a b := by
  constructor
  · rintro ⟨x, hx1, hx2⟩
    by_cases ha : a ∈ segment ℝ c d
    · exact Or.inr (Or.inl ha)
    by_cases hb : b ∈ segment ℝ c d
    · exact Or.inr (Or.inr (Or.inl hb))
    by_cases hc : c ∈ segment ℝ a b
    · exact Or.inr (Or.inr (Or.inr (Or.inl hc)))
    by_cases hd : d ∈ segment ℝ a b
    · exact Or.inr (Or.inr (Or.inr (Or.inr hd)))
    have hxa : x ≠ a := fun h => ha (by rw [← h]; exact hx2)
    have hxb : x ≠ b := fun h => hb (by rw [← h]; exact hx2)
    have hxc : x ≠ c := fun h => hc (by rw [← h]; exact hx1)
    have hxd : x ≠ d := fun h => hd (by rw [← h]; exact hx1)
    have ho1 : x ∈ openSegment ℝ a b := by
      rw [← insert_endpoints_openSegment] at hx1
      simp only [Set.mem_insert_iff] at hx1
      rcases hx1 with h | h | h
      · exact absurd h hxa
      · exact absurd h hxb
      · exact h
    have ho2 : x ∈ openSegment ℝ c d := by
      rw [← insert_endpoints_openSegment] at hx2
      simp only [Set.mem_insert_iff] at hx2
      rcases hx2 with h | h | h
      · exact absurd h hxc
      · exact absurd h hxd
      · exact h
    exact Or.inl (properCross_of_openSegment_common a b c d x ho1 ho2 ha hb hc hd)
  · rintro (h | h | h | h | h)
    · exact common_of_straddle a b c d h
    · exact ⟨a, left_mem_segment ℝ a b, h⟩
    · exact ⟨b, right_mem_segment ℝ a b, h⟩
    · exact ⟨c, h, left_mem_segment ℝ c d⟩
    · exact ⟨d, h, right_mem_segment ℝ c d⟩

/-- **(Sign-exp), disjointness half.**  Disjointness of two closed segments is
a Boolean function of the signs of `det` and `sdot` values. -/
theorem disjoint_iff_sign (a b c d : ℝ × ℝ) :
    Disjoint (segment ℝ a b) (segment ℝ c d) ↔
      ¬((det a b c * det a b d < 0 ∧ det c d a * det c d b < 0) ∨
        (sdet c d a = 0 ∧ sdot c d a ≤ 0) ∨ (sdet c d b = 0 ∧ sdot c d b ≤ 0) ∨
        (sdet a b c = 0 ∧ sdot a b c ≤ 0) ∨ (sdet a b d = 0 ∧ sdot a b d ≤ 0)) := by
  rw [Set.disjoint_left]
  constructor
  · intro hdis hcon
    obtain ⟨x, hx1, hx2⟩ := (inter_nonempty_iff a b c d).mpr
      (by rcases hcon with h | h | h | h | h
          · exact Or.inl h
          · exact Or.inr (Or.inl ((mem_segment_iff_sign c d a).mpr h))
          · exact Or.inr (Or.inr (Or.inl ((mem_segment_iff_sign c d b).mpr h)))
          · exact Or.inr (Or.inr (Or.inr (Or.inl ((mem_segment_iff_sign a b c).mpr h))))
          · exact Or.inr (Or.inr (Or.inr (Or.inr ((mem_segment_iff_sign a b d).mpr h)))))
    exact hdis hx1 hx2
  · intro hno x hx1 hx2
    refine hno ?_
    rcases (inter_nonempty_iff a b c d).mp ⟨x, hx1, hx2⟩ with h | h | h | h | h
    · exact Or.inl h
    · exact Or.inr (Or.inl ((mem_segment_iff_sign c d a).mp h))
    · exact Or.inr (Or.inr (Or.inl ((mem_segment_iff_sign c d b).mp h)))
    · exact Or.inr (Or.inr (Or.inr (Or.inl ((mem_segment_iff_sign a b c).mp h))))
    · exact Or.inr (Or.inr (Or.inr (Or.inr ((mem_segment_iff_sign a b d).mp h))))

/-! ## (Sign-exp) itself

Combining the two halves through `SimplicityStable.simpleClosed_iff`. -/

/-- The sign condition at one corner. -/
def CornerSign (W : Fin 7 → ℝ × ℝ) (i : Fin 7) : Prop :=
  W i ≠ W (i + 1) ∧ W (i + 1 + 1) ≠ W (i + 1) ∧
    ¬(cdet (W i) (W (i + 1)) (W (i + 1 + 1)) = 0 ∧
      0 < cdot (W i) (W (i + 1)) (W (i + 1 + 1)))

/-- The sign condition making two sides disjoint. -/
def SideDisjSign (W : Fin 7 → ℝ × ℝ) (i j : Fin 7) : Prop :=
  ¬((det (W i) (W (i + 1)) (W j) * det (W i) (W (i + 1)) (W (j + 1)) < 0 ∧
     det (W j) (W (j + 1)) (W i) * det (W j) (W (j + 1)) (W (i + 1)) < 0) ∨
    (sdet (W j) (W (j + 1)) (W i) = 0 ∧ sdot (W j) (W (j + 1)) (W i) ≤ 0) ∨
    (sdet (W j) (W (j + 1)) (W (i + 1)) = 0 ∧ sdot (W j) (W (j + 1)) (W (i + 1)) ≤ 0) ∨
    (sdet (W i) (W (i + 1)) (W j) = 0 ∧ sdot (W i) (W (i + 1)) (W j) ≤ 0) ∨
    (sdet (W i) (W (i + 1)) (W (j + 1)) = 0 ∧ sdot (W i) (W (i + 1)) (W (j + 1)) ≤ 0))

/-- **(Sign-exp).**  `SimpleClosed` is a Boolean combination of conditions on
the signs of `det`, `cdet`, `sdet`, `cdot` and `sdot` values — all of them
polynomials of degree `≤ 2` in the vertex coordinates, hence degree `≤ 2` in
the motion parameter under an affine motion. This is hypothesis 10 of
`docs/akr-9-assembly.md` §3. -/
theorem simpleClosed_iff_sign (W : Fin 7 → ℝ × ℝ) :
    SimpleClosed W ↔
      (∀ i : Fin 7, CornerSign W i) ∧
      (∀ i j : Fin 7, ¬ Adj i j → SideDisjSign W i j) := by
  rw [simpleClosed_iff]
  constructor
  · rintro ⟨hc, hd⟩
    refine ⟨fun i => ?_, fun i j hij => ?_⟩
    · obtain ⟨h1, h2, h3⟩ := (cornerVec_ne_zero_iff_sign _ _ _).mp (hc i)
      exact ⟨h1, h2, h3⟩
    · exact (disjoint_iff_sign _ _ _ _).mp (hd i j hij)
  · rintro ⟨hc, hd⟩
    refine ⟨fun i => ?_, fun i j hij => ?_⟩
    · obtain ⟨h1, h2, h3⟩ := hc i
      exact (cornerVec_ne_zero_iff_sign _ _ _).mpr ⟨h1, h2, h3⟩
    · exact (disjoint_iff_sign _ _ _ _).mpr (hd i j hij)

#print axioms simpleClosed_iff_sign

#print axioms inter_nonempty_iff
#print axioms disjoint_iff_sign
#print axioms mem_segment_iff_sign

#print axioms cornerVec_eq_zero_iff
#print axioms cornerVec_ne_zero_iff_sign

end SignExp
end Heptagon
