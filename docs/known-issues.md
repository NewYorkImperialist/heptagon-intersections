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

## K-02 — Independent reimplementation  (PARTIALLY RESOLVED 2026-09-13)

**Status:** the finite graph/profile reduction has been independently
reimplemented and agrees exactly. Author independence remains open.

### What was done

`independent/implementation_b/` contains a second implementation of the finite
reduction, written in **C++** from a written specification (`SPEC.md`) rather
than from Implementation A's code, using a materially different enumeration and
a different algorithm for every filter:

| | A (Python) | B (C++) |
|---|---|---|
| enumeration axis | P-side rows | **Q-side columns** (transposed) |
| enumeration control | running edge budget | **degree sequence fixed in advance** |
| graph key | tuple of 7 ints | **49-bit `uint64_t` bitboard** |
| components | union-find | **iterative bitmask closure** |
| consecutive AKR L5 | double loop | **cyclic bitmask rotation** |
| H bipartiteness | DFS 2-colouring | **union-find with parity** |
| compatibility | 128-entry lookup table | direct containment in the 5 maximal crossing sets |
| Černý L2 | all `C(7,4)` subsets | **systems of distinct representatives** |
| Černý L3 | applied | **not implemented** |

### Result: exact agreement

| stage | A | B |
|---|---|---|
| 9-edge graphs, min degree ≥ 1 | 13,003,620 | **13,003,620** |
| after consecutive AKR L5 | 42,238 | **42,238** |
| after AKR L7 (`H` bipartite) | 24,990 | **24,990** |
| after crossing-set compatibility | 2,300 | **2,300** |
| after Černý L2 | 121 | **121** |
| `(classP, classQ, graph)` triples | 225 | **225** |

And, more than matching counts, **the canonical set of 225 triples is exactly
equal** — zero elements in either set difference, same 121 distinct graphs, same
class pairs, all degree sequence `(2,2,1⁵)` on both sides, same 9 classes
`{1,2,3,4,9,10,11,12,13}`. Verified by
`independent/implementation_b/compare_with_certificate.py`.

The graph count is additionally confirmed by a closed-form generating-function
derivation involving **no enumeration at all**
(`independent/implementation_b/count_check.py`):
`Σ_j (−1)^j C(7,j) [x⁹]((1+x)^{7−j} − 1)⁷ = 13,003,620`, which also reproduces
5,040 and 476,280 for `|E| = 7, 8` and their sum 13,484,940 (K-01).

Runtime: **1.56 s** for B versus ~3 minutes for A.

23 adversarial unit tests, positive and negative for every filter, all pass.
Three initially failed — the **fixtures** were wrong (built to be safe on
window 0, while class 12 has windows `{0,2,3}`), not the implementation. The
tests were rewritten; `l2_ok` was not touched. Recorded in the B README.

### What remains open — and it is not small

**This is not a clean-room reimplementation, and must not be described as one.**

The same agent (Claude) wrote both this implementation and the repository
organization, and had **already read Implementation A's source in full** —
`audit_enum.py`, `audit_pairs.py`, `chiro.py`, `geom.py`, and the certificate
generator — earlier in the same session. That exposure cannot be undone.

So the agreement is strong evidence against **transcription and coding errors**,
and against a missed branch in either enumeration, since the traversal orders
differ completely. It is **no evidence at all** against:

1. **A shared misreading of the published lemmas.** Both implementations encode
   the same reading of AKR Lemmas 5 and 7 and Černý Lemma 2. If the reading of
   AKR Lemma 7 is wrong (K-09), both are wrong identically.
2. **An error in the canonical profile data.** B consumes
   `data/exceptional_profiles/exceptional_profiles_14.json` as input. It does
   **not** re-derive the 14 exceptional classes, their crossing sets, their
   Lemma-2 windows, or the order-type enumeration behind them. That whole
   pipeline is still single-sourced.
3. **Author independence.** A check by a different person remains the thing that
   is missing, and it is what K-02 was originally about.

The conservative summary: *the finite graph/profile reduction has been
independently reimplemented with a materially different method and the exact
225-case set reproduced; a shared mathematical specification and a shared author
remain common-mode dependencies.*

### Historical note

`docs/proof-outline.md` certifies the result "in 2 independent implementations"
and the transcript describes an earlier Implementation B with a matching
survivor-set SHA-256. **That earlier implementation is still absent** from these
materials; the one in `independent/implementation_b/` was written on
2026-09-13 and is unrelated to it. The transcript's claim remains unauditable,
and `docs/audit-report.md` still disagrees with `proof-outline.md` on whether an
independent reimplementation existed at all.

---

## K-03 — The 225-case final elimination certificate  (RESOLVED 2026-09-13)

**Status:** resolved. Every figure claimed in `proof-outline.md` Step 8
reproduced exactly, and a certificate plus an independent checker are now
shipped.

### What was claimed, and what reproduced

| Claim (`proof-outline.md` Step 8 / transcript) | Reproduced |
|---|---|
| exactly **225** (class-pair, graph) combinations reach the final filter | **225** yes |
| on **121** distinct graphs | **121** yes |
| *every* one has degree sequence **(2,2,1,1,1,1,1)** on **both** sides | 225/225 both sides |
| only **9** of the 14 classes survive that far | classes `{1,2,3,4,9,10,11,12,13}` = 9 |
| all are killed by AKR Lemma 5 on an avoiding pair | 225/225, all `pair_kind = "avoiding"` |
| worked example: `N = [{0},{0},{1},{2,4},{3},{4},{5,6}]`, class 12, `M_P = {0,2,3,4,6}`, avoiding pair (4,6), `N(p4) = {3}`, `N(p6) = {5,6}` | case 0 of the certificate, verbatim |

The transcript's values were **not** treated as authoritative: the pipeline was
re-run and the numbers fell out of it. They happen to agree.

### Which stage the 225 corresponds to

The number of `(classP, classQ, graph)` triples entering the avoiding-pair
Lemma 5 filter — that is, the sum over surviving graphs of `|okP| x |okQ|` after
crossing-set compatibility and Cerny Lemma 2. `audit_enum.py` prints only the
*graph* count at each stage (`2300 -> 121`), never the triple count, which is why
225 could not previously be reproduced from shipped code. The `121` it prints
after Cerny Lemma 2 is the same 121 distinct graphs; K-03 previously warned the
two might not be the same set, and they are.

### Filters active in the shipped certificate

`data/certificates/final_elimination_225.json` is generated with **Cerny Lemma 3
switched OFF**:

| filter | active | source |
|---|---|---|
| min degree >= 1, 9 edges | yes | Cerny L1 |
| AKR Lemma 5, consecutive pairs | yes | AKR L5 |
| AKR Lemma 7 => H bipartite | yes | AKR L7 |
| **Cerny Lemma 3** | **NO** | — |
| crossing-set compatibility | yes | elementary (P9) |
| Cerny Lemma 2 | yes | Cerny L2 |
| AKR Lemma 5, avoiding pairs | the final filter, certified | AKR L5 |

So the certificate depends on **four** published lemmas: Cerny L1, L2 and AKR
L5, L7.

### Artifacts

* `python/elimination/make_final_certificate.py` — generator. **This is the
  original search, instrumented.** Every mathematical predicate is the original
  `audit_enum.py` code, obtained by exec-ing slices of its source; only the
  driver (which filters fire, plus bookkeeping) is new. `audit_enum.py` itself
  was not modified.
* `data/certificates/final_elimination_225.json` — 225 cases, each with class
  IDs, canonical graph encoding, degree sequences, component partitions, the
  side pair and its kind, both neighbourhoods, the two difference sets, and the
  explicit (empty) list of cyclic adjacencies.
* `python/validation/check_final_certificate.py` — **independent checker**,
  standard library only, sharing no code with the generator or any search
  script. Recomputes every quantity from the canonical graph encoding and treats
  the certificate's convenience fields as claims to be checked.
* `results/validation/2026-09-13_check_final_certificate.log` — all 225 pass.

### The checker has teeth

Ten adversarial controls were run; **all ten were detected**: a case marked
`SURVIVES`; a pair that is not avoiding for its class; falsified neighbourhoods;
falsified difference sets; a falsified adjacency list; a graph edited to break
the edge count or minimum degree; a wrong degree sequence; a wrong component
partition; and — the core check — an *honestly constructed* witness using a
different avoiding pair of the same class for which Lemma 5 **is** satisfied,
correctly rejected with `AKR Lemma 5 is SATISFIED via [[0, 1]]: this case is NOT
killed`.

### What the certificate does NOT establish

* **Completeness.** The checker verifies that each listed case dies. It does
  **not** verify that the list is the complete set of cases reaching the final
  filter — that rests on the exhaustive enumeration inside the generator, which
  the checker deliberately does not repeat.
  **Update 2026-09-13:** completeness has since been independently
  reproduced by Implementation B (K-02), a separate C++ codebase with a
  materially different enumeration, which derives exactly the same 225 triples.
  The residual risk is a shared *specification*, not a shared enumeration.
* **The canonical profile data.** The checker reads
  `data/exceptional_profiles/exceptional_profiles_14.json` as given input. It
  cannot verify that these are the correct 14 exceptional classes, nor that the
  listed avoiding pairs are geometrically correct.
* **The neighbour-adjacency reduction itself.** That the stated cyclic-adjacency
  condition really is implied by AKR Lemma 5 is a mathematical claim about
  someone else's published lemma; see K-09. The checker assumes it.

**This resolves K-03 only.** It does not make the upper bound verified, and it
does not touch K-02, K-05, K-07, K-08 or K-09.


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

## K-06 — "Cerny Lemma 3 is unnecessary"  (RESOLVED 2026-09-13)

**Status:** resolved, and the claim reproduces.

`proof-outline.md` opens with **"Cerny Lemma 3 is NOT needed"** but no shipped
code supported it, so the conservative dependency count remained five lemmas.

`python/elimination/make_final_certificate.py` now applies Cerny Lemma 3 only
under an explicit `--with-l3` flag, and **defaults to leaving it off**. Both
runs were performed on 2026-09-13:

| | with Cerny L3 | without Cerny L3 |
|---|---|---|
| after AKR L5 (consecutive) | 42,238 | 42,238 |
| after AKR L7 (H bipartite) | 24,990 | 24,990 |
| after Cerny L3 | 9,702 | *not applied* |
| graphs entering class filters | 9,702 | **24,990** |
| after crossing-set compatibility | **2,300** | **2,300** |
| after Cerny Lemma 2 | **121** | **121** |
| combinations reaching the final filter | **225** | **225** |
| final survivors | **0** | **0** |

The two certificates are **identical case for case** (verified: same 225 cases,
in the same order, with the same witnesses).

The mechanism is now visible: the 15,288 graphs that Cerny Lemma 3 removes are
all removed by crossing-set compatibility anyway. L3 is redundant *given* the
compatibility filter, not redundant in isolation.

**Consequence:** the elimination depends on **four** published lemmas — Cerny
Lemmas 1 and 2, AKR Lemmas 5 and 7 — not five. Cerny Lemma 3, the most intricate
of the Cerny lemmas, is not needed.

Caveat: this was established with one codebase. The redundancy is a statement
about this pipeline's filters, and inherits every caveat in K-02 and K-09.


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
| final certificate, L3-free (K-03) | 225 cases, 121 graphs, all (2,2,1⁵), 0 survivors ✓ | 3 m 6 s |
| final certificate, with Cerny L3 (control) | identical 225 cases ✓ | 3 m 6 s |
| independent certificate check | 225/225 contradictions verified ✓ | <1 s |
| Implementation B, full reduction (C++) | identical counts; exact 225-triple set match ✓ | 1.6 s |
| graph count by closed form (no enumeration) | 13,003,620 ✓ | <1 s |
| Implementation B unit tests | 23/23 pass ✓ | <1 s |
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
| `python/elimination/make_final_certificate.py` | **new** generator | K-03. The original search, instrumented. All predicates exec-sliced from `audit_enum.py`'s own source; only the driver is new, so Cerny L3 can be switched off. `audit_enum.py` unmodified. |
| `python/validation/check_final_certificate.py` | **new** checker | K-03. Independent verifier, standard library only, no shared code with any search script. |
| `python/classification/export_profiles.py` | **new** exporter | Serializes classification output to JSON. Transcribes the `classdata` function already duplicated verbatim in `audit_enum.py` and `audit_pairs.py`; no predicate redefined. |

Known defects were **documented, not fixed**: the `enum9.py` budget bug (K-01)
and the dead `for m in range(1,8): pass` loop in the same file remain exactly as
written.
