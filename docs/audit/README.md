# `docs/audit/` — generators for the reader's audit document

The deliverable is `audit.tex` -> `audit.pdf`, written for readers with or
without Lean experience. Its job is to let a reader check what the code claims
and what the evidence for it does and does not establish, so everything in it
must be either *quoted from the source* or *recomputed from scratch*. `extract_lean.py` and `gallery.py` below are the only
places the document's evidence comes from; `make_tables.py` only reformats their
output into LaTeX.

The first two are Python 3 **standard library only** (no matplotlib, no numpy), and both
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
the statement surface of the headline theorem, sixteen declarations: `pP`, `pQ`
(`lean/ResidualSymBase.lean`); `SimpleClosed`, `Pair9`, `NoVertexOnOther`,
`sideP9`, `sideQ9`, `bdryP9`, `bdryQ9`, `points9` (`lean/AKR9.lean`);
`attainedCoincFree`, `points9_le_38_of_coincFree`,
`isGreatest_38_of_coincFree`, and the non-vacuity group `nonVacuity`,
`certPair9_not_le_37`, `isGreatest_attainedCoincFree_unique`
(`lean/Pair9Shift.lean`).

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

## 3. `make_tables.py` — the LaTeX fragments, and `audit.tex` — the document

`audit.tex` is the deliverable: a PDF written for readers with or without Lean
experience. It contains **no hand-typed Lean and no hand-computed count**.
Everything of that kind reaches it through `make_tables.py`, which reads the
two tools' outputs and emits LaTeX fragments into `out/`:

| fragment | feeds | source it is copied from |
| --- | --- | --- |
| `statement_table.tex` | §2, the statement beside the mathematics | `out/lean_excerpts.json` |
| `gallery_table.tex` | §3, the count table | `out/gallery/gallery_summary.json` |
| `gallery_figures.tex` | §3, the figure plates | `out/png/*.svg.png` |
| `l4_box.tex` | §4, the L4 before/after | `scripts/negative-tests.sh` itself |
| `mutation_tables.tex` | §4, the group-A verdict table | `out/negative_tests_A.log` |
| `group_l.tex` | §4, the group-L block *or its hedge* | `results/validation/2026-09-24_negative_tests_L.log` |
| `headline_facts.tex` | §5, the build evidence | `results/validation/2026-09-24_headline_build.log` and `out/axiom_check_headline.log` |
| `nonvacuity.tex` | §7, `nonVacuity` and its ten clauses | `out/lean_excerpts.json` |
| `facts.tex` | every number quoted in prose | both tools |

LaTeX escaping is `extract_lean.latex_escape`, the same routine that writes
`lean_excerpts.tex`, so §2 and the appendix cannot disagree about what the code
says. `write_l4_box` locates the mutation strings in `scripts/negative-tests.sh`
by parsing it and raises if they are not there, so the document cannot describe
a test the suite no longer performs.

Two properties of the section-4 generator are load-bearing and easy to break:

* **All five verdicts render.** `negative-tests.sh` can print `ACCEPTED`,
  `CAUGHT`, `NOT CAUGHT`, `NOT APPLIED` and `WRONGLY REJECTED`. `parse_negtests`
  carries all five and `verdict_table` renders all five. An earlier version knew
  only three and would have *silently dropped a failing row* — the same defect
  as a checker that cannot fail. If you touch `VERDICTS`, keep it exhaustive.
* **`group_l.tex` degrades honestly.** Group L needs four real `lake build`s, so
  its log is often absent or half-written. `write_group_l` emits the real verdict
  table only when the run printed its own `RESULT:` line; otherwise it emits the
  hedge (`L_HEDGE`) plus a sourced note on how far the run had got. It never
  guesses a verdict, and a failing case is reported in prose with the suite's own
  `FAILED TO REJECT` line quoted. **Re-run `make_tables.py` after a group-L job
  lands**; its stdout says which path it took.

The figures are the gallery's SVGs rendered to PNG. There is no SVG-to-PDF
converter on this machine; macOS `qlmanage` is used:

```
for f in docs/audit/out/gallery/*.svg; do
  qlmanage -t -s 1400 -o docs/audit/out/png "$f"; done
```

## Re-running

From the repository root, in this order:

```
python3 docs/audit/extract_lean.py     # verbatim Lean   -> out/lean_excerpts.*
python3 docs/audit/gallery.py          # figures, counts -> out/gallery/
bash scripts/negative-tests.sh --groups A > docs/audit/out/negative_tests_A.log
bash scripts/negative-tests.sh --lean --groups L \
  > results/validation/2026-09-24_negative_tests_L.log   # four real lake builds
bash scripts/verify-all.sh --axiom-log \
  results/validation/2026-09-24_headline_build.log \
  > docs/audit/out/axiom_check_headline.log              # no Lean needed
python3 docs/audit/make_tables.py      # the LaTeX fragments
python3 docs/audit/extract_lean.py --check    # drift check; MUST exit 0
cd docs/audit && tectonic audit.tex           # -> docs/audit/audit.pdf
```

Neither Python tool touches anything outside `docs/audit/out/`, neither builds
Lean, and both take a couple of seconds. Before shipping a PDF, re-run
`python3 docs/audit/extract_lean.py --check` and confirm the gallery still
exits zero.

## CI extracts

`out/ci_run.log` and `out/ci_run_2.log` are line-filtered extracts of the two
recorded GitHub Actions runs (36086080499 at `b78f372`, 36089101301 at
`e984888`). The second was extracted on 2026-10-04 with
`gh run view 36089101301 --log`; its header states the filter used. The
repository is private, so the run pages themselves are visible only to people
with access.
