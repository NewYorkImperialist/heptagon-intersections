import LemmaABridge
import ClassDataWitness

set_option autoImplicit false

namespace Heptagon
namespace ExceptionalClass

open Endgame DisjointnessGraph EnumerationDomain

/-!
## K-22: the exceptional restriction does not restore independence

This is an audit of the proposed restriction, not a repair meeting the requested
independence criterion. Every hypothetical 42-crossing configuration is already
exceptional by Lemma A. Thus `RestrictedClassHypothesis` alone, over the existing
proved library, still excludes 42. The two branches remain entangled.

The conditional upper bound below is fully proved but is only partial progress
toward the requested repair: it does not provide an independent UB42 argument.
The certificate witness establishes a local condition only, not satisfiability
of the universal hypothesis. No real-coordinate reasoning is introduced here.
-/

/-- The exact no-uncrossable-four-set formulation of `LemmaABridge`, using its
`Rgeo` relation. The bridge has no separately named predicate to alias. -/
def Exceptional (K : Config) : Prop :=
  ¬ ∃ S : Finset (Fin 7), S.card = 4 ∧
    (∀ j : Fin 7, ∃ i ∈ S, LemmaABridge.Rgeo K i j) ∧
    (∀ i : Fin 7, i ∉ S → ∃ j : Fin 7, LemmaABridge.Rgeo K i j)

/-- The existing class condition for a single configuration. -/
def ClassCondition (K : Config) : Prop :=
  ∃ (mcs : List Nat) (MP : Finset Nat), MP.card = 5 ∧
    (∀ C ∈ mcs, ∃ m ∈ MP, m < 7 ∧
      ∀ i, i < 7 → (bitAt C i = true ↔ i ≠ m)) ∧
    (∀ j, j < 7 → ∃ C ∈ mcs, ∀ i, i < 7 →
      ¬ DisjointO K i j → bitAt C i = true)

/-- Proposed exceptional-only hypothesis. This restriction is insufficient for
independence: `not_crossCount_42` proves it still entails the 42 exclusion. -/
def RestrictedClassHypothesis : Prop :=
  ∀ K : Config, Exceptional K → ClassCondition K

/-- Lemma A puts every hypothetical 42-crossing configuration inside the
restricted domain, so that domain cannot separate off the 42 branch. -/
theorem exceptional_of_crossCount_42 (K : Config) (h42 : crossCountC K = 42) :
    Exceptional K := by
  have h49 := crossCountC_add_degSum K
  exact LemmaABridge.no_uncrossable_four_set_of_seven_edges K (by omega)

/-- Formal obstruction to the requested independence criterion: the restricted
hypothesis is the only extra assumption needed to exclude 42. -/
theorem not_crossCount_42 (hclass : RestrictedClassHypothesis) (K : Config) :
    crossCountC K ≠ 42 := by
  intro h42
  obtain ⟨mcs, MP, hcard, hshape, hcross⟩ :=
    hclass K (exceptional_of_crossCount_42 K h42)
  exact Exclude42.not_crossCount_42 h42 hcard hshape hcross

/-- Conditional upper bound; partial progress toward the requested repair only.
The restricted class assumption still entails UB42, and exclusion of 40 remains
an additional hypothesis. -/
theorem crossCountC_le_38_restricted (hclass : RestrictedClassHypothesis)
    (K : Config) (hne40 : crossCountC K ≠ 40) : crossCountC K ≤ 38 :=
  UpperBoundAssembly.crossCountC_le_38 K (IntersectionParity.crossCountC_even K)
    (not_crossCount_42 hclass K) hne40

/-- Conditional analogue of the final theorem; partial progress toward the
requested repair only, with no claim of restored independence or of either
remaining hypothesis being discharged. -/
theorem isGreatest_38_restricted (hclass : RestrictedClassHypothesis)
    (hne40 : ∀ K : Config, crossCountC K ≠ 40) :
    IsGreatest MainTheorem.attained 38 :=
  MainTheorem.isGreatest_38 IntersectionParity.crossCountC_even
    (not_crossCount_42 hclass) hne40

/-- Local witness reusing the explicit certificate data. This proves the
restricted implication at `certConfig`, not the universal hypothesis, and does
not claim that the certificate itself is exceptional. -/
theorem cert_restricted_condition : Exceptional certConfig → ClassCondition certConfig :=
  fun _ => ClassDataWitness.class_condition_satisfiable

end ExceptionalClass
end Heptagon
