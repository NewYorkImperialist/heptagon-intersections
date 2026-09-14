import FilterSoundness
import Mathlib.Tactic.Ring

set_option autoImplicit false

namespace Heptagon.CernyL2Derivation
open Geometry DisjointnessGraph FilterSoundness

/-!
Attempt at E5, with the unresolved step exposed as `CollisionObstruction`.
This file does not discharge E5. The conditional conclusion covers the full
forward-or-reverse window predicate, without a crossing-count restriction.

The proved geometric ingredients are simplicity excluding even adjacent-side
proper crossings, and preservation of a strict half-plane by a triangle's
interior. Neither is sufficient for E5. The missing step is a simultaneous
segment-realizability argument: the four complementary crossing patterns at an
inside-triangle window must force a crossing between two Q sides.
`CollisionObstruction` states exactly that step, with no appeal to point sets.

The concrete `localFixture` shows why testing each selected segment separately
cannot finish the argument: all sixteen required crossing/noncrossing entries,
the triangle condition, the simple five-vertex path, and cross general position
hold, but the selected segments cross each other. It is deliberately NOT a Config.
-/

/-- Strict integer orientation test, in either orientation of the triangle. -/
def InsideTriangle (a b c d : Pt) : Prop :=
  (0 < orient a b d ∧ 0 < orient b c d ∧ 0 < orient c a d) ∨
  (orient a b d < 0 ∧ orient b c d < 0 ∧ orient c a d < 0)

instance (a b c d : Pt) : Decidable (InsideTriangle a b c d) := by
  unfold InsideTriangle; infer_instance

/-- Both traversals from the audited pipeline, including wrapping windows. -/
def Window (K : Config) (w : Nat) : Prop :=
  InsideTriangle (vtx 7 K.PV w) (vtx 7 K.PV (w+1))
    (vtx 7 K.PV (w+2)) (vtx 7 K.PV (w+3)) ∨
  InsideTriangle (vtx 7 K.PV (w+4)) (vtx 7 K.PV (w+3))
    (vtx 7 K.PV (w+2)) (vtx 7 K.PV (w+1))

/-- Integer affine identity underlying the triangle half-plane argument. -/
theorem triangle_affine (L : Line) (a b c d : Pt) :
    orient a b c * L.eval d = orient b c d * L.eval a +
      orient c a d * L.eval b + orient a b d * L.eval c := by
  simp only [orient, Line.eval]
  ring

/-- Strictly weaker than E5: a positively oriented interior point stays in
any strict positive half-plane containing the triangle's three vertices.
The unresolved gap is simultaneous realizability of the four Q segments. -/
theorem triangle_positive_halfplane (L : Line) (a b c d : Pt)
    (hinside : 0 < orient a b d ∧ 0 < orient b c d ∧ 0 < orient c a d)
    (ha : 0 < L.eval a) (hb : 0 < L.eval b) (hc : 0 < L.eval c) :
    0 < L.eval d := by
  have hsum : orient a b c = orient a b d + orient b c d + orient c a d := by
    simp only [orient]; ring
  have harea : 0 < orient a b c := by omega
  have hp : 0 < orient a b c * L.eval d := by
    rw [triangle_affine]
    exact add_pos (add_pos (Int.mul_pos hinside.2.1 ha) (Int.mul_pos hinside.2.2 hb))
      (Int.mul_pos hinside.1 hc)
  by_contra hn
  have hd : L.eval d ≤ 0 := by omega
  have hh := Int.mul_le_mul_of_nonneg_left hd harea.le
  simp only [Int.mul_zero] at hh
  omega

/-- Simplicity excludes all proper side crossings, including shared endpoints.
No extra hypothesis about adjacency of the four selected Q sides is needed. -/
theorem simple_sides_noncrossing (V : Fin 7 → Pt) (hs : Simple7 V) (i j : Fin 7) :
    ¬ ProperCross (V i) (V (i+1)) (V j) (V (j+1)) := by
  by_cases hadj : LowerBound.Adjacent i j
  · have hcases : i = j ∨ i+1 = j ∨ j+1 = i := by
      revert i j; decide
    rcases hcases with h | h | h
    · subst j; simp [ProperCross, orient]
    · rw [← h]; simp [ProperCross, orient]
    · rw [← h]; simp [ProperCross, orient]
  · exact hs.2.2.2 i j hadj

/-- The twelve crossings are genuine segment crossings, not only line meets. -/
theorem matching_crossings (K : Config) (w j0 j1 j2 j3 : Nat)
    (hm : GeoWindowMatching (DisjointO K) w j0 j1 j2 j3) :
    ∀ t, t < 4 → ∀ u, u < 4 → t ≠ u →
      ProperCross (vtx 7 K.PV ((w+t)%7)) (vtx 7 K.PV (((w+t)%7)+1))
        (vtx 7 K.QV (CernyL2.qAt j0 j1 j2 j3 u))
        (vtx 7 K.QV (CernyL2.qAt j0 j1 j2 j3 u + 1)) := by
  intro t ht u hu hne
  exact Classical.byContradiction (fun hn => hne ((hm.2.2 t ht u hu).mp hn))

/-- THE ONE UNPROVED STEP. The four exact complementary crossing patterns at
an admitted window force a proper crossing between two Q sides.
The diagonal noncrossings are retained: dropping them would strengthen the
obligation without justification. Both window traversals are retained too.
This is a named hypothesis, not a proved geometric lemma. In the presence of
Q simplicity it is equivalent to excluding the matching; it is a decomposition,
not a reduction of the amount of outstanding geometric research. -/
def CollisionObstruction (K : Config) : Prop :=
  ∀ w, Window K w → ∀ j0 j1 j2 j3,
    (∀ u, u < 4 → CernyL2.qAt j0 j1 j2 j3 u < 7) →
    (∀ t, t < 4 → ∀ u, u < 4 → t ≠ u →
      CernyL2.qAt j0 j1 j2 j3 t ≠ CernyL2.qAt j0 j1 j2 j3 u) →
    (∀ t, t < 4 → DisjointO K ((w+t)%7) (CernyL2.qAt j0 j1 j2 j3 t)) →
    (∀ t, t < 4 → ∀ u, u < 4 → t ≠ u →
      ProperCross (vtx 7 K.PV ((w+t)%7)) (vtx 7 K.PV (((w+t)%7)+1))
        (vtx 7 K.QV (CernyL2.qAt j0 j1 j2 j3 u))
        (vtx 7 K.QV (CernyL2.qAt j0 j1 j2 j3 u + 1))) →
    ∃ i j : Fin 7, ProperCross (K.Qv i) (K.Qv (i+1)) (K.Qv j) (K.Qv (j+1))

/-- Full geometric consequence, CONDITIONAL on the named unresolved step.
Config supplies both simplicities and cross general position; hwindow supplies
strict triangle interiority in either traversal. This is not an E5 discharge. -/
theorem no_window_matching (K : Config) (hcollision : CollisionObstruction K)
    (w : Nat) (hwindow : Window K w) :
    ¬ ∃ j0 j1 j2 j3, GeoWindowMatching (DisjointO K) w j0 j1 j2 j3 := by
  rintro ⟨j0, j1, j2, j3, hm⟩
  obtain ⟨i, j, hij⟩ := hcollision w hwindow j0 j1 j2 j3 hm.1 hm.2.1
    (fun t ht => (hm.2.2 t ht t ht).mpr rfl)
    (matching_crossings K w j0 j1 j2 j3 hm)
  exact simple_sides_noncrossing K.Qv K.Q_simple i j hij

/-- The precise hC2 binder and existing filterD_sound are supplied, but only
conditionally. hW is correctness of the class's window list (part of E7);
hcollision is the remaining E5 geometry. No unconditional soundness is claimed. -/
theorem filterD_of_collision (K : Config) (W : List Nat)
    (hW : ∀ w ∈ W, Window K w) (hcollision : CollisionObstruction K) :
    L2Ok (toMasks K) W :=
  filterD_sound K W (fun w hw => no_window_matching K hcollision w (hW w hw))

/-- Certificate instantiation of the derived simplicity ingredient. -/
theorem cert_sides_noncrossing (i j : Fin 7) :
    ¬ ProperCross (certConfig.Qv i) (certConfig.Qv (i+1))
      (certConfig.Qv j) (certConfig.Qv (j+1)) :=
  simple_sides_noncrossing certConfig.Qv certConfig.Q_simple i j

/-- Five vertices of the reverse window in audit section 3.5. -/
def fixtureP : Fin 5 → Pt
  | 0 => (-249,212)
  | 1 => (-7,5)
  | 2 => (-39,250)
  | 3 => (-168,192)
  | 4 => (-109,189)

/-- Independent segments, deliberately not a polygon Q. -/
def fixtureQ : Fin 4 → Pt × Pt
  | 0 => ((83,35), (-230,273))
  | 1 => ((-185,-23), (-148,233))
  | 2 => ((-21,256), (-229,159))
  | 3 => ((55,173), (-265,212))

/-- Non-vacuity and a counterexample to the independent-segment version
with intersection-freeness omitted: the path is simple, D is strictly
interior, all cross determinants avoid zero, and the
exact matching pattern holds. Yet selected Q segments cross each other.
Strictly weaker than E5: this is a finite fixture, not a Config or a refutation
of E5. It demonstrates the missing simultaneous-realizability constraint. -/
theorem localFixture :
    InsideTriangle (fixtureP 0) (fixtureP 1) (fixtureP 2) (fixtureP 3) ∧
    (∀ i j : Fin 5, i ≠ j → fixtureP i ≠ fixtureP j) ∧
    (∀ i j k : Fin 5, i ≠ j → j ≠ k → i ≠ k →
      orient (fixtureP i) (fixtureP j) (fixtureP k) ≠ 0) ∧
    (∀ i j : Fin 4, ¬ ProperCross (fixtureP i.castSucc) (fixtureP i.succ)
      (fixtureP j.castSucc) (fixtureP j.succ)) ∧
    (∀ t u : Fin 4,
      (¬ ProperCross (fixtureP t.castSucc) (fixtureP t.succ)
        (fixtureQ u).1 (fixtureQ u).2 ↔ t = u)) ∧
    (∀ t u : Fin 4,
      orient (fixtureP t.castSucc) (fixtureP t.succ) (fixtureQ u).1 ≠ 0 ∧
      orient (fixtureP t.castSucc) (fixtureP t.succ) (fixtureQ u).2 ≠ 0) ∧
    (∀ t : Fin 5, ∀ u : Fin 4,
      orient (fixtureQ u).1 (fixtureQ u).2 (fixtureP t) ≠ 0) ∧
    ProperCross (fixtureQ 0).1 (fixtureQ 0).2 (fixtureQ 1).1 (fixtureQ 1).2 := by
  decide

/-- The unresolved hypothesis is satisfiable at the certificate. This uses
its already checked finite matching exclusion; it does not prove general E5. -/
theorem cert_collision : CollisionObstruction certConfig := by
  intro w _ j0 j1 j2 j3 hb hd hn hx
  have hm : GeoWindowMatching (DisjointO certConfig) (w % 7) j0 j1 j2 j3 := by
    refine ⟨hb, hd, ?_⟩
    intro t ht u hu
    have he : (w % 7 + t) % 7 = (w + t) % 7 := by omega
    rw [he]
    constructor
    · intro hdis
      by_contra hne
      exact hdis (hx t ht u hu hne)
    · intro htu
      subst u
      exact hn t ht
  exact False.elim (FilterSoundness.Example.cert_hC2 (w % 7)
    (CernyL2.mem_idx7 (Nat.mod_lt _ (by decide))) ⟨j0, j1, j2, j3, hm⟩)

/-- A real, nonempty reverse window at the certificate. -/
theorem cert_window : Window certConfig 3 := by
  unfold Window
  exact Or.inr (by decide)

/-- Application of the conditional assembly at a genuine admitted window.
Strictly weaker than E5: only the certificate configuration is covered. -/
theorem cert_filterD_derived : L2Ok (toMasks certConfig) [3] := by
  apply filterD_of_collision certConfig [3] _ cert_collision
  intro w hw
  have he : w = 3 := by simpa using hw
  subst w
  exact cert_window

#print axioms triangle_affine
#print axioms triangle_positive_halfplane
#print axioms simple_sides_noncrossing
#print axioms matching_crossings
#print axioms no_window_matching
#print axioms filterD_of_collision
#print axioms cert_sides_noncrossing
#print axioms localFixture
#print axioms cert_collision
#print axioms cert_window
#print axioms cert_filterD_derived

end Heptagon.CernyL2Derivation
