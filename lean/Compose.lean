import E9Directions
import SwapPQ

/-!
# Composing all three phases of §9

§9 has to achieve three things at once:

* **(C)** no vertex–vertex coincidence — §9.1;
* **(D)** no `Q`-vertex on a `P`-side line — §9.2 on the `P`-sides;
* **(D′)** no `P`-vertex on a `Q`-side line — §9.2 on the `Q`-sides.

Each is reached separately in `E9Directions`, `Pair9Shift` and `SwapPQ`.
Composing them is not automatic: every move can undo what an earlier phase
achieved. Every such conflict is the same finite avoidance, so the composition
works — provided each obligation *names the shifts it forbids* instead of
choosing its own, which is what `Pair9Shift.affine_bad_set` and the
`exists_*_bad_set` lemmas are for.

## What is still missing, exactly

`exists_all_three_le_38` reaches a configuration with **at most 38** points.
That is not `(A9)`, which bounds the **original**. The gap reduces to one
inequality, and §6 below makes it explicit:

>  `|crossPairsOf R| + |degSetOf R| + |degSetQ R| ≤ 38`

would suffice (`points9_le_38_of_sum_bound`), and the chain would give it if
the quantity `crossPairs + degSetOf + degSetQ` were **non-decreasing** along
it — the endpoint has both index sets empty and `|crossPairs| ≤ 38`.

It is not proved, and the obstruction is identified rather than vague. A step
that clears `P`-side `i` gains at least `|D|` crossing pairs
(`Pair9Shift.count_grows_from_interior`), which pays for the `|D|` index pairs
it removes. But the step also **rotates the neighbouring sides** `i ± 1`, and a
degeneracy sitting on one of *those* can be destroyed with no compensating
gain: that degenerate point was a genuine intersection, and after the rotation
it may simply be gone. So the sum can fall.

That is precisely the case AKR's averaging identity exists to handle — over
the two shift directions the degenerate contributions sum to twice the
original, so one direction does not lose. `TiltedShift.exists_sign_not_decreasing`
is that statement and is proved; applying it to the *neighbours'* degeneracies
rather than the shifted side's own is the unwritten work.

This file is a leaf.
-/

set_option autoImplicit false

namespace Heptagon
namespace Compose

open Heptagon.AKR9 Heptagon.ResidualSym Heptagon.RealConfig
open Heptagon.RealUpperBound Heptagon.RealPerturb
open Heptagon.Pair9Shift Heptagon.E9Directions Heptagon.SwapPQ
open Heptagon.DegBound

/-! ## 1. One `P`-side shift holding both other invariants -/

theorem degStep_preserving_two (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ)
    (hu : V (pP (i + 1)) - V (pP i) ≠ 0) (j₀ : Fin 7)
    (hj₀ : (i, j₀) ∈ degSetOf V) (hc : coincSet V = ∅) (hq : degSetQ V = ∅)
    {δtop : ℝ} (hδtop : 0 < δtop) :
    ∃ δ : ℝ, 0 < δ ∧ δ < δtop ∧
      (degSetOf (RotationLaw.shiftV V i t δ)).card < (degSetOf V).card ∧
      coincSet (RotationLaw.shiftV V i t δ) = ∅ ∧
      degSetQ (RotationLaw.shiftV V i t δ) = ∅ := by
  classical
  obtain ⟨badC, hbadC⟩ := exists_coinc_bad_set V i t hu hc
  obtain ⟨badQ, hbadQ⟩ := exists_degSetQ_bad_set V i t hq
  obtain ⟨δ, hpos, hlt, hav, hcard⟩ :=
    degSet_card_lt_avoiding V i t hu j₀ hj₀ (badC ∪ badQ) hδtop
  exact ⟨δ, hpos, hlt, hcard,
    hbadC δ (fun h => hav (Finset.mem_union_left _ h)),
    hbadQ δ (fun h => hav (Finset.mem_union_right _ h))⟩

/-! ## 2. The same on a `Pair9`, and the induction -/

theorem pair9_degStep_two (R : Pair9) (t : ℝ) (i j₀ : Fin 7)
    (hj₀ : (i, j₀) ∈ degSetOf R.V) (hc : coincSet R.V = ∅) (hq : degSetQ R.V = ∅) :
    ∃ (δ : ℝ) (R' : Pair9), R'.V = RotationLaw.shiftV R.V i t δ ∧
      (degSetOf R'.V).card < (degSetOf R.V).card ∧
      coincSet R'.V = ∅ ∧ degSetQ R'.V = ∅ ∧
      crossPairsOf R.V ⊆ crossPairsOf R'.V := by
  have hu : R.V (pP (i + 1)) - R.V (pP i) ≠ 0 :=
    sub_ne_zero.mpr (Ne.symm (R.simpleP.1 i))
  obtain ⟨δ₁, h₁, hsimp⟩ :=
    exists_delta0_simpleClosed (fun m => R.V (pP m)) R.simpleP i t
  obtain ⟨δ₂, h₂, hmono⟩ := crossPairsOf_mono_shift R.V i t
  obtain ⟨δ, hpos, hlt, hcard, hc', hq'⟩ :=
    degStep_preserving_two R.V i t hu j₀ hj₀ hc hq (lt_min h₁ h₂)
  have hd1 : |δ| ≤ δ₁ := by
    rw [abs_of_pos hpos]; exact le_of_lt (lt_of_lt_of_le hlt (min_le_left _ _))
  have hd2 : |δ| < δ₂ := by
    rw [abs_of_pos hpos]; exact lt_of_lt_of_le hlt (min_le_right _ _)
  have hP : AKR9.SimpleClosed
      (fun k : Fin 7 => RotationLaw.shiftV R.V i t δ (pP k)) := by
    simpa only [shiftV_pP] using hsimp δ hd1
  have hQ : AKR9.SimpleClosed
      (fun k : Fin 7 => RotationLaw.shiftV R.V i t δ (pQ k)) := by
    have hEq : (fun k : Fin 7 => RotationLaw.shiftV R.V i t δ (pQ k))
        = fun k => R.V (pQ k) := by
      funext k; exact RotationLaw.shiftV_Q R.V i t δ k
    rw [hEq]; exact R.simpleQ
  exact ⟨δ, ⟨RotationLaw.shiftV R.V i t δ, hP, hQ⟩, rfl, hcard, hc', hq', hmono δ hd2⟩

/-- **Phase D, holding C and D′.** -/
theorem exists_degFree_holding_two (t : ℝ) :
    ∀ (n : ℕ) (R : Pair9), coincSet R.V = ∅ → degSetQ R.V = ∅ →
      (degSetOf R.V).card = n →
      ∃ R' : Pair9, degSetOf R'.V = ∅ ∧ coincSet R'.V = ∅ ∧ degSetQ R'.V = ∅ ∧
        (crossPairsOf R.V).card ≤ (crossPairsOf R'.V).card := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    intro R hc hq hn
    by_cases h : degSetOf R.V = ∅
    · exact ⟨R, h, hc, hq, le_rfl⟩
    · obtain ⟨p, hp⟩ := Finset.nonempty_iff_ne_empty.mpr h
      obtain ⟨δ, R', hRV, hlt, hc', hq', hmono⟩ :=
        pair9_degStep_two R t p.1 p.2 hp hc hq
      obtain ⟨R'', hclear, hc'', hq'', hcard⟩ :=
        ih (degSetOf R'.V).card (hn ▸ hlt) R' hc' hq' rfl
      exact ⟨R'', hclear, hc'', hq'', le_trans (Finset.card_le_card hmono) hcard⟩

#print axioms degStep_preserving_two
#print axioms exists_degFree_holding_two

/-! ## 3. Phase D′, transported through the exchange

Shifting the `Q`-sides is shifting the `P`-sides of the exchanged
configuration. The exchange carries all three invariants:

>  `coincSet` transposes, `degSetOf ↔ degSetQ`, `crossPairsOf` transposes.

So phase **D′** is phase **D** applied to `swapV`, with nothing reproved. -/

theorem coincSet_swap_empty (V : Fin 14 → ℝ × ℝ) :
    coincSet (swapV V) = ∅ ↔ coincSet V = ∅ := by
  classical
  constructor <;> intro h <;> rw [Finset.eq_empty_iff_forall_notMem] at h ⊢ <;>
    intro p hp <;>
    simp only [coincSet, Finset.mem_filter, Finset.mem_univ, true_and] at hp
  · exact h (p.2, p.1) (by
      simp only [coincSet, Finset.mem_filter, Finset.mem_univ, true_and,
        swapV_pP, swapV_pQ]
      exact hp.symm)
  · exact h (p.2, p.1) (by
      simp only [coincSet, Finset.mem_filter, Finset.mem_univ, true_and]
      rw [swapV_pP, swapV_pQ] at hp
      exact hp.symm)

theorem degSetQ_swap (V : Fin 14 → ℝ × ℝ) : degSetQ (swapV V) = degSetOf V := by
  rw [degSetQ_eq_degSetOf_swap, swapV_involutive]

/-- **Phase D′, holding C and D.**  From a `Pair9` that is coincidence-free and
has no `Q`-vertex on a `P`-side line, finitely many shifts of the **`Q`-sides**
reach one with no `P`-vertex on a `Q`-side line either — all three invariants,
count carried. -/
theorem exists_degQFree_holding_two (R : Pair9) (t : ℝ)
    (hc : coincSet R.V = ∅) (hd : degSetOf R.V = ∅) :
    ∃ R' : Pair9, coincSet R'.V = ∅ ∧ degSetOf R'.V = ∅ ∧ degSetQ R'.V = ∅ ∧
      (crossPairsOf R.V).card ≤ (crossPairsOf R'.V).card := by
  obtain ⟨Rs, hRs⟩ := exists_swapped_pair9 R
  have hcs : coincSet Rs.V = ∅ := by rw [hRs]; exact (coincSet_swap_empty R.V).mpr hc
  have hqs : degSetQ Rs.V = ∅ := by rw [hRs, degSetQ_swap]; exact hd
  obtain ⟨Rs', hclear, hc', hq', hcard⟩ :=
    exists_degFree_holding_two t _ Rs hcs hqs rfl
  obtain ⟨R', hR'⟩ := exists_swapped_pair9 Rs'
  refine ⟨R', ?_, ?_, ?_, ?_⟩
  · rw [hR']; exact (coincSet_swap_empty Rs'.V).mpr hc'
  · rw [hR', ← degSetQ_eq_degSetOf_swap]; exact hq'
  · rw [hR', degSetQ_swap]; exact hclear
  · calc (crossPairsOf R.V).card
        = (crossPairsOf (swapV R.V)).card := (crossPairsOf_swap_card R.V).symm
      _ = (crossPairsOf Rs.V).card := by rw [hRs]
      _ ≤ (crossPairsOf Rs'.V).card := hcard
      _ = (crossPairsOf (swapV Rs'.V)).card := (crossPairsOf_swap_card Rs'.V).symm
      _ = (crossPairsOf R'.V).card := by rw [hR']

/-! ## 4. All three phases -/

/-- **§9's three goals, together.**  From **any** `Pair9` — two simple
heptagons, nothing else assumed — finitely many moves and tilted shifts reach a
`Pair9` with

* no vertex–vertex coincidence,
* no `Q`-vertex on any `P`-side line,
* no `P`-vertex on any `Q`-side line,

and **at least as many crossing pairs** as the original.

The three phases run in order and each holds what the earlier ones achieved,
because every obligation is a finite set of forbidden shifts and the union of
finitely many finite sets is finite. -/
theorem exists_all_three (R : Pair9) (t : ℝ) :
    ∃ R' : Pair9, coincSet R'.V = ∅ ∧ degSetOf R'.V = ∅ ∧ degSetQ R'.V = ∅ ∧
      (crossPairsOf R.V).card ≤ (crossPairsOf R'.V).card := by
  obtain ⟨R₁, hc₁, hcard₁⟩ := exists_coincidence_free R
  obtain ⟨R₂, hd₂, hc₂, hcard₂⟩ :=
    E9Directions.exists_degFree_of_coincFree t _ R₁ hc₁ rfl
  obtain ⟨R₃, hc₃, hd₃, hq₃, hcard₃⟩ := exists_degQFree_holding_two R₂ t hc₂ hd₂
  exact ⟨R₃, hc₃, hd₃, hq₃, le_trans hcard₁ (le_trans hcard₂ hcard₃)⟩

#print axioms coincSet_swap_empty
#print axioms exists_degQFree_holding_two
#print axioms exists_all_three

/-! ## 5. The output really has no degeneracies — and so at most 38 points

`degSetOf` and `degSetQ` are about *lines*, which is stronger than being about
sides. So with both empty, **no vertex of either polygon can be an intersection
point at all**, `degPts` is empty, and `DegBound`'s `38 + d` collapses to
`38`. -/

theorem degP_empty_of_degSetQ_empty (R : Pair9) (h : degSetQ R.V = ∅) :
    degP R = ∅ := by
  ext x
  simp only [degP, Set.mem_inter_iff, Set.mem_range, Set.mem_empty_iff_false,
    iff_false, not_and]
  rintro hx ⟨i, rfl⟩
  obtain ⟨j, hj⟩ := Set.mem_iUnion.mp hx.2
  have hzero : orientR (R.V (pQ j)) (R.V (pQ (j + 1))) (R.V (pP i)) = 0 := by
    rw [← off_eq_orientR]
    exact off_eq_zero_of_mem_segment hj
  have hmem : (j, i) ∈ degSetQ R.V := by
    simp only [degSetQ, Finset.mem_filter, Finset.mem_univ, true_and]
    exact hzero
  rw [h] at hmem
  exact absurd hmem (Finset.notMem_empty _)

theorem degPts_empty_of_invariants (R : Pair9)
    (hd : degSetOf R.V = ∅) (hq : degSetQ R.V = ∅) : degPts R = ∅ := by
  rw [← degP_union_degQ, degP_empty_of_degSetQ_empty R hq,
    degQ_empty_of_degSet_empty R hd, Set.union_empty]

/-- **The output satisfies `(A9)`'s conclusion.**  A `Pair9` with no
`Q`-vertex on a `P`-side line and no `P`-vertex on a `Q`-side line has at most
**38** boundary intersection points — `DegBound`'s `38 + d` with `d = 0`. -/
theorem points9_le_38_of_invariants (R : Pair9) (hfin : (points9 R).Finite)
    (hd : degSetOf R.V = ∅) (hq : degSetQ R.V = ∅) :
    (points9 R).ncard ≤ 38 := by
  have h := points9_ncard_le_38_add_deg' R hfin
  rw [degPts_empty_of_invariants R hd hq] at h
  simpa using h

/-- **§9's target, reached.**  From any `Pair9` there is a reachable `Pair9`
which is degeneracy-free in every sense, has **at most 38** intersection
points, and has at least as many crossing pairs as the original. -/
theorem exists_all_three_le_38 (R : Pair9) (t : ℝ) :
    ∃ R' : Pair9, coincSet R'.V = ∅ ∧ degSetOf R'.V = ∅ ∧ degSetQ R'.V = ∅ ∧
      (crossPairsOf R.V).card ≤ (crossPairsOf R'.V).card ∧
      ((points9 R').Finite → (points9 R').ncard ≤ 38) := by
  obtain ⟨R', hc, hd, hq, hcard⟩ := exists_all_three R t
  exact ⟨R', hc, hd, hq, hcard, fun hfin => points9_le_38_of_invariants R' hfin hd hq⟩

#print axioms degP_empty_of_degSetQ_empty
#print axioms points9_le_38_of_invariants
#print axioms exists_all_three_le_38

/-! ## 6. The degenerate points are bounded by the index sets

`degPts` is a set of *points*; `degSetOf` and `degSetQ` are `Finset`s of index
pairs. The chain carries the latter, so the two have to be related. A
degenerate point **is** a vertex, and its index determines it, so the count of
points is bounded by the count of indices. -/

/-- The `Q`-vertices that are degenerate. -/
noncomputable def degIdxQ (V : Fin 14 → ℝ × ℝ) : Finset (Fin 7) :=
  (degSetOf V).image Prod.snd

/-- The `P`-vertices that are degenerate. -/
noncomputable def degIdxP (V : Fin 14 → ℝ × ℝ) : Finset (Fin 7) :=
  (degSetQ V).image Prod.snd

theorem degPts_subset (R : Pair9) :
    degPts R ⊆ ((degIdxQ R.V).image (fun j => R.V (pQ j))
      ∪ (degIdxP R.V).image (fun i => R.V (pP i)) : Finset (ℝ × ℝ)) := by
  classical
  rintro x ⟨hx, hv⟩
  rcases hv with ⟨i, rfl⟩ | ⟨j, rfl⟩
  · -- a `P`-vertex: it lies on some `Q`-side, so on that side's line
    obtain ⟨j, hj⟩ := Set.mem_iUnion.mp hx.2
    refine Finset.mem_coe.mpr (Finset.mem_union_right _ (Finset.mem_image.mpr ⟨i, ?_, rfl⟩))
    refine Finset.mem_image.mpr ⟨(j, i), ?_, rfl⟩
    simp only [degSetQ, Finset.mem_filter, Finset.mem_univ, true_and]
    rw [← off_eq_orientR]
    exact off_eq_zero_of_mem_segment hj
  · -- a `Q`-vertex: it lies on some `P`-side
    obtain ⟨k, hk⟩ := Set.mem_iUnion.mp hx.1
    refine Finset.mem_coe.mpr (Finset.mem_union_left _ (Finset.mem_image.mpr ⟨j, ?_, rfl⟩))
    refine Finset.mem_image.mpr ⟨(k, j), ?_, rfl⟩
    simp only [degSetOf, Finset.mem_filter, Finset.mem_univ, true_and]
    rw [← off_eq_orientR]
    exact off_eq_zero_of_mem_segment hk

/-- **`|degPts| ≤ |degSetOf| + |degSetQ|`.** -/
theorem degPts_ncard_le (R : Pair9) :
    (degPts R).ncard ≤ (degSetOf R.V).card + (degSetQ R.V).card := by
  classical
  set S : Finset (ℝ × ℝ) := (degIdxQ R.V).image (fun j => R.V (pQ j))
    ∪ (degIdxP R.V).image (fun i => R.V (pP i)) with hS
  have hcoe : ((S : Finset (ℝ × ℝ)) : Set (ℝ × ℝ)).ncard = S.card := by
    simp [Set.ncard, Set.encard_eq_coe_toFinset_card]
  calc (degPts R).ncard
      ≤ ((S : Finset (ℝ × ℝ)) : Set (ℝ × ℝ)).ncard :=
        Set.ncard_le_ncard (degPts_subset R) (Finset.finite_toSet _)
    _ = S.card := hcoe
    _ ≤ ((degIdxQ R.V).image (fun j => R.V (pQ j))).card
          + ((degIdxP R.V).image (fun i => R.V (pP i))).card := Finset.card_union_le _ _
    _ ≤ (degIdxQ R.V).card + (degIdxP R.V).card :=
        Nat.add_le_add Finset.card_image_le Finset.card_image_le
    _ ≤ (degSetOf R.V).card + (degSetQ R.V).card :=
        Nat.add_le_add Finset.card_image_le Finset.card_image_le

/-- **The bound the chain would need.**  With `|degPts| ≤ |degSetOf| + |degSetQ|`
in hand, `|points9 R| ≤ 38` follows from

>  `|crossPairsOf R| + |degSetOf R| + |degSetQ R| ≤ 38`,

which is what a chain preserving `crossPairs + degSetOf + degSetQ` would give,
since the endpoint has both index sets empty and `|crossPairs| ≤ 38`.

Stated as an implication because the antecedent is **not proved**: see the
module note. -/
theorem points9_le_38_of_sum_bound (R : Pair9) (hfin : (points9 R).Finite)
    (h : (crossPairsOf R.V).card + (degSetOf R.V).card + (degSetQ R.V).card ≤ 38) :
    (points9 R).ncard ≤ 38 := by
  calc (points9 R).ncard
      ≤ (crossPairsOf R.V).card + (degPts R).ncard :=
        points9_ncard_le_crossPairs_add_deg R hfin
    _ ≤ (crossPairsOf R.V).card + ((degSetOf R.V).card + (degSetQ R.V).card) :=
        Nat.add_le_add_left (degPts_ncard_le R) _
    _ ≤ 38 := by omega

#print axioms degPts_subset
#print axioms degPts_ncard_le
#print axioms points9_le_38_of_sum_bound

end Compose
end Heptagon
