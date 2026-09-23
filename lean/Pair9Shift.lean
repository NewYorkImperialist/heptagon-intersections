import AKR9
import DegBound
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
open Heptagon.R3Construct
open Heptagon.RealConfig Heptagon.RealUpperBound Heptagon.RealPerturb
open Heptagon.DegBound

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

/-! ## 5. Every determinant is affine in the shift

A determinant of three points each moving affinely is in general **quadratic**
in the parameter.  Here it is not, and the reason is specific to a shift: the
two vertices that move, move by the *same* vector.  The `δ²` coefficient is
`(c_b − c_a)(c_c − c_a)·(w × w)`, and `w × w = 0`.

So the whole configuration's order type varies affinely, and the open-condition
argument of `RotationLaw` applies to *every* determinant at once — not only the
ones on the rotating neighbours. -/

/-- The `δ`-coefficient of a determinant whose three points are displaced by
`δ·c_a·w`, `δ·c_b·w`, `δ·c_c·w`. -/
def dcoef (A B C w : ℝ × ℝ) (ca cb cc : ℝ) : ℝ :=
  (cb - ca) * w.1 * (C.2 - A.2) + (B.1 - A.1) * ((cc - ca) * w.2)
    - (cb - ca) * w.2 * (C.1 - A.1) - (B.2 - A.2) * ((cc - ca) * w.1)

/-- **Displacements along a common direction make every determinant affine.**
No hypothesis is needed: the quadratic term carries the factor `w × w`. -/
theorem orientR_shift_affine (A B C w : ℝ × ℝ) (ca cb cc δ : ℝ) :
    orientR (A + (δ * ca) • w) (B + (δ * cb) • w) (C + (δ * cc) • w)
      = orientR A B C + δ * dcoef A B C w ca cb cc := by
  simp only [orientR, dcoef, Prod.fst_add, Prod.snd_add, Prod.smul_fst, Prod.smul_snd,
    smul_eq_mul]
  ring

/-- The shift written as a common-direction displacement, with coefficient `1`
at the two moving vertices and `0` elsewhere. -/
theorem shiftV_eq_add_smul (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t δ : ℝ) (k : Fin 14) :
    shiftV V i t δ k
      = V k + (δ * (if k = pP i ∨ k = pP (i + 1) then 1 else 0))
          • tilt (V (pP (i + 1)) - V (pP i)) t := by
  simp only [shiftV]
  split_ifs with h
  · simp [mov, Prod.ext_iff, Prod.smul_fst, Prod.smul_snd]
  · simp

/-- **Every determinant of the shifted configuration is affine in `δ`.** -/
theorem orientR_shiftV_affine (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t δ : ℝ)
    (a b c : Fin 14) :
    orientR (shiftV V i t δ a) (shiftV V i t δ b) (shiftV V i t δ c)
      = orientR (V a) (V b) (V c)
        + δ * dcoef (V a) (V b) (V c) (tilt (V (pP (i + 1)) - V (pP i)) t)
            (if a = pP i ∨ a = pP (i + 1) then 1 else 0)
            (if b = pP i ∨ b = pP (i + 1) then 1 else 0)
            (if c = pP i ∨ c = pP (i + 1) then 1 else 0) := by
  rw [shiftV_eq_add_smul, shiftV_eq_add_smul, shiftV_eq_add_smul, orientR_shift_affine]

#print axioms orientR_shift_affine
#print axioms shiftV_eq_add_smul
#print axioms orientR_shiftV_affine

/-- **The order type is preserved.**  There is a `δ₀ > 0` such that every shift
smaller than it leaves *every* nonzero orientation determinant of the
configuration nonzero and of unchanged sign.

This is the count argument's missing half.  A proper crossing is a conjunction
of strict sign conditions on these determinants, so no crossing is lost; and
since the whole chirotope is unchanged, nothing else about the configuration's
combinatorics moves either.

Proved by applying `exists_uniform_rotation` to the finite family of *all*
triples whose determinant is nonzero — which is legitimate precisely because
`orientR_shiftV_affine` says each one is affine, with no quadratic term. -/
theorem exists_delta0_order_type (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| < δ₀ → ∀ a b c : Fin 14,
      orientR (V a) (V b) (V c) ≠ 0 →
        0 < orientR (V a) (V b) (V c) *
            orientR (shiftV V i t δ a) (shiftV V i t δ b) (shiftV V i t δ c) := by
  classical
  obtain ⟨δ₀, hδ₀, h⟩ :=
    exists_uniform_rotation
      (Finset.univ.filter
        (fun p : Fin 14 × Fin 14 × Fin 14 => orientR (V p.1) (V p.2.1) (V p.2.2) ≠ 0))
      (fun p => orientR (V p.1) (V p.2.1) (V p.2.2))
      (fun p => dcoef (V p.1) (V p.2.1) (V p.2.2)
        (tilt (V (pP (i + 1)) - V (pP i)) t)
        (if p.1 = pP i ∨ p.1 = pP (i + 1) then 1 else 0)
        (if p.2.1 = pP i ∨ p.2.1 = pP (i + 1) then 1 else 0)
        (if p.2.2 = pP i ∨ p.2.2 = pP (i + 1) then 1 else 0))
      (fun p hp => (Finset.mem_filter.mp hp).2)
  refine ⟨δ₀, hδ₀, fun δ hδ a b c habc => ?_⟩
  rw [orientR_shiftV_affine]
  exact h δ hδ (a, b, c) (Finset.mem_filter.mpr ⟨Finset.mem_univ _, habc⟩)

/-- **No proper crossing is lost.**  Immediate from the previous theorem, since
`ProperCrossR` is a conjunction of strict sign conditions on four determinants
and each keeps its sign. -/
theorem exists_delta0_properCrossR (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| < δ₀ → ∀ a b c d : Fin 14,
      ProperCrossR (V a) (V b) (V c) (V d) →
        ProperCrossR (shiftV V i t δ a) (shiftV V i t δ b)
          (shiftV V i t δ c) (shiftV V i t δ d) := by
  obtain ⟨δ₀, hδ₀, h⟩ := exists_delta0_order_type V i t
  refine ⟨δ₀, hδ₀, fun δ hδ a b c d hpc => ?_⟩
  obtain ⟨h1, h2⟩ := hpc
  have n1 : orientR (V a) (V b) (V c) ≠ 0 := fun hz => by
    rw [hz, zero_mul] at h1; exact lt_irrefl 0 h1
  have n2 : orientR (V a) (V b) (V d) ≠ 0 := fun hz => by
    rw [hz, mul_zero] at h1; exact lt_irrefl 0 h1
  have n3 : orientR (V c) (V d) (V a) ≠ 0 := fun hz => by
    rw [hz, zero_mul] at h2; exact lt_irrefl 0 h2
  have n4 : orientR (V c) (V d) (V b) ≠ 0 := fun hz => by
    rw [hz, mul_zero] at h2; exact lt_irrefl 0 h2
  exact ⟨prod_neg_of_signs (h δ hδ a b c n1) (h δ hδ a b d n2) h1,
         prod_neg_of_signs (h δ hδ c d a n3) (h δ hδ c d b n4) h2⟩

#print axioms exists_delta0_order_type
#print axioms exists_delta0_properCrossR

/-! ## 6. The §9.2 step, assembled

Three bounds have been produced independently — one for simplicity, one for
clearing the side, one for the order type.  Reconciling them is a minimum. -/

/-- **§9.2's step.**  For every `Pair9`, every non-degenerate `P`-side and
every tilt, there is a single nonzero shift `δ` such that the result

1. is a genuine `Pair9` — both heptagons still simple;
2. has **no** `Q`-vertex on that side's line — every degeneracy there is gone;
3. loses **no** proper crossing — the entire order type is unchanged.

Clause 2 with `degeneracy_monovariant` gives the strict drop in the degeneracy
count. Clause 3 gives survival of the *transversal* intersections.

**These do not yet add up to "the intersection count does not drop."** Clause 3
is about `ProperCrossR`, and the intersection points that clause 2 destroys are
precisely the ones that are *not* proper crossings — a `Q`-vertex sitting on a
`P`-side is one intersection point, and after the shift it may contribute none.
That is exactly the case `TiltedShift.averaging_identity` handles, and exactly
the reason it is needed: over the two signs `±δ` the degenerate contributions
sum to twice the original, so one sign does not lose. Joining that to this
theorem — which fixes a single `δ` and says nothing about `-δ` — is not done. -/
theorem exists_full_shift (R : Pair9) (i : Fin 7) (t : ℝ)
    (hside : R.V (pP (i + 1)) - R.V (pP i) ≠ 0) :
    ∃ (δ : ℝ) (R' : Pair9), δ ≠ 0 ∧ R'.V = shiftV R.V i t δ ∧
      (∀ j : Fin 7,
        off (R'.V (pP (i + 1)) - R'.V (pP i)) (R'.V (pP i)) (R'.V (pQ j)) ≠ 0) ∧
      (∀ a b c d : Fin 14, ProperCrossR (R.V a) (R.V b) (R.V c) (R.V d) →
        ProperCrossR (R'.V a) (R'.V b) (R'.V c) (R'.V d)) := by
  obtain ⟨δ₁, hδ₁, hsimp⟩ :=
    exists_delta0_simpleClosed (fun m => R.V (pP m)) R.simpleP i t
  obtain ⟨δ₂, hδ₂, hord⟩ := exists_delta0_properCrossR R.V i t
  obtain ⟨δ, hδ0, hδlt, hclear⟩ :=
    shift_clears_side R.V i t hside (lt_min hδ₁ hδ₂)
  have h1 : |δ| ≤ δ₁ := le_of_lt (lt_of_lt_of_le hδlt (min_le_left _ _))
  have h2 : |δ| < δ₂ := lt_of_lt_of_le hδlt (min_le_right _ _)
  have hP : AKR9.SimpleClosed (fun k : Fin 7 => shiftV R.V i t δ (pP k)) := by
    simpa only [shiftV_pP] using hsimp δ h1
  have hQ : AKR9.SimpleClosed (fun k : Fin 7 => shiftV R.V i t δ (pQ k)) := by
    have hEq : (fun k : Fin 7 => shiftV R.V i t δ (pQ k)) = fun k => R.V (pQ k) := by
      funext k; exact shiftV_Q R.V i t δ k
    rw [hEq]; exact R.simpleQ
  exact ⟨δ, ⟨shiftV R.V i t δ, hP, hQ⟩, hδ0, rfl, hclear,
    fun a b c d hpc => hord δ h2 a b c d hpc⟩

#print axioms exists_full_shift

/-! ## 7. Both signs at once

`exists_full_shift` fixes one `δ`, which is why it cannot feed the averaging
identity — that identity is a statement about `δ` *and* `−δ`.  Since the bad
set merely doubles when both signs must be avoided, and stays finite, the same
shift can be required to work in both directions. -/

/-- **Both shift directions, simultaneously.**  A single `δ` for which *both*
`+δ` and `−δ` yield a genuine `Pair9`, clear every `Q`-vertex off the side's
line, and preserve every proper crossing.

This is the shape the averaging identity consumes: it compares the two
directions, so both must be available at the same `δ`. With
`TiltedShift.exists_sign_not_increasing`, one of the two does not lose count —
though joining these two results formally still requires expressing the
degenerate contributions of a `Pair9` as the `crossCount` the identity is
stated about, which is not done. -/
theorem exists_full_shift_both_signs (R : Pair9) (i : Fin 7) (t : ℝ)
    (hside : R.V (pP (i + 1)) - R.V (pP i) ≠ 0) :
    ∃ (δ : ℝ) (Rp Rm : Pair9), δ ≠ 0 ∧
      Rp.V = shiftV R.V i t δ ∧ Rm.V = shiftV R.V i t (-δ) ∧
      (∀ j : Fin 7,
        off (Rp.V (pP (i + 1)) - Rp.V (pP i)) (Rp.V (pP i)) (Rp.V (pQ j)) ≠ 0) ∧
      (∀ j : Fin 7,
        off (Rm.V (pP (i + 1)) - Rm.V (pP i)) (Rm.V (pP i)) (Rm.V (pQ j)) ≠ 0) ∧
      (∀ a b c d : Fin 14, ProperCrossR (R.V a) (R.V b) (R.V c) (R.V d) →
        ProperCrossR (Rp.V a) (Rp.V b) (Rp.V c) (Rp.V d)) ∧
      (∀ a b c d : Fin 14, ProperCrossR (R.V a) (R.V b) (R.V c) (R.V d) →
        ProperCrossR (Rm.V a) (Rm.V b) (Rm.V c) (Rm.V d)) := by
  obtain ⟨δ₁, hδ₁, hsimp⟩ :=
    exists_delta0_simpleClosed (fun m => R.V (pP m)) R.simpleP i t
  obtain ⟨δ₂, hδ₂, hord⟩ := exists_delta0_properCrossR R.V i t
  obtain ⟨δ, hδ0, hδlt, hclear⟩ :=
    shift_clears_side_symm R.V i t hside (lt_min hδ₁ hδ₂)
  have h1 : |δ| ≤ δ₁ := le_of_lt (lt_of_lt_of_le hδlt (min_le_left _ _))
  have h2 : |δ| < δ₂ := lt_of_lt_of_le hδlt (min_le_right _ _)
  have hn1 : |(-δ)| ≤ δ₁ := by rw [abs_neg]; exact h1
  have hn2 : |(-δ)| < δ₂ := by rw [abs_neg]; exact h2
  have mkP : ∀ e : ℝ, |e| ≤ δ₁ →
      AKR9.SimpleClosed (fun k : Fin 7 => shiftV R.V i t e (pP k)) := by
    intro e he; simpa only [shiftV_pP] using hsimp e he
  have mkQ : ∀ e : ℝ, AKR9.SimpleClosed (fun k : Fin 7 => shiftV R.V i t e (pQ k)) := by
    intro e
    have hEq : (fun k : Fin 7 => shiftV R.V i t e (pQ k)) = fun k => R.V (pQ k) := by
      funext k; exact shiftV_Q R.V i t e k
    rw [hEq]; exact R.simpleQ
  exact ⟨δ, ⟨shiftV R.V i t δ, mkP δ h1, mkQ δ⟩,
    ⟨shiftV R.V i t (-δ), mkP (-δ) hn1, mkQ (-δ)⟩, hδ0, rfl, rfl,
    fun j => (hclear j).1, fun j => (hclear j).2,
    fun a b c d hpc => hord δ h2 a b c d hpc,
    fun a b c d hpc => hord (-δ) hn2 a b c d hpc⟩

#print axioms exists_full_shift_both_signs

/-! ## 8. The pair count is monotone — and why that is not enough

`crossPairsOf` is the object the project's upper bound is actually about, and
`SimplicityBridge.crossPairs_card_le_38_of_simple` bounds it by `38` for *any*
two simple heptagons, with no general position. Every proper crossing survives
the shift, so the pair count is monotone too. -/

theorem crossPairsOf_mono_shift (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| < δ₀ →
      crossPairsOf V ⊆ crossPairsOf (shiftV V i t δ) := by
  obtain ⟨δ₀, hδ₀, h⟩ := exists_delta0_properCrossR V i t
  refine ⟨δ₀, hδ₀, fun δ hδ p hp => ?_⟩
  simp only [crossPairsOf, Finset.mem_filter, Finset.mem_univ, true_and] at hp ⊢
  exact h δ hδ _ _ _ _ hp

theorem crossPairsOf_card_mono_shift (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| < δ₀ →
      (crossPairsOf V).card ≤ (crossPairsOf (shiftV V i t δ)).card := by
  obtain ⟨δ₀, hδ₀, h⟩ := crossPairsOf_mono_shift V i t
  exact ⟨δ₀, hδ₀, fun δ hδ => Finset.card_le_card (h δ hδ)⟩

/-! **Why this does not finish §9.**

It is tempting to read the two facts together — the pair count is `≤ 38` for
any simple pair, and the shift does not decrease it — as a bound on a
degenerate configuration's intersections. It is not one, and the gap is exactly
what §9 exists to close.

`crossPairsOf` counts side pairs that cross **properly**. A `Q`-vertex lying on
a `P`-side is a genuine point of `∂P ∩ ∂Q`, but it is *not* a proper crossing of
any pair, so it contributes **nothing** to `crossPairsOf`. Hence for a
degenerate configuration

>  `|points9| = |crossPairsOf| + (degenerate points)`,

and the `38` bound on the first summand says nothing about the total. That is
why `DegBound`'s honest statement is `|points9| ≤ 38 + d`, and why the
corollary `≤ 52` is *weaker* than the trivial `49`.

What closes it is the averaging identity: for the *degenerate* points,
`TiltedShift.exists_sign_not_decreasing` gives a sign along which their
contribution does not drop either. Joining that to the monotonicity above needs
`DegBound`'s classification to say that the two summands stay separate — which
is the unfinished half. -/

#print axioms crossPairsOf_mono_shift
#print axioms crossPairsOf_card_mono_shift

/-! ## 9. The counting skeleton for "the count does not drop"

The remaining half of §9.2 is a counting argument with four geometric inputs.
Isolating the counting from the geometry makes it clear exactly what must be
supplied, and lets the arithmetic be checked now.

The picture: `A` is the set of side pairs crossing **before** the shift, `A'`
those crossing **after**, `D` indexes the degenerate points, and `newOf d` is
the set of pairs that degeneracy `d` turns into. -/

/-- **The counting skeleton.**  If the old crossings survive, each degeneracy
produces at least one new crossing, and the new crossings are disjoint from the
old ones and from each other, then the count grows by at least the number of
degeneracies.

The four hypotheses are exactly the geometric obligations:

* `hmono` — the old crossings survive. **Proved**:
  `crossPairsOf_mono_shift`.
* `hsum` — the degeneracies yield at least `D.card` new crossings **in
  total**. This is the averaging identity, and the hypothesis is deliberately
  a *sum* rather than a per-degeneracy bound: `exists_sign_not_decreasing`
  delivers `S.card ≤ ∑ crossCount`, and **not** `1 ≤ crossCount d` for each
  `d` separately. An earlier version of this skeleton demanded the
  per-degeneracy form, which the averaging identity cannot supply — a shift
  may kill one degeneracy's contribution outright while another's doubles.
  **Not yet connected**, because the identity is stated about `crossCount`
  rather than about `crossPairsOf`.
* `hdisjA` — a pair newly crossing was not crossing before. **Proved**:
  `degenerate_not_mem_crossPairs` in §10 below. A degenerate touching makes an
  orientation determinant vanish, and `ProperCrossR` needs a strictly negative
  *product*, so a vanishing determinant rules it out.
* `hdisj` — distinct degeneracies produce disjoint pair sets. **This one is
  not automatic, and an earlier draft of this note claimed it was.** Vertex `j`
  produces the pairs `(i, j−1)` and `(i, j)`; vertex `j+1` produces `(i, j)` and
  `(i, j+1)`. They **share `(i, j)`**. So `hdisj` fails exactly when two
  *consecutive* `Q`-vertices are degenerate on the same `P`-side — and that
  happens precisely when the whole `Q`-side `j` lies inside `P`-side `i`, an
  **overlap**, which `(Fin)` excludes because it makes `∂P ∩ ∂Q` infinite.
  So `hdisj` holds, but it depends on the finiteness hypothesis, and not on
  anything about the shift. **Geometric content proved**:
  `no_consecutive_degeneracy` in §11 below; only the packaging into `Finset`
  disjointness is left.

`hnew` is bookkeeping. With all four, `A.card + D.card ≤ A'.card` — and since
`|regPts| ≤ |A|` and `|points9| = |regPts| + |degPts|`, that is the count not
dropping. -/
theorem card_add_le_of_disjoint_new {P ι : Type*} [DecidableEq P] [DecidableEq ι]
    (A A' : Finset P) (D : Finset ι) (newOf : ι → Finset P)
    (hmono : A ⊆ A')
    (hnew : ∀ d ∈ D, newOf d ⊆ A')
    (hdisjA : ∀ d ∈ D, Disjoint (newOf d) A)
    (hdisj : ∀ d ∈ D, ∀ d' ∈ D, d ≠ d' → Disjoint (newOf d) (newOf d'))
    (hsum : D.card ≤ ∑ d ∈ D, (newOf d).card) :
    A.card + D.card ≤ A'.card := by
  classical
  have hUcard : D.card ≤ (D.biUnion newOf).card := by
    rw [Finset.card_biUnion hdisj]
    exact hsum
  have hdisjAU : Disjoint A (D.biUnion newOf) := by
    rw [Finset.disjoint_biUnion_right]
    exact fun d hd => (hdisjA d hd).symm
  have hsub : A ∪ D.biUnion newOf ⊆ A' := by
    intro x hx
    rcases Finset.mem_union.mp hx with h | h
    · exact hmono h
    · obtain ⟨d, hd, hxd⟩ := Finset.mem_biUnion.mp h
      exact hnew d hd hxd
  calc A.card + D.card ≤ A.card + (D.biUnion newOf).card := by omega
    _ = (A ∪ D.biUnion newOf).card := (Finset.card_union_of_disjoint hdisjAU).symm
    _ ≤ A'.card := Finset.card_le_card hsub

/-- **The skeleton is not vacuous**, and the bound it gives is attained: all
five hypotheses hold simultaneously, with `A.card + D.card = A'.card`.  One old
crossing, one degeneracy, one new pair. -/
theorem card_add_le_of_disjoint_new_nonvacuous :
    ∃ (A A' D : Finset ℕ) (newOf : ℕ → Finset ℕ),
      A ⊆ A' ∧ (∀ d ∈ D, newOf d ⊆ A') ∧ (∀ d ∈ D, Disjoint (newOf d) A) ∧
      (∀ d ∈ D, ∀ d' ∈ D, d ≠ d' → Disjoint (newOf d) (newOf d')) ∧
      D.card ≤ (∑ d ∈ D, (newOf d).card) ∧ A.card + D.card = A'.card := by
  refine ⟨{0}, {0, 1}, {5}, fun _ => {1}, by decide, by decide, by decide,
    by decide, by decide, by decide⟩

#print axioms card_add_le_of_disjoint_new

/-! ## 10. `hdisjA`: a degenerate pair is not a crossing pair

The third obligation of the skeleton. It is short, and the reason is the one
that makes the whole `points9` / `crossPairsOf` discrepancy exist: a degenerate
touching makes an orientation determinant **vanish**, and `ProperCrossR`
demands a strictly negative *product* of determinants, so a vanishing one rules
it out. -/

/-- `off` against a side's own direction **is** that side's orientation
determinant. -/
theorem off_eq_orientR (A B X : ℝ × ℝ) : off (B - A) A X = orientR A B X := by
  simp only [off, orientR, Prod.fst_sub, Prod.snd_sub]; ring

theorem not_properCrossR_of_left_zero {a b c d : ℝ × ℝ} (h : orientR a b c = 0) :
    ¬ ProperCrossR a b c d := by
  rintro ⟨h1, -⟩
  rw [h, zero_mul] at h1
  exact lt_irrefl 0 h1

theorem not_properCrossR_of_right_zero {a b c d : ℝ × ℝ} (h : orientR a b d = 0) :
    ¬ ProperCrossR a b c d := by
  rintro ⟨h1, -⟩
  rw [h, mul_zero] at h1
  exact lt_irrefl 0 h1

/-- **A `Q`-vertex on a `P`-side's line kills both incident pairs.**  The vertex
`V (pQ j)` is an endpoint of `Q`-sides `j − 1` and `j`, so neither pair
`(i, j−1)` nor `(i, j)` is a proper crossing.

This is `hdisjA` of the skeleton, and it is also the precise reason
`crossPairsOf` undercounts `points9` at a degeneracy: the point is there, and
it contributes to **no** pair. -/
theorem degenerate_not_mem_crossPairs (V : Fin 14 → ℝ × ℝ) (i j : Fin 7)
    (hdeg : off (V (pP (i + 1)) - V (pP i)) (V (pP i)) (V (pQ j)) = 0) :
    (i, j) ∉ crossPairsOf V ∧ (i, j - 1) ∉ crossPairsOf V := by
  rw [off_eq_orientR] at hdeg
  constructor
  · simp only [crossPairsOf, Finset.mem_filter, Finset.mem_univ, true_and]
    exact not_properCrossR_of_left_zero hdeg
  · simp only [crossPairsOf, Finset.mem_filter, Finset.mem_univ, true_and]
    have hj : j - 1 + 1 = j := by simp
    rw [hj]
    exact not_properCrossR_of_right_zero hdeg

#print axioms off_eq_orientR
#print axioms degenerate_not_mem_crossPairs

/-! ## 11. `hdisj`: no two consecutive `Q`-vertices are degenerate on one side

The fourth obligation, and the one whose dependency was not obvious. It holds,
but it is a consequence of **finiteness**, not of anything about the shift. -/

/-- **Two consecutive degenerate `Q`-vertices force an overlap.**  If both
endpoints of `Q`-side `j` lie on `P`-side `i`, then by convexity the *whole*
`Q`-side does — and a nondegenerate segment is infinite, so `∂P ∩ ∂Q` is
infinite, contradicting `(Fin)`.

This is what makes `hdisj` true. Vertex `j` contributes the pairs `(i, j−1)`
and `(i, j)`, and vertex `j+1` contributes `(i, j)` and `(i, j+1)`; they share
`(i, j)`, so the pair sets are disjoint only because the two vertices cannot
both be degenerate on the same side. -/
theorem no_consecutive_degeneracy (R : Pair9) (hfin : (points9 R).Finite) (i j : Fin 7)
    (h1 : R.V (pQ j) ∈ sideP9 R i) (h2 : R.V (pQ (j + 1)) ∈ sideP9 R i) : False := by
  have hsub : sideQ9 R j ⊆ sideP9 R i :=
    (convex_segment (R.V (pP i)) (R.V (pP (i + 1)))).segment_subset h1 h2
  have hne : R.V (pQ j) ≠ R.V (pQ (j + 1)) := R.simpleQ.1 j
  have hinf : (sideQ9 R j).Infinite := segment_infinite hne
  have hsub2 : sideQ9 R j ⊆ points9 R := fun x hx =>
    ⟨Set.mem_iUnion.mpr ⟨i, hsub hx⟩, Set.mem_iUnion.mpr ⟨j, hx⟩⟩
  exact hinf (hfin.subset hsub2)

/-- The contrapositive, in the form the counting uses: on a fixed `P`-side, the
degenerate `Q`-vertices are **non-adjacent**. -/
theorem degenerate_not_adjacent (R : Pair9) (hfin : (points9 R).Finite) (i j : Fin 7)
    (h1 : R.V (pQ j) ∈ sideP9 R i) : R.V (pQ (j + 1)) ∉ sideP9 R i :=
  fun h2 => no_consecutive_degeneracy R hfin i j h1 h2

#print axioms no_consecutive_degeneracy
#print axioms degenerate_not_adjacent

/-! ## 12. Half of `hsum`: `Straddle` **is** a conjunct of `ProperCrossR`

The averaging identity is stated about `TiltedShift.Straddle`, and the skeleton
wants `crossPairsOf`, which is about `ProperCrossR`. Half of that bridge is an
identity rather than an argument: after the shift, the *first* conjunct of
`ProperCrossR` for a pair at a degenerate vertex is literally `Straddle`. -/

/-- Every orientation determinant against the **shifted** `P`-side is the
original offset, displaced by `δ‖u‖²`. -/
theorem orientR_shifted_side (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t δ : ℝ) (X : ℝ × ℝ) :
    orientR (shiftV V i t δ (pP i)) (shiftV V i t δ (pP (i + 1))) X
      = off (V (pP (i + 1)) - V (pP i)) (V (pP i)) X
        - δ * ((V (pP (i + 1)) - V (pP i)).1 * (V (pP (i + 1)) - V (pP i)).1
             + (V (pP (i + 1)) - V (pP i)).2 * (V (pP (i + 1)) - V (pP i)).2) := by
  rw [← off_eq_orientR, shiftV_dir, shiftV_P, off_base_mov]

/-- **`Straddle` is exactly the `Q`-side conjunct of `ProperCrossR`.**

`c` is the degenerate `Q`-vertex — offset `0` before the shift — and `d` the
other endpoint of the `Q`-edge, at offset `z`. The condition that the shifted
`P`-side's *line* separates them is, verbatim, `Straddle δ ‖u‖² z`, which is
what `averaging_local` counts.

So the averaging identity is not merely *analogous* to the crossing count; it
is the crossing count, for this conjunct. What the full bridge still needs is
the **other** conjunct — that the shifted `P`-side's endpoints are separated by
the `Q`-edge's line — which is the line-versus-side bound
(`TiltedShift.crossing_mem_side`), not the averaging identity. -/
theorem straddle_iff_first_conjunct (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t δ z : ℝ)
    (c d : ℝ × ℝ)
    (hc : off (V (pP (i + 1)) - V (pP i)) (V (pP i)) c = 0)
    (hd : off (V (pP (i + 1)) - V (pP i)) (V (pP i)) d = z) :
    orientR (shiftV V i t δ (pP i)) (shiftV V i t δ (pP (i + 1))) c *
        orientR (shiftV V i t δ (pP i)) (shiftV V i t δ (pP (i + 1))) d < 0
      ↔ Straddle δ ((V (pP (i + 1)) - V (pP i)).1 * (V (pP (i + 1)) - V (pP i)).1
             + (V (pP (i + 1)) - V (pP i)).2 * (V (pP (i + 1)) - V (pP i)).2) z := by
  rw [orientR_shifted_side, orientR_shifted_side, hc, hd]
  simp only [Straddle, zero_sub]

#print axioms orientR_shifted_side
#print axioms straddle_iff_first_conjunct

/-! ## 13. The other conjunct, and the bridge

The second conjunct of `ProperCrossR` — that the `Q`-edge's line separates the
`P`-side's endpoints — is, at `δ = 0`, a **strict** inequality, hence an *open*
condition. So it needs no new machinery: the order-type preservation of §5
already keeps it.

That it is strict at `δ = 0` is itself geometry worth naming. The degenerate
`Q`-vertex lies in the **relative interior** of the `P`-side — that is `(VV)`,
§9.1's output — so the `P`-side genuinely crosses the `Q`-edge's line there,
unless the two are collinear, which `(Fin)` excludes. It is supplied as a
hypothesis here rather than re-derived. -/

theorem second_conjunct_persists (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| < δ₀ → ∀ j : Fin 7,
      orientR (V (pQ j)) (V (pQ (j + 1))) (V (pP i)) *
          orientR (V (pQ j)) (V (pQ (j + 1))) (V (pP (i + 1))) < 0 →
      orientR (shiftV V i t δ (pQ j)) (shiftV V i t δ (pQ (j + 1)))
            (shiftV V i t δ (pP i)) *
          orientR (shiftV V i t δ (pQ j)) (shiftV V i t δ (pQ (j + 1)))
            (shiftV V i t δ (pP (i + 1))) < 0 := by
  obtain ⟨δ₀, hδ₀, h⟩ := exists_delta0_order_type V i t
  refine ⟨δ₀, hδ₀, fun δ hδ j h0 => ?_⟩
  have n1 : orientR (V (pQ j)) (V (pQ (j + 1))) (V (pP i)) ≠ 0 := fun hz => by
    rw [hz, zero_mul] at h0; exact lt_irrefl 0 h0
  have n2 : orientR (V (pQ j)) (V (pQ (j + 1))) (V (pP (i + 1))) ≠ 0 := fun hz => by
    rw [hz, mul_zero] at h0; exact lt_irrefl 0 h0
  exact prod_neg_of_signs (h δ hδ _ _ _ n1) (h δ hδ _ _ _ n2) h0

/-- **The bridge.**  For a degenerate `Q`-vertex `j` on `P`-side `i`, the pair
`(i, j)` crosses after the shift exactly when `Straddle` holds — the very
predicate `TiltedShift.averaging_local` counts.

The two conjuncts of `ProperCrossR` are discharged by two different things:
the first is `Straddle` verbatim (§12), the second persists from `δ = 0` by
order-type preservation (above). The hypothesis `hsep` is that second conjunct
at `δ = 0`, which `(VV)` and `(Fin)` supply. -/
theorem mem_crossPairs_of_straddle (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| < δ₀ → ∀ j : Fin 7,
      off (V (pP (i + 1)) - V (pP i)) (V (pP i)) (V (pQ j)) = 0 →
      orientR (V (pQ j)) (V (pQ (j + 1))) (V (pP i)) *
          orientR (V (pQ j)) (V (pQ (j + 1))) (V (pP (i + 1))) < 0 →
      Straddle δ ((V (pP (i + 1)) - V (pP i)).1 * (V (pP (i + 1)) - V (pP i)).1
             + (V (pP (i + 1)) - V (pP i)).2 * (V (pP (i + 1)) - V (pP i)).2)
        (off (V (pP (i + 1)) - V (pP i)) (V (pP i)) (V (pQ (j + 1)))) →
      (i, j) ∈ crossPairsOf (shiftV V i t δ) := by
  obtain ⟨δ₀, hδ₀, hsec⟩ := second_conjunct_persists V i t
  refine ⟨δ₀, hδ₀, fun δ hδ j hdeg hsep hstr => ?_⟩
  simp only [crossPairsOf, Finset.mem_filter, Finset.mem_univ, true_and]
  unfold ProperCrossR
  constructor
  · rw [shiftV_Q, shiftV_Q]
    exact (straddle_iff_first_conjunct V i t δ _ _ _ hdeg rfl).mpr hstr
  · exact hsec δ hδ j hsep

#print axioms second_conjunct_persists
#print axioms mem_crossPairs_of_straddle

/-! ## 14. The other incident pair

A degenerate `Q`-vertex `j` lies on **two** `Q`-edges — that is the whole
source of the point-versus-pair discrepancy — so the same bridge is needed for
`(i, j−1)`, where the degenerate vertex occupies the *second* slot. -/

theorem straddle_iff_first_conjunct' (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t δ y : ℝ)
    (c d : ℝ × ℝ)
    (hc : off (V (pP (i + 1)) - V (pP i)) (V (pP i)) c = y)
    (hd : off (V (pP (i + 1)) - V (pP i)) (V (pP i)) d = 0) :
    orientR (shiftV V i t δ (pP i)) (shiftV V i t δ (pP (i + 1))) c *
        orientR (shiftV V i t δ (pP i)) (shiftV V i t δ (pP (i + 1))) d < 0
      ↔ Straddle δ ((V (pP (i + 1)) - V (pP i)).1 * (V (pP (i + 1)) - V (pP i)).1
             + (V (pP (i + 1)) - V (pP i)).2 * (V (pP (i + 1)) - V (pP i)).2) y := by
  rw [orientR_shifted_side, orientR_shifted_side, hc, hd]
  simp only [Straddle, zero_sub]
  rw [mul_comm]

theorem mem_crossPairs_of_straddle_prev (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| < δ₀ → ∀ j : Fin 7,
      off (V (pP (i + 1)) - V (pP i)) (V (pP i)) (V (pQ j)) = 0 →
      orientR (V (pQ (j - 1))) (V (pQ j)) (V (pP i)) *
          orientR (V (pQ (j - 1))) (V (pQ j)) (V (pP (i + 1))) < 0 →
      Straddle δ ((V (pP (i + 1)) - V (pP i)).1 * (V (pP (i + 1)) - V (pP i)).1
             + (V (pP (i + 1)) - V (pP i)).2 * (V (pP (i + 1)) - V (pP i)).2)
        (off (V (pP (i + 1)) - V (pP i)) (V (pP i)) (V (pQ (j - 1)))) →
      (i, j - 1) ∈ crossPairsOf (shiftV V i t δ) := by
  obtain ⟨δ₀, hδ₀, hsec⟩ := second_conjunct_persists V i t
  refine ⟨δ₀, hδ₀, fun δ hδ j hdeg hsep hstr => ?_⟩
  have hj : j - 1 + 1 = j := by simp
  simp only [crossPairsOf, Finset.mem_filter, Finset.mem_univ, true_and]
  unfold ProperCrossR
  rw [hj]
  constructor
  · rw [shiftV_Q, shiftV_Q]
    exact (straddle_iff_first_conjunct' V i t δ _ _ _ rfl hdeg).mpr hstr
  · have h := hsec δ hδ (j - 1) (by rw [hj]; exact hsep)
    rw [hj] at h
    exact h

#print axioms straddle_iff_first_conjunct'
#print axioms mem_crossPairs_of_straddle_prev

/-! ## 15. The bridge as an equivalence

`straddle_iff_first_conjunct` is an *iff*, so the converse direction is already
available: given that the second conjunct survives, membership in
`crossPairsOf` after the shift is **equivalent** to `Straddle`, not merely
implied by it.

That is what the counting needs — `|newOf j| = crossCount`, an equality — and
it completes the mathematical content of `hsum`. -/

theorem mem_crossPairs_iff_straddle (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| < δ₀ → ∀ j : Fin 7,
      off (V (pP (i + 1)) - V (pP i)) (V (pP i)) (V (pQ j)) = 0 →
      orientR (V (pQ j)) (V (pQ (j + 1))) (V (pP i)) *
          orientR (V (pQ j)) (V (pQ (j + 1))) (V (pP (i + 1))) < 0 →
      ((i, j) ∈ crossPairsOf (shiftV V i t δ)
        ↔ Straddle δ ((V (pP (i + 1)) - V (pP i)).1 * (V (pP (i + 1)) - V (pP i)).1
             + (V (pP (i + 1)) - V (pP i)).2 * (V (pP (i + 1)) - V (pP i)).2)
          (off (V (pP (i + 1)) - V (pP i)) (V (pP i)) (V (pQ (j + 1))))) := by
  obtain ⟨δ₀, hδ₀, hmem⟩ := mem_crossPairs_of_straddle V i t
  refine ⟨δ₀, hδ₀, fun δ hδ j hdeg hsep => ⟨fun hin => ?_, hmem δ hδ j hdeg hsep⟩⟩
  simp only [crossPairsOf, Finset.mem_filter, Finset.mem_univ, true_and] at hin
  obtain ⟨h1, -⟩ := hin
  rw [shiftV_Q, shiftV_Q] at h1
  exact (straddle_iff_first_conjunct V i t δ _ _ _ hdeg rfl).mp h1

theorem mem_crossPairs_iff_straddle_prev (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| < δ₀ → ∀ j : Fin 7,
      off (V (pP (i + 1)) - V (pP i)) (V (pP i)) (V (pQ j)) = 0 →
      orientR (V (pQ (j - 1))) (V (pQ j)) (V (pP i)) *
          orientR (V (pQ (j - 1))) (V (pQ j)) (V (pP (i + 1))) < 0 →
      ((i, j - 1) ∈ crossPairsOf (shiftV V i t δ)
        ↔ Straddle δ ((V (pP (i + 1)) - V (pP i)).1 * (V (pP (i + 1)) - V (pP i)).1
             + (V (pP (i + 1)) - V (pP i)).2 * (V (pP (i + 1)) - V (pP i)).2)
          (off (V (pP (i + 1)) - V (pP i)) (V (pP i)) (V (pQ (j - 1))))) := by
  obtain ⟨δ₀, hδ₀, hmem⟩ := mem_crossPairs_of_straddle_prev V i t
  refine ⟨δ₀, hδ₀, fun δ hδ j hdeg hsep => ⟨fun hin => ?_, hmem δ hδ j hdeg hsep⟩⟩
  have hj : j - 1 + 1 = j := by simp
  simp only [crossPairsOf, Finset.mem_filter, Finset.mem_univ, true_and] at hin
  rw [hj] at hin
  obtain ⟨h1, -⟩ := hin
  rw [shiftV_Q, shiftV_Q] at h1
  exact (straddle_iff_first_conjunct' V i t δ _ _ _ rfl hdeg).mp h1

#print axioms mem_crossPairs_iff_straddle
#print axioms mem_crossPairs_iff_straddle_prev

/-! ## 16. `|newOf j| = crossCount` — the last step of `hsum`

Pure `Finset` arithmetic on top of the two equivalences. -/

theorem card_filter_pair {X : Type*} [DecidableEq X] (a b : X) (hab : a ≠ b)
    (p : X → Prop) [DecidablePred p] :
    (({a, b} : Finset X).filter p).card
      = (if p a then 1 else 0) + (if p b then 1 else 0) := by
  rw [Finset.filter_insert, Finset.filter_singleton]
  by_cases hpa : p a <;> by_cases hpb : p b <;> simp [hpa, hpb, hab]

theorem pred_ne_self (i j : Fin 7) : (i, j - 1) ≠ ((i, j) : Fin 7 × Fin 7) := by
  intro h
  have hj : j - 1 = j := congrArg Prod.snd h
  exact absurd (sub_eq_self.mp hj) (by decide)

/-- **The degenerate vertex's incident pairs, counted.**  The two `Q`-edges at
a degenerate vertex contribute to `crossPairsOf` after the shift in exactly the
number `TiltedShift.crossCount` predicts.

This is `hsum`'s content: summing this over the degenerate vertices, and
applying `TiltedShift.exists_sign_not_decreasing` to pick the sign, discharges
the last hypothesis of the counting skeleton. -/
theorem card_incident_eq_crossCount (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| < δ₀ → ∀ j : Fin 7,
      off (V (pP (i + 1)) - V (pP i)) (V (pP i)) (V (pQ j)) = 0 →
      orientR (V (pQ (j - 1))) (V (pQ j)) (V (pP i)) *
          orientR (V (pQ (j - 1))) (V (pQ j)) (V (pP (i + 1))) < 0 →
      orientR (V (pQ j)) (V (pQ (j + 1))) (V (pP i)) *
          orientR (V (pQ j)) (V (pQ (j + 1))) (V (pP (i + 1))) < 0 →
      ((({(i, j - 1), (i, j)} : Finset (Fin 7 × Fin 7)).filter
          (fun q => q ∈ crossPairsOf (shiftV V i t δ))).card
        = crossCount δ ((V (pP (i + 1)) - V (pP i)).1 * (V (pP (i + 1)) - V (pP i)).1
             + (V (pP (i + 1)) - V (pP i)).2 * (V (pP (i + 1)) - V (pP i)).2)
            (off (V (pP (i + 1)) - V (pP i)) (V (pP i)) (V (pQ (j - 1))))
            (off (V (pP (i + 1)) - V (pP i)) (V (pP i)) (V (pQ (j + 1))))) := by
  classical
  obtain ⟨δ₁, h₁, hprev⟩ := mem_crossPairs_iff_straddle_prev V i t
  obtain ⟨δ₂, h₂, hnext⟩ := mem_crossPairs_iff_straddle V i t
  refine ⟨min δ₁ δ₂, lt_min h₁ h₂, fun δ hδ j hdeg hsepPrev hsepNext => ?_⟩
  have hd1 : |δ| < δ₁ := lt_of_lt_of_le hδ (min_le_left _ _)
  have hd2 : |δ| < δ₂ := lt_of_lt_of_le hδ (min_le_right _ _)
  rw [card_filter_pair _ _ (pred_ne_self i j), crossCount]
  exact congrArg₂ (· + ·)
    (if_congr (hprev δ hd1 j hdeg hsepPrev) rfl rfl)
    (if_congr (hnext δ hd2 j hdeg hsepNext) rfl rfl)

#print axioms card_filter_pair
#print axioms card_incident_eq_crossCount

/-! ## 17. Summing over the degeneracies

Two helpers, then the assembly. -/

theorem n2_pos_of_ne {u : ℝ × ℝ} (hu : u ≠ 0) : 0 < u.1 * u.1 + u.2 * u.2 := by
  have h : u.1 ≠ 0 ∨ u.2 ≠ 0 := by
    by_contra hc
    push_neg at hc
    exact hu (Prod.ext hc.1 hc.2)
  rcases h with h1 | h2
  · nlinarith [mul_self_pos.mpr h1, mul_self_nonneg u.2]
  · nlinarith [mul_self_pos.mpr h2, mul_self_nonneg u.1]

/-- The smallness bound the averaging identity needs, uniform over a finite
family: a single `δ₀` below which the shift's normal displacement is smaller
than every neighbour offset. -/
theorem exists_delta0_smallness {ι : Type*} (D : Finset ι) {N : ℝ} (hN : 0 < N)
    (y z : ι → ℝ) (hy : ∀ j ∈ D, y j ≠ 0) (hz : ∀ j ∈ D, z j ≠ 0) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| < δ₀ →
      (∀ j ∈ D, |δ| * N < |y j|) ∧ (∀ j ∈ D, |δ| * N < |z j|) := by
  classical
  rcases D.eq_empty_or_nonempty with hE | hne
  · exact ⟨1, one_pos, fun δ _ => ⟨by simp [hE], by simp [hE]⟩⟩
  · refine ⟨D.inf' hne (fun j => min |y j| |z j| / N), ?_, ?_⟩
    · rw [Finset.lt_inf'_iff]
      intro j hj
      exact div_pos (lt_min (abs_pos.mpr (hy j hj)) (abs_pos.mpr (hz j hj))) hN
    · intro δ hδ
      have key : ∀ j ∈ D, |δ| * N < min |y j| |z j| := by
        intro j hj
        have hle : D.inf' hne (fun j => min |y j| |z j| / N) ≤ min |y j| |z j| / N :=
          Finset.inf'_le _ hj
        have hmul := mul_lt_mul_of_pos_right (lt_of_lt_of_le hδ hle) hN
        rwa [div_mul_cancel₀ _ (ne_of_gt hN)] at hmul
      exact ⟨fun j hj => lt_of_lt_of_le (key j hj) (min_le_left _ _),
             fun j hj => lt_of_lt_of_le (key j hj) (min_le_right _ _)⟩

#print axioms n2_pos_of_ne
#print axioms exists_delta0_smallness

/-- **`hsum`, discharged.**  For a non-degenerate `P`-side and the finite set
`D` of degenerate `Q`-vertices on it, there is an arbitrarily small nonzero
shift after which the incident pairs that cross number **at least `D.card` in
total** — the last hypothesis of the counting skeleton.

The hypotheses are the geometry this rests on, all already identified:

* `hD` — `D` really is the degenerate set;
* `hyne`, `hzne` — the two neighbouring `Q`-vertices are *off* the side's line.
  This follows from `(Fin)`: a neighbour on the line would put a sub-segment of
  the `Q`-edge inside the `P`-side (the degenerate vertex being interior to it
  by `(VV)`), an overlap, making `∂P ∩ ∂Q` infinite. Carried as a hypothesis
  rather than re-derived, so the dependency stays visible in the statement;
* `hsepPrev`, `hsepNext` — the two `Q`-edges genuinely cross the `P`-side's line
  at the degenerate vertex, which is `(VV)` plus `(Fin)` again.

The sign is **chosen, not given**: `exists_sign_not_decreasing` supplies one of
`±δ`, and the two branches return different shifts with the same bound. -/
theorem hsum_for_side (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ)
    (hu : V (pP (i + 1)) - V (pP i) ≠ 0) (D : Finset (Fin 7))
    (hD : ∀ j ∈ D, off (V (pP (i + 1)) - V (pP i)) (V (pP i)) (V (pQ j)) = 0)
    (hyne : ∀ j ∈ D, off (V (pP (i + 1)) - V (pP i)) (V (pP i)) (V (pQ (j - 1))) ≠ 0)
    (hzne : ∀ j ∈ D, off (V (pP (i + 1)) - V (pP i)) (V (pP i)) (V (pQ (j + 1))) ≠ 0)
    (hsepPrev : ∀ j ∈ D, orientR (V (pQ (j - 1))) (V (pQ j)) (V (pP i)) *
        orientR (V (pQ (j - 1))) (V (pQ j)) (V (pP (i + 1))) < 0)
    (hsepNext : ∀ j ∈ D, orientR (V (pQ j)) (V (pQ (j + 1))) (V (pP i)) *
        orientR (V (pQ j)) (V (pQ (j + 1))) (V (pP (i + 1))) < 0)
    {δtop : ℝ} (hδtop : 0 < δtop) :
    ∃ δ : ℝ, δ ≠ 0 ∧ |δ| < δtop ∧
      D.card ≤ ∑ j ∈ D, ((({(i, j - 1), (i, j)} : Finset (Fin 7 × Fin 7)).filter
        (fun q => q ∈ crossPairsOf (shiftV V i t δ))).card) := by
  classical
  have hN : 0 < (V (pP (i + 1)) - V (pP i)).1 * (V (pP (i + 1)) - V (pP i)).1
      + (V (pP (i + 1)) - V (pP i)).2 * (V (pP (i + 1)) - V (pP i)).2 :=
    n2_pos_of_ne hu
  obtain ⟨δ₁, h₁, hsmall⟩ :=
    exists_delta0_smallness D hN
      (fun j => off (V (pP (i + 1)) - V (pP i)) (V (pP i)) (V (pQ (j - 1))))
      (fun j => off (V (pP (i + 1)) - V (pP i)) (V (pP i)) (V (pQ (j + 1))))
      hyne hzne
  obtain ⟨δ₂, h₂, hcard⟩ := card_incident_eq_crossCount V i t
  have hmpos : 0 < min δtop (min δ₁ δ₂) := lt_min hδtop (lt_min h₁ h₂)
  set d : ℝ := min δtop (min δ₁ δ₂) / 2 with hd
  have hdpos : 0 < d := by rw [hd]; linarith
  have hdlt : d < min δtop (min δ₁ δ₂) := by rw [hd]; linarith
  have habs : |d| = d := abs_of_pos hdpos
  have hdtop : d < δtop := lt_of_lt_of_le hdlt (min_le_left _ _)
  have hd1 : d < δ₁ := lt_of_lt_of_le hdlt ((min_le_right _ _).trans (min_le_left _ _))
  have hd2 : d < δ₂ := lt_of_lt_of_le hdlt ((min_le_right _ _).trans (min_le_right _ _))
  have hlt_top : |d| < δtop := by rw [habs]; exact hdtop
  have hlt_1 : |d| < δ₁ := by rw [habs]; exact hd1
  have hlt_2 : |d| < δ₂ := by rw [habs]; exact hd2
  obtain ⟨hy, hz⟩ := hsmall d hlt_1
  have hnabs : |(-d)| = d := by rw [abs_neg, habs]
  rcases exists_sign_not_decreasing D _ d _ _ hN (ne_of_gt hdpos) hy hz with h | h
  · refine ⟨d, ne_of_gt hdpos, hlt_top, h.trans_eq ?_⟩
    exact Finset.sum_congr rfl fun j hj =>
      (hcard d hlt_2 j (hD j hj) (hsepPrev j hj) (hsepNext j hj)).symm
  · refine ⟨-d, neg_ne_zero.mpr (ne_of_gt hdpos), by rw [hnabs]; exact hdtop,
      h.trans_eq ?_⟩
    exact Finset.sum_congr rfl fun j hj =>
      (hcard (-d) (by rw [hnabs]; exact hd2) j (hD j hj) (hsepPrev j hj)
        (hsepNext j hj)).symm

#print axioms hsum_for_side

/-! ## 18. Packaging `hdisj`

Two ingredients: a point on a side has zero offset from it (so a degeneracy
indexed by *segment* membership is one indexed by *line* membership), and the
incident pair sets of two non-adjacent vertices are disjoint. -/

/-- A point of a segment has zero offset from that segment's own line. -/
theorem off_eq_zero_of_mem_segment {A B x : ℝ × ℝ} (hx : x ∈ segment ℝ A B) :
    off (B - A) A x = 0 := by
  obtain ⟨a, b, -, -, hab, rfl⟩ := hx
  have ha : a = 1 - b := by linarith
  subst ha
  simp only [off, Prod.fst_sub, Prod.snd_sub, Prod.fst_add, Prod.snd_add,
    Prod.smul_fst, Prod.smul_snd, smul_eq_mul]
  ring

/-- The incident pair sets of two `Q`-vertices that are neither equal nor
adjacent are disjoint.  Adjacency is exactly the excluded case: vertices `j`
and `j+1` would share the pair `(i, j)`. -/
theorem incident_disjoint {i j j' : Fin 7} (hne : j ≠ j')
    (h1 : j' ≠ j + 1) (h2 : j ≠ j' + 1) (S : Finset (Fin 7 × Fin 7)) :
    Disjoint (({(i, j - 1), (i, j)} : Finset (Fin 7 × Fin 7)).filter (fun q => q ∈ S))
      (({(i, j' - 1), (i, j')} : Finset (Fin 7 × Fin 7)).filter (fun q => q ∈ S)) := by
  classical
  have hA : j - 1 ≠ j' - 1 := fun h => hne (sub_left_inj.mp h)
  have hB : j - 1 ≠ j' := fun h => h2 (sub_eq_iff_eq_add.mp h)
  have hC : j ≠ j' - 1 := fun h => h1 (eq_sub_iff_add_eq.mp h).symm
  refine Finset.disjoint_filter_filter ?_
  simp only [Finset.disjoint_left, Finset.mem_insert, Finset.mem_singleton]
  rintro a (rfl | rfl) <;> simp [Prod.ext_iff, hA, hB, hC, hne]

#print axioms off_eq_zero_of_mem_segment
#print axioms incident_disjoint

/-! ## 19. The count grows by the number of degeneracies

All four obligations of `card_add_le_of_disjoint_new` are now available, so
they can be discharged together. -/

/-- **§9.2's count step.**  For a non-degenerate `P`-side carrying the
degenerate `Q`-vertices `D`, there is an arbitrarily small nonzero shift after
which

>  `|crossPairsOf| + |D| ≤ |crossPairsOf of the shifted configuration|`.

The pair count grows by **at least the number of degeneracies removed** — which
is what makes the exchange worth doing, since each degenerate point was an
intersection contributing to no pair at all.

`(Fin)` enters twice and in different roles: through `hfin`, to rule out two
*adjacent* degenerate vertices sharing an incident pair, and through `hyne`,
`hzne` to keep the neighbour offsets nonzero. -/
theorem count_grows_by_degeneracies (R : Pair9) (hfin : (points9 R).Finite)
    (i : Fin 7) (t : ℝ) (hu : R.V (pP (i + 1)) - R.V (pP i) ≠ 0) (D : Finset (Fin 7))
    (hD : ∀ j ∈ D, R.V (pQ j) ∈ sideP9 R i)
    (hyne : ∀ j ∈ D,
      off (R.V (pP (i + 1)) - R.V (pP i)) (R.V (pP i)) (R.V (pQ (j - 1))) ≠ 0)
    (hzne : ∀ j ∈ D,
      off (R.V (pP (i + 1)) - R.V (pP i)) (R.V (pP i)) (R.V (pQ (j + 1))) ≠ 0)
    (hsepPrev : ∀ j ∈ D, orientR (R.V (pQ (j - 1))) (R.V (pQ j)) (R.V (pP i)) *
        orientR (R.V (pQ (j - 1))) (R.V (pQ j)) (R.V (pP (i + 1))) < 0)
    (hsepNext : ∀ j ∈ D, orientR (R.V (pQ j)) (R.V (pQ (j + 1))) (R.V (pP i)) *
        orientR (R.V (pQ j)) (R.V (pQ (j + 1))) (R.V (pP (i + 1))) < 0) :
    ∃ δ : ℝ, δ ≠ 0 ∧
      (crossPairsOf R.V).card + D.card
        ≤ (crossPairsOf (shiftV R.V i t δ)).card := by
  classical
  -- segment membership gives line membership
  have hD' : ∀ j ∈ D,
      off (R.V (pP (i + 1)) - R.V (pP i)) (R.V (pP i)) (R.V (pQ j)) = 0 :=
    fun j hj => off_eq_zero_of_mem_segment (hD j hj)
  obtain ⟨δ₀, hδ₀, hmono⟩ := crossPairsOf_mono_shift R.V i t
  obtain ⟨δ, hδne, hδlt, hsum⟩ :=
    hsum_for_side R.V i t hu D hD' hyne hzne hsepPrev hsepNext hδ₀
  refine ⟨δ, hδne, ?_⟩
  refine card_add_le_of_disjoint_new _ _ D
    (fun j => ({(i, j - 1), (i, j)} : Finset (Fin 7 × Fin 7)).filter
      (fun q => q ∈ crossPairsOf (shiftV R.V i t δ)))
    (hmono δ hδlt) (fun j _ q hq => (Finset.mem_filter.mp hq).2) ?_ ?_ hsum
  · -- a newly crossing pair was not crossing before
    intro j hj
    obtain ⟨hnotj, hnotjm⟩ := degenerate_not_mem_crossPairs R.V i j (hD' j hj)
    simp only [Finset.disjoint_left, Finset.mem_filter, Finset.mem_insert,
      Finset.mem_singleton]
    rintro q ⟨rfl | rfl, -⟩
    · exact hnotjm
    · exact hnotj
  · -- distinct degeneracies give disjoint pair sets
    intro j hj j' hj' hne
    refine incident_disjoint hne ?_ ?_ _
    · intro h
      exact no_consecutive_degeneracy R hfin i j (hD j hj) (h ▸ hD j' hj')
    · intro h
      exact no_consecutive_degeneracy R hfin i j' (hD j' hj') (h ▸ hD j hj)

#print axioms count_grows_by_degeneracies

/-! ## 20. Towards `points9`

`count_grows_by_degeneracies` is about `crossPairsOf`. Two `DegBound` facts
convert between that and `points9`; the first is the intermediate step of
`regPts_ncard_le_38`, which was only ever used inside a `calc`. -/

/-- **A regular point determines a crossing pair, injectively.** -/
theorem regPts_ncard_le_crossPairs (R : Pair9) (hno : NoOverlap R) :
    (regPts R).ncard ≤ (crossPairsOf R.V).card := by
  have hmaps : ∀ x ∈ regPts R,
      (pIdx R x, qIdx R x) ∈ (crossPairsOf R.V : Set (Fin 7 × Fin 7)) := fun x hx =>
    mem_crossPairs_of_reg R hno hx _ _ (mem_sideP_pIdx R hx.1) (mem_sideQ_qIdx R hx.1)
  have hinj : Set.InjOn (fun x => (pIdx R x, qIdx R x)) (regPts R) := by
    intro x hx y hy h
    have h1 : pIdx R x = pIdx R y := congrArg Prod.fst h
    have h2 : qIdx R x = qIdx R y := congrArg Prod.snd h
    exact hno (pIdx R x) (qIdx R x) x y
      (mem_sideP_pIdx R hx.1) (mem_sideQ_qIdx R hx.1)
      (h1 ▸ mem_sideP_pIdx R hy.1) (h2 ▸ mem_sideQ_qIdx R hy.1)
  calc (regPts R).ncard
      ≤ ((crossPairsOf R.V : Finset (Fin 7 × Fin 7)) : Set (Fin 7 × Fin 7)).ncard :=
        Set.ncard_le_ncard_of_injOn _ hmaps hinj (crossPairsOf R.V).finite_toSet
    _ = (crossPairsOf R.V).card := by
        simp [Set.ncard, Set.encard_eq_coe_toFinset_card]

/-- **The intersection points split into regular and degenerate.**  This is the
decomposition the count argument runs on, and the reason a bound on
`crossPairsOf` alone cannot bound `points9`. -/
theorem points9_ncard_eq (R : Pair9) (hfin : (points9 R).Finite) :
    (points9 R).ncard = (regPts R).ncard + (degPts R).ncard := by
  have hsplit : points9 R = regPts R ∪ degPts R := by
    ext x
    simp only [regPts, degPts, Set.mem_union, Set.mem_diff, Set.mem_inter_iff]
    constructor
    · intro hx
      by_cases hv : x ∈ verts R
      · exact Or.inr ⟨hx, hv⟩
      · exact Or.inl ⟨hx, hv⟩
    · rintro (⟨hx, -⟩ | ⟨hx, -⟩) <;> exact hx
  have hdisj : Disjoint (regPts R) (degPts R) := by
    rw [Set.disjoint_left]
    rintro x ⟨-, hnv⟩ ⟨-, hv⟩
    exact hnv hv
  rw [hsplit, Set.ncard_union_eq hdisj (hfin.subset Set.diff_subset)
    (hfin.subset Set.inter_subset_left)]

/-- **The bound `points9` needs, in terms of pairs.**  Combining the two:
`|points9| ≤ |crossPairsOf| + |degPts|`.

Set beside `count_grows_by_degeneracies`, this is the shape of §9.2's argument:
the shift converts degenerate points into crossing pairs one for one, and the
regular points were already pairs. -/
theorem points9_ncard_le_crossPairs_add_deg (R : Pair9) (hfin : (points9 R).Finite) :
    (points9 R).ncard ≤ (crossPairsOf R.V).card + (degPts R).ncard := by
  rw [points9_ncard_eq R hfin]
  exact Nat.add_le_add_right (regPts_ncard_le_crossPairs R (noOverlap_of_finite R hfin)) _

#print axioms regPts_ncard_le_crossPairs
#print axioms points9_ncard_eq
#print axioms points9_ncard_le_crossPairs_add_deg

/-! ## 21. The iteration step: the degeneracy set strictly shrinks

`exists_good_delta_affine` required every slope to be nonzero. For *not
creating* a degeneracy that is the wrong hypothesis: a condition false at
`δ = 0` with **zero** slope stays false for free, and demanding a nonzero slope
would exclude exactly the easy cases. -/

/-- The `δ`-choice for conditions that are already **false** and must stay
false. No hypothesis on the slopes: a zero slope is harmless here. -/
theorem exists_good_delta_affine' {ι : Type*} [DecidableEq ι] (S : Finset ι) (c m : ι → ℝ)
    (hc : ∀ p ∈ S, c p ≠ 0) {δ₀ : ℝ} (hδ₀ : 0 < δ₀) :
    ∃ δ : ℝ, δ ≠ 0 ∧ |δ| < δ₀ ∧ ∀ p ∈ S, c p + δ * m p ≠ 0 := by
  classical
  set B : Finset ℝ := S.image (fun p => if m p = 0 then 0 else -c p / m p) with hB
  have hinf : (Set.Ioo (0:ℝ) δ₀ \ (B : Set ℝ)).Infinite :=
    (Set.Ioo_infinite hδ₀).diff B.finite_toSet
  obtain ⟨δ, ⟨hpos, hlt⟩, hnot⟩ := hinf.nonempty
  refine ⟨δ, ne_of_gt hpos, by rw [abs_of_pos hpos]; exact hlt, fun p hp hz => ?_⟩
  by_cases hm : m p = 0
  · rw [hm, mul_zero, add_zero] at hz
    exact hc p hp hz
  · refine hnot ?_
    rw [Finset.mem_coe, hB]
    exact Finset.mem_image.mpr ⟨p, hp, by rw [if_neg hm]; field_simp; linarith⟩

/-- The degeneracies of a configuration, as `(P`-side, `Q`-vertex`)` pairs —
using the side's **line**, which over-approximates the segment and is the
monovariant the iteration runs on. Reaching zero here means no `Q`-vertex lies
on any `P`-side *line*, which is stronger than needed. -/
noncomputable def degSetOf (V : Fin 14 → ℝ × ℝ) : Finset (Fin 7 × Fin 7) :=
  Finset.univ.filter
    (fun p => orientR (V (pP p.1)) (V (pP (p.1 + 1))) (V (pQ p.2)) = 0)

/-- **The iteration step.**  If `P`-side `i` carries a degeneracy, some
arbitrarily small nonzero shift of it strictly decreases the **total**
degeneracy count — over all seven sides at once, not just side `i`.

That the count does not merely fail to rise elsewhere is the content: shifting
side `i` moves two `P`-vertices, so sides `i−1` and `i+1` rotate and could
acquire degeneracies of their own. Every such condition is affine in `δ`
(`orientR_shiftV_affine`), so the bad shifts are finite in number and are
avoided. -/
theorem degSet_card_lt (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ)
    (hu : V (pP (i + 1)) - V (pP i) ≠ 0) (j₀ : Fin 7) (hj₀ : (i, j₀) ∈ degSetOf V)
    {δtop : ℝ} (hδtop : 0 < δtop) :
    ∃ δ : ℝ, δ ≠ 0 ∧ |δ| < δtop ∧
      (degSetOf (shiftV V i t δ)).card < (degSetOf V).card := by
  classical
  obtain ⟨δ, hδne, hδlt, hkeep⟩ :=
    exists_good_delta_affine' (Finset.univ.filter
        (fun p : Fin 7 × Fin 7 =>
          orientR (V (pP p.1)) (V (pP (p.1 + 1))) (V (pQ p.2)) ≠ 0))
      (fun p => orientR (V (pP p.1)) (V (pP (p.1 + 1))) (V (pQ p.2)))
      (fun p => dcoef (V (pP p.1)) (V (pP (p.1 + 1))) (V (pQ p.2))
        (tilt (V (pP (i + 1)) - V (pP i)) t)
        (if pP p.1 = pP i ∨ pP p.1 = pP (i + 1) then 1 else 0)
        (if pP (p.1 + 1) = pP i ∨ pP (p.1 + 1) = pP (i + 1) then 1 else 0)
        (if pQ p.2 = pP i ∨ pQ p.2 = pP (i + 1) then 1 else 0))
      (fun p hp => (Finset.mem_filter.mp hp).2) hδtop
  refine ⟨δ, hδne, hδlt, ?_⟩
  -- the shifted degeneracy set is contained in the old one …
  have hsub : degSetOf (shiftV V i t δ) ⊆ degSetOf V := by
    intro p hp
    by_contra hnot
    have hne : orientR (V (pP p.1)) (V (pP (p.1 + 1))) (V (pQ p.2)) ≠ 0 := by
      simpa [degSetOf] using hnot
    have := hkeep p (Finset.mem_filter.mpr ⟨Finset.mem_univ _, hne⟩)
    simp only [degSetOf, Finset.mem_filter, Finset.mem_univ, true_and] at hp
    rw [orientR_shiftV_affine] at hp
    exact this hp
  -- … and it has lost `(i, j₀)`
  have hgone : (i, j₀) ∉ degSetOf (shiftV V i t δ) := by
    simp only [degSetOf, Finset.mem_filter, Finset.mem_univ, true_and]
    rw [← off_eq_orientR, shiftV_dir, shiftV_P, shiftV_Q, off_base_mov]
    have h0 : off (V (pP (i + 1)) - V (pP i)) (V (pP i)) (V (pQ j₀)) = 0 := by
      rw [off_eq_orientR]
      simpa [degSetOf] using hj₀
    rw [h0, zero_sub, neg_eq_zero]
    exact mul_ne_zero hδne (ne_of_gt (n2_pos_of_ne hu))
  exact degeneracy_monovariant hsub hj₀ hgone

#print axioms exists_good_delta_affine'
#print axioms degSet_card_lt

/-! ## 22. Iterating to a degeneracy-free pair

On a `Pair9` the sides are nondegenerate for free (`simpleP`), and simplicity
survives each shift, so the iteration stays inside `Pair9` and terminates. -/

/-- The iteration step, on a `Pair9`. -/
theorem pair9_degSet_card_lt (R : Pair9) (i : Fin 7) (t : ℝ) (j₀ : Fin 7)
    (hj₀ : (i, j₀) ∈ degSetOf R.V) :
    ∃ (δ : ℝ) (R' : Pair9), R'.V = shiftV R.V i t δ ∧
      (degSetOf R'.V).card < (degSetOf R.V).card ∧
      crossPairsOf R.V ⊆ crossPairsOf R'.V := by
  have hu : R.V (pP (i + 1)) - R.V (pP i) ≠ 0 :=
    sub_ne_zero.mpr (Ne.symm (R.simpleP.1 i))
  obtain ⟨δ₁, h₁, hsimp⟩ :=
    exists_delta0_simpleClosed (fun m => R.V (pP m)) R.simpleP i t
  obtain ⟨δ₂, h₂, hmono⟩ := crossPairsOf_mono_shift R.V i t
  obtain ⟨δ, hδne, hδlt, hcard⟩ := degSet_card_lt R.V i t hu j₀ hj₀ (lt_min h₁ h₂)
  have hd1 : |δ| ≤ δ₁ := le_of_lt (lt_of_lt_of_le hδlt (min_le_left _ _))
  have hd2 : |δ| < δ₂ := lt_of_lt_of_le hδlt (min_le_right _ _)
  have hP : AKR9.SimpleClosed (fun k : Fin 7 => shiftV R.V i t δ (pP k)) := by
    simpa only [shiftV_pP] using hsimp δ hd1
  have hQ : AKR9.SimpleClosed (fun k : Fin 7 => shiftV R.V i t δ (pQ k)) := by
    have hEq : (fun k : Fin 7 => shiftV R.V i t δ (pQ k)) = fun k => R.V (pQ k) := by
      funext k; exact shiftV_Q R.V i t δ k
    rw [hEq]; exact R.simpleQ
  exact ⟨δ, ⟨shiftV R.V i t δ, hP, hQ⟩, rfl, hcard, hmono δ hd2⟩

/-- `R'` is reachable from `R` by a finite sequence of tilted shifts. -/
inductive Reach : Pair9 → Pair9 → Prop
  | refl (R : Pair9) : Reach R R
  | head {R R' R'' : Pair9} :
      (∃ (i : Fin 7) (t δ : ℝ), R'.V = shiftV R.V i t δ) →
        crossPairsOf R.V ⊆ crossPairsOf R'.V → Reach R' R'' → Reach R R''

/-- **§9.2's procedure terminates in a degeneracy-free pair.**

From any `Pair9`, finitely many tilted shifts reach a `Pair9` on which **no**
`Q`-vertex lies on any `P`-side *line*. Each shift is well-defined with no
collinearity hypothesis, keeps both heptagons simple, and strictly decreases
the total degeneracy count — so the process cannot stall or cycle, which is
the argument §9.2 asserts and does not give.

Half of `(A9)`: it says nothing about `P`-vertices on `Q`-sides. -/
theorem exists_reach_degSet_empty (t : ℝ) :
    ∀ (n : ℕ) (R : Pair9), (degSetOf R.V).card = n →
      ∃ R' : Pair9, Reach R R' ∧ degSetOf R'.V = ∅ := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    intro R hn
    by_cases h : degSetOf R.V = ∅
    · exact ⟨R, Reach.refl R, h⟩
    · obtain ⟨p, hp⟩ := Finset.nonempty_iff_ne_empty.mpr h
      obtain ⟨δ, R', hRV, hlt, hmono⟩ := pair9_degSet_card_lt R p.1 t p.2 hp
      obtain ⟨R'', hreach, hclear⟩ := ih (degSetOf R'.V).card (hn ▸ hlt) R' rfl
      exact ⟨R'', Reach.head ⟨p.1, t, δ, hRV⟩ hmono hreach, hclear⟩

theorem exists_degeneracy_free (R : Pair9) (t : ℝ) :
    ∃ R' : Pair9, Reach R R' ∧ degSetOf R'.V = ∅ :=
  exists_reach_degSet_empty t _ R rfl

#print axioms pair9_degSet_card_lt
#print axioms exists_reach_degSet_empty
#print axioms exists_degeneracy_free

/-- **The crossing pairs survive the whole chain.**  Every step preserves them,
so the endpoint of any `Reach` has at least the crossings of the start. -/
theorem reach_crossPairs_mono {R R' : Pair9} (h : Reach R R') :
    crossPairsOf R.V ⊆ crossPairsOf R'.V := by
  induction h with
  | refl _ => exact Finset.Subset.refl _
  | head _ hmono _ ih => exact hmono.trans ih

/-- **§9.2's procedure, with the count carried.**  The degeneracy-free pair it
reaches has at least as many crossing pairs as the original.

This is the form the section needs and the previous statement lacked: a
sequence of shifts that cleared every degeneracy while *losing* intersections
would have satisfied `exists_degeneracy_free` and been worthless. -/
theorem exists_degeneracy_free_mono (R : Pair9) (t : ℝ) :
    ∃ R' : Pair9, degSetOf R'.V = ∅ ∧
      (crossPairsOf R.V).card ≤ (crossPairsOf R'.V).card := by
  obtain ⟨R', hreach, hclear⟩ := exists_degeneracy_free R t
  exact ⟨R', hclear, Finset.card_le_card (reach_crossPairs_mono hreach)⟩

#print axioms reach_crossPairs_mono
#print axioms exists_degeneracy_free_mono

/-! ## 23. Which half of `(A9)` this is

`degSetOf = ∅` says no `Q`-vertex lies on a `P`-side line. That kills `degQ`
outright — but **not** `degP`, the `P`-vertices lying on `Q`-sides. The
procedure above shifts `P`-sides; removing `degP` is the mirror-image argument,
shifting `Q`-sides, and the two have to be done without undoing each other. -/

/-- **A degeneracy-free `degSetOf` kills `degQ`.** -/
theorem degQ_empty_of_degSet_empty (R : Pair9) (h : degSetOf R.V = ∅) : degQ R = ∅ := by
  ext x
  simp only [degQ, Set.mem_inter_iff, Set.mem_range, Set.mem_empty_iff_false, iff_false,
    not_and]
  rintro hx ⟨j, rfl⟩
  obtain ⟨k, hk⟩ := Set.mem_iUnion.mp hx.1
  have hzero : orientR (R.V (pP k)) (R.V (pP (k + 1))) (R.V (pQ j)) = 0 := by
    rw [← off_eq_orientR]
    exact off_eq_zero_of_mem_segment hk
  have : (k, j) ∈ degSetOf R.V := by
    simp only [degSetOf, Finset.mem_filter, Finset.mem_univ, true_and]
    exact hzero
  rw [h] at this
  exact absurd this (Finset.notMem_empty _)

/-- **What the procedure delivers, exactly.**  A pair with no `Q`-vertex on any
`P`-side, at least the original's crossing pairs, and therefore

>  `|points9| ≤ 38 + |degP|`.

The `38` is free — `crossPairs_card_le_38_of_simple` bounds *any* simple pair.
What the procedure buys is the disappearance of `degQ` from the count. The
residue `degP` is the other half of `(A9)` and is untouched: it needs the
mirror-image procedure on the `Q`-sides. -/
theorem points9_le_38_add_degP (R : Pair9) (hfin : (points9 R).Finite)
    (h : degSetOf R.V = ∅) :
    (points9 R).ncard ≤ 38 + (degP R).ncard := by
  have hdeg : degPts R = degP R := by
    rw [← degP_union_degQ, degQ_empty_of_degSet_empty R h, Set.union_empty]
  calc (points9 R).ncard
      ≤ (crossPairsOf R.V).card + (degPts R).ncard :=
        points9_ncard_le_crossPairs_add_deg R hfin
    _ ≤ 38 + (degP R).ncard := by
        rw [hdeg]
        exact Nat.add_le_add_right (RawConfig.raw_crossPairs_card_le_38 (AKR9.toRawPair R)) _

#print axioms degQ_empty_of_degSet_empty
#print axioms points9_le_38_add_degP

/-! ## 24. Deriving the separation hypotheses

`count_grows_by_degeneracies` carries `hsepPrev` and `hsepNext` — that each
`Q`-edge's line separates the `P`-side's endpoints — as hypotheses. They are
not extra assumptions: they follow from the degenerate vertex being *interior*
to the `P`-side, which is `(VV)`, together with non-collinearity, which
`(Fin)` supplies.

The mechanism is that `orientR C D ·` is an **affine** function of its last
argument, so along a segment it is the corresponding convex combination. -/

theorem orientR_affine_comb (C D A B : ℝ × ℝ) (s : ℝ) :
    orientR C D (lin A (B - A) s)
      = (1 - s) * orientR C D A + s * orientR C D B := by
  simp only [orientR, lin, Prod.fst_sub, Prod.snd_sub]
  ring

/-- **A point strictly inside a segment, lying on another line, forces the
segment's endpoints to opposite sides of that line** — unless both endpoints
are on it, i.e. the two are collinear.

This is `hsepPrev` / `hsepNext`, derived rather than assumed. -/
theorem straddle_of_interior {C D A B : ℝ × ℝ} {s : ℝ} (hs0 : 0 < s) (hs1 : s < 1)
    (hzero : orientR C D (lin A (B - A) s) = 0)
    (hnc : ¬(orientR C D A = 0 ∧ orientR C D B = 0)) :
    orientR C D A * orientR C D B < 0 := by
  rw [orientR_affine_comb] at hzero
  by_cases hA : orientR C D A = 0
  · exfalso
    rw [hA, mul_zero, zero_add] at hzero
    exact hnc ⟨hA, by
      rcases mul_eq_zero.mp hzero with h | h
      · exact absurd h (ne_of_gt hs0)
      · exact h⟩
  · have hB : orientR C D B ≠ 0 := by
      intro hB0
      rw [hB0, mul_zero, add_zero] at hzero
      rcases mul_eq_zero.mp hzero with h | h
      · linarith [sub_eq_zero.mp h]
      · exact hA h
    -- `(1-s)·oA = -s·oB` with both coefficients positive forces opposite signs
    rcases lt_or_gt_of_ne hA with hAneg | hApos
    · have : 0 < orientR C D B := by nlinarith
      nlinarith
    · have : orientR C D B < 0 := by nlinarith
      nlinarith

#print axioms orientR_affine_comb
#print axioms straddle_of_interior

/-! ## 25. Deriving the neighbour-offset hypotheses

`hyne`/`hzne` say the neighbouring `Q`-vertices are off the `P`-side's line.
Given that the degenerate vertex is *on* it, that is exactly non-collinearity
of the `Q`-edge with the `P`-side — and `(Fin)` forces it, because two
collinear segments meeting at an interior point of one of them overlap. -/

/-- A point with zero offset from a line is a point *of* that line, with an
explicit parameter. -/
theorem exists_param_of_off_zero {A u X : ℝ × ℝ} (hu : u ≠ 0) (h : off u A X = 0) :
    ∃ r : ℝ, X = lin A u r := by
  have hn : u.1 * u.1 + u.2 * u.2 ≠ 0 := ne_of_gt (n2_pos_of_ne hu)
  simp only [off] at h
  have key1 : (X.1 - A.1) * (u.1 * u.1 + u.2 * u.2)
      = (u.1 * (X.1 - A.1) + u.2 * (X.2 - A.2)) * u.1 := by
    linear_combination (-u.2) * h
  have key2 : (X.2 - A.2) * (u.1 * u.1 + u.2 * u.2)
      = (u.1 * (X.1 - A.1) + u.2 * (X.2 - A.2)) * u.2 := by
    linear_combination u.1 * h
  refine ⟨(u.1 * (X.1 - A.1) + u.2 * (X.2 - A.2)) / (u.1 * u.1 + u.2 * u.2),
    Prod.ext ?_ ?_⟩ <;> simp only [lin]
  · have e : (u.1 * (X.1 - A.1) + u.2 * (X.2 - A.2)) / (u.1 * u.1 + u.2 * u.2) * u.1
        = X.1 - A.1 := by
      rw [div_mul_eq_mul_div, div_eq_iff hn]; linarith [key1]
    linarith [e]
  · have e : (u.1 * (X.1 - A.1) + u.2 * (X.2 - A.2)) / (u.1 * u.1 + u.2 * u.2) * u.2
        = X.2 - A.2 := by
      rw [div_mul_eq_mul_div, div_eq_iff hn]; linarith [key2]
    linarith [e]

/-- A parameter between two others gives a point of the segment between the
corresponding points. -/
theorem lin_mem_segment {A u : ℝ × ℝ} {a b τ : ℝ} (h1 : a ≤ τ) (h2 : τ ≤ b) :
    lin A u τ ∈ segment ℝ (lin A u a) (lin A u b) := by
  rcases eq_or_lt_of_le (h1.trans h2) with hab | hab
  · have hτa : τ = a := le_antisymm (hab ▸ h2) h1
    subst hτa
    rw [hab]
    exact left_mem_segment ℝ _ _
  · have hba : (0:ℝ) < b - a := by linarith
    refine ⟨(b - τ) / (b - a), (τ - a) / (b - a),
      div_nonneg (by linarith) (le_of_lt hba),
      div_nonneg (by linarith) (le_of_lt hba), ?_, ?_⟩
    · field_simp
      ring
    · simp only [lin, Prod.ext_iff, Prod.fst_add, Prod.snd_add, Prod.smul_fst,
        Prod.smul_snd, smul_eq_mul]
      constructor <;> · field_simp; ring

#print axioms exists_param_of_off_zero
#print axioms lin_mem_segment

theorem lin_zero (A u : ℝ × ℝ) : lin A u 0 = A := by
  simp [lin]

theorem lin_one_sub (A B : ℝ × ℝ) : lin A (B - A) 1 = B := by
  simp only [lin, Prod.fst_sub, Prod.snd_sub, one_mul, Prod.ext_iff]
  constructor <;> ring

theorem lin_inj {A u : ℝ × ℝ} (hu : u ≠ 0) {a b : ℝ} (h : lin A u a = lin A u b) : a = b := by
  have h1 : A.1 + a * u.1 = A.1 + b * u.1 := congrArg Prod.fst h
  have h2 : A.2 + a * u.2 = A.2 + b * u.2 := congrArg Prod.snd h
  have hcase : u.1 ≠ 0 ∨ u.2 ≠ 0 := by
    by_contra hc
    push_neg at hc
    exact hu (Prod.ext hc.1 hc.2)
  rcases hcase with h' | h'
  · have : (a - b) * u.1 = 0 := by linarith
    rcases mul_eq_zero.mp this with hz | hz
    · linarith [sub_eq_zero.mp hz]
    · exact absurd hz h'
  · have : (a - b) * u.2 = 0 := by linarith
    rcases mul_eq_zero.mp this with hz | hz
    · linarith [sub_eq_zero.mp hz]
    · exact absurd hz h'

/-- **The neighbour offsets are nonzero — from `(Fin)`.**  If the degenerate
`Q`-vertex sits strictly inside the `P`-side and a neighbour also lies on that
side's *line*, then a whole sub-segment of the `Q`-edge lies inside the
`P`-side, so `∂P ∩ ∂Q` is infinite.

This is `hyne` / `hzne` of `count_grows_by_degeneracies`, derived rather than
assumed. The parameter `k` is `j−1` or `j+1`. -/
theorem neighbour_off_ne_zero (R : Pair9) (hfin : (points9 R).Finite) (i j k m : Fin 7)
    (hj : R.V (pQ j) ∈ sideQ9 R m) (hk : R.V (pQ k) ∈ sideQ9 R m)
    (hjk : R.V (pQ j) ≠ R.V (pQ k))
    (hu : R.V (pP (i + 1)) - R.V (pP i) ≠ 0) {s : ℝ} (hs0 : 0 < s) (hs1 : s < 1)
    (hsj : R.V (pQ j) = lin (R.V (pP i)) (R.V (pP (i + 1)) - R.V (pP i)) s) :
    off (R.V (pP (i + 1)) - R.V (pP i)) (R.V (pP i)) (R.V (pQ k)) ≠ 0 := by
  intro hzero
  obtain ⟨r, hr⟩ := exists_param_of_off_zero hu hzero
  have hrs : r ≠ s := fun h => hjk (by rw [hsj, hr, h])
  -- a parameter strictly between `s` and `r`, still inside `(0,1)`
  obtain ⟨τ, hτ1, hτ2, hτ3, hτ4⟩ :
      ∃ τ : ℝ, τ ≠ s ∧ 0 ≤ τ ∧ τ ≤ 1 ∧
        (min s r ≤ τ ∧ τ ≤ max s r) := by
    rcases lt_or_gt_of_ne hrs with hlt | hgt
    · refine ⟨max r (s / 2), ?_, by positivity,
        max_le (by linarith) (by linarith), ?_, ?_⟩
      · rcases max_cases r (s / 2) with ⟨he, -⟩ | ⟨he, -⟩ <;> rw [he] <;> linarith
      · rw [min_eq_right (le_of_lt hlt)]; exact le_max_left _ _
      · rw [max_eq_left (le_of_lt hlt)]
        exact max_le (le_of_lt hlt) (by linarith)
    · refine ⟨min r ((s + 1) / 2), ?_, ?_, ?_, ?_, ?_⟩
      · rcases min_cases r ((s + 1) / 2) with ⟨he, -⟩ | ⟨he, -⟩ <;> rw [he] <;> linarith
      · exact le_trans (by linarith) (le_min (le_of_lt hgt) (by linarith))
      · exact le_trans (min_le_right _ _) (by linarith)
      · rw [min_eq_left (le_of_lt hgt)]
        exact le_min (le_of_lt hgt) (by linarith)
      · rw [max_eq_right (le_of_lt hgt)]; exact min_le_left _ _
  set A := R.V (pP i)
  set u := R.V (pP (i + 1)) - R.V (pP i)
  -- the sub-segment lies in both boundaries
  have hPs : lin A u s ∈ sideP9 R i := by
    have := lin_mem_segment (A := A) (u := u) (le_of_lt hs0) (le_of_lt hs1)
    rwa [lin_zero, lin_one_sub] at this
  have hPτ : lin A u τ ∈ sideP9 R i := by
    have := lin_mem_segment (A := A) (u := u) hτ2 hτ3
    rwa [lin_zero, lin_one_sub] at this
  have hQs : lin A u s ∈ sideQ9 R m := by rw [← hsj]; exact hj
  have hQτ : lin A u τ ∈ sideQ9 R m := by
    have hmem : lin A u τ ∈ segment ℝ (R.V (pQ j)) (R.V (pQ k)) := by
      rw [hsj, hr]
      rcases le_total s r with hle | hle
      · exact lin_mem_segment (min_eq_left hle ▸ hτ4.1) (max_eq_right hle ▸ hτ4.2)
      · rw [segment_symm]
        exact lin_mem_segment (min_eq_right hle ▸ hτ4.1) (max_eq_left hle ▸ hτ4.2)
    exact (convex_segment _ _).segment_subset hj hk hmem
  have hne : lin A u s ≠ lin A u τ := fun h => hτ1 (lin_inj hu h).symm
  have hinf : (segment ℝ (lin A u s) (lin A u τ)).Infinite := segment_infinite hne
  refine hinf (hfin.subset ?_)
  intro x hx
  exact ⟨Set.mem_iUnion.mpr ⟨i, (convex_segment _ _).segment_subset hPs hPτ hx⟩,
    Set.mem_iUnion.mpr ⟨m, (convex_segment _ _).segment_subset hQs hQτ hx⟩⟩

#print axioms lin_inj
#print axioms neighbour_off_ne_zero

/-- Three points of one parametrised line are collinear. -/
theorem orientR_lin_three (C u : ℝ × ℝ) (a b c : ℝ) :
    orientR (lin C u a) (lin C u b) (lin C u c) = 0 := by
  simp only [orientR, lin]; ring

/-- **Collinearity is transitive through a nondegenerate pair.**  If `A`, `B`
and `X` all lie on the line `CD`, then `X` lies on the line `AB`. -/
theorem collinear_trans {C D A B X : ℝ × ℝ} (hCD : D - C ≠ 0)
    (hA : orientR C D A = 0) (hB : orientR C D B = 0) (hX : orientR C D X = 0) :
    orientR A B X = 0 := by
  obtain ⟨α, hα⟩ := exists_param_of_off_zero hCD (by rw [off_eq_orientR]; exact hA)
  obtain ⟨β, hβ⟩ := exists_param_of_off_zero hCD (by rw [off_eq_orientR]; exact hB)
  obtain ⟨ξ, hξ⟩ := exists_param_of_off_zero hCD (by rw [off_eq_orientR]; exact hX)
  rw [hα, hβ, hξ]
  exact orientR_lin_three _ _ _ _ _

/-- **`count_grows_by_degeneracies` with its hypotheses derived.**  The only
inputs are `(Fin)` and that each degenerate `Q`-vertex sits *strictly inside*
the `P`-side — which is `(VV)`. Everything else the count step needed is
produced along the way. -/
theorem count_grows_from_interior (R : Pair9) (hfin : (points9 R).Finite)
    (i : Fin 7) (t : ℝ) (hu : R.V (pP (i + 1)) - R.V (pP i) ≠ 0) (D : Finset (Fin 7))
    (hint : ∀ j ∈ D, ∃ s : ℝ, 0 < s ∧ s < 1 ∧
      R.V (pQ j) = lin (R.V (pP i)) (R.V (pP (i + 1)) - R.V (pP i)) s) :
    ∃ δ : ℝ, δ ≠ 0 ∧
      (crossPairsOf R.V).card + D.card ≤ (crossPairsOf (shiftV R.V i t δ)).card := by
  have hD : ∀ j ∈ D, R.V (pQ j) ∈ sideP9 R i := by
    intro j hj
    obtain ⟨s, hs0, hs1, hsj⟩ := hint j hj
    rw [hsj]
    have := lin_mem_segment (A := R.V (pP i)) (u := R.V (pP (i + 1)) - R.V (pP i))
      (le_of_lt hs0) (le_of_lt hs1)
    rwa [lin_zero, lin_one_sub] at this
  have hyne : ∀ j ∈ D,
      off (R.V (pP (i + 1)) - R.V (pP i)) (R.V (pP i)) (R.V (pQ (j - 1))) ≠ 0 := by
    intro j hj
    obtain ⟨s, hs0, hs1, hsj⟩ := hint j hj
    have hj1 : j - 1 + 1 = j := by simp
    refine neighbour_off_ne_zero R hfin i j (j - 1) (j - 1) ?_ (left_mem_segment ℝ _ _)
      ?_ hu hs0 hs1 hsj
    · show R.V (pQ j) ∈ segment ℝ (R.V (pQ (j - 1))) (R.V (pQ (j - 1 + 1)))
      rw [hj1]; exact right_mem_segment ℝ _ _
    · have h := R.simpleQ.1 (j - 1)
      rw [hj1] at h
      exact fun hc => h hc.symm
  have hzne : ∀ j ∈ D,
      off (R.V (pP (i + 1)) - R.V (pP i)) (R.V (pP i)) (R.V (pQ (j + 1))) ≠ 0 := by
    intro j hj
    obtain ⟨s, hs0, hs1, hsj⟩ := hint j hj
    exact neighbour_off_ne_zero R hfin i j (j + 1) j
      (left_mem_segment ℝ _ _) (right_mem_segment ℝ _ _) (R.simpleQ.1 j) hu hs0 hs1 hsj
  refine count_grows_by_degeneracies R hfin i t hu D hD hyne hzne ?_ ?_
  · -- separation for the edge `[Q(j-1), Q j]`
    intro j hj
    obtain ⟨s, hs0, hs1, hsj⟩ := hint j hj
    have hj1 : j - 1 + 1 = j := by simp
    have hCD : R.V (pQ j) - R.V (pQ (j - 1)) ≠ 0 := by
      have h := R.simpleQ.1 (j - 1)
      rw [hj1] at h
      exact sub_ne_zero.mpr (fun hc => h hc.symm)
    refine straddle_of_interior hs0 hs1 (by rw [← hsj]; simp only [orientR]; ring) ?_
    rintro ⟨hA, hB⟩
    refine hyne j hj ?_
    rw [off_eq_orientR]
    exact collinear_trans hCD hA hB (by simp only [orientR]; ring)
  · -- separation for the edge `[Q j, Q (j+1)]`
    intro j hj
    obtain ⟨s, hs0, hs1, hsj⟩ := hint j hj
    have hCD : R.V (pQ (j + 1)) - R.V (pQ j) ≠ 0 :=
      sub_ne_zero.mpr (fun hc => (R.simpleQ.1 j) hc.symm)
    refine straddle_of_interior hs0 hs1 (by rw [← hsj]; simp only [orientR]; ring) ?_
    rintro ⟨hA, hB⟩
    refine hzne j hj ?_
    rw [off_eq_orientR]
    exact collinear_trans hCD hA hB (by simp only [orientR]; ring)

#print axioms orientR_lin_three
#print axioms collinear_trans

#print axioms count_grows_from_interior

/-! ## 26. Composing δ-choices

Every step of §9.1 and §9.2 chooses `δ` outside a finite bad set. Composing
the procedures means one `δ` outside **all** of them at once, which is a union
— so the right primitive takes the other obligations' bad set as a parameter
rather than each step inventing its own. -/

/-- `exists_good_delta_affine'` with an extra finite set to avoid. -/
theorem exists_good_delta_affine_avoiding {ι : Type*} [DecidableEq ι] (S : Finset ι)
    (c m : ι → ℝ) (hc : ∀ p ∈ S, c p ≠ 0) (avoid : Finset ℝ)
    {δ₀ : ℝ} (hδ₀ : 0 < δ₀) :
    ∃ δ : ℝ, 0 < δ ∧ δ < δ₀ ∧ δ ∉ avoid ∧ ∀ p ∈ S, c p + δ * m p ≠ 0 := by
  classical
  set bad : Finset ℝ :=
    S.image (fun p => if m p = 0 then 0 else -c p / m p) ∪ avoid with hbad
  have hinf : (Set.Ioo (0:ℝ) δ₀ \ (bad : Set ℝ)).Infinite :=
    (Set.Ioo_infinite hδ₀).diff bad.finite_toSet
  obtain ⟨δ, ⟨hpos, hlt⟩, hnot⟩ := hinf.nonempty
  have hnotb : δ ∉ bad := fun hc' => hnot (Finset.mem_coe.mpr hc')
  refine ⟨δ, hpos, hlt, fun ha => hnotb (by rw [hbad]; exact Finset.mem_union_right _ ha),
    fun p hp hz => ?_⟩
  by_cases hm : m p = 0
  · rw [hm, mul_zero, add_zero] at hz
    exact hc p hp hz
  · refine hnotb ?_
    rw [hbad]
    refine Finset.mem_union_left _ (Finset.mem_image.mpr ⟨p, hp, ?_⟩)
    rw [if_neg hm]
    field_simp
    linarith

/-- The `δ`-choice of §21 with the other obligations' bad set carried. -/
theorem degSet_card_lt_avoiding (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ)
    (hu : V (pP (i + 1)) - V (pP i) ≠ 0) (j₀ : Fin 7) (hj₀ : (i, j₀) ∈ degSetOf V)
    (avoid : Finset ℝ) {δtop : ℝ} (hδtop : 0 < δtop) :
    ∃ δ : ℝ, 0 < δ ∧ δ < δtop ∧ δ ∉ avoid ∧
      (degSetOf (shiftV V i t δ)).card < (degSetOf V).card := by
  classical
  obtain ⟨δ, hδpos, hδlt, hδav, hkeep⟩ :=
    exists_good_delta_affine_avoiding (Finset.univ.filter
        (fun p : Fin 7 × Fin 7 =>
          orientR (V (pP p.1)) (V (pP (p.1 + 1))) (V (pQ p.2)) ≠ 0))
      (fun p => orientR (V (pP p.1)) (V (pP (p.1 + 1))) (V (pQ p.2)))
      (fun p => dcoef (V (pP p.1)) (V (pP (p.1 + 1))) (V (pQ p.2))
        (tilt (V (pP (i + 1)) - V (pP i)) t)
        (if pP p.1 = pP i ∨ pP p.1 = pP (i + 1) then 1 else 0)
        (if pP (p.1 + 1) = pP i ∨ pP (p.1 + 1) = pP (i + 1) then 1 else 0)
        (if pQ p.2 = pP i ∨ pQ p.2 = pP (i + 1) then 1 else 0))
      (fun p hp => (Finset.mem_filter.mp hp).2) avoid hδtop
  refine ⟨δ, hδpos, hδlt, hδav, ?_⟩
  have hsub : degSetOf (shiftV V i t δ) ⊆ degSetOf V := by
    intro p hp
    by_contra hnot
    have hne : orientR (V (pP p.1)) (V (pP (p.1 + 1))) (V (pQ p.2)) ≠ 0 := by
      simpa [degSetOf] using hnot
    have := hkeep p (Finset.mem_filter.mpr ⟨Finset.mem_univ _, hne⟩)
    simp only [degSetOf, Finset.mem_filter, Finset.mem_univ, true_and] at hp
    rw [orientR_shiftV_affine] at hp
    exact this hp
  have hgone : (i, j₀) ∉ degSetOf (shiftV V i t δ) := by
    simp only [degSetOf, Finset.mem_filter, Finset.mem_univ, true_and]
    rw [← off_eq_orientR, shiftV_dir, shiftV_P, shiftV_Q, off_base_mov]
    have h0 : off (V (pP (i + 1)) - V (pP i)) (V (pP i)) (V (pQ j₀)) = 0 := by
      rw [off_eq_orientR]
      simpa [degSetOf] using hj₀
    rw [h0, zero_sub, neg_eq_zero]
    exact mul_ne_zero (ne_of_gt hδpos) (ne_of_gt (n2_pos_of_ne hu))
  exact degeneracy_monovariant hsub hj₀ hgone

#print axioms exists_good_delta_affine_avoiding
#print axioms degSet_card_lt_avoiding

/-- **Every affine obligation as a bad set.**  The primitive the composition
runs on: rather than each step choosing its own `δ`, each *names the finitely
many shifts it forbids*, and the caller takes the union. -/
theorem affine_bad_set {ι : Type*} [DecidableEq ι] (S : Finset ι) (c m : ι → ℝ)
    (hc : ∀ p ∈ S, c p ≠ 0) :
    ∃ bad : Finset ℝ, ∀ δ : ℝ, δ ∉ bad → ∀ p ∈ S, c p + δ * m p ≠ 0 := by
  classical
  refine ⟨S.image (fun p => if m p = 0 then 0 else -c p / m p), fun δ hδ p hp hz => ?_⟩
  by_cases hm : m p = 0
  · rw [hm, mul_zero, add_zero] at hz
    exact hc p hp hz
  · refine hδ (Finset.mem_image.mpr ⟨p, hp, ?_⟩)
    rw [if_neg hm]
    field_simp
    linarith

#print axioms affine_bad_set

/-! ## 27. The rate coefficients of a configuration

`orientR_shiftV_affine` gives every determinant as `c + δ·m`. Naming the `m`
lets the averaging machinery of `TiltedShift` be instantiated at an arbitrary
`P`-side — including the **rotating neighbours** `i ± 1`, which is the case the
chain invariant is stuck on. -/

/-- The rate at which the determinant of `P`-side `k` against the vertex `a`
changes under a shift of side `i`. -/
noncomputable def shiftCoef (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) (k : Fin 7)
    (a : Fin 14) : ℝ :=
  dcoef (V (pP k)) (V (pP (k + 1))) (V a) (tilt (V (pP (i + 1)) - V (pP i)) t)
    (if pP k = pP i ∨ pP k = pP (i + 1) then 1 else 0)
    (if pP (k + 1) = pP i ∨ pP (k + 1) = pP (i + 1) then 1 else 0)
    (if a = pP i ∨ a = pP (i + 1) then 1 else 0)

theorem orientR_shift_side (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t δ : ℝ) (k : Fin 7)
    (a : Fin 14) :
    orientR (shiftV V i t δ (pP k)) (shiftV V i t δ (pP (k + 1))) (shiftV V i t δ a)
      = orientR (V (pP k)) (V (pP (k + 1))) (V a) + δ * shiftCoef V i t k a :=
  orientR_shiftV_affine V i t δ _ _ _

/-- **A side that does not move has rate zero.**  For `k ∉ {i−1, i, i+1}` the
whole determinant is constant in `δ`, which is why only the shifted side and
its two neighbours ever need the averaging argument. -/
theorem shiftCoef_eq_zero (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) (k : Fin 7)
    (a : Fin 14)
    (h1 : ¬(pP k = pP i ∨ pP k = pP (i + 1)))
    (h2 : ¬(pP (k + 1) = pP i ∨ pP (k + 1) = pP (i + 1)))
    (h3 : ¬(a = pP i ∨ a = pP (i + 1))) :
    shiftCoef V i t k a = 0 := by
  simp only [shiftCoef, if_neg h1, if_neg h2, if_neg h3, dcoef]
  ring

/-- **The first conjunct of `ProperCrossR` at a degenerate vertex, in affine
form.**  Exactly the shape `TiltedShift.localContribAff` consumes — for **any**
`P`-side `k`, not only the shifted one. -/
theorem first_conjunct_aff (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t δ : ℝ) (k j : Fin 7)
    (hdeg : orientR (V (pP k)) (V (pP (k + 1))) (V (pQ j)) = 0) :
    (orientR (shiftV V i t δ (pP k)) (shiftV V i t δ (pP (k + 1)))
        (shiftV V i t δ (pQ j)))
      * (orientR (shiftV V i t δ (pP k)) (shiftV V i t δ (pP (k + 1)))
        (shiftV V i t δ (pQ (j + 1)))) < 0
      ↔ (δ * shiftCoef V i t k (pQ j))
          * (orientR (V (pP k)) (V (pP (k + 1))) (V (pQ (j + 1)))
              + δ * shiftCoef V i t k (pQ (j + 1))) < 0 := by
  rw [orientR_shift_side, orientR_shift_side, hdeg, zero_add]

#print axioms shiftCoef_eq_zero
#print axioms first_conjunct_aff

/-- The second conjunct persists, for **any** `P`-side. -/
theorem second_conjunct_persists_any (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| < δ₀ → ∀ k j : Fin 7,
      orientR (V (pQ j)) (V (pQ (j + 1))) (V (pP k)) *
          orientR (V (pQ j)) (V (pQ (j + 1))) (V (pP (k + 1))) < 0 →
      orientR (shiftV V i t δ (pQ j)) (shiftV V i t δ (pQ (j + 1)))
            (shiftV V i t δ (pP k)) *
          orientR (shiftV V i t δ (pQ j)) (shiftV V i t δ (pQ (j + 1)))
            (shiftV V i t δ (pP (k + 1))) < 0 := by
  obtain ⟨δ₀, hδ₀, h⟩ := exists_delta0_order_type V i t
  refine ⟨δ₀, hδ₀, fun δ hδ k j h0 => ?_⟩
  have n1 : orientR (V (pQ j)) (V (pQ (j + 1))) (V (pP k)) ≠ 0 := fun hz => by
    rw [hz, zero_mul] at h0; exact lt_irrefl 0 h0
  have n2 : orientR (V (pQ j)) (V (pQ (j + 1))) (V (pP (k + 1))) ≠ 0 := fun hz => by
    rw [hz, mul_zero] at h0; exact lt_irrefl 0 h0
  exact prod_neg_of_signs (h δ hδ _ _ _ n1) (h δ hδ _ _ _ n2) h0

/-- **The membership bridge, for any `P`-side.**  At a degenerate vertex of
side `k`, the pair `(k, j)` crosses after the shift exactly when the affine
straddle holds — the shape `TiltedShift.localContribAff` counts. -/
theorem mem_crossPairs_iff_aff (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| < δ₀ → ∀ k j : Fin 7,
      orientR (V (pP k)) (V (pP (k + 1))) (V (pQ j)) = 0 →
      orientR (V (pQ j)) (V (pQ (j + 1))) (V (pP k)) *
          orientR (V (pQ j)) (V (pQ (j + 1))) (V (pP (k + 1))) < 0 →
      ((k, j) ∈ crossPairsOf (shiftV V i t δ) ↔
        (δ * shiftCoef V i t k (pQ j))
          * (orientR (V (pP k)) (V (pP (k + 1))) (V (pQ (j + 1)))
              + δ * shiftCoef V i t k (pQ (j + 1))) < 0) := by
  obtain ⟨δ₀, hδ₀, hsec⟩ := second_conjunct_persists_any V i t
  refine ⟨δ₀, hδ₀, fun δ hδ k j hdeg hsep => ⟨fun hin => ?_, fun hstr => ?_⟩⟩
  · simp only [crossPairsOf, Finset.mem_filter, Finset.mem_univ, true_and] at hin
    exact (first_conjunct_aff V i t δ k j hdeg).mp hin.1
  · simp only [crossPairsOf, Finset.mem_filter, Finset.mem_univ, true_and]
    exact ⟨(first_conjunct_aff V i t δ k j hdeg).mpr hstr, hsec δ hδ k j hsep⟩

#print axioms second_conjunct_persists_any
#print axioms mem_crossPairs_iff_aff

/-- The mirrored bridge: the pair `(k, j−1)`, whose `Q`-edge has the degenerate
vertex as its **second** endpoint. -/
theorem mem_crossPairs_iff_aff_prev (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| < δ₀ → ∀ k j : Fin 7,
      orientR (V (pP k)) (V (pP (k + 1))) (V (pQ j)) = 0 →
      orientR (V (pQ (j - 1))) (V (pQ j)) (V (pP k)) *
          orientR (V (pQ (j - 1))) (V (pQ j)) (V (pP (k + 1))) < 0 →
      ((k, j - 1) ∈ crossPairsOf (shiftV V i t δ) ↔
        (δ * shiftCoef V i t k (pQ j))
          * (orientR (V (pP k)) (V (pP (k + 1))) (V (pQ (j - 1)))
              + δ * shiftCoef V i t k (pQ (j - 1))) < 0) := by
  obtain ⟨δ₀, hδ₀, hsec⟩ := second_conjunct_persists_any V i t
  refine ⟨δ₀, hδ₀, fun δ hδ k j hdeg hsep => ?_⟩
  have hj : j - 1 + 1 = j := by simp
  constructor
  · intro hin
    simp only [crossPairsOf, Finset.mem_filter, Finset.mem_univ, true_and] at hin
    rw [hj] at hin
    have h1 := hin.1
    rw [orientR_shift_side, orientR_shift_side, hdeg, zero_add] at h1
    linarith [h1, mul_comm
      (δ * shiftCoef V i t k (pQ j))
      (orientR (V (pP k)) (V (pP (k + 1))) (V (pQ (j - 1)))
        + δ * shiftCoef V i t k (pQ (j - 1)))]
  · intro hstr
    simp only [crossPairsOf, Finset.mem_filter, Finset.mem_univ, true_and]
    rw [hj]
    refine ⟨?_, ?_⟩
    · rw [orientR_shift_side, orientR_shift_side, hdeg, zero_add]
      linarith [hstr, mul_comm
        (δ * shiftCoef V i t k (pQ j))
        (orientR (V (pP k)) (V (pP (k + 1))) (V (pQ (j - 1)))
          + δ * shiftCoef V i t k (pQ (j - 1)))]
    · have h := hsec δ hδ k (j - 1) (by rw [hj]; exact hsep)
      rw [hj] at h
      exact h

/-- A degenerate vertex kills both incident pairs, for **any** side. -/
theorem degenerate_not_mem_crossPairs_any (V : Fin 14 → ℝ × ℝ) (k j : Fin 7)
    (hdeg : orientR (V (pP k)) (V (pP (k + 1))) (V (pQ j)) = 0) :
    (k, j) ∉ crossPairsOf V ∧ (k, j - 1) ∉ crossPairsOf V := by
  constructor
  · simp only [crossPairsOf, Finset.mem_filter, Finset.mem_univ, true_and]
    exact not_properCrossR_of_left_zero hdeg
  · simp only [crossPairsOf, Finset.mem_filter, Finset.mem_univ, true_and]
    have hj : j - 1 + 1 = j := by simp
    rw [hj]
    exact not_properCrossR_of_right_zero hdeg

#print axioms mem_crossPairs_iff_aff_prev
#print axioms degenerate_not_mem_crossPairs_any

/-! ## 28. When does a rotating neighbour fail to move a degeneracy?

`localContribAff`'s `m₀ = 0` branch — the vertex staying on the line — is what
lets rotating neighbours be handled at all. But for the *counting* it matters
when that branch is actually taken, because a vertex that stays on the line
still contributes to the degeneracy count rather than to `crossPairsOf`.

The answer is sharp: on a side rotating about `F`, the rate at a point `X` is
`w × (X − F)`, so it vanishes exactly when `X` lies on the line through `F` in
direction `w`. Intersected with the side's own line that is just `{F}` —
**unless the tilt is parallel to the side**, in which case the side merely
slides along itself and nothing moves at all. -/

theorem orientR_eq_cross (F A X : ℝ × ℝ) :
    orientR F A X = cross (A.1 - F.1, A.2 - F.2) (X.1 - F.1, X.2 - F.2) := by
  simp only [orientR, cross]

/-- **The rate vanishes only at the rotation centre.**  If the tilt `w` is
transverse to the side `F A`, then a degenerate point of that side has nonzero
rate unless it *is* `F` — which, `F` being a `P`-vertex, is a vertex–vertex
coincidence and so excluded by §9.1. -/
theorem rate_ne_zero_of_transverse {F A X w : ℝ × ℝ}
    (hw : cross w (A.1 - F.1, A.2 - F.2) ≠ 0) (hXF : (X.1 - F.1, X.2 - F.2) ≠ 0)
    (hdeg : orientR F A X = 0) :
    cross w (X.1 - F.1, X.2 - F.2) ≠ 0 := by
  intro hz
  rw [orientR_eq_cross] at hdeg
  exact hXF (RotationLaw.eq_zero_of_cross_both hw hz hdeg)

/-- **A tilt transverse to both neighbours exists.**  An instance of
`RotationLaw.exists_good_tilt`: each neighbour direction forbids at most one
value of `t`, so three candidates suffice for two neighbours. -/
theorem exists_tilt_transverse {u a b : ℝ × ℝ} (hu : u ≠ 0) (ha : a ≠ 0) (hb : b ≠ 0)
    (T : Finset ℝ) (hT : 2 < T.card) :
    ∃ t ∈ T, cross (tilt u t) a ≠ 0 ∧ cross (tilt u t) b ≠ 0 := by
  classical
  obtain ⟨t, htT, ht⟩ :=
    RotationLaw.exists_good_tilt ({a, b} : Finset (ℝ × ℝ)) hu id
      (by
        intro x hx
        simp only [Finset.mem_insert, Finset.mem_singleton] at hx
        rcases hx with rfl | rfl
        · exact ha
        · exact hb)
      T (by
        have h1 : ({a, b} : Finset (ℝ × ℝ)).card ≤ 2 :=
          le_trans (Finset.card_insert_le _ _) (by simp)
        omega)
  exact ⟨t, htT, ht a (by simp), ht b (by simp)⟩

#print axioms orientR_eq_cross
#print axioms rate_ne_zero_of_transverse

/-! ## 29. The segment-based degeneracy measure

`degSetOf` counts `Q`-vertices on a `P`-side's **line**, which includes points
that are not intersections at all (`Compose.line_degeneracy_can_be_free`). The
measure the counting needs is **segment** membership. -/

open scoped Classical in
/-- The genuine `Q`-vertex degeneracies: on the `P`-**side**, not just its
line. -/
noncomputable def segDeg (R : Pair9) : Finset (Fin 7 × Fin 7) :=
  Finset.univ.filter (fun p => R.V (pQ p.2) ∈ sideP9 R p.1)

theorem segDeg_subset_degSetOf (R : Pair9) : segDeg R ⊆ degSetOf R.V := by
  classical
  intro p hp
  simp only [segDeg, Finset.mem_filter, Finset.mem_univ, true_and] at hp
  simp only [degSetOf, Finset.mem_filter, Finset.mem_univ, true_and]
  rw [← off_eq_orientR]
  exact off_eq_zero_of_mem_segment hp

/-- **No two adjacent entries.**  This is what makes the incident pair sets
disjoint, and it is exactly what the line-based measure lacks. -/
theorem segDeg_not_adjacent (R : Pair9) (hfin : (points9 R).Finite) {k j : Fin 7}
    (h : (k, j) ∈ segDeg R) : (k, j + 1) ∉ segDeg R := by
  classical
  simp only [segDeg, Finset.mem_filter, Finset.mem_univ, true_and] at h ⊢
  exact degenerate_not_adjacent R hfin k j h

/-- Every degenerate `Q`-point is indexed by `segDeg`. -/
theorem degQ_ncard_le_segDeg (R : Pair9) : (degQ R).ncard ≤ (segDeg R).card := by
  classical
  have hsub : degQ R ⊆ ((segDeg R).image (fun p => R.V (pQ p.2)) : Finset (ℝ × ℝ)) := by
    rintro x ⟨hx, j, rfl⟩
    obtain ⟨k, hk⟩ := Set.mem_iUnion.mp hx.1
    refine Finset.mem_coe.mpr (Finset.mem_image.mpr ⟨(k, j), ?_, rfl⟩)
    simp only [segDeg, Finset.mem_filter, Finset.mem_univ, true_and]
    exact hk
  have hcoe : (((segDeg R).image (fun p => R.V (pQ p.2)) : Finset (ℝ × ℝ)) :
      Set (ℝ × ℝ)).ncard = ((segDeg R).image (fun p => R.V (pQ p.2))).card := by
    simp [Set.ncard, Set.encard_eq_coe_toFinset_card]
  calc (degQ R).ncard
      ≤ (((segDeg R).image (fun p => R.V (pQ p.2)) : Finset (ℝ × ℝ)) :
          Set (ℝ × ℝ)).ncard :=
        Set.ncard_le_ncard hsub (Finset.finite_toSet _)
    _ = ((segDeg R).image (fun p => R.V (pQ p.2))).card := hcoe
    _ ≤ (segDeg R).card := Finset.card_image_le

#print axioms segDeg_subset_degSetOf
#print axioms segDeg_not_adjacent
#print axioms degQ_ncard_le_segDeg

open scoped Classical in
/-- The mirror: genuine `P`-vertex degeneracies, on a `Q`-**side**. -/
noncomputable def segDegP (R : Pair9) : Finset (Fin 7 × Fin 7) :=
  Finset.univ.filter (fun p => R.V (pP p.2) ∈ sideQ9 R p.1)

theorem degP_ncard_le_segDegP (R : Pair9) : (degP R).ncard ≤ (segDegP R).card := by
  classical
  have hsub : degP R ⊆ ((segDegP R).image (fun p => R.V (pP p.2)) : Finset (ℝ × ℝ)) := by
    rintro x ⟨hx, i, rfl⟩
    obtain ⟨j, hj⟩ := Set.mem_iUnion.mp hx.2
    refine Finset.mem_coe.mpr (Finset.mem_image.mpr ⟨(j, i), ?_, rfl⟩)
    simp only [segDegP, Finset.mem_filter, Finset.mem_univ, true_and]
    exact hj
  have hcoe : (((segDegP R).image (fun p => R.V (pP p.2)) : Finset (ℝ × ℝ)) :
      Set (ℝ × ℝ)).ncard = ((segDegP R).image (fun p => R.V (pP p.2))).card := by
    simp [Set.ncard, Set.encard_eq_coe_toFinset_card]
  calc (degP R).ncard
      ≤ (((segDegP R).image (fun p => R.V (pP p.2)) : Finset (ℝ × ℝ)) :
          Set (ℝ × ℝ)).ncard :=
        Set.ncard_le_ncard hsub (Finset.finite_toSet _)
    _ = ((segDegP R).image (fun p => R.V (pP p.2))).card := hcoe
    _ ≤ (segDegP R).card := Finset.card_image_le

/-- **`|degPts| ≤ |segDeg| + |segDegP|`**, the segment-based replacement for
`Compose.degPts_ncard_le`. Unlike the line-based version, both summands count
only genuine intersection points — which is what makes them payable. -/
theorem degPts_ncard_le_seg (R : Pair9) (hfin : (points9 R).Finite) :
    (degPts R).ncard ≤ (segDeg R).card + (segDegP R).card := by
  have hfP : (degP R).Finite := hfin.subset (fun _ hx => hx.1)
  have hfQ : (degQ R).Finite := hfin.subset (fun _ hx => hx.1)
  calc (degPts R).ncard
      = (degP R ∪ degQ R).ncard := by rw [degP_union_degQ]
    _ ≤ (degP R).ncard + (degQ R).ncard := Set.ncard_union_le _ _
    _ ≤ (segDegP R).card + (segDeg R).card :=
        Nat.add_le_add (degP_ncard_le_segDegP R) (degQ_ncard_le_segDeg R)
    _ = (segDeg R).card + (segDegP R).card := Nat.add_comm _ _

/-- **The bound the corrected invariant would give.**  Same shape as
`Compose.points9_le_38_of_sum_bound`, but with the *segment-based* measures —
the ones a chain can actually preserve. -/
theorem points9_le_38_of_seg_sum (R : Pair9) (hfin : (points9 R).Finite)
    (h : (crossPairsOf R.V).card + (segDeg R).card + (segDegP R).card ≤ 38) :
    (points9 R).ncard ≤ 38 := by
  calc (points9 R).ncard
      ≤ (crossPairsOf R.V).card + (degPts R).ncard :=
        points9_ncard_le_crossPairs_add_deg R hfin
    _ ≤ (crossPairsOf R.V).card + ((segDeg R).card + (segDegP R).card) :=
        Nat.add_le_add_left (degPts_ncard_le_seg R hfin) _
    _ ≤ 38 := by omega

#print axioms degP_ncard_le_segDegP
#print axioms degPts_ncard_le_seg
#print axioms points9_le_38_of_seg_sum

/-! ## 30. Disjointness of the incident pair sets, across sides

Each degeneracy `(k, j)` claims the two pairs `(k, j−1)` and `(k, j)`. Two
degeneracies claim disjoint sets unless they share a side *and* are adjacent —
which `segDeg_not_adjacent` forbids. -/

open scoped Classical in
/-- The pairs a degeneracy converts into. -/
noncomputable def incidentPairs (d : Fin 7 × Fin 7) : Finset (Fin 7 × Fin 7) :=
  {(d.1, d.2 - 1), (d.1, d.2)}

theorem incidentPairs_disjoint (R : Pair9) (hfin : (points9 R).Finite)
    {d e : Fin 7 × Fin 7} (hd : d ∈ segDeg R) (he : e ∈ segDeg R) (hne : d ≠ e) :
    Disjoint (incidentPairs d) (incidentPairs e) := by
  classical
  by_cases hk : d.1 = e.1
  · -- same side: the two vertex indices are distinct and non-adjacent
    have hj : d.2 ≠ e.2 := fun h => hne (Prod.ext hk h)
    have h1 : e.2 ≠ d.2 + 1 := by
      intro h
      refine segDeg_not_adjacent R hfin hd ?_
      have : (d.1, d.2 + 1) = e := by rw [← h]; exact Prod.ext hk rfl
      rw [this]; exact he
    have h2 : d.2 ≠ e.2 + 1 := by
      intro h
      refine segDeg_not_adjacent R hfin he ?_
      have : (e.1, e.2 + 1) = d := by rw [← h]; exact Prod.ext hk.symm rfl
      rw [this]; exact hd
    have hA : d.2 - 1 ≠ e.2 - 1 := fun h => hj (sub_left_inj.mp h)
    have hB : d.2 - 1 ≠ e.2 := fun h => h2 (sub_eq_iff_eq_add.mp h)
    have hC : d.2 ≠ e.2 - 1 := fun h => h1 (eq_sub_iff_add_eq.mp h).symm
    simp only [incidentPairs, Finset.disjoint_left, Finset.mem_insert,
      Finset.mem_singleton]
    rintro q (rfl | rfl) <;> simp [Prod.ext_iff, hA, hB, hC, hj, hk]
  · -- different sides: every pair differs in its first coordinate
    simp only [incidentPairs, Finset.disjoint_left, Finset.mem_insert,
      Finset.mem_singleton]
    rintro q (rfl | rfl) <;> simp [Prod.ext_iff, hk]

/-- A degeneracy's incident pairs are not crossings before the shift. -/
theorem incidentPairs_disjoint_crossPairs (R : Pair9) {d : Fin 7 × Fin 7}
    (hd : d ∈ segDeg R) : Disjoint (incidentPairs d) (crossPairsOf R.V) := by
  classical
  have hdeg : orientR (R.V (pP d.1)) (R.V (pP (d.1 + 1))) (R.V (pQ d.2)) = 0 := by
    have := segDeg_subset_degSetOf R hd
    simpa [degSetOf] using this
  obtain ⟨h1, h2⟩ := degenerate_not_mem_crossPairs_any R.V d.1 d.2 hdeg
  simp only [incidentPairs, Finset.disjoint_left, Finset.mem_insert,
    Finset.mem_singleton]
  rintro q (rfl | rfl)
  · exact h2
  · exact h1

#print axioms incidentPairs_disjoint
#print axioms incidentPairs_disjoint_crossPairs

/-- **The counting skeleton, in its sharp form.**  `card_add_le_of_disjoint_new`
concludes `A.card + D.card ≤ A'.card` from a lower bound on the sum; this keeps
the sum itself, which is what the averaging identity actually bounds. -/
theorem card_add_sum_le {P ι : Type*} [DecidableEq P] [DecidableEq ι]
    (A A' : Finset P) (D : Finset ι) (newOf : ι → Finset P)
    (hmono : A ⊆ A') (hnew : ∀ d ∈ D, newOf d ⊆ A')
    (hdisjA : ∀ d ∈ D, Disjoint (newOf d) A)
    (hdisj : ∀ d ∈ D, ∀ d' ∈ D, d ≠ d' → Disjoint (newOf d) (newOf d')) :
    A.card + ∑ d ∈ D, (newOf d).card ≤ A'.card := by
  classical
  have hUcard : ∑ d ∈ D, (newOf d).card = (D.biUnion newOf).card :=
    (Finset.card_biUnion hdisj).symm
  have hdisjAU : Disjoint A (D.biUnion newOf) := by
    rw [Finset.disjoint_biUnion_right]
    exact fun d hd => (hdisjA d hd).symm
  have hsub : A ∪ D.biUnion newOf ⊆ A' := by
    intro x hx
    rcases Finset.mem_union.mp hx with h | h
    · exact hmono h
    · obtain ⟨d, hd, hxd⟩ := Finset.mem_biUnion.mp h
      exact hnew d hd hxd
  calc A.card + ∑ d ∈ D, (newOf d).card
      = A.card + (D.biUnion newOf).card := by rw [hUcard]
    _ = (A ∪ D.biUnion newOf).card := (Finset.card_union_of_disjoint hdisjAU).symm
    _ ≤ A'.card := Finset.card_le_card hsub

open scoped Classical in
/-- **Instantiated at a configuration.**  The crossing count grows by at least
the total number of incident pairs the degeneracies convert into. -/
theorem crossPairs_card_add_sum_le (R : Pair9) (hfin : (points9 R).Finite)
    (V' : Fin 14 → ℝ × ℝ) (hmono : crossPairsOf R.V ⊆ crossPairsOf V') :
    (crossPairsOf R.V).card
        + ∑ d ∈ segDeg R, ((incidentPairs d).filter (fun q => q ∈ crossPairsOf V')).card
      ≤ (crossPairsOf V').card := by
  classical
  refine card_add_sum_le _ _ _ _ hmono (fun d _ q hq => (Finset.mem_filter.mp hq).2)
    (fun d hd => Finset.disjoint_of_subset_left (Finset.filter_subset _ _)
      (incidentPairs_disjoint_crossPairs R hd))
    (fun d hd e he hne => Finset.disjoint_filter_filter
      (incidentPairs_disjoint R hfin hd he hne))

#print axioms card_add_sum_le
#print axioms crossPairs_card_add_sum_le

/-! ## 31. The incident-pair count equals the affine local count -/

open scoped Classical in
/-- **The bridge, for any side.**  The number of a degeneracy's incident pairs
that cross after the shift is exactly the affine local count that
`TiltedShift.localContribAff` is built from. -/
theorem card_incident_eq_aff (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| < δ₀ → ∀ k j : Fin 7,
      orientR (V (pP k)) (V (pP (k + 1))) (V (pQ j)) = 0 →
      orientR (V (pQ (j - 1))) (V (pQ j)) (V (pP k)) *
          orientR (V (pQ (j - 1))) (V (pQ j)) (V (pP (k + 1))) < 0 →
      orientR (V (pQ j)) (V (pQ (j + 1))) (V (pP k)) *
          orientR (V (pQ j)) (V (pQ (j + 1))) (V (pP (k + 1))) < 0 →
      ((incidentPairs (k, j)).filter (fun q => q ∈ crossPairsOf (shiftV V i t δ))).card
        = (if (δ * shiftCoef V i t k (pQ j))
              * (orientR (V (pP k)) (V (pP (k + 1))) (V (pQ (j - 1)))
                  + δ * shiftCoef V i t k (pQ (j - 1))) < 0 then 1 else 0)
          + (if (δ * shiftCoef V i t k (pQ j))
              * (orientR (V (pP k)) (V (pP (k + 1))) (V (pQ (j + 1)))
                  + δ * shiftCoef V i t k (pQ (j + 1))) < 0 then 1 else 0) := by
  classical
  obtain ⟨δ₁, h₁, hprev⟩ := mem_crossPairs_iff_aff_prev V i t
  obtain ⟨δ₂, h₂, hnext⟩ := mem_crossPairs_iff_aff V i t
  refine ⟨min δ₁ δ₂, lt_min h₁ h₂, fun δ hδ k j hdeg hsepP hsepN => ?_⟩
  have hd1 : |δ| < δ₁ := lt_of_lt_of_le hδ (min_le_left _ _)
  have hd2 : |δ| < δ₂ := lt_of_lt_of_le hδ (min_le_right _ _)
  rw [show incidentPairs (k, j) = {(k, j - 1), (k, j)} from rfl,
    card_filter_pair _ _ (pred_ne_self k j)]
  exact congrArg₂ (· + ·)
    (if_congr (hprev δ hd1 k j hdeg hsepP) rfl rfl)
    (if_congr (hnext δ hd2 k j hdeg hsepN) rfl rfl)

#print axioms card_incident_eq_aff

open scoped Classical in
/-- **The incident-pair count *is* the local contribution**, when the
degeneracy's rate is nonzero. -/
theorem card_incident_eq_localContribAff (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| < δ₀ → ∀ k j : Fin 7,
      δ * shiftCoef V i t k (pQ j) ≠ 0 →
      orientR (V (pP k)) (V (pP (k + 1))) (V (pQ j)) = 0 →
      orientR (V (pQ (j - 1))) (V (pQ j)) (V (pP k)) *
          orientR (V (pQ (j - 1))) (V (pQ j)) (V (pP (k + 1))) < 0 →
      orientR (V (pQ j)) (V (pQ (j + 1))) (V (pP k)) *
          orientR (V (pQ j)) (V (pQ (j + 1))) (V (pP (k + 1))) < 0 →
      ((incidentPairs (k, j)).filter (fun q => q ∈ crossPairsOf (shiftV V i t δ))).card
        = TiltedShift.localContribAff δ (shiftCoef V i t k (pQ j))
            (shiftCoef V i t k (pQ (j - 1))) (shiftCoef V i t k (pQ (j + 1)))
            (orientR (V (pP k)) (V (pP (k + 1))) (V (pQ (j - 1))))
            (orientR (V (pP k)) (V (pP (k + 1))) (V (pQ (j + 1)))) := by
  obtain ⟨δ₀, hδ₀, h⟩ := card_incident_eq_aff V i t
  refine ⟨δ₀, hδ₀, fun δ hδ k j hrate hdeg hP hN => ?_⟩
  rw [h δ hδ k j hdeg hP hN]
  simp only [TiltedShift.localContribAff, if_neg hrate]

/-- **A degeneracy on a side the shift does not touch stays put.**  Its rate is
zero by `shiftCoef_eq_zero`, and — since nothing about that side or that vertex
moved — it is still on the segment, so it is still counted. -/
theorem segDeg_mem_of_untouched (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t δ : ℝ)
    (R R' : Pair9) (hR : R.V = V) (hR' : R'.V = shiftV V i t δ) {k j : Fin 7}
    (hmem : (k, j) ∈ segDeg R)
    (h1 : ¬(pP k = pP i ∨ pP k = pP (i + 1)))
    (h2 : ¬(pP (k + 1) = pP i ∨ pP (k + 1) = pP (i + 1))) :
    (k, j) ∈ segDeg R' := by
  classical
  simp only [segDeg, Finset.mem_filter, Finset.mem_univ, true_and] at hmem ⊢
  have e1 : R'.V (pP k) = R.V (pP k) := by
    rw [hR', hR, shiftV]
    exact if_neg h1
  have e2 : R'.V (pP (k + 1)) = R.V (pP (k + 1)) := by
    rw [hR', hR, shiftV]
    exact if_neg h2
  have e3 : R'.V (pQ j) = R.V (pQ j) := by rw [hR', hR]; exact shiftV_Q V i t δ j
  simpa only [sideP9, e1, e2, e3] using hmem

#print axioms card_incident_eq_localContribAff
#print axioms segDeg_mem_of_untouched

/-! ## 32. The per-step invariant, as arithmetic

Everything geometric is now in place; what remains is the bookkeeping that
turns it into `crossPairs + segDeg` being non-decreasing. Isolating it as pure
`Finset` arithmetic makes the geometric hypotheses visible as exactly five
facts. -/

/-- **The step invariant, abstractly.**  `D` are the degeneracies, `Z ⊆ D`
those the shift does not touch, `newOf d` the incident pairs `d` converts into,
and `lc d` its local contribution.

* `hgrow`  — the crossings grow by the converted pairs (`crossPairs_card_add_sum_le`);
* `hN`     — off `Z` the converted count *is* the local contribution
             (`card_incident_eq_localContribAff`);
* `hZ1`    — on `Z` the local contribution is one (the vertex does not move);
* `hD'`    — the untouched degeneracies survive (`segDeg_mem_of_untouched`);
* `havg`   — the averaging identity (`TiltedShift.exists_sign_contrib_aff`).

Conclusion: `|A| + |D| ≤ |A'| + |D'|`. -/
theorem step_invariant_abstract {ι P : Type*} [DecidableEq ι] [DecidableEq P]
    (A A' : Finset P) (D Z D' : Finset ι) (newOf : ι → Finset P) (lc : ι → ℕ)
    (hZD : Z ⊆ D)
    (hgrow : A.card + ∑ d ∈ D, (newOf d).card ≤ A'.card)
    (hN : ∀ d ∈ D, d ∉ Z → (newOf d).card = lc d)
    (hZ1 : ∀ d ∈ Z, lc d = 1)
    (hD' : Z.card ≤ D'.card)
    (havg : D.card ≤ ∑ d ∈ D, lc d) :
    A.card + D.card ≤ A'.card + D'.card := by
  classical
  have hsplit : ∑ d ∈ D \ Z, lc d + ∑ d ∈ Z, lc d = ∑ d ∈ D, lc d :=
    Finset.sum_sdiff hZD
  have hZsum : ∑ d ∈ Z, lc d = Z.card := by
    rw [Finset.sum_congr rfl (fun d hd => hZ1 d hd)]
    simp
  have hDiff : ∑ d ∈ D \ Z, lc d ≤ ∑ d ∈ D, (newOf d).card := by
    calc ∑ d ∈ D \ Z, lc d = ∑ d ∈ D \ Z, (newOf d).card :=
          Finset.sum_congr rfl fun d hd => by
            obtain ⟨hdD, hdZ⟩ := Finset.mem_sdiff.mp hd
            exact (hN d hdD hdZ).symm
      _ ≤ ∑ d ∈ D, (newOf d).card :=
          Finset.sum_le_sum_of_subset (Finset.sdiff_subset)
  omega

#print axioms step_invariant_abstract

/-! ## 33. The rate on the shifted side itself

For the side being shifted, both endpoints move together, and the rate
collapses to `w × u` — **independent of the vertex**. It is nonzero for every
`t`, by `cross_tilt_self`, so every degeneracy on the shifted side is payable
with no further hypothesis. -/

theorem shiftCoef_self (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) (a : Fin 14)
    (ha : ¬(a = pP i ∨ a = pP (i + 1))) :
    shiftCoef V i t i a
      = cross (tilt (V (pP (i + 1)) - V (pP i)) t) (V (pP (i + 1)) - V (pP i)) := by
  simp only [shiftCoef, dcoef, cross, Prod.fst_sub, Prod.snd_sub, if_neg ha,
    eq_self_iff_true, or_true, true_or, if_true]
  ring

/-- **Every degeneracy on the shifted side has nonzero rate.** -/
theorem shiftCoef_self_ne_zero (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ)
    (hu : V (pP (i + 1)) - V (pP i) ≠ 0) (a : Fin 14)
    (ha : ¬(a = pP i ∨ a = pP (i + 1))) :
    shiftCoef V i t i a ≠ 0 := by
  rw [shiftCoef_self V i t a ha]
  exact RotationLaw.cross_tilt_self hu t

/-- In particular for a `Q`-vertex, which never coincides with a `P`-index. -/
theorem shiftCoef_self_Q_ne_zero (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ)
    (hu : V (pP (i + 1)) - V (pP i) ≠ 0) (j : Fin 7) :
    shiftCoef V i t i (pQ j) ≠ 0 := by
  refine shiftCoef_self_ne_zero V i t hu (pQ j) ?_
  rintro (h | h)
  · exact pP_ne_pQ i j h.symm
  · exact pP_ne_pQ (i + 1) j h.symm

#print axioms shiftCoef_self
#print axioms shiftCoef_self_Q_ne_zero

/-! ## 34. The rate on the forward neighbour

Side `i+1` has its *first* endpoint moved and its second fixed, so the rate is
`w × (F − X)` with `F` the fixed endpoint — vanishing exactly when `X − F` is
parallel to the tilt. -/

theorem succ_succ_ne (i : Fin 7) : i + 1 + 1 ≠ i ∧ i + 1 + 1 ≠ i + 1 := by
  revert i; decide

theorem shiftCoef_next (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) (a : Fin 14)
    (ha : ¬(a = pP i ∨ a = pP (i + 1))) :
    shiftCoef V i t (i + 1) a
      = cross (tilt (V (pP (i + 1)) - V (pP i)) t)
          (V (pP (i + 1 + 1)) - V a) := by
  obtain ⟨h1, h2⟩ := succ_succ_ne i
  have hb : ¬(pP (i + 1 + 1) = pP i ∨ pP (i + 1 + 1) = pP (i + 1)) := by
    rintro (h | h)
    · exact h1 (pP_inj h)
    · exact h2 (pP_inj h)
  simp only [shiftCoef, dcoef, cross, Prod.fst_sub, Prod.snd_sub, if_neg ha, if_neg hb,
    eq_self_iff_true, or_true, true_or, if_true]
  ring

/-- **The forward neighbour's rate is nonzero**, given a tilt transverse to it
and no coincidence at its fixed endpoint. -/
theorem shiftCoef_next_ne_zero (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) (j : Fin 7)
    (htr : cross (tilt (V (pP (i + 1)) - V (pP i)) t)
        ((V (pP (i + 1))).1 - (V (pP (i + 1 + 1))).1,
         (V (pP (i + 1))).2 - (V (pP (i + 1 + 1))).2) ≠ 0)
    (hne : ((V (pQ j)).1 - (V (pP (i + 1 + 1))).1,
            (V (pQ j)).2 - (V (pP (i + 1 + 1))).2) ≠ 0)
    (hdeg : orientR (V (pP (i + 1 + 1))) (V (pP (i + 1))) (V (pQ j)) = 0) :
    shiftCoef V i t (i + 1) (pQ j) ≠ 0 := by
  have haQ : ¬(pQ j = pP i ∨ pQ j = pP (i + 1)) := by
    rintro (h | h)
    · exact pP_ne_pQ i j h.symm
    · exact pP_ne_pQ (i + 1) j h.symm
  rw [shiftCoef_next V i t (pQ j) haQ]
  have hrate := rate_ne_zero_of_transverse htr hne hdeg
  intro hz
  refine hrate ?_
  simp only [cross, Prod.fst_sub, Prod.snd_sub] at hz ⊢
  linarith

#print axioms shiftCoef_next
#print axioms shiftCoef_next_ne_zero

/-! ## 35. The rate on the backward neighbour

Side `i−1` has its *second* endpoint moved, so the rate is `w × (X − F)` with
`F` the fixed first endpoint — the mirror of §34. -/

theorem pred_ne (i : Fin 7) : i - 1 ≠ i ∧ i - 1 ≠ i + 1 := by
  revert i; decide

theorem shiftCoef_prev (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) (a : Fin 14)
    (ha : ¬(a = pP i ∨ a = pP (i + 1))) :
    shiftCoef V i t (i - 1) a
      = cross (tilt (V (pP (i + 1)) - V (pP i)) t) (V a - V (pP (i - 1))) := by
  obtain ⟨h1, h2⟩ := pred_ne i
  have hA : ¬(pP (i - 1) = pP i ∨ pP (i - 1) = pP (i + 1)) := by
    rintro (h | h)
    · exact h1 (pP_inj h)
    · exact h2 (pP_inj h)
  have hji : i - 1 + 1 = i := by simp
  simp only [shiftCoef, hji, dcoef, cross, Prod.fst_sub, Prod.snd_sub, if_neg ha,
    if_neg hA, eq_self_iff_true, or_true, true_or, if_true]
  ring

/-- **The backward neighbour's rate is nonzero**, under the mirror hypotheses. -/
theorem shiftCoef_prev_ne_zero (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) (j : Fin 7)
    (htr : cross (tilt (V (pP (i + 1)) - V (pP i)) t)
        ((V (pP i)).1 - (V (pP (i - 1))).1, (V (pP i)).2 - (V (pP (i - 1))).2) ≠ 0)
    (hne : ((V (pQ j)).1 - (V (pP (i - 1))).1,
            (V (pQ j)).2 - (V (pP (i - 1))).2) ≠ 0)
    (hdeg : orientR (V (pP (i - 1))) (V (pP i)) (V (pQ j)) = 0) :
    shiftCoef V i t (i - 1) (pQ j) ≠ 0 := by
  have haQ : ¬(pQ j = pP i ∨ pQ j = pP (i + 1)) := by
    rintro (h | h)
    · exact pP_ne_pQ i j h.symm
    · exact pP_ne_pQ (i + 1) j h.symm
  rw [shiftCoef_prev V i t (pQ j) haQ]
  have hrate := rate_ne_zero_of_transverse htr hne hdeg
  intro hz
  refine hrate ?_
  simp only [cross, Prod.fst_sub, Prod.snd_sub] at hz ⊢
  linarith

#print axioms shiftCoef_prev
#print axioms shiftCoef_prev_ne_zero

/-! ## 36. The dichotomy

A side is either one of the three the shift touches — `i−1`, `i`, `i+1` — or
its rate is identically zero and its degeneracies are untouched. -/

theorem shiftCoef_far (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) {k : Fin 7}
    (h1 : k ≠ i) (h2 : k ≠ i + 1) (h3 : k ≠ i - 1) (a : Fin 14)
    (ha : ¬(a = pP i ∨ a = pP (i + 1))) :
    shiftCoef V i t k a = 0 := by
  refine shiftCoef_eq_zero V i t k a ?_ ?_ ha
  · rintro (h | h)
    · exact h1 (pP_inj h)
    · exact h2 (pP_inj h)
  · rintro (h | h)
    · exact h3 (by
        have := pP_inj h
        rw [← this]; simp)
    · exact h1 (by
        have := pP_inj h
        exact add_right_cancel this)

/-- **The dichotomy, for a `Q`-vertex.**  Either the side is one of the three
the shift touches, or the rate vanishes. -/
theorem shiftCoef_dichotomy (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) (k j : Fin 7) :
    (k = i ∨ k = i + 1 ∨ k = i - 1) ∨ shiftCoef V i t k (pQ j) = 0 := by
  by_cases h1 : k = i
  · exact Or.inl (Or.inl h1)
  by_cases h2 : k = i + 1
  · exact Or.inl (Or.inr (Or.inl h2))
  by_cases h3 : k = i - 1
  · exact Or.inl (Or.inr (Or.inr h3))
  refine Or.inr (shiftCoef_far V i t h1 h2 h3 (pQ j) ?_)
  rintro (h | h)
  · exact pP_ne_pQ i j h.symm
  · exact pP_ne_pQ (i + 1) j h.symm

/-- The three touched sides, as a `Finset`. -/
def touched (i : Fin 7) : Finset (Fin 7) := {i, i + 1, i - 1}

theorem mem_touched_iff (i k : Fin 7) :
    k ∈ touched i ↔ (k = i ∨ k = i + 1 ∨ k = i - 1) := by
  simp [touched]

#print axioms shiftCoef_far
#print axioms shiftCoef_dichotomy

end Pair9Shift
end Heptagon
