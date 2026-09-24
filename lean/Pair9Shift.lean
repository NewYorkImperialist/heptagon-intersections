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

/-! ## 37. The per-step invariant, instantiated

All the geometry is in place. This is `step_invariant_abstract` with the
configuration's own objects substituted. -/

/-- The local contribution of a degeneracy of a configuration. -/
noncomputable def lcAt (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t δ : ℝ)
    (d : Fin 7 × Fin 7) : ℕ :=
  TiltedShift.localContribAff δ (shiftCoef V i t d.1 (pQ d.2))
    (shiftCoef V i t d.1 (pQ (d.2 - 1))) (shiftCoef V i t d.1 (pQ (d.2 + 1)))
    (orientR (V (pP d.1)) (V (pP (d.1 + 1))) (V (pQ (d.2 - 1))))
    (orientR (V (pP d.1)) (V (pP (d.1 + 1))) (V (pQ (d.2 + 1))))

theorem lcAt_untouched (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t δ : ℝ)
    {d : Fin 7 × Fin 7} (h : d.1 ∉ touched i) : lcAt V i t δ d = 1 := by
  have h1 : d.1 ≠ i := fun hc => h (by rw [mem_touched_iff]; exact Or.inl hc)
  have h2 : d.1 ≠ i + 1 := fun hc => h (by rw [mem_touched_iff]; exact Or.inr (Or.inl hc))
  have h3 : d.1 ≠ i - 1 := fun hc => h (by rw [mem_touched_iff]; exact Or.inr (Or.inr hc))
  have hz : shiftCoef V i t d.1 (pQ d.2) = 0 := by
    refine shiftCoef_far V i t h1 h2 h3 (pQ d.2) ?_
    rintro (hc | hc)
    · exact pP_ne_pQ i d.2 hc.symm
    · exact pP_ne_pQ (i + 1) d.2 hc.symm
  simp [lcAt, TiltedShift.localContribAff, hz]

open scoped Classical in
/-- **The per-step invariant.**  `crossPairs + segDeg` does not decrease.

The three hypotheses are what the geometry must supply, and each is a theorem
elsewhere in this file or in `TiltedShift`:

* `hbridge` — on a touched side the incident-pair count *is* the local
  contribution (`card_incident_eq_localContribAff`, once the rate is known
  nonzero by §§33–35);
* `hsurv` — degeneracies on untouched sides survive (`segDeg_mem_of_untouched`);
* `havg` — the averaging identity (`TiltedShift.exists_sign_contrib_aff`). -/
theorem step_invariant (R R' : Pair9) (hfin : (points9 R).Finite) (i : Fin 7) (t δ : ℝ)
    (hmono : crossPairsOf R.V ⊆ crossPairsOf R'.V)
    (hbridge : ∀ d ∈ segDeg R, d.1 ∈ touched i →
      ((incidentPairs d).filter (fun q => q ∈ crossPairsOf R'.V)).card
        = lcAt R.V i t δ d)
    (hsurv : ∀ d ∈ segDeg R, d.1 ∉ touched i → d ∈ segDeg R')
    (havg : (segDeg R).card ≤ ∑ d ∈ segDeg R, lcAt R.V i t δ d) :
    (crossPairsOf R.V).card + (segDeg R).card
      ≤ (crossPairsOf R'.V).card + (segDeg R').card := by
  classical
  refine step_invariant_abstract _ _ (segDeg R)
    ((segDeg R).filter (fun d => d.1 ∉ touched i)) (segDeg R')
    (fun d => (incidentPairs d).filter (fun q => q ∈ crossPairsOf R'.V))
    (lcAt R.V i t δ) (Finset.filter_subset _ _)
    (crossPairs_card_add_sum_le R hfin R'.V hmono) ?_ ?_ ?_ havg
  · intro d hd hdZ
    refine hbridge d hd ?_
    by_contra hc
    exact hdZ (Finset.mem_filter.mpr ⟨hd, hc⟩)
  · intro d hd
    obtain ⟨-, hnt⟩ := Finset.mem_filter.mp hd
    exact lcAt_untouched R.V i t δ hnt
  · refine Finset.card_le_card ?_
    intro d hd
    obtain ⟨hdD, hnt⟩ := Finset.mem_filter.mp hd
    exact hsurv d hdD hnt

#print axioms lcAt_untouched
#print axioms step_invariant

/-! ## 38. Why one measure is not enough, and what that costs

`step_invariant` carries `crossPairs + segDeg`. The bound `(A9)` needs
`crossPairs + segDeg + segDegP ≤ 38` (`points9_le_38_of_seg_sum`), so the
mirror measure has to be carried too — and a `P`-side shift moves `P`-vertices,
so it can take one **off** a `Q`-side and lose that intersection point.

Two routes suggest themselves and both have a catch worth recording.

**Route 1 — clear `segDegP` first, then preserve it.** `SwapPQ`'s
`exists_delta_preserving_degSetQ` does keep `P`-vertices off `Q`-side *lines*,
hence off `Q`-sides, so during the `P`-phase `segDegP = ∅` and only `segDeg`
needs carrying. But the `Q`-phase that clears `segDegP` in the first place
moves `Q`-vertices, and *its* losses fall on `segDeg`. The order is circular
unless one phase's losses are shown payable while the other measure is still
nonzero.

**Route 2 — carry both at once.** Symmetric: `segDegP` of a configuration is
`segDeg` of the exchanged one (`SwapPQ.swapV` sends `sideQ9` to `sideP9` and
`pP` to `pQ`), so the mirror accounting is this development transported rather
than a second one. What is *not* transported is the interaction: a single
`P`-shift changes both measures, so the two accountings share a `δ` and must be
proved together rather than composed.

**Route 2 is the one taken**, in §§40–45. `step_invariant_joint` carries both
measures across a single shift with a single `δ`, which is exactly what could
not be obtained by composing the two accountings; `points9_le_38_of_joint` then
turns a chain ending degeneracy-free into `(A9)`'s bound on the **original**
configuration.

What made it work is that each of the three disjointness obligations the joint
counting needs is the same kind of fact as everything else here: within
`segDeg` it is `segDeg_not_adjacent`, within `segDegP` it is
`segDegP_not_adjacent`, and **across** the two it is
`incidentPairs_disjoint_P` — two entries can only claim a common pair when
their indices line up in one of four ways, and each way puts two points of
`∂P ∩ ∂Q` on one side pair, which `NoOverlap` collapses to a vertex–vertex
coincidence. `(Fin)` and §9.1 having run are what exclude it, as everywhere
else. -/

/-! ## 39. The two degeneracy families cannot claim the same pair

The joint accounting of §38 needs the pairs a `segDeg` entry converts into to
be disjoint from those a `segDegP` entry converts into. They can only collide
when the two entries sit on *the same* `P`-side and `Q`-side — and then that
side pair contains two distinct points of `∂P ∩ ∂Q`, which `(Fin)` forbids. -/

/-- **A `segDeg` and a `segDegP` entry on the same side pair force a
coincidence.**  `Q_j` lies on `P`-side `v`, and `P_v` lies on `Q`-side `j`, so
both points lie in `sideP9 v ∩ sideQ9 j`; `NoOverlap` — which `(Fin)` supplies
— makes them equal, and that is a vertex–vertex coincidence. -/
theorem segDeg_segDegP_collision (R : Pair9) (hfin : (points9 R).Finite) (v j : Fin 7)
    (hQ : R.V (pQ j) ∈ sideP9 R v) (hP : R.V (pP v) ∈ sideQ9 R j) :
    R.V (pP v) = R.V (pQ j) := by
  have hno := noOverlap_of_finite R hfin
  refine (hno v j (R.V (pP v)) (R.V (pQ j)) ?_ hP ?_ ?_).symm ▸ rfl
  · exact left_mem_segment ℝ _ _
  · exact hQ
  · exact left_mem_segment ℝ _ _

/-- The contrapositive, in the form the disjointness uses: on a
coincidence-free configuration the two families never meet on the same side
pair. -/
theorem no_segDeg_segDegP_overlap (R : Pair9) (hfin : (points9 R).Finite) (v j : Fin 7)
    (hne : R.V (pP v) ≠ R.V (pQ j)) (hQ : R.V (pQ j) ∈ sideP9 R v) :
    R.V (pP v) ∉ sideQ9 R j :=
  fun hP => hne (segDeg_segDegP_collision R hfin v j hQ hP)

#print axioms segDeg_segDegP_collision
#print axioms no_segDeg_segDegP_overlap

/-! ## 40. The joint arithmetic

§38 named the obstruction: `(A9)` needs `crossPairs + segDeg + segDegP`, and a
single shift changes **both** degeneracy measures, so the two accountings share
a `δ` and must be proved together. This is that, as arithmetic. -/

/-- The counting skeleton for **two** families of converted pairs. -/
theorem card_add_sum2_le {P ι κ : Type*} [DecidableEq P] [DecidableEq ι] [DecidableEq κ]
    (A A' : Finset P) (D : Finset ι) (E : Finset κ)
    (newD : ι → Finset P) (newE : κ → Finset P)
    (hmono : A ⊆ A')
    (hnewD : ∀ d ∈ D, newD d ⊆ A') (hnewE : ∀ e ∈ E, newE e ⊆ A')
    (hdisjAD : ∀ d ∈ D, Disjoint (newD d) A) (hdisjAE : ∀ e ∈ E, Disjoint (newE e) A)
    (hdisjD : ∀ d ∈ D, ∀ d' ∈ D, d ≠ d' → Disjoint (newD d) (newD d'))
    (hdisjE : ∀ e ∈ E, ∀ e' ∈ E, e ≠ e' → Disjoint (newE e) (newE e'))
    (hcross : ∀ d ∈ D, ∀ e ∈ E, Disjoint (newD d) (newE e)) :
    A.card + (∑ d ∈ D, (newD d).card + ∑ e ∈ E, (newE e).card) ≤ A'.card := by
  classical
  have hUD : ∑ d ∈ D, (newD d).card = (D.biUnion newD).card :=
    (Finset.card_biUnion hdisjD).symm
  have hUE : ∑ e ∈ E, (newE e).card = (E.biUnion newE).card :=
    (Finset.card_biUnion hdisjE).symm
  have hAD : Disjoint A (D.biUnion newD) := by
    rw [Finset.disjoint_biUnion_right]; exact fun d hd => (hdisjAD d hd).symm
  have hAE : Disjoint A (E.biUnion newE) := by
    rw [Finset.disjoint_biUnion_right]; exact fun e he => (hdisjAE e he).symm
  have hDE : Disjoint (D.biUnion newD) (E.biUnion newE) := by
    rw [Finset.disjoint_biUnion_left]
    intro d hd
    rw [Finset.disjoint_biUnion_right]
    exact fun e he => hcross d hd e he
  have hAU : Disjoint A (D.biUnion newD ∪ E.biUnion newE) := by
    rw [Finset.disjoint_union_right]; exact ⟨hAD, hAE⟩
  have hsub : A ∪ (D.biUnion newD ∪ E.biUnion newE) ⊆ A' := by
    intro x hx
    rcases Finset.mem_union.mp hx with h | h
    · exact hmono h
    · rcases Finset.mem_union.mp h with h' | h'
      · obtain ⟨d, hd, hxd⟩ := Finset.mem_biUnion.mp h'
        exact hnewD d hd hxd
      · obtain ⟨e, he, hxe⟩ := Finset.mem_biUnion.mp h'
        exact hnewE e he hxe
  calc A.card + (∑ d ∈ D, (newD d).card + ∑ e ∈ E, (newE e).card)
      = A.card + ((D.biUnion newD).card + (E.biUnion newE).card) := by rw [hUD, hUE]
    _ = A.card + (D.biUnion newD ∪ E.biUnion newE).card := by
        rw [Finset.card_union_of_disjoint hDE]
    _ = (A ∪ (D.biUnion newD ∪ E.biUnion newE)).card :=
        (Finset.card_union_of_disjoint hAU).symm
    _ ≤ A'.card := Finset.card_le_card hsub

/-- **The joint step invariant, abstractly.**  Both degeneracy families are
carried at once.

The averaging hypothesis is **combined**, not one bound per family, and that is
forced rather than convenient: the averaging identity supplies a bound for *one
of two signs*, and the two families need not prefer the **same** sign. Adding
the two ±δ identities gives a combined bound for one sign, which is what is
available and — as the proof shows — all that is needed. -/
theorem step_invariant_abstract2 {ι κ P : Type*}
    [DecidableEq ι] [DecidableEq κ] [DecidableEq P]
    (A A' : Finset P) (D Z D' : Finset ι) (E W E' : Finset κ)
    (newD : ι → Finset P) (newE : κ → Finset P) (lcD : ι → ℕ) (lcE : κ → ℕ)
    (hZD : Z ⊆ D) (hWE : W ⊆ E)
    (hgrow : A.card + (∑ d ∈ D, (newD d).card + ∑ e ∈ E, (newE e).card) ≤ A'.card)
    (hND : ∀ d ∈ D, d ∉ Z → (newD d).card = lcD d)
    (hNE : ∀ e ∈ E, e ∉ W → (newE e).card = lcE e)
    (hZ1 : ∀ d ∈ Z, lcD d = 1) (hW1 : ∀ e ∈ W, lcE e = 1)
    (hD' : Z.card ≤ D'.card) (hE' : W.card ≤ E'.card)
    (havg : D.card + E.card ≤ (∑ d ∈ D, lcD d) + (∑ e ∈ E, lcE e)) :
    A.card + D.card + E.card ≤ A'.card + D'.card + E'.card := by
  classical
  have hsplitD : ∑ d ∈ D \ Z, lcD d + ∑ d ∈ Z, lcD d = ∑ d ∈ D, lcD d :=
    Finset.sum_sdiff hZD
  have hsplitE : ∑ e ∈ E \ W, lcE e + ∑ e ∈ W, lcE e = ∑ e ∈ E, lcE e :=
    Finset.sum_sdiff hWE
  have hZsum : ∑ d ∈ Z, lcD d = Z.card := by
    rw [Finset.sum_congr rfl (fun d hd => hZ1 d hd)]; simp
  have hWsum : ∑ e ∈ W, lcE e = W.card := by
    rw [Finset.sum_congr rfl (fun e he => hW1 e he)]; simp
  have hDiffD : ∑ d ∈ D \ Z, lcD d ≤ ∑ d ∈ D, (newD d).card := by
    calc ∑ d ∈ D \ Z, lcD d = ∑ d ∈ D \ Z, (newD d).card :=
          Finset.sum_congr rfl fun d hd => by
            obtain ⟨hdD, hdZ⟩ := Finset.mem_sdiff.mp hd
            exact (hND d hdD hdZ).symm
      _ ≤ ∑ d ∈ D, (newD d).card := Finset.sum_le_sum_of_subset Finset.sdiff_subset
  have hDiffE : ∑ e ∈ E \ W, lcE e ≤ ∑ e ∈ E, (newE e).card := by
    calc ∑ e ∈ E \ W, lcE e = ∑ e ∈ E \ W, (newE e).card :=
          Finset.sum_congr rfl fun e he => by
            obtain ⟨heE, heW⟩ := Finset.mem_sdiff.mp he
            exact (hNE e heE heW).symm
      _ ≤ ∑ e ∈ E, (newE e).card := Finset.sum_le_sum_of_subset Finset.sdiff_subset
  omega

#print axioms card_add_sum2_le
#print axioms step_invariant_abstract2

/-! ## 41. The mirror family: what a `segDegP` entry converts into -/

theorem not_properCrossR_of_third_zero {a b c d : ℝ × ℝ} (h : orientR c d a = 0) :
    ¬ ProperCrossR a b c d := by
  rintro ⟨-, h2⟩
  rw [h, zero_mul] at h2
  exact lt_irrefl 0 h2

theorem not_properCrossR_of_fourth_zero {a b c d : ℝ × ℝ} (h : orientR c d b = 0) :
    ¬ ProperCrossR a b c d := by
  rintro ⟨-, h2⟩
  rw [h, mul_zero] at h2
  exact lt_irrefl 0 h2

/-- Two consecutive `P`-vertices on one `Q`-side would put a whole `P`-side
inside it — the mirror of `no_consecutive_degeneracy`. -/
theorem no_consecutive_degeneracyP (R : Pair9) (hfin : (points9 R).Finite) (m v : Fin 7)
    (h1 : R.V (pP v) ∈ sideQ9 R m) (h2 : R.V (pP (v + 1)) ∈ sideQ9 R m) : False := by
  have hsub : sideP9 R v ⊆ sideQ9 R m :=
    (convex_segment (R.V (pQ m)) (R.V (pQ (m + 1)))).segment_subset h1 h2
  have hne : R.V (pP v) ≠ R.V (pP (v + 1)) := R.simpleP.1 v
  have hinf : (sideP9 R v).Infinite := segment_infinite hne
  have hsub2 : sideP9 R v ⊆ points9 R := fun x hx =>
    ⟨Set.mem_iUnion.mpr ⟨v, hx⟩, Set.mem_iUnion.mpr ⟨m, hsub hx⟩⟩
  exact hinf (hfin.subset hsub2)

theorem segDegP_not_adjacent (R : Pair9) (hfin : (points9 R).Finite) {m v : Fin 7}
    (h : (m, v) ∈ segDegP R) : (m, v + 1) ∉ segDegP R := by
  classical
  simp only [segDegP, Finset.mem_filter, Finset.mem_univ, true_and] at h ⊢
  exact fun h2 => no_consecutive_degeneracyP R hfin m v h h2

open scoped Classical in
/-- The pairs a `segDegP` entry `(m, v)` converts into: the two `P`-sides at
vertex `v`, each against `Q`-side `m`. -/
noncomputable def incidentPairsP (e : Fin 7 × Fin 7) : Finset (Fin 7 × Fin 7) :=
  {(e.2 - 1, e.1), (e.2, e.1)}

theorem incidentPairsP_disjoint_crossPairs (R : Pair9) {e : Fin 7 × Fin 7}
    (he : e ∈ segDegP R) : Disjoint (incidentPairsP e) (crossPairsOf R.V) := by
  classical
  simp only [segDegP, Finset.mem_filter, Finset.mem_univ, true_and] at he
  have hz : orientR (R.V (pQ e.1)) (R.V (pQ (e.1 + 1))) (R.V (pP e.2)) = 0 := by
    rw [← off_eq_orientR]
    exact off_eq_zero_of_mem_segment he
  have hv : e.2 - 1 + 1 = e.2 := by simp
  simp only [incidentPairsP, Finset.disjoint_left, Finset.mem_insert,
    Finset.mem_singleton]
  rintro q (rfl | rfl) <;>
    simp only [crossPairsOf, Finset.mem_filter, Finset.mem_univ, true_and]
  · rw [hv]
    exact not_properCrossR_of_fourth_zero hz
  · exact not_properCrossR_of_third_zero hz

theorem incidentPairsP_disjoint (R : Pair9) (hfin : (points9 R).Finite)
    {e f : Fin 7 × Fin 7} (he : e ∈ segDegP R) (hf : f ∈ segDegP R) (hne : e ≠ f) :
    Disjoint (incidentPairsP e) (incidentPairsP f) := by
  classical
  by_cases hm : e.1 = f.1
  · have hv : e.2 ≠ f.2 := fun h => hne (Prod.ext hm h)
    have h1 : f.2 ≠ e.2 + 1 := by
      intro h
      refine segDegP_not_adjacent R hfin (m := e.1) (v := e.2) ?_ ?_
      · exact (Prod.mk.eta ▸ he)
      · have : (e.1, e.2 + 1) = f := by rw [← h]; exact Prod.ext hm rfl
        rw [this]; exact hf
    have h2 : e.2 ≠ f.2 + 1 := by
      intro h
      refine segDegP_not_adjacent R hfin (m := f.1) (v := f.2) ?_ ?_
      · exact (Prod.mk.eta ▸ hf)
      · have : (f.1, f.2 + 1) = e := by rw [← h]; exact Prod.ext hm.symm rfl
        rw [this]; exact he
    have hA : e.2 - 1 ≠ f.2 - 1 := fun h => hv (sub_left_inj.mp h)
    have hB : e.2 - 1 ≠ f.2 := fun h => h2 (sub_eq_iff_eq_add.mp h)
    have hC : e.2 ≠ f.2 - 1 := fun h => h1 (eq_sub_iff_add_eq.mp h).symm
    simp only [incidentPairsP, Finset.disjoint_left, Finset.mem_insert,
      Finset.mem_singleton]
    rintro q (rfl | rfl) <;> simp [Prod.ext_iff, hA, hB, hC, hv, hm]
  · simp only [incidentPairsP, Finset.disjoint_left, Finset.mem_insert,
      Finset.mem_singleton]
    rintro q (rfl | rfl) <;> simp [Prod.ext_iff, hm]

#print axioms no_consecutive_degeneracyP
#print axioms incidentPairsP_disjoint_crossPairs
#print axioms incidentPairsP_disjoint

/-! ## 42. Cross-family disjointness

A `segDeg` entry and a `segDegP` entry can only claim the same pair when their
side indices line up in one of four ways — and each puts **two** points of
`∂P ∩ ∂Q` on one side pair, so `NoOverlap` identifies them and the
configuration has a vertex–vertex coincidence. -/

theorem collision_absurd (R : Pair9) (hfin : (points9 R).Finite) (k m v j : Fin 7)
    (hne : R.V (pP v) ≠ R.V (pQ j))
    (h1 : R.V (pP v) ∈ sideP9 R k) (h2 : R.V (pP v) ∈ sideQ9 R m)
    (h3 : R.V (pQ j) ∈ sideP9 R k) (h4 : R.V (pQ j) ∈ sideQ9 R m) : False :=
  hne (noOverlap_of_finite R hfin k m _ _ h1 h2 h3 h4)

theorem mem_sideP9_pred (R : Pair9) (v : Fin 7) : R.V (pP v) ∈ sideP9 R (v - 1) := by
  have h : v - 1 + 1 = v := by simp
  simp only [sideP9, h]
  exact right_mem_segment ℝ _ _

theorem mem_sideQ9_pred (R : Pair9) (j : Fin 7) : R.V (pQ j) ∈ sideQ9 R (j - 1) := by
  have h : j - 1 + 1 = j := by simp
  simp only [sideQ9, h]
  exact right_mem_segment ℝ _ _

theorem incidentPairs_disjoint_P (R : Pair9) (hfin : (points9 R).Finite)
    (hcoinc : ∀ v j : Fin 7, R.V (pP v) ≠ R.V (pQ j))
    {d e : Fin 7 × Fin 7} (hd : d ∈ segDeg R) (he : e ∈ segDegP R) :
    Disjoint (incidentPairs d) (incidentPairsP e) := by
  classical
  simp only [segDeg, Finset.mem_filter, Finset.mem_univ, true_and] at hd
  simp only [segDegP, Finset.mem_filter, Finset.mem_univ, true_and] at he
  -- `hd : Q_{d.2} ∈ sideP9 d.1`,  `he : P_{e.2} ∈ sideQ9 e.1`
  simp only [incidentPairs, incidentPairsP, Finset.disjoint_left, Finset.mem_insert,
    Finset.mem_singleton]
  rintro q (rfl | rfl) <;> rintro (hq | hq) <;>
    obtain ⟨hk, hm⟩ := Prod.mk.injEq _ _ _ _ ▸ hq
  · -- (d.1, d.2 − 1) = (e.2 − 1, e.1)
    exact collision_absurd R hfin d.1 e.1 e.2 d.2 (hcoinc _ _)
      (hk ▸ mem_sideP9_pred R e.2) he hd (hm ▸ mem_sideQ9_pred R d.2)
  · -- (d.1, d.2 − 1) = (e.2, e.1)
    exact collision_absurd R hfin d.1 e.1 e.2 d.2 (hcoinc _ _)
      (hk ▸ left_mem_segment ℝ _ _) he hd (hm ▸ mem_sideQ9_pred R d.2)
  · -- (d.1, d.2) = (e.2 − 1, e.1)
    exact collision_absurd R hfin d.1 e.1 e.2 d.2 (hcoinc _ _)
      (hk ▸ mem_sideP9_pred R e.2) he hd (hm ▸ left_mem_segment ℝ _ _)
  · -- (d.1, d.2) = (e.2, e.1)
    exact collision_absurd R hfin d.1 e.1 e.2 d.2 (hcoinc _ _)
      (hk ▸ left_mem_segment ℝ _ _) he hd (hm ▸ left_mem_segment ℝ _ _)

#print axioms collision_absurd
#print axioms incidentPairs_disjoint_P

/-! ## 43. The mirror rate and local contribution -/

/-- The rate of a `Q`-side's determinant against a vertex, under a shift of
`P`-side `i`. -/
noncomputable def coefQ (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) (m : Fin 7)
    (a : Fin 14) : ℝ :=
  dcoef (V (pQ m)) (V (pQ (m + 1))) (V a) (tilt (V (pP (i + 1)) - V (pP i)) t)
    (if pQ m = pP i ∨ pQ m = pP (i + 1) then 1 else 0)
    (if pQ (m + 1) = pP i ∨ pQ (m + 1) = pP (i + 1) then 1 else 0)
    (if a = pP i ∨ a = pP (i + 1) then 1 else 0)

/-- The `P`-vertices the shift moves. -/
def touchedP (i : Fin 7) : Finset (Fin 7) := {i, i + 1}

theorem mem_touchedP_iff (i v : Fin 7) : v ∈ touchedP i ↔ (v = i ∨ v = i + 1) := by
  simp [touchedP]

/-- The mirror local contribution. -/
noncomputable def lcAtP (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t δ : ℝ)
    (e : Fin 7 × Fin 7) : ℕ :=
  TiltedShift.localContribAff δ (coefQ V i t e.1 (pP e.2))
    (coefQ V i t e.1 (pP (e.2 - 1))) (coefQ V i t e.1 (pP (e.2 + 1)))
    (orientR (V (pQ e.1)) (V (pQ (e.1 + 1))) (V (pP (e.2 - 1))))
    (orientR (V (pQ e.1)) (V (pQ (e.1 + 1))) (V (pP (e.2 + 1))))

theorem coefQ_eq_zero (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) (m v : Fin 7)
    (h1 : v ≠ i) (h2 : v ≠ i + 1) : coefQ V i t m (pP v) = 0 := by
  have hq1 : ¬(pQ m = pP i ∨ pQ m = pP (i + 1)) := by
    rintro (h | h)
    · exact pP_ne_pQ i m h.symm
    · exact pP_ne_pQ (i + 1) m h.symm
  have hq2 : ¬(pQ (m + 1) = pP i ∨ pQ (m + 1) = pP (i + 1)) := by
    rintro (h | h)
    · exact pP_ne_pQ i (m + 1) h.symm
    · exact pP_ne_pQ (i + 1) (m + 1) h.symm
  have hv : ¬(pP v = pP i ∨ pP v = pP (i + 1)) := by
    rintro (h | h)
    · exact h1 (pP_inj h)
    · exact h2 (pP_inj h)
  simp only [coefQ, if_neg hq1, if_neg hq2, if_neg hv, dcoef]
  ring

theorem lcAtP_untouched (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t δ : ℝ)
    {e : Fin 7 × Fin 7} (h : e.2 ∉ touchedP i) : lcAtP V i t δ e = 1 := by
  have h1 : e.2 ≠ i := fun hc => h (by rw [mem_touchedP_iff]; exact Or.inl hc)
  have h2 : e.2 ≠ i + 1 := fun hc => h (by rw [mem_touchedP_iff]; exact Or.inr hc)
  have hz : coefQ V i t e.1 (pP e.2) = 0 := coefQ_eq_zero V i t e.1 e.2 h1 h2
  simp [lcAtP, TiltedShift.localContribAff, hz]

#print axioms coefQ_eq_zero
#print axioms lcAtP_untouched

/-! ## 44. The joint step invariant

§38's obstruction, discharged: `crossPairs + segDeg + segDegP` does not
decrease across a shift. Both degeneracy families are carried at once, with a
single `δ`, which is what §38 said had to happen and could not be done by
composing the two accountings. -/

open scoped Classical in
theorem step_invariant_joint (R R' : Pair9) (hfin : (points9 R).Finite)
    (hcoinc : ∀ v j : Fin 7, R.V (pP v) ≠ R.V (pQ j)) (i : Fin 7) (t δ : ℝ)
    (hmono : crossPairsOf R.V ⊆ crossPairsOf R'.V)
    (hbridgeD : ∀ d ∈ segDeg R, d.1 ∈ touched i →
      ((incidentPairs d).filter (fun q => q ∈ crossPairsOf R'.V)).card
        = lcAt R.V i t δ d)
    (hbridgeE : ∀ e ∈ segDegP R, e.2 ∈ touchedP i →
      ((incidentPairsP e).filter (fun q => q ∈ crossPairsOf R'.V)).card
        = lcAtP R.V i t δ e)
    (hsurvD : ∀ d ∈ segDeg R, d.1 ∉ touched i → d ∈ segDeg R')
    (hsurvE : ∀ e ∈ segDegP R, e.2 ∉ touchedP i → e ∈ segDegP R')
    (havg : (segDeg R).card + (segDegP R).card
      ≤ (∑ d ∈ segDeg R, lcAt R.V i t δ d) + (∑ e ∈ segDegP R, lcAtP R.V i t δ e)) :
    (crossPairsOf R.V).card + (segDeg R).card + (segDegP R).card
      ≤ (crossPairsOf R'.V).card + (segDeg R').card + (segDegP R').card := by
  classical
  refine step_invariant_abstract2 _ _ (segDeg R)
    ((segDeg R).filter (fun d => d.1 ∉ touched i)) (segDeg R')
    (segDegP R) ((segDegP R).filter (fun e => e.2 ∉ touchedP i)) (segDegP R')
    (fun d => (incidentPairs d).filter (fun q => q ∈ crossPairsOf R'.V))
    (fun e => (incidentPairsP e).filter (fun q => q ∈ crossPairsOf R'.V))
    (lcAt R.V i t δ) (lcAtP R.V i t δ)
    (Finset.filter_subset _ _) (Finset.filter_subset _ _) ?_ ?_ ?_ ?_ ?_ ?_ ?_ havg
  · -- the crossings grow by both families' converted pairs
    refine card_add_sum2_le _ _ _ _ _ _ hmono
      (fun d _ q hq => (Finset.mem_filter.mp hq).2)
      (fun e _ q hq => (Finset.mem_filter.mp hq).2)
      (fun d hd => Finset.disjoint_of_subset_left (Finset.filter_subset _ _)
        (incidentPairs_disjoint_crossPairs R hd))
      (fun e he => Finset.disjoint_of_subset_left (Finset.filter_subset _ _)
        (incidentPairsP_disjoint_crossPairs R he))
      (fun d hd d' hd' hne => Finset.disjoint_filter_filter
        (incidentPairs_disjoint R hfin hd hd' hne))
      (fun e he e' he' hne => Finset.disjoint_filter_filter
        (incidentPairsP_disjoint R hfin he he' hne))
      (fun d hd e he => Finset.disjoint_filter_filter
        (incidentPairs_disjoint_P R hfin hcoinc hd he))
  · intro d hd hdZ
    refine hbridgeD d hd ?_
    by_contra hc
    exact hdZ (Finset.mem_filter.mpr ⟨hd, hc⟩)
  · intro e he heW
    refine hbridgeE e he ?_
    by_contra hc
    exact heW (Finset.mem_filter.mpr ⟨he, hc⟩)
  · intro d hd
    obtain ⟨-, hnt⟩ := Finset.mem_filter.mp hd
    exact lcAt_untouched R.V i t δ hnt
  · intro e he
    obtain ⟨-, hnt⟩ := Finset.mem_filter.mp he
    exact lcAtP_untouched R.V i t δ hnt
  · refine Finset.card_le_card (fun d hd => ?_)
    obtain ⟨hdD, hnt⟩ := Finset.mem_filter.mp hd
    exact hsurvD d hdD hnt
  · refine Finset.card_le_card (fun e he => ?_)
    obtain ⟨heE, hnt⟩ := Finset.mem_filter.mp he
    exact hsurvE e heE hnt

#print axioms step_invariant_joint

/-! ## 45. What the joint invariant buys

Carried along a chain that ends degeneracy-free, it gives `(A9)`'s bound on the
**original** configuration — which is the thing every earlier version of this
file could not reach. -/

/-- **The bound, from the invariant.**  If the joint quantity does not decrease
along the way to a configuration with both degeneracy measures empty, then the
*original* has at most 38 intersection points. -/
theorem points9_le_38_of_joint (R Rend : Pair9) (hfin : (points9 R).Finite)
    (hsum : (crossPairsOf R.V).card + (segDeg R).card + (segDegP R).card
      ≤ (crossPairsOf Rend.V).card + (segDeg Rend).card + (segDegP Rend).card)
    (hclear : segDeg Rend = ∅) (hclearP : segDegP Rend = ∅) :
    (points9 R).ncard ≤ 38 := by
  have hend : (crossPairsOf Rend.V).card ≤ 38 :=
    RawConfig.raw_crossPairs_card_le_38 (AKR9.toRawPair Rend)
  rw [hclear, hclearP] at hsum
  simp only [Finset.card_empty, Nat.add_zero] at hsum
  exact points9_le_38_of_seg_sum R hfin (by omega)

#print axioms points9_le_38_of_joint

/-! ## 46. The rate dichotomy, assembled

The three touched sides, handled together. The shifted side needs nothing; the
two neighbours need a transverse tilt and coincidence-freeness. -/

theorem orientR_swap (a b c : ℝ × ℝ) : orientR a b c = -orientR b a c := by
  simp only [orientR]; ring

/-- **Every degeneracy on a touched side has nonzero rate.** -/
theorem rate_ne_zero_of_touched (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) {k j : Fin 7}
    (hk : k ∈ touched i) (hu : V (pP (i + 1)) - V (pP i) ≠ 0)
    (hdeg : orientR (V (pP k)) (V (pP (k + 1))) (V (pQ j)) = 0)
    (htrN : cross (tilt (V (pP (i + 1)) - V (pP i)) t)
        ((V (pP (i + 1))).1 - (V (pP (i + 1 + 1))).1,
         (V (pP (i + 1))).2 - (V (pP (i + 1 + 1))).2) ≠ 0)
    (htrP : cross (tilt (V (pP (i + 1)) - V (pP i)) t)
        ((V (pP i)).1 - (V (pP (i - 1))).1, (V (pP i)).2 - (V (pP (i - 1))).2) ≠ 0)
    (hnc : ∀ v m : Fin 7, V (pP v) ≠ V (pQ m)) :
    shiftCoef V i t k (pQ j) ≠ 0 := by
  have hQne : ∀ m : Fin 7, ((V (pQ j)).1 - (V (pP m)).1,
      (V (pQ j)).2 - (V (pP m)).2) ≠ 0 := by
    intro m hz
    refine hnc m j ?_
    have h1 : (V (pQ j)).1 - (V (pP m)).1 = 0 := congrArg Prod.fst hz
    have h2 : (V (pQ j)).2 - (V (pP m)).2 = 0 := congrArg Prod.snd hz
    exact Prod.ext (by linarith) (by linarith)
  rw [mem_touched_iff] at hk
  rcases hk with h | h | h
  · rw [h]; exact shiftCoef_self_Q_ne_zero V i t hu j
  · rw [h] at hdeg ⊢
    refine shiftCoef_next_ne_zero V i t j htrN (hQne _) ?_
    rw [orientR_swap, hdeg, neg_zero]
  · rw [h] at hdeg ⊢
    have hji : i - 1 + 1 = i := by simp
    rw [hji] at hdeg
    exact shiftCoef_prev_ne_zero V i t j htrP (hQne _) hdeg

#print axioms orientR_swap
#print axioms rate_ne_zero_of_touched

/-! ## 47. Discharging the bridge hypothesis

`step_invariant_joint` takes `hbridgeD` as a hypothesis. With §46's dichotomy
it is no longer one: on a touched side the rate is nonzero, so
`card_incident_eq_localContribAff` applies. -/

open scoped Classical in
theorem exists_delta0_bridgeD (R : Pair9) (i : Fin 7) (t : ℝ)
    (hu : R.V (pP (i + 1)) - R.V (pP i) ≠ 0)
    (htrN : cross (tilt (R.V (pP (i + 1)) - R.V (pP i)) t)
        ((R.V (pP (i + 1))).1 - (R.V (pP (i + 1 + 1))).1,
         (R.V (pP (i + 1))).2 - (R.V (pP (i + 1 + 1))).2) ≠ 0)
    (htrP : cross (tilt (R.V (pP (i + 1)) - R.V (pP i)) t)
        ((R.V (pP i)).1 - (R.V (pP (i - 1))).1,
         (R.V (pP i)).2 - (R.V (pP (i - 1))).2) ≠ 0)
    (hnc : ∀ v m : Fin 7, R.V (pP v) ≠ R.V (pQ m))
    (hsepP : ∀ d ∈ segDeg R,
      orientR (R.V (pQ (d.2 - 1))) (R.V (pQ d.2)) (R.V (pP d.1)) *
        orientR (R.V (pQ (d.2 - 1))) (R.V (pQ d.2)) (R.V (pP (d.1 + 1))) < 0)
    (hsepN : ∀ d ∈ segDeg R,
      orientR (R.V (pQ d.2)) (R.V (pQ (d.2 + 1))) (R.V (pP d.1)) *
        orientR (R.V (pQ d.2)) (R.V (pQ (d.2 + 1))) (R.V (pP (d.1 + 1))) < 0) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, δ ≠ 0 → |δ| < δ₀ → ∀ d ∈ segDeg R, d.1 ∈ touched i →
      ((incidentPairs d).filter
          (fun q => q ∈ crossPairsOf (shiftV R.V i t δ))).card
        = lcAt R.V i t δ d := by
  classical
  obtain ⟨δ₀, hδ₀, h⟩ := card_incident_eq_localContribAff R.V i t
  refine ⟨δ₀, hδ₀, fun δ hδne hδ d hd hdt => ?_⟩
  have hdeg : orientR (R.V (pP d.1)) (R.V (pP (d.1 + 1))) (R.V (pQ d.2)) = 0 := by
    have := segDeg_subset_degSetOf R hd
    simpa [degSetOf] using this
  have hrate : δ * shiftCoef R.V i t d.1 (pQ d.2) ≠ 0 :=
    mul_ne_zero hδne (rate_ne_zero_of_touched R.V i t hdt hu hdeg htrN htrP hnc)
  exact h δ hδ d.1 d.2 hrate hdeg (hsepP d hd) (hsepN d hd)

#print axioms exists_delta0_bridgeD

/-! ## 48. Discharging the survival hypotheses

Both are immediate from the index conditions: an untouched `P`-side has neither
endpoint moved, and an untouched `P`-vertex does not move. -/

theorem survD_of_untouched (R R' : Pair9) (i : Fin 7) (t δ : ℝ)
    (hR' : R'.V = shiftV R.V i t δ) :
    ∀ d ∈ segDeg R, d.1 ∉ touched i → d ∈ segDeg R' := by
  intro d hd hnt
  have h1 : d.1 ≠ i := fun hc => hnt (by rw [mem_touched_iff]; exact Or.inl hc)
  have h2 : d.1 ≠ i + 1 := fun hc => hnt (by rw [mem_touched_iff]; exact Or.inr (Or.inl hc))
  have h3 : d.1 ≠ i - 1 := fun hc => hnt (by rw [mem_touched_iff]; exact Or.inr (Or.inr hc))
  have hA : ¬(pP d.1 = pP i ∨ pP d.1 = pP (i + 1)) := by
    rintro (h | h)
    · exact h1 (pP_inj h)
    · exact h2 (pP_inj h)
  have hB : ¬(pP (d.1 + 1) = pP i ∨ pP (d.1 + 1) = pP (i + 1)) := by
    rintro (h | h)
    · exact h3 (by have := pP_inj h; rw [← this]; simp)
    · exact h1 (add_right_cancel (pP_inj h))
  have := segDeg_mem_of_untouched R.V i t δ R R' rfl hR' (k := d.1) (j := d.2)
    (by simpa using hd) hA hB
  simpa using this

theorem survE_of_untouched (R R' : Pair9) (i : Fin 7) (t δ : ℝ)
    (hR' : R'.V = shiftV R.V i t δ) :
    ∀ e ∈ segDegP R, e.2 ∉ touchedP i → e ∈ segDegP R' := by
  classical
  intro e he hnt
  have h1 : e.2 ≠ i := fun hc => hnt (by rw [mem_touchedP_iff]; exact Or.inl hc)
  have h2 : e.2 ≠ i + 1 := fun hc => hnt (by rw [mem_touchedP_iff]; exact Or.inr hc)
  simp only [segDegP, Finset.mem_filter, Finset.mem_univ, true_and] at he ⊢
  have eQ1 : R'.V (pQ e.1) = R.V (pQ e.1) := by rw [hR']; exact shiftV_Q R.V i t δ e.1
  have eQ2 : R'.V (pQ (e.1 + 1)) = R.V (pQ (e.1 + 1)) := by
    rw [hR']; exact shiftV_Q R.V i t δ (e.1 + 1)
  have eP : R'.V (pP e.2) = R.V (pP e.2) := by
    rw [hR', shiftV]
    refine if_neg ?_
    rintro (h | h)
    · exact h1 (pP_inj h)
    · exact h2 (pP_inj h)
  simpa only [sideQ9, eQ1, eQ2, eP] using he

#print axioms survD_of_untouched
#print axioms survE_of_untouched

theorem predP_ne_self (v m : Fin 7) : ((v - 1, m) : Fin 7 × Fin 7) ≠ (v, m) := by
  intro h
  have hv : v - 1 = v := congrArg Prod.fst h
  exact absurd (sub_eq_self.mp hv) (by decide)

/-! ## 49. The mirror bridge

For a `segDegP` entry the roles of the two `ProperCrossR` conjuncts swap: the
one carrying the degenerate vertex is now the conjunct against the **`Q`-side**,
and the conjunct against the `P`-side is the one that persists. -/

theorem orientR_shift_Qside (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t δ : ℝ) (m : Fin 7)
    (a : Fin 14) :
    orientR (shiftV V i t δ (pQ m)) (shiftV V i t δ (pQ (m + 1))) (shiftV V i t δ a)
      = orientR (V (pQ m)) (V (pQ (m + 1))) (V a) + δ * coefQ V i t m a :=
  orientR_shiftV_affine V i t δ _ _ _

/-- The `P`-side conjunct persists, for any `P`-side. -/
theorem first_conjunct_persists_any (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| < δ₀ → ∀ v m : Fin 7,
      orientR (V (pP v)) (V (pP (v + 1))) (V (pQ m)) *
          orientR (V (pP v)) (V (pP (v + 1))) (V (pQ (m + 1))) < 0 →
      orientR (shiftV V i t δ (pP v)) (shiftV V i t δ (pP (v + 1)))
            (shiftV V i t δ (pQ m)) *
          orientR (shiftV V i t δ (pP v)) (shiftV V i t δ (pP (v + 1)))
            (shiftV V i t δ (pQ (m + 1))) < 0 := by
  obtain ⟨δ₀, hδ₀, h⟩ := exists_delta0_order_type V i t
  refine ⟨δ₀, hδ₀, fun δ hδ v m h0 => ?_⟩
  have n1 : orientR (V (pP v)) (V (pP (v + 1))) (V (pQ m)) ≠ 0 := fun hz => by
    rw [hz, zero_mul] at h0; exact lt_irrefl 0 h0
  have n2 : orientR (V (pP v)) (V (pP (v + 1))) (V (pQ (m + 1))) ≠ 0 := fun hz => by
    rw [hz, mul_zero] at h0; exact lt_irrefl 0 h0
  exact prod_neg_of_signs (h δ hδ _ _ _ n1) (h δ hδ _ _ _ n2) h0

open scoped Classical in
/-- **The mirror membership bridge.**  At a degenerate `P`-vertex of `Q`-side
`m`, the pair `(v, m)` crosses after the shift exactly when the affine straddle
of the `Q`-side determinants holds. -/
theorem mem_crossPairs_iff_affP (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| < δ₀ → ∀ m v : Fin 7,
      orientR (V (pQ m)) (V (pQ (m + 1))) (V (pP v)) = 0 →
      orientR (V (pP v)) (V (pP (v + 1))) (V (pQ m)) *
          orientR (V (pP v)) (V (pP (v + 1))) (V (pQ (m + 1))) < 0 →
      ((v, m) ∈ crossPairsOf (shiftV V i t δ) ↔
        (δ * coefQ V i t m (pP v))
          * (orientR (V (pQ m)) (V (pQ (m + 1))) (V (pP (v + 1)))
              + δ * coefQ V i t m (pP (v + 1))) < 0) := by
  obtain ⟨δ₀, hδ₀, hfst⟩ := first_conjunct_persists_any V i t
  refine ⟨δ₀, hδ₀, fun δ hδ m v hdeg hsep => ⟨fun hin => ?_, fun hstr => ?_⟩⟩
  · simp only [crossPairsOf, Finset.mem_filter, Finset.mem_univ, true_and] at hin
    have h2 := hin.2
    rw [orientR_shift_Qside, orientR_shift_Qside, hdeg, zero_add] at h2
    exact h2
  · simp only [crossPairsOf, Finset.mem_filter, Finset.mem_univ, true_and]
    refine ⟨hfst δ hδ v m hsep, ?_⟩
    rw [orientR_shift_Qside, orientR_shift_Qside, hdeg, zero_add]
    exact hstr

#print axioms first_conjunct_persists_any
#print axioms mem_crossPairs_iff_affP

set_option maxHeartbeats 1600000 in
open scoped Classical in
/-- The mirrored pair `(v−1, m)`, whose `P`-side has the degenerate vertex as
its **second** endpoint. -/
theorem mem_crossPairs_iff_affP_prev (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| < δ₀ → ∀ m v : Fin 7,
      orientR (V (pQ m)) (V (pQ (m + 1))) (V (pP v)) = 0 →
      orientR (V (pP (v - 1))) (V (pP v)) (V (pQ m)) *
          orientR (V (pP (v - 1))) (V (pP v)) (V (pQ (m + 1))) < 0 →
      ((v - 1, m) ∈ crossPairsOf (shiftV V i t δ) ↔
        (δ * coefQ V i t m (pP v))
          * (orientR (V (pQ m)) (V (pQ (m + 1))) (V (pP (v - 1)))
              + δ * coefQ V i t m (pP (v - 1))) < 0) := by
  obtain ⟨δ₀, hδ₀, hfst⟩ := first_conjunct_persists_any V i t
  refine ⟨δ₀, hδ₀, fun δ hδ m v hdeg hsep => ?_⟩
  have hv : v - 1 + 1 = v := by simp
  constructor
  · intro hin
    simp only [crossPairsOf, Finset.mem_filter, Finset.mem_univ, true_and] at hin
    rw [hv] at hin
    have h2 := hin.2
    rw [orientR_shift_Qside, orientR_shift_Qside, hdeg, zero_add, mul_comm] at h2
    exact h2
  · intro hstr
    simp only [crossPairsOf, Finset.mem_filter, Finset.mem_univ, true_and]
    have hsep' : orientR (V (pP (v - 1))) (V (pP (v - 1 + 1))) (V (pQ m)) *
        orientR (V (pP (v - 1))) (V (pP (v - 1 + 1))) (V (pQ (m + 1))) < 0 := by
      rw [hv]; exact hsep
    refine ⟨hfst δ hδ (v - 1) m hsep', ?_⟩
    rw [hv, orientR_shift_Qside, orientR_shift_Qside, hdeg, zero_add, mul_comm]
    exact hstr

set_option maxHeartbeats 1600000 in
open scoped Classical in
/-- **The mirror incident-pair count.** -/
theorem card_incidentP_eq_lcAtP (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| < δ₀ → ∀ m v : Fin 7,
      δ * coefQ V i t m (pP v) ≠ 0 →
      orientR (V (pQ m)) (V (pQ (m + 1))) (V (pP v)) = 0 →
      orientR (V (pP (v - 1))) (V (pP v)) (V (pQ m)) *
          orientR (V (pP (v - 1))) (V (pP v)) (V (pQ (m + 1))) < 0 →
      orientR (V (pP v)) (V (pP (v + 1))) (V (pQ m)) *
          orientR (V (pP v)) (V (pP (v + 1))) (V (pQ (m + 1))) < 0 →
      ((incidentPairsP (m, v)).filter
          (fun q => q ∈ crossPairsOf (shiftV V i t δ))).card
        = lcAtP V i t δ (m, v) := by
  classical
  obtain ⟨δ₁, h₁, hprev⟩ := mem_crossPairs_iff_affP_prev V i t
  obtain ⟨δ₂, h₂, hnext⟩ := mem_crossPairs_iff_affP V i t
  refine ⟨min δ₁ δ₂, lt_min h₁ h₂, fun δ hδ m v hrate hdeg hP hN => ?_⟩
  have hd1 : |δ| < δ₁ := lt_of_lt_of_le hδ (min_le_left _ _)
  have hd2 : |δ| < δ₂ := lt_of_lt_of_le hδ (min_le_right _ _)
  have hne : ((v - 1, m) : Fin 7 × Fin 7) ≠ (v, m) := predP_ne_self v m
  rw [show incidentPairsP (m, v) = {(v - 1, m), (v, m)} from rfl,
    card_filter_pair _ _ hne]
  simp only [lcAtP, TiltedShift.localContribAff, if_neg hrate,
    hprev δ hd1 m v hdeg hP, hnext δ hd2 m v hdeg hN]

#print axioms mem_crossPairs_iff_affP_prev
#print axioms card_incidentP_eq_lcAtP

/-! ## 50. Discharging the mirror bridge hypothesis

`step_invariant_joint` takes `hbridgeE` as a hypothesis as well.  §49 supplies
the counting lemma; what remains is the **rate**.  Here the rate is far simpler
than §46's three-way dichotomy: the shift moves only `P`-vertices, so both
endpoints of the `Q`-side are fixed and the coefficient collapses to
`cross (Q_{m+1} − Q_m) (tilt u t)` — one quantity per `Q`-side, independent of
*which* of the two touched `P`-vertices carries the degeneracy.  A single good
tilt therefore makes all seven nonzero at once, which is exactly what
`RotationLaw.exists_good_tilt` delivers. -/

open scoped Classical in
/-- A `P`-vertex on a `Q`-**segment** is in particular on its **line**. -/
theorem segDegP_orientR_eq_zero (R : Pair9) {e : Fin 7 × Fin 7}
    (he : e ∈ segDegP R) :
    orientR (R.V (pQ e.1)) (R.V (pQ (e.1 + 1))) (R.V (pP e.2)) = 0 := by
  classical
  simp only [segDegP, Finset.mem_filter, Finset.mem_univ, true_and] at he
  rw [← off_eq_orientR]
  exact off_eq_zero_of_mem_segment he

/-- **The mirror rate, in closed form.**  Contrast `shiftCoef_dichotomy`, where
the answer depends on which of the three touched sides is meant. -/
theorem coefQ_touchedP (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ) (m v : Fin 7)
    (hv : v = i ∨ v = i + 1) :
    coefQ V i t m (pP v)
      = cross (V (pQ (m + 1)) - V (pQ m))
          (tilt (V (pP (i + 1)) - V (pP i)) t) := by
  have h0 : (if pQ m = pP i ∨ pQ m = pP (i + 1) then (1:ℝ) else 0) = 0 := by
    rw [if_neg]; rintro (h | h) <;> exact pP_ne_pQ _ _ h.symm
  have h1 : (if pQ (m + 1) = pP i ∨ pQ (m + 1) = pP (i + 1) then (1:ℝ) else 0)
      = 0 := by
    rw [if_neg]; rintro (h | h) <;> exact pP_ne_pQ _ _ h.symm
  have h2 : (if pP v = pP i ∨ pP v = pP (i + 1) then (1:ℝ) else 0) = 1 := by
    rw [if_pos]
    rcases hv with h | h
    · exact Or.inl (by rw [h])
    · exact Or.inr (by rw [h])
  simp only [coefQ, dcoef, h0, h1, h2, cross, Prod.fst_sub, Prod.snd_sub]
  ring

/-- On a touched `P`-vertex the rate is nonzero as soon as the tilted shift
direction is not parallel to the `Q`-side. -/
theorem coefQ_ne_zero_of_touchedP (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ)
    (m v : Fin 7) (hv : v ∈ touchedP i)
    (ht : cross (tilt (V (pP (i + 1)) - V (pP i)) t)
        (V (pQ (m + 1)) - V (pQ m)) ≠ 0) :
    coefQ V i t m (pP v) ≠ 0 := by
  rw [coefQ_touchedP V i t m v ((mem_touchedP_iff i v).mp hv), cross_swap]
  exact neg_ne_zero.mpr ht

open scoped Classical in
/-- **`hbridgeE`, discharged.**  The mirror of `exists_delta0_bridgeD`: for
every sufficiently small nonzero `δ`, the two pairs incident to a `P`-vertex
degeneracy are counted by `lcAtP`. -/
theorem exists_delta0_bridgeE (R : Pair9) (i : Fin 7) (t : ℝ)
    (ht : ∀ m : Fin 7, cross (tilt (R.V (pP (i + 1)) - R.V (pP i)) t)
        (R.V (pQ (m + 1)) - R.V (pQ m)) ≠ 0)
    (hsepP : ∀ e ∈ segDegP R,
      orientR (R.V (pP (e.2 - 1))) (R.V (pP e.2)) (R.V (pQ e.1)) *
        orientR (R.V (pP (e.2 - 1))) (R.V (pP e.2)) (R.V (pQ (e.1 + 1))) < 0)
    (hsepN : ∀ e ∈ segDegP R,
      orientR (R.V (pP e.2)) (R.V (pP (e.2 + 1))) (R.V (pQ e.1)) *
        orientR (R.V (pP e.2)) (R.V (pP (e.2 + 1))) (R.V (pQ (e.1 + 1))) < 0) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, δ ≠ 0 → |δ| < δ₀ →
      ∀ e ∈ segDegP R, e.2 ∈ touchedP i →
      ((incidentPairsP e).filter
          (fun q => q ∈ crossPairsOf (shiftV R.V i t δ))).card
        = lcAtP R.V i t δ e := by
  classical
  obtain ⟨δ₀, hδ₀, h⟩ := card_incidentP_eq_lcAtP R.V i t
  refine ⟨δ₀, hδ₀, fun δ hδne hδ e he het => ?_⟩
  have hdeg := segDegP_orientR_eq_zero R he
  have hrate : δ * coefQ R.V i t e.1 (pP e.2) ≠ 0 :=
    mul_ne_zero hδne (coefQ_ne_zero_of_touchedP R.V i t e.1 e.2 het (ht e.1))
  exact h δ hδ e.1 e.2 hrate hdeg (hsepP e he) (hsepN e he)

#print axioms segDegP_orientR_eq_zero
#print axioms coefQ_touchedP
#print axioms coefQ_ne_zero_of_touchedP
#print axioms exists_delta0_bridgeE

/-! ## 51. Discharging the averaging hypothesis

The last open hypothesis of `step_invariant_joint` is `havg`.  It is supplied
by `TiltedShift.exists_sign_contrib_aff_two`, whose four side conditions are
all of the shape `|δ · m| < |c|` — the *smallness* the averaging identity
needs, and without which `averaging_fails_without_smallness` shows it is false.

`exists_uniform_smallness` is the smallness analogue of
`RotationLaw.exists_uniform_rotation`: finitely many conditions, each an open
condition at `δ = 0`, so one `δ₀` serves them all.  The hypothesis it needs is
that each **neighbouring** determinant is nonzero, which is a genuine extra
assumption — see §52. -/

theorem exists_uniform_smallness {ι : Type*} (S : Finset ι) (c m : ι → ℝ)
    (hc : ∀ i ∈ S, c i ≠ 0) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| < δ₀ → ∀ i ∈ S, |δ * m i| < |c i| := by
  rcases S.eq_empty_or_nonempty with hE | hS
  · exact ⟨1, one_pos, by simp [hE]⟩
  · refine ⟨S.inf' hS (fun i => |c i| / (1 + |m i|)), ?_, ?_⟩
    · rw [Finset.lt_inf'_iff]
      intro i hi
      exact div_pos (abs_pos.mpr (hc i hi)) (by positivity)
    · intro δ hδ i hi
      have hpos : (0:ℝ) < 1 + |m i| := by positivity
      have hle : |δ| < |c i| / (1 + |m i|) :=
        lt_of_lt_of_le hδ (Finset.inf'_le _ hi)
      rw [abs_mul]
      calc |δ| * |m i|
          ≤ |δ| * (1 + |m i|) :=
            mul_le_mul_of_nonneg_left (by linarith) (abs_nonneg δ)
        _ < (|c i| / (1 + |m i|)) * (1 + |m i|) :=
            mul_lt_mul_of_pos_right hle hpos
        _ = |c i| := div_mul_cancel₀ _ (ne_of_gt hpos)

open scoped Classical in
/-- **`havg`, discharged — for one of the two signs.**  Neither family need
prefer that sign on its own; the combined total is what is bounded, which is
precisely §38's point. -/
theorem exists_delta0_havg (R : Pair9) (i : Fin 7) (t : ℝ)
    (hyD : ∀ d ∈ segDeg R,
      orientR (R.V (pP d.1)) (R.V (pP (d.1 + 1))) (R.V (pQ (d.2 - 1))) ≠ 0)
    (hzD : ∀ d ∈ segDeg R,
      orientR (R.V (pP d.1)) (R.V (pP (d.1 + 1))) (R.V (pQ (d.2 + 1))) ≠ 0)
    (hvE : ∀ e ∈ segDegP R,
      orientR (R.V (pQ e.1)) (R.V (pQ (e.1 + 1))) (R.V (pP (e.2 - 1))) ≠ 0)
    (hwE : ∀ e ∈ segDegP R,
      orientR (R.V (pQ e.1)) (R.V (pQ (e.1 + 1))) (R.V (pP (e.2 + 1))) ≠ 0) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| < δ₀ →
      ((segDeg R).card + (segDegP R).card
          ≤ (∑ d ∈ segDeg R, lcAt R.V i t δ d)
            + (∑ e ∈ segDegP R, lcAtP R.V i t δ e)) ∨
      ((segDeg R).card + (segDegP R).card
          ≤ (∑ d ∈ segDeg R, lcAt R.V i t (-δ) d)
            + (∑ e ∈ segDegP R, lcAtP R.V i t (-δ) e)) := by
  classical
  obtain ⟨a, ha, hA⟩ := exists_uniform_smallness (segDeg R)
    (fun d => orientR (R.V (pP d.1)) (R.V (pP (d.1 + 1))) (R.V (pQ (d.2 - 1))))
    (fun d => shiftCoef R.V i t d.1 (pQ (d.2 - 1))) hyD
  obtain ⟨b, hb, hB⟩ := exists_uniform_smallness (segDeg R)
    (fun d => orientR (R.V (pP d.1)) (R.V (pP (d.1 + 1))) (R.V (pQ (d.2 + 1))))
    (fun d => shiftCoef R.V i t d.1 (pQ (d.2 + 1))) hzD
  obtain ⟨c, hc, hC⟩ := exists_uniform_smallness (segDegP R)
    (fun e => orientR (R.V (pQ e.1)) (R.V (pQ (e.1 + 1))) (R.V (pP (e.2 - 1))))
    (fun e => coefQ R.V i t e.1 (pP (e.2 - 1))) hvE
  obtain ⟨d, hd, hD⟩ := exists_uniform_smallness (segDegP R)
    (fun e => orientR (R.V (pQ e.1)) (R.V (pQ (e.1 + 1))) (R.V (pP (e.2 + 1))))
    (fun e => coefQ R.V i t e.1 (pP (e.2 + 1))) hwE
  refine ⟨min (min a b) (min c d), lt_min (lt_min ha hb) (lt_min hc hd),
    fun δ hδ => ?_⟩
  have h1 : |δ| < a := lt_of_lt_of_le hδ ((min_le_left _ _).trans (min_le_left _ _))
  have h2 : |δ| < b := lt_of_lt_of_le hδ ((min_le_left _ _).trans (min_le_right _ _))
  have h3 : |δ| < c := lt_of_lt_of_le hδ ((min_le_right _ _).trans (min_le_left _ _))
  have h4 : |δ| < d := lt_of_lt_of_le hδ ((min_le_right _ _).trans (min_le_right _ _))
  simp only [lcAt, lcAtP]
  exact TiltedShift.exists_sign_contrib_aff_two _ _ δ _ _ _ _ _ _ _ _ _ _
    (hA δ h1) (hB δ h2) (hC δ h3) (hD δ h4)

#print axioms exists_uniform_smallness
#print axioms exists_delta0_havg

/-! ## 52. The four nonvanishing conditions, derived

§51 assumed the neighbouring determinants are nonzero.  They are **not** free,
and finiteness alone does not give them: `independent/akr_9_2/smallness_needs_
coincidence_free.py` exhibits two simple heptagons, meeting in finitely many
points, with a `Q`-vertex on a `P`-side whose predecessor is *on that side's
line* — so the smallness condition fails.  In that witness the two polygons
share a vertex.

That is the whole story: with a coincidence excluded, a neighbour on the line
forces a whole sub-segment of the neighbouring edge into the side, and `(Fin)`
forbids it.  `neighbour_off_ne_zero` is that argument on the `Q`-vertex side;
`neighbour_off_ne_zeroP` is its mirror. -/

/-- A point of a segment that is neither endpoint has a parameter strictly
inside `(0,1)`. -/
theorem exists_param_strict {A B x : ℝ × ℝ} (hx : x ∈ segment ℝ A B)
    (hA : x ≠ A) (hB : x ≠ B) :
    ∃ s : ℝ, 0 < s ∧ s < 1 ∧ x = lin A (B - A) s := by
  rw [← insert_endpoints_openSegment] at hx
  simp only [Set.mem_insert_iff] at hx
  rcases hx with h | h | h
  · exact absurd h hA
  · exact absurd h hB
  · obtain ⟨a, b, ha, hb, hab, rfl⟩ := h
    refine ⟨b, hb, by linarith, ?_⟩
    have ha' : a = 1 - b := by linarith
    subst ha'
    simp only [lin, Prod.ext_iff, Prod.fst_add, Prod.snd_add, Prod.fst_sub,
      Prod.snd_sub, Prod.smul_fst, Prod.smul_snd, smul_eq_mul]
    constructor <;> ring

/-- **The mirror of `neighbour_off_ne_zero`.**  If a `P`-vertex sits strictly
inside a `Q`-side and one of its `P`-neighbours lies on that side's line, a
whole sub-segment of the `P`-edge lies in the `Q`-side, contradicting `(Fin)`. -/
theorem neighbour_off_ne_zeroP (R : Pair9) (hfin : (points9 R).Finite)
    (m v k i : Fin 7)
    (hv : R.V (pP v) ∈ sideP9 R i) (hk : R.V (pP k) ∈ sideP9 R i)
    (hvk : R.V (pP v) ≠ R.V (pP k))
    (hu : R.V (pQ (m + 1)) - R.V (pQ m) ≠ 0) {s : ℝ} (hs0 : 0 < s) (hs1 : s < 1)
    (hsv : R.V (pP v) = lin (R.V (pQ m)) (R.V (pQ (m + 1)) - R.V (pQ m)) s) :
    off (R.V (pQ (m + 1)) - R.V (pQ m)) (R.V (pQ m)) (R.V (pP k)) ≠ 0 := by
  intro hzero
  obtain ⟨r, hr⟩ := exists_param_of_off_zero hu hzero
  have hrs : r ≠ s := fun h => hvk (by rw [hsv, hr, h])
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
  set A := R.V (pQ m)
  set u := R.V (pQ (m + 1)) - R.V (pQ m)
  have hQs : lin A u s ∈ sideQ9 R m := by
    have := lin_mem_segment (A := A) (u := u) (le_of_lt hs0) (le_of_lt hs1)
    rwa [lin_zero, lin_one_sub] at this
  have hQτ : lin A u τ ∈ sideQ9 R m := by
    have := lin_mem_segment (A := A) (u := u) hτ2 hτ3
    rwa [lin_zero, lin_one_sub] at this
  have hPs : lin A u s ∈ sideP9 R i := by rw [← hsv]; exact hv
  have hPτ : lin A u τ ∈ sideP9 R i := by
    have hmem : lin A u τ ∈ segment ℝ (R.V (pP v)) (R.V (pP k)) := by
      rw [hsv, hr]
      rcases le_total s r with hle | hle
      · exact lin_mem_segment (min_eq_left hle ▸ hτ4.1) (max_eq_right hle ▸ hτ4.2)
      · rw [segment_symm]
        exact lin_mem_segment (min_eq_right hle ▸ hτ4.1) (max_eq_left hle ▸ hτ4.2)
    exact (convex_segment _ _).segment_subset hv hk hmem
  have hne : lin A u s ≠ lin A u τ := fun h => hτ1 (lin_inj hu h).symm
  have hinf : (segment ℝ (lin A u s) (lin A u τ)).Infinite := segment_infinite hne
  refine hinf (hfin.subset ?_)
  intro x hx
  exact ⟨Set.mem_iUnion.mpr ⟨i, (convex_segment _ _).segment_subset hPs hPτ hx⟩,
    Set.mem_iUnion.mpr ⟨m, (convex_segment _ _).segment_subset hQs hQτ hx⟩⟩

open scoped Classical in
/-- A `segDeg` entry's neighbouring `Q`-vertex is off the `P`-side's line. -/
theorem segDeg_neighbour_ne_zero (R : Pair9) (hfin : (points9 R).Finite)
    (hcoinc : ∀ v j : Fin 7, R.V (pP v) ≠ R.V (pQ j))
    {d : Fin 7 × Fin 7} (hd : d ∈ segDeg R) (k m : Fin 7)
    (hjm : R.V (pQ d.2) ∈ sideQ9 R m) (hkm : R.V (pQ k) ∈ sideQ9 R m)
    (hjk : R.V (pQ d.2) ≠ R.V (pQ k)) :
    orientR (R.V (pP d.1)) (R.V (pP (d.1 + 1))) (R.V (pQ k)) ≠ 0 := by
  classical
  simp only [segDeg, Finset.mem_filter, Finset.mem_univ, true_and] at hd
  obtain ⟨s, hs0, hs1, hseq⟩ := exists_param_strict hd
    (fun hc => hcoinc d.1 d.2 hc.symm) (fun hc => hcoinc (d.1 + 1) d.2 hc.symm)
  rw [← off_eq_orientR]
  exact neighbour_off_ne_zero R hfin d.1 d.2 k m hjm hkm hjk
    (sub_ne_zero.mpr (R.simpleP.1 d.1).symm) hs0 hs1 hseq

open scoped Classical in
/-- The mirror: a `segDegP` entry's neighbouring `P`-vertex is off the
`Q`-side's line. -/
theorem segDegP_neighbour_ne_zero (R : Pair9) (hfin : (points9 R).Finite)
    (hcoinc : ∀ v j : Fin 7, R.V (pP v) ≠ R.V (pQ j))
    {e : Fin 7 × Fin 7} (he : e ∈ segDegP R) (k i : Fin 7)
    (hvi : R.V (pP e.2) ∈ sideP9 R i) (hki : R.V (pP k) ∈ sideP9 R i)
    (hvk : R.V (pP e.2) ≠ R.V (pP k)) :
    orientR (R.V (pQ e.1)) (R.V (pQ (e.1 + 1))) (R.V (pP k)) ≠ 0 := by
  classical
  simp only [segDegP, Finset.mem_filter, Finset.mem_univ, true_and] at he
  obtain ⟨s, hs0, hs1, hseq⟩ := exists_param_strict he
    (hcoinc e.2 e.1) (hcoinc e.2 (e.1 + 1))
  rw [← off_eq_orientR]
  exact neighbour_off_ne_zeroP R hfin e.1 e.2 k i hvi hki hvk
    (sub_ne_zero.mpr (R.simpleQ.1 e.1).symm) hs0 hs1 hseq

#print axioms exists_param_strict
#print axioms neighbour_off_ne_zeroP
#print axioms segDeg_neighbour_ne_zero
#print axioms segDegP_neighbour_ne_zero

/-! ## 53. `havg` from `(Fin)` and coincidence-freeness alone

Feeding §52 into §51.  The four smallness hypotheses disappear: what remains
are the two standing assumptions of the whole development, finiteness of the
intersection and no shared vertex. -/

theorem sideQ9_left_mem (R : Pair9) (j : Fin 7) : R.V (pQ j) ∈ sideQ9 R j :=
  left_mem_segment ℝ _ _

theorem sideQ9_right_mem (R : Pair9) (j : Fin 7) :
    R.V (pQ (j + 1)) ∈ sideQ9 R j := right_mem_segment ℝ _ _

theorem sideP9_left_mem (R : Pair9) (v : Fin 7) : R.V (pP v) ∈ sideP9 R v :=
  left_mem_segment ℝ _ _

theorem sideP9_right_mem (R : Pair9) (v : Fin 7) :
    R.V (pP (v + 1)) ∈ sideP9 R v := right_mem_segment ℝ _ _

theorem sideQ9_pred_mem (R : Pair9) (j : Fin 7) : R.V (pQ j) ∈ sideQ9 R (j - 1) := by
  have h : j - 1 + 1 = j := by simp
  simp only [sideQ9, h]
  exact right_mem_segment ℝ _ _

theorem sideP9_pred_mem (R : Pair9) (v : Fin 7) : R.V (pP v) ∈ sideP9 R (v - 1) := by
  have h : v - 1 + 1 = v := by simp
  simp only [sideP9, h]
  exact right_mem_segment ℝ _ _

theorem vertexQ_ne_pred (R : Pair9) (j : Fin 7) :
    R.V (pQ j) ≠ R.V (pQ (j - 1)) := by
  have h : j - 1 + 1 = j := by simp
  have hs := R.simpleQ.1 (j - 1)
  rw [h] at hs
  exact hs.symm

theorem vertexP_ne_pred (R : Pair9) (v : Fin 7) :
    R.V (pP v) ≠ R.V (pP (v - 1)) := by
  have h : v - 1 + 1 = v := by simp
  have hs := R.simpleP.1 (v - 1)
  rw [h] at hs
  exact hs.symm

open scoped Classical in
/-- **`havg`, with nothing assumed but `(Fin)` and coincidence-freeness.** -/
theorem exists_delta0_havg_free (R : Pair9) (hfin : (points9 R).Finite)
    (hcoinc : ∀ v j : Fin 7, R.V (pP v) ≠ R.V (pQ j)) (i : Fin 7) (t : ℝ) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| < δ₀ →
      ((segDeg R).card + (segDegP R).card
          ≤ (∑ d ∈ segDeg R, lcAt R.V i t δ d)
            + (∑ e ∈ segDegP R, lcAtP R.V i t δ e)) ∨
      ((segDeg R).card + (segDegP R).card
          ≤ (∑ d ∈ segDeg R, lcAt R.V i t (-δ) d)
            + (∑ e ∈ segDegP R, lcAtP R.V i t (-δ) e)) :=
  exists_delta0_havg R i t
    (fun d hd => segDeg_neighbour_ne_zero R hfin hcoinc hd (d.2 - 1) (d.2 - 1)
      (sideQ9_pred_mem R d.2) (sideQ9_left_mem R (d.2 - 1)) (vertexQ_ne_pred R d.2))
    (fun d hd => segDeg_neighbour_ne_zero R hfin hcoinc hd (d.2 + 1) d.2
      (sideQ9_left_mem R d.2) (sideQ9_right_mem R d.2) (R.simpleQ.1 d.2))
    (fun e he => segDegP_neighbour_ne_zero R hfin hcoinc he (e.2 - 1) (e.2 - 1)
      (sideP9_pred_mem R e.2) (sideP9_left_mem R (e.2 - 1)) (vertexP_ne_pred R e.2))
    (fun e he => segDegP_neighbour_ne_zero R hfin hcoinc he (e.2 + 1) e.2
      (sideP9_left_mem R e.2) (sideP9_right_mem R e.2) (R.simpleP.1 e.2))

#print axioms exists_delta0_havg_free

/-! ## 54. The joint step, assembled

Everything §38 needed at a single step, with `hmono`, both bridges, both
survival clauses and `havg` supplied.  What is left in the hypotheses is
exactly what rows 104 of the status table names and no more: a **tilt** that
avoids finitely many bad directions, and the **transversality** of each
degeneracy — the condition that the degenerate vertex's side genuinely
separates the other side's endpoints.  A vertex that *touches* a side and
turns back is a real case and is **not** covered here. -/

open scoped Classical in
theorem exists_joint_step (R : Pair9) (hfin : (points9 R).Finite)
    (hcoinc : ∀ v j : Fin 7, R.V (pP v) ≠ R.V (pQ j)) (i : Fin 7) (t : ℝ)
    {δtop : ℝ} (hδtop : 0 < δtop)
    (htrN : cross (tilt (R.V (pP (i + 1)) - R.V (pP i)) t)
        ((R.V (pP (i + 1))).1 - (R.V (pP (i + 1 + 1))).1,
         (R.V (pP (i + 1))).2 - (R.V (pP (i + 1 + 1))).2) ≠ 0)
    (htrP : cross (tilt (R.V (pP (i + 1)) - R.V (pP i)) t)
        ((R.V (pP i)).1 - (R.V (pP (i - 1))).1,
         (R.V (pP i)).2 - (R.V (pP (i - 1))).2) ≠ 0)
    (ht : ∀ m : Fin 7, cross (tilt (R.V (pP (i + 1)) - R.V (pP i)) t)
        (R.V (pQ (m + 1)) - R.V (pQ m)) ≠ 0)
    (hsepPD : ∀ x ∈ segDeg R,
      orientR (R.V (pQ (x.2 - 1))) (R.V (pQ x.2)) (R.V (pP x.1)) *
        orientR (R.V (pQ (x.2 - 1))) (R.V (pQ x.2)) (R.V (pP (x.1 + 1))) < 0)
    (hsepND : ∀ x ∈ segDeg R,
      orientR (R.V (pQ x.2)) (R.V (pQ (x.2 + 1))) (R.V (pP x.1)) *
        orientR (R.V (pQ x.2)) (R.V (pQ (x.2 + 1))) (R.V (pP (x.1 + 1))) < 0)
    (hsepPE : ∀ y ∈ segDegP R,
      orientR (R.V (pP (y.2 - 1))) (R.V (pP y.2)) (R.V (pQ y.1)) *
        orientR (R.V (pP (y.2 - 1))) (R.V (pP y.2)) (R.V (pQ (y.1 + 1))) < 0)
    (hsepNE : ∀ y ∈ segDegP R,
      orientR (R.V (pP y.2)) (R.V (pP (y.2 + 1))) (R.V (pQ y.1)) *
        orientR (R.V (pP y.2)) (R.V (pP (y.2 + 1))) (R.V (pQ (y.1 + 1))) < 0) :
    ∃ (δ : ℝ) (R' : Pair9), δ ≠ 0 ∧ |δ| < δtop ∧ R'.V = shiftV R.V i t δ ∧
      crossPairsOf R.V ⊆ crossPairsOf R'.V ∧
      (crossPairsOf R.V).card + (segDeg R).card + (segDegP R).card
        ≤ (crossPairsOf R'.V).card + (segDeg R').card + (segDegP R').card := by
  classical
  have hu : R.V (pP (i + 1)) - R.V (pP i) ≠ 0 :=
    sub_ne_zero.mpr (Ne.symm (R.simpleP.1 i))
  obtain ⟨r1, hr1, hA⟩ := crossPairsOf_mono_shift R.V i t
  obtain ⟨r2, hr2, hB⟩ :=
    exists_delta0_bridgeD R i t hu htrN htrP hcoinc hsepPD hsepND
  obtain ⟨r3, hr3, hC⟩ := exists_delta0_bridgeE R i t ht hsepPE hsepNE
  obtain ⟨r4, hr4, hD⟩ := exists_delta0_havg_free R hfin hcoinc i t
  obtain ⟨r5, hr5, hE⟩ :=
    exists_delta0_simpleClosed (fun m => R.V (pP m)) R.simpleP i t
  obtain ⟨δ₀, hδ₀, hl1, hl2, hl3, hl4, hl5, hl6⟩ :
      ∃ x : ℝ, 0 < x ∧ x ≤ r1 ∧ x ≤ r2 ∧ x ≤ r3 ∧ x ≤ r4 ∧ x ≤ r5 ∧ x ≤ δtop :=
    ⟨min (min r1 r2) (min (min r3 r4) (min r5 δtop)),
      lt_min (lt_min hr1 hr2) (lt_min (lt_min hr3 hr4) (lt_min hr5 hδtop)),
      le_trans (min_le_left _ _) (min_le_left _ _),
      le_trans (min_le_left _ _) (min_le_right _ _),
      le_trans (min_le_right _ _) (le_trans (min_le_left _ _) (min_le_left _ _)),
      le_trans (min_le_right _ _) (le_trans (min_le_left _ _) (min_le_right _ _)),
      le_trans (min_le_right _ _) (le_trans (min_le_right _ _) (min_le_left _ _)),
      le_trans (min_le_right _ _) (le_trans (min_le_right _ _) (min_le_right _ _))⟩
  -- one magnitude serves every bound; only the SIGN is still to be chosen
  have key : ∀ σ : ℝ, σ ≠ 0 → |σ| < δ₀ →
      ((segDeg R).card + (segDegP R).card
          ≤ (∑ x ∈ segDeg R, lcAt R.V i t σ x)
            + (∑ y ∈ segDegP R, lcAtP R.V i t σ y)) →
      ∃ R' : Pair9, R'.V = shiftV R.V i t σ ∧
        crossPairsOf R.V ⊆ crossPairsOf R'.V ∧
        (crossPairsOf R.V).card + (segDeg R).card + (segDegP R).card
          ≤ (crossPairsOf R'.V).card + (segDeg R').card + (segDegP R').card := by
    intro σ hσ0 hσ havg
    have hs1 : |σ| < r1 := lt_of_lt_of_le hσ hl1
    have hs2 : |σ| < r2 := lt_of_lt_of_le hσ hl2
    have hs3 : |σ| < r3 := lt_of_lt_of_le hσ hl3
    have hs5 : |σ| ≤ r5 := le_of_lt (lt_of_lt_of_le hσ hl5)
    have hP : AKR9.SimpleClosed (fun k : Fin 7 => shiftV R.V i t σ (pP k)) := by
      simpa only [shiftV_pP] using hE σ hs5
    have hQ : AKR9.SimpleClosed (fun k : Fin 7 => shiftV R.V i t σ (pQ k)) := by
      have hEq : (fun k : Fin 7 => shiftV R.V i t σ (pQ k))
          = fun k => R.V (pQ k) := by
        funext k; exact shiftV_Q R.V i t σ k
      rw [hEq]; exact R.simpleQ
    refine ⟨⟨shiftV R.V i t σ, hP, hQ⟩, rfl, hA σ hs1, ?_⟩
    exact step_invariant_joint R ⟨shiftV R.V i t σ, hP, hQ⟩ hfin hcoinc i t σ
      (hA σ hs1)
      (fun x hx hxt => hB σ hσ0 hs2 x hx hxt)
      (fun y hy hyt => hC σ hσ0 hs3 y hy hyt)
      (survD_of_untouched R _ i t σ rfl)
      (survE_of_untouched R _ i t σ rfl)
      havg
  have hhalf : |δ₀ / 2| < δ₀ := by
    rw [abs_of_pos (by linarith)]; linarith
  have hhalfne : δ₀ / 2 ≠ 0 := ne_of_gt (by linarith)
  rcases hD (δ₀ / 2) (lt_of_lt_of_le hhalf hl4) with hpos | hneg
  · obtain ⟨R', hR'V, hsub, hbound⟩ := key (δ₀ / 2) hhalfne hhalf hpos
    exact ⟨δ₀ / 2, R', hhalfne, lt_of_lt_of_le hhalf hl6, hR'V, hsub, hbound⟩
  · have habs : |(-(δ₀ / 2))| < δ₀ := by rw [abs_neg]; exact hhalf
    obtain ⟨R', hR'V, hsub, hbound⟩ :=
      key (-(δ₀ / 2)) (neg_ne_zero.mpr hhalfne) habs hneg
    exact ⟨-(δ₀ / 2), R', neg_ne_zero.mpr hhalfne, lt_of_lt_of_le habs hl6,
      hR'V, hsub, hbound⟩

#print axioms exists_joint_step

/-! ## 55. The tilt, discharged

§54's three tilt hypotheses say one thing: the tilted shift direction is not
parallel to any of nine fixed vectors — the seven `Q`-sides and the two
`P`-edges adjacent to the moving edge.  `RotationLaw.exists_good_tilt` rules
out one `t` per vector, so ten candidates suffice. -/

theorem coordSub_ne_zero {a b : ℝ × ℝ} (h : a ≠ b) :
    (a.1 - b.1, a.2 - b.2) ≠ 0 := by
  intro hz
  have h1 : a.1 - b.1 = 0 := congrArg Prod.fst hz
  have h2 : a.2 - b.2 = 0 := congrArg Prod.snd hz
  exact h (Prod.ext (by linarith) (by linarith))

/-- **One tilt avoids all nine bad directions at once.** -/
theorem exists_good_tilt_pair9 (R : Pair9) (i : Fin 7) :
    ∃ t : ℝ,
      cross (tilt (R.V (pP (i + 1)) - R.V (pP i)) t)
        ((R.V (pP (i + 1))).1 - (R.V (pP (i + 1 + 1))).1,
         (R.V (pP (i + 1))).2 - (R.V (pP (i + 1 + 1))).2) ≠ 0 ∧
      cross (tilt (R.V (pP (i + 1)) - R.V (pP i)) t)
        ((R.V (pP i)).1 - (R.V (pP (i - 1))).1,
         (R.V (pP i)).2 - (R.V (pP (i - 1))).2) ≠ 0 ∧
      ∀ m : Fin 7, cross (tilt (R.V (pP (i + 1)) - R.V (pP i)) t)
        (R.V (pQ (m + 1)) - R.V (pQ m)) ≠ 0 := by
  classical
  have hu : R.V (pP (i + 1)) - R.V (pP i) ≠ 0 :=
    sub_ne_zero.mpr (Ne.symm (R.simpleP.1 i))
  obtain ⟨t, -, h⟩ :=
    exists_good_tilt (Finset.univ : Finset (Fin 7 ⊕ (Unit ⊕ Unit))) hu
      (Sum.elim (fun m : Fin 7 => R.V (pQ (m + 1)) - R.V (pQ m))
        (Sum.elim
          (fun _ : Unit =>
            ((R.V (pP (i + 1))).1 - (R.V (pP (i + 1 + 1))).1,
             (R.V (pP (i + 1))).2 - (R.V (pP (i + 1 + 1))).2))
          (fun _ : Unit =>
            ((R.V (pP i)).1 - (R.V (pP (i - 1))).1,
             (R.V (pP i)).2 - (R.V (pP (i - 1))).2))))
      (by
        rintro (m | (u | u)) -
        · exact sub_ne_zero.mpr (R.simpleQ.1 m).symm
        · exact coordSub_ne_zero (R.simpleP.1 (i + 1))
        · exact coordSub_ne_zero (vertexP_ne_pred R i))
      ((Finset.range 10).image (fun n : ℕ => (n : ℝ)))
      (by
        rw [Finset.card_image_of_injective _ Nat.cast_injective,
          Finset.card_range, Finset.card_univ]
        simp)
  exact ⟨t,
    h (Sum.inr (Sum.inl ())) (Finset.mem_univ _),
    h (Sum.inr (Sum.inr ())) (Finset.mem_univ _),
    fun m => h (Sum.inl m) (Finset.mem_univ _)⟩

open scoped Classical in
/-- **§54 with the tilt chosen.**  The only hypotheses left beyond the two
standing ones are the four transversality conditions. -/
theorem exists_joint_step_tilted (R : Pair9) (hfin : (points9 R).Finite)
    (hcoinc : ∀ v j : Fin 7, R.V (pP v) ≠ R.V (pQ j)) (i : Fin 7)
    {δtop : ℝ} (hδtop : 0 < δtop)
    (hsepPD : ∀ x ∈ segDeg R,
      orientR (R.V (pQ (x.2 - 1))) (R.V (pQ x.2)) (R.V (pP x.1)) *
        orientR (R.V (pQ (x.2 - 1))) (R.V (pQ x.2)) (R.V (pP (x.1 + 1))) < 0)
    (hsepND : ∀ x ∈ segDeg R,
      orientR (R.V (pQ x.2)) (R.V (pQ (x.2 + 1))) (R.V (pP x.1)) *
        orientR (R.V (pQ x.2)) (R.V (pQ (x.2 + 1))) (R.V (pP (x.1 + 1))) < 0)
    (hsepPE : ∀ y ∈ segDegP R,
      orientR (R.V (pP (y.2 - 1))) (R.V (pP y.2)) (R.V (pQ y.1)) *
        orientR (R.V (pP (y.2 - 1))) (R.V (pP y.2)) (R.V (pQ (y.1 + 1))) < 0)
    (hsepNE : ∀ y ∈ segDegP R,
      orientR (R.V (pP y.2)) (R.V (pP (y.2 + 1))) (R.V (pQ y.1)) *
        orientR (R.V (pP y.2)) (R.V (pP (y.2 + 1))) (R.V (pQ (y.1 + 1))) < 0) :
    ∃ (t δ : ℝ) (R' : Pair9), δ ≠ 0 ∧ |δ| < δtop ∧ R'.V = shiftV R.V i t δ ∧
      crossPairsOf R.V ⊆ crossPairsOf R'.V ∧
      (crossPairsOf R.V).card + (segDeg R).card + (segDegP R).card
        ≤ (crossPairsOf R'.V).card + (segDeg R').card + (segDegP R').card := by
  obtain ⟨t, h1, h2, h3⟩ := exists_good_tilt_pair9 R i
  obtain ⟨δ, R', hδ, hδt, hR', hsub, hb⟩ :=
    exists_joint_step R hfin hcoinc i t hδtop h1 h2 h3 hsepPD hsepND hsepPE hsepNE
  exact ⟨t, δ, R', hδ, hδt, hR', hsub, hb⟩

#print axioms coordSub_ne_zero
#print axioms exists_good_tilt_pair9
#print axioms exists_joint_step_tilted

/-! ## 56. Transversality is not an extra assumption

§54 carried four transversality hypotheses, and this section removes them.
The reason is elementary and worth stating: the degenerate vertex `C` lies
**strictly between** the side's endpoints `A` and `B` — which is exactly what
excluding a shared vertex buys — so `A` and `B` lie on opposite sides of
*every* line through `C` except the line `AB` itself.  And the line `AB` is
already excluded, by §52.

The identity behind it is

    orientR C D A * orientR C D B = −s(1−s) · (orientR A B D)²,

with `C = A + s(B−A)`: the `s`-dependence of `D − C` cancels entirely, and the
sign is forced by `0 < s < 1` together with `orientR A B D ≠ 0`. -/

theorem sep_of_strict_between (A B C D : ℝ × ℝ) (s : ℝ) (hs0 : 0 < s) (hs1 : s < 1)
    (hC : C = lin A (B - A) s) (hD : orientR A B D ≠ 0) :
    orientR C D A * orientR C D B < 0 := by
  subst hC
  have key : orientR (lin A (B - A) s) D A * orientR (lin A (B - A) s) D B
      = -(s * (1 - s)) * (orientR A B D * orientR A B D) := by
    simp only [orientR, lin, Prod.fst_sub, Prod.snd_sub, Prod.fst_add,
      Prod.snd_add, Prod.smul_fst, Prod.smul_snd, smul_eq_mul]
    ring
  rw [key]
  have h1 : 0 < s * (1 - s) := mul_pos hs0 (by linarith)
  have h2 : 0 < orientR A B D * orientR A B D := mul_self_pos.mpr hD
  nlinarith

open scoped Classical in
theorem segDeg_transversal_next (R : Pair9) (hfin : (points9 R).Finite)
    (hcoinc : ∀ v j : Fin 7, R.V (pP v) ≠ R.V (pQ j))
    {x : Fin 7 × Fin 7} (hx : x ∈ segDeg R) :
    orientR (R.V (pQ x.2)) (R.V (pQ (x.2 + 1))) (R.V (pP x.1)) *
      orientR (R.V (pQ x.2)) (R.V (pQ (x.2 + 1))) (R.V (pP (x.1 + 1))) < 0 := by
  classical
  have hmem : R.V (pQ x.2) ∈ sideP9 R x.1 := by
    simpa only [segDeg, Finset.mem_filter, Finset.mem_univ, true_and] using hx
  obtain ⟨s, hs0, hs1, hseq⟩ := exists_param_strict hmem
    (fun hc => hcoinc x.1 x.2 hc.symm) (fun hc => hcoinc (x.1 + 1) x.2 hc.symm)
  exact sep_of_strict_between _ _ _ _ s hs0 hs1 hseq
    (segDeg_neighbour_ne_zero R hfin hcoinc hx (x.2 + 1) x.2
      (sideQ9_left_mem R x.2) (sideQ9_right_mem R x.2) (R.simpleQ.1 x.2))

open scoped Classical in
theorem segDeg_transversal_prev (R : Pair9) (hfin : (points9 R).Finite)
    (hcoinc : ∀ v j : Fin 7, R.V (pP v) ≠ R.V (pQ j))
    {x : Fin 7 × Fin 7} (hx : x ∈ segDeg R) :
    orientR (R.V (pQ (x.2 - 1))) (R.V (pQ x.2)) (R.V (pP x.1)) *
      orientR (R.V (pQ (x.2 - 1))) (R.V (pQ x.2)) (R.V (pP (x.1 + 1))) < 0 := by
  classical
  have hmem : R.V (pQ x.2) ∈ sideP9 R x.1 := by
    simpa only [segDeg, Finset.mem_filter, Finset.mem_univ, true_and] using hx
  obtain ⟨s, hs0, hs1, hseq⟩ := exists_param_strict hmem
    (fun hc => hcoinc x.1 x.2 hc.symm) (fun hc => hcoinc (x.1 + 1) x.2 hc.symm)
  have hbase := sep_of_strict_between (R.V (pP x.1)) (R.V (pP (x.1 + 1)))
    (R.V (pQ x.2)) (R.V (pQ (x.2 - 1))) s hs0 hs1 hseq
    (segDeg_neighbour_ne_zero R hfin hcoinc hx (x.2 - 1) (x.2 - 1)
      (sideQ9_pred_mem R x.2) (sideQ9_left_mem R (x.2 - 1)) (vertexQ_ne_pred R x.2))
  rw [orientR_swap (R.V (pQ (x.2 - 1))) (R.V (pQ x.2)) (R.V (pP x.1)),
    orientR_swap (R.V (pQ (x.2 - 1))) (R.V (pQ x.2)) (R.V (pP (x.1 + 1))),
    neg_mul_neg]
  exact hbase

open scoped Classical in
theorem segDegP_transversal_next (R : Pair9) (hfin : (points9 R).Finite)
    (hcoinc : ∀ v j : Fin 7, R.V (pP v) ≠ R.V (pQ j))
    {y : Fin 7 × Fin 7} (hy : y ∈ segDegP R) :
    orientR (R.V (pP y.2)) (R.V (pP (y.2 + 1))) (R.V (pQ y.1)) *
      orientR (R.V (pP y.2)) (R.V (pP (y.2 + 1))) (R.V (pQ (y.1 + 1))) < 0 := by
  classical
  have hmem : R.V (pP y.2) ∈ sideQ9 R y.1 := by
    simpa only [segDegP, Finset.mem_filter, Finset.mem_univ, true_and] using hy
  obtain ⟨s, hs0, hs1, hseq⟩ := exists_param_strict hmem
    (hcoinc y.2 y.1) (hcoinc y.2 (y.1 + 1))
  exact sep_of_strict_between _ _ _ _ s hs0 hs1 hseq
    (segDegP_neighbour_ne_zero R hfin hcoinc hy (y.2 + 1) y.2
      (sideP9_left_mem R y.2) (sideP9_right_mem R y.2) (R.simpleP.1 y.2))

open scoped Classical in
theorem segDegP_transversal_prev (R : Pair9) (hfin : (points9 R).Finite)
    (hcoinc : ∀ v j : Fin 7, R.V (pP v) ≠ R.V (pQ j))
    {y : Fin 7 × Fin 7} (hy : y ∈ segDegP R) :
    orientR (R.V (pP (y.2 - 1))) (R.V (pP y.2)) (R.V (pQ y.1)) *
      orientR (R.V (pP (y.2 - 1))) (R.V (pP y.2)) (R.V (pQ (y.1 + 1))) < 0 := by
  classical
  have hmem : R.V (pP y.2) ∈ sideQ9 R y.1 := by
    simpa only [segDegP, Finset.mem_filter, Finset.mem_univ, true_and] using hy
  obtain ⟨s, hs0, hs1, hseq⟩ := exists_param_strict hmem
    (hcoinc y.2 y.1) (hcoinc y.2 (y.1 + 1))
  have hbase := sep_of_strict_between (R.V (pQ y.1)) (R.V (pQ (y.1 + 1)))
    (R.V (pP y.2)) (R.V (pP (y.2 - 1))) s hs0 hs1 hseq
    (segDegP_neighbour_ne_zero R hfin hcoinc hy (y.2 - 1) (y.2 - 1)
      (sideP9_pred_mem R y.2) (sideP9_left_mem R (y.2 - 1)) (vertexP_ne_pred R y.2))
  rw [orientR_swap (R.V (pP (y.2 - 1))) (R.V (pP y.2)) (R.V (pQ y.1)),
    orientR_swap (R.V (pP (y.2 - 1))) (R.V (pP y.2)) (R.V (pQ (y.1 + 1))),
    neg_mul_neg]
  exact hbase

open scoped Classical in
/-- **The joint step, with nothing assumed but `(Fin)` and coincidence-freeness.**

From any `Pair9` whose two boundaries meet in finitely many points and which
share no vertex, and at **any** edge `i`, there is a tilt and a nonzero shift
producing another `Pair9` — both heptagons still simple — on which

    crossPairs + segDeg + segDegP

has not decreased.  This is §38's per-step obligation, discharged.

It is a statement about **one step**. It does not by itself give `(A9)`: that
needs the chain to terminate, and `f(7,7) = 38` remains conditional on AKR §9,
which this does not close. -/
theorem exists_joint_step_free (R : Pair9) (hfin : (points9 R).Finite)
    (hcoinc : ∀ v j : Fin 7, R.V (pP v) ≠ R.V (pQ j)) (i : Fin 7)
    {δtop : ℝ} (hδtop : 0 < δtop) :
    ∃ (t δ : ℝ) (R' : Pair9), δ ≠ 0 ∧ |δ| < δtop ∧ R'.V = shiftV R.V i t δ ∧
      crossPairsOf R.V ⊆ crossPairsOf R'.V ∧
      (crossPairsOf R.V).card + (segDeg R).card + (segDegP R).card
        ≤ (crossPairsOf R'.V).card + (segDeg R').card + (segDegP R').card :=
  exists_joint_step_tilted R hfin hcoinc i hδtop
    (fun _ hx => segDeg_transversal_prev R hfin hcoinc hx)
    (fun _ hx => segDeg_transversal_next R hfin hcoinc hx)
    (fun _ hy => segDegP_transversal_prev R hfin hcoinc hy)
    (fun _ hy => segDegP_transversal_next R hfin hcoinc hy)

/-! ## 57. The monovariant

`exists_joint_step_free` gives a step that does not *lose* ground.  For the
chain to terminate we need it to *gain*: this section shows the shift removes
**exactly** the degeneracies on the touched sides and creates **none**, so the
combined degeneracy count strictly drops whenever the edge is chosen to carry
one. -/

theorem shiftV_pP_untouched (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t δ : ℝ) {k : Fin 7}
    (h1 : k ≠ i) (h2 : k ≠ i + 1) : shiftV V i t δ (pP k) = V (pP k) := by
  rw [shiftV]
  refine if_neg ?_
  rintro (h | h)
  · exact h1 (pP_inj h)
  · exact h2 (pP_inj h)

open scoped Classical in
theorem segDeg_untouched_iff (R R' : Pair9) (i : Fin 7) (t δ : ℝ)
    (hR' : R'.V = shiftV R.V i t δ) {k j : Fin 7} (hnt : k ∉ touched i) :
    ((k, j) ∈ segDeg R' ↔ (k, j) ∈ segDeg R) := by
  classical
  have h1 : k ≠ i := fun hc => hnt (by rw [mem_touched_iff]; exact Or.inl hc)
  have h2 : k ≠ i + 1 := fun hc => hnt (by rw [mem_touched_iff]; exact Or.inr (Or.inl hc))
  have h3 : k ≠ i - 1 := fun hc => hnt (by rw [mem_touched_iff]; exact Or.inr (Or.inr hc))
  have e1 : R'.V (pP k) = R.V (pP k) := by
    rw [hR']; exact shiftV_pP_untouched R.V i t δ h1 h2
  have e2 : R'.V (pP (k + 1)) = R.V (pP (k + 1)) := by
    rw [hR']
    refine shiftV_pP_untouched R.V i t δ (fun hc => h3 (eq_sub_of_add_eq hc))
      (fun hc => h1 (add_right_cancel hc))
  have e3 : R'.V (pQ j) = R.V (pQ j) := by rw [hR']; exact shiftV_Q R.V i t δ j
  constructor <;> intro h <;>
    simp only [segDeg, Finset.mem_filter, Finset.mem_univ, true_and] at h ⊢ <;>
    simpa only [sideP9, e1, e2, e3] using h

open scoped Classical in
theorem segDegP_untouched_iff (R R' : Pair9) (i : Fin 7) (t δ : ℝ)
    (hR' : R'.V = shiftV R.V i t δ) {m v : Fin 7} (hnt : v ∉ touchedP i) :
    ((m, v) ∈ segDegP R' ↔ (m, v) ∈ segDegP R) := by
  classical
  have h1 : v ≠ i := fun hc => hnt (by rw [mem_touchedP_iff]; exact Or.inl hc)
  have h2 : v ≠ i + 1 := fun hc => hnt (by rw [mem_touchedP_iff]; exact Or.inr hc)
  have e1 : R'.V (pQ m) = R.V (pQ m) := by rw [hR']; exact shiftV_Q R.V i t δ m
  have e2 : R'.V (pQ (m + 1)) = R.V (pQ (m + 1)) := by
    rw [hR']; exact shiftV_Q R.V i t δ (m + 1)
  have e3 : R'.V (pP v) = R.V (pP v) := by
    rw [hR']; exact shiftV_pP_untouched R.V i t δ h1 h2
  constructor <;> intro h <;>
    simp only [segDegP, Finset.mem_filter, Finset.mem_univ, true_and] at h ⊢ <;>
    simpa only [sideQ9, e1, e2, e3] using h

open scoped Classical in
/-- **The shift removes exactly the touched degeneracies, in both families.** -/
theorem exists_delta0_deg_exact (R : Pair9) (i : Fin 7) (t : ℝ)
    (hu : R.V (pP (i + 1)) - R.V (pP i) ≠ 0)
    (htrN : cross (tilt (R.V (pP (i + 1)) - R.V (pP i)) t)
        ((R.V (pP (i + 1))).1 - (R.V (pP (i + 1 + 1))).1,
         (R.V (pP (i + 1))).2 - (R.V (pP (i + 1 + 1))).2) ≠ 0)
    (htrP : cross (tilt (R.V (pP (i + 1)) - R.V (pP i)) t)
        ((R.V (pP i)).1 - (R.V (pP (i - 1))).1,
         (R.V (pP i)).2 - (R.V (pP (i - 1))).2) ≠ 0)
    (ht : ∀ m : Fin 7, cross (tilt (R.V (pP (i + 1)) - R.V (pP i)) t)
        (R.V (pQ (m + 1)) - R.V (pQ m)) ≠ 0)
    (hnc : ∀ v m : Fin 7, R.V (pP v) ≠ R.V (pQ m)) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, δ ≠ 0 → |δ| < δ₀ →
      ∀ R' : Pair9, R'.V = shiftV R.V i t δ →
        segDeg R' = (segDeg R).filter (fun x => x.1 ∉ touched i) ∧
        segDegP R' = (segDegP R).filter (fun y => y.2 ∉ touchedP i) := by
  classical
  obtain ⟨δ₀, hδ₀, hord⟩ := exists_delta0_order_type R.V i t
  refine ⟨δ₀, hδ₀, fun δ hδ0 hδ R' hR' => ⟨?_, ?_⟩⟩
  · ext p
    simp only [Finset.mem_filter]
    constructor
    · intro hp
      have hzero : orientR (shiftV R.V i t δ (pP p.1))
          (shiftV R.V i t δ (pP (p.1 + 1))) (shiftV R.V i t δ (pQ p.2)) = 0 := by
        have hmem : R'.V (pQ p.2) ∈ sideP9 R' p.1 := by
          simpa only [segDeg, Finset.mem_filter, Finset.mem_univ, true_and] using hp
        rw [← hR']
        rw [← off_eq_orientR]
        exact off_eq_zero_of_mem_segment hmem
      have hnt : p.1 ∉ touched i := by
        intro hct
        by_cases horig :
            orientR (R.V (pP p.1)) (R.V (pP (p.1 + 1))) (R.V (pQ p.2)) = 0
        · have hr := rate_ne_zero_of_touched R.V i t hct hu horig htrN htrP hnc
          rw [orientR_shift_side, horig, zero_add] at hzero
          exact (mul_ne_zero hδ0 hr) hzero
        · have hs := hord δ hδ (pP p.1) (pP (p.1 + 1)) (pQ p.2) horig
          rw [hzero, mul_zero] at hs
          exact lt_irrefl 0 hs
      exact ⟨(segDeg_untouched_iff R R' i t δ hR' hnt).mp hp, hnt⟩
    · rintro ⟨hp, hnt⟩
      exact (segDeg_untouched_iff R R' i t δ hR' hnt).mpr hp
  · ext p
    simp only [Finset.mem_filter]
    constructor
    · intro hp
      have hzero : orientR (shiftV R.V i t δ (pQ p.1))
          (shiftV R.V i t δ (pQ (p.1 + 1))) (shiftV R.V i t δ (pP p.2)) = 0 := by
        have hmem : R'.V (pP p.2) ∈ sideQ9 R' p.1 := by
          simpa only [segDegP, Finset.mem_filter, Finset.mem_univ, true_and] using hp
        rw [← hR']
        rw [← off_eq_orientR]
        exact off_eq_zero_of_mem_segment hmem
      have hnt : p.2 ∉ touchedP i := by
        intro hct
        by_cases horig :
            orientR (R.V (pQ p.1)) (R.V (pQ (p.1 + 1))) (R.V (pP p.2)) = 0
        · have hr := coefQ_ne_zero_of_touchedP R.V i t p.1 p.2 hct (ht p.1)
          rw [orientR_shift_Qside, horig, zero_add] at hzero
          exact (mul_ne_zero hδ0 hr) hzero
        · have hs := hord δ hδ (pQ p.1) (pQ (p.1 + 1)) (pP p.2) horig
          rw [hzero, mul_zero] at hs
          exact lt_irrefl 0 hs
      exact ⟨(segDegP_untouched_iff R R' i t δ hR' hnt).mp hp, hnt⟩
    · rintro ⟨hp, hnt⟩
      exact (segDegP_untouched_iff R R' i t δ hR' hnt).mpr hp

#print axioms shiftV_pP_untouched
#print axioms segDeg_untouched_iff
#print axioms segDegP_untouched_iff
#print axioms exists_delta0_deg_exact

/-! ## 58. Coincidence-freeness propagates

Row 111's obligation (a).  A moved `P`-vertex could land exactly on a
`Q`-vertex, but only for one `δ` per pair: the displacement `δ • w` has norm
`|δ|·‖w‖`, and the two vertices start a positive distance apart. -/

open scoped Classical in
theorem exists_delta0_coincFree (R : Pair9) (i : Fin 7) (t : ℝ)
    (hcoinc : ∀ v j : Fin 7, R.V (pP v) ≠ R.V (pQ j)) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| < δ₀ →
      ∀ v j : Fin 7, shiftV R.V i t δ (pP v) ≠ R.V (pQ j) := by
  classical
  obtain ⟨δ₀, hδ₀, hsm⟩ :=
    exists_uniform_smallness (Finset.univ : Finset (Fin 7 × Fin 7))
      (fun p => ‖R.V (pP p.1) - R.V (pQ p.2)‖)
      (fun _ => ‖tilt (R.V (pP (i + 1)) - R.V (pP i)) t‖)
      (fun p _ => norm_ne_zero_iff.mpr (sub_ne_zero.mpr (hcoinc p.1 p.2)))
  refine ⟨δ₀, hδ₀, fun δ hδ v j hEq => ?_⟩
  have hs := hsm δ hδ (v, j) (Finset.mem_univ _)
  rw [shiftV_eq_add_smul] at hEq
  set w := tilt (R.V (pP (i + 1)) - R.V (pP i)) t with hwdef
  set c : ℝ := δ * (if pP v = pP i ∨ pP v = pP (i + 1) then 1 else 0) with hcdef
  have hkey : R.V (pP v) - R.V (pQ j) = -(c • w) := by
    rw [← hEq]; abel
  have h1 : ‖R.V (pP v) - R.V (pQ j)‖ = |c| * ‖w‖ := by
    rw [hkey, norm_neg, norm_smul, Real.norm_eq_abs]
  have h2 : |c| ≤ |δ| := by
    rw [hcdef]
    split_ifs
    · rw [mul_one]
    · rw [mul_zero, abs_zero]; exact abs_nonneg δ
  have h3 : |δ * ‖w‖| = |δ| * ‖w‖ := by
    rw [abs_mul, abs_of_nonneg (norm_nonneg w)]
  have h4 : |‖R.V (pP v) - R.V (pQ j)‖| = ‖R.V (pP v) - R.V (pQ j)‖ :=
    abs_of_nonneg (norm_nonneg _)
  rw [h3, h4] at hs
  have h5 : |c| * ‖w‖ ≤ |δ| * ‖w‖ :=
    mul_le_mul_of_nonneg_right h2 (norm_nonneg w)
  rw [h1] at hs
  exact absurd hs (not_lt.mpr h5)

#print axioms exists_delta0_coincFree

/-! ## 60pre. `(Fin)` propagates — the segment/line primitive

Row 112's obligation (b).  The missing ingredient is elementary: `off` is
**affine** along a segment, and a nonzero affine function of one real variable
has at most one root.  So a segment not contained in a line meets that line in
at most one point, and the whole boundary intersection is a finite union of
such meetings. -/

theorem off_lin_affine (a A C D : ℝ × ℝ) (s : ℝ) :
    off a A (lin C (D - C) s) = off a A C + s * (off a A D - off a A C) := by
  simp only [off, lin, Prod.fst_sub, Prod.snd_sub]; ring

theorem exists_param_mem {C D x : ℝ × ℝ} (hx : x ∈ segment ℝ C D) :
    ∃ s : ℝ, x = lin C (D - C) s := by
  obtain ⟨p, q, hp, hq, hpq, rfl⟩ := hx
  refine ⟨q, ?_⟩
  have hp' : p = 1 - q := by linarith
  subst hp'
  simp only [lin, Prod.ext_iff, Prod.fst_sub, Prod.snd_sub, Prod.fst_add,
    Prod.snd_add, Prod.smul_fst, Prod.smul_snd, smul_eq_mul]
  constructor <;> ring

/-- **A segment not contained in a line meets it at most once.** -/
theorem subsingleton_segment_off_zero {a A C D : ℝ × ℝ}
    (hnot : off a A C ≠ 0 ∨ off a A D ≠ 0) :
    {x | x ∈ segment ℝ C D ∧ off a A x = 0}.Subsingleton := by
  intro x hx y hy
  obtain ⟨s, hs⟩ := exists_param_mem hx.1
  obtain ⟨r, hr⟩ := exists_param_mem hy.1
  have hxs : off a A C + s * (off a A D - off a A C) = 0 := by
    rw [← off_lin_affine, ← hs]; exact hx.2
  have hyr : off a A C + r * (off a A D - off a A C) = 0 := by
    rw [← off_lin_affine, ← hr]; exact hy.2
  by_cases hd : off a A D - off a A C = 0
  · exfalso
    rw [hd, mul_zero, add_zero] at hxs
    rcases hnot with h | h
    · exact h hxs
    · exact h (by linarith)
  · have hsr : (s - r) * (off a A D - off a A C) = 0 := by
      linear_combination hxs - hyr
    have hse : s = r := by
      rcases mul_eq_zero.mp hsr with h | h
      · linarith
      · exact absurd h hd
    rw [hs, hr, hse]

open scoped Classical in
theorem sideP9_inter_sideQ9_finite (R : Pair9) (k j : Fin 7)
    (hnot : orientR (R.V (pP k)) (R.V (pP (k + 1))) (R.V (pQ j)) ≠ 0 ∨
            orientR (R.V (pP k)) (R.V (pP (k + 1))) (R.V (pQ (j + 1))) ≠ 0) :
    (sideP9 R k ∩ sideQ9 R j).Finite := by
  refine Set.Finite.subset
    (Set.Subsingleton.finite
      (subsingleton_segment_off_zero
        (a := R.V (pP (k + 1)) - R.V (pP k)) (A := R.V (pP k))
        (C := R.V (pQ j)) (D := R.V (pQ (j + 1))) ?_)) ?_
  · simpa only [off_eq_orientR] using hnot
  · rintro x ⟨hxP, hxQ⟩
    exact ⟨hxQ, off_eq_zero_of_mem_segment hxP⟩

theorem points9_finite_of_pairwise (R : Pair9)
    (h : ∀ k j : Fin 7, (sideP9 R k ∩ sideQ9 R j).Finite) :
    (points9 R).Finite := by
  have heq : points9 R = ⋃ k : Fin 7, ⋃ j : Fin 7, (sideP9 R k ∩ sideQ9 R j) := by
    ext x
    simp only [points9, bdryP9, bdryQ9, Set.mem_inter_iff, Set.mem_iUnion]
    tauto
  rw [heq]
  exact Set.finite_iUnion (fun k => Set.finite_iUnion (fun j => h k j))

#print axioms off_lin_affine
#print axioms subsingleton_segment_off_zero
#print axioms sideP9_inter_sideQ9_finite
#print axioms points9_finite_of_pairwise

open scoped Classical in
/-- **`(Fin)` propagates.**  On a touched side every determinant against every
`Q`-vertex is nonzero after the shift — if it was nonzero it stays so, if it
was zero it becomes `δ` times a nonzero rate — so that side meets each `Q`-side
at most once.  An untouched side has not moved, and neither has `Q`, so its
meetings are exactly the original ones. -/
theorem exists_delta0_finite (R : Pair9) (hfin : (points9 R).Finite)
    (i : Fin 7) (t : ℝ)
    (hu : R.V (pP (i + 1)) - R.V (pP i) ≠ 0)
    (htrN : cross (tilt (R.V (pP (i + 1)) - R.V (pP i)) t)
        ((R.V (pP (i + 1))).1 - (R.V (pP (i + 1 + 1))).1,
         (R.V (pP (i + 1))).2 - (R.V (pP (i + 1 + 1))).2) ≠ 0)
    (htrP : cross (tilt (R.V (pP (i + 1)) - R.V (pP i)) t)
        ((R.V (pP i)).1 - (R.V (pP (i - 1))).1,
         (R.V (pP i)).2 - (R.V (pP (i - 1))).2) ≠ 0)
    (hnc : ∀ v m : Fin 7, R.V (pP v) ≠ R.V (pQ m)) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, δ ≠ 0 → |δ| < δ₀ →
      ∀ R' : Pair9, R'.V = shiftV R.V i t δ → (points9 R').Finite := by
  classical
  obtain ⟨δ₀, hδ₀, hord⟩ := exists_delta0_order_type R.V i t
  refine ⟨δ₀, hδ₀, fun δ hδ0 hδ R' hR' => ?_⟩
  refine points9_finite_of_pairwise R' (fun k j => ?_)
  by_cases hkt : k ∈ touched i
  · have hne : orientR (R'.V (pP k)) (R'.V (pP (k + 1))) (R'.V (pQ j)) ≠ 0 := by
      rw [hR']
      by_cases horig : orientR (R.V (pP k)) (R.V (pP (k + 1))) (R.V (pQ j)) = 0
      · rw [orientR_shift_side, horig, zero_add]
        exact mul_ne_zero hδ0
          (rate_ne_zero_of_touched R.V i t hkt hu horig htrN htrP hnc)
      · intro hz
        have hs := hord δ hδ (pP k) (pP (k + 1)) (pQ j) horig
        rw [hz, mul_zero] at hs
        exact lt_irrefl 0 hs
    exact sideP9_inter_sideQ9_finite R' k j (Or.inl hne)
  · have h1 : k ≠ i := fun hc => hkt (by rw [mem_touched_iff]; exact Or.inl hc)
    have h2 : k ≠ i + 1 := fun hc =>
      hkt (by rw [mem_touched_iff]; exact Or.inr (Or.inl hc))
    have h3 : k ≠ i - 1 := fun hc =>
      hkt (by rw [mem_touched_iff]; exact Or.inr (Or.inr hc))
    have e1 : R'.V (pP k) = R.V (pP k) := by
      rw [hR']; exact shiftV_pP_untouched R.V i t δ h1 h2
    have e2 : R'.V (pP (k + 1)) = R.V (pP (k + 1)) := by
      rw [hR']
      exact shiftV_pP_untouched R.V i t δ (fun hc => h3 (eq_sub_of_add_eq hc))
        (fun hc => h1 (add_right_cancel hc))
    have eQ1 : R'.V (pQ j) = R.V (pQ j) := by rw [hR']; exact shiftV_Q R.V i t δ j
    have eQ2 : R'.V (pQ (j + 1)) = R.V (pQ (j + 1)) := by
      rw [hR']; exact shiftV_Q R.V i t δ (j + 1)
    refine hfin.subset ?_
    rintro x ⟨hxP, hxQ⟩
    exact ⟨Set.mem_iUnion.mpr ⟨k, by simpa only [sideP9, e1, e2] using hxP⟩,
           Set.mem_iUnion.mpr ⟨j, by simpa only [sideQ9, eQ1, eQ2] using hxQ⟩⟩

#print axioms exists_delta0_finite

/-! ## 59. The strictly decreasing step

§56 gives a step that does not lose ground; §57 gives one that gains.  They
use the same tilt and the same `δ`, so they compose: choosing the edge to
carry a degeneracy, one shift both preserves the joint measure **and** strictly
drops the degeneracy count. -/

open scoped Classical in
theorem exists_joint_step_decreasing (R : Pair9) (hfin : (points9 R).Finite)
    (hcoinc : ∀ v j : Fin 7, R.V (pP v) ≠ R.V (pQ j)) (i : Fin 7)
    (hsome : (∃ x ∈ segDeg R, x.1 ∈ touched i) ∨
             (∃ y ∈ segDegP R, y.2 ∈ touchedP i)) :
    ∃ (t δ : ℝ) (R' : Pair9), δ ≠ 0 ∧ R'.V = shiftV R.V i t δ ∧
      (crossPairsOf R.V).card + (segDeg R).card + (segDegP R).card
        ≤ (crossPairsOf R'.V).card + (segDeg R').card + (segDegP R').card ∧
      (segDeg R').card + (segDegP R').card
        < (segDeg R).card + (segDegP R).card ∧
      (∀ v j : Fin 7, R'.V (pP v) ≠ R'.V (pQ j)) ∧
      (points9 R').Finite ∧
      crossPairsOf R.V ⊆ crossPairsOf R'.V := by
  classical
  have hu : R.V (pP (i + 1)) - R.V (pP i) ≠ 0 :=
    sub_ne_zero.mpr (Ne.symm (R.simpleP.1 i))
  obtain ⟨t, h1, h2, h3⟩ := exists_good_tilt_pair9 R i
  obtain ⟨δ₀, hδ₀, hexact⟩ := exists_delta0_deg_exact R i t hu h1 h2 h3 hcoinc
  obtain ⟨δ₁, hδ₁, hcf⟩ := exists_delta0_coincFree R i t hcoinc
  obtain ⟨δ₂, hδ₂, hfn⟩ := exists_delta0_finite R hfin i t hu h1 h2 hcoinc
  obtain ⟨δ, R', hδ, hδt, hR', hsub, hb⟩ :=
    exists_joint_step R hfin hcoinc i t (lt_min (lt_min hδ₀ hδ₁) hδ₂) h1 h2 h3
      (fun _ hx => segDeg_transversal_prev R hfin hcoinc hx)
      (fun _ hx => segDeg_transversal_next R hfin hcoinc hx)
      (fun _ hy => segDegP_transversal_prev R hfin hcoinc hy)
      (fun _ hy => segDegP_transversal_next R hfin hcoinc hy)
  have hδd : |δ| < δ₀ :=
    lt_of_lt_of_le hδt ((min_le_left _ _).trans (min_le_left _ _))
  have hδc : |δ| < δ₁ :=
    lt_of_lt_of_le hδt ((min_le_left _ _).trans (min_le_right _ _))
  have hδf : |δ| < δ₂ := lt_of_lt_of_le hδt (min_le_right _ _)
  obtain ⟨hD, hE⟩ := hexact δ hδ hδd R' hR'
  have hcf' : ∀ v j : Fin 7, R'.V (pP v) ≠ R'.V (pQ j) := by
    intro v j
    rw [hR', shiftV_Q]
    exact hcf δ hδc v j
  refine ⟨t, δ, R', hδ, hR', hb, ?_, hcf', hfn δ hδ hδf R' hR', hsub⟩
  rw [hD, hE]
  have hle1 : ((segDeg R).filter (fun x => x.1 ∉ touched i)).card
      ≤ (segDeg R).card := Finset.card_le_card (Finset.filter_subset _ _)
  have hle2 : ((segDegP R).filter (fun y => y.2 ∉ touchedP i)).card
      ≤ (segDegP R).card := Finset.card_le_card (Finset.filter_subset _ _)
  rcases hsome with ⟨x, hx, hxt⟩ | ⟨y, hy, hyt⟩
  · have hlt : ((segDeg R).filter (fun x => x.1 ∉ touched i)).card
        < (segDeg R).card :=
      Finset.card_lt_card
        ((Finset.ssubset_iff_of_subset (Finset.filter_subset _ _)).mpr
          ⟨x, hx, fun hc => (Finset.mem_filter.mp hc).2 hxt⟩)
    omega
  · have hlt : ((segDegP R).filter (fun y => y.2 ∉ touchedP i)).card
        < (segDegP R).card :=
      Finset.card_lt_card
        ((Finset.ssubset_iff_of_subset (Finset.filter_subset _ _)).mpr
          ⟨y, hy, fun hc => (Finset.mem_filter.mp hc).2 hyt⟩)
    omega

open scoped Classical in
/-- **A degeneracy always gives a strictly decreasing step.**  The edge is
chosen to carry one: a `segDeg` entry `x` is touched by the shift at `x.1`, a
`segDegP` entry `y` by the shift at `y.2`. -/
theorem exists_joint_step_decreasing_of_deg (R : Pair9) (hfin : (points9 R).Finite)
    (hcoinc : ∀ v j : Fin 7, R.V (pP v) ≠ R.V (pQ j))
    (hne : (segDeg R).Nonempty ∨ (segDegP R).Nonempty) :
    ∃ (i : Fin 7) (t δ : ℝ) (R' : Pair9), δ ≠ 0 ∧ R'.V = shiftV R.V i t δ ∧
      (crossPairsOf R.V).card + (segDeg R).card + (segDegP R).card
        ≤ (crossPairsOf R'.V).card + (segDeg R').card + (segDegP R').card ∧
      (segDeg R').card + (segDegP R').card
        < (segDeg R).card + (segDegP R).card ∧
      (∀ v j : Fin 7, R'.V (pP v) ≠ R'.V (pQ j)) ∧
      (points9 R').Finite ∧
      crossPairsOf R.V ⊆ crossPairsOf R'.V := by
  classical
  rcases hne with ⟨x, hx⟩ | ⟨y, hy⟩
  · obtain ⟨t, δ, R', h⟩ := exists_joint_step_decreasing R hfin hcoinc x.1
      (Or.inl ⟨x, hx, by rw [mem_touched_iff]; exact Or.inl rfl⟩)
    exact ⟨x.1, t, δ, R', h⟩
  · obtain ⟨t, δ, R', h⟩ := exists_joint_step_decreasing R hfin hcoinc y.2
      (Or.inr ⟨y, hy, by rw [mem_touchedP_iff]; exact Or.inl rfl⟩)
    exact ⟨y.2, t, δ, R', h⟩

#print axioms exists_joint_step_decreasing
#print axioms exists_joint_step_decreasing_of_deg

/-! ## 61. The chain, and §9.2's half of `(A9)`

Every step strictly drops `segDeg + segDegP` and reproduces **both** standing
hypotheses, so a strong induction on that count runs to a pair with no
degeneracies at all — and the joint measure never fell along the way. -/

open scoped Classical in
theorem exists_chain_deg_free :
    ∀ (n : ℕ) (R : Pair9), (points9 R).Finite →
      (∀ v j : Fin 7, R.V (pP v) ≠ R.V (pQ j)) →
      (segDeg R).card + (segDegP R).card = n →
      ∃ R' : Pair9, segDeg R' = ∅ ∧ segDegP R' = ∅ ∧
        (crossPairsOf R.V).card + (segDeg R).card + (segDegP R).card
          ≤ (crossPairsOf R'.V).card + (segDeg R').card + (segDegP R').card := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    intro R hfin hcoinc hn
    by_cases hd : (segDeg R).Nonempty ∨ (segDegP R).Nonempty
    · obtain ⟨i, t, δ, R', hδ, hR', hb, hlt, hcf, hfn, -⟩ :=
        exists_joint_step_decreasing_of_deg R hfin hcoinc hd
      obtain ⟨R'', hD, hE, hb2⟩ := ih _ (hn ▸ hlt) R' hfn hcf rfl
      exact ⟨R'', hD, hE, le_trans hb hb2⟩
    · refine ⟨R, ?_, ?_, le_refl _⟩
      · rw [← Finset.not_nonempty_iff_eq_empty]
        exact fun h => hd (Or.inl h)
      · rw [← Finset.not_nonempty_iff_eq_empty]
        exact fun h => hd (Or.inr h)

open scoped Classical in
/-- **§9.2's half of `(A9)`, unconditionally.**

If the two boundaries meet in finitely many points and the two heptagons
**share no vertex**, then they meet in at most `38` points.

The vertex-on-**side** degeneracies — the ones AKR §9.2 removes by shifting —
are handled here in full: the chain of tilted shifts terminates, the joint
measure `crossPairs + segDeg + segDegP` never falls, and the endpoint has no
degeneracies, where the measure is just the crossing count and `≤ 38` is the
project's own bound for two simple heptagons.

**This is not `f(7,7) = 38`, and it is not all of AKR §9.** The hypothesis
`hcoinc` — no shared vertex — is §9.**1**'s conclusion, and it is assumed here,
not proved. `AKR9.NoVertexOnOther` remains a hypothesis of the main
development, and `f(7,7) = 38` remains conditional on the §9 import. Nothing
here has been reviewed by a mathematician. -/
theorem points9_le_38_of_coincFree (R : Pair9) (hfin : (points9 R).Finite)
    (hcoinc : ∀ v j : Fin 7, R.V (pP v) ≠ R.V (pQ j)) :
    (points9 R).ncard ≤ 38 := by
  obtain ⟨Rend, hD, hE, hb⟩ := exists_chain_deg_free _ R hfin hcoinc rfl
  exact points9_le_38_of_joint R Rend hfin hb hD hE

/-! ## 62. The point-counting measure

§9.2's chain is driven by `crossPairs + segDeg + segDegP`, which counts a
degeneracy once per **incidence**.  That is fine there, because every §9.2
degeneracy is a vertex lying *strictly inside* a side, contributing exactly
one incidence.  It is **not** fine at a vertex–vertex coincidence, which is an
endpoint of four sides and is counted four times —
`independent/e9_directions/coincidence_overcount.py` measures `4` against
`degPts = 1`, and measures `0` overcount on a §9.2-style degeneracy as control.

`degPts = points9 ∩ verts` counts each degenerate **point** once, and this is
the endpoint lemma for the measure built on it. -/

theorem points9_le_38_of_pt_measure (R Rend : Pair9) (hfin : (points9 R).Finite)
    (hsum : (crossPairsOf R.V).card + (degPts R).ncard
      ≤ (crossPairsOf Rend.V).card + (degPts Rend).ncard)
    (hclear : degPts Rend = ∅) :
    (points9 R).ncard ≤ 38 := by
  have hend : (crossPairsOf Rend.V).card ≤ 38 :=
    RawConfig.raw_crossPairs_card_le_38 (AKR9.toRawPair Rend)
  rw [hclear] at hsum
  simp only [Set.ncard_empty, Nat.add_zero] at hsum
  calc (points9 R).ncard
      ≤ (crossPairsOf R.V).card + (degPts R).ncard :=
        points9_ncard_le_crossPairs_add_deg R hfin
    _ ≤ 38 := by omega

/-! ## 63. The bound is tight, and its hypotheses are satisfiable

A faithfulness check in the spirit of row 52.  The kernel proves theorems; it
does not check that a theorem is about anything.  `points9_le_38_of_coincFree`
would be worthless if its hypotheses were unsatisfiable, and wrong if its
bound were off by one — and the 38-crossing certificate tests both at once.

`certRConfig` is in **general position**, which forces *both* hypotheses:
no three of the fourteen vertices are collinear, so in particular no `P`-vertex
equals a `Q`-vertex, and the intersection is finite.  The certificate meets in
**exactly** 38 points, so a bound of `≤ 37` here would be inconsistent. -/

theorem certPair9_coincFree :
    ∀ v j : Fin 7, AKR9.certPair9.V (pP v) ≠ AKR9.certPair9.V (pQ j) := by
  intro v j hc
  refine RealUpperBound.certRConfig.gp (pP v) (pQ j) (pP (v + 1))
    (pP_ne_pQ v j) ((pP_ne_pQ (v + 1) j).symm)
    (fun hk => RealUpperBound.fin7_ne_succ v (pP_inj hk)) ?_
  rw [AKR9.certPair9_V] at hc
  rw [← hc]
  simp only [orientR]
  ring

theorem certPair9_finite : (points9 AKR9.certPair9).Finite := by
  rcases Set.finite_or_infinite (points9 AKR9.certPair9) with hf | hi
  · exact hf
  · have h := hi.ncard
    rw [AKR9.certPair9_ncard] at h
    norm_num at h

/-- **The check.**  The general theorem gives `≤ 38` on a configuration whose
count is *exactly* `38`: the hypotheses are satisfiable and the bound is
attained, so it is neither vacuous nor slack. -/
theorem certPair9_tight :
    (points9 AKR9.certPair9).ncard = 38 ∧ (points9 AKR9.certPair9).ncard ≤ 38 :=
  ⟨AKR9.certPair9_ncard,
   points9_le_38_of_coincFree AKR9.certPair9 certPair9_finite certPair9_coincFree⟩

/-! ## 64. The headline, under a strictly weaker hypothesis

`AKR9.isGreatest_38_of_E9` assumes **(E9)**: no vertex of either polygon lies
on the other's boundary *at all*.  §9.2's work removes the need for most of
that.  What `points9_le_38_of_coincFree` assumes is only that no vertex equals
a vertex — a `Q`-vertex sitting in the **interior** of a `P`-side is allowed,
and is handled by the chain of §49–61 rather than assumed away.

(E9) implies coincidence-freeness, because a shared vertex is in particular a
vertex lying on a side of the other polygon — an endpoint of it.  So the
statement below **subsumes** `isGreatest_38_of_E9`. -/

theorem coincFree_of_noVertexOnOther {R : Pair9} (h : AKR9.NoVertexOnOther R) :
    ∀ v j : Fin 7, R.V (pP v) ≠ R.V (pQ j) := by
  intro v j hc
  refine h.1 v j ?_
  rw [hc]
  exact left_mem_segment ℝ _ _

/-- The attainable counts, under finiteness and coincidence-freeness only. -/
def attainedCoincFree : Set ℕ :=
  { n | ∃ R : Pair9, (points9 R).Finite ∧
      (∀ v j : Fin 7, R.V (pP v) ≠ R.V (pQ j)) ∧ (points9 R).ncard = n }

/-- **38 is the greatest attainable count, assuming only `(Fin)` and that the
two heptagons share no vertex.**

Strictly weaker than `AKR9.isGreatest_38_of_E9`, whose hypothesis (E9) forbids
a vertex anywhere on the other boundary.  **This is still not `f(7,7) = 38`:**
coincidence-freeness is §9.1's conclusion and is assumed, not proved. -/
theorem isGreatest_38_of_coincFree : IsGreatest attainedCoincFree 38 := by
  refine ⟨⟨AKR9.certPair9, certPair9_finite, certPair9_coincFree,
    AKR9.certPair9_ncard⟩, ?_⟩
  rintro n ⟨R, hfin, hco, rfl⟩
  exact points9_le_38_of_coincFree R hfin hco

/-! ## 65. A coincidence occupies four incidence slots

The counting core of the identity

    `|segDeg| + |segDegP| = |degPts| + 3·|coincSet|`

which `independent/e9_directions/pt_measure_check.py` reports over 463,433
configurations with no violation, and which was re-verified independently on
1,840 angle-generated simple pairs.  This section proves the half that does the
work: a coincidence `P_v = Q_j` is an **endpoint** of four sides, so it
contributes **four** incidences while being **one** point — exactly the
`3`-per-coincidence gap that refutes `crossPairs + segDeg + segDegP` as a
measure for §9.1 (row 117). -/

open scoped Classical in
theorem coincidence_mem_segDeg (R : Pair9) {v j : Fin 7}
    (h : R.V (pP v) = R.V (pQ j)) :
    (v, j) ∈ segDeg R ∧ (v - 1, j) ∈ segDeg R := by
  classical
  have hv : v - 1 + 1 = v := by simp
  have m1 : R.V (pQ j) ∈ sideP9 R v := by
    rw [sideP9, ← h]; exact left_mem_segment ℝ _ _
  have m2 : R.V (pQ j) ∈ sideP9 R (v - 1) := by
    rw [sideP9, hv, ← h]; exact right_mem_segment ℝ _ _
  exact ⟨by simpa only [segDeg, Finset.mem_filter, Finset.mem_univ, true_and]
            using m1,
         by simpa only [segDeg, Finset.mem_filter, Finset.mem_univ, true_and]
            using m2⟩

open scoped Classical in
theorem coincidence_mem_segDegP (R : Pair9) {v j : Fin 7}
    (h : R.V (pP v) = R.V (pQ j)) :
    (j, v) ∈ segDegP R ∧ (j - 1, v) ∈ segDegP R := by
  classical
  have hj : j - 1 + 1 = j := by simp
  have m1 : R.V (pP v) ∈ sideQ9 R j := by
    rw [sideQ9, h]; exact left_mem_segment ℝ _ _
  have m2 : R.V (pP v) ∈ sideQ9 R (j - 1) := by
    rw [sideQ9, hj, h]; exact right_mem_segment ℝ _ _
  exact ⟨by simpa only [segDegP, Finset.mem_filter, Finset.mem_univ, true_and]
            using m1,
         by simpa only [segDegP, Finset.mem_filter, Finset.mem_univ, true_and]
            using m2⟩

/-- The two `segDeg` slots of a coincidence are **distinct**, so it really does
occupy two and not one. -/
theorem coincidence_segDeg_ne (v j : Fin 7) :
    ((v, j) : Fin 7 × Fin 7) ≠ (v - 1, j) := (predP_ne_self v j).symm

theorem coincidence_segDegP_ne (v j : Fin 7) :
    ((j, v) : Fin 7 × Fin 7) ≠ (j - 1, v) := coincidence_segDeg_ne j v

open scoped Classical in
/-- **Four incidences, one point.**  A coincidence contributes at least `4` to
`|segDeg| + |segDegP|`, and `1` to `degPts`. -/
theorem coincidence_four_slots (R : Pair9) {v j : Fin 7}
    (h : R.V (pP v) = R.V (pQ j)) :
    2 ≤ (segDeg R).card ∧ 2 ≤ (segDegP R).card := by
  classical
  obtain ⟨hA, hB⟩ := coincidence_mem_segDeg R h
  obtain ⟨hC, hD⟩ := coincidence_mem_segDegP R h
  constructor
  · have hsub : ({(v, j), (v - 1, j)} : Finset (Fin 7 × Fin 7)) ⊆ segDeg R := by
      intro x hx
      rcases Finset.mem_insert.mp hx with rfl | hx
      · exact hA
      · rw [Finset.mem_singleton] at hx; subst hx; exact hB
    calc 2 = ({(v, j), (v - 1, j)} : Finset (Fin 7 × Fin 7)).card := by
            rw [Finset.card_insert_of_notMem (by
              simp only [Finset.mem_singleton]
              exact coincidence_segDeg_ne v j), Finset.card_singleton]
      _ ≤ (segDeg R).card := Finset.card_le_card hsub
  · have hsub : ({(j, v), (j - 1, v)} : Finset (Fin 7 × Fin 7)) ⊆ segDegP R := by
      intro x hx
      rcases Finset.mem_insert.mp hx with rfl | hx
      · exact hC
      · rw [Finset.mem_singleton] at hx; subst hx; exact hD
    calc 2 = ({(j, v), (j - 1, v)} : Finset (Fin 7 × Fin 7)).card := by
            rw [Finset.card_insert_of_notMem (by
              simp only [Finset.mem_singleton]
              exact coincidence_segDegP_ne v j), Finset.card_singleton]
      _ ≤ (segDegP R).card := Finset.card_le_card hsub

/-! ### The converse half: a non-coincident degenerate point occupies one slot

`AKR9.sideP9_unique` already says a point lies on at most one `P`-side, but it
assumes **(E9)** — it derives a contradiction from the point being a vertex.
Here the point *is* allowed to be a vertex; what is needed is the weaker
conclusion that two distinct sides can only share a **vertex**.  That is
`SimpleClosed`'s content and nothing more. -/

theorem mem_two_sidesP_imp_vertex (R : Pair9) {i k : Fin 7} (hne : i ≠ k)
    {x : ℝ × ℝ} (hi : x ∈ sideP9 R i) (hk : x ∈ sideP9 R k) :
    ∃ v : Fin 7, x = R.V (pP v) := by
  by_cases hadj : LowerBound.Adjacent i k
  · rcases hadj with h | h | h
    · exact absurd h hne
    · subst h
      have hx := R.simpleP.2.2 i
      rw [← fin7_succ_succ i] at hx
      have hm : x ∈ ({R.V (pP (i + 1))} : Set (ℝ × ℝ)) := by
        rw [← hx]; exact ⟨hi, hk⟩
      exact ⟨i + 1, Set.mem_singleton_iff.mp hm⟩
    · subst h
      have hx := R.simpleP.2.2 k
      rw [← fin7_succ_succ k] at hx
      have hm : x ∈ ({R.V (pP (k + 1))} : Set (ℝ × ℝ)) := by
        rw [← hx]; exact ⟨hk, hi⟩
      exact ⟨k + 1, Set.mem_singleton_iff.mp hm⟩
  · exact absurd hk (Set.disjoint_left.mp (R.simpleP.2.1 i k hadj) hi)

theorem mem_two_sidesQ_imp_vertex (R : Pair9) {i k : Fin 7} (hne : i ≠ k)
    {x : ℝ × ℝ} (hi : x ∈ sideQ9 R i) (hk : x ∈ sideQ9 R k) :
    ∃ m : Fin 7, x = R.V (pQ m) := by
  by_cases hadj : LowerBound.Adjacent i k
  · rcases hadj with h | h | h
    · exact absurd h hne
    · subst h
      have hx := R.simpleQ.2.2 i
      rw [← fin7_succ_succ i] at hx
      have hm : x ∈ ({R.V (pQ (i + 1))} : Set (ℝ × ℝ)) := by
        rw [← hx]; exact ⟨hi, hk⟩
      exact ⟨i + 1, Set.mem_singleton_iff.mp hm⟩
    · subst h
      have hx := R.simpleQ.2.2 k
      rw [← fin7_succ_succ k] at hx
      have hm : x ∈ ({R.V (pQ (k + 1))} : Set (ℝ × ℝ)) := by
        rw [← hx]; exact ⟨hk, hi⟩
      exact ⟨k + 1, Set.mem_singleton_iff.mp hm⟩
  · exact absurd hk (Set.disjoint_left.mp (R.simpleQ.2.1 i k hadj) hi)

open scoped Classical in
/-- **A `Q`-vertex that is not a `P`-vertex lies on at most one `P`-side.**
So away from coincidences a degenerate point occupies exactly **one**
`segDeg` slot — against the **four** of `coincidence_four_slots`. -/
theorem segDeg_side_unique_of_coincFree (R : Pair9)
    (hcoinc : ∀ v j : Fin 7, R.V (pP v) ≠ R.V (pQ j))
    {k k' j : Fin 7} (h1 : (k, j) ∈ segDeg R) (h2 : (k', j) ∈ segDeg R) :
    k = k' := by
  classical
  by_contra hne
  have m1 : R.V (pQ j) ∈ sideP9 R k := by
    simpa only [segDeg, Finset.mem_filter, Finset.mem_univ, true_and] using h1
  have m2 : R.V (pQ j) ∈ sideP9 R k' := by
    simpa only [segDeg, Finset.mem_filter, Finset.mem_univ, true_and] using h2
  obtain ⟨v, hv⟩ := mem_two_sidesP_imp_vertex R hne m1 m2
  exact hcoinc v j hv.symm

open scoped Classical in
/-- The mirror. -/
theorem segDegP_side_unique_of_coincFree (R : Pair9)
    (hcoinc : ∀ v j : Fin 7, R.V (pP v) ≠ R.V (pQ j))
    {m m' v : Fin 7} (h1 : (m, v) ∈ segDegP R) (h2 : (m', v) ∈ segDegP R) :
    m = m' := by
  classical
  by_contra hne
  have s1 : R.V (pP v) ∈ sideQ9 R m := by
    simpa only [segDegP, Finset.mem_filter, Finset.mem_univ, true_and] using h1
  have s2 : R.V (pP v) ∈ sideQ9 R m' := by
    simpa only [segDegP, Finset.mem_filter, Finset.mem_univ, true_and] using h2
  obtain ⟨j, hj⟩ := mem_two_sidesQ_imp_vertex R hne s1 s2
  exact hcoinc v j hj

/-- **The seven `P`-vertices are distinct.**  Not general position — just
`SimpleClosed`: two equal vertices would put a point on two sides that are
either disjoint (non-adjacent) or share only their common endpoint. -/
theorem vertexP_inj (R : Pair9) {v v' : Fin 7}
    (h : R.V (pP v) = R.V (pP v')) : v = v' := by
  by_contra hne
  by_cases hadj : LowerBound.Adjacent v v'
  · rcases hadj with hc | hc | hc
    · exact hne hc
    · have he : R.V (pP v) = R.V (pP (v + 1)) := by rw [h, hc]
      exact R.simpleP.1 v he
    · have he : R.V (pP v') = R.V (pP (v' + 1)) := by rw [← hc, ← h]
      exact R.simpleP.1 v' he
  · have hmem : R.V (pP v) ∈ segment ℝ (R.V (pP v')) (R.V (pP (v' + 1))) := by
      rw [h]; exact left_mem_segment ℝ _ _
    exact Set.disjoint_left.mp (R.simpleP.2.1 v v' hadj)
      (left_mem_segment ℝ _ _) hmem

theorem vertexQ_inj (R : Pair9) {j j' : Fin 7}
    (h : R.V (pQ j) = R.V (pQ j')) : j = j' := by
  by_contra hne
  by_cases hadj : LowerBound.Adjacent j j'
  · rcases hadj with hc | hc | hc
    · exact hne hc
    · have he : R.V (pQ j) = R.V (pQ (j + 1)) := by rw [h, hc]
      exact R.simpleQ.1 j he
    · have he : R.V (pQ j') = R.V (pQ (j' + 1)) := by rw [← hc, ← h]
      exact R.simpleQ.1 j' he
  · have hmem : R.V (pQ j) ∈ segment ℝ (R.V (pQ j')) (R.V (pQ (j' + 1))) := by
      rw [h]; exact left_mem_segment ℝ _ _
    exact Set.disjoint_left.mp (R.simpleQ.2.1 j j' hadj)
      (left_mem_segment ℝ _ _) hmem

/-! ### `M_seg = M_pt` when there is no coincidence

With the two halves in place — a coincidence occupies four slots, a
non-coincidence exactly one — the identity of row 124 collapses, in the
coincidence-free case, to `|segDeg| + |segDegP| = |degPts|`.  That is the case
§9.2 runs in, and it is what lets the two halves of §9 be stated in the *same*
measure. -/

open scoped Classical in
/-- `degPts` as a `Finset`: the fourteen vertices, filtered by lying on both
boundaries. -/
noncomputable def degPtsF (R : Pair9) : Finset (ℝ × ℝ) :=
  (((Finset.univ : Finset (Fin 7)).image (fun i => R.V (pP i))) ∪
   ((Finset.univ : Finset (Fin 7)).image (fun j => R.V (pQ j)))).filter
     (fun x => x ∈ points9 R)

open scoped Classical in
theorem degPtsF_coe (R : Pair9) : (degPtsF R : Set (ℝ × ℝ)) = degPts R := by
  classical
  ext x
  simp only [degPtsF, Finset.coe_filter, Finset.mem_union, Finset.mem_image,
    Finset.mem_univ, true_and, Set.mem_setOf_eq, degPts, verts,
    Set.mem_inter_iff, Set.mem_union, Set.mem_range]
  constructor
  · rintro ⟨hv, hp⟩
    exact ⟨hp, by rcases hv with ⟨i, hi⟩ | ⟨j, hj⟩
                  · exact Or.inl ⟨i, hi⟩
                  · exact Or.inr ⟨j, hj⟩⟩
  · rintro ⟨hp, hv⟩
    refine ⟨?_, hp⟩
    rcases hv with ⟨i, hi⟩ | ⟨j, hj⟩
    · exact Or.inl ⟨i, hi⟩
    · exact Or.inr ⟨j, hj⟩

open scoped Classical in
theorem degPts_ncard_eq (R : Pair9) : (degPts R).ncard = (degPtsF R).card := by
  classical
  rw [← degPtsF_coe]
  simp [Set.ncard, Set.encard_eq_coe_toFinset_card]

open scoped Classical in
/-- **`|segDeg| + |segDegP| ≤ |degPts|` when no vertex meets a vertex.**
The two families inject into the degenerate points: a `segDeg` entry by its
`Q`-vertex, a `segDegP` entry by its `P`-vertex.  Injectivity is
`vertexQ_inj` / `vertexP_inj` together with §65's side-uniqueness, and the two
images are disjoint precisely because there is no coincidence. -/
theorem seg_card_le_degPts (R : Pair9)
    (hcoinc : ∀ v j : Fin 7, R.V (pP v) ≠ R.V (pQ j)) :
    (segDeg R).card + (segDegP R).card ≤ (degPts R).ncard := by
  classical
  rw [degPts_ncard_eq]
  have hDmem : ∀ p ∈ segDeg R, R.V (pQ p.2) ∈ degPtsF R := by
    intro p hp
    have hm : R.V (pQ p.2) ∈ sideP9 R p.1 := by
      simpa only [segDeg, Finset.mem_filter, Finset.mem_univ, true_and] using hp
    simp only [degPtsF, Finset.mem_filter, Finset.mem_union, Finset.mem_image,
      Finset.mem_univ, true_and]
    exact ⟨Or.inr ⟨p.2, rfl⟩,
      ⟨Set.mem_iUnion.mpr ⟨p.1, hm⟩, Set.mem_iUnion.mpr ⟨p.2, left_mem_segment ℝ _ _⟩⟩⟩
  have hEmem : ∀ p ∈ segDegP R, R.V (pP p.2) ∈ degPtsF R := by
    intro p hp
    have hm : R.V (pP p.2) ∈ sideQ9 R p.1 := by
      simpa only [segDegP, Finset.mem_filter, Finset.mem_univ, true_and] using hp
    simp only [degPtsF, Finset.mem_filter, Finset.mem_union, Finset.mem_image,
      Finset.mem_univ, true_and]
    exact ⟨Or.inl ⟨p.2, rfl⟩,
      ⟨Set.mem_iUnion.mpr ⟨p.2, left_mem_segment ℝ _ _⟩,
       Set.mem_iUnion.mpr ⟨p.1, hm⟩⟩⟩
  have hDinj : Set.InjOn (fun p : Fin 7 × Fin 7 => R.V (pQ p.2))
      ↑(segDeg R) := by
    intro a ha b hb hab
    simp only [Finset.mem_coe] at ha hb
    have hj : a.2 = b.2 := vertexQ_inj R hab
    have hk : a.1 = b.1 := by
      refine segDeg_side_unique_of_coincFree R hcoinc (j := a.2) ?_ ?_
      · simpa using ha
      · rw [hj]; simpa using hb
    exact Prod.ext hk hj
  have hEinj : Set.InjOn (fun p : Fin 7 × Fin 7 => R.V (pP p.2))
      ↑(segDegP R) := by
    intro a ha b hb hab
    simp only [Finset.mem_coe] at ha hb
    have hv : a.2 = b.2 := vertexP_inj R hab
    have hm : a.1 = b.1 := by
      refine segDegP_side_unique_of_coincFree R hcoinc (v := a.2) ?_ ?_
      · simpa using ha
      · rw [hv]; simpa using hb
    exact Prod.ext hm hv
  have hdisj : Disjoint ((segDeg R).image (fun p => R.V (pQ p.2)))
      ((segDegP R).image (fun p => R.V (pP p.2))) := by
    rw [Finset.disjoint_left]
    rintro x hx hy
    obtain ⟨a, -, rfl⟩ := Finset.mem_image.mp hx
    obtain ⟨b, -, hb⟩ := Finset.mem_image.mp hy
    exact hcoinc b.2 a.2 hb
  calc (segDeg R).card + (segDegP R).card
      = ((segDeg R).image (fun p => R.V (pQ p.2))).card
        + ((segDegP R).image (fun p => R.V (pP p.2))).card := by
        rw [Finset.card_image_of_injOn hDinj, Finset.card_image_of_injOn hEinj]
    _ = (((segDeg R).image (fun p => R.V (pQ p.2)))
          ∪ ((segDegP R).image (fun p => R.V (pP p.2)))).card :=
        (Finset.card_union_of_disjoint hdisj).symm
    _ ≤ (degPtsF R).card := by
        refine Finset.card_le_card (Finset.union_subset ?_ ?_)
        · intro x hx
          obtain ⟨a, ha, rfl⟩ := Finset.mem_image.mp hx
          exact hDmem a ha
        · intro x hx
          obtain ⟨a, ha, rfl⟩ := Finset.mem_image.mp hx
          exact hEmem a ha

open scoped Classical in
/-- **`M_seg = M_pt` with no coincidence.**  Row 124's identity, in the case
§9.2 runs in. -/
theorem seg_card_eq_degPts (R : Pair9) (hfin : (points9 R).Finite)
    (hcoinc : ∀ v j : Fin 7, R.V (pP v) ≠ R.V (pQ j)) :
    (segDeg R).card + (segDegP R).card = (degPts R).ncard :=
  le_antisymm (seg_card_le_degPts R hcoinc) (degPts_ncard_le_seg R hfin)

/-! ### A vertex lies on exactly its two incident sides

`coincidence_four_slots` gives `≥ 4`.  This gives **exactly**: a `P`-vertex
lies on `P`-side `k` iff `k` is `v` or `v−1`.  The `←` direction is the two
endpoints; the `→` direction is `SimpleClosed` twice — a non-adjacent side
is disjoint from side `v`, and side `v+1` meets side `v` only at `P_{v+1}`,
which would force `P_v = P_{v+1}`. -/

theorem vertexP_mem_sideP_iff (R : Pair9) (v k : Fin 7) :
    R.V (pP v) ∈ sideP9 R k ↔ (k = v ∨ k = v - 1) := by
  constructor
  · intro hm
    by_contra hc
    push_neg at hc
    obtain ⟨h1, h2⟩ := hc
    have hv : R.V (pP v) ∈ sideP9 R v := left_mem_segment ℝ _ _
    by_cases hadj : LowerBound.Adjacent k v
    · rcases hadj with h | h | h
      · exact h1 h
      · -- v = k + 1, so k = v - 1
        exact h2 (by rw [h]; simp)
      · -- k = v + 1 : sides v and v+1 meet only at P_{v+1}
        subst h
        have hx := R.simpleP.2.2 v
        rw [← fin7_succ_succ v] at hx
        have hmm : R.V (pP v) ∈ ({R.V (pP (v + 1))} : Set (ℝ × ℝ)) := by
          rw [← hx]; exact ⟨hv, hm⟩
        exact R.simpleP.1 v (Set.mem_singleton_iff.mp hmm)
    · exact Set.disjoint_left.mp (R.simpleP.2.1 k v hadj) hm hv
  · rintro (rfl | rfl)
    · exact left_mem_segment ℝ _ _
    · have hv : v - 1 + 1 = v := by simp
      rw [sideP9, hv]
      exact right_mem_segment ℝ _ _

theorem vertexQ_mem_sideQ_iff (R : Pair9) (j m : Fin 7) :
    R.V (pQ j) ∈ sideQ9 R m ↔ (m = j ∨ m = j - 1) := by
  constructor
  · intro hm
    by_contra hc
    push_neg at hc
    obtain ⟨h1, h2⟩ := hc
    have hv : R.V (pQ j) ∈ sideQ9 R j := left_mem_segment ℝ _ _
    by_cases hadj : LowerBound.Adjacent m j
    · rcases hadj with h | h | h
      · exact h1 h
      · exact h2 (by rw [h]; simp)
      · subst h
        have hx := R.simpleQ.2.2 j
        rw [← fin7_succ_succ j] at hx
        have hmm : R.V (pQ j) ∈ ({R.V (pQ (j + 1))} : Set (ℝ × ℝ)) := by
          rw [← hx]; exact ⟨hv, hm⟩
        exact R.simpleQ.1 j (Set.mem_singleton_iff.mp hmm)
    · exact Set.disjoint_left.mp (R.simpleQ.2.1 m j hadj) hm hv
  · rintro (rfl | rfl)
    · exact left_mem_segment ℝ _ _
    · have hj : j - 1 + 1 = j := by simp
      rw [sideQ9, hj]
      exact right_mem_segment ℝ _ _

open scoped Classical in
/-- **Exactly two, not merely at least two.**  At a coincidence `P_v = Q_j`
the `segDeg` entries with second index `j` are precisely `(v, j)` and
`(v−1, j)`. -/
theorem segDeg_fiber_at_coincidence (R : Pair9) {v j : Fin 7}
    (h : R.V (pP v) = R.V (pQ j)) :
    (segDeg R).filter (fun p => p.2 = j) = {(v, j), (v - 1, j)} := by
  classical
  ext p
  simp only [Finset.mem_filter, Finset.mem_insert, Finset.mem_singleton,
    segDeg, Finset.mem_univ, true_and]
  constructor
  · rintro ⟨hmem, rfl⟩
    have : R.V (pP v) ∈ sideP9 R p.1 := by rw [h]; exact hmem
    rcases (vertexP_mem_sideP_iff R v p.1).mp this with hk | hk
    · exact Or.inl (Prod.ext hk rfl)
    · exact Or.inr (Prod.ext hk rfl)
  · rintro (rfl | rfl)
    · exact ⟨by rw [← h]; exact (vertexP_mem_sideP_iff R v v).mpr (Or.inl rfl), rfl⟩
    · exact ⟨by rw [← h]
                exact (vertexP_mem_sideP_iff R v (v - 1)).mpr (Or.inr rfl), rfl⟩

/-! ### The coincidence pairs, and the slots they occupy -/

open scoped Classical in
/-- The vertex–vertex coincidences, as a `Finset` of index pairs.  Definitionally
`E9Directions.coincSet R.V`, restated here so the counting can live beside
`degPts`. -/
noncomputable def coincPairs (R : Pair9) : Finset (Fin 7 × Fin 7) :=
  Finset.univ.filter (fun p => R.V (pP p.1) = R.V (pQ p.2))

open scoped Classical in
theorem mem_coincPairs {R : Pair9} {p : Fin 7 × Fin 7} :
    p ∈ coincPairs R ↔ R.V (pP p.1) = R.V (pQ p.2) := by
  simp [coincPairs]

/-- Distinct coincidences have distinct `Q`-indices. -/
theorem coincPairs_snd_inj (R : Pair9) {p q : Fin 7 × Fin 7}
    (hp : p ∈ coincPairs R) (hq : q ∈ coincPairs R) (h : p.2 = q.2) : p = q := by
  have hp' := mem_coincPairs.mp hp
  have hq' := mem_coincPairs.mp hq
  have hv : p.1 = q.1 := by
    refine vertexP_inj R ?_
    rw [hp', hq', h]
  exact Prod.ext hv h

open scoped Classical in
/-- **The `segDeg` slots occupied by coincidences.**  Exactly two per
coincidence, and the pairs for distinct coincidences are disjoint. -/
theorem segDeg_coinc_part (R : Pair9) :
    (segDeg R).filter (fun p => ∃ v : Fin 7, R.V (pP v) = R.V (pQ p.2))
      = (coincPairs R).biUnion (fun c => {(c.1, c.2), (c.1 - 1, c.2)}) := by
  classical
  ext p
  simp only [Finset.mem_filter, Finset.mem_biUnion, Finset.mem_insert,
    Finset.mem_singleton]
  constructor
  · rintro ⟨hseg, v, hv⟩
    have hmem : R.V (pP v) ∈ sideP9 R p.1 := by
      rw [hv]
      simpa only [segDeg, Finset.mem_filter, Finset.mem_univ, true_and] using hseg
    refine ⟨(v, p.2), mem_coincPairs.mpr hv, ?_⟩
    rcases (vertexP_mem_sideP_iff R v p.1).mp hmem with hk | hk
    · exact Or.inl (Prod.ext hk rfl)
    · exact Or.inr (Prod.ext hk rfl)
  · rintro ⟨c, hc, hp⟩
    have hcv := mem_coincPairs.mp hc
    rcases hp with rfl | rfl
    · exact ⟨(coincidence_mem_segDeg R hcv).1, c.1, hcv⟩
    · exact ⟨(coincidence_mem_segDeg R hcv).2, c.1, hcv⟩

open scoped Classical in
theorem segDeg_coinc_card (R : Pair9) :
    ((segDeg R).filter (fun p => ∃ v : Fin 7, R.V (pP v) = R.V (pQ p.2))).card
      = 2 * (coincPairs R).card := by
  classical
  rw [segDeg_coinc_part, Finset.card_biUnion]
  · rw [Finset.sum_congr rfl (fun c _ => ?_), Finset.sum_const, smul_eq_mul,
      Nat.mul_comm]
    rw [Finset.card_insert_of_notMem (by
      simp only [Finset.mem_singleton]
      exact coincidence_segDeg_ne c.1 c.2), Finset.card_singleton]
  · intro a ha b hb hab
    simp only [Finset.disjoint_left, Finset.mem_insert, Finset.mem_singleton]
    intro x hxa hxb
    have h2a : x.2 = a.2 := by rcases hxa with rfl | rfl <;> rfl
    have h2b : x.2 = b.2 := by rcases hxb with rfl | rfl <;> rfl
    exact hab (coincPairs_snd_inj R ha hb (h2a.symm.trans h2b))

/-- Distinct coincidences have distinct `P`-indices.  The mirror of
`coincPairs_snd_inj`, run through `vertexQ_inj` instead. -/
theorem coincPairs_fst_inj (R : Pair9) {p q : Fin 7 × Fin 7}
    (hp : p ∈ coincPairs R) (hq : q ∈ coincPairs R) (h : p.1 = q.1) : p = q := by
  have hp' := mem_coincPairs.mp hp
  have hq' := mem_coincPairs.mp hq
  have hj : p.2 = q.2 := by
    refine vertexQ_inj R ?_
    rw [← hp', ← hq', h]
  exact Prod.ext h hj

open scoped Classical in
/-- **The `segDegP` slots occupied by coincidences.**  The mirror of
`segDeg_coinc_part`: a coincidence `P_v = Q_j` is an endpoint of the two
`Q`-sides `j` and `j−1`, and of no other. -/
theorem segDegP_coinc_part (R : Pair9) :
    (segDegP R).filter (fun p => ∃ j : Fin 7, R.V (pP p.2) = R.V (pQ j))
      = (coincPairs R).biUnion (fun c => {(c.2, c.1), (c.2 - 1, c.1)}) := by
  classical
  ext p
  simp only [Finset.mem_filter, Finset.mem_biUnion, Finset.mem_insert,
    Finset.mem_singleton]
  constructor
  · rintro ⟨hseg, j, hj⟩
    have hmem : R.V (pQ j) ∈ sideQ9 R p.1 := by
      rw [← hj]
      simpa only [segDegP, Finset.mem_filter, Finset.mem_univ, true_and] using hseg
    refine ⟨(p.2, j), mem_coincPairs.mpr hj, ?_⟩
    rcases (vertexQ_mem_sideQ_iff R j p.1).mp hmem with hk | hk
    · exact Or.inl (Prod.ext hk rfl)
    · exact Or.inr (Prod.ext hk rfl)
  · rintro ⟨c, hc, hp⟩
    have hcv := mem_coincPairs.mp hc
    rcases hp with rfl | rfl
    · exact ⟨(coincidence_mem_segDegP R hcv).1, c.2, hcv⟩
    · exact ⟨(coincidence_mem_segDegP R hcv).2, c.2, hcv⟩

open scoped Classical in
theorem segDegP_coinc_card (R : Pair9) :
    ((segDegP R).filter (fun p => ∃ j : Fin 7, R.V (pP p.2) = R.V (pQ j))).card
      = 2 * (coincPairs R).card := by
  classical
  rw [segDegP_coinc_part, Finset.card_biUnion]
  · rw [Finset.sum_congr rfl (fun c _ => ?_), Finset.sum_const, smul_eq_mul,
      Nat.mul_comm]
    rw [Finset.card_insert_of_notMem (by
      simp only [Finset.mem_singleton]
      exact coincidence_segDegP_ne c.1 c.2), Finset.card_singleton]
  · intro a ha b hb hab
    simp only [Finset.disjoint_left, Finset.mem_insert, Finset.mem_singleton]
    intro x hxa hxb
    have h2a : x.2 = a.1 := by rcases hxa with rfl | rfl <;> rfl
    have h2b : x.2 = b.1 := by rcases hxb with rfl | rfl <;> rfl
    exact hab (coincPairs_fst_inj R ha hb (h2a.symm.trans h2b))

open scoped Classical in
/-- The coincidence **points** — one per coincidence pair, sitting inside
`degPtsF`. -/
noncomputable def coincPts (R : Pair9) : Finset (ℝ × ℝ) :=
  (coincPairs R).image (fun c => R.V (pP c.1))

open scoped Classical in
theorem coincPts_card (R : Pair9) : (coincPts R).card = (coincPairs R).card := by
  classical
  refine Finset.card_image_of_injOn ?_
  intro a ha b hb hab
  simp only [Finset.mem_coe] at ha hb
  have hab' : R.V (pP a.1) = R.V (pP b.1) := hab
  exact coincPairs_fst_inj R ha hb (vertexP_inj R hab')

open scoped Classical in
theorem coincPts_subset (R : Pair9) : coincPts R ⊆ degPtsF R := by
  classical
  intro x hx
  obtain ⟨c, hc, rfl⟩ := Finset.mem_image.mp hx
  have hcv := mem_coincPairs.mp hc
  simp only [degPtsF, Finset.mem_filter, Finset.mem_union, Finset.mem_image,
    Finset.mem_univ, true_and]
  exact ⟨Or.inl ⟨c.1, rfl⟩,
    ⟨Set.mem_iUnion.mpr ⟨c.1, left_mem_segment ℝ _ _⟩,
     Set.mem_iUnion.mpr ⟨c.2, by rw [hcv]; exact left_mem_segment ℝ _ _⟩⟩⟩

/-! ### The non-coincident slots, and the bijection onto the remaining points

Everything `segDeg`/`segDegP` counts that is **not** at a coincidence is a
degenerate point occupied exactly once: one `Q`-vertex on one `P`-side, or one
`P`-vertex on one `Q`-side, and never both.  So the two non-coincident families
together biject onto `degPtsF \ coincPts`. -/

open scoped Classical in
/-- The `segDeg` slots that are **not** at a coincidence. -/
noncomputable def segDegN (R : Pair9) : Finset (Fin 7 × Fin 7) :=
  (segDeg R).filter (fun p => ¬ ∃ v : Fin 7, R.V (pP v) = R.V (pQ p.2))

open scoped Classical in
/-- The `segDegP` slots that are **not** at a coincidence. -/
noncomputable def segDegPN (R : Pair9) : Finset (Fin 7 × Fin 7) :=
  (segDegP R).filter (fun p => ¬ ∃ j : Fin 7, R.V (pP p.2) = R.V (pQ j))

open scoped Classical in
/-- **Pointwise side-uniqueness.**  A `Q`-vertex that is not a `P`-vertex lies
on at most one `P`-side, so a non-coincident `segDeg` entry is determined by
its `Q`-vertex.  (`segDeg_side_unique_of_coincFree` assumes the *whole*
configuration is coincidence-free; here only the one point is.) -/
theorem segDegN_injOn (R : Pair9) :
    Set.InjOn (fun p : Fin 7 × Fin 7 => R.V (pQ p.2)) ↑(segDegN R) := by
  classical
  intro a ha b hb hab
  simp only [Finset.mem_coe, segDegN, Finset.mem_filter] at ha hb
  have hab' : R.V (pQ a.2) = R.V (pQ b.2) := hab
  have hj : a.2 = b.2 := vertexQ_inj R hab'
  have hk : a.1 = b.1 := by
    by_contra hne
    have m1 : R.V (pQ a.2) ∈ sideP9 R a.1 := by
      simpa only [segDeg, Finset.mem_filter, Finset.mem_univ, true_and] using ha.1
    have m2 : R.V (pQ a.2) ∈ sideP9 R b.1 := by
      rw [hj]
      simpa only [segDeg, Finset.mem_filter, Finset.mem_univ, true_and] using hb.1
    obtain ⟨v, hv⟩ := mem_two_sidesP_imp_vertex R hne m1 m2
    exact ha.2 ⟨v, hv.symm⟩
  exact Prod.ext hk hj

open scoped Classical in
/-- The mirror of `segDegN_injOn`. -/
theorem segDegPN_injOn (R : Pair9) :
    Set.InjOn (fun p : Fin 7 × Fin 7 => R.V (pP p.2)) ↑(segDegPN R) := by
  classical
  intro a ha b hb hab
  simp only [Finset.mem_coe, segDegPN, Finset.mem_filter] at ha hb
  have hab' : R.V (pP a.2) = R.V (pP b.2) := hab
  have hv : a.2 = b.2 := vertexP_inj R hab'
  have hm : a.1 = b.1 := by
    by_contra hne
    have m1 : R.V (pP a.2) ∈ sideQ9 R a.1 := by
      simpa only [segDegP, Finset.mem_filter, Finset.mem_univ, true_and] using ha.1
    have m2 : R.V (pP a.2) ∈ sideQ9 R b.1 := by
      rw [hv]
      simpa only [segDegP, Finset.mem_filter, Finset.mem_univ, true_and] using hb.1
    obtain ⟨j, hj⟩ := mem_two_sidesQ_imp_vertex R hne m1 m2
    exact ha.2 ⟨j, hj⟩
  exact Prod.ext hm hv

open scoped Classical in
/-- The two non-coincident families hit **disjoint** point sets: a common value
would be a `P`-vertex equal to a `Q`-vertex, i.e. a coincidence. -/
theorem noncoinc_image_disjoint (R : Pair9) :
    Disjoint ((segDegN R).image (fun p => R.V (pQ p.2)))
      ((segDegPN R).image (fun p => R.V (pP p.2))) := by
  classical
  rw [Finset.disjoint_left]
  intro x hx hy
  obtain ⟨a, ha, rfl⟩ := Finset.mem_image.mp hx
  obtain ⟨b, -, hbe⟩ := Finset.mem_image.mp hy
  simp only [segDegN, Finset.mem_filter] at ha
  exact ha.2 ⟨b.2, hbe⟩

open scoped Classical in
/-- **Surjectivity as well.**  Together the two non-coincident families cover
exactly the degenerate points that are not coincidences. -/
theorem noncoinc_image_union (R : Pair9) :
    ((segDegN R).image (fun p => R.V (pQ p.2)))
      ∪ ((segDegPN R).image (fun p => R.V (pP p.2)))
      = degPtsF R \ coincPts R := by
  classical
  apply Finset.Subset.antisymm
  · refine Finset.union_subset ?_ ?_
    · intro x hx
      obtain ⟨p, hp, rfl⟩ := Finset.mem_image.mp hx
      simp only [segDegN, Finset.mem_filter] at hp
      refine Finset.mem_sdiff.mpr ⟨?_, ?_⟩
      · have hm : R.V (pQ p.2) ∈ sideP9 R p.1 := by
          simpa only [segDeg, Finset.mem_filter, Finset.mem_univ, true_and] using hp.1
        simp only [degPtsF, Finset.mem_filter, Finset.mem_union, Finset.mem_image,
          Finset.mem_univ, true_and]
        exact ⟨Or.inr ⟨p.2, rfl⟩,
          ⟨Set.mem_iUnion.mpr ⟨p.1, hm⟩,
           Set.mem_iUnion.mpr ⟨p.2, left_mem_segment ℝ _ _⟩⟩⟩
      · intro hc
        obtain ⟨c, -, hce⟩ := Finset.mem_image.mp hc
        exact hp.2 ⟨c.1, hce⟩
    · intro x hx
      obtain ⟨p, hp, rfl⟩ := Finset.mem_image.mp hx
      simp only [segDegPN, Finset.mem_filter] at hp
      refine Finset.mem_sdiff.mpr ⟨?_, ?_⟩
      · have hm : R.V (pP p.2) ∈ sideQ9 R p.1 := by
          simpa only [segDegP, Finset.mem_filter, Finset.mem_univ, true_and] using hp.1
        simp only [degPtsF, Finset.mem_filter, Finset.mem_union, Finset.mem_image,
          Finset.mem_univ, true_and]
        exact ⟨Or.inl ⟨p.2, rfl⟩,
          ⟨Set.mem_iUnion.mpr ⟨p.2, left_mem_segment ℝ _ _⟩,
           Set.mem_iUnion.mpr ⟨p.1, hm⟩⟩⟩
      · intro hc
        obtain ⟨c, hcm, hce⟩ := Finset.mem_image.mp hc
        have hvv : c.1 = p.2 := vertexP_inj R hce
        refine hp.2 ⟨c.2, ?_⟩
        rw [← hvv]
        exact mem_coincPairs.mp hcm
  · intro x hx
    rw [Finset.mem_sdiff] at hx
    obtain ⟨hxd, hxc⟩ := hx
    simp only [degPtsF, Finset.mem_filter, Finset.mem_union, Finset.mem_image,
      Finset.mem_univ, true_and] at hxd
    obtain ⟨hvert, hpt⟩ := hxd
    rcases hvert with ⟨v, rfl⟩ | ⟨j, rfl⟩
    · obtain ⟨m, hm⟩ := Set.mem_iUnion.mp hpt.2
      refine Finset.mem_union_right _ (Finset.mem_image.mpr ⟨(m, v), ?_, rfl⟩)
      simp only [segDegPN, Finset.mem_filter]
      refine ⟨?_, ?_⟩
      · simpa only [segDegP, Finset.mem_filter, Finset.mem_univ, true_and] using hm
      · rintro ⟨j, hj⟩
        exact hxc (Finset.mem_image.mpr ⟨(v, j), mem_coincPairs.mpr hj, rfl⟩)
    · obtain ⟨k, hk⟩ := Set.mem_iUnion.mp hpt.1
      refine Finset.mem_union_left _ (Finset.mem_image.mpr ⟨(k, j), ?_, rfl⟩)
      simp only [segDegN, Finset.mem_filter]
      refine ⟨?_, ?_⟩
      · simpa only [segDeg, Finset.mem_filter, Finset.mem_univ, true_and] using hk
      · rintro ⟨v, hv⟩
        exact hxc (Finset.mem_image.mpr ⟨(v, j), mem_coincPairs.mpr hv, hv⟩)

open scoped Classical in
/-- **`M_seg = M_pt + 3·|coinc|`.**  The identity of row 124, in full: each
coincidence occupies four incidence slots while being one point, and every
other degenerate point occupies exactly one slot.  Verified numerically on
463,433 configurations and independently on 1,840 more, with no violation;
this is the proof. -/
theorem seg_card_eq_degPts_add_coinc (R : Pair9) :
    (segDeg R).card + (segDegP R).card
      = (degPts R).ncard + 3 * (coincPairs R).card := by
  classical
  have hsplitD :
      ((segDeg R).filter (fun p => ∃ v : Fin 7, R.V (pP v) = R.V (pQ p.2))).card
        + (segDegN R).card = (segDeg R).card := by
    simp only [segDegN]
    exact Finset.card_filter_add_card_filter_not _
  have hsplitE :
      ((segDegP R).filter (fun p => ∃ j : Fin 7, R.V (pP p.2) = R.V (pQ j))).card
        + (segDegPN R).card = (segDegP R).card := by
    simp only [segDegPN]
    exact Finset.card_filter_add_card_filter_not _
  have himD : ((segDegN R).image (fun p => R.V (pQ p.2))).card = (segDegN R).card :=
    Finset.card_image_of_injOn (segDegN_injOn R)
  have himE : ((segDegPN R).image (fun p => R.V (pP p.2))).card = (segDegPN R).card :=
    Finset.card_image_of_injOn (segDegPN_injOn R)
  have hun : (segDegN R).card + (segDegPN R).card = (degPtsF R \ coincPts R).card := by
    rw [← himD, ← himE, ← Finset.card_union_of_disjoint (noncoinc_image_disjoint R),
      noncoinc_image_union]
  have hsd : (degPtsF R \ coincPts R).card
      = (degPtsF R).card - (coincPairs R).card := by
    rw [Finset.card_sdiff_of_subset (coincPts_subset R), coincPts_card]
  have hle : (coincPairs R).card ≤ (degPtsF R).card := by
    rw [← coincPts_card]
    exact Finset.card_le_card (coincPts_subset R)
  rw [degPts_ncard_eq]
  rw [segDeg_coinc_card] at hsplitD
  rw [segDegP_coinc_card] at hsplitE
  omega

#print axioms segDegN_injOn
#print axioms segDegPN_injOn
#print axioms noncoinc_image_disjoint
#print axioms noncoinc_image_union
#print axioms seg_card_eq_degPts_add_coinc

#print axioms coincPairs_fst_inj
#print axioms segDegP_coinc_part
#print axioms segDegP_coinc_card
#print axioms coincPts_card
#print axioms coincPts_subset

#print axioms coincPairs_snd_inj
#print axioms segDeg_coinc_part
#print axioms segDeg_coinc_card

#print axioms vertexP_mem_sideP_iff
#print axioms vertexQ_mem_sideQ_iff
#print axioms segDeg_fiber_at_coincidence

#print axioms degPtsF_coe
#print axioms seg_card_le_degPts
#print axioms seg_card_eq_degPts

#print axioms vertexP_inj
#print axioms vertexQ_inj

#print axioms mem_two_sidesP_imp_vertex
#print axioms mem_two_sidesQ_imp_vertex
#print axioms segDeg_side_unique_of_coincFree
#print axioms segDegP_side_unique_of_coincFree

#print axioms coincidence_mem_segDeg
#print axioms coincidence_mem_segDegP
#print axioms coincidence_four_slots

#print axioms coincFree_of_noVertexOnOther
#print axioms isGreatest_38_of_coincFree

#print axioms certPair9_coincFree
#print axioms certPair9_finite
#print axioms certPair9_tight

#print axioms points9_le_38_of_pt_measure

#print axioms exists_chain_deg_free
#print axioms points9_le_38_of_coincFree

#print axioms sep_of_strict_between
#print axioms segDeg_transversal_next
#print axioms segDeg_transversal_prev
#print axioms segDegP_transversal_next
#print axioms segDegP_transversal_prev
#print axioms exists_joint_step_free

/-! ## The arithmetic core of the §9.1 step

`M_seg = |segDeg| + |segDegP|` is **refuted** as the §9.1 measure: a
coincidence is a single point occupying four incidence slots, so a step that
kills one coincidence can destroy four `segDeg`/`segDegP` entries while the
crossing count rises by only one.  The measure that survives is the *point*
measure

>  `M_pt R = |crossPairsOf R.V| + |degPts R|`,

and `seg_card_eq_degPts_add_coinc` is exactly the dictionary between the two.
The lemma below is the arithmetic it licenses: if one coincidence dies, the
crossing count rises, and **only the coincidence's own four slots** are lost,
then `M_pt` does not decrease.

Everything is kept additive: `ncard` and `card` are `ℕ`, so `S - 3c` truncates;
the identity is fed to `omega` in the form `S = D + 3c` instead. -/

open scoped Classical in
/-- **The §9.1 point measure.**  `M_pt = |crossPairsOf| + |degPts|`: proper
crossings plus degenerate points, each counted once. -/
noncomputable def M_pt (R : Pair9) : ℕ :=
  (crossPairsOf R.V).card + (degPts R).ncard

open scoped Classical in
theorem M_pt_def (R : Pair9) :
    M_pt R = (crossPairsOf R.V).card + (degPts R).ncard := rfl

open scoped Classical in
/-- **The arithmetic core of the §9.1 step.**  Write
`S = |segDeg R| + |segDegP R|`, `c = |coincPairs R|`, `X = |crossPairsOf R.V|`,
and likewise for `R'`.  Row 124's identity gives `S = D + 3c` and
`S' = D' + 3c'` with `D = |degPts R|`, `D' = |degPts R'|`.  From
`X < X'`, `c' < c` and `S ≤ S' + 4` we get `X + D ≤ X' + D'`:

>  `X + D = X + S - 3c ≤ X + S' + 4 - 3c ≤ X + S' + 4 - 3c' - 3 ≤ X' + D'`,

the last step because `X + 1 ≤ X'`.  The `+4` is exactly "only the
coincidence's own four incidence slots die". -/
theorem pt_measure_step_of_counts (R R' : Pair9)
    (hcross : (crossPairsOf R.V).card < (crossPairsOf R'.V).card)
    (hcoinc : (coincPairs R').card < (coincPairs R).card)
    (hslots : (segDeg R).card + (segDegP R).card
                ≤ (segDeg R').card + (segDegP R').card + 4) :
    (crossPairsOf R.V).card + (degPts R).ncard
      ≤ (crossPairsOf R'.V).card + (degPts R').ncard := by
  classical
  -- The two instances of row 124's identity, in additive form.
  have hid : (segDeg R).card + (segDegP R).card
      = (degPts R).ncard + 3 * (coincPairs R).card :=
    seg_card_eq_degPts_add_coinc R
  have hid' : (segDeg R').card + (segDegP R').card
      = (degPts R').ncard + 3 * (coincPairs R').card :=
    seg_card_eq_degPts_add_coinc R'
  omega

open scoped Classical in
/-- **The corollary the §9.1 chain consumes.**  One coincidence dies, the
crossing count strictly rises, at most the four slots of that coincidence are
lost — and the point measure `M_pt` does not decrease. -/
theorem M_pt_le_of_coinc_step (R R' : Pair9)
    (hcross : (crossPairsOf R.V).card < (crossPairsOf R'.V).card)
    (hcoinc : (coincPairs R').card < (coincPairs R).card)
    (hslots : (segDeg R).card + (segDegP R).card
                ≤ (segDeg R').card + (segDegP R').card + 4) :
    M_pt R ≤ M_pt R' := by
  simpa only [M_pt_def] using pt_measure_step_of_counts R R' hcross hcoinc hslots

#print axioms M_pt_def
#print axioms pt_measure_step_of_counts
#print axioms M_pt_le_of_coinc_step

/-! ## NON-VACUITY OF THE HEADLINE THEOREM — everything in one place

The kernel proves theorems; it does not check that a theorem is *about*
anything.  Three failure modes survive a clean `lake build`, and a reviewer
who reads Lean would catch all three by eye.  There is no such reviewer here,
so each is closed mechanically instead.  Every claim below is a theorem, and
every theorem is followed by `#print axioms`.

| failure mode | its checkable opposite | closed by |
|---|---|---|
| a definition is empty | exhibit a member | `certPair9_points9_nonempty`, `certPair9_sides_meet`, `vertexP_mem_sideP9` |
| a hypothesis is unsatisfiable, so the theorem is vacuous | exhibit one configuration meeting **all** of them at once | `nonVacuity` clauses 1–5 |
| the bound is trivially true | show it is **attained**, and that one less is false | `AKR9.certPair9_ncard`, `certPair9_not_le_37` |

The single witness for all of it is `AKR9.certPair9`, which is
`AKR9.ofRConfig9 RealUpperBound.certRConfig` — the 38-crossing lower-bound
certificate, whose fourteen vertices are the integer coordinates of
`LowerBound.Pv` / `LowerBound.Qv`, read verbatim from
`data/lower_bound/lower_bound_38.json`.  It is a *concrete* configuration: no
`Classical.choose` stands between the statement and the points.

**What this does not do.**  It does not make `f(7,7) = 38` unconditional.
`isGreatest_38_of_coincFree` still assumes coincidence-freeness, which is
AKR §9.1's conclusion.  Non-vacuity says the theorem has content; it does not
say the hypothesis is discharged. -/

/-- **(NV1) `Pair9` is inhabited.**  The structure carries `SimpleClosed` for
both heptagons, so this is the statement that the ambient hypotheses of every
theorem in this file are jointly satisfiable at all. -/
theorem pair9_nonempty : Nonempty AKR9.Pair9 := ⟨AKR9.certPair9⟩

/-- **(NV2) `sideP9` is not empty**, and one can name a member: a side contains
its own first vertex. -/
theorem vertexP_mem_sideP9 (R : AKR9.Pair9) (v : Fin 7) :
    R.V (pP v) ∈ AKR9.sideP9 R v := left_mem_segment ℝ _ _

/-- The mirror of `vertexP_mem_sideP9`. -/
theorem vertexQ_mem_sideQ9 (R : AKR9.Pair9) (j : Fin 7) :
    R.V (pQ j) ∈ AKR9.sideQ9 R j := left_mem_segment ℝ _ _

/-- **`points9` really is an intersection of sides.**  Unfolding, but stated
so that the next lemma can hand a reader an actual point on an actual side of
each polygon. -/
theorem points9_mem_sides (R : AKR9.Pair9) {x : ℝ × ℝ} (hx : x ∈ points9 R) :
    (∃ i : Fin 7, x ∈ AKR9.sideP9 R i) ∧ (∃ j : Fin 7, x ∈ AKR9.sideQ9 R j) :=
  ⟨Set.mem_iUnion.mp hx.1, Set.mem_iUnion.mp hx.2⟩

/-- **(NV3) `points9` is not empty at the witness.**  `Set.ncard` is `0` both on
the empty set and on an infinite one, so a bound `ncard ≤ 38` is worthless
unless something is known to be *in* the set.  Here the count is `38 ≠ 0`. -/
theorem certPair9_points9_nonempty : (points9 AKR9.certPair9).Nonempty :=
  Set.nonempty_of_ncard_ne_zero (by rw [AKR9.certPair9_ncard]; norm_num)

/-- **(NV4) The definitions interlock.**  There is a point of the plane lying
on a `P`-side *and* on a `Q`-side of the certificate — so `sideP9`, `sideQ9`
and `points9` are not three unrelated empty gadgets. -/
theorem certPair9_sides_meet :
    ∃ (x : ℝ × ℝ) (i j : Fin 7),
      x ∈ AKR9.sideP9 AKR9.certPair9 i ∧ x ∈ AKR9.sideQ9 AKR9.certPair9 j := by
  obtain ⟨x, hx⟩ := certPair9_points9_nonempty
  obtain ⟨⟨i, hi⟩, ⟨j, hj⟩⟩ := points9_mem_sides _ hx
  exact ⟨x, i, j, hi, hj⟩

/-- **(NV5) (E9) is satisfiable**, at the *same* witness.  `AKR9.certPair9`
comes from an `RConfig`, and general position forbids any vertex of one polygon
from lying anywhere on the other's boundary.  So the stronger hypothesis of
`AKR9.isGreatest_38_of_E9` is non-vacuous too, and by
`coincFree_of_noVertexOnOther` it implies the weaker one used here. -/
theorem certPair9_noVertexOnOther : AKR9.NoVertexOnOther AKR9.certPair9 :=
  AKR9.noVertexOnOther_ofRConfig _

/-- **(NV6) The bound is not slack.**  `≤ 38` is attained; `≤ 37` is false on
the very configuration the theorem applies to.  So the constant `38` is forced
and cannot be improved by a reader's inspection. -/
theorem certPair9_not_le_37 : ¬ (points9 AKR9.certPair9).ncard ≤ 37 := by
  intro h
  rw [AKR9.certPair9_ncard] at h
  omega

/-- **(NV7) `attainedCoincFree` is not empty** — `IsGreatest` would be a much
weaker statement about an empty set. -/
theorem mem_attainedCoincFree_38 : (38 : ℕ) ∈ attainedCoincFree :=
  isGreatest_38_of_coincFree.1

/-- **(NV8) …and it is not everything.**  `39` is *not* attained, so the upper
bound half of `IsGreatest` has bite. -/
theorem not_mem_attainedCoincFree_39 : (39 : ℕ) ∉ attainedCoincFree := by
  intro h
  have := isGreatest_38_of_coincFree.2 h
  omega

/-- **(NV9) `IsGreatest` pins the value.**  Any greatest element of
`attainedCoincFree` equals `38`: the theorem does not merely assert an upper
bound, it identifies the maximum. -/
theorem isGreatest_attainedCoincFree_unique {n : ℕ}
    (h : IsGreatest attainedCoincFree n) : n = 38 :=
  h.unique isGreatest_38_of_coincFree

/-- **THE NON-VACUITY BUNDLE.**  One theorem a reader can check in one
screenful.  Reading the clauses in order:

1. `Pair9` is inhabited — the ambient `SimpleClosed` hypotheses are satisfiable;
2. `points9` of the witness is a non-empty set of actual points of `ℝ × ℝ`;
3. it is finite — so `Set.ncard` is the honest count and not the `0` that
   `ncard` returns on infinite sets;
4. the witness is coincidence-free — the hypothesis of
   `points9_le_38_of_coincFree` holds;
5. the witness satisfies the *stronger* hypothesis (E9) of
   `AKR9.isGreatest_38_of_E9` as well;
6. its count is **exactly** `38` — the bound is attained;
7. `≤ 37` is false there — the bound is not slack;
8. `38` is attained, and
9. `39` is not — so the upper-bound half is not vacuous;
10. and `38` is the greatest attained count.

Clauses 2–7 all hold of the **same** configuration, which is the point: a
hypothesis-by-hypothesis check would not rule out a theorem whose hypotheses
are individually satisfiable but jointly contradictory. -/
theorem nonVacuity :
    Nonempty AKR9.Pair9
    ∧ (points9 AKR9.certPair9).Nonempty
    ∧ (points9 AKR9.certPair9).Finite
    ∧ (∀ v j : Fin 7, AKR9.certPair9.V (pP v) ≠ AKR9.certPair9.V (pQ j))
    ∧ AKR9.NoVertexOnOther AKR9.certPair9
    ∧ (points9 AKR9.certPair9).ncard = 38
    ∧ ¬ (points9 AKR9.certPair9).ncard ≤ 37
    ∧ (38 : ℕ) ∈ attainedCoincFree
    ∧ (39 : ℕ) ∉ attainedCoincFree
    ∧ IsGreatest attainedCoincFree 38 :=
  ⟨pair9_nonempty, certPair9_points9_nonempty, certPair9_finite,
   certPair9_coincFree, certPair9_noVertexOnOther, AKR9.certPair9_ncard,
   certPair9_not_le_37, mem_attainedCoincFree_38, not_mem_attainedCoincFree_39,
   isGreatest_38_of_coincFree⟩

#print axioms pair9_nonempty
#print axioms vertexP_mem_sideP9
#print axioms vertexQ_mem_sideQ9
#print axioms points9_mem_sides
#print axioms certPair9_points9_nonempty
#print axioms certPair9_sides_meet
#print axioms certPair9_noVertexOnOther
#print axioms certPair9_not_le_37
#print axioms mem_attainedCoincFree_38
#print axioms not_mem_attainedCoincFree_39
#print axioms isGreatest_attainedCoincFree_unique
#print axioms nonVacuity

-- and the results the bundle rests on, restated here so the whole
-- non-vacuity argument is auditable from this one screen:
#print axioms certPair9_finite
#print axioms certPair9_coincFree
#print axioms certPair9_tight
#print axioms isGreatest_38_of_coincFree
#print axioms points9_le_38_of_coincFree
#print axioms coincFree_of_noVertexOnOther

end Pair9Shift
end Heptagon
