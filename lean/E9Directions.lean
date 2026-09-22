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

## The model, which is easy to get wrong

Put the apex at the origin. `P`'s two edges run to `a₁, a₂` and `Q`'s to
`b₁, b₂`; `Q` stays put and `P`'s apex moves to `εE`.

AKR move **only the vertex `P_i`** — "we leave `Q_j` stationary but we move
`P_i = P⁰_i + εE_i`" — so `P`'s two edges **pivot about their far endpoints**
rather than translating. The moved `P`-edge is `[εE, a_k]`, with `a_k`
**fixed**; it is *not* `[εE, εE + a_k]`.

`README.md`'s correction of 2026-09-20 records this same mistake being made and
fixed in the scripts, and it was made again here before being caught: in the
translate model the construction below fails outright once `ε ≥ 1`, in 3000 of
7500 exact trials, while in the apex-only model it never fails.

## The construction

If some `a_k ∦ b_l`, take `E = b_l − a_k`. The four determinants of
`ProperCrossR` are then

>  `−ε·c`, `c`, `ε·c`, `−c`   where `c = a_k × b_l`,

so both conjuncts are `−ε·c² < 0` — for **every** `ε > 0`, with no upper bound.
That is a property of the apex-only model at `s₀ = t₀ = 1` (`ν = ε/(1+ε) < 1`
always), not the scale-invariance of the translate model. For a general cone
point `t₀·b_l − s₀·a_k` one needs `ε·(t₀ − s₀) < 1` and the crossing genuinely
can be lost — `README.md` exhibits `ν = 6/5` at `ε = 1/4`.

No separation or straddle argument appears anywhere: the determinants are
computed.

This file is a leaf.
-/

set_option autoImplicit false

namespace Heptagon
namespace E9Directions

open Heptagon.Pair9Shift Heptagon.RealConfig Heptagon.RealUpperBound
open Heptagon.TiltedShift Heptagon.R3Construct

/-! ## 1. The apex-only move -/

/-- The moved apex, `ε·E` for the cone point `E(t) = t·b_l − a_k`. -/
def qStart (ak bl : ℝ × ℝ) (t e : ℝ) : ℝ × ℝ :=
  (e * (t * bl.1 - ak.1), e * (t * bl.2 - ak.2))

/-- The far end of the moved `P`-edge — **fixed at `a_k`**. The apex moves; the
neighbour does not. -/
def qEnd (ak : ℝ × ℝ) : ℝ × ℝ := ak

/-! ## 2. The four determinants, computed -/

theorem orientR_P_O (ak bl : ℝ × ℝ) (t e : ℝ) :
    orientR (qStart ak bl t e) (qEnd ak) 0 = -(e * t * cross ak bl) := by
  simp only [orientR, qStart, qEnd, cross, Prod.fst_zero, Prod.snd_zero]; ring

theorem orientR_P_bl (ak bl : ℝ × ℝ) (t e : ℝ) :
    orientR (qStart ak bl t e) (qEnd ak) bl = (1 - e * t + e) * cross ak bl := by
  simp only [orientR, qStart, qEnd, cross]; ring

theorem orientR_O_apex (ak bl : ℝ × ℝ) (t e : ℝ) :
    orientR 0 bl (qStart ak bl t e) = e * cross ak bl := by
  simp only [orientR, qStart, cross, Prod.fst_zero, Prod.snd_zero]; ring

theorem orientR_O_far (ak bl : ℝ × ℝ) :
    orientR 0 bl (qEnd ak) = -cross ak bl := by
  simp only [orientR, qEnd, cross, Prod.fst_zero, Prod.snd_zero]; ring

/-! ## 3. The crossing is proper -/

/-- **(E-exists), constructed.**  If `a_k ∦ b_l`, the cone point
`E(t) = t·b_l − a_k` with `t ∈ (0,1]` makes the moved `P`-edge cross the fixed
`Q`-edge **properly**, for every `ε > 0`.

At `t = 1` this is `E = b_l − a_k`, and the two conjuncts are both `−ε·c²`. -/
theorem properCrossR_cone {ak bl : ℝ × ℝ} (h : cross ak bl ≠ 0) {t e : ℝ}
    (ht0 : 0 < t) (ht1 : t ≤ 1) (he0 : 0 < e) :
    ProperCrossR (qStart ak bl t e) (qEnd ak) 0 bl := by
  have hc : 0 < cross ak bl * cross ak bl := mul_self_pos.mpr h
  have het : 0 < e * t := mul_pos he0 ht0
  have hpos : 0 < 1 - e * t + e := by nlinarith
  constructor
  · rw [orientR_P_O, orientR_P_bl]
    nlinarith [mul_pos (mul_pos het hpos) hc]
  · rw [orientR_O_apex, orientR_O_far]
    nlinarith [mul_pos he0 hc]

/-- The same at the canonical point `E = b_l − a_k`. -/
theorem properCrossR_of_cross_ne {ak bl : ℝ × ℝ} (h : cross ak bl ≠ 0)
    {e : ℝ} (he0 : 0 < e) :
    ProperCrossR (qStart ak bl 1 e) (qEnd ak) 0 bl :=
  properCrossR_cone h one_pos le_rfl he0

/-! ## 4. The hypothesis is necessary -/

theorem orientR_sub (a b c d : ℝ × ℝ) :
    orientR a b d - orientR a b c
      = cross (b.1 - a.1, b.2 - a.2) (d.1 - c.1, d.2 - c.2) := by
  simp only [orientR, cross]; ring

/-- **Parallel segments never cross properly**: the two determinants against
the first are *equal*, so their product is a square. -/
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

/-- When `a_k ∥ b_l` no `ε` helps: the moved `P`-edge stays parallel to the
`Q`-edge. Together with `properCrossR_cone` this is the paper lemma's **iff**. -/
theorem not_properCrossR_of_cross_eq {ak bl : ℝ × ℝ} (h : cross ak bl = 0) (t e : ℝ) :
    ¬ ProperCrossR (qStart ak bl t e) (qEnd ak) 0 bl := by
  refine not_properCrossR_of_parallel ?_
  simp only [qStart, qEnd, cross, Prod.fst_zero, Prod.snd_zero]
  simp only [cross] at h
  linear_combination (1 + e) * h

/-! ## 5. The four-ray statement -/

/-- **Parallelism is transitive through a nonzero vector.** -/
theorem parallel_trans {a b c : ℝ × ℝ} (ha : a ≠ 0)
    (h1 : cross a b = 0) (h2 : cross a c = 0) : cross b c = 0 := by
  have hcase : a.1 ≠ 0 ∨ a.2 ≠ 0 := by
    by_contra hc
    push_neg at hc
    exact ha (Prod.ext hc.1 hc.2)
  simp only [cross] at h1 h2 ⊢
  rcases hcase with h | h
  · have : a.1 * (b.1 * c.2 - b.2 * c.1) = 0 := by linear_combination b.1 * h2 - c.1 * h1
    exact (mul_eq_zero.mp this).resolve_left h
  · have : a.2 * (b.1 * c.2 - b.2 * c.1) = 0 := by linear_combination b.2 * h2 - c.2 * h1
    exact (mul_eq_zero.mp this).resolve_left h

/-- **The four-ray reduction.**  Not all six pairs parallel gives a usable
`P`-ray / `Q`-ray pair. `a₁ ∦ a₂` alone concerns two `P`-rays and yields no
pair directly, so the proof routes through `parallel_trans`. -/
theorem exists_nonparallel_ray {a₁ a₂ b₁ b₂ : ℝ × ℝ} (ha₁ : a₁ ≠ 0) (hb₁ : b₁ ≠ 0)
    (h : ¬(cross a₁ a₂ = 0 ∧ cross a₁ b₁ = 0 ∧ cross a₁ b₂ = 0 ∧
           cross a₂ b₁ = 0 ∧ cross a₂ b₂ = 0 ∧ cross b₁ b₂ = 0)) :
    cross a₁ b₁ ≠ 0 ∨ cross a₁ b₂ ≠ 0 ∨ cross a₂ b₁ ≠ 0 ∨ cross a₂ b₂ ≠ 0 := by
  by_contra hcon
  push_neg at hcon
  obtain ⟨e11, e12, e21, e22⟩ := hcon
  refine h ⟨?_, e11, e12, e21, e22, ?_⟩
  · have s1 : cross b₁ a₁ = 0 := by simp only [cross] at e11 ⊢; linarith
    have s2 : cross b₁ a₂ = 0 := by simp only [cross] at e21 ⊢; linarith
    exact parallel_trans hb₁ s1 s2
  · exact parallel_trans ha₁ e11 e12

/-- **(E-exists) at an apex**: four rays, not all mutually parallel. -/
theorem exists_direction_four_ray {a₁ a₂ b₁ b₂ : ℝ × ℝ} (ha₁ : a₁ ≠ 0) (hb₁ : b₁ ≠ 0)
    (h : ¬(cross a₁ a₂ = 0 ∧ cross a₁ b₁ = 0 ∧ cross a₁ b₂ = 0 ∧
           cross a₂ b₁ = 0 ∧ cross a₂ b₂ = 0 ∧ cross b₁ b₂ = 0)) :
    ∃ ak bl : ℝ × ℝ, (ak = a₁ ∨ ak = a₂) ∧ (bl = b₁ ∨ bl = b₂) ∧
      ∀ e : ℝ, 0 < e → ProperCrossR (qStart ak bl 1 e) (qEnd ak) 0 bl := by
  rcases exists_nonparallel_ray ha₁ hb₁ h with h' | h' | h' | h'
  · exact ⟨a₁, b₁, Or.inl rfl, Or.inl rfl, fun e he => properCrossR_of_cross_ne h' he⟩
  · exact ⟨a₁, b₂, Or.inl rfl, Or.inr rfl, fun e he => properCrossR_of_cross_ne h' he⟩
  · exact ⟨a₂, b₁, Or.inr rfl, Or.inl rfl, fun e he => properCrossR_of_cross_ne h' he⟩
  · exact ⟨a₂, b₂, Or.inr rfl, Or.inr rfl, fun e he => properCrossR_of_cross_ne h' he⟩

/-! ## 6. Preserving finiteness

`R3.md` Finding R3-1: a direction can satisfy AKR's stated criterion and still
make `∂P(ε) ∩ ∂Q(ε)` **infinite**. `README.md` characterises the bad
directions as positive multiples of a `b_m` with `a_k ∥ b_m`, so the bad set is
a finite union of **rays**. Moving along the cone's own one-parameter family,
being parallel to a *fixed* `b_m` is **affine in `t`**, so each excludes at
most one value — the same finite-avoidance argument as §9.2 throughout. -/

theorem exists_cone_t_avoiding {ak bl : ℝ × ℝ} (h : cross ak bl ≠ 0)
    (B : Finset (ℝ × ℝ)) (hB : ∀ b ∈ B, b ≠ 0) :
    ∃ t : ℝ, 0 < t ∧ t < 1 ∧ ∀ b ∈ B, cross (Edir ak bl t) b ≠ 0 := by
  classical
  set bad : Finset ℝ :=
    B.image (fun b => if cross bl b = 0 then 0 else cross ak b / cross bl b) with hbad
  have hinf : (Set.Ioo (0:ℝ) 1 \ (bad : Set ℝ)).Infinite :=
    (Set.Ioo_infinite (by norm_num)).diff bad.finite_toSet
  obtain ⟨t, ⟨ht0, ht1⟩, hnot⟩ := hinf.nonempty
  refine ⟨t, ht0, ht1, fun b hb hz => ?_⟩
  rw [cross_Edir] at hz
  by_cases hbl : cross bl b = 0
  · rw [hbl, mul_zero, zero_sub, neg_eq_zero] at hz
    exact h (parallel_trans (hB b hb)
      (show cross b ak = 0 by simp only [cross] at hz ⊢; linarith)
      (show cross b bl = 0 by simp only [cross] at hbl ⊢; linarith))
  · refine hnot ?_
    rw [Finset.mem_coe, hbad]
    refine Finset.mem_image.mpr ⟨b, hb, ?_⟩
    rw [if_neg hbl, eq_comm, eq_div_iff hbl]
    linarith

/-- **§9.1's direction, with both requirements at once**: a proper crossing at
the apex, and parallel to none of a prescribed finite family — in the
application, the `Q`-rays whose lines would absorb the moved apex and destroy
finiteness. `R3.md`'s Finding R3-1 is exactly a direction satisfying the first
and failing the second, so both must hold of the *same* direction. -/
theorem exists_good_cone_direction {ak bl : ℝ × ℝ} (h : cross ak bl ≠ 0)
    (B : Finset (ℝ × ℝ)) (hB : ∀ b ∈ B, b ≠ 0) :
    ∃ t : ℝ, 0 < t ∧ t < 1 ∧
      (∀ b ∈ B, cross (Edir ak bl t) b ≠ 0) ∧
      ∀ e : ℝ, 0 < e → ProperCrossR (qStart ak bl t e) (qEnd ak) 0 bl := by
  obtain ⟨t, ht0, ht1, hav⟩ := exists_cone_t_avoiding h B hB
  exact ⟨t, ht0, ht1, hav, fun e he => properCrossR_cone h ht0 (le_of_lt ht1) he⟩

#print axioms orientR_P_O
#print axioms properCrossR_cone
#print axioms not_properCrossR_of_cross_eq
#print axioms exists_direction_four_ray
#print axioms exists_good_cone_direction

end E9Directions
end Heptagon
