# Second attack on the tilted-translation repair of AKR §9.2

**Written 2026-09-21 by a second agent, working from `REPAIR.md` and the code
in this directory.** The job was to *break* the repair, not to confirm it.

**Nothing here is in Lean and no Lean build was run. No git command was run.
Nothing here proves *f*(7,7) = 38; that remains a candidate resting on an
unproved import, unreviewed by any mathematician.** Exact rational arithmetic
(`fractions.Fraction`) throughout; no float anywhere except in the *display* of
results and in `math.isqrt`, which is used only to produce **rational** bounds
on square roots.

New code: `attack3.py` (independent checker + exact δ₀), `sweep4.py`,
`families2.py`, `delta0_study.py`, `termination2.py`. Existing code
(`shift.py`, `repair.py`, `attack.py`, `sweep2/3.py`, `procedure2.py`) is
reused for the operators and the base generators.

---

## 0. Summary of verdicts

| target | verdict |
|---|---|
| averaging identity for the tilt | **survived**; no violation found in any family below, and the checker demonstrably fires |
| clause 4 under a **strictly stronger test than REPAIR.md ran** (see §1) | **survived** |
| explicit δ₀ of §2.3 | **sound in every instance tested**, with ≥ 2⁶ of slack; but **§2.3's sentence "finitely many strictly positive rationals" is FALSE** (§3) |
| the tilt is necessary (§1.3's defect) | **the defect is real** and the tilt fixes it rather than moving it (§5.1–5.2) — but the tilt turns out **not** to be necessary for §3.1's two-pass theorem (§5.3) |
| termination §3.1 | **the theorem as stated survives** 2 636 procedure runs; **§5.2's table row "one pass suffices" is not proved in §3** (§6.3) |
| **new**: the rotating neighbour can sweep a *Q*-feature, violating the identity above δ₀ — a failure mode **AKR's own rule does not have** | **exact certificate in §4.2**; δ₀ excludes it correctly, but §2.4's proof of (Loc) does not (§4.4) |

Details, counts, and the five concrete corrections listed in §8.2, follow.

---

## 1. A testing gap in REPAIR.md's own attack: clause 4 was only tested as a count

`attack.py:check_instance` sets

```python
r['nonew'] = (len(dp) <= len(d0) and len(dm) <= len(d0))
```

while its own docstring claims the test is "no vertex-side degeneracy of
(P(d),Q) is absent from (P,Q) **and** the TOTAL degeneracy count did not go up".
Only the second conjunct is implemented. The reason is structural, not
carelessness: `attack.degset` keys a degeneracy by the **coordinates** of the
vertex and of the side, and a shift moves those coordinates, so the sets before
and after are not comparable.

Clause 4 of REPAIR.md §2.7 is the stronger statement — *no new degeneracy
appears*. A shift that destroys one degeneracy and creates another passes the
count test. REPAIR.md §4.6 records exactly that happening at δ = 2⁻², so the
weakness is not hypothetical.

**`attack3.degset_idx` keys a degeneracy by `(kind, vertex INDEX, side INDEX)`**,
which is invariant under a shift, so the genuine subset test `D(P(δ),Q) ⊆
D(P,Q)` can be run. Everything below uses the strict test. It found **no**
violation, so REPAIR.md's conclusion is not affected — but its evidence for
clause 4 was weaker than the document claims, and now is not.

`attack3.py` also recounts |∂P ∩ ∂Q| by a second, independent code path
(`indep_count`: candidate points from line-line meets plus all vertices of both
polygons, then a membership test) and cross-checks it against `shift.count` on
every instance. **0 mismatches** in everything reported below.

---

## 2. δ₀ is sound, and the test is not vacuous

`attack3.delta0` implements §2.3 literally: ρ₁, ρ₂(i), ρ₂(ii), ρ₃, ρ₄, K_end,
K_slide, K_rot, τ₁, τ₂, r = ⅓ min ρ, and
δ₀ = min(r/(10 max(K_end,K_slide,K_rot,1)), τ₁, τ₂). Square roots are replaced
by **rational bounds in the safe direction** (ρ rounded *down*, K rounded *up*),
so the computed value is ≤ the real δ₀ and soundness testing is valid.

`delta0_study.py`, random heptagon pairs on a 7×7 grid, seed 303, 120 pairs
drawn / 25 usable (finite ∂P ∩ ∂Q, no vertex-vertex, ≥ 1 vertex-side
degeneracy), every side, all three rules; at each of the 8 dyadics
δ₀′, δ₀′/2, …, δ₀′/128 where δ₀′ is the largest dyadic below δ₀:

| rule | (config, side) triples with δ₀ defined | **failures at any δ ≤ δ₀** | triples that DO fail at some δ > δ₀ | slack e₀ − e_fail (exponents) |
|---|---|---|---|---|
| AKR | 164 (11 undefined) | **0** | 143 (87 %) | min 6, median 10, max 15 |
| translate | 175 | **0** | 148 (85 %) | min 6, median 10, max 15 |
| tilt | 175 | **0** | 149 (85 %) | min 6, median 10, max 15 |

≈ 4 100 exact instances. **Non-vacuity:** in 85–87 % of triples the very same
checker reports a failure at a δ *above* δ₀, so a run of zeros below δ₀ is
informative. δ₀ is never within a factor 2⁶ = 64 of the first failing δ, i.e.
it is **sound with margin but loose by ~10 binary orders**; that is the expected
price of the factor 10 and the ⅓ in its definition.

---

## 3. A real error in §2.3: the δ₀ constants are **not rational**

§2.3 says: "Define the following **finitely many strictly positive rationals**:
ρ₁, ρ₂, ρ₃, ρ₄, K_end, K_slide, K_rot, τ₁, τ₂."

ρ₁, ρ₂, ρ₃, ρ₄ are **distances**, and K_end, K_slide, K_rot are built from
**norms**. With rational input these are square roots of rationals, hence
generally irrational: on §1.3's own witness ρ₄ = min(|**w**|,|**u**|,|**z**|)
and on the `PBENT` heptagon used in §4 below ρ₁ = √5. Only τ₁ and τ₂ are
rational (τ₂'s second term simplifies to |⟨x−A,**n**⟩|/N, which is rational,
not `dist(t,ℓ(s))/|n|` evaluated as written).

**This does not break the theorem** — δ₀ is a positive real and any positive
rational below it works, so §5.2's row "all data rational, so a rational input
gives a rational output" still holds for the *output*. But:

* the sentence as written is false and should be corrected;
* a Lean formalisation cannot take δ := δ₀; it needs a **constructive rational
  lower bound**, e.g. by replacing every ρ by a rational *r* with *r*² ≤ (the
  squared distance) and every K by a rational upper bound. `attack3.delta0`
  does exactly this (`sqrt_lb` / `sqrt_ub` via `math.isqrt` at 2⁻⁸⁰ relative
  precision) and is a worked model for it;
* δ₀ is defined by a `min` over pairs of features, several of which range over
  **possibly empty** index sets (ρ₂'s list is empty if every vertex lies on a
  side of the other polygon; τ₁'s is empty if no *Q*-side meets *s*⁻). §2.3
  does not say what the empty `min` is. It has to be +∞, and a formalisation
  must say so.

---

## 4. The one thing that broke: **the rotating neighbour sweeps, and AKR's rule cannot**

This is the main new result of this round. It is not a counterexample to the
theorem — δ₀ excludes it — but it is a failure mode of the repair that **AKR's
own operator provably does not have**, that is **an order of magnitude sharper
than anything REPAIR.md §4 measures**, and that shows a **fixed** small δ can
never be used.

### 4.1 The mechanism

Under the repair the neighbour *s*⁻ = [*C*,*A*] **rotates about *C*** (case
(P2-i)), sweeping a thin wedge. If a *Q*-feature sits at distance ε above the
*middle* of *s*⁻, then for **one sign of δ only** the rotated *s*⁻ crosses it
and gains an intersection point; for the other sign it moves away. That is
*c*(δ) + *c*(−δ) = 2*c*(0) + 1 — a direct violation of the averaging identity.
Under AKR's rule **a** = **w**, so cross(**a**,**w**) = 0, *s*⁻ never leaves
its own line, and the sweep is impossible.

### 4.2 An exact certificate

```
P = (0,0) (10,0) (14,10) (4,18) (-8,12) (-12,4) (-6,-4)     simple heptagon
Q = (5, 2^-12) (11,20) (-2,22) (-4,6)                       simple quadrilateral
   |dP n dQ| = 2 ;  dP n dQ finite ;  no vertex-vertex ;
   NO vertex-side degeneracy at all (this is a "class N" side)
shift side i = 1, s = [(10,0),(14,10)],  s^- = [(0,0),(10,0)]
```

| rule | δ = 2⁻¹¹ | 2⁻¹² | 2⁻¹³ | 2⁻¹⁴ | δ₀ |
|---|---|---|---|---|---|
| **AKR (Fig. 28)** | (2,2,2) ✔ | (2,2,2) ✔ | (2,2,2) ✔ | (2,2,2) ✔ | 2⁻²³·⁸ |
| **pure translation** | **(2,4,2) ✘** | **(2,4,2) ✘** | **(2,4,2) ✘** | (2,2,2) ✔ | 2⁻²³·⁸ |
| **tilt** | **(2,4,2) ✘** | **(2,4,2) ✘** | **(2,4,2) ✘** | (2,2,2) ✔ | 2⁻²³·⁸ |

(*c*₀, *c*₊, *c*₋); ✘ = 4 + 2 ≠ 2·2. δ = 2⁻¹³ is by any naive standard a
*small* shift — the polygon has diameter ≈ 26 and the shortest side ≈ 9.2.

Scaling the family with ε = 2⁻ʲ, j = 0…12, exact in every case
(`families2.Y7`): the identity fails for **every** exponent *e* ≤ *j*+1 and
holds for every *e* > *j*+1, for **both repairs and never for AKR's rule**
(AKR fails only at *e* = 1, where the shift is not small at all). Meanwhile
−log₂ δ₀ = 12.08 + *j* — **δ₀ tracks ε exactly, one exponent per halving**, and
is sound with ≈ 11 exponents of slack.

### 4.3 Consequence: a fixed δ is never safe

`tilt`, same *P*, ε = 2⁻ʲ:

| ε | δ = 2⁻²⁰ | δ = 2⁻³⁰ |
|---|---|---|
| 2⁻¹⁰ | (2,2,2) ✔ | (2,2,2) ✔ |
| 2⁻¹⁹ | **(2,4,2) ✘** | (2,2,2) ✔ |
| 2⁻²⁹ | **(2,4,2) ✘** | **(2,4,2) ✘** |
| 2⁻⁴⁰ | **(2,4,2) ✘** | **(2,4,2) ✘** |

2⁻²⁰ and 2⁻³⁰ are the two test values used throughout REPAIR.md §4.1–4.2. They
are adequate *there* only because those families are built on **integer** grids,
where ε ≥ some fixed constant. **On dyadic input the repair needs δ computed
from the configuration; there is no fixed δ that works for all heptagon pairs.**
REPAIR.md says this in §2.3 ("it depends on all of *Q*, not just on *s*") and
measures one term of it (K_slide, family X3); it does **not** say that the
*rotating-neighbour* term is the one that AKR's rule is immune to, and its
tables read as if 2⁻²⁰ were a safe default.

### 4.4 A gap in the *proof* of (Loc), §2.4 — the constant is right, the reason is not

In the certificate the offending *Q*-side is
*t* = [(5,2⁻¹²), (11,20)]. Checked exactly: *t* **does not meet *s*⁻**, does not
meet *s*, and **does meet *s*⁺** (in one point).

§2.4's (Loc) proof handles a *Q*-side near a moving side in two ways:
ρ₂(ii), which is a min over *Q*-sides **disjoint from *s*⁻∪*s*∪*s*⁺**; and
K_rot / τ₁, both defined as maxima/minima over *Q*-sides **meeting *s*⁻** (resp.
*s*⁺). **Our *t* is in neither class**: it meets the union (at *s*⁺) so ρ₂(ii)
says nothing about it, and it does not meet *s*⁻ so K_rot and τ₁ say nothing
about it either. As written, (Loc) does not control it.

The constant that *does* control it is **ρ₂(i)** — here ρ₂ = ε exactly, via the
*Q*-vertex (5,ε) at distance ε from the *P*-side *s*⁻ — and the reason it
suffices is a fact REPAIR.md never states:

> **dist(σ, t) between two disjoint segments is attained at an endpoint of one
> of them.** Hence for every *Q*-side *t* with no endpoint on *s*⁻ and with
> *C*, *A* ∉ *t*, dist(*s*⁻, *t*) ≥ ρ₂(i) — even when *t* meets *s* or *s*⁺.
> (The excluded cases are exactly (P2) — a *Q*-vertex on *s*⁻ — and (P4) —
> *C* ∈ *t* — which are handled separately.)

**So §2.3's δ₀ needs no new term, but §2.4's proof of (Loc) needs this extra
step inserted.** Without it the rotating-neighbour case of (Loc) is not proved.
This is the sort of step a Lean formalisation would stall on.

---

## 5. Is the tilt necessary? Yes for the naive loop, **no** for the two-pass procedure

### 5.1 §1.3's defect is real — confirmed independently

On §1.3's witness, with the index-keyed checker and at δ = 2⁻⁶, 2⁻¹², 2⁻²⁴
(δ₀ = 1/60 for translate, ≈ 0.0118 for the tilt, so all three are below it):

| rule | *c* = (*c*₀,*c*₊,*c*₋) | identity | *D* before → after | theorem guarantees clearing? |
|---|---|---|---|---|
| AKR | — | — | — | **undefined** (straight vertices at both ends) |
| translate | (2,2,2) | ✔ | 1 → **1, 1** | **no** — cross(**v**,**n**) = 0, case (P3-ii) |
| tilt | (2,2,2) | ✔ | 1 → **0, 0** | yes |

The defect is *exactly* as §1.3 describes and the tilt removes it rather than
moving it: the tilt's **a** = **n**+**u** satisfies cross(**v**,**n**+**u**) =
cross(**v**,**u**) ≠ 0 whenever **v** ⊥ **u**, so the clearing is *structural*,
not a lucky choice — and it does not create anything (strict clause 4 clean in
every instance below).

Note also that REPAIR.md §4.1's "NOT cleared: 188 / 182" counts are **not**
theorem violations; they count degeneracies the theorem does not claim to
clear. Scored against what §2.7 clause 3 actually guarantees, the pure
translation has **0** clause-3 failures in all of §7's families too. The right
statement is the one §1.3 makes: it is *clause 3's endpoint half* that fails,
and only when a *Q*-side through a moving endpoint is perpendicular to *s*.

### 5.2 Forced families

`families2.Y3`, base heptagon with a straight vertex at **both** ends of the
shifted side, *Q* carrying a vertex inside *s* **and** a *Q*-side through *A*
**and** one through *B*; δ = 2⁻²⁰, 2⁻³⁴ and again at the largest dyadic below
δ₀:

| family | rule | instances | identity viol. | new deg. (strict) | **endpoint degeneracy survives** |
|---|---|---|---|---|---|
| **Y3** both *Q*-sides ⊥ *s* (188 distinct configs) | AKR | 0 (**400 undefined**) | — | — | — |
| | translate | 600 | **0** | **0** | **600 / 600** |
| | tilt | 600 | **0** | **0** | **0** |
| **Y3b** both *Q*-sides oblique | AKR | 0 (**476 undefined**) | — | — | — |
| | translate | 714 | **0** | **0** | **0** |
| | tilt | 714 | **0** | **0** | **0** |

Y3 vs Y3b is the control that makes Y3 mean something: the pure translation's
failure is **specific to perpendicularity**, 600/600 with it and 0/714 without.

### 5.3 But inside the two-pass procedure the pure translation recovers — and here is why

This qualifies REPAIR.md's framing, and it was **not** anticipated by the
document. Running the *procedure* (not a single shift) on the 188 Y3
perpendicular configurations, forward and reverse order, δ from δ₀ only:

| rule | order | result |
|---|---|---|
| tilt | fwd / rev | **188 / 188 cleared**, 2 shifts each, *P*-pass alone sufficed |
| translate | fwd / rev | **188 / 188 cleared**, 2 shifts each, *P*-pass alone sufficed |

The reason, traced on one instance: shifting the *previous* side moves *A*
perpendicular to *that* side, which **rotates *s***, and the rotated *s* is no
longer perpendicular to *t*_A — so the pure translation's (P3-ii) obstruction is
gone by the time *s*'s own turn arrives. This is not an accident, and (F) is
what forces it:

> *s* keeps its direction under a shift of *s*⁻ iff **n**_{s⁻} ∥ **u**, i.e.
> *s*⁻ ⊥ *s*. Combined with the obstruction *t*_A ⊥ *s* (i.e. **v** ∥ **n**),
> this gives **v** ∥ **u**_{s⁻}, so *t*_A is **collinear with *s*⁻** and shares
> the point *A* with it, with *A* interior to *t*_A — an overlap, excluded by
> **(F)**. Hence a shift of *s*⁻ *always* destroys the obstruction at *A*.

*(That argument is mine and is pen-and-paper; it is not in REPAIR.md.)* And
`carries` always fires on *s*⁻ when *A* is degenerate, because *A* is one of
*s*⁻'s endpoints — so *s*⁻ *is* shifted first, in forward order.

**Honest conclusion.** The tilt is necessary for the *single-shift* statement of
clause 3 and for the naive loop (§6.2), and it is a real improvement. It is
**not** necessary for the two-pass theorem of §3.1, which REPAIR.md itself says
(§3.1, "Note which half of clause 3 this uses") — and in **1 088 procedure runs
below the pure translation cleared every configuration too**. A reader of
§5.2's table, which gives the tilt "one pass suffices" against the translation's
"via §3.1's two passes", would not guess that the *P*-pass alone sufficed for
the pure translation in **100 %** of the runs here.

---

## 6. Termination (§3), attacked

### 6.1 A stronger test than `procedure2.py` runs

`procedure2.do_shift` halves δ **until an acceptance test passes**, and that
acceptance test inspects the very conclusions the theorem is supposed to
guarantee (identity, clause 3, clause 4). That is a fine way to *run* a
procedure, but it cannot *falsify* the theorem: if the theorem failed at every
δ the loop would merely exhaust its 60 halvings and report a skip.

`termination2.py` chooses δ = the largest dyadic strictly below the computed δ₀
**from (P,Q,i,rule) alone, without looking at the answer**, and then *asserts*
nine things at every step (T1 identity, T2 clause 3, T3 strict clause 4, T4 *D*
never rises, T5 simplicity + finiteness + no new vertex-vertex, T6 some sign
does not decrease the count, T7 *D* = 0 at the end, T8 ≤ *m*+*n* shifts, T9 the
final count is ≥ the initial). Any failure raises.

| experiment | configs × orders | tilt | pure translation | AKR |
|---|---|---|---|---|
| random heptagons 7×7, seed 501, fwd | 100 | **100 cleared** | — | — |
| random heptagons 7×7, seed 601, fwd/rev/rand | 80 × 3 | **240 cleared** | **240 cleared** | 211 cleared, 29 **undefined** |
| high-*D* search (*D* = 6,7,8), fwd/rev/rand | 24 × 3 | **72 cleared** | **72 cleared** | 42 cleared, 30 **undefined** |
| Y3 perpendicular family, fwd/rev | 188 × 2 | **376 cleared** | **376 cleared** | undefined |
| **interleaved** single pass over all 14 sides, random order | 70 × 3 | **210 cleared** | **210 cleared** | 185 cleared, 25 **undefined** |
| *Q*-pass first, then *P*-pass | 70 | **70 cleared** | **70 cleared** | — |
| random heptagons 7×7, seed 4242, fwd | 300 | **300 cleared** | **300 cleared** | 259 cleared, 41 **undefined** |

**Totals: 1 368 full procedure runs for the tilt and 1 268 for the pure
translation, every one of them terminating with *D* = 0, no T1–T9 assertion
ever raised, the count never decreasing, and the shift count never exceeding
6 (bound *m*+*n* = 14).** AKR's rule was undefined in **125 of 862** runs
(14.5 %), reproducing REPAIR.md §4.6's 14–17 % on a fresh sample.

Two claims of §3.1 that are *stronger* than tested there also held:
**"in any order"** (forward, reverse and random orders all clear), and — not
claimed anywhere — a **single interleaved pass over both polygons' sides in
random order** also clears, 420/420 for the two repairs.

### 6.2 Non-vacuity: the loop **can** fail to terminate, and does

`termination2.naive` is AKR's sentence read literally — "to kill a degeneracy at
vertex *x*, shift a side incident to *x*" — with δ still taken from δ₀, so the
shifts are genuinely small. On **300 random heptagon pairs** (seed 4242, *D*
histogram 1:153, 2:93, 3:42, 4:11, 5:1):

| rule | cleared | **did not terminate in 60 rounds** | undefined |
|---|---|---|---|
| **tilt** | **300** | **0** | 0 |
| **pure translation** | 242 | **58 (19.3 %)** | 0 |
| AKR | 261 | 0 | **39** |

**This is the non-vacuity control for every "cleared" row above**: the same
harness, the same δ-selection, reports non-termination 58 times. REPAIR.md
§3.2 exhibits **one** hand-built non-terminating witness; here the phenomenon
occurs in **19 % of random heptagon pairs**, and the tilt kills all of it. §3.2
is therefore *understated*, not overstated.

The mechanism is the one §3.2 names: the naive loop shifts **the same side**
repeatedly, so (unlike §5.3) no neighbour ever rotates it out of
perpendicularity, and the endpoint slides up its *Q*-side for ever.

### 6.3 What §3 still does not prove

1. **§5.2's table row "every vertex-side degeneracy removed — tilt: **yes, one
   pass suffices**" is not proved in §3.** §3.1 proves the *two*-pass statement
   and explicitly says the endpoint half of clause 3 is not used. The one-pass
   claim needs the extra argument: *every P-vertex is an endpoint of two P-sides,
   both of which `carries` selects; the later of the two shifts clears it by the
   tilt's clause 3; and P_j does not move again afterwards.* That is true for
   every order, but it is an argument, and it is missing. (Empirically the
   *P*-pass alone sufficed in **1 268/1 268** runs — for the pure translation
   too, which the table denies.)
2. **The potential function is not actually used.** §3.1's proof of part 3 is a
   *no-back-tracking* argument (clause 3 + clause 4), not a descent argument;
   *D* ≤ *m*+*n* is used only to bound the initial value, which the pass
   structure already bounds. The "potential function" framing oversells what is
   a one-pass invariant argument. Nothing is wrong; the *name* is.
3. **Nothing bounds the bit-size of the output.** Each shift is rational, but δ₀
   shrinks with ρ₂ and the coordinates of *P*(δ) acquire the denominators of δ.
   Across a 14-shift pass the denominators compose. §3 says nothing about this,
   and for a Lean formalisation over ℝ it does not matter — but for any
   *executable* certificate it does. Observed here: 2 shifts took a heptagon
   from integer coordinates to denominators of 2²⁷.

---

## 7. Everything that was run, with its non-vacuity control

All exact-rational. "instances" = (configuration, side, δ, rule) quadruples.

| § | family / sweep | what it forces | instances | identity viol. | clause 3 viol. | **strict** clause 4 viol. | new vertex–vertex | count x-check mismatch |
|---|---|---|---|---|---|---|---|---|
| 2 | δ₀ ladder, seed 303, 7×7 | — | 4 112 | **0** | **0** | **0** | **0** | **0** |
| 2 | δ₀ ladder, seed 909, 7×8 | — | 21 856 | **0** | **0** | **0** | **0** | **0** |
| 7.1 | `skew` / `even` control sweep, seed 1313 | wrong rules | 3 360 | 234 (`even` only) | **0** | **0** | **0** | **0** |
| 7.2 | large-δ control sweep, seed 1717 | δ not small | 3 966 | **266** | **164** | — | **18** | **0** |
| 1 | stratified sweep, seed 101 | — | 2 192 | **0** | **0** | **0** | **0** | **0** |
| 5 | **Y1** *Q*-side through the pivot *C*, nearly collinear with *s*⁻ | 1 962 instances all with a (P4) pivot degeneracy | 1 962 | **0** | **0** | **0** | **0** | **0** |
| 5 | **Y2** *Q*-vertex inside the **rotating** *s*⁻, τ → 1 | 2 340 instances all with a (P2) degeneracy | 2 340 | **0** | **0** | **0** | **0** | **0** |
| 5 | **Y3** ⊥ at both endpoints + interior + straight vertices | 1 200 | 1 200 | **0** | **0** | **0** | **0** | **0** |
| 5 | **Y3b** oblique control | 1 428 | 1 428 | **0** | **0** | **0** | **0** | **0** |
| 4 | **Y4** *Q*-side nearly ∥ *s* **and** carrying *A* | *k* ≤ 128 | 192 | **0** below δ₀ | **0** | **0** | **0** | **0** |
| 4 | **Y5** tilt decision boundary, **v** = (2⁻ᵉ,1) | ε ↓ 2⁻¹² | 273 | **0** below δ₀ | **0** | **0** | **0** | **0** |
| 4 | **Y7** rotating-neighbour sweep | ε ↓ 2⁻¹² | 1 287 (621 below δ₀, 666 above) | **0 below δ₀**; **195 above** (91 translate, 91 tilt, 13 AKR) | **0** | **0** | **0** | **0** |

**Non-vacuity, stated for each checker:**

* **identity** — fires: 85–86 % of δ₀-study triples have a δ > δ₀ at which the
  identity or another clause fails; Y7 produces **93** identity violations at
  δ > δ₀; REPAIR.md's controls R1 (δ = 2⁻³) and R2 (vertex–vertex present) were
  re-read and are unchanged.
* **clause 3** — fires: 600/600 endpoint survivals for the pure translation in
  Y3, 0/714 in the oblique control Y3b, 0/600 for the tilt.
* **strict clause 4** — see §7.1. The obvious control **failed to fire** and
  is reported as such.
* **presence of the phenomenon** — every Y-family reports the count of
  instances actually exhibiting the targeted feature, and in each it is 100 %
  of the family (pivot degeneracy in Y1, rotating-neighbour degeneracy in Y2,
  two endpoint degeneracies in Y3/Y3b), not a hoped-for by-product of random
  sampling.
* **termination** — fires: 58/300 non-terminations for the pure translation
  (§6.2), 125/862 undefined for AKR's rule.

### 7.1 A control that did **not** fire, reported as such

I expected the strict clause-4 test (§1) to fire on REPAIR.md's own wrong rule
`skew` (*A* moves δ**n**, *B* moves 2δ**n**, so the shifted side is not
parallel to *s* and lies on no single ℓ_δ). 60 usable random heptagon pairs,
every side, δ = 2⁻²⁰ and 2⁻³⁴, seed 1313:

| rule | instances | identity viol. | **new degeneracy (strict)** | count rose |
|---|---|---|---|---|
| `skew` (wrong rule) | 840 | **0** | **0** | **0** |
| `even` (wrong rule, displacement even in δ) | 840 | **234** | **0** | **0** |
| tilt | 840 | 0 | 0 | 0 |
| translate | 840 | 0 | 0 | 0 |

**`skew` does not fire on clause 4 either.** REPAIR.md §4.3 reports R3 as not
firing on the *identity* and explains why (the offset is still a nonzero
multiple of δ with a fixed sign, so Lemma 3 applies); the same explanation
covers clause 4, because clause 4 only needs the displacement to be *small*,
which `skew`'s is. So `skew` is not a wrong rule in any respect these tests
measure — it is a **different admissible perturbation**, and REPAIR.md's
framing of it as "a deliberately WRONG rule" is itself questionable.

The control that *does* fire for clause 4 is δ **not small** — §7.2, where the
same strict checker reports **37 / 204 new degeneracies** at δ = 2⁻².

**I am reporting the non-firing control rather than quietly replacing it**, as
REPAIR.md §4.3 did for R3.

### 7.2 The control that does fire — the strict clause-4 checker is not blind

Same `attack3.check`, same configurations (45 usable random heptagon pairs of
405 drawn, seed 1717, every side), only δ varied:

| δ | rule | instances | identity viol. | **new degeneracy (strict)** | count rose | **new vertex-vertex** | skipped (not simple / infinite) |
|---|---|---|---|---|---|---|---|
| 2⁻¹ | tilt | 107 | **38** | **35** | 21 | **9** | 208 |
| 2⁻² | tilt | 204 | **56** | **37** | 21 | 0 | 111 |
| 2⁻³ | tilt | 276 | **31** | **7** | 3 | 0 | 39 |
| 2⁻⁴ | tilt | 302 | **8** | **2** | 1 | 0 | 13 |
| 2⁻⁶ | tilt | 315 | **0** | **0** | 0 | 0 | 0 |
| 2⁻²⁰ | tilt | 315 | **0** | **0** | 0 | 0 | 0 |
| 2⁻¹ | translate | 108 | **38** | **35** | 21 | **9** | 207 |
| 2⁻² | translate | 204 | **54** | **36** | 21 | 0 | 111 |
| 2⁻³ | translate | 276 | **31** | **7** | 3 | 0 | 39 |
| 2⁻⁴ | translate | 302 | **8** | **2** | 1 | 0 | 13 |
| 2⁻⁶ | translate | 315 | **0** | **0** | 0 | 0 | 0 |
| 2⁻²⁰ | translate | 315 | **0** | **0** | 0 | 0 | 0 |

**Every verdict in this document fires somewhere**: identity (56/204), strict
clause 4 (37/204), clause 2's no-new-vertex-vertex (9/107), simplicity
(208 rejections at δ = 2⁻¹). And the 2⁻³ column reproduces REPAIR.md's control
R1 on an independent sample. The zeros below δ₀ are therefore informative, not
an artefact of a checker that cannot say no.

---

## 8. Verdict and what still needs proving

### 8.1 Does the repair survive?

**Yes.** In ≈ **40 000 exact-rational instances** across seven new adversarial
families and two δ₀-driven ladders, plus **2 636 complete procedure runs**,
I found **no counterexample to the averaging identity, to clause 3, to the
strict form of clause 4, to clause 1 or 2, or to termination**, at any δ below
the δ₀ of REPAIR.md §2.3. The one thing I broke — §4 — is broken only *above*
δ₀, and δ₀ excludes it correctly.

I tried, specifically: several simultaneous degeneracies on the shifted side;
straight vertices at both ends; a *Q*-side nearly parallel to the shifted side,
alone and crossed with an endpoint degeneracy; degeneracies at the moving
endpoints, including at both at once and with the *Q*-sides forced
perpendicular; *Q*-features interior to a rotating neighbour, pushed to the
endpoint; a *Q*-side through the fixed pivot nearly collinear with the
neighbour it pivots; the tilt's own decision boundary approached from both
sides; high-degeneracy configurations up to *D* = 8; and forward, reverse,
random, interleaved and *Q*-first orders of the procedure, plus the naive loop.

### 8.2 The five corrections this round produces

1. **§2.3's "finitely many strictly positive rationals" is false** (§3). ρ₁–ρ₄
   and the K's are square roots. Harmless for the theorem, blocking for Lean.
   §2.3 also leaves the empty `min` undefined.
2. **§2.4's proof of (Loc) does not cover the case that matters most for the
   repair** (§4.4): a *Q*-side that meets *s* or *s*⁺ but not *s*⁻ and comes
   close to *s*⁻ falls outside ρ₂(ii), K_rot and τ₁ alike. The constant ρ₂(i) is
   adequate, but only via the unstated fact that the distance between two
   disjoint segments is attained at an endpoint. **This step must be inserted.**
3. **REPAIR.md's clause-4 evidence was weaker than the document says** (§1):
   `attack.py` tests a count, not a subset. Re-run strictly: still clean.
4. **§5.2's "one pass suffices" for the tilt is not proved in §3**, and its
   implicit claim that the pure translation *needs* two passes is not what the
   data show — the *P*-pass alone sufficed for the pure translation in
   1 268/1 268 runs, for the reason in §5.3, which is a consequence of (F) that
   REPAIR.md does not notice.
5. **REPAIR.md's control R3 (`skew`) is not a wrong rule** in any respect these
   tests measure (§7.1), so reporting it as a control that "did not fire" is
   generous to it; it is an admissible perturbation.

### 8.3 What still needs proving

| item | state after this round |
|---|---|
| averaging identity for *G*(**a**,**b**) | **pen-and-paper only**, by one agent, now attacked by a second and unbroken; **not machine-checked**, not reviewed |
| (Loc), §2.4 | **incomplete as written** — §4.4's missing step |
| δ₀ | correct in ≈ 26 000 instances; needs a **rational** reformulation and an empty-`min` convention before Lean |
| clause 3, endpoint half | correct; the tilt's transversality cross(**v**,**n**+**u**) = cross(**v**,**u**) ≠ 0 is exact and case-free |
| termination, one pass | true in 2 636 runs, **argument missing from §3** |
| bit-size of the iterate | **unaddressed**; 2 shifts produced denominators 2²⁷ |
| (VV), i.e. §9.1 | **open and necessary**, untouched by this round; every use of it above is flagged **[VV]** and it is used in Lemma 0, Lemma 1, ρ₁ and case (P3) |
| formalisation in Lean | **not started.** No `.lean` file was read into, created or modified; **no Lean build was run** |
| review by a mathematician | **none** |

**(VV) is assumed throughout, as permitted: §9.2 runs only after §9.1.** It is
used in Lemma 0 (a point lies in the relative interior of at most one side of
the other polygon), Lemma 1 (a *Q*-side meeting a *P*-side is not parallel to
it), the positivity of ρ₁, and case (P3)'s "*A* is not a *Q*-vertex, so exactly
one *Q*-side contains it". Every family above filters on ¬(vertex-vertex).

**f(7,7) = 38 is not proved by anything in this document.** It remains a
candidate resting on §9 of Ackerman–Keszegh–Rote, whose vertex-side half this
repair would replace rather than import, on paper, unreviewed, and not in Lean.
