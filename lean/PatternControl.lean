import PatternClauses000
import PatternClauses001
import PatternClauses002
import PatternClauses003
import ResidualNonVacuity

/-!
# Controls for the four forbidden patterns

`pattern00k_impossible` says no configuration satisfies a certain list of
crossing and non-crossing conditions.  Two things would make that worthless, and
both are checked here against the lower-bound certificate's own fourteen
vertices — a pair of simple heptagons that demonstrably exists, with 38
crossings.

1. **The general-position hypothesis is satisfiable** — `ResidualNonVacuity`
   already decides all 364 orientation determinants of the certificate nonzero,
   and the four theorems share that hypothesis verbatim.
2. **None of the four can be applied to a configuration that exists.**  For each
   pattern, the certificate fails one of its hypotheses outright.  A refutation
   that also covered the certificate would be proving something false.

The certificate fails two, two, three and five of the four patterns' hypotheses
respectively; one from each is exhibited.
-/

namespace Heptagon.PatternControl
open Heptagon.Geometry

/-- The lower-bound certificate's fourteen vertices, `P` then `Q`. -/
abbrev Vcert : Fin 14 → Pt := ResidualClauses000.Vcert

/-- Pattern 0 requires side `3 = (3,4)` of `P` to cross side `2 = (9,10)` of `Q`.
In the certificate they do not cross. -/
theorem cert_fails_pattern000 :
    ¬ ProperCross (Vcert 3) (Vcert 4) (Vcert 9) (Vcert 10) := by decide

/-- Pattern 1 requires the same crossing, and the certificate fails it too. -/
theorem cert_fails_pattern001 :
    ¬ ProperCross (Vcert 3) (Vcert 4) (Vcert 9) (Vcert 10) := cert_fails_pattern000

/-- Pattern 2 requires side `4 = (4,5)` of `P` to cross side `2 = (9,10)` of `Q`. -/
theorem cert_fails_pattern002 :
    ¬ ProperCross (Vcert 4) (Vcert 5) (Vcert 9) (Vcert 10) := by decide

/-- Pattern 3 requires side `2 = (2,3)` of `P` to cross side `3 = (10,11)` of `Q`. -/
theorem cert_fails_pattern003 :
    ¬ ProperCross (Vcert 2) (Vcert 3) (Vcert 10) (Vcert 11) := by decide

/-- **The controls together.**  Each conjunct contradicts a hypothesis of the
correspondingly numbered `pattern00k_impossible`, so none of the four theorems
can be instantiated at the certificate. -/
theorem controls :
    (¬ ProperCross (Vcert 3) (Vcert 4) (Vcert 9) (Vcert 10)) ∧
    (¬ ProperCross (Vcert 4) (Vcert 5) (Vcert 9) (Vcert 10)) ∧
    (¬ ProperCross (Vcert 2) (Vcert 3) (Vcert 10) (Vcert 11)) :=
  ⟨cert_fails_pattern000, cert_fails_pattern002, cert_fails_pattern003⟩

end Heptagon.PatternControl

#print axioms Heptagon.PatternControl.controls
