import R3Construct

/-!
# The exact rotation law

`independent/akr_9_2/K_CONSTANTS.md` found that `K_rot`, one of the three
Lipschitz constants the §9.2 repair's `δ₀` is built from, is **wrong as
printed**: it is the `δ → 0` limit of the true law, whose denominator is itself
`δ`-dependent and shrinks as `δ` grows.

This formalises the corrected law.  The setting: a neighbour side has a fixed
far endpoint (put at the origin) and a moving endpoint, so its direction is
`w` before the shift and `w + δ·e_a` after.  A `Q`-side lies on the line
`{p₀ + β·v}`.  The crossing point moves from `X₀` to `x`.

The identity proved here is **stronger than the norm version** the document
states: the displacement is not merely of a computable length, it is *parallel
to `v`* — the crossing point slides **along the `Q`-side**, which is what one
would expect and what makes the length formula immediate.

Nothing here is an axiom and nothing here proves `f(7,7) = 38`.
-/

namespace Heptagon
namespace RotationLaw

open Heptagon.R3Construct

/-- The crossing parameter of `{α·d}` with `{p₀ + β·v}`. -/
noncomputable def par (d p₀ v : ℝ × ℝ) : ℝ := cross p₀ v / cross d v

/-- The rotated direction. -/
def rot (w ea : ℝ × ℝ) (δ : ℝ) : ℝ × ℝ := (w.1 + δ * ea.1, w.2 + δ * ea.2)

/-- **The 2-D Plücker identity.**  For any three plane vectors,
`a·⟨b,c⟩ + b·⟨c,a⟩ + c·⟨a,b⟩ = 0` with `⟨·,·⟩` the scalar cross product.
This is what turns the displacement into a multiple of `v`. -/
theorem plucker (a b c : ℝ × ℝ) :
    (cross b c * a.1 + cross c a * b.1 + cross a b * c.1 = 0) ∧
    (cross b c * a.2 + cross c a * b.2 + cross a b * c.2 = 0) := by
  constructor <;> · simp only [cross]; ring

/-- **The exact rotation law, division-free.**  Writing `D₀ = ⟨w,v⟩` and
`D₁ = ⟨w+δe_a, v⟩` for the two crossing denominators, the displacement scaled
by `D₀·D₁` is

    D₀·(w + δe_a) − D₁·w  =  −δ·⟨e_a,w⟩·v .

Two things are visible here that the printed constant hides. The right-hand
side is a multiple of **`v`**: the crossing point slides *along the `Q`-side*.
And the length of the actual displacement carries `D₁` in its denominator —
`D₁ = D₀ + δ⟨e_a,v⟩` depends on `δ` and shrinks as `δ` grows, which is exactly
the factor `K_rot` drops by taking the `δ → 0` limit. -/
theorem rot_displacement (w ea v : ℝ × ℝ) (δ : ℝ) :
    cross w v * (rot w ea δ).1 - cross (rot w ea δ) v * w.1
      = -(δ * cross ea w * v.1) ∧
    cross w v * (rot w ea δ).2 - cross (rot w ea δ) v * w.2
      = -(δ * cross ea w * v.2) := by
  constructor <;> · simp only [cross, rot]; ring

/-- The denominator really is `δ`-dependent: `D₁ = D₀ + δ·⟨e_a,v⟩`.  This is
the term the printed `K_rot` omits, and the reason it is only the `δ → 0`
limit of the truth. -/
theorem denom_affine (w ea v : ℝ × ℝ) (δ : ℝ) :
    cross (rot w ea δ) v = cross w v + δ * cross ea v := by
  simp only [cross, rot]; ring

/-- Under AKR's own rule the slide direction is parallel to the neighbour, so
`⟨e_a,w⟩ = 0` and the crossing point **does not move at all** — which is why
`K_rot` is vacuous there and why the audit found zero violations for it. -/
theorem rot_displacement_zero_of_parallel {w ea v : ℝ × ℝ} (h : cross ea w = 0)
    (δ : ℝ) :
    cross w v * (rot w ea δ).1 - cross (rot w ea δ) v * w.1 = 0 ∧
    cross w v * (rot w ea δ).2 - cross (rot w ea δ) v * w.2 = 0 := by
  obtain ⟨h1, h2⟩ := rot_displacement w ea v δ
  exact ⟨by rw [h1, h]; ring, by rw [h2, h]; ring⟩

#print axioms plucker
#print axioms rot_displacement
#print axioms rot_displacement_zero_of_parallel

end RotationLaw
end Heptagon
