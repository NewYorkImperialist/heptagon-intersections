# Paper

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

`f(7,7) = 38` is a **candidate** result and **not** a Lean theorem. The strongest
formalised statement, `IntersectionParity.isGreatest_38_final`, still carries two
hypotheses — the exceptional-class data (`hclass`) and `I ≠ 40` (`hne40`) — and
everything in Lean is orientation-level over `Pt := Int × Int`, with the
Jordan-curve step and AKR §9.1 not formalized. The manifest's job is to say
precisely that, and to name the one item on which the mathematics still turns
(`A7-EXT`).

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

Last built 2026-09-14 with Tectonic: **23 pages, 0 errors, 0 undefined
references, 0 undefined citations, 0 overfull boxes.** Eleven underfull boxes
remain (loose spacing in the ragged narrow table columns and the bibliography);
these are cosmetic.

## Files

| File | Role |
|---|---|
| `proof-manifest.tex` | the manifest (authoritative) |
| `references.bib` | BibTeX; the DCG journal version is the primary AKR citation |
| `proof-manifest.pdf` | committed so the manifest is readable without a TeX install; regenerable from the above |

LaTeX intermediates (`.aux`, `.log`, `.bbl`, `.blg`, `.out`) are gitignored.

## Citation policy

The AKR journal version (DCG 68 (2022) 1049–1077) is the primary citation. The
SoCG 2020 version is cited **only** where the two differ in a way that matters —
specifically, the cone conditions in the proof of Lemma 7. Project documents are
never cited as authority for an external lemma. Every entry in `references.bib`
is cited at least once; the Günther preprint is cited precisely to record that
it was withdrawn and is *not* relied on.
