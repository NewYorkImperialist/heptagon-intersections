import GeometryDefs
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Topology.Algebra.Order.Floor
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

end Heptagon.RealConfig
