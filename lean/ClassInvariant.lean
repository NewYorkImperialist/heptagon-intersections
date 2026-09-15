/-
Generated tables: python3 python/classification/gen_lean_class_tables.py
Source: data/exceptional_profiles/exceptional_profiles_14.json
SHA-256: 4cb2625c4e728d76b38f6462778a9385eff7f180c36b2399474e9f0493372505
The kernel checks the Lean transcription, not JSON or the generator.
X1 is discharged for these 14 stored classes. Geometry-to-class membership
(X3) and crossing containment (X2/E4) remain hypotheses.
E7 remains incomplete: completeness of the 135-representative list, its
polygon classification, and geometric interpretation are not proved here.
-/
import Exclude42

set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Heptagon.ClassInvariant
open Endgame DisjointnessGraph EnumerationDomain

def storedM : Nat → Finset Nat
  | 0 => {1, 3, 4, 5, 6}
  | 1 => {0, 1, 3, 4, 6}
  | 2 => {1, 2, 3, 5, 6}
  | 3 => {0, 1, 3, 4, 6}
  | 4 => {1, 2, 4, 5, 6}
  | 5 => {0, 1, 2, 3, 6}
  | 6 => {1, 2, 3, 4, 6}
  | 7 => {1, 2, 3, 4, 6}
  | 8 => {1, 2, 3, 4, 6}
  | 9 => {0, 1, 2, 4, 5}
  | 10 => {1, 2, 4, 5, 6}
  | 11 => {1, 2, 4, 5, 6}
  | 12 => {0, 2, 3, 4, 6}
  | 13 => {1, 2, 4, 5, 6}
  | _ => ∅

def storedMaximal : Nat → List Nat
  | 0 => [63, 95, 111, 119, 125]
  | 1 => [63, 111, 119, 125, 126]
  | 2 => [63, 95, 119, 123, 125]
  | 3 => [63, 111, 119, 125, 126]
  | 4 => [63, 95, 111, 123, 125]
  | 5 => [63, 119, 123, 125, 126]
  | 6 => [63, 111, 119, 123, 125]
  | 7 => [63, 111, 119, 123, 125]
  | 8 => [63, 111, 119, 123, 125]
  | 9 => [95, 111, 123, 125, 126]
  | 10 => [63, 95, 111, 123, 125]
  | 11 => [63, 95, 111, 123, 125]
  | 12 => [63, 111, 119, 123, 126]
  | 13 => [63, 95, 111, 123, 125]
  | _ => []

/-- Exactly five distinct missing-side indices in each stored class. -/
theorem M_card : ∀ c : Fin 14, (storedM c).card = 5 := by decide

/-- Equality of sets, in both directions: FULL minus one member of M. -/
theorem maximal_exact : ∀ c : Fin 14,
    (storedMaximal c).toFinset = (storedM c).image (fun m => 127 - 2^m) := by decide

/-- Every stored maximal crossing set has six sides. -/
theorem maximal_size : ∀ c : Fin 14, ∀ C ∈ storedMaximal c,
    ((Finset.range 7).filter (fun i => bitAt C i = true)).card = 6 := by decide

/-- The exact interface consumed by Exclude42, checked for every class. -/
theorem class_interface : ∀ c : Fin 14, ∀ C ∈ storedMaximal c,
    ∃ m ∈ storedM c, m < 7 ∧ ∀ i, i < 7 → (bitAt C i = true ↔ i ≠ m) := by decide

/-- X1 supplied from the table. The caller still supplies the geometric
class correspondence through hcross (X2/E4 and X3); no classification of
arbitrary configurations is asserted. -/
theorem not_crossCount_42 (c : Fin 14) {K : Config}
    (hcross : ∀ j, j < 7 → ∃ C ∈ storedMaximal c,
      ∀ i, i < 7 → ¬ DisjointO K i j → bitAt C i = true) :
    crossCountC K ≠ 42 := by
  intro hI
  exact Exclude42.not_crossCount_42 hI (M_card c) (class_interface c) hcross

end Heptagon.ClassInvariant
