# (R3) — closing pass, 2026-09-21

Target: hypothesis **14 of `docs/akr-9-assembly.md` §3**, `(R3)` = open item
(O1): *there is one choice of the direction tuple `(E_i)`, admissible under
AKR's rule, for which every **removable** witness polynomial is not identically
zero.*

Inputs read in full before any code was written: `R3.md` (all four findings),
`FINDINGS.md` §3–§4, `archive/notes/hostile-review-2026-09-21.md` §1, §1b, §2, §4,
`docs/akr-9-assembly.md` §3, and the sources `r3lib.py`, `r3.py`, `r3b.py`,
`r3controls.py`, `uniform.py`, `epslib.py`.

All arithmetic is exact `fractions.Fraction`. No float. **No Lean build was
run.** No git command was run.

**This does not prove `f(7,7) = 38`.** Everything here is conditional on the
unreviewed §9 import, and in particular on AKR's Theorem 17.

---

## 0. Executive summary

**(R3) is closed on paper, and constructively — but not in the form the
assembly's open item (O1) describes, and the pass found one real hole in the
existing argument before closing it.**

1. **(R3) splits into two inequivalent statements** and the project has been
   conflating them (§1). **(R3-weak)**: no *required* witness is identically
   zero. **(R3-strong)**: no *removable* witness is, i.e. `Z(E) = Z_forced`.
   Every consumer currently written into `akr-9-assembly.md` §3 needs only the
   weak one.

2. **Theorem C (§3): (R3-weak) is constructive and per-apex.** At each
   coincidence take the first non-parallel ray pair `(a_k,b_l)` and set
   `E_{P_i} = t·b_l − a_k` for the first `t ∈ {1,2}` with `E_{P_i}` not parallel
   to `a₁` or `a₂`. Such a `t` always exists (two-line proof). This gives (R1),
   (R2) and the finiteness requirement, hence (G1)–(G5). **The per-apex choices
   are provably independent** — the `ε`-coefficient of every required witness
   involves only that apex's own free coordinate pair and fixed geometry — so
   objection 1 (Theorem 17 determines the dependent directions) and objection 2
   (`E_v = 0` off `C`) **cannot touch the required witnesses at all**. That is
   strictly stronger than `R3.md`'s Theorem R3, which only says they cannot bite
   generically.

3. **Theorem C2 (§4): (R3-strong) is also constructive**, by a one-parameter
   Kronecker substitution `(s_m,t_m) = (τ^{3^{2m}}, τ^{3^{2m+1}})` with an
   explicit a-priori bound of `3276·3^{n−1}` bad values of `τ`, `n = 2|C| ≤ 14`.
   Empirically `τ = 2` works on 1327 of 1400 configurations and `τ ≤ 4` on all
   of them.

4. **THE HOLE (§8): (R3-weak) is not enough, and `R3.md`'s requirement list was
   incomplete.** A direction satisfying (R1), (R2) and the finiteness
   requirement, and passing the entire existing end-to-end battery, can
   **create a vertex-side degeneracy that was not in the input** — contradicting
   AKR's own "while leaving vertex-side degeneracies intact". Exact certificate
   **K7** (§8.4): input with **no** vertex-side degeneracy at all, output with
   one, at every `ε ∈ (0,ε₀)`.

5. **Theorem D⁺ (§8.3) closes it, and characterises the phenomenon completely.**
   A new vertex-side degeneracy can arise **only** at a coincidence apex, and
   **only** when `E_{P_i}` is parallel to one of the four rays `a₁,a₂,b₁,b₂`.
   Forbidding all four — **Theorem C⁺**, `t ∈ {1,2,3}`, still per-apex and
   `O(|C|)` — prevents it. This is `e9_directions`' unstated extra clause,
   finally stated and proved, and it explains `FINDINGS.md` Finding 2's 96/96.

6. **No counterexample was found** despite five new generators built so that
   Theorem 17's constraint is active at the apex itself (§5), and I now believe
   none of that shape exists, for the structural reason in item 2.

7. **By-product (§7.1): §9.1 provably cannot reach full general position.**
   `FullGP` — which `lean/ConfigBridge.lean` actually consumes — is unreachable
   by any admissible direction on **270/270** configurations, with a firing
   two-armed control. AKR's rule freezes most vertices, so any collinear triple
   among frozen vertices is permanent. `FullGP` must come from §3, as
   `akr-9-1-obligation.md` §2.4 already says.

8. **Three corrections are owed to other documents** (§2.1, §9.2, §10): `R3.md`
   Lemma R3-C cites the `e9_directions` Corollary whose proof the hostile review
   refuted (the repair needs *simplicity*, not finiteness); and
   `akr-9-assembly.md` row 14's status text, its `R3 ← S5′` dependency edge
   (S5′ is refuted and (R3) does not use it), and its 18.6 % evidence figure are
   all wrong or stale.

9. **What remains: Theorem 17 is an import, nothing is in Lean, and (NC) =
   open item (O2) is untouched and unaffected.** After this pass **(O2) is the
   only genuinely open item of §9.1/§9.2 I can identify.** §11 argues that
   Theorem C⁺ is dramatically easier to formalise than Theorem R3 would have
   been: it is four bilinear forms on `ℝ²` and a case split, with no measure
   theory and nothing Zariski.

---

## 1. What is actually being asked, with the quantifiers written out

Notation of `R3.md`: `V⁰ ∈ (ℝ²)¹⁴`, `C` the vertex-vertex coincidences, `D` the
dependent vertices, `F = [14] ∖ D`, `W` the 1638-element witness family,
`Λ : (ℝ²)^C → (ℝ²)¹⁴` AKR's rule composed with Theorem 17, `L = im Λ`,
`A = Λ(∏_{(i,j)∈C} C_{ij})` with `C_{ij}` an `e9_directions` cone, and

  `Z(E) := { p ∈ W : p(·;E) ≡ 0 in ε }`,   `Z_forced := ⋂_{E ∈ L} Z(E)`.

Two inequivalent readings of (R3) are in circulation, and the project has been
conflating them. They must be separated, because **one of them is proved and
the other is not, and only the weaker one is used**.

> **(R3-strong).** `∃ E ∈ A . Z(E) = Z_forced`.
>
> This is the literal sentence in `akr-9-assembly.md` (O1) ("every `p ∈ W` with
> `p ≡ 0` should vanish identically for every direction tuple `E` admissible
> under AKR's rule") and in `FINDINGS.md` Finding 4.

> **(R3-weak).** `∃ E ∈ A . Z(E) ∩ Req(V⁰) = ∅`, where `Req(V⁰)` is the
> explicit list of witnesses whose identical vanishing breaks a *stated*
> deliverable of §9.1 — (G1), (G2c) and (G5) = hypothesis 13 (Fin-out).

`(R3-strong) ⟹ (R3-weak)` given `Z_forced ∩ Req = ∅`, which is `R3.md`'s
Theorem R3-D. The converse fails: (R3-weak) tolerates leftover removable zeros
provided they are harmless.

**Which one does the assembly actually consume?** Reading §3 of
`akr-9-assembly.md` row by row: hypothesis 13 (Fin-out) is derived from (R3) by
`R3.md` Theorem R3-F, whose proof uses exactly one witness per collinear-and-
meeting side pair; hypothesis 7 (R2) is derived from membership in `A`, not
from (R3) at all; (G1) uses the `Δ` witnesses. **No consumer of (R3) in the
assembly needs more than (R3-weak).** (R3-strong) is insurance against a
requirement nobody has enumerated — which is a real concern (§7) but is not a
hypothesis of anything currently written down.

---

## 2. The status of (R3-strong) before this pass, and the one gap I found in it

`R3.md` Theorem R3 proves **(R3-strong)**, and the hostile review §2.6 re-derived
every step. I re-read both and agree with the review: the argument is correct.
But it has one load-bearing citation that is **false as cited**, and the defect
is recorded elsewhere in the same review and was never propagated.

### Gap 2.1 — Lemma R3-C's nonemptiness clause cites a refuted proof

Lemma R3-C says the cone `C_{ij}` is

> "nonempty because AKR's finiteness assumption forbids all four rays being
> parallel (`e9_directions` **Corollary**)".

Hostile review **§1.1** gives an exact certificate that this Corollary's stated
proof is **false**, and that the hypothesis it actually needs is **simplicity**,
not finiteness:

    a1 = (1,0)  a2 = (2,0)   b1 = (-1,0)  b2 = (-2,0)

— four mutually parallel rays, no working direction in either model, and yet
`∂P ∩ ∂Q` locally `{O}`, i.e. **finite**. Finiteness alone does not exclude the
failure case. `akr-9-assembly.md` row 4 has absorbed this correction
("failure case excluded by **(Simp)**, not (Fin) — corrected 2026-09-21");
`R3.md` Lemma R3-C has not.

**This is not fatal and the repair is one sentence**, because *both* hypotheses
are AKR standing assumptions. It is stated correctly as Theorem C(i) in §3
below, and it needs **both**:

> If `a₁,a₂,b₁,b₂` are all mutually parallel then, `P⁰` being simple, `a₁` is
> not a *positive* multiple of `a₂` (two sides at `P_i` would overlap in a
> segment), so `a₁,a₂` are antiparallel and `[P_i,P_{i-1}] ∪ [P_i,P_{i+1}]`
> contains a two-sided neighbourhood of `P_i` in the common line `ℓ`.
> Symmetrically for `Q`. Two such neighbourhoods overlap in a positive-length
> segment, so `∂P⁰ ∩ ∂Q⁰` is infinite, contradicting **(F)**.

So the correct dependency for the existence of the cone is **(Simp) ∧ (Fin)**.
I record this because `akr-9-assembly.md`'s dependency table still lists (R3) as
depending on **S5′ = (E-clean)**, and S5′ was *refuted* on 2026-09-21
(hostile review §1b; row 5 of the hypothesis list is struck through). **(R3)
does not depend on (E-clean) at all** — nothing in Theorem R3 or in §3 below
uses it. That table edge is wrong in a way that makes (R3) look worse than it
is: it appears to rest on a refuted lemma, and does not.

### What Theorem R3 does and does not deliver

It delivers `∃E`. It does **not** deliver an `E`. Its bad set `B` is a union of
up to 1638 real algebraic hypersurfaces and the argument is "a nonempty open
set is not contained in a Lebesgue-null set" — true, but it gives no procedure,
no bound, and nothing a Lean formalisation could `decide`. For a step that is
supposed to be *performed* by §9.1 on a concrete pair of heptagons, that is the
wrong shape of statement. §3 replaces it.

---

## 3. Theorem C — the construction. (R3-weak) is constructive, per-apex, and
## needs a two-element search

This is the main new result of this pass. Everything §9.1's consumers actually
need from (R3) is produced by an explicit rule with no genericity in it.

**Setup.** `(P_i,Q_j) ∈ C`. Write
`a₁ := P⁰_{i−1} − P⁰_i`, `a₂ := P⁰_{i+1} − P⁰_i`,
`b₁ := Q⁰_{j−1} − Q⁰_j`, `b₂ := Q⁰_{j+1} − Q⁰_j`
(all nonzero, by `SimpleClosed`'s `W i ≠ W (i+1)`).

> **Theorem C.** Assume `P⁰,Q⁰` simple and `∂P⁰ ∩ ∂Q⁰` finite.
>
> **(i)** Some pair `(a_k,b_l)` has `cross(a_k,b_l) ≠ 0`.
>
> **(ii)** Fix the lexicographically first such pair and put
> `E(t) := t·b_l − a_k`. Then `cross(E(t), a_k) = t·cross(b_l,a_k) ≠ 0` for
> every `t > 0`.
>
> **(iii)** There is `t ∈ {1,2}` with `cross(E(t),a₁) ≠ 0` **and**
> `cross(E(t),a₂) ≠ 0`.
>
> **(iv)** For that `t`, `E(t) ∈ C_{ij}` (take `s = 1`), so **(R1)** and
> **(R2)** hold at this apex; and every witness that the finiteness requirement
> needs at this apex is `≢ 0`.

*Proof.*

**(i)** Parallelism is an equivalence relation on nonzero vectors, so if no pair
`(a_k,b_l)` is non-parallel then all four are mutually parallel; the paragraph
in §2.1 then contradicts (F). (Uses **simplicity and finiteness**; §2.1.)

**(ii)** `cross(t b_l − a_k, a_k) = t·cross(b_l,a_k)`, and `cross(b_l,a_k) ≠ 0`.

**(iii)** Let `k'` be the other index and
`f(t) := cross(E(t), a_{k'}) = t·cross(b_l,a_{k'}) − cross(a_k,a_{k'})`.
*If* `cross(b_l,a_{k'}) ≠ 0`, `f` is a nonconstant affine function of `t`, so it
has exactly one root and at most one of `t = 1,2` is bad.
*If* `cross(b_l,a_{k'}) = 0`, then `f ≡ −cross(a_k,a_{k'})`; were that zero we
would have `a_k ∥ a_{k'}` and `a_{k'} ∥ b_l`, hence `a_k ∥ b_l` — contradicting
the choice of the pair. So `f` is a nonzero constant and **both** `t` work.
Either way at most one `t ∈ {1,2}` fails, and by (ii) the `a_k` clause never
fails. ∎(iii)

**(iv)** `E(t) = t·b_l − 1·a_k` with `s = 1 > 0`, `t > 0`, so `E(t)` is in the
open cone. **(R1)**: `E(t) ≠ 0` because `cross(E(t),a_k) ≠ 0`, while
`E_{Q_j} = 0`. **(R2)**: hostile review §2.5's symbolic computation shows every
`E` in the cone gives the `ProperCross` straddle pattern on the side pair
`([P_i,P_{i+k}],[Q_j,Q_{j+l}])`, *independently of the neighbours' directions*.
**Finiteness**: by `R3.md` Lemma R3-E a `P`-side/`Q`-side pair that is collinear
at `ε = 0` and meets does so at a vertex-vertex coincidence, and its `P`-side is
then one of the two incident to `P_i`, say `[P_i,P_{i+κ}]` with
`u⁰_κ = a_{κ'}` for the corresponding `κ' ∈ {1,2}`. By `R3.md` Theorem R3-D(b),

    orient(P_i(ε), P_{i+κ}(ε), Q_j(ε))
        = −ε·cross(a_{κ'}, E(t)) − ε²·cross(E_{P_{i+κ}} − E(t), E(t)),

whose `ε`-coefficient is nonzero by (iii). So that `D ≢ 0`; by Theorem U it is
nonzero on all of `(0,ε₀)`; so the four endpoints are not collinear there and
the two sides meet in at most one point. ∎

> **Corollary C′ (constructive (R3-weak), constructive (G5)).** Apply Theorem C
> **independently at every coincidence**. The result is an explicit
> `E ∈ A ⊆ L` — obtained by exact rational arithmetic with `≤ 4` cross-product
> tests and `≤ 2` candidates per apex, total work `O(|C|)` — satisfying (R1),
> (R2) and the finiteness requirement simultaneously. With `R3.md` Theorem R3-F
> this gives **(G1)–(G5)** on all of `(0,ε₀)`. No genericity, no measure theory,
> no sampling, and nothing to `decide` over an infinite set.

### Why the per-apex choices cannot interfere — and why *this* answers objection 1

This is the part that is strictly stronger than Theorem R3, and it is the
answer to the brief's "check it against the case where several coincidences
interact".

Read the two displayed coefficients. The `ε¹`-coefficient of every witness the
requirement list needs is

* `E_{P_i}` itself (for `Δˣ_{ij}, Δʸ_{ij}`, by Theorem R3-D(a)), or
* `−cross(a_{κ'}, E_{P_i})` (for the finiteness `D`, by Theorem R3-D(b)), or
* `t₀·cross(b_l,a_k)` and `−s₀·cross(b_l,a_k)` (for the two valuation-1 `D`'s
  of the (R2) pair, hostile review §2.5),

and the remaining two (R2) `D`'s have `c₀ = cross(a_k,b_l) ≠ 0`. **Not one of
these involves any direction other than `E_{P_i}`, and not one involves a
Theorem-17-determined direction.** The dependent directions appear only in the
`ε²`-coefficients, and an `ε²`-coefficient is irrelevant once the
`ε¹`-coefficient is nonzero.

So objection 1 (Theorem 17 determines `E_d`) and objection 2 (`E_v = 0` off `C`)
do not merely *fail to bite generically*, as Theorem R3 concludes — **they
cannot touch the required witnesses at all.** The bad set for the required
witnesses is a *product* over apexes,
`B_req = ∏_{(i,j)∈C} B_{ij}` with `B_{ij} ⊆ ℝ²` a union of at most two lines
through the origin, and the choice at one apex is literally independent of the
choice at every other.

### The `t = 2` branch is not decorative — an exact certificate

A rule with two candidates whose second candidate never fires is a rule with
one candidate and an untested branch. `r3close_controls.py` **K6** builds a
configuration, by hand from the algebra, on which `t = 1` is catastrophic:

    P = (0,0) (0,4) (-14,4) (-9,13) (-5,14) (-1,7) (3,0)        simple
    Q = (0,0) (0,-5) (1,-8) (13,-13) (8,-1) (3,-6) (3,-3)       simple
    |∂P⁰ ∩ ∂Q⁰| = 1,  finite;  one coincidence P₀ = Q₀ = (0,0);  no dependencies
    a₁ = (3,0)   a₂ = (0,4)   b₁ = (3,−3)   b₂ = (0,−5)
    a₂ ∥ b₂ antiparallel, so the P-side [P₀,P₁] and the Q-side [Q₀,Q₁] are
    collinear and meet exactly at the apex: the `Fsh` requirement is armed.

    t = 1:  E = b₁ − a₁ = (0,−3)    cross(E,a₁) = 9,  cross(E,a₂) = 0
            requirement VIOLATED;  end-to-end: ∂P(ε) ∩ ∂Q(ε) INFINITE
    t = 2:  E = 2b₁ − a₁ = (3,−6)   cross(E,a₁) = 18, cross(E,a₂) = 12
            requirement met;  end-to-end: PASS
    construct_E_at picks (k,l,t) = (0,0,2)          <- the t=2 branch fires

`E = (0,−3)` here is a **positive multiple of `b₂`**, which is exactly
`e9_directions`' sharp criterion for destroying finiteness, and it is produced
by the naive `t = 1` rule. In the random sweeps of §5 the `t = 2` branch fired
**10 times in 699 apexes**, so it is rare but not artificial.

---

## 4. Theorem C2 — (R3-**strong**) is also constructive: a one-parameter exact
## search with an a-priori bound

Theorem C settles what the assembly consumes. (R3-strong) is worth having
anyway, as insurance against a requirement nobody has enumerated (§7). Theorem
R3 gives it non-constructively; here it is with a procedure.

**Coordinates.** At each coincidence `m = 1..|C|` fix the cone pair
`(a_k,b_l)^{(m)}` of Theorem C. The map `(s_m,t_m) ↦ t_m b_l − s_m a_k` is a
linear **isomorphism** `ℝ² → ℝ²` (its determinant is `−cross(a_k,b_l) ≠ 0`),
and it carries the open quadrant `(0,∞)²` onto the cone `C_{ij}`. Composing
with `Λ` (Lemma R3-B, a linear isomorphism onto `L`) identifies

    A  ≅  (0,∞)^n,       n := 2|C|  ≤ 14,

with `u = (s_1,t_1,…,s_{|C|},t_{|C|})` a linear coordinate system on `L`.

**Degrees.** For `p ∈ W`, `p = c₀ + c₁ε + c₂ε²` with `c₀` constant, `c₁` a
*homogeneous linear* form and `c₂` a *homogeneous quadratic* form in the
direction tuple (Theorem R3's computation; homogeneity because every coefficient
is built from differences `u = E_j − E_i`). Under a linear change of coordinates
these stay homogeneous of the same degree, so **every monomial occurring in `c₁`
or `c₂` has exponent vector in `{0,1,2}^n`**.

> **Theorem C2.** Substitute the Kronecker curve
>
>     u_i(τ) := τ^{3^{i−1}},    τ > 0,     i = 1,…,n.
>
> Every `τ > 0` gives a point of `A`. The map
> `d ↦ Σ_i d_i 3^{i−1}` is injective on `{0,1,2}^n` (base-3 digits), so distinct
> monomials of `c₁` or `c₂` receive distinct powers of `τ` and **cannot
> cancel**: a nonzero `c` becomes a nonzero univariate polynomial in `τ` of
> degree `≤ 2·3^{n−1}`. Hence
>
>     #{ τ > 0 : Z(E(τ)) ≠ Z_forced }  ≤  |W| · 2 · 3^{n−1}  =  3276 · 3^{n−1},
>
> and testing any `1 + 3276·3^{n−1}` distinct positive rationals is **guaranteed**
> to produce an `E ∈ A` with `Z(E) = Z_forced`, i.e. to realise (R3-strong).

*Proof.* `p ∈ Z(E)` iff `c₀ = 0` and `c₁(E) = c₂(E) = 0`. For
`p ∉ Z_forced` at least one of `c₁,c₂` is a nonzero polynomial on `L`
(Theorem R3), hence a nonzero univariate in `τ` after the substitution, hence
has at most `2·3^{n−1}` positive roots. Union over `p ∈ W ∖ Z_forced`. ∎

The bound `3276·3^{13} ≈ 5.2·10⁹` for the worst case `|C| = 7` is crude; the
point is that it is **finite, explicit, and checkable in exact rational
arithmetic**, which Theorem R3's "Lebesgue-null" is not. Empirically the search
terminates immediately: over the 370 configurations of the pilot sweep,
`τ = 2` succeeded on 353 and `τ = 3` on the remaining 17 — **0 failures**
(`kron_found` in `r3close_sweep_small.log`).

A second, lower-tech route is the plain integer grid `{1..T}^n` in the same
`(s,t)` coordinates; it is the one to use when `|C|` is small. Pilot sweep, 370
configurations: the smallest `T` that works was `T = 1` on 247, `T = 2` on 120,
`T = 3` on 3, **`T > 3` on none**. (`min_gridT`.) Note that `T = 1` is a single
point and it is *not* always enough — which is the non-vacuity of this
measurement.

---

## 5. Trying to break it: the new families

The brief's instruction was to build configurations where Theorem 17's
constraint is *genuinely active*, not the isolated apex that trivially works.
`R3.md`'s four generators put the dependent vertices **far from the apexes**,
so Theorem 17 never touches a witness the requirement list needs. Five new
generators fix that (`r3close.py`):

| generator | what makes it adversarial |
|---|---|
| `depapex` | a **neighbour of the apex** is a dependent vertex, so Theorem 17 determines the direction of the very endpoint appearing in the required witness `D(P_i,P_{i±1},Q_j)` |
| `doubleanti` | **one apex carries two finiteness requirements at once**: `a₁` antiparallel to one `Q`-ray *and* `a₂` antiparallel to the other, so the construction must dodge two forbidden directions at the same apex |
| `multianti` | **two apexes, each with its own finiteness requirement**, plus a Theorem-17 chain |
| `multi3`, `multi4` | **three and four simultaneous coincidences** (`R3.md`'s families top out at two) |
| `hard` | all of it at once: two coincidences on the same `P`-side (Fig. 27c) + a finiteness requirement at the first apex + `Q₁`, a **neighbour of that apex**, forced into the relative interior of a `P`-side + `Q₅` on the moving side `[P₀,P₁]`. Two Theorem-17 rows, one of which determines a ray of the apex whose witness must survive |

Every configuration is re-detected (`r3.detect` finds the coincidences and the
relation-(1) rows independently of the surgery) and re-checked against every
AKR standing hypothesis (`r3.sanity`) before it is used; `reaches_free`
(Lemma 18) is enforced; the Theorem-17 solver reports singularity rather than
assuming Theorem 17.

**I did not find a counterexample.** The reason is Theorem C's decoupling
paragraph, and I now believe no counterexample of this shape exists: the
required witnesses' first-order coefficients are, provably, functions of the
apex's own free coordinate pair and of *fixed* geometry.

---

## 6. Is the list of *required* witnesses complete? Derived, not guessed

`R3.md`'s "honest limit of this section" says its requirement table is a
reconstruction. I re-derived it from the consumers instead of from intuition.
The consumers are exactly the rows of `akr-9-assembly.md` §3 that take §9.1's
output as input.

| deliverable | which witness must be `≢ 0` | source |
|---|---|---|
| **(G1)** no coincidence remains | `Δˣ_{ij}` or `Δʸ_{ij}`, per `(i,j) ∈ C` | **R1** |
| (G1′) no *new* coincidence appears | none — those `Δ` have `c₀ ≠ 0` | automatic (Theorem U) |
| **(G2)** / Theorem CI, class (a) | none — the four `D`'s have `c₀ ≠ 0` | automatic |
| **(G2)** / Theorem CI, class (b) | none | Theorem 17 (G3) |
| **(G2)** / Theorem CI, class (c) | the four `D`'s of one incident side pair | **R2** |
| Theorem CI injectivity | none | simplicity + (G4); hostile review §2.4 |
| **(G3)** relations maintained | none | Theorem 17 |
| **(G4)** simplicity, non-adjacent sides | none — disjoint compacta at `ε=0` | bootstrapping |
| **(G4)** simplicity, adjacent sides | none — `B_{i;i−1,i+1}` has `c₀ = ⟨a₁,a₂⟩ ≠ 0`, **including at a straight vertex**, where `⟨a₁,a₂⟩ < 0` | automatic |
| **(G4)** `W i ≠ W (i+1)` | none — `c₀ ≠ 0` | automatic |
| **(G5)** = hyp. 13 (Fin-out) | one of the four `D`'s of each `P`-side/`Q`-side pair collinear at `ε=0` **and meeting** | **Fsh** |
| §9.2 hyp. **(VV)** | = (G1) | R1 |
| §9.2 hyp. **(F)** | = (G5) | Fsh |
| §9.2 hyp. **(NC)** | *none that (R3) can supply* | open item **(O2)**, `akr-9-assembly.md` §2.5 |

So
> **`Req(V⁰) = {R1 at each coincidence} ∪ {R2 at each coincidence} ∪ {Fsh at each collinear-and-meeting side pair}`**,

which is exactly what `r3b.requirements` (R1, Fsh) plus `r3.r2_straddle` (R2)
implement. Two small confirmations of the derivation:

* **`Fsh` is exactly the right trigger**, not an over- or under-approximation.
  `r3b.requirements` tests "four endpoints collinear **and** the two sides share
  an endpoint". By Lemma R3-E, under (F) a collinear pair that *meets* meets at
  a shared endpoint; conversely a shared endpoint is a meeting. So
  `Fsh ⟺ collinear ∧ meeting`, and `Fdis` (collinear ∧ disjoint) is correctly
  excluded — bootstrapping handles it with no first-order input.
* **The straight-vertex row matters.** `lean/AKR9.lean`'s `SimpleClosed`
  deliberately allows a straight vertex (`akr-9-2-obligation.md` §6.1), so
  `D(P_{i−1},P_i,P_{i+1})` can be identically zero; the row above shows it is the
  **dot-product** witness `B`, not `D`, that keeps the two sides from
  overlapping there. This is the concrete case where `FINDINGS.md`'s remark that
  `B` "is the family one is most likely to forget" is load-bearing.

### 6.1 A differential test of the derivation — `r3close_probe.py`

A derivation can still miss a consumer. The test that has power against that is
differential: on each configuration, sort the admissible directions into

* **(a)** violates `Req`,
* **(b)** satisfies `Req` but is **dirty** (a removable witness is still
  identically zero — the list says this is harmless),
* **(c)** **clean**, `Z(E) = Z_forced`,

and run an **extended** battery on all three: sign-vector constancy, simplicity
of both polygons, every coincidence broken, no new coincidence, finiteness,
count not dropped, count constant, every relation (1) maintained, **plus the
vertex-side degeneracy census** (the object §9.2's termination monovariant
counts) checked for both additions and losses. If `Req` is complete, (b) and
(c) must be indistinguishable; any battery item failed by (b) and passed by (c)
names a missing requirement.

### 6.2 What the derivation is *relative to*, stated plainly

`Req` is complete **relative to the deliverable list of `akr-9-assembly.md` §3
as it stands on 2026-09-21**. Three exposures remain, and none of them is a
defect in (R3) as such:

1. **`FullGP` is not among the deliverables, and §7.1 below proves it cannot
   be.** The Lean consumer needs it (`akr-9-1-obligation.md` §2.2), but §9 is
   not what supplies it — §3's separate, unproved sentence is
   (`akr-9-1-obligation.md` §2.4). If that ever changed, no (R3) statement
   would help.
2. **§9.3's refined counting model** (AKR p. 25, "We leave this variation for
   future research") would need a *specified* number of crossings per apex,
   between 1 and 4, rather than "≥ 1"; that is a strengthening of **(R2)**, not
   of (R3). The project does not use it.
3. **(NC)** is a genuinely separate open item and (R3) does not imply it
   (`akr-9-assembly.md` §2.5 gives the reason: §9.1 freezes uninvolved free
   vertices, so a collinear triple among them is preserved exactly).

---

## 7. The sweeps

Two independent runs. `r3close_sweep_small.log` is the pilot (seed `20260921`,
370 configurations); `r3close_sweep.log` is the main run at an **unrelated
seed** (`424242`), 1400 configurations. The main run is reported here; the pilot
agrees on every line.

| | base | deep | anti | antidep | depapex | doubleanti | multianti | hard | multi3 | multi4 | **total** |
|---|---|---|---|---|---|---|---|---|---|---|---|
| configurations | 150 | 150 | 150 | 150 | 150 | 150 | 150 | 150 | 120 | 80 | **1400** |
| vertex-vertex coincidences | 302 | 300 | 150 | 300 | 159 | 159 | 301 | 303 | 361 | 320 | **2655** |
| Theorem-17 rows (relation (1)) | | | | | | | | | | | **1944** |
| singular Theorem-17 systems | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | **0** |
| apexes with a **dependent neighbour** | | | | | | | | | | | **689** |
| `Fsh` (finiteness) requirements firing | 7 | 4 | 150 | 154 | 2 | 300 | 303 | 155 | 7 | 6 | **1088** |
| **construction succeeded** | 150 | 150 | 150 | 150 | 150 | 150 | 150 | 150 | 120 | 80 | **1400/1400** |
| … `t = 1` / `t = 2` chosen (per apex) | | | | | | | | | | | **2615 / 40** |
| … satisfies every requirement (R1, Fsh) | | | | | | | | | | | **1400/1400** |
| … satisfies **(R2)**, checked not assumed | | | | | | | | | | | **1400/1400** |
| … end-to-end (G1)–(G5) at 6 exact `ε` | 150 | 150 | 150 | 150 | 150 | 150 | 150 | 150 | 120 | 80 | **1400/1400** |
| … and is also **clean** (`Z(E) = Z_forced`) | | | | | | | | | | | **951/1400** |
| configs where `Z_forced` breaks a requirement | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | **0** |
| `Z_forced` outside the three structural classes | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | **0** |
| **Kronecker curve** reached `Z(E) = Z_forced` | | | | | | | | | | | **1400/1400** |
| … at `τ = 2 / 3 / 4` | | | | | | | | | | | **1327 / 72 / 1** |
| smallest integer grid `T` that works: 1 / 2 / 3 / >3 | | | | | | | | | | | **923 / 465 / 12 / 0** |

Three things worth reading off, one of which is a caution.

1. **The construction is not a genericity argument in disguise.** It leaves a
   removable identically-zero witness in **449 of 1400** cases (32 %) — it
   achieves (R3-weak) but not (R3-strong) — and it never once failed a
   requirement or an end-to-end check. That is the empirical separation of the
   two readings of (R3) in §1, and it is why the distinction matters.
2. **The `t = 2` branch is live**: 40 of 2655 apexes (1.5 %), spread over seven
   of the ten generators, plus the hand-built K6 certificate where `t = 1`
   destroys finiteness outright.
3. **Caution: `Fsh` is rare in the unforced families.** It fires 7 times in 150
   `base` configurations, 4 in `deep`, 2 in `depapex`, 7 in `multi3`, 6 in
   `multi4` — and 150/154/300/303/155 in the four families *built* to produce
   it. This is `R3.md` §R3-4's honesty point and it still stands: **I claim
   nothing about how often the Finding R3-1 failure arises in nature.** The
   families that exercise the finiteness requirement are constructed, and they
   are labelled as constructed.

### 7.1 A by-product: §9.1 provably **cannot** reach full general position

`r3close_gp.py`, 270 configurations over nine generators:

| | value |
|---|---|
| configurations | 270 |
| `Z_forced` nonempty | **270/270** |
| `Z_forced` contains an `orient` determinant `D` | **270/270** |
| … forced `D` of three vertices AKR's rule **freezes** | 718 |
| … forced `D` of a relation-(1) triple (Theorem 17 maintains it) | 389 |
| configurations where `FullGP` is reachable **by any `E ∈ L`** | **0/270** |

The mechanism is not subtle and it is unconditional: AKR's rule sets `E_v = 0`
for every free vertex not involved in a coincidence, so **any three frozen
vertices that are collinear at `ε = 0` stay collinear for every `ε` and every
admissible direction tuple.** Random integer heptagons in `[−9,9]²` have plenty
of such triples.

**Non-vacuity — `r3close_gp_control.py`.** A checker that reports 0/270 must be
shown able to report yes.

* **Arm A**, 12 configurations with a *wide* coordinate range (`[−400,400]²`),
  one coincidence, no relation-(1) rows: `FullGP` **reachable 12/12** and
  **achieved by the construction 12/12**, with the end-to-end battery passing.
  (Each has 12 collinear triples at `ε = 0` — exactly the `{P₀,Q₀,X}` triples
  forced by the coincidence itself — and the construction breaks all 12.)
* **Arm B**, the same generator with **one** collinear triple planted among
  three *frozen* vertices (`Q₄ := P₃ + 3(P₄ − P₃)`, on the line of a `P`-side
  but outside the segment, so it is not a vertex-side degeneracy and Theorem 17
  never touches it): **flipped to IMPOSSIBLE 12/12**.

So the 0/270 is a measurement, not a checker stuck on "no".

**Why this belongs in a document about (R3).** It is the precise reason (R3)
has to be stated with the word *removable*, and it confirms from the §9.1 side
what `akr-9-1-obligation.md` §2.4 states from the Lean side: `FullGP` — which is
what `lean/ConfigBridge.lean` actually consumes — **does not come from §9**. It
comes from §3's one unproved sentence. Any future attempt to shift that burden
onto §9.1 is provably hopeless.

---

## 8. What the probe found: (R3-weak) is **not** enough, and Theorem D⁺ says
## exactly why

The differential test of §6.1 produced a discriminating signal, and it is the
most important result of this pass after Theorem C.

`r3close_probe.py`, seed `777001`, nine generators, 162 configurations,
**9028 admissible directions**, each carried through the extended battery at
three exact values of `ε`:

| generator | (a) violates `Req` | (b) `Req` ok but **DIRTY** | (c) **CLEAN** |
|---|---|---|---|
| `base` | 0 dirs / 0 fail | 236 / **21** | 844 / **0** |
| `deep` | 0 / 0 | 150 / **8** | 930 / **0** |
| `anti` | 18 / **18** (`infinite-intersection`) | 114 / 0 | 732 / 0 |
| `antidep` | 2 / 0 | 201 / 0 | 877 / 0 |
| `depapex` | 0 / 0 | 142 / **6** | 938 / **0** |
| `doubleanti` | 0 / 0 | 131 / 0 | 473 / 0 |
| `multianti` | 4 / 0 | 206 / **4** | 870 / **0** |
| `hard` | 0 / 0 | 188 / **3** | 892 / **0** |
| `multi3` | 0 / 0 | 335 / **25** | 745 / **0** |
| **total** | **24 / 18** | **1703 / 67** | **7301 / 0** |

Every one of the 67 class-(b) failures is `degeneracy-added`. Class (c) fails
**nothing, 0 out of 7301**. The separation is complete and the sample is large.

**Every class-(b) failure is `degeneracy-added`**, and class (c) never fails it.
So the requirement list `Req` of §6 — the one derived from the assembly's
written deliverables — is **incomplete** with respect to one thing AKR's own
sentence promises: §9.1 is supposed to remove vertex-vertex coincidences
*"while leaving vertex-side degeneracies intact"*, and a direction that
satisfies R1, R2 and Fsh can nevertheless **create** a vertex-side degeneracy
that was not in the input.

### 8.1 The mechanism, isolated — `r3close_newdeg.py`

60 configurations over five generators, 3000 admissible directions:

| | value |
|---|---|
| directions creating a new vertex-side degeneracy | **34** |
| … on **clean** directions (`Z(E) = Z_forced`) | **0** |
| … on **dirty** directions | **34** |
| every new degeneracy explained by a **removable** (non-forced) zero `D` | **34/34**, unexplained **0** |
| configurations with the structural precondition present | 60/60 |
| (vertex, side) pairs with the vertex on the side's **line but outside the segment** | 246 |

So the phenomenon is: a vertex sits on the *line* of a side of the other
polygon but outside the segment — not a degeneracy — and a direction that keeps
the corresponding `orient` identically zero lets it **slide along that line into
the segment**. The `D` stays zero and the dot-product witnesses `B` flip sign.
This is precisely a *removable* identically-zero witness being left behind,
i.e. exactly what **(R3-strong)** forbids and **(R3-weak)** does not.

### 8.2 Proposition D — (R3-strong) ⟹ no new vertex-side degeneracy.
### Unconditional, and it needs no classification of `Z_forced`

> Assume (Aff), AKR's rule, `E ∈ A`, and `Z(E) = Z_forced`. Then for every
> `ε ∈ (0,ε₀)` the vertex-side degeneracies of `(P(ε),Q(ε))` are **exactly** the
> images of those of `(P⁰,Q⁰)`.

*Proof.* None is lost: Theorem 17 maintains every relation (1) with its `λ`,
and `0 < λ < 1` is preserved ((G3)).

None is created. Let `V` be a vertex of one polygon and `[B,C]` a side of the
other, and suppose `V(ε) ∈ relint[B(ε),C(ε)]` for some `ε ∈ (0,ε₀)`. Write
`D := orient(V,B,C)` and `β := ⟨B−V, C−V⟩`.

*(1)* `D(ε) = 0`, so `D ≡ 0` by Theorem U, so `D ∈ Z(E) = Z_forced`. In
particular `D` vanishes identically at the tuple `E' = 0 ∈ L` (`L` is a linear
space, so `0 ∈ L`), which is the static configuration; hence
`c₀(D) = orient(V⁰,B⁰,C⁰) = 0`: the three are collinear at `ε = 0`.

*(2)* Three distinct collinear points with `V` strictly between `B` and `C` have
`β < 0`; so `β(ε) < 0`, and by Theorem U `sgn c_m(β) < 0`. Three cases on
`c₀(β) = ⟨B⁰−V⁰, C⁰−V⁰⟩`:

* `c₀(β) < 0`: with `c₀(D) = 0` this says `V⁰` is strictly between `B⁰` and
  `C⁰` — the degeneracy is **not new**. ✔
* `c₀(β) > 0`: Theorem U gives `β(ε) > 0`, contradicting (2).
* `c₀(β) = 0`: together with collinearity this forces `B⁰ − V⁰ = 0` or
  `C⁰ − V⁰ = 0`. Say `V⁰ = B⁰`; since `V` and `B` belong to *different*
  polygons this is a vertex-vertex coincidence, so (Lemma R3-A) `V` is free.
  Under AKR's rule one of the pair moves with a free coordinate pair `e` and the
  other is stationary. Both sub-cases are computed directly:
  - `V = P_i` moving, `B = Q_j` stationary, `C = Q_{j±1}`, so `C⁰ − V⁰ = b_λ ≠ 0`:
    `D = cross(B−V, C−V) = cross(−εe, b_λ + ε(E_C − e))
       = −ε·cross(e, b_λ) − ε²·cross(e, E_C − e)`.
  - `V = Q_j` stationary, `B = P_i` moving, `C = P_{i±1}`, so `B⁰ − V⁰ = 0` and
    `C⁰ − V⁰ = a_κ ≠ 0`:
    `D = cross(εe, a_κ + εE_C) = ε·cross(e, a_κ) + ε²·cross(e, E_C)`.

  In both, the `ε`-coefficient is `±cross(e, r)` for a **fixed nonzero** ray
  `r ∈ {a₁,a₂,b₁,b₂}`, hence a **nonzero linear form on `L`** (`e` is an
  unconstrained coordinate pair, Lemmas R3-A and R3-B). So `D ∉ Z_forced`,
  contradicting (1). ∎

### 8.3 Theorem D⁺ — the complete characterisation, and the constructive fix

The case analysis above does not use `Z(E) = Z_forced` anywhere except in
step (1); dropping it gives a **characterisation**:

> **Theorem D⁺.** Under (Aff) and AKR's rule, a vertex-side degeneracy present
> at some `ε ∈ (0,ε₀)` and absent at `ε = 0` can arise **only** at a
> vertex-vertex coincidence `(P_i,Q_j)`, and only if `E_{P_i}` is **parallel to
> one of the four rays `a₁, a₂, b₁, b₂`** at that apex.
>
> Consequently: requiring `E_{P_i}` non-parallel to all four rays at every apex
> is **sufficient** to make §9.1 create no new vertex-side degeneracy.

*Proof.* Repeat §8.2 with (1) weakened to "`D ≡ 0`" (still valid, by Theorem U).
The first two cases are unchanged. In the third, `D ≡ 0` forces the
`ε`-coefficient `±cross(e,r)` to vanish, i.e. `E_{P_i} ∥ r`. ∎

**This is `e9_directions`' unstated extra clause, finally stated and proved.**
`FINDINGS.md`'s Finding 2 measured the family "`E` parallel to an incident
edge" and found it leaves a removable degeneracy in **96/96** cases; Theorem D⁺
says why, and says that those are the *only* directions that can.

> **Theorem C⁺ (the strengthened construction).** Forbid `E` parallel to **all
> four** rays. With `E(t) = t·b_l − a_k` as before:
> `cross(E(t),a_k) = t·cross(b_l,a_k) ≠ 0` for every `t > 0`, and
> `cross(E(t),b_l) = −cross(a_k,b_l) ≠ 0` for every `t`; each of the two
> remaining rays `a_{k'}, b_{l'}` kills at most one value of `t`, by the same
> two-case argument as Theorem C(iii) (if `cross(b_l,r) = 0` then
> `cross(E(t),r) ≡ −cross(a_k,r) ≠ 0`, since `a_k ∥ r ∥ b_l` would contradict
> `cross(a_k,b_l) ≠ 0`). So **`t ∈ {1,2,3}` always contains a good value**, and
> the construction remains per-apex, exact, and `O(|C|)`.

This is the rule I would put into §9.1. It is one cross-product test wider than
Theorem C, it costs one more candidate, and it buys AKR's own word "intact".

### 8.4 K7 — an exact certificate separating Theorem C from Theorem C⁺

A theorem whose strengthening never changes an outcome is not worth stating.
`r3close_K7.py` builds, from Theorem D⁺'s algebra, a configuration on which
Theorem C's own choice creates a vertex-side degeneracy and Theorem C⁺'s does
not:

```
P = (0,0) (-4,-1) (-6,-4) (-8,-16) (-5,-11) (-6,-15) (4,0)     simple
Q = (0,0) (0,6) (14,18) (16,11) (14,10) (11,8) (4,4)           simple
|∂P⁰ ∩ ∂Q⁰| = 1, finite;  one coincidence P₀ = Q₀ = (0,0);  NO dependencies
NO vertex-side degeneracy at ε = 0
a₁ = (4,0)  a₂ = (-4,-1)  b₁ = (4,4)  b₂ = (0,6)   cross(a₁,b₁) = 16
```

| | Theorem **C** | Theorem **C⁺** | Kronecker (R3-strong) |
|---|---|---|---|
| direction chosen | `E = (0,4)` (`t=1`) | `E = (4,8)` (`t=2`) | `E = (24,32)` (`τ=2`) |
| `E ∥ a₁ / a₂ / b₁ / b₂` | no/no/no/**YES** | no/no/no/no | — |
| (R1), (R2), `Fsh` | all satisfied | all satisfied | all satisfied |
| end-to-end (G1)–(G5) | **PASS** | PASS | PASS |
| removable zeros left | 4 | 1 | 0 |
| **new vertex-side degeneracies** at `ε₀/2, /4, /8, /1024` | **`P₀ ∈ Q`-side 0, at every `ε`** | **none** | **none** |

`E = (0,4) = (2/3)·b₂`: the apex vertex `P₀` slides straight up the `Q`-side
`[Q₀,Q₁]` and stays in its relative interior for every `ε` in `(0,ε₀)`. The
input had **no** vertex-side degeneracy at all; §9.1 manufactured one. Every
stated requirement of `Req` is satisfied, and the end-to-end battery of
`r3.verify_end_to_end` — which is `FINDINGS.md`'s (G1)–(G4) plus finiteness —
reports **PASS**. Only the degeneracy census sees it.

**Non-vacuity of the census check itself** (`r3close_cplus.py`, 40
configurations per generator, three values of `ε` each):

| | `base` | `deep` | `anti` |
|---|---|---|---|
| C (forbid `a₁,a₂`) creates a degeneracy | 0/40 | 0/40 | 0/40 |
| C⁺ (forbid all four rays) creates one | 0/40 | 0/40 | 0/40 |
| Kronecker (R3-strong) creates one | 0/40 | 0/40 | 0/40 |
| **control: `E` ∥ one of the four rays** creates one | **80/160** | **86/160** | **80/160** |
| C⁺ `t`-histogram (per apex) | `{1:79, 2:2}` | `{1:78, 2:2}` | `{1:41, 2:1}` |
| C⁺ `NO-t` failures / (R1,Fsh) violations / (R2) failures | 0/0/0 | 0/0/0 | 0/0/0 |

So the census fires at a ~50 % rate on the family Theorem D⁺ predicts, and never
on C, C⁺ or the strong form. On random configurations C is empirically as good
as C⁺; K7 shows it is **not** as good in principle, which is why the rule I
would ship is C⁺.

**One honest note on the requirement checker.** In the `antidep` probe run, 2
directions violated `Fsh` and the battery nevertheless passed. That is expected
and should be said: `Fsh` is a *sufficient* condition for the two collinear
sides not to overlap, not a necessary one — whether they actually slide into
each other also depends on the sign (`e9_directions`' `η > 0` clause). So a
`Fsh` violation is a warning, not a proof of failure; a `Fsh` satisfaction *is*
a proof of no overlap.

### 8.5 K8 — the `t = 3` branch, and tightness of `{1,2,3}`

Same discipline as K6: a bound whose last value never fires is a bound with an
untested branch. `r3close_K8.py` builds a configuration where `t = 1` **and**
`t = 2` are both forbidden:

```
P = (0,0) (4,-4) (13,-15) (9,-4) (17,-8) (20,-6) (4,0)        simple
Q = (0,0) (4,-8) (1,-11) (-7,-16) (-7,5) (-2,2) (0,4)         simple
|∂P⁰ ∩ ∂Q⁰| = 1, finite;  one coincidence P₀ = Q₀ = (0,0);  no dependencies
a₁ = (4,0)   a₂ = (4,-4)   b₁ = (0,4)   b₂ = (4,-8)    cross(a₁,b₁) = 16
```

| `t` | `E(t) = t·b₁ − a₁` | parallel to | removable zeros left | new vertex-side degeneracies |
|---|---|---|---|---|
| 1 | `(-4, 4)` | **`a₂`** | 4 | **`Q₀ ∈ P`-side 0** |
| 2 | `(-4, 8)` | **`b₂`** | 1 | none |
| 3 | `(-4, 12)` | none | **0** | none |

`construct_Eplus_at` picks `(k,l,t) = (0,0,3)` — the `t = 3` branch fires — and
Theorem C's weaker rule would have picked `t = 2`. So `{1,2,3}` is exactly the
right set: it cannot be shrunk to `{1,2}`, and Theorem C⁺'s proof shows it never
needs to be enlarged.

(Note `t = 2` here is `E ∥ b₂` yet creates no degeneracy — the slide happens to
go the wrong way. That is the same "sufficient, not necessary" point as in §8.4:
Theorem D⁺'s parallelism condition is **necessary** for a new degeneracy, so
forbidding it is sufficient to prevent one, but a parallel direction does not
always produce one.)

### 8.6 C versus C⁺ in the wild — the separation is not only a hand certificate

`r3close_cplus.py`, seed `606060`, 40 configurations per generator, 400 total,
degeneracy census at `ε₀/2`, `ε₀/4`, `ε₀/8`:

| generator | C creates a degeneracy | C⁺ creates one | Kronecker creates one | **control: `E ∥` a ray** |
|---|---|---|---|---|
| base | 0/40 | 0/40 | 0/40 | 80/160 |
| deep | 0/40 | 0/40 | 0/40 | 86/160 |
| anti | 0/40 | 0/40 | 0/40 | 80/160 |
| antidep | 0/40 | 0/40 | 0/40 | 82/160 |
| depapex | 0/40 | 0/40 | 0/40 | 80/160 |
| doubleanti | 0/40 | 0/40 | 0/40 | 86/160 |
| multianti | 0/40 | 0/40 | 0/40 | ≈82/160 |
| hard | 0/40 | 0/40 | 0/40 | ≈82/160 |
| **multi3** (3 coincidences) | **1/40** | 0/40 | 0/40 | ≈82/160 |
| **multi4** (4 coincidences) | **2/40** | 0/40 | 0/40 | ≈82/160 |
| **total** | **3/400** | **0/400** | **0/400** | **824/1600 (51.5 %)** |

Also over the 400 configurations: C⁺ `NO-t` failures **0**, (R1)/`Fsh`
violations **0**, (R2) failures **0**, end-to-end **400/400**, degeneracies
*lost* **0** (Theorem 17 doing its job), `t`-histogram `{1: 796, 2: 18}`.

So Theorem C's weaker rule fails spontaneously — three times, both cases in the
families with **three and four simultaneous coincidences**, which is exactly
where one would expect the extra room for `E(t)` to land on a `b`-ray. The
hand-built K7 is a sharpening of a phenomenon that occurs on its own, not an
artifact.


---

## 9. Verdict

**(R3) is closed, on paper, in the form §9.1 needs — and the "OPEN" listing in
`akr-9-assembly.md` row 14 is, as of this pass, wrong in three specific ways.
But the closure is not the one the row describes, and one part of the row's
pessimism turns out to have been justified for a reason nobody had stated.**

### 9.1 What is now proved

> **Theorem (R3), constructive form.** Let `P⁰, Q⁰` be simple closed heptagons
> with `∂P⁰ ∩ ∂Q⁰` finite. For each vertex-vertex coincidence `(P_i,Q_j)` let
> `a₁,a₂,b₁,b₂` be the four rays at the apex, let `(a_k,b_l)` be the
> lexicographically first pair with `cross(a_k,b_l) ≠ 0` (one exists, by
> simplicity **and** finiteness), and set
>
>     E_{P_i} := t·b_l − a_k        for the first t ∈ {1,2,3}
>                                   with cross(E_{P_i}, r) ≠ 0 for all r ∈ {a₁,a₂,b₁,b₂};
>     E_{Q_j} := 0;
>     E_v := 0 for every other free v;
>     E_d := Theorem 17's solution, for every dependent d.
>
> Such a `t` always exists. The resulting tuple `E` satisfies **(R1)**, **(R2)**
> and the finiteness requirement at every apex, hence — with Theorem U,
> bootstrapping, Theorem 17 and `R3.md` Theorem R3-F — delivers
> **(G1), (G2), (G3), (G4), (G5)** for every `ε ∈ (0,ε₀)`; and by Theorem D⁺ it
> **creates no vertex-side degeneracy that was not in the input**.
>
> Everything in the rule is a cross product of rationals. There is no
> genericity argument, no measure theory, no sampling, and no quantifier over
> an infinite set except inside Theorem U, which is already in Lean.

That is Theorems C, C⁺, D⁺ of §3 and §8, resting on: `R3.md` Lemmas R3-A, R3-B,
R3-E and Theorem R3-D (all confirmed by the hostile review §2.6); hostile review
§2.5's symbolic (R2) computation; `FINDINGS.md`'s Theorem U; and AKR's
Theorem 17 as an import.

Measured: **1400/1400** configurations across ten generators at an unrelated
seed, including 1088 firing finiteness requirements, 1944 Theorem-17 rows and
689 apexes with a dependent neighbour. 0 failures of the construction, 0
requirement violations, 0 (R2) failures, 0 end-to-end failures, 0 cases where
`Z_forced` breaks a requirement. Six controls (K1–K6) plus the degeneracy
control all fire.

### 9.2 What the assembly's row 14 gets wrong

1. **"Explicitly not checked against Theorem 17's determination of the
   dependent directions"** (the (O1) text). That was already stale when the
   assembly was written — `R3.md` Findings R3-2/R3-3 did exactly that check —
   and it is now *doubly* wrong: §3 shows Theorem 17's determination **cannot
   touch** the required witnesses, because their `ε`-coefficients involve only
   the apex's own free coordinate pair and fixed geometry. The dependent
   directions appear only in `ε²`-coefficients.
2. **The dependency edge `R3 ← S5′`** in §1.1's table. `S5′` = (E-clean) was
   **refuted** on 2026-09-21 (hostile review §1b; row 5 of the §3 list is
   struck through). (R3) does not use it. As drawn, the graph makes (R3) look
   like it rests on a refuted lemma.
3. **"18.6 % of AKR-admissible directions violate it"** as the evidence for
   (O1). That number is real but it measures the wrong thing: it is the rate at
   which a direction is *dirty*, not the rate at which it *fails*. In the
   1400-configuration sweep the explicit construction is dirty in 449 cases
   (32 %) and fails a requirement in **0**.

### 9.3 Where the row's pessimism was right, for a reason nobody had stated

The row says (R3) is the residue. Read as **(R3-weak)** — "no *required*
witness is identically zero" — that is now over-optimistic, because §8 shows
(R3-weak) does **not** deliver AKR's own sentence "while leaving vertex-side
degeneracies intact": certificate K7 satisfies every stated requirement, passes
the whole end-to-end battery, and still manufactures a vertex-side degeneracy
out of an input that had none. So the target has to be the **strong** form, or
at least Theorem C⁺'s four-ray rule, and the requirement list of `R3.md`
Finding R3-3 — which stops at (R1), (R2) and finiteness — was genuinely
incomplete. **That is the one real hole this pass found, and it is now closed
by Theorem D⁺.**

---

## 10. What remains, stated precisely

Nothing in this list is a gap in the (R3) argument itself. They are the things
that would have to be true for (R3) to be *useful*, and their status.

1. **AKR's Theorem 17 is an import.** Everything here is conditional on it:
   `L` being a linear space (Lemma R3-B), `E_d` being determined, relation (1)
   being maintained. `akr-9-assembly.md` row 3 records it as
   "IMPORTED … neither reviewed nor formalised". The Theorem-17 solver in
   `r3lib.py` reports singularity rather than assuming it, and was nonsingular
   in **1944 dependency rows over 1400 configurations**, but that is evidence,
   not a proof.

2. **Not formalised.** (R3) is on paper. §11 says what a Lean development would
   look like and why Theorem C makes it dramatically easier than Theorem R3
   would have.

3. **`R3.md` Lemma R3-C's nonemptiness clause still cites the refuted
   finiteness-only proof** (§2.1). One sentence; the repair is written out in
   §2.1 and used as Theorem C(i). `R3.md` should get a dated correction — this
   document does not overwrite it.

4. **`akr-9-assembly.md` needs three edits** (§9.2): row 14's status and its
   (O1) text, the `R3 ← S5′` dependency edge, and the 18.6 % figure. Row 13
   (Fin-out) should cite Theorem C⁺ rather than the generic (R3).

5. **(NC) — open item (O2) — is untouched and is not implied by any of this.**
   §9.1 freezes uninvolved free vertices, so a collinear triple among them is
   preserved exactly; §2.5 of the assembly proves (R3) does not imply (NC), and
   Theorem D⁺ does not either. **(O2) is now the only genuinely open item of
   §9.1/§9.2 that I can identify.**

6. **`FullGP` does not come from §9, and §7.1 proves it cannot.** The Lean
   consumer needs it; §3's unproved sentence is what must supply it. If anyone
   tries to move that burden to §9.1 the attempt is provably hopeless (0/270,
   with a firing control).

7. **The `Fsh` mechanism's frequency in nature is still unmeasured.** It fires
   7/150 in `base`, 4/150 in `deep`, and 150–303/150 in the families built to
   produce it. `R3.md` §R3-4's honesty point stands unchanged.

8. **§9.3's refined counting model is untouched**, as is anything downstream of
   it. If it were ever used, it would strengthen **(R2)**, not (R3).

---

## 11. Flagged for formalisation

This is the part of the result I would most want on the record, because it
changes the cost estimate.

**Theorem R3 would have been hard to formalise.** Its content is: a finite
union of real algebraic hypersurfaces has empty interior, a nonempty open
subset of `ℝ^{2|C|}` is not contained in it, and the bad set is Lebesgue-null.
In Mathlib that is `MeasureTheory` plus `MvPolynomial` zero sets plus a
Zariski-density argument, over `ℝ`. `FINDINGS.md` Finding 5's survey of what is
and is not in Mathlib is the relevant reading, and none of this is there in
usable form.

**Theorem C⁺ is elementary.** Its entire content is:

```
-- given nonzero a k a k' b l b l' : ℝ × ℝ  with  cross a_k b_l ≠ 0
∃ t ∈ ({1, 2, 3} : Finset ℕ),
    cross (t • b_l - a_k) a₁ ≠ 0 ∧ cross (t • b_l - a_k) a₂ ≠ 0
  ∧ cross (t • b_l - a_k) b₁ ≠ 0 ∧ cross (t • b_l - a_k) b₂ ≠ 0
```

a statement about four bilinear forms on `ℝ²`, provable by a case split on
whether `cross b_l r = 0` followed by `linarith` / `field_simp`. The pieces it
plugs into already exist:

* `lean/UniformEps.lean` — `lemmaU_sign`, `theoremU_sameSign`, `bootstrap`,
  `eps0`, `eps0_pos`: Theorem U, kernel-checked, no `sorry`.
* `lean/SignExp.lean` — `simpleClosed_iff_sign`, `mem_segment_iff_sign`: the
  sign-expressibility of simplicity and of "a point lies on a segment", which
  is exactly what Theorem D⁺'s `β`-argument needs (it is the `B` witness, and
  `mem_segment_iff_sign` is the statement that a determinant **and** an inner
  product decide it).
* `lean/AKR9Reduction.lean` — `coincidence_crossing_linear`: (R2) at one apex
  for one direction, tolerating moving neighbours.
* `lean/SimplicityStable.lean` — `heptagon_simplicity_stable_linear`: (G4).

The shape I would propose:

1. `theorem coneRay_exists` — Theorem C(i), from `SimpleClosed` and finiteness.
   This is the only genuinely geometric input and it is the same statement
   `e9_directions`' Corollary needs (with the §2.1 repair).
2. `theorem construct_t` — the display above. Pure algebra.
3. `def akrDirection` — the rule, as a computable function of the rational
   vertex data, so that on any *concrete* pair of heptagons the whole choice is
   `decide`-able.
4. `theorem akrDirection_spec` — (R1), (R2), `Fsh` and the four-ray clause, by
   `construct_t` plus `R3.md` Theorem R3-D's two identities (which are two
   lines of `ring`).
5. `theorem no_new_degeneracy` — Theorem D⁺, via `mem_segment_iff_sign` and
   `theoremU_sameSign`.

Steps 2–5 need no analysis and no measure theory. Step 1 is the one that needs
a real proof.

## 12. Summary of controls

The project has shipped vacuous controls before; every checker used here is
shown able to say no, and every branch of every rule is shown to fire.

| control | what it must report | result |
|---|---|---|
| **K1** all four rays parallel | `construct_E_at` → `EMPTY-CONE`, not a direction | **fires** |
| **K2** Finding R3-1's `E = (2,0)` | `Fsh` violated, end-to-end `infinite-intersection`; the construction picks something else and passes | **fires** (3 directions tested, all flagged) |
| **K3** a bad rule (`E := b₁`) on five `Fsh` families | requirement violations and infinite intersections at a high rate, while the construction has none | **fires**: 75/75 bad vs **0/75** construction |
| **K4** ask for `Z(E) = ∅` (AKR's literal sentence) | must be unachievable where a forced zero exists | **fires**: 0/20 vs 20/20 for `Z(E)=Z_forced` |
| **K5** apply `E=0` to the coincident vertex itself | `Z_forced` breaks (R1) every time | **fires**: 20/20 |
| **K6** the `t = 2` branch of Theorem C | must exist; and `t=1` must be able to be catastrophic | **fires**: exact certificate, `t=1` → infinite intersection; and 40/2655 apexes in the wild |
| **K7** C versus C⁺ | C must be able to create a vertex-side degeneracy | **fires**: exact certificate + **3/400** spontaneously |
| **K8** the `t = 3` branch of Theorem C⁺ | must exist; `{1,2,3}` must be tight | **fires**: exact certificate with `t=1,2` both forbidden |
| degeneracy census | must fire on `E ∥` a ray | **fires**: 824/1600 (51.5 %) vs 0/400 for C⁺ |
| `FullGP` reachability (§7.1) | must be able to report *reachable* | **fires**: 12/12 reachable in arm A, 12/12 flipped by one planted triple in arm B |
| Theorem-17 solver | must report singularity rather than assume it | 0 singular in 1944 dependency rows; the code path exists and is exercised by `theorem17_directions` returning `None` |

### Files added by this pass

| file | what |
|---|---|
| `r3close.py` | Theorems C, C⁺, C2 (`construct_E`, `construct_Eplus`, `kron_clean`, `grid_clean`); five new generators; the sweep driver |
| `r3close_sweep.py` / `.log` | the 1400-configuration main sweep (seed `424242`); `r3close_sweep_small.log` is the 370-configuration pilot at seed `20260921` |
| `r3close_controls.py` / `.log` | controls K1–K6 |
| `r3close_probe.py` / `.log` | the differential completeness probe, 9028 directions |
| `r3close_newdeg.py` / `.log` | isolation of the new-degeneracy mechanism, 34/34 explained |
| `r3close_cplus.py` / `.log` | C vs C⁺ vs (R3-strong), 400 configurations, with the `E ∥ ray` control |
| `r3close_K7.py` / `.log` | the C/C⁺ separating certificate |
| `r3close_K8.py` / `.log` | the `t = 3` certificate |
| `r3close_gp.py` / `.log`, `r3close_gp_control.py` / `.log` | the `FullGP` impossibility and its two-armed control |

Nothing above was run under Lake; no Lean build was started; no git command was
run. `R3.md` and `FINDINGS.md` were not overwritten — `R3.md` has a dated
appendix pointing here.

**`f(7,7) = 38` is not proved by anything in this document.** §9 remains an
unreviewed import resting on AKR's Theorem 17, and open item (O2) = (NC) is
untouched.
