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

## K-08 — Lean: first files now kernel-checked  (LARGELY RESOLVED 2026-09-13)

**Status:** the two foundational files compile with no `sorry` and no
project-specific axioms. Five of the seven planned files remain unwritten.

### What now builds

`lake build` → exit 0, 742 jobs, verified independently by the main agent after
a clean `rm -rf .lake/build`.

| file | imports | `sorry` | new `axiom` | axioms used |
|---|---|---|---|---|
| `lean/LowerBound.lean` | **none (core Lean)** | none | none | `propext` only |
| `lean/LemmaA.lean` | Mathlib v4.33.1 | none | none | `propext`, `Classical.choice`, `Quot.sound` |

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

## K-09 — External lemma translations  (MATERIALLY DE-RISKED 2026-09-13)

**Status:** audited hypothesis by hypothesis against the published papers.
Černý L1, Černý L2 and AKR L5 are now **VERIFIED**; AKR L7 remains **PROBABLY
CORRECT — HUMAN REVIEW STILL DESIRABLE**, for a reason that lies in the *source*
rather than in the project's translation.

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

Independent expert review of AKR Lemma 7 and its Observation 6. Seven drafted
author-contact questions are in `external-lemma-audit.md` §10.

**Unresolved:** the DCG PDF is stamped "corrected publication 2023" but contains
no correction notice, and the publisher blocked retrieval of the correction
record. What was corrected is unknown.

---

## K-10 — General position: the project's Step 0 is INCORRECT  (UPGRADED 2026-09-13)

**Status:** open, and upgraded from a completeness caveat to a **correctness
defect**. The conclusion is still true; the project's own proof of it is not.

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

**This has NOT been repaired.** `docs/proof-outline.md` is preserved unmodified,
as the research record; the correction is documented here, per this repository's
standing policy of documenting rather than silently patching.

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
