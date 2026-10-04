# Paper

## For a referee: read [`heptagon-paper.tex`](heptagon-paper.tex) first

**[`heptagon-paper.tex`](heptagon-paper.tex)** (compiled:
[`heptagon-paper.pdf`](heptagon-paper.pdf), 21 pages, revised 4 October 2026;
first version 17 September 2026) is the **mathematical write-up** — the
argument stated as mathematics, for a reader who has never seen this
repository.

Its main result, **Theorem 1.2**, is kernel-checked: two simple heptagons that
**share no vertex** and whose boundaries meet in **finitely many** points meet
in at most 38 points, and 38 is attained
(`Pair9Shift.points9_le_38_of_coincFree`, `Pair9Shift.isGreatest_38_of_coincFree`).
§1.3 separates three scopes: general-position pairs (covered), the
no-shared-vertex theorem, and `f(7,7)` over all finite pairs, which follows
using the external AKR §9.1 reduction (Proposition 8.4, Corollary 8.6). Whether
§9.1 also delivers simplicity and finiteness of the perturbed pair for these
definitions is recorded as unresolved in this project (Remark 8.10).
§9.2 gives the reproduction commands.

The two entry points it nominates for a sceptical reader, because they need the
least context:

1. **Theorem 3.2** — the size-8 pattern is non-realizable. Eight incidences on
   three consecutive sides of each polygon, *no simplicity hypothesis*, with a
   hand proof via Lemma 3.3.
2. **Lemma 7.2** — disjoint segments stay disjoint under a small perturbation.
   Self-contained; its formalization (`lean/SegmentStable.lean`) imports only
   Mathlib.

Build (Tectonic):

```bash
cd paper && tectonic -X compile heptagon-paper.tex --keep-logs
```

Everything below is the older, repository-facing material.

---


[`proof-manifest.tex`](proof-manifest.tex) — **the authoritative dependency
manifest.** It states exactly what the candidate proof of `f(7,7) = 38` consists
of, separating published external mathematics, project-original arguments,
computational reductions, external database checks, certificate verification,
Lean-kernel verification, and the remaining human-review item.

It is written to be read alongside [`../docs/reviewer-guide.md`](../docs/reviewer-guide.md),
which is the walkthrough; this is the ledger.

A convenience mirror in Markdown is at [`../docs/proof-manifest.md`](../docs/proof-manifest.md).
Where the two differ, the LaTeX file is correct.

## What the manifest says, in one line

> **Note added 2026-10-04.** The strongest formalised statement is now
> `Pair9Shift.isGreatest_38_of_coincFree`: 38 is the greatest number of
> boundary intersection points of two point-set-simple heptagons that share no
> vertex and meet in finitely many points — no general-position hypothesis.
> See `heptagon-paper.pdf` §1.3. The text below, from 2026-09-17, is
> **superseded** and kept for the record.

`f(7,7) = 38` is a **candidate** result and **not** a Lean theorem. But as of
2026-09-17 the strongest formalised statement is

```lean
RealUpperBound.isGreatest_38_real :
  IsGreatest { n | ∃ R : RConfig, (intersectionPointsR R).ncard = n } 38
```

— 38 is *exactly* the greatest number of points where the boundaries of two
simple heptagons with **real** coordinates meet, as a set in `ℝ × ℝ`, on the
three standard axioms, **importing no published lemma**. It carries **one**
hypothesis: general position, which `RConfig` assumes as a structure field.
Discharging that is AKR §9 plus §3's unproved "for convenience" clause.

The manifest's job is to say precisely that. **Read its §1 first** ("Update, 17
September 2026") — everything after §1 documents the *historical* route, which
imported AKR Lemma 5, AKR Lemma 7, Černý Lemma 2, the exceptional
classification and a 13,003,620-graph enumeration. None of those is an input
any more. The old material is kept because the defect ledger is attached to it.

*This section previously said the strongest statement carried `hclass` and
`hne40`, that everything was orientation-level over `Pt := Int × Int`, and that
the mathematics turned on `A7-EXT`. All three are now false; `docs/verification-status.md`
rows 40–51 record how each changed.*

## Build

No LaTeX distribution is vendored here. With [Tectonic](https://tectonic-typesetting.github.io/)
(a single self-contained binary that fetches only the packages it needs):

```bash
cd paper && tectonic -X compile proof-manifest.tex --keep-logs
```

To check the build rather than just run it, **delete the old log first** — a
stale `proof-manifest.log` has previously produced false "0 undefined
references" reports:

```bash
cd paper && rm -f proof-manifest.log \
  && tectonic -X compile proof-manifest.tex --keep-logs \
  && grep -c "Undefined reference\|LaTeX Error\|^! " proof-manifest.log
```

With a conventional TeX Live / MacTeX installation:

```bash
cd paper
pdflatex proof-manifest.tex
bibtex   proof-manifest
pdflatex proof-manifest.tex
pdflatex proof-manifest.tex
```

Last built 2026-09-17 with Tectonic, from a deleted log: **31 pages, 0 errors,
0 undefined references, 0 undefined citations, 4 overfull boxes, 18 underfull.**
The four overfull boxes are pre-existing and live in the narrow ragged columns
of the Lean trust-boundary table (`proof-manifest.tex` lines 1362–1382); all of
them are under 15 pt and none is new. The underfull boxes are loose spacing in
the same table columns and in the bibliography. Both are cosmetic.

*Previously: 24 pages, 0 overfull. The page count grew with §1 and the new
library rows.*

## Files

| File | Role |
|---|---|
| `proof-manifest.tex` | the manifest (authoritative) |
| `references.bib` | BibTeX; the DCG journal version is the primary AKR citation |
| `proof-manifest.pdf` | committed so the manifest is readable without a TeX install; regenerable from the above |

LaTeX intermediates (`.aux`, `.log`, `.bbl`, `.blg`, `.out`) are gitignored.

## Citation policy

The AKR journal version (DCG 68(4) (2022) 1049–1077, DOI
10.1007/s00454-022-00438-0) is the primary citation. The SoCG 2020 version is
LIPIcs 164, **Article 1, pp. 1:1–1:18, DOI 10.4230/LIPIcs.SoCG.2020.1**
(corrected 2026-10-04: `references.bib` had article 24 and DOI `…2020.24`,
which is a different paper). It is cited **only** where the two differ in a way
that matters — specifically, the cone conditions in the proof of Lemma 7, and
that it has no §9. Project documents are
never cited as authority for an external lemma. Every entry in `references.bib`
is cited at least once; the Günther preprint is cited precisely to record that
it was withdrawn and is *not* relied on.
