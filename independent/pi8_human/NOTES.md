# Π₈ by hand — working notes

## Status: a strictly stronger, cleaner statement found. No human proof yet.

## The reformulation

Π₈ constrains a 3×3 window of side pairs. Separate the **six off-diagonal**
cells from the **three diagonal** cells (0,0), (1,1), (2,2).

Ask: *given that all six off-diagonal cells cross, which diagonals are
realizable?* Exhaustive over all 3,315 eight-point order types
(`./pat --diag`), writing X = cross, `.` = miss:

| diagonal (0,0),(1,1),(2,2) | order types |
|---|---:|
| `. . .` | **427** |
| `X . .` | **0** |
| `. . X` | **0** |
| `X . X` | **0** |
| `. X .` | 1031 |
| `X X .` | 1299 |
| `. X X` | 1299 |
| `X X X` | 913 |

Each line independently re-checked as a standalone pattern; all four zeros and
the 427 confirmed.

## The theorem this suggests

> **If all six off-diagonal cells of a 3×3 window cross and the centre cell
> (1,1) misses, then both corner cells (0,0) and (2,2) must also miss.**

Read off the table: with the centre a miss, the only realizable diagonal is
`. . .`. The three impossible rows are exactly those with a centre miss and at
least one corner crossing.

**This implies Π₈.** Π₈ asks for (0,0) cross and (1,1) miss, with (2,2) free —
i.e. the union of rows `X . .` and `X . X`, both zero.

**It is strictly stronger.** Π₈ constrains one corner; this constrains both.
It is also *symmetric*: invariant under transpose (P↔Q) and under reversal
(i↦2−i, j↦2−j), which the table confirms — `X . .` and `. . X` are exchanged by
reversal and both vanish.

## Why this is the better target for a synthetic proof

- One sentence, no free cell, no asymmetry to carry through a case analysis.
- The **427** cross-validates: an independently built tightness profile
  (`independent/pi8_tightness/`) found that dropping the `P₀×Q₀` condition from
  Π₈ leaves exactly 427 realizable order types — the same 427, reached by a
  different program. So the corner cell is where the contradiction concentrates,
  which is exactly what this reformulation isolates.
- A proof would presumably run: *centre miss + off-diagonals cross ⟹ a forced
  configuration ⟹ corners cannot cross.* The sign-alternation fact is the
  natural opening: `P₀` crossing all three `Q`-sides forces
  sign(or(p₀,p₁,q_j)) to alternate over j = 0,1,2,3.

## Tooling

`pat.c` — exhaustive search over the order-type database for any 3×3 pattern.
`./pat "XXXX.XXX?"` (row-major, `X` cross, `.` miss, `?` free) reproduces
Π₈ → 0/3315. `./pat --diag` produces the table above. `--first` prints a
witness labelling with coordinates.

## Not yet done

- No human proof of the reformulated statement.
- No counterexample search beyond the order-type database (which is exhaustive
  for 8 points, so a counterexample would have to be a *coding* error, not a
  geometric one).
- The `. X .` / `X X .` / `. X X` / `X X X` rows are unexplained — is there a
  pattern to which diagonals survive? `X . X` vanishing while `X X X` survives
  is the suggestive asymmetry.

---

# Session 2 — a general lemma, a full proof of half the mechanism, and a
# precisely isolated remaining gap

## Proof strategy (proved)

The theorem reduces to ruling out corner `(0,0)` crossing (given the six
off-diagonals cross and centre misses); the other corner `..X` then falls out
for free by the reversal symmetry `i↦2−i, j↦2−j` (which fixes the centre and
swaps the two corners, and is a genuine symmetry of the crossing predicate,
checked in session 1). So the whole conjecture reduces to:

> **Claim.** Eight points, general position. If `P₀` crosses `Q₀,Q₁,Q₂`, `P₁`
> crosses `Q₀,Q₂`, `P₂` crosses `Q₀`, and `P₁` misses `Q₁`, then `P₂`
> misses `Q₁`.
>
> *(Corrected 2026-09-20: this read "`P₂` crosses `Q₀,Q₁`", which contradicts
> its own conclusion. The hypothesis is cell `(2,0)` only; `(2,1)` is what is
> being derived. Verified against the database with `(2,0)` alone as the
> hypothesis — 5,782 labellings, conclusion fails in 0.)*

(This is the six off-diagonals plus corner `(0,0)` assumed crossing, i.e. the
`XXX/X.X/XX?` row of the diagonal table restricted to what's needed — see
below, not all six off-diagonals turn out to be needed for every step.)

**Checked computationally that this is exactly the right statement**: pattern
`XXXX.XX??` (`(0,0)(0,1)(0,2)(1,0)(1,1=miss)(1,2)` fixed, `(2,0)` free,
`(2,1),(2,2)` free) realizes in 1651/3315 order types; forcing `(2,0)` too
(`XXXX.XX?` + `(2,0)=X`) doesn't change which mechanism fires (see below); and
forcing `(2,1)=X` on top of any of these collapses to 0. So `(2,1)` miss is
forced already by five of the six off-diagonals (all but `(2,1)` itself,
obviously, and `(2,0)` is not even needed for the *first half* of the
argument, only for pinning `x₁` later).

## A general Core Lemma (proved, by coordinates — not specific to this problem)

**Core Lemma.** Let `A, B, C` be three points with `B` between the other two
in the path sense (segments `[B,A]` and `[B,C]` share the endpoint `B`), and
let `[D,E]` be a fourth segment. If **both** `[B,A]` and `[B,C]` cross `[D,E]`
(as segments), then
```
  sign(or(A,B,D)) = −sign(or(B,C,D))      and      sign(or(A,B,E)) = −sign(or(B,C,E)).
```

*Proof.* Apply the (unique, orientation-preserving) affine map sending
`B↦(0,0)`, `A↦(1,0)`, `C↦(0,1)` — such a map exists and is unique up to a
positive shear/scale in `y`, and it preserves the sign of every orientation
determinant of every other point, so it suffices to prove the claim in these
coordinates. Then `or(A,B,X) = sign(−X_y)` and `or(B,C,X) = sign(−X_x)` for
any point `X=(X_x,X_y)`, so the claim becomes: `D` and `E` both lie in the
open second or fourth quadrant (`X_x·X_y<0`).

Since `[B,A]` (the unit segment on the x-axis) crosses `[D,E]`, and `[B,C]`
(the unit segment on the y-axis) crosses `[D,E]`, the *line* through `D,E`
meets the x-axis at `(t,0)`, `t∈(0,1)`, and the y-axis at `(0,s)`, `s∈(0,1)`,
and — because these are crossings of the *segment* `[D,E]`, not just the line
— both `(t,0)` and `(0,s)` lie strictly between `D` and `E`. Parametrize the
line as `(1−λ)(0,s) + λ(t,0)`; `λ=0` is `(0,s)`, `λ=1` is `(t,0)`. Since these
two points are interior to segment `[D,E]`, one of `D,E` has `λ<0`, the other
`λ>1`. For `λ>1`: `x=λt>0`, `y=(1−λ)s<0` — fourth quadrant. For `λ<0`: `x<0`,
`y=(1−λ)s>0` — second quadrant. Either way `x·y<0`. ∎

**Checked computationally, in full generality** (not just for our 8-point
setup — this is a fact about any 5 points `A,B,C,D,E` in general position):
hypothesis `{[B,A]×[D,E] cross, [B,C]×[D,E] cross}` alone, over all 3315
order types with `(A,B,C,D,E)=(p0,p1,p2,q0,q1)`: **7,122,240/7,122,240**
labellings satisfy `or(p0,p1,q0) = −or(p1,p2,q0)`, zero exceptions
(`./probe5 0`). Same for `(A,B,C,D,E)=(p0,p1,p2,q2,q3)`: **7,122,240/7,122,240**
(`./probe5 1`). Same again for the vertex-`p2` instance with `D=q0`
(`{[p2,p1]×[q0,q1], [p2,p3]×[q0,q1]} ⟹ or(p1,p2,q0) = −or(p2,p3,q0)`):
**7,122,240/7,122,240** (`./probe8`).

## Consequence 1 (proved): the centre-miss disjunction collapses unconditionally

Write `s(k) = sign(or(p0,p1,q_k))`, `u(k) = sign(or(p1,p2,q_k))`,
`x(k) = sign(or(p2,p3,q_k))`, `w(k) = sign(or(q1,q2,p_k))`.

1. `P0` crosses `Q0,Q1,Q2` (row 0 full — corner `(0,0)` assumed plus the two
   given off-diagonals `(0,1),(0,2)`) gives the standard alternation
   `s0≠s1≠s2≠s3` (chaining the crossing condition three times), hence **`s0=s2`**.
2. Core Lemma at vertex `p1` with `[D,E]=Q0=[q0,q1]` (using `(0,0)` assumed
   and `(1,0)` given): **`s0 = −u0`**.
3. Core Lemma at vertex `p1` with `[D,E]=Q2=[q2,q3]` (using `(0,2)` and
   `(1,2)` given): **`s2 = −u2`**.
4. Combine 1–3: `−u0 = s0 = s2 = −u2`, so **`u0 = u2`**.
5. `(1,0)` given ⟹ `u0≠u1`; `(1,2)` given ⟹ `u2≠u3`. With `u0=u2`:
   `u1 = ¬u0 = ¬u2`, so **`u1 ≠ u2`, unconditionally** — i.e. this is now a
   *theorem*, not a case: given corner `(0,0)` crosses plus the four
   off-diagonals `(0,1),(0,2),(1,0),(1,2)`, `q1` and `q2` are **always** on
   opposite sides of line `p1p2`.
6. Crossing `P1×Q1` requires **both** `u1≠u2` and `w1≠w2`. Since `u1≠u2` is
   now unconditional, `P1×Q1` **misses iff `w1=w2`**. Given the theorem's
   hypothesis that the centre misses: **`w1 = w2`, forced, no case split
   remaining.**

This fully resolves the "centre miss is a disjunction, handle two cases"
issue flagged in session 1 for the sub-branch where corner `(0,0)` is assumed
to cross: **only one of the two disjuncts is ever live here; the other
(`u1=u2`) is geometrically impossible given the hypotheses.**

**Checked computationally** at every step:
- Step 4/5 (`u1≠u2` unconditionally, from exactly the 5 conditions
  `(0,0),(0,1),(0,2),(1,0),(1,2)`, no centre assumption): pattern
  `XXXX?X???` → 3166/3315 order types, 311,148 labellings, **0** with
  `u1=u2` (`./probe2`). Leave-one-of-the-five-out check confirms all five are
  necessary (dropping any one makes `u1=u2` possible again — counts
  102002/386424/102002/116592/116592 respectively; `./probe2` with each
  4-condition pattern).
- Step 6 (`w1=w2` forced, adding centre-miss, still without `(2,0)`): pattern
  `XXX?.????` restricted further to `{(0,0),(0,1),(0,2),(1,0),(1,2)}=X,
  (1,1)=miss` → 2233/3315 order types, 15,644 labellings, **`w1=w2` in
  15,644/15,644**, zero exceptions (`./probe9`).

## Consequence 2 (proved): two more pinned values, `x0` and `x1`

Core Lemma at vertex `p2` with `[D,E]=Q0=[q0,q1]` (using `(1,0)` and `(2,0)`
given): `u0 = −x0`. Combined with `u0=u2` (above): **`x0 = −u2`**.
`(2,0)` given also gives the ordinary crossing condition `x0≠x1`, so
**`x1 = −x0 = u2`**.

**Checked computationally**: `./probe8` (general Core Lemma instance, see
above) plus the algebra is immediate from already-verified facts.

## The remaining gap (open, honestly stated)

To finish, we need `P2` to miss `Q1`, i.e. **not** (`x1≠x2` **and** `w2≠w3`).
We have `w1=w2` and `x1=u2` pinned, but **`x2` and `w3` are not pinned by
anything in the Core-Lemma toolkit**: no further pair of segments sharing a
vertex, both crossing a common third segment, is available from the given
data that would fix them — every such application either needs the centre
(`P1×Q1`, which misses, so the Core Lemma's hypothesis fails) or needs the
*other* target corner `(2,2)` (unknown, free).

**Checked computationally that this is real, not a lookup failure:**
- Under the 1651-order-type hypothesis (`(0,0),(0,1),(0,2),(1,0),(1,2)` cross,
  `(1,1)` miss, `(2,0)` **also forced cross** so col 0 is full too — pattern
  `XXXX.XX??`), the outcome for `(2,1)` splits by *which* disjunct fires:
  - `x1=x2` only (not `w2=w3`): **330** labellings
  - `w2=w3` only (not `x1=x2`): **4842** labellings
  - both: **610** labellings
  - neither: **0** labellings (`./lemma_probe`)

  So `(2,1)` always misses (0 "neither"), but genuinely via **either**
  mechanism depending on the configuration — this is a real disjunction, not
  an artifact.
- Exhaustive search over **all 56** order-type-triples among the 8 points for
  a single orientation sign that always equals or always negates `x2`, or
  `w3`, within this same 1651-order-type hypothesis: only the trivial
  self-matches (`or(p2,p3,q2)==x2`, `or(p3,q1,q2)==w3`) turned up — **no
  nontrivial single determinant pins either quantity** (`./probe6`).
- Exhaustive search over all **1540 XOR-pairs** of triples for a product that
  always equals `x2`: **0 found** (`./probe7`).

So the mechanism that finally kills `(2,1)` is *not* a 2-point or 3-point
sign identity reachable by "two segments share a vertex, both cross a third
segment" reasoning (the tool that did all the work above). It is either (a) a
genuine multi-branch case split on some further discrete parameter not yet
identified (candidates not yet tried: the order of the three `P0`-crossing
points along `P0`, as suggested in the task brief; or `τ=sign(or(p0,p1,p2))`
and the analogous turn at `q1`, `sign(or(q0,q1,q2))`, as an explicit 4-way
split), or (b) a genuinely higher-order (4+ point) Grassmann–Plücker-type
relation not of the simple shared-vertex form.

## Verdict

**Substantial, verified progress, not a complete proof.** What's proved by
hand (not just checked): a general, reusable Core Lemma about segment
crossings (Sections above), and a full, unconditional resolution of the
centre-miss case split for the corner-`(0,0)`-crosses branch, plus two of the
four quantities (`x0`, `x1`) needed to finish. What remains: pinning `x2` and
`w3` (or ruling out `x1≠x2 ∧ w2≠w3` directly), confirmed by exhaustive search
to require something beyond the toolkit that closed everything else — most
likely a genuine case split the size of which is not yet known (at least 2,
plausibly more). This is closer to the goal than the session-1 reformulation
(which had zero synthetic content), but it is not tractable to finish in this
session without inventing the missing tool. Given how cleanly the Core Lemma
cracked *every other* obstruction in this problem, my honest guess is the
missing piece is a variant of it — the shared-vertex trick applied to a
*derived* segment (e.g. the segment between the two crossing points of `P0`
with `Q0` and `Q2`) rather than to `p1,p2,p3` directly — but I have not found
the right derived segment, and did not want to guess further without
computational verification.

## Files added this session

- `lemma_probe.c` / `lemma_probe2.c` — mechanism breakdown (caseA/caseB,
  mechX/mechW) for the reduced Lemma; this is what found "caseA never
  happens" and the 330/4842/610 split.
- `probe2.c` — generic pattern-in, caseA(`u1==u2`)-count-out; used for the
  leave-one-out necessity checks.
- `probe3.c` — checks `u0` vs `u2` directly (the key reduction).
- `probe4.c` — exhaustive single-triple correlation search against `u0`; this
  is what *found* `s0=-u0`, `u0=-x0`, etc. as perfect (100%) correlations,
  which is how the Core Lemma was discovered (found first computationally,
  proved synthetically after).
- `probe5.c`, `probe8.c` — isolate the Core Lemma to its minimal 2-condition,
  5-point hypothesis and confirm it holds with zero exceptions over the full
  3315-order-type database (i.e. as a general fact, not an artifact of the
  other five conditions).
- `probe6.c`, `probe7.c` — the negative results: exhaustive single-triple and
  XOR-pair search for a certificate pinning `x2`/`w3`; both came back empty,
  which is the evidence that the remaining gap is real.
- `sigtypes.c` — abandoned; tried to enumerate distinct 7-point sign patterns
  directly but hit a 2000-pattern cap with no sign of converging (the raw
  35-triple chirotope is too fine-grained, includes lots of irrelevant sign
  data). Superseded by the targeted correlation searches (`probe4`,
  `probe6`, `probe7`), which ask a sharper question. Left in place as a
  record of what didn't work, per the "negative result recorded precisely"
  rule.

---

# Session 3 — Π₈ is proved

The gap left at the end of session 2 is closed. **Π₈ now has a human proof.**
It is four steps, uses each of the eight prescribed cells exactly where you
would expect, and never touches the free cell `(2,2)`.

The route that worked was not the one session 2 was pushing. Session 2 applied
the Core Lemma at `p`-vertices and got stuck trying to pin `x₂`. The Core Lemma
applies at **`q`-vertices** too, and there it lands directly on the quantity the
centre-miss condition constrains.

## Notation

    v_k = or(q0,q1,p_k)      w_k = or(q1,q2,p_k)      u_k = or(p1,p2,q_k)

`P_i = [p_i,p_{i+1}]`, `Q_j = [q_j,q_{j+1}]`, cell `(i,j)` is `P_i × Q_j`.
Π₈ prescribes all of `(0,0),(0,1),(0,2),(1,0),(1,2),(2,0),(2,1)` crossing and
`(1,1)` missing; `(2,2)` is free.

## The proof

Assume a realization of Π₈ exists.

**(A)** Cells `(0,0)` and `(0,1)` cross, i.e. both `Q₀=[q0,q1]` and `Q₁=[q1,q2]`
cross `P₀`. These two segments **share the endpoint `q1`**, so the Core Lemma
applies with `B=q1, A=q0, C=q2` and `[D,E]=P₀`:

        v₁ = −w₁.

**(B)** Cells `(2,0)` and `(2,1)` cross, i.e. both `Q₀` and `Q₁` cross `P₂`.
The Core Lemma applies **at the same vertex `q1`**, now with `[D,E]=P₂`:

        v₂ = −w₂.

**(C)** Cell `(1,0)` crosses: `P₁=[p1,p2]` properly crosses `Q₀=[q0,q1]`, so in
particular `p1` and `p2` lie strictly on opposite sides of the line `q0q1`:

        v₁ ≠ v₂.

Combining (A), (B), (C):  `w₁ = −v₁ ≠ −v₂ = w₂`, so **`w₁ ≠ w₂`**.

**(D)** The five cells `(0,0),(0,1),(0,2),(1,0),(1,2)` force `u₁ ≠ u₂`
(session 2, Consequence 1: two Core Lemma applications at `p1` give `s₀=−u₀`
and `s₂=−u₂`; row 0 crossing all three of `Q₀,Q₁,Q₂` gives `s₀=s₂`, hence
`u₀=u₂`; and `(1,0)`, `(1,2)` give `u₀≠u₁`, `u₂≠u₃`).

**(E)** Cell `(1,1)` misses. By definition `P₁` properly crosses `Q₁` iff
`u₁≠u₂` **and** `w₁≠w₂`. Since `u₁≠u₂` holds by (D), missing forces

        w₁ = w₂.

(C) and (E) contradict. Hence no realization exists. **∎**

## Why session 2 stalled

Session 2 was trying to pin `x₂ = or(p2,p3,q2)` and ran into a genuine
330/4842 split between two mechanisms. That split is real, but it was an
artifact of attacking the conclusion `(2,1)` **misses** from the `p`-side.
Assuming `(2,1)` *crosses* and deriving a contradiction from the `q`-side costs
one Core Lemma application and no case analysis at all. The exhaustive searches
session 2 ran — all 56 triples, all 1,540 XOR-pairs — were looking for a single
sign to decide `x₁≠x₂ ∧ w₂≠w₃`, and could not have found this, because the
proof does not decide that disjunction; it never forms it.

## Verification (`proofcheck.c`)

Each inference is checked as a universally quantified statement over its **own**
hypothesis set, across all 3,315 order types and all 8! labellings:

| step | statement | cases | violations |
|---|---|---|---|
| A | `(0,0)&(0,1)` cross ⟹ `v₁ = −w₁` | 7,122,240 | **0** |
| B | `(2,0)&(2,1)` cross ⟹ `v₂ = −w₂` | 7,122,240 | **0** |
| C | `(1,0)` crosses ⟹ `v₁ ≠ v₂` | 22,085,952 | **0** |
| D | the five cells ⟹ `u₁ ≠ u₂` | 311,148 | **0** |
| — | A&B&C hypotheses ⟹ `w₁ ≠ w₂` | 311,148 | **0** |
| — | full Π₈ pattern realizable | — | **0** |

(E) is not geometry: it is the definition of `ProperCross` unfolded, so it needs
no check beyond the `ProperCross` transcription itself.

## Scope, honestly

* This proves **Π₈**, which was already a kernel-checked theorem by the
  SAT/chirotope route and already independently confirmed by order-type
  enumeration. What is new is that it now has a **human-checkable proof**, which
  is exactly what the paper asks for and says it could not supply.
* It also proves the session-1 reformulation's `(0,0)` half directly; the
  `(2,2)` half follows by the reversal symmetry `i↦2−i, j↦2−j`, which maps the
  six off-diagonals to themselves, fixes `(1,1)`, and swaps the two corners.
* **Not formalized in Lean.** Not peer-reviewed.
* **This does not change `f(7,7) = 38`'s status.** Π₈ was already established
  by machine; a second, human route to the same theorem strengthens confidence
  in the encoding but removes no hypothesis. Π₁₄ is untouched, and AKR §9
  remains the one open import.
