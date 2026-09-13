# Paper

[`proof-manifest.tex`](proof-manifest.tex) — **the authoritative dependency
manifest.** It states exactly what the candidate proof of `f(7,7) = 38` consists
of, separating published external mathematics, project-original arguments,
computational reductions, external database checks, certificate verification,
Lean-kernel verification, and the remaining human-review item.

A convenience mirror in Markdown is at [`../docs/proof-manifest.md`](../docs/proof-manifest.md).
Where the two differ, the LaTeX file is correct.

## Build

No LaTeX distribution is vendored here. With [Tectonic](https://tectonic-typesetting.github.io/)
(a single self-contained binary that fetches only the packages it needs):

```bash
cd paper && tectonic -X compile proof-manifest.tex
```

With a conventional TeX Live / MacTeX installation:

```bash
cd paper
pdflatex proof-manifest.tex
bibtex   proof-manifest
pdflatex proof-manifest.tex
pdflatex proof-manifest.tex
```

Last built 2026-09-13 with Tectonic 0.17.0: **0 errors, 0 undefined references,
0 undefined citations, 0 overfull boxes.** Six underfull boxes remain (loose
spacing in the ragged narrow table columns and the bibliography); these are
cosmetic.

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
never cited as authority for an external lemma.
