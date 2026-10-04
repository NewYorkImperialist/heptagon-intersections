# MathDB submission draft: boundary intersections of two simple heptagons

> **DRAFT — not submitted; for the author's review.**

## Problem

Determine the maximum number of distinct boundary intersection points between
two simple heptagons, over all pairs whose boundary intersection is finite.
Shared vertices, vertex–side contacts, and tangencies are allowed; overlapping
boundary segments are excluded by finiteness.

## Summary

<!-- 471 characters, counted with Python -->
38 is attained, and at most 38 is kernel-checked in Lean 4 for simple heptagons that share no vertex and whose boundaries meet in finitely many points; this covers every pair in general position. The unrestricted case (shared vertices allowed) follows using the vertex-coincidence reduction of Ackerman–Keszegh–Rote (DCG 68 (2022), §9.1). That reduction is not formalized, and its applicability here (simplicity and finiteness of the perturbed pair) is not fully checked.

## Solution / progress

**Proved scope (kernel-checked).** `Heptagon.Pair9Shift.points9_le_38_of_coincFree`
and `Heptagon.Pair9Shift.isGreatest_38_of_coincFree`. The hypotheses are:

- `R : Pair9`: two heptagons in ℝ², each `SimpleClosed`. That is, no side is
  degenerate, non-adjacent sides are disjoint, and adjacent sides meet only in
  their shared vertex. Collinear vertices, including straight vertices, are
  allowed. No general-position condition is assumed.
- `(points9 R).Finite`: the set ∂P ∩ ∂Q is finite. This is an explicit
  hypothesis.
- `∀ v j, P_v ≠ Q_j`: the two heptagons share no vertex.

Under these hypotheses `(points9 R).ncard ≤ 38`, where `points9 R` is ∂P ∩ ∂Q
as a set of points, and 38 is attained. A vertex of one polygon may lie in the
interior of a side of the other, and tangential contacts are allowed. Every
pair in general position satisfies the hypotheses.

**The argument.** This is *not* the project's older exhaustive enumeration of
13,003,620 graphs. The current proof runs as follows.

1. Write I for the number of crossing side pairs and E^D for the edges of the
   disjointness graph. Then I + |E^D| = 49. Every side misses at least one
   side of the other polygon (minimum degree ≥ 1), so I ≤ 42, and I is even.
   It remains to exclude I = 40 and I = 42.
2. **Two forbidden patterns.**
   - Π₈ prescribes 8 side-pair incidences on three consecutive sides of each
     polygon and needs no simplicity hypothesis. It is non-realizable. It has
     a short human proof, and it was also checked against all 3,315 order
     types of 8 points.
   - Π₁₄ prescribes 14 incidences plus 7 self-non-crossing conditions. It is
     non-realizable by a SAT refutation, replayed in Lean as a unit-propagation
     chain whose clauses are derived from the geometry. There is no human
     proof.
3. **Covering theorem.** Every crossing pattern of two simple heptagons with
   I ∈ {40, 42} contains a relabelled copy of Π₈ or Π₁₄. Relabelling is the
   group of order 392 (rotate or reflect each polygon, swap P and Q), giving
   588 relabelled lemma instances. The I = 40 case splits into 28 degree-vector
   cases. This step is machine-checked, not hand-checkable.
4. **Transfer to the plane.** Integer coordinates are no restriction. The
   collinearity assumption is removed by perturbation: crossings are an open
   condition, and disjoint segments stay disjoint under small perturbations.
5. **Vertex on the interior of a side.** These incidences are removed by a
   terminating chain of "tilted" shifts that never decreases
   (crossing pairs + incidences). The chain ends where points and crossing
   pairs coincide.

**Lower bound.** An explicit integer certificate, in general position, whose
boundaries meet in exactly 38 points (kernel-checked):

- P: (373,157), (132,5), (369,182), (88,157), (327,282), (60,272), (372,298)
- Q: (344,24), (89,303), (345,19), (373,214), (270,338), (325,93), (192,284)

## Remaining external reduction

- **(a) Kernel-checked:** the bound above (≤ 38 with 38 attained) for pairs
  with finite intersection and no shared vertex.
- **(b) Follows using an external theorem:** f(7,7) = 38 over all pairs with
  finite intersection. Ackerman–Keszegh–Rote §9.1 removes vertex–vertex
  coincidences without decreasing the number of intersection points.
- **(c) Unresolved in this project:** §9.1 states the count inequality. We
  have not found it stated explicitly that the perturbed polygons remain
  simple, or that their boundaries again meet in finitely many points, and the
  theorem in (a) requires both. A partial result is kernel-checked:
  `SimplicityStable.heptagon_simplicity_stable_linear` shows that simplicity
  survives every sufficiently small linear motion of the vertices. There are
  also unreviewed notes on choosing the perturbation directions so that the
  intersection stays finite. These have not been assembled with §9.1 into a
  proof of the reduction for these definitions.

Relying on a published theorem does not make a proof incomplete. The
qualification here concerns only item (c).

## Reproduction

- Repository: https://github.com/NewYorkImperialist/heptagon-intersections
  (private as of 2026-10-04; access by invitation).
- Lean sources unchanged since commit `a211140`. Documentation revision of
  2026-10-04: `<commit to be filled in after the author commits this revision>`.
- Toolchain `leanprover/lean4:v4.33.1`; Mathlib tag `v4.33.1`, revision
  `0df444a`.

| working directory | command |
|---|---|
| `lean/` | `lake exe cache get` |
| `lean/` | `lake build Headline 2>&1 \| tee ../headline-build.log` |
| repository root | `bash scripts/verify-all.sh --axiom-log headline-build.log` |

Expected output:

- the build ends with `Build completed successfully (3344 jobs).`;
- the checker reports 409 declarations;
- the only axioms are `propext`, `Classical.choice` and `Quot.sound`;
- 6 of 6 headline theorems are confirmed.

A bare `lake build` is insufficient, because the default targets omit the
headline modules.

GitHub Actions runs 36086080499 (commit `b78f372`) and 36089101301 (commit
`e984888`), both on 25 September 2026, passed this workflow. Both commits have
the Lean sources of `a211140`. These runs record that workflow at those
revisions; they are not independent review.

## Review status

[author to confirm current status before submission]

No independent review of the mathematics or of the formal development has
been completed. According to `docs/verification-status.md` (row 18), a
colleague began reading an earlier dependency manifest in September 2026. No
findings from that reading are recorded.

## AI disclosure

This work was carried out with substantial generative-AI assistance:
exploring the reduction, generating essentially all software including the
Lean formalization, auditing the cited sources, and drafting the write-up. The
named author is responsible for the claims.

## References

- E. Ackerman, B. Keszegh, G. Rote, *An almost optimal bound on the number of
  intersections of two simple polygons*, Discrete Comput. Geom. 68(4) (2022)
  1049–1077, doi:10.1007/s00454-022-00438-0.
- E. Ackerman, B. Keszegh, G. Rote, same title, SoCG 2020, LIPIcs 164,
  1:1–1:18, doi:10.4230/LIPIcs.SoCG.2020.1. This version has no §9.
- J. Černý, J. Kára, D. Král', P. Podbrdský, M. Sotáková, R. Šámal, *On the
  number of intersections of two polygons*, Comment. Math. Univ. Carolin.
  44(2) (2003) 217–228.
- M. B. Dillencourt, D. M. Mount, A. J. Saalfeld, *On the maximum number of
  intersections of two polyhedra in 2 and 3 dimensions*, Proc. 5th CCCG (1993)
  49–54.
