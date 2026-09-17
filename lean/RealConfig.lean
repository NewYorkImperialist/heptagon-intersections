import GeometryDefs
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Topology.Algebra.Order.Floor
import Mathlib.Topology.Baire.CompleteMetrizable
import Mathlib.Topology.Baire.Lemmas
import Mathlib.Tactic

/-!
# From real coordinates to integer coordinates

`DisjointnessGraph.Config` has **integer** vertex coordinates, and every result
the project proves about crossing counts is stated over it.  Arbitrary simple
heptagons have real coordinates.  This file closes that gap at the level where
all the content lives: the **signs of the orientation determinants**.

## Why signs are the whole story

Everything the development says about a configuration is determined by the signs
of the 364 orientation determinants of its fourteen vertices.
`GeometryDefs.ProperCross p₁ p₂ q₁ q₂` is
`orient p₁ p₂ q₁ * orient p₁ p₂ q₂ < 0 ∧ orient q₁ q₂ p₁ * orient q₁ q₂ p₂ < 0`
— strict sign conditions — and simplicity and the crossing count are read off
from those.  So a real configuration and an integer one with the **same sign
vector** have the same crossing pattern, hence the same number of boundary
intersection points.

## The argument, and why it needs no rationals

The obvious route is ℝ → ℚ → ℤ: approximate by rationals, then clear
denominators.  There is a shorter one, because the set of configurations with a
prescribed sign vector is not merely open — it is a **cone**.  `orientR` is
homogeneous of degree 2, so scaling every coordinate by `N > 0` multiplies every
determinant by `N² > 0` and changes no sign.

So: the good set is open, hence contains a box of some half-width `ε > 0` around
the given configuration; scaling by `N` carries that to a box of half-width
`N·ε`; take `N` with `N·ε > 1` and every coordinate interval is longer than 1,
so contains an integer.  That integer point is in the good set.  No density
argument and no denominator bookkeeping.

## Scope

This file proves the **sign-vector** statement.  Deriving "same crossing
pattern" and "same point count" from a shared sign vector is a separate and much
easier step, and is not done here — see the note on `exists_integer_model`.
-/

namespace Heptagon.RealConfig

open Heptagon.Geometry

/-- The orientation determinant over the reals: twice the signed area of the
triangle `a b c`.  Character-for-character `GeometryDefs.orient`, over `ℝ`. -/
def orientR (a b c : ℝ × ℝ) : ℝ :=
  (b.1 - a.1) * (c.2 - a.2) - (b.2 - a.2) * (c.1 - a.1)

/-- The integer determinant of the integer points, cast to `ℝ`, is the real
determinant of their casts.  This is what lets a `Config` be compared with a
real configuration at all. -/
theorem orientR_intCast (a b c : ℤ × ℤ) :
    orientR ((a.1 : ℝ), (a.2 : ℝ)) ((b.1 : ℝ), (b.2 : ℝ)) ((c.1 : ℝ), (c.2 : ℝ))
      = (orient a b c : ℝ) := by
  simp only [orientR, orient]
  push_cast
  ring

/-! ## Homogeneity: the good set is a cone -/

/-- Scaling all three points by `t` scales the determinant by `t²`. -/
theorem orientR_smul (t : ℝ) (a b c : ℝ × ℝ) :
    orientR (t * a.1, t * a.2) (t * b.1, t * b.2) (t * c.1, t * c.2)
      = t ^ 2 * orientR a b c := by
  simp only [orientR]
  ring

/-- Scaling a whole configuration by `t`. -/
def scale (t : ℝ) (V : Fin 14 → ℝ × ℝ) : Fin 14 → ℝ × ℝ := fun i => (t * (V i).1, t * (V i).2)

theorem orientR_scale (t : ℝ) (V : Fin 14 → ℝ × ℝ) (i j k : Fin 14) :
    orientR (scale t V i) (scale t V j) (scale t V k)
      = t ^ 2 * orientR (V i) (V j) (V k) :=
  orientR_smul t (V i) (V j) (V k)

/-! ## Continuity -/

/-- Each determinant is a continuous function of the configuration: it is a
polynomial in four of the twenty-eight coordinates. -/
theorem continuous_orientR (i j k : Fin 14) :
    Continuous (fun V : Fin 14 → ℝ × ℝ => orientR (V i) (V j) (V k)) := by
  unfold orientR
  fun_prop

/-! ## The integer point

An interval longer than 1 contains an integer; a box of such intervals contains
an integer point. -/

/-- If `b - a > 1` then some integer lies strictly between `a` and `b`. -/
theorem exists_int_strictly_between {a b : ℝ} (h : 1 < b - a) :
    ∃ m : ℤ, a < (m : ℝ) ∧ (m : ℝ) < b := by
  refine ⟨⌊a⌋ + 1, ?_, ?_⟩
  · push_cast
    exact Int.lt_floor_add_one a
  · have : (⌊a⌋ : ℝ) ≤ a := Int.floor_le a
    push_cast
    linarith

/-! ## The good set

`Good V` is the set of configurations whose 364 determinants all have the same
sign as `V`'s.  It is open (each determinant is continuous and each sign
condition is open) and it is a cone (homogeneity). -/

/-- Same strict sign, for reals. -/
def SameSignR (x y : ℝ) : Prop := (0 < x ∧ 0 < y) ∨ (x < 0 ∧ y < 0)

/-- The configurations agreeing with `V` on every determinant's sign. -/
def Good (V : Fin 14 → ℝ × ℝ) : Set (Fin 14 → ℝ × ℝ) :=
  { W | ∀ i j k : Fin 14, i ≠ j → j ≠ k → i ≠ k →
      SameSignR (orientR (V i) (V j) (V k)) (orientR (W i) (W j) (W k)) }

/-- `Good V` is open: it is a finite intersection of preimages of open
half-lines under continuous maps. -/
theorem isOpen_Good (V : Fin 14 → ℝ × ℝ) : IsOpen (Good V) := by
  have : Good V = ⋂ i : Fin 14, ⋂ j : Fin 14, ⋂ k : Fin 14,
      { W | i ≠ j → j ≠ k → i ≠ k →
          SameSignR (orientR (V i) (V j) (V k)) (orientR (W i) (W j) (W k)) } := by
    ext W; simp only [Good, Set.mem_setOf_eq, Set.mem_iInter]
  rw [this]
  refine isOpen_iInter_of_finite fun i => isOpen_iInter_of_finite fun j =>
    isOpen_iInter_of_finite fun k => ?_
  by_cases h : i ≠ j ∧ j ≠ k ∧ i ≠ k
  · have he : { W : Fin 14 → ℝ × ℝ | i ≠ j → j ≠ k → i ≠ k →
        SameSignR (orientR (V i) (V j) (V k)) (orientR (W i) (W j) (W k)) }
        = { W | SameSignR (orientR (V i) (V j) (V k)) (orientR (W i) (W j) (W k)) } := by
      ext W; simp only [Set.mem_setOf_eq]
      exact ⟨fun f => f h.1 h.2.1 h.2.2, fun f _ _ _ => f⟩
    rw [he]
    rcases lt_trichotomy (orientR (V i) (V j) (V k)) 0 with hv | hv | hv
    · have : { W : Fin 14 → ℝ × ℝ |
          SameSignR (orientR (V i) (V j) (V k)) (orientR (W i) (W j) (W k)) }
          = (fun W : Fin 14 → ℝ × ℝ => orientR (W i) (W j) (W k)) ⁻¹' (Set.Iio 0) := by
        ext W; simp only [SameSignR, Set.mem_setOf_eq, Set.mem_preimage, Set.mem_Iio]
        constructor
        · rintro (⟨h1, _⟩ | ⟨_, h2⟩) <;> [linarith; exact h2]
        · intro h2; exact Or.inr ⟨hv, h2⟩
      rw [this]; exact (continuous_orientR i j k).isOpen_preimage _ isOpen_Iio
    · -- `V`'s determinant vanishes, so `SameSignR 0 _` holds of nothing and the
      -- set is empty.  (`hgp` will exclude this case at the call site; the set
      -- being open is all that is needed here.)
      have he2 : { W : Fin 14 → ℝ × ℝ |
          SameSignR (orientR (V i) (V j) (V k)) (orientR (W i) (W j) (W k)) } = ∅ := by
        ext W
        simp only [SameSignR, hv, Set.mem_setOf_eq, Set.mem_empty_iff_false, iff_false]
        rintro (⟨h1, -⟩ | ⟨h1, -⟩) <;> exact absurd h1 (lt_irrefl 0)
      rw [he2]; exact isOpen_empty
    · have : { W : Fin 14 → ℝ × ℝ |
          SameSignR (orientR (V i) (V j) (V k)) (orientR (W i) (W j) (W k)) }
          = (fun W : Fin 14 → ℝ × ℝ => orientR (W i) (W j) (W k)) ⁻¹' (Set.Ioi 0) := by
        ext W; simp only [SameSignR, Set.mem_setOf_eq, Set.mem_preimage, Set.mem_Ioi]
        constructor
        · rintro (⟨_, h2⟩ | ⟨h1, _⟩) <;> [exact h2; linarith]
        · intro h2; exact Or.inl ⟨hv, h2⟩
      rw [this]; exact (continuous_orientR i j k).isOpen_preimage _ isOpen_Ioi
  · have he : { W : Fin 14 → ℝ × ℝ | i ≠ j → j ≠ k → i ≠ k →
        SameSignR (orientR (V i) (V j) (V k)) (orientR (W i) (W j) (W k)) } = Set.univ := by
      ext W; simp only [Set.mem_setOf_eq, Set.mem_univ, iff_true]
      intro h1 h2 h3; exact absurd ⟨h1, h2, h3⟩ h
    rw [he]; exact isOpen_univ

/-- `Good V` is a cone: scaling by a positive factor multiplies every
determinant by `t² > 0` and so changes no sign. -/
theorem scale_mem_Good {V W : Fin 14 → ℝ × ℝ} (hW : W ∈ Good V) {t : ℝ} (ht : 0 < t) :
    scale t W ∈ Good V := by
  intro i j k hij hjk hik
  have h2 : (0:ℝ) < t ^ 2 := by positivity
  have := hW i j k hij hjk hik
  rw [orientR_scale]
  rcases this with ⟨h1, h2'⟩ | ⟨h1, h2'⟩
  · exact Or.inl ⟨h1, by positivity⟩
  · exact Or.inr ⟨h1, by nlinarith⟩

/-- **The integer model.**  A real configuration in general position has an
integer-coordinate one with the *same sign vector* — every one of the 364
orientation determinants has the same strict sign.

Since `ProperCross` is defined by strict sign conditions on those determinants,
the two configurations have the same crossing pattern, hence the same simplicity
and the same number of boundary intersection points.  Deriving that consequence
is a separate step and is **not** done in this file.

The proof uses no rationals: the good set is open *and* a cone, so a small box
around `V` can be scaled up until its sides exceed 1, at which point it must
contain an integer point. -/
theorem exists_integer_model (V : Fin 14 → ℝ × ℝ)
    (hgp : ∀ i j k : Fin 14, i ≠ j → j ≠ k → i ≠ k → orientR (V i) (V j) (V k) ≠ 0) :
    ∃ Z : Fin 14 → ℤ × ℤ, ∀ i j k : Fin 14, i ≠ j → j ≠ k → i ≠ k →
      SameSignR (orientR (V i) (V j) (V k)) ((orient (Z i) (Z j) (Z k) : ℤ) : ℝ) := by
  -- `V` is in its own good set, which is open.
  have hVmem : V ∈ Good V := by
    intro i j k hij hjk hik
    rcases lt_or_gt_of_ne (hgp i j k hij hjk hik) with h | h
    · exact Or.inr ⟨h, h⟩
    · exact Or.inl ⟨h, h⟩
  obtain ⟨ε, hε, hball⟩ := Metric.isOpen_iff.mp (isOpen_Good V) V hVmem
  -- Scale up until the box is wider than 1 in every coordinate.
  obtain ⟨N, hN⟩ := exists_nat_gt (2 / ε)
  have hNpos : (0:ℝ) < N := lt_of_le_of_lt (by positivity) hN
  have hNε : 1 < N * ε := by
    rw [div_lt_iff₀ hε] at hN; linarith
  -- Choose an integer in each coordinate interval of half-width `N * ε`.
  have hpick : ∀ i : Fin 14, ∃ z : ℤ × ℤ,
      |(z.1 : ℝ) - N * (V i).1| < N * ε ∧ |(z.2 : ℝ) - N * (V i).2| < N * ε := by
    intro i
    obtain ⟨m, hm1, hm2⟩ := exists_int_strictly_between
      (a := N * (V i).1 - N * ε) (b := N * (V i).1 + N * ε) (by linarith)
    obtain ⟨n, hn1, hn2⟩ := exists_int_strictly_between
      (a := N * (V i).2 - N * ε) (b := N * (V i).2 + N * ε) (by linarith)
    exact ⟨(m, n), by rw [abs_lt]; constructor <;> linarith,
                     by rw [abs_lt]; constructor <;> linarith⟩
  choose Z hZ1 hZ2 using hpick
  refine ⟨Z, ?_⟩
  set W : Fin 14 → ℝ × ℝ := fun i => (((Z i).1 : ℝ), ((Z i).2 : ℝ)) with hWdef
  have hNne : (N:ℝ) ≠ 0 := ne_of_gt hNpos
  -- Shrinking by `1/N` lands inside the ball where the signs are fixed.
  have hscale : scale (1 / (N:ℝ)) W ∈ Metric.ball V ε := by
    rw [Metric.mem_ball, dist_pi_lt_iff hε]
    intro i
    rw [Prod.dist_eq, max_lt_iff]
    have e1 : (scale (1 / (N:ℝ)) W i).1 - (V i).1
        = (1 / N) * (((Z i).1 : ℝ) - N * (V i).1) := by
      simp only [scale, hWdef]; field_simp
    have e2 : (scale (1 / (N:ℝ)) W i).2 - (V i).2
        = (1 / N) * (((Z i).2 : ℝ) - N * (V i).2) := by
      simp only [scale, hWdef]; field_simp
    have hinv : (0:ℝ) < 1 / N := by positivity
    refine ⟨?_, ?_⟩
    · rw [Real.dist_eq, e1, abs_mul, abs_of_pos hinv]
      calc 1 / (N:ℝ) * |((Z i).1 : ℝ) - N * (V i).1|
          < 1 / N * (N * ε) := mul_lt_mul_of_pos_left (hZ1 i) hinv
        _ = ε := by field_simp
    · rw [Real.dist_eq, e2, abs_mul, abs_of_pos hinv]
      calc 1 / (N:ℝ) * |((Z i).2 : ℝ) - N * (V i).2|
          < 1 / N * (N * ε) := mul_lt_mul_of_pos_left (hZ2 i) hinv
        _ = ε := by field_simp
  have hcomp : scale (N:ℝ) (scale (1 / (N:ℝ)) W) = W := by
    funext i
    simp only [scale]
    ext <;> field_simp
  have hWgood : W ∈ Good V := by
    rw [← hcomp]
    exact scale_mem_Good (hball hscale) hNpos
  intro i j k hij hjk hik
  have := hWgood i j k hij hjk hik
  rwa [show orientR (W i) (W j) (W k) = ((orient (Z i) (Z j) (Z k) : ℤ) : ℝ) from
    orientR_intCast (Z i) (Z j) (Z k)] at this

/-! ## Towards AKR §3: making a vanishing determinant nonzero

`Config` already forces 168 of the 364 determinants nonzero, and `FullGP` asks
for the other 196.  Both are instances of AKR **§3**'s clause — "no three
vertices of `P` and `Q` combined lie on a line" — which the paper asserts *for
convenience* with a one-sentence sketch (`docs/akr-9-1-obligation.md` §6.1).
§9, the part AKR actually prove, is a different statement: no vertex of one
polygon on the *boundary* of the other.

§3's clause is a genericity argument, and this section is its core: a single
vanishing determinant can be removed by an arbitrarily small move of one vertex.
Iterating that, while keeping the already-nonzero determinants nonzero (an open
condition), is what gives the clause.

**What is here and what is not.** The single-determinant step is proved.  The
iteration over all 364, and the statement that the intersection *count* is
unchanged, are not — see the note at the end. -/

/-- Moving vertex `k` in the `x` direction changes the determinant by
`-δ · ((V j).2 - (V i).2)`; in the `y` direction by `+δ · ((V j).1 - (V i).1)`.
Stated for the raw points. -/
theorem orientR_shift_x (a b c : ℝ × ℝ) (d : ℝ) :
    orientR a b (c.1 + d, c.2) = orientR a b c - d * (b.2 - a.2) := by
  simp only [orientR]; ring

theorem orientR_shift_y (a b c : ℝ × ℝ) (d : ℝ) :
    orientR a b (c.1, c.2 + d) = orientR a b c + d * (b.1 - a.1) := by
  simp only [orientR]; ring

/-- Replace vertex `k` of a configuration. -/
def replace (V : Fin 14 → ℝ × ℝ) (k : Fin 14) (p : ℝ × ℝ) : Fin 14 → ℝ × ℝ :=
  Function.update V k p

@[simp] theorem replace_self (V : Fin 14 → ℝ × ℝ) (k : Fin 14) (p : ℝ × ℝ) :
    replace V k p k = p := by simp [replace]

@[simp] theorem replace_other {V : Fin 14 → ℝ × ℝ} {k m : Fin 14} (p : ℝ × ℝ) (h : m ≠ k) :
    replace V k p m = V m := by simp [replace, h]

/-- **The single-determinant genericity step.**  If two of the three vertices are
distinct, an arbitrarily small move of the third makes the determinant nonzero —
and moves nothing else.

This is the atom of AKR §3's clause.  The hypothesis `V i ≠ V j` is supplied in
context by simplicity, which forces distinct vertices. -/
theorem exists_near_nonzero {V : Fin 14 → ℝ × ℝ} {i j k : Fin 14}
    (hne : V i ≠ V j) (hki : k ≠ i) (hkj : k ≠ j) {ε : ℝ} (hε : 0 < ε) :
    ∃ p : ℝ × ℝ, dist p (V k) < ε ∧ orientR (V i) (V j) p ≠ 0 := by
  by_cases h0 : orientR (V i) (V j) (V k) ≠ 0
  · exact ⟨V k, by simpa using hε, h0⟩
  · push_neg at h0
    -- `V i ≠ V j` means they differ in some coordinate; move `V k` against it.
    have hxy : (V j).2 - (V i).2 ≠ 0 ∨ (V j).1 - (V i).1 ≠ 0 := by
      by_contra hc
      push_neg at hc
      exact hne (Prod.ext (by linarith [hc.2]) (by linarith [hc.1]))
    set d : ℝ := ε / 2 with hd
    have hdpos : 0 < d := by positivity
    rcases hxy with hy | hx
    · refine ⟨((V k).1 + d, (V k).2), ?_, ?_⟩
      · rw [Prod.dist_eq]
        simp only [Real.dist_eq, add_sub_cancel_left, sub_self, abs_zero,
          abs_of_pos hdpos, max_lt_iff]
        exact ⟨by rw [hd]; linarith, hε⟩
      · rw [show (((V k).1 + d, (V k).2) : ℝ × ℝ) = ((V k).1 + d, (V k).2) from rfl,
          orientR_shift_x (V i) (V j) (V k) d, h0]
        simp only [zero_sub]
        exact neg_ne_zero.mpr (mul_ne_zero (ne_of_gt hdpos) hy)
    · refine ⟨((V k).1, (V k).2 + d), ?_, ?_⟩
      · rw [Prod.dist_eq]
        simp only [Real.dist_eq, sub_self, abs_zero, add_sub_cancel_left,
          abs_of_pos hdpos, max_lt_iff]
        exact ⟨hε, by rw [hd]; linarith⟩
      · rw [orientR_shift_y (V i) (V j) (V k) d, h0]
        simp only [zero_add]
        exact mul_ne_zero (ne_of_gt hdpos) hx

/-! ### Genericity without case analysis

`exists_near_nonzero` needs `V i ≠ V j`.  For the *density* statement that the
iteration wants, that hypothesis is a nuisance: one would have to case on
whether the three vertices coincide.  There is a way round it.

Move `j` in the `x` direction and `k` in the `y` direction, both by the same
`t`.  The determinant then becomes a **monic** quadratic in `t` — the `t²`
coefficient is `1` no matter where the three vertices are.  A monic quadratic
has at most two roots, so arbitrarily small `t` make it nonzero, and no case
analysis on the vertices is needed at all. -/

/-- The determinant, after moving `b` in `x` and `c` in `y` by `t`, is monic
quadratic in `t`. -/
theorem orientR_perturb_quadratic (a b c : ℝ × ℝ) (t : ℝ) :
    orientR a (b.1 + t, b.2) (c.1, c.2 + t)
      = t ^ 2 + t * ((b.1 - a.1) + (c.2 - a.2)) + orientR a b c := by
  simp only [orientR]; ring

/-- A monic quadratic is nonzero at some arbitrarily small positive `t`: among
three distinct candidates it can vanish at most twice. -/
theorem exists_small_nonzero (a b c : ℝ × ℝ) {ε : ℝ} (hε : 0 < ε) :
    ∃ t : ℝ, 0 < t ∧ t < ε ∧ orientR a (b.1 + t, b.2) (c.1, c.2 + t) ≠ 0 := by
  set A : ℝ := (b.1 - a.1) + (c.2 - a.2) with hA
  set B : ℝ := orientR a b c with hB
  have key : ∀ t : ℝ, orientR a (b.1 + t, b.2) (c.1, c.2 + t) = t ^ 2 + t * A + B :=
    fun t => orientR_perturb_quadratic a b c t
  by_cases h1 : (ε / 2) ^ 2 + (ε / 2) * A + B ≠ 0
  · exact ⟨ε / 2, by linarith, by linarith, by rw [key]; exact h1⟩
  by_cases h2 : (ε / 3) ^ 2 + (ε / 3) * A + B ≠ 0
  · exact ⟨ε / 3, by linarith, by linarith, by rw [key]; exact h2⟩
  -- Both vanish, so the quadratic is `(t - ε/2)(t - ε/3)`, which is nonzero at ε/4.
  push_neg at h1 h2
  refine ⟨ε / 4, by linarith, by linarith, ?_⟩
  rw [key]
  have hAB : A = -(ε / 2 + ε / 3) ∧ B = (ε / 2) * (ε / 3) := by
    constructor <;> nlinarith [h1, h2, sq_nonneg ε, hε]
  rw [hAB.1, hAB.2]
  have : (ε / 4) ^ 2 + (ε / 4) * (-(ε / 2 + ε / 3)) + (ε / 2) * (ε / 3)
      = (ε / 4 - ε / 2) * (ε / 4 - ε / 3) := by ring
  rw [this]
  have hne1 : ε / 4 - ε / 2 ≠ 0 := by intro h; nlinarith
  have hne2 : ε / 4 - ε / 3 ≠ 0 := by intro h; nlinarith
  exact mul_ne_zero hne1 hne2

/-! ### Density, and the iteration

With the monic-quadratic lemma, each single "this determinant is nonzero" set is
open *and dense*.  There are finitely many, and `Fin 14 → ℝ × ℝ` is a complete
metric space hence a Baire space, so their intersection is dense — which is the
iteration, with none of the "choose ε small enough to preserve what is already
fixed" bookkeeping done by hand.

Note that full general position **implies distinct vertices**: if `W a = W b`
for `a ≠ b` then every determinant through both vanishes.  So no separate
distinctness condition is needed. -/

/-- The configurations on which one given determinant is nonzero.  Trivially
everything when the three indices are not distinct. -/
def NZ (p : Fin 14 × Fin 14 × Fin 14) : Set (Fin 14 → ℝ × ℝ) :=
  { W | p.1 ≠ p.2.1 → p.2.1 ≠ p.2.2 → p.1 ≠ p.2.2 →
      orientR (W p.1) (W p.2.1) (W p.2.2) ≠ 0 }

theorem isOpen_NZ (p : Fin 14 × Fin 14 × Fin 14) : IsOpen (NZ p) := by
  obtain ⟨i, j, k⟩ := p
  by_cases h : i ≠ j ∧ j ≠ k ∧ i ≠ k
  · have he : NZ (i, j, k)
        = (fun W : Fin 14 → ℝ × ℝ => orientR (W i) (W j) (W k)) ⁻¹' {0}ᶜ := by
      ext W
      simp only [NZ, Set.mem_setOf_eq, Set.mem_preimage, Set.mem_compl_iff,
        Set.mem_singleton_iff]
      exact ⟨fun f => f h.1 h.2.1 h.2.2, fun f _ _ _ => f⟩
    rw [he]
    exact (continuous_orientR i j k).isOpen_preimage _ isOpen_compl_singleton
  · have he : NZ (i, j, k) = Set.univ := by
      ext W
      simp only [NZ, Set.mem_setOf_eq, Set.mem_univ, iff_true]
      intro h1 h2 h3; exact absurd ⟨h1, h2, h3⟩ h
    rw [he]; exact isOpen_univ

theorem dense_NZ (p : Fin 14 × Fin 14 × Fin 14) : Dense (NZ p) := by
  obtain ⟨i, j, k⟩ := p
  by_cases h : i ≠ j ∧ j ≠ k ∧ i ≠ k
  · obtain ⟨hij, hjk, hik⟩ := h
    rw [Metric.dense_iff]
    intro V ε hε
    obtain ⟨t, ht0, htε, hne⟩ := exists_small_nonzero (V i) (V j) (V k) hε
    refine ⟨Function.update (Function.update V j (((V j).1 + t), (V j).2))
      k ((V k).1, ((V k).2 + t)), ?_, ?_⟩
    · rw [Metric.mem_ball, dist_pi_lt_iff hε]
      intro m
      by_cases hmk : m = k
      · subst hmk
        simp only [Function.update_self, Prod.dist_eq, Real.dist_eq, sub_self,
          abs_zero, add_sub_cancel_left, max_lt_iff, abs_of_pos ht0]
        exact ⟨hε, htε⟩
      · rw [Function.update_of_ne hmk]
        by_cases hmj : m = j
        · subst hmj
          simp only [Function.update_self, Prod.dist_eq, Real.dist_eq, sub_self,
            abs_zero, add_sub_cancel_left, max_lt_iff, abs_of_pos ht0]
          exact ⟨htε, hε⟩
        · rw [Function.update_of_ne hmj]; simpa using hε
    · simp only [NZ, Set.mem_setOf_eq]
      intro _ _ _
      have eWi : Function.update (Function.update V j (((V j).1 + t), (V j).2))
          k ((V k).1, ((V k).2 + t)) i = V i := by
        rw [Function.update_of_ne hik, Function.update_of_ne hij]
      have eWj : Function.update (Function.update V j (((V j).1 + t), (V j).2))
          k ((V k).1, ((V k).2 + t)) j = (((V j).1 + t), (V j).2) := by
        rw [Function.update_of_ne hjk, Function.update_self]
      have eWk : Function.update (Function.update V j (((V j).1 + t), (V j).2))
          k ((V k).1, ((V k).2 + t)) k = ((V k).1, ((V k).2 + t)) :=
        Function.update_self _ _ _
      rw [eWi, eWj, eWk]
      exact hne
  · have he : NZ (i, j, k) = Set.univ := by
      ext W
      simp only [NZ, Set.mem_setOf_eq, Set.mem_univ, iff_true]
      intro h1 h2 h3; exact absurd ⟨h1, h2, h3⟩ h
    rw [he]; exact dense_univ

/-- **AKR §3's clause, at the level of determinants.**  Every configuration is
approximated arbitrarily well by one in full general position.

This is the iteration the previous section left open.  It is *not* the whole of
§3: it says nothing yet about the intersection **count** being unchanged, which
is the remaining step (see below). -/
theorem exists_near_generic (V : Fin 14 → ℝ × ℝ) {ε : ℝ} (hε : 0 < ε) :
    ∃ W : Fin 14 → ℝ × ℝ, dist W V < ε ∧
      ∀ i j k : Fin 14, i ≠ j → j ≠ k → i ≠ k → orientR (W i) (W j) (W k) ≠ 0 := by
  have hdense : Dense (⋂ p : Fin 14 × Fin 14 × Fin 14, NZ p) :=
    dense_iInter_of_isOpen isOpen_NZ dense_NZ
  obtain ⟨W, hWball, hWmem⟩ := (Metric.dense_iff.mp hdense) V ε hε
  refine ⟨W, Metric.mem_ball.mp hWball, ?_⟩
  intro i j k hij hjk hik
  exact (Set.mem_iInter.mp hWmem (i, j, k)) hij hjk hik

/-- General position forces the fourteen vertices to be distinct: if two
coincided, every determinant through both would vanish. -/
theorem vertices_distinct_of_generic {W : Fin 14 → ℝ × ℝ}
    (hgp : ∀ i j k : Fin 14, i ≠ j → j ≠ k → i ≠ k → orientR (W i) (W j) (W k) ≠ 0)
    {a b : Fin 14} (hab : a ≠ b) : W a ≠ W b := by
  intro heq
  -- pick a third index
  obtain ⟨c, hca, hcb⟩ : ∃ c : Fin 14, c ≠ a ∧ c ≠ b := by
    have hle : ({a, b} : Finset (Fin 14)).card ≤ 2 :=
      le_trans (Finset.card_insert_le _ _) (by simp)
    have hne : (({a, b} : Finset (Fin 14))ᶜ).Nonempty := by
      rw [← Finset.card_pos, Finset.card_compl, Fintype.card_fin]
      omega
    obtain ⟨c, hc⟩ := hne
    simp only [Finset.mem_compl, Finset.mem_insert, Finset.mem_singleton, not_or] at hc
    exact ⟨c, hc.1, hc.2⟩
  exact hgp a b c hab (fun h => hcb h.symm) (fun h => hca h.symm)
    (by simp only [orientR, heq]; ring)

/-! ## What remains of §3's clause

**Step 1, the iteration, is done** — `exists_near_generic`, via Baire rather
than by hand-managing a shrinking `ε`.  What remains:

1. ~~Iterate.~~ Done.
2. **The count is unchanged.** Perturbing a configuration in which no vertex
   lies on the other polygon's boundary does not change the number of boundary
   intersection points: disjoint closed segments stay disjoint (positive
   distance), and two segments meeting at a point interior to both continue to
   meet nearby (their lines are distinct, hence transversal).  This is the bulk
   of the work and it is genuinely geometric, not just algebraic.
3. **Assemble** into the statement AKR §3 asserts.

Even with all three, **AKR §9 remains an import**: nothing here gets from an
arbitrary pair of simple heptagons to one with no vertex on the other's
boundary.  That is the step AKR prove in five pages, with one existence claim
they assert rather than prove. -/

end Heptagon.RealConfig
