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

**`NoOverlap` is now discharged** (2026-09-21): `noOverlap_of_finite` derives it
from `(points9 R).Finite`, so `points9_ncard_le_38_add_deg'` has **finiteness as
its only hypothesis**. The missing ingredient was "the segment between two
distinct points is infinite", which this Mathlib does not have ready-made;
`segment_infinite` supplies it from injectivity of the parametrisation.

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

/-! ## Lemma CL's uniqueness half, without AKR §9

`AKR9.sideP9_unique` proves a point lies on exactly one side of each polygon,
but takes §9's conclusion as a hypothesis, using it only to know the point is
not a vertex.  For a **regular** point that is true by definition, so the same
argument runs with no import at all.  This is the uniqueness half of Lemma CL
of `docs/akr-9-assembly.md` §2.2. -/

theorem sideP_unique_reg {x : ℝ × ℝ} (hx : x ∈ regPts R) {i k : Fin 7}
    (hi : x ∈ sideP9 R i) (hk : x ∈ sideP9 R k) : i = k := by
  by_contra hne
  by_cases hadj : LowerBound.Adjacent i k
  · rcases hadj with h | h | h
    · exact hne h
    · subst h
      have := R.simpleP.2.2 i
      rw [← fin7_succ_succ i] at this
      have hm : x ∈ ({R.V (pP (i + 1))} : Set (ℝ × ℝ)) := by
        rw [← this]; exact ⟨hi, hk⟩
      exact hx.2 (by rw [Set.mem_singleton_iff.mp hm]; exact vertP_mem R (i + 1))
    · subst h
      have := R.simpleP.2.2 k
      rw [← fin7_succ_succ k] at this
      have hm : x ∈ ({R.V (pP (k + 1))} : Set (ℝ × ℝ)) := by
        rw [← this]; exact ⟨hk, hi⟩
      exact hx.2 (by rw [Set.mem_singleton_iff.mp hm]; exact vertP_mem R (k + 1))
  · exact Set.disjoint_left.mp (R.simpleP.2.1 i k hadj) hi hk

theorem sideQ_unique_reg {x : ℝ × ℝ} (hx : x ∈ regPts R) {j l : Fin 7}
    (hj : x ∈ sideQ9 R j) (hl : x ∈ sideQ9 R l) : j = l := by
  by_contra hne
  by_cases hadj : LowerBound.Adjacent j l
  · rcases hadj with h | h | h
    · exact hne h
    · subst h
      have := R.simpleQ.2.2 j
      rw [← fin7_succ_succ j] at this
      have hm : x ∈ ({R.V (pQ (j + 1))} : Set (ℝ × ℝ)) := by
        rw [← this]; exact ⟨hj, hl⟩
      exact hx.2 (by rw [Set.mem_singleton_iff.mp hm]; exact vertQ_mem R (j + 1))
    · subst h
      have := R.simpleQ.2.2 l
      rw [← fin7_succ_succ l] at this
      have hm : x ∈ ({R.V (pQ (l + 1))} : Set (ℝ × ℝ)) := by
        rw [← this]; exact ⟨hl, hj⟩
      exact hx.2 (by rw [Set.mem_singleton_iff.mp hm]; exact vertQ_mem R (l + 1))
  · exact Set.disjoint_left.mp (R.simpleQ.2.1 j l hadj) hj hl

/-- **Lemma CL, regular case.**  A regular intersection point lies in the open
interior of exactly one side of each polygon, and that pair crosses properly. -/
theorem lemmaCL_regular (hno : NoOverlap R) {x : ℝ × ℝ} (hx : x ∈ regPts R) :
    ∃! p : Fin 7 × Fin 7,
      x ∈ openSegment ℝ (R.V (pP p.1)) (R.V (pP (p.1 + 1))) ∧
      x ∈ openSegment ℝ (R.V (pQ p.2)) (R.V (pQ (p.2 + 1))) ∧
      p ∈ crossPairsOf R.V := by
  obtain ⟨i, hi⟩ := Set.mem_iUnion.mp hx.1.1
  obtain ⟨j, hj⟩ := Set.mem_iUnion.mp hx.1.2
  refine ⟨(i, j), ⟨reg_mem_openP R hx i hi, reg_mem_openQ R hx j hj,
    mem_crossPairs_of_reg R hno hx i j hi hj⟩, ?_⟩
  rintro ⟨i', j'⟩ ⟨hi', hj', -⟩
  have hiP : x ∈ sideP9 R i' := openSegment_subset_segment ℝ _ _ hi'
  have hjQ : x ∈ sideQ9 R j' := openSegment_subset_segment ℝ _ _ hj'
  exact Prod.ext (sideP_unique_reg R hx hiP hi) (sideQ_unique_reg R hx hjQ hj)

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

/-! ## Discharging `NoOverlap` from finiteness

This is the Lean content of hypothesis **13 (Fin-out)** of
`docs/akr-9-assembly.md` §3: finiteness of the boundary intersection is what
stops two sides sharing more than one point. It also removes the one open
hypothesis this file was originally stated with. -/

/-- A segment between two distinct points is infinite. Mathlib does not have
this ready-made; it follows from injectivity of the parametrisation. -/
theorem segment_infinite {x y : ℝ × ℝ} (hxy : x ≠ y) :
    (segment ℝ x y).Infinite := by
  rw [segment_eq_image']
  refine Set.Infinite.image ?_ (Set.Icc_infinite (by norm_num : (0:ℝ) < 1))
  intro s _ t _ hst
  have hd : y - x ≠ 0 := sub_ne_zero.mpr (Ne.symm hxy)
  have : (s - t) • (y - x) = 0 := by
    rw [sub_smul]; rw [add_right_inj] at hst; rw [hst]; ring
  rcases smul_eq_zero.mp this with h | h
  · linarith [sub_eq_zero.mp h]
  · exact absurd h hd

/-- **Finiteness gives `NoOverlap`.** Two distinct common points of a `P`-side
and a `Q`-side force the whole segment between them into `∂P ∩ ∂Q`. -/
theorem noOverlap_of_finite (hfin : (points9 R).Finite) : NoOverlap R := by
  intro i j x y hxP hxQ hyP hyQ
  by_contra hne
  refine (segment_infinite hne) (hfin.subset ?_)
  intro z hz
  exact ⟨Set.mem_iUnion.mpr ⟨i, (convex_segment _ _).segment_subset hxP hyP hz⟩,
         Set.mem_iUnion.mpr ⟨j, (convex_segment _ _).segment_subset hxQ hyQ hz⟩⟩

/-! ## The degenerate classes

Lemma CL's other two classes: a point that *is* a vertex belongs to exactly one
polygon's vertex set, or to both.  Unlike the regular case this needs nothing
at all — it is a partition of `degPts` by which polygon the vertex belongs to. -/

/-- `P`-vertices among the intersection points. -/
def degP : Set (ℝ × ℝ) := points9 R ∩ (Set.range fun i : Fin 7 => R.V (pP i))

/-- `Q`-vertices among the intersection points. -/
def degQ : Set (ℝ × ℝ) := points9 R ∩ (Set.range fun j : Fin 7 => R.V (pQ j))

/-- **Lemma CL, the classification.**  Every intersection point is regular, a
`P`-vertex, or a `Q`-vertex; the last two overlap exactly at a coincidence. -/
theorem lemmaCL_classify {x : ℝ × ℝ} (hx : x ∈ points9 R) :
    x ∈ regPts R ∨ x ∈ degP R ∨ x ∈ degQ R := by
  by_cases hv : x ∈ verts R
  · rcases hv with h | h
    · exact Or.inr (Or.inl ⟨hx, h⟩)
    · exact Or.inr (Or.inr ⟨hx, h⟩)
  · exact Or.inl ⟨hx, hv⟩

/-- The three classes cover `points9`, and `degP ∪ degQ = degPts`. -/
theorem degP_union_degQ : degP R ∪ degQ R = degPts R := by
  ext x
  simp only [degP, degQ, degPts, verts, Set.mem_union, Set.mem_inter_iff]
  constructor
  · rintro (⟨h1, h2⟩ | ⟨h1, h2⟩)
    · exact ⟨h1, Or.inl h2⟩
    · exact ⟨h1, Or.inr h2⟩
  · rintro ⟨h1, h2 | h2⟩
    · exact Or.inl ⟨h1, h2⟩
    · exact Or.inr ⟨h1, h2⟩

#print axioms lemmaCL_classify
#print axioms degP_union_degQ

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

/-- The bound, with **finiteness as the only hypothesis**. -/
theorem points9_ncard_le_38_add_deg' (hfin : (points9 R).Finite) :
    (points9 R).ncard ≤ 38 + (degPts R).ncard :=
  points9_ncard_le_38_add_deg R (noOverlap_of_finite R hfin) hfin

#print axioms points9_ncard_le_38_add_deg
#print axioms regPts_ncard_le_38
#print axioms mem_crossPairs_of_reg
#print axioms lemmaCL_regular
#print axioms noOverlap_of_finite
#print axioms points9_ncard_le_38_add_deg'

end DegBound
end Heptagon
