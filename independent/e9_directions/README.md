# `e9_directions` — discharging the one existential AKR assert without proof

## What this is about

`f(7,7) = 38` rests on exactly one unproved input: §9 of
Ackerman–Keszegh–Rote (2022). Inside §9.1, at the point where vertex–vertex
coincidences are perturbed apart, the paper says (journal p. 1072):

> "We choose each direction `E_i` **independently so that the two polygons have
> at least one nondegenerate intersection in the neighborhood** of the original
> configuration, assuming that all other points stay where they are."

No argument is given that such a direction exists. `../../docs/akr-9-1-obligation.md`
§5.2 rates this *"hard, and unproved in the paper"*, sketches a
Minkowski-difference argument for it, and marks that sketch **"my reasoning, not
a finding"** — explicitly unchecked.

**This directory checks it, and proves it.** The existential is true, with a
sharp criterion, and the failure case is excluded by AKR's own standing
assumption.

**It does not close §9.** See "What this does not do" at the bottom.

## The local picture

At a coincidence `P_i = Q_j`, put the apex at the origin. Each boundary is
locally a "V": `P`'s two edges run to `a₁, a₂` and `Q`'s to `b₁, b₂`. `Q` stays
put and the apex of `P`'s V moves to `εE`.

> **Correction, 2026-09-20.** The first version of `sweep.py`, `criterion.py`,
> `controls.py` and `nondegenerate.py` translated **the whole V** — apex and
> both neighbours — by `εE`. That is *not* what AKR do: they move only the
> vertex `P_i` ("we leave `Q_j` stationary but we move
> `P_i = P⁰_i + εE_i`"), so `P`'s two edges pivot about their far endpoints
> instead of translating. `apexonly.py` re-runs the experiment in the correct
> model. **The result is unchanged** — 11,856 configurations, zero with no
> working direction — and the cone construction still produces a crossing on
> every one of 2,981 trials. The proof below is written for the apex-only
> model and the explicit parameters are given, so it is not affected either.
> The original scripts are kept; read them as a check of a related but
> different statement.

## The lemma

> **Lemma.** Let `a₁, a₂, b₁, b₂ ∈ ℝ² ∖ {0}`. The following are equivalent:
>
> 1. there is a direction `E` and an `ε₀ > 0` such that for every `0 < ε < ε₀`,
>    the translate of `P`'s V by `εE` has **at least one proper crossing** with
>    `Q`'s V;
> 2. `a₁, a₂, b₁, b₂` are **not all mutually parallel**.
>
> Moreover, when these hold, `E` can additionally be chosen so that the
> translated configuration has **no local degeneracy** — no vertex of either V
> on the other's boundary.

### Proof

**(2) ⟹ (1).** Parallelism is an equivalence relation on `ℝ² ∖ {0}`, so if the
four are not all mutually parallel there are `k, l` with `a_k ∦ b_l`. Then
`{b_l, −a_k}` is a basis, and

    C := { t·b_l − s·a_k : s, t > 0 }

is the image of the open positive quadrant under an invertible linear map: a
nonempty **open** convex cone. Pick `E = t₀·b_l − s₀·a_k ∈ C`.

The ray from `εE` in direction `a_k` meets the ray from `O` in direction `b_l`
exactly when `εE + s·a_k = t·b_l` for some `s, t > 0`. Taking `s = ε·s₀` and
`t = ε·t₀` solves it **for every `ε > 0`** — the cone is scale-invariant, which
is why one direction works for all small `ε` rather than one `ε` at a time.

Take `ε₀` small enough that `ε·s₀` and `ε·t₀` stay below the two edge lengths;
then the meeting point is interior to both *segments*. Since `a_k ∦ b_l` the
lines are transversal, so each segment has its endpoints strictly on opposite
sides of the other's line — which is exactly `ProperCross`. ∎

*In the apex-only model the same `E` works, with the parameters written out.*
The segment from the moved apex `εE` to the fixed neighbour `a_k` meets the
segment from `O` to `b_l` where `ε(1−μ)E + μ·a_k = ν·b_l`. Substituting
`E = t₀b_l − s₀a_k` and matching coefficients in the basis `{b_l, a_k}` gives

    μ = ε·s₀ / (1 + ε·s₀),        ν = ε·t₀ / (1 + ε·s₀),

both in `(0,1)` for every `ε > 0`. So the crossing exists for all small `ε`
here too, and the intersection point approaches the apex like `O(ε)`.

**(1) ⟹ (2).** If all four are parallel, both V's lie in lines parallel to a
common direction, and so does every translate. Segments on parallel lines never
properly cross: the straddle test fails when the lines are distinct, and
`orient` vanishes identically when they coincide. ∎

**Nondegeneracy.** Each local degeneracy is an incidence "a vertex lies on a
segment", i.e. an equation `orient(·,·,·) = 0` in which `E` occurs linearly and
homogeneously. Its solution set is a finite union of **lines through the origin**
in `E`-space. An open 2-dimensional cone is not covered by finitely many lines,
so a degeneracy-free `E` exists inside `C`. ∎

### Corollary — the failure case cannot arise

> Under AKR's **own standing assumption** that the two polygons meet in finitely
> many points, condition (2) always holds, so the direction `E_i` they assert
> always exists.

If all four directions were parallel, both V's would lie on one line `L` through
the apex, each covering an interval of `L` of positive length containing the
apex. Two such intervals overlap in a positive-length segment, so `∂P ∩ ∂Q`
would be infinite — contradicting the finiteness assumption stated in AKR §1.

## What was run

| script | what it does | result |
|---|---|---|
| `sweep.py` | 19,765 random four-ray configurations; brute-force sweep over 545 integer directions, exact rational arithmetic | **0** with no working direction; **0** disagreements with the cone argument |
| `criterion.py` | 8,628 configurations **including degenerate ones**, testing the sharp iff | **0** mismatches; 66 genuine "no direction" cases present |
| `controls.py` | non-vacuity and adversarial controls | all pass — see below |
| `nondegenerate.py` | 3,980 configurations, demanding a direction that crosses **and** leaves no local degeneracy | **0** failures |
| `apexonly.py` | 11,856 configurations in the **correct apex-only model**, plus a direct test of the cone parameters | **0** with no working direction; **0** cone failures in 2,981 trials |

`orient` and `ProperCross` are transcribed from `lean/GeometryDefs.lean` lines
59 and 73. All arithmetic is exact `Fraction`; nothing is floating point.

### The controls matter

A checker that always answers "found" would prove nothing, so:

* **It can say no.** On four collinear directions it correctly reports that no
  direction works. 66 such cases appear in `criterion.py` — the criterion is not
  vacuously true.
* **It reproduces the project's own recorded failure (K-14/K-10).** On nested
  cones `Cone_P ⊂ Cone_Q`, the superseded fixed rule "push into `Cone_Q(w)`"
  gives **0** crossings — exactly the bug that sank the earlier attempt — while
  a direction nonetheless **exists** and yields 2. This is the distinction that
  matters: AKR quantify *existentially* and are right to; the earlier attempt
  fixed the direction and was wrong to.
* **The count is stable as `ε → 0`** — checked down to `ε = 10⁻²⁰`, consistent
  with the cone being scale-invariant.

## Finiteness is preserved too — closing the gap R3-1 opened

`../eps_uniform/R3.md` Finding R3-1 showed that a direction satisfying AKR's
*stated* criterion can make `∂P(ε) ∩ ∂Q(ε)` **infinite**, destroying AKR's own
standing finiteness assumption, which every later step of §9 inherits as a
hypothesis and cannot repair. On that certificate this directory's
degeneracy-free clause happened to reject the bad direction. Luck, or a
theorem? It is a theorem, and here is the sharp form.

> **Lemma (which directions destroy finiteness).** At a coincidence with
> `P`-rays `a₁,a₂` and `Q`-rays `b₁,b₂`, assuming finiteness holds at `ε = 0`,
> moving the apex to `εE` makes `∂P(ε) ∩ ∂Q(ε)` infinite **iff** there are
> `k, l` with `a_k ∥ b_l` and `E` a **positive multiple of `b_l`**.

Parallelism alone is not enough — of that line's two rays, only the one
pointing *into* the opposing side creates the overlap. The bad set is therefore
a finite union of open **rays**, and an open 2-dimensional cone minus finitely
many rays is still nonempty. So a direction that both creates a proper crossing
at the apex and preserves finiteness always exists.

**Verified on the family where the risk is real.** Random heptagon pairs are
useless here: in 113 of them, *no* direction destroyed finiteness, so the test
was vacuous. R3-1's mechanism needs two opposing rays to be collinear, which
random generation does not produce. `antiparallel.py` builds that family
deliberately:

| | |
|---|---|
| configurations (collinear opposing rays, finite at `ε = 0`) | 2,652 |
| directions that **do** destroy finiteness | **2,675** — not vacuous |
| mismatches against the characterisation above | **0** |
| configurations with no safe crossing direction | **0** |

`global_finiteness.py` runs the whole-heptagon version.

**Three corrections happened on the way here, and they are the point.** The
condition was first written as "no vertex of either polygon on the other's
boundary", which is far too strong — §9.1 deliberately *leaves* vertex-side
degeneracies for §9.2, so a pre-existing one makes that condition unsatisfiable
for every `E`. Narrowing it to the two moved sides was still too strong, for
the same reason one level down: a moved side has an endpoint that does not
move, and that endpoint may already sit on a `Q`-side. The right condition is
not a proxy at all — it is finiteness itself. Then the characterisation of the
bad directions was wrong twice more (missing the "positive multiple" half, then
missing the second ray pair) before the mismatch counter reached zero. Both
scripts are kept as they ended, with the superseded predicate described.

## What this does not do

It does **not** close §9, and `f(7,7) = 38` remains a candidate.

* The real blocker is untouched: the **"One final point"** ε-estimate, which
  needs a single uniform `ε₀` valid at *every* degeneracy of a 14-vertex
  configuration simultaneously, while the other endpoints are themselves moving
  on linear trajectories. This lemma is purely local and assumes, as AKR's
  sentence does, that all other points stay fixed.
* §9.2 (vertex–side degeneracies) and the §9.3 counting model are untouched.
* Nothing here is formalized in Lean.

What it does do is convert one of the two steps `akr-9-1-obligation.md` names as
hard from "asserted by the authors, unproved" into "proved here, with the sharp
criterion and the failure case excluded by their own hypothesis."
