import RealUpperBound

/-!
# A uniform `ε₀`: the sign vector of a family of polynomials is constant near `0⁺`

This file formalises the uniform-`ε` machinery of `independent/eps_uniform/FINDINGS.md`
§3 — Lemma U, Theorem U and Corollary U′ — and bridges it to this project's
orientation determinants.

## What it is for

AKR §9's general-position reduction moves every vertex **affinely** in a
parameter `ε`:  `Vᵢ(ε) = V⁰ᵢ + ε·Eᵢ`.  Every geometric predicate the argument
uses is then the sign of a polynomial of degree `≤ 2` in `ε`.  AKR argue
repeatedly "for small enough `ε` …" without ever producing a bound, and the
audit (`docs/akr-9-1-obligation.md` §5.2) rates producing one the hardest
remaining step of §9.1.

The content here is that the bound is elementary.  For a real polynomial
`p = Σ_{j=m}^{d} c_j εʲ` with lowest nonzero coefficient `c_m`, put

  `ρ(p) = min(1, |c_m| / (1 + Σ_{j>m} |c_j|))`.

* **Lemma U** (`Wit.lemmaU_sign`, `Wit.lemmaU_ne_zero`): for `0 < ε < ρ(p)`,
  `p(ε) ≠ 0` and `p(ε)` has the sign of `c_m`.
* **Theorem U** (`theoremU_sameSign`): for a finite family `W` of such
  polynomials and `ε₀ = min_{p∈W} ρ(p)`, the whole sign vector of `W` is
  constant on `(0, ε₀)`.
* **Bootstrapping** (`bootstrap`): consequently any property that is a function
  of that sign vector and that holds at *one* point of `(0, ε₀)` — by any soft,
  non-quantitative argument — holds on *all* of `(0, ε₀)`.
* **Corollary U′** (`rho_ge_of_int`, `rho_orient_ge`): for integer data with
  `‖V⁰‖_∞ ≤ N` and `‖E‖_∞ ≤ M`, `ε₀ ≥ 1 / (1 + 8(N+M)²)`.
* **Bridge** (`orientR_move`, `orient_sameSign`, `properCrossR_move_iff`): the
  determinants `orientR (Vᵢ ε) (Vⱼ ε) (V_k ε)` of a 14-point configuration
  moving affinely really are degree-`≤2` polynomials with the stated
  coefficients, so Theorem U applies to them and `ProperCrossR` — this
  development's proper-crossing predicate, `RealUpperBound.ProperCrossR` — is
  constant on `(0, ε₀)`.

## Why a concrete representation and not `Mathlib.Polynomial`

A witness here is a bare coefficient function `ℕ → ℝ` together with a degree
bound and the valuation, and evaluation is `Σ_{j ≤ deg} c_j εʲ`.  Three reasons:

1. The entire analytic content is one `Finset.sum` estimate.  `Polynomial`
   would add `natDegree` / `coeff` / `rootMultiplicity` bookkeeping and buy
   nothing: the proof never factors, differentiates or divides.
2. The consumer is `orientR`, which is literally a polynomial **expression** in
   `ε`.  Matching it to a concrete coefficient triple is one `ring`
   (`orientR_move`); matching it to a `Polynomial ℝ` would need `C`/`X`
   plumbing on every use.
3. There is nothing in Mathlib to reuse.  At the pinned commit,
   `Mathlib/Analysis/Polynomial/Basic.lean` is entirely `atTop`/`atBot`
   asymptotics and `Mathlib/Analysis/Polynomial/CauchyBound.lean` bounds roots
   from *above*; no lemma states the sign of a polynomial on a right
   neighbourhood of `0`.

## Scope, honestly

This file proves the *quantitative* statement and the bridge to `orientR` and
`ProperCrossR`.  It does **not** prove AKR's Theorem 17 — that the dependent
vertices really do move affinely — which is carried here as the hypothesis
`Vᵢ(ε) = V⁰ᵢ + ε·Eᵢ` (`move`).  Nor does it discharge the AKR §9 import.

**This file does not prove `f(7,7) = 38`.**  That remains a candidate resting on
the AKR §9 import, unreviewed by any mathematician.

This module is a **leaf**: nothing in the project imports it, and it is not in
`defaultTargets`.
-/

set_option autoImplicit false

namespace Heptagon
namespace UniformEps

open Finset
open Heptagon.RealConfig Heptagon.RealUpperBound

/-! ## 0. Three arithmetic helpers -/

private theorem abs_sub_le' (a b : ℝ) : |a - b| ≤ |a| + |b| := by
  rcases abs_cases a with ⟨h1, h1'⟩ | ⟨h1, h1'⟩ <;>
    rcases abs_cases b with ⟨h2, h2'⟩ | ⟨h2, h2'⟩ <;>
      rcases abs_cases (a - b) with ⟨h3, h3'⟩ | ⟨h3, h3'⟩ <;> linarith

private theorem pos_of_mul_pos_of_pos {c v : ℝ} (h : 0 < c * v) (hc : 0 < c) : 0 < v := by
  rcases mul_pos_iff.mp h with ⟨_, hv⟩ | ⟨hc', _⟩
  · exact hv
  · linarith

private theorem neg_of_mul_pos_of_neg {c v : ℝ} (h : 0 < c * v) (hc : c < 0) : v < 0 := by
  rcases mul_pos_iff.mp h with ⟨hc', _⟩ | ⟨_, hv⟩
  · linarith
  · exact hv

/-- If `|T| < |c|` then `c + T` has the sign of `c`, expressed without a sign
function: the product `c * (c + T)` is positive. -/
private theorem sign_of_abs_lt {c T : ℝ} (hc : c ≠ 0) (h : |T| < |c|) : 0 < c * (c + T) := by
  obtain ⟨hL, hR⟩ := abs_lt.mp h
  rcases lt_or_gt_of_ne hc with hneg | hpos
  · rw [abs_of_neg hneg] at hL hR
    nlinarith
  · rw [abs_of_pos hpos] at hL hR
    nlinarith

/-! ## 1. Witnesses: a polynomial together with its valuation

`Wit` packages exactly the data Lemma U needs: the coefficients, a degree
bound, and the index `ord` of the lowest nonzero coefficient.  Note that `deg`
is *data*, not derived: `eval` sums over `range (deg+1)` and nothing claims the
coefficients above `deg` vanish. -/

/-- A real polynomial `Σ_{j ≤ deg} coeff j · εʲ`, given together with its
valuation `ord`: the coefficients below `ord` vanish and `coeff ord` does not. -/
structure Wit where
  /-- The coefficient sequence. -/
  coeff : ℕ → ℝ
  /-- The degree bound; `eval` sums `j` over `range (deg + 1)`. -/
  deg : ℕ
  /-- The valuation: the index of the lowest nonzero coefficient. -/
  ord : ℕ
  ord_le_deg : ord ≤ deg
  coeff_ord_ne_zero : coeff ord ≠ 0
  coeff_eq_zero_of_lt : ∀ j, j < ord → coeff j = 0

namespace Wit

/-- `p(ε) = Σ_{j ≤ deg} c_j εʲ`. -/
def eval (w : Wit) (e : ℝ) : ℝ := ∑ j ∈ range (w.deg + 1), w.coeff j * e ^ j

/-- `Σ_{j > ord} |c_j|`, the tail-sum appearing in `ρ`. -/
def tailAbs (w : Wit) : ℝ := ∑ j ∈ Ico (w.ord + 1) (w.deg + 1), |w.coeff j|

/-- The bracketed tail of the factorisation `p(ε) = ε^ord · (c_ord + tailVal ε)`. -/
def tailVal (w : Wit) (e : ℝ) : ℝ :=
  ∑ j ∈ Ico (w.ord + 1) (w.deg + 1), w.coeff j * e ^ (j - w.ord)

/-- **The root-free radius** `ρ(p) = min(1, |c_m| / (1 + Σ_{j>m} |c_j|))`.  An
explicit algebraic expression in the coefficients: no limit, no compactness. -/
noncomputable def rho (w : Wit) : ℝ := min 1 (|w.coeff w.ord| / (1 + w.tailAbs))

theorem tailAbs_nonneg (w : Wit) : 0 ≤ w.tailAbs :=
  Finset.sum_nonneg fun _ _ => abs_nonneg _

theorem abs_coeff_ord_pos (w : Wit) : 0 < |w.coeff w.ord| := abs_pos.mpr w.coeff_ord_ne_zero

theorem rho_le_one (w : Wit) : w.rho ≤ 1 := min_le_left _ _

theorem rho_le_div (w : Wit) : w.rho ≤ |w.coeff w.ord| / (1 + w.tailAbs) := min_le_right _ _

theorem rho_pos (w : Wit) : 0 < w.rho := by
  have h1 : (0:ℝ) < 1 + w.tailAbs := by linarith [w.tailAbs_nonneg]
  exact lt_min one_pos (div_pos w.abs_coeff_ord_pos h1)

/-! ### The factorisation `p(ε) = ε^m · (c_m + tail)` -/

theorem eval_eq (w : Wit) (e : ℝ) :
    w.eval e = e ^ w.ord * (w.coeff w.ord + w.tailVal e) := by
  have hsplit : (∑ j ∈ range w.ord, w.coeff j * e ^ j)
      + (∑ j ∈ Ico w.ord (w.deg + 1), w.coeff j * e ^ j)
      = ∑ j ∈ range (w.deg + 1), w.coeff j * e ^ j :=
    Finset.sum_range_add_sum_Ico _ (by have := w.ord_le_deg; omega)
  have hzero : (∑ j ∈ range w.ord, w.coeff j * e ^ j) = 0 := by
    refine Finset.sum_eq_zero fun j hj => ?_
    rw [w.coeff_eq_zero_of_lt j (Finset.mem_range.mp hj), zero_mul]
  have hbot : (∑ j ∈ Ico w.ord (w.deg + 1), w.coeff j * e ^ j)
      = w.coeff w.ord * e ^ w.ord
        + ∑ j ∈ Ico (w.ord + 1) (w.deg + 1), w.coeff j * e ^ j :=
    Finset.sum_eq_sum_Ico_succ_bot (by have := w.ord_le_deg; omega) _
  have htail : (∑ j ∈ Ico (w.ord + 1) (w.deg + 1), w.coeff j * e ^ j)
      = e ^ w.ord * w.tailVal e := by
    rw [tailVal, Finset.mul_sum]
    refine Finset.sum_congr rfl fun j hj => ?_
    have hj' : w.ord + 1 ≤ j := (Finset.mem_Ico.mp hj).1
    have hpow : e ^ j = e ^ w.ord * e ^ (j - w.ord) := by
      rw [← pow_add]; congr 1; omega
    rw [hpow]; ring
  rw [eval, ← hsplit, hzero, hbot, htail]
  ring

/-! ### The tail estimate -/

theorem abs_tailVal_le (w : Wit) {e : ℝ} (he0 : 0 ≤ e) (he1 : e ≤ 1) :
    |w.tailVal e| ≤ e * w.tailAbs := by
  have step : |w.tailVal e| ≤ ∑ j ∈ Ico (w.ord + 1) (w.deg + 1), |w.coeff j| * e := by
    refine le_trans (Finset.abs_sum_le_sum_abs _ _) (Finset.sum_le_sum fun j hj => ?_)
    have hj' : w.ord + 1 ≤ j := (Finset.mem_Ico.mp hj).1
    have h1 : |w.coeff j * e ^ (j - w.ord)| = |w.coeff j| * e ^ (j - w.ord) := by
      rw [abs_mul, abs_of_nonneg (pow_nonneg he0 _)]
    have h2 : e ^ (j - w.ord) ≤ e := by
      have := pow_le_pow_of_le_one he0 he1 (show 1 ≤ j - w.ord by omega)
      rwa [pow_one] at this
    rw [h1]
    exact mul_le_mul_of_nonneg_left h2 (abs_nonneg _)
  have hrw : (∑ j ∈ Ico (w.ord + 1) (w.deg + 1), |w.coeff j| * e) = e * w.tailAbs := by
    rw [← Finset.sum_mul]
    simp only [tailAbs]
    ring
  rwa [hrw] at step

theorem abs_tailVal_lt (w : Wit) {e : ℝ} (he0 : 0 < e) (he : e < w.rho) :
    |w.tailVal e| < |w.coeff w.ord| := by
  have he1 : e ≤ 1 := le_of_lt (lt_of_lt_of_le he w.rho_le_one)
  have hS := w.tailAbs_nonneg
  have hc := w.abs_coeff_ord_pos
  have hpos : (0:ℝ) < 1 + w.tailAbs := by linarith
  have h1 : |w.tailVal e| ≤ e * w.tailAbs := w.abs_tailVal_le (le_of_lt he0) he1
  have h2 : e * w.tailAbs ≤ w.rho * w.tailAbs := mul_le_mul_of_nonneg_right (le_of_lt he) hS
  have h3 : w.rho * w.tailAbs ≤ (|w.coeff w.ord| / (1 + w.tailAbs)) * w.tailAbs :=
    mul_le_mul_of_nonneg_right w.rho_le_div hS
  have h4 : (|w.coeff w.ord| / (1 + w.tailAbs)) * w.tailAbs < |w.coeff w.ord| := by
    rw [div_mul_eq_mul_div, div_lt_iff₀ hpos]
    nlinarith
  linarith

/-! ### Lemma U -/

/-- **Lemma U**, sign form.  For `0 < ε < ρ(p)` the value `p(ε)` has the sign of
the lowest nonzero coefficient `c_m`, stated as positivity of the product.

`independent/eps_uniform/FINDINGS.md` §3, "Lemma U (root-free radius)". -/
theorem lemmaU_sign (w : Wit) {e : ℝ} (he0 : 0 < e) (he : e < w.rho) :
    0 < w.coeff w.ord * w.eval e := by
  have hbr : 0 < w.coeff w.ord * (w.coeff w.ord + w.tailVal e) :=
    sign_of_abs_lt w.coeff_ord_ne_zero (w.abs_tailVal_lt he0 he)
  have hfac : w.coeff w.ord * w.eval e
      = e ^ w.ord * (w.coeff w.ord * (w.coeff w.ord + w.tailVal e)) := by
    rw [w.eval_eq e]; ring
  rw [hfac]
  exact mul_pos (pow_pos he0 _) hbr

/-- **Lemma U**, root-free form: `ρ(p)` really is a root-free radius. -/
theorem lemmaU_ne_zero (w : Wit) {e : ℝ} (he0 : 0 < e) (he : e < w.rho) : w.eval e ≠ 0 := by
  intro h
  have hk := w.lemmaU_sign he0 he
  rw [h, mul_zero] at hk
  exact lt_irrefl 0 hk

theorem lemmaU_pos (w : Wit) {e : ℝ} (he0 : 0 < e) (he : e < w.rho)
    (hc : 0 < w.coeff w.ord) : 0 < w.eval e :=
  pos_of_mul_pos_of_pos (w.lemmaU_sign he0 he) hc

theorem lemmaU_neg (w : Wit) {e : ℝ} (he0 : 0 < e) (he : e < w.rho)
    (hc : w.coeff w.ord < 0) : w.eval e < 0 :=
  neg_of_mul_pos_of_neg (w.lemmaU_sign he0 he) hc

/-- The sign of `p` is the *same* at any two points of `(0, ρ(p))`.  `SameSignR`
is `RealConfig.SameSignR`, the predicate the rest of the development transports
sign data with. -/
theorem sameSign_eval (w : Wit) {e₁ e₂ : ℝ} (h₁ : 0 < e₁) (h₁' : e₁ < w.rho)
    (h₂ : 0 < e₂) (h₂' : e₂ < w.rho) : SameSignR (w.eval e₁) (w.eval e₂) := by
  rcases lt_or_gt_of_ne w.coeff_ord_ne_zero with hneg | hpos
  · exact Or.inr ⟨w.lemmaU_neg h₁ h₁' hneg, w.lemmaU_neg h₂ h₂' hneg⟩
  · exact Or.inl ⟨w.lemmaU_pos h₁ h₁' hpos, w.lemmaU_pos h₂ h₂' hpos⟩

/-! ### Corollary U′ for a single polynomial: integer coefficients -/

/-- **Corollary U′**, single-polynomial form.  If the lowest nonzero coefficient
is an integer (hence `|c_m| ≥ 1`) and the tail-sum is at most `K`, then
`ρ(p) ≥ 1/(1+K)`.  No integrality is needed on the other coefficients — only a
bound on their absolute values. -/
theorem rho_ge_of_int (w : Wit) (hint : ∃ a : ℤ, w.coeff w.ord = (a : ℝ))
    {K : ℝ} (hK : w.tailAbs ≤ K) : 1 / (1 + K) ≤ w.rho := by
  obtain ⟨a, ha⟩ := hint
  have ha0 : a ≠ 0 := by
    intro h
    apply w.coeff_ord_ne_zero
    rw [ha, h, Int.cast_zero]
  have h1 : (1:ℝ) ≤ |w.coeff w.ord| := by
    rw [ha, ← Int.cast_abs]
    exact_mod_cast Int.one_le_abs ha0
  have hS := w.tailAbs_nonneg
  have hK0 : (0:ℝ) ≤ K := le_trans hS hK
  have hpos : (0:ℝ) < 1 + K := by linarith
  have hposS : (0:ℝ) < 1 + w.tailAbs := by linarith
  rw [rho, le_min_iff]
  refine ⟨?_, ?_⟩
  · rw [div_le_one₀ hpos]; linarith
  · rw [div_le_div_iff₀ hpos hposS]
    nlinarith

end Wit

/-! ## 2. Theorem U: a finite family, and the uniform `ε₀` -/

section Family

variable {ι : Type*}

/-- `ε₀ = min_{p ∈ W} ρ(p)`. -/
noncomputable def eps0 (W : Finset ι) (hW : W.Nonempty) (p : ι → Wit) : ℝ :=
  W.inf' hW (fun i => (p i).rho)

theorem eps0_le (W : Finset ι) (hW : W.Nonempty) (p : ι → Wit) {i : ι} (hi : i ∈ W) :
    eps0 W hW p ≤ (p i).rho :=
  Finset.inf'_le _ hi

/-- `ε₀ > 0`: the uniform radius is genuinely positive. -/
theorem eps0_pos (W : Finset ι) (hW : W.Nonempty) (p : ι → Wit) : 0 < eps0 W hW p := by
  rw [eps0, Finset.lt_inf'_iff]
  exact fun i _ => (p i).rho_pos

/-- **Theorem U**, part 1: on `(0, ε₀)` no member of the family vanishes. -/
theorem theoremU_ne_zero (W : Finset ι) (hW : W.Nonempty) (p : ι → Wit) {i : ι} (hi : i ∈ W)
    {e : ℝ} (he0 : 0 < e) (he : e < eps0 W hW p) : (p i).eval e ≠ 0 :=
  (p i).lemmaU_ne_zero he0 (lt_of_lt_of_le he (eps0_le W hW p hi))

/-- **Theorem U**, part 2: on `(0, ε₀)` each member has the sign of its lowest
nonzero coefficient, so the sign vector is computable from the coefficients
alone. -/
theorem theoremU_sign (W : Finset ι) (hW : W.Nonempty) (p : ι → Wit) {i : ι} (hi : i ∈ W)
    {e : ℝ} (he0 : 0 < e) (he : e < eps0 W hW p) :
    0 < (p i).coeff (p i).ord * (p i).eval e :=
  (p i).lemmaU_sign he0 (lt_of_lt_of_le he (eps0_le W hW p hi))

/-- **Theorem U**, the form that gets used: the full sign vector of the family is
**constant** on `(0, ε₀)`. -/
theorem theoremU_sameSign (W : Finset ι) (hW : W.Nonempty) (p : ι → Wit) {i : ι} (hi : i ∈ W)
    {e₁ e₂ : ℝ} (h₁ : 0 < e₁) (h₁' : e₁ < eps0 W hW p)
    (h₂ : 0 < e₂) (h₂' : e₂ < eps0 W hW p) :
    SameSignR ((p i).eval e₁) ((p i).eval e₂) :=
  (p i).sameSign_eval h₁ (lt_of_lt_of_le h₁' (eps0_le W hW p hi))
    h₂ (lt_of_lt_of_le h₂' (eps0_le W hW p hi))

/-- **The bootstrapping principle** (`FINDINGS.md` Finding 4).  Let `Φ` be any
property of the value vector that only depends on the *signs* of the entries.
If `Φ` holds at one point of `(0, ε₀)` — by any soft argument, e.g. "for all
sufficiently small `ε`" — then it holds at every point of `(0, ε₀)`.

This is what converts each "for small enough `ε`" in AKR §9 into the single
explicit bound `ε₀`. -/
theorem bootstrap (W : Finset ι) (hW : W.Nonempty) (p : ι → Wit)
    (Φ : (ι → ℝ) → Prop)
    (hΦ : ∀ x y : ι → ℝ, (∀ i ∈ W, SameSignR (x i) (y i)) → Φ x → Φ y)
    {e₁ e₂ : ℝ} (h₁ : 0 < e₁) (h₁' : e₁ < eps0 W hW p)
    (h₂ : 0 < e₂) (h₂' : e₂ < eps0 W hW p)
    (h : Φ (fun i => (p i).eval e₁)) : Φ (fun i => (p i).eval e₂) :=
  hΦ _ _ (fun _ hi => theoremU_sameSign W hW p hi h₁ h₁' h₂ h₂') h

/-- **Corollary U′**, family form: a lower bound valid for every member is a
lower bound for `ε₀`. -/
theorem le_eps0 (W : Finset ι) (hW : W.Nonempty) (p : ι → Wit) {t : ℝ}
    (h : ∀ i ∈ W, t ≤ (p i).rho) : t ≤ eps0 W hW p :=
  Finset.le_inf' hW _ h

end Family

/-! ## 3. Degree-two witnesses, and how to build one -/

/-- A witness of degree `≤ 2`, the only case the geometry produces. -/
def degTwoWit (c : ℕ → ℝ) (m : ℕ) (hm : m ≤ 2) (hne : c m ≠ 0)
    (hlow : ∀ j, j < m → c j = 0) : Wit where
  coeff := c
  deg := 2
  ord := m
  ord_le_deg := hm
  coeff_ord_ne_zero := hne
  coeff_eq_zero_of_lt := hlow

@[simp] theorem degTwoWit_eval (c : ℕ → ℝ) (m : ℕ) (hm : m ≤ 2) (hne : c m ≠ 0)
    (hlow : ∀ j, j < m → c j = 0) (e : ℝ) :
    (degTwoWit c m hm hne hlow).eval e = ∑ n ∈ range 3, c n * e ^ n := rfl

@[simp] theorem degTwoWit_coeff (c : ℕ → ℝ) (m : ℕ) (hm : m ≤ 2) (hne : c m ≠ 0)
    (hlow : ∀ j, j < m → c j = 0) : (degTwoWit c m hm hne hlow).coeff = c := rfl

@[simp] theorem degTwoWit_ord (c : ℕ → ℝ) (m : ℕ) (hm : m ≤ 2) (hne : c m ≠ 0)
    (hlow : ∀ j, j < m → c j = 0) : (degTwoWit c m hm hne hlow).ord = m := rfl

/-- Any coefficient sequence that is not identically zero up to the degree bound
carries a witness: take `ord` to be the least index with a nonzero coefficient.
This is the converse direction of "`p ≡ 0` ⟺ all coefficients vanish". -/
theorem exists_wit (c : ℕ → ℝ) (d : ℕ) (h : ∃ n, n ≤ d ∧ c n ≠ 0) :
    ∃ w : Wit, w.coeff = c ∧ w.deg = d := by
  classical
  have h' : ∃ n, c n ≠ 0 := ⟨h.choose, h.choose_spec.2⟩
  refine ⟨{ coeff := c, deg := d, ord := Nat.find h'
            ord_le_deg := ?_
            coeff_ord_ne_zero := Nat.find_spec h'
            coeff_eq_zero_of_lt := ?_ }, rfl, rfl⟩
  · obtain ⟨n, hn, hn'⟩ := h
    exact le_trans (Nat.find_le hn') hn
  · intro j hj
    exact not_not.mp (Nat.find_min h' hj)

/-- The trivial converse: a polynomial with all coefficients zero is identically
zero.  Recorded so that the dichotomy "`p(ε) = 0` for `ε ∈ (0,ε₀)` ⟺ `p ≡ 0`" of
Theorem U is visible in both directions. -/
theorem eval_eq_zero_of_coeff_eq_zero (w : Wit) (e : ℝ)
    (h : ∀ j, j ≤ w.deg → w.coeff j = 0) : w.eval e = 0 := by
  refine Finset.sum_eq_zero fun j hj => ?_
  have hj' : j ≤ w.deg := Nat.lt_succ_iff.mp (Finset.mem_range.mp hj)
  rw [h j hj', zero_mul]

/-! ## 4. The bridge: fourteen points moving affinely in `ε`

This is AKR Theorem 17's conclusion taken as a hypothesis: the vertex map is
`Vᵢ(ε) = V⁰ᵢ + ε·Eᵢ`.  Theorem 17 itself is **not** proved here. -/

/-- The affine motion `Vᵢ(ε) = V⁰ᵢ + ε·Eᵢ` of a 14-point configuration. -/
def move (V0 E : Fin 14 → ℝ × ℝ) (e : ℝ) : Fin 14 → ℝ × ℝ :=
  fun i => ((V0 i).1 + e * (E i).1, (V0 i).2 + e * (E i).2)

@[simp] theorem move_zero (V0 E : Fin 14 → ℝ × ℝ) : move V0 E 0 = V0 := by
  funext i
  simp [move]

/-- The three coefficients of `ε ↦ orientR (Vᵢ ε) (Vⱼ ε) (V_k ε)`.  With
`u⁰ = V⁰ⱼ - V⁰ᵢ`, `w⁰ = V⁰ₖ - V⁰ᵢ`, `u = Eⱼ - Eᵢ`, `w = Eₖ - Eᵢ` these are
`cross(u⁰,w⁰)`, `cross(u,w⁰) + cross(u⁰,w)`, `cross(u,w)` — exactly the display
in `FINDINGS.md` §3. -/
def orientCoeff (V0 E : Fin 14 → ℝ × ℝ) (i j k : Fin 14) : ℕ → ℝ
  | 0 => ((V0 j).1 - (V0 i).1) * ((V0 k).2 - (V0 i).2)
       - ((V0 j).2 - (V0 i).2) * ((V0 k).1 - (V0 i).1)
  | 1 => (((E j).1 - (E i).1) * ((V0 k).2 - (V0 i).2)
         - ((E j).2 - (E i).2) * ((V0 k).1 - (V0 i).1))
       + (((V0 j).1 - (V0 i).1) * ((E k).2 - (E i).2)
         - ((V0 j).2 - (V0 i).2) * ((E k).1 - (E i).1))
  | 2 => ((E j).1 - (E i).1) * ((E k).2 - (E i).2)
       - ((E j).2 - (E i).2) * ((E k).1 - (E i).1)
  | _ + 3 => 0

/-- **The determinants really are quadratics in `ε`.**  This is the whole
content of the bridge: `orientR` of an affinely moving configuration is the
degree-`≤2` polynomial with coefficients `orientCoeff`. -/
theorem orientR_move (V0 E : Fin 14 → ℝ × ℝ) (i j k : Fin 14) (e : ℝ) :
    orientR (move V0 E e i) (move V0 E e j) (move V0 E e k)
      = ∑ n ∈ range 3, orientCoeff V0 E i j k n * e ^ n := by
  simp only [Finset.sum_range_succ, Finset.sum_range_zero, orientCoeff, orientR, move,
    pow_zero, pow_one]
  ring

/-- The witness attached to a determinant that is not identically zero, `m`
being its valuation. -/
def orientWit (V0 E : Fin 14 → ℝ × ℝ) (i j k : Fin 14) (m : ℕ) (hm : m ≤ 2)
    (hne : orientCoeff V0 E i j k m ≠ 0)
    (hlow : ∀ n, n < m → orientCoeff V0 E i j k n = 0) : Wit :=
  degTwoWit (orientCoeff V0 E i j k) m hm hne hlow

theorem orientWit_eval (V0 E : Fin 14 → ℝ × ℝ) (i j k : Fin 14) (m : ℕ) (hm : m ≤ 2)
    (hne : orientCoeff V0 E i j k m ≠ 0)
    (hlow : ∀ n, n < m → orientCoeff V0 E i j k n = 0) (e : ℝ) :
    (orientWit V0 E i j k m hm hne hlow).eval e
      = orientR (move V0 E e i) (move V0 E e j) (move V0 E e k) := by
  rw [orientWit, degTwoWit_eval, orientR_move]

/-- A determinant of an affinely moving configuration keeps a constant sign
throughout `(0, ρ)`. -/
theorem orient_sameSign (V0 E : Fin 14 → ℝ × ℝ) (i j k : Fin 14) (w : Wit)
    (hw : ∀ e : ℝ, w.eval e = orientR (move V0 E e i) (move V0 E e j) (move V0 E e k))
    {e₁ e₂ : ℝ} (h₁ : 0 < e₁) (h₁' : e₁ < w.rho) (h₂ : 0 < e₂) (h₂' : e₂ < w.rho) :
    SameSignR (orientR (move V0 E e₁ i) (move V0 E e₁ j) (move V0 E e₁ k))
              (orientR (move V0 E e₂ i) (move V0 E e₂ j) (move V0 E e₂ k)) := by
  rw [← hw, ← hw]
  exact w.sameSign_eval h₁ h₁' h₂ h₂'

/-! ## 5. From constant signs to constant crossing pattern -/

/-- `ProperCrossR` depends only on the signs of its four determinants.  This is
the "Boolean function of the sign vector" clause of the bootstrapping principle,
instantiated at this development's actual crossing predicate. -/
theorem properCrossR_congr {a b c d a' b' c' d' : ℝ × ℝ}
    (h₁ : SameSignR (orientR a b c) (orientR a' b' c'))
    (h₂ : SameSignR (orientR a b d) (orientR a' b' d'))
    (h₃ : SameSignR (orientR c d a) (orientR c' d' a'))
    (h₄ : SameSignR (orientR c d b) (orientR c' d' b')) :
    ProperCrossR a b c d ↔ ProperCrossR a' b' c' d' := by
  unfold ProperCrossR
  exact and_congr (mul_neg_iff_of_sameSign h₁ h₂) (mul_neg_iff_of_sameSign h₃ h₄)

/-- **The crossing pattern of a side pair is constant on `(0, ε₀)`.**  Given
witnesses for the four determinants of the pair `(V_a V_b, V_c V_d)`, the two
segments cross properly at `ε₁` iff they do at `ε₂`, for any `ε₁, ε₂` below all
four radii. -/
theorem properCrossR_move_iff (V0 E : Fin 14 → ℝ × ℝ) (a b c d : Fin 14)
    (w₁ w₂ w₃ w₄ : Wit)
    (hw₁ : ∀ e : ℝ, w₁.eval e = orientR (move V0 E e a) (move V0 E e b) (move V0 E e c))
    (hw₂ : ∀ e : ℝ, w₂.eval e = orientR (move V0 E e a) (move V0 E e b) (move V0 E e d))
    (hw₃ : ∀ e : ℝ, w₃.eval e = orientR (move V0 E e c) (move V0 E e d) (move V0 E e a))
    (hw₄ : ∀ e : ℝ, w₄.eval e = orientR (move V0 E e c) (move V0 E e d) (move V0 E e b))
    {e₁ e₂ t : ℝ} (h₁ : 0 < e₁) (h₂ : 0 < e₂) (h₁' : e₁ < t) (h₂' : e₂ < t)
    (k₁ : t ≤ w₁.rho) (k₂ : t ≤ w₂.rho) (k₃ : t ≤ w₃.rho) (k₄ : t ≤ w₄.rho) :
    (ProperCrossR (move V0 E e₁ a) (move V0 E e₁ b) (move V0 E e₁ c) (move V0 E e₁ d) ↔
     ProperCrossR (move V0 E e₂ a) (move V0 E e₂ b) (move V0 E e₂ c) (move V0 E e₂ d)) :=
  properCrossR_congr
    (orient_sameSign V0 E a b c w₁ hw₁ h₁ (lt_of_lt_of_le h₁' k₁) h₂ (lt_of_lt_of_le h₂' k₁))
    (orient_sameSign V0 E a b d w₂ hw₂ h₁ (lt_of_lt_of_le h₁' k₂) h₂ (lt_of_lt_of_le h₂' k₂))
    (orient_sameSign V0 E c d a w₃ hw₃ h₁ (lt_of_lt_of_le h₁' k₃) h₂ (lt_of_lt_of_le h₂' k₃))
    (orient_sameSign V0 E c d b w₄ hw₄ h₁ (lt_of_lt_of_le h₁' k₄) h₂ (lt_of_lt_of_le h₂' k₄))

/-! ## 6. Corollary U′ for the geometry: an a-priori bound from coordinate size -/

private theorem abs_cross_le {x1 x2 y1 y2 A B : ℝ}
    (hx1 : |x1| ≤ A) (hx2 : |x2| ≤ A) (hy1 : |y1| ≤ B) (hy2 : |y2| ≤ B) :
    |x1 * y2 - x2 * y1| ≤ 2 * A * B := by
  have hA : 0 ≤ A := le_trans (abs_nonneg _) hx1
  have h1 : |x1 * y2| ≤ A * B := by
    rw [abs_mul]; exact mul_le_mul hx1 hy2 (abs_nonneg _) hA
  have h2 : |x2 * y1| ≤ A * B := by
    rw [abs_mul]; exact mul_le_mul hx2 hy1 (abs_nonneg _) hA
  calc |x1 * y2 - x2 * y1| ≤ |x1 * y2| + |x2 * y1| := abs_sub_le' _ _
    _ ≤ 2 * A * B := by linarith

private theorem abs_diff_le {x y A : ℝ} (hx : |x| ≤ A) (hy : |y| ≤ A) : |x - y| ≤ 2 * A := by
  have := abs_sub_le' x y
  linarith

/-- Coefficient bounds: `|c₀| ≤ 8N²`, `|c₁| ≤ 16MN`, `|c₂| ≤ 8M²`. -/
theorem abs_orientCoeff_le (V0 E : Fin 14 → ℝ × ℝ) {N M : ℝ}
    (hV : ∀ i, |(V0 i).1| ≤ N ∧ |(V0 i).2| ≤ N)
    (hE : ∀ i, |(E i).1| ≤ M ∧ |(E i).2| ≤ M) (i j k : Fin 14) :
    |orientCoeff V0 E i j k 0| ≤ 8 * N ^ 2 ∧
    |orientCoeff V0 E i j k 1| ≤ 16 * M * N ∧
    |orientCoeff V0 E i j k 2| ≤ 8 * M ^ 2 := by
  have hVj1 := abs_diff_le (hV j).1 (hV i).1
  have hVj2 := abs_diff_le (hV j).2 (hV i).2
  have hVk1 := abs_diff_le (hV k).1 (hV i).1
  have hVk2 := abs_diff_le (hV k).2 (hV i).2
  have hEj1 := abs_diff_le (hE j).1 (hE i).1
  have hEj2 := abs_diff_le (hE j).2 (hE i).2
  have hEk1 := abs_diff_le (hE k).1 (hE i).1
  have hEk2 := abs_diff_le (hE k).2 (hE i).2
  refine ⟨?_, ?_, ?_⟩
  · have hb := abs_cross_le hVj1 hVj2 hVk1 hVk2
    simp only [orientCoeff]
    refine le_trans hb ?_
    nlinarith
  · have b1 := abs_cross_le hEj1 hEj2 hVk1 hVk2
    have b2 := abs_cross_le hVj1 hVj2 hEk1 hEk2
    simp only [orientCoeff]
    refine le_trans (abs_add_le _ _) ?_
    nlinarith
  · have hb := abs_cross_le hEj1 hEj2 hEk1 hEk2
    simp only [orientCoeff]
    refine le_trans hb ?_
    nlinarith

/-- The tail-sum of an `orientCoeff` witness is at most `8(N+M)²`, whatever its
valuation. -/
theorem orientWit_tailAbs_le (V0 E : Fin 14 → ℝ × ℝ) {N M : ℝ}
    (hN : 0 ≤ N) (hM : 0 ≤ M)
    (hV : ∀ i, |(V0 i).1| ≤ N ∧ |(V0 i).2| ≤ N)
    (hE : ∀ i, |(E i).1| ≤ M ∧ |(E i).2| ≤ M) (i j k : Fin 14) (m : ℕ) (hm : m ≤ 2)
    (hne : orientCoeff V0 E i j k m ≠ 0)
    (hlow : ∀ n, n < m → orientCoeff V0 E i j k n = 0) :
    (orientWit V0 E i j k m hm hne hlow).tailAbs ≤ 8 * (N + M) ^ 2 := by
  obtain ⟨b0, b1, b2⟩ := abs_orientCoeff_le V0 E hV hE i j k
  have hIco13 : Finset.Ico 1 3 = ({1, 2} : Finset ℕ) := by decide
  have hIco23 : Finset.Ico 2 3 = ({2} : Finset ℕ) := by decide
  have hIco33 : Finset.Ico 3 3 = (∅ : Finset ℕ) := by decide
  have hunfold : (orientWit V0 E i j k m hm hne hlow).tailAbs
      = ∑ n ∈ Finset.Ico (m + 1) 3, |orientCoeff V0 E i j k n| := rfl
  rw [hunfold]
  have hm3 : m = 0 ∨ m = 1 ∨ m = 2 := by omega
  rcases hm3 with rfl | rfl | rfl
  · rw [show (0:ℕ) + 1 = 1 from rfl, hIco13, Finset.sum_pair (by norm_num)]
    nlinarith
  · rw [show (1:ℕ) + 1 = 2 from rfl, hIco23, Finset.sum_singleton]
    nlinarith
  · rw [show (2:ℕ) + 1 = 3 from rfl, hIco33, Finset.sum_empty]
    nlinarith

/-- Integer input data, as a pair of integer-coordinate vertex lists. -/
def ofIntPts (v : Fin 14 → ℤ × ℤ) : Fin 14 → ℝ × ℝ :=
  fun i => (((v i).1 : ℝ), ((v i).2 : ℝ))

/-- For integer input data the coefficients are integers. -/
theorem orientCoeff_int (v f : Fin 14 → ℤ × ℤ) (i j k : Fin 14) (n : ℕ) :
    ∃ a : ℤ, orientCoeff (ofIntPts v) (ofIntPts f) i j k n = (a : ℝ) := by
  match n with
  | 0 =>
    refine ⟨((v j).1 - (v i).1) * ((v k).2 - (v i).2)
            - ((v j).2 - (v i).2) * ((v k).1 - (v i).1), ?_⟩
    simp only [orientCoeff, ofIntPts]
    push_cast
    ring
  | 1 =>
    refine ⟨(((f j).1 - (f i).1) * ((v k).2 - (v i).2)
            - ((f j).2 - (f i).2) * ((v k).1 - (v i).1))
          + (((v j).1 - (v i).1) * ((f k).2 - (f i).2)
            - ((v j).2 - (v i).2) * ((f k).1 - (f i).1)), ?_⟩
    simp only [orientCoeff, ofIntPts]
    push_cast
    ring
  | 2 =>
    refine ⟨((f j).1 - (f i).1) * ((f k).2 - (f i).2)
            - ((f j).2 - (f i).2) * ((f k).1 - (f i).1), ?_⟩
    simp only [orientCoeff, ofIntPts]
    push_cast
    ring
  | _ + 3 => exact ⟨0, by simp [orientCoeff]⟩

/-- **Corollary U′** in its geometric form.  For integer vertex data with
`‖V⁰‖_∞ ≤ N` and integer directions with `‖E‖_∞ ≤ M`, every determinant witness
has `ρ ≥ 1/(1 + 8(N+M)²)`; combined with `le_eps0` this gives
`ε₀ ≥ 1/(1 + 8(N+M)²)` for any finite family of them.

`FINDINGS.md` §3, "Corollary U′ (an a-priori bound from coordinate size)". -/
theorem rho_orient_ge (v f : Fin 14 → ℤ × ℤ) {N M : ℕ}
    (hv : ∀ i, |(v i).1| ≤ (N : ℤ) ∧ |(v i).2| ≤ (N : ℤ))
    (hf : ∀ i, |(f i).1| ≤ (M : ℤ) ∧ |(f i).2| ≤ (M : ℤ))
    (i j k : Fin 14) (m : ℕ) (hm : m ≤ 2)
    (hne : orientCoeff (ofIntPts v) (ofIntPts f) i j k m ≠ 0)
    (hlow : ∀ n, n < m → orientCoeff (ofIntPts v) (ofIntPts f) i j k n = 0) :
    1 / (1 + 8 * ((N : ℝ) + (M : ℝ)) ^ 2)
      ≤ (orientWit (ofIntPts v) (ofIntPts f) i j k m hm hne hlow).rho := by
  have hV : ∀ i, |(ofIntPts v i).1| ≤ (N : ℝ) ∧ |(ofIntPts v i).2| ≤ (N : ℝ) := by
    intro i
    obtain ⟨h1, h2⟩ := hv i
    constructor
    · show |((v i).1 : ℝ)| ≤ (N : ℝ)
      rw [← Int.cast_abs]; exact_mod_cast h1
    · show |((v i).2 : ℝ)| ≤ (N : ℝ)
      rw [← Int.cast_abs]; exact_mod_cast h2
  have hE : ∀ i, |(ofIntPts f i).1| ≤ (M : ℝ) ∧ |(ofIntPts f i).2| ≤ (M : ℝ) := by
    intro i
    obtain ⟨h1, h2⟩ := hf i
    constructor
    · show |((f i).1 : ℝ)| ≤ (M : ℝ)
      rw [← Int.cast_abs]; exact_mod_cast h1
    · show |((f i).2 : ℝ)| ≤ (M : ℝ)
      rw [← Int.cast_abs]; exact_mod_cast h2
  have htail := orientWit_tailAbs_le (ofIntPts v) (ofIntPts f)
    (N := (N : ℝ)) (M := (M : ℝ)) (Nat.cast_nonneg N) (Nat.cast_nonneg M) hV hE i j k m hm hne hlow
  refine Wit.rho_ge_of_int _ ?_ htail
  exact orientCoeff_int v f i j k m

/-! ## 7. Axiom check -/

#print axioms Heptagon.UniformEps.Wit.eval_eq
#print axioms Heptagon.UniformEps.Wit.abs_tailVal_lt
#print axioms Heptagon.UniformEps.Wit.lemmaU_sign
#print axioms Heptagon.UniformEps.Wit.lemmaU_ne_zero
#print axioms Heptagon.UniformEps.Wit.sameSign_eval
#print axioms Heptagon.UniformEps.Wit.rho_ge_of_int
#print axioms Heptagon.UniformEps.eps0_pos
#print axioms Heptagon.UniformEps.theoremU_ne_zero
#print axioms Heptagon.UniformEps.theoremU_sign
#print axioms Heptagon.UniformEps.theoremU_sameSign
#print axioms Heptagon.UniformEps.bootstrap
#print axioms Heptagon.UniformEps.le_eps0
#print axioms Heptagon.UniformEps.exists_wit
#print axioms Heptagon.UniformEps.eval_eq_zero_of_coeff_eq_zero
#print axioms Heptagon.UniformEps.move_zero
#print axioms Heptagon.UniformEps.orientR_move
#print axioms Heptagon.UniformEps.orientWit_eval
#print axioms Heptagon.UniformEps.orient_sameSign
#print axioms Heptagon.UniformEps.properCrossR_congr
#print axioms Heptagon.UniformEps.properCrossR_move_iff
#print axioms Heptagon.UniformEps.abs_orientCoeff_le
#print axioms Heptagon.UniformEps.orientWit_tailAbs_le
#print axioms Heptagon.UniformEps.orientCoeff_int
#print axioms Heptagon.UniformEps.rho_orient_ge

end UniformEps
end Heptagon
