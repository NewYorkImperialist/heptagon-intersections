# Known issues, gaps and open verification questions

**Last updated:** 2026-09-13

Nothing in this file is hidden elsewhere in the repository, and nothing here has
been silently repaired. Where a defect was found in the research record, the
defective artifact is preserved (see `archive/superseded/`) and the correction
is documented separately.

Issues are numbered `K-nn` and referenced from other documents.

---

## K-01 — The 13,484,940 graph count was mislabelled (CORRECTED, historical)

**Status:** corrected upstream; defective artifact preserved.

`archive/superseded/python/enum9.py` enumerated **13,484,940** graphs and the
superseded `archive/superseded/REPORT.md` reported this as "all 9-edge graphs".
It is not. The recursion's leaf test is

```python
if i==7:
    if used!=FULL: return
    process(N)
```

which checks that every Q-side is covered but **never checks that the edge
budget was exhausted** (`budget == 0`). It therefore enumerated all graphs with
`|E| ∈ {7, 8, 9}`.

The corrected figures, confirmed by re-running `python/elimination/audit_enum.py`
on 2026-09-13:

| \|E\| | count |
|---|---|
| 7 | 5,040 |
| 8 | 476,280 |
| 9 | **13,003,620** |
| total | 13,484,940 |

`5,040 + 476,280 + 13,003,620 = 13,484,940`, which closes the arithmetic.

**Soundness impact: none.** The original run was a *superset* of what was
needed, so no candidate was missed; the `|E| = 7` and `|E| = 8` cases were swept
for free. Only the reported figure was wrong. The number this project uses is
**13,003,620**.

`audit_enum.py` fixes the leaf test (`if budget!=0 or used!=FULL: return`).

**The buggy file has deliberately NOT been patched**, and the old logs and
figures have deliberately NOT been rewritten. See `archive/superseded/README.md`.

---

## K-02 — "Implementation B" has no source code in this repository

**Status:** open. This is the single biggest gap.

`docs/proof-outline.md` certifies the final result as "0, over all 196 ordered
class pairs, under 3 representative labellings, **in 2 independent
implementations**", and the transcript describes Implementation B in detail
(Q-side enumeration, BFS components, union-find-with-parity bipartiteness,
separating-axis tests) and reports an identical survivor-set SHA-256.

**No Implementation B source file is present in these materials.** The claim is
currently unauditable. Everything reproduced in `results/` came from the single
codebase now in `python/`.

Note also that `docs/audit-report.md`, written earlier, states that code
correctness is *"not mitigated by an independent reimplementation, which a
referee should demand"*. These two documents disagree, and the disagreement is
unresolved in the surviving record.

**On whether A and B are genuinely independent:** even if the code is recovered,
the transcript is explicit and should be taken at face value —

> "both implementations are mine, in Python, in one session. They share an
> author and a language, so they cannot rule out a shared conceptual error —
> only a shared coding error."

Two implementations generated in the same LLM-assisted session share prompts,
framing, and any misreading of the source papers. They are a check on
*transcription*, not on *interpretation*. The README and
`verification-status.md` should not be softened on this point.

---

## K-03 — The 225-case final elimination has no standalone certificate

**Status:** open.

`docs/proof-outline.md` Step 8 makes three specific claims:

* exactly **225** (class-pair, graph) combinations reach the final filter;
* they lie on **121** distinct graphs;
* *every* one has degree sequence **(2,2,1,1,1,1,1) on both sides**, and only 9
  of the 14 classes survive that far.

**No script in this repository computes any of these numbers.** They cannot be
reproduced from the shipped code. The pipeline reports aggregate counts only
(`2300 → 121 → 0`); note that the `121` there is a count of *graphs surviving
Lemma 2*, which is numerically equal to but conceptually distinct from the
"121 distinct graphs" of Step 8, and the two should not be conflated without a
script that establishes the connection.

This matters more than a missing count. The 225 cases are the project's answer
to "give a referee something human-readable instead of `survivors == 0`". That
answer currently consists of a narrative, a structural argument, and one worked
example — with no emitted list of the 225 cases a referee could check.

**Recommended:** emit `data/certificates/final_225_cases.json` listing, for each
case, the class pair, the neighbourhood lists, the avoiding pair used, and the
two indices that fail the cyclic-adjacency test. That file would be small,
independently checkable by hand or by a twenty-line script in any language, and
would be the highest-value artifact this project could add.

---

## K-04 — Missing data files break the pipeline as shipped

**Status:** partially worked around; several parts remain unrunnable.

None of the project's generated data files were included. Missing:

| file | produced by | needed by | recoverable? |
|---|---|---|---|
| `ot7_det.pkl` | `python/core/chiro.py` | classification | **yes** — 8 s |
| `exc_det.pkl` | `audit_ot.py` part (c) | elimination | **yes** — via the wrapper below |
| `ot7.pkl` (135 *random realizations*) | `ot_fast.py` — **script also missing** | `audit_ot.py` parts (a),(b); `questionA.py`; `avoid.py` | **no** |
| `best_7_7_3.pkl`, `best_7_7_4.pkl` | `search.py` — **script also missing** | `validate.py` section 1 | **no** |
| `alive.pkl`, `survivors9.pkl`, `final.pkl` | superseded pipeline | `avoid.py` | **no** |

Because `audit_ot.py` runs parts (a) and (b) — both requiring the absent
`ot7.pkl` — before part (c), it aborts before writing `exc_det.pkl`, which every
downstream script needs. The whole chain was therefore dead as delivered.

**Workaround added during organization:**
`python/classification/make_exceptional_profiles.py` execs the *unmodified
source text* of part (c) with `det` pre-loaded from `ot7_det.pkl`. No algorithm
was changed and no logic reimplemented; the file is clearly marked as a
non-research addition. With it, the full `chiro → classify → eliminate` chain
runs from scratch in about 3.5 minutes.

**Still unrunnable:** the chirotope-vs-coordinate cross-check (340,335 tests, 0
mismatches) and the deterministic-vs-sampled order-type identity, both of which
are cited as correctness evidence in `docs/audit-report.md`. See K-05.

---

## K-05 — The validation evidence cannot be re-run

**Status:** open.

`docs/audit-report.md` and `archive/superseded/REPORT.md` rest much of their
code-correctness argument on numbers that cannot be reproduced here:

* 340,335 chirotope-vs-coordinate predicate tests, 0 mismatches — needs `ot7.pkl`;
* 129,812 high-intersection realizable configurations, 0 false rejections —
  needs `search.py` and `best_7_7_*.pkl`, both absent;
* 3,952 random pairs, 0 false rejections — `python/validation/validate.py`
  section 2 *can* run standalone, but section 1 aborts first on the missing
  `best_7_7_3.pkl`, so the file cannot be executed as-is;
* controls hitting the proven optima f(5,5)=18 and f(5,7)=26 — needs `search.py`.

These are load-bearing: "zero false rejections on realizable configurations" is
the main argument that the filters are not over-aggressive. A filter that
wrongly rejects would produce exactly the observed outcome (zero survivors).
**Re-establishing this evidence is a prerequisite for trusting the upper bound.**

---

## K-06 — "Černý Lemma 3 is unnecessary" is unsupported by shipped code

**Status:** open.

`docs/proof-outline.md` opens with **"Černý Lemma 3 is NOT needed"**, and uses
it to cut the external dependency list from five published lemmas to four. The
transcript backs this with a filter-minimality table (drop L3 → 0 survivors;
drop L2 → 64; drop L2 and L3 → 64; drop L2, L3 and A7 → 20,618).

**No script in this repository performs that experiment**, and the shipped
pipeline still applies L3 unconditionally. The reduced dependency claim rests
entirely on a run whose code is absent.

This is easy to fix: make the filter set a command-line option in
`audit_enum.py` and re-run. Until then, the conservative statement is that the
result depends on **five** external lemmas.

---

## K-07 — The published SHA-256 digests cannot be checked

**Status:** open, probably permanent.

`docs/proof-outline.md` quotes two digests as certificates:

* survivor set: `451cd2893234813952946fc2c92671853827035be337003451bdd7cea631d467`
* 14-class profile table: `dabf1fb12de23a81a8285da306d9cccd16287758fe4a547d658bdf23627f09a5`

Neither the hashed files nor the serialization format that produced them is
recorded anywhere in the surviving materials. A digest over an unspecified byte
format is not a checkable certificate.

The JSON files regenerated into `data/` during organization are hashed in
`data/hashes/SHA256SUMS`, but **those digests are new and do not correspond to
the two above**. No claim of agreement is made.

**Recommended:** define and document a canonical serialization (e.g. survivors
as sorted lines of seven space-separated neighbourhood bitmasks, LF endings,
UTF-8), commit the file, and hash that.

---

## K-08 — Lean: nothing compiles, and nothing has been shown to compile

**Status:** open.

* The only Lean file is `lean/LemmaA.lean`.
* It contains **no** `sorry`, **no** `axiom`, **no** `admit`, **no**
  `native_decide` — verified by grep.
* **It has never been compiled.** There is no `lakefile.lean`/`lakefile.toml`,
  no `lean-toolchain`, no Mathlib dependency, no `.lake/`, and no build log. No
  Lean toolchain was installed in the environment where this repository was
  organized, so compilation could not be attempted.
* Its own header says `Status: skeleton. Mathlib lemma names marked -- CHECK may
  need adjusting`, and six proof steps carry `-- CHECK`.

**Do not read "no `sorry`" as "verified".** For a file that has never been
through the elaborator, the two are unrelated.

There is also a **contradiction in the record**: the transcript states "The Lean
files are skeletons with `sorry`s in the places I flagged", but the delivered
`LemmaA.lean` contains none. The likely explanation is that the remark referred
to the other six designed files, which are absent. Unresolved.

Finally, per `docs/lean-architecture.md`, the eventual `Main.lean` would import
`Imported.lean` (the five published lemmas as `axiom`s) and, at first, an
axiomatized classification. **When that first compiles it will be a theorem
conditional on project-specific axioms, not a kernel-verified theorem from
Mathlib foundations.** These must never be conflated. See `lean/README.md`.

---

## K-09 — External lemma translations have had no independent review

**Status:** open.

Two translations are doing heavy lifting and both were produced, revised, and
audited within the same LLM-assisted session:

1. **AKR Lemma 7 ⟹ `H` bipartite.** Depends on reading Lemma 7's "both hooking"
   hypothesis existentially. The author argues this is how AKR's own proof uses
   it. Plausible, and the reasoning is written out — but it is an interpretation
   of another paper's prose, and the entire L7 filter rests on it. The author's
   own recommendation was to confirm it by correspondence with the AKR authors.
2. **AKR Lemma 5 on avoiding pairs.** Requires the corrected definition of an
   *associated pair* including the two non-edges. Under the looser reading taken
   from AKR's prose, AKR's own Observation 6 is false — the transcript gives an
   explicit counterexample. So the project is knowingly using a reading that
   differs from the published wording, on the grounds that the published wording
   cannot be what was meant. That is very likely right, and it is exactly the
   kind of judgement a referee must confirm rather than accept.

Neither has been reviewed by anyone else.

---

## K-10 — Degenerate configurations

**Status:** argued in prose; not formalized, not refereed.

`f(7,7)` is defined over configurations in general position, as in all three
source papers. `docs/proof-outline.md` Step 0 argues the reduction rather than
assuming it — a real improvement on the one-sentence assertion in Černý et al. —
but it is prose, with the type-(iii) non-interleaved case carried by an `O(δ)`
argument, and no formal treatment exists.

---

## K-11 — Mismatch between the older and newer pipelines

**Status:** documented; both preserved.

| stage | superseded pipeline | current pipeline |
|---|---|---|
| order types | random sampling (`ot_fast.py`, missing) | deterministic staged enumeration (`chiro.py`) |
| 9-edge graphs | 13,484,940 (mislabelled, K-01) | 13,003,620 |
| after A5 consecutive | 43,330 | 42,238 |
| after A7 | 24,990 | 24,990 |
| after Černý L3 | 9,702 | 9,702 |
| after compatibility | 3,522 | 2,300 |
| after Černý L2 | 64 | 121 |
| after A5 avoiding | 0 | 0 |

The `43,330 → 42,238` change follows from K-01. The `3,522 → 2,300` and
`64 → 121` changes are **defect D2**: those counts depend on which labelled
polygon happens to be stored as each class representative. Re-labelling carries
the survivor set bijectively for a fixed ordered class pair, so **emptiness is
invariant but the union over classes is not**. Only the final `0` is meaningful.

This is why `python/elimination/audit_pairs.py` exists: it verifies emptiness
for each of the 196 ordered class pairs separately, under three different
representative labellings. Reproduced 2026-09-13; all zero
(`results/logs/2026-09-13_audit_pairs_196_class_pairs.log`).

**A reader should treat every intermediate survivor count in this project as an
artifact, and only the per-ordered-pair emptiness result as a claim.**

---

## K-12 — Clean-environment reproduction: partial

**Status:** partially done.

Re-run on 2026-09-13 in an empty scratch directory, Python 3.14.7, macOS arm64,
standard library only, from the repository sources:

| stage | result | time |
|---|---|---|
| order types (`chiro.py`) | 1, 2, 3, 16, 135 ✓ | 8 s |
| classification | 6342 / 6007 / 319 / 16; 14 classes ✓ | 2 s |
| `\|E\|=7` | 5,040 → 14 → **0** ✓ | 0.2 s |
| `\|E\|=8` | 476,280 → 1,078 → **0** ✓ | 8 s |
| `\|E\|=9` | 13,003,620 → 42,238 → 24,990 → 9,702 → 2,300 → 121 → **0** ✓ | 3 m 6 s |
| 196 ordered class pairs × 3 labellings | **0** everywhere ✓ | 3 m 8 s |
| lower bound | I=38, \|E\|=11, 3 components ✓ | <1 s |

Every documented figure that the shipped code is capable of producing was
reproduced exactly. What was **not** reproduced is listed in
`results/counts/pipeline_counts.json` under `NOT_reproduced_here`, and covered
by K-02, K-03, K-05, K-06 and K-07.

"Clean environment" here means a clean *directory*, not a pinned container. The
code uses only the standard library, so there are no package versions to pin;
a genuinely independent reproduction should use a different Python
implementation, a different machine, and ideally a different language.

---

## Changes made to code during repository organization

Per the organizing brief, **no algorithm, predicate, filter or count in any
original research file was modified.** The complete list of functional
additions:

| file | nature | rationale |
|---|---|---|
| `python/classification/make_exceptional_profiles.py` | **new** wrapper | K-04. Execs the unmodified part (c) of `audit_ot.py`. No logic reimplemented. |
| `python/validation/check_lower_bound.py` | **new** checker | Provides the cheap standalone referee check the brief asks for. Uses only `core/geom.py` predicates. |
| `python/classification/export_profiles.py` | **new** exporter | Serializes classification output to JSON. Transcribes the `classdata` function already duplicated verbatim in `audit_enum.py` and `audit_pairs.py`; no predicate redefined. |

Known defects were **documented, not fixed**: the `enum9.py` budget bug (K-01)
and the dead `for m in range(1,8): pass` loop in the same file remain exactly as
written.
