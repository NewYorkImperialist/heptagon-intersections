import UniformEps
import RealPerturb

/-!
# The crossing-pair set is constant along the motion

`UniformEps.properCrossR_move_iff` says one side pair crosses at `e₁` iff it
crosses at `e₂`, for any two parameters in `(0, t)` with `t` below the four
witnesses' `ρ`.  This lifts that from one pair to the whole set.

That is the counting content of class (a) of Theorem CI in
`docs/akr-9-assembly.md` §2.3: the non-degenerate intersection points are in
bijection with crossing side pairs, so if the crossing **set** does not change
along the motion, neither does that part of the count.

Note what is and is not claimed.  Both parameters must be **positive**:
Theorem U's sign agreement holds on the open interval `(0, ρ)`, not at `0`.
Comparing to the unperturbed configuration needs the stronger hypothesis that
the relevant witness has nonzero *constant* term, which is exactly the
`c₀ ≠ 0` clause Theorem CI's class-(a) row invokes.

Nothing here is an axiom and nothing here proves `f(7,7) = 38`.
-/

namespace Heptagon
namespace CrossTransport

open Heptagon.UniformEps Heptagon.RealPerturb Heptagon.RealUpperBound
open Heptagon.ResidualSym Heptagon.RealConfig

/-- If every side pair has the same crossing status at two parameters, the
crossing-pair sets coincide. -/
theorem crossPairsOf_eq_of_pairwise {V W : Fin 14 → ℝ × ℝ}
    (h : ∀ i j : Fin 7,
      ProperCrossR (V (pP i)) (V (pP (i + 1))) (V (pQ j)) (V (pQ (j + 1))) ↔
      ProperCrossR (W (pP i)) (W (pP (i + 1))) (W (pQ j)) (W (pQ (j + 1)))) :
    crossPairsOf V = crossPairsOf W := by
  ext ⟨i, j⟩
  simp only [mem_crossPairsOf]
  exact h i j

/-- Hence the count of crossing pairs is the same. -/
theorem crossPairs_card_eq_of_pairwise {V W : Fin 14 → ℝ × ℝ}
    (h : ∀ i j : Fin 7,
      ProperCrossR (V (pP i)) (V (pP (i + 1))) (V (pQ j)) (V (pQ (j + 1))) ↔
      ProperCrossR (W (pP i)) (W (pP (i + 1))) (W (pQ j)) (W (pQ (j + 1)))) :
    (crossPairsOf V).card = (crossPairsOf W).card := by
  rw [crossPairsOf_eq_of_pairwise h]

/-- **The crossing set is constant on `(0, t)`.**  The per-pair hypothesis is
exactly what `UniformEps.properCrossR_move_iff` supplies, once witnesses are
chosen for the four determinants of each of the `49` pairs. -/
theorem crossPairsOf_move_eq (V0 E : Fin 14 → ℝ × ℝ) {e₁ e₂ : ℝ}
    (h : ∀ i j : Fin 7,
      ProperCrossR (move V0 E e₁ (pP i)) (move V0 E e₁ (pP (i + 1)))
        (move V0 E e₁ (pQ j)) (move V0 E e₁ (pQ (j + 1))) ↔
      ProperCrossR (move V0 E e₂ (pP i)) (move V0 E e₂ (pP (i + 1)))
        (move V0 E e₂ (pQ j)) (move V0 E e₂ (pQ (j + 1)))) :
    crossPairsOf (move V0 E e₁) = crossPairsOf (move V0 E e₂) :=
  crossPairsOf_eq_of_pairwise h

/-! ## Comparing to the *unperturbed* configuration

The restriction above — both parameters positive — is exactly what the `c₀ ≠ 0`
clause of Theorem CI's class-(a) row removes.  A witness whose **constant term**
is nonzero has `ord = 0`, and then its sign on `(0, ρ)` is the sign of that
constant term, which is its value at `0`.  So the comparison reaches the
unperturbed configuration after all. -/

theorem eval_zero (w : Wit) : w.eval 0 = w.coeff 0 := by
  simp only [Wit.eval]
  rw [Finset.sum_eq_single 0]
  · simp
  · intro b _ hb; simp [zero_pow hb]
  · intro h; exact absurd (Finset.mem_range.mpr (Nat.succ_pos _)) h

/-- **Class (a)'s `c₀ ≠ 0` clause.**  If the witness has nonzero constant term,
its sign at every parameter in `(0, ρ)` agrees with its sign at `0`. -/
theorem sameSign_eval_zero (w : Wit) (h0 : w.ord = 0) {e : ℝ}
    (he0 : 0 < e) (he : e < w.rho) : SameSignR (w.eval 0) (w.eval e) := by
  have hpos : 0 < w.coeff w.ord * w.eval e := w.lemmaU_sign he0 he
  rw [h0] at hpos
  rw [eval_zero]
  rcases lt_trichotomy (w.coeff 0) 0 with h | h | h
  · exact Or.inr ⟨h, by nlinarith⟩
  · exact absurd hpos (by rw [h]; simp)
  · exact Or.inl ⟨h, by nlinarith⟩

/-- **Class (a), assembled.**  A side pair crossing in the unperturbed
configuration, whose four determinants are witnessed with nonzero constant
term, still crosses at every parameter in `(0, ρ)`.  This is the class-(a) row
of Theorem CI, with `move_zero` supplying the identification of the parameter-0
configuration with `V0`. -/
theorem properCrossR_survives (V0 E : Fin 14 → ℝ × ℝ) (a b c d : Fin 14)
    (w₁ w₂ w₃ w₄ : Wit)
    (hw₁ : ∀ e : ℝ, w₁.eval e = orientR (move V0 E e a) (move V0 E e b) (move V0 E e c))
    (hw₂ : ∀ e : ℝ, w₂.eval e = orientR (move V0 E e a) (move V0 E e b) (move V0 E e d))
    (hw₃ : ∀ e : ℝ, w₃.eval e = orientR (move V0 E e c) (move V0 E e d) (move V0 E e a))
    (hw₄ : ∀ e : ℝ, w₄.eval e = orientR (move V0 E e c) (move V0 E e d) (move V0 E e b))
    (o₁ : w₁.ord = 0) (o₂ : w₂.ord = 0) (o₃ : w₃.ord = 0) (o₄ : w₄.ord = 0)
    {e : ℝ} (he0 : 0 < e)
    (k₁ : e < w₁.rho) (k₂ : e < w₂.rho) (k₃ : e < w₃.rho) (k₄ : e < w₄.rho)
    (hcross : ProperCrossR (V0 a) (V0 b) (V0 c) (V0 d)) :
    ProperCrossR (move V0 E e a) (move V0 E e b) (move V0 E e c) (move V0 E e d) := by
  have s₁ := sameSign_eval_zero w₁ o₁ he0 k₁
  have s₂ := sameSign_eval_zero w₂ o₂ he0 k₂
  have s₃ := sameSign_eval_zero w₃ o₃ he0 k₃
  have s₄ := sameSign_eval_zero w₄ o₄ he0 k₄
  rw [hw₁, hw₁, hw₂, hw₂, hw₃, hw₃, hw₄, hw₄] at *
  rw [move_zero] at s₁ s₂ s₃ s₄
  exact (properCrossR_congr s₁ s₂ s₃ s₄).mp hcross

/-- **The class-(a) count cannot drop.**  If every pair crossing at the start
still crosses at parameter `e`, the crossing-pair set only grows, so its
cardinality only grows.  With `DegBound.lemmaCL_regular` — regular points are
in bijection with crossing pairs — this is the class-(a) half of the count
inequality. -/
theorem crossPairs_card_mono {V0 E : Fin 14 → ℝ × ℝ} {e : ℝ}
    (h : ∀ i j : Fin 7,
      ProperCrossR (V0 (pP i)) (V0 (pP (i + 1))) (V0 (pQ j)) (V0 (pQ (j + 1))) →
      ProperCrossR (move V0 E e (pP i)) (move V0 E e (pP (i + 1)))
        (move V0 E e (pQ j)) (move V0 E e (pQ (j + 1)))) :
    (crossPairsOf V0).card ≤ (crossPairsOf (move V0 E e)).card := by
  apply Finset.card_le_card
  intro p hp
  obtain ⟨i, j⟩ := p
  exact mem_crossPairsOf.mpr (h i j (mem_crossPairsOf.mp hp))

/-! ## Classes (b) and (c) of the transport

Class (a) was the hard one — it needed Theorem U.  The other two are cheap, and
that is the point: `Φ_α` on them is *given* by what the motion maintains.

* **(b)** a vertex of one polygon lying on a side of the other.  AKR's
  relation (1) is one of the equations Theorem 17 solves, so the ratio is
  maintained and the point stays on the (moving) side.
* **(c)** a coincidence.  If the motion *separates* it, `Φ_α` is the (R2)
  crossing; if it *maintains* it, `Φ_α` is the apex itself, which needs no
  hypothesis at all.  That fourth rule is the one `CI_HARDENED.md` found
  missing — (R2) is unsatisfiable at an unseparated apex, and §9.1 processes
  coincidences one at a time, so any input with two or more produces exactly
  that case. -/

/-- A maintained convex combination stays in the moving segment.  This is
class (b): relation (1) with its original `λ`. -/
theorem classB_survives {Vb Vc Vi : ℝ → ℝ × ℝ} {t : ℝ}
    (ht0 : 0 ≤ t) (ht1 : t ≤ 1)
    (hrel : ∀ e : ℝ, Vi e = t • Vb e + (1 - t) • Vc e) (e : ℝ) :
    Vi e ∈ segment ℝ (Vb e) (Vc e) :=
  ⟨t, 1 - t, ht0, by linarith, by ring, (hrel e).symm⟩

/-- Rule **(c0)**: a maintained apex is still a common point.  No hypothesis
beyond the coincidence persisting. -/
theorem classC0_survives {Vp Vq : ℝ → ℝ × ℝ} {e : ℝ} (h : Vp e = Vq e)
    (Vp' Vq' : ℝ × ℝ) :
    Vp e ∈ segment ℝ (Vp e) Vp' ∧ Vp e ∈ segment ℝ (Vq e) Vq' :=
  ⟨left_mem_segment ℝ _ _, by rw [h]; exact left_mem_segment ℝ _ _⟩

/-! ## Injectivity: distinct crossing pairs give distinct points

The remaining half of Theorem CI is that `Φ_α` is injective.  For class (a)
that reduces to the fact underneath `DegBound.lemmaCL_regular`: a point
interior to two sides determines the pair.  Stated here in the form the
transport needs — if two crossing pairs share a common point, and that point is
regular for the moved configuration, the pairs coincide. -/

/-- Two side pairs sharing a regular common point are the same pair.  This is
the class-(a) diagonal of the injectivity table. -/
theorem pair_unique_of_shared {V : Fin 14 → ℝ × ℝ} {i₁ i₂ j₁ j₂ : Fin 7}
    {x : ℝ × ℝ}
    (hi : ∀ i k : Fin 7, x ∈ segment ℝ (V (pP i)) (V (pP (i + 1))) →
      x ∈ segment ℝ (V (pP k)) (V (pP (k + 1))) → i = k)
    (hj : ∀ j l : Fin 7, x ∈ segment ℝ (V (pQ j)) (V (pQ (j + 1))) →
      x ∈ segment ℝ (V (pQ l)) (V (pQ (l + 1))) → j = l)
    (h₁P : x ∈ segment ℝ (V (pP i₁)) (V (pP (i₁ + 1))))
    (h₂P : x ∈ segment ℝ (V (pP i₂)) (V (pP (i₂ + 1))))
    (h₁Q : x ∈ segment ℝ (V (pQ j₁)) (V (pQ (j₁ + 1))))
    (h₂Q : x ∈ segment ℝ (V (pQ j₂)) (V (pQ (j₂ + 1)))) :
    (i₁, j₁) = (i₂, j₂) :=
  Prod.ext (hi i₁ i₂ h₁P h₂P) (hj j₁ j₂ h₁Q h₂Q)

#print axioms pair_unique_of_shared

/-! ## Both signs of the parameter

Everything above is one-sided: Theorem U lives on `(0, ρ)`.  §9.2's averaging
identity needs **both** signs, and AKR's own sentence — "an intersection point
may disappear or multiply into two, depending on the direction of the shift" —
is about exactly that comparison.

The negative side is not a new theory.  Moving by `−e` along `E` is moving by
`+e` along `−E`, so every one-sided result applies verbatim after negating the
direction. -/

theorem move_neg (V0 E : Fin 14 → ℝ × ℝ) (e : ℝ) :
    move V0 E (-e) = move V0 (fun i => -(E i)) e := by
  funext i
  apply Prod.ext <;> · simp only [move, Prod.fst_neg, Prod.snd_neg]; ring

/-- **A transversal crossing survives both shifts.**  This is case F1 of the
averaging identity: a pair crossing at `δ = 0` with all four determinants
nonzero still crosses at `+δ` and at `−δ`, so it contributes `1 + 1 = 2·1` and
the identity holds on it with nothing to check. -/
theorem survives_both_signs (V0 E : Fin 14 → ℝ × ℝ) (a b c d : Fin 14)
    (w₁ w₂ w₃ w₄ n₁ n₂ n₃ n₄ : Wit)
    (hw₁ : ∀ e : ℝ, w₁.eval e = orientR (move V0 E e a) (move V0 E e b) (move V0 E e c))
    (hw₂ : ∀ e : ℝ, w₂.eval e = orientR (move V0 E e a) (move V0 E e b) (move V0 E e d))
    (hw₃ : ∀ e : ℝ, w₃.eval e = orientR (move V0 E e c) (move V0 E e d) (move V0 E e a))
    (hw₄ : ∀ e : ℝ, w₄.eval e = orientR (move V0 E e c) (move V0 E e d) (move V0 E e b))
    (hn₁ : ∀ e : ℝ, n₁.eval e =
      orientR (move V0 (fun i => -(E i)) e a) (move V0 (fun i => -(E i)) e b)
        (move V0 (fun i => -(E i)) e c))
    (hn₂ : ∀ e : ℝ, n₂.eval e =
      orientR (move V0 (fun i => -(E i)) e a) (move V0 (fun i => -(E i)) e b)
        (move V0 (fun i => -(E i)) e d))
    (hn₃ : ∀ e : ℝ, n₃.eval e =
      orientR (move V0 (fun i => -(E i)) e c) (move V0 (fun i => -(E i)) e d)
        (move V0 (fun i => -(E i)) e a))
    (hn₄ : ∀ e : ℝ, n₄.eval e =
      orientR (move V0 (fun i => -(E i)) e c) (move V0 (fun i => -(E i)) e d)
        (move V0 (fun i => -(E i)) e b))
    (o₁ : w₁.ord = 0) (o₂ : w₂.ord = 0) (o₃ : w₃.ord = 0) (o₄ : w₄.ord = 0)
    (p₁ : n₁.ord = 0) (p₂ : n₂.ord = 0) (p₃ : n₃.ord = 0) (p₄ : n₄.ord = 0)
    {e : ℝ} (he0 : 0 < e)
    (k₁ : e < w₁.rho) (k₂ : e < w₂.rho) (k₃ : e < w₃.rho) (k₄ : e < w₄.rho)
    (m₁ : e < n₁.rho) (m₂ : e < n₂.rho) (m₃ : e < n₃.rho) (m₄ : e < n₄.rho)
    (hcross : ProperCrossR (V0 a) (V0 b) (V0 c) (V0 d)) :
    ProperCrossR (move V0 E e a) (move V0 E e b) (move V0 E e c) (move V0 E e d) ∧
    ProperCrossR (move V0 E (-e) a) (move V0 E (-e) b)
      (move V0 E (-e) c) (move V0 E (-e) d) := by
  refine ⟨properCrossR_survives V0 E a b c d w₁ w₂ w₃ w₄ hw₁ hw₂ hw₃ hw₄
      o₁ o₂ o₃ o₄ he0 k₁ k₂ k₃ k₄ hcross, ?_⟩
  rw [move_neg]
  exact properCrossR_survives V0 (fun i => -(E i)) a b c d n₁ n₂ n₃ n₄
    hn₁ hn₂ hn₃ hn₄ p₁ p₂ p₃ p₄ he0 m₁ m₂ m₃ m₄ hcross

#print axioms move_neg
#print axioms survives_both_signs

#print axioms classB_survives
#print axioms classC0_survives

#print axioms crossPairs_card_mono

#print axioms properCrossR_survives

#print axioms eval_zero
#print axioms sameSign_eval_zero

#print axioms crossPairsOf_eq_of_pairwise
#print axioms crossPairsOf_move_eq

end CrossTransport
end Heptagon
