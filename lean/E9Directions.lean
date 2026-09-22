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

end E9Directions
end Heptagon
