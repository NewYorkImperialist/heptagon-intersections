# The endpoint-distance fact, the repaired (Loc), and a rational δ₀

**Written 2026-09-21 by a third agent**, working from `REPAIR.md` (the tilted
translation and its proof) and `ATTACK.md` (≈ 40 000 exact instances against it).
It addresses the two write-up defects ATTACK.md §8.2 items 1 and 2 leave behind.

**Nothing here is in Lean and no Lean build was run. No git command was run.
No `.lean` file was created or modified. Nothing here proves *f*(7,7) = 38;
that remains a candidate resting on this very import, unreviewed by any
mathematician.** Exact rational arithmetic (`fractions.Fraction`) throughout;
floats appear only in the *display* of ratios, and `math.isqrt` only to produce
**rational** bounds on square roots.

**(VV) — no vertex of *P* is a vertex of *Q* — is assumed throughout.** It is
§9.1's output; `docs/akr-9-2-obligation.md` §5.5 has an exact counterexample
showing §9.2's conclusion is *false* without it. Every use below is flagged
**[VV]**.

New code in this directory: `endpoint_fact.py`, `loc_check.py`,
`delta0_rational.py`. Existing code (`shift.py`, `repair.py`, `attack3.py`,
`sweep4.py`, `families2.py`) is reused unchanged for the operators, the exact
δ₀, the index-keyed degeneracy sets and the independent intersection counter.

Contents: §1 Fact (E) and its proof; §2 the repaired (Loc), also
appended to `REPAIR.md` as revision R1-R5; §3 the rational δ₀, also appended as
R6; §4 every check with its non-vacuity control; §5 an honest summary of what
failed.

---

## 0. The certificate, reproduced before anything else

ATTACK.md §4.2's exact certificate, recomputed here from scratch
(`loc_check.py`, or the transcript in §0 of the log):

```
P = (0,0) (10,0) (14,10) (4,18) (-8,12) (-12,4) (-6,-4)      simple heptagon
Q = (5, 2^-12) (11,20) (-2,22) (-4,6)                        simple quadrilateral
|dP n dQ| = 2 ;  finite ;  no vertex-vertex ;  NO vertex-side degeneracy
shift side i = 1,  s = [(10,0),(14,10)],  s^- = [(0,0),(10,0)]
```

| rule | δ = 2⁻¹¹ | 2⁻¹² | 2⁻¹³ | 2⁻¹⁴ | δ₀ |
|---|---|---|---|---|---|
| AKR (Fig. 28) | (2,2,2) ✔ | (2,2,2) ✔ | (2,2,2) ✔ | (2,2,2) ✔ | 6.7194·10⁻⁸ |
| pure translation | **(2,4,2) ✘** | **(2,4,2) ✘** | **(2,4,2) ✘** | (2,2,2) ✔ | 6.7194·10⁻⁸ |
| tilt | **(2,4,2) ✘** | **(2,4,2) ✘** | **(2,4,2) ✘** | (2,2,2) ✔ | 6.7194·10⁻⁸ |

(*c*₀, *c*₊, *c*₋); ✘ = 4 + 2 ≠ 2·2. δ₀ ≈ 2⁻²³·⁸. Identical to ATTACK.md.

---

## 1. The endpoint-distance fact

ATTACK.md §4.4 names the missing ingredient but does not state or prove it, and
the one-line version it gives is **false as written** (see §1.3 below). Here is
the statement that is true, with a proof and with the hypotheses that are doing
the work made explicit.

### 1.1 Statement

> **Fact (E) (endpoint attainment, planar).** Let σ = [*p*,*q*] and *t* = [*c*,*d*]
> be closed segments in **ℝ²** (each possibly degenerate) with
> **σ ∩ *t* = ∅**. Then
>
> > dist(σ, *t*) = min( dist(*p*,*t*), dist(*q*,*t*), dist(*c*,σ), dist(*d*,σ) ).
>
> Equivalently: some minimising pair (*x*\*,*y*\*) ∈ σ × *t* has *x*\* ∈ {*p*,*q*}
> or *y*\* ∈ {*c*,*d*}.

Two hypotheses are essential and neither can be dropped:

* **σ ∩ *t* = ∅.** For σ = [(−1,0),(1,0)] and *t* = [(0,−1),(0,1)] the left side
  is 0 and the right side is 1.
* **the plane.** In ℝ³ the fact is false: σ along the *x*-axis and *t* along the
  *y*-axis at height 1 are disjoint, their distance 1 is attained only at
  (0,0,0) and (0,0,1), both relative-interior points, and the right-hand side
  is √2.

### 1.2 Proof

Both segments are compact, so
*g*(*s*,τ) = ‖(*p* + *s***e**) − (*c* + τ**f**)‖², where **e** = *q* − *p* and
**f** = *d* − *c*, attains its minimum over the compact convex square
[0,1]² at some (*s*\*,τ\*). If (*s*\*,τ\*) ∈ ∂[0,1]² we are done: a boundary
point of the square has *s*\* ∈ {0,1} or τ\* ∈ {0,1}, i.e. *x*\* or *y*\* is an
endpoint. (If **e** = 0 or **f** = 0 the corresponding segment is a single
point, which is its own endpoint, and there is nothing to prove.)

So assume (*s*\*,τ\*) lies in the open square. Then ∇*g*(*s*\*,τ\*) = 0, i.e.
with **v** = *x*\* − *y*\*,

> ⟨**v**, **e**⟩ = 0 and ⟨**v**, **f**⟩ = 0.

Since σ ∩ *t* = ∅ we have **v** ≠ 0. **In ℝ²** the orthogonal complement
**v**^⊥ is one-dimensional, and both **e** and **f** lie in it, so
**e** ∥ **f**. Hence the Hessian of *g*,

> *H* = [[⟨**e**,**e**⟩, −⟨**e**,**f**⟩], [−⟨**e**,**f**⟩, ⟨**f**,**f**⟩]],
> det *H* = ‖**e**‖²‖**f**‖² − ⟨**e**,**f**⟩² = 0

by the equality case of Cauchy–Schwarz. Let ν ≠ 0 span ker *H*. Along the line
*ℓ*(λ) = (*s*\*,τ\*) + λν the quadratic *g* is **affine** in λ, with slope
⟨∇*g*(*s*\*,τ\*), ν⟩ = 0 — so *g* is **constant** on *ℓ*. The square is compact
and convex, so *ℓ* leaves it: there is λ with *ℓ*(λ) ∈ ∂[0,1]², and
*g*(*ℓ*(λ)) = *g*(*s*\*,τ\*) is still the minimum. That boundary point again has
*s* ∈ {0,1} or τ ∈ {0,1}. ∎

*Where each hypothesis enters:* disjointness gives **v** ≠ 0 (without it
∇*g* = 0 is compatible with **v** = 0 and no conclusion follows); planarity
gives **e** ∥ **f** from **v** ≠ 0 (in ℝ³ two vectors orthogonal to **v** span a
plane and need not be parallel). Simplicity of *P* or *Q* is **not** used, and
neither is (F) or (VV) — Fact (E) is pure plane geometry.

### 1.3 The corollary actually used, and a correction to ATTACK.md's wording

ATTACK.md §4.4 writes:

> "Hence for every *Q*-side *t* with no endpoint on *s*⁻ and with *C*, *A* ∉ *t*,
> dist(*s*⁻, *t*) ≥ ρ₂(i) — even when *t* meets *s* or *s*⁺."

**That is false.** A *Q*-side can cross *s*⁻ transversally with all four
endpoints off the other segment; then dist(*s*⁻,*t*) = 0 < ρ₂(i). The four
"endpoint ∉ other segment" conditions are not the same as disjointness, which
is what Fact (E) needs. The correct corollary is:

> **Corollary (E′).** Assume **(VV)**, (F), *P* and *Q* simple. Let σ be a side
> of *P* and *t* a side of *Q* with σ ∩ *t* = ∅. Then
> **dist(σ, *t*) ≥ ρ₂(i)**, where ρ₂(i) is REPAIR.md §2.3's
> min dist(*p*,*t*′) over *p* ∈ *V*(*P*) ∪ *V*(*Q*) and *t*′ a side of the other
> polygon with *p* ∉ *t*′.
>
> *Proof.* By Fact (E), dist(σ,*t*) is one of dist(*p*,*t*), dist(*q*,*t*),
> dist(*c*,σ), dist(*d*,σ) where σ = [*p*,*q*], *t* = [*c*,*d*]. In each of the
> four, the point is a vertex of one polygon, the segment is a side of the
> other, and the point is **not on** that segment (else σ ∩ *t* ≠ ∅). So each is
> one of the terms ρ₂(i) minimises over. ∎
>
> Contrapositive, which is the form used: **if dist(σ,*t*) < ρ₂(i) then
> σ ∩ *t* ≠ ∅.** Since *r* = ⅓ min(ρ₁,…,ρ₄) ≤ ρ₂/3 ≤ ρ₂(i)/3, in particular
> **dist(σ,*t*) < 3*r* ⟹ σ ∩ *t* ≠ ∅.**  Call this **(Loc-1)**.

*Where (VV) is used:* only through ρ₂(i) > 0 and through Lemma 0 downstream.
ρ₂(i) itself is positive without (VV) (its index set excludes *p* ∈ *t*′); (VV)
is what makes the *other* constants, in particular ρ₁, positive, and
`docs/akr-9-2-obligation.md` §5.5 shows §9.2's conclusion is false without it.

### 1.4 Verification — `endpoint_fact.py`, log `logs/endpoint_fact.log`

The test must not be circular: `attack3.d2_seg_seg` **is** the endpoint formula,
so it cannot serve as ground truth. Three independent code paths bracket the
true minimum of *g* on [0,1]²: the exact interior critical point (2×2 rational
solve, kept only if in the open square), an exact evaluation on a 25×25
rational grid, and the four endpoint-to-segment distances. Fact (E) asserts
min(critical, grid) ≥ endpoint.

| stratum | pairs | interior critical point in (0,1)² | **violations of Fact (E)** |
|---|---|---|---|
| planar, **disjoint** (the fact) | **4 000** (111 of them parallel) | 0 | **0** |
| planar, **intersecting** (control a) | 1 373 | — | **1 101** endpoint formula strictly wrong |
| **ℝ³** (control b) | 2 000 | 849 | **849** |

**Both controls fire.** Control (b) is the sharp one: the identical checker
reports 849 violations the moment the third coordinate is switched on, so a
run of zeros in row 1 is informative. The count "interior critical point in
(0,1)² : 0" in row 1 is itself the structural content of the proof — for
non-parallel planar segments a critical point inside the square *is* a crossing.

The parallel-disjoint stratum (111 pairs) is the degenerate branch, where the
Hessian is singular and the grid check is sampled rather than exhaustive; the
proof covers it (the kernel argument) but the numerics there are corroboration
only.

---

## 2. The repaired (Loc)

### 2.1 What breaks in the printed proof

REPAIR.md §2.4 argues, for *x* ∈ ∂*P*(δ) ∩ ∂*Q* on a moving side
*e*_δ ∈ {[*C*,*A*_δ], [*A*_δ,*B*_δ], [*B*_δ,*D*]} and a *Q*-side *t* ∋ *x*:

1. dist(*x*, *e*₀) ≤ |δ|*K*_end < *r*/10 < ρ₂, so **ρ₂(ii)** says *t* is not
   disjoint from *s*⁻ ∪ *s* ∪ *s*⁺;
2. "by δ₀ ≤ τ₁ and Lemma 1, *t* is not parallel to the line of *e*_δ".

Step 2 does not follow from step 1. Lemma 1 needs *t* to meet **the particular
base side *e*₀**, and τ₁ and *K*_rot are defined as extrema over *Q*-sides
meeting *s*⁻ (resp. *s*⁺). Step 1 delivers only "*t* meets the **union**".
ATTACK.md §4.2's certificate realises the gap exactly: there the offending
*Q*-side *t* = [(5,2⁻¹²),(11,20)] **meets *s*⁺ and neither *s* nor *s*⁻**, while
the side that sweeps it is the rotated *s*⁻. `loc_check.py` §A confirms all
three incidences exactly.

### 2.2 The repair

Replace the union statement by the per-side statement **(Loc-1)** of §1.3,
which is available because of Fact (E):

> **(Loc-1)** For every *Q*-side *t* and every σ ∈ {*s*⁻, *s*, *s*⁺}:
> dist(*t*, σ) < 3*r* ⟹ *t* ∩ σ ≠ ∅.

**Repaired proof of (Loc).** Let 0 < |δ| < δ₀ and let
*x* ∈ ∂*P*(δ) ∩ ∂*Q* lie on a moving side *e*_δ with base side *e*₀ ∈
{*s*⁻,*s*,*s*⁺}; let *t* be a *Q*-side with *x* ∈ *t*.

1. Each moving side is a "hinged" image of its base side: for [*C*,*A*_δ] the
   point *C* + τ(*A*_δ − *C*) is at distance τ|*A*_δ − *A*| ≤ |δ|·|*c*_a**a**|
   from *C* + τ(*A* − *C*) ∈ *s*⁻, and symmetrically for [*B*_δ,*D*]; for
   [*A*_δ,*B*_δ] the displacement is at most max(|*c*_a**a**|,|*c*_b**b**|)|δ|.
   In all three cases
   > **dist(*x*, *e*₀) ≤ |δ|·*K*_end < *r*/10.**

   Note this is the distance to **that side's own base side**, not to the union.
2. Since *x* ∈ *t*, dist(*t*, *e*₀) < *r*/10 < 3*r*, so **(Loc-1)** gives
   **t ∩ e₀ ≠ ∅** — *t* meets the base side of the side that carries *x*.
   *This is the step that was missing; it is exactly Fact (E) + ρ₂(i).*
3. Now Lemma 1 applies to the pair (*t*, *e*₀): *t* ∦ *e*₀. For
   *e*₀ = *s* this says ⟨**v**_t,**n**⟩ ≠ 0, so *t* meets ℓ_δ in a single point
   and *K*_slide is defined for *t*. For *e*₀ = *s*⁻ (resp. *s*⁺) it says
   cross(**w**,**v**_t) ≠ 0, so *t* is one of the sides τ₁ and *K*_rot range
   over; δ₀ ≤ τ₁ then gives that *t* is not collinear with line(*e*_δ) either.
   Hence
   > *t* ∩ line(*e*_δ) = {*x*} and *t* ∩ line(*e*₀) = {*X*₀}
   are single points, and |*x* − *X*₀| ≤ |δ|·max(*K*_slide, *K*_rot) < *r*/10.
4. **Because of step 2, *X*₀ ∈ *e*₀ automatically**: *t* ∩ *e*₀ is nonempty and
   contained in *t* ∩ line(*e*₀) = {*X*₀}. So
   *X*₀ ∈ 𝒟 ∩ (*s*⁻∪*s*∪*s*⁺) ⊆ ℱ and |*x* − *X*₀| < *r*/10 < *r*, i.e.
   *x* ∈ *U*_{X₀} ⊆ *U*.
5. Conversely, any *x* ∈ 𝒟 lying on a moving base side is in ℱ, hence in
   *U*_x ⊆ *U*; and ∂*P*(δ) and ∂*P* agree off the three moving sides. So
   (∂*P*(δ) ∩ ∂*Q*) ∖ *U* = (∂*P* ∩ ∂*Q*) ∖ *U*.
6. ρ₁ ≥ 3*r* makes the *U*_p pairwise disjoint (they have radius *r*), so
   "comes from *p*" is unambiguous. ∎

**Two by-products.**

* The printed proof's second branch — "*X*₀ ∉ *e*₀, so *X*₀ lies beyond an
  endpoint *P*_k, and ρ₂(i) forces *P*_k ∈ *t*" — is now **unreachable**, by
  step 4. The repaired argument is *shorter* than the one it replaces, not
  longer. That branch is retained in REPAIR.md as superseded reasoning.
* **δ₀ needs no new term**, confirming ATTACK.md's diagnosis. Only ρ₂(i)'s role
  changes: it is used on *segment pairs* via Fact (E), not only on
  vertex–side pairs.

**What this does *not* fix.** I did not re-derive or re-audit *K*_rot,
*K*_slide or *K*_end from scratch; step 3 uses them as REPAIR.md §2.3 defines
them. Their *soundness* is evidence, not proof: ATTACK.md measured it on
≈ 26 000 instances and §2.4 below adds 18 450 more.

### 2.3 Does the repaired constant cover ATTACK.md's certificate? **Yes.**

`loc_check.py` §A, exact rationals, log `logs/loc_check.log`. With
ε = 2⁻¹², *P*, *Q*, *i* = 1 as in §0:

```
t n s- : none        t n s : none        t n s+ : point
dist(t,s-)^2 = 1/16777216 = eps^2            (Fact (E): attained at t's endpoint (5,eps))
rho_2(i)^2   = 1/16777216 = eps^2            (attained at the Q-vertex (5,eps) vs s-)
```

| rule | δ₀ | *r* | 3*r* ≤ ρ₂ | dist(*t*,*s*⁻) ≥ ρ₂(i) ≥ 3*r* | \|δ\|*K*_end < *r*/10 < dist(*t*,*s*⁻) |
|---|---|---|---|---|---|
| AKR | 6.7194·10⁻⁸ | 8.138·10⁻⁵ | ✔ | ✔ | ✔ (*K*_end = 11.600) |
| translate | 6.7194·10⁻⁸ | 8.138·10⁻⁵ | ✔ | ✔ | ✔ (*K*_end = 10.770) |
| tilt | 6.7194·10⁻⁸ | 8.138·10⁻⁵ | ✔ | ✔ | ✔ (*K*_end = 10.770) |

So below δ₀ the rotated *s*⁻ is displaced by at most 7.24·10⁻⁷, while
dist(*t*,*s*⁻) = 2⁻¹² = 2.44·10⁻⁴: **the sweep is impossible, and the reason is
ρ₂(i) applied to the segment pair (*t*, *s*⁻) via Fact (E)** — precisely the
constant ATTACK.md predicted, now with a proof attached.

Checked directly as well, not only through the inequalities: at
δ = ±2⁻²⁴, ±2⁻²⁵, …, ±2⁻³¹ (16 exact tests per rule) the rotated
*s*⁻ = [*C*, *A*_δ] **never** meets *t*, for all three rules.

**Non-vacuity of that last check** — the same test, same code, at larger δ:

| rule | (exponent *e*, sign) with \|δ\| = 2⁻ᵉ at which the rotated *s*⁻ **does** meet *t* |
|---|---|
| AKR | **none** — *s*⁻ never leaves its own line, so the sweep cannot happen |
| pure translation | *e* = 8, 9, 10, 11, 12, **13**, all with sign + |
| tilt | *e* = 8, 9, 10, 11, 12, **13**, all with sign + |

This is the mechanism, isolated: the sweep occurs for **one sign only**, for
the two repairs and never for AKR's rule, and it stops between *e* = 13 and
*e* = 14 — exactly where ATTACK.md's identity table flips from (2,4,2) to
(2,2,2). The checker can say "crosses"; below δ₀ it says "does not".

### 2.4 (Loc-1) and (Loc) on random configurations

`loc_check.py` §§B–C, random simple heptagon pairs on integer grids, filtered
to (F) and ¬(vertex–vertex); exact rationals throughout.

**§B — (Loc-1) itself,** tested as a purely rational statement on squared
distances (no square root anywhere): for every *Q*-side *t* and every
σ ∈ {*s*⁻,*s*,*s*⁺},  *t* ∩ σ = ∅ ⟹ dist(*t*,σ)² ≥ ρ₂(i)² ≥ (3*r*)².

| sample | usable pairs | (*t*,σ) pairs | they meet | disjoint | **viol. of disjoint ⟹ ≥ ρ₂(i)** | **viol. of ρ₂(i) ≥ 3*r*** |
|---|---|---|---|---|---|---|
| seed 777, 7×7 grid | 231 | 33 957 | 5 205 | 28 752 | **0** | **0** |
| seed 1234, 9×9 grid | 445 | 65 415 | 9 903 | 55 512 | **0** | **0** |

**The phenomenon is present, not hoped for.** The count of (*t*,σ) pairs of
exactly ATTACK.md §4.4's kind — *t* meets *s*⁻ ∪ *s* ∪ *s*⁺ but **not** σ, so
ρ₂(ii), *K*_rot and τ₁ are all silent about it — is **6 552** in the first
sample and **12 615** in the second, i.e. 19 167 instances of the case the
printed proof cannot reach, and **(Loc-1) covers 19 167 / 19 167**.

**Non-vacuity of the checker.** Re-run with the bound deliberately inflated
tenfold (claim dist² ≥ (10 ρ₂(i))²): **18 852 / 28 752** and **30 210 / 55 512**
violations. The test can fail, and ρ₂(i) is within a decade of tight.

**§C — the (Loc) conclusion itself**, checked as a set identity on exact point
sets: ℱ = (𝒟 ∩ (*s*⁻∪*s*∪*s*⁺)) ∪ {*A*,*B*}, *U*_p the open disc of radius *r*,
δ = the largest dyadic below δ₀ and δ/2, δ/64, both signs.

| rule | instances **below δ₀** | **(Loc) violations** | *U*_p not pairwise disjoint | point in two *U*_p |
|---|---|---|---|---|
| tilt | 6 342 | **0** | **0** | **0** |
| pure translation | 6 342 | **0** | **0** | **0** |
| AKR | 5 766 | **0** | **0** | **0** |
| **total** | **18 450** | **0** | **0** | **0** |

**Non-vacuity**: the same identity at δ = 2⁻² and 2⁻⁴, far above δ₀ —

| rule | tested at 2⁻² | violations | tested at 2⁻⁴ | violations |
|---|---|---|---|---|
| tilt | 1 685 | **1 344** | 2 081 | **1 374** |
| pure translation | 1 686 | **1 349** | 2 081 | **1 374** |
| AKR | 1 527 | **797** | 1 866 | **1 054** |

7 292 violations out of 10 926 above δ₀ against 0 out of 18 450 below it.

---

## 3. δ₀ made constructive over ℚ

### 3.0 The two defects in §2.3, and the two answers

ATTACK.md §8.2 item 1:

> "§2.3's sentence 'finitely many strictly positive **rationals**' is FALSE:
> ρ₁ to ρ₄ and the *K*'s are square roots. Harmless for the theorem, blocking
> for Lean, which needs a constructive rational lower bound." And "§2.3 does
> not say what the empty `min` is."

Both are correct. ρ₁–ρ₄ are distances and *K*_end, *K*_slide, *K*_rot are built
from norms; with integer input these are square roots of integers. Only τ₁ and
τ₂ are rational as written (τ₂'s second term, read as dist(*t*,ℓ(*s*))/|**n**|,
simplifies to |⟨*c*−*A*,**n**⟩|/*N*, which is rational). §2.3's sentence should
say **"finitely many strictly positive reals"**.

Two answers are given below, and they are for different purposes.

* **§3.1–3.3, the *sharp* bound δ₀^ℚ.** Replace each square root by a rational
  bound in the safe direction. Constructive, computable from the configuration,
  and **tight to a relative 2⁻⁴⁰ or better** — it is the bound to formalise if
  the constant is to be computed.
* **§3.4–3.6, the *a priori* bound.** A closed form in the coordinate size
  alone, in the style of `independent/eps_uniform`'s Corollary U′
  (`ε₀ ≥ 1/(1+8(N+M)²)`). It needs no computation, it makes the
  **empty-`min` question disappear**, and it is the one to quote when a single
  uniform δ is wanted for a whole family of inputs. It is loose — §3.6 measures
  by how much.

### 3.1 The rational square-root device

> **Lemma S.** Let *x* > 0 be rational and *S* a positive integer. Put
> > ⌊√*x*⌋_S := isqrt(⌊*xS*²⌋)/*S*,  ⌈√*x*⌉_S := (isqrt(⌈*xS*²⌉)+1)/*S*,
>
> where isqrt(*k*) = ⌊√*k*⌋ for *k* ∈ ℕ. Both are rational, and
> **⌊√*x*⌋_S ≤ √*x* ≤ ⌈√*x*⌉_S**, with ⌈√*x*⌉_S − ⌊√*x*⌋_S ≤ 2/*S*.
>
> *Proof.* isqrt(⌊*xS*²⌋)² ≤ ⌊*xS*²⌋ ≤ *xS*², so ⌊√*x*⌋_S² ≤ *x*. And
> (isqrt(⌈*xS*²⌉)+1)² > ⌈*xS*²⌉ ≥ *xS*², so ⌈√*x*⌉_S² > *x*. The gap bound is
> immediate from isqrt(*a*) ≤ isqrt(*b*) + 1 for *a* ≤ *b* + 1… more simply,
> both lie in [√*x* − 1/*S*, √*x* + 1/*S*]. ∎
>
> ⌊√*x*⌋_S > 0 as soon as *S*² *x* ≥ 1. (A Heron iteration
> *y* ↦ (*y* + *x*/*y*)/2 from *y*₀ = (*x*+1)/2, which is ≥ √*x* by AM–GM at
> every step, with *x*/*y* as the matching lower bound, is an equivalent device
> that avoids isqrt entirely if that is preferable in Lean.)

Every quantity fed to Lemma S below is a **squared** length, which is an exact
rational in the input coordinates — no square root is ever taken exactly.

### 3.2 δ₀^ℚ, with the empty `min` fixed

> **Definition.** Adopt **min ∅ := +∞**. Let δ₀^ℚ(*P*,*Q*,*i*,rule,*S*) be
> §2.3's expression with
>
> * every ρ_j replaced by ⌊√·⌋_S of its squared value (**rounded down**),
> * every *K* replaced by the same expression with each norm replaced by
>   ⌈√·⌉_S (**rounded up**),
> * τ₁, τ₂ left alone (already rational),
> * min ∅ = +∞ in ρ₂(ii), ρ₃, τ₁, τ₂, and in ρ₂ read as the min over the union
>   of the (i) and (ii) families.
>
> Then **δ₀^ℚ ≤ δ₀**, δ₀^ℚ ∈ ℚ, and δ₀^ℚ > 0 provided *S*² exceeds the largest
> reciprocal squared length used — for integer data with ‖·‖_∞ ≤ *M*,
> **S ≥ 64*M*⁴ suffices** (§3.5 bounds every ρ below by 1/(64*M*⁴)).

**Which families can be empty, and what happens.** Under (F), (VV), with
*m*, *n* ≥ 3:

| family | can it be empty? | why |
|---|---|---|
| ρ₁ | **no** | *V*(*P*) ∪ *V*(*Q*) has ≥ 6 pairwise distinct points ([VV]) |
| ρ₂(i) | **no** | a point lies in at most one side of a simple polygon (Lemma 0), so among *n* ≥ 3 sides at least two miss any given vertex |
| ρ₂(ii) | yes | every *Q*-side may meet *s*⁻ ∪ *s* ∪ *s*⁺ |
| ρ₃ | yes | a triangle (*m* = 3) has no non-adjacent side pair |
| ρ₄ | **no** | three nonzero edge vectors |
| τ₁ | yes, **and often** | no *Q*-side need meet *s*⁻ or *s*⁺ |
| τ₂ | yes | every *Q*-vertex could lie on ℓ(*s*) — excluded by (F)+(VV) in fact, but the second family is genuinely optional |

So ρ₂ is never empty (via (i)) and *r* is always defined; the optional families
are ρ₂(ii), ρ₃, τ₁, τ₂, each of which drops out of the min when empty.
**Measured** (§3.7): τ₁'s index set is empty in roughly 40–55 % of
(configuration, side, rule) instances, so this is not a corner case — a
formalisation that forgets the convention will be wrong on half its inputs.
`attack3.delta0` uses the sentinel 10⁹ for +∞, which is sound here only because
every other term is far smaller; `delta0_rational.delta0_sided` represents +∞
explicitly instead.

### 3.3 Integer-arithmetic primitives

For the a-priori bound, everything rests on four elementary facts about
**integer** vectors *x*, *y* ∈ ℤ²:

* (I1) cross(*x*,*y*) and ⟨*x*,*y*⟩ are integers, so **if nonzero, ≥ 1 in
  absolute value**;
* (I2) |cross(*x*,*y*)| ≤ 2‖*x*‖_∞‖*y*‖_∞ and |⟨*x*,*y*⟩| ≤ 2‖*x*‖_∞‖*y*‖_∞;
* (I3) ‖*x*‖_∞ ≤ |*x*| ≤ √2 ‖*x*‖_∞;
* (I4) for a nonzero integer vector, |*x*| ≥ 1.

If all coordinates are integers with absolute value ≤ *M*, every edge vector
**u** = *P*_{i+1} − *P*_i has ‖**u**‖_∞ ≤ 2*M*, |**u**| ≤ 2√2 *M*, and
*N* = ⟨**u**,**u**⟩ ≤ 8*M*²; the same for **w**, **z** and every *Q*-edge
**v**. The normal **n** = **u**^⊥ has ‖**n**‖_∞ ≤ 2*M* and |**n**| = |**u**|.

### 3.4 The theorem

> **Theorem (rational δ₀).** Let *M* ≥ 1 be an integer. Let *m*, *n* ≥ 3, let
> *P* = (*P*₀,…,*P*_{m−1}) and *Q* = (*Q*₀,…,*Q*_{n−1}) be simple polygons whose
> vertices all have **integer** coordinates with ‖·‖_∞ ≤ *M*, satisfying
>
> * **(F)** ∂*P* ∩ ∂*Q* is finite, and
> * **(VV)** *V*(*P*) ∩ *V*(*Q*) = ∅   *(§9.1's output; see the banner)*.
>
> Let *i* ∈ {0,…,*m*−1} be any side index and let the shift rule be the **tilt**
> of REPAIR.md §1.4 or the **pure translation** of §1.2. Then, with
> min ∅ := +∞, the δ₀ of REPAIR.md §2.3 satisfies
>
> > **δ₀ ≥ 1 / (61440 · *M*⁷)  ≥  2⁻¹⁶ *M*⁻⁷.**
>
> Term by term:
>
> | ρ₁ ≥ 1/(64*M*⁴) | ρ₂ ≥ 1/(3*M*) | ρ₃ ≥ 1/(3*M*) | ρ₄ ≥ 1 | *r* ≥ 1/(192*M*⁴) |
> |---|---|---|---|---|
> | *K*_end ≤ 4*M* | *K*_slide ≤ 23*M*³ | *K*_rot ≤ 32*M*³ | τ₁ ≥ 1/(16*M*²) | τ₂ ≥ 1/(8*M*²) |

*Proof.*

**ρ₁.** Every point of 𝒟 ∪ *V*(*P*) ∪ *V*(*Q*) has both coordinates rational
with denominator dividing an integer of absolute value ≤ 8*M*²: a vertex has
denominator 1; a point of 𝒟 that is not a vertex is the transversal meet of a
*P*-side [*a*,*b*] and a *Q*-side [*c*,*d*] (the parallel case is excluded by
**(F)**), and solving gives coordinates with denominator dividing
cross(*b*−*a*, *d*−*c*), which by (I2) has absolute value ≤ 2(2*M*)(2*M*) =
8*M*². Two **distinct** such points differ in some coordinate; that difference
is a nonzero rational with denominator dividing a product ≤ 64*M*⁴, hence has
absolute value ≥ 1/(64*M*⁴); and the Euclidean distance is at least the
absolute value of any single coordinate difference. Positivity of ρ₁ itself
needs **[VV]**, which makes *V*(*P*) ∩ *V*(*Q*) = ∅. ∎

**ρ₂(i).** Let *p* be a vertex of one polygon and *t* = [*c*,*d*] a side of the
other with *p* ∉ *t*. If cross(*d*−*c*, *p*−*c*) ≠ 0 then by (I1)
dist(*p*,*t*) ≥ dist(*p*, line(*t*)) = |cross(*d*−*c*,*p*−*c*)|/|*d*−*c*| ≥
1/(2√2*M*). If it is 0 then *p* lies on line(*t*) but off [*c*,*d*], so
dist(*p*,*t*) = min(|*p*−*c*|,|*p*−*d*|) ≥ 1 by (I4). Hence
**ρ₂(i) ≥ 1/(2√2*M*) ≥ 1/(3*M*)**. ∎

**ρ₂(ii).** A *Q*-side *t* counted here is **disjoint** from *s*⁻ ∪ *s* ∪ *s*⁺,
hence from each of the three separately, so **Fact (E)** (§1) applies to each
pair and dist(*t*, σ) is one of four vertex-to-side distances of the ρ₂(i)
kind. So **ρ₂(ii) ≥ 1/(3*M*)**, and ρ₂ ≥ 1/(3*M*). ∎
*(Fact (E) is used here for a second, independent purpose.)*

**ρ₃.** Two non-adjacent sides of the simple polygon *P* are **disjoint**, so
**Fact (E)** again reduces their distance to four (*P*-vertex, *P*-side)
distances with the vertex off the side, each ≥ 1/(2√2*M*) by the ρ₂(i)
argument verbatim. So **ρ₃ ≥ 1/(3*M*)** (and ρ₃ = +∞ for a triangle). ∎

**ρ₄.** |**w**|, |**u**|, |**z**| ≥ 1 by (I4). ∎

**r.** For *M* ≥ 1, 1/(64*M*⁴) ≤ 1/(3*M*) ≤ 1, so
*r* = ⅓ min(ρ₁,…,ρ₄) ≥ 1/(192*M*⁴). ∎

**K_end.** For both rules **a**, **b** ∈ {**n**, **n**+**u**}, and
⟨**n**,**n**⟩ = ⟨**n**+**u**,**n**⟩ = *N* because ⟨**u**,**n**⟩ = 0; hence
***c*_a = *c*_b = 1**. Also |**n**| = |**u**| ≤ 2√2*M* and
|**n**+**u**| = √2|**u**| ≤ 4*M* (again by **n** ⊥ **u**). So
**K_end ≤ 4*M***. ∎ *(This is the only place where the two repairs differ from
AKR's rule by an order of magnitude; see the remark below.)*

**K_slide.** *N*|**v**_t|/|⟨**v**_t,**n**⟩| ≤ 8*M*² · 2√2*M* / 1 = 16√2*M*³,
using (I1) on the integer ⟨**v**_t,**n**⟩ ≠ 0. So **K_slide ≤ 23*M*³**. ∎

**K_rot.** |*c*_a**a**|·|**w**|·|**v**_t| / |cross(**w**,**v**_t)| ≤
4*M* · 2√2*M* · 2√2*M* / 1 = 32*M*³, the denominator being a nonzero integer by
**Lemma 1** (which uses (F) and **[VV]**). Same for the *s*⁺ half. So
**K_rot ≤ 32*M*³**, and max(*K*_end, *K*_slide, *K*_rot, 1) ≤ 32*M*³ for
*M* ≥ 1. ∎

**τ₁.** |cross(**w**,**v**_t)| ≥ 1 by (I1) + **Lemma 1**; *c*_a = 1; and
|cross(**a**,**v**_t)| ≤ 2‖**a**‖_∞‖**v**_t‖_∞ ≤ 2(4*M*)(2*M*) = 16*M*² by (I2),
using ‖**n**+**u**‖_∞ ≤ 4*M*. So **τ₁ ≥ 1/(16*M*²)**. ∎

**τ₂.** Both families are of the form |⟨*x*,**n**⟩|/*N* with *x* an integer
vector and the numerator a **nonzero** integer, so ≥ 1/*N* ≥ 1/(8*M*²). So
**τ₂ ≥ 1/(8*M*²)**. ∎

**Composite.**
δ₀ = min( *r*/(10·max(*K*_end,*K*_slide,*K*_rot,1)), τ₁, τ₂ )
≥ min( 1/(192*M*⁴ · 320*M*³), 1/(16*M*²), 1/(8*M*²) )
= min( 1/(61440*M*⁷), 1/(16*M*²) ) = **1/(61440*M*⁷)** for *M* ≥ 1, since
61440*M*⁷ ≥ 16*M*² ⟺ 3840*M*⁵ ≥ 1. And 61440 < 2¹⁶ = 65536. ∎

> **Remark (AKR's own rule).** The theorem is stated for the two repairs
> because *K*_end ≤ 4*M* uses *c*_a = 1, which is special to **a** ∈
> {**n**,**n**+**u**}. For AKR's Fig.-28 rule **a** = **w**, *c*_a = *N*/⟨**w**,**n**⟩
> with |⟨**w**,**n**⟩| ≥ 1 **by (NC)**, giving *K*_end, *K*_slide ≤ 23*M*³,
> *K*_rot ≤ 184*M*⁵, and τ₁ = 1/|*c*_a| = |⟨**w**,**n**⟩|/*N* ≥ 1/(8*M*²)
> exactly (the cross terms cancel because **a** = **w**). Hence
> **δ₀ ≥ 1/(353280 *M*⁹) ≥ 2⁻¹⁹*M*⁻⁹ for AKR's rule, whenever it is defined.**
> The repairs' bound is two powers of *M* better; that is the quantitative
> price of AKR's endpoints sliding along neighbour *lines*.

> **Corollary (rational data).** δ₀ is **scale-invariant**: for rational λ > 0,
> δ₀(λ*P*, λ*Q*, *i*, rule) = δ₀(*P*,*Q*,*i*,rule). *(Under *x* ↦ λ*x* every
> ρ and *K* scales by λ, so *r*/(10 max *K*) is invariant; *c*_a, τ₁ and τ₂ are
> invariant outright, being ratios of quantities of equal degree. The shift
> itself is equivariant, *G*(λ*P*,*i*,δ) = λ*G*(*P*,*i*,δ), so δ is a
> dimensionless parameter.)*
>
> Hence if *P*, *Q* have **rational** coordinates with common denominator *D*
> and |coordinate| ≤ *M*_rat, then with *M* := *D*·*M*_rat (an integer bound for
> the cleared data) **δ₀ ≥ 1/(61440 *M*⁷)**.

> **Corollary (the empty `min` disappears).** The a-priori bound is a closed
> form in *M* alone, so a formalisation may take
> **δ := 2⁻¹⁷ *M*⁻⁷** (or any smaller positive rational) and never form a `min`
> over a possibly-empty index set at all. This is the cheapest way to discharge
> ATTACK.md's second complaint about §2.3.

### 3.5 What a Lean formalisation would take

| §2.3 as written | what is needed | supplied by |
|---|---|---|
| "finitely many strictly positive **rationals**" | the ρ's and *K*'s are **reals**; a rational **lower** bound is what is wanted | §3.1 Lemma S (δ₀^ℚ) or §3.4 (closed form) |
| `min` over possibly empty families | min ∅ := +∞, and a proof that ρ₁, ρ₂(i), ρ₄ are never empty | §3.2 table |
| δ₀ itself | **never needed.** Any positive rational below it works, and REPAIR.md §2's conclusions are all of the form "for 0 < \|δ\| < δ₀" | §3.4: take δ := 2⁻¹⁷*M*⁻⁷ |

The third row is the practical point. Nothing in REPAIR.md §2 uses δ₀ except
through the inequalities |δ|*K* < *r*/10, |δ| < τ₁, |δ| < τ₂; each is implied by
|δ| < 2⁻¹⁶*M*⁻⁷ via §3.4's term-by-term bounds. So a formalisation can avoid
constructing δ₀ at all, and with it the whole empty-`min` question, the whole
square-root question, and the ρ/*K* case analysis — at the price of the slack
measured in §3.6.

### 3.6 Verification — `delta0_rational.py`, log `logs/delta0_rational.log`

Random simple polygon pairs on integer grids, filtered to (F) and
¬(vertex–vertex); δ₀ taken from `attack3.delta0`, which is itself a rational
**lower** bound for the true δ₀, so every comparison below is conservative in
the right direction.

**(A) Term by term and composite.** For the **tilt** and the **pure
translation**, every one of the ten bounds of §3.4 and the composite
δ₀ ≥ 1/(61440 *M*⁷) held in **every** instance:

| sample | usable pairs | instances / rule | bound failures (tilt, translate) | slack δ₀/a-priori: min / median / max |
|---|---|---|---|---|
| *m*=7, grid 7, seed 2026 | 100 | 700 | **0** | 4.13·10⁵ / 1.28·10⁷ / 2.13·10⁸ |
| *m*=7, grid 9, seed 4242 | 123 | 861 | **0** | 8.56·10⁵ / 5.22·10⁷ / 1.32·10⁹ |
| *m*=6, grid 5, seed 77 | 40 | 240 | **0** | 1.51·10⁵ / 1.69·10⁶ / 1.07·10⁷ |
| *m*=7, grid 12, seed 999 | 144 | 1 008 | **0** | 3.48·10⁶ / 2.88·10⁸ / 7.47·10⁹ |
| *m*=5, grid 4, seed 31 | 24 | 120 | **0** | 2.99·10⁴ / 4.72·10⁵ / 2.24·10⁶ |
| **total** | **431** | **2 929 per rule** | **0** | **min 2.99·10⁴ = 2¹⁴·⁹** |

**AKR's rule was also run** (2 724 instances): the composite bound
1/(61440*M*⁷) held in every one, but the term *K*_end ≤ 4*M* **failed 234
times**, exactly as §3.4's remark predicts — which is why the theorem is stated
for the two repairs and AKR's rule gets the separate 1/(353280*M*⁹).

**(B) Non-vacuity — and a control that had to be strengthened twice before it
fired.** The bound is deliberately strengthened and the same checker re-run
(*m* = 7, grid 7, seed 2026, 511 instances, tilt):

| strengthening | factor by which the bound grows | **a-priori bound fails** |
|---|---|---|
| *M* understated 2× | 2⁷ = 128 | **0 / 511** |
| *M* understated 4× | 4⁷ ≈ 1.6·10⁴ | **0 / 511** |
| exponent 7 → 5 | *M*² ≈ 50 | **0 / 511** |
| exponent 7 → 3 | *M*⁴ ≈ 2 400 | **0 / 511** |
| exponent 7 → 1 | *M*⁶ ≈ 1.2·10⁵ | **0 / 511** |
| exponent 7 → 0 | *M*⁷ ≈ 8.2·10⁵ | **0 / 511** |
| constant 61440 → 1 | 6.1·10⁴ | **0 / 511** |
| bound × 10⁵ | 10⁵ | **0 / 511** |
| **bound × 10⁶** | 10⁶ | **5 / 511** |
| **bound × 10⁷** | 10⁷ | **209 / 511** |
| **bound × 10⁹** | 10⁹ | **511 / 511** |

**Reported as it happened: the first control ladder I wrote — the one modelled
on `eps_uniform`'s Corollary U′, which fires at *N*=*M*=2,3,4 — did not fire at
all.** That is a real difference between the two results, not a flaw in the
harness: U′ is tight to within 1.15× on its data, whereas this bound is loose
by ≥ 2¹⁴·⁹ everywhere I sampled, so only a ≥ 10⁶ strengthening can break it.
I have kept the non-firing rows in the table rather than deleting them.

**Per-term controls, which do fire at 10×.** Claiming each bound is ten times
better than §3.4 proves (511 instances, tilt):

| term | claim ρ ≥ 10 × bound (resp. *K* ≤ bound/10) fails |
|---|---|
| ρ₄ ≥ 10 | **511 / 511** — ρ₄ ≥ 1 is essentially exact |
| ρ₂ ≥ 10/(3*M*) | **504 / 511** |
| *K*_end ≤ 0.4*M* | **292 / 511** |
| ρ₃ ≥ 10/(3*M*) | **266 / 511** |
| τ₂ ≥ 10/(8*M*²) | **8 / 511** |
| ρ₁, τ₁, *K*_slide, *K*_rot | **0** — these four are the loose ones |

**(E) Where the slack lives** (434 instances, tilt, grid 7): the binding
ρ is ρ₂ in 98 cases, ρ₁ in 35, ρ₃ in 7 — but §3.4 bounds *r* by assuming ρ₁
binds *at its worst-case denominator*, and measured
**r_true / r_bound ∈ [6.6·10³, 3.7·10⁴]**. The remaining 10²–10³ comes from
*K*_rot ≤ 32*M*³ against a typical true max *K* of order 10–10². Product
≈ 10⁶–10⁷, which is the observed median slack. **So the a-priori bound is
loose because ρ₁'s bound is a denominator bound — 1/(64*M*⁴) is what two
intersection points *could* be apart, and random data is nowhere near it.**

**(C) The sharp bound δ₀^ℚ is not loose at all.** Rigorous two-sided bracket:
δ₀^ℚ (ρ down, *K* up) ≤ δ₀ ≤ δ₀^UB (ρ up, *K* down).

| sample | *S* | instances | **max δ₀^UB / δ₀^ℚ** |
|---|---|---|---|
| grid 7 | 2²⁰ | 434 | 1.000 02 |
| grid 7 | 2⁴⁰, 2⁸⁰ | 434 | **1** (to the precision of the display) |
| grid 12 | 2²⁰ | 742 | 1.000 05 |
| grid 12 | 2⁴⁰, 2⁸⁰ | 742 | **1** |

So **δ₀^ℚ is the true δ₀ to a relative 2⁻⁴⁰ or better** — the "observed slack"
of the sharp bound is nil, and the 10⁵–10⁹ figure above is entirely the price
of *not looking at the configuration*.

Lemma S itself: 20 000 random rationals, **20 000 ok, 0 bad**.
**Control:** the same floor device used as an *upper* bound instead of a lower
one fails **20 000 / 20 000**.

**(D) Scale invariance — and a third defect in §2.3 that neither REPAIR.md nor
ATTACK.md records.**

> **δ₀ as defined in §2.3 is *not* scale-invariant**, because of the
> `max(*K*_end, *K*_slide, *K*_rot, **1**)` guard: the constant 1 is not
> dimensionless, while every *K* scales like λ. Measured: over 560 rescalings
> (λ ∈ {2, 3, 1/4, 5/7}) of 140 (configuration, side) pairs, the two rigorous
> brackets for δ₀(λ*P*,λ*Q*) and δ₀(*P*,*Q*) **fail to overlap 16 times — all
> of them at λ < 1, and all of them with max *K* · λ < 1, i.e. the guard
> binding.** 544 overlap.

The guard only ever makes δ₀ *smaller*, so nothing in §2 is wrong; but the
invariance has to be stated carefully. The clean statement, which is what the
rational-data corollary should rest on, is about the **operator**, not the
constant:

> **Equivariance.** *G*(**a**,**b**)(λ*P*, *i*, δ) = λ·*G*(**a**,**b**)(*P*,*i*,δ)
> for every rational λ > 0 and both repairs. *(**u**, **n**, **a** all scale by
> λ, ⟨**a**,**n**⟩ by λ², so *c*_a = *N*/⟨**a**,**n**⟩ is invariant and
> *A*_δ ↦ λ*A*_δ.)* Every conclusion of §2 — the intersection count, the
> degeneracy set, simplicity, (F), (VV) — is invariant under *x* ↦ λ*x*.
>
> **Corollary (rational data).** Let *P*, *Q* have **rational** coordinates,
> let *D* be a common denominator and *M* := *D*·max‖·‖_∞ (an integer). Then for
> every rational δ with **0 < |δ| < 1/(61440 *M*⁷)**, every conclusion
> REPAIR.md §2 draws from 0 < |δ| < δ₀ holds for (*P*,*Q*,*i*,δ) — apply the
> theorem to (*DP*, *DQ*) and pull back along the equivariance.
>
> Verified: 280 rescaled instances with λ of denominator > 1, **280 hold,
> 0 fail**.

*(An earlier draft of this corollary asserted δ₀(λ*P*,λ*Q*) = δ₀(*P*,*Q*)
outright. That is false, for the reason above; the numerics caught it. It is
recorded here rather than quietly fixed.)*

### 3.7 The empty `min`, measured

Over 868 instances at grid 7 and 1 484 at grid 12 (tilt and translate):

| family | empty in | |
|---|---|---|
| τ₁ | **143 / 868** and **271 / 1 484** | ≈ 16–18 % of instances |
| ρ₂(ii) | 2 / 868 and 6 / 1 484 | rare but real |
| ρ₃, τ₂, ρ₁, ρ₂(i), ρ₄ | 0 | never, as §3.2 proves for the last three |

(`attack3.delta0`'s 10⁹ sentinel for +∞ fires on τ₁ in 284/700, 472/861,
131/240, 539/1008, 69/120 instances of the §3.6(A) samples — the same
phenomenon counted over a larger set.) **An implementation that treats the
empty `min` as 0 would make δ₀ = 0 on one instance in six.**

---

## 4. What was run, and what each checker's non-vacuity control is

All exact rational. Logs: `logs/endpoint_fact.log`, `logs/loc_check.log`,
`logs/delta0_rational.log`.

| § | check | instances | violations | **control that fires** |
|---|---|---|---|---|
| 1.4 | Fact (E) on planar disjoint segments | 4 000 | **0** | ℝ³: **849 / 2 000**; crossing planar pairs: **1 101 / 1 373** |
| 2.3 | rotated *s*⁻ vs *t* on ATTACK.md's certificate, \|δ\| ≤ 2⁻²⁴ | 16 × 3 rules | **0** | same test at \|δ\| = 2⁻⁸…2⁻¹³: **crosses, sign + only**, for both repairs, never for AKR |
| 2.4 | (Loc-1): disjoint ⟹ dist² ≥ ρ₂(i)² | **84 264** (*t*,σ) pairs | **0** | bound inflated 10× → **49 062** violations |
| 2.4 | ATTACK.md §4.4's class actually present | **19 167** occurrences | covered 19 167/19 167 | — (this is the *phenomenon* count) |
| 2.4 | (Loc) as a set identity, δ < δ₀ | **18 450** | **0** | δ = 2⁻², 2⁻⁴ → **7 292 / 10 926** |
| 3.6 | ten term bounds + composite, tilt & translate | **2 929 per rule** | **0** | bound × 10⁶/10⁷/10⁹ → **5 / 209 / 511** of 511; per-term 10× → 511, 504, 292, 266, 8 |
| 3.6 | Lemma S (rational √ device) | 20 000 | **0** | floor device used as an *upper* bound → **20 000 / 20 000** |
| 3.6 | δ₀^ℚ two-sided bracket | 1 176 | max ratio **1** at *S* = 2⁴⁰ | *S* = 2²⁰ shows a visible 1.00005 gap |
| 3.6 | rational-data corollary | 280 | **0** | — |

Two controls are reported as **not** firing, per the standard ATTACK.md set:

* the `eps_uniform`-style "understate *M*" ladder for the a-priori δ₀ bound
  (0/511 at every strengthening up to 10⁵). The bound is simply much looser
  than Corollary U′ is, for the reason measured in §3.6(E).
* nothing else; all other controls fire.

---

## 5. Honest summary

**Done.**

1. **Fact (E)** stated (with the two hypotheses that are load-bearing: planarity
   and disjointness), proved, and machine-tested with two controls that fire.
   ATTACK.md's informal version of the corollary is **false as worded**; the
   corrected Corollary (E′) is given.
2. **(Loc) repaired.** The missing step is (Loc-1), *t* meets the moving side's
   **own** base side, which is Fact (E) + ρ₂(i). The repaired proof is shorter
   than the one it replaces (the old "*X*₀ ∉ *e*₀" branch becomes unreachable),
   needs **no new term in δ₀**, and **does cover ATTACK.md §4.2's certificate**:
   dist(*t*,*s*⁻) = ρ₂(i) = 2⁻¹², while below δ₀ the rotated *s*⁻ moves by at
   most 7.24·10⁻⁷. Appended to `REPAIR.md` as a dated revision R1–R5; §2.4 is
   left in place.
3. **δ₀ made constructive over ℚ**, two ways: the sharp δ₀^ℚ (exact to 2⁻⁴⁰)
   and the closed form **δ₀ ≥ 1/(61440 *M*⁷) ≥ 2⁻¹⁶*M*⁻⁷** for integer data,
   with the empty `min` fixed (min ∅ = +∞; ρ₁, ρ₂(i), ρ₄ never empty) and a
   rational-data corollary via the operator's equivariance. Appended as R6.

**Found along the way, not asked for.**

4. **δ₀ as defined in §2.3 is not scale-invariant**, because of the
   dimensionally inhomogeneous `max(…, 1)` guard. Harmless (the guard only
   shrinks δ₀) but it must not be quoted as an invariance. 16 / 560 rescalings
   break it, all with the guard binding.
5. ATTACK.md §4.4's one-line statement of the endpoint fact is **false**; the
   hypothesis has to be disjointness, not "no endpoint on the other segment".

**Not done / failed.**

6. I did **not** re-derive or re-audit *K*_end, *K*_slide, *K*_rot. The
   repaired (Loc) uses them as §2.3 defines them; their soundness is evidence
   (≈ 26 000 instances in ATTACK.md, 18 450 more here), not proof.
7. The **first non-vacuity control ladder for the a-priori δ₀ bound did not
   fire** and had to be strengthened by six orders of magnitude before it did.
   Reported, not replaced.
8. The a-priori bound is **loose by ≥ 2¹⁴·⁹ and typically 2²³–2²⁸**. It is not
   useless — it is a positive rational in closed form, computed from nothing
   but the coordinate bound, and it removes the empty-`min` and square-root
   questions entirely — but anyone wanting a *usable* δ should compute δ₀^ℚ.
9. Nothing here is in Lean. **No Lean build was run; no `.lean` file was
   created or modified; no git command was run.**
10. **(VV) is assumed throughout**, as §9.1's output. §9.1 is open and
    necessary; without (VV) §9.2's conclusion is false
    (`docs/akr-9-2-obligation.md` §5.5). Nothing here touches it.
11. None of §1–§3 has been reviewed by a mathematician.

**f(7,7) = 38 is not proved by anything in this document.** It remains a
candidate resting on §9 of Ackerman–Keszegh–Rote, of which the vertex-side half
is being replaced rather than imported, on paper, unreviewed, and not in Lean.
