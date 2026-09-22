import Pair9Shift

/-!
# §9.1: the perturbation directions `E_i`, constructed

AKR's §9.1 removes a vertex–vertex coincidence `P_i = Q_j` by moving the apex
to `ε·E_i`, and says only:

> "We choose each direction `E_i` independently so that the two polygons have
> at least one nondegenerate intersection in the neighborhood of the original
> configuration, assuming that all other points stay where they are."

The direction is **asserted, never constructed**. `independent/e9_directions/`
proves on paper that one exists, with a sharp iff. This file gives the
construction in Lean.

**The local picture.** Put the apex at the origin. `P`'s two edges run to `a₁`,
`a₂` and `Q`'s to `b₁`, `b₂`; `Q` stays put and `P`'s apex moves to `εE`.

**The construction.** If some `a_k ∦ b_l`, take `E = b_l − a_k`. Then

>  `εE + ε·a_k = ε·b_l`

*identically* — so the moved `P`-edge and the fixed `Q`-edge meet at `ε·b_l`, at
parameter `ε` along **both**. The paper argument uses a general cone point
`t₀·b_l − s₀·a_k`; taking `s₀ = t₀ = 1` makes the meeting point an identity
rather than a computation, and `ε₀ = 1` works.

That the crossing is *proper* — not a touching — is then
`Pair9Shift.straddle_of_interior` applied twice, once for each conjunct of
`ProperCrossR`, with non-collinearity supplying what it needs both times.

This file is a leaf.
-/

set_option autoImplicit false

namespace Heptagon
namespace E9Directions

open Heptagon.Pair9Shift Heptagon.RealConfig Heptagon.RealUpperBound
open Heptagon.TiltedShift Heptagon.R3Construct

/-! ## 1. The moved apex and the meeting point -/

/-- The moved apex, `ε·(b_l − a_k)`. -/
def pStart (ak bl : ℝ × ℝ) (e : ℝ) : ℝ × ℝ :=
  (e * (bl.1 - ak.1), e * (bl.2 - ak.2))

/-- The far end of the moved `P`-edge. -/
def pEnd (ak bl : ℝ × ℝ) (e : ℝ) : ℝ × ℝ :=
  (e * (bl.1 - ak.1) + ak.1, e * (bl.2 - ak.2) + ak.2)

/-- The meeting point `ε·b_l`. -/
def meet (bl : ℝ × ℝ) (e : ℝ) : ℝ × ℝ := (e * bl.1, e * bl.2)

theorem pStart_lin (ak bl : ℝ × ℝ) (e : ℝ) :
    lin (pStart ak bl e) ak 0 = pStart ak bl e := by
  simp [lin]

theorem pEnd_lin (ak bl : ℝ × ℝ) (e : ℝ) :
    lin (pStart ak bl e) ak 1 = pEnd ak bl e := by
  simp only [lin, pStart, pEnd, Prod.ext_iff]
  constructor <;> ring

/-- **The identity that makes the construction work**: the meeting point is at
parameter `ε` along the moved `P`-edge. -/
theorem meet_lin_P (ak bl : ℝ × ℝ) (e : ℝ) :
    lin (pStart ak bl e) ak e = meet bl e := by
  simp only [lin, pStart, meet, Prod.ext_iff]
  constructor <;> ring

/-- …and at parameter `ε` along the fixed `Q`-edge. -/
theorem meet_lin_Q (bl : ℝ × ℝ) (e : ℝ) :
    lin (0 : ℝ × ℝ) bl e = meet bl e := by
  simp only [lin, meet, Prod.ext_iff]
  constructor <;> simp

/-! ## 2. Non-collinearity, in the form the straddle argument needs -/

/-- If two points both lie on a line, the vector between them is parallel to
the line's direction. -/
theorem cross_eq_zero_of_both_on_line {C u A B : ℝ × ℝ} (hu : u ≠ 0)
    (hA : off u C A = 0) (hB : off u C B = 0) :
    cross u (B.1 - A.1, B.2 - A.2) = 0 := by
  obtain ⟨α, hα⟩ := exists_param_of_off_zero hu hA
  obtain ⟨β, hβ⟩ := exists_param_of_off_zero hu hB
  rw [hα, hβ]
  simp only [cross, lin]
  ring

#print axioms pEnd_lin
#print axioms meet_lin_P
#print axioms meet_lin_Q
#print axioms cross_eq_zero_of_both_on_line

/-! ## 3. The crossing is proper

Both conjuncts of `ProperCrossR` come out as **explicit multiples of
`(a_k × b_l)²`**, so no separation argument is needed at all — the determinants
can simply be computed. That is a consequence of the `s₀ = t₀ = 1` choice:
with the meeting point an identity, the four determinants are linear in `ε`
with `a_k × b_l` as the only coefficient. -/

theorem orientR_P_zero (ak bl : ℝ × ℝ) (e : ℝ) :
    orientR (pStart ak bl e) (pEnd ak bl e) 0 = -(e * cross ak bl) := by
  simp only [orientR, pStart, pEnd, cross, Prod.fst_zero, Prod.snd_zero]
  ring

theorem orientR_P_bl (ak bl : ℝ × ℝ) (e : ℝ) :
    orientR (pStart ak bl e) (pEnd ak bl e) bl = (1 - e) * cross ak bl := by
  simp only [orientR, pStart, pEnd, cross]
  ring

theorem orientR_Q_pStart (ak bl : ℝ × ℝ) (e : ℝ) :
    orientR 0 bl (pStart ak bl e) = e * cross ak bl := by
  simp only [orientR, pStart, cross, Prod.fst_zero, Prod.snd_zero]
  ring

theorem orientR_Q_pEnd (ak bl : ℝ × ℝ) (e : ℝ) :
    orientR 0 bl (pEnd ak bl e) = (e - 1) * cross ak bl := by
  simp only [orientR, pEnd, cross, Prod.fst_zero, Prod.snd_zero]
  ring

/-- **(E-exists), constructed.**  If some `P`-ray and some `Q`-ray at the apex
are not parallel, then moving the apex by `ε·(b_l − a_k)` produces a *proper*
crossing of the moved `P`-edge with the fixed `Q`-edge, for **every**
`0 < ε < 1`.

`ε₀ = 1` — no smallness beyond the edge lengths is needed, because the cone is
scale-invariant. This is the direction AKR assert and do not construct. -/
theorem properCrossR_of_cross_ne {ak bl : ℝ × ℝ} (h : cross ak bl ≠ 0)
    {e : ℝ} (he0 : 0 < e) (he1 : e < 1) :
    ProperCrossR (pStart ak bl e) (pEnd ak bl e) 0 bl := by
  have hc : 0 < cross ak bl * cross ak bl := mul_self_pos.mpr h
  have h1e : 0 < 1 - e := by linarith
  have hkey : 0 < e * (1 - e) * (cross ak bl * cross ak bl) :=
    mul_pos (mul_pos he0 h1e) hc
  constructor
  · rw [orientR_P_zero, orientR_P_bl]
    nlinarith [hkey]
  · rw [orientR_Q_pStart, orientR_Q_pEnd]
    nlinarith [hkey]

/-- The direction in the form the section uses: **existence**. -/
theorem exists_direction {ak bl : ℝ × ℝ} (h : cross ak bl ≠ 0) :
    ∃ E : ℝ × ℝ, ∀ e : ℝ, 0 < e → e < 1 →
      ProperCrossR (e * E.1, e * E.2) (e * E.1 + ak.1, e * E.2 + ak.2) 0 bl :=
  ⟨(bl.1 - ak.1, bl.2 - ak.2), fun e he0 he1 => properCrossR_of_cross_ne h he0 he1⟩

#print axioms orientR_P_zero
#print axioms properCrossR_of_cross_ne
#print axioms exists_direction

/-! ## 4. The hypothesis is necessary

The paper lemma is an *iff*: a direction exists **iff** the four rays are not
all mutually parallel. The construction above is the substantial half; this is
the other, and it shows the hypothesis cannot be weakened. -/

/-- Moving the third argument along the first segment's own direction does not
change the determinant. -/
theorem orientR_sub (a b c d : ℝ × ℝ) :
    orientR a b d - orientR a b c = cross (b.1 - a.1, b.2 - a.2) (d.1 - c.1, d.2 - c.2) := by
  simp only [orientR, cross]
  ring

/-- **Parallel segments never cross properly.**  If the two segments are
parallel, the two determinants against the first are *equal*, so their product
is a square and cannot be negative.

Hence if every `P`-ray is parallel to every `Q`-ray — the excluded case — no
choice of `E` and no `ε` produces a crossing, and §9.1's move cannot remove
the coincidence. -/
theorem not_properCrossR_of_parallel {a b c d : ℝ × ℝ}
    (h : cross (b.1 - a.1, b.2 - a.2) (d.1 - c.1, d.2 - c.2) = 0) :
    ¬ ProperCrossR a b c d := by
  rintro ⟨h1, -⟩
  have heq : orientR a b d = orientR a b c := by
    have := orientR_sub a b c d
    rw [h] at this
    linarith
  rw [heq] at h1
  nlinarith [mul_self_nonneg (orientR a b c)]

/-- The excluded case, in the form the local picture states it: the moved
`P`-edge is parallel to the `Q`-edge exactly when `a_k × b_l = 0`, and then no
`ε` helps. -/
theorem not_properCrossR_of_cross_eq {ak bl : ℝ × ℝ} (h : cross ak bl = 0) (e : ℝ) :
    ¬ ProperCrossR (pStart ak bl e) (pEnd ak bl e) 0 bl := by
  refine not_properCrossR_of_parallel ?_
  simp only [pStart, pEnd, cross, Prod.fst_zero, Prod.snd_zero]
  simp only [cross] at h
  linear_combination h

#print axioms orientR_sub
#print axioms not_properCrossR_of_parallel
#print axioms not_properCrossR_of_cross_eq

end E9Directions
end Heptagon
