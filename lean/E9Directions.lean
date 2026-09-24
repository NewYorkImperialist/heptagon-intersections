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
open Heptagon.AKR9 Heptagon.ResidualSym

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

/-! ## 7. At an actual coincidence of a `Pair9`

Everything above is in apex-origin coordinates. `ProperCrossR` is translation
invariant, so it transfers to a coincidence `P_i = Q_j` of a real
configuration without any further geometry. -/

theorem orientR_translate (a b c v : ℝ × ℝ) :
    orientR (a + v) (b + v) (c + v) = orientR a b c := by
  simp only [orientR, Prod.fst_add, Prod.snd_add]; ring

theorem properCrossR_translate (a b c d v : ℝ × ℝ) :
    ProperCrossR (a + v) (b + v) (c + v) (d + v) ↔ ProperCrossR a b c d := by
  simp only [ProperCrossR, orientR_translate]

/-- **§9.1's move at a real coincidence.**  If `P_i = Q_j` and the `P`-ray to
`P_{i+1}` is not parallel to the `Q`-ray to `Q_{j+1}`, then moving **only**
`P_i`, to `P_i + ε·E`, makes the moved `P`-side cross that `Q`-side properly —
for every `ε > 0`.

The direction is `E = Q_{j+1} − P_{i+1}`, about as explicit as one can be. -/
theorem coincidence_direction (R : Pair9) (i j : Fin 7)
    (hco : R.V (pP i) = R.V (pQ j))
    (hnp : cross (R.V (pP (i + 1)) - R.V (pP i)) (R.V (pQ (j + 1)) - R.V (pP i)) ≠ 0)
    {e : ℝ} (he : 0 < e) :
    ProperCrossR
      (qStart (R.V (pP (i + 1)) - R.V (pP i)) (R.V (pQ (j + 1)) - R.V (pP i)) 1 e
        + R.V (pP i))
      (R.V (pP (i + 1))) (R.V (pQ j)) (R.V (pQ (j + 1))) := by
  have h1 := (properCrossR_translate
    (qStart (R.V (pP (i + 1)) - R.V (pP i)) (R.V (pQ (j + 1)) - R.V (pP i)) 1 e)
    (qEnd (R.V (pP (i + 1)) - R.V (pP i))) 0
    (R.V (pQ (j + 1)) - R.V (pP i)) (R.V (pP i))).mpr
      (properCrossR_of_cross_ne hnp he)
  have e1 : qEnd (R.V (pP (i + 1)) - R.V (pP i)) + R.V (pP i) = R.V (pP (i + 1)) := by
    simp [qEnd]
  have e2 : (0 : ℝ × ℝ) + R.V (pP i) = R.V (pQ j) := by rw [zero_add, hco]
  have e3 : R.V (pQ (j + 1)) - R.V (pP i) + R.V (pP i) = R.V (pQ (j + 1)) := by simp
  rw [e1, e2, e3] at h1
  exact h1

#print axioms properCrossR_translate
#print axioms coincidence_direction

/-! ## 8. The move on a whole configuration

§9.1's move displaces **one** vertex. That makes it a linear perturbation, so
the same route as §9.2's shift applies: simplicity survives, `Q` is untouched,
and the result is a `Pair9`. -/

/-- The displacement field of §9.1's move: `E` at the apex, zero elsewhere. -/
def moveField (i : Fin 7) (E : ℝ × ℝ) : Fin 7 → ℝ × ℝ :=
  fun k => if k = i then E else 0

/-- §9.1's move on a fourteen-vertex configuration: only `P_i` moves. -/
def moveV (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (E : ℝ × ℝ) (e : ℝ) : Fin 14 → ℝ × ℝ :=
  fun k => if k = pP i then V k + e • E else V k

theorem moveV_Q (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (E : ℝ × ℝ) (e : ℝ) (j : Fin 7) :
    moveV V i E e (pQ j) = V (pQ j) := by
  simp only [moveV]
  rw [if_neg (pP_ne_pQ i j).symm]

theorem moveV_apex (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (E : ℝ × ℝ) (e : ℝ) :
    moveV V i E e (pP i) = V (pP i) + e • E := by
  simp [moveV]

theorem moveV_pP (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (E : ℝ × ℝ) (e : ℝ) (k : Fin 7) :
    moveV V i E e (pP k) = (fun m => V (pP m) + e • moveField i E m) k := by
  simp only [moveV, moveField]
  by_cases h : k = i
  · subst h; simp
  · rw [if_neg (fun hc => h (Pair9Shift.pP_inj hc)), if_neg h]
    simp

/-- **The coincidence is removed.**  Trivial, but it is the point of the move. -/
theorem moveV_ne_of_coincidence {V : Fin 14 → ℝ × ℝ} {i j : Fin 7} {E : ℝ × ℝ} {e : ℝ}
    (hco : V (pP i) = V (pQ j)) (hE : E ≠ 0) (he : e ≠ 0) :
    moveV V i E e (pP i) ≠ moveV V i E e (pQ j) := by
  rw [moveV_apex, moveV_Q, ← hco]
  intro h
  have : e • E = 0 := by
    have := congrArg (fun x : ℝ × ℝ => x - V (pP i)) h
    simpa using this
  rcases smul_eq_zero.mp this with h' | h'
  · exact he h'
  · exact hE h'

/-- **The move preserves simplicity for all small `ε`.** -/
theorem exists_eps0_simpleClosed_move (W : Fin 7 → ℝ × ℝ) (hW : AKR9.SimpleClosed W)
    (i : Fin 7) (E : ℝ × ℝ) :
    ∃ e₀ : ℝ, 0 < e₀ ∧ ∀ e : ℝ, |e| ≤ e₀ →
      AKR9.SimpleClosed (fun k => W k + e • moveField i E k) := by
  rw [Pair9Shift.akr9_simpleClosed_iff] at hW
  obtain ⟨e₀, he₀, h⟩ :=
    SimplicityStable.heptagon_simplicity_stable_linear
      (EP := moveField i E) (EQ := moveField i E) hW hW
  refine ⟨e₀, he₀, fun e he => ?_⟩
  rw [Pair9Shift.akr9_simpleClosed_iff]
  exact (h e he).1

/-- **The move carries a `Pair9` to a `Pair9`.** -/
theorem exists_moved_pair9 (R : Pair9) (i : Fin 7) (E : ℝ × ℝ) :
    ∃ e₀ : ℝ, 0 < e₀ ∧ ∀ e : ℝ, |e| ≤ e₀ →
      ∃ R' : Pair9, R'.V = moveV R.V i E e := by
  obtain ⟨e₀, he₀, hsimp⟩ :=
    exists_eps0_simpleClosed_move (fun m => R.V (pP m)) R.simpleP i E
  refine ⟨e₀, he₀, fun e he => ⟨⟨moveV R.V i E e, ?_, ?_⟩, rfl⟩⟩
  · have := hsimp e he
    simpa only [← moveV_pP] using this
  · have hEq : (fun k : Fin 7 => moveV R.V i E e (pQ k)) = fun k => R.V (pQ k) := by
      funext k; exact moveV_Q R.V i E e k
    rw [hEq]; exact R.simpleQ

#print axioms moveV_Q
#print axioms moveV_ne_of_coincidence
#print axioms exists_moved_pair9

/-! ## 9. The move preserves the order type

One moving vertex makes every determinant **affine** in `ε` — even more
directly than §9.2's shift, where two vertices move and the `δ²` term cancels
only because they move by the same vector. So the open-condition argument
applies verbatim. -/

theorem moveV_eq_add_smul (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (E : ℝ × ℝ) (e : ℝ)
    (k : Fin 14) :
    moveV V i E e k = V k + (e * (if k = pP i then 1 else 0)) • E := by
  simp only [moveV]
  split_ifs with h
  · simp
  · simp

theorem orientR_moveV_affine (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (E : ℝ × ℝ) (e : ℝ)
    (a b c : Fin 14) :
    orientR (moveV V i E e a) (moveV V i E e b) (moveV V i E e c)
      = orientR (V a) (V b) (V c)
        + e * Pair9Shift.dcoef (V a) (V b) (V c) E
            (if a = pP i then 1 else 0) (if b = pP i then 1 else 0)
            (if c = pP i then 1 else 0) := by
  rw [moveV_eq_add_smul, moveV_eq_add_smul, moveV_eq_add_smul,
    Pair9Shift.orientR_shift_affine]

/-- **The order type is preserved.** -/
theorem exists_eps0_order_type (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (E : ℝ × ℝ) :
    ∃ e₀ : ℝ, 0 < e₀ ∧ ∀ e : ℝ, |e| < e₀ → ∀ a b c : Fin 14,
      orientR (V a) (V b) (V c) ≠ 0 →
        0 < orientR (V a) (V b) (V c) *
            orientR (moveV V i E e a) (moveV V i E e b) (moveV V i E e c) := by
  classical
  obtain ⟨e₀, he₀, h⟩ :=
    RotationLaw.exists_uniform_rotation
      (Finset.univ.filter
        (fun p : Fin 14 × Fin 14 × Fin 14 => orientR (V p.1) (V p.2.1) (V p.2.2) ≠ 0))
      (fun p => orientR (V p.1) (V p.2.1) (V p.2.2))
      (fun p => Pair9Shift.dcoef (V p.1) (V p.2.1) (V p.2.2) E
        (if p.1 = pP i then 1 else 0) (if p.2.1 = pP i then 1 else 0)
        (if p.2.2 = pP i then 1 else 0))
      (fun p hp => (Finset.mem_filter.mp hp).2)
  refine ⟨e₀, he₀, fun e he a b c habc => ?_⟩
  rw [orientR_moveV_affine]
  exact h e he (a, b, c) (Finset.mem_filter.mpr ⟨Finset.mem_univ _, habc⟩)

/-- **No proper crossing is lost**, and hence the crossing-pair count does not
drop. §9.1's move buys a *new* crossing at the apex without paying for it
anywhere else. -/
theorem crossPairsOf_mono_move (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (E : ℝ × ℝ) :
    ∃ e₀ : ℝ, 0 < e₀ ∧ ∀ e : ℝ, |e| < e₀ →
      RealPerturb.crossPairsOf V ⊆ RealPerturb.crossPairsOf (moveV V i E e) := by
  obtain ⟨e₀, he₀, h⟩ := exists_eps0_order_type V i E
  refine ⟨e₀, he₀, fun e he p hp => ?_⟩
  simp only [RealPerturb.crossPairsOf, Finset.mem_filter, Finset.mem_univ,
    true_and] at hp ⊢
  obtain ⟨h1, h2⟩ := hp
  have n1 : orientR (V (pP p.1)) (V (pP (p.1 + 1))) (V (pQ p.2)) ≠ 0 := fun hz => by
    rw [hz, zero_mul] at h1; exact lt_irrefl 0 h1
  have n2 : orientR (V (pP p.1)) (V (pP (p.1 + 1))) (V (pQ (p.2 + 1))) ≠ 0 := fun hz => by
    rw [hz, mul_zero] at h1; exact lt_irrefl 0 h1
  have n3 : orientR (V (pQ p.2)) (V (pQ (p.2 + 1))) (V (pP p.1)) ≠ 0 := fun hz => by
    rw [hz, zero_mul] at h2; exact lt_irrefl 0 h2
  have n4 : orientR (V (pQ p.2)) (V (pQ (p.2 + 1))) (V (pP (p.1 + 1))) ≠ 0 := fun hz => by
    rw [hz, mul_zero] at h2; exact lt_irrefl 0 h2
  exact ⟨RotationLaw.prod_neg_of_signs (h e he _ _ _ n1) (h e he _ _ _ n2) h1,
         RotationLaw.prod_neg_of_signs (h e he _ _ _ n3) (h e he _ _ _ n4) h2⟩

#print axioms orientR_moveV_affine
#print axioms exists_eps0_order_type
#print axioms crossPairsOf_mono_move

/-! ## 10. The move strictly increases the crossing count

At the coincidence itself the pair `(i, j)` is **not** a proper crossing —
`P_i = Q_j` makes a determinant vanish. After the move it is. Combined with
§9 above, where no old crossing is lost, the count strictly grows. -/

theorem succ_ne_self (i : Fin 7) : i + 1 ≠ i := by revert i; decide

theorem coincidence_not_mem_crossPairs (V : Fin 14 → ℝ × ℝ) {i j : Fin 7}
    (hco : V (pP i) = V (pQ j)) : (i, j) ∉ RealPerturb.crossPairsOf V := by
  simp only [RealPerturb.crossPairsOf, Finset.mem_filter, Finset.mem_univ, true_and]
  refine Pair9Shift.not_properCrossR_of_left_zero ?_
  rw [← hco]
  simp only [orientR]; ring

/-- **§9.1's move buys a crossing and pays nothing.**  At a coincidence whose
`P`- and `Q`-rays are not parallel, some arbitrarily small nonzero move of
`P_i` alone yields a `Pair9` in which

* the coincidence is gone, and
* the crossing-pair count is **strictly larger**.

The gain is the pair `(i, j)` itself, which could not have been a crossing
before: `P_i = Q_j` forces one of its determinants to vanish. -/
theorem crossPairs_card_lt_move (R : Pair9) (i j : Fin 7)
    (hco : R.V (pP i) = R.V (pQ j))
    (hnp : cross (R.V (pP (i + 1)) - R.V (pP i)) (R.V (pQ (j + 1)) - R.V (pP i)) ≠ 0)
    {e₁ : ℝ} (he₁ : 0 < e₁) :
    ∃ e : ℝ, 0 < e ∧ e < e₁ ∧
      (RealPerturb.crossPairsOf R.V).card
        < (RealPerturb.crossPairsOf
            (moveV R.V i (R.V (pQ (j + 1)) - R.V (pP (i + 1))) e)).card := by
  classical
  set E := R.V (pQ (j + 1)) - R.V (pP (i + 1)) with hE
  obtain ⟨e₀, he₀, hmono⟩ := crossPairsOf_mono_move R.V i E
  refine ⟨min e₀ e₁ / 2, by positivity, by
    have : min e₀ e₁ ≤ e₁ := min_le_right _ _
    linarith [lt_min he₀ he₁], ?_⟩
  set e := min e₀ e₁ / 2 with he
  have hepos : 0 < e := by
    have := lt_min he₀ he₁; rw [he]; linarith
  have heabs : |e| < e₀ := by
    rw [abs_of_pos hepos, he]
    have := lt_min he₀ he₁
    have h2 : min e₀ e₁ ≤ e₀ := min_le_left _ _
    linarith
  refine Finset.card_lt_card ((Finset.ssubset_iff_of_subset (hmono e heabs)).mpr
    ⟨(i, j), ?_, coincidence_not_mem_crossPairs R.V hco⟩)
  -- the apex pair crosses after the move
  simp only [RealPerturb.crossPairsOf, Finset.mem_filter, Finset.mem_univ, true_and]
  have hfar : moveV R.V i E e (pP (i + 1)) = R.V (pP (i + 1)) := by
    simp only [moveV]
    rw [if_neg (fun hc => succ_ne_self i (Pair9Shift.pP_inj hc))]
  rw [moveV_apex, hfar, moveV_Q, moveV_Q]
  have hmain := coincidence_direction R i j hco hnp hepos
  have hq : qStart (R.V (pP (i + 1)) - R.V (pP i)) (R.V (pQ (j + 1)) - R.V (pP i)) 1 e
        + R.V (pP i) = R.V (pP i) + e • E := by
    simp only [qStart, hE, one_mul, Prod.ext_iff, Prod.fst_add, Prod.snd_add,
      Prod.fst_sub, Prod.snd_sub, Prod.smul_fst, Prod.smul_snd, smul_eq_mul]
    constructor <;> ring
  rwa [hq] at hmain

#print axioms coincidence_not_mem_crossPairs
#print axioms crossPairs_card_lt_move

/-! ## 11. Iterating: every coincidence at `P_i` goes at once

The coincidences are `(P`-index, `Q`-index`)` pairs. Moving `P_i` cannot touch
a coincidence at another `P`-vertex, and it clears **every** coincidence at
`P_i` simultaneously — because for a fixed `Q_m`, the equation
`P_i + εE = Q_m` is affine in `ε` with slope `E ≠ 0`, so it has at most one
root. Finitely many roots, all avoidable. -/

noncomputable def coincSet (V : Fin 14 → ℝ × ℝ) : Finset (Fin 7 × Fin 7) :=
  Finset.univ.filter (fun p => V (pP p.1) = V (pQ p.2))

/-- **A move that clears every coincidence at `P_i`.** -/
theorem exists_eps_clearing_apex (V : Fin 14 → ℝ × ℝ) (i : Fin 7) {E : ℝ × ℝ}
    (hE : E ≠ 0) {e₁ : ℝ} (he₁ : 0 < e₁) :
    ∃ e : ℝ, 0 < e ∧ e < e₁ ∧ ∀ m : Fin 7, moveV V i E e (pP i) ≠ V (pQ m) := by
  classical
  have hcase : E.1 ≠ 0 ∨ E.2 ≠ 0 := by
    by_contra hc
    push_neg at hc
    exact hE (Prod.ext hc.1 hc.2)
  rcases hcase with hE1 | hE2
  · obtain ⟨e, ⟨hpos, hlt⟩, hnot⟩ :=
      ((Set.Ioo_infinite he₁).diff
        (Finset.univ.image
          (fun m : Fin 7 => ((V (pQ m)).1 - (V (pP i)).1) / E.1)).finite_toSet).nonempty
    refine ⟨e, hpos, hlt, fun m hc => hnot ?_⟩
    rw [show moveV V i E e (pP i) = V (pP i) + e • E from moveV_apex V i E e] at hc
    have h1 : (V (pP i)).1 + e * E.1 = (V (pQ m)).1 := congrArg Prod.fst hc
    exact Finset.mem_coe.mpr (Finset.mem_image.mpr ⟨m, Finset.mem_univ _, by
      field_simp; linarith⟩)
  · obtain ⟨e, ⟨hpos, hlt⟩, hnot⟩ :=
      ((Set.Ioo_infinite he₁).diff
        (Finset.univ.image
          (fun m : Fin 7 => ((V (pQ m)).2 - (V (pP i)).2) / E.2)).finite_toSet).nonempty
    refine ⟨e, hpos, hlt, fun m hc => hnot ?_⟩
    rw [show moveV V i E e (pP i) = V (pP i) + e • E from moveV_apex V i E e] at hc
    have h2 : (V (pP i)).2 + e * E.2 = (V (pQ m)).2 := congrArg Prod.snd hc
    exact Finset.mem_coe.mpr (Finset.mem_image.mpr ⟨m, Finset.mem_univ _, by
      field_simp; linarith⟩)

/-- **The coincidence count strictly decreases.**  The move clears every
coincidence at `P_i` and creates none anywhere, so the total drops. -/
theorem coincSet_card_lt (V : Fin 14 → ℝ × ℝ) (i j : Fin 7)
    (hij : (i, j) ∈ coincSet V) {E : ℝ × ℝ} (hE : E ≠ 0) {e₁ : ℝ} (he₁ : 0 < e₁) :
    ∃ e : ℝ, 0 < e ∧ e < e₁ ∧
      (coincSet (moveV V i E e)).card < (coincSet V).card := by
  classical
  obtain ⟨e, hpos, hlt, hclear⟩ := exists_eps_clearing_apex V i hE he₁
  refine ⟨e, hpos, hlt, ?_⟩
  have hsub : coincSet (moveV V i E e) ⊆ coincSet V := by
    intro p hp
    simp only [coincSet, Finset.mem_filter, Finset.mem_univ, true_and] at hp ⊢
    by_cases h : p.1 = i
    · subst h
      exact absurd (by rw [moveV_Q] at hp; exact hp) (hclear p.2)
    · rw [moveV_Q] at hp
      have : moveV V i E e (pP p.1) = V (pP p.1) := by
        simp only [moveV]
        rw [if_neg (fun hc => h (Pair9Shift.pP_inj hc))]
      rwa [this] at hp
  have hgone : (i, j) ∉ coincSet (moveV V i E e) := by
    simp only [coincSet, Finset.mem_filter, Finset.mem_univ, true_and]
    rw [moveV_Q]
    exact hclear j
  exact RotationLaw.degeneracy_monovariant hsub hij hgone

#print axioms exists_eps_clearing_apex
#print axioms coincSet_card_lt

/-! ## 12. §9.1's procedure: iterating to a coincidence-free pair

Exactly the shape of §9.2's, and for the same reasons: each move keeps the
configuration a `Pair9`, strictly decreases the monovariant, and preserves the
crossing pairs. -/

theorem e_ne_zero : ((1 : ℝ), (0 : ℝ)) ≠ 0 := by
  simp [Prod.ext_iff]

/-- One §9.1 move, on a `Pair9`, with the crossings carried. -/
theorem pair9_coincSet_card_lt (R : Pair9) (i j : Fin 7)
    (hij : (i, j) ∈ coincSet R.V) :
    ∃ (e : ℝ) (R' : Pair9), R'.V = moveV R.V i (1, 0) e ∧
      (coincSet R'.V).card < (coincSet R.V).card ∧
      RealPerturb.crossPairsOf R.V ⊆ RealPerturb.crossPairsOf R'.V := by
  obtain ⟨e₁, h₁, hsimp⟩ :=
    exists_eps0_simpleClosed_move (fun m => R.V (pP m)) R.simpleP i (1, 0)
  obtain ⟨e₂, h₂, hmono⟩ := crossPairsOf_mono_move R.V i (1, 0)
  obtain ⟨e, hepos, helt, hcard⟩ :=
    coincSet_card_lt R.V i j hij e_ne_zero (lt_min h₁ h₂)
  have hd1 : |e| ≤ e₁ := by
    rw [abs_of_pos hepos]
    exact le_of_lt (lt_of_lt_of_le helt (min_le_left _ _))
  have hd2 : |e| < e₂ := by
    rw [abs_of_pos hepos]; exact lt_of_lt_of_le helt (min_le_right _ _)
  have hP : AKR9.SimpleClosed (fun k : Fin 7 => moveV R.V i (1, 0) e (pP k)) := by
    simpa only [← moveV_pP] using hsimp e hd1
  have hQ : AKR9.SimpleClosed (fun k : Fin 7 => moveV R.V i (1, 0) e (pQ k)) := by
    have hEq : (fun k : Fin 7 => moveV R.V i (1, 0) e (pQ k)) = fun k => R.V (pQ k) := by
      funext k; exact moveV_Q R.V i (1, 0) e k
    rw [hEq]; exact R.simpleQ
  exact ⟨e, ⟨moveV R.V i (1, 0) e, hP, hQ⟩, rfl, hcard, hmono e hd2⟩

/-- Reachability by §9.1 moves, carrying preservation of the crossing pairs. -/
inductive ReachMove : Pair9 → Pair9 → Prop
  | refl (R : Pair9) : ReachMove R R
  | head {R R' R'' : Pair9} :
      (∃ (i : Fin 7) (E : ℝ × ℝ) (e : ℝ), R'.V = moveV R.V i E e) →
        RealPerturb.crossPairsOf R.V ⊆ RealPerturb.crossPairsOf R'.V →
        ReachMove R' R'' → ReachMove R R''

theorem reachMove_crossPairs_mono {R R' : Pair9} (h : ReachMove R R') :
    RealPerturb.crossPairsOf R.V ⊆ RealPerturb.crossPairsOf R'.V := by
  induction h with
  | refl _ => exact Finset.Subset.refl _
  | head _ hmono _ ih => exact hmono.trans ih

theorem exists_reachMove_coincSet_empty :
    ∀ (n : ℕ) (R : Pair9), (coincSet R.V).card = n →
      ∃ R' : Pair9, ReachMove R R' ∧ coincSet R'.V = ∅ := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    intro R hn
    by_cases h : coincSet R.V = ∅
    · exact ⟨R, ReachMove.refl R, h⟩
    · obtain ⟨p, hp⟩ := Finset.nonempty_iff_ne_empty.mpr h
      obtain ⟨e, R', hRV, hlt, hmono⟩ := pair9_coincSet_card_lt R p.1 p.2 hp
      obtain ⟨R'', hreach, hclear⟩ := ih (coincSet R'.V).card (hn ▸ hlt) R' rfl
      exact ⟨R'', ReachMove.head ⟨p.1, (1, 0), e, hRV⟩ hmono hreach, hclear⟩

/-- **§9.1's output.**  From any `Pair9`, finitely many single-vertex moves
reach a `Pair9` with **no vertex–vertex coincidence** and at least as many
crossing pairs.

This is `(G1)` together with the half of `(G2)` that says the count does not
drop — for the pair count. No `(Fin)`, no general position, only simplicity. -/
theorem exists_coincidence_free (R : Pair9) :
    ∃ R' : Pair9, coincSet R'.V = ∅ ∧
      (RealPerturb.crossPairsOf R.V).card ≤ (RealPerturb.crossPairsOf R'.V).card := by
  obtain ⟨R', hreach, hclear⟩ := exists_reachMove_coincSet_empty _ R rfl
  exact ⟨R', hclear, Finset.card_le_card (reachMove_crossPairs_mono hreach)⟩

#print axioms pair9_coincSet_card_lt
#print axioms exists_coincidence_free

/-! ## 13. The interleaving: §9.2's shift does not undo §9.1

The obvious worry about running the two sections in sequence is that §9.2's
shift moves `P`-vertices, so it could **recreate** a vertex–vertex coincidence
that §9.1 removed. AKR run the two in sequence without remarking on it.

It is a finite avoidance, like everything else here. For a fixed `Q_m` the
condition `P_k + δ·w = Q_m` is affine in `δ` with slope `w = tilt u t ≠ 0`, so
it has at most one root; the vertices §9.2 does *not* move are already clear by
hypothesis. -/

theorem tilt_ne_zero {u : ℝ × ℝ} (hu : u ≠ 0) (t : ℝ) :
    RotationLaw.tilt u t ≠ 0 := by
  intro h
  refine RotationLaw.cross_tilt_self hu t ?_
  rw [h]
  simp [cross]

/-- **A shift that keeps the configuration coincidence-free.** -/
theorem exists_delta_preserving_coincFree (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ)
    (hu : V (pP (i + 1)) - V (pP i) ≠ 0) (hfree : coincSet V = ∅)
    {δ₁ : ℝ} (hδ₁ : 0 < δ₁) :
    ∃ δ : ℝ, 0 < δ ∧ δ < δ₁ ∧ coincSet (RotationLaw.shiftV V i t δ) = ∅ := by
  classical
  set w := RotationLaw.tilt (V (pP (i + 1)) - V (pP i)) t with hw
  have hwne : w ≠ 0 := tilt_ne_zero hu t
  have hcase : w.1 ≠ 0 ∨ w.2 ≠ 0 := by
    by_contra hc
    push_neg at hc
    exact hwne (Prod.ext hc.1 hc.2)
  -- the bad shifts, one per (moved vertex, Q-vertex) pair
  have key : ∀ (bad : Finset ℝ),
      (∀ δ : ℝ, δ ∉ bad → ∀ k m : Fin 7,
        RotationLaw.shiftV V i t δ (pP k) ≠ V (pQ m)) →
      ∃ δ : ℝ, 0 < δ ∧ δ < δ₁ ∧ coincSet (RotationLaw.shiftV V i t δ) = ∅ := by
    intro bad hbad
    obtain ⟨δ, ⟨hpos, hlt⟩, hnot⟩ :=
      ((Set.Ioo_infinite hδ₁).diff bad.finite_toSet).nonempty
    refine ⟨δ, hpos, hlt, ?_⟩
    rw [Finset.eq_empty_iff_forall_notMem]
    intro p hp
    simp only [coincSet, Finset.mem_filter, Finset.mem_univ, true_and] at hp
    rw [RotationLaw.shiftV_Q] at hp
    exact hbad δ (fun hc => hnot (Finset.mem_coe.mpr hc)) p.1 p.2 hp
  rcases hcase with hw1 | hw2
  · refine key (Finset.univ.image
      (fun q : Fin 7 × Fin 7 => ((V (pQ q.2)).1 - (V (pP q.1)).1) / w.1)) ?_
    intro δ hδ k m hc
    by_cases hmv : pP k = pP i ∨ pP k = pP (i + 1)
    · rw [RotationLaw.shiftV, if_pos hmv] at hc
      have h1 : (V (pP k)).1 + δ * w.1 = (V (pQ m)).1 := by
        have := congrArg Prod.fst hc
        simpa [RotationLaw.mov, hw] using this
      exact hδ (Finset.mem_image.mpr ⟨(k, m), Finset.mem_univ _, by
        field_simp; linarith⟩)
    · rw [RotationLaw.shiftV, if_neg hmv] at hc
      rw [Finset.eq_empty_iff_forall_notMem] at hfree
      exact hfree (k, m) (by
        simp only [coincSet, Finset.mem_filter, Finset.mem_univ, true_and]; exact hc)
  · refine key (Finset.univ.image
      (fun q : Fin 7 × Fin 7 => ((V (pQ q.2)).2 - (V (pP q.1)).2) / w.2)) ?_
    intro δ hδ k m hc
    by_cases hmv : pP k = pP i ∨ pP k = pP (i + 1)
    · rw [RotationLaw.shiftV, if_pos hmv] at hc
      have h2 : (V (pP k)).2 + δ * w.2 = (V (pQ m)).2 := by
        have := congrArg Prod.snd hc
        simpa [RotationLaw.mov, hw] using this
      exact hδ (Finset.mem_image.mpr ⟨(k, m), Finset.mem_univ _, by
        field_simp; linarith⟩)
    · rw [RotationLaw.shiftV, if_neg hmv] at hc
      rw [Finset.eq_empty_iff_forall_notMem] at hfree
      exact hfree (k, m) (by
        simp only [coincSet, Finset.mem_filter, Finset.mem_univ, true_and]; exact hc)

#print axioms exists_delta_preserving_coincFree

/-! ## 14. Composing: one shift that clears a degeneracy **and** keeps the
coincidences away

`exists_delta_preserving_coincFree` chooses its own `δ`; to compose it with
§9.2's degeneracy step the two must agree. So the coincidence obligation is
re-stated as the **bad set** it really is, and handed to
`Pair9Shift.degSet_card_lt_avoiding`. -/

/-- The coincidence obligation as a finite set of forbidden shifts. -/
theorem exists_coinc_bad_set (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ)
    (hu : V (pP (i + 1)) - V (pP i) ≠ 0) (hfree : coincSet V = ∅) :
    ∃ bad : Finset ℝ, ∀ δ : ℝ, δ ∉ bad →
      coincSet (RotationLaw.shiftV V i t δ) = ∅ := by
  classical
  set w := RotationLaw.tilt (V (pP (i + 1)) - V (pP i)) t with hw
  have hwne : w ≠ 0 := tilt_ne_zero hu t
  have hcase : w.1 ≠ 0 ∨ w.2 ≠ 0 := by
    by_contra hc
    push_neg at hc
    exact hwne (Prod.ext hc.1 hc.2)
  have main : ∀ (bad : Finset ℝ),
      (∀ δ : ℝ, δ ∉ bad → ∀ k m : Fin 7,
        RotationLaw.shiftV V i t δ (pP k) ≠ V (pQ m)) →
      ∀ δ : ℝ, δ ∉ bad → coincSet (RotationLaw.shiftV V i t δ) = ∅ := by
    intro bad hbad δ hδ
    rw [Finset.eq_empty_iff_forall_notMem]
    intro p hp
    simp only [coincSet, Finset.mem_filter, Finset.mem_univ, true_and] at hp
    rw [RotationLaw.shiftV_Q] at hp
    exact hbad δ hδ p.1 p.2 hp
  rcases hcase with hw1 | hw2
  · refine ⟨Finset.univ.image
      (fun q : Fin 7 × Fin 7 => ((V (pQ q.2)).1 - (V (pP q.1)).1) / w.1),
      main _ ?_⟩
    intro δ hδ k m hc
    by_cases hmv : pP k = pP i ∨ pP k = pP (i + 1)
    · rw [RotationLaw.shiftV, if_pos hmv] at hc
      have h1 : (V (pP k)).1 + δ * w.1 = (V (pQ m)).1 := by
        have := congrArg Prod.fst hc
        simpa [RotationLaw.mov, hw] using this
      exact hδ (Finset.mem_image.mpr ⟨(k, m), Finset.mem_univ _, by
        field_simp; linarith⟩)
    · rw [RotationLaw.shiftV, if_neg hmv] at hc
      rw [Finset.eq_empty_iff_forall_notMem] at hfree
      exact hfree (k, m) (by
        simp only [coincSet, Finset.mem_filter, Finset.mem_univ, true_and]; exact hc)
  · refine ⟨Finset.univ.image
      (fun q : Fin 7 × Fin 7 => ((V (pQ q.2)).2 - (V (pP q.1)).2) / w.2),
      main _ ?_⟩
    intro δ hδ k m hc
    by_cases hmv : pP k = pP i ∨ pP k = pP (i + 1)
    · rw [RotationLaw.shiftV, if_pos hmv] at hc
      have h2 : (V (pP k)).2 + δ * w.2 = (V (pQ m)).2 := by
        have := congrArg Prod.snd hc
        simpa [RotationLaw.mov, hw] using this
      exact hδ (Finset.mem_image.mpr ⟨(k, m), Finset.mem_univ _, by
        field_simp; linarith⟩)
    · rw [RotationLaw.shiftV, if_neg hmv] at hc
      rw [Finset.eq_empty_iff_forall_notMem] at hfree
      exact hfree (k, m) (by
        simp only [coincSet, Finset.mem_filter, Finset.mem_univ, true_and]; exact hc)

/-- **§9.2's step, run inside §9.1's output.**  One shift that strictly
decreases the degeneracy count **and** leaves the configuration
coincidence-free. This is the two-phase composition, at the level of a single
step. -/
theorem degSet_step_preserving_coinc (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ)
    (hu : V (pP (i + 1)) - V (pP i) ≠ 0) (j₀ : Fin 7)
    (hj₀ : (i, j₀) ∈ Pair9Shift.degSetOf V) (hfree : coincSet V = ∅)
    {δtop : ℝ} (hδtop : 0 < δtop) :
    ∃ δ : ℝ, 0 < δ ∧ δ < δtop ∧
      (Pair9Shift.degSetOf (RotationLaw.shiftV V i t δ)).card
        < (Pair9Shift.degSetOf V).card ∧
      coincSet (RotationLaw.shiftV V i t δ) = ∅ := by
  obtain ⟨bad, hbad⟩ := exists_coinc_bad_set V i t hu hfree
  obtain ⟨δ, hpos, hlt, hav, hcard⟩ :=
    Pair9Shift.degSet_card_lt_avoiding V i t hu j₀ hj₀ bad hδtop
  exact ⟨δ, hpos, hlt, hcard, hbad δ hav⟩

#print axioms exists_coinc_bad_set
#print axioms degSet_step_preserving_coinc

/-! ## 15. The two phases, composed -/

/-- One §9.2 step on a coincidence-free `Pair9`, keeping it coincidence-free
and carrying the crossings. -/
theorem pair9_degStep_preserving_coinc (R : Pair9) (t : ℝ) (i j₀ : Fin 7)
    (hj₀ : (i, j₀) ∈ Pair9Shift.degSetOf R.V) (hfree : coincSet R.V = ∅) :
    ∃ (δ : ℝ) (R' : Pair9), R'.V = RotationLaw.shiftV R.V i t δ ∧
      (Pair9Shift.degSetOf R'.V).card < (Pair9Shift.degSetOf R.V).card ∧
      coincSet R'.V = ∅ ∧
      RealPerturb.crossPairsOf R.V ⊆ RealPerturb.crossPairsOf R'.V := by
  have hu : R.V (pP (i + 1)) - R.V (pP i) ≠ 0 :=
    sub_ne_zero.mpr (Ne.symm (R.simpleP.1 i))
  obtain ⟨δ₁, h₁, hsimp⟩ :=
    Pair9Shift.exists_delta0_simpleClosed (fun m => R.V (pP m)) R.simpleP i t
  obtain ⟨δ₂, h₂, hmono⟩ := Pair9Shift.crossPairsOf_mono_shift R.V i t
  obtain ⟨δ, hpos, hlt, hcard, hcoinc⟩ :=
    degSet_step_preserving_coinc R.V i t hu j₀ hj₀ hfree (lt_min h₁ h₂)
  have hd1 : |δ| ≤ δ₁ := by
    rw [abs_of_pos hpos]; exact le_of_lt (lt_of_lt_of_le hlt (min_le_left _ _))
  have hd2 : |δ| < δ₂ := by
    rw [abs_of_pos hpos]; exact lt_of_lt_of_le hlt (min_le_right _ _)
  have hP : AKR9.SimpleClosed
      (fun k : Fin 7 => RotationLaw.shiftV R.V i t δ (pP k)) := by
    simpa only [Pair9Shift.shiftV_pP] using hsimp δ hd1
  have hQ : AKR9.SimpleClosed
      (fun k : Fin 7 => RotationLaw.shiftV R.V i t δ (pQ k)) := by
    have hEq : (fun k : Fin 7 => RotationLaw.shiftV R.V i t δ (pQ k))
        = fun k => R.V (pQ k) := by
      funext k; exact RotationLaw.shiftV_Q R.V i t δ k
    rw [hEq]; exact R.simpleQ
  exact ⟨δ, ⟨RotationLaw.shiftV R.V i t δ, hP, hQ⟩, rfl, hcard, hcoinc, hmono δ hd2⟩

/-- **Phases 1 and 2 composed.**  From a coincidence-free `Pair9`, finitely
many tilted shifts reach one that is **both** coincidence-free and free of
`Q`-vertices on `P`-side lines, with at least as many crossing pairs. -/
theorem exists_degFree_of_coincFree (t : ℝ) :
    ∀ (n : ℕ) (R : Pair9), coincSet R.V = ∅ → (Pair9Shift.degSetOf R.V).card = n →
      ∃ R' : Pair9, Pair9Shift.degSetOf R'.V = ∅ ∧ coincSet R'.V = ∅ ∧
        (RealPerturb.crossPairsOf R.V).card ≤ (RealPerturb.crossPairsOf R'.V).card := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    intro R hfree hn
    by_cases h : Pair9Shift.degSetOf R.V = ∅
    · exact ⟨R, h, hfree, le_rfl⟩
    · obtain ⟨p, hp⟩ := Finset.nonempty_iff_ne_empty.mpr h
      obtain ⟨δ, R', hRV, hlt, hcoinc, hmono⟩ :=
        pair9_degStep_preserving_coinc R t p.1 p.2 hp hfree
      obtain ⟨R'', hclear, hfree'', hcard⟩ :=
        ih (Pair9Shift.degSetOf R'.V).card (hn ▸ hlt) R' hcoinc rfl
      exact ⟨R'', hclear, hfree'', le_trans (Finset.card_le_card hmono) hcard⟩

/-- **Both phases, from an arbitrary `Pair9`.**  §9.1 then §9.2, composed: no
vertex–vertex coincidence, no `Q`-vertex on a `P`-side line, and the crossing
count never dropped. -/
theorem exists_coincFree_degFree (R : Pair9) (t : ℝ) :
    ∃ R' : Pair9, coincSet R'.V = ∅ ∧ Pair9Shift.degSetOf R'.V = ∅ ∧
      (RealPerturb.crossPairsOf R.V).card ≤ (RealPerturb.crossPairsOf R'.V).card := by
  obtain ⟨R₁, hc₁, hcard₁⟩ := exists_coincidence_free R
  obtain ⟨R₂, hd₂, hc₂, hcard₂⟩ := exists_degFree_of_coincFree t _ R₁ hc₁ rfl
  exact ⟨R₂, hc₂, hd₂, le_trans hcard₁ hcard₂⟩

#print axioms pair9_degStep_preserving_coinc
#print axioms exists_coincFree_degFree

/-! ## 16. The move's rate coefficients

§9.2's development rests on the shift displacing vertices along a **common
direction**, making every orientation determinant affine in the shift size.
§9.1's move is the same kind of object — it displaces a *single* vertex along
`E` — and `orientR_moveV_affine` (§7) already records that.  What §9.2 also
needed, and this section supplies on the move side, are the **named rates**:
one per side, so the degeneracy bookkeeping can be stated.

This is what makes the joint-measure treatment available here. -/

/-- The rate of a `P`-side determinant under the move. -/
noncomputable def moveCoef (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (E : ℝ × ℝ) (k : Fin 7)
    (a : Fin 14) : ℝ :=
  Pair9Shift.dcoef (V (pP k)) (V (pP (k + 1))) (V a) E
    (if pP k = pP i then 1 else 0) (if pP (k + 1) = pP i then 1 else 0)
    (if a = pP i then 1 else 0)

/-- The rate of a `Q`-side determinant under the move. -/
noncomputable def moveCoefQ (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (E : ℝ × ℝ) (m : Fin 7)
    (a : Fin 14) : ℝ :=
  Pair9Shift.dcoef (V (pQ m)) (V (pQ (m + 1))) (V a) E
    (if pQ m = pP i then 1 else 0) (if pQ (m + 1) = pP i then 1 else 0)
    (if a = pP i then 1 else 0)

theorem orientR_move_Pside (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (E : ℝ × ℝ) (e : ℝ)
    (k : Fin 7) (a : Fin 14) :
    orientR (moveV V i E e (pP k)) (moveV V i E e (pP (k + 1))) (moveV V i E e a)
      = orientR (V (pP k)) (V (pP (k + 1))) (V a) + e * moveCoef V i E k a :=
  orientR_moveV_affine V i E e _ _ _

theorem orientR_move_Qside (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (E : ℝ × ℝ) (e : ℝ)
    (m : Fin 7) (a : Fin 14) :
    orientR (moveV V i E e (pQ m)) (moveV V i E e (pQ (m + 1))) (moveV V i E e a)
      = orientR (V (pQ m)) (V (pQ (m + 1))) (V a) + e * moveCoefQ V i E m a :=
  orientR_moveV_affine V i E e _ _ _

/-- **The `Q`-side rate, in closed form.**  Both `Q`-endpoints are fixed and the
only moving vertex is the apex, so the whole coefficient is one cross product —
the exact analogue of `Pair9Shift.coefQ_touchedP`. -/
theorem moveCoefQ_apex (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (E : ℝ × ℝ) (m : Fin 7) :
    moveCoefQ V i E m (pP i) = cross (V (pQ (m + 1)) - V (pQ m)) E := by
  have h0 : ¬ ((pQ m : Fin 14) = pP i) := fun h => pP_ne_pQ i m h.symm
  have h1 : ¬ ((pQ (m + 1) : Fin 14) = pP i) := fun h => pP_ne_pQ i (m + 1) h.symm
  unfold moveCoefQ Pair9Shift.dcoef
  rw [if_neg h0, if_neg h1, if_pos rfl]
  simp only [cross, Prod.fst_sub, Prod.snd_sub]
  ring

/-- The `P`-sides the move disturbs: side `i` (out of `P_i`) and side `i−1`
(into `P_i`).  Compare `Pair9Shift.touched`, which has **three** because the
shift moves two vertices. -/
def touchedMove (i : Fin 7) : Finset (Fin 7) := {i, i - 1}

theorem mem_touchedMove_iff (i k : Fin 7) :
    k ∈ touchedMove i ↔ (k = i ∨ k = i - 1) := by
  simp [touchedMove]

theorem moveV_pP_untouched (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (E : ℝ × ℝ) (e : ℝ)
    {k : Fin 7} (h : k ≠ i) : moveV V i E e (pP k) = V (pP k) := by
  simp only [moveV]
  exact if_neg (fun hc => h (Pair9Shift.pP_inj hc))

/-- **The rate on the outgoing side `i`.**  `P_i` is the side's *first*
endpoint, so the coefficient is `E × (P_{i+1} − a)`. -/
theorem moveCoef_self (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (E : ℝ × ℝ) (a : Fin 14)
    (ha : ¬ (a = pP i)) :
    moveCoef V i E i a = cross E (V (pP (i + 1)) - V a) := by
  have h1 : ¬ ((pP (i + 1) : Fin 14) = pP i) :=
    fun h => succ_ne_self i (Pair9Shift.pP_inj h)
  unfold moveCoef Pair9Shift.dcoef
  rw [if_pos rfl, if_neg h1, if_neg ha]
  simp only [cross, Prod.fst_sub, Prod.snd_sub]
  ring

/-- **The rate on the incoming side `i−1`.**  `P_i` is the side's *second*
endpoint, so the coefficient is `E × (a − P_{i−1})`. -/
theorem moveCoef_prev (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (E : ℝ × ℝ) (a : Fin 14)
    (ha : ¬ (a = pP i)) :
    moveCoef V i E (i - 1) a = cross E (V a - V (pP (i - 1))) := by
  have hi : i - 1 + 1 = i := by simp
  have h0 : ¬ ((pP (i - 1) : Fin 14) = pP i) := by
    intro h
    have he : i - 1 = i := Pair9Shift.pP_inj h
    have hi2 : i - 1 + 1 = i := by simp
    rw [he] at hi2
    exact succ_ne_self i hi2
  unfold moveCoef Pair9Shift.dcoef
  rw [hi, if_neg h0, if_pos rfl, if_neg ha]
  simp only [cross, Prod.fst_sub, Prod.snd_sub]
  ring

open scoped Classical in
/-- A `segDeg` entry on a `P`-side the move does not disturb is unchanged. -/
theorem segDeg_move_untouched_iff (R R' : Pair9) (i : Fin 7) (E : ℝ × ℝ) (e : ℝ)
    (hR' : R'.V = moveV R.V i E e) {k j : Fin 7} (hnt : k ∉ touchedMove i) :
    ((k, j) ∈ segDeg R' ↔ (k, j) ∈ segDeg R) := by
  classical
  have h1 : k ≠ i := fun hc => hnt (by rw [mem_touchedMove_iff]; exact Or.inl hc)
  have h2 : k ≠ i - 1 := fun hc => hnt (by rw [mem_touchedMove_iff]; exact Or.inr hc)
  have e1 : R'.V (pP k) = R.V (pP k) := by
    rw [hR']; exact moveV_pP_untouched R.V i E e h1
  have e2 : R'.V (pP (k + 1)) = R.V (pP (k + 1)) := by
    rw [hR']
    exact moveV_pP_untouched R.V i E e (fun hc => h2 (eq_sub_of_add_eq hc))
  have e3 : R'.V (pQ j) = R.V (pQ j) := by rw [hR']; exact moveV_Q R.V i E e j
  constructor <;> intro h <;>
    simp only [segDeg, Finset.mem_filter, Finset.mem_univ, true_and] at h ⊢ <;>
    simpa only [sideP9, e1, e2, e3] using h

open scoped Classical in
/-- A `segDegP` entry at a `P`-vertex other than the apex is unchanged. -/
theorem segDegP_move_untouched_iff (R R' : Pair9) (i : Fin 7) (E : ℝ × ℝ) (e : ℝ)
    (hR' : R'.V = moveV R.V i E e) {m v : Fin 7} (hnt : v ≠ i) :
    ((m, v) ∈ segDegP R' ↔ (m, v) ∈ segDegP R) := by
  classical
  have e1 : R'.V (pQ m) = R.V (pQ m) := by rw [hR']; exact moveV_Q R.V i E e m
  have e2 : R'.V (pQ (m + 1)) = R.V (pQ (m + 1)) := by
    rw [hR']; exact moveV_Q R.V i E e (m + 1)
  have e3 : R'.V (pP v) = R.V (pP v) := by
    rw [hR']; exact moveV_pP_untouched R.V i E e hnt
  constructor <;> intro h <;>
    simp only [segDegP, Finset.mem_filter, Finset.mem_univ, true_and] at h ⊢ <;>
    simpa only [sideQ9, e1, e2, e3] using h

/-! ### A direction avoiding finitely many bad ones

The move needs an `E` not parallel to any of a finite list of vectors.  The
tilt family `t ↦ tilt u t` is a one-parameter family of directions, never zero,
and each bad vector rules out at most one `t` — so `RotationLaw.exists_good_tilt`
supplies `E` here just as it supplied the tilt in §9.2. -/

/-- **A nonzero direction transverse to every nonzero vector of a finite
family.** -/
theorem exists_good_dir {ι : Type*} [DecidableEq ι] (S : Finset ι) (x : ι → ℝ × ℝ)
    {u : ℝ × ℝ} (hu : u ≠ 0) :
    ∃ E : ℝ × ℝ, E ≠ 0 ∧ ∀ k ∈ S, x k ≠ 0 → cross E (x k) ≠ 0 := by
  classical
  obtain ⟨t, -, h⟩ :=
    RotationLaw.exists_good_tilt (S.filter (fun k => x k ≠ 0)) hu x
      (fun k hk => (Finset.mem_filter.mp hk).2)
      ((Finset.range (S.card + 1)).image (fun n : ℕ => (n : ℝ)))
      (by
        rw [Finset.card_image_of_injective _ Nat.cast_injective, Finset.card_range]
        exact Nat.lt_succ_of_le (Finset.card_le_card (Finset.filter_subset _ _)))
  exact ⟨RotationLaw.tilt u t, tilt_ne_zero hu t,
    fun k hk hne => h k (Finset.mem_filter.mpr ⟨hk, hne⟩)⟩

/-- **A direction good for every rate the move at `P_i` can involve.**  The
twenty-one vectors are the seven `Q`-side directions and, for each `Q`-vertex,
the two segment directions along the incoming and outgoing `P`-sides. -/
theorem exists_good_dir_pair9 (R : Pair9) (i : Fin 7) :
    ∃ E : ℝ × ℝ, E ≠ 0 ∧
      (∀ m : Fin 7, R.V (pQ (m + 1)) - R.V (pQ m) ≠ 0 →
        cross E (R.V (pQ (m + 1)) - R.V (pQ m)) ≠ 0) ∧
      (∀ j : Fin 7, R.V (pP (i + 1)) - R.V (pQ j) ≠ 0 →
        cross E (R.V (pP (i + 1)) - R.V (pQ j)) ≠ 0) ∧
      (∀ j : Fin 7, R.V (pQ j) - R.V (pP (i - 1)) ≠ 0 →
        cross E (R.V (pQ j) - R.V (pP (i - 1))) ≠ 0) := by
  classical
  have hu : R.V (pP (i + 1)) - R.V (pP i) ≠ 0 :=
    sub_ne_zero.mpr (Ne.symm (R.simpleP.1 i))
  obtain ⟨E, hE, h⟩ :=
    exists_good_dir (Finset.univ : Finset (Fin 7 ⊕ (Fin 7 ⊕ Fin 7)))
      (Sum.elim (fun m : Fin 7 => R.V (pQ (m + 1)) - R.V (pQ m))
        (Sum.elim (fun j : Fin 7 => R.V (pP (i + 1)) - R.V (pQ j))
          (fun j : Fin 7 => R.V (pQ j) - R.V (pP (i - 1))))) hu
  exact ⟨E, hE,
    fun m hm => h (Sum.inl m) (Finset.mem_univ _) hm,
    fun j hj => h (Sum.inr (Sum.inl j)) (Finset.mem_univ _) hj,
    fun j hj => h (Sum.inr (Sum.inr j)) (Finset.mem_univ _) hj⟩

#print axioms exists_good_dir
#print axioms exists_good_dir_pair9

/-! ### The rates are nonzero where they must be

Note the asymmetry with §9.2, and it is real rather than an artefact: on the
outgoing side the rate is `E × (P_{i+1} − Q_j)`, which **vanishes** when the
degenerate `Q`-vertex *is* the fixed far endpoint `P_{i+1}`.  That is correct —
moving `P_i` cannot dislodge a `Q`-vertex sitting on the endpoint it does not
move — and it is why the move's bookkeeping cannot simply copy the shift's. -/

theorem moveCoef_ne_zero_self (R : Pair9) (i : Fin 7) (E : ℝ × ℝ) (j : Fin 7)
    (hgood : ∀ j : Fin 7, R.V (pP (i + 1)) - R.V (pQ j) ≠ 0 →
      cross E (R.V (pP (i + 1)) - R.V (pQ j)) ≠ 0)
    (hne : R.V (pQ j) ≠ R.V (pP (i + 1))) :
    moveCoef R.V i E i (pQ j) ≠ 0 := by
  rw [moveCoef_self R.V i E (pQ j) (fun h => pP_ne_pQ i j h.symm)]
  exact hgood j (sub_ne_zero.mpr (Ne.symm hne))

theorem moveCoef_ne_zero_prev (R : Pair9) (i : Fin 7) (E : ℝ × ℝ) (j : Fin 7)
    (hgood : ∀ j : Fin 7, R.V (pQ j) - R.V (pP (i - 1)) ≠ 0 →
      cross E (R.V (pQ j) - R.V (pP (i - 1))) ≠ 0)
    (hne : R.V (pQ j) ≠ R.V (pP (i - 1))) :
    moveCoef R.V i E (i - 1) (pQ j) ≠ 0 := by
  rw [moveCoef_prev R.V i E (pQ j) (fun h => pP_ne_pQ i j h.symm)]
  exact hgood j (sub_ne_zero.mpr hne)

/-- On the `Q`-side the rate needs **no** exception: both endpoints are fixed,
the side is nondegenerate by `simpleQ`, and a good `E` is transverse to it. -/
theorem moveCoefQ_ne_zero_apex (R : Pair9) (i : Fin 7) (E : ℝ × ℝ) (m : Fin 7)
    (hgood : ∀ m : Fin 7, R.V (pQ (m + 1)) - R.V (pQ m) ≠ 0 →
      cross E (R.V (pQ (m + 1)) - R.V (pQ m)) ≠ 0) :
    moveCoefQ R.V i E m (pP i) ≠ 0 := by
  rw [moveCoefQ_apex]
  intro hz
  exact hgood m (sub_ne_zero.mpr (Ne.symm (R.simpleQ.1 m)))
    (by rw [RotationLaw.cross_swap, hz, neg_zero])

theorem orientR_move_ne_zero (R : Pair9) (i : Fin 7) (E : ℝ × ℝ) {e₀ : ℝ}
    (hord : ∀ e : ℝ, |e| < e₀ → ∀ a b c : Fin 14,
      orientR (R.V a) (R.V b) (R.V c) ≠ 0 →
        0 < orientR (R.V a) (R.V b) (R.V c) *
            orientR (moveV R.V i E e a) (moveV R.V i E e b) (moveV R.V i E e c))
    {e : ℝ} (he : e ≠ 0) (hlt : |e| < e₀) (k j : Fin 7)
    (hrate : moveCoef R.V i E k (pQ j) ≠ 0) :
    orientR (moveV R.V i E e (pP k)) (moveV R.V i E e (pP (k + 1)))
      (moveV R.V i E e (pQ j)) ≠ 0 := by
  by_cases horig : orientR (R.V (pP k)) (R.V (pP (k + 1))) (R.V (pQ j)) = 0
  · rw [orientR_move_Pside, horig, zero_add]
    exact mul_ne_zero he hrate
  · intro hz
    have hs := hord e hlt (pP k) (pP (k + 1)) (pQ j) horig
    rw [hz, mul_zero] at hs
    exact lt_irrefl 0 hs

open scoped Classical in
/-- **`(Fin)` propagates across a move.**  On a disturbed side the two
`Q`-endpoints cannot both be the fixed far endpoint, so at least one
determinant becomes nonzero — and `Pair9Shift.sideP9_inter_sideQ9_finite`
needs only one.  An undisturbed side has not moved and neither has `Q`. -/
theorem exists_eps0_finite_move (R : Pair9) (hfin : (points9 R).Finite)
    (i : Fin 7) (E : ℝ × ℝ)
    (hgoodN : ∀ j : Fin 7, R.V (pP (i + 1)) - R.V (pQ j) ≠ 0 →
      cross E (R.V (pP (i + 1)) - R.V (pQ j)) ≠ 0)
    (hgoodP : ∀ j : Fin 7, R.V (pQ j) - R.V (pP (i - 1)) ≠ 0 →
      cross E (R.V (pQ j) - R.V (pP (i - 1))) ≠ 0) :
    ∃ e₀ : ℝ, 0 < e₀ ∧ ∀ e : ℝ, e ≠ 0 → |e| < e₀ →
      ∀ R' : Pair9, R'.V = moveV R.V i E e → (points9 R').Finite := by
  classical
  obtain ⟨e₀, he₀, hord⟩ := exists_eps0_order_type R.V i E
  refine ⟨e₀, he₀, fun e he hlt R' hR' => ?_⟩
  refine points9_finite_of_pairwise R' (fun k j => ?_)
  by_cases hkt : k ∈ touchedMove i
  · refine sideP9_inter_sideQ9_finite R' k j ?_
    rw [hR']
    rcases (mem_touchedMove_iff i k).mp hkt with hk | hk
    · rw [hk]
      by_cases hj : R.V (pQ j) = R.V (pP (i + 1))
      · exact Or.inr (orientR_move_ne_zero R i E hord he hlt i (j + 1)
          (moveCoef_ne_zero_self R i E (j + 1) hgoodN
            (fun hc => (R.simpleQ.1 j) (hj.trans hc.symm))))
      · exact Or.inl (orientR_move_ne_zero R i E hord he hlt i j
          (moveCoef_ne_zero_self R i E j hgoodN hj))
    · rw [hk]
      by_cases hj : R.V (pQ j) = R.V (pP (i - 1))
      · exact Or.inr (orientR_move_ne_zero R i E hord he hlt (i - 1) (j + 1)
          (moveCoef_ne_zero_prev R i E (j + 1) hgoodP
            (fun hc => (R.simpleQ.1 j) (hj.trans hc.symm))))
      · exact Or.inl (orientR_move_ne_zero R i E hord he hlt (i - 1) j
          (moveCoef_ne_zero_prev R i E j hgoodP hj))
  · have h1 : k ≠ i := fun hc => hkt (by rw [mem_touchedMove_iff]; exact Or.inl hc)
    have h2 : k ≠ i - 1 := fun hc => hkt (by rw [mem_touchedMove_iff]; exact Or.inr hc)
    have e1 : R'.V (pP k) = R.V (pP k) := by
      rw [hR']; exact moveV_pP_untouched R.V i E e h1
    have e2 : R'.V (pP (k + 1)) = R.V (pP (k + 1)) := by
      rw [hR']
      exact moveV_pP_untouched R.V i E e (fun hc => h2 (eq_sub_of_add_eq hc))
    have eQ1 : R'.V (pQ j) = R.V (pQ j) := by rw [hR']; exact moveV_Q R.V i E e j
    have eQ2 : R'.V (pQ (j + 1)) = R.V (pQ (j + 1)) := by
      rw [hR']; exact moveV_Q R.V i E e (j + 1)
    refine hfin.subset ?_
    rintro x ⟨hxP, hxQ⟩
    exact ⟨Set.mem_iUnion.mpr ⟨k, by simpa only [sideP9, e1, e2] using hxP⟩,
           Set.mem_iUnion.mpr ⟨j, by simpa only [sideQ9, eQ1, eQ2] using hxQ⟩⟩

/-! ### Clearing the apex, uniformly in the sign of `e`

`exists_eps_clearing_apex` produces one **positive** `e`.  The joint-measure
argument chooses the *sign* of `e` by averaging, so it needs a `e₀` that works
for every small nonzero `e` of either sign.  That is available: the bad `e` for
a given `Q`-vertex is unique, and it is `0` exactly at the coincidence being
cleared. -/

open scoped Classical in
theorem exists_eps0_clearing_apex (V : Fin 14 → ℝ × ℝ) (i : Fin 7) {E : ℝ × ℝ}
    (hE : E ≠ 0) :
    ∃ e₀ : ℝ, 0 < e₀ ∧ ∀ e : ℝ, e ≠ 0 → |e| < e₀ →
      ∀ m : Fin 7, moveV V i E e (pP i) ≠ V (pQ m) := by
  classical
  obtain ⟨e₀, he₀, hsm⟩ :=
    Pair9Shift.exists_uniform_smallness
      ((Finset.univ : Finset (Fin 7)).filter (fun m => V (pP i) ≠ V (pQ m)))
      (fun m => ‖V (pP i) - V (pQ m)‖) (fun _ => ‖E‖)
      (fun m hm =>
        norm_ne_zero_iff.mpr (sub_ne_zero.mpr (Finset.mem_filter.mp hm).2))
  refine ⟨e₀, he₀, fun e he hlt m hEq => ?_⟩
  rw [moveV_apex] at hEq
  by_cases hm : V (pP i) = V (pQ m)
  · have h := hEq
    rw [hm] at h
    have h0 : e • E = 0 := by simpa using sub_eq_zero.mpr h
    exact smul_ne_zero he hE h0
  · have hs := hsm e hlt m (Finset.mem_filter.mpr ⟨Finset.mem_univ _, hm⟩)
    have hkey : V (pP i) - V (pQ m) = -(e • E) := by rw [← hEq]; abel
    have h1 : ‖V (pP i) - V (pQ m)‖ = |e| * ‖E‖ := by
      rw [hkey, norm_neg, norm_smul, Real.norm_eq_abs]
    have h3 : |e * ‖E‖| = |e| * ‖E‖ := by
      rw [abs_mul, abs_of_nonneg (norm_nonneg E)]
    have h4 : |‖V (pP i) - V (pQ m)‖| = ‖V (pP i) - V (pQ m)‖ :=
      abs_of_nonneg (norm_nonneg _)
    rw [h3, h4, h1] at hs
    exact lt_irrefl _ hs

open scoped Classical in
/-- **The coincidence count strictly drops, for every small nonzero `e` of
either sign.** -/
theorem exists_eps0_coincSet_lt (V : Fin 14 → ℝ × ℝ) (i j : Fin 7)
    (hij : (i, j) ∈ coincSet V) {E : ℝ × ℝ} (hE : E ≠ 0) :
    ∃ e₀ : ℝ, 0 < e₀ ∧ ∀ e : ℝ, e ≠ 0 → |e| < e₀ →
      (coincSet (moveV V i E e)).card < (coincSet V).card := by
  classical
  obtain ⟨e₀, he₀, hclear⟩ := exists_eps0_clearing_apex V i hE
  refine ⟨e₀, he₀, fun e he hlt => ?_⟩
  have hsub : coincSet (moveV V i E e) ⊆ coincSet V := by
    intro p hp
    simp only [coincSet, Finset.mem_filter, Finset.mem_univ, true_and] at hp ⊢
    by_cases h : p.1 = i
    · subst h
      exact absurd (by rw [moveV_Q] at hp; exact hp) (hclear e he hlt p.2)
    · rw [moveV_Q] at hp
      rwa [moveV_pP_untouched V i E e h] at hp
  refine Finset.card_lt_card ((Finset.ssubset_iff_of_subset hsub).mpr ⟨(i, j), hij, ?_⟩)
  intro hc
  simp only [coincSet, Finset.mem_filter, Finset.mem_univ, true_and] at hc
  rw [moveV_Q] at hc
  exact hclear e he hlt j hc

/-! ### The coincidence chain, now preserving `(Fin)`

`exists_coincidence_free` already reaches a coincidence-free pair, but it
tracks only the crossing count — it says nothing about `(Fin)`, so its output
cannot be fed to `Pair9Shift.points9_le_38_of_coincFree`, which needs it.
`exists_eps0_finite_move` closes that gap. -/

open scoped Classical in
theorem pair9_coincSet_step_finite (R : Pair9) (hfin : (points9 R).Finite)
    (i j : Fin 7) (hij : (i, j) ∈ coincSet R.V) :
    ∃ R' : Pair9, (coincSet R'.V).card < (coincSet R.V).card ∧
      (points9 R').Finite ∧
      RealPerturb.crossPairsOf R.V ⊆ RealPerturb.crossPairsOf R'.V := by
  classical
  obtain ⟨E, hE, hgQ, hgN, hgP⟩ := exists_good_dir_pair9 R i
  obtain ⟨e₁, h₁, hpair⟩ := exists_moved_pair9 R i E
  obtain ⟨e₂, h₂, hmono⟩ := crossPairsOf_mono_move R.V i E
  obtain ⟨e₃, h₃, hco⟩ := exists_eps0_coincSet_lt R.V i j hij hE
  obtain ⟨e₄, h₄, hfn⟩ := exists_eps0_finite_move R hfin i E hgN hgP
  obtain ⟨e₀, he₀, hl1, hl2, hl3, hl4⟩ :
      ∃ x : ℝ, 0 < x ∧ x ≤ e₁ ∧ x ≤ e₂ ∧ x ≤ e₃ ∧ x ≤ e₄ :=
    ⟨min (min e₁ e₂) (min e₃ e₄), lt_min (lt_min h₁ h₂) (lt_min h₃ h₄),
      le_trans (min_le_left _ _) (min_le_left _ _),
      le_trans (min_le_left _ _) (min_le_right _ _),
      le_trans (min_le_right _ _) (min_le_left _ _),
      le_trans (min_le_right _ _) (min_le_right _ _)⟩
  have hhalf : |e₀ / 2| < e₀ := by rw [abs_of_pos (by linarith)]; linarith
  have hne : e₀ / 2 ≠ 0 := ne_of_gt (by linarith)
  obtain ⟨R', hR'⟩ := hpair (e₀ / 2) (le_of_lt (lt_of_lt_of_le hhalf hl1))
  refine ⟨R', ?_, hfn _ hne (lt_of_lt_of_le hhalf hl4) R' hR', ?_⟩
  · rw [hR']; exact hco _ hne (lt_of_lt_of_le hhalf hl3)
  · rw [hR']; exact hmono _ (lt_of_lt_of_le hhalf hl2)

open scoped Classical in
/-- **§9.1's chain, with `(Fin)` carried along.** -/
theorem exists_coincFree_finite :
    ∀ (n : ℕ) (R : Pair9), (points9 R).Finite → (coincSet R.V).card = n →
      ∃ R' : Pair9, coincSet R'.V = ∅ ∧ (points9 R').Finite ∧
        RealPerturb.crossPairsOf R.V ⊆ RealPerturb.crossPairsOf R'.V := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    intro R hfin hn
    by_cases h : coincSet R.V = ∅
    · exact ⟨R, h, hfin, Finset.Subset.refl _⟩
    · obtain ⟨p, hp⟩ := Finset.nonempty_iff_ne_empty.mpr h
      obtain ⟨R', hlt, hfin', hmono⟩ := pair9_coincSet_step_finite R hfin p.1 p.2 hp
      obtain ⟨R'', hclear, hfin'', hmono'⟩ := ih _ (hn ▸ hlt) R' hfin' rfl
      exact ⟨R'', hclear, hfin'', hmono.trans hmono'⟩

open scoped Classical in
/-- Coincidence-freeness in the pointwise form §9.2 consumes. -/
theorem coincFree_of_coincSet_empty {R : Pair9} (h : coincSet R.V = ∅) :
    ∀ v j : Fin 7, R.V (pP v) ≠ R.V (pQ j) := by
  classical
  intro v j hc
  rw [Finset.eq_empty_iff_forall_notMem] at h
  exact h (v, j) (by
    simp only [coincSet, Finset.mem_filter, Finset.mem_univ, true_and]; exact hc)

open scoped Classical in
/-- **§9.1 and §9.2 composed, as far as they currently go.**

From **any** `Pair9` whose boundaries meet in finitely many points, §9.1's
moves reach a pair that shares no vertex, still meets in finitely many points,
has at least the original's crossings — and, by
`Pair9Shift.points9_le_38_of_coincFree`, meets in at most `38` points.

**The gap to `(A9)`, stated exactly.**  This bounds `points9 R'`, *not*
`points9 R`.  Closing it needs `(points9 R).ncard ≤ (points9 R').ncard`, i.e. a
measure that does not fall along the move chain — and the obvious candidate is
**refuted**: `independent/e9_directions/verify_measure_refutation.py` exhibits
a pair where all 4,159 admissible apex displacements drop
`crossPairs + segDeg + segDegP` by exactly `3`, because a coincidence is an
endpoint of four sides and is counted four times.  The point-counting measure
`crossPairs + degPts.ncard` scores `0` on that same witness and is the
indicated replacement (`Pair9Shift.points9_le_38_of_pt_measure` is its endpoint
lemma), but its monotonicity is **not proved**.

So `(A9)` is **not** established here, and `f(7,7) = 38` remains conditional on
the AKR §9 import. -/
theorem exists_coincFree_le_38 (R : Pair9) (hfin : (points9 R).Finite) :
    ∃ R' : Pair9, coincSet R'.V = ∅ ∧ (points9 R').Finite ∧
      RealPerturb.crossPairsOf R.V ⊆ RealPerturb.crossPairsOf R'.V ∧
      (points9 R').ncard ≤ 38 := by
  obtain ⟨R', hclear, hfin', hmono⟩ := exists_coincFree_finite _ R hfin rfl
  exact ⟨R', hclear, hfin', hmono,
    Pair9Shift.points9_le_38_of_coincFree R' hfin'
      (coincFree_of_coincSet_empty hclear)⟩

#print axioms exists_coincFree_le_38

#print axioms pair9_coincSet_step_finite
#print axioms exists_coincFree_finite
#print axioms coincFree_of_coincSet_empty

#print axioms exists_eps0_clearing_apex
#print axioms exists_eps0_coincSet_lt

/-! ### The move creates no new degeneracies

The delegated sweep of `independent/e9_directions/move_effect_report.log`
("claim B") finds this true only for small `e`, with the threshold depending on
the configuration *and* on `E` — which is exactly the `∃ e₀, ∀ 0 < |e| < e₀`
form below.  The proof is the usual dichotomy, with one twist: a `Q`-vertex on
the *line* of an incident side but off its *segment* cannot be the side's fixed
endpoint, so its rate is nonzero and it leaves the line. -/

open scoped Classical in
theorem exists_eps0_segDeg_subset (R : Pair9) (i : Fin 7) (E : ℝ × ℝ)
    (hgoodN : ∀ j : Fin 7, R.V (pP (i + 1)) - R.V (pQ j) ≠ 0 →
      cross E (R.V (pP (i + 1)) - R.V (pQ j)) ≠ 0)
    (hgoodP : ∀ j : Fin 7, R.V (pQ j) - R.V (pP (i - 1)) ≠ 0 →
      cross E (R.V (pQ j) - R.V (pP (i - 1))) ≠ 0) :
    ∃ e₀ : ℝ, 0 < e₀ ∧ ∀ e : ℝ, e ≠ 0 → |e| < e₀ →
      ∀ R' : Pair9, R'.V = moveV R.V i E e → segDeg R' ⊆ segDeg R := by
  classical
  obtain ⟨e₀, he₀, hord⟩ := exists_eps0_order_type R.V i E
  refine ⟨e₀, he₀, fun e he hlt R' hR' p hp => ?_⟩
  by_cases hkt : p.1 ∈ touchedMove i
  · by_contra hnot
    have hzero : orientR (moveV R.V i E e (pP p.1))
        (moveV R.V i E e (pP (p.1 + 1))) (moveV R.V i E e (pQ p.2)) = 0 := by
      have hmem : R'.V (pQ p.2) ∈ sideP9 R' p.1 := by
        simpa only [segDeg, Finset.mem_filter, Finset.mem_univ, true_and] using hp
      rw [← hR', ← off_eq_orientR]
      exact off_eq_zero_of_mem_segment hmem
    have hrate : moveCoef R.V i E p.1 (pQ p.2) ≠ 0 := by
      rcases (mem_touchedMove_iff i p.1).mp hkt with hk | hk
      · rw [hk]
        refine moveCoef_ne_zero_self R i E p.2 hgoodN (fun hc => hnot ?_)
        simp only [segDeg, Finset.mem_filter, Finset.mem_univ, true_and]
        rw [← hk] at *
        rw [hc]
        exact right_mem_segment ℝ _ _
      · rw [hk]
        refine moveCoef_ne_zero_prev R i E p.2 hgoodP (fun hc => hnot ?_)
        simp only [segDeg, Finset.mem_filter, Finset.mem_univ, true_and]
        rw [← hk] at *
        rw [hc]
        exact left_mem_segment ℝ _ _
    exact orientR_move_ne_zero R i E hord he hlt p.1 p.2 hrate hzero
  · exact (segDeg_move_untouched_iff R R' i E e hR' hkt).mp hp

open scoped Classical in
theorem exists_eps0_segDegP_subset (R : Pair9) (i : Fin 7) (E : ℝ × ℝ)
    (hgoodQ : ∀ m : Fin 7, R.V (pQ (m + 1)) - R.V (pQ m) ≠ 0 →
      cross E (R.V (pQ (m + 1)) - R.V (pQ m)) ≠ 0) :
    ∃ e₀ : ℝ, 0 < e₀ ∧ ∀ e : ℝ, e ≠ 0 → |e| < e₀ →
      ∀ R' : Pair9, R'.V = moveV R.V i E e → segDegP R' ⊆ segDegP R := by
  classical
  obtain ⟨e₀, he₀, hord⟩ := exists_eps0_order_type R.V i E
  refine ⟨e₀, he₀, fun e he hlt R' hR' p hp => ?_⟩
  by_cases hv : p.2 = i
  · have hzero : orientR (moveV R.V i E e (pQ p.1))
        (moveV R.V i E e (pQ (p.1 + 1))) (moveV R.V i E e (pP p.2)) = 0 := by
      have hmem : R'.V (pP p.2) ∈ sideQ9 R' p.1 := by
        simpa only [segDegP, Finset.mem_filter, Finset.mem_univ, true_and] using hp
      rw [← hR', ← off_eq_orientR]
      exact off_eq_zero_of_mem_segment hmem
    exfalso
    rw [hv] at hzero
    by_cases horig :
        orientR (R.V (pQ p.1)) (R.V (pQ (p.1 + 1))) (R.V (pP i)) = 0
    · rw [orientR_move_Qside, horig, zero_add] at hzero
      exact mul_ne_zero he (moveCoefQ_ne_zero_apex R i E p.1 hgoodQ) hzero
    · have hs := hord e hlt (pQ p.1) (pQ (p.1 + 1)) (pP i) horig
      rw [hzero, mul_zero] at hs
      exact lt_irrefl 0 hs
  · exact (segDegP_move_untouched_iff R R' i E e hR' hv).mp hp

#print axioms exists_eps0_segDeg_subset
#print axioms exists_eps0_segDegP_subset

#print axioms orientR_move_ne_zero
#print axioms exists_eps0_finite_move

#print axioms moveCoef_ne_zero_self
#print axioms moveCoef_ne_zero_prev
#print axioms moveCoefQ_ne_zero_apex

#print axioms moveCoefQ_apex
#print axioms moveCoef_self
#print axioms moveCoef_prev
#print axioms segDeg_move_untouched_iff
#print axioms segDegP_move_untouched_iff
#print axioms moveV_pP_untouched

end E9Directions
end Heptagon
