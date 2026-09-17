# Known issues, gaps and open verification questions

**Last updated:** 2026-09-17

> **Scope banner added 2026-09-17. Most of this file is now about the
> historical route.** On 2026-09-17 the whole upper bound, both the `I ≠ 40`
> and the `I ≠ 42` branch, became a Lean theorem for configurations in
> **general position**, importing **no published lemma** and touching no
> enumeration (`lean/ConfigBridge.lean`; `verification-status.md` rows 41–44).
> The strongest statement in the development is
> `ConfigBridge.isGreatest_38_pointCount`, carrying one hypothesis, `FullGP`.
>
> Consequently **K-01, K-03, K-05, K-06, K-11, K-12, K-15, K-16, K-17, K-19,
> K-20 and K-21 concern the 13,003,620-graph enumeration pipeline, which the
> upper bound no longer uses.** They are all still true as written and are
> retained; none of them now bears on the result. Three entries need their
> status read differently and carry dated notes below: **K-08** (Lean file
> counts, and the two claims at the end of its banner), **K-09** (the external
> lemma translations are no longer imported), **K-10** (its AKR §9.1 citation
> is **wrong**, and it is now one of only two genuinely open items) and
> **K-22** (the `hclass` entanglement is absent from the live route).
>
> **Two items are open that have no K-number**, and they are the entire
> remaining surface between this repository and `f(7,7) = 38`:
>
> * **`Config` has integer coordinates.** `RealConfig.exists_integer_model`
>   gives the sign-vector half; the step from a shared sign vector to the same
>   crossing pattern and the same point count is easy and not done.
> * **The general-position reduction.** AKR §9 (not formalized, not attempted)
>   plus AKR §3's unproved "for convenience" clause, of which
>   `RealConfig.exists_near_generic` proves the perturbation iteration and not
>   the "count is unchanged" half. Nothing in §9 or §3 asserts that the
>   perturbed polygons remain simple, which the argument uses. See K-10 and
>   `docs/akr-9-1-obligation.md`. *(No new K-numbers were opened for these; the
>   authoritative record is `verification-status.md` rows 4 and 45.)*

> **Update, later on 2026-09-17: the integer-coordinate item is now
> CLOSED for the upper bound.** `lean/RealUpperBound.lean` (commit `9b2b926`)
> proves, in two steps and importing **no published lemma**:
> `crossingPairsR_card_le_38 (R : RConfig) : (crossingPairsR R).card ≤ 38`, by
> transporting all 364 determinant signs through
> `RealConfig.exists_integer_model` into a genuine `Config` in `FullGP`; and
> then `pointsR_le_38 (R : RConfig) : (intersectionPointsR R).ncard ≤ 38`,
> where `intersectionPointsR R` is `boundaryP R ∩ boundaryQ R` — a genuine set
> in `ℝ × ℝ`, each boundary a union of Mathlib `segment ℝ`s over the fourteen
> **real** vertices. **So two simple heptagons with real coordinates, in
> general position, provably meet in at most 38 boundary points.**
>
> **What is left, and it is one thing plus two caveats.** The one thing is
> **AKR §9**: `RConfig` *assumes* general position as a structure field, and
> reaching it from an arbitrary pair of simple heptagons needs §9 followed by
> §3's clause. `RealConfig.exists_near_generic` proves §3's iteration half but
> **not** that the intersection count survives the perturbation, which is what
> would license any conclusion about the original configuration. The caveats:
> there is **no attaining example and no `IsGreatest`** at the real level, so
> this is the upper bound alone; and `Set.ncard` is `0` on infinite sets, so
> `pointsR_le_38` says nothing about boundaries sharing a segment — general
> position excludes that here, but any weakening must re-examine it. No
> committed `verify-all` log covers this module.
> `verification-status.md` row 46.

Nothing in this file is hidden elsewhere in the repository, and nothing here has
been silently repaired. Where a defect was found in the research record, the
defective artifact is preserved (see `archive/superseded/`) and the correction
is documented separately.

Issues are numbered `K-nn` and referenced from other documents.

| # | issue |
|---|---|
| K-01 | The 13,484,940 graph count was mislabelled (CORRECTED, historical) |
| K-02 | Independent reimplementation  (PARTIALLY RESOLVED 2026-09-13) |
| K-03 | The 225-case final elimination certificate  (RESOLVED 2026-09-13) |
| K-04 | Missing data files break the pipeline as shipped |
| K-05 | The validation evidence cannot be re-run |
| K-06 | "Cerny Lemma 3 is unnecessary"  (RESOLVED 2026-09-13) |
| K-07 | The published SHA-256 digests cannot be checked |
| K-08 | Lean: seven files now kernel-checked  (LARGELY RESOLVED 2026-09-13) |
| K-09 | External lemma translations  (MATERIALLY DE-RISKED 2026-09-13) |
| K-10 | General position: the project's Step 0 is INCORRECT  (UPGRADED 2026-09-13) |
| K-11 | Mismatch between the older and newer pipelines |
| K-12 | Clean-environment reproduction: partial |
| K-13 | Order-type / exceptional-profile classification  (RESOLVED 2026-09-13) |
| K-14 | AKR Observation 6 is false as printed  (ERRATUM IN A PUBLISHED PAPER, 2026-09-13) |
| K-15 | Stale `summary` block in `py_no_a7.json`  (REPORTING DEFECT, 2026-09-13) |
| K-16 | The A7 encoder's PQ-adjacency coverage argument was wrong  (FOUND AND CLOSED 2026-09-14) |
| K-17 | `Endgame.graphShapeOK` restricts the degree sequence; is that an unchecked filter?  (RAISED AND RESOLVED 2026-09-14) |
| K-18 | `data/hashes/SHA256SUMS.lean` was stale, and `scripts/` was untracked  (FOUND AND FIXED 2026-09-14) |
| K-19 | Three validators exit 0 on inputs that establish nothing  (TWO FIXED AT SOURCE, ONE OPEN, 2026-09-14) |
| K-20 | Implementation B does not run the final filter, so the killing step has no second implementation  (DISCLOSURE GAP, 2026-09-14) |
| K-21 | `audit_enum.py` applies Černý L3 unconditionally; the shipped certificate does not  (CLARIFICATION, 2026-09-14) |
| K-22 | `hclass` is stronger than "the class data is correct", and had no non-vacuity witness  (FOUND AND ADDRESSED 2026-09-14) |

*(K-20 and K-21 were written below but omitted from this index; added 2026-09-14.)*

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

> **Rescoped 2026-09-17.** It is a prerequisite for trusting the **historical
> enumeration route**. The upper bound for configurations in general position
> does not use the predicates this evidence guards
> (`verification-status.md` rows 41–44), so a reader who accepts the
> general-position hypothesis does not depend on it.

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

## K-08 — Lean: seven files now kernel-checked  (LARGELY RESOLVED 2026-09-13)

> **SNAPSHOT OF 2026-09-13 — the figures below are superseded. Note added
> 2026-09-14; the entry itself is unedited.**
>
> This entry describes a seven-file development. There are now **1,756 declared
> libraries** (commit `d22c313`; the most recent committed full build is 1,755
> libraries / **6,518 jobs**, exit 0 — log
> `results/validation/2026-09-17_verify_all_after_real_config.log` — and it
> predates the last two committed modules), so the
> "742 jobs", "752 jobs", "seven files" and "six of the seven import nothing"
> figures below are all historical. *(This sentence read "**25 libraries**
> (`lake build`, 1395 jobs, exit 0)"; figures re-read 2026-09-17. Almost all of
> the 1,756 are generated per-shard data modules.)*
> The current per-claim record is `verification-status.md` row 15; the
> mechanical per-library axiom census is in `lean/README.md`.
>
> Two statements in "What is still NOT formalized" have also been overtaken:
>
> * "**The five published lemmas**" — the load-bearing count is **four**
>   (Černý L1, L2, AKR L5, L7). Černý L3 is not used by the shipped result
>   (K-06, K-21).
> * "**the exceptional classification and the elimination are not formalized at
>   all**" — the elimination is now partly formalized. Three of the four
>   enumeration obligations are kernel-checked (`EnumerationDomain.lean`,
>   `DomainCount.lean`, `EnumerationComplete.lean`), the fourth is *stated*
>   filter by filter in `FilterSoundness.lean`, and the 225-case endgame is
>   kernel-checked in `Endgame.lean`. The exceptional classification (E7) is
>   still not formalized.
>
> What has **not** changed, and is the point of the entry: `f(7,7) = 38` is
> still **not** a Lean theorem, and the completeness of the 225-case list is
> still not formalized. `hne40` is now a *settled negative* for the kernel
> (`verification-status.md` row 28).
>
> **Corrected again 2026-09-17.** `f(7,7) = 38` is indeed still not a Lean
> theorem. But the two supporting clauses have been overtaken. (i) The
> completeness of the 225-case list is still unformalized **and is no longer an
> input to the upper bound**. (ii) "`hne40` is now a settled negative for the
> kernel" must be scoped: all five routes row 28 measured tried to
> kernel-*evaluate* the filter pipeline and remain dead, but
> `ConfigBridge.crossCountC_ne_40` proves `hne40` for a configuration in
> general position by a route that evaluates no graph at all. Also (iii) the
> load-bearing published-lemma count for the upper bound is now **zero**, not
> four, and (iv) the exceptional classification (E7) is still unformalized and
> also no longer an input.

**Status:** seven Lean files compile with no `sorry` and no project-specific
axioms. `f(7,7) = 38` is still **not** a Lean theorem, and the completeness of
the 225-case list is not formalized. *(Snapshot of 2026-09-13; see the banner
above and the 2026-09-17 correction in it.)*

### What now builds

`lake build` → exit 0, 742 jobs, verified independently by the main agent after
a clean `rm -rf .lake/build`.

| file | imports | `sorry` | new `axiom` | axioms used |
|---|---|---|---|---|
| `lean/LowerBound.lean` | **none (core Lean)** | none | none | `propext` only |
| `lean/LemmaA.lean` | Mathlib v4.33.1 | none | none | `propext`, `Classical.choice`, `Quot.sound` |
| `lean/EndgameDefs.lean` | **none (core Lean)** | none | none | `propext`, `Quot.sound` |
| `lean/EndgameData.lean` | **none (core Lean)** | none | none | — (generated data) |
| `lean/Endgame.lean` | **none (core Lean)** | none | none | `propext`, `Quot.sound` |
| `lean/Lemma7Bridge.lean` | **none (core Lean)** | none | none | **none at all** (except the classical corollary, which uses `Classical.choice`) |
| `lean/CernyL2Interface.lean` | **none (core Lean)** | none | none | `propext`, `Classical.choice`, `Quot.sound` |

`lake build` → 752 jobs, exit 0. Six of the seven import nothing whatsoever;
only `LemmaA.lean` uses Mathlib.

`LowerBound.lean` was additionally verified to compile with an **empty
`LEAN_PATH`**, which demonstrates Mathlib is genuinely not in its trust base.
Its coordinates were checked programmatically against
`data/lower_bound/lower_bound_38.json` and are identical.

Environment: Lean 4.33.1 (`819816b2e0a3bf405af45ae5c7af2491d8f5bee6`),
Mathlib tag `v4.33.1` rev `0df444a360eaa60ab8c11dca51a86af692955474`
(prebuilt oleans, not compiled from source).

Build: `export PATH="$HOME/.elan/bin:$PATH"; cd lean && lake build`

### A latent defect found in the old skeleton

The previous `LemmaA.lean` was **rewritten, not patched**. Beyond its six
`-- CHECK` markers it contained a genuine and instructive bug: `Odd` was not in
scope under its imports (`Mathlib.Data.Finset.Card`,
`Mathlib.Data.Fintype.Prod`), so Lean's auto-bound-implicit feature silently
turned `Odd` into a free implicit variable. `card_E_ge_eleven` and
`crossings_le_38` therefore elaborated as **vacuous nonsense, with no error
reported**. Had the file ever been compiled without reading it, it would have
looked fine.

This is a concrete instance of the warning in this repository's own docs: a
Lean file that has never been elaborated tells you nothing, and even one that
elaborates can state something other than what it appears to. The rewrite adds
`set_option autoImplicit false` so this class of failure cannot recur.

### What is still NOT formalized

* **Simplicity is orientation-level.** `P_simple` / `Q_simple` assert distinct
  vertices, no three of the seven collinear, consecutive sides non-collinear,
  and no proper crossing of non-adjacent sides. The inference from that to
  "the closed polygonal curve is a simple closed curve in ℝ²" is standard but
  **not formalized**. Likewise "proper crossing ⇒ the closed segments meet in
  exactly one interior point".
* **Lemma A is an implication.** `h1`, `h2`, `hpar`, `hIE` are hypotheses. They
  are discharged in Lean only for the single explicit certificate pair
  (`nonvacuous`, `cert_I_le_38`), not for a general pair of heptagons. The (★)
  vertex-avoiding-line subtlety (K-09, and the mid-project repair recorded in
  the transcript) lives inside `h1` and is not formalized.
* **Nothing else.** The five published lemmas, the exceptional classification
  and the elimination are not formalized at all. `f(7,7) = 38` is **not** a
  Lean theorem.

Non-vacuity was checked rather than assumed: the certificate relation
`Rcert i j := ¬ PQCross i j` with `Scert = {0,1,3,6}` satisfies `h1` and `h2` by
`decide`, gives `(E Rcert).card = 11` (so the bound is tight), and
`hypotheses_are_restrictive` shows the empty relation fails `h1` — so the
hypotheses do real work and the conclusion is not free.

---

## K-09 — External lemma translations  (MATERIALLY DE-RISKED 2026-09-13; NOT LOAD-BEARING FROM 2026-09-17)

**Status:** audited hypothesis by hypothesis against the published papers.
Černý L1, Černý L2 and AKR L5 are now **VERIFIED**; AKR L7 remains **PROBABLY
CORRECT — HUMAN REVIEW STILL DESIRABLE**, for a reason that lies in the *source*
rather than in the project's translation.

> **Status qualified 2026-09-17: none of these translations is an input to the
> upper bound any more.** `ConfigBridge.crossCountC_le_38_of_general_position`
> imports no published lemma — Černý L1's consequence is *derived* from a
> parity argument in `lean/SegmentGeometry.lean`, and Černý L2, AKR L5 and AKR
> L7 are not used. The translations remain load-bearing for the enumeration
> pipeline of `docs/proof-outline.md`, which is retained as the historical route
> and is still the only treatment of configurations outside general position.
> The AKR L7 reading is still an open question about the published paper
> (`akr-l7-review-request.md`), and answering it is still worth doing; nothing
> here now turns on the answer. **The one external lemma that is still
> load-bearing is the general-position clause — see K-10, whose importance this
> change raises rather than lowers.**

Full audit: [`external-lemma-audit.md`](external-lemma-audit.md).

### Two findings the project had not noticed

**(i) The SoCG 2020 version settles the existential reading.** This was recorded
as the project's single largest interpretive risk. The conference proof of
Lemma 7 selects the associated pairs *with the cone conditions stated
explicitly*:

> …let `q_{i′}, q_{i′±1}` and `q_{j′}, q_{j′±1}` be their associated (hooked)
> pairs such that: … **`I(q_{i′},q_{i′±1}) ∈ Cone(p_i,p_{i+1})` and
> `I(q_{j′},q_{j′±1}) ∈ Cone(p_j,p_{j+1})`**

Those clauses are only possible under the **existential** reading of "is
hooking" — exactly the project's reading. The **journal version deleted them**,
which makes its own next sentence ("Hence, `I(A,B) ∈ Cone(a,b)`…") a non
sequitur. So for this one point the conference version is the better source.
Both passages were verified verbatim in both PDFs by the main agent.

**(ii) AKR independently computer-verified Lemma 7 themselves.** §10.2 of the
journal version — **journal-only, absent from SoCG** — reports:

> "We have independently confirmed Lemma 7 … by a computer enumeration."
> 158,830 arrangements of eight lines; 840 assignments each after symmetry;
> "after a few days of computing … there were, up to isomorphism, 14
> configurations with the required intersection pattern. In 13 of them, some
> associated pair did not conform to the hooking/hooked pattern of Lemma 5."

This is the best available corroboration of the project's principal external
dependency — the very lemma this repository has repeatedly flagged as "a
twelve-case argument carried largely by figures" — and **it should be cited.**

### Why AKR L7 is still not VERIFIED

AKR's **Observation 6 (the Axis Property) is unproved in both versions**, and is
false under AKR's literal definition of "associated"; it is used throughout
Lemma 7's case analysis. The project's own counterexample to the loose reading
was re-verified during the audit. That residual risk is in the published source,
not in the project's use of it, and it is not something this project can close.

### Still open

Independent expert review of AKR Lemma 7 and its Observation 6.

**A self-contained note for that reviewer now exists:**
[`akr-l7-human-review.md`](akr-l7-human-review.md). It states the source
definitions verbatim from both versions, gives the explicit counterexample to
Observation 6 under the printed definition of "associated", sets out the
`H`-bipartite derivation with quantifiers made explicit, records a failed attempt
to falsify it, documents AKR's own §10.2 computer verification, and ends with a
narrow drafted question for the authors. It is roughly three pages and requires
no other file and no code.

**Unresolved:** the DCG PDF is stamped "corrected publication 2023" but contains
no correction notice, and the publisher blocked retrieval of the correction
record. What was corrected is unknown.

---

## K-10 — General position: the project's Step 0 is INCORRECT  (UPGRADED 2026-09-13; RE-UPGRADED 2026-09-17)

**Status:** open, and upgraded from a completeness caveat to a **correctness
defect**. The conclusion is still true; the project's own proof of it is not.

> **RE-UPGRADED 2026-09-17, and this is now one of only two open items that
> stand between the repository and `f(7,7) = 38`.** Three things about this
> entry have changed.
>
> **1. The citation in this entry is wrong, and wrong in the direction that
> understates the risk.** This entry says the needed statement "is correctly
> proved in AKR (DCG 2022) §9.1, pp. 1069–1072", and recommends citing §9.1.
> §9's own opening sentence scopes the whole section: *"We will now justify our
> general-position assumption that we introduced in Sect. 3 stating that no
> vertex of one polygon lies on the boundary of the other polygon."* §9.1 is
> the vertex-vertex half of that and §9.2 the vertex-side half; **neither
> touches collinearity of three vertices**. The clause the Lean development
> actually consumes — `ConfigBridge.FullGP`, "no three of the fourteen combined
> vertices are collinear", including all 196 non-adjacent mixed triples that
> `Config` does not supply — has its **only** warrant in one sentence of
> **§3** (PDF p. 4), asserted *"for convenience"*, with no proof and no lemma
> number. So "the conclusion is not in doubt … correctly proved in §9.1" is
> false of the needed statement. Cite **§9 (§9.1 + §9.2) together with §3's
> unproved clause**. Full analysis with verbatim quotations:
> [`akr-9-1-obligation.md`](akr-9-1-obligation.md), which is authoritative;
> `verification-status.md` row 4.
>
> **2. A second, unsourced consequence.** Step 0 lists "both polygons remain
> simple" among the consequences it uses. That appears **nowhere** in §9, §9.1,
> §9.2 or §3, and it is load-bearing: `Simple7`'s fourth conjunct is the one
> part of `Config` that `FullGP` does not supply
> (`akr-9-1-obligation.md` §6.2).
>
> **3. Partial Lean progress, and only partial.**
> `RealConfig.exists_near_generic` proves that every configuration in
> `Fin 14 → ℝ × ℝ` is arbitrarily close to one with all 364 orientation
> determinants nonzero — the *perturbation-iteration* half of §3's clause, by a
> Baire argument. `RealConfig.exists_integer_model` separately handles the
> real-to-integer reduction at the level of determinant signs. **Not** proved:
> that the perturbation leaves the number of boundary intersection points
> unchanged (which is the bulk of §3's clause and is genuinely geometric), the
> assembly into the sentence §3 asserts, or anything at all from §9. See
> `verification-status.md` row 45.
>
> **Why this matters more than it did.** Until 2026-09-17 this entry sat
> alongside a dozen other open items. Since then the upper bound for
> configurations in general position imports no published lemma at all, so this
> clause is the **only** remaining published import — and the strongest results
> in the repository rest on the thinnest-warranted sentence in the paper.

### The defect

`docs/proof-outline.md` Step 0 claims to prove the general-position reduction
rather than assume it ("proved here, not assumed"). Its rule for type-(iii)
degeneracies (a vertex `v` of `P` coincident with a vertex `w` of `Q`) reads:

> if the four wedge-rays interleave, any move yields 2; if not — the case where
> separation would lose the point — push the vertex a distance δ **into the cone
> of Q at w**, so both incident sides of `P` must exit across `q⁻` or `q⁺`
> within `O(δ)` of `w`, yielding 2.

**This is false when `Cone_P(v) ⊂ Cone_Q(w)`** — a narrow spike of `P` inside a
wider wedge of `Q`, with both polygons simple. Pushing `v` into `Cone_Q` then
yields **0** crossings, destroying the intersection point that was there. The
count *decreases*, and the reduction fails.

The stated justification fails visibly in the same case: both `P`-sides start
inside `Cone_Q` and point in directions interior to it, so they **never exit**
across `q⁻` or `q⁺`.

Confirmed twice by exact rational arithmetic — by the auditor over 720 sampled
displacement directions across five wedge configurations, and independently by
the main agent with an explicit exact construction:

```
Cone_P = [~84.3°, ~95.7°]  strictly inside  Cone_Q = [~78.7°, ~101.3°]
  move INTO  Cone_Q  ->  0 crossings   (LOSES the intersection point)
  move OUT of Cone_Q ->  2 crossings   (preserves it)
```

A secondary inaccuracy: the clause "if the four wedge-rays interleave, any move
yields 2" is also wrong — the interleaved case yields **1 or 3**, never 2 —
though harmlessly, since the original count is 1 and 1 or 3 is ≥ 1.

### A second gap in Step 0

Step 0 treats degeneracies one at a time ("Only two sides move … Finitely many
degeneracies"). It never addresses the case AKR §9.1 opens with — *"a side may
be involved in multiple degeneracies"* — where resolving one coincidence moves a
vertex another degeneracy depends on. AKR's entire §9.1 apparatus (dependence
graph, Lemma 16, Theorem 17, Lemma 18) exists for exactly that. Step 0's
sequential argument is plausible but is not argued.

### Severity and repair

**The conclusion is not in doubt.** The statement the project needs is true and
is correctly proved in AKR (DCG 2022) §9.1, pp. 1069–1072 — audited separately
and marked VERIFIED. So this does not propagate to the theorem on the present
audit.

But it is a genuine error in a step the project explicitly advertises as its own
contribution, and it was found only by checking the argument against a concrete
configuration rather than reading it for plausibility.

**Recommended repair: delete Step 0's type-(iii) argument and cite AKR §9.1.**
This converts a hand-written and currently-broken argument into a citation of a
peer-reviewed one, at the cost of making explicit a dependency the project
already has twice over. A one-clause fix also works ("push into `Cone_Q(w)` if
`Cone_P(v) ⊄ Cone_Q(w)`, and out of it otherwise"), but it leaves the
multiple-degeneracy gap unaddressed.

**REPAIRED 2026-09-13.** `docs/proof-outline.md` Step 0 now cites AKR §9.1 and
lists exactly the consequences used downstream; it carries an explicit note that
the earlier argument was incorrect and superseded.

> **The repair installed the wrong citation, corrected 2026-09-17.** Step 0 now
> cites **AKR §9 together with §3**, and `proof-outline.md` carries its own
> dated correction saying so. See point 1 of the status banner at the head of
> this entry.

This is a deliberate exception to this repository's standing policy of preserving
original documents unmodified. The policy exists to protect the *research record*,
not to keep a false argument inside the *active proof*. The failed argument
remains fully visible in git history (`git log -p docs/proof-outline.md`), the
supersession is stated in the file, and no historical artifact — transcripts,
logs, `archive/` — has been touched.

### Note on the counting model

AKR §9.3 explicitly leaves the "count intersecting *side pairs*" model as future
research. The project works in the intersection-*point* model, so it is fine —
but the result must never be restated in the pairs model.

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

---

## K-13 — Order-type / exceptional-profile classification  (RESOLVED 2026-09-13)

**Status:** resolved. Independently reimplemented *and* cross-checked against an
external published database. This was the largest single-sourced dependency in
the proof; it no longer is.

### Why it mattered

Both elimination implementations (the Python original and the C++
Implementation B of K-02) consumed the **same** stored file
`data/exceptional_profiles/exceptional_profiles_14.json` as ground truth. An
error in it would have invalidated everything downstream, and neither
implementation could have detected it.

### External cross-check of the 135 order types

Source: the **TU Graz order-type database** (Aichholzer–Aurenhammer–Krasser),
file `otypes07.b08`, 1890 bytes = 135 × 7 × 2, sha256
`0f13421854f049564ca8e96029c29106d2bfa92d42bebcd528f6ba982d6d5380`, retained at
`independent/order_type_audit/external/`.

* Every one of the 135 external point sets is in general position (exact integer
  determinants) and yields a uniform rank-3 oriented matroid with **44 topes**.
* Canonicalising both sets over relabelling **and** reflection:
  **project \ external = 0 and external \ project = 0 — exact set equality.**
* **The project's 135 are therefore exactly the realizable order types.** Its
  "we only impose necessary conditions, so this is a superset" argument is
  sound, but it turns out to be *unnecessary*: no unrealizable chirotope
  survived its filters at n = 7.

### External cross-check of 6,342 simple heptagons

Independently confirmed against a **second** external file, `hamilt07.b08`
(crossing-free Hamiltonian cycle counts per order type): **all 135 per-set
counts agree**, and the external total is **6,342**. This number is now
externally sourced, not merely recomputed.

### The 16 / 14 classification

Reproduced independently: 6007 with an uncrossable 3-subset, 319 with a
4-subset, **16 exceptional**, falling into **14** classes under
`D₇ × {±1}` (class sizes `[1×13, 3]`).

**All four downstream profile fields match 14/14** — `M_set`,
`maximal_crossing_sets`, `lemma2_windows`, `avoiding_pairs` — verified twice and
by two different methods: the auditor recomputed its own predicates on the
*project's* representatives, and the main agent separately transported the
project's stored fields through the explicit dihedral group element mapping each
project class to its independent counterpart. The class bijection was computed
twice, independently, and agrees.

### THE MOST IMPORTANT FINDING: the two readings are wildly different

The audit measured both readings of "uncrossable" on all 6,342 simple
heptagons:

| reading of the exceptional condition | exceptional objects |
|---|---|
| **(a) STRICT** — every line *disjoint from V(P)* misses some side of `S` | **16** |
| (b) LOOSE — no line at all meets all four *closed* sides | **2,268** |

`(a) ⊆ (b)`, and they differ on **2,252** objects.

The project uses **(a)**, which is the reading Lemma A actually licenses: the
only lines the lemma ever applies are the `ℓ(q_j)`, which avoid `V(P)` by
general position. So the classification is correct.

But this vindicates the mid-project repair recorded in the transcript
("I had been writing (★) as 'no line meets all of S'. That is wrong as stated")
in the strongest possible terms. Had the loose phrasing been implemented, the
exceptional set would have been **2,268 objects instead of 16**, and the entire
finite elimination would have been infeasible. This is the single largest
latent error the project avoided, and it was a wording distinction.

### Residual common-mode risk

Perfect independence is impossible here: same model family, same session
environment. The mitigations actually achieved were that the auditor was a
**fresh agent with no inherited conversation context**, it did **not** read
`chiro.py`, `geom.py` or any prior classifier, and the decisive checks are
against **external published data** rather than against this project's own code.

What this does **not** touch: the reading of Černý L2 and AKR L5/L7 (K-09).
The auditor was attempting to fetch the Černý paper to check Lemma 2's exact
statement when it hit a session rate limit; that verification remains **open**.

---

## K-14 — AKR Observation 6 is false as printed  (ERRATUM IN A PUBLISHED PAPER, 2026-09-13)

**Status:** established, with an explicit counterexample. Does **not** invalidate
this project; see below.

AKR's Observation 6 (the Axis Property), stated without proof in both the SoCG
and DCG versions, is **false** under the paper's own printed definition of
"associated". Demonstrated inside a genuine pair of simple polygons:

```
P (triangle) = (2,0), (3,4), (-2,0)
Q (pentagon) = (4,-4), (-3,1), (0,-1), (3,3), (2,1)
```

Verified in exact integer arithmetic, independently by the hostile reviewer and
by the main agent: both polygons simple; all eight vertices distinct; **no three
of the eight combined vertices collinear**; **no vertex of one polygon on the
other**; **no two of the eight sides parallel**; `I(P,Q) = 8`, even. So every
general-position condition of AKR §3 holds.

`CC(p_0) ≠ CC(p_1)`, and `(p_0,q_0), (p_1,q_4) ∈ E^D`, so `q_0,q_4` **is
associated** to `p_0,p_1` under the printed definition — and both cross non-edges
hold as well. Yet `I(A,B) ∉ Cone(a,b)` and `I(a,b) ∉ Cone(A,B)`, so the pair is
**neither** hooking nor hooked, and the axis through the two apexes leaves all
four sides in one closed half-plane. **Observation 6 fails.**

### Why this does not reach the project

`S(e) ⊆ {hooking, hooked}`, and each status **is** a disjunct of the cone
dichotomy. A pair for which the dichotomy fails contributes **nothing** to
`S(e)`, so it can never participate in A7-EXT. The correct definition of
`Associated_L5` is **edges + cone dichotomy**; the cross non-edges are automatic
(a consequence of connectivity, not of `G^D` being bipartite) and therefore
redundant.

Corroboration that AKR use the narrow reading in practice: §10.2 discards 13 of
14 configurations because *"some associated pair did not conform to the
hooking/hooked pattern of Lemma 5"* — coherent only if "associated" carries the
dichotomy.

### Consequences

* The author letter in `akr-l7-human-review.md` is **superseded** and must be
  re-pointed from the non-edges to the dichotomy, leading with this
  counterexample.
* Two further discrepancies in AKR §10.2, both reproduced here: `158830` is a
  **nine**-element count (benign — x-monotone PSLAs of 8 pseudolines correspond
  to abstract order types on 9 points, so a complete but redundant superset was
  enumerated); and `840 = 8!/48` quotients by `Aut` of the disjointness graph
  alone, which does not preserve which pairs are consecutive — the configuration
  stabiliser has order 16 and the correct count is `8!/16 = 2520 = 3 × 840`.
* Full detail: [`a7-independent-resolution.md`](a7-independent-resolution.md).

---

## K-15 — Stale `summary` block in `py_no_a7.json`  (REPORTING DEFECT, 2026-09-13)

**Status:** open, cosmetic. No computed result is affected.

`independent/no_a7_experiment/py_no_a7.json` holds a `cases` list that
**concatenates two different record types**: 225 witness-bearing certificate
records (keys `graph`, `witness`) carried over from the with-A7 run, and 2,187
no-A7 survivor records (keys `SURVIVES`, `P_neighbourhood_bitmasks`, …).

Its `summary` block mixes the two scopes:

| field | value | actually describes |
|---|---|---|
| `cases` | 2412 | the whole list (225 + 2,187) |
| `distinct_graphs` | 121 | the 225-record subset only |
| `degree_sequence_distribution_P/Q` | `{[2,2,1,1,1,1,1]: 225}` | the 225-record subset only |
| `witness_side_counts` | `{P: 225}` | the 225-record subset only |
| `pair_kind_counts` | `{avoiding: 225}` | the 225-record subset only |

A reader comparing `cases: 2412` against `distinct_graphs: 121` will reasonably
conclude something is broken. Nothing is: recomputed directly from `cases`,

* 2,187 survivor records, all with `SURVIVES = true`, on **412** distinct graphs;
* 225 witness records on **121** distinct graphs;
* the two graph sets are **disjoint**, and `121 + 412 = 533` — exactly the
  post-Černý-L2 count, so the split is complementary;
* **none** of the 412 survivor graphs is `H`-bipartite on both sides, so A7 is
  precisely what removes them;
* every survivor has degree sequence `(2,2,1,1,1,1,1)` on the P side.

The load-bearing figures live in `pipeline_counts` and in
`log_py_no_a7.log`, and both are correct
(`42,238 → 6,376 → 533 → 2,412 → 2,187`).

**Why not simply patched:** the file is a generated artifact and hand-editing it
would break the correspondence with its generator. The fix belongs in the
generator, which should recompute `summary` per record type (or emit the two
lists under separate keys) and be re-run.


**Resolution (2026-09-13): fixed and regenerated.** The historical description
above is preserved. The reporting defect was in
`independent/no_a7_experiment/certificate_a7opt.py`: its summary selected only
nested `graph` records while reporting the length of the entire mixed list.
It now emits `summary.all`, `summary.eliminated`, and `summary.surviving`, each
with its own case count, distinct-graph count, degree distributions, and class
coverage. Witness-side and pair-kind counts appear only under `eliminated`.
Console summaries use those same explicit scopes.

The generator's docstring and emitted metadata now identify the actual script,
distinguish elimination witnesses from `SURVIVES=true` records, and explicitly
report A7 OFF for this run. The external-lemma list includes AKR L7 only when
that filter is enabled, and `profile_source` identifies the actual input,
`exc_det.pkl` in the working directory.

Regenerated from `independent/no_a7_experiment/`, using the existing
`exc_det.pkl` (14 profiles), with:

```sh
PYTHONDONTWRITEBYTECODE=1 python3 certificate_a7opt.py --no-a7 --edges 9 --out py_no_a7.json
```

Verification from the regenerated records passed all expected checks:

* **2,412 cases = 225 eliminated + 2,187 surviving.**
* **121 eliminated graphs + 412 surviving graphs**, intersection **0**, union
  **533**, equal to `pipeline_counts.graphs_after_Cerny_L2`.
* Both P and Q degree distributions contain only `[2, 2, 1, 1, 1, 1, 1]`;
  their totals are **2,412 each** for all cases, **225 each** for eliminated
  cases, and **2,187 each** for surviving cases. All distributions and class
  coverage were independently recomputed from their records.
* Eliminated witness statistics are **P: 225** and **avoiding: 225**.
* `pipeline_counts` is unchanged: **13003620, 42238, 42238, 6376, 533,
  2412, 2187**; A7 is OFF and `after_Cerny_L3` remains `null`.
* Case content and ordering are unchanged, including a **byte-identical
  serialized cases section**. Because the JSON is Git-ignored, the original
  generator from commit `2f60c05` was rerun into memory for comparison; its
  complete output reproduced the original SHA-256 recorded in `run_full.log`,
  `f28f1b5bf52846e03abe0cb726ded88753771c3f6828236c276cae3c4971a8f4`.
  The regenerated cases and pipeline counts equal that verified baseline.

No mathematical predicates or case construction changed. The existing run log
was preserved; the JSON was written only by rerunning the generator.

**Provenance note.** The first pass at this fix also compressed the generator's
docstring, dropping the `audit_enum.py` slice table, the statement that
`python/elimination/make_final_certificate.py` is read-only and unmodified, the
`--with-l3` faithfulness cross-check, and the emitted pointer to the independent
checker `check_final_certificate.py`. Those were restored and the K-15 history
folded in beside K-03, then the JSON was regenerated so its `_comment` carries
the checker pointer and the completeness caveat again. This project keeps
provenance in the artifact that depends on it; a reporting fix is not a licence
to shorten it.

Also corrected: an earlier session note called `py_no_a7.json` a *committed*
artifact. It is not — it is git-ignored (`.gitignore:96`) and untracked. The
remedy is unchanged (fix the generator, re-run), but the file was never in the
history.

---

## K-16 — The A7 encoder's PQ-adjacency coverage argument was wrong  (FOUND AND CLOSED 2026-09-14)

**Status:** closed. The conclusion was unaffected; the *coverage argument* was not.

`independent/akr_l7_reproduction/coverage.py` argued that the four
Q-adjacency cases form a single orbit under the order-16 symmetry group, so that
testing one representative suffices. That is valid for a Q-adjacency **in
isolation**. It is **not** valid in combination with a P-adjacency: the
relabelling generators act in tandem (`a↔b` forces `A↔B`), so the combined PQ
types split into **four** orbits, indexed by the XOR of the P-bits with the
Q-bits. `om_lemma7.py` tests only orbit `(0,0)`.

**That orbit is vacuous.** Status `none` imposes no status constraints at all
(`om_lemma7.py:277`, `"none": []`), and the committed results record
`PQ-adj/none` as **UNSAT**. So the PQ-adj *base pattern* is itself infeasible,
and every PQ-adj verdict — including `both-hooking` and `both-hooked` — was
vacuously UNSAT. The geometrically feasible PQ orbit had never been solved.
Confirmed independently by the main agent from the committed
`om_lemma7_results.json` and the encoder source.

**This gap was endorsed as sound by the earlier hostile review**, which checked
the orbit structure for a Q-adjacency alone and did not test the combination.
That endorsement should not be relied on.

**Reported closed** by enumerating all **25** `(P-type × Q-type)` combinations
with no symmetry reduction: `both-hooking` and `both-hooked` reported **UNSAT in
all 25**, and `none` SAT in exactly one Q-type per P-type — the `XOR = (1,1)`
one, which would independently confirm the corrected orbit analysis.

> **STATUS CORRECTION (2026-09-14), now superseded — kept for the record.** For
> part of 2026-09-14 that closure was **prose only**: the 25-case script had been
> run in a session scratchpad and was not recoverable, no committed DRAT
> certificate corresponded to those formulas, and the honest status was "the
> defect is confirmed and the fix is described but not shipped."

### CLOSED, WITH CERTIFICATES (2026-09-14)

The replacement is now **shipped and machine-checked**, under
`independent/akr_l7_reproduction/coverage25/`. Verified by the coordinator by
re-running it, not accepted from a report:

* **The figure 25 is exact, not a superset.** `completeness.py` derives the type
  list from scratch in exact `Z_7` arithmetic with **no symmetry reduction and
  no orbit argument**. Writing `V(k) = p_k ∧ p_{k+1}`, the two P-adjacency pairs
  sit at `u` and `u2` with `d = (u2 − u) mod 7 ∈ {2,3,4,5}` (`d = 0` is the same
  pair; `d = 1, 6` share a side, contradicting four distinct components). Solving
  the coincidence equations: an **apex** never coincides with anything (every
  apex coincidence forces `d ∈ {0,1,6}`, all excluded), only far-endpoint pairs
  can coincide (`a2 = bp2` at `d = 5`, `b2 = ap2` at `d = 2`), and at most one
  can hold. Hence five types per polygon and `5 × 5 = 25` combined. An exhaustive
  sweep of **50,176** labelled cases reports **0** violations of all three claims
  and finds all 25 realisable. Re-run independently: `realisable \ solved = 0`.
* **All 25 combinations are solved separately.** `both-hooking` and
  `both-hooked` are **UNSAT in all 25**.
* **125 instances, 125 certificates, zero solver-only verdicts.** 110 UNSAT
  instances carry DRAT refutations (**110/110 re-verified** by the existing
  `evidence/tools/dratcheck.py`) and 15 SAT instances carry explicit models
  checked clause by clause. Each certificate is bound to its formula by SHA-256:
  `verify_all.py` re-derives every CNF from source and refuses to check a
  certificate whose formula hash does not match. **Coordinator re-ran
  `verify_all.py` end to end: 125 verified, 160 s.**
* **The 20 legacy-twin CNFs are asserted byte-identical** to the hashes already
  in `evidence/SHA256SUMS.txt`, so the new encoder is not a different encoder.

**The orbit structure, now demonstrated rather than argued.** `completeness.py`
reproduces `coverage.py`'s computation and confirms the four Q-adjacencies form
**1** orbit *in isolation* — `coverage.py` was correct as far as it went. The
**combined** `(P-type, Q-type)` types form **5** orbits under the same group.
The previously-untested orbit
`{Pa-ap/QB-Bp, Pa-bp/QB-Ap, Pb-ap/QA-Bp, Pb-bp/QA-Ap}` is exactly the `XOR=(1,1)`
orbit named in the original diagnosis, and it is the substantive new content:
each of its four members has `none` **SAT** (so the base pattern is genuinely
feasible at the oriented-matroid level) with `both-hooking`/`both-hooked` UNSAT.

**12 of the 25 are VACUOUS and the tooling says so.** Their `none` instance is
UNSAT, so the base pattern is infeasible and their other verdicts carry no
information — including `Pb-ap/QB-Ap`, **the legacy `PQ-adj` case**, which is the
original defect: the one combination previously tested was one of the vacuous
ones.

**A separate, serious defect was found and fixed in the harness itself.**
`reproduce.sh`'s `step()` helper and four inline steps used
`if cmd | tee log; then` with no `pipefail`. A pipeline's exit status is the last
command's — `tee`'s — which is always 0, so **every failing step would have
printed PASS** while the failure text scrolled past in the log. Now read from
`${PIPESTATUS[0]}`. Confirmed independently:
`if false | tee /dev/null; then echo PASS; fi` prints `PASS`. This had nothing to
do with K-16 and would have masked any future regression in the A7 reproduction.

`coverage.py` is retained and still re-run, but **demoted to
`HISTORICAL / SUPERSEDED, NOT load-bearing`** with a printed banner. The new
load-bearing step 10 fails the whole run if `run_coverage25.sh` is missing,
non-executable, exits non-zero, or does not print its success line — and the
step-10 log is deleted first so a **stale log cannot satisfy the grep**.

**Caveat carried forward (not new).** The SAT rows are oriented-matroid
statements, not straight-line realisability claims. They establish non-vacuity of
the base pattern, which is what is needed here and nothing more.

---

## K-17 — `Endgame.graphShapeOK` restricts the degree sequence; is that an unchecked filter?  (RAISED AND RESOLVED 2026-09-14)

**Status:** resolved — **not a defect.** Raised by the `EnumerationDomain.lean`
agent as a possible hole in enumeration obligation (4), checked against both
search implementations, and found to be a scope confusion rather than a gap.
Recorded because the reasoning is not obvious and the question will recur.

**The observation, which is correct.** `Endgame.graphShapeOK` — the Boolean that
all 225 committed certificate records are checked against — demands degree
sequence `(2,2,1,1,1,1,1)` on **both** sides (`lean/Endgame.lean:206`). But the
enumeration *domain* is weaker: seven 7-bit masks, nine edges, minimum degree
≥ 1 on both sides. `EnumerationDomain.degSeq_of_sum_nine` proves that seven
positive integers summing to nine form one of exactly **two** multisets,
`{2,2,1,1,1,1,1}` or `{3,1,1,1,1,1,1}`, and the second branch is **not
vacuous**: `sampleM` is an explicit domain element
(`sampleM_inDomain`) with P-degrees `[1,1,1,1,1,1,3]`, rejected by that test
(`sampleM_fails_isDegSeq2211111`). The link is definitional, not approximate —
`degSum_eq_edgeCount : degSum c.M = Endgame.edgeCount c := rfl`.

**Why it is nevertheless not a gap.** The escalation assumed `graphShapeOK` is
a *filter applied during the search*, so that the degree-3 branch would have
been silently discarded. It is not. It is a *descriptive check on the 225
survivors* — a recomputed-from-bitmasks assertion about records that already
came out the far end. Both independent implementations **do** enumerate the
`{3,1,1,1,1,1,1}` branch:

* `independent/implementation_b/reduction.cpp:310-317` — the comment reads
  "one 3 and six 1s, or two 2s and five 1s", and the first loop walks the
  degree-3 case explicitly before the `(2,2,1,1,1,1,1)` double loop;
* `python/elimination/audit_enum.py:68-69` — `rec` tries `size` in
  `range(1, hi+1)` with `hi = min(3, budget-(rem-1))`, so a P-side of degree 3
  is generated, and `used != FULL` at the leaf enforces Q-side coverage.

So the degree-3 graphs enter the search and are eliminated by the filters, not
by a degree-sequence precondition. That every survivor has `(2,2,1,1,1,1,1)` on
both sides is an *output* of the elimination, reported as such throughout
(`docs/computational-method.md:154-155`).

> **CORRECTION (2026-09-14), same day.** The sentence above originally read
> "eliminated by the AKR L5 / AKR L7 / Černý L3 filters". **That was wrong**, and
> I found it by instrumenting the pipeline rather than by re-reading the code.
> The degree-3 branch *survives* all three of those. Measured, restricted to
> graphs with a degree-3 side on either side:
>
> | after | count |
> |---|---|
> | (domain, degree-3 on either side) | 4,086,600 |
> | AKR L5, P consecutive pairs | 17,934 |
> | AKR L5, Q consecutive pairs | 11,466 |
> | AKR L7 (H bipartite) | 6,174 |
> | Černý L3 | 2,646 |
> | crossing-set compatibility | 222 |
> | **Černý L2 (class-dependent)** | **0** |
>
> So the branch dies at **Černý Lemma 2**, the deepest external lemma in the
> pipeline, and only after the class-dependent filters have been applied. It
> does **not** die at the graph-level filters.
>
> **Why this matters beyond the correction.** It means the degree-sequence
> forcing is *not* elementary: proving "the degree sequence must be
> `(2,2,1,1,1,1,1)`" requires Černý L2 and the exceptional classification —
> (E5) and (E7), the hardest remaining inputs — not just the combinatorial
> filters. A roadmap entry written earlier the same day proposed that forcing as
> a *bounded first step* toward restructuring the `I = 40` branch; that proposal
> rested on this wrong claim and has been corrected in `roadmap.md` §8.

The rest of this entry is unaffected: `graphShapeOK` really is a descriptive
check on the 225 survivors rather than a search precondition, and the degree-3
branch really is enumerated by both implementations. Only the claim about *where*
it dies was wrong.

**What this does and does not settle.** It settles that no branch of the degree
multiset was skipped. It does **not** discharge obligation (4) — that every
valid configuration survives each filter until it reaches a terminal case proved
impossible — which remains open for *all* branches, degree-3 and
`(2,2,1,1,1,1,1)` alike, and is unaffected by this entry. Obligation (3), that
the implementations actually visit every element of the 13 003 620-element
domain, is likewise untouched.

**Methodological note.** This was an agent-reported finding that read as a
serious defect and was not one. It was resolved by reading the two search
implementations rather than by accepting the report. The Lean file's own
comments (`EnumerationDomain.lean` §A.8) still state the stronger reading and
should be read alongside this entry.

---

## K-18 — `data/hashes/SHA256SUMS.lean` was stale, and `scripts/` was untracked  (FOUND AND FIXED 2026-09-14)

**Status:** fixed. Found by the first genuine **fresh-clone** run of
`scripts/verify-all.sh`, not by any in-place check — which is precisely the
failure mode in-place testing cannot see.

Two committed defects, both fatal to a from-scratch verification:

1. **Stale Lean hash manifest.** At commit `f290efe`, four of the eight entries
   in `data/hashes/SHA256SUMS.lean` FAILED — `EndgameDefs`, `Endgame`,
   `Lemma7Bridge`, `CernyL2Interface` — because the sources had been edited
   after the manifest was written. It also covered only 7 of the then-10 Lean
   sources: `GeometryDefs.lean`, `SegmentGeometry.lean` and
   `DisjointnessGraph.lean` were unprotected by any hash. A fresh-clone full run
   exited 1 on this and nothing else.
2. **The verification entrypoint was not in the repository.** `scripts/` was
   untracked, so a fresh clone contained no `verify-all.sh` at all. It had to be
   copied in by hand for the test to run.

Both are now fixed: the manifest is regenerated over all eleven Lean sources,
and `scripts/` is committed.

**Not weakened to pass.** The check was left failing until the *data* was
corrected; the manifest was not relaxed and no entry was dropped.

### A third instance of the same failure mode (2026-09-14)

`lean/IntersectionParity.lean` was committed **without being registered as a
`[[lean_lib]]`**. Lake therefore never compiled it, the forbidden-construct scan
never read it, and it sat in the repository for several commits as a Lean file
that nothing verified — the exact state in which a `sorry` could hide in plain
sight. It was in fact *broken* at the time (two type errors), which nothing
reported.

`verify-all.sh` did have a check for this, but it was **informational only**: it
printed a NOTE and passed. A note that nobody reads is not a check.

**Fixed.** The rule is now:

* a `lean/*.lean` file that is **tracked in git** but not declared as a
  `[[lean_lib]]` **fails** the run, naming the file;
* an **untracked** scratch file still only produces a note, so local
  experimentation is not punished.

Validated in both directions: a tracked file is detected as tracked, an
untracked one is not, and an untracked undeclared file passes with a note while
the new assertion reports `every committed lean/*.lean is a declared lean_lib`.

The common thread across all three instances in this entry — stale manifest,
untracked `scripts/`, unregistered Lean source — is that **the failure is always
something the verification apparatus does not look at**, and the fix is always to
make it look and to make looking fatal.

---

## K-19 — Three validators exit 0 on inputs that establish nothing  (TWO FIXED AT SOURCE, ONE OPEN, 2026-09-14)

**Status:** open as a property of the validators; mitigated at the harness
level. Found by `scripts/negative-tests.sh`, which builds deliberately corrupted
copies and requires the harness to reject them.

* **Vacuous certificate.** Given `{"cases": []}`,
  `python/validation/check_final_certificate.py` prints
  `OK: all 0 cases establish…` and **exits 0**. An empty certificate is
  indistinguishable, by exit status, from a complete one.
* **Self-consistent but geometrically invalid lower bound.** Translate `Q` far
  away and recompute the stored `verified` block, and
  `check_lower_bound.py` prints all-PASS and **exits 0** while reporting
  `boundary intersections I: 0`. The script checks internal consistency of the
  file it is handed; it does not check that the file describes a configuration
  achieving 38.
* **DRAT proof that reaches no contradiction.** Strip the trailing empty clause
  from a real refutation and `dratcheck.py` **exits 0**, printing "proof did not
  derive the empty clause" as text.

In every case the *text* is honest and the *exit status* is not. Anything that
consumes these scripts by exit code alone can be fooled.

**Mitigation.** `scripts/verify-all.sh` does not trust exit codes: it asserts
`cases checked : 225`, 121 distinct graphs, an absolute `I = 38` with
`I + |E| = 49`, and for DRAT it requires the empty clause to be derived —
with a self-test (step 5a) that runs a truncated proof through its own gate on
every invocation, failing the whole run if the gate accepts it.

**FIXED AT SOURCE, 2026-09-14 (two of the three).**

* `check_final_certificate.py` now appends a `VACUOUS` error when the case list
  is empty, or when no case carries a `graph` block, and therefore exits 1.
* `check_lower_bound.py` now makes three **absolute** checks — stated against
  the constants the claim is about, not against the file's own `verified`
  block: `I == 38`, `I + |E| == 49`, and general position. The doctored
  translated-`Q` file still passes every *relative* check (all PASS, `I = 0`)
  and is now rejected by the absolute one, naming the reason.

Both were confirmed against the real data first (`I = 38` and all 225 cases
still pass, exit 0) and then against the doctored inputs (both now exit 1).
`scripts/negative-tests.sh` still reports **10 passed, 0 failed**; its N2 and N3
blocks were written to require rejection whether or not the underlying tool was
fixed, so they continue to guard the harness.

**Still outstanding:** `dratcheck.py` continues to exit 0 on a proof that
derives no empty clause. It lives under `independent/akr_l7_reproduction/`,
which was being edited concurrently, and was deliberately left untouched; the
gate in `verify-all.sh` (and test N7) catches it, but the tool should be fixed
too.

---

## K-20 — Implementation B does not run the final filter, so the killing step has no second implementation  (DISCLOSURE GAP, 2026-09-14)

**Status:** open as a disclosure gap; **not** a defect in any result. Found while
scoping enumeration obligation (4).

`independent/implementation_b/` is the project's evidence for
"**REPRODUCED BY A SECOND IMPLEMENTATION**" (verification-status row 14). It
reproduces the reduction `13,003,620 → 225` and the exact 225-triple set with
zero set difference either way. What it does **not** do — by deliberate design,
stated in its own source and spec — is apply the **final avoiding-pair AKR L5
filter**, the step that takes `225 → 0`:

* `reduction.cpp:20` — "The avoiding-pair AKR L5 filter is NOT implemented
  (SPEC.md sec. 6)."
* `SPEC.md` §6 — "this is the already-certified final stage (`known-issues.md`
  K-03) and is the target set's successor, not part of it."
* `implementation_b_output.json` — `"final_avoiding_pair_filter_applied": false`.

So the **actual refutation step has certificate-level and Lean-level
independence, but no second implementation.** `check_final_certificate.py`
shares no code with the generator and re-refutes all 225 cases, and
`Endgame.lean` kernel-checks every one of them — both genuinely independent of
the Python search. But the reassurance "two implementations agree" covers
filters (a)–(d) only.

Černý L3 is likewise not implemented in B, which is sound: K-06 established L3
is redundant, and the shipped certificate is generated with
`Cerny_Lemma_3: false`.

**Why this is a disclosure gap and not a defect.** Nothing claimed is false, and
the 225 → 0 step is the *best*-verified step in the project (a committed
certificate, an independent checker, and a Lean proof of each case). The problem
is that row 14 and `paper/proof-manifest.tex`'s pipeline table did not say which
filters the second implementation covers, and the manifest's `225` row lists
"Python, C++, certificate, Lean" in its **Checked by** column, which a reader
can easily take to mean C++ checks the avoiding-pair step. It does not.

**Fixed** by stating the filter scope explicitly in both places. The underlying
situation is unchanged: writing a second implementation of the avoiding-pair
stage remains genuinely useful work, and it is the smallest such gap.

---

## K-21 — `audit_enum.py` applies Černý L3 unconditionally; the shipped certificate does not  (CLARIFICATION, 2026-09-14)

**Status:** not a defect; recorded because the two scripts differ and a reader
comparing their counts will otherwise be misled.

`python/elimination/audit_enum.py:86` applies Černý Lemma 3 to both sides
**unconditionally**:

```python
if not L3_ok(N) or not L3_ok(NQ): return
```

`python/elimination/make_final_certificate.py` makes the same filter conditional
on `--with_l3` (line 114), and the **shipped** certificate
`data/certificates/final_elimination_225.json` records
`"Cerny_Lemma_3": false` and lists four external lemmas, not five.

So the load-bearing pipeline is the five filters (a)–(e), and Černý L3 is *not*
among them. `audit_enum.py`'s reported intermediate counts do include L3
filtering; the certificate's do not. K-06 established the two agree —
`2,300 → 121 → 225 → 0` either way, with identical certificates case for case —
which is why this is a clarification rather than a defect.

**Consequence for obligation (4).** The soundness obligations that must be
discharged are those of filters (a)–(e). Černý L3 does **not** add a sixth
obligation for the shipped result. It would if anyone relied on `audit_enum.py`'s
counts directly, and `lean/FilterSoundness.lean` notes this in its header.

---

## K-22 — `hclass` is stronger than "the class data is correct", and had no non-vacuity witness  (FOUND AND ADDRESSED 2026-09-14; SUPERSEDED FOR THE LIVE ROUTE 2026-09-17)

**Status:** the vacuity risk is closed; the strength observation stands and
should be carried forward.

> **Superseded for the live route, 2026-09-17 — by not needing `hclass` at
> all.** `ConfigBridge.crossCountC_ne_42` proves `I ≠ 42` for a configuration
> in general position taking **no class data whatever**: no `hclass`, no
> `hcross`, no (X1), no (X2), and no Lemma A. `I = 42` leaves seven disjoint
> side pairs, minimum degree 1 on both sides forces a perfect matching, and the
> two minimal forbidden crossing patterns of `verification-status.md` row 41
> already cover all `7! = 5040` of them. So the entanglement described in this
> entry is **absent from the route the upper bound now takes**, rather than
> resolved within it, and the resolution below ("independence cannot be
> recovered that way") is not a constraint on the new theorem — it is a true
> statement about `Exclude42`. Rows 20 and 44.
>
> Two further corrections. `IntersectionParity.isGreatest_38_final` is **no
> longer the project's strongest statement**: `ConfigBridge.isGreatest_38_pointCount`
> is, and it carries neither `hclass` nor `hne40`. And the closing
> recommendation of this entry — "the honest resolution is to *discharge* (E7)
> rather than to restrict it" — is no longer the only option; the third option,
> taken, was to stop needing it.

`IntersectionParity.isGreatest_38_final` — the project's strongest statement —
takes a hypothesis `hclass` quantified over **every** `Config`:

```
∀ K : Config, ∃ mcs MP, MP.card = 5
            ∧ (every C ∈ mcs is FULL \ {m} for some m ∈ MP)
            ∧ (every Q-side's crossing set lies in some C ∈ mcs)
```

**The risk.** Every other hypothesis in the development ships with a witness
showing it is satisfiable. This one did not. A theorem whose hypothesis is
unsatisfiable is **vacuous** — it would have said nothing whatever about
`f(7,7)`, while looking like the headline result.

**Closed.** `lean/ClassDataWitness.lean` exhibits the data explicitly for the
certificate pair — `mcs = [123, 119, 111, 95, 63]`, `MP = {2,3,4,5,6}` — and
proves the condition by `decide`. So the predicate is inhabited and the theorems
consuming it are not vacuous.

**The observation that remains, and it matters for whoever discharges `hclass`.**
It is *not* merely a record of classification data. Measured:

* For `I = 42` the disjointness graph is a perfect matching, so all seven
  `N_Q(j)` are distinct singletons, and a five-element `MP` cannot meet all
  seven. **`hclass` fails for every `I = 42` configuration** — checked over all
  **5,040** perfect matchings, all 5,040 fail.
* Over a sample of **20,000** `I = 40` domain graphs, about **21%** admit no
  valid `MP`.

So **`hclass` already entails `I ≠ 42`** — which is exactly the conclusion
`Exclude42.lean` derives *from* it. Two consequences:

1. Once `hclass` is assumed, **`UB42` should not be read as an independent
   argument**. It is a consequence of the hypothesis, not a separate pillar.
2. When the classification (E7) is formalised, the honest fix is to state this
   hypothesis over the configurations it is actually about — exceptional
   heptagons — rather than over every `Config`.

**Credit where due:** this was surfaced by the agent auditing
`paper/proof-manifest.tex`, which noticed the missing witness while checking
that every hypothesis in the manifest had one. It is the kind of defect that
survives because the statement *looks* like bookkeeping.

### RESOLVED, and the proposed fix is impossible — 2026-09-14

The obvious repair was to restrict the hypothesis to *exceptional*
configurations, so that it would no longer decide the `I = 42` branch. **That
repair cannot work, and the obstruction is now a machine-checked theorem rather
than an opinion.**

`lean/ExceptionalClass.lean`:

```lean
exceptional_of_crossCount_42 (K : Config) (h42 : crossCountC K = 42) : Exceptional K
```

`I = 42` forces `|E| = 7`; Lemma A (via `LemmaABridge`) then says a configuration
with seven disjointness edges admits no uncrossable 4-set — i.e. **it is
exceptional**. So every hypothetical 42-crossing configuration lies *inside* the
restricted domain, and restricting to exceptional configurations retains all of
them. Independence cannot be recovered that way.

**What this changes about the right reading.** The entanglement is a fact about
the mathematics, not an artifact of how the hypothesis was written. The class
invariants together with Lemma A genuinely *do* suffice to exclude `I = 42` —
which is exactly what `paper/proof-manifest.tex`'s `UB42` section already says
it consumes (`C1`, `LA`, `EX`, and explicitly *not* `A7-EXT`).

So the correct conclusion is **not** that the development is circular. It is:

* `UB42` is a genuine consequence of the class data plus Lemma A, and always was;
* a reader should therefore not count `UB42` and the class hypothesis as **two
  independent pillars** — assuming the latter gives the former;
* and the strength of `hclass` flagged above is **unavoidable** if one wants the
  crossing-set covering condition at all.

`isGreatest_38_restricted` and `crossCountC_le_38_restricted` are proved against
the restricted hypothesis and are labelled in the file as *partial progress
toward the repair*, not as the repair. That labelling is correct and should not
be tidied away.
