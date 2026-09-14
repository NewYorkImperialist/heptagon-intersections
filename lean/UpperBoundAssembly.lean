/-
  UpperBoundAssembly.lean
  =======================

  THE LOGICAL SKELETON OF THE UPPER BOUND  f(7,7) <= 38,  KERNEL-CHECKED,
  WITH EVERY REMAINING GAP AS A NAMED HYPOTHESIS.

  ---------------------------------------------------------------------------
  WHY THIS FILE EXISTS
  ---------------------------------------------------------------------------

  The upper-bound argument is a short chain resting on a few large results.
  Until now the chain itself lived only in prose, so a reader could not tell
  which steps were already machine-checked and which were carrying the weight.
  This file makes the chain a theorem.  Nothing here is deep; the point is
  precisely that the *assembly* is trivial once the pieces are named, and that
  the two genuinely open branches become visible as two hypotheses.

  ---------------------------------------------------------------------------
  THE CHAIN
  ---------------------------------------------------------------------------

    (1)  I + |E| = 49                          PROVED for every Config
                                               (crossCountC_add_degSum)
    (2)  minimum degree >= 1 on the P side      PROVED for every Config
                                               (min_degree_both_sides, itself
                                               derived from a parity argument
                                               in SegmentGeometry.lean, not
                                               imported)
    (3)  hence |E| >= 7, hence I <= 42          proved here
    (4)  I is even                              HYPOTHESIS  -- see below
    (5)  I != 42                                HYPOTHESIS  -- UB42
    (6)  I != 40                                HYPOTHESIS  -- UB40
    ---------------------------------------------------------------------------
         I <= 38                                proved here

  Step (3) is the whole content of Cerny L1's use in this project: it is what
  gives `I <= 42` and therefore what makes 42 and 40 the *only* two even values
  that have to be excluded.

  ---------------------------------------------------------------------------
  WHAT THE THREE HYPOTHESES COST, HONESTLY
  ---------------------------------------------------------------------------

  `heven` : I is even.  Two closed curves in general position cross an even
      number of times.  Elementary and certainly true, but NOT proved in this
      development for an arbitrary configuration.  Note that
      `SegmentGeometry.metCount_even` is a DIFFERENT parity fact -- a closed
      polygon meets a LINE an even number of times -- which is what feeds step
      (2).  It does not give step (4).

  `hne42` : I != 42.  The project's UB42 argument.  Project-original, purely
      combinatorial given the exceptional-class invariants, and being
      formalised separately.  It does NOT depend on AKR Lemma 7.

  `hne40` : I != 40.  This is the entire 13 003 620-graph enumeration --
      obligations (1)-(4) of `EnumerationDomain.lean`, of which (1), (2) and (3)
      are proved and (4) is stated with eight external inputs open.  This is
      where essentially all the remaining risk lives.

  So: the upper bound is NOT proved here.  What is proved is that these three
  facts SUFFICE, and that steps (1)-(3) are already done.  That is the honest
  content and it should not be quoted as more.
-/

import EnumerationDomain
import Exclude42

set_option autoImplicit false

namespace Heptagon
namespace UpperBoundAssembly

open Heptagon.Endgame
open Heptagon.DisjointnessGraph
open Heptagon.EnumerationDomain
open Heptagon.Exclude42

/-- Seven summands, each at least one, total at least seven. -/
theorem degSum_ge_seven (M : Nat → Nat) (h : ∀ i, i < 7 → 1 ≤ deg (M i)) :
    7 ≤ degSum M := by
  have h0 := h 0 (by omega); have h1 := h 1 (by omega); have h2 := h 2 (by omega)
  have h3 := h 3 (by omega); have h4 := h 4 (by omega); have h5 := h 5 (by omega)
  have h6 := h 6 (by omega)
  simp only [degSum, sum7, idx7, List.foldl]
  omega

/-- **Step (3): `I <= 42` for every configuration.**  This is the project's use
of Cerny L1: the minimum-degree fact forces at least seven disjointness edges,
and `I + |E| = 49` converts that into an upper bound on the crossing count.
Both inputs are already proved for an arbitrary `Config`, so this bound is
unconditional. -/
theorem crossCountC_le_42 (K : Config) : crossCountC K ≤ 42 := by
  have hlink := crossCountC_add_degSum K
  have hge := degSum_ge_seven (toMasks K) (min_degree_both_sides K).1
  omega

/-- **THE ASSEMBLY.**  Given parity and the exclusion of the two even values
42 and 40, the upper bound follows.

Read the scope note at the head of this file before quoting this: the three
hypotheses are exactly the open branches, and `hne40` in particular is the whole
enumeration. -/
theorem crossCountC_le_38 (K : Config)
    (heven : crossCountC K % 2 = 0)
    (hne42 : crossCountC K ≠ 42)
    (hne40 : crossCountC K ≠ 40) :
    crossCountC K ≤ 38 := by
  have h42 := crossCountC_le_42 K
  omega

/-- The same statement in terms of the disjointness graph, which is how the
enumeration branch is actually phrased: excluding `I = 40` is excluding
`|E| = 9`, and excluding `I = 42` is excluding `|E| = 7`. -/
theorem crossCountC_le_38_of_edges (K : Config)
    (heven : crossCountC K % 2 = 0)
    (hne7 : degSum (toMasks K) ≠ 7)
    (hne9 : degSum (toMasks K) ≠ 9) :
    crossCountC K ≤ 38 := by
  have hlink := crossCountC_add_degSum K
  have h42 := crossCountC_le_42 K
  omega

/-! ## Discharging the `I != 42` branch

`Exclude42.not_crossCount_42` proves that branch outright, given the
exceptional-class invariant (X1) and the order-type crossing fact (X2).  So it
need not be assumed: the chain below carries it as those two inputs instead,
which are *shared* with the enumeration branch rather than being extra. -/

/-- **The upper bound with the `I = 42` branch DISCHARGED.**

What is left is exactly two things: parity, and the enumeration.  Every other
step of the upper-bound argument is now kernel-checked.

`hMPcard` and `hclass` are the exceptional-class invariant; `hcross` is the
order-type fact (E4)/(X2).  Both are also consumed by the enumeration branch, so
this is not a net increase in what must be believed. -/
theorem crossCountC_le_38_of_enumeration (K : Config) {mcs : List Nat} {MP : Finset Nat}
    (heven : crossCountC K % 2 = 0)
    (hMPcard : MP.card = 5)
    (hclass : ∀ C ∈ mcs, ∃ m ∈ MP, m < 7 ∧ ∀ i, i < 7 → (bitAt C i = true ↔ i ≠ m))
    (hcross : ∀ j, j < 7 → ∃ C ∈ mcs, ∀ i, i < 7 → ¬ DisjointO K i j → bitAt C i = true)
    (hne40 : crossCountC K ≠ 40) :
    crossCountC K ≤ 38 :=
  crossCountC_le_38 K heven
    (fun h42 => absurd (not_crossCount_42 h42 hMPcard hclass hcross) (by simp))
    hne40

/-! ## Non-vacuity

The certificate pair satisfies the parity hypothesis and both exclusions, and the
conclusion is tight there: it attains 38.  So the assembly is not a statement
about the empty set, and the bound it proves cannot be improved. -/

theorem cert_even : crossCountC certConfig % 2 = 0 := by decide

theorem cert_ne_42 : crossCountC certConfig ≠ 42 := by decide

theorem cert_ne_40 : crossCountC certConfig ≠ 40 := by decide

/-- The assembly applied to the certificate pair, by *application of the general
theorem* rather than by `decide` on the conclusion. -/
theorem cert_le_38 : crossCountC certConfig ≤ 38 :=
  crossCountC_le_38 certConfig cert_even cert_ne_42 cert_ne_40

/-- And the bound is attained, so `38` is not slack. -/
theorem cert_attains_38 : crossCountC certConfig = 38 := cert_crossCountC

end UpperBoundAssembly
end Heptagon
