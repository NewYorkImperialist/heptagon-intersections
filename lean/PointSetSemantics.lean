import DisjointnessGraph
import Mathlib.Analysis.Convex.Segment
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.NormNum

/-! Point-set semantics in `ℝ × ℝ`. Integer vertices are embedded coordinatewise.
The geometry-only libraries retain their original imports and statements. -/

set_option autoImplicit false

namespace Heptagon.PointSetSemantics
open Geometry DisjointnessGraph

/-- Coordinatewise embedding of the exact integer plane into the real plane. -/
def realPt (p : Pt) : ℝ × ℝ := (p.1, p.2)

/-- Real signed-area determinant. -/
def det (a b c : ℝ × ℝ) : ℝ :=
  (b.1 - a.1) * (c.2 - a.2) - (b.2 - a.2) * (c.1 - a.1)

theorem det_realPt (a b c : Pt) :
    det (realPt a) (realPt b) (realPt c) = (orient a b c : ℝ) := by
  simp [det, realPt, orient]

/-- Evaluating a supporting-line determinant on a convex combination is affine. -/
theorem det_mix (a b c d : ℝ × ℝ) (t : ℝ) :
    det a b ((1-t) • c + t • d) = (1-t) * det a b c + t * det a b d := by
  simp only [det, Prod.smul_fst, Prod.smul_snd, Prod.fst_add, Prod.snd_add, smul_eq_mul]
  ring

/-- A point of a segment lies on its supporting line. -/
theorem det_zero_of_mem (a b x : ℝ × ℝ) (hx : x ∈ segment ℝ a b) :
    det a b x = 0 := by
  rw [segment_eq_image] at hx
  obtain ⟨t, _, rfl⟩ := hx
  rw [det_mix]
  have h1 : det a b a = 0 := by unfold det; ring
  have h2 : det a b b = 0 := by unfold det; ring
  rw [h1, h2]
  ring

/-- A zero convex combination of two nonzero scalars forces opposite signs. -/
theorem opposite_of_mix_zero (u v t : ℝ) (hu : u ≠ 0) (hv : v ≠ 0)
    (ht0 : 0 ≤ t) (ht1 : t ≤ 1) (hz : (1-t)*u + t*v = 0) : u*v < 0 := by
  rcases lt_or_gt_of_ne hu with hu | hu
  · have hv' : 0 < v := by
      by_contra h
      have hv' : v < 0 := lt_of_le_of_ne (le_of_not_gt h) hv
      have h1 := mul_nonpos_of_nonneg_of_nonpos (sub_nonneg.mpr ht1) (le_of_lt hu)
      have h2 := mul_nonpos_of_nonneg_of_nonpos ht0 (le_of_lt hv')
      have ht : 0 < t := by
        by_contra h
        have he : t = 0 := by linarith
        rw [he] at hz
        simp only [sub_zero, one_mul, zero_mul, add_zero] at hz
        exact (ne_of_lt hu) hz
      have := mul_neg_of_pos_of_neg ht hv'
      linarith
    exact mul_neg_of_neg_of_pos hu hv'
  · have hv' : v < 0 := by
      by_contra h
      have hv' : 0 < v := lt_of_le_of_ne (le_of_not_gt h) (Ne.symm hv)
      have h1 := mul_nonneg (sub_nonneg.mpr ht1) (le_of_lt hu)
      have h2 := mul_nonneg ht0 (le_of_lt hv')
      have ht : 0 < t := by
        by_contra h
        have he : t = 0 := by linarith
        rw [he] at hz
        simp only [sub_zero, one_mul, zero_mul, add_zero] at hz
        exact (ne_of_gt hu) hz
      have := mul_pos ht hv'
      linarith
    exact mul_neg_of_pos_of_neg hu hv'

/-- Meeting closed segments straddle both supporting lines when all four
endpoint determinants are nonzero. This excludes endpoint and overlap contacts. -/
theorem straddle_of_common (a b c d x : ℝ × ℝ)
    (ha : det a b c ≠ 0) (hb : det a b d ≠ 0)
    (hc : det c d a ≠ 0) (hd : det c d b ≠ 0)
    (hx : x ∈ segment ℝ a b) (hy : x ∈ segment ℝ c d) :
    det a b c * det a b d < 0 ∧ det c d a * det c d b < 0 := by
  have hz := det_zero_of_mem a b x hx
  have hw := det_zero_of_mem c d x hy
  rw [segment_eq_image] at hx hy
  obtain ⟨s, hs, hxs⟩ := hx
  obtain ⟨t, ht, hyt⟩ := hy
  constructor
  · rw [← hyt, det_mix] at hz
    exact opposite_of_mix_zero _ _ _ ha hb ht.1 ht.2 hz
  · rw [← hxs, det_mix] at hw
    exact opposite_of_mix_zero _ _ _ hc hd hs.1 hs.2 hw

/-- The root parameter for two strictly opposite endpoint values is in [0,1]. -/
theorem root_parameter (u v : ℝ) (h : u*v < 0) :
    u-v ≠ 0 ∧ 0 ≤ u/(u-v) ∧ u/(u-v) ≤ 1 := by
  rcases mul_neg_iff.mp h with h | h
  · have hd : 0 < u-v := by linarith [h.1, h.2]
    exact ⟨ne_of_gt hd, le_of_lt (div_pos h.1 hd), (div_le_one hd).mpr (by linarith [h.2])⟩
  · have hd : u-v < 0 := by linarith [h.1, h.2]
    exact ⟨ne_of_lt hd, le_of_lt (div_pos_of_neg_of_neg h.1 hd), (div_le_one_of_neg hd).mpr (by linarith [h.2])⟩

/-- Strict two-sided straddling constructs a common point of the closed segments.
This direction needs no general-position assumption beyond strict straddling. -/
theorem common_of_straddle (a b c d : ℝ × ℝ)
    (h : det a b c * det a b d < 0 ∧ det c d a * det c d b < 0) :
    ∃ x, x ∈ segment ℝ a b ∧ x ∈ segment ℝ c d := by
  obtain ⟨htn, ht0, ht1⟩ := root_parameter _ _ h.1
  obtain ⟨hsn, hs0, hs1⟩ := root_parameter _ _ h.2
  let s := det c d a / (det c d a - det c d b)
  let t := det a b c / (det a b c - det a b d)
  have heq : (1-s) • a + s • b = (1-t) • c + t • d := by
    have hden : det c d a - det c d b = -(det a b c - det a b d) := by
      simp only [det]; ring
    dsimp [s, t]
    rw [hden]
    apply Prod.ext <;> simp only [Prod.fst_add, Prod.snd_add, Prod.smul_fst, Prod.smul_snd, smul_eq_mul]
    <;> field_simp
    <;> simp only [det]
    <;> ring
  refine ⟨(1-s) • a + s • b, ?_, ?_⟩
  · rw [segment_eq_image]
    exact ⟨s, ⟨hs0, hs1⟩, rfl⟩
  · rw [heq, segment_eq_image]
    exact ⟨t, ⟨ht0, ht1⟩, rfl⟩

/-- Integer proper crossing agrees with real strict straddling. -/
theorem properCross_real (a b c d : Pt) :
    ProperCross a b c d ↔
      det (realPt a) (realPt b) (realPt c) * det (realPt a) (realPt b) (realPt d) < 0 ∧
      det (realPt c) (realPt d) (realPt a) * det (realPt c) (realPt d) (realPt b) < 0 := by
  simp only [ProperCross, det_realPt]
  constructor <;> intro h <;> constructor
  · exact_mod_cast h.1
  · exact_mod_cast h.2
  · exact_mod_cast h.1
  · exact_mod_cast h.2

/-- Full point-set equivalence for integer segments whose four cross-polygon
endpoint determinants are nonzero. -/
theorem not_properCross_iff_disjoint (a b c d : Pt)
    (ha : orient a b c ≠ 0) (hb : orient a b d ≠ 0)
    (hc : orient c d a ≠ 0) (hd : orient c d b ≠ 0) :
    ¬ ProperCross a b c d ↔
      Disjoint (segment ℝ (realPt a) (realPt b)) (segment ℝ (realPt c) (realPt d)) := by
  have cast_ne (p q r : Pt) (h : orient p q r ≠ 0) :
      det (realPt p) (realPt q) (realPt r) ≠ 0 := by
    rw [det_realPt]
    exact_mod_cast h
  constructor
  · intro h
    apply Set.disjoint_left.mpr
    intro x hx hy
    apply h
    apply (properCross_real a b c d).mpr
    exact straddle_of_common _ _ _ _ x (cast_ne _ _ _ ha) (cast_ne _ _ _ hb)
      (cast_ne _ _ _ hc) (cast_ne _ _ _ hd) hx hy
  · intro h hp
    obtain ⟨x, hx, hy⟩ := common_of_straddle _ _ _ _ ((properCross_real a b c d).mp hp)
    exact Set.disjoint_left.mp h hx hy

/-- The closed real point set of side `i` of a cyclic integer heptagon. -/
def realSide (V : Nat → Pt) (i : Nat) : Set (ℝ × ℝ) :=
  segment ℝ (realPt (vtx 7 V i)) (realPt (vtx 7 V (i+1)))

/-- I2b, fully proved in both directions. The two cross-polygon vertex-avoidance
fields supply the four nonzero determinants. They already exclude degenerate
sides, so no additional consequence of `Simple7` is required. -/
theorem disjointO_iff_disjoint (K : Config) (i j : Nat) (hi : i < 7) (hj : j < 7) :
    DisjointO K i j ↔ Disjoint (realSide K.PV i) (realSide K.QV j) := by
  let i' : Fin 7 := ⟨i, hi⟩
  let j' : Fin 7 := ⟨j, hj⟩
  have h := K.general_position i' j'
  change DisjointO K i'.val j'.val ↔ _
  rw [disjointO_iff_fin]
  simp only [realSide, show i = i'.val from rfl, show j = j'.val from rfl,
    vtx_PV, vtx_PV_succ, vtx_QV, vtx_QV_succ]
  exact not_properCross_iff_disjoint _ _ _ _ h.1 h.2.1 h.2.2.1 h.2.2.2

/-- I2a composed with I2b: the stored mask bit means point-set disjointness. -/
theorem toMasks_pointSet_spec (K : Config) (i j : Nat) (hi : i < 7) (hj : j < 7) :
    Endgame.bitAt (toMasks K i) j = true ↔ Disjoint (realSide K.PV i) (realSide K.QV j) :=
  (toMasks_spec K i j hi hj).trans (disjointO_iff_disjoint K i j hi hj)

/-- Concrete non-vacuity: P-side 0 and Q-side 3 are disjoint closed point sets. -/
theorem cert_disjoint :
    Disjoint (realSide certConfig.PV 0) (realSide certConfig.QV 3) :=
  (disjointO_iff_disjoint certConfig 0 3 (by decide) (by decide)).mp
    cert_disjointO_nontrivial.1

/-- Concrete non-vacuity: P-side 0 and Q-side 0 cross properly and share a real point. -/
theorem cert_crossing :
    ProperCross (vtx 7 certConfig.PV 0) (vtx 7 certConfig.PV 1)
      (vtx 7 certConfig.QV 0) (vtx 7 certConfig.QV 1) ∧
    ∃ x, x ∈ realSide certConfig.PV 0 ∧ x ∈ realSide certConfig.QV 0 := by
  have h : ProperCross (vtx 7 certConfig.PV 0) (vtx 7 certConfig.PV 1)
      (vtx 7 certConfig.QV 0) (vtx 7 certConfig.QV 1) := by decide
  exact ⟨h, common_of_straddle _ _ _ _ ((properCross_real _ _ _ _).mp h)⟩

end Heptagon.PointSetSemantics
