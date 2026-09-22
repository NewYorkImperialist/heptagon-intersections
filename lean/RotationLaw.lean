import R3Construct
import RealUpperBound
import TiltedShift

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

open Heptagon.RealConfig Heptagon.RealUpperBound Heptagon.TiltedShift

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

/-! ## Lemma T: why the `K_rot` error is harmless

`K_CONSTANTS.md` saves `δ₀` with **Lemma T**: `τ₁ · K_rot ≥ |w|`, which caps
the error at a constant and leaves the rational bound `1/(61440·M⁷)` standing.

Its whole content collapses to one classical fact.  Writing
`τ₁^t = |⟨v,w⟩| / |⟨v,e_a⟩|` and `K_rot^t = |e_a||w||v| / |⟨w,v⟩|`, the two
cross-product factors **cancel**, leaving

    τ₁^t · K_rot^t  =  |e_a|·|w|·|v| / |⟨v,e_a⟩|  ≥  |w|

precisely when `|⟨v,e_a⟩| ≤ |v|·|e_a|` — Cauchy–Schwarz for the scalar cross
product, which in the plane is Lagrange's identity. -/

/-- Squared norm. -/
def n2 (u : ℝ × ℝ) : ℝ := u.1 * u.1 + u.2 * u.2

/-- Inner product. -/
def dot (u v : ℝ × ℝ) : ℝ := u.1 * v.1 + u.2 * v.2

/-- **Lagrange's identity** in the plane: the squared cross and squared dot
products sum to the product of the squared norms. -/
theorem lagrange (u v : ℝ × ℝ) : cross u v ^ 2 + dot u v ^ 2 = n2 u * n2 v := by
  simp only [cross, dot, n2]; ring

/-- **Cauchy–Schwarz for the cross product**, which is Lemma T's entire
content once the `⟨w,v⟩` factors cancel. -/
theorem cross_sq_le (u v : ℝ × ℝ) : cross u v ^ 2 ≤ n2 u * n2 v := by
  have h := lagrange u v
  nlinarith [sq_nonneg (dot u v)]

/-- **Lemma T, squared form.**  `(τ₁ · K_rot)² ≥ |w|²`, with the product
written out: the `⟨w,v⟩` factors have already cancelled, so what remains is
exactly the Cauchy–Schwarz step. -/
theorem lemmaT_sq {v ea w : ℝ × ℝ} (hv : cross v ea ≠ 0) :
    n2 w * cross v ea ^ 2 ≤ n2 ea * n2 w * n2 v := by
  have h := cross_sq_le v ea
  have hw : 0 ≤ n2 w := by simp only [n2]; nlinarith [mul_self_nonneg w.1, mul_self_nonneg w.2]
  nlinarith [h, hw]

/-- The cross product vanishes exactly when the Cauchy–Schwarz bound is tight
against the dot product — the degenerate case Lemma T never needs but which
makes the inequality's shape clear. -/
theorem cross_eq_zero_iff_dot_sq {u v : ℝ × ℝ} :
    cross u v = 0 ↔ dot u v ^ 2 = n2 u * n2 v := by
  have h := lagrange u v
  constructor
  · intro hc; rw [hc] at h; linarith
  · intro hd; nlinarith [h, sq_nonneg (cross u v)]

#print axioms cross_eq_zero_iff_dot_sq

#print axioms lagrange
#print axioms cross_sq_le
#print axioms lemmaT_sq

#print axioms plucker
#print axioms rot_displacement
#print axioms rot_displacement_zero_of_parallel

/-! ## The rotating neighbour: why the count does not drop

The tilted shift of `TiltedShift.lean` removes hypothesis **(NC)** — it is
defined at a straight vertex, where AKR's slide along an adjacent side line is
not. It pays for that with a new obligation. AKR's slide is designed so the
*adjacent* sides stay on their own lines and merely change length; a tilted
shift moves the side's endpoints off those lines, so each adjacent side
**rotates** about its fixed far endpoint.

So the tilted repair owes an argument that intersections on a rotating
neighbour are not lost. This section gives it, in the form the count needs.

Every orientation determinant between a rotating side and a fixed `Q`-side is
**affine** in the shift parameter: one endpoint moves affinely and the rest is
fixed. A proper crossing is a conjunction of strict sign conditions on such
determinants, so it is an *open* condition, and the only question is how small
the shift must be. That is answered explicitly. -/

/-- **An affine quantity keeps its sign while the shift is smaller than the
ratio of value to slope.** `c` is the determinant at `δ = 0` and `m` its rate of
change; the conclusion `0 < c * (c + δ * m)` says the perturbed determinant is
nonzero with the *same* sign. -/
theorem sign_preserved_affine {c m δ : ℝ} (hδ : |δ| * |m| < |c|) :
    0 < c * (c + δ * m) := by
  have habs : |δ * m| < |c| := by rw [abs_mul]; exact hδ
  have hc : 0 < |c| := lt_of_le_of_lt (abs_nonneg _) habs
  have e1 : -(|c| * |δ * m|) ≤ c * (δ * m) := by
    have h := neg_abs_le (c * (δ * m))
    rw [abs_mul] at h
    linarith
  have e2 : |c| * |δ * m| < |c| * |c| := mul_lt_mul_of_pos_left habs hc
  have e3 : |c| * |c| = c * c := abs_mul_abs_self c
  nlinarith [e1, e2, e3]

/-- The ratio form of `sign_preserved_affine`, with `1 + |m|` in the denominator
so that a determinant which does not move at all (`m = 0`) needs no special
case. -/
theorem sign_preserved_of_lt {c m δ : ℝ} (hδ : |δ| < |c| / (1 + |m|)) :
    0 < c * (c + δ * m) := by
  have hden : (0:ℝ) < 1 + |m| := by positivity
  have hmul := mul_lt_mul_of_pos_right hδ hden
  rw [div_mul_cancel₀ _ (ne_of_gt hden)] at hmul
  refine sign_preserved_affine (lt_of_le_of_lt ?_ hmul)
  exact mul_le_mul_of_nonneg_left (by linarith [abs_nonneg m]) (abs_nonneg δ)

/-- **One rotation small enough for every determinant at once.**  Given the
finitely many orientation determinants that certify the crossings on a rotating
neighbour — each nonzero at `δ = 0`, each with its own rate `m i` — a single
`δ₀` keeps all of them nonzero and of unchanged sign.

The bound `|c i| / (1 + |m i|)` is used rather than `|c i| / |m i|` so that a
determinant which does not move at all (`m i = 0`) needs no special case. -/
theorem exists_uniform_rotation {ι : Type*} (S : Finset ι) (c m : ι → ℝ)
    (hc : ∀ i ∈ S, c i ≠ 0) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| < δ₀ → ∀ i ∈ S, 0 < c i * (c i + δ * m i) := by
  rcases S.eq_empty_or_nonempty with hE | hS
  · exact ⟨1, one_pos, by simp [hE]⟩
  · refine ⟨S.inf' hS (fun i => |c i| / (1 + |m i|)), ?_, ?_⟩
    · rw [Finset.lt_inf'_iff]
      intro i hi
      exact div_pos (abs_pos.mpr (hc i hi)) (by positivity)
    · intro δ hδ i hi
      exact sign_preserved_of_lt (lt_of_lt_of_le hδ (Finset.inf'_le _ hi))

/-- The same conclusion in the form the count uses: the perturbed determinant is
nonzero, so no certified crossing is lost. -/
theorem ne_zero_of_uniform_rotation {c m δ : ℝ} (h : 0 < c * (c + δ * m)) :
    c + δ * m ≠ 0 := by
  intro hz
  rw [hz, mul_zero] at h
  exact lt_irrefl 0 h

#print axioms sign_preserved_affine
#print axioms exists_uniform_rotation
#print axioms ne_zero_of_uniform_rotation

/-! ### The geometric statement

The abstract results above are anchored here: the determinants of a rotating
side really are affine in the shift, and a proper crossing really does survive.
-/

/-- The endpoint `A` displaced by `δ · w`; the side's other endpoint is fixed,
so the side rotates about it. -/
def mov (A w : ℝ × ℝ) (δ : ℝ) : ℝ × ℝ := (A.1 + δ * w.1, A.2 + δ * w.2)

/-- A determinant with the moving point in the **second** slot is affine in `δ`. -/
theorem orientR_mov_mid (F A C w : ℝ × ℝ) (δ : ℝ) :
    orientR F (mov A w δ) C
      = orientR F A C + δ * (w.1 * (C.2 - F.2) - w.2 * (C.1 - F.1)) := by
  simp only [orientR, mov]; ring

/-- A determinant with the moving point in the **third** slot is affine in `δ`. -/
theorem orientR_mov_last (C D A w : ℝ × ℝ) (δ : ℝ) :
    orientR C D (mov A w δ)
      = orientR C D A + δ * ((D.1 - C.1) * w.2 - (D.2 - C.2) * w.1) := by
  simp only [orientR, mov]; ring

/-- If two quantities keep their signs, a product of them that was negative
stays negative. -/
theorem prod_neg_of_signs {a a' b b' : ℝ} (ha : 0 < a * a') (hb : 0 < b * b')
    (hab : a * b < 0) : a' * b' < 0 := by
  nlinarith [mul_pos ha hb]

/-- **A proper crossing survives a small rotation of the neighbouring side.**

`F` is the fixed far endpoint, `A` the endpoint the tilted shift moves, and
`[C, D]` a `Q`-side crossing it. There is a `δ₀ > 0` such that every smaller
rotation leaves the crossing proper — so the tilted shift's rotating
neighbours lose no intersections, which is the obligation the tilt incurs in
exchange for not needing **(NC)**. -/
theorem properCrossR_persists_rotating {F A C D : ℝ × ℝ} (w : ℝ × ℝ)
    (h0 : ProperCrossR F A C D) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| < δ₀ → ProperCrossR F (mov A w δ) C D := by
  obtain ⟨h1, h2⟩ := h0
  -- the three determinants that move, and the one that does not
  set c0 := orientR F A C with hc0
  set c1 := orientR F A D with hc1
  set c2 := orientR C D A with hc2
  set m0 := w.1 * (C.2 - F.2) - w.2 * (C.1 - F.1) with hm0
  set m1 := w.1 * (D.2 - F.2) - w.2 * (D.1 - F.1) with hm1
  set m2 := (D.1 - C.1) * w.2 - (D.2 - C.2) * w.1 with hm2
  have hc0ne : c0 ≠ 0 := fun h => by rw [h, zero_mul] at h1; exact lt_irrefl 0 h1
  have hc1ne : c1 ≠ 0 := fun h => by rw [h, mul_zero] at h1; exact lt_irrefl 0 h1
  have hc2ne : c2 ≠ 0 := fun h => by rw [h, mul_zero] at h2; exact lt_irrefl 0 h2
  have hFne : orientR C D F ≠ 0 := fun h => by rw [h, zero_mul] at h2; exact lt_irrefl 0 h2
  refine ⟨min (min (|c0| / (1 + |m0|)) (|c1| / (1 + |m1|))) (|c2| / (1 + |m2|)), ?_, ?_⟩
  · refine lt_min (lt_min ?_ ?_) ?_ <;>
      exact div_pos (abs_pos.mpr (by assumption)) (by positivity)
  · intro δ hδ
    have d0 : |δ| < |c0| / (1 + |m0|) := lt_of_lt_of_le hδ ((min_le_left _ _).trans (min_le_left _ _))
    have d1 : |δ| < |c1| / (1 + |m1|) := lt_of_lt_of_le hδ ((min_le_left _ _).trans (min_le_right _ _))
    have d2 : |δ| < |c2| / (1 + |m2|) := lt_of_lt_of_le hδ (min_le_right _ _)
    constructor
    · rw [orientR_mov_mid, orientR_mov_mid, ← hc0, ← hc1, ← hm0, ← hm1]
      exact prod_neg_of_signs (sign_preserved_of_lt d0) (sign_preserved_of_lt d1) h1
    · rw [orientR_mov_last, ← hc2, ← hm2]
      exact prod_neg_of_signs (mul_self_pos.mpr hFne) (sign_preserved_of_lt d2) h2

#print axioms orientR_mov_mid
#print axioms orientR_mov_last
#print axioms prod_neg_of_signs
#print axioms properCrossR_persists_rotating

/-! ### The fixed pivot, and why the repair needs *two* tilt directions

`properCrossR_persists_rotating` handles crossings whose determinants are
nonzero at `δ = 0`.  The remaining case is the pivot itself: a `Q`-vertex `V`
lying *on* the rotating side, so the determinant starts at zero.  Rotating is
supposed to remove that degeneracy — but it does not always.

The condition "`V` is on the rotating side" is `orientR F (mov A w δ) V = 0`,
which is affine in `δ`.  An affine function either has one root, or is
identically zero.  Identically zero is the bad case: the rotation never moves
the degeneracy at all, and it happens exactly when `V − F` is parallel to the
tilt direction `w`.

That is what the second tilt direction is for.  `nrm u` and `nrm u + u` are
linearly independent, so a nonzero `V − F` can be parallel to at most one of
them — one of the two choices always moves the pivot degeneracy. -/

/-- The two tilt directions are linearly independent, for every nonzero side. -/
theorem tilt_independent {u : ℝ × ℝ} (hu : u ≠ 0) : cross (nrm u) (nrm u + u) ≠ 0 := by
  have h : u.1 ≠ 0 ∨ u.2 ≠ 0 := by
    by_contra hc
    push_neg at hc
    exact hu (Prod.ext hc.1 hc.2)
  have key : cross (nrm u) (nrm u + u) = -(u.1 * u.1 + u.2 * u.2) := by
    simp only [cross, nrm, Prod.fst_add, Prod.snd_add]; ring
  rw [key]
  have hpos : 0 < u.1 * u.1 + u.2 * u.2 := by
    rcases h with h1 | h2
    · nlinarith [mul_self_pos.mpr h1, mul_self_nonneg u.2]
    · nlinarith [mul_self_pos.mpr h2, mul_self_nonneg u.1]
  exact ne_of_lt (by linarith)

/-- In the plane, a vector parallel to two independent directions is zero. -/
theorem eq_zero_of_cross_both {a b x : ℝ × ℝ} (hab : cross a b ≠ 0)
    (ha : cross a x = 0) (hb : cross b x = 0) : x = 0 := by
  simp only [cross] at hab ha hb
  have h1 : x.1 * (a.1 * b.2 - a.2 * b.1) = 0 := by linear_combination b.1 * ha - a.1 * hb
  have h2 : x.2 * (a.1 * b.2 - a.2 * b.1) = 0 := by linear_combination b.2 * ha - a.2 * hb
  exact Prod.ext ((mul_eq_zero.mp h1).resolve_right hab)
    ((mul_eq_zero.mp h2).resolve_right hab)

/-- **At least one tilt direction moves the pivot degeneracy.**  This is why the
repair carries two candidate directions rather than one: for a `Q`-vertex at
`V` and a pivot at `F`, the rotation fails to move the degeneracy only when
`V − F` is parallel to the tilt, and that can happen for at most one of the
two. -/
theorem pivot_tilt_dichotomy {u x : ℝ × ℝ} (hu : u ≠ 0) (hx : x ≠ 0) :
    cross (nrm u) x ≠ 0 ∨ cross (nrm u + u) x ≠ 0 := by
  by_contra hc
  push_neg at hc
  exact hx (eq_zero_of_cross_both (tilt_independent hu) hc.1 hc.2)

theorem slope_eq_cross (F V w : ℝ × ℝ) :
    w.1 * (V.2 - F.2) - w.2 * (V.1 - F.1) = cross w (V - F) := by
  simp only [cross, Prod.fst_sub, Prod.snd_sub]

/-- **With a tilt that does move it, the pivot degeneracy survives at exactly
one `δ`.**  So all but one shift removes it — a far stronger statement than
"some shift removes it", and the one a termination argument can use. -/
theorem pivot_degeneracy_isolated {F A V w : ℝ × ℝ} (hm : cross w (V - F) ≠ 0) {δ : ℝ}
    (hδ : δ ≠ -orientR F A V / cross w (V - F)) :
    orientR F (mov A w δ) V ≠ 0 := by
  rw [orientR_mov_mid, slope_eq_cross]
  intro h
  apply hδ
  field_simp
  linarith [h]

#print axioms tilt_independent
#print axioms eq_zero_of_cross_both
#print axioms pivot_tilt_dichotomy
#print axioms pivot_degeneracy_isolated

end RotationLaw
end Heptagon
