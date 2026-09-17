import AKR9

/-!
# Local results toward AKR Section 9

The endpoint/interior decomposition is exact. The local coincidence lemma
constructs a direction and tolerates arbitrary linear motion of the remote
endpoints. Neither global count-preserving reduction is proved here.
-/

set_option autoImplicit false

namespace Heptagon.AKR9Reduction

open Heptagon.AKR9 Heptagon.ResidualSym Heptagon.PointSetSemantics

/-- E9a: vertices belonging to different polygons are distinct. -/
def NoCoincidentVertices (R : Pair9) : Prop :=
  ∀ i j : Fin 7, R.V (pP i) ≠ R.V (pQ j)

/-- E9b: no vertex is in an open side of the other polygon. -/
def NoVertexInOpenSide (R : Pair9) : Prop :=
  (∀ i j : Fin 7, R.V (pP i) ∉ openSegment ℝ (R.V (pQ j)) (R.V (pQ (j+1)))) ∧
  (∀ i j : Fin 7, R.V (pQ j) ∉ openSegment ℝ (R.V (pP i)) (R.V (pP (i+1))))

/-- Closed-side avoidance is exactly the conjunction of E9a and E9b. -/
theorem noVertexOnOther_iff (R : Pair9) :
    NoVertexOnOther R ↔ NoCoincidentVertices R ∧ NoVertexInOpenSide R := by
  constructor
  · intro h
    refine ⟨?_, ?_, ?_⟩
    · intro i j he
      exact h.1 i j (he ▸ left_mem_segment ℝ _ _)
    · intro i j hx
      exact h.1 i j (openSegment_subset_segment ℝ _ _ hx)
    · intro i j hx
      exact h.2 i j (openSegment_subset_segment ℝ _ _ hx)
  · rintro ⟨ha, hb⟩
    constructor
    · intro i j hx
      rw [← insert_endpoints_openSegment] at hx
      rcases hx with h | h | h
      · exact ha i j h
      · exact ha i (j+1) h
      · exact hb.1 i j h
    · intro i j hx
      rw [← insert_endpoints_openSegment] at hx
      rcases hx with h | h | h
      · exact ha i j h.symm
      · exact ha (i+1) j h.symm
      · exact hb.2 i j h
#print axioms noVertexOnOther_iff

/-- At a coincidence placed at the origin, two nonparallel incident directions
`a,b` allow the displacement `t • (b-a)` of the first apex. A proper crossing
appears for every sufficiently small positive `t`, even when the two remote
endpoints have arbitrary prescribed linear velocities `u,w`. The second apex
stays fixed. This is a local statement about two sides, not entire polygons. -/
theorem coincidence_crossing_linear (a b u w : ℝ × ℝ)
    (hab : det 0 a b ≠ 0) :
    ∃ δ : ℝ, 0 < δ ∧ ∀ t : ℝ, 0 < t → t < δ →
      det (t • (b-a)) (a+t • u) 0 *
        det (t • (b-a)) (a+t • u) (b+t • w) < 0 ∧
      det 0 (b+t • w) (t • (b-a)) *
        det 0 (b+t • w) (a+t • u) < 0 := by
  let f : ℝ → ℝ := fun t =>
    (-det 0 a b - t * det 0 u (b-a)) *
      det (t • (b-a)) (a+t • u) (b+t • w)
  let g : ℝ → ℝ := fun t =>
    (det 0 a b + t * det 0 w (b-a)) * det 0 (b+t • w) (a+t • u)
  have hf : Continuous f := by dsimp [f, det]; fun_prop
  have hg : Continuous g := by dsimp [g, det]; fun_prop
  have h0 : 0 ∈ {t : ℝ | f t < 0 ∧ g t < 0} := by
    have hs := sq_pos_of_ne_zero hab
    have hab' : det 0 b a = -det 0 a b := by simp [det]; ring
    dsimp [f, g]
    simp only [zero_smul, zero_mul, add_zero, sub_zero]
    rw [hab']
    constructor <;> nlinarith
  have hopen : IsOpen {t : ℝ | f t < 0 ∧ g t < 0} :=
    (isOpen_lt hf continuous_const).inter (isOpen_lt hg continuous_const)
  obtain ⟨δ, hd, hδ⟩ := Metric.isOpen_iff.mp hopen 0 h0
  refine ⟨δ, hd, ?_⟩
  intro t ht htδ
  have hm := hδ (show t ∈ Metric.ball 0 δ by
    simpa [Metric.mem_ball, Real.dist_eq, abs_of_pos ht] using htδ)
  have he1 : det (t • (b-a)) (a+t • u) 0 *
      det (t • (b-a)) (a+t • u) (b+t • w) = t * f t := by
    dsimp [f, det]
    ring
  have he2 : det 0 (b+t • w) (t • (b-a)) *
      det 0 (b+t • w) (a+t • u) = t * g t := by
    dsimp [g, det]
    ring
  rw [he1, he2]
  exact ⟨mul_neg_of_pos_of_neg ht hm.1, mul_neg_of_pos_of_neg ht hm.2⟩
#print axioms coincidence_crossing_linear

/-- Proper crossing of the side from the origin to `a` with a horizontal side
whose endpoints are `(-1,h)` and `(1,h)`. -/
def HorizontalCross (a : ℝ × ℝ) (h : ℝ) : Prop :=
  det (-1,h) (1,h) 0 * det (-1,h) (1,h) a < 0 ∧
    det 0 a (-1,h) * det 0 a (1,h) < 0

/-- Local E9b: shifting a horizontal side near an interior contact crosses an
incident ray exactly when the shift and the ray have the same vertical sign.
The ray is required to be transverse, and the shifted side has finite length. -/
theorem horizontalCross_iff_small (a : ℝ × ℝ) (ha : a.2 ≠ 0) :
    ∃ δ : ℝ, 0 < δ ∧ ∀ h : ℝ, |h| < δ →
      (HorizontalCross a h ↔ 0 < h * a.2) := by
  let f : ℝ → ℝ := fun h => a.2 * (a.2-h)
  let g : ℝ → ℝ := fun h => (a.1*h+a.2) * (a.1*h-a.2)
  have hf : Continuous f := by dsimp [f]; fun_prop
  have hg : Continuous g := by dsimp [g]; fun_prop
  have h0 : 0 ∈ {h : ℝ | 0 < f h ∧ g h < 0} := by
    have hs := sq_pos_of_ne_zero ha
    dsimp [f, g]
    constructor <;> nlinarith
  have hopen : IsOpen {h : ℝ | 0 < f h ∧ g h < 0} :=
    (isOpen_lt continuous_const hf).inter (isOpen_lt hg continuous_const)
  obtain ⟨δ, hd, hδ⟩ := Metric.isOpen_iff.mp hopen 0 h0
  refine ⟨δ, hd, ?_⟩
  intro h hh
  have hm := hδ (show h ∈ Metric.ball 0 δ by
    simpa [Metric.mem_ball, Real.dist_eq] using hh)
  have he1 : det (-1,h) (1,h) 0 * det (-1,h) (1,h) a =
      -4 * (h * (a.2-h)) := by dsimp [det]; ring
  have he2 : det 0 a (-1,h) * det 0 a (1,h) = g h := by
    dsimp [g, det]; ring
  unfold HorizontalCross
  rw [he1, he2]
  simp only [hm.2, and_true]
  have hs : -4 * (h * (a.2-h)) < 0 ↔ 0 < h * (a.2-h) := by
    constructor <;> intro hh <;> linarith
  rw [hs]
  rcases mul_pos_iff.mp hm.1 with ⟨hy, hyt⟩ | ⟨hy, hyt⟩
  · rw [mul_pos_iff_of_pos_right hyt, mul_pos_iff_of_pos_right hy]
  · simp only [mul_pos_iff, not_lt_of_gt hy, not_lt_of_gt hyt, hy, hyt,
      and_false, false_or, and_true]
#print axioms horizontalCross_iff_small

end Heptagon.AKR9Reduction
