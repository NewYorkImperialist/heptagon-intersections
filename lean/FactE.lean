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

/-! ## 4. Sliding to the boundary of the unit square

With both first-order conditions in hand the two segment directions are
parallel, and there is a direction in parameter space along which the distance
is *constant*.  Following it from an interior point must leave the square. -/

/-- Two parallel plane vectors admit a nonzero pair of coefficients making the
combined displacement vanish — and the pair can always be taken with `β = 1`
or `(α, β) = (1, 0)`, which is what keeps the exit argument short. -/
theorem exists_coeffs {e f : ℝ × ℝ} (hef : cross e f = 0) :
    ∃ α β : ℝ, (β = 1 ∨ (α = 1 ∧ β = 0)) ∧ α • e = β • f := by
  by_cases he : e = 0
  · by_cases hf : f = 0
    · exact ⟨1, 0, Or.inr ⟨rfl, rfl⟩, by simp [he, hf]⟩
    · exact ⟨1, 0, Or.inr ⟨rfl, rfl⟩, by simp [he]⟩
  · -- `e ≠ 0`, so `f` is a multiple of it
    have h : e.1 ≠ 0 ∨ e.2 ≠ 0 := by
      by_contra hc
      push_neg at hc
      exact he (Prod.ext hc.1 hc.2)
    simp only [cross] at hef
    rcases h with h1 | h2
    · refine ⟨f.1 / e.1, 1, Or.inl rfl, ?_⟩
      simp only [Prod.ext_iff, Prod.smul_fst, Prod.smul_snd, smul_eq_mul, one_mul]
      constructor
      · field_simp
      · field_simp; linarith
    · refine ⟨f.2 / e.2, 1, Or.inl rfl, ?_⟩
      simp only [Prod.ext_iff, Prod.smul_fst, Prod.smul_snd, smul_eq_mul, one_mul]
      constructor
      · field_simp; linarith
      · field_simp

/-- **Leaving the square.**  From an interior point of `(0,1)²`, travelling in a
direction with `β = 1`, one reaches the boundary while staying inside. -/
theorem exists_exit_beta_one {s t α : ℝ} (hs0 : 0 < s) (hs1 : s < 1)
    (ht0 : 0 < t) (ht1 : t < 1) :
    ∃ l : ℝ, 0 ≤ l ∧ 0 ≤ s + l * α ∧ s + l * α ≤ 1 ∧ 0 ≤ t + l ∧ t + l ≤ 1 ∧
      (s + l * α = 0 ∨ s + l * α = 1 ∨ t + l = 1) := by
  rcases lt_trichotomy α 0 with ha | ha | ha
  · refine ⟨min (1 - t) (s / (-α)), le_min (by linarith) (le_of_lt (div_pos hs0 (by linarith))), ?_, ?_, ?_, ?_, ?_⟩
    · have h2 : min (1 - t) (s / (-α)) ≤ s / (-α) := min_le_right _ _
      nlinarith [(div_mul_cancel₀ s (ne_of_gt (show (0:ℝ) < -α by linarith)))]
    · nlinarith [le_min (show (0:ℝ) ≤ 1 - t by linarith)
        (le_of_lt (div_pos hs0 (show (0:ℝ) < -α by linarith)))]
    · linarith [le_min (show (0:ℝ) ≤ 1 - t by linarith)
        (le_of_lt (div_pos hs0 (show (0:ℝ) < -α by linarith)))]
    · linarith [min_le_left (1 - t) (s / (-α))]
    · rcases min_choice (1 - t) (s / (-α)) with h | h
      · right; right; rw [h]; ring
      · left; rw [h]
        field_simp
        rw [div_self (ne_of_lt ha)]
        ring
  · subst ha
    exact ⟨1 - t, by linarith, by linarith, by linarith, by linarith, by linarith,
      Or.inr (Or.inr (by ring))⟩
  · refine ⟨min (1 - t) ((1 - s) / α), le_min (by linarith) (le_of_lt (div_pos (by linarith) ha)), ?_, ?_, ?_, ?_, ?_⟩
    · nlinarith [le_min (show (0:ℝ) ≤ 1 - t by linarith) (le_of_lt (div_pos (show (0:ℝ) < 1 - s by linarith) ha))]
    · have h2 : min (1 - t) ((1 - s) / α) ≤ (1 - s) / α := min_le_right _ _
      nlinarith [(div_mul_cancel₀ (1 - s) (ne_of_gt ha))]
    · linarith [le_min (show (0:ℝ) ≤ 1 - t by linarith) (le_of_lt (div_pos (show (0:ℝ) < 1 - s by linarith) ha))]
    · linarith [min_le_left (1 - t) ((1 - s) / α)]
    · rcases min_choice (1 - t) ((1 - s) / α) with h | h
      · right; right; rw [h]; ring
      · right; left; rw [h]
        field_simp
        ring

#print axioms exists_coeffs
#print axioms exists_exit_beta_one

/-! ## 5. Fact (E)

The first-order argument, stated once in the form both coordinates need. -/

/-- `ip_eq_zero_of_min` with the parametrisation stripped away: this is the
actual content, and it applies to either segment. -/
theorem ip_eq_zero_of_min_gen {v e : ℝ × ℝ} {s : ℝ} (hs0 : 0 < s) (hs1 : s < 1)
    (hmin : ∀ l : ℝ, 0 ≤ s + l → s + l ≤ 1 → ip v v ≤ ip (v + l • e) (v + l • e)) :
    ip v e = 0 := by
  have key : ∀ l : ℝ, 0 ≤ s + l → s + l ≤ 1 → 0 ≤ 2 * l * ip v e + l ^ 2 * ip e e := by
    intro l h0 h1
    have h := hmin l h0 h1
    rw [ip_add_smul] at h
    linarith
  by_cases he : ip e e = 0
  · have hz : e = 0 := (ip_self_eq_zero_iff e).mp he
    simp [hz, ip]
  · have hepos : 0 < ip e e := lt_of_le_of_ne (ip_self_nonneg e) (Ne.symm he)
    by_contra hne
    rcases lt_or_gt_of_ne hne with hlt | hgt
    · set l := min (1 - s) (-ip v e / ip e e) with hl
      have hlpos : 0 < l := lt_min (by linarith) (div_pos (by linarith) hepos)
      have hl1 : l ≤ 1 - s := min_le_left _ _
      have hl2 : l ≤ -ip v e / ip e e := min_le_right _ _
      have hmul : l * ip e e ≤ -ip v e := by
        have := mul_le_mul_of_nonneg_right hl2 (le_of_lt hepos)
        rwa [div_mul_cancel₀ _ (ne_of_gt hepos)] at this
      have := key l (by linarith) (by linarith)
      nlinarith
    · set l := min s (ip v e / ip e e) with hl
      have hlpos : 0 < l := lt_min hs0 (div_pos hgt hepos)
      have hl1 : l ≤ s := min_le_left _ _
      have hl2 : l ≤ ip v e / ip e e := min_le_right _ _
      have hmul : l * ip e e ≤ ip v e := by
        have := mul_le_mul_of_nonneg_right hl2 (le_of_lt hepos)
        rwa [div_mul_cancel₀ _ (ne_of_gt hepos)] at this
      have := key (-l) (by linarith) (by linarith)
      nlinarith

/-- The point of `σ` at parameter `r` minus the point of `τ` at parameter `w`. -/
def gap (p e c f : ℝ × ℝ) (r w : ℝ) : ℝ × ℝ := (p + r • e) - (c + w • f)

theorem gap_shift_fst (p e c f : ℝ × ℝ) (r w l : ℝ) :
    gap p e c f (r + l) w = gap p e c f r w + l • e := by
  simp only [gap, Prod.ext_iff, Prod.fst_add, Prod.snd_add, Prod.fst_sub, Prod.snd_sub,
    Prod.smul_fst, Prod.smul_snd, smul_eq_mul]
  constructor <;> ring

theorem gap_shift_snd (p e c f : ℝ × ℝ) (r w l : ℝ) :
    gap p e c f r (w + l) = gap p e c f r w + l • (-f) := by
  simp only [gap, Prod.ext_iff, Prod.fst_add, Prod.snd_add, Prod.fst_sub, Prod.snd_sub,
    Prod.smul_fst, Prod.smul_snd, Prod.fst_neg, Prod.snd_neg, smul_eq_mul]
  constructor <;> ring

/-- Sliding along `(α, 1)` when `α • e = f` does not move the gap at all. -/
theorem gap_slide (p e c f : ℝ × ℝ) (r w l α : ℝ) (h : α • e = f) :
    gap p e c f (r + l * α) (w + l) = gap p e c f r w := by
  have h1 : α * e.1 = f.1 := congrArg Prod.fst h
  have h2 : α * e.2 = f.2 := congrArg Prod.snd h
  refine Prod.ext ?_ ?_
  · simp only [gap, Prod.fst_add, Prod.fst_sub, Prod.smul_fst, smul_eq_mul]
    linear_combination l * h1
  · simp only [gap, Prod.snd_add, Prod.snd_sub, Prod.smul_snd, smul_eq_mul]
    linear_combination l * h2

/-- **Fact (E).**  Given a minimising pair of parameters for two disjoint
segments in the plane, there is a minimising pair with one parameter at an
endpoint.

Stated conditionally on the minimiser, so that the only analytic ingredient —
its existence, by compactness — stays outside. `hdisj` is `σ ∩ τ = ∅` in the
form the proof uses: the minimising gap is nonzero. -/
theorem factE {p e c f : ℝ × ℝ} {s u : ℝ}
    (hs0 : 0 ≤ s) (hs1 : s ≤ 1) (hu0 : 0 ≤ u) (hu1 : u ≤ 1)
    (hmin : ∀ r w : ℝ, 0 ≤ r → r ≤ 1 → 0 ≤ w → w ≤ 1 →
      ip (gap p e c f s u) (gap p e c f s u) ≤ ip (gap p e c f r w) (gap p e c f r w))
    (hdisj : gap p e c f s u ≠ 0) :
    ∃ r w : ℝ, 0 ≤ r ∧ r ≤ 1 ∧ 0 ≤ w ∧ w ≤ 1 ∧
      (r = 0 ∨ r = 1 ∨ w = 0 ∨ w = 1) ∧
      ip (gap p e c f r w) (gap p e c f r w) = ip (gap p e c f s u) (gap p e c f s u) := by
  -- if either parameter is already at an endpoint there is nothing to do
  by_cases hbnd : s = 0 ∨ s = 1 ∨ u = 0 ∨ u = 1
  · exact ⟨s, u, hs0, hs1, hu0, hu1, hbnd, rfl⟩
  push_neg at hbnd
  obtain ⟨hs0', hs1', hu0', hu1'⟩ := hbnd
  have hsi0 : 0 < s := lt_of_le_of_ne hs0 (Ne.symm hs0')
  have hsi1 : s < 1 := lt_of_le_of_ne hs1 hs1'
  have hui0 : 0 < u := lt_of_le_of_ne hu0 (Ne.symm hu0')
  have hui1 : u < 1 := lt_of_le_of_ne hu1 hu1'
  -- first-order condition in the first parameter
  have h1 : ip (gap p e c f s u) e = 0 := by
    refine ip_eq_zero_of_min_gen hsi0 hsi1 (fun l hl0 hl1 => ?_)
    have h := hmin (s + l) u hl0 hl1 hu0 hu1
    rwa [gap_shift_fst] at h
  -- and in the second
  have h2 : ip (gap p e c f s u) (-f) = 0 := by
    refine ip_eq_zero_of_min_gen hui0 hui1 (fun l hl0 hl1 => ?_)
    have h := hmin s (u + l) hs0 hs1 hl0 hl1
    rwa [gap_shift_snd] at h
  have h2' : ip (gap p e c f s u) f = 0 := by
    have hneg : ip (gap p e c f s u) (-f) = -(ip (gap p e c f s u) f) := by
      simp only [ip, Prod.fst_neg, Prod.snd_neg]; ring
    rw [hneg] at h2; linarith
  -- planarity: the two segment directions are parallel
  have hcross : cross e f = 0 := cross_eq_zero_of_both_orth hdisj h1 h2'
  obtain ⟨α, β, hchoice, hcoef⟩ := exists_coeffs hcross
  rcases hchoice with hb | ⟨ha, hb⟩
  · subst hb
    rw [one_smul] at hcoef
    obtain ⟨l, _, ha0, ha1, hb0, hb1, hbd⟩ :=
      exists_exit_beta_one hsi0 hsi1 hui0 hui1 (α := α)
    refine ⟨s + l * α, u + l, ha0, ha1, hb0, hb1, ?_, ?_⟩
    · rcases hbd with h | h | h
      · exact Or.inl h
      · exact Or.inr (Or.inl h)
      · exact Or.inr (Or.inr (Or.inr h))
    · rw [gap_slide p e c f s u l α hcoef]
  · subst ha; subst hb
    rw [one_smul, zero_smul] at hcoef
    refine ⟨0, u, le_refl 0, by norm_num, hu0, hu1, Or.inl rfl, ?_⟩
    simp only [gap, hcoef, smul_zero, add_zero]

#print axioms factE

#print axioms ip_eq_zero_of_min_gen
#print axioms gap_slide

/-! ## 6. The minimiser exists

`factE` is stated conditionally on a minimiser, so that the one genuinely
analytic ingredient stays isolated.  Here it is: the squared gap is a
polynomial in the two parameters, hence continuous, and `[0,1]²` is compact. -/

/-- The squared gap, written as an explicit polynomial in the two parameters so
that continuity is immediate. -/
def gsq (p e c f : ℝ × ℝ) (q : ℝ × ℝ) : ℝ :=
  (p.1 + q.1 * e.1 - (c.1 + q.2 * f.1)) ^ 2 + (p.2 + q.1 * e.2 - (c.2 + q.2 * f.2)) ^ 2

theorem gsq_eq (p e c f : ℝ × ℝ) (r w : ℝ) :
    gsq p e c f (r, w) = ip (gap p e c f r w) (gap p e c f r w) := by
  simp only [gsq, ip, gap, Prod.fst_add, Prod.snd_add, Prod.fst_sub, Prod.snd_sub,
    Prod.smul_fst, Prod.smul_snd, smul_eq_mul]
  ring

theorem continuous_gsq (p e c f : ℝ × ℝ) : Continuous (gsq p e c f) := by
  unfold gsq
  fun_prop

/-- **A minimising pair of parameters exists.** -/
theorem exists_min_params (p e c f : ℝ × ℝ) :
    ∃ s u : ℝ, 0 ≤ s ∧ s ≤ 1 ∧ 0 ≤ u ∧ u ≤ 1 ∧
      ∀ r w : ℝ, 0 ≤ r → r ≤ 1 → 0 ≤ w → w ≤ 1 →
        ip (gap p e c f s u) (gap p e c f s u) ≤ ip (gap p e c f r w) (gap p e c f r w) := by
  have hK : IsCompact ((Set.Icc (0:ℝ) 1) ×ˢ (Set.Icc (0:ℝ) 1)) :=
    isCompact_Icc.prod isCompact_Icc
  have hne : ((Set.Icc (0:ℝ) 1) ×ˢ (Set.Icc (0:ℝ) 1)).Nonempty :=
    ⟨(0, 0), by constructor <;> simp⟩
  obtain ⟨q, hq, hmin⟩ :=
    hK.exists_isMinOn hne (continuous_gsq p e c f).continuousOn
  obtain ⟨⟨hq1, hq2⟩, hq3, hq4⟩ := hq
  refine ⟨q.1, q.2, hq1, hq2, hq3, hq4, fun r w hr0 hr1 hw0 hw1 => ?_⟩
  have h := hmin (show (r, w) ∈ (Set.Icc (0:ℝ) 1) ×ˢ (Set.Icc (0:ℝ) 1) from
    ⟨⟨hr0, hr1⟩, hw0, hw1⟩)
  rw [← gsq_eq, ← gsq_eq]
  simpa using h

/-- **Fact (E), unconditionally.**  For any two segments in the plane whose
minimal gap is nonzero — which is what `σ ∩ τ = ∅` gives — there are
parameters realising the minimum with one of them at an endpoint. -/
theorem factE_unconditional (p e c f : ℝ × ℝ)
    (hdisj : ∀ s u : ℝ, 0 ≤ s → s ≤ 1 → 0 ≤ u → u ≤ 1 → gap p e c f s u ≠ 0) :
    ∃ r w : ℝ, 0 ≤ r ∧ r ≤ 1 ∧ 0 ≤ w ∧ w ≤ 1 ∧
      (r = 0 ∨ r = 1 ∨ w = 0 ∨ w = 1) ∧
      ∀ a b : ℝ, 0 ≤ a → a ≤ 1 → 0 ≤ b → b ≤ 1 →
        ip (gap p e c f r w) (gap p e c f r w) ≤ ip (gap p e c f a b) (gap p e c f a b) := by
  obtain ⟨s, u, hs0, hs1, hu0, hu1, hmin⟩ := exists_min_params p e c f
  obtain ⟨r, w, hr0, hr1, hw0, hw1, hbd, heq⟩ :=
    factE hs0 hs1 hu0 hu1 hmin (hdisj s u hs0 hs1 hu0 hu1)
  exact ⟨r, w, hr0, hr1, hw0, hw1, hbd, fun a b ha0 ha1 hb0 hb1 => by
    rw [heq]; exact hmin a b ha0 ha1 hb0 hb1⟩

#print axioms gsq_eq
#print axioms exists_min_params
#print axioms factE_unconditional

end FactE
end Heptagon
