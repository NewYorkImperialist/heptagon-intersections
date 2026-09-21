import RawConfig
import SimplicityStable

/-!
# A pair of simple heptagons is a `RawPair`

`SimplicityStable.SimpleClosed` is the full parametrised notion of simplicity:
no degenerate side, non-adjacent sides disjoint, adjacent sides meeting exactly
in their shared vertex.  `RawConfig.RawPair` carries only the middle clause,
because that is all `raw_simplePerturbable` consumes.

So `SimpleClosed` is strictly stronger, and this file says so, which turns
`RawConfig.raw_crossPairs_card_le_38` into a statement about a pair of simple
heptagons stated in the ordinary way — two maps `Fin 7 → ℝ × ℝ`, each simple as
a closed curve — with **no general position anywhere**.

This file is a leaf; nothing imports it.  See `docs/simplicity-preservation.md`.
-/

set_option autoImplicit false

namespace Heptagon
namespace SimplicityBridge

open Heptagon.ResidualSym Heptagon.RawConfig Heptagon.RealPerturb
open Heptagon.SimplicityStable

/-- The fourteen combined vertices of two heptagons, `P` first then `Q`, in the
indexing `pP` / `pQ` that the development uses. -/
def combine (P Q : Fin 7 → ℝ × ℝ) : Fin 14 → ℝ × ℝ := fun k =>
  if h : (k : ℕ) < 7 then P ⟨(k : ℕ), h⟩ else Q ⟨(k : ℕ) - 7, by omega⟩

theorem combine_pP (P Q : Fin 7 → ℝ × ℝ) (i : Fin 7) : combine P Q (pP i) = P i := by
  fin_cases i <;> rfl

theorem combine_pQ (P Q : Fin 7 → ℝ × ℝ) (i : Fin 7) : combine P Q (pQ i) = Q i := by
  fin_cases i <;> rfl

/-- **Two simple heptagons form a `RawPair`.**  Only the `disj` field of
`SimpleClosed` is used; `nondeg` and `meet` are dropped, which is exactly the
sense in which `RawPair` is weaker. -/
def rawPairOfSimple {P Q : Fin 7 → ℝ × ℝ}
    (hP : SimpleClosed P) (hQ : SimpleClosed Q) : RawPair where
  V := combine P Q
  disjP := by
    intro i j hij
    simpa only [combine_pP, side] using hP.disj i j hij
  disjQ := by
    intro i j hij
    simpa only [combine_pQ, side] using hQ.disj i j hij

/-- **The crossing-pair bound for two heptagons that are simple in the ordinary
sense.**  No general position, no non-degeneracy assumption beyond simplicity
itself.

This is `RawConfig.raw_crossPairs_card_le_38` with its hypothesis replaced by
the standard one.  It bounds crossing **pairs**, not intersection **points** —
see the closing section of `RawConfig.lean` for why those differ at a
degenerate configuration, and `docs/simplicity-preservation.md` §3.2 for what
else the AKR §9 import still supplies. -/
theorem crossPairs_card_le_38_of_simple {P Q : Fin 7 → ℝ × ℝ}
    (hP : SimpleClosed P) (hQ : SimpleClosed Q) :
    (crossPairsOf (combine P Q)).card ≤ 38 :=
  raw_crossPairs_card_le_38 (rawPairOfSimple hP hQ)

/-! ## Non-vacuity: `SimpleClosed` is satisfied by the lower-bound certificate

`SimpleClosed` adds two clauses to `RawPair`, so it is worth checking that the
result is not empty.  It is not: every `RConfig` — a configuration in general
position that is simple in the determinant-sign sense — has both halves
`SimpleClosed`, and `RealUpperBound.certRConfig` is a concrete one, namely the
38-point lower-bound certificate. -/

/-- **A nonzero orientation determinant forces a nondegenerate corner.**

The converse is false — a straight angle (three collinear vertices with the
middle one between the others) has `orientR = 0` but a nonzero corner vector —
which is why `SimpleClosed` is genuinely weaker than general position, as it
must be for the AKR §9 import. -/
theorem cornerVec_ne_zero_of_orientR {a b c : ℝ × ℝ}
    (h : RealConfig.orientR a b c ≠ 0) : cornerVec a b c ≠ 0 := by
  intro h0
  apply h
  rw [cornerVec, Prod.ext_iff] at h0
  obtain ⟨h1, h2⟩ := h0
  simp only [Prod.fst_sub, Prod.snd_sub, Prod.smul_fst, Prod.smul_snd, smul_eq_mul,
    Prod.fst_zero, Prod.snd_zero] at h1 h2
  by_cases hv : ‖c - b‖ = 0
  · have hcb : c = b := by rwa [norm_sub_eq_zero_iff] at hv
    subst hcb
    simp only [RealConfig.orientR]
    ring
  · have key : ‖c - b‖ * RealConfig.orientR a b c = 0 := by
      simp only [RealConfig.orientR]
      linear_combination (c.1 - b.1) * h2 - (c.2 - b.2) * h1
    exact (mul_eq_zero.mp key).resolve_left hv

private theorem fin7_corner_ne (i : Fin 7) : i ≠ i + 1 ∧ i + 1 ≠ i + 1 + 1 ∧ i ≠ i + 1 + 1 := by
  revert i; decide

/-- **The `P` half of any `RConfig` is a simple closed heptagon.** -/
theorem simpleClosed_P_of_RConfig (R : RealUpperBound.RConfig) :
    SimpleClosed (fun i : Fin 7 => R.V (pP i)) := by
  refine simpleClosed_of (fun i => ?_) (fun i j hij => ?_)
  · obtain ⟨h1, h2, h3⟩ := fin7_corner_ne i
    exact cornerVec_ne_zero_of_orientR
      (RealUpperBound.gpP R i (i + 1) (i + 1 + 1) h1 h2 h3)
  · exact RealUpperBound.nonadjacent_disjointR (W := fun i : Fin 7 => R.V (pP i))
      (fun a b c hab hbc hac => RealUpperBound.gpP R a b c hab hbc hac)
      (fun a b h => R.simpleP a b h) i j hij

/-- **The `Q` half of any `RConfig` is a simple closed heptagon.** -/
theorem simpleClosed_Q_of_RConfig (R : RealUpperBound.RConfig) :
    SimpleClosed (fun i : Fin 7 => R.V (pQ i)) := by
  refine simpleClosed_of (fun i => ?_) (fun i j hij => ?_)
  · obtain ⟨h1, h2, h3⟩ := fin7_corner_ne i
    exact cornerVec_ne_zero_of_orientR
      (RealUpperBound.gpQ R i (i + 1) (i + 1 + 1) h1 h2 h3)
  · exact RealUpperBound.nonadjacent_disjointR (W := fun i : Fin 7 => R.V (pQ i))
      (fun a b c hab hbc hac => RealUpperBound.gpQ R a b c hab hbc hac)
      (fun a b h => R.simpleQ a b h) i j hij

/-- **`SimpleClosed` is not vacuous**, witnessed by the two heptagons of the
lower-bound certificate — the pair that meets in 38 points. -/
theorem simpleClosed_certRConfig :
    SimpleClosed (fun i : Fin 7 => RealUpperBound.certRConfig.V (pP i)) ∧
      SimpleClosed (fun i : Fin 7 => RealUpperBound.certRConfig.V (pQ i)) :=
  ⟨simpleClosed_P_of_RConfig _, simpleClosed_Q_of_RConfig _⟩

end SimplicityBridge
end Heptagon

#print axioms Heptagon.SimplicityBridge.combine_pP
#print axioms Heptagon.SimplicityBridge.combine_pQ
#print axioms Heptagon.SimplicityBridge.rawPairOfSimple
#print axioms Heptagon.SimplicityBridge.crossPairs_card_le_38_of_simple
#print axioms Heptagon.SimplicityBridge.cornerVec_ne_zero_of_orientR
#print axioms Heptagon.SimplicityBridge.simpleClosed_P_of_RConfig
#print axioms Heptagon.SimplicityBridge.simpleClosed_Q_of_RConfig
#print axioms Heptagon.SimplicityBridge.simpleClosed_certRConfig
