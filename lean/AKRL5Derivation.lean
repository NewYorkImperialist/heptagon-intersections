import FilterSoundness

set_option autoImplicit false

namespace Heptagon.AKRL5Derivation
open Geometry DisjointnessGraph FilterSoundness Endgame

/-!
E1 attempt: BLOCKED at `AdjacentContact`. All coordinates remain integers.
`FullClaim` is exactly the hAKR5 binder, with no crossing-count restriction.
Config includes both Simple7 assumptions and both cross general-position fields.

Parity supplies nonempty neighbourhoods. Component separation supplies their
exclusivity. The ONE missing step is that the two neighbourhoods touch along
Q's cyclic side order. We do not derive this from orient and simplicity.
`contact_iff_full` proves that the named hypothesis repackages E1 and does not
reduce its outstanding mathematical content. No unconditional E1 is claimed.

The abstract matching fixture satisfies minimum degree on BOTH sides and has
six complementary entries per row and column, yet fails the target for (0,1).
Thus even these numerical consequences of the parity approach cannot finish.
It is NOT an integer geometric fixture, not a Config, and not a refutation of
E1. Realizability by two simple integer polygons remains essential and unproved.
-/

/-- The full geometric consequence consumed by filter (a). -/
def FullClaim (K : Config) : Prop :=
  ∀ p ∈ consecPairs,
    ¬ Conn (toMasks K) (Vtx.P p.1) (Vtx.P p.2) →
    AKR5ConclusionG (DisjointO K) p.1 p.2

/-- Named, proved subcondition: both disjointness neighbourhoods are inhabited. -/
def InhabitedPair (K : Config) (a b : Nat) : Prop :=
  (∃ i, i < 7 ∧ DisjointO K a i) ∧ (∃ j, j < 7 ∧ DisjointO K b j)

/-- Named, proved subcondition: no Q-side belongs to both neighbourhoods. -/
def Exclusive (K : Config) (a b : Nat) : Prop :=
  ∀ j, j < 7 → DisjointO K a j → ¬ DisjointO K b j

/-- Strictly weaker than E1: parity supplies witnesses without adjacency. -/
theorem inhabited_of_parity (K : Config) (a b : Nat) (ha : a < 7) (hb : b < 7) :
    InhabitedPair K a b :=
  ⟨exists_disjointO_Qside K a ha, exists_disjointO_Qside K b hb⟩

/-- Strictly weaker than E1: component separation excludes common neighbours. -/
theorem exclusive_of_separation (K : Config) (a b : Nat) (ha : a < 7) (hb : b < 7)
    (hseparated : ¬ Conn (toMasks K) (Vtx.P a) (Vtx.P b)) : Exclusive K a b := by
  intro j hj haj hbj
  exact hseparated (Conn.stepQP (conn_of_disjointO K a j ha hj haj) hb hj
    ((toMasks_spec K b j hb hj).mpr hbj))

/-- ONE UNPROVED STEP: under the full component guard, the two inhabited,
exclusive neighbourhoods contain cyclically adjacent Q-sides. InhabitedPair
and Exclusive are named sub-hypotheses already derived above; retaining the
component guard avoids silently strengthening E1 to mere disjoint rows. -/
def AdjacentContact (K : Config) : Prop :=
  ∀ p ∈ consecPairs,
    ¬ Conn (toMasks K) (Vtx.P p.1) (Vtx.P p.2) →
    InhabitedPair K p.1 p.2 → Exclusive K p.1 p.2 →
    ∃ i, i < 7 ∧ ∃ j, j < 7 ∧ Endgame.CycAdj i j ∧
      DisjointO K p.1 i ∧ DisjointO K p.2 j

/-- Full E1, CONDITIONAL on the unresolved cyclic contact statement. -/
theorem full_of_contact (K : Config) (hcontact : AdjacentContact K) : FullClaim K := by
  intro p hp hsep
  obtain ⟨ha, hb, _⟩ := consecPairs_ok p hp
  have he := exclusive_of_separation K p.1 p.2 ha hb hsep
  obtain ⟨i, hi, j, hj, hadj, hai, hbj⟩ :=
    hcontact p hp hsep (inhabited_of_parity K p.1 p.2 ha hb) he
  exact ⟨i, hi, j, hj, hadj, hai, hbj, (fun haj => he j hj haj hbj), he i hi hai⟩

/-- Honesty check: the missing hypothesis is equivalent to E1 at every Config. -/
theorem contact_iff_full (K : Config) : AdjacentContact K ↔ FullClaim K := by
  constructor
  · exact full_of_contact K
  · intro h p hp hsep _ _
    obtain ⟨i, hi, j, hj, hadj, hai, hbj, _, _⟩ := h p hp hsep
    exact ⟨i, hi, j, hj, hadj, hai, hbj⟩

/-- Conditional filter assembly; E1 has been renamed, NOT discharged. -/
theorem filterA_of_contact (K : Config) (cmp : Nat → Nat)
    (hcmp : ∀ a b, a < 7 → b < 7 → cmp a ≠ cmp b →
      ¬ Conn (toMasks K) (Vtx.P a) (Vtx.P b))
    (hcontact : AdjacentContact K) : L5PairsOk (toMasks K) cmp consecPairs :=
  filterA_sound K cmp hcmp (full_of_contact K hcontact)

/-- Abstract graph only: p0 has neighbour q0, p1 has neighbour q3. -/
def fixtureMasks (i : Nat) : Nat := [1, 8, 2, 4, 16, 32, 64].getD i 0

/-- Strictly weaker than geometric realizability: all rows and columns have
one disjoint entry and therefore six complementary entries (an even count). -/
theorem fixture_degrees :
    ∀ i, i < 7 → deg (fixtureMasks i) = 1 ∧
      deg (transposeMask fixtureMasks i) = 1 := by decide

/-- The guard genuinely fires for the consecutive pair (0,1). -/
theorem fixture_separated : ¬ Conn fixtureMasks (Vtx.P 0) (Vtx.P 1) :=
  not_conn_of_sep (sepClosed_of_sepClosedB
    (show sepClosedB fixtureMasks 1 1 = true from by decide)) (by decide) (by decide)

/-- Numerical parity consequences and separation do not imply E1.
This is a graph obstruction only; no geometric realization is asserted. -/
theorem fixture_rejected : l5TestB fixtureMasks 0 1 = false := by decide

/-- Non-vacuity of the parity ingredient at the actual integer certificate. -/
theorem cert_inhabited : InhabitedPair certConfig 2 3 :=
  inhabited_of_parity certConfig 2 3 (by decide) (by decide)

/-- Non-vacuity of the component guard at the same consecutive pair. -/
theorem cert_separated : ¬ Conn (toMasks certConfig) (Vtx.P 2) (Vtx.P 3) :=
  Example.cert_hcmp 2 3 (by decide) (by decide) (by decide)

/-- The unresolved hypothesis holds at this one certificate, by its existing
finite verification. This does not prove it for arbitrary Config. -/
theorem cert_contact : AdjacentContact certConfig :=
  (contact_iff_full certConfig).mpr Example.cert_hAKR5

/-- Apply the conditional assembly to the genuine certificate. -/
theorem cert_filterA : L5PairsOk (toMasks certConfig) Example.certCmp consecPairs :=
  filterA_of_contact certConfig Example.certCmp Example.cert_hcmp cert_contact

#print axioms inhabited_of_parity
#print axioms exclusive_of_separation
#print axioms full_of_contact
#print axioms contact_iff_full
#print axioms filterA_of_contact
#print axioms fixture_degrees
#print axioms fixture_separated
#print axioms fixture_rejected
#print axioms cert_inhabited
#print axioms cert_separated
#print axioms cert_contact
#print axioms cert_filterA

end Heptagon.AKRL5Derivation
