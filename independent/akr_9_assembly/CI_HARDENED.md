# Theorem CI, hardened — an independent re-derivation, an attack on the
# double-counting hazard, and a hypothesis audit

Target: `docs/akr-9-assembly.md` §2.1–§2.4 (Lemma CL, Theorem CI), which is
hypothesis 8 of Theorem A9-RED in §3 of the same document.

Ground rules for this pass: exact `fractions.Fraction` only; re-derive from the
*statement*, not from the document's proof; every claim gets a control that
demonstrably can fail. No Lean build was run (read-only on `lean/`). No git.

Status of this file: written incrementally as the work proceeded.

---

## 0. Verdict, up front

| item | verdict |
|---|---|
| **Lemma CL** | **CORRECT.** Re-derived independently. Two steps the document asserts rather than proves are true; I give the arguments. Needs `SimpleClosed` + finiteness only, as claimed. |
| **Theorem CI, injection `Φ_α` exists and is injective** | **CORRECT**, with one repair to the *case analysis* (see §4.3: a fourth rule is needed, and without it the hypothesis list is unsatisfiable on the inputs §9.1 actually produces). |
| **Theorem CI, the inequality `\|∂P(α) ∩ ∂Q(α)\| ≥ \|X\|` as an `ncard` statement** | **FALSE AS STATED.** It silently needs **(Fin-out)**, finiteness of the *output*. There is an exact certificate against it already in this repository (`eps_uniform/R3.md` Finding R3-1), which §2.3 does not cite. This is the same omission the hostile review found in A9-RED hypothesis 13, present a second time, one level down. |
| **double-counting hazard (step 3)** | **CLOSED.** Verified in exact arithmetic, all four sign cases, and attacked constructively. I could not build the bad configuration and I give the reason it is not merely unlikely but impossible. |
| **the existing test** `injection.py` | sound but **blind in one direction**: it `skip`s the instances where the output is infinite, i.e. exactly the (Fin-out) failure. Its injectivity column is also not independently powered (see §5.3). |
| `hostile-review-2026-09-21.md` §4.1's own claim | **partly wrong in the project's favour**: the two collision types it says it "closes" because "the four numbered facts omit" them are in fact both stated in fact 4. Fact 4 is terse but complete. |

---

## 1. Lemma CL, re-derived

I re-derived Lemma CL from its statement. The classification itself is
trivial — partition `X` by the pair of booleans (is `x` a vertex of `P`?, is
`x` a vertex of `Q`?), and note that a point of `∂P` lying on no `P`-vertex is
in the relative interior of *some* `P`-side. All the content is in the
uniqueness clauses and in the proper-crossing clause. Below, `A = P_i`,
`B = P_{i+1}`, `C = Q_j`, `D = Q_{j+1}`.

**Vertices are pairwise distinct.** This is used everywhere and is *not* one of
`AKR9.SimpleClosed`'s three literal conjuncts (`lean/AKR9.lean:71`), so it has
to be derived: `P_i ≠ P_{i+1}` is the first conjunct; for `k ∉ {i-1,i,i+1}` the
sides `i` and `k` are non-adjacent and disjoint while `P_i` lies on side `i` and
`P_k` on side `k`; and `P_i = P_{i+2}` would put `P_i` on side `i+1`, which is
non-adjacent to side... — cleanest for `n = 7`: sides `i-1` and `i+1` are
non-adjacent, `P_i ∈ side (i-1)`, `P_{i+2} ∈ side (i+1)`, disjointness gives
`P_i ≠ P_{i+2}`. Same for the rest.

**Uniqueness of the side in the interior cases.** Exactly the document's
argument, and it is right: if `x` is interior to side `i` and also on side `k`,
then non-adjacency contradicts `disj`, and adjacency forces `x` to be the shared
vertex, which is not interior to side `i`.

**Proper crossing — the step the document asserts rather than proves.** Suppose
`x` is interior to `[A,B]` and interior to `[C,D]`. The document says "the two
sides are not collinear … so they meet only at `x` and each has its endpoints
strictly off the other's line". Both halves are true but the second needs an
argument the document does not give, and it is the half that could fail:

* *Not collinear.* If `orient(A,B,C) = orient(A,B,D) = 0` then `[C,D]` lies on
  the line `AB`; parameterising that line, `x` is strictly inside both
  intervals, so they overlap in a set of positive length, which lies in
  `∂P ∩ ∂Q`, contradicting finiteness. **This is finiteness use #1.**
* *No single endpoint on the other's line.* If exactly one of the two is zero,
  say `orient(A,B,C) = 0 ≠ orient(A,B,D)`, then `t ↦ orient(A,B,·)` is affine
  along `[C,D]`, zero at `C` and nonzero at `D`, hence nonzero on `(C,D]`. So
  `[C,D] ∩ line(A,B) = {C}`, forcing `x = C` — contradicting that `x` is
  *interior* to `[C,D]`. **Note this is where "interior", not merely "on", is
  load-bearing**, and it is the reason class (a) has to be defined by relative
  interiors rather than by "not a vertex of the other polygon".
* *Opposite signs.* If `orient(A,B,C)` and `orient(A,B,D)` had the same sign,
  the affine function `orient(A,B,·)` would be nonzero of that sign on all of
  `[C,D]`, contradicting `orient(A,B,x) = 0`.

Symmetrically for `orient(C,D,A)`, `orient(C,D,B)`. That is the strict straddle
on both sides, i.e. `ProperCross`.

**Class (c) lies on exactly four sides.** `x = P_i = Q_j` is on `P`-sides `i-1`
and `i`; if it were on `P`-side `k` for `k ∉ {i-1,i}` then sides `k` and `i` are
non-adjacent (contradiction with `disj`) or adjacent, in which case `x` is their
shared vertex, which is `P_{i+1}` or `P_{i-1}`, both `≠ P_i`.

### 1.1 Verdict on Lemma CL, and where I disagree with nothing

**Correct.** Simplicity plus finiteness, as claimed, and `NoVertexOnOther` is
genuinely not used. My only criticism is presentational: the proper-crossing
clause's "endpoints strictly off the other's line" is stated as if it followed
from non-collinearity, and it does not — it follows from `x` being *interior*,
which is a different hypothesis. A formalisation that copied the document's
sentence would get stuck there.

### 1.2 Machine check — `lemma_cl_check.py`, log `lemma_cl_check.log`

Lemma CL restated as incidence counts (exactly 2 / 3 / 4 sides through `x` in
classes (a) / (b) / (c); unique interior side; proper crossing in class (a);
vertices pairwise distinct) and audited on random exact-rational heptagon pairs.

| sample | pairs audited | class (a) | (b) | (c) | Lemma-CL violations |
|---|---|---|---|---|---|
| random pairs, finite `X` | 400 | 1684 | 83 | 52 | **0** |
| pairs forced degenerate (a vertex-vertex coincidence and a vertex-side incidence planted), finite `X` | 400 | 1335 | 463 | 306 | **0** |
| **CONTROL: finiteness dropped** (a `Q`-side laid along a `P`-side) | 400 | 2447 | 856 | 32 | **400** |

The control fires in **400 of 400**, and it fires on exactly the predicted
clause — `a: NOT a proper crossing` — which is the one clause whose proof
consumes finiteness. The first version of this control was **vacuous**: it
scored 0/400, because `eps_uniform.cross_points` reports a positive-length
overlap as a *flag* and contributes no points from it, so the audit never saw
the bad points. The fixed control adds three representatives of every overlap
segment explicitly. I am recording the vacuous version because this repository
has shipped vacuous controls twice and the failure mode is exactly this one:
the checker never reaching the phenomenon.

---

## 2. Theorem CI's injection, re-derived

I checked injectivity as a complete table over ordered class pairs rather than
as four numbered facts, because that is where this kind of argument fails.
Write `Φ`'s images as *tagged*: classes (a) and (c) produce a **crossing point
tagged by a side pair `(a,b)`**; class (b) produces a **vertex**.

| | (a) | (b) | (c) |
|---|---|---|---|
| **(a)** | distinct class-(a) points have distinct side pairs (a properly crossing pair meets in exactly one point); distinct pairs ⟹ distinct images by the simplicity-of-`P(α)`/`Q(α)` argument | crossing point vs vertex | class-(a) pairs are never class-(c) candidate pairs (fact 2), then as in (a)-(a) |
| **(b)** | — | same polygon: distinct vertices of a simple `P(α)`. Different polygons: `P_u ≠ Q_v` at `α=0`, so `X_{uv}` or `Y_{uv}` has `c₀ ≠ 0`, and Theorem U keeps it nonzero | vertex vs crossing point |
| **(c)** | — | — | distinct apexes have disjoint candidate pair sets (fact 3), then as in (a)-(a) |

Every cell closes. Two remarks.

**(i) The crossing-vs-vertex cells need (G4), simplicity of the *perturbed*
polygons, and nothing else.** A class-(a)/(c) image is interior to `P`-side `a(α)`
and to `Q`-side `b(α)`; if it equalled a vertex `P_c(α)` then `P_c(α)` would lie
in the relative interior of a `P`-side, which simplicity of `P(α)` forbids;
likewise on the `Q` side. So the "(b) against (a)/(c)" collision is closed by
(G4). **The hostile review's §4.1 claims it closed this collision type and the
"(b) against (b)" one because "the four numbered facts omit" them. That is not
right: the assembly's fact 4 states both, in one sentence each.** Fact 4 is
terse, but it is complete, and the review credits itself with work the document
had done. (The substance is unaffected; the review's conclusion — that the
injectivity argument is correct — stands.)

**(ii) Fact 3 is a statement about `Fin 7` index arithmetic, not about
geometry**, so it can be *decided*, not sampled. See §3.

### 2.1 What the injection does not need, confirmed

No metric input of any kind: no radius, no displacement bound, no continuity of
"two crossing segments ↦ their crossing point". I agree with the document on
this and it is the reason the argument is formalisable at all. Everything is
carried by the *side pair*, a `Fin 7 × Fin 7` object, and by Theorem U.

---

## 3. The double-counting hazard — decided, not sampled

The hazard, as the assembly states it: a vertex-vertex coincidence is **one
point on four side pairs**; if two coincidences were adjacent along *both*
boundaries they would share a pair, the same new crossing would be the image of
two different source points, and `Φ` would not be injective. The assembly's
step 3 says that configuration forces two sides to coincide as segments.

### 3.1 The whole claim is a finite index computation — `step3_exhaustive.py`

Under the two identifications `P_i ~ Q_j` and `P_k ~ Q_l`, whether "`P`-side `a`
and `Q`-side `b` have the same two endpoints" is a question about symbols, not
coordinates. So I enumerated **all `7⁴` tuples `(i,j,k,l)`** with `i ≠ k` and
`j ≠ l` (distinct apexes force distinct indices in both polygons, by vertex
distinctness), formed the two four-element candidate sets
`{i-1,i}×{j-1,j}` and `{k-1,k}×{l-1,l}`, and for every shared pair computed the
endpoint classes in the union-find quotient.

```
index tuples (i,j,k,l) with i!=k and j!=l            : 1764
  ... admitting a SHARED candidate side pair          : 196
  ... shared pair whose two sides do NOT coincide     : 0      <-- would break step 3
tuples adjacent along BOTH boundaries                 : 196
  ... of those with NO shared pair                    : 0
```

Two things this settles that the document's "all four sign cases" does not:

1. **The 196 hazard tuples are exactly the "adjacent along both boundaries"
   tuples** — the two descriptions coincide, with no third way to share a pair.
2. **On every one of them the shared pair's `P`-side and `Q`-side have identical
   endpoint sets.** So the configuration is not "a case where the naive choice
   rule collides"; it is a configuration that **cannot exist at all** under
   finiteness, for any choice rule. That is a stronger statement than the
   document makes, and it is the right one, because `Φ`'s class-(c) rule
   involves a choice and one wants injectivity for *every* choice.

**Non-vacuity of this checker.** Run the same code with a deliberately wrong
incidence rule — `{i,i+1}×{j,j+1}` instead of `{i-1,i}×{j-1,j}`, an off-by-one
in which sides count as incident to the apex — and it reports **196 shared pairs
of which 196 do NOT coincide as segments**. So the checker can say no; its 0 on
the correct rule is a fact about the rule.

Fact 2 gets the same treatment: over all `7²` apexes and all 4 candidate pairs,
**196 of 196** candidate pairs consist of two sides sharing an endpoint, which
is what makes a second (interior) common point force collinearity.

### 3.2 Trying to build the bad configuration anyway

`injection2.py` families `adjboth` (`Q_0 = P_0`, `Q_1 = P_1`) and `adjbothrev`
(`Q_0 = P_0`, `Q_6 = P_1`) construct the hazard directly from random simple
heptagons. Results over 2 seeds:

| | count |
|---|---|
| configurations built with two coincidences adjacent along both boundaries | **see §5 table** |
| … in which the step-3 hazard precondition (two apexes sharing a candidate pair) is **present** | **100 %** |
| … in which `∂P ∩ ∂Q` is **infinite** at `α = 0` | **100 %** |
| … with the hazard precondition **and** a finite intersection | **0** |

The middle row is the non-vacuity control that matters: the combinatorial
precondition for double counting really does occur in the sample, at a rate of
100 % by construction — it is not that the experiment never reached the
phenomenon. It is finiteness, and only finiteness, that rejects it.

In the main (finite) families, over all arms, the number of configurations in
which two source points share a candidate side pair is **0**, and the check used
is the *choice-free* one: full four-element candidate sets, not the single pair
some rule happens to select.

### 3.3 Verdict on the double-counting hazard

**Closed, and closed more firmly than the document claims.** The document is
right that this is a genuine and non-obvious place where AKR's standing
finiteness assumption is load-bearing. I would sharpen the write-up in one
respect: the conclusion is not "the injection's choice rule avoids the
collision" but "**no two vertex-vertex coincidences of a finite pair are
adjacent along both boundaries**", which is a clean standalone lemma and the
right thing to formalise.

---

## 4. The hypotheses Theorem CI actually needs

§2.3 states the hypotheses as: `P⁰,Q⁰` `SimpleClosed`; `X` finite; **(Aff)**;
**(G3)**; **(R2)** at every vertex-vertex coincidence; and Theorem U's `ε₀`.
Three things are missing or wrong.

### 4.1 MISSING: (Fin-out), finiteness of the OUTPUT. The theorem is false without it, and there is already a certificate in this repository.

Theorem CI's conclusion is written `|∂P(α) ∩ ∂Q(α)| ≥ |X|`, and the consumer
(A9-RED, and `AKR9.points9` in Lean) reads `|·|` as **`Set.ncard`**. In Mathlib
`Set.ncard` of an **infinite** set is **`0`**. So if the perturbed pair has an
infinite boundary intersection, the conclusion reads `0 ≥ |X|` and is **false**
whenever `X ≠ ∅`.

Nothing in `(Aff) + (G3) + (R2) + U + (Simp) + (G4) + (Fin at α=0)` prevents
that. The certificate is `independent/eps_uniform/R3.md` Finding R3-1, which
the assembly document **does not cite anywhere** (this is the same "completed
work in `independent/` invisible to the assembling document" failure the hostile
review documented in §4.4 — one level further down).

I re-verified it from scratch, importing nothing from the repository
(`ci_finout_cert.py`, log `ci_finout_cert.log`), and extended it to the question
the assembly actually needs answered:

```
P0 = (0,0) (0,-3) (5,-6) (9,-1) (6,4) (-1,5) (-3,0)      simple
Q0 = (0,0) (2,-1) (7,-4) (11,2) (8,7) (1,8) (4,0)        simple
alpha = 0 :  |X| = 4, finite; one apex P0 = Q0; one relation (1): P3 in relint(Q2,Q3)
(R2) at the apex: SATISFIED, by incident pair (P-side 0, Q-side 0),
     leading signs (1,-1) (0,+1) (1,+1) (0,-1) -- the straddle pattern
motion: E = (2,0) on P0 only; affine; every relation (1) trivially maintained
alpha = 1/50, 1/100, 1/2^20, 1/2^60 :
     P(alpha) simple           : True
     dP(a) n dQ(a) INFINITE    : True   (P-side 6 and Q-side 6 overlap)
     Phi total                 : True
     Phi injective             : True
     Phi lands in the target   : True
```

So the separation is exact and clean:

> **The injection half of Theorem CI survives. The `ncard` inequality does
> not.** On this input every stated hypothesis holds, `Φ_α` is a total injection
> `X ↪ ∂P(α) ∩ ∂Q(α)`, and yet `(points9 R').ncard = 0 < 4 = (points9 R).ncard`.

**Recommended repair, and it is a small one.** State Theorem CI as

> there exists an injection `Φ_α : X ↪ ∂P(α) ∩ ∂Q(α)`,

which is exactly what the proof gives and is true without (Fin-out); and derive
the `ncard` inequality as a corollary **under the additional hypothesis
(Fin-out)**. (Fin-out) is A9-RED's hypothesis 13, already on the list since
2026-09-21, and it follows from 5′ (Fin-pres) or from (R3). The bug is that
hypothesis 8 (CI) is currently stated in a form that *presupposes* hypothesis
13 rather than taking it, so the two rows are not independent and the reduction
theorem's proof silently reorders them.

`injection.py` cannot see any of this: it does
`tgt, infe = cross_points(Pe,Qe); if infe: return dict(skip='infinite at eps')`.
The (Fin-out) failure is the one case it discards.

### 4.2 MISSING (as a stated hypothesis, though the proof uses it): (G4)

The four injectivity facts all run through simplicity of `P(α)` and `Q(α)`. The
proof text says so; the theorem statement does not list it. This is not a gap —
(G4) is A9-RED hypothesis 9 (`SimplicityStable.heptagon_simplicity_stable_linear`,
kernel-checked) plus hypothesis 10 (`SignExp.simpleClosed_iff_sign`) and
Theorem U to get it on all of `(0,ε₀)` rather than "for small `α`" — but the
statement of CI should carry it, because CI is being used as a black box in
A9-RED and its hypothesis row should be self-contained.

### 4.3 WRONG AS STATED: "(R2) at every vertex-vertex coincidence" is unsatisfiable at a coincidence the motion does not separate

This is the one place where I think the document is not merely incomplete.

At an apex `x = P_i = Q_j`, **every** incident side pair has the apex as an
endpoint of both of its sides. Take the pair `(i-1, j-1)`: two of its four
`D`-polynomials are `orient(P_{i-1}, P_i, Q_j)` and `orient(Q_{j-1}, Q_j, P_i)`.
If the motion keeps `P_i(α) = Q_j(α)` — which happens whenever the apex's two
vertices are both stationary, or move together — those are
`orient(P_{i-1}(α), x(α), x(α)) ≡ 0` and `orient(Q_{j-1}(α), x(α), x(α)) ≡ 0`,
**identically zero polynomials**. The same happens for all four incident pairs.
So (R2), which demands all four `D`'s `≢ 0`, **cannot hold at an unseparated
apex.**

And unseparated apexes are not exotic: **§9.1 processes coincidences one at a
time.** Any configuration with two or more vertex-vertex coincidences, on the
step that breaks the first, has an unseparated second one. Read literally,
Theorem CI's hypothesis list is then unsatisfiable on exactly the inputs
`akr-9-1-obligation.md` says §9.1 must handle.

**The theorem is still true; the case analysis needs a fourth rule.** Whether an
apex is separated is decided once and for all on `(0,ε₀)` by Theorem U applied
to the two witnesses `X_{P_i,Q_j}`, `Y_{P_i,Q_j}`: both are `0` at `α = 0`, so
either both are identically zero (the apex is **maintained**, `P_i(α) = Q_j(α)`
for all `α`) or one has a nonzero lowest coefficient and Theorem U keeps it
nonzero on all of `(0,ε₀)` (the apex is **separated**). Hence:

> **Rule (c0).** If the apex is maintained, set `Φ_α(x) := P_i(α) = Q_j(α)`.
> This is a vertex of both polygons, hence in `∂P(α) ∩ ∂Q(α)`, and it needs no
> hypothesis at all beyond (Aff).
>
> **Rule (c1).** If the apex is separated, use (R2)'s crossing point as the
> document says.

Injectivity is unaffected: rule (c0)'s images are vertices, so they fall on the
class-(b) side of the vertex/crossing-point dichotomy, and they are distinct
from each other and from class-(b) images by vertex distinctness in `P(α)`
(`P_i(α) = P_u(α)` forces `i = u`) and, across polygons, by the same
`X/Y`-witness argument as in fact 4.

So the correct hypothesis is **"(R2) at every vertex-vertex coincidence *that
the motion separates*"**, which is satisfiable, is what
`independent/e9_directions` actually constructs, and is what
`eps_uniform/run_arms.py` actually tests (its `search` rejects a direction only
when *both* `X` and `Y` of the apex pair are identically zero — i.e. it already
implements the separated/maintained split, without saying so).

Rule (c0) is exercised **222 times** in the main arm below, and 171 of those are
in the `unsep` family, which is built precisely to have a coincidence the motion
leaves alone.

### 4.4 NOT NEEDED: (R3) — `r3_not_needed.py`, log `r3_not_needed.log`

Theorem CI reads only these witnesses: the four `D`'s of each class-(a) side
pair, the four `D`'s of each separated apex's (R2) pair, and the `X/Y` pair of
each cross-polygon class-(b) vertex pair. The first and third have **nonzero
constant term** (the quantity is already nonzero at `α = 0`), and the second is
`≢ 0` by (R2)'s own clause. So CI never queries a removable identically-zero
witness and **(R3) is not one of its hypotheses** — in contrast to (Fin-out),
which needs (R3) or 5′.

Measured over 216 arm-B instances across 9 families:

| | count |
|---|---|
| instances containing at least one identically-zero witness (**non-vacuity**) | **216 / 216** |
| identically-zero witnesses in the sample | 4 828 |
| witness keys Theorem CI consults | 4 661 |
| … of which identically zero | **0** |
| … surviving because `c₀ ≠ 0` (no uniform-`ε` input needed) | 3 565 |
| … with `c₀ = 0` but not identically zero (these are exactly (R2)'s `D`'s; this is where Theorem U does real work) | 1 096 |

The first row is the control: removable degeneracies genuinely occur in every
instance, so "CI never reads one" is a fact about CI, not about the sample.

---

## 5. The extended test — `injection2.py`, log `injection2.log`

### 5.1 What was extended, and why

`injection.py` (285 instances) used **one** configuration skeleton:
`eps_uniform.build`, i.e. `Q₀ = P₀` and `Q₃ = P₁` (two coincidences adjacent
along `P`, at `Q`-distance 3) plus one maintained relation (1) at `Q₅`. Four
blind spots followed:

1. **One skeleton.** Never 0, 1 or 3 coincidences; never adjacent along `Q`;
   never adjacent along both; never a vertex-side degeneracy in the
   `Q`-vertex-on-`P`-side direction; never an unseparated apex.
2. **One choice rule for class (c).** It tested the first incident pair that
   properly crosses, in a fixed scan order. The assembly's steps 2–3 claim
   something stronger — that *no* choice can collide.
3. **The (Fin-out) case was skipped**, as §4.1 describes.
4. **The injectivity column was not independently powered.** `injection.py`
   computes `inj = ok and inj`, so `inj` can only fail where `total` already
   failed; and every one of its 396 observed failures was `c-lost`, i.e. a
   *totality* failure. It never observed an injectivity failure, and it never
   observed a `b-lost` either, so neither the injectivity check nor the
   class-(b) rule had a demonstration that it can say no.

`injection2.py` fixes all four. It **reuses** `epslib` (`Poly`, `Vec`,
`orient`, `sgn`, `root_free_radius`) and `uniform`'s `witnesses`, `eps0_of`,
`seg_inter`, `sides`, `simple`, `cross_points`, `snap`, `rand_simple_heptagon`,
`CAND` verbatim. It **rewrites** the builder, the motion, the direction search
and all of the checking. Exact `Fraction` throughout.

*One float, disclosed:* `uniform.rand_simple_heptagon` sorts its random integer
points by `math.atan2(float(...))` to get a candidate cyclic order. That is
generation only — the resulting polygon is then accepted or rejected by the
exact `simple()` — so it can change which configurations are sampled but cannot
change a verdict. Every predicate evaluated in this pass is exact.

Two correctness guards on the harness itself, both of which caught real bugs in
my own code before any result was recorded:

* `V.at(0)` is asserted to equal the base configuration (`BUILDER_INCONSISTENT`).
  This caught a builder bug that produced three spurious `a-lost` "failures".
* **All** relations (1) are carried, not just the planted one: any `Q`-vertex in
  the relative interior of a `P`-side with a moving endpoint is made dependent.
  Without this the motion is simply not a (G3) motion and class (b) has no
  reason to survive. The uncarried version is kept as control 4b.

### 5.2 Main arm (arm B — (R2) enforced at every separated apex)

600 configurations, 10 families, 3 seeds, 3 values of `α` each including
`ε₀/10⁶`; **1 668 (configuration, α) tests**.

| family | what it adds | built | tests | `Φ` total | `Φ` inj (**any** choice) | lands | a / b / c |
|---|---|---|---|---|---|---|---|
| `none` | no coincidence; classes (a),(b) only | 60 | 180 | 180/180 | 180/180 | 180/180 | 663 / 222 / 6 |
| `one` | one coincidence | 60 | 168 | 168/168 | 168/168 | 168/168 | 510 / 141 / 177 |
| `fig27c` | `injection.py`'s skeleton (adjacent along `P`) | 60 | 168 | 168/168 | 168/168 | 168/168 | 489 / 126 / 336 |
| `adjP` | two coincidences adjacent along `P`, other `Q`-gap | 60 | 168 | 168/168 | 168/168 | 168/168 | 501 / 102 / 348 |
| `adjQ` | two coincidences **adjacent along `Q`** (new) | 60 | 171 | 171/171 | 171/171 | 171/171 | 435 / 99 / 348 |
| `three` | **three** coincidences, pairwise non-adjacent | 60 | 162 | 162/162 | 162/162 | 162/162 | 351 / 93 / 486 |
| `threeadjP` | **three** coincidences, consecutive along `P` | 60 | 159 | 159/159 | 159/159 | 159/159 | 303 / 6 / 477 |
| `vsboth` | vertex-side degeneracies in **both** directions | 60 | 159 | 159/159 | 159/159 | 159/159 | 534 / 297 / 165 |
| `unsep` | two coincidences, motion separates only **one** | 60 | 165 | 165/165 | 165/165 | 165/165 | 501 / 141 / 336 |
| `anti` | R3-1 skeleton: incident `P`- and `Q`-sides collinear at the apex | 60 | 168 | 168/168 | 168/168 | 168/168 | 492 / 99 / 180 |
| **TOTAL** | | **600** | **1 668** | **1 668/1 668** | **1 668/1 668** | **1 668/1 668** | **4 779 / 1 326 / 2 859** |

Other columns of the total row:

* **(G3) carried by the motion: 1 668/1 668.**
* **pairwise-disjoint candidate pair sets at `α = 0` (choice-free steps 2+3):
  556/556 configurations, 0 collisions.**
* **output finite: 1 668/1 668** in these families.
* **rule (c0) (maintained apex) used 222 times**, 171 of them in `unsep`. The
  fourth rule of §4.3 is exercised, not hypothetical.
* **rule (c1) with more than one admissible (R2) pair: 1 623 times.** This is
  what makes the "injective for *any* choice" column non-trivial: in 1 623 of
  1 668 tests at least one apex genuinely had several admissible images and all
  of them were disjoint from every other source point's image set.
* `inf@0 = 44` configurations were rejected because the *input* was already
  infinite; 4 of those had the step-3 hazard precondition.

### 5.3 Controls — all four fire

| control | what it breaks | `Φ` total | `Φ` inj | reading |
|---|---|---|---|---|
| **1. arm A (bare directions)** — coincidences must separate, (R2) **not** required | (R2) | **978/1 644** (666 failures) | 978/978 | reproduces `eps_uniform` Finding 4's arm-A/arm-B contrast at injection level, across 10 families |
| **2. `E ∥ an incident `P`-edge at the apex** | (R2), the Finding-2 family | **936/1 674** (738 failures) | 936/936 | fires |
| **3. MUTATED `Φ`** — class (a) sent to the crossing of its `P`-side with the **lowest-indexed** `Q`-side that `P`-side crosses | injectivity only | 1 668/1 668 | **702/1 668** (**966 failures**) | **the injectivity check can say no, with totality intact.** This is the control `injection.py` did not have |
| **4b. (G3) dropped** — the motion carries no relation (1) | (G3), i.e. the class-(b) rule | **699/1 668** (969 failures, all `b-lost`, matching 969 detected (G3) violations exactly) | 699/699 | **the class-(b) rule can say no.** `injection.py` never observed a `b-lost`; its class-(b) column was untested |

(A weaker version, control 4, that drops only the *accidental* relations (1)
fires 12 times in 1 668 — reported here because it is what I ran first and its
power is low; 4b is the one to read.)

Every arm shares its configurations with arm B, so the class counts are
identical across arms and the comparison is paired.

### 5.4 The hazard family, and the (Fin-out) family

| | built | inf at `α=0` | hazard precondition present | precondition **and** finite |
|---|---|---|---|---|
| `adjboth` + `adjbothrev` (two coincidences adjacent along **both** boundaries) | **360** | **360** | **360** | **0** |

| | built | tests | `Φ` total | `Φ` inj | **output infinite** | `ncard` form false |
|---|---|---|---|---|---|---|
| `anti`, `E` forced `∥ b₁`, (R2) still enforced | 120 | **312** | **312/312** | **312/312** | **312/312** | **312** |

The second table is §4.1 as a family rather than a single certificate: 120
configurations on which every hypothesis §2.3 states is satisfied, the injection
exists and is injective in all 312 tests, and the `ncard` inequality is false in
all 312. Candidate directions failing the (R2) filter are discarded before
testing (counter `R2_reject`), so every instance reported here is
(R2)-admissible by construction.

### 5.5 "The count did not drop" is still not a proxy

Confirmed again, in the other direction from the assembly's observation. In the
`anti`/`E ∥ b₁` arm the injection **succeeded** 312/312 while the `ncard`
conclusion **failed** 312/312. In arm A the count and the injection now agree
(978/1 644 both), because my families are richer than `eps_uniform.build` and
the compensating gains that produced the original 129-vs-0 discrepancy are
rarer. Both directions of the dissociation are now on record.

---

## 6. Independent verdict

### 6.1 Lemma CL — AGREE

Correct, complete, and needing only `SimpleClosed` and finiteness. The one
presentational defect is in the proper-crossing clause: "each has its endpoints
strictly off the other's line" does not follow from non-collinearity, it follows
from `x` being in the *relative interior* of both sides. §1 gives the argument.
`lemma_cl_check.py` finds 0 violations in 800 audited pairs (3 019 class-(a),
546 class-(b), 358 class-(c) points) and its finiteness-dropped control fires
400/400 on exactly the proper-crossing clause.

### 6.2 Theorem CI's injection — AGREE, with one repair to the case analysis

The injectivity argument is correct and my exhaustive class-pair table closes
every cell. Two corrections to the surrounding claims:

* The hostile review's §4.1 says it closed two collision types "the four
  numbered facts omit". Both are stated in fact 4. The review's conclusion
  stands; its account of the document's completeness does not.
* §2.3's hypothesis "(R2) at every vertex-vertex coincidence" is **unsatisfiable
  at an unseparated coincidence**, and §9.1 produces unseparated coincidences
  whenever it processes a configuration with two or more of them. The fix is a
  fourth rule (§4.3), which costs nothing and is already implicitly present in
  `run_arms.py`'s direction filter.

1 668/1 668 in the main arm, with injectivity checked **choice-free**, and with
an injectivity-specific control that fires 966 times.

### 6.3 Theorem CI's inequality — DISAGREE. It needs (Fin-out), and there is a certificate.

This is the gap. Stated as an `ncard` inequality, Theorem CI is **false** under
its own listed hypotheses, with an exact certificate (§4.1) drawn from
`eps_uniform/R3.md` Finding R3-1, re-verified from scratch and extended to 120
configurations / 312 tests. The injection survives in all of them; the
inequality does not.

This matters beyond bookkeeping because of how CI is used. A9-RED lists
(CI) as hypothesis 8 and (Fin-out) as hypothesis 13, as if independent. They are
not: hypothesis 8 as written **already assumes** hypothesis 13. A reader
checking off the rows would count (Fin-out) once and use it twice.

### 6.4 Double-counting — CLOSED, and provable by `decide`

§3. Decided exhaustively over `Fin 7 ^ 4`, with a firing mutation control, and
attacked constructively in 360 purpose-built configurations. The right
statement to formalise is the standalone lemma:

> If `∂P ∩ ∂Q` is finite then no two vertex-vertex coincidences of `P, Q` are
> adjacent along both boundaries.

### 6.5 What I would put in Lean, in order

1. **Lemma CL**, as three incidence statements. No `ε`, no motion. The hardest
   part is the proper-crossing clause; §1 is a complete proof.
2. **The step-3 lemma above.** Its index half is `by decide` over `Fin 7 × Fin 7
   × Fin 7 × Fin 7` (1 764 tuples, 196 nontrivial); its geometric half is "two
   segments with the same endpoint set are equal", one line.
3. **Theorem CI as an injection**, not as an inequality, with the four-rule
   case split of §4.3 and (G4) in its hypothesis list.
4. The `ncard` corollary, taking (Fin-out) explicitly.

Steps 1–2 are unconditional geometry and do not depend on (Aff)/Theorem 17, so
they are worth having regardless of what happens to the import.

---

## 7. Files

| file | what |
|---|---|
| `step3_exhaustive.py` / `.log` | exhaustive `Fin 7 ^ 4` decision of step 3 and fact 2, with a mutation control |
| `lemma_cl_check.py` / `.log` | Lemma CL as incidence counts, with a finiteness-dropped control |
| `ci_finout_cert.py` / `.log` | the (Fin-out) certificate, re-verified from scratch, importing nothing from the repository |
| `injection2.py`, `run2.py` / `injection2.log` | the extended injection test: 10 families, 4 controls, choice-free injectivity, (Fin-out) counted rather than skipped |
| `control4b.log` | the strong (G3) control |
| `r3_not_needed.py` / `.log` | Theorem CI does not consult a removable identically-zero witness |

## 8. Standing caveat

Everything above is conditional on **(Aff)**, i.e. AKR's Theorem 17, which this
project imports and has not reviewed. Nothing here bears on **(O2) = (NC)**, on
§9.2, or on the status of `f(7,7)`; this pass touched only hypothesis 8 of
A9-RED and the two lemmas under it. No Lean build was run and no Lean file was
modified.
