# §9.2's repair, in Lean — what is proved and what is not

**Written 2026-09-22.** Companion to
[`../independent/akr_9_2/REPAIR.md`](../independent/akr_9_2/REPAIR.md), which
states the repair on paper and opens with *"Nothing here is in Lean and no Lean
build was run."* That is no longer true of most of it, and this document
records exactly which parts, so that the paper document's scope note does not
have to be read as either stale or as a claim.

**`f(7,7) = 38` is not proved.** It remains a candidate resting on the AKR §9
import, unreviewed by any mathematician. Nothing in this document changes that,
and the last section says precisely why.

Everything below is `sorry`-free, `native_decide`-free, and depends on no
axioms beyond `propext`, `Classical.choice`, `Quot.sound` — most results on a
strict subset of those. Sweep of the eleven §9 modules: exit 0, **239**
`#print axioms` lines, **0** `sorryAx`; plus the leaf modules `Pair9Shift` and `FactE`.

---

## 1. The one structural fact

Every result here is a consequence of a single observation:

> **Every degeneracy condition in §9.2 is affine in the shift parameter `δ`,
> and affine in the tilt parameter `t`.**

A point lies on a line iff a determinant vanishes; one endpoint moves affinely
and the rest is fixed; so the determinant is affine. That is all. What follows
is bookkeeping, but the bookkeeping is where §9.2's unstated hypotheses live.

Two consequences run through everything:

* an affine function with nonzero slope has **exactly one root** — so a
  condition is violated at exactly one parameter value, and avoided at all
  others;
* an affine function **keeps its sign** while the perturbation is smaller than
  the ratio of value to slope — so an *open* condition, such as a proper
  crossing, survives a small enough shift, with an explicit bound.

Removal and non-creation of degeneracies are the first; preservation of
crossings is the second.

---

## 2. Why the tilt, and what it costs

AKR's shift slides the side's endpoints along the two **adjacent side lines**.
It is undefined at a straight vertex, and `akr-9-2-obligation.md` measures that
at **17.7 %** of random hexagon pairs — with the blockage permanent, since the
§3 clause that would rule out collinearity is justified only *after* §9.

The **tilted shift** moves the endpoints along `tilt u t = nrm u + t·u`
instead. `TiltedShift.tilted_shift_defined` shows it is defined for every
non-degenerate side, with no collinearity hypothesis; `akr_admissible_iff` and
`akr_fails_at_straight` show AKR's slide is admissible *exactly* at non-straight
vertices, so the failure is characterised rather than merely exhibited.

It is not free. AKR's slide keeps each adjacent side **on its own line** —
only its length changes. A tilt moves the endpoints *off* those lines, so each
adjacent side **rotates** about its fixed far endpoint. The tilt therefore owes
two things AKR's operator does not: that rotating neighbours lose no crossings,
and that the rotation centre behaves. Both are discharged below.

---

## 3. What is proved

### 3.1 The operator itself (`RotationLaw`)

Step **S7** of the dependency graph is labelled *"the interface gap"*, with the
note *"Fig. 28 only; the text does not define it"*. AKR never write the shift
operator down. `shiftPoly W i t δ` does: both endpoints of side `i` move by
`δ · tilt u t`, the other five vertices are fixed.

| | |
|---|---|
| `shiftPoly_zero` | `δ = 0` is the identity |
| `shiftPoly_other` | the other five vertices do not move |
| `shiftPoly_dir` | the side's **direction** is unchanged — it is a shift, not an arbitrary perturbation |
| `shiftPoly_offset_fst`/`_snd` | both endpoints reach offset `δ‖u‖²` — **the same for every `t`** |

The last line is what makes the tilt parameter free to spend elsewhere.

### 3.2 The averaging identity (`TiltedShift`)

§9.2 rests on one sentence, for which AKR give no argument:

> *"an intersection point may disappear or multiply into two intersection
> points, depending on the direction of the shift. However, the average number
> of intersections over the two possible directions is always the same as
> before."*

| | |
|---|---|
| `averaging_local` | the two directions' local counts sum to `2`, with **no hypothesis on the corner's shape** |
| `straddle_iff_sign` | the honest geometric condition, and the fact that AKR's sign criterion is its *small-δ* form |
| `averaging_fails_without_smallness` | at `N=1, y=z=1, δ=2` both shifts overshoot the corner and the counts sum to **0** — the identity is **false** without a `δ₀`-style bound, which the sentence does not mention |
| `averaging_sum`, `exists_sign_not_increasing` | the configuration-level form, and the pigeonhole step the section actually uses: `a + b = 2n` forces `min(a,b) ≤ n` |
| `exists_mem_openSegment_off_eq` | the counted points are real points, via an **explicit ratio** — no intermediate-value theorem is needed, because the offset is affine along the edge |

If the two incident offsets agree in sign the count goes 2 then 0 — AKR's
"multiply" and "disappear". If they disagree it goes 1 then 1, a case their
sentence does not mention at all. Either way the sum is 2.

### 3.3 Line versus side, and `δ₀` (`TiltedShift`)

The averaging identity counts crossings with the shifted side's **line**; §9.2
needs them on the **segment**. The difference is not mentioned in §9.2's prose.

`crossing_param` shows the crossing's position along the side is affine in the
shift: if the intersection sits at relative position `s`, after shifting it
sits at `s + ν`. So it stays on the side exactly when `|ν| < min s (1−s)`.

That `0 < s < 1` — the point is *interior* to the side — is **(VV)**, §9.1's
output. This is the structural reason §9.1 must precede §9.2: without it §9.2's
shift has no bound at all.

`crossing_param_tilted` solves for `ν` (the tilt makes it collapse, since
`⟪a, nrm a⟫ = 0`), and `nu_abs_le` bounds it with no division left in it. The
single hypothesis `1 ≤ |y|` is **the only place integrality is used** in the
whole line-versus-side argument.

### 3.4 The rotating neighbour and the fixed pivot (`RotationLaw`)

**Crossings are not lost.** `properCrossR_persists_rotating`, with `δ₀`
explicit, stated against the project's own `orientR`. Checked on 4,000
exact-rational crossings × 6 shift sizes inside `δ₀` — 0 failures — and the
bound is **not vacuous**: past `δ₀` the crossing is genuinely lost in 10,353 of
16,000 trials.

**The pivot.** A `Q`-vertex *on* the rotating side starts at determinant zero,
and rotation does not always remove it. Exact certificate: `F=(0,0)`, `A=(0,3)`,
`u=(1,0)`, `V=(0,1)` — with tilt `nrm u` the side stays on the same vertical
line and the degeneracy **survives every `δ`**.

**Two tilts are not enough.** `pivot_tilt_dichotomy` is *per-degeneracy*. For
two degeneracies, `x₁=(0,1)` kills the first tilt and `x₂=(1,1)` the second.
The one-parameter family fixes it, because `cross_tilt` shows the badness
condition is affine in `t`: `bad_tilt_unique` (each degeneracy rules out ≤ 1
value) and `exists_good_tilt` (so `k+1` candidates suffice) — the same shape as
Theorem C⁺'s `t ∈ {1,2,3}`, for the same reason.

### 3.5 The choice, the monovariant, termination (`RotationLaw`)

`off_shifted_eq_zero_iff`: the degeneracy condition holds at **exactly one**
`δ`. Which one settles both obligations at once — if the vertex was already on
the line that `δ` is `0`, so every nonzero shift removes it; if not, it is a
single value to avoid. **Removal and non-creation are one lemma, not two
arguments.**

So §9.2's step is a **two-stage choice** (`exists_good_tilt_and_delta`): pick
`t` so every *slope* is nonzero, then `δ` avoiding the finitely many *roots*.
Stage 1 is not optional — the pivot certificate is a condition identically zero
in `δ`, which no shift removes.

`exists_good_tilt_and_delta_lines` is the general form, covering all three
families §9.2 must dodge. `shift_clears_side` and `shift_avoids_Q_sides`
instantiate it at the project's own `Fin 14` configurations.

Step **S10** reads *"no termination argument in AKR"*. `degeneracy_monovariant`
and `terminates` supply one. It is three lines once the measure is named; that
it was never written is the point.

---

## 4. What is **not** proved

This is the part that matters, and it is not small.

1. ~~**No `Pair9`.**~~ **Closed 2026-09-22**, `lean/Pair9Shift.lean`.
   `exists_good_shifted_pair9`: for every `Pair9`, every non-degenerate
   `P`-side and every tilt there is a single nonzero shift yielding a genuine
   `Pair9` with **no** `Q`-vertex left on that side's line. The obstacle was
   never the geometry — the development carries *two* definitions of
   `SimpleClosed` (`AKR9`'s three-clause `Prop`, which `Pair9` is built from,
   and `SimplicityStable`'s structure, which the stability theorems are stated
   for), and without a bridge the stability theorems could not reach `Pair9` at
   all. `akr9_simpleClosed_iff` is the bridge; `shiftPoly_eq_add_smul` then
   shows the shift *is* a linear perturbation, so
   `heptagon_simplicity_stable_linear` applies unchanged.
2. **The count inequality is not assembled**, and the remaining step is
   *not* merely definitional. The three `δ₀`s **are** now reconciled
   (`exists_full_shift_both_signs`: one `δ` for which both `±δ` give a `Pair9`,
   clear the side, and preserve every proper crossing), and proper crossings
   **are** shown to survive (`exists_delta0_order_type`). What is missing is the
   link from the averaging identity's `crossCount` to `points9`, and that is a
   real obstacle, not bookkeeping:

   * a degenerate `Q`-vertex on a `P`-side is **one point** but lies on **two**
     `Q`-edges, so point-counting and pair-counting differ exactly at the
     degeneracies — which is the same entanglement that makes Theorem CI's
     `ncard` inequality false without **(Fin-out)**, and the same reason the
     honest bound is `38 + d` rather than `38`;
   * stating "this degenerate vertex contributes `crossCount` points after the
     shift" needs to know the shifted side meets `∂Q` *near* that vertex only on
     its two incident edges — a locality claim resting on the `(Loc)`
     primitive, which is item 6 and **is now proved**. So this half is
     unblocked; the point-versus-pair half above is what remains.

   A commit message on 2026-09-22 called this "a definitional bridge, not a new
   idea". That was wrong and is retracted here.
3. **The `δ₀`s are not reconciled.** Three independent sources, three different
   shapes; the uniform bound over a whole configuration *along a motion* —
   the `UniformEps.eps0` shape — is untouched.
4. **§9.1 is a separate matter.** Hypotheses 3, 4, 5′, 7, 13, 14 of A9-RED are
   about §9.1 and are unaffected by any of this. Hypothesis 14 **(R3)** was
   closed on paper only.
6. ~~**Fact (E) / the `(Loc)` primitive is not in Lean.**~~ **Closed
   2026-09-22**, `lean/FactE.lean`. `factE_unconditional`. The proof in
   `LOC_AND_DELTA0.md` §1.2 is written with gradients and a Hessian; none of
   that is needed. The first-order conditions come from exhibiting **one
   explicit competitor** rather than taking a limit
   (`ip_eq_zero_of_min_gen`), so the only analytic ingredient left is the
   existence of the minimiser (`exists_min_params`, three lines of Mathlib).
   `cross_eq_zero_of_both_orth` is the single place planarity is used — and the
   single reason Fact (E) is false in `ℝ³`. Already checked computationally
   before this: 2,990 disjoint planar pairs, 0 violations, with controls firing
   686/776 on crossing pairs and 572/1500 in `ℝ³`.
5. **The audit's own honest gap** remains: the `δ₀` derivation's proved cap is
   `30/29` against an observed worst case of `60/59` — a factor of two in the
   proof, not in the data.

So: hypothesis 12 **(NC)** is no longer the obstruction, and the row in
A9-RED now reads *superseded, not satisfied*. §9.2 is **not closed**, §9 is not
closed, and `f(7,7) = 38` is not proved.
