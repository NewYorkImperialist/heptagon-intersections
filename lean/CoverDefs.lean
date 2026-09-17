import ResidualSymBase
import MinPatternClauses000
import MinPatternClauses001

/-!
# Vocabulary for the covering step

`independent/realizability_sweep` reduces "every candidate `I = 40` disjointness
graph is impossible" to two forbidden patterns plus a covering claim, and the
covering claim to four propositional refutations (`CCase00k_false`).  Those
refutations are stated over 49 abstract propositions.  This file says what the
49 propositions *are*.

Variable `7i + j + 1` of the covering CNFs is true exactly when side `i` of `P`
misses side `j` of `Q` — that is the convention of
`independent/realizability_sweep/coverage_cases.py`, where the 49 cells are the
edges of the disjointness graph and the row-degree constraints count them.
-/

namespace Heptagon.Cover
open Heptagon.Geometry Heptagon.ResidualSym

/-- Side `i` of `P` and side `j` of `Q` are **disjoint**: they do not cross.
This is the meaning of variable `7i + j + 1` in the covering refutations, and it
is the negation of the corresponding clause of `Realizes`. -/
abbrev Miss (V : Fin 14 → Pt) (i j : Fin 7) : Prop :=
  ¬ ProperCross (V (pP i)) (V (pP (i+1))) (V (pQ j)) (V (pQ (j+1)))

/-- Not missing is crossing.

`i` and `j` are **explicit on purpose**.  Left implicit, elaborating
`cross_of_not_miss h` against an expected type forces Lean to solve
`pP ?i =?= σ 0` with a metavariable under `pP`, and that search does not
terminate in any reasonable time; with them explicit the type is fixed before
any defeq check happens.  The same is true of `ResidualSymBase.cross_of`. -/
theorem cross_of_not_miss {V : Fin 14 → Pt} (i j : Fin 7) (h : ¬ Miss V i j) :
    ProperCross (V (pP i)) (V (pP (i+1))) (V (pQ j)) (V (pQ (j+1))) :=
  Classical.not_not.mp h

/-- …and not-not missing is missing.  `i` and `j` explicit, as above. -/
theorem miss_of_not_not {V : Fin 14 → Pt} (i j : Fin 7) (h : ¬ ¬ Miss V i j) :
    Miss V i j :=
  Classical.not_not.mp h

end Heptagon.Cover
