# The three Lipschitz constants of REPAIR.md §2.3, derived and attacked

**Written 2026-09-22, by a fourth agent.** Target: the hole
`LOC_AND_DELTA0.md` §R5 names as its own largest remaining one —

> "It does **not** re-derive or re-audit *K*_end, *K*_slide, *K*_rot; step 3
> uses them as §2.3 defines them, and their soundness rests on ≈ 26 000
> instances in ATTACK.md plus 18 450 here — evidence, not proof."

This document supplies the derivations. **One of the three is wrong as
printed**, with an exact certificate; the other two are exact identities. The
damage to δ₀ is nil, for a reason that is itself a small theorem (§4).

**Nothing here is in Lean. No Lean build was run. No git command was run.
Nothing here proves *f*(7,7) = 38 — it remains a candidate resting on this very
import, unreviewed by any mathematician.** Exact rational arithmetic
(`fractions.Fraction`) throughout; no float anywhere except in printed
diagnostics.

Notation is REPAIR.md §1.1 verbatim:

> *C* = *P*_{i−1}, *A* = *P*_i, *B* = *P*_{i+1}, *D* = *P*_{i+2},
> **u** = *B*−*A*, **n** = **u**^⊥, *N* = ⟨**u**,**u**⟩ = ⟨**n**,**n**⟩,
> **w** = *A*−*C*, **z** = *D*−*B*, *s*⁻ = [*C*,*A*], *s* = [*A*,*B*],
> *s*⁺ = [*B*,*D*],
> *c*_a = *N*/⟨**a**,**n**⟩, *c*_b = *N*/⟨**b**,**n**⟩,
> ***A*_δ = *A* + δ*c*_a**a**,  *B*_δ = *B* + δ*c*_b**b***.

Write **e**_a := *c*_a**a** and **e**_b := *c*_b**b** for the two *unit-δ
displacement vectors*; the whole of §2 depends on these two vectors and nothing
else about (**a**,**b**). The three rules are

| rule | **a** | **b** | **e**_a |
|---|---|---|---|
| AKR Fig. 28 | **w** | **z** | (*N*/⟨**w**,**n**⟩)**w** |
| pure translation | **n** | **n** | **n** |
| tilt (REPAIR §1.4) | **n** or **n**+**u** | ditto | **n** or **n**+**u** |

(*c*_a = 1 for the two repairs because ⟨**u**,**n**⟩ = 0 — see §2.1.)

---

## 0. Summary of findings

| constant | what it is claimed to bound | verdict |
|---|---|---|
| *K*_end = max(\|**e**_a\|,\|**e**_b\|) | dist(*x*, *e*₀)/\|δ\| for *x* on any of the three moving sides, *e*₀ its base | **CORRECT**, and sharp: an exact identity plus one convexity step (§2.2). Attains equality at the moving endpoints. |
| *K*_slide = max_t *N*\|**v**_t\|/\|⟨**v**_t,**n**⟩\| | \|*x*−*X*₀\|/\|δ\| where *X*₀ = *t* ∩ line(*s*), *x* = *t* ∩ line(*s*_δ) | **CORRECT**, and it is an *exact identity* per *t*, not an inequality (§3). Independent of the rule. |
| *K*_rot = max_t \|**e**_a\|\|**w**\|\|**v**_t\|/\|cross(**w**,**v**_t)\| | \|*x*−*X*₀\|/\|δ\| for the rotating neighbour *s*⁻ (and *s*⁺ with **z**,**e**_b) | **WRONG as printed.** It is the δ→0 limit, not a bound on the admissible range: the true ratio is *K*_rot·λ₀·sin∠(**e**_a,**w**)/(1−\|δ\|/τ₁^t), and the last factor exceeds 1. Certificate in §5. |

**Effect on δ₀: none.** §4 proves the structural inequality
τ₁^t·*K*_rot ≥ \|**w**\| ≥ ρ₄ ≥ 3*r*, which forces \|δ\| < δ₀ ≤ τ₁^t/30 and
caps the error factor at **30/29**. §2.4's step 3 asserts \|*x*−*X*₀\| < *r*/10;
the truth is < (30/29)·*r*/10 = *r*/9.67, and step 4 only ever needs < *r*.
So (Loc) survives verbatim with one constant changed in its proof, and
**δ₀ ≥ 1/(61440 *M*⁷) is unaffected.** If one prefers the printed inequality to
be literally true, replace *K*_rot by 2*K*_rot inside δ₀; the a-priori bound
then becomes 1/(122880 *M*⁷), and `LOC_AND_DELTA0.md` §3.5's suggested
formalisation constant **δ := 2⁻¹⁷*M*⁻⁷ still works** (2¹⁷ = 131072 > 122880).

Two side findings on the claims flagged in the brief:

* **K_end ≤ 4*M* for AKR's rule.** The scope restriction is right and the bound
  is *badly* wrong outside it: for **a** = **w**, \|**e**_a\| = *N*\|**w**\|/\|⟨**w**,**n**⟩\|
  is Θ(*M*³), not Θ(*M*), and §6 gives an explicit integer configuration with
  *K*_end/(4*M*) = 12.5 at *M* = 4. The 234 observed failures are real, not an artefact.
* **The `max(…,1)` guard.** LOC_AND_DELTA0 §3.6(D) is right that it breaks
  scale-invariance. §7 adds that **the guard is provably inert**: for *every*
  admissible (**a**,**b**), Cauchy–Schwarz gives *K*_end ≥ \|**u**\|, which is
  ≥ 1 for integer data. So it can simply be deleted, and δ₀ becomes exactly
  scale-invariant.

---

## 1. What each constant is *claimed* to bound

REPAIR.md §2.3 gives one-line glosses; the load-bearing statements are the
three uses in the **repaired** (Loc) proof (REPAIR.md §R3 = LOC_AND_DELTA0.md
§2.2), which is the only place the constants do any work. Stated precisely:

> **(E1)** *(K_end, step 1.)* For every *x* on a moving side
> *e*_δ ∈ {[*C*,*A*_δ], [*A*_δ,*B*_δ], [*B*_δ,*D*]}, with *e*₀ ∈ {*s*⁻,*s*,*s*⁺}
> **that side's own base**, dist(*x*, *e*₀) ≤ \|δ\|·*K*_end.
>
> **(E2)** *(K_slide, step 3, case e₀ = s.)* For a *Q*-side *t* meeting *s*, with
> {*X*₀} = *t* ∩ line(*s*) and {*x*} = *t* ∩ line(*e*_δ) where *e*_δ = [*A*_δ,*B*_δ]:
> \|*x* − *X*₀\| ≤ \|δ\|·*K*_slide.
>
> **(E3)** *(K_rot, step 3, case e₀ = s⁻.)* For a *Q*-side *t* meeting *s*⁻, with
> {*X*₀} = *t* ∩ line(*s*⁻) and {*x*} = *t* ∩ line([*C*,*A*_δ]):
> \|*x* − *X*₀\| ≤ \|δ\|·*K*_rot. (And the mirror statement for *s*⁺.)

All three are "per unit δ" Lipschitz claims, and in each the *point* being
moved is different: in (E1) a point of the moving side itself; in (E2) and (E3)
the **crossing point with a fixed *Q*-side**, which is a different and much more
violent motion — it is the crossing point, not the side, that can run away.

*Which rule.* (E1) and (E3) depend on the rule only through **e**_a, **e**_b.
(E2) does not depend on the rule **at all** (§3). The three rules of the table
above all satisfy (G), so *c*_a, *c*_b are defined; AKR's rule needs (NC), the
two repairs do not.

*Where (VV) enters.* Only through **Lemma 1** of REPAIR.md §2.2, which is what
makes the denominators ⟨**v**_t,**n**⟩ and cross(**w**,**v**_t) nonzero, hence
the maxima finite. Flagged **[VV]** at each use below.

---

## 2. *K*_end

### 2.1 *c*_a = 1 for both repairs

⟨**n**,**n**⟩ = *N* and ⟨**n**+**u**,**n**⟩ = *N* + ⟨**u**,**n**⟩ = *N*, since
**n** = **u**^⊥ ⊥ **u**. So *c*_a = *N*/*N* = 1 and **e**_a = **a** ∈
{**n**, **n**+**u**}. Likewise **e**_b. (This is LOC_AND_DELTA0 §3.4's step;
it is correct.) For AKR's rule instead **e**_a = (*N*/⟨**w**,**n**⟩)**w**.

### 2.2 Derivation of (E1)

*K*_end = max(\|**e**_a\|, \|**e**_b\|) is by definition the larger of the two
**exact** endpoint displacements per unit δ: \|*A*_δ − *A*\| = \|δ\|\|**e**_a\|,
\|*B*_δ − *B*\| = \|δ\|\|**e**_b\|. (E1) needs the same for the whole of each
moving side, which is the following three lines.

* **[*C*,*A*_δ] vs *s*⁻ = [*C*,*A*].** The hinge is *C*. For τ ∈ [0,1],
  (*C* + τ(*A*_δ−*C*)) − (*C* + τ(*A*−*C*)) = τ·δ**e**_a, of norm
  τ\|δ\|\|**e**_a\| ≤ \|δ\|\|**e**_a\|, and the second point lies in *s*⁻.
* **[*B*_δ,*D*] vs *s*⁺.** Identical with hinge *D* and **e**_b.
* **[*A*_δ,*B*_δ] vs *s* = [*A*,*B*].** For τ ∈ [0,1],
  ((1−τ)*A*_δ + τ*B*_δ) − ((1−τ)*A* + τ*B*) = δ[(1−τ)**e**_a + τ**e**_b].
  A convex combination has norm at most the max of the norms, so this is
  ≤ \|δ\|·max(\|**e**_a\|,\|**e**_b\|) = \|δ\|*K*_end, and the second point is
  in *s*. ∎

**(E1) is correct, uses no hypothesis whatever** — not (F), not (VV), not
simplicity — and is **sharp**: at τ = 1 in the first line the inequality is an
equality whenever \|**e**_a\| ≥ \|**e**_b\|. Each factor: the `max` is the
convexity step, and nothing else appears.

*(Note what (E1) does* not *say. It bounds the distance from a shifted point to
its own base side — a one-sided, pointwise statement. It is exactly what step 1
of the repaired (Loc) needs, and §R3 states it correctly. The old §2.4 wrote
"dist(x, e₀) ≤ |δ|K_end" with e₀ ambiguous between "the moving side's base" and
"s⁻ ∪ s ∪ s⁺"; that ambiguity is what §R1 diagnosed.)*

### 2.3 The a-priori bound *K*_end ≤ 4*M*

Integer coordinates, ‖·‖_∞ ≤ *M*. Then ‖**u**‖_∞ ≤ 2*M* so \|**u**\| ≤ 2√2*M*
(I3), \|**n**\| = \|**u**\|, and \|**n**+**u**\| = √2\|**u**\| ≤ 4*M* because
**n** ⊥ **u**. With *c*_a = 1 (§2.1), *K*_end ≤ √2\|**u**\| ≤ **4*M***. ∎
Every factor: √2 from the tilt's right angle, 2√2*M* from (I3) applied to an
edge vector of ∞-norm ≤ 2*M*.

The bound is attained only in the limit ‖**u**‖ = (2*M*,2*M*) *and* the tilt
active at that endpoint; §8 reports the observed ratio.

### 2.4 The lower bound nobody stated: *K*_end ≥ \|**u**\|

By Cauchy–Schwarz \|⟨**a**,**n**⟩\| ≤ \|**a**\|\|**n**\|, so

> \|**e**_a\| = *N*\|**a**\|/\|⟨**a**,**n**⟩\| ≥ *N*\|**a**\|/(\|**a**\|\|**n**\|)
> = *N*/\|**n**\| = \|**n**\| = \|**u**\|.

Hence **K_end ≥ \|**u**\| for every admissible (a,b), all three rules.** This
is used twice: in §4 (the ρ₄ comparison) and in §7 (the `max(…,1)` guard).

---

## 3. *K*_slide — an identity, not an inequality

Both *A*_δ and *B*_δ satisfy ⟨·−*A*,**n**⟩ = δ*N* (REPAIR §1.1), so the moving
side lies in ℓ_δ = {*x* : ⟨*x*−*A*,**n**⟩ = δ*N*} and, as long as
*A*_δ ≠ *B*_δ, line([*A*_δ,*B*_δ]) **is** ℓ_δ — a translate of line(*s*) with
the *same direction* **u**. *(A_δ ≠ B_δ: B_δ−A_δ = **u** + δ(**e**_b−**e**_a),
which for the tilt is (1±δ)**u** or **u**, nonzero for \|δ\|<1; in general it is
nonzero for small δ.)*

Let *t* meet *s*, **v** = **v**_t, and [VV] **Lemma 1** ⟹ ⟨**v**,**n**⟩ ≠ 0, so
*t* crosses ℓ_0 and ℓ_δ once each, at *X*₀ and *x*. Write *x* = *X*₀ + θ**v**.
Then

> δ*N* = ⟨*x*−*A*,**n**⟩ = ⟨*X*₀−*A*,**n**⟩ + θ⟨**v**,**n**⟩ = 0 + θ⟨**v**,**n**⟩,

so θ = δ*N*/⟨**v**,**n**⟩ and

> **\|*x* − *X*₀\| = \|δ\| · *N*\|**v**\| / \|⟨**v**,**n**⟩\|  — exactly.**

That is term-for-term the *t*-th entry of *K*_slide's max. So (E2) holds, with
**equality for the maximising *t***: *K*_slide is not merely correct, it is the
*smallest* constant that works, and it is **attained**. Where each factor comes
from: *N* from the normalisation δ ↦ δ*N* in the definition of *A*_δ, \|**v**\|
from converting the parameter θ to a distance, ⟨**v**,**n**⟩ from the rate at
which *t* climbs through the pencil {ℓ_δ}.

**Consequences.** (i) *K*_slide is **independent of the rule** — it involves
only **n**, *N* and *Q*. (ii) It blows up exactly when *t* is nearly parallel to
*s*; this is the term REPAIR §4.3 measures and family X3 of `families2.py`
attacks. (iii) The a-priori bound: *N* ≤ 8*M*², \|**v**\| ≤ 2√2*M* and
\|⟨**v**,**n**⟩\| ≥ 1 by (I1) **[VV, via Lemma 1]** give
*K*_slide ≤ 16√2*M*³ < **23*M*³** ∎ — the `1` in the denominator is the only
lossy step and it is lossy by up to 8*M*².

---

## 4. *K*_rot — the exact law, the defect, and the repair

### 4.1 The exact displacement of a rotating crossing point

*s*⁻ = [*C*,*A*] becomes [*C*,*A*_δ]: it **pivots about *C***, its direction
changing from **w** to **w**_δ := **w** + δ**e**_a. Let *t* = [*c*,*d*] be a
*Q*-side, **v** = *d*−*c*, and put **g** := *C* − *c*.

A line through *C* with direction **d** meets line(*t*) = {*c* + θ**v**} at the
parameter θ(**d**) = cross(**g**,**d**)/cross(**v**,**d**) *(cross the relation
*C* + λ**d** = *c* + θ**v** with **d**)*. Hence, writing **e** = **e**_a,

> θ(**w**_δ) − θ(**w**) = δ · [cross(**g**,**e**)cross(**v**,**w**) −
> cross(**g**,**w**)cross(**v**,**e**)] / [cross(**v**,**w**)·cross(**v**,**w**_δ)].

The bracket collapses by the 2-D Plücker identity
cross(*p*,*q*)cross(*r*,*s*) − cross(*p*,*r*)cross(*q*,*s*) +
cross(*p*,*s*)cross(*q*,*r*) = 0 (take *p*,*q*,*r*,*s* = **g**,**e**,**v**,**w**)
to **cross(g,v)·cross(e,w)**. And if *X*₀ = *C* + λ₀**w** is the meet of
line(*s*⁻) with line(*t*), crossing *X*₀ − *C* = λ₀**w** with **v** gives
\|cross(**g**,**v**)\| = \|λ₀\|·\|cross(**w**,**v**)\|. Therefore

> **Lemma R (exact rotation law).** With cross(**v**,**w**) ≠ 0 and
> cross(**v**,**w**_δ) ≠ 0,
>
> > **\|*x* − *X*₀\| = \|δ\| · \|λ₀\| · \|cross(**e**_a,**w**)\| · \|**v**\| /
> > \|cross(**v**, **w** + δ**e**_a)\|.**

Two immediate sanity checks. *(i)* **AKR's rule has *K*_rot ≡ 0 work**: there
**e**_a = *c*_a**w** ∥ **w**, so cross(**e**_a,**w**) = 0 and the crossing point
does **not move at all** — line(*s*⁻) is invariant, which is exactly what
REPAIR §2.3 means by "this term does not occur in AKR's rule". *(ii)* The
denominator vanishes precisely at δ = −cross(**v**,**w**)/cross(**v**,**e**_a),
whose absolute value is τ₁^t = \|cross(**w**,**v**)/(*c*_a cross(**a**,**v**))\|
— REPAIR §2.3's τ₁ term, recovered from the formula rather than assumed.

### 4.2 Comparison with the printed *K*_rot: the defect

*K*_rot's *t*-th entry is \|**e**_a\|\|**w**\|\|**v**\|/\|cross(**w**,**v**)\|.
Dividing Lemma R by \|δ\| times that entry:

> **ratio(*t*,δ) = \|λ₀\| · sin∠(**e**_a,**w**) ·
> \|cross(**v**,**w**)\| / \|cross(**v**,**w**+δ**e**_a)\|
> = \|λ₀\| · sin∠(**e**_a,**w**) · (1 − δ/δ*_t)^{−1}**, δ*_t := −cross(**v**,**w**)/cross(**v**,**e**_a),
>
> using \|cross(**e**_a,**w**)\| = \|**e**_a\|\|**w**\| sin∠(**e**_a,**w**).

In the repaired (Loc), step 4 gives *X*₀ ∈ *e*₀ = *s*⁻ (independently of any
*K*), so λ₀ ∈ [0,1] and the first two factors are each ≤ 1. **The third is
not.** So:

> **The printed inequality (E3) is the δ → 0 limit of Lemma R, and is FALSE on
> the admissible range** 0 < \|δ\| < δ₀ in general: δ₀ ≤ τ₁ = min_t \|δ*_t\|
> permits \|δ\|/\|δ*_t\| arbitrarily close to 1 *as far as the τ₁ term alone is
> concerned*, and then the factor (1 − δ/δ*_t)^{−1} is unbounded.

Precisely: **whenever τ₁ = \|δ*_t\| is the binding term of δ₀ and
λ₀ sin∠(**e**_a,**w**) > 0, there are admissible δ with ratio > 1** — take
\|δ\| ∈ (τ₁(1 − λ₀ sin∠), τ₁), a nonempty interval inside (0,δ₀).

### 4.3 Why δ₀ nevertheless survives: the ρ₄ coupling

The saving grace is that δ₀'s *other* branch already knows about *K*_rot.

> **Lemma T.** For every *Q*-side *t* meeting *s*⁻ with cross(**a**,**v**) ≠ 0,
> τ₁^t · *K*_rot ≥ \|**w**\|.
>
> *Proof.* τ₁^t = \|cross(**w**,**v**)\|/\|cross(**e**_a,**v**)\| and *K*_rot ≥
> \|**e**_a\|\|**w**\|\|**v**\|/\|cross(**w**,**v**)\| (it is a max over a family
> containing *t*). Multiplying, the cross(**w**,**v**) factors cancel:
> τ₁^t·*K*_rot ≥ \|**e**_a\|\|**w**\|\|**v**\|/\|cross(**e**_a,**v**)\| ≥
> \|**e**_a\|\|**w**\|\|**v**\|/(\|**e**_a\|\|**v**\|) = \|**w**\|,
> the last step being Cauchy–Schwarz. ∎

> **Corollary (the factor 30).** \|**w**\| ≥ ρ₄ ≥ 3*r* and
> δ₀ ≤ *r*/(10·max(*K*_end,*K*_slide,*K*_rot,1)) ≤ *r*/(10*K*_rot), so
>
> > **τ₁^t ≥ \|**w**\|/*K*_rot ≥ 3*r*/*K*_rot = 30 · *r*/(10*K*_rot) ≥ 30 δ₀.**
>
> Hence for 0 < \|δ\| < δ₀ one has \|δ\|/\|δ*_t\| < 1/30 and
> **ratio(*t*,δ) < 30/29 = 1.03448…** for every *t* and every admissible δ.

*(The mirror statement for *s*⁺ uses \|**z**\| ≥ ρ₄; ρ₄ = min(\|**w**\|,\|**u**\|,\|**z**\|)
is exactly the term that makes this work, and it is the only use of ρ₄ in the
whole of §2. If ρ₄ had been defined without \|**w**\| and \|**z**\| — a natural
thing to try — Lemma T would fail and so would (Loc).)*

### 4.4 The corrected statement, and what it costs

> **(E3′)** For 0 < \|δ\| < δ₀ and *t* a *Q*-side meeting *s*⁻:
> \|*x* − *X*₀\| ≤ (30/29)·\|δ\|·*K*_rot < (30/29)·*r*/10 = *r*/9.667.

Step 3 of the repaired (Loc) asserts \|*x*−*X*₀\| < *r*/10; that specific
number is **not used anywhere**. Step 4 uses only \|*x*−*X*₀\| < *r*, to put
*x* ∈ *U*_{X₀}. Since *r*/9.667 < *r*, **(Loc) goes through unchanged and δ₀
needs no correction.** The only edit is to REPAIR.md §R3 step 3: replace
"\|*x*−*X*₀\| ≤ \|δ\|max(*K*_slide,*K*_rot) < *r*/10" with
"≤ (30/29)\|δ\|max(*K*_slide,*K*_rot) < *r*/9 < *r*", citing Lemma T.

If instead one wants the printed form of (E3) to be literally true, the cheapest
fix is **to replace *K*_rot by 2*K*_rot in the definition of δ₀** — and nothing
else. The correction is self-bootstrapping: with 2*K*_rot in the denominator,
δ₀ ≤ *r*/(20*K*_rot), so Lemma T upgrades to τ₁^t ≥ 3*r*/*K*_rot = 60δ₀, the
error factor drops to 60/59, and (60/59)*K*_rot < 2*K*_rot. *(τ₁ ↦ τ₁/2 also
works and is what one would write first, but it is not needed.)* A-priori this
gives *K*_rot ≤ 64*M*³, max(…) ≤ 64*M*³, τ₁ ≥ 1/(16*M*²) and

> δ₀ ≥ min( 1/(192*M*⁴·640*M*³), 1/(16*M*²), 1/(8*M*²) ) = **1/(122880 *M*⁷)**

for *M* ≥ 1 (since 122880*M*⁷ ≥ 16*M*² ⟺ 7680*M*⁵ ≥ 1). **122880 < 2¹⁷ =
131072**, so LOC_AND_DELTA0 §3.5's "take δ := 2⁻¹⁷*M*⁻⁷ and never construct δ₀"
survives this correction *verbatim* — which is the practical bottom line: the
number a Lean formalisation would quote does not change.

---

## 5. The certificates: (E3) is false, exactly

Code `k_constants.py`; logs `logs/k_constants_*.log`. All exact rationals.

### 5.1 The minimal certificate (pentagons, *M* = 3, AKR's rule undefined)

```
P = (2,1) (2,2) (1,1) (0,0) (2,0)        simple pentagon
Q = (3,0) (1,2) (1,3) (2,3) (3,3)        simple pentagon
|dP n dQ| = 2 (finite, so (F));  no vertex of P is a vertex of Q, so (VV);
one vertex-side degeneracy: P_0 = (2,1) interior to the Q-side [(3,0),(1,2)].
shift side i = 0:  A=(2,1) B=(2,2) C=(2,0) D=(1,1)
                   u=(0,1)  n=(-1,0)  N=1  w=(0,1)  z=(-1,-1)
AKR's Fig.-28 rule is UNDEFINED here (C,A,B collinear -- straight vertex).
tilt = pure translation here:  e_a = e_b = n = (-1,0).
   K_end = 1     K_slide = sqrt 2     K_rot = sqrt 2
   tau_1 = 1     tau_2 = 1            r = 1/sqrt 18      delta_0 = 1/60 exactly
```

The *Q*-side *t* = [(3,0),(1,2)] meets *s*⁻ = [(2,0),(2,1)] **at *A***, so
λ₀ = 1; and **e**_a = (−1,0) ⊥ **w** = (0,1), so sin∠(**e**_a,**w**) = 1; and
δ*_t = −cross(**v**,**w**)/cross(**v**,**e**_a) = −(−2)/2 = **+1**. Lemma R
therefore gives, for **every** δ,

> ratio(δ) = 1/(1 − δ).

**So (E3) fails for every one of the admissible δ ∈ (0, 1/60)** — not for a
sliver near δ₀, for the whole positive half-range — and one sign only, the
signature of the phenomenon. Verified exactly:

| δ | true \|*x*−*X*₀\|² / (δ²*K*_rot²) | ratio | |
|---|---|---|---|
| 1/120 | 14400/14161 | 1.008403361345 | **violation** |
| 3/200 | 40000/38809 | 1.015228426396 | **violation** |
| 333/20000 | 400000000/386790889 | 1.016931916408 | **violation** |
| 10⁻⁶ | 10¹²/999998000001 | 1.000001000001 | **violation** |
| −3/200 | 4000000/4133089 | 0.983767830792 | — (the other sign is safe) |

and the predicted 1/(1−δ) agrees to all 12 printed digits at each δ.
**sup over the admissible range = 60/59 = 1.0169491525…**

### 5.2 A heptagon-pair certificate (*M* = 6), since `Pair9` is heptagons

```
P = (2,5) (0,1) (3,1) (4,1) (5,2) (1,2) (4,3)     simple heptagon
Q = (6,0) (0,2) (2,6) (3,6) (2,4) (5,3) (6,1)     simple heptagon
|dP n dQ| = 4 ; (F) and (VV) hold ; one degeneracy: P_2 = (3,1) on Q-side [(6,0),(0,2)]
shift side i = 1, rule = tilt (and translation):
   K_end = 3  K_slide = K_rot = sqrt 90   tau_1 = 1/9  tau_2 = 1/3   delta_0 = 1/900
   worst t = [(6,0),(0,2)], lam0 = 1
   ratio at delta = (1-2^-30) delta_0 :  1.010101010092      VIOLATION
   sup over the admissible range      :  100/99 = 1.0101010101...
```

### 5.3 Counts over random data

Exact, (F) and (VV) enforced, δ taken at (1−2⁻³⁰)·δ₀ and at −that and at
δ₀/1024, with δ₀ computed from my own **exact rational δ₀²** (§9.1):

| rule | instances | (E1) violations | (E2) violations | **(E3) violations** | max (E3) ratio |
|---|---|---|---|---|---|
| tilt | 5 349 | 0 | 0 | **18** | 1.0169491525 |
| pure translation | 5 349 | 0 | 0 | **13** | 1.0169491525 |
| AKR Fig. 28 | 4 938 | 0 | 0 | 0 | **0.0000000000** |

The AKR column's zeros are the prediction of §4.1(i) confirmed 4 938 times:
under **a** = **w** the neighbour line is *invariant* and the crossing point
does not move, so *K*_rot is vacuously valid — and *entirely* vacuous.

**No instance anywhere exceeded 30/29**, and the maximum over 15 636 instances
is **exactly 60/59** to 10 decimal places — i.e. the sup is attained in the
limit δ→δ₀ by §5.1's family and my sampling reaches it.

### 5.4 How far short of the proved cap 30/29 does the attack get?

Honest answer: the observed sup is 60/59 = 1.01695 and the proved cap is
30/29 = 1.03448; **I did not close this gap.** A partial explanation, and a
sharper cap for the observed family: if λ₀ = 1 and sin∠(**e**_a,**w**) = 1
(i.e. **w** ∥ **u**, a *straight vertex at A*) and the foot of *C* on line(*t*)
falls **inside** *t*, then ρ₂(i) ≤ dist(*C*,*t*) = \|**w**\| sin∠(**v**,**w**) =
\|**w**\|√(1−σ_v²) with σ_v = sin∠(**e**_a,**v**), so

> δ/δ*_t ≤ *r*σ_v/(10\|**w**\|) ≤ σ_v√(1−σ_v²)/30 ≤ **1/60**,

maximised at σ_v = 1/√2 — which is exactly §5.1's configuration
(**v** = (−2,2), **e**_a = (−1,0)). So **60/59 is the exact supremum of that
family**, and the targeted hunt of §9.3 (9 455 hand-shaped adversarial
configurations) never beat it. Whether 30/29 is attainable by some other family
— foot of *C* outside *t*, λ₀ < 1, σ_w < 1 — I do not know; a partial estimate
for the foot-outside case gives ≈ 1.0205, also below 30/29.

**Nothing in this subsection is needed for the conclusion.** §4.3's 30/29 is
proved, and *r*·(30/29)/10 < *r* is all (Loc) uses.

---

## 6. `K_end ≤ 4M` and AKR's own rule: the scope restriction is right

LOC_AND_DELTA0 §3.6(A) reports 234 failures of *K*_end ≤ 4*M* for AKR's rule
and attributes them to §3.4's remark. **That attribution is correct and the
bound is simply false outside the two repairs**, by an unbounded factor:

> For **a** = **w**, \|**e**_a\| = *N*\|**w**\|/\|⟨**w**,**n**⟩\|. The
> denominator is a nonzero integer only ≥ 1 (that is (NC), not a metric fact),
> while *N*\|**w**\| is Θ(*M*³). The ratio to 4*M* is therefore Θ(*M*²).

*Exact certificate*, from `logs/k_constants_akr_guard.log`:

```
P = (3,2) (2,1) (3,4) (0,4) (1,2) (2,0) (6,6)    Q = (1,6) (2,4) (5,6) (6,2) (6,1) (6,0) (1,4)
M = 6 ;  side i = 5 :  A=(2,0) B=(6,6) C=(1,2) D=(3,2)
u = (4,6)  n = (-6,4)  N = 52   z = D-B = (-3,-4)   <z,n> = 2
|e_b| = N|z|/|<z,n>| = 52*5/2 = 130      4M = 24      ratio 130/24 = 5.4167
```

Measured over 506 AKR instances: *K*_end > 4*M* in **30** (5.9 %), worst ratio
observed **5.42**. So: the theorem's restriction to the tilt and the pure
translation is **necessary**, not cosmetic, and LOC_AND_DELTA0's separate
*K*_end ≤ 23*M*³ for AKR (via \|⟨**w**,**n**⟩\| ≥ 1, *N* ≤ 8*M*²,
\|**w**\| ≤ 2√2*M*, giving 16√2*M*³ < 23*M*³) is the right replacement. **I
re-derived that bound and it is correct.**

*(A cleaner way to say the same thing: §2.4's Cauchy–Schwarz gives
*K*_end ≥ \|**u**\| for **every** rule, but only for **a** ∈ {**n**,**n**+**u**}
is **a** within a factor √2 of **n**; AKR's **a** = **w** can be almost
parallel to **u**, and then *c*_a = *N*/⟨**w**,**n**⟩ blows up. A *straight*
vertex is the limit, where it is infinite — which is Gap 1.)*

---

## 7. The `max(…, 1)` guard: not scale-invariant, and also **inert**

LOC_AND_DELTA0 §3.6(D) says δ₀ is not scale-invariant because the `1` in
max(*K*_end,*K*_slide,*K*_rot,**1**) is not dimensionless, and measures this by
seeing two rigorous brackets fail to overlap 16 times in 560 rescalings. Both
the diagnosis and the sign of the effect are **correct**. Two additions:

**(a) It can be checked exactly, with no brackets.** Every term of δ₀ is the
square root of a rational, so **δ₀² is rational** and equality of δ₀ before and
after a rescaling is an exact decision (§9.1). Over **1 260** rescalings
(λ ∈ {2, 3, 1/4, 5/7, 1/13} × 60 configurations × 7 sides × 2 rules):

| variant | not invariant |
|---|---|
| δ₀ as printed, with the guard | **186 / 1 260** — λ = 1/4 (34) and λ = 1/13 (152) only, **never** λ ≥ 1 |
| δ₀ with the guard **deleted** | **0 / 1 260** |
| control: K-branch with the dimension-carrying max*K*² deleted | **1 260 / 1 260** ← the control fires |

The guard never made δ₀ *larger* (0 cases), confirming that §2 is unaffected.

**(b) The guard is redundant, so the cleanest fix is to delete it.** By §2.4,
*K*_end ≥ \|**u**\| for every admissible (**a**,**b**) — Cauchy–Schwarz, no
hypotheses — so max(*K*_end,*K*_slide,*K*_rot) ≥ \|**u**\| > 0 and the `min` is
always well formed; and for **integer** coordinates \|**u**\| ≥ 1 by (I4), so
**the guard never binds under the Theorem's own hypothesis**. Measured:
max(*K*_end,*K*_slide,*K*_rot) < 1 in **0 / 863** integer instances, and
*K*_end ≥ \|**u**\| in **863 / 863** with **min ratio exactly 1** (attained by
the pure translation, where **e**_a = **n** and *K*_end = \|**u**\|).
**Control:** claiming *K*_end ≥ 1.01\|**u**\| instead fails **586 / 863**.

So: delete the `1`, keep the a-priori theorem word for word, and δ₀ becomes
exactly scale-invariant — which is what LOC_AND_DELTA0's "Corollary (rational
data)" wanted in the first place. (Its fallback, equivariance of the operator,
is also correct and is the safer thing to formalise.)

---

## 8. Observed tightness

"Tightness" = max over the sample of (true displacement)/(claimed bound), with
δ = (1−2⁻³⁰)·δ₀, all exact.

| claim | rule | n | min | median | **max** |
|---|---|---|---|---|---|
| (E1) *K*_end | translation | 189 | **1.0000** | 1.0000 | **1.0000000000** |
| (E1) *K*_end | tilt | 189 | 0.7071 | 1.0000 | **1.0000000000** |
| (E1) *K*_end | AKR | 165 | 0.0587 | 1.0000 | **1.0000000000** |
| (E2) *K*_slide | all three | 102–112 each | 0.0555 | 0.4472 | **1.0000000000** |
| (E3) *K*_rot | tilt | 140 | 0.0103 | 0.3286 | **1.0101010101** |
| (E3) *K*_rot | translation | 140 | 0.0103 | 0.3340 | **1.0101010101** |
| (E3) *K*_rot | AKR | — | — | — | **0** (never nonzero: §4.1(i)) |

*K*_end and *K*_slide are **attained** — max exactly 1, median exactly 1 for
*K*_end. For the pure translation the *minimum* is also 1: (E1) is an equality
in every single instance, because **e**_a = **e**_b = **n** and the moving
endpoints are exactly \|δ\|\|**n**\| from their originals. Neither constant has
any slack to give back; they cannot be improved by any constant factor.

*K*_rot is the odd one out: median 0.33, and the excursions above 1 are the
defect of §4.

**A-priori slack** (how loose §3.4's closed forms are against the true
constants, 518 integer instances, grid 12, tilt + translation):

| | median | max |
|---|---|---|
| *K*_end / 4*M* | 0.125 | **0.295** (loose by 3.4×) |
| *K*_slide / 23*M*³ | 0.0020 | **0.0185** (loose by 54×) |
| *K*_rot / 32*M*³ | 0.00053 | **0.0044** (loose by 226×) |

So of the three a-priori bounds, **only *K*_end ≤ 4*M* is within an order of
magnitude of the truth**; the 23*M*³ and 32*M*³ bounds throw away up to 8*M*²
each in the (I1) step "a nonzero integer is ≥ 1". That is consistent with
LOC_AND_DELTA0 §3.6(B), whose per-term 10× control fires for *K*_end (292/511)
and not for *K*_slide or *K*_rot (0/511).

---

## 9. What was run, what was reused, and the controls

### 9.1 Code

`k_constants.py` (new). **Reused verbatim**, so that a disagreement would show
up as a disagreement: `shift.py` (sub/add/cross/sides/is_simple/inter_points/
seg_inter/vertex_vertex), `repair.py` (frame, `DIRS` for the three rules,
gen_shift, host_side_through), `sweep2.rand_simple`, `attack3.py`
(d2_seg_seg, d2_pt_seg, d2_pt, degset_idx), and `attack3.delta0` **as a
cross-check only**.

**Rewritten independently**: `delta0_sq`, the **exact rational δ₀²**. Every
term of δ₀ is √(rational), so squaring keeps everything in ℚ and the `min` can
be taken on the squares — no `sqrt_lb`/`sqrt_ub` bracketing at all. This both
sharpens the attack (it admits δ right up against the true δ₀, not against a
deflated surrogate) and gives an **independent check on `attack3.delta0`**:

> 543 (configuration, side, rule) comparisons: `attack3.delta0` **never**
> exceeded my exact δ₀ (0 failures), and max (mine/attack3)² = 1.000000000.
> LOC_AND_DELTA0 §3.6(C)'s "δ₀^ℚ is the true δ₀ to a relative 2⁻⁴⁰" is
> confirmed from a different direction.

The three constants are computed as exact rational **squares**
(*K*_end², *K*_slide², *K*_rot²), so every "ratio ≤ 1" test is an exact
comparison of rationals. There is no float anywhere in the decision path.

### 9.2 Non-vacuity controls (mandatory; this project has shipped three vacuous ones)

**(i) Can the checker report failure at all?** Multiply every *K* by a factor
< 1 and re-run the *same* code, 2 475 instances:

| *K* × | (E1) fails | (E2) fails | (E3) fails |
|---|---|---|---|
| **1** (the real test) | 0 | 0 | **13** |
| 99/100 | 2 310 | 240 | 26 |
| 9/10 | 2 328 | 267 | 63 |
| 1/2 | 2 426 | 525 | 423 |
| 1/10 | 2 474 | 1 245 | 1 158 |

A **1 %** strengthening already breaks (E1) in 93 % of instances and (E2) in
10 %: the checker is not merely able to fail, it is on a knife edge, which is
the §8 tightness restated.

**(ii) Lemma R, the exact identity.** 3 212 (neighbour, *Q*-side, δ) instances,
**0 mismatches**. *Control*: the same identity with the λ₀ factor dropped —
**1 872 mismatches out of 3 212**. The Plücker identity it rests on: 20 000
random integer quadruples, 20 000 ok, 0 bad.

**(iii) Scale invariance.** See §7(a): the deliberately dimensionally-wrong
variant fails 1 260/1 260. *Reported as it happened:* my **first** control —
capping δ₀² at 1/100 — **did not fire at all**, because δ₀² is always far below
1/100. I kept it in the log rather than deleting it.

**(iv) *K*_end ≥ \|**u**\|.** 863/863 hold; control "≥ 1.01\|**u**\|" fails
586/863.

### 9.2a Lemma T and the factor 30, verified exactly

Comparisons on squares, exact rationals, over every (configuration, side, rule,
*Q*-side meeting *s*⁻ or *s*⁺ with cross(**e**,**v**) ≠ 0) instance:

| claim | instances | failures |
|---|---|---|
| **Lemma T**: τ₁^t·*K*_rot ≥ \|**w**\| (resp. \|**z**\|) | 1 558 | **0** |
| corollary τ₁^t ≥ 30·δ₀ | 2 868 | **0** |

**Lemma T is tight**: min (τ₁^t*K*_rot/\|**w**\|) = **exactly 1**, and the
control "≥ 1.01\|**w**\|" fails 39/1 558.

The corollary is **not** tight, and this is the one place where my proof is
weaker than the data. Control ladder on the constant *c* in τ₁^t ≥ *c*·δ₀:

| *c* | 30 | 40 | 50 | 59 | **60** | **61** | 80 | 100 | 120 | 200 |
|---|---|---|---|---|---|---|---|---|---|---|
| failures / 2 868 | 0 | 0 | 0 | 0 | **0** | **7** | 7 | 9 | 11 | 30 |

**min τ₁^t/δ₀ = exactly 60** over the whole sample. So the *observed* constant
is 60, giving an error factor of 60/59 — which is exactly the observed maximum
(E3) ratio of §5.3, and exactly the value §5.4 derives for the dominant family.
My proof of §4.3 delivers only 30. **The missing factor of 2 is precisely the
gap between the proved cap 30/29 and the observed sup 60/59**, and I did not
close it: §4.3 bounds *r* by ρ₄/3 ≤ \|**w**\|/3, whereas the data suggest the
right comparison is with ρ₂(i) ≤ dist(*C*,*t*), which costs a further √(1−σ_v²)
(§5.4). Proving τ₁^t ≥ 60δ₀ in general would make (E3) true as printed up to
60/59 and would be a genuine improvement; it is left open.

### 9.3 Does the adversarial phenomenon actually occur in the sample?

A bound that is never stressed has not been tested. Census over 364
(configuration, side) frames drawn the same way as the main sweep:

| feature | count |
|---|---|
| straight vertex at *A* (**AKR's rule undefined** — Gap 1) | 16 |
| straight vertex at *B* | 16 |
| corner at *A* within 18° of straight | 50 |
| corner at *A* within 6° of a right angle | 37 |
| obtuse/reflex-side corner at *A* (⟨**u**,**w**⟩ > 0) | 138 |
| *Q*-side within 6° of **parallel** to *s* (the *K*_slide blow-up) | 252 |
| *Q*-side **perpendicular** to *s* meeting *s* (REPAIR §1.3's defect) | 38 |
| *Q*-side meeting *s*⁻ (makes *K*_rot non-vacuous) | 396 |
| … of those, with λ₀ > 0.9 | 38 |
| … of those, with **λ₀ = 1 exactly** (*t* through *A*) — the (E3) trigger | **34** |
| **tilt actually active** at *A* / at *B* | 4 / 6 |

Every family the brief asks for is present, including the two that matter:
λ₀ = 1 (34 occurrences) and straight vertices (16). A targeted hunt
(`adversarial()`, 9 455 usable hand-shaped configurations over 3 seeds, built
around *w* ∥ *u*, *t* through *A*, *v* ≈ ∥ *u*) reached a maximum ratio of
1.01661 — below the 1.01695 the undirected sweep found, so the directed search
did **not** beat the random one and is reported as such.

### 9.4 Every use of (VV)

(VV) is used exactly once in this document, but that once is everywhere:
**Lemma 1** (REPAIR §2.2) is what makes ⟨**v**_t,**n**⟩ ≠ 0 and
cross(**w**,**v**_t) ≠ 0, hence *K*_slide and *K*_rot finite and their
denominators ≥ 1 in the integer bounds. Without (VV) a *Q*-side may meet a
*P*-side at a shared vertex while parallel to it, and then *K*_slide = *K*_rot
= +∞ and δ₀ = 0. Every random instance above is filtered on
`not vertex_vertex(P,Q)`.

(E1)/*K*_end uses **no** hypothesis at all — not (F), not (VV), not simplicity.

---

## 10. Honest summary

1. ***K*_end is correct and sharp.** (E1) follows from the definition plus one
   convexity step; equality holds at the moving endpoint. *K*_end ≤ 4*M* is
   correct **for the tilt and the pure translation only**, via *c*_a = 1, and
   is loose by ≤ 3.4× in my data. For AKR's rule it is **false** — certificate
   at *M* = 6 with ratio 5.42, failing in 5.9 % of AKR instances — and the
   correct bound there is 23*M*³, as LOC_AND_DELTA0's remark already says.
   New: *K*_end ≥ \|**u**\| for every rule (Cauchy–Schwarz).
2. ***K*_slide is correct and is an exact identity**, rule-independent, with
   the maximum **attained**. *K*_slide ≤ 23*M*³ is correct and loose by ≤ 54×.
3. ***K*_rot as printed is WRONG.** It is the δ→0 limit of the true rotation
   law (Lemma R). Exact certificate: a pentagon pair with *M* = 3, (F), (VV),
   AKR's rule undefined, δ₀ = 1/60, on which the true displacement is
   1/(1−δ) × the claimed bound for **every** δ ∈ (0,δ₀); sup = 60/59.
   A heptagon-pair certificate at *M* = 6 gives 100/99. 31 violations in
   15 636 random instances. The corrected law is
   \|*x*−*X*₀\| = \|δ\|λ₀\|cross(**e**_a,**w**)\|\|**v**\|/\|cross(**v**,**w**+δ**e**_a)\|.
4. **The damage to δ₀ is nil.** Lemma T (τ₁^t·*K*_rot ≥ \|**w**\| ≥ ρ₄ ≥ 3*r*)
   forces \|δ\| < δ₀ ≤ τ₁^t/30, capping the error at **30/29**; (Loc) step 3's
   "< *r*/10" becomes "< *r*/9.67", and step 4 only needs "< *r*".
   **δ₀ ≥ 1/(61440 *M*⁷) stands unchanged.** If one insists the printed
   inequality be literally true, replacing *K*_rot by 2*K*_rot inside δ₀ (and
   nothing else) gives 1/(122880 *M*⁷), and **δ := 2⁻¹⁷*M*⁻⁷ still works.**
5. **The `max(…,1)` guard** does break scale-invariance (exactly, 186/1 260,
   all at λ < 1) and is also **inert for integer data** (0/863), because
   *K*_end ≥ \|**u**\| ≥ 1. Deleting it restores exact invariance (0/1 260).
6. **What this does not do.** Nothing here is in Lean and no Lean build was
   run. No git command was run. It does not touch (VV), i.e. §9.1, which
   remains open and necessary. It is pen-and-paper plus exact computation, by
   one agent, unreviewed. **It does not prove *f*(7,7) = 38**, which remains a
   candidate resting on this import.
7. **Gap I leave open.** The proved cap on the (E3) error is 30/29; the largest
   violation I could construct is 60/59, and the underlying quantity τ₁^t/δ₀
   has **exact minimum 60** over 2 868 instances where §4.3 proves only 30
   (control ladder: *c* = 60 fails 0 times, *c* = 61 fails 7). So the factor-2
   gap is in my proof, not in the data. I did not close it and do not claim
   30/29 is attained.
