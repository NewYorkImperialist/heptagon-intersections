import PointSetSemantics
import CernyL2Derivation

/-!
Point-set simplicity of cyclic heptagons in the real plane. The capstone gives
exactly the side-intersection criterion for a simple closed polygonal curve:
distinct sides meet only at their shared cyclic endpoint. Thus this establishes
that the polygon is a simple closed curve in this polygonal, point-set sense.
It does NOT prove the Jordan curve theorem (separation of the plane into interior
and exterior). No topological parametrization or separation theorem is asserted.
-/

set_option autoImplicit false

namespace Heptagon.PolygonSimple
open Geometry DisjointnessGraph PointSetSemantics

/-- Non-adjacent closed sides have no common real point. -/
theorem nonadjacent_disjoint (V : Fin 7 → Pt) (hs : Simple7 V)
    (i j : Fin 7) (h : ¬ LowerBound.Adjacent i j) :
    Disjoint (segment ℝ (realPt (V i)) (realPt (V (i+1))))
      (segment ℝ (realPt (V j)) (realPt (V (j+1)))) := by
  have hi : i ≠ i+1 := by exact (by decide : ∀ k : Fin 7, k ≠ k+1) i
  have hj : j ≠ j+1 := by exact (by decide : ∀ k : Fin 7, k ≠ k+1) j
  have hij : i ≠ j ∧ i ≠ j+1 ∧ i+1 ≠ j ∧ i+1 ≠ j+1 := by
    revert i j; decide
  apply (not_properCross_iff_disjoint _ _ _ _
    (hs.2.1 i (i+1) j hi hij.2.2.1 hij.1)
    (hs.2.1 i (i+1) (j+1) hi hij.2.2.2 hij.2.1)
    (hs.2.1 j (j+1) i hj hij.2.1.symm hij.1.symm)
    (hs.2.1 j (j+1) (i+1) hj hij.2.2.2.symm hij.2.2.1.symm)).mp
  exact CernyL2Derivation.simple_sides_noncrossing V hs i j

/-- Two noncollinear segments with a shared endpoint meet exactly there. -/
theorem segment_inter_segment (a b c : ℝ × ℝ) (h : det a b c ≠ 0) :
    segment ℝ a b ∩ segment ℝ b c = {b} := by
  apply Set.ext
  intro x
  constructor
  · rintro ⟨hx, hy⟩
    have hz := det_zero_of_mem a b x hx
    rw [segment_eq_image] at hy
    obtain ⟨t, _, rfl⟩ := hy
    rw [det_mix] at hz
    have hb : det a b b = 0 := by unfold det; ring
    rw [hb] at hz
    have ht : t = 0 := (mul_eq_zero.mp (by simpa using hz)).resolve_right h
    simp [ht]
  · intro hx
    have hx' : x = b := Set.mem_singleton_iff.mp hx
    subst x
    exact ⟨right_mem_segment ℝ a b, left_mem_segment ℝ b c⟩

/-- Consecutive sides meet exactly at their shared vertex, including the wrap. -/
theorem adjacent_intersection (V : Fin 7 → Pt) (hs : Simple7 V) (i : Fin 7) :
    segment ℝ (realPt (V i)) (realPt (V (i+1))) ∩
      segment ℝ (realPt (V (i+1))) (realPt (V ((i+1)+1))) =
      {realPt (V (i+1))} := by
  apply segment_inter_segment
  rw [show (i+1)+1 = i+2 from (by decide : ∀ k : Fin 7, (k+1)+1 = k+2) i, det_realPt]
  exact_mod_cast hs.2.2.1 i

/-- Exact side-intersection criterion for a simple closed polygonal curve.
For distinct sides, the forward and backward cyclic neighbors meet at the
specified shared vertex; every other pair has empty intersection. -/
theorem simple_closed_polygon (V : Fin 7 → Pt) (hs : Simple7 V)
    (i j : Fin 7) (hij : i ≠ j) :
    segment ℝ (realPt (V i)) (realPt (V (i+1))) ∩
      segment ℝ (realPt (V j)) (realPt (V (j+1))) =
      if j = i+1 then {realPt (V j)}
      else if i = j+1 then {realPt (V i)} else ∅ := by
  by_cases hf : j = i+1
  · subst j
    rw [if_pos rfl]
    exact adjacent_intersection V hs i
  · rw [if_neg hf]
    by_cases hb : i = j+1
    · rw [if_pos hb]
      subst i
      rw [Set.inter_comm]
      exact adjacent_intersection V hs j
    · rw [if_neg hb]
      exact Set.disjoint_iff_inter_eq_empty.mp
        (nonadjacent_disjoint V hs i j (by
          rintro (h | h | h) <;> contradiction))

/-- Concrete non-vacuity at the certificate's integer P heptagon. -/
theorem cert_simple_closed_polygon (i j : Fin 7) (hij : i ≠ j) :
    segment ℝ (realPt (LowerBound.Pv i)) (realPt (LowerBound.Pv (i+1))) ∩
      segment ℝ (realPt (LowerBound.Pv j)) (realPt (LowerBound.Pv (j+1))) =
      if j = i+1 then {realPt (LowerBound.Pv j)}
      else if i = j+1 then {realPt (LowerBound.Pv i)} else ∅ :=
  simple_closed_polygon LowerBound.Pv simple7_Pv i j hij

end Heptagon.PolygonSimple
