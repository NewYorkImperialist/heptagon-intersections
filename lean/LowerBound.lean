/-
  LowerBound.lean

  An explicit lower-bound certificate for f(7,7) ≥ 38, fully kernel-checked.

  This file uses **core Lean only** — no Mathlib, no external dependency, no
  `axiom`, no `sorry`, no `native_decide`, no floating point.  Every proof below
  is discharged by `decide`, i.e. by kernel reduction of exact `Int` arithmetic.

  Coordinates are transcribed from `data/lower_bound/lower_bound_38.json`.

  SCOPE NOTE (read this before believing anything):  everything here is stated at
  the level of *orientation predicates* on integer coordinates.  What is proved
  is that the combinatorial orientation data of these 14 points has the stated
  form.  The step from "no non-adjacent pair of sides crosses properly and no
  three vertices are collinear" to "the closed polygonal curve is simple as a
  subset of the plane", and the step from "properly crossing" to "the closed
  segments meet in exactly one point", are standard but are NOT formalized here.
  See the module docstring of each theorem for its exact content.
-/

namespace Heptagon
namespace LowerBound

/-! ## Basic definitions -/

/-- A point with exact integer coordinates. -/
abbrev Pt := Int × Int

/-- Twice the signed area of the triangle `a b c`.
Positive iff `a, b, c` is a counterclockwise turn, zero iff collinear. -/
def orient (a b c : Pt) : Int :=
  (b.1 - a.1) * (c.2 - a.2) - (b.2 - a.2) * (c.1 - a.1)

/-- The segments `[p1,p2]` and `[q1,q2]` **cross properly**: each segment has the
two endpoints of the other strictly on opposite sides of its supporting line.
For segments in general position this is equivalent to meeting in exactly one
point, which is interior to both. -/
def ProperCross (p1 p2 q1 q2 : Pt) : Prop :=
  orient p1 p2 q1 * orient p1 p2 q2 < 0 ∧ orient q1 q2 p1 * orient q1 q2 p2 < 0

instance (p1 p2 q1 q2 : Pt) : Decidable (ProperCross p1 p2 q1 q2) :=
  inferInstanceAs (Decidable (_ ∧ _))

/-! ## The two heptagons

Vertices are indexed by `Fin 7`.  Note that addition on `Fin 7` is addition
modulo 7, so `i + 1` is exactly the cyclic successor and side `i` is the segment
from vertex `i` to vertex `i + 1`. -/

/-- Vertices of `P`, verbatim from `data/lower_bound/lower_bound_38.json`. -/
def Pv : Fin 7 → Pt
  | 0 => (373, 157)
  | 1 => (132, 5)
  | 2 => (369, 182)
  | 3 => (88, 157)
  | 4 => (327, 282)
  | 5 => (60, 272)
  | 6 => (372, 298)

/-- Vertices of `Q`, verbatim from `data/lower_bound/lower_bound_38.json`. -/
def Qv : Fin 7 → Pt
  | 0 => (344, 24)
  | 1 => (89, 303)
  | 2 => (345, 19)
  | 3 => (373, 214)
  | 4 => (270, 338)
  | 5 => (325, 93)
  | 6 => (192, 284)

/-- Side `i` of `P`: the segment from vertex `i` to vertex `i + 1 (mod 7)`. -/
def Pside (i : Fin 7) : Pt × Pt := (Pv i, Pv (i + 1))

/-- Side `j` of `Q`: the segment from vertex `j` to vertex `j + 1 (mod 7)`. -/
def Qside (j : Fin 7) : Pt × Pt := (Qv j, Qv (j + 1))

/-- Sides `i` and `j` of a heptagon are adjacent (share a vertex) iff they are
equal or cyclically consecutive. -/
def Adjacent (i j : Fin 7) : Prop := i = j ∨ j = i + 1 ∨ i = j + 1

instance (i j : Fin 7) : Decidable (Adjacent i j) :=
  inferInstanceAs (Decidable (_ ∨ _))

/-- Side `i` of `P` crosses side `j` of `Q` properly. -/
def PQCross (i j : Fin 7) : Prop :=
  ProperCross (Pv i) (Pv (i + 1)) (Qv j) (Qv (j + 1))

instance (i j : Fin 7) : Decidable (PQCross i j) :=
  inferInstanceAs (Decidable (ProperCross _ _ _ _))

/-! ## The index of all 49 (P-side, Q-side) pairs

`allPairs` is used as the domain of the count.  The three lemmas immediately
after it prove that it really is an enumeration of every pair exactly once, so
`crossCount` below cannot be gamed by an under- or over-counting index list. -/

/-- All ordered pairs `(i, j)` of a `P`-side index and a `Q`-side index. -/
def allPairs : List (Fin 7 × Fin 7) :=
  (List.finRange 7).flatMap fun i => (List.finRange 7).map fun j => (i, j)

theorem allPairs_length : allPairs.length = 49 := by decide

theorem allPairs_nodup : allPairs.Nodup := by decide

theorem allPairs_complete : ∀ i j : Fin 7, (i, j) ∈ allPairs := by decide

/-! ## Distinctness of vertices -/

/-- The 7 vertices of `P` are pairwise distinct. -/
theorem P_vertices_distinct : ∀ i j : Fin 7, i ≠ j → Pv i ≠ Pv j := by decide

/-- The 7 vertices of `Q` are pairwise distinct. -/
theorem Q_vertices_distinct : ∀ i j : Fin 7, i ≠ j → Qv i ≠ Qv j := by decide

/-! ## Non-degeneracy within each heptagon

No three of the seven vertices of `P` are collinear, and likewise for `Q`.  This
is strictly stronger than what simplicity needs, and it is what rules out every
degenerate incidence: in particular no vertex of a heptagon lies on a
non-incident side of the *same* heptagon, and two consecutive sides meet only at
their shared vertex. -/

/-- No three distinct vertices of `P` are collinear. -/
theorem P_no_three_collinear :
    ∀ i j k : Fin 7, i ≠ j → j ≠ k → i ≠ k → orient (Pv i) (Pv j) (Pv k) ≠ 0 := by
  decide

/-- No three distinct vertices of `Q` are collinear. -/
theorem Q_no_three_collinear :
    ∀ i j k : Fin 7, i ≠ j → j ≠ k → i ≠ k → orient (Qv i) (Qv j) (Qv k) ≠ 0 := by
  decide

/-- Consecutive sides `i` and `i+1` of `P` are not collinear, hence (their
supporting lines being distinct and meeting only at `Pv (i+1)`) they meet exactly
at their shared endpoint. -/
theorem P_consecutive_sides_not_collinear :
    ∀ i : Fin 7, orient (Pv i) (Pv (i + 1)) (Pv (i + 2)) ≠ 0 := by decide

/-- Consecutive sides `j` and `j+1` of `Q` are not collinear. -/
theorem Q_consecutive_sides_not_collinear :
    ∀ j : Fin 7, orient (Qv j) (Qv (j + 1)) (Qv (j + 2)) ≠ 0 := by decide

/-- No two non-adjacent sides of `P` cross properly. -/
theorem P_nonadjacent_no_proper_cross :
    ∀ i j : Fin 7, ¬ Adjacent i j →
      ¬ ProperCross (Pv i) (Pv (i + 1)) (Pv j) (Pv (j + 1)) := by decide

/-- No two non-adjacent sides of `Q` cross properly. -/
theorem Q_nonadjacent_no_proper_cross :
    ∀ i j : Fin 7, ¬ Adjacent i j →
      ¬ ProperCross (Qv i) (Qv (i + 1)) (Qv j) (Qv (j + 1)) := by decide

/-- **`P` is simple** (at the orientation level): its vertices are pairwise
distinct, no three of them are collinear, consecutive sides are non-collinear so
meet only at their shared vertex, and no two non-adjacent sides cross properly.
Because no three vertices are collinear, no endpoint of a side can lie on
another side, so "no proper crossing" is the only remaining way two non-adjacent
closed sides could meet. -/
theorem P_simple :
    (∀ i j : Fin 7, i ≠ j → Pv i ≠ Pv j) ∧
    (∀ i j k : Fin 7, i ≠ j → j ≠ k → i ≠ k → orient (Pv i) (Pv j) (Pv k) ≠ 0) ∧
    (∀ i : Fin 7, orient (Pv i) (Pv (i + 1)) (Pv (i + 2)) ≠ 0) ∧
    (∀ i j : Fin 7, ¬ Adjacent i j →
      ¬ ProperCross (Pv i) (Pv (i + 1)) (Pv j) (Pv (j + 1))) :=
  ⟨P_vertices_distinct, P_no_three_collinear,
   P_consecutive_sides_not_collinear, P_nonadjacent_no_proper_cross⟩

/-- **`Q` is simple** (at the orientation level); same four clauses as `P_simple`. -/
theorem Q_simple :
    (∀ i j : Fin 7, i ≠ j → Qv i ≠ Qv j) ∧
    (∀ i j k : Fin 7, i ≠ j → j ≠ k → i ≠ k → orient (Qv i) (Qv j) (Qv k) ≠ 0) ∧
    (∀ j : Fin 7, orient (Qv j) (Qv (j + 1)) (Qv (j + 2)) ≠ 0) ∧
    (∀ i j : Fin 7, ¬ Adjacent i j →
      ¬ ProperCross (Qv i) (Qv (i + 1)) (Qv j) (Qv (j + 1))) :=
  ⟨Q_vertices_distinct, Q_no_three_collinear,
   Q_consecutive_sides_not_collinear, Q_nonadjacent_no_proper_cross⟩

/-! ## General position between the two heptagons -/

/-- No vertex of `Q` lies on the supporting *line* of any side of `P`.
In particular no vertex of `Q` lies on any side of `P`. -/
theorem no_Q_vertex_on_P_side_line :
    ∀ i j : Fin 7, orient (Pv i) (Pv (i + 1)) (Qv j) ≠ 0 := by decide

/-- No vertex of `P` lies on the supporting *line* of any side of `Q`.
In particular no vertex of `P` lies on any side of `Q`. -/
theorem no_P_vertex_on_Q_side_line :
    ∀ i j : Fin 7, orient (Qv j) (Qv (j + 1)) (Pv i) ≠ 0 := by decide

/-- **General position of the pair `(P, Q)`.**  All four orientation
determinants attached to every one of the 49 (P-side, Q-side) pairs are nonzero.
This is exactly the non-degeneracy under which `ProperCross i j` is equivalent to
"side `i` of `P` and side `j` of `Q` meet, and then in a single point interior to
both". -/
theorem general_position :
    ∀ i j : Fin 7,
      orient (Pv i) (Pv (i + 1)) (Qv j) ≠ 0 ∧
      orient (Pv i) (Pv (i + 1)) (Qv (j + 1)) ≠ 0 ∧
      orient (Qv j) (Qv (j + 1)) (Pv i) ≠ 0 ∧
      orient (Qv j) (Qv (j + 1)) (Pv (i + 1)) ≠ 0 := by decide

/-! ## The crossing count -/

/-- The number of pairs `(i, j) ∈ allPairs` whose sides cross properly.
By `allPairs_length`, `allPairs_nodup` and `allPairs_complete` this is the number
of properly crossing (P-side, Q-side) pairs among all 49. -/
def crossCount : Nat :=
  (allPairs.filter fun p => decide (PQCross p.1 p.2)).length

/-- The number of pairs that do **not** cross properly (the disjointness graph). -/
def disjointCount : Nat :=
  (allPairs.filter fun p => decide ¬ (PQCross p.1 p.2)).length

/-- For each side `i` of `P`, the number of sides of `Q` it crosses properly. -/
def perPSideCount (i : Fin 7) : Nat :=
  ((List.finRange 7).filter fun j => decide (PQCross i j)).length

/-- **Exactly 38 of the 49 (P-side, Q-side) pairs cross properly.** -/
theorem crossing_count_eq_38 : crossCount = 38 := by decide

/-- Per-side breakdown, matching `per_P_side_crossing_counts` in the JSON
certificate. -/
theorem per_P_side_counts :
    (List.finRange 7).map perPSideCount = [6, 6, 6, 6, 6, 6, 2] := by decide

/-- The complementary count: exactly 11 pairs fail to cross properly. -/
theorem disjoint_count_eq_11 : disjointCount = 11 := by decide

/-- The two counts partition the 49 pairs. -/
theorem crossCount_add_disjointCount : crossCount + disjointCount = 49 := by decide

end LowerBound
end Heptagon
