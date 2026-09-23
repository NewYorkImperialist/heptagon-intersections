import Pair9Shift

/-!
# Exchanging `P` and `Q`

§9.2's shift moves `P`-sides and clears `Q`-vertices off them, leaving `degP` —
the `P`-vertices lying on `Q`-sides — untouched. That is the mirror half of
`(A9)`, and the argument for it is the same one with the roles exchanged.

Rather than duplicate `Pair9Shift`, this file builds the exchange as a map and
transports the results through it. The exchange is an involution on `Pair9`
(the two `SimpleClosed` fields swap), it fixes `points9`, and it transposes
`crossPairsOf`, so every count statement carries over unchanged.

This file is a leaf.
-/

set_option autoImplicit false

namespace Heptagon
namespace SwapPQ

open Heptagon.AKR9 Heptagon.ResidualSym Heptagon.RealConfig
open Heptagon.RealUpperBound Heptagon.RealPerturb Heptagon.Pair9Shift

/-- Exchange the two heptagons. -/
def swapV (V : Fin 14 → ℝ × ℝ) : Fin 14 → ℝ × ℝ := fun k =>
  if h : (k : ℕ) < 7 then V (pQ ⟨(k : ℕ), h⟩) else V (pP ⟨(k : ℕ) - 7, by omega⟩)

theorem swapV_pP (V : Fin 14 → ℝ × ℝ) (i : Fin 7) : swapV V (pP i) = V (pQ i) := by
  fin_cases i <;> rfl

theorem swapV_pQ (V : Fin 14 → ℝ × ℝ) (j : Fin 7) : swapV V (pQ j) = V (pP j) := by
  fin_cases j <;> rfl

theorem swapV_involutive (V : Fin 14 → ℝ × ℝ) : swapV (swapV V) = V := by
  funext k
  by_cases h : (k : ℕ) < 7
  · have : k = pP ⟨(k : ℕ), h⟩ := by
      apply Fin.ext; simp [pP]
    rw [this, swapV_pP, swapV_pQ]
  · have : k = pQ ⟨(k : ℕ) - 7, by omega⟩ := by
      apply Fin.ext; simp only [pQ]; omega
    rw [this, swapV_pQ, swapV_pP]

/-- **The exchange of a `Pair9` is a `Pair9`** — the two simplicity fields
swap, and nothing else is needed. -/
theorem exists_swapped_pair9 (R : Pair9) : ∃ R' : Pair9, R'.V = swapV R.V := by
  refine ⟨⟨swapV R.V, ?_, ?_⟩, rfl⟩
  · have h : (fun k : Fin 7 => swapV R.V (pP k)) = fun k => R.V (pQ k) := by
      funext k; exact swapV_pP R.V k
    rw [h]; exact R.simpleQ
  · have h : (fun k : Fin 7 => swapV R.V (pQ k)) = fun k => R.V (pP k) := by
      funext k; exact swapV_pQ R.V k
    rw [h]; exact R.simpleP

/-! ## The exchange transposes `crossPairsOf` -/

theorem properCrossR_symm (a b c d : ℝ × ℝ) :
    ProperCrossR a b c d ↔ ProperCrossR c d a b := by
  simp only [ProperCrossR]
  exact ⟨fun h => ⟨h.2, h.1⟩, fun h => ⟨h.2, h.1⟩⟩

theorem mem_crossPairsOf_swap (V : Fin 14 → ℝ × ℝ) (i j : Fin 7) :
    (i, j) ∈ crossPairsOf (swapV V) ↔ (j, i) ∈ crossPairsOf V := by
  simp only [crossPairsOf, Finset.mem_filter, Finset.mem_univ, true_and,
    swapV_pP, swapV_pQ]
  exact properCrossR_symm _ _ _ _

theorem crossPairsOf_swap_card (V : Fin 14 → ℝ × ℝ) :
    (crossPairsOf (swapV V)).card = (crossPairsOf V).card := by
  classical
  refine Finset.card_bij (fun p _ => (p.2, p.1)) ?_ ?_ ?_
  · intro p hp
    have : (p.1, p.2) ∈ crossPairsOf (swapV V) := by simpa using hp
    simpa using (mem_crossPairsOf_swap V p.1 p.2).mp this
  · intro p _ q _ h
    have h1 : p.2 = q.2 := congrArg Prod.fst h
    have h2 : p.1 = q.1 := congrArg Prod.snd h
    exact Prod.ext h2 h1
  · intro p hp
    refine ⟨(p.2, p.1), ?_, rfl⟩
    have : (p.2, p.1) ∈ crossPairsOf (swapV V) := by
      rw [mem_crossPairsOf_swap]
      simpa using hp
    simpa using this

#print axioms swapV_pP
#print axioms swapV_involutive
#print axioms exists_swapped_pair9
#print axioms crossPairsOf_swap_card

/-! ## The mirror half of `(A9)`

`degSetOf` records `Q`-vertices on `P`-side lines. Its mirror records
`P`-vertices on `Q`-side lines — and that is exactly `degSetOf` of the
exchanged configuration, so §9.2's whole procedure applies to it unchanged. -/

/-- `P`-vertices lying on `Q`-side lines. -/
noncomputable def degSetQ (V : Fin 14 → ℝ × ℝ) : Finset (Fin 7 × Fin 7) :=
  Finset.univ.filter
    (fun p => orientR (V (pQ p.1)) (V (pQ (p.1 + 1))) (V (pP p.2)) = 0)

theorem degSetQ_eq_degSetOf_swap (V : Fin 14 → ℝ × ℝ) :
    degSetQ V = Pair9Shift.degSetOf (swapV V) := by
  classical
  ext p
  simp only [degSetQ, Pair9Shift.degSetOf, Finset.mem_filter, Finset.mem_univ,
    true_and, swapV_pP, swapV_pQ]

/-- **The mirror half of `(A9)`.**  From any `Pair9`, finitely many tilted
shifts *of the `Q`-sides* reach a `Pair9` with **no `P`-vertex on any `Q`-side
line**, and at least as many crossing pairs.

Nothing is reproved: the exchange carries §9.2's procedure over, because it is
an involution on `Pair9`, transposes `crossPairsOf`, and turns `degSetQ` into
`degSetOf`. -/
theorem exists_degSetQ_empty (R : Pair9) (t : ℝ) :
    ∃ R' : Pair9, degSetQ R'.V = ∅ ∧
      (crossPairsOf R.V).card ≤ (crossPairsOf R'.V).card := by
  obtain ⟨Rs, hRs⟩ := exists_swapped_pair9 R
  obtain ⟨Rs', hclear, hcard⟩ := Pair9Shift.exists_degeneracy_free_mono Rs t
  obtain ⟨R', hR'⟩ := exists_swapped_pair9 Rs'
  refine ⟨R', ?_, ?_⟩
  · rw [degSetQ_eq_degSetOf_swap, hR', swapV_involutive]
    exact hclear
  · calc (crossPairsOf R.V).card
        = (crossPairsOf (swapV R.V)).card := (crossPairsOf_swap_card R.V).symm
      _ = (crossPairsOf Rs.V).card := by rw [hRs]
      _ ≤ (crossPairsOf Rs'.V).card := hcard
      _ = (crossPairsOf (swapV Rs'.V)).card := (crossPairsOf_swap_card Rs'.V).symm
      _ = (crossPairsOf R'.V).card := by rw [hR']

#print axioms degSetQ_eq_degSetOf_swap
#print axioms exists_degSetQ_empty

/-! ## The third interleaving: the `P`-side shift keeps `degSetQ` clear

Composing the three halves needs each step to preserve what the earlier ones
achieved. The `P`-side shift moves `P`-vertices, which could land on `Q`-side
lines and so undo the mirror half. Affine again, finite again. -/

/-- **The `P`-side shift can be chosen to keep every `P`-vertex off the
`Q`-side lines.** -/
theorem exists_delta_preserving_degSetQ (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ)
    (hfree : degSetQ V = ∅) {δ₁ : ℝ} (hδ₁ : 0 < δ₁) :
    ∃ δ : ℝ, δ ≠ 0 ∧ |δ| < δ₁ ∧ degSetQ (RotationLaw.shiftV V i t δ) = ∅ := by
  classical
  have hne : ∀ p : Fin 7 × Fin 7,
      orientR (V (pQ p.1)) (V (pQ (p.1 + 1))) (V (pP p.2)) ≠ 0 := by
    intro p
    rw [Finset.eq_empty_iff_forall_notMem] at hfree
    intro hz
    exact hfree p (by
      simp only [degSetQ, Finset.mem_filter, Finset.mem_univ, true_and]; exact hz)
  obtain ⟨δ, hδ0, hδlt, hkeep⟩ :=
    Pair9Shift.exists_good_delta_affine' (Finset.univ : Finset (Fin 7 × Fin 7))
      (fun p => orientR (V (pQ p.1)) (V (pQ (p.1 + 1))) (V (pP p.2)))
      (fun p => Pair9Shift.dcoef (V (pQ p.1)) (V (pQ (p.1 + 1))) (V (pP p.2))
        (RotationLaw.tilt (V (pP (i + 1)) - V (pP i)) t)
        (if pQ p.1 = pP i ∨ pQ p.1 = pP (i + 1) then 1 else 0)
        (if pQ (p.1 + 1) = pP i ∨ pQ (p.1 + 1) = pP (i + 1) then 1 else 0)
        (if pP p.2 = pP i ∨ pP p.2 = pP (i + 1) then 1 else 0))
      (fun p _ => hne p) hδ₁
  refine ⟨δ, hδ0, hδlt, ?_⟩
  rw [Finset.eq_empty_iff_forall_notMem]
  intro p hp
  simp only [degSetQ, Finset.mem_filter, Finset.mem_univ, true_and] at hp
  rw [Pair9Shift.orientR_shiftV_affine] at hp
  exact hkeep p (Finset.mem_univ _) hp

#print axioms exists_delta_preserving_degSetQ

/-- The `degSetQ` obligation as a finite set of forbidden shifts, so it can be
unioned with the others. -/
theorem exists_degSetQ_bad_set (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ)
    (hfree : degSetQ V = ∅) :
    ∃ bad : Finset ℝ, ∀ δ : ℝ, δ ∉ bad →
      degSetQ (RotationLaw.shiftV V i t δ) = ∅ := by
  classical
  have hne : ∀ p ∈ (Finset.univ : Finset (Fin 7 × Fin 7)),
      orientR (V (pQ p.1)) (V (pQ (p.1 + 1))) (V (pP p.2)) ≠ 0 := by
    intro p _
    rw [Finset.eq_empty_iff_forall_notMem] at hfree
    intro hz
    exact hfree p (by
      simp only [degSetQ, Finset.mem_filter, Finset.mem_univ, true_and]; exact hz)
  obtain ⟨bad, hbad⟩ :=
    Pair9Shift.affine_bad_set (Finset.univ : Finset (Fin 7 × Fin 7))
      (fun p => orientR (V (pQ p.1)) (V (pQ (p.1 + 1))) (V (pP p.2)))
      (fun p => Pair9Shift.dcoef (V (pQ p.1)) (V (pQ (p.1 + 1))) (V (pP p.2))
        (RotationLaw.tilt (V (pP (i + 1)) - V (pP i)) t)
        (if pQ p.1 = pP i ∨ pQ p.1 = pP (i + 1) then 1 else 0)
        (if pQ (p.1 + 1) = pP i ∨ pQ (p.1 + 1) = pP (i + 1) then 1 else 0)
        (if pP p.2 = pP i ∨ pP p.2 = pP (i + 1) then 1 else 0))
      hne
  refine ⟨bad, fun δ hδ => ?_⟩
  rw [Finset.eq_empty_iff_forall_notMem]
  intro p hp
  simp only [degSetQ, Finset.mem_filter, Finset.mem_univ, true_and] at hp
  rw [Pair9Shift.orientR_shiftV_affine] at hp
  exact hbad δ hδ p (Finset.mem_univ _) hp

#print axioms exists_degSetQ_bad_set

end SwapPQ
end Heptagon
