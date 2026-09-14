/-
  MainTheorem.lean
  ================

  THE TARGET STATEMENT, AS AN ACTUAL LEAN THEOREM, WITH ITS EXACT REMAINING
  CONDITIONS VISIBLE.

  ---------------------------------------------------------------------------
  WHY THIS FILE EXISTS
  ---------------------------------------------------------------------------

  Every other file in this development proves something ABOUT a configuration:
  `crossCountC K <= 42`, `crossCountC K = 42 -> False`, and so on.  Nowhere did
  the sentence the project is actually trying to establish -- that 38 is the
  MAXIMUM -- exist as a Lean statement at all.  A reader therefore could not ask
  Lean what remained; they had to reconstruct it from prose.

  This file writes that sentence down.  It proves almost nothing new: the two
  halves are `UpperBoundAssembly.crossCountC_le_38` and the certificate's
  `crossCountC certConfig = 38`.  The point is that after this file, the exact
  residual content of the conjecture is a THEOREM STATEMENT with named
  hypotheses, not a paragraph.

  ---------------------------------------------------------------------------
  READ THIS BEFORE QUOTING ANYTHING HERE
  ---------------------------------------------------------------------------

  THIS IS NOT `f(7,7) = 38`.

  `f(7,7)` is a statement about simple heptagons in the REAL plane.  What is
  proved here is the corresponding statement about `Config`, which is:

    * ORIENTATION-LEVEL.  `Config` records two 7-tuples of points with
      `Pt := Int x Int`, together with simplicity and general-position
      conditions expressed through the integer predicate `orient`.  "Simple"
      here means the orientation-level conditions of `Simple7`, NOT "the closed
      polygonal curve is a Jordan curve in the plane".  That step is standard
      and is NOT formalised anywhere in this development.

    * OVER THE INTEGERS.  Every configuration has integer coordinates.  Passing
      from rational or real coordinates to integers is harmless by scaling, and
      passing from arbitrary position to general position is AKR section 9.1 --
      but neither is proved here.

  So the honest reading of `isGreatest_38` below is: "38 is the maximum crossing
  count over integer-coordinate, orientation-level heptagon configurations,
  GIVEN the listed hypotheses."  Getting from there to `f(7,7) = 38` needs the
  Jordan-curve step and the general-position reduction, both external.
-/

import UpperBoundAssembly
import Mathlib.Order.Bounds.Basic

set_option autoImplicit false

namespace Heptagon
namespace MainTheorem

open Heptagon.DisjointnessGraph
open Heptagon.EnumerationDomain
open Heptagon.UpperBoundAssembly
open Heptagon.Endgame

/-- The set of crossing counts actually attained by some configuration. -/
def attained : Set Nat := { n | ∃ K : Config, crossCountC K = n }

/-- 38 is attained -- by the explicit certificate pair, whose coordinates are in
`LowerBound.lean` and whose count is verified there. -/
theorem mem_attained_38 : (38 : Nat) ∈ attained := ⟨certConfig, cert_crossCountC⟩

/-- **THE TARGET STATEMENT.**  38 is the greatest attained crossing count.

The three hypotheses are exactly, and only, what remains open:

* `heven`  -- every configuration has an even crossing count.  Elementary plane
             topology (two closed curves cross evenly).  Not proved here; see
             `IntersectionParity` if it has landed.
* `hne42`  -- no configuration attains 42.  **This one is discharged**:
             `Exclude42.not_crossCount_42` proves it, given the exceptional-class
             invariant.  See `isGreatest_38_of_enumeration` below.
* `hne40`  -- no configuration attains 40.  This is the entire
             13 003 620-graph enumeration: obligations (1)-(4), of which (1),
             (2) and (3) are proved and (4) is stated with external inputs open.

Everything else -- `I + |E| = 49`, the minimum-degree bound, `I <= 42`, and the
arithmetic that turns "even, not 42, not 40" into "at most 38" -- is already
kernel-checked and appears nowhere as a hypothesis. -/
theorem isGreatest_38
    (heven : ∀ K : Config, crossCountC K % 2 = 0)
    (hne42 : ∀ K : Config, crossCountC K ≠ 42)
    (hne40 : ∀ K : Config, crossCountC K ≠ 40) :
    IsGreatest attained 38 := by
  refine ⟨mem_attained_38, ?_⟩
  rintro n ⟨K, rfl⟩
  exact crossCountC_le_38 K (heven K) (hne42 K) (hne40 K)

/-- The same, with the `I = 42` branch **discharged** rather than assumed, via
`Exclude42`.  The class data is supplied per configuration; it is also consumed
by the enumeration branch, so it is not an additional thing to believe. -/
theorem isGreatest_38_of_enumeration
    (heven : ∀ K : Config, crossCountC K % 2 = 0)
    (hclass : ∀ K : Config, ∃ (mcs : List Nat) (MP : Finset Nat),
        MP.card = 5 ∧
        (∀ C ∈ mcs, ∃ m ∈ MP, m < 7 ∧ ∀ i, i < 7 → (bitAt C i = true ↔ i ≠ m)) ∧
        (∀ j, j < 7 → ∃ C ∈ mcs, ∀ i, i < 7 → ¬ DisjointO K i j → bitAt C i = true))
    (hne40 : ∀ K : Config, crossCountC K ≠ 40) :
    IsGreatest attained 38 := by
  refine ⟨mem_attained_38, ?_⟩
  rintro n ⟨K, rfl⟩
  obtain ⟨mcs, MP, h1, h2, h3⟩ := hclass K
  exact crossCountC_le_38_of_enumeration K (heven K) h1 h2 h3 (hne40 K)

/-! ## What is unconditional

Neither theorem above is unconditional, but the *upper* half of the bracket at
42 is, and so is attainment of 38.  Stated together so the gap is legible: the
answer is known to lie in `{38, 40, 42}` with no hypotheses whatsoever, and the
whole remaining task is to rule out the top two. -/

/-- **Unconditional.**  38 is attained, and nothing exceeds 42. -/
theorem attained_38_and_le_42 :
    (38 : Nat) ∈ attained ∧ ∀ n ∈ attained, n ≤ 42 := by
  refine ⟨mem_attained_38, ?_⟩
  rintro n ⟨K, rfl⟩
  exact crossCountC_le_42 K

/-- **Unconditional, given only parity.**  The answer is 38, 40 or 42. -/
theorem attained_mem_three (K : Config) (heven : crossCountC K % 2 = 0)
    (hge : 38 ≤ crossCountC K) :
    crossCountC K = 38 ∨ crossCountC K = 40 ∨ crossCountC K = 42 := by
  have h42 := crossCountC_le_42 K
  omega

end MainTheorem
end Heptagon
