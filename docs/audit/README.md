# `docs/audit/` — generators for the reader's audit document

Two tools that feed a PDF written for a mathematician who does not read Lean.
The document's job is to convince him the code does what it claims, so
everything in it must be either *quoted from the source* or *recomputed from
scratch*. These two tools are the only places the document's content comes
from.

Both are Python 3 **standard library only** (no matplotlib, no numpy), and both
**self-test on startup and abort on failure**. All geometry is exact rational
arithmetic (`fractions.Fraction`); no floating point is used for any geometric
decision anywhere.

---

## 1. `extract_lean.py` — verbatim Lean, with a tripwire

Pulls named declarations out of the real `.lean` files, from the
`def`/`theorem`/`structure` keyword to the end of the declaration, together
with the file and line number. The document can therefore never show something
the code does not say.

```
python3 docs/audit/extract_lean.py            # extract; write outputs and the lockfile
python3 docs/audit/extract_lean.py --check    # verify nothing drifted; exit 1 if it did
python3 docs/audit/extract_lean.py --print pP # dump one declaration to stdout
python3 docs/audit/extract_lean.py --self-test
```

Two failure modes are made loud rather than silent:

* a declaration that no longer exists (renamed, deleted, moved) aborts the run
  with an error naming the file and the declaration;
* a declaration whose **text has changed** since the document was generated is
  caught by `--check`, which compares SHA-256 digests against
  `out/lean_excerpts.lock.json`. **Put `--check` in whatever builds the PDF**
  and the document cannot quietly drift away from the code.

The declaration list is `TARGETS` at the top of the file. It currently holds
the statement surface of the headline theorem: `pP`, `pQ`
(`lean/ResidualSymBase.lean`); `SimpleClosed`, `Pair9`, `NoVertexOnOther`,
`sideP9`, `sideQ9`, `bdryP9`, `bdryQ9`, `points9` (`lean/AKR9.lean`);
`attainedCoincFree`, `points9_le_38_of_coincFree`,
`isGreatest_38_of_coincFree` (`lean/Pair9Shift.lean`).

Outputs, in `out/`:

| file | what it is |
| --- | --- |
| `lean_excerpts.txt` | plain text, one block per declaration |
| `lean_excerpts.tex` | LaTeX-escaped, one `\begin{leandecl}` block per declaration |
| `lean_preamble.tex` | the macros `lean_excerpts.tex` needs; `\input` it in the preamble |
| `lean_excerpts.json` | file, line, kind, doc comment, text, digest |
| `lean_excerpts.lock.json` | digests only — the drift tripwire |

Lean's unicode is mapped to LaTeX (`ℝ` → `$\mathbb{R}$`, `∀` → `$\forall$`, …).
Any character with no mapping is emitted literally and **listed at the end of
the run**, so nothing goes missing without being announced; compile with
XeLaTeX/LuaLaTeX or extend `UNICODE_MAP`.

## 2. `gallery.py` — the pictures, counted exactly

Draws configurations of two heptagons with every boundary intersection point
circled, as **hand-written SVG** (no libraries), and counts the points exactly.

```
python3 docs/audit/gallery.py                   # self-test, draw, count, summarise
python3 docs/audit/gallery.py --only NAME       # one configuration
python3 docs/audit/gallery.py --self-test
```

The geometric predicates are **transcriptions of the Lean source**, not
re-inventions:

* `orientR` — `lean/RealConfig.lean:54`
* `SimpleClosed` — `lean/AKR9.lean:71`, all three conjuncts: no degenerate
  side; non-adjacent sides disjoint (this is what forbids self-crossings);
  adjacent sides meeting in exactly the shared vertex (this is what forbids an
  adjacent-side backtrack and a repeated vertex `W i = W (i+2)`). Three
  collinear vertices are deliberately **accepted** — that is the point of
  `SimpleClosed`, and a self-test checks it.
* `Adjacent` — `lean/LowerBound.lean:79`
* `points9` — `lean/AKR9.lean:119`, the intersection of the two boundaries,
  with **closed** sides.

Two closed segments meet in nothing, in a point, or in a whole sub-segment.
The third case means the two boundaries meet in **infinitely many** points; it
is detected, flagged in the picture and in the summary, and never miscounted
as a finite number.

Outputs, in `out/gallery/`: one `<name>.svg` per configuration, `index.html`
(a contact sheet), and the machine-readable `gallery_summary.json` /
`gallery_summary.csv` (name, coordinates, count, and the degeneracy flags).
Anything the PDF quotes should be quoted from those two files.

Each configuration carries an `expected` count. A mismatch is reported as a
**discrepancy** and the tool exits non-zero; so does a configuration whose
polygons are not `SimpleClosed`. The `certificate_38` entry is read from
`data/lower_bound/lower_bound_38.json` and must come out at exactly 38.

## Re-running

From the repository root:

```
python3 docs/audit/extract_lean.py
python3 docs/audit/gallery.py
```

Neither tool touches anything outside `docs/audit/out/`, neither builds Lean,
and both take a couple of seconds. Before shipping a PDF, re-run
`python3 docs/audit/extract_lean.py --check` and confirm the gallery still
exits zero.
