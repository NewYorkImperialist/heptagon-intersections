"""Generate the two class-check modules from repository JSON; run at repo root."""
from itertools import combinations
from pathlib import Path
import json,hashlib
p=Path('data/exceptional_profiles/exceptional_profiles_14.json'); d=json.loads(p.read_bytes()); cs=d['classes']
assert [c['class_index'] for c in cs] == list(range(14))
assert d['triple_order'] == list(map(list, combinations(range(7), 3)))
assert all(len(c['canonical_chirotope']) == 35 and set(c['canonical_chirotope']) <= {-1, 1} for c in cs)
header='''/-
Generated tables: python3 python/classification/gen_lean_class_tables.py
Source: data/exceptional_profiles/exceptional_profiles_14.json
SHA-256: %s
The kernel checks the Lean transcription, not JSON or the generator.
X1 is discharged for these 14 stored classes. Geometry-to-class membership
(X3) and crossing containment (X2/E4) remain hypotheses.
E7 remains incomplete: completeness of the 135-representative list, its
polygon classification, and geometric interpretation are not proved here.
-/
'''%hashlib.sha256(p.read_bytes()).hexdigest()
s=header+'import Exclude42\n\nset_option maxRecDepth 100000\nset_option maxHeartbeats 0\nnamespace Heptagon.ClassInvariant\nopen Endgame DisjointnessGraph EnumerationDomain\n\ndef storedM : Nat → Finset Nat\n'
for c in cs:s+=f"  | {c['class_index']} => {{{', '.join(map(str,c['M_set']))}}}\n"
s+='  | _ => ∅\n\ndef storedMaximal : Nat → List Nat\n'
for c in cs:s+=f"  | {c['class_index']} => { [sum(1<<i for i in a) for a in c['maximal_crossing_sets']] }\n"
s+='''  | _ => []

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
'''
Path('lean/ClassInvariant.lean').write_text(s)
s=header.replace('X1 is discharged for these 14 stored classes.', 'E7 finite consistency result: M and maximal crossing sets are recomputed\nfrom each stored chirotope. Windows and avoiding pairs are not checked.\nX1 is discharged for these 14 stored classes.')+'import ClassInvariant\n\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nnamespace Heptagon.ClassDataFromChirotope\nopen ClassInvariant\n\ndef signs : Nat → List Int\n'
for c in cs:s+=f"  | {c['class_index']} => {c['canonical_chirotope']}\n"
s+='''  | _ => []

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
'''
Path('lean/ClassDataFromChirotope.lean').write_text(s)
