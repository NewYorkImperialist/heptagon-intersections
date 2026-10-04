# Simplicity is stable under small linear motions

**Status: a Lean theorem, kernel-checked, no `sorry` and no project axiom.**
**This does not by itself show that AKR §9.1's perturbation yields a simple
pair; that assembly is not done (paper Remark 8.10).** *(Title and this
sentence changed 2026-10-04; the title read "Simplicity preservation, proved".)*
Written 2026-09-20. The artifact is
[`../lean/SimplicityStable.lean`](../lean/SimplicityStable.lean), built with
`lake build SimplicityStable`.

This document reports what was proved, what it does and does not close in the
AKR §9 import, and one case the informal argument in
[`akr-9-1-obligation.md`](akr-9-1-obligation.md) §6.2 omits — a case in which
the claim it makes is false.

---

## 0. The target

The project's upper bound imports, from Section 9 of the **journal** version of
Ackerman–Keszegh–Rote (DCG 68 (2022) 1049–1077):

> For every pair (P,Q) of simple heptagons with finitely many boundary
> intersections there is a pair (P′,Q′) of **simple** heptagons satisfying
> "no vertex of either lies on the other's boundary", with
> |∂P′ ∩ ∂Q′| ≥ |∂P ∩ ∂Q|.

`akr-9-1-obligation.md` §6.2 records that the word **simple** in the conclusion
appears nowhere in AKR: §9.1 moves free vertices, §9.2 shifts a side, and
neither passage mentions simplicity. It is the one clause of the import with no
published warrant at all.

This document reports a result toward that clause, in the form:
**a simple closed polygon stays simple under any small enough perturbation of
its vertices**, with an explicit uniform ε, over any real normed space.

---

## 1. What is proved

All in `namespace Heptagon.SimplicityStable`, over an arbitrary
`E : NormedAddCommGroup` with `NormedSpace ℝ E` (so in particular over
`ℝ × ℝ`), for an arbitrary `n` with `[NeZero n]` (so in particular `n = 7`).

### 1.1 The definition of simplicity

```lean
structure SimpleClosed (W : Fin n → E) : Prop where
  nondeg : ∀ i, W i ≠ W (i + 1)
  disj   : ∀ i j, ¬ Adj i j → Disjoint (side W i) (side W j)
  meet   : ∀ i, side W i ∩ side W (i + 1) = {W (i + 1)}
```

with `side W i = segment ℝ (W i) (W (i+1))` and
`Adj i j := i = j ∨ j = i + 1 ∨ i = j + 1`.

This is the **parametrised** notion — the closed polygonal curve is injective —
and it is exactly the `SimpleClosed` drafted in `akr-9-1-obligation.md` §4.2.
Two bridging lemmas make that literal rather than claimed:

* `adj_iff_adjacent : Adj i j ↔ LowerBound.Adjacent i j` at `n = 7`, by `Iff.rfl`;
* `simpleClosed_iff_draft`, which converts the structure into the draft's
  predicate verbatim (`∩ = ∅` for the non-adjacent clause, `V (i+2)` for the
  corner clause).

Nothing about general position is assumed anywhere. Three collinear vertices
are allowed.

### 1.2 The corner vector — the file's actual contribution

The non-adjacent clause is already covered by
`SegmentStable.exists_eps_disjoint_stable`: disjoint compact sets are at
positive distance. The **adjacent** clause is not, and this is where the
content is. Adjacent sides always meet, so no disjointness argument reaches
them, and "they meet in exactly one point" is not visibly an open condition.

The fix is that `nondeg` and `meet` together are a single open condition:

```lean
noncomputable def cornerVec (a b c : E) : E := ‖c - b‖ • (a - b) - ‖a - b‖ • (c - b)
```

`cornerVec a b c = 0` says precisely that `a - b` and `c - b` are positive
multiples of one another (a **spur**, a corner of angle zero) **or** that one
of them is zero (a degenerate side). Both failure modes at once, detected by a
single vector that is a *continuous* function of `(a,b,c)`.

| lemma | statement |
|---|---|
| `meet_eq_singleton_of_cornerVec_ne_zero` | `cornerVec a b c ≠ 0 → segment ℝ a b ∩ segment ℝ b c = {b}` |
| `cornerVec_ne_zero_of_meet` | `a ≠ b → c ≠ b → segment ℝ a b ∩ segment ℝ b c = {b} → cornerVec a b c ≠ 0` |
| `continuous_cornerVec` | `Continuous fun p : E × E × E => cornerVec p.1 p.2.1 p.2.2` |
| `exists_eps_cornerVec_stable` | `cornerVec a b c ≠ 0 → ∃ ε > 0, ∀ a' b' c' within ε, cornerVec a' b' c' ≠ 0` |
| `simpleClosed_iff` | `SimpleClosed W ↔ (∀ i, cornerVec (W i) (W (i+1)) (W (i+1+1)) ≠ 0) ∧ (non-adjacent disjointness)` |

The proof of the first is three lines of algebra: a common point other than `b`
gives `s • (a-b) = t • (c-b)` with `s, t > 0`; taking norms gives
`s‖a-b‖ = t‖c-b‖`; multiplying `cornerVec` by `s` then kills it.

### 1.3 The polygon theorem

```lean
theorem exists_eps_simpleClosed_stable {W : Fin n → E} (h : SimpleClosed W) :
    ∃ ε : ℝ, 0 < ε ∧ ∀ W' : Fin n → E,
      (∀ k, dist (W' k) (W k) ≤ ε) → SimpleClosed W'
```

`ε` is the minimum over `n` corners and `n²` side pairs of the individual `ε`s,
via `exists_uniform_eps` (a `Finset.inf'`). Every vertex may move
independently, in any direction, by anything of norm at most `ε`: no structure
is assumed of the perturbation.

### 1.4 The two-polygon version needed for the import

```lean
theorem heptagon_simplicity_stable {P Q : Fin 7 → ℝ × ℝ}
    (hP : SimpleClosed P) (hQ : SimpleClosed Q) :
    ∃ ε : ℝ, 0 < ε ∧ ∀ P' Q' : Fin 7 → ℝ × ℝ,
      (∀ k, dist (P' k) (P k) ≤ ε) → (∀ k, dist (Q' k) (Q k) ≤ ε) →
      SimpleClosed P' ∧ SimpleClosed Q'
```

(`exists_eps_simpleClosed_stable_pair` is the same statement for general `n`
and general `E`.)

### 1.5 The version matching AKR's motion

AKR's Theorem 17 gives that the §9.1 system has a unique solution depending
**linearly** on ε: every vertex travels a straight line at constant speed. So
the usable form is:

```lean
theorem heptagon_simplicity_stable_linear {P Q EP EQ : Fin 7 → ℝ × ℝ}
    (hP : SimpleClosed P) (hQ : SimpleClosed Q) :
    ∃ t₀ : ℝ, 0 < t₀ ∧ ∀ t : ℝ, |t| ≤ t₀ →
      SimpleClosed (fun i => P i + t • EP i) ∧ SimpleClosed (fun i => Q i + t • EQ i)
```

Note the quantifier: simplicity holds at **every** time of the motion, not
merely at its endpoint. That is what a continuous-motion argument needs, and it
comes free, because the ε of §1.3 is uniform over the whole ball.

### 1.6 Non-vacuity, and the link to the existing 38 bound

A definition with three clauses invites the question whether anything satisfies
it. [`../lean/SimplicityBridge.lean`](../lean/SimplicityBridge.lean) answers it
and connects the new notion to what the development already has.

| theorem | statement |
|---|---|
| `cornerVec_ne_zero_of_orientR` | `orientR a b c ≠ 0 → cornerVec a b c ≠ 0` |
| `simpleClosed_P_of_RConfig`, `simpleClosed_Q_of_RConfig` | both halves of any `RConfig` are `SimpleClosed` |
| `simpleClosed_certRConfig` | in particular both halves of `RealUpperBound.certRConfig` — the 38-point lower-bound certificate — are `SimpleClosed` |
| `rawPairOfSimple` | `SimpleClosed P → SimpleClosed Q → RawConfig.RawPair` |
| `crossPairs_card_le_38_of_simple` | `SimpleClosed P → SimpleClosed Q → (crossPairsOf (combine P Q)).card ≤ 38` |

Two remarks on the first row. It runs only one way: `orientR a b c = 0` says
`a`, `b`, `c` are collinear, and a **straight angle** — `b` strictly between
`a` and `c` — is collinear yet has `cornerVec a b c ≠ 0`. That is as it must
be: a simple polygon may have three collinear vertices, and the AKR §9 import
has to accept such polygons as input, since removing collinearity is what the
reduction is *for*. So `SimpleClosed` is strictly weaker than general position,
in the direction that matters.

The last row is `RawConfig.raw_crossPairs_card_le_38` with its hypothesis
replaced by the ordinary one: two heptagons, each simple as a closed curve, no
general position and no non-degeneracy assumed beyond simplicity itself. It
bounds crossing **pairs**, not intersection **points** — the gap between those
at a degenerate configuration is the subject of the closing section of
`RawConfig.lean`, and is not touched here.

### 1.7 `#print axioms`

Every theorem in the file reports exactly

```
[propext, Classical.choice, Quot.sound]
```

The `#print axioms` block is at the foot of the file and runs on every build.
No `sorry`, no `admit`, no `native_decide`, no project-specific axiom. (The
file's first build did report `sorryAx` on eight theorems while two tactic
blocks were failing; that is the failure mode the project's standing rule
exists to catch, and it was caught.)

---

## 2. The finding: the nondegeneracy hypothesis is not decorative

`akr-9-1-obligation.md` §6.2 sketches the argument as

> non-adjacent sides of a simple polygon are disjoint compact sets, hence at
> positive distance, hence still disjoint after a small enough perturbation;
> **adjacent sides can only fail by folding back, which is a closed condition
> already excluded at ε = 0**

The word "only" is what fails. Adjacent sides can also fail by one of them
being a **single point**, and that failure is *not* excluded at ε = 0 by the
intersection condition alone:

* if `a = b`, then `segment a b ∩ segment b c = {b}` holds — the condition is
  satisfied — but `cornerVec a b c = 0`;
* and the conclusion genuinely fails: move `a` from `b` to a point of the open
  segment `(b,c)`, by as little as you like, and the two sides now overlap in a
  whole segment.

This is `degenerate_corner_not_stable` in the file, proved over `ℝ`:

```lean
theorem degenerate_corner_not_stable :
    (segment ℝ (0:ℝ) 0 ∩ segment ℝ (0:ℝ) 1 = {0}) ∧
      ∀ t : ℝ, 0 < t → t ≤ 1 → segment ℝ t 0 ∩ segment ℝ (0:ℝ) 1 ≠ {0}
```

**Consequence for the import.** No theorem of the shape "small perturbations
preserve simplicity" can hold for heptagons with a repeated consecutive vertex
— a hexagon padded to seven vertices. The AKR §9 import must therefore be read
as quantifying over heptagons with **seven genuinely distinct consecutive
vertices**, which is the `nondeg` field above. This is a real restriction on
the statement, not a technicality of the proof.

It is worth being precise about what fails. A padded hexagon's boundary is
still a simple closed *curve as a point set*; what the perturbation destroys is
injectivity of the *parametrisation*. AKR reason throughout about sides and
vertices, i.e. about the parametrised object, so the parametrised notion is the
right one — but a reader who defines "simple heptagon" by the image would not
see the failure, and would get a false theorem.

---

## 3. Does this close the import? No — and here is exactly what is left

### 3.1 What it does close

The clause **"of simple heptagons"** in the conclusion of the import — the one
`akr-9-1-obligation.md` §6.2 identifies as having no published warrant at all —
is no longer unwarranted, *given* that AKR's perturbation is a small
displacement of the fourteen vertices. §1.3 does not care what the displacement
is; it only needs it to be small. So:

> for **any** perturbation scheme whatever, including AKR's §9.1 linear motion
> and §9.2 parallel side shift, simplicity of both polygons is preserved
> provided the scheme's parameter is taken small enough.

That is the whole of the missing clause, and it is now kernel-checked.

### 3.2 What it does not close, and none of it is simplicity

Everything else in the import is untouched and remains an import:

1. **The count inequality** `|∂P′ ∩ ∂Q′| ≥ |∂P ∩ ∂Q|`. This is AKR §9.1's
   choice of directions `E_i` plus the "One final point" O(ε²) estimate on
   PDF p. 24, and §9.2's averaging argument. Nothing here touches it.
2. **The degeneracy removal itself** — that the perturbed pair has no vertex of
   one polygon on the other's boundary. AKR §9.1 + §9.2.
3. **AKR Theorem 17** (unique solution, linear in ε). §1.5 *assumes* the motion
   is linear; it does not prove that the §9.1 system has such a solution.
4. **§3's general-position clause**, which is a separate import and the one
   `akr-9-1-obligation.md` §6.1 identifies as load-bearing.
5. **Finiteness** of `∂P ∩ ∂Q`. Never discharged by AKR (§6.3 of that
   document), and untouched here.

### 3.3 The ε-conflict question, answered

The task asks specifically whether the ε needed for simplicity can conflict
with the ε needed for the degeneracy removal. **It cannot**, and the reason is
structural rather than a computation:

* §1.3 produces an ε₀ > 0 depending only on the **initial** polygons, and
  concludes for *all* displacements of size ≤ ε₀. It is a two-sided,
  closed-ball condition: an entire neighbourhood of the initial configuration.
* AKR's requirement is of the form "for small enough ε" — §9.1's final
  paragraph says exactly that ("Thus, for small enough ε, the linear growth kε
  dominates"), and §9.2's says "there exists a small parallel shift". Both are
  assertions that *some* ε₁ > 0 works for all smaller positive values.
* Two conditions each holding on an interval `(0, ε)` intersect in
  `(0, min(ε₀, ε₁))`, which is nonempty. There is no conflict, and no circularity:
  ε₀ is computed at ε = 0, before any of AKR's choices are made, and does not
  depend on them.

The composition of §9.1 and §9.2 is also safe, and for a slightly less obvious
reason worth stating. The two steps are **sequential**: §9.2 starts from the
output of §9.1, not from the original. So its simplicity budget must be
recomputed at its own starting configuration. That is legitimate precisely
because §1.3 applies to any `SimpleClosed` polygon whatever, and §9.1's output
is one — by §1.3 itself. The argument composes by induction on the steps, and
each step gets its own fresh positive ε₀.

**One caveat I cannot discharge and will not paper over.** All of the above
assumes AKR's "for small enough ε" is true, i.e. that their ε₁ exists. For
§9.1 that is the O(ε²) sine-law estimate quoted in `akr-9-1-obligation.md`
§1.4, which that document judges the hardest step in the section to formalise,
and it is not formalised here or anywhere in this repository. If AKR's ε₁ does
not exist, nothing above rescues the import. What §1.3 establishes is that
simplicity is not the obstacle — not that the rest of §9 is correct.

---

## 4. Relation to the rest of the development

`lean/SimplicityStable.lean` is a **leaf**: it imports `SegmentStable`
(Mathlib only) and `LowerBound` (core Lean only), and nothing imports it. It is
registered in `lakefile.toml` as a `lean_lib` but deliberately **not** added to
`defaultTargets`, matching the existing treatment of `SegmentStable`,
`RealPerturb` and `RawConfig`. Build it with `lake build SimplicityStable`.

`lean/SimplicityBridge.lean` is the second new file and also a leaf. It
imports `RawConfig` and `SimplicityStable` and contains §1.6: the non-vacuity
witness and the link to the existing bound. It too is registered as a
`lean_lib` and not a default target; build it with
`lake build SimplicityBridge`.

The relation to `RawConfig.RawPair`: `RawPair` carries only the non-adjacent
disjointness clause (`disjP`, `disjQ`), deliberately, because that is all
`raw_simplePerturbable` consumes. `SimpleClosed` is strictly stronger — it adds
`nondeg` and `meet` — so `rawPairOfSimple` builds a `RawPair` from two
`SimpleClosed` heptagons using only their `disj` fields. The two files sit
either side of the same fact: `RawConfig` uses `SegmentStable` to keep
*non-adjacent* sides disjoint under perturbation; `SimplicityStable` adds the
*adjacent* half, which `RawPair` does not need but AKR §9 does.

`docs/verification-status.md` rows 48–51 describe `SegmentStable`,
`RealPerturb`, `RawConfig` and `AKR9`. **No row has been added for these two
files**, deliberately: other agents were editing the prose documentation
concurrently. Adding two rows there is outstanding.

**f(7,7) = 38 is not proved.** It remains a candidate resting on an unproved
import and unreviewed by any mathematician. What changed is that one named
clause of that import — the unsourced one — is now a theorem, and the
restriction it turns out to need (distinct consecutive vertices) is recorded in
§2.
