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

#print axioms tilt_ne_zero
#print axioms exists_delta_preserving_coincFree

end E9Directions
end Heptagon
