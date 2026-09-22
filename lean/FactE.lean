import RotationLaw

/-!
# Fact (E): the distance between disjoint segments is attained at an endpoint

> **Fact (E).** Let `σ = [p,q]` and `τ = [c,d]` be closed segments in `ℝ²` with
> `σ ∩ τ = ∅`.  Then some minimising pair has one coordinate at an endpoint.

This is the `(Loc)` primitive of §9.2's `δ₀`: it is what lets a distance
between two *segments* be bounded below by finitely many point-to-segment
distances, each of which is computable.

**Both hypotheses are essential.**  Without disjointness, `σ = [(−1,0),(1,0)]`
and `τ = [(0,−1),(0,1)]` give left side `0`, right side `1`.  And the fact is
**false in `ℝ³`**: the `x`-axis segment and a `y`-axis segment at height `1`
are disjoint, their distance `1` is attained only at relative-interior points,
and the endpoint minimum is `√2`.

The proof in `independent/akr_9_2/LOC_AND_DELTA0.md` §1.2 is written with
gradients and a Hessian.  It does not need them: the first-order conditions at
an interior minimum are an *algebraic* consequence of minimality over a
segment, obtained by choosing one explicit competitor rather than by taking a
limit.  That is how they are derived here, so this file contains no analysis
beyond the existence of a minimiser.

This file is a leaf; nothing imports it.
-/

set_option autoImplicit false

namespace Heptagon
namespace FactE

open Heptagon.TiltedShift Heptagon.RotationLaw Heptagon.R3Construct

/-! ## 1. The quadratic expansion -/

theorem ip_add_smul (v e : ℝ × ℝ) (l : ℝ) :
    ip (v + l • e) (v + l • e) = ip v v + 2 * l * ip v e + l ^ 2 * ip e e := by
  simp only [ip, Prod.fst_add, Prod.snd_add, Prod.smul_fst, Prod.smul_snd, smul_eq_mul]
  ring

theorem ip_self_nonneg (v : ℝ × ℝ) : 0 ≤ ip v v := by
  simp only [ip]
  nlinarith [mul_self_nonneg v.1, mul_self_nonneg v.2]

theorem ip_self_eq_zero_iff (v : ℝ × ℝ) : ip v v = 0 ↔ v = 0 := by
  constructor
  · intro h
    have h1 : v.1 = 0 := by
      by_contra hc
      have := mul_self_pos.mpr hc
      simp only [ip] at h
      nlinarith [mul_self_nonneg v.2]
    have h2 : v.2 = 0 := by
      by_contra hc
      have := mul_self_pos.mpr hc
      simp only [ip] at h
      nlinarith [mul_self_nonneg v.1]
    exact Prod.ext h1 h2
  · rintro rfl; simp [ip]

/-! ## 2. First-order conditions, algebraically

Minimality over a segment at an interior parameter forces orthogonality.  The
usual derivation takes a derivative; this one exhibits a single competitor. -/

/-- **The first-order condition, with no limit taken.**  If `s` is an interior
minimiser of `r ↦ ‖(p + r·e) − y‖²` on `[0,1]`, then the displacement is
orthogonal to `e`.

The competitor is `λ = ∓min(gap, ⟪v,e⟫/‖e‖²)`, chosen so that the quadratic's
increment is strictly negative — which contradicts minimality outright, rather
than in a limit. -/
theorem ip_eq_zero_of_min {p e y : ℝ × ℝ} {s : ℝ} (hs0 : 0 < s) (hs1 : s < 1)
    (hmin : ∀ r : ℝ, 0 ≤ r → r ≤ 1 →
      ip ((p + s • e) - y) ((p + s • e) - y) ≤ ip ((p + r • e) - y) ((p + r • e) - y)) :
    ip ((p + s • e) - y) e = 0 := by
  set v : ℝ × ℝ := (p + s • e) - y with hv
  have hrw : ∀ l : ℝ, (p + (s + l) • e) - y = v + l • e := by
    intro l
    simp only [hv, Prod.ext_iff, Prod.fst_add, Prod.snd_add, Prod.fst_sub, Prod.snd_sub,
      Prod.smul_fst, Prod.smul_snd, smul_eq_mul]
    constructor <;> ring
  -- the increment inequality, for every admissible `l`
  have key : ∀ l : ℝ, 0 ≤ s + l → s + l ≤ 1 → 0 ≤ 2 * l * ip v e + l ^ 2 * ip e e := by
    intro l h0 h1
    have := hmin (s + l) h0 h1
    rw [hrw l, ip_add_smul] at this
    linarith
  by_cases he : ip e e = 0
  · -- a degenerate segment: `e = 0`, so the inner product is zero outright
    have : e = 0 := (ip_self_eq_zero_iff e).mp he
    simp [this, ip]
  · have hepos : 0 < ip e e := lt_of_le_of_ne (ip_self_nonneg e) (Ne.symm he)
    by_contra hne
    rcases lt_or_gt_of_ne hne with hlt | hgt
    · -- ⟪v,e⟫ < 0: step forward
      set l := min (1 - s) (-ip v e / ip e e) with hl
      have hlpos : 0 < l := lt_min (by linarith) (div_pos (by linarith) hepos)
      have hl1 : l ≤ 1 - s := min_le_left _ _
      have hl2 : l ≤ -ip v e / ip e e := min_le_right _ _
      have hmul : l * ip e e ≤ -ip v e := by
        have := mul_le_mul_of_nonneg_right hl2 (le_of_lt hepos)
        rwa [div_mul_cancel₀ _ (ne_of_gt hepos)] at this
      have := key l (by linarith) (by linarith)
      nlinarith
    · -- ⟪v,e⟫ > 0: step backward
      set l := min s (ip v e / ip e e) with hl
      have hlpos : 0 < l := lt_min hs0 (div_pos hgt hepos)
      have hl1 : l ≤ s := min_le_left _ _
      have hl2 : l ≤ ip v e / ip e e := min_le_right _ _
      have hmul : l * ip e e ≤ ip v e := by
        have := mul_le_mul_of_nonneg_right hl2 (le_of_lt hepos)
        rwa [div_mul_cancel₀ _ (ne_of_gt hepos)] at this
      have := key (-l) (by linarith) (by linarith)
      nlinarith

/-! ## 3. Planarity: two vectors orthogonal to a nonzero vector are parallel -/

/-- **Where the plane is used.**  In `ℝ³` this is false, and so is Fact (E). -/
theorem cross_eq_zero_of_both_orth {v e f : ℝ × ℝ} (hv : v ≠ 0)
    (he : ip v e = 0) (hf : ip v f = 0) : cross e f = 0 := by
  have h : v.1 ≠ 0 ∨ v.2 ≠ 0 := by
    by_contra hc
    push_neg at hc
    exact hv (Prod.ext hc.1 hc.2)
  simp only [ip] at he hf
  simp only [cross]
  rcases h with h1 | h2
  · have : v.1 * (e.1 * f.2 - e.2 * f.1) = 0 := by linear_combination f.2 * he - e.2 * hf
    exact (mul_eq_zero.mp this).resolve_left h1
  · have : v.2 * (e.1 * f.2 - e.2 * f.1) = 0 := by linear_combination -f.1 * he + e.1 * hf
    exact (mul_eq_zero.mp this).resolve_left h2

#print axioms ip_add_smul
#print axioms ip_self_eq_zero_iff
#print axioms ip_eq_zero_of_min
#print axioms cross_eq_zero_of_both_orth

end FactE
end Heptagon
