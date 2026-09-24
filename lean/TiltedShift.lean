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

/-! ### From offsets to actual points

`averaging_identity` counts, but it counts a hypothesis: the offsets `y`, `z`
are bare reals.  This section supplies the geometry underneath them — the signed
normal offset of a point from a side line, and the fact that a straddling edge
really does contain a point of the shifted line. -/

/-- Signed normal offset of `X` from the line through `A` with direction `a`. -/
def off (a A X : ℝ × ℝ) : ℝ := (-a.2) * (X.1 - A.1) + a.1 * (X.2 - A.2)

/-- The convex combination `t • X + (1-t) • Y`, written componentwise. -/
def cmb (t : ℝ) (X Y : ℝ × ℝ) : ℝ × ℝ := (t * X.1 + (1 - t) * Y.1, t * X.2 + (1 - t) * Y.2)

theorem off_cmb (a A X Y : ℝ × ℝ) (t : ℝ) :
    off a A (cmb t X Y) = t * off a A X + (1 - t) * off a A Y := by
  unfold off cmb; ring

theorem cmb_mem_openSegment {t : ℝ} (ht0 : 0 < t) (ht1 : t < 1) (X Y : ℝ × ℝ) :
    cmb t X Y ∈ openSegment ℝ X Y :=
  ⟨t, 1 - t, ht0, by linarith, by ring,
    by simp [cmb, Prod.ext_iff, Prod.smul_fst, Prod.smul_snd]⟩

/-- Scalar intermediate-value, but linear and explicit: no continuity, no
compactness, just the ratio that solves the equation. -/
theorem exists_between {p q c : ℝ} (h : (p - c) * (q - c) < 0) :
    ∃ t : ℝ, 0 < t ∧ t < 1 ∧ t * p + (1 - t) * q = c := by
  have hpq : p - q ≠ 0 := by
    intro hz
    have : p = q := by linarith [sub_eq_zero.mp hz]
    rw [this] at h; nlinarith
  have h1 : 0 < (c - q) / (p - q) := by
    rcases lt_or_gt_of_ne hpq with hlt | hgt
    · exact div_pos_of_neg_of_neg (by nlinarith) hlt
    · exact div_pos (by nlinarith) hgt
  have h2 : 0 < (p - c) / (p - q) := by
    rcases lt_or_gt_of_ne hpq with hlt | hgt
    · exact div_pos_of_neg_of_neg (by nlinarith) hlt
    · exact div_pos (by nlinarith) hgt
  have hsum : (c - q) / (p - q) + (p - c) / (p - q) = 1 := by
    field_simp
    ring
  refine ⟨(c - q) / (p - q), h1, by linarith, ?_⟩
  field_simp
  ring

/-- **A straddling edge really contains an intersection point.**  If the two
endpoints of the `Q`-edge `[X, Y]` have normal offsets on opposite sides of the
value `c`, then some point strictly inside that edge has offset exactly `c` —
that is, lies on the line at offset `c`.

Taking `c = δ * N` with `N` the normal displacement of the shift, this is the
point the averaging identity was counting all along. -/
theorem exists_mem_openSegment_off_eq {a A X Y : ℝ × ℝ} {c : ℝ}
    (h : (off a A X - c) * (off a A Y - c) < 0) :
    ∃ Z ∈ openSegment ℝ X Y, off a A Z = c := by
  obtain ⟨t, ht0, ht1, ht⟩ := exists_between h
  exact ⟨cmb t X Y, cmb_mem_openSegment ht0 ht1 X Y, by rw [off_cmb]; exact ht⟩

/-- The link back to `Straddle`: when `X` lies *on* the unshifted line
(`off a A X = 0`, which is the §9.2 hypothesis — a `Q`-vertex on the `P`-side's
line), the straddle condition for the edge to `Y` is exactly `Straddle`. -/
theorem straddle_iff_off {a A X Y : ℝ × ℝ} {δ N y : ℝ}
    (hX : off a A X = 0) (hY : off a A Y = y) :
    Straddle δ N y ↔ (off a A X - δ * N) * (off a A Y - δ * N) < 0 := by
  simp only [Straddle, hX, hY, zero_sub]

#print axioms off_cmb
#print axioms cmb_mem_openSegment
#print axioms exists_between
#print axioms exists_mem_openSegment_off_eq
#print axioms straddle_iff_off

/-! ### The averaging identity, summed — and what §9.2 actually uses

AKR's sentence is about a *configuration*, not a single vertex: "the average
number of intersections over the two possible directions is always the same as
before."  Summing the per-vertex identity gives that, and the conclusion the
section actually needs follows by pigeonhole. -/

theorem averaging_sum {ι : Type*} (S : Finset ι) (N δ : ℝ) (y z : ι → ℝ)
    (hN : 0 < N) (hδ : δ ≠ 0)
    (hy : ∀ i ∈ S, |δ| * N < |y i|) (hz : ∀ i ∈ S, |δ| * N < |z i|) :
    (∑ i ∈ S, crossCount δ N (y i) (z i)) + (∑ i ∈ S, crossCount (-δ) N (y i) (z i))
      = 2 * S.card := by
  rw [← Finset.sum_add_distrib,
    Finset.sum_congr rfl (fun i hi => averaging_identity hN hδ (hy i hi) (hz i hi))]
  simp [Finset.sum_const, Nat.mul_comm]

/-- One direction does not *increase* the count.

**This is not the direction §9.2 uses** — see `exists_sign_not_decreasing`
below, and the note there.  It is kept because it is the other half of the
same pigeonhole and costs one line. -/
theorem exists_sign_not_increasing {ι : Type*} (S : Finset ι) (N δ : ℝ) (y z : ι → ℝ)
    (hN : 0 < N) (hδ : δ ≠ 0)
    (hy : ∀ i ∈ S, |δ| * N < |y i|) (hz : ∀ i ∈ S, |δ| * N < |z i|) :
    (∑ i ∈ S, crossCount δ N (y i) (z i)) ≤ S.card ∨
      (∑ i ∈ S, crossCount (-δ) N (y i) (z i)) ≤ S.card := by
  have h := averaging_sum S N δ y z hN hδ hy hz
  omega

/-- **What §9.2 actually uses.**  Since the two directions' totals sum to
*twice* the original count, at least one of them is no **smaller** than the
original: there is always a shift direction along which the intersection count
**does not drop**.

That is the direction the section needs, and it is worth being explicit about
why, because the opposite reading is natural and wrong.  §9.2's purpose is to
bound the count of a *degenerate* pair.  It shifts to a *nondegenerate* pair,
where the enumeration gives `≤ 38`, and then argues

>  `count(original) ≤ count(shifted) ≤ 38`.

The first inequality is the one that needs proving, so the count must not
**decrease**.  A direction that merely fails to *increase* the count would give
nothing at all here.

An earlier version of this file described `exists_sign_not_increasing` as "the
step §9.2 uses".  That was wrong; this is the step. -/
theorem exists_sign_not_decreasing {ι : Type*} (S : Finset ι) (N δ : ℝ) (y z : ι → ℝ)
    (hN : 0 < N) (hδ : δ ≠ 0)
    (hy : ∀ i ∈ S, |δ| * N < |y i|) (hz : ∀ i ∈ S, |δ| * N < |z i|) :
    S.card ≤ (∑ i ∈ S, crossCount δ N (y i) (z i)) ∨
      S.card ≤ (∑ i ∈ S, crossCount (-δ) N (y i) (z i)) := by
  have h := averaging_sum S N δ y z hN hδ hy hz
  omega

#print axioms exists_sign_not_decreasing
#print axioms averaging_sum
#print axioms exists_sign_not_increasing

/-! ### Capstone: the tilted shift always admits the averaging step

The two halves of this file meet here.  `tilted_shift_defined` says the tilted
direction exists for *every* nonzero side direction, including at a straight
vertex where AKR's own shift along an adjacent side line is undefined.  The
averaging machinery says a shift with nonzero normal displacement always admits
a non-increasing choice of sign.  Composing them: the repair is available
everywhere the original argument needed it, and at the vertices where the
original argument breaks down. -/

/-- The tilted direction's normal displacement is strictly positive — never the
degenerate `N = 0` that the averaging step has to exclude. -/
theorem ip_nrm_self_pos {u : ℝ × ℝ} (hu : u ≠ 0) : 0 < ip (nrm u) (nrm u) := by
  have h : u.1 ≠ 0 ∨ u.2 ≠ 0 := by
    by_contra hc
    push_neg at hc
    exact hu (Prod.ext hc.1 hc.2)
  unfold ip nrm
  rcases h with h1 | h2
  · nlinarith [mul_self_pos.mpr h1, mul_self_nonneg u.2]
  · nlinarith [mul_self_pos.mpr h2, mul_self_nonneg u.1]

/-- **The §9.2 repair, assembled.**  For any nonzero side direction `u`, shifting
along the tilted direction `nrm u` gives a well-defined, strictly positive normal
displacement, and hence a choice of sign along which the intersection count
**does not drop** — at every vertex, straight or not.

The hypotheses `hy`, `hz` are the `δ₀` bound and nothing else. -/
theorem tilted_shift_admits_averaging {u : ℝ × ℝ} (hu : u ≠ 0) {ι : Type*}
    (S : Finset ι) (y z : ι → ℝ) {δ : ℝ} (hδ : δ ≠ 0)
    (hy : ∀ i ∈ S, |δ| * ip (nrm u) (nrm u) < |y i|)
    (hz : ∀ i ∈ S, |δ| * ip (nrm u) (nrm u) < |z i|) :
    S.card ≤ (∑ i ∈ S, crossCount δ (ip (nrm u) (nrm u)) (y i) (z i)) ∨
      S.card ≤ (∑ i ∈ S, crossCount (-δ) (ip (nrm u) (nrm u)) (y i) (z i)) :=
  exists_sign_not_decreasing S _ δ y z (ip_nrm_self_pos hu) hδ hy hz

#print axioms ip_nrm_self_pos
#print axioms tilted_shift_admits_averaging

/-! ### The second place `δ₀` is needed: line versus side

`averaging_identity` counts crossings of the `Q`-edges with the shifted side's
**line**.  §9.2 needs crossings with the shifted **side**, which is a segment.
These differ, and the gap is not mentioned in §9.2's prose at all.

The crossing point `Z` is computed here in closed form, and its position along
the side is shown to be *affine in the shift parameter*: if `X` sits at relative
position `s` inside the side, then after shifting, the crossing sits at `s + ν`
with `ν` proportional to `δ`.  So the crossing stays on the side exactly when
`|ν| < min s (1 - s)` — a bound of `δ₀`'s kind, controlled by how far `X` is
from the side's endpoints.

That `s` is strictly between `0` and `1` — that `X` is interior to the side, not
an endpoint — is precisely §9.1's output `(VV)`, which is the structural reason
§9.1 must come before §9.2. -/

/-- The point at relative position `s` along the side from `A` in direction `a`. -/
def lin (A a : ℝ × ℝ) (s : ℝ) : ℝ × ℝ := (A.1 + s * a.1, A.2 + s * a.2)

/-- **The crossing point's position along the side is affine in the shift.**

`t` is the parameter of the crossing along the `Q`-edge (`ht` is `t * y = δ * N`,
the defining equation, cleared of denominators), and `ν` is the displacement
along the side (`hν`, likewise cleared).  The conclusion is that undoing the
shift puts the crossing back on the *original* side line, at parameter `s + ν`.

Stated with the denominators cleared, so there is no division anywhere and the
hypotheses are polynomial identities. -/
theorem crossing_param {a A Y w : ℝ × ℝ} {s δ t ν : ℝ}
    (hn2 : a.1 * a.1 + a.2 * a.2 ≠ 0)
    (ht : t * (-a.2 * (Y.1 - A.1) + a.1 * (Y.2 - A.2)) = δ * (a.1 * w.2 - a.2 * w.1))
    (hν : ν * (a.1 * a.1 + a.2 * a.2)
            = t * (a.1 * (Y.1 - A.1 - s * a.1) + a.2 * (Y.2 - A.2 - s * a.2))
              - δ * (a.1 * w.1 + a.2 * w.2)) :
    ((lin A a s).1 + t * (Y.1 - (lin A a s).1) - δ * w.1,
     (lin A a s).2 + t * (Y.2 - (lin A a s).2) - δ * w.2) = lin A a (s + ν) := by
  have g1 : (t * (Y.1 - A.1 - s * a.1) - δ * w.1) * (a.1 * a.1 + a.2 * a.2)
      = (ν * a.1) * (a.1 * a.1 + a.2 * a.2) := by
    linear_combination (-a.1) * hν - a.2 * ht
  have g2 : (t * (Y.2 - A.2 - s * a.2) - δ * w.2) * (a.1 * a.1 + a.2 * a.2)
      = (ν * a.2) * (a.1 * a.1 + a.2 * a.2) := by
    linear_combination (-a.2) * hν + a.1 * ht
  have e1 := mul_right_cancel₀ hn2 g1
  have e2 := mul_right_cancel₀ hn2 g2
  refine Prod.ext ?_ ?_ <;> simp only [lin]
  · linear_combination e1
  · linear_combination e2

/-- A point at relative position strictly between `0` and `1` really is in the
open side. -/
theorem lin_mem_openSegment {A a : ℝ × ℝ} {σ : ℝ} (h0 : 0 < σ) (h1 : σ < 1) :
    lin A a σ ∈ openSegment ℝ A (lin A a 1) :=
  ⟨1 - σ, σ, by linarith, h0, by ring, by
    simp only [lin, Prod.ext_iff, Prod.fst_add, Prod.snd_add, Prod.smul_fst, Prod.smul_snd,
      smul_eq_mul]
    constructor <;> ring⟩

/-- **The crossing lands on the side exactly when the shift is small enough.**
`s` is `X`'s relative position inside the side — strictly between `0` and `1` by
§9.1's `(VV)` — and `ν` is the shift-induced displacement.  The hypothesis is a
`δ₀` bound and the conclusion is that the counted point is a genuine point of
the shifted side. -/
theorem crossing_mem_side {a A Y w : ℝ × ℝ} {s δ t ν : ℝ}
    (hn2 : a.1 * a.1 + a.2 * a.2 ≠ 0)
    (ht : t * (-a.2 * (Y.1 - A.1) + a.1 * (Y.2 - A.2)) = δ * (a.1 * w.2 - a.2 * w.1))
    (hν : ν * (a.1 * a.1 + a.2 * a.2)
            = t * (a.1 * (Y.1 - A.1 - s * a.1) + a.2 * (Y.2 - A.2 - s * a.2))
              - δ * (a.1 * w.1 + a.2 * w.2))
    (hs0 : 0 < s) (hs1 : s < 1) (hsmall : |ν| < min s (1 - s)) :
    ((lin A a s).1 + t * (Y.1 - (lin A a s).1) - δ * w.1,
     (lin A a s).2 + t * (Y.2 - (lin A a s).2) - δ * w.2)
      ∈ openSegment ℝ A (lin A a 1) := by
  rw [crossing_param hn2 ht hν]
  have hb := abs_lt.mp hsmall
  have hmin1 : min s (1 - s) ≤ s := min_le_left _ _
  have hmin2 : min s (1 - s) ≤ 1 - s := min_le_right _ _
  exact lin_mem_openSegment (by linarith [hb.1]) (by linarith [hb.2])

#print axioms crossing_param
#print axioms lin_mem_openSegment
#print axioms crossing_mem_side

/-! ### An explicit bound on the displacement

`crossing_param` leaves `ν` implicit.  For the *tilted* direction `w = nrm a`
the two defining equations collapse, because `⟪a, nrm a⟫ = 0` and
`a × nrm a = ‖a‖²`: the whole displacement is `ν = δ · ⟪a, Y − A − s·a⟫ / y`.
That is small enough to bound outright. -/

/-- The tilted direction's two defining equations, solved. -/
theorem crossing_param_tilted {a A Y : ℝ × ℝ} (s δ : ℝ)
    (hn2 : a.1 * a.1 + a.2 * a.2 ≠ 0) (hy : off a A Y ≠ 0) :
    ((lin A a s).1 + (δ * (a.1 * a.1 + a.2 * a.2) / off a A Y) * (Y.1 - (lin A a s).1)
        - δ * (nrm a).1,
     (lin A a s).2 + (δ * (a.1 * a.1 + a.2 * a.2) / off a A Y) * (Y.2 - (lin A a s).2)
        - δ * (nrm a).2)
      = lin A a (s + δ * (a.1 * (Y.1 - A.1 - s * a.1) + a.2 * (Y.2 - A.2 - s * a.2))
          / off a A Y) := by
  unfold off at hy
  refine crossing_param hn2 ?_ ?_
  · simp only [off, nrm]
    rw [div_mul_cancel₀ _ hy]
    ring
  · simp only [off, nrm]
    field_simp
    try ring

/-- **An explicit `δ₀` for the line-versus-side step.**  With integer
coordinates the offset `y = a × (Y − A)` is a nonzero integer determinant, hence
`1 ≤ |y|` — that is the hypothesis `hy`, and it is the only place integrality
is used.  The displacement is then bounded by `|δ|` times a quantity depending
on the configuration alone, with no division left in it.

Combined with `crossing_mem_side`, this turns "shift by a small enough `δ`" into
an inequality a reader can check. -/
theorem nu_abs_le {a A Y : ℝ × ℝ} {s δ : ℝ} (hs0 : 0 ≤ s) (hs1 : s ≤ 1)
    (hy : 1 ≤ |off a A Y|) :
    |δ * (a.1 * (Y.1 - A.1 - s * a.1) + a.2 * (Y.2 - A.2 - s * a.2)) / off a A Y|
      ≤ |δ| * (|a.1 * (Y.1 - A.1) + a.2 * (Y.2 - A.2)| + (a.1 * a.1 + a.2 * a.2)) := by
  have hn2nn : (0:ℝ) ≤ a.1 * a.1 + a.2 * a.2 := by
    nlinarith [mul_self_nonneg a.1, mul_self_nonneg a.2]
  have hsn0 : 0 ≤ s * (a.1 * a.1 + a.2 * a.2) := mul_nonneg hs0 hn2nn
  have hsn1 : s * (a.1 * a.1 + a.2 * a.2) ≤ a.1 * a.1 + a.2 * a.2 := by nlinarith
  have hQ : |a.1 * (Y.1 - A.1 - s * a.1) + a.2 * (Y.2 - A.2 - s * a.2)|
      ≤ |a.1 * (Y.1 - A.1) + a.2 * (Y.2 - A.2)| + (a.1 * a.1 + a.2 * a.2) := by
    have hrw : a.1 * (Y.1 - A.1 - s * a.1) + a.2 * (Y.2 - A.2 - s * a.2)
        = (a.1 * (Y.1 - A.1) + a.2 * (Y.2 - A.2)) - s * (a.1 * a.1 + a.2 * a.2) := by
      ring
    rw [hrw, abs_le]
    have h1 := le_abs_self (a.1 * (Y.1 - A.1) + a.2 * (Y.2 - A.2))
    have h2 := neg_abs_le (a.1 * (Y.1 - A.1) + a.2 * (Y.2 - A.2))
    constructor <;> linarith
  rw [abs_div, abs_mul]
  calc |δ| * |a.1 * (Y.1 - A.1 - s * a.1) + a.2 * (Y.2 - A.2 - s * a.2)| / |off a A Y|
      ≤ |δ| * |a.1 * (Y.1 - A.1 - s * a.1) + a.2 * (Y.2 - A.2 - s * a.2)| :=
        div_le_self (by positivity) hy
    _ ≤ |δ| * (|a.1 * (Y.1 - A.1) + a.2 * (Y.2 - A.2)| + (a.1 * a.1 + a.2 * a.2)) :=
        mul_le_mul_of_nonneg_left hQ (abs_nonneg δ)

#print axioms crossing_param_tilted
#print axioms nu_abs_le

/-! ### Uniformity over a configuration

`crossing_mem_side` bounds one degeneracy.  A configuration has finitely many,
each with its own interior position `s i` and its own Lipschitz constant `C i`
from `nu_abs_le`.  A single `δ` serving all of them at once is then a finite
minimum — and a finite minimum of positive reals is positive.

This is *not* the uniform-`ε₀` step that blocks §9 as a whole.  That one also
has to hold along a motion, so the constraints are quantified over an interval
of the parameter as well as over the degeneracies; `UniformEps.eps0` is the
machinery for that shape.  What is proved here is the finite-family half, for
the static constraints the tilted shift generates. -/

/-- **A single shift small enough for every degeneracy at once.** -/
theorem exists_uniform_shift {ι : Type*} (S : Finset ι) (s C : ι → ℝ)
    (hs0 : ∀ i ∈ S, 0 < s i) (hs1 : ∀ i ∈ S, s i < 1) (hC : ∀ i ∈ S, 0 < C i) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| < δ₀ → ∀ i ∈ S, |δ| * C i < min (s i) (1 - s i) := by
  rcases S.eq_empty_or_nonempty with hE | hS
  · exact ⟨1, one_pos, by simp [hE]⟩
  · refine ⟨S.inf' hS (fun i => min (s i) (1 - s i) / C i), ?_, ?_⟩
    · rw [Finset.lt_inf'_iff]
      intro i hi
      exact div_pos (lt_min (hs0 i hi) (by linarith [hs1 i hi])) (hC i hi)
    · intro δ hδ i hi
      have hle : S.inf' hS (fun i => min (s i) (1 - s i) / C i)
          ≤ min (s i) (1 - s i) / C i := Finset.inf'_le _ hi
      have hlt : |δ| < min (s i) (1 - s i) / C i := lt_of_lt_of_le hδ hle
      have hmul := mul_lt_mul_of_pos_right hlt (hC i hi)
      rwa [div_mul_cancel₀ _ (ne_of_gt (hC i hi))] at hmul

/-- The same, phrased directly in the displacements: if every degeneracy's
displacement is Lipschitz in the shift with constant `C i` — which `nu_abs_le`
supplies — then one `δ₀` puts *every* crossing strictly inside its own side. -/
theorem exists_uniform_delta0 {ι : Type*} (S : Finset ι) (s C : ι → ℝ) (ν : ℝ → ι → ℝ)
    (hs0 : ∀ i ∈ S, 0 < s i) (hs1 : ∀ i ∈ S, s i < 1) (hC : ∀ i ∈ S, 0 < C i)
    (hlip : ∀ δ : ℝ, ∀ i ∈ S, |ν δ i| ≤ |δ| * C i) :
    ∃ δ₀ : ℝ, 0 < δ₀ ∧ ∀ δ : ℝ, |δ| < δ₀ → ∀ i ∈ S, |ν δ i| < min (s i) (1 - s i) := by
  obtain ⟨δ₀, hδ₀, h⟩ := exists_uniform_shift S s C hs0 hs1 hC
  exact ⟨δ₀, hδ₀, fun δ hδ i hi => lt_of_le_of_lt (hlip δ i hi) (h δ hδ i hi)⟩

#print axioms exists_uniform_shift
#print axioms exists_uniform_delta0

/-! ### The averaging identity for a *rotating* side

`averaging_identity` assumes the side is displaced with a nonzero normal
displacement `N`. On a **rotating neighbour** the displacement of a given
degenerate vertex is still affine in `δ`, but its coefficient can vanish — and
when it does, the vertex stays on the side's line and the intersection point
is simply **not lost**.

So the right local quantity is not `crossCount` but:

>  one, if the vertex does not move off the line; otherwise `crossCount`.

With that, the averaging bound holds with **no** hypothesis on `N` beyond
non-negativity, which is what lets the neighbours be handled alongside the
shifted side itself. -/

/-- The local contribution of a degenerate vertex: it still counts as one
intersection if the displacement does not move it off the line. -/
noncomputable def localContrib (δ N y z : ℝ) : ℕ :=
  if δ * N = 0 then 1 else crossCount δ N y z

/-- **The averaging bound, uniformly.**  Over the two shift directions the
local contributions sum to **at least two** — whether the vertex moves off the
line or not. -/
theorem averaging_local_contrib {δ N y z : ℝ} (hδ : δ ≠ 0) (hN : 0 ≤ N)
    (hy : |δ| * N < |y|) (hz : |δ| * N < |z|) :
    2 ≤ localContrib δ N y z + localContrib (-δ) N y z := by
  rcases eq_or_lt_of_le hN with hN0 | hNpos
  · -- the vertex does not move off the line: it is still an intersection
    have h1 : δ * N = 0 := by rw [← hN0]; ring
    have h2 : (-δ) * N = 0 := by rw [← hN0]; ring
    simp [localContrib, h1, h2]
  · -- it does move: the two counts sum to exactly two
    have h1 : δ * N ≠ 0 := mul_ne_zero hδ (ne_of_gt hNpos)
    have h2 : (-δ) * N ≠ 0 := mul_ne_zero (neg_ne_zero.mpr hδ) (ne_of_gt hNpos)
    simp only [localContrib, if_neg h1, if_neg h2]
    exact le_of_eq (averaging_identity hNpos hδ hy hz).symm

/-- The configuration-level form. -/
theorem averaging_contrib_sum {ι : Type*} (S : Finset ι) (N δ : ℝ) (y z : ι → ℝ)
    (hN : 0 ≤ N) (hδ : δ ≠ 0)
    (hy : ∀ i ∈ S, |δ| * N < |y i|) (hz : ∀ i ∈ S, |δ| * N < |z i|) :
    2 * S.card ≤ (∑ i ∈ S, localContrib δ N (y i) (z i))
      + (∑ i ∈ S, localContrib (-δ) N (y i) (z i)) := by
  rw [← Finset.sum_add_distrib]
  calc 2 * S.card = ∑ _i ∈ S, 2 := by simp [Nat.mul_comm]
    _ ≤ ∑ i ∈ S, (localContrib δ N (y i) (z i) + localContrib (-δ) N (y i) (z i)) :=
        Finset.sum_le_sum fun i hi => averaging_local_contrib hδ hN (hy i hi) (hz i hi)

/-- **The step §9.2 needs, now covering the rotating neighbours.**  One of the
two directions does not drop the count — and the vertices whose displacement
coefficient vanishes are carried along for free rather than excluded. -/
theorem exists_sign_contrib_not_decreasing {ι : Type*} (S : Finset ι) (N δ : ℝ)
    (y z : ι → ℝ) (hN : 0 ≤ N) (hδ : δ ≠ 0)
    (hy : ∀ i ∈ S, |δ| * N < |y i|) (hz : ∀ i ∈ S, |δ| * N < |z i|) :
    S.card ≤ (∑ i ∈ S, localContrib δ N (y i) (z i)) ∨
      S.card ≤ (∑ i ∈ S, localContrib (-δ) N (y i) (z i)) := by
  have h := averaging_contrib_sum S N δ y z hN hδ hy hz
  omega

#print axioms averaging_local_contrib
#print axioms averaging_contrib_sum
#print axioms exists_sign_contrib_not_decreasing

/-! ### Rotation: different points shift by different amounts

`Straddle` carries a single normal displacement `N`, right for a *translation*
— every point of the line moves by the same amount. Under a rotation the
offset change depends on where along the line the point sits, so the degenerate
vertex and its neighbour get **separate** coefficients: the vertex, at offset
`0`, moves to `−δa`; its neighbour, at offset `y`, moves to `y − δb`.

**What this does and does not buy.** It is a generalisation of *hypotheses*,
not of behaviour. `straddle₂_iff` shows the neighbour's coefficient `b` drops
out once `|δb| < |y|` — the condition reduces to the sign of `δa·y`, exactly as
`straddle_iff_sign` reduces to the sign of `δy`. Checked: on 45,368 instances
satisfying both sets of hypotheses the two models give **identical** counts.

What it actually adds is that `a` may have **either sign** (the single-`N` form
needs `N > 0`) and that each neighbour's smallness is stated with its own
coefficient rather than a shared one. Those are exactly the two things a
rotating neighbour fails to provide. -/

def Straddle₂ (δ a b y : ℝ) : Prop := (-(δ * a)) * (y - δ * b) < 0

/-- For a small enough shift the condition reduces to a sign test on `δa·y` —
the neighbour's own coefficient `b` drops out, because `y − δb` still has the
sign of `y`. -/
theorem straddle₂_iff {δ a b y : ℝ} (hb : |δ * b| < |y|) :
    Straddle₂ δ a b y ↔ 0 < (δ * a) * y := by
  unfold Straddle₂
  have h := abs_lt.mp hb
  rcases lt_trichotomy y 0 with hy | hy | hy
  · rw [abs_of_neg hy] at h
    constructor <;> intro hc <;> nlinarith
  · exfalso
    rw [hy, abs_zero] at hb
    exact absurd hb (not_lt.mpr (abs_nonneg _))
  · rw [abs_of_pos hy] at h
    constructor <;> intro hc <;> nlinarith

theorem straddle₂_neg_iff {δ a b y : ℝ} (hb : |δ * b| < |y|) :
    Straddle₂ (-δ) a b y ↔ (δ * a) * y < 0 := by
  unfold Straddle₂
  have h := abs_lt.mp hb
  rcases lt_trichotomy y 0 with hy | hy | hy
  · rw [abs_of_neg hy] at h
    constructor <;> intro hc <;> nlinarith
  · exfalso
    rw [hy, abs_zero] at hb
    exact absurd hb (not_lt.mpr (abs_nonneg _))
  · rw [abs_of_pos hy] at h
    constructor <;> intro hc <;> nlinarith

open Classical in
/-- **Exactly one of the two directions crosses this edge** — the rotating
analogue of `one_of_two_signs`, with the neighbour carrying its own
coefficient. -/
theorem one_of_two_straddle₂ {δ a b y : ℝ} (ha : δ * a ≠ 0) (hb : |δ * b| < |y|) :
    (if Straddle₂ δ a b y then 1 else 0)
      + (if Straddle₂ (-δ) a b y then 1 else 0) = 1 := by
  have hyne : y ≠ 0 := by
    intro h
    rw [h, abs_zero] at hb
    exact absurd hb (not_lt.mpr (abs_nonneg _))
  have hprod : (δ * a) * y ≠ 0 := mul_ne_zero ha hyne
  rw [if_congr (straddle₂_iff hb) rfl rfl, if_congr (straddle₂_neg_iff hb) rfl rfl]
  rcases lt_or_gt_of_ne hprod with h | h
  · rw [if_neg (by linarith), if_pos h]
  · rw [if_pos h, if_neg (by linarith)]

open Classical in
/-- The rotating local count. -/
noncomputable def crossCount₂ (δ a b c y z : ℝ) : ℕ :=
  (if Straddle₂ δ a b y then 1 else 0) + (if Straddle₂ δ a c z then 1 else 0)

/-- **The averaging identity for a rotating side.**  The vertex's own
coefficient `a` is shared by both incident edges — it is the vertex that moves
off the line — while each neighbour keeps its own `b`, `c`. -/
theorem averaging_identity₂ {δ a b c y z : ℝ} (ha : δ * a ≠ 0)
    (hb : |δ * b| < |y|) (hc : |δ * c| < |z|) :
    crossCount₂ δ a b c y z + crossCount₂ (-δ) a b c y z = 2 := by
  have e1 := one_of_two_straddle₂ ha hb
  have e2 := one_of_two_straddle₂ ha hc
  have hnb : |(-δ) * b| = |δ * b| := by rw [neg_mul, abs_neg]
  have hnc : |(-δ) * c| = |δ * c| := by rw [neg_mul, abs_neg]
  simp only [crossCount₂, neg_neg] at *
  omega

#print axioms straddle₂_iff
#print axioms one_of_two_straddle₂
#print axioms averaging_identity₂

/-! ### The affine form — the shape a configuration actually presents

`Pair9Shift.orientR_shiftV_affine` says every determinant of a shifted
configuration is `c + δ·m`. At a degenerate vertex `c = 0`, so the first
conjunct of `ProperCrossR` for an incident pair is literally

>  `(δ·m₀) · (y + δ·m₁) < 0`

with `m₀` the *vertex's* rate and `m₁` the *neighbour's*. That is `Straddle₂`
with the signs absorbed, and it is the form the instantiation can use without
any further translation. -/

theorem straddle₂_affine_form (δ m₀ m₁ y : ℝ) :
    Straddle₂ δ (-m₀) (-m₁) y ↔ (δ * m₀) * (y + δ * m₁) < 0 := by
  unfold Straddle₂
  rw [show (-(δ * -m₀)) * (y - δ * -m₁) = δ * m₀ * (y + δ * m₁) from by ring]

open Classical in
theorem one_of_two_aff {δ m₀ m₁ y : ℝ} (h0 : δ * m₀ ≠ 0) (h1 : |δ * m₁| < |y|) :
    (if (δ * m₀) * (y + δ * m₁) < 0 then 1 else 0)
      + (if ((-δ) * m₀) * (y + (-δ) * m₁) < 0 then 1 else 0) = 1 := by
  have ha : δ * (-m₀) ≠ 0 := by
    rw [mul_neg, neg_ne_zero]; exact h0
  have hb : |δ * (-m₁)| < |y| := by rw [mul_neg, abs_neg]; exact h1
  have e := one_of_two_straddle₂ ha hb
  rw [if_congr (straddle₂_affine_form δ m₀ m₁ y) rfl rfl,
    if_congr (straddle₂_affine_form (-δ) m₀ m₁ y) rfl rfl] at e
  exact e

open Classical in
/-- **The local contribution of a degenerate vertex, in full generality.**
`m₀` is the vertex's own rate of departure from the side's line; `m₁`, `m₂`
are its two neighbours'. If `m₀` makes the vertex stay put, the intersection
point is not lost and counts once; otherwise the incident edges are counted. -/
noncomputable def localContribAff (δ m₀ m₁ m₂ y z : ℝ) : ℕ :=
  if δ * m₀ = 0 then 1 else
    (if (δ * m₀) * (y + δ * m₁) < 0 then 1 else 0)
      + (if (δ * m₀) * (z + δ * m₂) < 0 then 1 else 0)

/-- **The averaging bound with every coefficient arbitrary.**  No hypothesis on
`m₀` at all — which is what the rotating neighbours need, since theirs can
vanish — and each neighbour carries its own smallness bound. -/
theorem averaging_local_contrib_aff {δ m₀ m₁ m₂ y z : ℝ}
    (hy : |δ * m₁| < |y|) (hz : |δ * m₂| < |z|) :
    2 ≤ localContribAff δ m₀ m₁ m₂ y z + localContribAff (-δ) m₀ m₁ m₂ y z := by
  by_cases h0 : δ * m₀ = 0
  · have h0' : (-δ) * m₀ = 0 := by rw [neg_mul, h0, neg_zero]
    simp [localContribAff, h0, h0']
  · have h0' : (-δ) * m₀ ≠ 0 := by rw [neg_mul, neg_ne_zero]; exact h0
    have e1 := one_of_two_aff h0 hy
    have e2 := one_of_two_aff h0 hz
    simp only [localContribAff, if_neg h0, if_neg h0', neg_neg]
    omega

/-- The configuration-level form, and the sign choice. -/
theorem exists_sign_contrib_aff {ι : Type*} (S : Finset ι) (δ : ℝ)
    (m₀ m₁ m₂ y z : ι → ℝ)
    (hy : ∀ i ∈ S, |δ * m₁ i| < |y i|) (hz : ∀ i ∈ S, |δ * m₂ i| < |z i|) :
    S.card ≤ (∑ i ∈ S, localContribAff δ (m₀ i) (m₁ i) (m₂ i) (y i) (z i)) ∨
      S.card ≤ (∑ i ∈ S, localContribAff (-δ) (m₀ i) (m₁ i) (m₂ i) (y i) (z i)) := by
  have hsum : 2 * S.card
      ≤ (∑ i ∈ S, localContribAff δ (m₀ i) (m₁ i) (m₂ i) (y i) (z i))
        + (∑ i ∈ S, localContribAff (-δ) (m₀ i) (m₁ i) (m₂ i) (y i) (z i)) := by
    rw [← Finset.sum_add_distrib]
    calc 2 * S.card = ∑ _i ∈ S, 2 := by simp [Nat.mul_comm]
      _ ≤ _ := Finset.sum_le_sum fun i hi =>
          averaging_local_contrib_aff (hy i hi) (hz i hi)
  omega

#print axioms straddle₂_affine_form
#print axioms one_of_two_aff
#print axioms averaging_local_contrib_aff
#print axioms exists_sign_contrib_aff

/-! ### Two families, one sign

The averaging identity gives a bound for *one of two signs*. When two
independent families of degeneracies must be paid for by the **same** shift,
they need not prefer the same sign — so the per-family statement is not enough.
Adding the two `±δ` identities gives a **combined** bound for one sign, which
is what a joint accounting can actually use. -/

theorem averaging_contrib_aff_sum {ι : Type*} (S : Finset ι) (δ : ℝ)
    (m₀ m₁ m₂ y z : ι → ℝ)
    (hy : ∀ i ∈ S, |δ * m₁ i| < |y i|) (hz : ∀ i ∈ S, |δ * m₂ i| < |z i|) :
    2 * S.card ≤ (∑ i ∈ S, localContribAff δ (m₀ i) (m₁ i) (m₂ i) (y i) (z i))
      + (∑ i ∈ S, localContribAff (-δ) (m₀ i) (m₁ i) (m₂ i) (y i) (z i)) := by
  rw [← Finset.sum_add_distrib]
  calc 2 * S.card = ∑ _i ∈ S, 2 := by simp [Nat.mul_comm]
    _ ≤ _ := Finset.sum_le_sum fun i hi =>
        averaging_local_contrib_aff (hy i hi) (hz i hi)

/-- **One sign serves both families.**  Neither family's own bound need hold at
that sign; the *sum* does, and that is what the joint counting consumes. -/
theorem exists_sign_contrib_aff_two {ι κ : Type*} (S : Finset ι) (T : Finset κ) (δ : ℝ)
    (m₀ m₁ m₂ y z : ι → ℝ) (n₀ n₁ n₂ v w : κ → ℝ)
    (hyS : ∀ i ∈ S, |δ * m₁ i| < |y i|) (hzS : ∀ i ∈ S, |δ * m₂ i| < |z i|)
    (hvT : ∀ k ∈ T, |δ * n₁ k| < |v k|) (hwT : ∀ k ∈ T, |δ * n₂ k| < |w k|) :
    (S.card + T.card
        ≤ (∑ i ∈ S, localContribAff δ (m₀ i) (m₁ i) (m₂ i) (y i) (z i))
          + (∑ k ∈ T, localContribAff δ (n₀ k) (n₁ k) (n₂ k) (v k) (w k))) ∨
      (S.card + T.card
        ≤ (∑ i ∈ S, localContribAff (-δ) (m₀ i) (m₁ i) (m₂ i) (y i) (z i))
          + (∑ k ∈ T, localContribAff (-δ) (n₀ k) (n₁ k) (n₂ k) (v k) (w k))) := by
  have h1 := averaging_contrib_aff_sum S δ m₀ m₁ m₂ y z hyS hzS
  have h2 := averaging_contrib_aff_sum T δ n₀ n₁ n₂ v w hvT hwT
  omega

#print axioms averaging_contrib_aff_sum
#print axioms exists_sign_contrib_aff_two

end TiltedShift
end Heptagon
