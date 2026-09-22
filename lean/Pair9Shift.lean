import AKR9
import RotationLaw

/-!
# The tilted shift on a `Pair9`

Every result in `TiltedShift.lean` and `RotationLaw.lean` is about bare points
or a raw `V : Fin 14 → ℝ × ℝ`.  This file closes that gap: it shows the shift
carries a `Pair9` to a `Pair9`, for all small enough `δ`.

The obstacle was never the geometry — it was that building a `Pair9` requires
re-establishing `SimpleClosed`, which is hypothesis 9's obligation.  The work
is already done in `SimplicityStable.lean`; what was missing is that the
development carries **two** definitions of `SimpleClosed`:

* `AKR9.SimpleClosed`, a three-clause `Prop`, which `Pair9` is built from;
* `SimplicityStable.SimpleClosed`, a structure over a general normed space,
  which the stability theorems are stated for.

They are the same three clauses, and `Adj` and `LowerBound.Adjacent` are the
same definition, so the bridge is short — but without it the stability theorems
cannot reach `Pair9` at all.

This file is a leaf; nothing imports it, and it is not in `defaultTargets`, so
it does not invalidate the enumeration shards.
-/

set_option autoImplicit false

namespace Heptagon
namespace Pair9Shift

open Heptagon.AKR9 Heptagon.RotationLaw Heptagon.TiltedShift Heptagon.ResidualSym

/-! ## 1. The two notions of simplicity agree -/

theorem akr9_simpleClosed_iff (W : Fin 7 → ℝ × ℝ) :
    AKR9.SimpleClosed W ↔ SimplicityStable.SimpleClosed W := by
  constructor
  · rintro ⟨h1, h2, h3⟩
    refine ⟨h1, ?_, ?_⟩
    · intro i j hij
      exact h2 i j (by simpa [SimplicityStable.Adj, LowerBound.Adjacent] using hij)
    · intro i
      have := h3 i
      simpa [SimplicityStable.side, add_assoc] using this
  · intro h
    refine ⟨h.nondeg, ?_, ?_⟩
    · intro i j hij
      exact h.disj i j (by simpa [SimplicityStable.Adj, LowerBound.Adjacent] using hij)
    · intro i
      have := h.meet i
      simpa [SimplicityStable.side, add_assoc] using this

/-! ## 2. The shift is a linear perturbation -/

/-- The displacement field of the shift: `tilt u t` at the two endpoints of
side `i`, zero elsewhere. -/
def shiftField (W : Fin 7 → ℝ × ℝ) (i : Fin 7) (t : ℝ) : Fin 7 → ℝ × ℝ :=
  fun j => if j = i ∨ j = i + 1 then tilt (W (i + 1) - W i) t else 0

/-- **`shiftPoly` is `W + δ · E`.**  This is what lets the existing linear
stability theorem apply to it unchanged. -/
theorem shiftPoly_eq_add_smul (W : Fin 7 → ℝ × ℝ) (i : Fin 7) (t δ : ℝ) :
    shiftPoly W i t δ = fun j => W j + δ • shiftField W i t j := by
  funext j
  simp only [shiftPoly, shiftField]
  split_ifs with h
  · simp [mov, Prod.ext_iff, Prod.smul_fst, Prod.smul_snd]
  · simp

/-- **The shift preserves simplicity for all small enough `δ`.** -/
theorem exists_delta0_simpleClosed (W : Fin 7 → ℝ × ℝ) (hW : AKR9.SimpleClosed W)
    (i : Fin 7) (t : ℝ) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| ≤ δ₀ → AKR9.SimpleClosed (shiftPoly W i t δ) := by
  rw [akr9_simpleClosed_iff] at hW
  obtain ⟨δ₀, hδ₀, h⟩ :=
    SimplicityStable.heptagon_simplicity_stable_linear
      (EP := shiftField W i t) (EQ := shiftField W i t) hW hW
  refine ⟨δ₀, hδ₀, fun δ hδ => ?_⟩
  rw [akr9_simpleClosed_iff, shiftPoly_eq_add_smul]
  exact (h δ hδ).1

/-! ## 3. Lifting to a `Pair9` -/

theorem pP_inj {a b : Fin 7} (h : pP a = pP b) : a = b := by
  have := congrArg Fin.val h
  simp only [pP] at this
  exact Fin.ext this

/-- On the `P`-vertices, `shiftV` is `shiftPoly`. -/
theorem shiftV_pP (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t δ : ℝ) (k : Fin 7) :
    shiftV V i t δ (pP k) = shiftPoly (fun m => V (pP m)) i t δ k := by
  simp only [shiftV, shiftPoly]
  by_cases h : k = i ∨ k = i + 1
  · rw [if_pos (by rcases h with h | h <;> simp [h]), if_pos h]
  · rw [if_neg, if_neg h]
    push_neg at h ⊢
    exact ⟨fun hc => h.1 (pP_inj hc), fun hc => h.2 (pP_inj hc)⟩

/-- **The shift carries a `Pair9` to a `Pair9`.**  `Q` is untouched, so its
simplicity is inherited verbatim; `P`'s is the previous theorem. -/
theorem exists_shifted_pair9 (R : Pair9) (i : Fin 7) (t : ℝ) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| ≤ δ₀ →
      ∃ R' : Pair9, R'.V = shiftV R.V i t δ := by
  obtain ⟨δ₀, hδ₀, h⟩ :=
    exists_delta0_simpleClosed (fun m => R.V (pP m)) R.simpleP i t
  refine ⟨δ₀, hδ₀, fun δ hδ => ?_⟩
  refine ⟨⟨shiftV R.V i t δ, ?_, ?_⟩, rfl⟩
  · have := h δ hδ
    simpa only [shiftV_pP] using this
  · have hQ : (fun k : Fin 7 => shiftV R.V i t δ (pQ k)) = fun k => R.V (pQ k) := by
      funext k; exact shiftV_Q R.V i t δ k
    rw [hQ]
    exact R.simpleQ

#print axioms akr9_simpleClosed_iff
#print axioms shiftPoly_eq_add_smul
#print axioms exists_delta0_simpleClosed
#print axioms shiftV_pP
#print axioms exists_shifted_pair9

/-! ## 4. One shift that does both

`exists_delta0_simpleClosed` gives a `δ₀` below which simplicity survives — a
*universal* statement over small `δ`.  `shift_clears_side` gives a particular
`δ`, as small as required, clearing the side — an *existential*.  They compose
in the only order that works: take the simplicity bound first, then choose the
shift inside it. -/

/-- **§9.2's step, as far as it goes.**  For every `Pair9`, every non-degenerate
`P`-side, and every tilt, there is a single nonzero shift which

* yields a genuine `Pair9` — both heptagons still simple — and
* leaves **no** `Q`-vertex on that side's line.

So the side's `Q`-vertex degeneracies all vanish in one step, and the result is
still an object the rest of the development can talk about.

What it does **not** say is anything about `points9`: the intersection count is
not mentioned, and the averaging identity, the line-versus-side bound, and the
rotation bound are not yet combined into a claim that it does not drop. -/
theorem exists_good_shifted_pair9 (R : Pair9) (i : Fin 7) (t : ℝ)
    (hside : R.V (pP (i + 1)) - R.V (pP i) ≠ 0) :
    ∃ (δ : ℝ) (R' : Pair9), δ ≠ 0 ∧ R'.V = shiftV R.V i t δ ∧
      ∀ j : Fin 7,
        off (R'.V (pP (i + 1)) - R'.V (pP i)) (R'.V (pP i)) (R'.V (pQ j)) ≠ 0 := by
  obtain ⟨δ₀, hδ₀, hsimp⟩ :=
    exists_delta0_simpleClosed (fun m => R.V (pP m)) R.simpleP i t
  obtain ⟨δ, hδ0, hδlt, hclear⟩ := shift_clears_side R.V i t hside hδ₀
  have hP : AKR9.SimpleClosed (fun k : Fin 7 => shiftV R.V i t δ (pP k)) := by
    simpa only [shiftV_pP] using hsimp δ (le_of_lt hδlt)
  have hQ : AKR9.SimpleClosed (fun k : Fin 7 => shiftV R.V i t δ (pQ k)) := by
    have hEq : (fun k : Fin 7 => shiftV R.V i t δ (pQ k)) = fun k => R.V (pQ k) := by
      funext k; exact shiftV_Q R.V i t δ k
    rw [hEq]; exact R.simpleQ
  exact ⟨δ, ⟨shiftV R.V i t δ, hP, hQ⟩, hδ0, rfl, hclear⟩

#print axioms exists_good_shifted_pair9

end Pair9Shift
end Heptagon
