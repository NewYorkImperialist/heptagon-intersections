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

/-! ## 5. The four-ray statement

At an apex `P` has two rays `a₁, a₂` and `Q` has two, `b₁, b₂`. The lemma's
hypothesis is that the four are **not all mutually parallel** — six cross
products, not four. Reducing that to "some `a_k ∦ b_l`" is the combinatorial
step, and it needs that parallelism is transitive through a nonzero vector. -/

/-- **Parallelism is transitive through a nonzero vector.**  Both `b` and `c`
parallel to `a ≠ 0` makes them parallel to each other. -/
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

/-- **The four-ray reduction.**  If the four rays are not all mutually
parallel, then some `P`-ray is non-parallel to some `Q`-ray — which is what the
construction of §3 consumes.

Note the hypothesis really is about all six pairs: `a₁ ∦ a₂` alone (two
`P`-rays) does not directly give a usable pair, and the proof routes through
`parallel_trans` to get one. -/
theorem exists_nonparallel_ray {a₁ a₂ b₁ b₂ : ℝ × ℝ} (ha₁ : a₁ ≠ 0) (hb₁ : b₁ ≠ 0)
    (h : ¬(cross a₁ a₂ = 0 ∧ cross a₁ b₁ = 0 ∧ cross a₁ b₂ = 0 ∧
           cross a₂ b₁ = 0 ∧ cross a₂ b₂ = 0 ∧ cross b₁ b₂ = 0)) :
    cross a₁ b₁ ≠ 0 ∨ cross a₁ b₂ ≠ 0 ∨ cross a₂ b₁ ≠ 0 ∨ cross a₂ b₂ ≠ 0 := by
  by_contra hcon
  push_neg at hcon
  obtain ⟨e11, e12, e21, e22⟩ := hcon
  refine h ⟨?_, e11, e12, e21, e22, ?_⟩
  · -- `a₁` and `a₂` are both parallel to `b₁`
    have s1 : cross b₁ a₁ = 0 := by
      simp only [cross] at e11 ⊢; linarith
    have s2 : cross b₁ a₂ = 0 := by
      simp only [cross] at e21 ⊢; linarith
    exact parallel_trans hb₁ s1 s2
  · -- `b₁` and `b₂` are both parallel to `a₁`
    exact parallel_trans ha₁ e11 e12

/-- **(E-exists) at an apex.**  Four rays, not all mutually parallel: a
direction exists, and it is one of four explicit candidates. -/
theorem exists_direction_four_ray {a₁ a₂ b₁ b₂ : ℝ × ℝ} (ha₁ : a₁ ≠ 0) (hb₁ : b₁ ≠ 0)
    (h : ¬(cross a₁ a₂ = 0 ∧ cross a₁ b₁ = 0 ∧ cross a₁ b₂ = 0 ∧
           cross a₂ b₁ = 0 ∧ cross a₂ b₂ = 0 ∧ cross b₁ b₂ = 0)) :
    ∃ ak bl : ℝ × ℝ,
      (ak = a₁ ∨ ak = a₂) ∧ (bl = b₁ ∨ bl = b₂) ∧
      ∀ e : ℝ, 0 < e → e < 1 →
        ProperCrossR (pStart ak bl e) (pEnd ak bl e) 0 bl := by
  rcases exists_nonparallel_ray ha₁ hb₁ h with h' | h' | h' | h'
  · exact ⟨a₁, b₁, Or.inl rfl, Or.inl rfl, fun e h0 h1 => properCrossR_of_cross_ne h' h0 h1⟩
  · exact ⟨a₁, b₂, Or.inl rfl, Or.inr rfl, fun e h0 h1 => properCrossR_of_cross_ne h' h0 h1⟩
  · exact ⟨a₂, b₁, Or.inr rfl, Or.inl rfl, fun e h0 h1 => properCrossR_of_cross_ne h' h0 h1⟩
  · exact ⟨a₂, b₂, Or.inr rfl, Or.inr rfl, fun e h0 h1 => properCrossR_of_cross_ne h' h0 h1⟩

#print axioms parallel_trans
#print axioms exists_nonparallel_ray
#print axioms exists_direction_four_ray

/-! ## 6. Preserving finiteness — the whole cone, not one point

`R3.md` Finding R3-1 showed a direction can satisfy AKR's stated criterion and
still make `∂P(ε) ∩ ∂Q(ε)` **infinite**, destroying the standing finiteness
assumption every later step inherits. `e9_directions/README.md` characterises
the bad directions: `E` is bad iff it is a **positive multiple of some `b_m`
with `a_k ∥ b_m`**. So the bad set is a finite union of **rays**, and an open
two-dimensional cone minus finitely many rays is still nonempty.

Rather than reason about cones, it is enough to move along the cone's own
one-parameter family `E(t) = t·b_l − a_k`. Those directions are pairwise
non-proportional, and being parallel to a *fixed* `b_m` is **affine in `t`**,
so each `b_m` excludes at most one `t`. This is the same finite-avoidance
argument that runs throughout §9.2. -/

/-- The moved apex for the general cone point `E(t) = t·b_l − a_k`. -/
def qStart (ak bl : ℝ × ℝ) (t e : ℝ) : ℝ × ℝ :=
  (e * (t * bl.1 - ak.1), e * (t * bl.2 - ak.2))

def qEnd (ak bl : ℝ × ℝ) (t e : ℝ) : ℝ × ℝ :=
  (e * (t * bl.1 - ak.1) + ak.1, e * (t * bl.2 - ak.2) + ak.2)

theorem orientR_Q_start (ak bl : ℝ × ℝ) (t e : ℝ) :
    orientR (qStart ak bl t e) (qEnd ak bl t e) 0 = -(e * t * cross ak bl) := by
  simp only [orientR, qStart, qEnd, cross, Prod.fst_zero, Prod.snd_zero]; ring

theorem orientR_Q_bl' (ak bl : ℝ × ℝ) (t e : ℝ) :
    orientR (qStart ak bl t e) (qEnd ak bl t e) bl = (1 - e * t) * cross ak bl := by
  simp only [orientR, qStart, qEnd, cross]; ring

theorem orientR_O_qStart (ak bl : ℝ × ℝ) (t e : ℝ) :
    orientR 0 bl (qStart ak bl t e) = e * cross ak bl := by
  simp only [orientR, qStart, cross, Prod.fst_zero, Prod.snd_zero]; ring

theorem orientR_O_qEnd (ak bl : ℝ × ℝ) (t e : ℝ) :
    orientR 0 bl (qEnd ak bl t e) = (e - 1) * cross ak bl := by
  simp only [orientR, qEnd, cross, Prod.fst_zero, Prod.snd_zero]; ring

/-- **The construction for the whole one-parameter family.**  Every cone point
`E(t) = t·b_l − a_k` with `t ∈ (0,1)` gives a proper crossing for every
`ε ∈ (0,1)`. -/
theorem properCrossR_cone {ak bl : ℝ × ℝ} (h : cross ak bl ≠ 0) {t e : ℝ}
    (ht0 : 0 < t) (ht1 : t < 1) (he0 : 0 < e) (he1 : e < 1) :
    ProperCrossR (qStart ak bl t e) (qEnd ak bl t e) 0 bl := by
  have hc : 0 < cross ak bl * cross ak bl := mul_self_pos.mpr h
  have het : 0 < e * t := mul_pos he0 ht0
  have het1 : e * t < 1 := by nlinarith
  constructor
  · rw [orientR_Q_start, orientR_Q_bl']
    nlinarith [mul_pos (mul_pos het (by linarith : (0:ℝ) < 1 - e * t)) hc]
  · rw [orientR_O_qStart, orientR_O_qEnd]
    nlinarith [mul_pos (mul_pos he0 (by linarith : (0:ℝ) < 1 - e)) hc]

/-- **A cone point avoiding every bad ray.**  For any finite family `B` of
nonzero vectors — in the application, the `Q`-rays whose lines could absorb the
moved apex — some `t ∈ (0,1)` makes `E(t)` parallel to **none** of them.

The key step is that a `b ∈ B` can only exclude a `t` at all if
`cross b_l b ≠ 0`; when `cross b_l b = 0`, `parallel_trans` forces
`cross a_k b ≠ 0`, and then `cross (E t) b = −cross a_k b` is nonzero for
*every* `t`. -/
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
  · -- `b` is parallel to `b_l`, hence not to `a_k`
    rw [hbl, mul_zero, zero_sub, neg_eq_zero] at hz
    exact h (parallel_trans (hB b hb)
      (show cross b ak = 0 by simp only [cross] at hz ⊢; linarith)
      (show cross b bl = 0 by simp only [cross] at hbl ⊢; linarith))
  · refine hnot ?_
    rw [Finset.mem_coe, hbad]
    refine Finset.mem_image.mpr ⟨b, hb, ?_⟩
    rw [if_neg hbl, eq_comm, eq_div_iff hbl]
    linarith

#print axioms properCrossR_cone
#print axioms exists_cone_t_avoiding

/-- **§9.1's direction, with both requirements at once.**  A single cone point
`E(t)` that

* creates a **proper crossing** at the apex for every `ε ∈ (0,1)`, and
* is parallel to **none** of a prescribed finite family of nonzero vectors —
  in the application, the `Q`-rays whose lines would absorb the moved apex and
  destroy finiteness.

This is hypothesis **(E-exists)** and hypothesis **(Fin-pres)** together, which
is how §9.1 needs them: a direction satisfying one but not the other is
useless, and `R3.md`'s Finding R3-1 is exactly a direction that satisfies the
first and fails the second. -/
theorem exists_good_cone_direction {ak bl : ℝ × ℝ} (h : cross ak bl ≠ 0)
    (B : Finset (ℝ × ℝ)) (hB : ∀ b ∈ B, b ≠ 0) :
    ∃ t : ℝ, 0 < t ∧ t < 1 ∧
      (∀ b ∈ B, cross (Edir ak bl t) b ≠ 0) ∧
      ∀ e : ℝ, 0 < e → e < 1 →
        ProperCrossR (qStart ak bl t e) (qEnd ak bl t e) 0 bl := by
  obtain ⟨t, ht0, ht1, hav⟩ := exists_cone_t_avoiding h B hB
  exact ⟨t, ht0, ht1, hav, fun e he0 he1 => properCrossR_cone h ht0 ht1 he0 he1⟩

#print axioms exists_good_cone_direction

end E9Directions
end Heptagon
