import RawConfig
import CollinearSegment

/-!
# The point count assuming only AKR §9's conclusion

`RawConfig.raw_crossPairs_card_le_38` bounds the number of crossing side
**pairs** of two heptagons that are simple as point sets, with no
general-position hypothesis at all — that was AKR §3's unproved clause,
discharged.  It does **not** bound the number of intersection **points**,
because at a degenerate configuration a point of `∂P ∩ ∂Q` can lie on no
crossing pair: two sides that merely *touch* share a point but have vanishing
determinants.

Removing touching-without-crossing is exactly what AKR §9 does.  This file
carries §9's *conclusion* as one explicit named hypothesis — `NoVertexOnOther`,
the obligation `docs/akr-9-1-obligation.md` calls **(E9)** — and proves the
point count from it:

  `points_le_38_of_no_vertex_on_boundary (R : Pair9) (h9 : NoVertexOnOther R) :
      (points9 R).ncard ≤ 38`

**What that buys.**  The sole remaining import becomes **AKR §9 as published**.
§3's clause is gone from the point count as well as the pair count, and the
residue is a single Lean hypothesis a reader can check against the paper rather
than a general-position condition baked into a structure.

**What it is not.**  (E9) is a *hypothesis*, never an `axiom`.  Nothing here
proves it, and `f(7,7) = 38` is not a Lean theorem.  §9 itself is five pages
with a quantitative uniform-ε step and one existence step AKR assert rather than
prove; `docs/akr-9-1-obligation.md` advises against attempting it.

**Cite carefully.**  §9 (= §9.1 vertex–vertex + §9.2 vertex–side) justifies
`NoVertexOnOther` and nothing more.  The *collinearity* condition — no three of
the fourteen combined vertices collinear — is §3's separate, unproved remark,
and is **not** assumed anywhere in this file.  Conflating the two is a
documented past defect of this project.

## A statement-level improvement

`docs/akr-9-1-obligation.md` §5.4 warns that `Set.ncard` is `0` on infinite
sets, so a point bound would read as a theorem while saying nothing about a
configuration whose sides overlap; its draft therefore carried
`(rawPoints R).Finite` as a hypothesis.  That is **not** needed here.  The
injection below lands in a `Finset`, so `points9_finite` is a *conclusion*.  The
trap is closed rather than avoided.
-/

set_option autoImplicit false

namespace Heptagon
namespace AKR9

open Heptagon.Geometry Heptagon.PointSetSemantics Heptagon.RealUpperBound
open Heptagon.RealPerturb Heptagon.RawConfig Heptagon.CollinearSegment
open Heptagon.ResidualSym

open scoped Classical

/-! ## A closed polygon that is simple as a point set -/

/-- Simplicity of a closed heptagon **as a curve**, and nothing else: no
degenerate side, non-adjacent sides disjoint, and cyclically adjacent sides
meeting exactly in their shared endpoint.

Three collinear vertices are **allowed** — that is the entire point.  Contrast
`DisjointnessGraph.Simple7`, whose second conjunct is already a general-position
condition, and `Config`, whose `no_*_vertex_on_*_side_line` fields already
assume away half of what §9 exists to remove.  Neither can be the source of a
reduction whose job is to create those conditions. -/
def SimpleClosed (W : Fin 7 → ℝ × ℝ) : Prop :=
  (∀ i : Fin 7, W i ≠ W (i + 1)) ∧
  (∀ i j : Fin 7, ¬ LowerBound.Adjacent i j →
      Disjoint (segment ℝ (W i) (W (i + 1))) (segment ℝ (W j) (W (j + 1)))) ∧
  (∀ i : Fin 7,
      segment ℝ (W i) (W (i + 1)) ∩ segment ℝ (W (i + 1)) (W (i + 2))
        = {W (i + 1)})

/-- Two heptagons in the real plane, each simple as a point set.  **No general
position of any kind.** -/
structure Pair9 where
  /-- The fourteen vertices: `P` is `0..6`, `Q` is `7..13`. -/
  V : Fin 14 → ℝ × ℝ
  simpleP : SimpleClosed (fun i : Fin 7 => V (pP i))
  simpleQ : SimpleClosed (fun i : Fin 7 => V (pQ i))

/-- `SimpleClosed`'s middle conjunct is exactly `RawPair`'s content, so the
pair bound of `RawConfig` applies verbatim. -/
def toRawPair (R : Pair9) : RawPair where
  V := R.V
  disjP := R.simpleP.2.1
  disjQ := R.simpleQ.2.1

/-! ## (E9): AKR §9's conclusion, as a named hypothesis -/

/-- **(E9).** No vertex of either polygon lies anywhere on the other polygon's
boundary.  This is what AKR §9 delivers — §9.1 removes vertex–vertex
coincidences, §9.2 vertex–side ones — and it is imported, not proved.

Both directions are used: the `P`-vertices to place an intersection point
strictly inside a `Q`-side, and the `Q`-vertices to rule out a collinear
overlap. -/
def NoVertexOnOther (R : Pair9) : Prop :=
  (∀ i j : Fin 7, R.V (pP i) ∉ segment ℝ (R.V (pQ j)) (R.V (pQ (j + 1)))) ∧
  (∀ i j : Fin 7, R.V (pQ j) ∉ segment ℝ (R.V (pP i)) (R.V (pP (i + 1))))

/-! ## The boundaries, as point sets -/

def sideP9 (R : Pair9) (i : Fin 7) : Set (ℝ × ℝ) :=
  segment ℝ (R.V (pP i)) (R.V (pP (i + 1)))

def sideQ9 (R : Pair9) (j : Fin 7) : Set (ℝ × ℝ) :=
  segment ℝ (R.V (pQ j)) (R.V (pQ (j + 1)))

def bdryP9 (R : Pair9) : Set (ℝ × ℝ) := ⋃ i : Fin 7, sideP9 R i
def bdryQ9 (R : Pair9) : Set (ℝ × ℝ) := ⋃ j : Fin 7, sideQ9 R j

/-- `∂P ∩ ∂Q`, a genuine set of points of the real plane. -/
def points9 (R : Pair9) : Set (ℝ × ℝ) := bdryP9 R ∩ bdryQ9 R

/-- `(k+1)+1` and `k+2` are the same element of `Fin 7`, but not syntactically,
and `SimpleClosed`'s third conjunct is stated with `+2`. -/
theorem fin7_succ_succ : ∀ k : Fin 7, (k + 1) + 1 = k + 2 := by decide

/-! ## An intersection point is interior to exactly one side of each polygon -/

/-- No intersection point is a `P`-vertex: it lies on `∂Q`, and (E9) forbids a
`P`-vertex there. -/
theorem ne_vertexP (R : Pair9) (h9 : NoVertexOnOther R) (x : ℝ × ℝ)
    (hx : x ∈ points9 R) (i : Fin 7) : x ≠ R.V (pP i) := by
  rintro rfl
  obtain ⟨j, hj⟩ := Set.mem_iUnion.mp hx.2
  exact h9.1 i j hj

theorem ne_vertexQ (R : Pair9) (h9 : NoVertexOnOther R) (x : ℝ × ℝ)
    (hx : x ∈ points9 R) (j : Fin 7) : x ≠ R.V (pQ j) := by
  rintro rfl
  obtain ⟨i, hi⟩ := Set.mem_iUnion.mp hx.1
  exact h9.2 i j hi

/-- Hence it lies in the **open** side. -/
theorem mem_openSegmentP (R : Pair9) (h9 : NoVertexOnOther R) (x : ℝ × ℝ)
    (hx : x ∈ points9 R) (i : Fin 7) (hi : x ∈ sideP9 R i) :
    x ∈ openSegment ℝ (R.V (pP i)) (R.V (pP (i + 1))) := by
  have h1 := ne_vertexP R h9 x hx i
  have h2 := ne_vertexP R h9 x hx (i + 1)
  rw [sideP9, ← insert_endpoints_openSegment] at hi
  simp only [Set.mem_insert_iff] at hi
  rcases hi with h | h
  · exact absurd h h1
  · rcases h with h | h
    · exact absurd h h2
    · exact h

theorem mem_openSegmentQ (R : Pair9) (h9 : NoVertexOnOther R) (x : ℝ × ℝ)
    (hx : x ∈ points9 R) (j : Fin 7) (hj : x ∈ sideQ9 R j) :
    x ∈ openSegment ℝ (R.V (pQ j)) (R.V (pQ (j + 1))) := by
  have h1 := ne_vertexQ R h9 x hx j
  have h2 := ne_vertexQ R h9 x hx (j + 1)
  rw [sideQ9, ← insert_endpoints_openSegment] at hj
  simp only [Set.mem_insert_iff] at hj
  rcases hj with h | h
  · exact absurd h h1
  · rcases h with h | h
    · exact absurd h h2
    · exact h

/-- And on exactly one `P`-side: distinct sides of a point-set simple polygon
meet only at a shared vertex, and an intersection point is not a vertex. -/
theorem sideP9_unique (R : Pair9) (h9 : NoVertexOnOther R) (x : ℝ × ℝ)
    (hx : x ∈ points9 R) (i k : Fin 7)
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
      exact ne_vertexP R h9 x hx (i + 1) (Set.mem_singleton_iff.mp hm)
    · subst h
      have := R.simpleP.2.2 k
      rw [← fin7_succ_succ k] at this
      have hm : x ∈ ({R.V (pP (k + 1))} : Set (ℝ × ℝ)) := by
        rw [← this]; exact ⟨hk, hi⟩
      exact ne_vertexP R h9 x hx (k + 1) (Set.mem_singleton_iff.mp hm)
  · exact Set.disjoint_left.mp (R.simpleP.2.1 i k hadj) hi hk

theorem sideQ9_unique (R : Pair9) (h9 : NoVertexOnOther R) (x : ℝ × ℝ)
    (hx : x ∈ points9 R) (j l : Fin 7)
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
      exact ne_vertexQ R h9 x hx (j + 1) (Set.mem_singleton_iff.mp hm)
    · subst h
      have := R.simpleQ.2.2 l
      rw [← fin7_succ_succ l] at this
      have hm : x ∈ ({R.V (pQ (l + 1))} : Set (ℝ × ℝ)) := by
        rw [← this]; exact ⟨hl, hj⟩
      exact ne_vertexQ R h9 x hx (l + 1) (Set.mem_singleton_iff.mp hm)
  · exact Set.disjoint_left.mp (R.simpleQ.2.1 j l hadj) hj hl

/-! ## Every intersection point is a proper crossing -/

/-- **The step (E9) buys.**  A common point interior to both sides, with no
endpoint of either lying on the other, is a transversal crossing.  The work is
in `CollinearSegment.properCross_of_openSegment_common`; (E9) supplies its four
"endpoint not on the other segment" hypotheses. -/
theorem mem_crossPairs9 (R : Pair9) (h9 : NoVertexOnOther R) (x : ℝ × ℝ)
    (hx : x ∈ points9 R) (i j : Fin 7)
    (hi : x ∈ sideP9 R i) (hj : x ∈ sideQ9 R j) :
    (i, j) ∈ crossPairsOf R.V := by
  refine mem_crossPairsOf.mpr ?_
  exact properCross_of_openSegment_common _ _ _ _ x
    (mem_openSegmentP R h9 x hx i hi) (mem_openSegmentQ R h9 x hx j hj)
    (h9.1 i j) (h9.1 (i + 1) j) (h9.2 i j) (h9.2 i (j + 1))

/-! ## One point per crossing pair -/

/-- The common point of a crossing pair. -/
noncomputable def cp9 (R : Pair9) (p : ↥(crossPairsOf R.V)) : ℝ × ℝ :=
  Classical.choose (common_of_straddle _ _ _ _ (mem_crossPairsOf.mp p.property))

theorem cp9_mem (R : Pair9) (p : ↥(crossPairsOf R.V)) :
    cp9 R p ∈ sideP9 R p.val.1 ∧ cp9 R p ∈ sideQ9 R p.val.2 :=
  Classical.choose_spec
    (common_of_straddle _ _ _ _ (mem_crossPairsOf.mp p.property))

theorem cp9_mem_points (R : Pair9) (p : ↥(crossPairsOf R.V)) :
    cp9 R p ∈ points9 R :=
  ⟨Set.mem_iUnion.mpr ⟨p.val.1, (cp9_mem R p).1⟩,
   Set.mem_iUnion.mpr ⟨p.val.2, (cp9_mem R p).2⟩⟩

theorem cp9_injective (R : Pair9) (h9 : NoVertexOnOther R) :
    Function.Injective (cp9 R) := by
  intro p q h
  apply Subtype.ext
  have hp := cp9_mem R p
  have hq := cp9_mem R q
  have hmem := cp9_mem_points R p
  rw [← h] at hq
  exact Prod.ext (sideP9_unique R h9 _ hmem _ _ hp.1 hq.1)
    (sideQ9_unique R h9 _ hmem _ _ hp.2 hq.2)

theorem points9_eq_range (R : Pair9) (h9 : NoVertexOnOther R) :
    points9 R = Set.range (cp9 R) := by
  ext x
  constructor
  · intro hx
    obtain ⟨i, hi⟩ := Set.mem_iUnion.mp hx.1
    obtain ⟨j, hj⟩ := Set.mem_iUnion.mp hx.2
    refine ⟨⟨(i, j), mem_crossPairs9 R h9 x hx i j hi hj⟩, ?_⟩
    have hc := mem_crossPairsOf.mp (mem_crossPairs9 R h9 x hx i j hi hj)
    exact IntersectionCount.common_unique _ _ _ _ hc.1 _ _
      (cp9_mem R ⟨(i, j), mem_crossPairs9 R h9 x hx i j hi hj⟩) ⟨hi, hj⟩
  · rintro ⟨p, rfl⟩
    exact cp9_mem_points R p

/-- **Finiteness is a conclusion, not a hypothesis** — the intersection injects
into a `Finset` of side pairs.  This closes the `Set.ncard`-on-infinite-sets
trap of `docs/akr-9-1-obligation.md` §5.4 rather than assuming it away. -/
theorem points9_finite (R : Pair9) (h9 : NoVertexOnOther R) :
    (points9 R).Finite := by
  rw [points9_eq_range R h9]; exact Set.finite_range _

theorem points9_ncard (R : Pair9) (h9 : NoVertexOnOther R) :
    (points9 R).ncard = (crossPairsOf R.V).card := by
  rw [points9_eq_range R h9, Set.ncard_range_of_injective (cp9_injective R h9),
    Nat.card_eq_fintype_card, Fintype.card_coe]

/-! ## Non-vacuity

Every hypothesis in this development ships with a witness showing it is
satisfiable; a theorem whose hypothesis is unsatisfiable says nothing.  Here the
witness is general: **every `RConfig` gives a `Pair9` satisfying (E9)**, so in
particular the lower-bound certificate does. -/

/-- A real configuration in general position is a `Pair9`.  General position is
much stronger than `SimpleClosed` needs — that is the point of the direction of
this map, not a defect. -/
def ofRConfig9 (R : RConfig) : Pair9 where
  V := R.V
  simpleP := by
    refine ⟨?_, ?_, ?_⟩
    · intro i
      exact RealConfig.vertices_distinct_of_generic R.gp (fun h => fin7_ne_succ i (pP_inj h))
    · intro i j hij
      exact nonadjacent_disjointR (W := fun i : Fin 7 => R.V (pP i))
        (fun a b c hab hbc hac => gpP R a b c hab hbc hac)
        (fun a b h => R.simpleP a b h) i j hij
    · intro i
      rw [← fin7_succ_succ i]
      exact adjacent_intersectionR (W := fun i : Fin 7 => R.V (pP i))
        (fun a b c hab hbc hac => gpP R a b c hab hbc hac) i
  simpleQ := by
    refine ⟨?_, ?_, ?_⟩
    · intro i
      exact RealConfig.vertices_distinct_of_generic R.gp (fun h => fin7_ne_succ i (pQ_inj h))
    · intro i j hij
      exact nonadjacent_disjointR (W := fun i : Fin 7 => R.V (pQ i))
        (fun a b c hab hbc hac => gpQ R a b c hab hbc hac)
        (fun a b h => R.simpleQ a b h) i j hij
    · intro i
      rw [← fin7_succ_succ i]
      exact adjacent_intersectionR (W := fun i : Fin 7 => R.V (pQ i))
        (fun a b c hab hbc hac => gpQ R a b c hab hbc hac) i

/-- **(E9) is satisfiable.**  In general position a vertex of one polygon cannot
lie on a side of the other: that would make a determinant through three distinct
vertices vanish. -/
theorem noVertexOnOther_ofRConfig (R : RConfig) : NoVertexOnOther (ofRConfig9 R) := by
  constructor
  · intro i j hmem
    have hz := det_zero_of_mem (R.V (pQ j)) (R.V (pQ (j + 1))) (R.V (pP i)) hmem
    exact R.gp (pQ j) (pQ (j + 1)) (pP i)
      (fun h => fin7_ne_succ j (pQ_inj h))
      (fun h => pP_ne_pQ i (j + 1) h.symm)
      (fun h => pP_ne_pQ i j h.symm) hz
  · intro i j hmem
    have hz := det_zero_of_mem (R.V (pP i)) (R.V (pP (i + 1))) (R.V (pQ j)) hmem
    exact R.gp (pP i) (pP (i + 1)) (pQ j)
      (fun h => fin7_ne_succ i (pP_inj h))
      (fun h => pP_ne_pQ (i + 1) j h)
      (fun h => pP_ne_pQ i j h) hz

/-! ## The theorem -/

/-- **`f(7,7) ≤ 38` for two real simple heptagons with no vertex of one on the
boundary of the other.**

`points9 R` is `∂P ∩ ∂Q` as a genuine set in `ℝ × ℝ`, built from Mathlib's
`segment ℝ`.  `Pair9` assumes only that each polygon is simple **as a point
set** — three collinear vertices are allowed, and no general-position condition
of any kind appears in the structure.

The single hypothesis is `NoVertexOnOther`, which is **AKR §9's conclusion**,
imported as prose and carried here as an explicit named hypothesis.  It is not
an axiom and nothing in this development proves it.

This is the whole of the project's remaining external input.  AKR §3's
"for convenience" clause — no three of the fourteen combined vertices collinear
— is **not** used: it was discharged for the pair count by
`RawConfig.raw_crossPairs_card_le_38`, and the counting layer above removes the
last place the point count needed it. -/
theorem points_le_38_of_no_vertex_on_boundary (R : Pair9) (h9 : NoVertexOnOther R) :
    (points9 R).ncard ≤ 38 := by
  rw [points9_ncard R h9]
  exact raw_crossPairs_card_le_38 (toRawPair R)

/-! ## The equality

The certificate, viewed as a `Pair9`, attains 38 — so 38 is exactly the
greatest value, not merely an upper bound.

This doubles as a **faithfulness check**, which is the one risk class the kernel
does not cover.  Lean proves theorems; it does not check that `points9` means
"the set of points where the two boundaries meet", or that `SimpleClosed` means
"simple heptagon".  Those are definitional choices a reader must judge.  Forcing
the definitions to produce exactly `38` on the known 38-crossing configuration
is evidence that they mean what they are claimed to mean. -/

/-- The lower-bound certificate as a `Pair9`. -/
noncomputable def certPair9 : Pair9 := ofRConfig9 certRConfig

/-- `certPair9` and `certRConfig` have the same fourteen vertices. -/
theorem certPair9_V : certPair9.V = certRConfig.V := rfl

theorem certPair9_card : (crossPairsOf certPair9.V).card = 38 := by
  rw [certPair9_V, crossPairsOf_RConfig]
  have h := certRConfig_ncard
  rw [pointsR_ncard] at h
  exact h

/-- The certificate's two boundaries meet in exactly 38 points. -/
theorem certPair9_ncard : (points9 certPair9).ncard = 38 := by
  rw [points9_ncard certPair9 (noVertexOnOther_ofRConfig _)]
  exact certPair9_card

/-- The boundary-intersection counts attained by pairs of point-set simple
heptagons satisfying (E9). -/
def attained9 : Set Nat :=
  { n | ∃ R : Pair9, NoVertexOnOther R ∧ (points9 R).ncard = n }

/-- **`f(7,7) = 38` modulo AKR §9 alone.**

38 is exactly the greatest number of points at which the boundaries of two
simple heptagons meet, where "simple" means simple **as a point set** — three
collinear vertices allowed, no general-position condition anywhere — and the
only hypothesis is (E9), AKR §9's conclusion.

This is an **equality**, not a bound, and it imports **no published lemma**.
AKR §3's unproved "for convenience" clause is not used.

It is **not** `f(7,7) = 38`: (E9) is assumed, not proved, and §9 is what would
discharge it.  The distinction matters and must not be blurred. -/
theorem isGreatest_38_of_E9 : IsGreatest attained9 38 := by
  refine ⟨⟨certPair9, noVertexOnOther_ofRConfig _, certPair9_ncard⟩, ?_⟩
  rintro n ⟨R, h9, rfl⟩
  exact points_le_38_of_no_vertex_on_boundary R h9

end AKR9
end Heptagon

#print axioms Heptagon.AKR9.mem_openSegmentP
#print axioms Heptagon.AKR9.sideP9_unique
#print axioms Heptagon.AKR9.mem_crossPairs9
#print axioms Heptagon.AKR9.cp9_injective
#print axioms Heptagon.AKR9.points9_eq_range
#print axioms Heptagon.AKR9.points9_finite
#print axioms Heptagon.AKR9.noVertexOnOther_ofRConfig
#print axioms Heptagon.AKR9.points_le_38_of_no_vertex_on_boundary
#print axioms Heptagon.AKR9.certPair9_ncard
#print axioms Heptagon.AKR9.isGreatest_38_of_E9
