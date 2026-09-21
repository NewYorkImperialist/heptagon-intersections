# `akr_9_2` — AKR §9.2, the vertex-side half of §9

## What this is about

`f(7,7) = 38` in this project rests on exactly one unproved input: §9 of
Ackerman–Keszegh–Rote, *Discrete Comput. Geom.* **68** (2022) 1049–1077
(journal version only — the SoCG version has no §9). `lean/AKR9.lean` carries
it as the named hypothesis `NoVertexOnOther`, and nothing proves it.

§9 has two halves. §9.1, the vertex-vertex half, is five pages and has been
audited in `../../docs/akr-9-1-obligation.md`; its hardest step is probed in
`../e9_directions/`. **§9.2, the vertex-side half, is four sentences**, and
before this directory it had one table row of study in the whole repository.

This directory reads §9.2, states its obligation, proves its central claim, and
tests it in exact rational arithmetic. Full write-up:
**`../../docs/akr-9-2-obligation.md`**.

## The claim under test

AKR §9.2, PDF p. 25 / journal p. 1073, in full:

> "If we perform a small parallel shift of a side, an intersection point may
> disappear or multiply into two intersection points, depending on the direction
> of the shift. However, the average number of intersections over the two
> possible directions is always the same as before. Thus, there exists a small
> parallel shift that does not decrease the number of intersection points."

Formally, with *P*(δ) the polygon *P* with one side shifted to the parallel line
at parameter δ (its endpoints sliding along the neighbouring side lines, which
is what Fig. 28 draws and the text never says):

> |∂*P*(δ) ∩ ∂*Q*| + |∂*P*(−δ) ∩ ∂*Q*| = 2 |∂*P* ∩ ∂*Q*|

for all sufficiently small δ ≠ 0.

## Findings

1. **The claim is true.** Proof in `../../docs/akr-9-2-obligation.md` §4: a
   four-case local analysis under (F) finiteness, (VV) no vertex-vertex
   coincidence, and (NC) no three consecutive collinear vertices at the shifted
   side. **47 346 exact-rational tests, 0 violations.** I tried to break it and
   could not.
2. **AKR's own description covers only one of the four cases.** "disappear or
   multiply into two" describes a *Q*-vertex in the **interior** of the shifted
   side. The side's two **endpoints** also move, and there the intersection
   point *migrates between two sides of P* instead. That case was the most
   common in the sweeps (12 776 of 47 346 instances) and AKR do not mention it.
3. **The construction is undefined when the shifted side has a collinear
   neighbour**, and §9.2 may not assume that away — the assumption that would
   (§3's "for convenience" clause) is justified only *after* §9. Measured:
   **17.7 %** of random hexagon pairs, **11.7 %** of side/δ instances. This bites
   the project: `lean/AKR9.lean`'s `SimpleClosed` deliberately allows collinear
   triples, and `Fin 7` blocks the delete-the-straight-vertex repair.
4. **Dropping §9.2's opening clause "Once there are no more coincident
   vertices" makes its conclusion FALSE**, with an explicit exact counterexample:
   two simple hexagons with a vertex-vertex coincidence where **both** shift
   directions strictly decrease the count. The §9.1-before-§9.2 ordering is
   necessary, not stylistic.
5. **A repair exists** — translate the side and let the neighbours rotate about
   their far endpoints — which is always defined, stays inside `Pair9`, tests
   clean on 16 716 instances and completed 1 500/1 500 procedure runs. **It is
   not AKR's operation and it is not proved here.**

**This does not close §9.** §9.2's hypothesis (VV) is §9.1's conclusion, and
§9.1's "One final point" uniform-ε estimate remains open (`../e9_directions/`
closes a different step of §9.1 and says so).

## Files

| file | what it does |
|---|---|
| `pdftext.py` | from-scratch PDF text extractor (zlib-inflate the `FlateDecode` content streams, walk the `/Pages` tree, interpret `Tj`/`TJ`). `python3 pdftext.py ../../references/akr-dcg-2022.pdf 24 25` |
| `shift.py` | exact-rational segment intersection, polygon simplicity, degeneracy classification, and the three shift rules (`akr`, `translate`, `onlyB`) |
| `sweep.py` | the first sweep; used for the δ-threshold table (violations at δ = 2⁻³, 2⁻⁶, …) |
| `sweep2.py` | the main stratified sweep over random simple polygons on integer grids |
| `manydeg.py` | targeted family with many simultaneous degeneracies on the shifted side |
| `procedure.py` | runs §9.2's whole "sides one by one" loop to completion; tests termination and monotonicity |
| `endpoint_formula.py` | checks §4.5's closed form for the moving-endpoint case against brute-force counting |
| `vv_probe.py` | searches for the finding 4 counterexample |
| `controls.py` | the non-vacuity controls |
| `logs/` | the output of each of the above |

## Method and honesty notes

* **Exact rationals everywhere** (`fractions.Fraction`). No floating point.
  Counts are cardinalities of the **set of distinct points** of ∂*P* ∩ ∂*Q*;
  collinear overlap is detected and reported as "infinite", never counted.
* **Non-vacuity.** `controls.py` runs seven controls. The two that matter:
  the same checker reports **81 / 403** violations at δ = 2⁻³ instead of 2⁻²⁰,
  and **161 / 301** violations when a vertex-vertex degeneracy is present. A
  checker that always said "holds" would prove nothing.
* **What the computation does not do.** It is a finite sample of small polygons
  on small integer grids; it does not prove the lemma (§4 of the write-up does,
  on paper, unreviewed and not in Lean); δ is always a dyadic rational; and the
  `procedure.py` runs accept a δ only after checking the averaging identity, so
  they test termination and monotonicity *given* the identity.
* **Nothing here is in Lean and no Lean build was run.**
* The PDF quotations were read off a 4× PNG raster of page 25 produced with a
  small Swift/PDFKit utility (poppler, `pdftotext`, `pypdf` and `pdfminer` are
  all absent on this machine), and cross-checked against `pdftext.py`'s output.
