import ResidualAll
import ResidualNonVacuity

/-!
# Controls for the 412

`residual_not_realizable` says no configuration of a certain shape exists.  Two
things could make that vacuous or wrong, and both are checked here against the
lower-bound certificate's own fourteen vertices — a pair of simple heptagons
that demonstrably exists, with 38 crossings.

1. **The hypotheses are satisfiable.**  `GP`, `SimpleP`, `SimpleQ` and
   `Realizes` all hold of the certificate, for the certificate's own graph.  So
   the theorem is not about an empty class of configurations.
2. **The machinery does not refute something that exists.**  The certificate's
   graph is not one of the 412, so the theorem cannot be applied to it.  A
   refutation that also covered the certificate would be proving something
   false.
-/

namespace Heptagon.ResidualSym
open Heptagon.Geometry

/-- The lower-bound certificate's fourteen vertices, `P` then `Q`. -/
abbrev Vcert : Fin 14 → Pt := ResidualClauses000.Vcert

theorem gp_cert : GP Vcert := ResidualClauses000.gp_Vcert

theorem simpleP_cert : SimpleP Vcert := by unfold SimpleP; decide

theorem simpleQ_cert : SimpleQ Vcert := by unfold SimpleQ; decide

/-- The certificate's disjointness graph: eleven of the 49 side pairs are
disjoint, the other 38 cross. -/
def gCert : Fin 7 → Nat := ![8, 8, 8, 4, 4, 4, 115]

theorem realizes_cert : Realizes Vcert gCert := by unfold Realizes; decide

/-- **Control 1 — the hypotheses are satisfiable.** -/
theorem control_satisfiable :
    GP Vcert ∧ SimpleP Vcert ∧ SimpleQ Vcert ∧ Realizes Vcert gCert :=
  ⟨gp_cert, simpleP_cert, simpleQ_cert, realizes_cert⟩

/-- **Control 2 — the 412 do not include a graph that is realized.** -/
theorem control_cert_not_residual : gCert ∉ residual412 := by
  intro h
  have hm : List.ofFn gCert ∈ residual412.map (fun g => List.ofFn g) :=
    List.mem_map.mpr ⟨gCert, h, rfl⟩
  revert hm
  decide

end Heptagon.ResidualSym

#print axioms Heptagon.ResidualSym.control_satisfiable
#print axioms Heptagon.ResidualSym.control_cert_not_residual
