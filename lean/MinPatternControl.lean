import MinPatternClauses000
import MinPatternClauses001
import ResidualNonVacuity

/-!
# Controls for the two-pattern minimal cover

`minpattern000_impossible` and `minpattern001_impossible` say no configuration
satisfies a short list of crossing and non-crossing conditions.  Checked here
against the lower-bound certificate's own fourteen vertices — a pair of simple
heptagons that demonstrably exists, with 38 crossings:

* the general-position hypothesis they share is satisfiable
  (`ResidualNonVacuity.gp_Vcert` decides all 364 determinants nonzero);
* neither can be applied to the certificate.  Both require side `1 = (1,2)` of
  `P` to **miss** side `1 = (8,9)` of `Q`, and in the certificate those two
  sides cross.  A refutation that also covered a configuration that exists
  would be proving something false.
-/

namespace Heptagon.MinPatternControl
open Heptagon.Geometry

/-- The lower-bound certificate's fourteen vertices, `P` then `Q`. -/
abbrev Vcert : Fin 14 → Pt := ResidualClauses000.Vcert

/-- **Control.**  In the certificate, side `1` of `P` and side `1` of `Q` cross —
contradicting hypothesis `h1_8` of both minimal-cover patterns. -/
theorem cert_crosses_1_8 : ProperCross (Vcert 1) (Vcert 2) (Vcert 8) (Vcert 9) := by decide

end Heptagon.MinPatternControl

#print axioms Heptagon.MinPatternControl.cert_crosses_1_8
