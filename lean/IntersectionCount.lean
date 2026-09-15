import PolygonSimple
import EnumerationDomain
import Mathlib.Data.Set.Card
import Mathlib.Tactic.FinCases

/-!
Closes the crossing-pair versus intersection-point count gap for `Config`.
The boundary intersection is a `Set (ℝ × ℝ)`; finiteness is proved before its
`Set.ncard` is used. AKR §9.1's general-position reduction remains external.
This file does not prove the Jordan curve theorem.
-/
set_option autoImplicit false
namespace Heptagon.IntersectionCount
open Geometry DisjointnessGraph PointSetSemantics EnumerationDomain

def boundary (V : Nat → Pt) : Set (ℝ × ℝ) := ⋃ i : Fin 7, realSide V i

def intersectionPoints (K : Config) : Set (ℝ × ℝ) := boundary K.PV ∩ boundary K.QV

def crossingPairs (K : Config) : Finset (Fin 7 × Fin 7) :=
  Finset.univ.filter fun ij => disjB K ij.1 ij.2 = false

theorem pair_card (K : Config) : (crossingPairs K).card = crossCountC K := by
  classical
  rw [crossingPairs, Finset.card_filter]
  rw [Fintype.sum_prod_type]
  simp only [Fin.sum_univ_succ, Fin.sum_univ_zero, Fin.val_zero, Fin.val_succ]
  have hb (b : Bool) : (if b = false then 1 else 0 : Nat) = (if b then 0 else 1) := by cases b <;> rfl
  simp only [hb, crossCountC, crossRow, Endgame.idx7, List.foldl, Nat.zero_add,
    Nat.add_zero, Nat.add_assoc]

theorem common_iff (K : Config) (i j : Fin 7) :
    (∃ x, x ∈ realSide K.PV i ∧ x ∈ realSide K.QV j) ↔
      (i,j) ∈ crossingPairs K := by
  classical
  simp only [crossingPairs, Finset.mem_filter, Finset.mem_univ, true_and]
  rw [disjB_eq_false_iff]
  constructor
  · rintro ⟨x,hx,hy⟩
    by_contra hn
    exact Set.disjoint_left.mp ((disjointO_iff_disjoint K i j i.is_lt j.is_lt).mp hn) hx hy
  · intro h
    exact common_of_straddle _ _ _ _ ((properCross_real _ _ _ _).mp h)

theorem common_unique (a b c d : ℝ × ℝ)
    (h : det a b c * det a b d < 0) (x y : ℝ × ℝ)
    (hx : x ∈ segment ℝ a b ∩ segment ℝ c d)
    (hy : y ∈ segment ℝ a b ∩ segment ℝ c d) : x = y := by
  have hz := det_zero_of_mem a b x hx.1
  have hw := det_zero_of_mem a b y hy.1
  obtain ⟨s, _, hs⟩ := (segment_eq_image ℝ c d ▸ hx.2)
  obtain ⟨t, _, ht⟩ := (segment_eq_image ℝ c d ▸ hy.2)
  rw [← hs, det_mix] at hz
  rw [← ht, det_mix] at hw
  have hn : det a b c - det a b d ≠ 0 := (root_parameter _ _ h).1
  have he : (s-t) * (det a b c - det a b d) = 0 := by nlinarith [hz, hw]
  have he' : s = t := by
    have := (mul_eq_zero.mp he).resolve_right hn
    linarith
  rw [← hs, ← ht, he']

/-- Simplicity makes a point shared by distinct sides a vertex. -/
theorem shared_is_vertex (V : Fin 7 → Pt) (hs : Simple7 V)
    (i j : Fin 7) (hne : i ≠ j) (x : ℝ × ℝ)
    (hx : x ∈ segment ℝ (realPt (V i)) (realPt (V (i+1))))
    (hy : x ∈ segment ℝ (realPt (V j)) (realPt (V (j+1)))) :
    ∃ k, x = realPt (V k) := by
  have hm : x ∈ segment ℝ (realPt (V i)) (realPt (V (i+1))) ∩
      segment ℝ (realPt (V j)) (realPt (V (j+1))) := ⟨hx,hy⟩
  rw [PolygonSimple.simple_closed_polygon V hs i j hne] at hm
  split_ifs at hm with h h
  · exact ⟨j, Set.mem_singleton_iff.mp hm⟩
  · exact ⟨i, Set.mem_singleton_iff.mp hm⟩
  · exact False.elim hm

theorem side_indices_unique (K : Config) (i j k l : Fin 7) (x : ℝ × ℝ)
    (hi : x ∈ realSide K.PV i) (hj : x ∈ realSide K.QV j)
    (hk : x ∈ realSide K.PV k) (hl : x ∈ realSide K.QV l) :
    (i,j) = (k,l) := by
  simp only [realSide, vtx_PV, vtx_PV_succ, vtx_QV, vtx_QV_succ] at *
  apply Prod.ext
  · by_contra hn
    obtain ⟨v,rfl⟩ := shared_is_vertex K.Pv K.P_simple i k hn x hi hk
    have hz := det_zero_of_mem _ _ _ hj
    rw [det_realPt] at hz
    have hz' : orient (K.Qv j) (K.Qv (j+1)) (K.Pv v) = 0 := by exact_mod_cast hz
    exact K.no_P_vertex_on_Q_side_line v j hz'
  · by_contra hn
    obtain ⟨v,rfl⟩ := shared_is_vertex K.Qv K.Q_simple j l hn x hj hl
    have hz := det_zero_of_mem _ _ _ hi
    rw [det_realPt] at hz
    have hz' : orient (K.Pv i) (K.Pv (i+1)) (K.Qv v) = 0 := by exact_mod_cast hz
    exact K.no_Q_vertex_on_P_side_line i v hz'

noncomputable def crossingPoint (K : Config) (p : ↥(crossingPairs K)) : ℝ × ℝ :=
  Classical.choose ((common_iff K p.val.1 p.val.2).mpr p.property)

theorem crossingPoint_mem (K : Config) (p : ↥(crossingPairs K)) :
    crossingPoint K p ∈ realSide K.PV p.val.1 ∧
      crossingPoint K p ∈ realSide K.QV p.val.2 :=
  Classical.choose_spec ((common_iff K p.val.1 p.val.2).mpr p.property)

theorem crossingPoint_injective (K : Config) : Function.Injective (crossingPoint K) := by
  intro p q h
  apply Subtype.ext
  have hp := crossingPoint_mem K p
  have hq := crossingPoint_mem K q
  rw [← h] at hq
  exact side_indices_unique K _ _ _ _ _ hp.1 hp.2 hq.1 hq.2

theorem points_eq_range (K : Config) : intersectionPoints K = Set.range (crossingPoint K) := by
  ext x
  constructor
  · rintro ⟨hp,hq⟩
    obtain ⟨i,hi⟩ := Set.mem_iUnion.mp hp
    obtain ⟨j,hj⟩ := Set.mem_iUnion.mp hq
    let p : ↥(crossingPairs K) := ⟨(i,j), (common_iff K i j).mp ⟨x,hi,hj⟩⟩
    refine ⟨p, ?_⟩
    have hm := crossingPoint_mem K p
    have hc := (disjB_eq_false_iff K i j).mp
      (Finset.mem_filter.mp p.property).2
    exact common_unique _ _ _ _ ((properCross_real _ _ _ _).mp hc).1 _ _ hm ⟨hi,hj⟩
  · rintro ⟨p,rfl⟩
    have h := crossingPoint_mem K p
    exact ⟨Set.mem_iUnion.mpr ⟨p.val.1,h.1⟩, Set.mem_iUnion.mpr ⟨p.val.2,h.2⟩⟩

theorem intersectionPoints_finite (K : Config) : (intersectionPoints K).Finite := by
  rw [points_eq_range]
  exact Set.finite_range _

theorem crossCountC_eq_pointCount (K : Config) :
    crossCountC K = (intersectionPoints K).ncard := by
  rw [points_eq_range, Set.ncard_range_of_injective (crossingPoint_injective K)]
  simpa [Nat.card_eq_fintype_card] using (pair_card K).symm

theorem cert_pointCount : (intersectionPoints certConfig).ncard = 38 := by
  rw [← crossCountC_eq_pointCount, cert_crossCountC]

end Heptagon.IntersectionCount

#print axioms Heptagon.IntersectionCount.pair_card
#print axioms Heptagon.IntersectionCount.common_iff
#print axioms Heptagon.IntersectionCount.common_unique
#print axioms Heptagon.IntersectionCount.shared_is_vertex
#print axioms Heptagon.IntersectionCount.side_indices_unique
#print axioms Heptagon.IntersectionCount.crossingPoint_mem
#print axioms Heptagon.IntersectionCount.crossingPoint_injective
#print axioms Heptagon.IntersectionCount.points_eq_range
#print axioms Heptagon.IntersectionCount.intersectionPoints_finite
#print axioms Heptagon.IntersectionCount.crossCountC_eq_pointCount
#print axioms Heptagon.IntersectionCount.cert_pointCount
