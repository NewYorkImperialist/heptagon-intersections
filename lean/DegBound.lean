import AKR9

/-!
# `|∂P ∩ ∂Q| ≤ 38 + d`, with no import from AKR §9

`AKR9.points_le_38_of_no_vertex_on_boundary` bounds the boundary intersection by
`38` **assuming** AKR §9's conclusion, `NoVertexOnOther`.  This file drops that
hypothesis entirely and pays for it with `d`, the number of intersection points
that are a vertex of one of the polygons:

  `points9_ncard_le_38_add_deg : (points9 R).ncard ≤ 38 + (degPts R).ncard`.

At `d = 0` it recovers the general-position bound.  It beats the trivial bound
of `49` — seven closed segments against seven, each pair meeting at most once —
exactly when `d ≤ 10`.

The hypothesis replacing §9 is `NoOverlap`: each `P`-side meets each `Q`-side in
at most one point.  That is *implied by* finiteness of `∂P ∩ ∂Q`, since two
distinct common points of two closed segments force them to be collinear and to
overlap in a positive-length subsegment.  It is stated directly rather than
derived so that this file imports nothing beyond `AKR9`'s definitions.

**`NoOverlap` is not discharged here**, and that is the honest limit of this
file. It is a hypothesis, never an `axiom`, exactly as `NoVertexOnOther` is in
`AKR9.lean`. Deriving it from `(points9 R).Finite` needs "the segment between
two distinct points is infinite", which this Mathlib does not have ready-made;
deriving it from general position needs "two segments meeting twice are
collinear". Either is a small self-contained job and neither is done.

Nothing here is an axiom and nothing here proves `f(7,7) = 38`. The bound is
strictly weaker than `AKR9.points_le_38_of_no_vertex_on_boundary` whenever that
one applies; its point is that it applies when that one does not.
-/

namespace Heptagon
namespace DegBound

open Heptagon.Geometry Heptagon.PointSetSemantics Heptagon.RealUpperBound
open Heptagon.RealPerturb Heptagon.RawConfig Heptagon.CollinearSegment
open Heptagon.AKR9 Heptagon.ResidualSym
open scoped Classical

variable (R : Pair9)

/-- Each `P`-side meets each `Q`-side in at most one point. -/
def NoOverlap : Prop :=
  ∀ (i j : Fin 7) (x y : ℝ × ℝ),
    x ∈ sideP9 R i → x ∈ sideQ9 R j → y ∈ sideP9 R i → y ∈ sideQ9 R j → x = y

/-- The fourteen vertices, as a point set. -/
def verts : Set (ℝ × ℝ) :=
  (Set.range fun i : Fin 7 => R.V (pP i)) ∪ (Set.range fun j : Fin 7 => R.V (pQ j))

/-- Intersection points that are a vertex of one of the polygons. -/
def degPts : Set (ℝ × ℝ) := points9 R ∩ verts R

/-- Intersection points that are a vertex of neither. -/
def regPts : Set (ℝ × ℝ) := points9 R \ verts R

theorem vertP_mem (i : Fin 7) : R.V (pP i) ∈ verts R := Or.inl ⟨i, rfl⟩
theorem vertQ_mem (j : Fin 7) : R.V (pQ j) ∈ verts R := Or.inr ⟨j, rfl⟩

/-! ## A regular point is interior to every side containing it -/

theorem reg_mem_openP {x : ℝ × ℝ} (hx : x ∈ regPts R) (i : Fin 7)
    (hi : x ∈ sideP9 R i) : x ∈ openSegment ℝ (R.V (pP i)) (R.V (pP (i + 1))) := by
  have h1 : x ≠ R.V (pP i) := fun h => hx.2 (by rw [h]; exact vertP_mem R i)
  have h2 : x ≠ R.V (pP (i + 1)) := fun h => hx.2 (by rw [h]; exact vertP_mem R (i + 1))
  rw [sideP9, ← insert_endpoints_openSegment] at hi
  simp only [Set.mem_insert_iff] at hi
  rcases hi with h | h | h
  · exact absurd h h1
  · exact absurd h h2
  · exact h

theorem reg_mem_openQ {x : ℝ × ℝ} (hx : x ∈ regPts R) (j : Fin 7)
    (hj : x ∈ sideQ9 R j) : x ∈ openSegment ℝ (R.V (pQ j)) (R.V (pQ (j + 1))) := by
  have h1 : x ≠ R.V (pQ j) := fun h => hx.2 (by rw [h]; exact vertQ_mem R j)
  have h2 : x ≠ R.V (pQ (j + 1)) := fun h => hx.2 (by rw [h]; exact vertQ_mem R (j + 1))
  rw [sideQ9, ← insert_endpoints_openSegment] at hj
  simp only [Set.mem_insert_iff] at hj
  rcases hj with h | h | h
  · exact absurd h h1
  · exact absurd h h2
  · exact h

/-! ## `NoOverlap` supplies the four endpoint conditions -/

theorem endP_not_mem (hno : NoOverlap R) {x : ℝ × ℝ} (hx : x ∈ regPts R) (i j : Fin 7)
    (hi : x ∈ sideP9 R i) (hj : x ∈ sideQ9 R j) : R.V (pP i) ∉ sideQ9 R j := fun hmem =>
  hx.2 (by
    rw [hno i j x (R.V (pP i)) hi hj (left_mem_segment ℝ _ _) hmem]
    exact vertP_mem R i)

theorem endP1_not_mem (hno : NoOverlap R) {x : ℝ × ℝ} (hx : x ∈ regPts R) (i j : Fin 7)
    (hi : x ∈ sideP9 R i) (hj : x ∈ sideQ9 R j) :
    R.V (pP (i + 1)) ∉ sideQ9 R j := fun hmem =>
  hx.2 (by
    rw [hno i j x (R.V (pP (i + 1))) hi hj (right_mem_segment ℝ _ _) hmem]
    exact vertP_mem R (i + 1))

theorem endQ_not_mem (hno : NoOverlap R) {x : ℝ × ℝ} (hx : x ∈ regPts R) (i j : Fin 7)
    (hi : x ∈ sideP9 R i) (hj : x ∈ sideQ9 R j) : R.V (pQ j) ∉ sideP9 R i := fun hmem =>
  hx.2 (by
    rw [hno i j x (R.V (pQ j)) hi hj hmem (left_mem_segment ℝ _ _)]
    exact vertQ_mem R j)

theorem endQ1_not_mem (hno : NoOverlap R) {x : ℝ × ℝ} (hx : x ∈ regPts R) (i j : Fin 7)
    (hi : x ∈ sideP9 R i) (hj : x ∈ sideQ9 R j) :
    R.V (pQ (j + 1)) ∉ sideP9 R i := fun hmem =>
  hx.2 (by
    rw [hno i j x (R.V (pQ (j + 1))) hi hj hmem (right_mem_segment ℝ _ _)]
    exact vertQ_mem R (j + 1))

/-- A regular intersection point makes its two sides a proper crossing. -/
theorem mem_crossPairs_of_reg (hno : NoOverlap R) {x : ℝ × ℝ} (hx : x ∈ regPts R)
    (i j : Fin 7) (hi : x ∈ sideP9 R i) (hj : x ∈ sideQ9 R j) :
    (i, j) ∈ crossPairsOf R.V :=
  mem_crossPairsOf.mpr
    (properCross_of_openSegment_common _ _ _ _ x
      (reg_mem_openP R hx i hi) (reg_mem_openQ R hx j hj)
      (endP_not_mem R hno hx i j hi hj) (endP1_not_mem R hno hx i j hi hj)
      (endQ_not_mem R hno hx i j hi hj) (endQ1_not_mem R hno hx i j hi hj))

/-! ## The injection -/

noncomputable def pIdx (x : ℝ × ℝ) : Fin 7 :=
  if h : ∃ i, x ∈ sideP9 R i then h.choose else 0

noncomputable def qIdx (x : ℝ × ℝ) : Fin 7 :=
  if h : ∃ j, x ∈ sideQ9 R j then h.choose else 0

theorem mem_sideP_pIdx {x : ℝ × ℝ} (hx : x ∈ points9 R) : x ∈ sideP9 R (pIdx R x) := by
  have h : ∃ i, x ∈ sideP9 R i := Set.mem_iUnion.mp hx.1
  rw [pIdx, dif_pos h]; exact h.choose_spec

theorem mem_sideQ_qIdx {x : ℝ × ℝ} (hx : x ∈ points9 R) : x ∈ sideQ9 R (qIdx R x) := by
  have h : ∃ j, x ∈ sideQ9 R j := Set.mem_iUnion.mp hx.2
  rw [qIdx, dif_pos h]; exact h.choose_spec

theorem regPts_ncard_le_38 (hno : NoOverlap R) : (regPts R).ncard ≤ 38 := by
  have hmaps : ∀ x ∈ regPts R, (pIdx R x, qIdx R x) ∈ (crossPairsOf R.V : Set (Fin 7 × Fin 7)) := by
    intro x hx
    exact mem_crossPairs_of_reg R hno hx _ _ (mem_sideP_pIdx R hx.1) (mem_sideQ_qIdx R hx.1)
  have hinj : Set.InjOn (fun x => (pIdx R x, qIdx R x)) (regPts R) := by
    intro x hx y hy h
    have h1 : pIdx R x = pIdx R y := congrArg Prod.fst h
    have h2 : qIdx R x = qIdx R y := congrArg Prod.snd h
    exact hno (pIdx R x) (qIdx R x) x y
      (mem_sideP_pIdx R hx.1) (mem_sideQ_qIdx R hx.1)
      (h1 ▸ mem_sideP_pIdx R hy.1) (h2 ▸ mem_sideQ_qIdx R hy.1)
  have hfin : ((crossPairsOf R.V : Finset (Fin 7 × Fin 7)) : Set (Fin 7 × Fin 7)).Finite :=
    (crossPairsOf R.V).finite_toSet
  calc (regPts R).ncard
      ≤ ((crossPairsOf R.V : Finset (Fin 7 × Fin 7)) : Set (Fin 7 × Fin 7)).ncard :=
        Set.ncard_le_ncard_of_injOn _ hmaps hinj hfin
    _ = (crossPairsOf R.V).card := by
        simp [Set.ncard, Set.encard_eq_coe_toFinset_card]
    _ ≤ 38 := raw_crossPairs_card_le_38 (toRawPair R)

/-! ## The bound -/

/-- **`|∂P ∩ ∂Q| ≤ 38 + d`**, importing nothing from AKR §9. -/
theorem points9_ncard_le_38_add_deg (hno : NoOverlap R) (hfin : (points9 R).Finite) :
    (points9 R).ncard ≤ 38 + (degPts R).ncard := by
  have hsplit : regPts R ∪ degPts R = points9 R := Set.sdiff_union_inter _ _
  have hdisj : Disjoint (regPts R) (degPts R) := by
    rw [Set.disjoint_left]; intro a ha hb; exact ha.2 hb.2
  have hfr : (regPts R).Finite := hfin.subset Set.sdiff_subset
  have hfd : (degPts R).Finite := hfin.subset Set.inter_subset_left
  have := Set.ncard_union_eq hdisj hfr hfd
  rw [hsplit] at this
  rw [this]
  exact Nat.add_le_add_right (regPts_ncard_le_38 R hno) _

#print axioms points9_ncard_le_38_add_deg
#print axioms regPts_ncard_le_38
#print axioms mem_crossPairs_of_reg

end DegBound
end Heptagon
