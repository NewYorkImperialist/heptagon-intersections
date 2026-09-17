import CoverCount

/-!
# The column clauses of the covering step

Each of the four covering refutations uses seven clauses of the form

> side `j` of `Q` misses side `0` of `P`, **or** side `1`, **or** … **or** side `6`

one per side of `Q`.  They say the disjointness graph has no isolated vertex on
the `Q` side.

## Why this is a hypothesis and not a theorem here

The project **does** prove this from the geometry:
`DisjointnessGraph.exists_disjointO_Pside` derives it for any `Config`, via
`SegmentGeometry`'s minimum-disjointness-degree argument, and
`DisjointnessGraph.min_degree_both_sides` packages both sides.

But those are stated for a `Config`, and the covering theorems are stated for a
bare `V : Fin 14 → Pt` carrying a general-position hypothesis `GP` that is
*stronger* than what `Config` supplies — see `docs/residual-412-lean.md` §4.  So
the two cannot be connected until that bridge is written, and until then the
honest move is to carry the fact as an explicit named hypothesis rather than to
assert it.  `colDeg V j` is the degree, so the hypothesis is `0 < colDeg V j`.

Closing this is the same piece of work as closing the general-position gap.
-/

namespace Heptagon.Cover
open Heptagon.Geometry Finset

/-- **The column clause.**  If side `j` of `Q` misses at least one side of `P`,
then it misses one of the seven — which is the clause the refutations use. -/
theorem colClause (V : Fin 14 → Pt) (j : Fin 7) (h : 0 < colDeg V j) :
    Miss V 0 j ∨ Miss V 1 j ∨ Miss V 2 j ∨ Miss V 3 j ∨ Miss V 4 j ∨ Miss V 5 j ∨
      Miss V 6 j := by
  obtain ⟨i, hi, hp⟩ := col_exists_miss V (j := j) (S := {0, 1, 2, 3, 4, 5, 6})
    (by rw [show ({0, 1, 2, 3, 4, 5, 6} : Finset (Fin 7)).card = 7 from by decide]; omega)
  simp only [Finset.mem_insert, Finset.mem_singleton] at hi
  rcases hi with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact Or.inl hp
  · exact Or.inr (Or.inl hp)
  · exact Or.inr (Or.inr (Or.inl hp))
  · exact Or.inr (Or.inr (Or.inr (Or.inl hp)))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inl hp))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl hp)))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr hp)))))

end Heptagon.Cover
