import Mathlib.Analysis.Convex.Topology
import Mathlib.Analysis.Convex.Segment
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Topology.MetricSpace.HausdorffDistance

/-!
# Disjoint segments stay disjoint under a small perturbation

This file is independent of the rest of the development: it imports only
Mathlib, mentions no heptagon, and proves one fact about segments in a real
normed space.

**Why it is here.**  `RealPerturb` closes the openness half of AKR §3's
count-preservation step and names the other half: that *simplicity* survives
the perturbation.  Simplicity is `¬ ProperCross` on non-adjacent side pairs,
which is a **closed** condition, so no openness argument can supply it.  The
route that does work goes through point sets instead:

> two non-adjacent sides of a polygon that is simple *as a point set* are
> disjoint compact sets, hence at positive distance, hence still disjoint after
> a small enough perturbation of their four endpoints.

`exists_eps_disjoint_stable` below is exactly that statement, and it is the
mathematical content of the missing half.  What it does *not* yet do is
assemble the 21 non-adjacent pairs of a heptagon under a single `ε`; that is
`RealPerturb`'s `SimplePerturbable`, still open.

**The proof, in one line.**  Compact disjoint sets are separated by some
`r > 0`.  Perturbing the four endpoints by less than `r/3` moves every point of
each segment by less than `r/3`, because a point of `[a', b']` and the point of
`[a, b]` with the *same* convex parameters differ by
`‖α(a'-a) + β(b'-b)‖ ≤ α ε + β ε = ε`.  A shared point of the two perturbed
segments would then put two points of the originals within `2r/3 < r`.
-/

set_option autoImplicit false

namespace Heptagon
namespace SegmentStable

open Metric

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- A segment is compact: it is the convex hull of a two-element set. -/
theorem isCompact_segment (a b : E) : IsCompact (segment ℝ a b) := by
  rw [← convexHull_pair]
  exact ((Set.finite_singleton b).insert a).isCompact_convexHull (𝕜 := ℝ)

theorem isClosed_segment (a b : E) : IsClosed (segment ℝ a b) :=
  (isCompact_segment a b).isClosed

/-- **Two disjoint segments are separated by a positive distance.** -/
theorem exists_sep_of_disjoint {a b c d : E}
    (h : Disjoint (segment ℝ a b) (segment ℝ c d)) :
    ∃ r : ℝ, 0 < r ∧ ∀ x ∈ segment ℝ a b, ∀ y ∈ segment ℝ c d, r < dist x y := by
  -- `infDist · (segment c d)` is continuous, so it attains a minimum on the
  -- compact segment `[a,b]`; that minimum is positive because the minimising
  -- point is not in the closed set `[c,d]`.
  have hsne : (segment ℝ a b).Nonempty := ⟨a, left_mem_segment ℝ a b⟩
  have htne : (segment ℝ c d).Nonempty := ⟨c, left_mem_segment ℝ c d⟩
  obtain ⟨x₀, hx₀, hmin⟩ := (isCompact_segment a b).exists_isMinOn hsne
    (continuous_infDist_pt (s := segment ℝ c d)).continuousOn
  have hx₀t : x₀ ∉ segment ℝ c d := Set.disjoint_left.mp h hx₀
  have hpos : 0 < infDist x₀ (segment ℝ c d) :=
    ((isClosed_segment c d).notMem_iff_infDist_pos htne).mp hx₀t
  refine ⟨infDist x₀ (segment ℝ c d) / 2, by linarith, ?_⟩
  intro x hx y hy
  have h1 : infDist x₀ (segment ℝ c d) ≤ infDist x (segment ℝ c d) :=
    isMinOn_iff.mp hmin x hx
  have h2 : infDist x (segment ℝ c d) ≤ dist x y := infDist_le_dist_of_mem hy
  linarith

/-- Moving the two endpoints of a segment by at most `ε` moves the point with
given convex parameters by at most `ε`. -/
theorem dist_combo_le {α β : ℝ} (hα : 0 ≤ α) (hβ : 0 ≤ β) (hab : α + β = 1)
    {x x' y y' : E} {ε : ℝ} (hx : dist x' x ≤ ε) (hy : dist y' y ≤ ε) :
    dist (α • x' + β • y') (α • x + β • y) ≤ ε := by
  have hnx : ‖x' - x‖ ≤ ε := by rwa [← dist_eq_norm]
  have hny : ‖y' - y‖ ≤ ε := by rwa [← dist_eq_norm]
  have hkey : α • x' + β • y' - (α • x + β • y) = α • (x' - x) + β • (y' - y) := by
    simp only [smul_sub]; abel
  calc dist (α • x' + β • y') (α • x + β • y)
      = ‖α • (x' - x) + β • (y' - y)‖ := by rw [dist_eq_norm, hkey]
    _ ≤ ‖α • (x' - x)‖ + ‖β • (y' - y)‖ := norm_add_le _ _
    _ = α * ‖x' - x‖ + β * ‖y' - y‖ := by
        rw [norm_smul, norm_smul, Real.norm_of_nonneg hα, Real.norm_of_nonneg hβ]
    _ ≤ α * ε + β * ε := by
        have h1 : α * ‖x' - x‖ ≤ α * ε := mul_le_mul_of_nonneg_left hnx hα
        have h2 : β * ‖y' - y‖ ≤ β * ε := mul_le_mul_of_nonneg_left hny hβ
        linarith
    _ = ε := by rw [← add_mul, hab, one_mul]

/-- Every point of the perturbed segment is within `ε` of a point of the
original. -/
theorem exists_close_of_mem_segment {x x' y y' : E} {ε : ℝ}
    (hx : dist x' x ≤ ε) (hy : dist y' y ≤ ε)
    {p : E} (hp : p ∈ segment ℝ x' y') :
    ∃ q ∈ segment ℝ x y, dist p q ≤ ε := by
  rw [segment_eq_image₂] at hp
  obtain ⟨⟨α, β⟩, ⟨hα, hβ, hab⟩, rfl⟩ := hp
  refine ⟨α • x + β • y, ?_, dist_combo_le hα hβ hab hx hy⟩
  rw [segment_eq_image₂]
  exact ⟨(α, β), ⟨hα, hβ, hab⟩, rfl⟩

/-- **Disjointness of two segments is stable under a small enough perturbation
of their four endpoints.**

This is the fact that simplicity — a *closed* condition, and therefore out of
reach of the openness argument in `RealPerturb` — is nonetheless locally stable
at a configuration whose sides are genuinely disjoint. -/
theorem exists_eps_disjoint_stable {a b c d : E}
    (h : Disjoint (segment ℝ a b) (segment ℝ c d)) :
    ∃ ε : ℝ, 0 < ε ∧ ∀ a' b' c' d' : E,
      dist a' a ≤ ε → dist b' b ≤ ε → dist c' c ≤ ε → dist d' d ≤ ε →
      Disjoint (segment ℝ a' b') (segment ℝ c' d') := by
  obtain ⟨r, hr, hsep⟩ := exists_sep_of_disjoint h
  refine ⟨r / 3, by linarith, ?_⟩
  intro a' b' c' d' ha hb hc hd
  rw [Set.disjoint_left]
  intro p hp hq
  obtain ⟨x, hx, hpx⟩ := exists_close_of_mem_segment ha hb hp
  obtain ⟨y, hy, hpy⟩ := exists_close_of_mem_segment hc hd hq
  have hxy : r < dist x y := hsep x hx y hy
  have htri : dist x y ≤ dist x p + dist p y := dist_triangle x p y
  rw [dist_comm x p] at htri
  linarith

/-! ## What this gives, and what is still missing

**Gives.**  The mathematical content of simplicity preservation, over any real
normed space, with no hypothesis beyond the disjointness one starts from.  In
particular it needs **no general position**: it is exactly the tool the
openness argument cannot supply.

**Missing, and it is plumbing plus one definition.**

1. *A point-set notion of simplicity.*  This development defines simplicity by
   determinant signs (`Simple7`, `RConfig.simpleP`).  To apply the lemma above
   one needs, instead, that non-adjacent closed sides are **disjoint as sets** —
   which for a configuration in general position is
   `RealUpperBound.nonadjacent_disjointR`, but which at a *degenerate*
   configuration has to be assumed, because `not_properCrossR_iff_disjoint`
   needs the four endpoint determinants nonzero.  This is the `RawPair` type
   sketched in `docs/akr-9-1-obligation.md` §4.2.
2. *A single `ε` for all the pairs.*  A heptagon has `14` non-adjacent side
   pairs and a configuration has two heptagons, so one needs the minimum of
   finitely many `ε`s — routine, but not written.

Neither is a mathematical obstacle; both are stated here so that the remaining
distance to `RealPerturb.SimplePerturbable` is legible rather than vague.
-/

end SegmentStable
end Heptagon

#print axioms Heptagon.SegmentStable.isCompact_segment
#print axioms Heptagon.SegmentStable.exists_sep_of_disjoint
#print axioms Heptagon.SegmentStable.dist_combo_le
#print axioms Heptagon.SegmentStable.exists_close_of_mem_segment
#print axioms Heptagon.SegmentStable.exists_eps_disjoint_stable
