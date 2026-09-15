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

/-- Alternating extension of the sign vector; repeated indices return zero.
This is the direct transcription: the index is found by searching `triples`. -/
def chiroRef (v : List Int) (a b c : Nat) : Int :=
  if a = b ∨ b = c ∨ a = c then 0 else
  let lo := min a (min b c)
  let hi := max a (max b c)
  let idx := triples.idxOf (lo, a+b+c-lo-hi, hi)
  let inversions := (if a > b then 1 else 0) +
    (if a > c then 1 else 0) + (if b > c then 1 else 0)
  (if inversions % 2 = 0 then 1 else -1) * v.getD idx 0

/-- Lexicographic rank of the increasing triple `a < b < c` among the 35
increasing triples on 7 elements, in closed form.  The linear search in
`chiroRef` is the bottleneck of every kernel computation over chirotopes, and
this replaces it; `rank3_eq` below checks the two agree on every increasing
triple, so nothing is taken on trust. -/
def rank3 (a b c : Nat) : Nat :=
  let k := b - a - 1
  [0,15,25,31,34,35,35].getD a 35 + (k * (6 - a) - k * (k+1) / 2) + (c - b - 1)

theorem rank3_eq : ∀ a : Fin 7, ∀ b : Fin 7, ∀ c : Fin 7, a < b → b < c →
    rank3 a b c = triples.idxOf ((a : Nat), (b : Nat), (c : Nat)) := by decide

/-- The same function as `chiroRef`, with the index in closed form.  Everything
downstream uses this one; `chiro_eq_chiroRef` proves they agree. -/
def chiro (v : List Int) (a b c : Nat) : Int :=
  if a = b ∨ b = c ∨ a = c then 0 else
  let lo := min a (min b c)
  let hi := max a (max b c)
  let idx := rank3 lo (a+b+c-lo-hi) hi
  let inversions := (if a > b then 1 else 0) +
    (if a > c then 1 else 0) + (if b > c then 1 else 0)
  (if inversions % 2 = 0 then 1 else -1) * v.getD idx 0

/-- The index agrees with the search whenever the three indices are distinct,
which is exactly the branch `chiro` and `chiroRef` reach it in. -/
theorem rank3_eq_idxOf_of_distinct : ∀ a : Fin 7, ∀ b : Fin 7, ∀ c : Fin 7,
    ¬((a:Nat) = (b:Nat) ∨ (b:Nat) = (c:Nat) ∨ (a:Nat) = (c:Nat)) →
      rank3 (min (a:Nat) (min (b:Nat) (c:Nat)))
            ((a:Nat)+(b:Nat)+(c:Nat) - min (a:Nat) (min (b:Nat) (c:Nat))
                                    - max (a:Nat) (max (b:Nat) (c:Nat)))
            (max (a:Nat) (max (b:Nat) (c:Nat)))
        = triples.idxOf (min (a:Nat) (min (b:Nat) (c:Nat)),
            (a:Nat)+(b:Nat)+(c:Nat) - min (a:Nat) (min (b:Nat) (c:Nat))
                                    - max (a:Nat) (max (b:Nat) (c:Nat)),
            max (a:Nat) (max (b:Nat) (c:Nat))) := by decide

/-- The optimisation is sound on every argument triple the development uses. -/
theorem chiro_eq_chiroRef (v : List Int) :
    ∀ a : Fin 7, ∀ b : Fin 7, ∀ c : Fin 7,
      chiro v a b c = chiroRef v a b c := by
  intro a b c
  by_cases hd : (a:Nat) = (b:Nat) ∨ (b:Nat) = (c:Nat) ∨ (a:Nat) = (c:Nat)
  · simp only [chiro, chiroRef, if_pos hd]
  · simp only [chiro, chiroRef, if_neg hd, rank3_eq_idxOf_of_distinct a b c hd]

/-- Vertex subsets as seven-bit masks: empty, full, and the four endpoint
choices for every ordered pair, exactly `halfplane_subsets`, but with repeats
left in.  The Python builds a `set`; the duplicate-free view is
`halfplaneSubsets` below, and `mem_fam_iff` records that for the one question
the enumeration asks -- membership -- the two are interchangeable. -/
def halfplaneSubsetsRaw (chi : Nat → Nat → Nat → Int) : List Nat :=
  0 :: 127 :: ((List.range 7).flatMap fun i =>
    (List.range 7).flatMap fun j => if i = j then [] else
      let L := ((List.range 7).filter fun k =>
        k != i && k != j && decide (chi i j k > 0)).foldl (fun m k => m + 2^k) 0
      [L, L ||| 2^i, L ||| 2^j, L ||| 2^i ||| 2^j])

def halfplaneSubsets (chi : Nat → Nat → Nat → Int) : List Nat :=
  (halfplaneSubsetsRaw chi).eraseDups

def sideMask (A : Nat) : Nat :=
  ((List.range 7).filter fun s => A.testBit s != A.testBit ((s+1)%7)).foldl
    (fun m s => m + 2^s) 0

/-- The family is a set represented by a duplicate-free list. -/
def fam (chi : Nat → Nat → Nat → Int) : List Nat :=
  ((halfplaneSubsets chi).map sideMask).eraseDups

/-- The same family with repeats left in.  Deduplicating a 170-element list is
two quadratic passes, and it is the single most expensive step in any kernel
computation over this family; every question the enumeration asks of it is a
membership question, so the repeats can simply stay. -/
def famRaw (chi : Nat → Nat → Nat → Int) : List Nat :=
  (halfplaneSubsetsRaw chi).map sideMask

theorem mem_fam_iff (chi : Nat → Nat → Nat → Int) (m : Nat) :
    m ∈ fam chi ↔ m ∈ famRaw chi := by
  simp [fam, famRaw, halfplaneSubsets, List.mem_eraseDups, List.mem_map]

/-- Consequently any predicate tested existentially over the family gives the
same answer on either representation. -/
theorem any_fam_eq (chi : Nat → Nat → Nat → Int) (p : Nat → Bool) :
    (fam chi).any p = (famRaw chi).any p := by
  rw [Bool.eq_iff_iff]
  simp only [List.any_eq_true]
  constructor
  · rintro ⟨m, hm, hp⟩; exact ⟨m, (mem_fam_iff chi m).mp hm, hp⟩
  · rintro ⟨m, hm, hp⟩; exact ⟨m, (mem_fam_iff chi m).mpr hm, hp⟩

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
