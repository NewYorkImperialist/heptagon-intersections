# A repair for AKR §9.2's undefined shift operator

**Written 2026-09-21.** Companion to
[`../../docs/akr-9-2-obligation.md`](../../docs/akr-9-2-obligation.md) (written
2026-09-20), which states §9.2's obligation, proves the averaging identity for
AKR's own operator, and records as **Gap 1** that that operator is *undefined*
when the shifted side has a collinear neighbour — a case §9.2 may not assume
away, because the §3 clause that would rule it out is justified only *after* §9.
Measured there: undefined on **17.7 %** of random hexagon pairs.

This document supplies a repair, attacks it, and proves it.

**Nothing here is in Lean and no Lean build was run. No git command was run.
Nothing here proves *f*(7,7) = 38; that value remains a candidate resting on
this very import, unreviewed by any mathematician.** Exact rational arithmetic
(`fractions.Fraction`) throughout; no float anywhere.

---

## 1. The repair, stated precisely

### 1.1 The generalised shift *G*(**a**,**b**) — one operator containing both

Notation as in [`akr-9-2-obligation.md`](../../docs/akr-9-2-obligation.md) §2.1.
*P* = (*P*₀,…,*P*_{m−1}) simple, index *i* fixed,

> *C* = *P*_{i−1},  *A* = *P*_i,  *B* = *P*_{i+1},  *D* = *P*_{i+2},
> **u** = *B* − *A*,  **n** = **u**^⊥ = (−*u*_y, *u*_x),  *N* = ⟨**u**,**u**⟩ = ⟨**n**,**n**⟩,
> **w** = *A* − *C*,  **z** = *D* − *B*,
> *s*⁻ = [*C*,*A*],  *s* = [*A*,*B*],  *s*⁺ = [*B*,*D*].

**Definition.** For directions **a**, **b** ∈ ℝ²∖{0} with ⟨**a**,**n**⟩ ≠ 0 and
⟨**b**,**n**⟩ ≠ 0, and δ ∈ ℝ, put

> *A*_δ = *A* + (δ*N*/⟨**a**,**n**⟩)·**a**,  *B*_δ = *B* + (δ*N*/⟨**b**,**n**⟩)·**b**,

and let *P*(δ) = *G*(**a**,**b**)(*P*, *i*, δ) be *P* with *P*_i ↦ *A*_δ and
*P*_{i+1} ↦ *B*_δ. All other vertices are untouched, so *P*(δ) has exactly *m*
vertices.

**The normalisation is chosen so that ⟨*A*_δ − *A*, **n**⟩ = ⟨*B*_δ − *A*, **n**⟩ = δ*N*.**
Hence, *for every admissible* (**a**,**b**),

> **both new endpoints lie on ℓ_δ = {*x* : ⟨*x*−*A*, **n**⟩ = δ*N*}, the
> parallel translate of the line of *s* at parameter δ.**

So the shifted side is *always* a subsegment of the parallel line ℓ_δ — that
much is forced by "parallel shift". The choice of (**a**,**b**) only decides
**where on ℓ_δ the two endpoints land**. Well-definedness is exactly

> **(G)** **a** ∦ **u** and **b** ∦ **u**.

### 1.2 The two rules are the two extreme choices

| | **a** | **b** | (G) becomes | |
|---|---|---|---|---|
| **AKR's Fig.-28 rule** | **w** | **z** | ⟨**w**,**n**⟩ ≠ 0 ∧ ⟨**z**,**n**⟩ ≠ 0, i.e. **exactly (NC)** | undefined at a straight vertex |
| **the translation repair** | **n** | **n** | ⟨**n**,**n**⟩ = *N* ≠ 0, **automatic** | always defined |
| **the tilted repair** (§1.4) | **n** or **n**+**u** | ditto | automatic | always defined *and* always clears |

With **a** = **w**: *A*_δ = *A* + (δ*N*/α)**w** where α = ⟨**w**,**n**⟩ — the
endpoint slides along the *line of s*⁻, which is what Fig. 28 draws, and α = 0
is precisely three consecutive collinear vertices.

With **a** = **n**: *A*_δ = *A* + δ**n** — the side is *rigidly translated*
(this is the previous agent's candidate repair), and the two neighbouring sides
rotate about their far endpoints *C*, *D*.

**Verified, not assumed.** `repair.py`'s `gen_shift` with (**w**,**z**) and with
(**n**,**n**) was checked against `shift.py`'s independently written
`shift_side(..., rule='akr')` and `rule='translate'` on **4 000** random
(hexagon, side) pairs at δ = 2⁻⁹: **4 000/4 000 identical outputs for each
rule**, including agreeing on the **469** instances where AKR's rule returns
`None`. The unification is an identity, not an analogy.

**A remark on fidelity to the text, offered as a remark and not as a claim about
what AKR meant.** AKR's four sentences say "a small **parallel shift of a
side**". Under **a** = **w** the shifted side is *not* a translate of *s* — it
is a different-length subsegment of ℓ_δ. Under **a** = **n** it is literally
*s* + δ**n**, a parallel translate of the side. So the translation repair
matches AKR's *words* more closely, and AKR's rule matches their *picture*
(Fig. 28's dotted rays). The text never disambiguates; that is Gap 1.

### 1.3 The one defect of the pure translation, found by attack

The pure translation **a** = **b** = **n** has a failure mode that AKR's rule
does not have, and it was found by the theory in §2 before it was found by
search. Suppose the moving endpoint *A* lies in the relative interior of a
*Q*-side *t* with direction **v**. Then

> *A*_δ ∈ line(*t*) for **every** δ ⟺ **n** ∥ **v** ⟺ *t* ⊥ *s*.

so a *Q*-side **perpendicular to the shifted side** through a moving endpoint
drags the degeneracy along with the endpoint and it is **never removed**.
(AKR's rule cannot suffer this: there **a** = **w**, and **w** ∥ **v** would put
*t* on the line of *s*⁻, which overlaps *s*⁻ and is excluded by finiteness (F).)

**An exact witness**, hand-built, both polygons simple, no vertex-vertex
coincidence, ∂*P* ∩ ∂*Q* finite:

```
P = (0,0) (2,0) (4,0) (6,0) (6,4) (3,6) (0,4)        a simple heptagon
Q = (2,-2) (2,3) (5,3) (5,-2)                        a simple quadrilateral
|dP n dQ| = 2 ;  the only vertex-side degeneracy is
      P-vertex (2,0)  in the interior of the Q-side [(2,-2),(2,3)]
shift P's side 1 = [(2,0),(4,0)]  (u = (2,0), n = (0,2)):

  rule          delta=2^-6, 2^-12, 2^-24    counts (c0,c+,c-)   identity  cleared
  AKR (Fig.28)  UNDEFINED  (w = (2,0) || u, and z = (2,0) || u: straight
                            vertices at BOTH ends of the shifted side)
  translate     ok                          (2, 2, 2)           TRUE      FALSE
  tilt (§1.4)   ok                          (2, 2, 2)           TRUE      TRUE
```

The translated configuration keeps its degeneracy count at 1 for both signs of δ
and all three δ; the tilt drops it to 0. **The averaging identity is not what
breaks** — 2 + 2 = 2·2 holds — it is clause 3 of (A9.2-avg), "the degeneracy is
gone", that fails. That distinction matters: the identity is what makes the
count not decrease, clause 3 is what makes the procedure *terminate*.

### 1.4 The repair I propose: the **tilted translation**

> **Definition (tilted translation).** Shift side *s* = [*A*,*B*] of *P*.
> Let *t*_A be the unique *Q*-side containing *A* in its relative interior
> (there is at most one: two would meet at *A*, and *A* is not a *Q*-vertex by
> (VV), so *Q* would not be simple), and *t*_B likewise for *B*. Put
>
> * **a** = **n** if *t*_A does not exist or ⟨**u**, **v**_{t_A}⟩ ≠ 0; otherwise **a** = **n** + **u**;
> * **b** = **n** if *t*_B does not exist or ⟨**u**, **v**_{t_B}⟩ ≠ 0; otherwise **b** = **n** + **u**;
>
> and apply *G*(**a**,**b**).

**a** ∦ **u** always (**n** ∦ **u**, and **n**+**u** ∦ **u**), so (G) holds
unconditionally: **the tilted translation is defined for every simple *P* and
every side, with no (NC) and no general-position hypothesis on *P* at all.**
And **a** ∦ **v**_{t_A} always (if ⟨**u**,**v**⟩ = 0 then **v** ∥ **n**, and
**n**+**u** ∦ **n**), so the endpoint degeneracy is always cleared. Everything is
rational: no case needs an irrational or a "generic" direction.

It keeps *m* vertices, so it stays inside `Pair9`'s `Fin 7`.

---

## 2. The averaging identity for *G*(**a**,**b**) — proved, with (NC) removed

**This proof is mine, not AKR's. It is pen-and-paper, has not been
machine-checked, and has not been reviewed by anyone.** It supersedes
[`akr-9-2-obligation.md`](../../docs/akr-9-2-obligation.md) §4 in one respect
only: it proves the same conclusion for the whole family *G*(**a**,**b**) at
once, **without (NC)**, and it handles the two new cases that AKR's rule does
not produce (a *Q*-feature in the interior of a *rotating* neighbour side, and
the fixed pivot). Where it overlaps §4 it agrees with it.

### 2.1 Hypotheses

* **(F)** ∂*P* ∩ ∂*Q* is finite. Equivalently: no side of *P* overlaps a side of
  *Q* in a nondegenerate segment. (AKR's standing assumption from §1/§3.)
* **(VV)** no vertex of *P* is a vertex of *Q*. **This is §9.1's output**, and
  [`akr-9-2-obligation.md`](../../docs/akr-9-2-obligation.md) §5.5 shows by exact
  counterexample that it cannot be dropped: without it §9.2's *conclusion* is
  false. Every use of it below is flagged **[VV]**.
* **(G)** ⟨**a**,**n**⟩ ≠ 0 and ⟨**b**,**n**⟩ ≠ 0.
* *P* and *Q* simple, consecutive vertices distinct.

**(NC) is not assumed anywhere.** For **a** = **w**, (G) *is* (NC) and the proof
specialises to AKR's operator; for **a** = **b** = **n** and for the tilt, (G)
is automatic.

### 2.2 Two consequences of (F) and (VV), used constantly

> **Lemma 1.** If a *Q*-side *t* meets a *P*-side *e*, then *t* and *e* are not
> parallel.
>
> *Proof.* Suppose they are. Sharing a point and being parallel, they are
> collinear. Two collinear segments that meet either overlap in a nondegenerate
> segment — excluded by (F) — or meet in a single point that is an **endpoint of
> both**, i.e. a *P*-vertex equal to a *Q*-vertex — excluded by **[VV]**. ∎

> **Lemma 2.** If a *Q*-vertex *Q*_j lies in the relative interior of a *P*-side
> *e*, then neither of *Q*'s two edges at *Q*_j is parallel to *e*.
>
> *Proof.* Such an edge would be collinear with *e* and meet it at *Q*_j, which
> is interior to *e*, so the overlap is a nondegenerate segment — excluded by
> (F). ∎

> **Lemma 0.** A point that is not a *Q*-vertex lies on at most one *Q*-side; a
> vertex of one polygon lies in the relative interior of **at most one** side of
> the other.
>
> *Proof.* Two sides of the simple polygon *Q* meet only if adjacent, and then
> only at their shared vertex. For the second statement, that shared vertex would
> have to be the point, which is excluded (it is a vertex of the *other*
> polygon) by **[VV]**, or is not a relative-interior point. ∎

Lemma 0's second half gives immediately

> **Corollary.** *D*(*P*,*Q*) := #(vertex-side degeneracies) ≤ *m* + *n*.
> **For two heptagons, *D* ≤ 14.** This is used in §3.

### 2.3 The explicit δ₀

Write 𝒟 = ∂*P* ∩ ∂*Q* (finite by (F)), *c*_a = *N*/⟨**a**,**n**⟩,
*c*_b = *N*/⟨**b**,**n**⟩, and let *V*(·) denote vertex sets. Define the
following **finitely many strictly positive rationals**:

* **ρ₁** = the minimum distance between two distinct points of
  𝒟 ∪ *V*(*P*) ∪ *V*(*Q*). Positive because the points are pairwise distinct —
  *V*(*P*) ∩ *V*(*Q*) = ∅ by **[VV]**.
* **ρ₂** = the minimum of
  (i) dist(*p*, *t*) over pairs (*p*, *t*) with *p* ∈ *V*(*P*) ∪ *V*(*Q*),
  *t* a side of the other polygon, *p* ∉ *t*; and
  (ii) dist(*t*, *s*⁻ ∪ *s* ∪ *s*⁺) over the *Q*-sides *t* disjoint from that union.
* **ρ₃** = the minimum distance between two non-adjacent sides of *P* (positive:
  *P* simple and compact).
* **ρ₄** = min(|**w**|, |**u**|, |**z**|).
* **K**_end = max(|*c*_a**a**|, |*c*_b**b**|) — the largest displacement of a
  vertex per unit δ.
* **K**_slide = max over *Q*-sides *t* with ⟨**v**_t,**n**⟩ ≠ 0 of
  *N*|**v**_t| / |⟨**v**_t,**n**⟩| — how far a crossing point slides along a
  *Q*-side per unit δ. **This is the term that a *Q*-side nearly parallel to *s*
  blows up**, and it is measured in §4.3.
* **K**_rot = the analogous constant for the two rotating neighbour sides:
  max over *Q*-sides *t* meeting *s*⁻ of
  |*c*_a**a**|·|**w**|·|**v**_t| / |cross(**w**,**v**_t)|, and the same with
  (**z**, *c*_b**b**) for *s*⁺. Each denominator is nonzero by **Lemma 1**.
* **τ**₁ = min over *Q*-sides *t* meeting *s*⁻ with cross(**a**,**v**_t) ≠ 0 of
  |cross(**w**,**v**_t) / (*c*_a cross(**a**,**v**_t))| — the δ at which the
  rotated *s*⁻ would become **collinear** with *t*; and the same for *s*⁺.
  Nonzero by **Lemma 1**. *(This term does not occur in AKR's rule, where
  **a** = **w** and *s*⁻ does not rotate. It is new to the repair.)*
* **τ**₂ = min over *Q*-vertices *q* ∉ ℓ(*s*) of |⟨*q*−*A*,**n**⟩| / *N*, and
  min over *Q*-sides *t* ∥ *s* with *t* ⊄ ℓ(*s*) of dist(*t*, ℓ(*s*))/|**n**| —
  the δ at which a *Q*-vertex or a parallel *Q*-side would land on ℓ_δ.

Put *r* = ⅓ min(ρ₁, ρ₂, ρ₃, ρ₄) and

> **δ₀ = min( *r* / (10·max(K_end, K_slide, K_rot, 1)), τ₁, τ₂ ).**

Then for 0 < |δ| < δ₀ every moving point moves by less than *r*/10.
**This is the δ₀ AKR do not exhibit.** It depends on all of *Q*, not just on
*s*; the terms *K*_slide, τ₁, τ₂ are each easy to forget.

### 2.4 Localisation

Let ℱ = (𝒟 ∩ (*s*⁻ ∪ *s* ∪ *s*⁺)) ∪ {*A*, *B*} and, for *p* ∈ ℱ, let *U*_p be
the open disc of radius *r* about *p*. The points of ℱ lie in
𝒟 ∪ *V*(*P*), so they are pairwise at distance ≥ ρ₁ ≥ 3*r*: **the *U*_p are
pairwise disjoint.** Put *U* = ⋃_p *U*_p.

> **(Loc)** For 0 < |δ| < δ₀,  (∂*P*(δ) ∩ ∂*Q*) ∖ *U* = (∂*P* ∩ ∂*Q*) ∖ *U*,
> and every point of ∂*P*(δ) ∩ ∂*Q* ∩ *U*_p "comes from" *p*.

*Proof.* ∂*P*(δ) and ∂*P* agree away from the three moving sides, so let
*x* ∈ ∂*P*(δ) ∩ ∂*Q* lie on a moving side *e*_δ ∈ {[*C*,*A*_δ], [*A*_δ,*B*_δ],
[*B*_δ,*D*]}, and let *t* ∋ *x* be a *Q*-side. Since dist(*x*, *e*₀) ≤
|δ|*K*_end < *r*/10 < ρ₂, the side *t* is not disjoint from *s*⁻ ∪ *s* ∪ *s*⁺.
By δ₀ ≤ τ₁ and Lemma 1, *t* is not parallel to the line of *e*_δ, so
*t* ∩ line(*e*_δ) = {*x*} and *t* ∩ line(*e*₀) = {*X*₀} are single points with
|*x* − *X*₀| ≤ |δ|·max(*K*_slide, *K*_rot) < *r*/10. If *X*₀ ∈ *e*₀ then
*X*₀ ∈ 𝒟 ∩ *e*₀ ⊆ ℱ and *x* ∈ *U*_{X₀}. If *X*₀ ∉ *e*₀, then *X*₀ lies on
line(*e*₀) beyond an endpoint and dist(*X*₀, *e*₀) < *r*/5, so *X*₀ is within
*r*/5 of an endpoint *P*_k of *e*₀; since *t* comes within *r*/5 < ρ₂ of *P*_k,
**Lemma 0 / ρ₂(i)** force *P*_k ∈ *t*, hence *P*_k ∈ 𝒟 ∩ *e*₀ ⊆ ℱ and
|*x* − *P*_k| < *r*, i.e. *x* ∈ *U*_{P_k}. Either way *x* ∈ *U*. Running the
same argument at δ = 0 gives the other inclusion. Disjointness of the *U*_p
makes the "comes from" clause unambiguous. ∎

Consequently, with *I*_far = |𝒟 ∖ *U*| (independent of δ) and
*c*_p(δ) = |∂*P*(δ) ∩ ∂*Q* ∩ *U*_p|,

> *I*(*P*(δ), *Q*) = *I*_far + Σ_{p ∈ ℱ} *c*_p(δ),  and *c*_p(0) = 1 for
> *p* ∈ ℱ ∩ 𝒟, *c*_p(0) = 0 otherwise.

**This additivity is the step AKR omit entirely** (Gap 2), and it is the step
that turns a per-degeneracy statement into a statement about the total count.
So the theorem reduces to

> **(★)** *c*_p(δ) + *c*_p(−δ) = 2·*c*_p(0) for every *p* ∈ ℱ and 0 < |δ| < δ₀.

### 2.5 The engine: one sign-flip lemma does every case

> **Lemma 3 (sign flip).** Let λ ≠ 0 and let ψ be continuous near 0 with
> ψ(0) ≠ 0. For |δ| small enough, the indicator
> χ(δ) = [ sgn(λδ) ≠ sgn ψ(δ) ] satisfies **χ(δ) + χ(−δ) = 1**.
>
> *Proof.* For small δ, sgn ψ(δ) = sgn ψ(0) ∈ {±1} is constant, while sgn(λδ)
> takes both values as δ ranges over {+δ, −δ}. Exactly one of them differs from
> sgn ψ(0). ∎

Every case below computes *c*_p(δ) as a sum of at most two such indicators, or
shows *c*_p ≡ 1. **This is why the identity holds, in one sentence:** membership
of a *Q*-feature in a moving *P*-side is decided by the sign of a quantity that
is *linear in δ with nonzero slope*, against a quantity that is *bounded away
from zero*; and a linear function of δ with nonzero slope is positive for
exactly one of the two directions.

### 2.6 The cases

*p* ∈ ℱ, and by **Lemma 0** at most one *Q*-side passes through *p* unless *p*
is a *Q*-vertex.

**(P0) *p* ∈ {*A*,*B*} ∖ 𝒟.** No *Q*-side contains *A*, and every *Q*-side not
containing *A* is at distance ≥ ρ₂ ≥ 3*r* from it, so ∂*Q* ∩ *U*_A = ∅ and
*c*_A(±δ) = 0 = 2·0. ✔

**(P1a) *p* ∈ relint(*s*), not a *Q*-vertex.** *p* ∈ relint(*t*); ⟨**v**_t,**n**⟩ ≠ 0
by **Lemma 1**. *t* meets ℓ_δ in the single point
*X*_δ = *p* + (δ*N*/⟨**v**_t,**n**⟩)**v**_t, at distance ≤ |δ|*K*_slide < *r*/10
from *p*, hence in relint(*t*) and in relint([*A*_δ,*B*_δ]). No other moving
side contributes (by (Loc), a contribution from *s*⁻ would force *p* ∈ *s*⁻ ∩ *s*
= {*A*}). So *c*_p(±δ) = 1. ✔

**(P1b) *p* = *Q*_j ∈ relint(*s*) — AKR's own case.** Let
*e*^± = *Q*_{j±1} − *p*. With *g*(*x*,δ) = ⟨*x*−*A*,**n**⟩ − δ*N* we have
*g*(*p*,δ) = −δ*N* (slope −*N* ≠ 0) and *g*(*Q*_{j±1},δ) → ⟨*e*^±,**n**⟩ ≠ 0 by
**Lemma 2**. Lemma 3 applied twice:
*c*_p(δ) = χ⁻(δ) + χ⁺(δ) and *c*_p(δ) + *c*_p(−δ) = 2. ✔
If ⟨*e*⁻,**n**⟩, ⟨*e*⁺,**n**⟩ have equal signs the values are 2 and 0 (AKR's
"multiply into two" / "disappear"); opposite signs give 1 and 1.

**(P2) *p* ∈ relint(*s*⁻)** (and *s*⁺ symmetrically). **This case does not exist
for AKR's rule and is new to the repair**, because with **a** = **w** the side
*s*⁻ does not leave its own line. Write *p* = *C* + τ₀**w**, τ₀ ∈ (0,1), and
*g*(*x*,δ) = cross(**w** + δ*c*_a**a**, *x* − *C*), which cuts out the line of
the rotated side. Then *g*(*p*,δ) = δ*c*_aτ₀·cross(**a**,**w**).

* **(P2-i) cross(**a**,**w**) ≠ 0** — the side genuinely rotates. If *p* is not
  a *Q*-vertex, *t* crosses the rotated line once, near *p*, inside both
  segments: *c*_p(±δ) = 1 ✔. If *p* = *Q*_j, then
  *g*(*Q*_{j±1},δ) → cross(**w**, *e*^±) ≠ 0 by **Lemma 2**, and Lemma 3 twice
  gives *c*_p(δ) + *c*_p(−δ) = 2 ✔. *(Here the degeneracy is destroyed — a bonus
  the translation has and AKR's rule does not.)*
* **(P2-ii) cross(**a**,**w**) = 0** — **a** ∥ **w**, so the line of *s*⁻ is
  fixed and only its length changes. This is **always** the case for AKR's rule,
  and is the case **w** ⊥ **u** for the translation. Then *p* stays on the line,
  and *p* ∈ [*C*, *A*_δ] for |δ| < δ₀ because τ₀ < 1 and ρ₄ bounds the length
  change. The one *Q*-side (or the two *Q*-edges at *p*) meet that fixed line
  only at *p*, by **Lemma 1** / **Lemma 2**. So *c*_p(±δ) = 1 ✔.
  *(Degeneracy preserved, identity unaffected.)*

**(P3) *p* = *A* ∈ 𝒟 — the moving endpoint, the case AKR's prose does not
describe** (Gap 3; the commonest class in the sweeps). By **[VV]** *A* is not a
*Q*-vertex, so by **Lemma 0** there is exactly one *Q*-side *t* ∋ *A*, and
*A* ∈ relint(*t*). Let **v** = **v**_t and *f*(*x*) = cross(**v**, *x*−*A*).
**Lemma 1** gives *f*(*C*) = cross(**w**,**v**) ≠ 0 and
*f*(*B*) = cross(**v**,**u**) ≠ 0; and *f*(*A*_δ) = δ*c*_a·cross(**v**,**a**),
*f*(*B*_δ) → *f*(*B*).

* **(P3-i) cross(**v**,**a**) ≠ 0.** Lemma 3 with λ = *c*_a cross(**v**,**a**):
  * [*C*,*A*_δ] meets *t* for exactly one sign of δ (crossing parameter → 1, so
    the point tends to *A*, lies in *U*_A and in relint(*t*));
  * [*A*_δ,*B*_δ] meets *t* for exactly one sign of δ (crossing parameter → 0).

  Hence *c*_A(δ) = χ₁(δ) + χ₂(δ) and *c*_A(δ) + *c*_A(−δ) = 2 ✔. Both patterns
  occur: same sign gives (2, 0), opposite signs gives (1, 1). **The mechanism is
  a migration of the intersection point between two sides of *P*, not a
  disappearance in place.**
  For **a** = **w** the hypothesis cross(**v**,**w**) ≠ 0 is **Lemma 1** again,
  so AKR's rule is always in (P3-i) — which is why §4.5 of
  [`akr-9-2-obligation.md`](../../docs/akr-9-2-obligation.md) sees only this
  branch. Specialising, *f*(*A*_δ) = −δ(*N*/α)cross(**w**,**v**) with
  α = ⟨**w**,**n**⟩, and χ₁ = [sgn δ = sgn α]: **this reproduces §4.5's formula
  exactly.**
* **(P3-ii) cross(**v**,**a**) = 0** (**a** ∥ **v**). Then *A*_δ ∈ relint(*t*)
  for all small δ, and *t* meets each of [*C*,*A*_δ], [*A*_δ,*B*_δ] only at
  *A*_δ (their lines differ, since *f*(*C*) ≠ 0 and *f*(*B*_δ) ≠ 0). So
  *c*_A(±δ) = 1 ✔ — **the identity still holds** — but the degeneracy is
  carried along and **not removed**. This is §1.3's defect, and (P3-ii) is
  exactly its characterisation: it cannot happen for AKR's rule, happens for the
  pure translation iff ⟨**u**,**v**⟩ = 0, and is excluded by construction for the
  tilt.

**(P4) *p* = *C* ∈ 𝒟 (the fixed pivot; *D* symmetric).** Again by **[VV]** and
**Lemma 0** there is one *Q*-side *t* ∋ *C*, with *C* ∈ relint(*t*). Near *C*,
∂*P*(δ) = [*P*_{i−2},*C*] ∪ [*C*,*A*_δ]. The first is fixed and meets *t* only
at *C* (**Lemma 1**). The second contains *C* and meets *t* only at *C* provided
it is not collinear with *t* — which is what **δ₀ ≤ τ₁** buys. So
*c*_C(±δ) = 1 ✔. *(This case also does not arise for AKR's rule: there
[*C*,*A*_δ] stays on its own line and nothing near *C* changes at all. It is the
price of letting the neighbours rotate, and τ₁ is what pays it.)*

These exhaust ℱ. Summing (★) over ℱ:

> **Theorem (G-avg).** Assume (F), (VV), (G). For every δ with 0 < |δ| < δ₀,
>
> **|∂*P*(δ) ∩ ∂*Q*| + |∂*P*(−δ) ∩ ∂*Q*| = 2·|∂*P* ∩ ∂*Q*|.** ∎

and, by the pigeonhole AKR give, **some direction does not decrease the count.**

### 2.7 The other clauses

* **Clause 1, simplicity.** Only *s*⁻, *s*, *s*⁺ move, each by Hausdorff
  distance ≤ |δ|*K*_end < ρ₃/4, and non-adjacent sides of *P* are ≥ ρ₃ apart;
  adjacent sides still meet exactly at their shared (moved) vertex; no side
  degenerates to a point because |δ|*K*_end < ρ₄/4. So *P*(δ) is a simple
  *m*-gon. **AKR never state this** (Gap 6) and `Pair9` has it as a field.
* **Clause 2, finiteness and no new vertex-vertex coincidence.** δ₀ ≤ τ₂ keeps
  ℓ_δ off every *Q*-vertex and off every parallel *Q*-side; δ₀ ≤ τ₁ keeps the
  rotated neighbours off collinearity with every *Q*-side they meet; every
  other *Q*-side is transversal. *A*_δ, *B*_δ are within *r*/10 of *A*, *B*, and
  every *Q*-vertex is ≥ ρ₁ away.
* **Clause 3, what is removed.** For **every** admissible (**a**,**b**):
  **every *Q*-vertex in relint(*s*) is removed**, because it lies on ℓ₀ and
  the shifted side lies on ℓ_δ ≠ ℓ₀. A degeneracy at the moving endpoint *A* is
  removed **iff cross(**v**_{t_A}, **a**) ≠ 0** — always for AKR, iff
  ⟨**u**,**v**⟩ ≠ 0 for the pure translation, always for the tilt. A *Q*-vertex
  in relint(*s*⁻) is removed iff cross(**a**,**w**) ≠ 0 — never for AKR, usually
  for the repairs.
* **Clause 4, nothing new appears.** A new degeneracy would need either a
  *P*-vertex to land on a *Q*-side (only *A*_δ, *B*_δ move, and case (P3) shows
  *A*_δ ∈ ∂*Q* only when *A* ∈ ∂*Q* already), or a *Q*-vertex to land in the
  relative interior of a moving side (it would have to be within *r*/10 of that
  side, and ρ₂(i) puts every *Q*-vertex not already on a *P*-side at distance
  ≥ 3*r*). So **D(*P*(δ),*Q*) ≤ D(*P*,*Q*)**, with strict inequality whenever
  the shifted side carried a *Q*-vertex in its interior.

---

## 3. Gap 4: termination of "one by one"

AKR: "it is easy to get rid of the remaining degeneracies by **looking at the
sides one by one**". There is no induction, no monovariant, and no remark that
shifting a side **edits its two neighbours**, which may already have been
processed. [`akr-9-2-obligation.md`](../../docs/akr-9-2-obligation.md) §3.4
records this as Gap 4 and supplies clause 4 as a repair. Here is the argument in
full, with an explicit bound, plus a counterexample to the naive reading.

### 3.1 The potential function and the bound

> **Theorem (termination).** Assume (F), (VV), (G). Let
> *D*(*P*,*Q*) = #(vertex-side degeneracies). Then
>
> 1. **D(*P*,*Q*) ≤ *m* + *n*** — by Lemma 0, each of the *m*+*n* vertices lies
>    in the relative interior of at most one side of the other polygon.
>    **For two heptagons, *D* ≤ 14.**
> 2. A single shift never increases *D* (clause 4), and **strictly decreases it
>    whenever the shifted side carries a foreign vertex in its relative
>    interior** (clause 3, which holds for *every* admissible (**a**,**b**)).
> 3. Therefore **one pass over the sides of *P*, in any order, followed by one
>    pass over the sides of *Q*, removes every vertex-side degeneracy**, using
>    at most *m* + *n* shifts and never revisiting a side.

*Proof of 3.* A degeneracy is a pair (vertex *x* of one polygon, side *t* of the
other) with *x* ∈ relint(*t*). The *P*-pass: when side *s*_i of *P* is reached,
every *Q*-vertex still in relint(*s*_i) is cleared by clause 3, and by clause 4
no degeneracy is created, so the sides of *P* already processed stay clean even
though shifting *s*_i edits *s*_{i−1} and *s*_{i+1}. (If a *Q*-vertex on the
not-yet-processed *s*_{i+1} survives the rotation — case (P2-ii) — it is still in
relint of the new *s*_{i+1} and is cleared when that side's turn comes.) After
the pass, no *Q*-vertex lies on a side of *P*. The *Q*-pass does the same for
*P*-vertices on sides of *Q*, and by clause 4 it creates nothing, in particular
no new *Q*-vertex-on-*P*-side degeneracy. ∎

**Note which half of clause 3 this uses.** Only "a foreign vertex in the
*relative interior* of the shifted side is cleared", which holds for **every**
admissible (**a**,**b**) — including the pure translation. The endpoint half of
clause 3, which the pure translation can fail (§1.3), is **not** needed, because
a *P*-vertex on a *Q*-side is disposed of by shifting **that *Q*-side**, in the
*Q*-pass, where the *P*-vertex is an interior point, not an endpoint.

### 3.2 A counterexample to the naive reading — and why it matters

The reading "to remove a degeneracy at vertex *x*, shift a side **incident to
*x***" is natural and is **not** what makes the theorem work. On §1.3's witness

```
P = (0,0) (2,0) (4,0) (6,0) (6,4) (3,6) (0,4)
Q = (2,-2) (2,3) (5,3) (5,-2)          degeneracy: P-vertex (2,0) in Q-side [(2,-2),(2,3)]
```

repeatedly shifting the *P*-side at the offending vertex, with the pure
translation and δ capped at 2⁻²⁰ (i.e. a genuinely *small* parallel shift),
gives the degeneracy count

```
pure translation :  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1   (30 steps, never 0)
tilt             :  1 0                                                           (1 step)
AKR's rule       :  UNDEFINED at step 1
```

**The loop does not terminate.** The vertex slides up the *Q*-side for ever,
because the *Q*-side is perpendicular to the shifted side and the translation
moves the vertex *along* it — case (P3-ii). Two ways out, both proved above:
shift the *containing* side instead (§3.1), or use the tilt (§1.4).

*Honesty note.* With δ **unbounded** the same naive loop does escape this
configuration, after three shifts of size 1/2, 1/2, 1 — but only by jumping the
vertex clear past the *Q*-side's endpoint (2,3), which is a large shift, far
above any δ₀, and therefore outside the scope of AKR's sentence and of the
theorem in §2. The non-termination above is with δ ≤ 2⁻²⁰ throughout.

---

## 4. The attack

**I tried to break the repair and failed on the averaging identity; I succeeded
on clause 3, twice, and the second success is what produced the tilt.** All
tests are exact rational; δ is always a dyadic 2⁻ᵏ. Code: `repair.py`,
`attack.py`, `sweep3.py`, `attack_families.py`, `procedure2.py`,
`repair_controls.py`. Logs in `logs/`.

Each instance is a (configuration, side, δ, rule) quadruple, and three separate
things are checked: the **identity** (clause 5), **cleared** (clause 3, only
where the side carries a degeneracy) and **no new degeneracy** (clause 4).

### 4.1 Stratified random sweeps

Random simple polygons on an integer grid, filtered to (F), ¬(VV-degeneracy),
and at least one vertex-side degeneracy; every side shifted both ways at
δ = 2⁻²⁰ and 2⁻³⁰. Classes as in
[`akr-9-2-obligation.md`](../../docs/akr-9-2-obligation.md) §5.1: **I** a
*Q*-vertex inside the shifted side, **E** an endpoint of it inside a *Q*-side,
**IE** both, **N** neither.

| family | rule | tested | identity viol. | NOT cleared | deg. count rose | skipped: undefined |
|---|---|---|---|---|---|---|
| hexagons 6×6, 2 500 pairs, seed 11 | AKR | 4 588 | **0** | **0** | **0** | 596 (11.5 %) |
| " | translate | 5 184 | **0** | 188 | **0** | 0 |
| " | tilt | 5 184 | **0** | **0** | **0** | 0 |
| heptagons 7×7, 2 000 pairs, seed 23 | AKR | 5 166 | **0** | **0** | **0** | 504 (8.9 %) |
| " | translate | 5 670 | **0** | 182 | **0** | 0 |
| " | tilt | 5 670 | **0** | **0** | **0** | 0 |

Class breakdown of the 188 + 182 = 370 "NOT cleared": **all** are in class E or
IE, and **all** are the case (P3-ii) predicted by the proof — a *Q*-side
perpendicular to the shifted side through a moving endpoint. None is an
identity violation.

### 4.2 Targeted adversarial families

| family | usable configs | rule | tested | identity viol. | NOT cleared |
|---|---|---|---|---|---|
| **X1** 2–4 simultaneous degeneracies on the shifted side (132 / 72 / 26 configs at 2 / 3 / 4) | 230 | AKR | 460 | **0** | **0** |
| | | translate | 460 | **0** | **0** |
| | | tilt | 460 | **0** | **0** |
| **X2** straight vertices at **both** ends of the shifted side (*P* has four consecutive collinear vertices) | 769 | AKR | 0 | — | — (**1 538 / 1 538 UNDEFINED**) |
| | | translate | 1 538 | **0** | 50 |
| | | tilt | 1 538 | **0** | **0** |
| **X4** degeneracies at **both** moving endpoints simultaneously | 5 674 | AKR | 0 | — | — (**11 348 UNDEFINED**) |
| | | translate | 11 348 | **0** | **0** |
| | | tilt | 11 348 | **0** | **0** |
| **X5** **perpendicular** *Q*-sides at **both** moving endpoints | 6 000 | AKR | 0 | — | — (**12 000 UNDEFINED**) |
| | | translate | 12 000 | **0** | **12 000 (100 %)** |
| | | tilt | 12 000 | **0** | **0** |

**X5 is the attack that worked.** When the failure mode of §1.3 is *forced*, the
pure translation fails to clear in **12 000 of 12 000** instances — and the
averaging identity still holds in all 12 000, exactly as case (P3-ii) predicts.
The tilt clears all 12 000.

**X3, a *Q*-side nearly parallel to the shifted side.** *P* is the rectangle
(0,0)–(20,0)–(20,9)–(0,9); *Q* is a "V" touching *P*'s bottom side at (4,0) with
arms of slope 1/*k*. As *k* grows the crossing point slides ~*k* times further
for the same δ, so δ₀ must shrink like 1/*k* — the *K*_slide term of §2.3.
Exponents *e* at which the identity fails or the shift is rejected, δ = 2⁻ᵉ:

| *k* | 1 | 2 | 8 | 32 | 64 |
|---|---|---|---|---|---|
| AKR | {2} | {2} | {2,4} | {2,4,6} | {2,4,6,8} |
| translate | {2} | {2} | {2,4} | {2,4,6} | {2,4,6,8} |
| tilt | {2} | {2} | {2,4} | {2,4,6} | {2,4,6,8} |

**Identical for all three rules**, and the threshold moves by one exponent
roughly per doubling of *k*. (*k* = 4 and 16 gave a *Q* that fails the base
filter and were not tested.) This is a *quantitative* confirmation that δ₀
cannot depend on the shifted side alone — Gap 5, measured.

### 4.3 Non-vacuity controls — the checker must be able to fail

`repair_controls.py`; full output in `logs/repair_controls.log`.

| # | control | translate | tilt | AKR | fired? |
|---|---|---|---|---|---|
| **R1** | the identity at δ = 2⁻³ instead of 2⁻²⁰ | **40 / 427** | **41 / 426** | **73 / 364** | ✔ |
| **R2** | the identity with a **vertex-vertex** degeneracy present (§9.1 not yet run) | **35 / 313** | **35 / 313** | **49 / 281** | ✔ |
| **R3** | the wrong rule `skew` (*A* moves δ**n**, *B* moves 2δ**n**) | — | 0 / 600 | — | ✘ **did not fire** |
| **R3b** | the wrong rule `even` (*A*, *B* both move \|δ\|**n**, so the "two directions" are one) | **176 / 600** | 0 / 600 | — | ✔ |
| **R4** | clause 3 on §1.3's witness: must say NOT cleared for translate, cleared for tilt | NOT cleared | cleared | undefined | ✔ |

**R3 did not fire, and that is a finding, not a bug.** I expected `skew` — which
does *not* keep the shifted side parallel to *s*, so it is not of the form
*G*(**a**,**b**) at all — to violate the identity, and it did not, in 600 tests.
The reason is §2.5: at a point of *s* at parameter τ the skewed side is offset by
(1+τ)δ, which is a *nonzero multiple of δ with a fixed sign*, so Lemma 3 still
applies verbatim. **The averaging identity is far more robust than the choice of
shift rule**; what it is *not* robust to is (a) a δ that is not small (R1),
(b) a surviving vertex-vertex degeneracy (R2), and (c) a displacement that is
not odd in δ (R3b). I have reported the control as failing to fire rather than
quietly replacing it.

### 4.4 Totals

Across §4.1 and §4.2, at δ = 2⁻²⁰ and 2⁻³⁰:

> **36 200 exact-rational instances for the pure translation and 36 200 for the
> tilt — 72 400 in all — with 0 averaging-identity violations and 0 increases
> in the degeneracy count.**
> Clause 3 failed **12 420 times for the pure translation** (12 000 of them in
> the family X5 built to force it) and **0 times for the tilt**.
> AKR's own rule was tested on 10 214 instances with 0 violations of anything,
> and was **undefined on 25 990 further instances** where the two repairs were
> defined.

**This is a finite sample of small polygons on small integer grids with dyadic
δ. It does not prove anything.** §2 is the proof; §2 is unreviewed and not in
Lean.

### 4.5 The proof's closed forms, checked against brute force

`local_formula.py` evaluates the formulas of cases (P3-i) and (P2-i) directly
and compares them with a brute-force exact count of ∂*P*(δ) ∩ ∂*Q* inside a disc
of squared radius 2⁻²⁰ about the relevant point, at δ = 2⁻²⁴, on 500 random
hexagon pairs per rule.

| case | rule | agree | disagree | observed local counts 0 / 1 / 2 |
|---|---|---|---|---|
| **(P3-i)** moving endpoint | translate | 452 | **0** | 148 / 156 / 148 |
| | tilt | 510 | **0** | 163 / 184 / 163 |
| | AKR | 472 | **0** | 156 / 160 / 156 |
| **(P2-i)** *Q*-vertex on the **rotating** neighbour side | translate | 398 | **0** | 103 / 192 / 103 |
| | tilt | 398 | **0** | 103 / 192 / 103 |
| | AKR | **0 instances** | — | — |

**1 434 + 796 = 2 230 agreements, 0 disagreements**, and all three local values
0, 1, 2 occur in every row, so the check is not vacuous.

The last row is a structural confirmation of the proof rather than a numerical
one: **case (P2-i) is empty for AKR's rule**, because there **a** = **w** forces
cross(**a**,**w**) = 0 and the neighbour side never leaves its own line. The
rotating-neighbour case exists only for the repair, and it is the one the §4 of
[`akr-9-2-obligation.md`](../../docs/akr-9-2-obligation.md) had no reason to
consider.

### 4.6 Running the whole procedure

`procedure2.py`: one pass over *P*'s sides, then one over *Q*'s, δ halved until
the acceptance test of §3.1 holds (identity, clause 3 for what the theorem
guarantees, clause 4). Random pairs with (F), ¬(VV-degeneracy), ≥ 1 vertex-side
degeneracy.

| | AKR's rule | pure translation | tilt |
|---|---|---|---|
| **hexagons, 500 configs, seed 31** | | | |
| all degeneracies cleared | 415 | **500 / 500** | **500 / 500** |
| undefined (straight vertex) | **85 (17.0 %)** | 0 | 0 |
| final count decreased | **0** | **0** | **0** |
| final count preserved / increased | 110 / 305 | 138 / 362 | 140 / 360 |
| shifts used (bound *m*+*n* = 12) | ≤ 4 | ≤ 4 | ≤ 3 |
| **heptagons, 400 configs, seed 41** | | | |
| all degeneracies cleared | 344 | **400 / 400** | **400 / 400** |
| undefined (straight vertex) | **56 (14.0 %)** | 0 | 0 |
| final count decreased | **0** | **0** | **0** |
| final count preserved / increased | 91 / 253 | 108 / 292 | 108 / 292 |
| shifts used (bound *m*+*n* = 14) | ≤ 4 | ≤ 4 | ≤ 4 |
| max initial *D* observed | 5 | 5 | 5 |

The 17.0 % reproduces
[`akr-9-2-obligation.md`](../../docs/akr-9-2-obligation.md) §5.4's 17.7 % on an
independent sample with a different procedure. The observed shift counts are
well inside the *m*+*n* bound, and no run ever lost an intersection point.

**A methodological note, because it nearly became a false alarm.** With a weaker
acceptance test — "the total degeneracy count must not *rise*" — 1 configuration
in 500 finished the two passes with a degeneracy left, for **both** repairs. It
is not a counterexample: the accepted δ was 2⁻², far above δ₀, and it swept a
*Q*-side clean **across** a *P*-vertex, destroying one degeneracy and creating
another so the total was unchanged. Tightening the test to what §2 actually
proves — the total must drop by at least the number of degeneracies clause 3
guarantees to clear — removed it, and the runs above use the tightened test. The
weaker test, and why it is wrong, are written out in `do_shift`'s docstring in
`procedure2.py`; I am recording the false alarm rather than deleting it.

---

## 5. What this gives the project

### 5.1 The hypotheses are preserved along the way

The two-pass procedure applies the theorem *repeatedly*, so its hypotheses must
survive each step. They do: clause 2 says ∂*P*(δ) ∩ ∂*Q* stays finite — (F) — and
that no vertex of *P*(δ) is a vertex of *Q* — **(VV)** — for 0 < |δ| < δ₀; and
clause 1 says *P*(δ) is still simple. **(G) is the only hypothesis that has to be
re-established at each step, and for the tilt it is automatic.** For AKR's rule
it is (NC), and (NC) is exactly what can fail, at any step, not only the first.

### 5.2 Consequence for `lean/AKR9.lean`

The consumer is, per
[`akr-9-2-obligation.md`](../../docs/akr-9-2-obligation.md) §6.1,

```lean
theorem points_le_38_of_no_vertex_on_boundary (R : Pair9) (h9 : NoVertexOnOther R) :
    (points9 R).ncard ≤ 38
```

with `Pair9.simpleP/simpleQ : SimpleClosed`, whose own comment says three
collinear vertices are **allowed** — "that is the entire point" — and whose
`Fin 7` blocks deleting a straight vertex. The vertex-side half of the reduction
(A9-red) needs: from any `Pair9` with `points9` finite, reach a `Pair9` with no
vertex of either polygon on the boundary of the other and no smaller count.

| requirement | AKR's rule | pure translation | **tilt** |
|---|---|---|---|
| defined when *P* has three consecutive collinear vertices | **no** (Gap 1) | yes | **yes** |
| keeps exactly 7 vertices per polygon (`Fin 7`) | yes | yes | **yes** |
| output still `SimpleClosed` | yes (§2.7 clause 1; **not in AKR**) | yes | **yes** |
| count never decreases | yes (§2.6) | yes | **yes** |
| every vertex-side degeneracy removed | yes | yes, via §3.1's two passes | **yes, one pass suffices** |
| terminates, with a bound | ≤ 14 shifts (§3.1; **not in AKR**) | ≤ 14 | **≤ 14** |
| all data rational, so a rational input gives a rational output | yes | yes | **yes** |

**The tilt meets every requirement with no hypothesis on *P* beyond simplicity,
and the whole construction is rational.** So the vertex-side half of §9 can be
replaced by §2 + §3 of this document, and the project would no longer be
importing §9.2 — it would be proving the statement §9.2 asserts.

### 5.3 Three honest caveats

1. **It is not AKR's operator.** The tilt agrees with AKR's rule on no
   configuration at all (different **a**), and the *theorem* is more general than
   AKR's sentence rather than a reading of it. A referee asking "does this
   project import AKR §9.2?" should be told: for the vertex-side half, no —
   it replaces it. §1.1's remark that the translation matches AKR's *words*
   better than their *picture* is a remark, not a defence.
2. **(VV) is still §9.1's conclusion, and §9.1 is still open.** Control R2 shows
   the repair fails without (VV) exactly as AKR's rule does — 35 / 313 for both
   repairs at δ = 2⁻²⁰ — and
   [`akr-9-2-obligation.md`](../../docs/akr-9-2-obligation.md) §5.5 has an exact
   counterexample where *both* directions lose. **§9.1's "One final point"
   uniform-α estimate is upstream of everything here and is not touched.**
   This document does **not** close §9.
3. **Nothing here is machine-checked.** §2 and §3 are pen-and-paper proofs by
   one agent, unreviewed. The 72 400 tests are evidence, not proof, and they are
   small polygons on small integer grids with dyadic δ.

---

## 6. What remains

| item | state |
|---|---|
| shift operator defined without (NC) | **done** — §1.4, the tilt; and the whole family *G*(**a**,**b**), §1.1 |
| averaging identity for it, with explicit δ₀ | **proved on paper**, §2, hypotheses (F) + (VV) + (G) only |
| the identity attacked | **survived** 72 400 exact instances incl. 5 targeted adversarial families; the controls fire |
| clause 3 attacked | **broken for the pure translation** (case (P3-ii), X5: 12 000 / 12 000), **fixed by the tilt** |
| Gap 4, termination | **done** — potential function *D* ≤ *m*+*n* = 14, one pass per polygon, §3.1; plus a non-termination counterexample for the naive reading, §3.2 |
| Gap 5, δ₀ | **done** — §2.3, and §4.2's X3 shows the *K*_slide term is real |
| Gap 6, simplicity of the output | **done** — §2.7 clause 1 |
| formalisation in Lean | **not started.** No `.lean` file was created or modified and no build was run |
| (VV), i.e. §9.1 | **open**, and necessary — see §5.3 item 2 |
| review by a mathematician | **none** |

**f(7,7) = 38 is not proved by anything in this document.** It remains a
candidate resting on §9 of Ackerman–Keszegh–Rote, of which this closes, on
paper and unreviewed, the vertex-side half's two structural defects.

---

# Revision of 2026-09-21 (later the same day), by a third agent: §2.4's (Loc) repaired

**This section supersedes the proof of (Loc) in §2.4 above. §2.4 is left in
place unchanged** — this project keeps superseded reasoning visible — but its
proof of (Loc) is **incomplete as written** and should be read together with
this revision. The *statement* of (Loc), the constant δ₀ of §2.3 and every
other part of §2 are unaffected: **no new term is needed in δ₀.**

Full write-up, all counts, and the verification code:
[`LOC_AND_DELTA0.md`](LOC_AND_DELTA0.md), `endpoint_fact.py`, `loc_check.py`.
Nothing here is in Lean; no Lean build was run; no git command was run;
*f*(7,7) = 38 is not proved by any of it.

## R1. The defect

[`ATTACK.md`](ATTACK.md) §4.2 exhibits an exact certificate

```
P = (0,0) (10,0) (14,10) (4,18) (-8,12) (-12,4) (-6,-4)
Q = (5, 2^-12) (11,20) (-2,22) (-4,6)      |dP n dQ| = 2, finite, no (VV), no vertex-side degeneracy
shift side i = 1, delta = 2^-13:   AKR (2,2,2) identity TRUE
                                   tilt / translate (2,4,2) identity FALSE
```

on which the **rotating** neighbour *s*⁻ sweeps across a *Q*-feature for one
sign of δ only. This is **not** a counterexample to the theorem — δ₀ ≈ 2⁻²³·⁸
excludes it, and at δ = 2⁻¹⁴ the identity is restored — but §2.4's proof does
not exclude it. The offending *Q*-side *t* = [(5,2⁻¹²),(11,20)] **meets *s*⁺,
and neither *s* nor *s*⁻**, so:

* ρ₂(ii) is a minimum over *Q*-sides **disjoint from** *s*⁻ ∪ *s* ∪ *s*⁺ — silent;
* *K*_rot and τ₁ are extrema over *Q*-sides **meeting *s*⁻** — silent.

§2.4 step "since dist(*x*,*e*₀) < *r*/10 < ρ₂, *t* is not disjoint from
*s*⁻ ∪ *s* ∪ *s*⁺; by δ₀ ≤ τ₁ and Lemma 1, *t* is not parallel to line(*e*_δ)"
is therefore a **non sequitur**: it establishes only that *t* meets the
*union*, while Lemma 1, τ₁ and *K*_rot all need *t* to meet **the particular
base side that carries *x***.

## R2. The missing fact, stated and proved

> **Fact (E) (endpoint attainment, planar).** Let σ = [*p*,*q*] and *t* = [*c*,*d*]
> be closed segments in **ℝ²** with **σ ∩ *t* = ∅**. Then
> dist(σ,*t*) = min( dist(*p*,*t*), dist(*q*,*t*), dist(*c*,σ), dist(*d*,σ) ):
> the distance is attained at a pair in which at least one point is an endpoint.

*Proof.* Put **e** = *q*−*p*, **f** = *d*−*c* and
*g*(*s*,τ) = ‖(*p*+*s***e**) − (*c*+τ**f**)‖² on the compact convex square
[0,1]². A minimiser exists. If it is on ∂[0,1]² then *s* ∈ {0,1} or τ ∈ {0,1},
which is the claim. Otherwise ∇*g* = 0 there, i.e. ⟨**v**,**e**⟩ =
⟨**v**,**f**⟩ = 0 with **v** = *x*\*−*y*\*. Disjointness gives **v** ≠ 0; **in
the plane** **v**^⊥ is one-dimensional, so **e** ∥ **f**, so the Hessian
*H* = [[⟨**e**,**e**⟩,−⟨**e**,**f**⟩],[−⟨**e**,**f**⟩,⟨**f**,**f**⟩]] has
det *H* = ‖**e**‖²‖**f**‖²−⟨**e**,**f**⟩² = 0. Along the kernel direction of *H*
the quadratic *g* is affine with slope ⟨∇*g*,ν⟩ = 0, hence **constant**;
following it to the boundary of the square (compact, convex) produces a
minimiser with *s* ∈ {0,1} or τ ∈ {0,1}. ∎

Both hypotheses are needed: for crossing segments the identity fails (left side
0, right side positive), and in ℝ³ it fails for skew segments (*x*-axis vs
*y*-axis at height 1). Neither (F), (VV) nor simplicity is used — this is plane
geometry.

> **Corollary (E′) / (Loc-1).** Under (F), **(VV)**, *P*, *Q* simple: if a side
> σ of *P* and a side *t* of *Q* are **disjoint** then dist(σ,*t*) ≥ **ρ₂(i)**.
> Contrapositive: **dist(σ,*t*) < 3*r* ⟹ σ ∩ *t* ≠ ∅**, since 3*r* ≤ ρ₂ ≤ ρ₂(i).
>
> *Proof.* By Fact (E) the distance equals one of four vertex-to-side
> distances, each with the vertex **off** that side (else σ ∩ *t* ≠ ∅); each is
> therefore one of the terms ρ₂(i) minimises over. ∎

*(ATTACK.md §4.4's one-line version of this — "for every Q-side t with no
endpoint on s⁻ and with C, A ∉ t, dist(s⁻,t) ≥ ρ₂(i)" — is **false**: a Q-side
may cross s⁻ transversally with all four endpoints off the other segment. The
hypothesis has to be disjointness, which is what Fact (E) needs.)*

## R3. The repaired proof of (Loc)

Replaces the paragraph beginning "*Proof.* ∂*P*(δ) and ∂*P* agree away from the
three moving sides" in §2.4. Statement of (Loc), ℱ, *U*_p, *r* and δ₀ unchanged.

*Proof.* Let 0 < |δ| < δ₀ and let *x* ∈ ∂*P*(δ) ∩ ∂*Q* lie on a moving side
*e*_δ with base side *e*₀ ∈ {*s*⁻,*s*,*s*⁺}; let *t* ∋ *x* be a *Q*-side.

1. Each moving side is a hinged image of its base: *C*+τ(*A*_δ−*C*) is at
   distance τ|*A*_δ−*A*| ≤ |δ||*c*_a**a**| from *C*+τ(*A*−*C*) ∈ *s*⁻, and
   symmetrically for [*B*_δ,*D*] and [*A*_δ,*B*_δ]. Hence
   **dist(*x*, *e*₀) ≤ |δ|*K*_end < *r*/10** — the distance to **that side's
   own base side**.
2. So dist(*t*,*e*₀) < *r*/10 < 3*r*, and **(Loc-1) gives *t* ∩ *e*₀ ≠ ∅.**
   *This is the step that was missing.*
3. Lemma 1 now applies to (*t*,*e*₀): *t* ∦ *e*₀. For *e*₀ = *s* that is
   ⟨**v**_t,**n**⟩ ≠ 0 (so *K*_slide covers *t*); for *e*₀ = *s*⁻ (resp. *s*⁺)
   it is cross(**w**,**v**_t) ≠ 0, so *t* is one of the *Q*-sides τ₁ and
   *K*_rot range over, and δ₀ ≤ τ₁ keeps *t* off line(*e*_δ) as well. Hence
   *t* ∩ line(*e*_δ) = {*x*} and *t* ∩ line(*e*₀) = {*X*₀}, with
   |*x*−*X*₀| ≤ |δ|max(*K*_slide,*K*_rot) < *r*/10.
4. By step 2, ∅ ≠ *t* ∩ *e*₀ ⊆ *t* ∩ line(*e*₀) = {*X*₀}, so **X₀ ∈ e₀**, hence
   *X*₀ ∈ 𝒟 ∩ (*s*⁻∪*s*∪*s*⁺) ⊆ ℱ and *x* ∈ *U*_{X₀} ⊆ *U*.
5. Conversely every point of 𝒟 on a moving base side lies in ℱ, hence in *U*;
   and ∂*P*(δ), ∂*P* agree off the moving sides. ρ₁ ≥ 3*r* makes the *U*_p
   pairwise disjoint. ∎

**The old second branch** — "if *X*₀ ∉ *e*₀ … ρ₂(i) forces *P*_k ∈ *t*" — is now
**unreachable** (step 4), so the repaired proof is *shorter* than the one it
replaces. It is left above as superseded reasoning.

**§2.3 is unchanged.** What changes is only how ρ₂(i) is used: on **segment
pairs**, via Fact (E), rather than on vertex–side pairs alone.

## R4. Verification that the repaired constant covers the certificate

`loc_check.py`, exact rationals, log `logs/loc_check.log`.

On ATTACK.md's certificate: dist(*t*,*s*⁻)² = ρ₂(i)² = ε² = 2⁻²⁴ exactly, with
both attained at the *Q*-vertex (5,ε) — an **endpoint** of *t*, as Fact (E)
predicts. For all three rules 3*r* ≤ ρ₂ ✔, dist(*t*,*s*⁻) ≥ ρ₂(i) ≥ 3*r* ✔, and
|δ|*K*_end < *r*/10 < dist(*t*,*s*⁻) ✔ (*K*_end = 10.77 for the repairs,
11.60 for AKR; *r* = 8.138·10⁻⁵; δ₀ = 6.7194·10⁻⁸). Directly: the rotated *s*⁻
meets *t* in **0 of 16** exact tests at |δ| ≤ 2⁻²⁴, for each rule.

**Non-vacuity**, same code at larger δ: the rotated *s*⁻ **does** meet *t* at
|δ| = 2⁻⁸ … **2⁻¹³**, sign + only, for the pure translation and the tilt, and
at **no** exponent for AKR's rule. That is the sweep, isolated — one sign only,
absent from AKR's rule, and switching off between 2⁻¹³ and 2⁻¹⁴ exactly where
ATTACK.md's identity table flips back to (2,2,2).

Random-configuration checks, all exact, all with (F) and ¬(vertex–vertex):

| check | instances | violations | control |
|---|---|---|---|
| (Loc-1): disjoint ⟹ dist² ≥ ρ₂(i)² | **84 264** (*t*,σ) pairs | **0** | bound inflated 10× → **49 062** violations |
| ρ₂(i) ≥ 3*r* | every (config, side) of both samples (≤ 4 732) | **0** | — |
| ATTACK.md §4.4's class present (*t* meets the union but not σ) | **19 167** | covered **19 167 / 19 167** | — |
| (Loc) as a set identity, δ below δ₀ | **18 450** (tilt 6 342, translate 6 342, AKR 5 766) | **0**; *U*_p always disjoint; no point in two *U*_p | same identity at δ = 2⁻², 2⁻⁴ → **7 292 / 10 926** violations |

## R5. What this revision does not do

It does not re-derive or re-audit *K*_end, *K*_slide, *K*_rot; step 3 uses them
as §2.3 defines them, and their soundness rests on ≈ 26 000 instances in
ATTACK.md plus 18 450 here — evidence, not proof. It does not touch (VV), i.e.
§9.1, which remains open and necessary. It is pen-and-paper, by one agent,
unreviewed, and **not machine-checked**.

## R6. Three corrections to §2.3's δ₀ (same revision, 2026-09-21)

Full statement, proof, numbers and controls:
[`LOC_AND_DELTA0.md`](LOC_AND_DELTA0.md) §3; code `delta0_rational.py`.

**(a) "finitely many strictly positive rationals" is false.** ρ₁–ρ₄ are
distances and *K*_end, *K*_slide, *K*_rot are built from norms, so with integer
input they are square roots of integers. Only τ₁ and τ₂ are rational. The
sentence should read **"finitely many strictly positive reals"**.

**(b) the empty `min`.** ρ₂(ii), ρ₃, τ₁ and τ₂ range over families that can be
empty; **min ∅ := +∞** is the intended reading and must be said. ρ₁, ρ₂(i) and
ρ₄ are never empty for *m*, *n* ≥ 3 under (F) + **[VV]**. **Measured: τ₁'s
family is empty in 16–18 % of (configuration, side, rule) instances**, so this
is not a corner case.

**(c) δ₀ is not scale-invariant**, because of the `max(…, 1)` guard, whose
constant 1 is not dimensionless while every *K* scales like λ. Measured: of
560 rescalings, 16 break the invariance, all at λ < 1 with the guard binding.
The guard only ever *shrinks* δ₀, so §2 is unaffected; but the invariance that
should be quoted is the **equivariance of the operator**,
*G*(λ*P*,*i*,δ) = λ*G*(*P*,*i*,δ), together with the scale-invariance of every
conclusion of §2.

**The constructive replacement.**

> **Theorem (rational δ₀).** For every integer *M* ≥ 1, every *m*, *n* ≥ 3,
> every pair of simple polygons *P*, *Q* with **integer** coordinates of
> ‖·‖_∞ ≤ *M* satisfying **(F)** and **(VV)**, every side index *i*, and the
> **tilt** or the **pure translation**: with min ∅ = +∞,
>
> > **δ₀ ≥ 1/(61440 *M*⁷) ≥ 2⁻¹⁶ *M*⁻⁷.**
>
> (For AKR's Fig.-28 rule, where it is defined, δ₀ ≥ 1/(353280 *M*⁹).)
> For **rational** coordinates with common denominator *D*, apply this to
> (*DP*, *DQ*) with *M* = *D*·max‖·‖_∞ and pull back along the equivariance.

Proof in `LOC_AND_DELTA0.md` §3.4, from ρ₁ ≥ 1/(64*M*⁴), ρ₂ ≥ ρ₃ ≥ 1/(3*M*),
ρ₄ ≥ 1, *K*_end ≤ 4*M*, *K*_slide ≤ 23*M*³, *K*_rot ≤ 32*M*³,
τ₁ ≥ 1/(16*M*²), τ₂ ≥ 1/(8*M*²). **Fact (E) of R2 is used twice more, for
ρ₂(ii) and ρ₃.** A formalisation may take δ := 2⁻¹⁷*M*⁻⁷ and never construct
δ₀ at all.

Verified on **2 929 exact instances per rule**, 0 failures of any of the ten
term bounds or of the composite; **the bound is loose by ≥ 2¹⁴·⁹ everywhere
sampled**, so it only breaks under a ≥ 10⁶ strengthening (5/511 at 10⁶,
209/511 at 10⁷, 511/511 at 10⁹) — the naive "understate *M*" control, which
works for `eps_uniform`'s Corollary U′, **does not fire here and is reported as
not firing**. The *sharp* constructive bound δ₀^ℚ (square roots replaced by
rational bounds at precision *S*) is by contrast exact to a relative 2⁻⁴⁰:
rigorous two-sided brackets give max δ₀^UB/δ₀^ℚ = 1 at *S* = 2⁴⁰ over 1 176
instances.

---

# Appendix of 2026-09-22, by a fourth agent: §2.3's three *K* constants audited

Full derivations, certificates, counts and controls:
[`K_CONSTANTS.md`](K_CONSTANTS.md); code `k_constants.py`; logs
`logs/k_constants_*.log`. Exact rationals throughout. Nothing is in Lean, no
Lean build was run, no git command was run, and *f*(7,7) = 38 is not proved by
any of it.

This closes the hole R5 names ("does not re-derive or re-audit *K*_end,
*K*_slide, *K*_rot"). **§2.3 is left unchanged above; read it with this.**

* ***K*_end is correct and sharp.** \|*A*_δ−*A*\| = \|δ\|\|*c*_a**a**\| is an
  identity; extending it to the whole of each moving side needs one convexity
  step (a convex combination of two displacements has norm ≤ the larger).
  New consequence, used twice below: **K_end ≥ \|**u**\|** for *every*
  admissible (**a**,**b**), by Cauchy–Schwarz on \|⟨**a**,**n**⟩\| ≤ \|**a**\|\|**n**\|.
* ***K*_slide is correct and is an exact identity, not an inequality.** Since
  both endpoints lie on ℓ_δ, line([*A*_δ,*B*_δ]) = ℓ_δ has direction **u**
  independent of δ, and the crossing point with *t* slides by exactly
  \|δ\|*N*\|**v**_t\|/\|⟨**v**_t,**n**⟩\|. It does not depend on the rule.
* ***K*_rot as defined is WRONG* — it is the δ→0 limit.** The exact law is
  > \|*x*−*X*₀\| = \|δ\|·λ₀·\|cross(*c*_a**a**,**w**)\|·\|**v**\| /
  > \|cross(**v**, **w**+δ*c*_a**a**)\|,
  >
  whose denominator is δ-dependent and shrinks exactly as δ approaches τ₁.
  Exact certificate (pentagons, integer coordinates ≤ 3, (F), (VV), **AKR's
  rule undefined**, δ₀ = 1/60): the true displacement is 1/(1−δ) times the
  claimed \|δ\|*K*_rot for **every** δ ∈ (0,δ₀), one sign only; sup = 60/59.
  A heptagon-pair certificate at *M* = 6 gives 100/99. 31 violations in 15 636
  exact random instances; **0** for AKR's rule, where *s*⁻ does not rotate and
  the displacement is identically 0.
* **δ₀ does not change.** τ₁^t·*K*_rot ≥ \|**w**\| ≥ ρ₄ ≥ 3*r* forces
  \|δ\| < δ₀ ≤ τ₁^t/30, so the error factor is < 30/29. §R3 step 3's
  "\|*x*−*X*₀\| < *r*/10" becomes "< *r*/9.67"; step 4 only ever needs "< *r*".
  **The single edit required is to that one sentence of §R3.**
* **§2.3's `max(…,1)` guard can be deleted**, since *K*_end ≥ \|**u**\| ≥ 1 for
  integer data; deleting it makes δ₀ exactly scale-invariant (0/1 260
  failures, against 186/1 260 with the guard, all at λ < 1).
