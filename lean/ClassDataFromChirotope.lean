/-
Generated tables: python3 python/classification/gen_lean_class_tables.py
Source: data/exceptional_profiles/exceptional_profiles_14.json
SHA-256: 4cb2625c4e728d76b38f6462778a9385eff7f180c36b2399474e9f0493372505
The kernel checks the Lean transcription, not JSON or the generator.
E7 finite consistency result: M and maximal crossing sets are recomputed
from each stored chirotope. Windows and avoiding pairs are not checked.
X1 is discharged for these 14 stored classes. Geometry-to-class membership
(X3) and crossing containment (X2/E4) remain hypotheses.
E7 remains incomplete: completeness of the 135-representative list, its
polygon classification, and geometric interpretation are not proved here.
-/
import ClassInvariant

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Heptagon.ClassDataFromChirotope
open ClassInvariant

def signs : Nat → List Int
  | 0 => [1, 1, 1, 1, -1, 1, 1, 1, -1, -1, 1, -1, 1, -1, -1, -1, -1, -1, 1, 1, -1, 1, -1, 1, -1, 1, 1, -1, 1, -1, -1, -1, 1, -1, -1]
  | 1 => [-1, 1, -1, 1, -1, 1, 1, -1, 1, -1, 1, -1, -1, 1, 1, 1, 1, -1, -1, -1, 1, -1, -1, -1, 1, -1, 1, 1, -1, 1, -1, -1, -1, 1, -1]
  | 2 => [1, -1, -1, -1, -1, 1, -1, 1, -1, 1, -1, 1, -1, -1, 1, 1, 1, 1, 1, -1, -1, -1, 1, 1, -1, 1, 1, 1, -1, -1, 1, 1, 1, -1, -1]
  | 3 => [-1, 1, -1, 1, -1, 1, -1, 1, -1, -1, 1, -1, -1, 1, 1, 1, 1, -1, 1, -1, 1, -1, -1, 1, 1, -1, 1, -1, -1, 1, 1, -1, -1, 1, -1]
  | 4 => [-1, -1, 1, -1, 1, -1, 1, -1, 1, -1, -1, 1, 1, -1, 1, 1, -1, 1, -1, -1, -1, 1, 1, -1, 1, -1, -1, 1, 1, -1, 1, 1, -1, 1, 1]
  | 5 => [1, -1, 1, -1, 1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, 1, 1, -1, -1, -1, 1, -1, 1, 1, 1, -1, -1, 1, 1, 1, -1, -1]
  | 6 => [-1, -1, 1, -1, 1, -1, 1, -1, 1, 1, -1, 1, 1, -1, -1, 1, -1, 1, -1, 1, -1, -1, 1, 1, -1, 1, -1, 1, 1, -1, -1, 1, 1, -1, 1]
  | 7 => [-1, 1, 1, 1, -1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, -1, -1, -1, 1, 1, 1, -1, 1, 1, -1, -1, -1, 1, -1, -1, -1, 1, 1, 1]
  | 8 => [-1, -1, 1, -1, 1, -1, 1, -1, 1, 1, -1, 1, 1, -1, -1, 1, -1, 1, -1, 1, -1, 1, 1, 1, -1, 1, -1, 1, 1, -1, -1, 1, 1, -1, 1]
  | 9 => [-1, 1, -1, 1, 1, -1, 1, -1, 1, 1, 1, -1, -1, 1, -1, -1, 1, -1, 1, 1, -1, -1, -1, 1, -1, 1, 1, -1, -1, 1, -1, -1, 1, -1, -1]
  | 10 => [1, -1, 1, -1, -1, 1, 1, 1, -1, -1, -1, 1, 1, -1, 1, 1, -1, 1, 1, -1, 1, -1, 1, 1, -1, -1, -1, 1, 1, -1, 1, 1, -1, 1, 1]
  | 11 => [1, -1, 1, -1, -1, 1, -1, 1, -1, -1, 1, 1, 1, -1, 1, 1, 1, 1, 1, -1, -1, -1, 1, 1, -1, 1, 1, 1, -1, 1, 1, -1, -1, -1, 1]
  | 12 => [1, 1, -1, 1, -1, -1, 1, -1, 1, -1, 1, -1, -1, 1, 1, -1, 1, 1, 1, -1, 1, -1, -1, -1, 1, -1, -1, -1, 1, 1, -1, -1, -1, 1, -1]
  | 13 => [-1, 1, -1, 1, 1, -1, 1, -1, 1, 1, 1, -1, -1, 1, -1, -1, 1, -1, -1, 1, -1, 1, -1, -1, 1, 1, 1, -1, -1, 1, -1, -1, 1, -1, -1]
  | _ => []

/-- Increasing triples in lexicographic order. -/
def triples : List (Nat × Nat × Nat) :=
  (List.range 7).flatMap fun a => (List.range 7).flatMap fun b =>
    (List.range 7).filterMap fun c => if a < b ∧ b < c then some (a,b,c) else none

/-- Alternating extension of the sign vector; repeated indices return zero. -/
def chiro (v : List Int) (a b c : Nat) : Int :=
  if a = b ∨ b = c ∨ a = c then 0 else
  let lo := min a (min b c)
  let hi := max a (max b c)
  let idx := triples.idxOf (lo, a+b+c-lo-hi, hi)
  let inversions := (if a > b then 1 else 0) +
    (if a > c then 1 else 0) + (if b > c then 1 else 0)
  (if inversions % 2 = 0 then 1 else -1) * v.getD idx 0

/-- Vertex subsets as seven-bit masks: empty, full, and the four
endpoint choices for every ordered pair, exactly halfplane_subsets. -/
def halfplaneSubsets (chi : Nat → Nat → Nat → Int) : List Nat :=
  (0 :: 127 :: ((List.range 7).flatMap fun i =>
    (List.range 7).flatMap fun j => if i = j then [] else
      let L := ((List.range 7).filter fun k =>
        k != i && k != j && decide (chi i j k > 0)).foldl (fun m k => m + 2^k) 0
      [L, L ||| 2^i, L ||| 2^j, L ||| 2^i ||| 2^j])).eraseDups

def sideMask (A : Nat) : Nat :=
  ((List.range 7).filter fun s => A.testBit s != A.testBit ((s+1)%7)).foldl
    (fun m s => m + 2^s) 0

/-- The family is a set represented by a duplicate-free list. -/
def fam (chi : Nat → Nat → Nat → Int) : List Nat :=
  ((halfplaneSubsets chi).map sideMask).eraseDups

def missing (F : List Nat) : List Nat :=
  (List.range 7).filter fun j => F.contains (127 - 2^j)

/-- Inclusion-maximal members, sorted to match the JSON mask order. -/
def maximal (F : List Nat) : List Nat :=
  (List.range 128).filter fun m => F.contains m &&
    !(F.any fun m2 => m != m2 && (m &&& m2) == m)

/-- Both recomputed fields equal the stored fields for every class.
This is the finite consistency part of E7 only. -/
theorem recomputed_eq : ∀ c : Fin 14,
    (missing (fam (chiro (signs c)))).toFinset = storedM c ∧
    maximal (fam (chiro (signs c))) = storedMaximal c := by decide +kernel

end Heptagon.ClassDataFromChirotope
