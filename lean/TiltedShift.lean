import R3Construct

/-!
# The tilted translation is well-defined, with no collinearity hypothesis

AKR's §9.2 removes vertex-side degeneracies by shifting one side at a time.
Their shift slides the side's two endpoints along the **lines of the two
adjacent sides**, so it is undefined whenever an endpoint is a *straight*
vertex — and `docs/akr-9-assembly.md` §2.5a exhibits a configuration where
every side that could clear the degeneracy is blocked in exactly that way, and
the blockage is **permanent**, because an endpoint slides along the very line
that makes the triple collinear.

AKR cannot repair this by assuming no three consecutive vertices are collinear:
that is §3's clause, which §9 is supposed to justify, so invoking it here is
circular.

`independent/akr_9_2/REPAIR.md` proposes the **tilted translation**. Writing
`u = B − A` for the shifted side and `n = u^⊥`, the generalised shift moves the
endpoints along directions `a`, `b` by

    A_δ = A + (δN/⟪a,n⟫)·a ,    B_δ = B + (δN/⟪b,n⟫)·b ,    N = ⟪u,u⟫ ,

which is well-defined exactly when `⟪a,n⟫ ≠ 0` and `⟪b,n⟫ ≠ 0`. AKR's rule
takes `a` along the adjacent side, where that inner product can vanish. The
tilt takes `a = n`, or `a = n + u` when the endpoint sits on an orthogonal
`Q`-side.

**This file proves both choices always work**, so the operator is defined for
every simple polygon and every side, with no hypothesis on collinearity at all.
That is the property the repair exists to have.

Nothing here is an axiom and nothing here proves `f(7,7) = 38`.
-/

namespace Heptagon
namespace TiltedShift

open Heptagon.R3Construct

/-- The left normal of `u`. -/
def nrm (u : ℝ × ℝ) : ℝ × ℝ := (-u.2, u.1)

/-- The Euclidean inner product. -/
def ip (u v : ℝ × ℝ) : ℝ := u.1 * v.1 + u.2 * v.2

theorem ip_nrm_self (u : ℝ × ℝ) : ip (nrm u) (nrm u) = ip u u := by
  simp only [ip, nrm]; ring

theorem ip_u_nrm (u : ℝ × ℝ) : ip u (nrm u) = 0 := by
  simp only [ip, nrm]; ring

theorem ip_self_pos {u : ℝ × ℝ} (hu : u ≠ 0) : 0 < ip u u := by
  have h : u.1 ≠ 0 ∨ u.2 ≠ 0 := by
    by_contra hz; push_neg at hz; exact hu (Prod.ext hz.1 hz.2)
  simp only [ip]
  rcases h with h | h
  · have := mul_self_pos.mpr h; nlinarith [mul_self_nonneg u.2]
  · have := mul_self_pos.mpr h; nlinarith [mul_self_nonneg u.1]

/-! ## Both tilt choices are admissible -/

/-- The untilted choice `a = n` is admissible: `⟪n,n⟫ = ⟪u,u⟫ > 0`. -/
theorem admissible_nrm {u : ℝ × ℝ} (hu : u ≠ 0) : ip (nrm u) (nrm u) ≠ 0 := by
  rw [ip_nrm_self]; exact ne_of_gt (ip_self_pos hu)

/-- The tilted choice `a = n + u` is **equally** admissible, because `u ⊥ n`
kills the cross term: `⟪n+u, n⟫ = ⟪n,n⟫`. This is the whole trick — tilting
changes where on the shifted line the endpoint lands without changing the
normal displacement at all. -/
theorem ip_tilt_nrm (u : ℝ × ℝ) :
    ip (nrm u + u) (nrm u) = ip (nrm u) (nrm u) := by
  simp only [ip, nrm, Prod.fst_add, Prod.snd_add]; ring

theorem admissible_tilt {u : ℝ × ℝ} (hu : u ≠ 0) : ip (nrm u + u) (nrm u) ≠ 0 := by
  rw [ip_tilt_nrm]; exact admissible_nrm hu

/-! ## Neither choice is parallel to the side

Well-definedness of `G` needs `⟪a,n⟫ ≠ 0`; the *geometric* requirement that the
shifted side actually move needs `a ∦ u`. Both choices satisfy it. -/

theorem nrm_not_parallel {u : ℝ × ℝ} (hu : u ≠ 0) : cross (nrm u) u ≠ 0 := by
  simp only [cross, nrm]
  have := ip_self_pos hu
  simp only [ip] at this
  intro h; nlinarith [h, this]

theorem tilt_not_parallel {u : ℝ × ℝ} (hu : u ≠ 0) : cross (nrm u + u) u ≠ 0 := by
  have h : cross (nrm u + u) u = cross (nrm u) u := by
    simp only [cross, nrm, Prod.fst_add, Prod.snd_add]; ring
  rw [h]; exact nrm_not_parallel hu

/-- **The repair is unconditional.** For every non-degenerate side, both tilt
choices give a well-defined shift that genuinely moves the side — no
collinearity hypothesis anywhere, which is exactly what AKR's rule cannot
offer. -/
theorem tilted_shift_defined {u : ℝ × ℝ} (hu : u ≠ 0) :
    (ip (nrm u) (nrm u) ≠ 0 ∧ cross (nrm u) u ≠ 0) ∧
    (ip (nrm u + u) (nrm u) ≠ 0 ∧ cross (nrm u + u) u ≠ 0) :=
  ⟨⟨admissible_nrm hu, nrm_not_parallel hu⟩,
   ⟨admissible_tilt hu, tilt_not_parallel hu⟩⟩

#print axioms tilted_shift_defined
#print axioms ip_tilt_nrm

end TiltedShift
end Heptagon
