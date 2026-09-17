import RealPerturb
import SegmentStable

/-!
# Point-set simple heptagons, and AKR §3's count-preservation step

This file closes the obligation `RealPerturb.SimplePerturbable` left open, for
configurations whose two heptagons are simple **as point sets**.

## The chain

`RealPerturb` gave two of the three things needed to approximate an arbitrary
configuration by one the upper bound applies to:

* the generic configurations are **dense** (`RealConfig.exists_near_generic`);
* keeping every crossing is an **open** condition, so no crossing is lost
  (`RealPerturb.isOpen_Keeps`).

What was missing was the third: that the approximating configuration is
**simple**, so that it is an `RConfig` at all.  Simplicity as this development
states it — `¬ ProperCrossR` on non-adjacent side pairs — is a *closed*
condition, so it cannot come from an openness argument.  `SegmentStable`
supplies what does: disjoint segments stay disjoint under a small enough
perturbation.

Assembling those three gives `raw_simplePerturbable`, and hence
`crossPairsOf_card_le_38` **for an arbitrary `RawPair`** — no general position
assumed anywhere.  The last step is the one place the two notions of simplicity
meet: at the *approximating* configuration general position holds, so
`RealUpperBound.not_properCrossR_iff_disjoint` converts point-set disjointness
into the determinant-sign form `RConfig` wants.

## What `RawPair` does and does not assume

It assumes each heptagon's non-adjacent closed sides are **disjoint**, which is
simplicity for a closed polygonal curve, and nothing else: no general position,
no three-vertices-non-collinear, no vertex of one polygon off the other's
boundary.

It is therefore **not** AKR §9.  §9 is what rules out a vertex of one polygon
lying on the other polygon's boundary, and nothing here does that.  What is
closed here is §3's clause — the collinearity one — for the *crossing-pair*
count.  The gap that remains between `crossPairsOf` and the number of
intersection **points** at a degenerate configuration is discussed at the end.
-/

set_option autoImplicit false

namespace Heptagon
namespace RawConfig

open Heptagon.Geometry Heptagon.RealConfig Heptagon.RealUpperBound
open Heptagon.RealPerturb Heptagon.SegmentStable
open Heptagon.ResidualSym

open scoped Classical

/-! ## One `ε` for a whole polygon -/

/-- **Polygon-level stability.**  If every non-adjacent pair of sides of a
heptagon is disjoint, there is a single `ε > 0` that keeps all of them disjoint.

The content is `SegmentStable.exists_eps_disjoint_stable` applied to each of the
finitely many pairs, with the minimum of the resulting `ε`s taken over
`Fin 7 × Fin 7`. -/
theorem exists_eps_disj_stable_poly (W : Fin 7 → ℝ × ℝ)
    (hdisj : ∀ i j : Fin 7, ¬ LowerBound.Adjacent i j →
      Disjoint (segment ℝ (W i) (W (i+1))) (segment ℝ (W j) (W (j+1)))) :
    ∃ ε : ℝ, 0 < ε ∧ ∀ W' : Fin 7 → ℝ × ℝ, (∀ k, dist (W' k) (W k) ≤ ε) →
      ∀ i j : Fin 7, ¬ LowerBound.Adjacent i j →
      Disjoint (segment ℝ (W' i) (W' (i+1))) (segment ℝ (W' j) (W' (j+1))) := by
  classical
  -- Prove it for an arbitrary finite set of pairs, by induction on that set,
  -- then instantiate at `univ`.  Inducting rather than taking a `Finset.inf'`
  -- of a `dite`-defined function keeps every case split inside a proof, where
  -- `by_cases` handles it, instead of inside a definition.
  have key : ∀ S : Finset (Fin 7 × Fin 7), ∃ ε : ℝ, 0 < ε ∧
      ∀ W' : Fin 7 → ℝ × ℝ, (∀ k, dist (W' k) (W k) ≤ ε) →
        ∀ p ∈ S, ¬ LowerBound.Adjacent p.1 p.2 →
        Disjoint (segment ℝ (W' p.1) (W' (p.1+1)))
          (segment ℝ (W' p.2) (W' (p.2+1))) := by
    intro S
    induction S using Finset.induction_on with
    | empty => exact ⟨1, one_pos, by simp⟩
    | insert q S _ ih =>
        obtain ⟨ε₁, hε₁, h₁⟩ := ih
        by_cases hadj : ¬ LowerBound.Adjacent q.1 q.2
        · obtain ⟨ε₂, hε₂, h₂⟩ := exists_eps_disjoint_stable (hdisj q.1 q.2 hadj)
          refine ⟨min ε₁ ε₂, lt_min hε₁ hε₂, ?_⟩
          intro W' hW' p hp hpadj
          rcases Finset.mem_insert.mp hp with rfl | hpS
          · exact h₂ (W' p.1) (W' (p.1+1)) (W' p.2) (W' (p.2+1))
              (le_trans (hW' _) (min_le_right _ _)) (le_trans (hW' _) (min_le_right _ _))
              (le_trans (hW' _) (min_le_right _ _)) (le_trans (hW' _) (min_le_right _ _))
          · exact h₁ W' (fun k => le_trans (hW' k) (min_le_left _ _)) p hpS hpadj
        · refine ⟨ε₁, hε₁, ?_⟩
          intro W' hW' p hp hpadj
          rcases Finset.mem_insert.mp hp with rfl | hpS
          · exact absurd hpadj hadj
          · exact h₁ W' hW' p hpS hpadj
  obtain ⟨ε, hε, h⟩ := key Finset.univ
  exact ⟨ε, hε, fun W' hW' i j hij => h W' hW' (i, j) (Finset.mem_univ _) hij⟩

/-! ## A pair of point-set simple heptagons -/

/-- **Two heptagons, simple as point sets, and nothing else.**

`disjP` and `disjQ` say that non-adjacent closed sides of each polygon are
disjoint — which is exactly what it means for a closed polygonal curve not to
cross itself.  There is deliberately **no** general-position field: that is the
hypothesis this file exists to remove. -/
structure RawPair where
  /-- The fourteen vertices: `P` is `0..6`, `Q` is `7..13`. -/
  V : Fin 14 → ℝ × ℝ
  /-- `P` does not cross itself, as a point set. -/
  disjP : ∀ i j : Fin 7, ¬ LowerBound.Adjacent i j →
    Disjoint (segment ℝ (V (pP i)) (V (pP (i+1))))
      (segment ℝ (V (pP j)) (V (pP (j+1))))
  /-- `Q` does not cross itself, as a point set. -/
  disjQ : ∀ i j : Fin 7, ¬ LowerBound.Adjacent i j →
    Disjoint (segment ℝ (V (pQ i)) (V (pQ (i+1))))
      (segment ℝ (V (pQ j)) (V (pQ (j+1))))

/-- **Non-vacuity.**  A configuration in general position whose halves are
simple in the determinant-sign sense is a `RawPair`; the bridge is
`RealUpperBound.nonadjacent_disjointR`. -/
def ofRConfig (R : RConfig) : RawPair where
  V := R.V
  disjP := by
    intro i j hij
    exact nonadjacent_disjointR (W := fun i : Fin 7 => R.V (pP i))
      (fun a b c hab hbc hac => gpP R a b c hab hbc hac) (fun a b h => R.simpleP a b h) i j hij
  disjQ := by
    intro i j hij
    exact nonadjacent_disjointR (W := fun i : Fin 7 => R.V (pQ i))
      (fun a b c hab hbc hac => gpQ R a b c hab hbc hac) (fun a b h => R.simpleQ a b h) i j hij

/-! ## The approximating `RConfig` -/

/-- **`SimplePerturbable` holds for every `RawPair`.**

Given `ε > 0`: intersect the open set `Metric.ball V δ ∩ Keeps V` — nonempty,
since it contains `V` — with the dense set of generic configurations, where `δ`
is small enough both to be inside `ε` and to preserve the disjointness of every
non-adjacent side pair in both halves.  The resulting `W` is generic, so
`RealUpperBound.not_properCrossR_iff_disjoint` turns its point-set disjointness
into `¬ ProperCrossR`, which is what `RConfig` asks for. -/
theorem raw_simplePerturbable (R : RawPair) : SimplePerturbable R.V := by
  intro ε hε
  -- one δ for each half
  obtain ⟨δP, hδP, hstabP⟩ :=
    exists_eps_disj_stable_poly (fun i : Fin 7 => R.V (pP i)) R.disjP
  obtain ⟨δQ, hδQ, hstabQ⟩ :=
    exists_eps_disj_stable_poly (fun i : Fin 7 => R.V (pQ i)) R.disjQ
  -- a δ inside all three constraints; strict, so that `dist ≤ δ` follows
  obtain ⟨δ, hδ0, hδε, hδP', hδQ'⟩ : ∃ δ : ℝ, 0 < δ ∧ δ ≤ ε ∧ δ ≤ δP ∧ δ ≤ δQ :=
    ⟨min ε (min δP δQ), lt_min hε (lt_min hδP hδQ), min_le_left _ _,
      le_trans (min_le_right _ _) (min_le_left _ _),
      le_trans (min_le_right _ _) (min_le_right _ _)⟩
  have hdense : Dense (⋂ p : Fin 14 × Fin 14 × Fin 14, NZ p) :=
    dense_iInter_of_isOpen isOpen_NZ dense_NZ
  have hopen : IsOpen (Metric.ball R.V δ ∩ Keeps R.V) :=
    Metric.isOpen_ball.inter (isOpen_Keeps R.V)
  have hne : (Metric.ball R.V δ ∩ Keeps R.V).Nonempty :=
    ⟨R.V, Metric.mem_ball_self hδ0, mem_Keeps_self R.V⟩
  obtain ⟨W, ⟨hWball, hWkeep⟩, hWgen⟩ := hdense.inter_open_nonempty _ hopen hne
  have hWdist : dist W R.V < δ := Metric.mem_ball.mp hWball
  have hgp : ∀ i j k : Fin 14, i ≠ j → j ≠ k → i ≠ k →
      orientR (W i) (W j) (W k) ≠ 0 := by
    intro i j k hij hjk hik
    exact (Set.mem_iInter.mp hWgen (i, j, k)) hij hjk hik
  -- per-vertex bounds, from the sup metric on `Fin 14 → ℝ × ℝ`
  have hvert : ∀ a : Fin 14, dist (W a) (R.V a) ≤ δ := fun a =>
    le_of_lt (lt_of_le_of_lt (dist_le_pi_dist W R.V a) hWdist)
  -- the two halves stay disjoint
  have hdP := hstabP (fun i : Fin 7 => W (pP i))
    (fun k => le_trans (hvert (pP k)) hδP')
  have hdQ := hstabQ (fun i : Fin 7 => W (pQ i))
    (fun k => le_trans (hvert (pQ k)) hδQ')
  -- and disjointness plus general position is `¬ ProperCrossR`
  refine ⟨{ V := W
            gp := hgp
            simpleP := ?_
            simpleQ := ?_ }, ?_, hWkeep⟩
  · intro i j hij
    have hij' : i ≠ j ∧ i ≠ j+1 ∧ i+1 ≠ j ∧ i+1 ≠ j+1 := by revert hij; revert i j; decide
    refine (not_properCrossR_iff_disjoint _ _ _ _
      ?_ ?_ ?_ ?_).mpr (hdP i j hij)
    · rw [← orientR_eq_det]
      exact hgp (pP i) (pP (i+1)) (pP j)
        (fun h => (fin7_ne_succ i) (pP_inj h)) (fun h => hij'.2.2.1 (pP_inj h))
        (fun h => hij'.1 (pP_inj h))
    · rw [← orientR_eq_det]
      exact hgp (pP i) (pP (i+1)) (pP (j+1))
        (fun h => (fin7_ne_succ i) (pP_inj h)) (fun h => hij'.2.2.2 (pP_inj h))
        (fun h => hij'.2.1 (pP_inj h))
    · rw [← orientR_eq_det]
      exact hgp (pP j) (pP (j+1)) (pP i)
        (fun h => (fin7_ne_succ j) (pP_inj h)) (fun h => hij'.2.1.symm (pP_inj h))
        (fun h => hij'.1.symm (pP_inj h))
    · rw [← orientR_eq_det]
      exact hgp (pP j) (pP (j+1)) (pP (i+1))
        (fun h => (fin7_ne_succ j) (pP_inj h)) (fun h => hij'.2.2.2.symm (pP_inj h))
        (fun h => hij'.2.2.1.symm (pP_inj h))
  · intro i j hij
    have hij' : i ≠ j ∧ i ≠ j+1 ∧ i+1 ≠ j ∧ i+1 ≠ j+1 := by revert hij; revert i j; decide
    refine (not_properCrossR_iff_disjoint _ _ _ _
      ?_ ?_ ?_ ?_).mpr (hdQ i j hij)
    · rw [← orientR_eq_det]
      exact hgp (pQ i) (pQ (i+1)) (pQ j)
        (fun h => (fin7_ne_succ i) (pQ_inj h)) (fun h => hij'.2.2.1 (pQ_inj h))
        (fun h => hij'.1 (pQ_inj h))
    · rw [← orientR_eq_det]
      exact hgp (pQ i) (pQ (i+1)) (pQ (j+1))
        (fun h => (fin7_ne_succ i) (pQ_inj h)) (fun h => hij'.2.2.2 (pQ_inj h))
        (fun h => hij'.2.1 (pQ_inj h))
    · rw [← orientR_eq_det]
      exact hgp (pQ j) (pQ (j+1)) (pQ i)
        (fun h => (fin7_ne_succ j) (pQ_inj h)) (fun h => hij'.2.1.symm (pQ_inj h))
        (fun h => hij'.1.symm (pQ_inj h))
    · rw [← orientR_eq_det]
      exact hgp (pQ j) (pQ (j+1)) (pQ (i+1))
        (fun h => (fin7_ne_succ j) (pQ_inj h)) (fun h => hij'.2.2.2.symm (pQ_inj h))
        (fun h => hij'.2.2.1.symm (pQ_inj h))
  · exact lt_of_lt_of_le hWdist hδε

/-- **The crossing-pair bound for an arbitrary pair of point-set simple
heptagons — no general position assumed.**

This is AKR §3's clause discharged, at the level of crossing pairs. -/
theorem raw_crossPairs_card_le_38 (R : RawPair) : (crossPairsOf R.V).card ≤ 38 :=
  crossPairsOf_card_le_38_of_simplePerturbable (raw_simplePerturbable R)

/-! ## What is closed, and what is not

**Closed.**  `RealPerturb.SimplePerturbable` is no longer an open obligation for
any configuration whose two heptagons are simple as point sets:
`raw_simplePerturbable` proves it.  So the crossing-pair count of such a
configuration is at most `38` **with no general-position hypothesis at all** —
`raw_crossPairs_card_le_38`.  That is AKR §3's unproved "for convenience"
clause, discharged for the crossing-pair count, by perturbation rather than by
case analysis.

**Not closed, and there are two things.**

*The count, at a degenerate configuration.*  `crossPairsOf` counts side
**pairs**.  `RealUpperBound.pointsR_ncard` identifies that with the number of
intersection **points** only in general position.  Without it one point can
belong to several side pairs — a vertex resting on a vertex is a single point
belonging to four pairs — so `raw_crossPairs_card_le_38` bounds pairs, and
bounding *points* by `38` for a `RawPair` needs the counting layer redone.  Note
the direction: pairs over-count points, so a bound on pairs is the *harder*
statement, and the missing step is an inequality in the convenient direction.
It is not written.

*AKR §9.*  `RawPair` allows a vertex of one polygon to lie on the other's
boundary; nothing here removes that, and nothing here needs to, because the
bound above is about side pairs.  The reason §9 matters is precisely the
counting layer above.  §9 remains an import, untouched, and
`docs/akr-9-1-obligation.md` records why it is not being attempted.

So: `f(7,7) = 38` is still not a Lean theorem.  What changed is that the
general-position hypothesis is no longer needed for the *combinatorial* bound —
only for the identification of pairs with points.
-/

end RawConfig
end Heptagon

#print axioms Heptagon.RawConfig.exists_eps_disj_stable_poly
#print axioms Heptagon.RawConfig.ofRConfig
#print axioms Heptagon.RawConfig.raw_simplePerturbable
#print axioms Heptagon.RawConfig.raw_crossPairs_card_le_38
