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

/-! ## The contrast: AKR's own rule fails exactly at a straight vertex

AKR slide the endpoint `A` along the previous side, i.e. in direction `A − C`.
That is admissible iff `⟪A−C, n⟫ ≠ 0`, and since `n = u^⊥` this says exactly
that `A − C` is **not parallel to `u`** — that is, `C, A, B` are not collinear.
So the operator's domain is precisely the non-straight vertices, which is the
refutation's mechanism, now machine-checked rather than argued. -/

/-- `⟪w, u^⊥⟫` vanishes exactly when `w ∥ u`. -/
theorem ip_nrm_eq_zero_iff (w u : ℝ × ℝ) : ip w (nrm u) = 0 ↔ cross w u = 0 := by
  simp only [ip, nrm, cross]
  constructor <;> intro h <;> linarith

/-- **AKR's rule is admissible iff the vertex is not straight.**  `w = A − C`
is the direction of the previous side; `cross w u ≠ 0` says `C, A, B` are not
collinear. -/
theorem akr_admissible_iff (w u : ℝ × ℝ) : ip w (nrm u) ≠ 0 ↔ cross w u ≠ 0 :=
  not_congr (ip_nrm_eq_zero_iff w u)

/-- And at a straight vertex it is **not** admissible — the exact failure the
certificate in `akr-9-assembly.md` §2.5a exploits, where every useful side has
such an endpoint and no shift can ever break the collinearity. -/
theorem akr_fails_at_straight {w u : ℝ × ℝ} (h : cross w u = 0) :
    ip w (nrm u) = 0 := (ip_nrm_eq_zero_iff w u).mpr h

/-! ## Why it is a *parallel* shift

`REPAIR.md` §1.1 chooses the normalisation so that both moved endpoints land on
the **same** translate of the side's line, whatever `(a,b)` are:

> "both new endpoints lie on `ℓ_δ = {x : ⟪x−A, n⟫ = δN}`, the parallel
> translate of the line of `s` at parameter `δ`. The choice of `(a,b)` only
> decides *where on `ℓ_δ`* the two endpoints land."

That is an algebraic identity and it is the reason the tilt is free: it moves
the endpoint along `ℓ_δ` without changing which `ℓ_δ` it is on. -/

/-- Move `A` by `c` in direction `a`. -/
def shiftPt (A a : ℝ × ℝ) (c : ℝ) : ℝ × ℝ := (A.1 + c * a.1, A.2 + c * a.2)

theorem ip_shiftPt (A a n : ℝ × ℝ) (c : ℝ) :
    ip (shiftPt A a c) n = ip A n + c * ip a n := by
  simp only [ip, shiftPt]; ring

/-- **Both endpoints land on the same parallel line.**  `u = B − A` is
orthogonal to `n`, so the `B` end starts on the same line as the `A` end and
the two normalised displacements are equal. -/
theorem shift_parallel {A B a b n : ℝ × ℝ} {δ N : ℝ}
    (ha : ip a n ≠ 0) (hb : ip b n ≠ 0)
    (hperp : ip B n = ip A n) :
    ip (shiftPt A a (δ * N / ip a n)) n = ip A n + δ * N ∧
    ip (shiftPt B b (δ * N / ip b n)) n = ip A n + δ * N := by
  constructor
  · rw [ip_shiftPt, div_mul_cancel₀ _ ha]
  · rw [ip_shiftPt, div_mul_cancel₀ _ hb, hperp]

/-- The hypothesis of `shift_parallel` is automatic for a genuine side: the
side direction is orthogonal to its own normal. -/
theorem side_perp (A B : ℝ × ℝ) : ip B (nrm (B - A)) = ip A (nrm (B - A)) := by
  have h : ip (B - A) (nrm (B - A)) = 0 := ip_u_nrm _
  simp only [ip, nrm, Prod.fst_sub, Prod.snd_sub] at h ⊢
  linarith

/-! ## The averaging identity, local core

AKR's §9.2 rests on one sentence: *"an intersection point may disappear or
multiply into two intersection points, depending on the direction of the shift.
However, the average number of intersections over the two possible directions
is always the same as before."*  They give no argument.

Here is the case that sentence describes, and it is an arithmetic identity.
A `Q`-vertex `X` lies **on** the shifted side's line at `δ = 0`, contributing
one intersection.  Its two incident `Q`-edges run to `Y` and `Z`; write
`y = ⟪Y−A, n⟫` and `z = ⟪Z−A, n⟫` for their normal offsets, both nonzero
because `X` is not a `P`-vertex (that is (VV), §9.1's output).

After a shift by `δ`, the line sits at normal offset `δN`, so `X` is at offset
`−δN` from it and the edge to `Y` crosses exactly when `−δN` and `y − δN` have
opposite signs — for small `δ`, exactly when `δ` and `y` agree in sign.

The identity then holds for **both** corner shapes at once, which is what makes
it work: if `y` and `z` agree in sign the count goes `2` then `0`; if they
disagree it goes `1` then `1`.  Either way the two directions sum to `2`. -/

/-- The local crossing count after a shift of signed size `δ`. -/
noncomputable def localCount (δ y z : ℝ) : ℕ :=
  (if 0 < δ * y then 1 else 0) + (if 0 < δ * z then 1 else 0)

/-- One edge is crossed by exactly one of the two shift directions. -/
theorem one_of_two_signs {δ y : ℝ} (h : δ * y ≠ 0) :
    (if 0 < δ * y then 1 else 0) + (if 0 < -δ * y then 1 else 0) = 1 := by
  rcases lt_trichotomy (δ * y) 0 with hlt | heq | hgt
  · rw [if_neg (by linarith), if_pos (by nlinarith)]
  · exact absurd heq h
  · rw [if_pos hgt, if_neg (by nlinarith)]

/-- **The averaging identity, local core.**  The two shift directions together
cross each incident edge exactly once, so the local counts sum to `2` — which
is twice the single intersection present before the shift.

No hypothesis on the corner's shape is needed: the identity holds whether the
vertex is a local extremum of the normal offset (count `2` then `0`) or not
(count `1` then `1`). -/
theorem averaging_local {δ y z : ℝ} (hδ : δ ≠ 0) (hy : y ≠ 0) (hz : z ≠ 0) :
    localCount δ y z + localCount (-δ) y z = 2 := by
  simp only [localCount]
  have h1 : δ * y ≠ 0 := mul_ne_zero hδ hy
  have h2 : δ * z ≠ 0 := mul_ne_zero hδ hz
  have e1 := one_of_two_signs h1
  have e2 := one_of_two_signs h2
  omega

/-- **Where `δ₀` enters.**  The sign criterion above is the *small-`δ`* form of
the actual straddle condition.  They agree exactly when the shift is smaller
than the offset it has to compare against — which is precisely the kind of
bound `δ₀` is assembled from.

`straddle` is the honest condition: the segment from `X` (offset `0`) to `Y`
(offset `y`) meets the shifted line iff the two endpoints' offsets from it have
opposite signs. -/
theorem straddle_iff_sign {y δ N : ℝ} (hN : 0 < N) (hsmall : |δ| * N < |y|) :
    (-(δ * N)) * (y - δ * N) < 0 ↔ 0 < δ * y := by
  rcases lt_trichotomy δ 0 with hd | hd | hd
  · have hdn : δ * N < 0 := mul_neg_of_neg_of_pos hd hN
    rw [abs_of_neg hd] at hsmall
    constructor
    · intro h
      rcases lt_trichotomy y 0 with hy | hy | hy
      · nlinarith
      · exfalso; rw [hy] at h; nlinarith
      · exfalso; rw [abs_of_pos hy] at hsmall; nlinarith
    · intro h
      have hy : y < 0 := by nlinarith
      rw [abs_of_neg hy] at hsmall
      nlinarith
  · subst hd; simp
  · have hdn : 0 < δ * N := mul_pos hd hN
    rw [abs_of_pos hd] at hsmall
    constructor
    · intro h
      rcases lt_trichotomy y 0 with hy | hy | hy
      · exfalso; rw [abs_of_neg hy] at hsmall; nlinarith
      · exfalso; rw [hy] at h; nlinarith
      · nlinarith
    · intro h
      have hy : 0 < y := by nlinarith
      rw [abs_of_pos hy] at hsmall
      nlinarith

#print axioms straddle_iff_sign

#print axioms one_of_two_signs
#print axioms averaging_local

#print axioms shift_parallel
#print axioms side_perp

#print axioms akr_admissible_iff
#print axioms akr_fails_at_straight

#print axioms tilted_shift_defined
#print axioms ip_tilt_nrm

/-! ### The averaging identity, stated geometrically

`averaging_local` is phrased with the sign criterion `0 < δ * y`, which is the
*small-`δ`* shorthand.  The honest condition is `straddle`: the endpoints of the
`Q`-edge lie on opposite sides of the shifted line.  Composing the two gives the
identity in the form §9.2 actually needs. -/

/-- The two endpoints of the edge from `X` (normal offset `0`) to `Y` (normal
offset `y`) lie strictly on opposite sides of the line shifted by `δ`. -/
def Straddle (δ N y : ℝ) : Prop := (-(δ * N)) * (y - δ * N) < 0

open Classical in
/-- How many of `X`'s two incident `Q`-edges the shifted line actually crosses. -/
noncomputable def crossCount (δ N y z : ℝ) : ℕ :=
  (if Straddle δ N y then 1 else 0) + (if Straddle δ N z then 1 else 0)

theorem crossCount_eq_localCount {δ N y z : ℝ} (hN : 0 < N)
    (hy : |δ| * N < |y|) (hz : |δ| * N < |z|) :
    crossCount δ N y z = localCount δ y z := by
  unfold crossCount localCount Straddle
  rw [if_congr (straddle_iff_sign hN hy) rfl rfl,
      if_congr (straddle_iff_sign hN hz) rfl rfl]

/-- **The averaging identity of §9.2.**  A `Q`-vertex lying on the side line
being shifted contributes one intersection.  After shifting by `δ` it
contributes `crossCount δ`, and after shifting by `-δ` it contributes
`crossCount (-δ)`.  The two sum to `2` — so the *average* over the two
directions is `1`, unchanged.

The hypotheses are exactly what `δ₀` supplies: the shift's normal displacement
`|δ| * N` is smaller than every nonzero offset in the picture. -/
theorem averaging_identity {δ N y z : ℝ} (hN : 0 < N) (hδ : δ ≠ 0)
    (hy : |δ| * N < |y|) (hz : |δ| * N < |z|) :
    crossCount δ N y z + crossCount (-δ) N y z = 2 := by
  have hpos : 0 < |δ| * N := mul_pos (abs_pos.mpr hδ) hN
  have hy0 : y ≠ 0 := by
    intro h; rw [h, abs_zero] at hy; linarith
  have hz0 : z ≠ 0 := by
    intro h; rw [h, abs_zero] at hz; linarith
  have habs : |(-δ)| = |δ| := abs_neg δ
  rw [crossCount_eq_localCount hN hy hz,
      crossCount_eq_localCount hN (by rw [habs]; exact hy) (by rw [habs]; exact hz)]
  exact averaging_local hδ hy0 hz0

/-- **The smallness hypothesis is not decorative.**  With `N = 1`, both offsets
equal to `1`, and `δ = 2`, the shift overshoots the whole corner in either
direction: neither edge is crossed by either shift, and the two counts sum to
`0`, not `2`.  So §9.2's averaging step genuinely requires a bound of `δ₀`'s
kind, and is false without one. -/
theorem averaging_fails_without_smallness :
    crossCount 2 1 1 1 + crossCount (-2) 1 1 1 = 0 := by
  have h1 : ¬ Straddle 2 1 1 := by unfold Straddle; norm_num
  have h2 : ¬ Straddle (-2) 1 1 := by unfold Straddle; norm_num
  simp [crossCount, h1, h2]

#print axioms crossCount_eq_localCount
#print axioms averaging_identity
#print axioms averaging_fails_without_smallness

end TiltedShift
end Heptagon
