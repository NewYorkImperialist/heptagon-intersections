> **Historical document (banner added 2026-10-04).** This file describes an earlier stage of the project and is kept for provenance. For the current statement see `README.md` → "Current status", `paper/heptagon-paper.pdf` (Theorem 1.2) and `docs/audit/audit.pdf`. f(7,7) = 38 is not established by this repository; it depends on the external AKR §9.1 reduction, whose applicability here is unresolved.

# AKR Section 9 attempt (2026-09-17)

## Status and scope

The requested `exists_noVertexOnOther_ge` is **not proved**. Neither global
E9a nor global E9b is proved. The new Lean module contains local results,
not a replacement for the imported hypothesis. No commits were made.

The audit `akr-9-1-obligation.md` and the recorded cone-containment defect in
`paper/proof-manifest.tex` were read. Literature observations below refer to
the audit's transcriptions; this attempt did not independently re-extract the
published PDF.

## Separate obligations

The file defines `NoCoincidentVertices` (E9a) and `NoVertexInOpenSide` (E9b)
and proves that their conjunction is exactly `NoVertexOnOther`.

The global goals still needed are, in namespace `Heptagon.AKR9Reduction`,
with `Heptagon.AKR9` open:

```lean
R : Pair9
hfin : (points9 R).Finite
⊢ ∃ R' : Pair9, NoCoincidentVertices R' ∧
    (points9 R').Finite ∧ (points9 R).ncard ≤ (points9 R').ncard
```

and independently:

```lean
R : Pair9
hfin : (points9 R).Finite
ha : NoCoincidentVertices R
⊢ ∃ R' : Pair9, NoCoincidentVertices R' ∧ NoVertexInOpenSide R' ∧
    (points9 R).ncard ≤ (points9 R').ncard
```

These are precise outstanding proof obligations, **not** goals reached after
executing a nearly complete global Lean proof. No incomplete global theorem
was inserted into the module. Finiteness of the intermediate E9a witness is
explicit: without it the two statements do not compose as intended.

## E9a: a local construction and the remaining global work

Normalize a coincident vertex to the origin. Choose one incident side of each
polygon, with remote endpoints `a,b` such that `D = det 0 a b` is nonzero.
Move the first apex to `t • (b-a)` and keep the second apex fixed. Allow the
remote endpoints to move to `a+t•u` and `b+t•w`, for **arbitrary fixed**
velocities `u,w`.

The theorem `coincidence_crossing_linear` proves that these two finite sides
properly cross for every sufficiently small positive `t`. It proves both
strict determinant-product inequalities, so `common_of_straddle` supplies an
actual intersection point. This does not depend on cone containment.

The proof divides each straddling product by its explicit factor `t`, without
performing division in Lean. The resulting two polynomial functions have
value `-D²` at zero. Continuity supplies an interval on which both are negative.
Multiplication by positive `t` recovers the desired strict inequalities.
Thus the local moving-endpoint issue can be handled without the sine law,
asymptotic notation, or explicit intersection-coordinate estimates.

This is **not** yet E9a. Remaining steps include:

1. From `SimpleClosed` and finiteness, select a nonparallel cross-polygon pair
   of incident rays at every coincident vertex. The local theorem assumes this.
   The expected argument is that if all four rays are collinear, simplicity
   forces each polygon's two rays to point oppositely, giving an overlapping
   interval and contradicting finiteness. This argument has not been formalized.
2. Construct the dependency graph for existing vertex-side contacts, prove
   reachability of free vertices, and solve the affine motion system. Arbitrary
   independent motion of the vertices would destroy those contacts.
3. Apply the local lemma to the resulting velocities, translate coordinates
   back, and take a finite minimum of the positive radii.
4. Prove simplicity and an injection from old intersection points to distinct
   new intersection points. Separate small neighborhoods of old contacts are
   needed: creating one crossing per contact is insufficient without showing
   different contacts get different image points. The local theorem proves
   strict straddling but does not itself bound the intersection coordinates;
   localization near the old apex is a further lemma.
5. Keep the intermediate intersection set finite.

`isOpen_Keeps` preserves existing proper crossings but supplies none of steps
1–2 or the new-contact counting in step 4. `SegmentStable` supplies the
nonadjacent-side part of simplicity. A constrained motion is not automatically
in general position: one cannot invoke the generic construction to repair it
before accounting for the vertex-side contacts deliberately retained.

The local theorem is real progress toward the audit's "One final point"
paragraph, but does not formalize that paragraph for a whole polygon pair.

## E9b: independent analysis

With no coincident vertices, a vertex on the interior of another side has two
incident rays transverse to that side's supporting line. Otherwise a small
interval is shared, contradicting finiteness. For a symmetric local model, take the contacted side to be
`[(-1,0),(1,0)]` and its contact at the origin. This midpoint restriction is
part of the model; the theorem does not yet cover an arbitrary interior
position on a finite side.
For each remote endpoint `a` with `a.y ≠ 0`, a sufficiently small upward shift
crosses the ray exactly when `a.y > 0`; a downward shift crosses it exactly
when `a.y < 0`. `horizontalCross_iff_small` formalizes the single-ray criterion for this
symmetric model, including the finite length of the shifted side. Its proof
keeps the second determinant product negative by continuity and controls the
first product by the sign of the shift. Each ray therefore contributes one
crossing across the two experiments. For the two incident rays, the sum is two: the possibilities are
`(0,2)`, `(1,1)`, and `(2,0)`.

The real missing global step is to realize these local experiments by a
single admissible motion of an entire polygon, and identify the resulting
point counts without double counting. Merely translating two endpoints of a
side rotates the neighboring sides and can lose other contacts. If adjacent
supporting lines are nonparallel, intersecting the translated line with the
unchanged neighboring supporting lines is a promising repair: contacts in
the interiors of those neighboring sides stay on the same line. However,
`SimpleClosed` permits consecutive collinear sides, so this construction is
not defined at every allowed input. Moving a maximal collinear chain as a
unit, with its internal vertices transported along that line, appears to be
the appropriate extension. Neither that construction nor a decreasing
finite measure for its iteration is formalized here.

Requiring *every* old contact to survive the selected shift is unnecessarily
strong for E9b and can fail. The paper only needs the total count not to drop.
The averaging identity must be established for all affected contacts,
including effects at the moved side's ends, before choosing a direction.

## Explicit cone-containment witness (analytic, not kernel-checked)

Here are two seven-vertex simple polygons, listed cyclically:

```
P = [(0,0), (1,1/4), (2,1/2), (2,0),
     (2,-1/2), (1,-1/4), (1/2,-1/8)]
Q = [(0,0), (1,1), (3,3), (3,1),
     (3,-1), (3,-3), (1,-1)]
```

They are triangles with straight sides subdivided, which is allowed by
`SimpleClosed`. Their geometric regions are respectively
`0 ≤ x ≤ 2, |y| ≤ x/4` and `0 ≤ x ≤ 3, |y| ≤ x`.
Their boundaries meet only at `(0,0)`. The first vertex cone is strictly
contained in the second.

Translate **all** P vertices by `(ε,0)` with `0 < ε < 1`. Every point of its
boundary then satisfies `0 < x < 3` and `|y| < x`, so lies strictly inside Q.
The new boundary intersection count is zero, down from one. Both polygons
remain simple, all vertex coincidences disappear, and every existing proper
crossing is retained (there were none). This is an arbitrarily small family
of perturbations satisfying those requirements that still loses the point.

There is also an apex-only version: replace just P's first vertex by `(ε,0)`
for `0 < ε < 1/2`. It cuts off the tip of the inner triangle and remains simple;
all vertices, hence all sides by convexity, lie strictly inside Q. This directly
exhibits the failure of the naive "push into Q's cone" prescription with all
other endpoints held fixed.

This is a concrete realization of the **already known** defect, not a new
counterexample to AKR's existential claim. For example, the local theorem can
instead use `a=(1,1/4)`, `b=(1,1)`, and displacement `t•(0,3/4)` to create a
proper crossing of the two upper incident sides.

## Assessment

- **(a) Formalization effort:** the global dependency-system construction,
  extraction of nonparallel rays, uniformization, preservation of simplicity,
  and point-count injection remain substantial unfinished work. The local
  polynomial proof supports the plausibility of E9a rather than refuting it.
- **(b) Gaps in the written argument:** according to the audit, AKR assert the
  local direction choice and omit a simplicity argument. The new local lemma
  supplies a useful ingredient for that assertion under an explicit
  nonparallelism hypothesis. It does not establish a false published theorem
  or show the omitted arguments cannot be supplied. The E9b implementation
  for straight consecutive sides also needs specification in this project's
  broader input type; this is not evidence against the theorem.
- **(c) Wrong approaches:** generic perturbation preserving proper crossings,
  and the naive cone-interior displacement, do not imply point-count
  monotonicity. The coordinates above prove the failure of those inference
  rules. Requiring every E9b contact to survive separately is also too strong.

No unconditional bound or completed global reduction is claimed.

## Verification and failed experiments

Only `cd lean && lake build AKR9Reduction` was used as a build target. The
module has a `[[lean_lib]]` entry at the end of `lean/lakefile.toml`.
Every top-level theorem is immediately followed by its axiom print.
The verified output is:

```text
'Heptagon.AKR9Reduction.noVertexOnOther_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'Heptagon.AKR9Reduction.coincidence_crossing_linear' depends on axioms: [propext, Classical.choice, Quot.sound]
'Heptagon.AKR9Reduction.horizontalCross_iff_small' depends on axioms: [propext, Classical.choice, Quot.sound]
```

The initial local coincidence proof failed because two `simp only` calls
followed a `dsimp` that had already performed their reductions. Lean reported
"`simp` made no progress" and printed `sorryAx` for that failed declaration.
Those calls were removed, the equality-rewrite ending was made explicit, and
the theorem was rebuilt and its axiom line read again. The failed version is
not left in the tree. The first E9b build succeeded with unused-simp-argument
warnings. A cleanup removing the sign facts from both branches broke the
negative-height branch and produced an unsolved goal (and `sorryAx`):

```text
hy : a.2 < 0
hyt : a.2 - h < 0
⊢ 0 < h ∧ h < a.2 ∨ h < 0 ↔ 0 < h ∧ 0 < a.2 ∨ h < 0
```

The final proof uses explicit sign rewrites, retaining the necessary negative
sign facts. No unproved global theorem
or placeholder proof was added, and no theorem was discarded to disguise a
failed proof. The absence of the target existence theorem is intentional and
is the main limitation of this attempt.

The coordinate witness and the proposed global proof strategies above are
ordinary mathematical analysis, not additional Lean theorems.
