import ResidualClauses000
import LowerBound

/-!
# Controls for `orbit000_impossible`

A theorem of the form "no configuration satisfies these hypotheses" is worthless
if the hypotheses are unsatisfiable for a silly reason, and dangerous if the
machinery would also refute a configuration that demonstrably exists.  Both are
checked here against the lower-bound certificate's own fourteen vertices, which
are a real pair of simple heptagons with 38 crossings.
-/

namespace Heptagon.ResidualClauses000
open Heptagon.Geometry

/-- The lower-bound certificate's fourteen vertices as one map: `P` then `Q`. -/
def Vcert : Fin 14 → Pt := fun i =>
  if h : i.val < 7 then LowerBound.Pv ⟨i.val, h⟩ else LowerBound.Qv ⟨i.val - 7, by omega⟩

/-- **Control 1 — the general-position hypothesis is satisfiable.**
`orbit000_impossible` assumes `GP V`; were that unsatisfiable the theorem would
be empty.  All 364 orientation determinants of the certificate are nonzero. -/
theorem gp_Vcert : GP Vcert := by decide

/-- **Control 2 — the machinery does not refute a configuration that exists.**
The certificate fails hypothesis `h5_9`: `orbit000_impossible` requires sides
`5 = (5,6)` and `9 = (9,10)` to cross, and in the certificate they do not.  So
the theorem cannot be applied to it, which is the point — a refutation that also
"refuted" the certificate would be proving something false.

(The certificate misses three of the sixteen hypotheses in all; one suffices.) -/
theorem cert_fails_h5_9 :
    ¬ ProperCross (Vcert 5) (Vcert 6) (Vcert 9) (Vcert 10) := by decide

end Heptagon.ResidualClauses000
