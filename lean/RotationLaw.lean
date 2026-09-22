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

open Heptagon.RealConfig Heptagon.RealUpperBound Heptagon.TiltedShift Heptagon.ResidualSym

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

/-! ### Two tilt directions are not enough — the one-parameter family

`pivot_tilt_dichotomy` is per-degeneracy, and that is all it is.  With *two*
pivot degeneracies the two tilts can be defeated simultaneously: take
`u = (1,0)`, so the tilts are `nrm u = (0,1)` and `nrm u + u = (1,1)`, and take
`x₁ = (0,1)`, `x₂ = (1,1)`.  Then `x₁` kills the first tilt, `x₂` kills the
second, and neither choice serves both.  (Exact certificate in
`independent/akr_9_2/pivot_dichotomy.py`.)

The repair is the one-parameter family `tilt u t = nrm u + t·u`, which recovers
`nrm u` at `t = 0` and `nrm u + u` at `t = 1`.  For a *fixed* degeneracy the
badness condition is **affine in `t`**, so each degeneracy rules out at most one
value — and finitely many degeneracies rule out finitely many values.

This is the same shape as Theorem C⁺'s rule for the §9.1 directions (`t ∈
{1,2,3}`, forbidding `E ∥` each of four rays), and for the same reason. -/

/-- The tilt family: `tilt u 0 = nrm u`, `tilt u 1 = nrm u + u`. -/
def tilt (u : ℝ × ℝ) (t : ℝ) : ℝ × ℝ := (-u.2 + t * u.1, u.1 + t * u.2)

theorem tilt_zero (u : ℝ × ℝ) : tilt u 0 = nrm u := by
  simp only [tilt, nrm, Prod.ext_iff]; constructor <;> ring

theorem tilt_one (u : ℝ × ℝ) : tilt u 1 = nrm u + u := by
  simp only [tilt, nrm, Prod.ext_iff, Prod.fst_add, Prod.snd_add]; constructor <;> ring

/-- **The badness condition is affine in `t`.**  This is the whole reason the
family works. -/
theorem cross_tilt (u x : ℝ × ℝ) (t : ℝ) :
    cross (tilt u t) x = cross (nrm u) x + t * cross u x := by
  simp only [cross, tilt, nrm]; ring

theorem cross_nrm_self {u : ℝ × ℝ} (hu : u ≠ 0) : cross (nrm u) u ≠ 0 := by
  have h : u.1 ≠ 0 ∨ u.2 ≠ 0 := by
    by_contra hc
    push_neg at hc
    exact hu (Prod.ext hc.1 hc.2)
  have key : cross (nrm u) u = -(u.1 * u.1 + u.2 * u.2) := by
    simp only [cross, nrm]; ring
  rw [key]
  have hpos : 0 < u.1 * u.1 + u.2 * u.2 := by
    rcases h with h1 | h2
    · nlinarith [mul_self_pos.mpr h1, mul_self_nonneg u.2]
    · nlinarith [mul_self_pos.mpr h2, mul_self_nonneg u.1]
  exact ne_of_lt (by linarith)

/-- Each pivot degeneracy rules out **at most one** member of the tilt family. -/
theorem bad_tilt_unique {u x : ℝ × ℝ} (hu : u ≠ 0) (hx : x ≠ 0) {t t' : ℝ}
    (ht : cross (tilt u t) x = 0) (ht' : cross (tilt u t') x = 0) : t = t' := by
  rw [cross_tilt] at ht ht'
  by_cases hc : cross u x = 0
  · exact absurd (eq_zero_of_cross_both (cross_nrm_self hu)
      (by rw [hc, mul_zero, add_zero] at ht; exact ht) hc) hx
  · have : (t - t') * cross u x = 0 := by linarith
    rcases mul_eq_zero.mp this with h | h
    · linarith [sub_eq_zero.mp h]
    · exact absurd h hc

/-- **A single tilt serving every pivot degeneracy at once**, chosen from any
finite candidate set larger than the number of degeneracies.  With `k`
degeneracies, `k + 1` candidates suffice — the direct analogue of Theorem C⁺'s
`t ∈ {1,2,3}`. -/
theorem exists_good_tilt {ι : Type*} [DecidableEq ι] (S : Finset ι) {u : ℝ × ℝ} (hu : u ≠ 0)
    (x : ι → ℝ × ℝ) (hx : ∀ i ∈ S, x i ≠ 0) (T : Finset ℝ) (hT : S.card < T.card) :
    ∃ t ∈ T, ∀ i ∈ S, cross (tilt u t) (x i) ≠ 0 := by
  classical
  set B : Finset ℝ := S.image (fun i =>
    if cross u (x i) = 0 then 0 else -cross (nrm u) (x i) / cross u (x i)) with hB
  have hBcard : B.card ≤ S.card := Finset.card_image_le
  have hsub : ¬ T ⊆ B := fun hs => by
    have := Finset.card_le_card hs
    omega
  obtain ⟨t, htT, htB⟩ := Finset.not_subset.mp hsub
  refine ⟨t, htT, fun i hi hz => ?_⟩
  rw [cross_tilt] at hz
  by_cases hc : cross u (x i) = 0
  · exact hx i hi (eq_zero_of_cross_both (cross_nrm_self hu)
      (by rw [hc, mul_zero, add_zero] at hz; exact hz) hc)
  · refine htB ?_
    rw [hB]
    refine Finset.mem_image.mpr ⟨i, hi, ?_⟩
    rw [if_neg hc]
    field_simp
    linarith [hz]

/-- **Every member of the family is a valid shift direction.**  `cross u u = 0`,
so the normal displacement is `cross (nrm u) u` for *every* `t` — the family
cannot wander into a direction that fails to move the side. -/
theorem cross_tilt_self {u : ℝ × ℝ} (hu : u ≠ 0) (t : ℝ) : cross (tilt u t) u ≠ 0 := by
  rw [cross_tilt]
  have h : cross u u = 0 := by simp only [cross]; ring
  rw [h, mul_zero, add_zero]
  exact cross_nrm_self hu

/-- **The whole family shifts the side to the same parallel line.**  `⟪nrm u, u⟫ = 0`,
so the normal displacement `⟪nrm u, tilt u t⟫` is independent of `t`.  This
generalises `ip_tilt_nrm`, and means the averaging machinery of
`TiltedShift.lean` applies uniformly across the family: choosing `t` to dodge
the pivot degeneracies costs nothing in the count. -/
theorem ip_nrm_tilt (u : ℝ × ℝ) (t : ℝ) : ip (nrm u) (tilt u t) = ip (nrm u) (nrm u) := by
  simp only [ip, nrm, tilt]; ring

#print axioms cross_tilt_self
#print axioms ip_nrm_tilt
#print axioms tilt_zero
#print axioms tilt_one
#print axioms cross_tilt
#print axioms bad_tilt_unique
#print axioms exists_good_tilt

/-! ### The shift operator itself

Step **S7** of the dependency graph is labelled "the interface gap": §9.2's
shift operator `P(δ)` is never *defined* in AKR — Figure 28 shows it and the
text does not say what it is.  With the tilt family in hand it can simply be
written down, for every side of every simple heptagon, with no collinearity
hypothesis anywhere.

`shiftPoly W i t δ` moves both endpoints of side `i` by `δ · tilt u t`, where
`u` is that side's direction, and leaves the other five vertices alone. -/

/-- **§9.2's shift operator, defined.**  Side `i` of `W` is displaced by
`δ · tilt u t`; every other vertex is fixed. -/
def shiftPoly (W : Fin 7 → ℝ × ℝ) (i : Fin 7) (t δ : ℝ) : Fin 7 → ℝ × ℝ :=
  fun j => if j = i ∨ j = i + 1 then mov (W j) (tilt (W (i + 1) - W i) t) δ else W j

theorem shiftPoly_at (W : Fin 7 → ℝ × ℝ) (i : Fin 7) (t δ : ℝ) :
    shiftPoly W i t δ i = mov (W i) (tilt (W (i + 1) - W i) t) δ := by
  simp [shiftPoly]

theorem shiftPoly_at_succ (W : Fin 7 → ℝ × ℝ) (i : Fin 7) (t δ : ℝ) :
    shiftPoly W i t δ (i + 1) = mov (W (i + 1)) (tilt (W (i + 1) - W i) t) δ := by
  simp [shiftPoly]

/-- Vertices off the shifted side do not move. -/
theorem shiftPoly_other (W : Fin 7 → ℝ × ℝ) (i : Fin 7) (t δ : ℝ) {j : Fin 7}
    (h1 : j ≠ i) (h2 : j ≠ i + 1) : shiftPoly W i t δ j = W j := by
  simp [shiftPoly, h1, h2]

/-- At `δ = 0` the operator is the identity. -/
theorem shiftPoly_zero (W : Fin 7 → ℝ × ℝ) (i : Fin 7) (t : ℝ) :
    shiftPoly W i t 0 = W := by
  funext j
  simp only [shiftPoly, mov]
  split_ifs with h
  · simp
  · rfl

/-- **The shifted side is a translate: its direction is unchanged.**  Both
endpoints move by the same vector, so the side stays parallel to itself — which
is what makes it *a shift* rather than an arbitrary perturbation. -/
theorem shiftPoly_dir (W : Fin 7 → ℝ × ℝ) (i : Fin 7) (t δ : ℝ) :
    shiftPoly W i t δ (i + 1) - shiftPoly W i t δ i = W (i + 1) - W i := by
  rw [shiftPoly_at, shiftPoly_at_succ]
  simp only [mov, Prod.ext_iff, Prod.fst_sub, Prod.snd_sub]
  constructor <;> ring

/-- Both endpoints land at normal offset `δ · ‖u‖²` from the original side
line — the same value for **every** `t`, so the whole tilt family moves the side
onto the same parallel line.  This is `shift_parallel` and `ip_nrm_tilt` in the
form the operator needs. -/
theorem off_mov_tilt (u A X : ℝ × ℝ) (t δ : ℝ) :
    off u X (mov A (tilt u t) δ) = off u X A + δ * (u.1 * u.1 + u.2 * u.2) := by
  simp only [off, mov, tilt]; ring

theorem shiftPoly_offset_fst (W : Fin 7 → ℝ × ℝ) (i : Fin 7) (t δ : ℝ) :
    off (W (i + 1) - W i) (W i) (shiftPoly W i t δ i)
      = δ * ((W (i + 1) - W i).1 * (W (i + 1) - W i).1
           + (W (i + 1) - W i).2 * (W (i + 1) - W i).2) := by
  rw [shiftPoly_at, off_mov_tilt]
  simp only [off]
  ring

theorem shiftPoly_offset_snd (W : Fin 7 → ℝ × ℝ) (i : Fin 7) (t δ : ℝ) :
    off (W (i + 1) - W i) (W i) (shiftPoly W i t δ (i + 1))
      = δ * ((W (i + 1) - W i).1 * (W (i + 1) - W i).1
           + (W (i + 1) - W i).2 * (W (i + 1) - W i).2) := by
  rw [shiftPoly_at_succ, off_mov_tilt]
  simp only [off, Prod.fst_sub, Prod.snd_sub]
  ring

#print axioms shiftPoly_at
#print axioms shiftPoly_at_succ
#print axioms shiftPoly_other
#print axioms shiftPoly_zero
#print axioms shiftPoly_dir
#print axioms off_mov_tilt
#print axioms shiftPoly_offset_fst
#print axioms shiftPoly_offset_snd

/-! ### Choosing `δ`: removal and non-creation are the same lemma

For a fixed `Q`-vertex `V`, "V lies on the shifted side's line" is affine in
`δ`, and the coefficient is `‖u‖² ≠ 0`.  So it holds at **exactly one** `δ`, and
which one tells the whole story:

* if `V` was *already* on the line, that `δ` is `0` — so **every** nonzero shift
  removes the degeneracy;
* if `V` was *not* on the line, that `δ` is nonzero — a single value to avoid,
  so almost every shift **creates** nothing.

Removal and non-creation are therefore not two arguments but one. -/

/-- Moving the base point of an offset by `δ · tilt u t` shifts every offset by
`δ‖u‖²`, independently of `t`. -/
theorem off_base_mov (u A V : ℝ × ℝ) (t δ : ℝ) :
    off u (mov A (tilt u t) δ) V = off u A V - δ * (u.1 * u.1 + u.2 * u.2) := by
  simp only [off, mov, tilt]; ring

/-- **The degeneracy condition holds at exactly one `δ`.** -/
theorem off_shifted_eq_zero_iff {u : ℝ × ℝ} (A V : ℝ × ℝ) (t δ : ℝ)
    (hu2 : u.1 * u.1 + u.2 * u.2 ≠ 0) :
    off u (mov A (tilt u t) δ) V = 0 ↔ δ = off u A V / (u.1 * u.1 + u.2 * u.2) := by
  rw [off_base_mov]
  constructor
  · intro h
    rw [eq_div_iff hu2]
    linarith
  · intro h
    rw [h, div_mul_cancel₀ _ hu2]
    ring

/-- **Every nonzero shift removes an existing degeneracy.** -/
theorem shift_removes_degeneracy {u : ℝ × ℝ} (A : ℝ × ℝ) {V : ℝ × ℝ} (t : ℝ) {δ : ℝ}
    (hu2 : u.1 * u.1 + u.2 * u.2 ≠ 0) (hV : off u A V = 0) (hδ : δ ≠ 0) :
    off u (mov A (tilt u t) δ) V ≠ 0 := by
  intro h
  rw [off_shifted_eq_zero_iff A V t δ hu2, hV, zero_div] at h
  exact hδ h

/-- **Almost every shift creates none.** -/
theorem shift_creates_no_degeneracy {u : ℝ × ℝ} (A V : ℝ × ℝ) (t : ℝ) {δ : ℝ}
    (hu2 : u.1 * u.1 + u.2 * u.2 ≠ 0)
    (hδ : δ ≠ off u A V / (u.1 * u.1 + u.2 * u.2)) :
    off u (mov A (tilt u t) δ) V ≠ 0 := by
  intro h
  rw [off_shifted_eq_zero_iff A V t δ hu2] at h
  exact hδ h

/-- **§9.2's choice of `δ`, made.**  Given the finitely many `Q`-vertices, there
is a shift that is nonzero, smaller than any prescribed `δ₀`, and leaves **no**
`Q`-vertex on the shifted side's line — so the target degeneracy is removed and
none is created there.

The bound `δ₀` is left as a parameter because it is supplied from elsewhere:
`nu_abs_le` and `exists_uniform_shift` for the line-versus-side condition,
`exists_uniform_rotation` for the rotating neighbours. -/
theorem exists_good_delta {ι : Type*} [DecidableEq ι] (S : Finset ι) (V : ι → ℝ × ℝ)
    {u : ℝ × ℝ} (A : ℝ × ℝ) (t : ℝ) (hu2 : u.1 * u.1 + u.2 * u.2 ≠ 0)
    {δ₀ : ℝ} (hδ₀ : 0 < δ₀) :
    ∃ δ : ℝ, δ ≠ 0 ∧ |δ| < δ₀ ∧ ∀ i ∈ S, off u (mov A (tilt u t) δ) (V i) ≠ 0 := by
  classical
  set B : Finset ℝ :=
    S.image (fun i => off u A (V i) / (u.1 * u.1 + u.2 * u.2)) with hB
  have hinf : (Set.Ioo (0:ℝ) δ₀ \ (B : Set ℝ)).Infinite :=
    (Set.Ioo_infinite hδ₀).diff B.finite_toSet
  obtain ⟨δ, ⟨hpos, hlt⟩, hnot⟩ := hinf.nonempty
  refine ⟨δ, ne_of_gt hpos, ?_, fun i hi => ?_⟩
  · rw [abs_of_pos hpos]; exact hlt
  · refine shift_creates_no_degeneracy A (V i) t hu2 (fun heq => hnot ?_)
    rw [Finset.mem_coe, hB]
    exact Finset.mem_image.mpr ⟨i, hi, heq.symm⟩

#print axioms off_base_mov
#print axioms off_shifted_eq_zero_iff
#print axioms shift_removes_degeneracy
#print axioms shift_creates_no_degeneracy
#print axioms exists_good_delta

/-! ### The general form, and the two-stage choice

`exists_good_delta` was stated for `Q`-vertices on one side's line.  Every other
family §9.2 has to dodge — `P`-vertices on `Q`-sides, degeneracies on the
rotating neighbours, the other sides of `P` — has the same shape, because *all*
of these conditions are affine in `δ`.  That is the single structural fact this
whole development rests on, so it is worth stating once in general.

Stated that way, §9.2's step is a **two-stage choice**:

1. choose the tilt parameter `t` so that every condition's slope is nonzero
   (`exists_good_tilt` — each degeneracy rules out at most one `t`);
2. choose the shift `δ` avoiding the finitely many roots that remain
   (`exists_good_delta_affine` — each condition now rules out at most one `δ`).

Neither stage can be skipped: without stage 1 a condition can be identically
zero in `δ`, and then no shift removes it — which is exactly the pivot
certificate. -/

/-- **The general form.**  Finitely many conditions, each affine in `δ` with
nonzero slope, are all avoided by some arbitrarily small nonzero shift. -/
theorem exists_good_delta_affine {ι : Type*} [DecidableEq ι] (S : Finset ι) (c m : ι → ℝ)
    (hm : ∀ i ∈ S, m i ≠ 0) {δ₀ : ℝ} (hδ₀ : 0 < δ₀) :
    ∃ δ : ℝ, δ ≠ 0 ∧ |δ| < δ₀ ∧ ∀ i ∈ S, c i + δ * m i ≠ 0 := by
  classical
  set B : Finset ℝ := S.image (fun i => -c i / m i) with hB
  have hinf : (Set.Ioo (0:ℝ) δ₀ \ (B : Set ℝ)).Infinite :=
    (Set.Ioo_infinite hδ₀).diff B.finite_toSet
  obtain ⟨δ, ⟨hpos, hlt⟩, hnot⟩ := hinf.nonempty
  refine ⟨δ, ne_of_gt hpos, by rw [abs_of_pos hpos]; exact hlt, fun i hi hz => hnot ?_⟩
  rw [Finset.mem_coe, hB]
  refine Finset.mem_image.mpr ⟨i, hi, ?_⟩
  have hmi := hm i hi
  field_simp
  linarith

/-- **The two-stage choice, which is the shape of §9.2's step.**  A tilt `t`
from any candidate set bigger than the number of degeneracies, and then a
shift `δ` as small as required — together avoiding every degeneracy at once.

The slopes are `cross (tilt u t) (x i)`, so stage 1 is precisely what makes
stage 2 applicable. -/
theorem exists_good_tilt_and_delta {ι : Type*} [DecidableEq ι] (S : Finset ι)
    {u : ℝ × ℝ} (hu : u ≠ 0) (x : ι → ℝ × ℝ) (hx : ∀ i ∈ S, x i ≠ 0)
    (T : Finset ℝ) (hT : S.card < T.card) (c : ℝ → ι → ℝ)
    {δ₀ : ℝ} (hδ₀ : 0 < δ₀) :
    ∃ t ∈ T, ∃ δ : ℝ, δ ≠ 0 ∧ |δ| < δ₀ ∧
      ∀ i ∈ S, c t i + δ * cross (tilt u t) (x i) ≠ 0 := by
  obtain ⟨t, htT, ht⟩ := exists_good_tilt S hu x hx T hT
  obtain ⟨δ, hδ0, hδlt, hδall⟩ :=
    exists_good_delta_affine S (c t) (fun i => cross (tilt u t) (x i))
      (fun i hi => ht i hi) hδ₀
  exact ⟨t, htT, δ, hδ0, hδlt, hδall⟩

#print axioms exists_good_delta_affine
#print axioms exists_good_tilt_and_delta

/-! ### The monovariant, and termination

Step **S10** of the dependency graph reads: "termination of *one by one* — the
project's monovariant; **no termination argument in AKR**".  §9.2 removes
degeneracies one at a time and simply asserts the process finishes.

With `shift_removes_degeneracy` and `shift_creates_no_degeneracy` in hand the
monovariant is immediate, and termination follows from it by strong induction.
Both are stated abstractly, over an arbitrary index type for the degeneracies,
so they do not depend on how a degeneracy is encoded. -/

/-- **The monovariant.**  If the step creates no degeneracy (`D' ⊆ D`) and
removes at least one (`k ∈ D`, `k ∉ D'`), the count strictly drops. -/
theorem degeneracy_monovariant {ι : Type*} [DecidableEq ι] {D D' : Finset ι} {k : ι}
    (hsub : D' ⊆ D) (hk : k ∈ D) (hk' : k ∉ D') : D'.card < D.card :=
  Finset.card_lt_card ((Finset.ssubset_iff_of_subset hsub).mpr ⟨k, hk, hk'⟩)

/-- **Termination.**  A step that strictly decreases a `ℕ`-valued measure
whenever the measure is nonzero reaches zero, in at most `meas a` steps.

This is the argument AKR do not give.  It is not deep — but "one by one" is not
a proof that the process halts, and with the measure named it is three lines. -/
theorem exists_iterate_meas_zero {α : Type*} (step : α → α) (meas : α → ℕ)
    (hdec : ∀ a, meas a ≠ 0 → meas (step a) < meas a) :
    ∀ (n : ℕ) (a : α), meas a = n → ∃ k : ℕ, k ≤ n ∧ meas (step^[k] a) = 0 := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    intro a ha
    by_cases h : meas a = 0
    · exact ⟨0, Nat.zero_le _, by simpa using h⟩
    · have hlt : meas (step a) < n := ha ▸ hdec a h
      obtain ⟨k, hk, hk0⟩ := ih (meas (step a)) hlt (step a) rfl
      refine ⟨k + 1, by omega, ?_⟩
      rw [Function.iterate_succ_apply]
      exact hk0

/-- The form `§9.2` uses: the process reaches a degeneracy-free configuration. -/
theorem terminates {α : Type*} (step : α → α) (meas : α → ℕ)
    (hdec : ∀ a, meas a ≠ 0 → meas (step a) < meas a) (a : α) :
    ∃ k : ℕ, k ≤ meas a ∧ meas (step^[k] a) = 0 :=
  exists_iterate_meas_zero step meas hdec (meas a) a rfl

#print axioms degeneracy_monovariant
#print axioms exists_iterate_meas_zero
#print axioms terminates

/-! ### Connecting to the project's own configurations

Everything above is stated about bare points.  This section applies it to the
representation the rest of the development uses: `V : Fin 14 → ℝ × ℝ`, with
`P` at `pP 0 … pP 6` and `Q` at `pQ 0 … pQ 6`.

Note what is *not* here: no `Pair9`.  Building one requires re-establishing
`SimpleClosed` for the shifted polygon, which is hypothesis 9's obligation and
belongs to `SimplicityStable.lean`. -/

/-- A nonzero plane vector has nonzero squared norm. -/
theorem n2_ne_zero_of_ne {u : ℝ × ℝ} (hu : u ≠ 0) : u.1 * u.1 + u.2 * u.2 ≠ 0 := by
  have h : u.1 ≠ 0 ∨ u.2 ≠ 0 := by
    by_contra hc
    push_neg at hc
    exact hu (Prod.ext hc.1 hc.2)
  have hpos : 0 < u.1 * u.1 + u.2 * u.2 := by
    rcases h with h1 | h2
    · nlinarith [mul_self_pos.mpr h1, mul_self_nonneg u.2]
    · nlinarith [mul_self_pos.mpr h2, mul_self_nonneg u.1]
  exact ne_of_gt hpos

/-- The shift operator on a fourteen-vertex configuration: it displaces the two
endpoints of `P`-side `i` and touches nothing else. -/
def shiftV (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t δ : ℝ) : Fin 14 → ℝ × ℝ :=
  fun k => if k = pP i ∨ k = pP (i + 1) then
    mov (V k) (tilt (V (pP (i + 1)) - V (pP i)) t) δ else V k

theorem shiftV_P (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t δ : ℝ) :
    shiftV V i t δ (pP i) = mov (V (pP i)) (tilt (V (pP (i + 1)) - V (pP i)) t) δ := by
  simp [shiftV]

theorem shiftV_P_succ (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t δ : ℝ) :
    shiftV V i t δ (pP (i + 1))
      = mov (V (pP (i + 1))) (tilt (V (pP (i + 1)) - V (pP i)) t) δ := by
  simp [shiftV]

/-- **`Q` does not move.**  This is why the `Q`-vertices form a *fixed* finite
family for the `δ`-choice. -/
theorem shiftV_Q (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t δ : ℝ) (j : Fin 7) :
    shiftV V i t δ (pQ j) = V (pQ j) := by
  simp only [shiftV]
  rw [if_neg (not_or.mpr ⟨(pP_ne_pQ i j).symm, (pP_ne_pQ (i + 1) j).symm⟩)]

/-- The shifted side has the same direction, so `off` may keep using it. -/
theorem shiftV_dir (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t δ : ℝ) :
    shiftV V i t δ (pP (i + 1)) - shiftV V i t δ (pP i)
      = V (pP (i + 1)) - V (pP i) := by
  rw [shiftV_P, shiftV_P_succ]
  simp only [mov, Prod.ext_iff, Prod.fst_sub, Prod.snd_sub]
  constructor <;> ring

/-- **The shift clears every `Q`-vertex degeneracy on side `i` at once.**

Given any non-degenerate `P`-side and any prescribed `δ₀`, there is a nonzero
shift smaller than `δ₀` after which **no** `Q`-vertex lies on that side's line.
So the side's degeneracy count drops to zero in a single step, whatever it was
— which with `degeneracy_monovariant` is a strict decrease whenever the side
had a degeneracy to begin with.

The tilt parameter `t` is free here: by `ip_nrm_tilt` every member of the
family reaches the same offset, so this holds for whichever `t` was chosen to
dodge the pivots. -/
theorem shift_clears_side (V : Fin 14 → ℝ × ℝ) (i : Fin 7) (t : ℝ)
    (hside : V (pP (i + 1)) - V (pP i) ≠ 0) {δ₀ : ℝ} (hδ₀ : 0 < δ₀) :
    ∃ δ : ℝ, δ ≠ 0 ∧ |δ| < δ₀ ∧ ∀ j : Fin 7,
      off (shiftV V i t δ (pP (i + 1)) - shiftV V i t δ (pP i))
        (shiftV V i t δ (pP i)) (shiftV V i t δ (pQ j)) ≠ 0 := by
  classical
  obtain ⟨δ, hδ0, hδlt, hall⟩ :=
    exists_good_delta (Finset.univ : Finset (Fin 7)) (fun j => V (pQ j))
      (u := V (pP (i + 1)) - V (pP i)) (V (pP i)) t (n2_ne_zero_of_ne hside) hδ₀
  refine ⟨δ, hδ0, hδlt, fun j => ?_⟩
  rw [shiftV_dir, shiftV_P, shiftV_Q]
  exact hall j (Finset.mem_univ j)

#print axioms n2_ne_zero_of_ne
#print axioms shiftV_P
#print axioms shiftV_Q
#print axioms shiftV_dir
#print axioms shift_clears_side

/-! ### The other direction: moving `P`-vertices against fixed `Q`-lines

`shift_clears_side` handles fixed `Q`-vertices against the moving `P`-side.
The shift also moves two `P`-vertices, and *they* can land on a `Q`-side — the
symmetric-looking case that is not actually symmetric, because `Q` is fixed
and `P` moves.

It has the same two-stage shape, but now stage 1 is doing real work: the slope
is `a × tilt u t` for the `Q`-side direction `a`, which vanishes when the tilt
happens to be parallel to that `Q`-side.  No choice of `δ` helps then; the tilt
must be chosen first. -/

theorem cross_swap (a b : ℝ × ℝ) : cross a b = -cross b a := by
  simp only [cross]; ring

/-- Moving the *evaluated* point (rather than the base point) also shifts the
offset affinely — with slope `a × w` instead of `‖u‖²`. -/
theorem off_mov_general (a A X w : ℝ × ℝ) (δ : ℝ) :
    off a A (mov X w δ) = off a A X + δ * (a.1 * w.2 - a.2 * w.1) := by
  simp only [off, mov]; ring

/-- **The general `§9.2` avoidance theorem.**  A finite family of conditions
"this moving point must not land on that fixed line", all avoided at once by a
single tilt and a single arbitrarily small shift.

Instantiating `a`, `A` at the seven `Q`-sides and `X` at the two moving
`P`-vertices covers the `P`-vertex-on-`Q`-side case; instantiating at the
rotating neighbours covers the pivots.  The only hypothesis on the family is
that each fixed line is non-degenerate. -/
theorem exists_good_tilt_and_delta_lines {ι : Type*} [DecidableEq ι] (S : Finset ι)
    {u : ℝ × ℝ} (hu : u ≠ 0) (a A X : ι → ℝ × ℝ) (ha : ∀ i ∈ S, a i ≠ 0)
    (T : Finset ℝ) (hT : S.card < T.card) {δ₀ : ℝ} (hδ₀ : 0 < δ₀) :
    ∃ t ∈ T, ∃ δ : ℝ, δ ≠ 0 ∧ |δ| < δ₀ ∧
      ∀ i ∈ S, off (a i) (A i) (mov (X i) (tilt u t) δ) ≠ 0 := by
  classical
  obtain ⟨t, htT, ht⟩ := exists_good_tilt S hu a ha T hT
  have hm : ∀ i ∈ S, ((a i).1 * (tilt u t).2 - (a i).2 * (tilt u t).1) ≠ 0 := by
    intro i hi
    have h := ht i hi
    rw [cross_swap] at h
    simpa only [cross, neg_ne_zero] using h
  obtain ⟨δ, hδ0, hδlt, hall⟩ :=
    exists_good_delta_affine S (fun i => off (a i) (A i) (X i))
      (fun i => (a i).1 * (tilt u t).2 - (a i).2 * (tilt u t).1) hm hδ₀
  refine ⟨t, htT, δ, hδ0, hδlt, fun i hi => ?_⟩
  rw [off_mov_general]
  exact hall i hi

#print axioms cross_swap
#print axioms off_mov_general
#print axioms exists_good_tilt_and_delta_lines

/-- **Instantiated at the configuration.**  Both moving `P`-vertices avoid all
seven `Q`-side lines, for a single tilt and a single arbitrarily small shift.

Fourteen conditions, so fifteen tilt candidates suffice — the hypothesis
`14 < T.card`. -/
theorem shift_avoids_Q_sides (V : Fin 14 → ℝ × ℝ) (i : Fin 7)
    (hside : V (pP (i + 1)) - V (pP i) ≠ 0)
    (hQ : ∀ j : Fin 7, V (pQ (j + 1)) - V (pQ j) ≠ 0)
    (T : Finset ℝ) (hT : 14 < T.card) {δ₀ : ℝ} (hδ₀ : 0 < δ₀) :
    ∃ t ∈ T, ∃ δ : ℝ, δ ≠ 0 ∧ |δ| < δ₀ ∧ ∀ j : Fin 7,
      off (V (pQ (j + 1)) - V (pQ j)) (V (pQ j)) (shiftV V i t δ (pP i)) ≠ 0 ∧
      off (V (pQ (j + 1)) - V (pQ j)) (V (pQ j)) (shiftV V i t δ (pP (i + 1))) ≠ 0 := by
  classical
  obtain ⟨t, htT, δ, h0, hlt, hall⟩ :=
    exists_good_tilt_and_delta_lines (Finset.univ : Finset (Fin 7 × Bool)) hside
      (fun p => V (pQ (p.1 + 1)) - V (pQ p.1))
      (fun p => V (pQ p.1))
      (fun p => if p.2 then V (pP (i + 1)) else V (pP i))
      (fun p _ => hQ p.1) T (by simpa using hT) hδ₀
  refine ⟨t, htT, δ, h0, hlt, fun j => ⟨?_, ?_⟩⟩
  · rw [shiftV_P]
    simpa using hall (j, false) (Finset.mem_univ _)
  · rw [shiftV_P_succ]
    simpa using hall (j, true) (Finset.mem_univ _)

#print axioms shift_avoids_Q_sides

end RotationLaw
end Heptagon
