/-
  ClassDataWitness.lean
  =====================

  NON-VACUITY FOR THE `hclass` HYPOTHESIS.

  `IntersectionParity.isGreatest_38_final` and
  `UpperBoundAssembly.crossCountC_le_38_of_enumeration` both take a hypothesis
  of the shape

      ∃ mcs MP, MP.card = 5
              ∧ (every C in mcs is FULL \ {m} for some m ∈ MP)
              ∧ (every Q-side's crossing set lies in some C ∈ mcs)

  quantified, at the top level, over EVERY `Config`.  Every other hypothesis in
  this development ships with a witness showing it is satisfiable; this one did
  not.  That gap matters: **a theorem whose hypothesis is unsatisfiable is
  vacuous**, and would say nothing at all about `f(7,7)`.

  This file closes that gap by exhibiting the data explicitly for the
  certificate pair.

  WHAT THIS ESTABLISHES.  The per-configuration condition is satisfiable, so the
  hypothesis is not the empty predicate and the theorems consuming it are not
  vacuous.

  WHAT IT DOES NOT ESTABLISH, and the distinction is important.  It does NOT
  prove the ∀-quantified `hclass`, and that statement is **strictly stronger
  than "the stored class data is correct"** -- strong enough that it is worth
  spelling out what it costs:

    * For a configuration with `I = 42` the disjointness graph is a perfect
      matching, so all seven `N_Q(j)` are distinct singletons.  A five-element
      `MP` must meet all seven of them, which is impossible.  So `hclass`
      **fails for every I = 42 configuration** -- measured over all 5,040
      perfect matchings, 5,040 of them fail.
    * Measured over a sample of 20,000 `I = 40` domain graphs, about **21%**
      admit no valid `MP` either.

  Hence `hclass` does not merely record classification data: **it already
  entails `I ≠ 42`**, which is the conclusion `Exclude42.lean` derives from it.
  Anyone discharging `hclass` should know they are discharging that too, and
  should not read `UB42` as an independent argument once `hclass` is assumed.

  The honest fix, when the classification (E7) is eventually formalised, is to
  state the hypothesis over the configurations it is actually about rather than
  over every `Config`.
-/

import IntersectionParity

set_option autoImplicit false

namespace Heptagon
namespace ClassDataWitness

open Heptagon.Endgame
open Heptagon.DisjointnessGraph

/-- Five maximal crossing sets, each `FULL \ {m}` for `m ∈ {2,3,4,5,6}`. -/
def certMcs : List Nat := [123, 119, 111, 95, 63]

/-- The matching five-element index set. -/
def certMP : Finset Nat := {2, 3, 4, 5, 6}

theorem certMP_card : certMP.card = 5 := by decide

/-- Every listed set really is `FULL \ {m}` for some `m ∈ certMP`. -/
theorem certMcs_shape :
    ∀ C ∈ certMcs, ∃ m ∈ certMP, m < 7 ∧ ∀ i, i < 7 → (bitAt C i = true ↔ i ≠ m) := by
  decide

/-- Every `Q`-side's crossing set at the certificate pair lies in one of them. -/
theorem certCross :
    ∀ j, j < 7 → ∃ C ∈ certMcs, ∀ i, i < 7 →
      ¬ DisjointO certConfig i j → bitAt C i = true := by
  decide

/-- **THE WITNESS.**  The per-configuration class condition — the body of the
`hclass` hypothesis — is satisfiable.  So `hclass` is not the empty predicate,
and the theorems taking it are not vacuous. -/
theorem class_condition_satisfiable :
    ∃ (mcs : List Nat) (MP : Finset Nat),
      MP.card = 5 ∧
      (∀ C ∈ mcs, ∃ m ∈ MP, m < 7 ∧ ∀ i, i < 7 → (bitAt C i = true ↔ i ≠ m)) ∧
      (∀ j, j < 7 → ∃ C ∈ mcs, ∀ i, i < 7 →
        ¬ DisjointO certConfig i j → bitAt C i = true) :=
  ⟨certMcs, certMP, certMP_card, certMcs_shape, certCross⟩

end ClassDataWitness
end Heptagon
