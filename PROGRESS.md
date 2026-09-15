# Overnight progress log

Persistent across context resets. Append; do not rewrite history.

## Objective
End-to-end Lean-kernel-checked `f(7,7) = 38`, faithful geometric definitions,
no unproved project-specific axioms.

## Standing distinctions (do not blur)
mathematical defect | correct-but-unformalized | solver result | checked external
certificate | Lean-kernel theorem | theorem whose statement matches the geometry.

---

## 2026-09-14, resumed after usage limit

### State inherited
- `lean/DisjointnessGraph.lean` (530 lines) complete and **verified by me**:
  clean build 758 jobs, `#print axioms` = `[propext, Quot.sound]` only, **zero
  `Classical.choice`**, `cert_masks = [8,8,8,4,4,4,115]` consistent with
  `disjoint_count_eq_11` and `per_P_side_counts`. Uncommitted.
- `docs/reviewer-guide.md` (1015 lines) — draft, agent killed mid-edit.
- `scripts/verify-all.sh` (471 lines) — draft, agent killed before fresh-clone test.
- `lean/EnumerationDomain.lean` — **absent**, agent killed before writing.
- 4 tracked evidence logs had been overwritten by a re-run. Checked: all 15
  verdicts/clauses/steps identical, only aggregate timing differed. **Restored**
  to the committed versions; fresh runs now write to an untracked location.

### Queue (priority order, from the overnight plan)
1. [done] Integrate + commit Track 1 (I2a bridge).
2. [ ] **A7 coverage reproducibility** — highest immediate priority. Ship the
       25-case replacement as executable evidence + certificates; stop
       `reproduce.sh` claiming complete coverage from the known-incomplete
       four-variant argument.
3. [ ] Honest `verify-all.sh` + clean-checkout test.
4. [ ] Real-polygon connection (Pt := Int × Int is not the intended theorem).
5. [ ] Enumeration completeness — four separate obligations, not one.
6. [ ] Remaining kernel obligations.
7. [ ] Reviewer guide finish.

---

## 2026-09-14, overnight session — EnumerationDomain integrated (`ead7b98`)

**Landed.** `lean/EnumerationDomain.lean` (867 lines) is the **11th** Lean
library. Clean build: 1279 jobs, exit 0. Forbidden-token scan clean across all
11 sources with comments stripped.

* **Obligation (1) — PROVED.** `toMasks_inDomain_of_crossCount_eq_40` holds for
  an *arbitrary* `Config`, not the certificate pair: 40 properly crossing side
  pairs ⟹ `toMasks K` is in the searched domain. Axioms `propext`,
  `Quot.sound`; **no `Classical.choice`**, no Mathlib result used in substance.
* **Obligation (2) — partial.** Both ends proved (`ieAlternatingSum_eq`,
  `gfCoeff9_eq_coeff`, `domain_card_inclusion_exclusion`); the two links between
  them are stated and unproved. Only `0 < domainFinset.card` is a kernel-checked
  cardinality fact.
* **Obligations (3), (4) — untouched.**

**I did not accept the agent's axiom claim.** Re-running `#print axioms` myself
found `crossCount_40_iff_edges_9` pulling `Classical.choice`, because
`cross_disjoint_link` was proved `by omega` on an `Iff`. Split into two
directions; all of Part A is now `{propext, Quot.sound}`, matching the claim.

**K-17 — an escalated finding that did not survive checking.** The agent
reported `Endgame.graphShapeOK`'s `(2,2,1,1,1,1,1)` requirement as an unchecked
filter hiding the `{3,1,1,1,1,1,1}` degree branch. The *observation* is right
(`sampleM` is a domain element with P-degrees `[1,1,1,1,1,1,3]` that the test
rejects) but the *conclusion* is wrong: `graphShapeOK` is a descriptive check on
the 225 survivors, not a search precondition, and **both** implementations
enumerate the degree-3 branch (`reduction.cpp:310-317`,
`audit_enum.py:68-69`), where it dies in the L5/L7/L3 filters. Resolved by
reading the search code. The Lean file's §A.8 comment is corrected in place with
the superseded reading left visible.

**K-18 — two real committed defects, found by the first genuine fresh-clone
run.** `data/hashes/SHA256SUMS.lean` was stale (4 of 8 entries FAILED; manifest
written at `a4aa6bc`, sources edited later at `f769255`) and 3 Lean sources were
unhashed. Regenerated over all 11 sources + `lakefile.toml` + `lean-toolchain`:
14/14 OK, not weakened to pass. `scripts/` was untracked, so a fresh clone had
no verification entrypoint. Both now fixed and committed. In-place testing
could not have found either.

**K-19 — three validators exit 0 on inputs that establish nothing**: an empty
`cases` list, a self-consistent lower-bound file reporting `I = 0`, and a DRAT
proof deriving no empty clause. The text is honest, the exit status is not.
`verify-all.sh` asserts the counts rather than trusting exit codes and self-tests
its own DRAT gate on every run; the underlying scripts are still unfixed.

**Running now:** A7 25-case coverage reconstruction; obligation (2) completion
(`lean/DomainCount.lean`); obligation (3) completeness-of-enumeration
(`lean/EnumerationComplete.lean`) — the latter framed as induction on the search
recursion, *not* kernel evaluation of 13M elements.

Status unchanged: **candidate computer-assisted proof that f(7,7) = 38.**

---

## 2026-09-14, overnight — enumeration obligations (2) and (3) closed (`e7d9aa8`)

**14 Lean libraries, 1290 jobs, exit 0.** Forbidden-token scan clean across all
14 with comments stripped. Every axiom claim re-checked by me, not accepted from
an agent report.

| obligation | before tonight | now |
|---|---|---|
| (1) counterexample lands in the domain | prose | **kernel-checked** |
| (2) domain has 13,003,620 elements | computation | **kernel-checked** |
| (3) the search visits every domain element | nothing | **kernel-checked** (of the Lean transcription) |
| (4) every valid config survives each filter | nothing | **still nothing** |

* **(2)** — `DomainCount.lean` proves `domainFinset.card = 13003620`. The
  `C(7,j)` *falls out* of regrouping rather than being asserted, because
  `term_eq` shows each term is `gfCoeff9 (7 − |t|)`, manifestly a function of
  `|t|` alone. I verified the statement is the unweakened target against the
  original `domainFinset` and that `EnumerationDomain.lean` was untouched.
* **(3)** — `EnumerationComplete.lean` proves
  `∀ M, InDomain M → maskList M ∈ enumerate` for arbitrary `M`, by induction on
  the recursion depth. **Nothing evaluates the 13-million-element output.** The
  prune is modelled exactly and proved harmless; `enumerate_sound` gives the
  converse, so the enumeration is pinned *exactly* — completeness cannot be
  satisfied by an over-large list. I checked the Python-to-Lean transcription
  line by line myself: `rem = 7 − i` carries `min(3, budget−(rem−1))` across
  exactly, and Nat truncation agrees with Python's empty range at the boundary.
* **Capstone** — `CounterexampleCount.lean`: a counterexample is one of exactly
  13,003,620 mask functions, with `cert_not_mem_domainFinset` guarding vacuity.

**The honest limit on (3):** it is a theorem about the *Lean* function. There is
no extraction. The link to the Python and C++ searches is side-by-side reading
plus three byte-identical small-case diffs — strong, but not certified.

**K-16 closed, with certificates.** The A7 25-case coverage reconstruction
shipped under `independent/akr_l7_reproduction/coverage25/`. Verified by me by
re-running, not from the report: `verify_all.py` re-checks **125/125** instances
(110 DRAT + 15 models) in 160 s against CNFs re-derived from source and
SHA-256-matched; `both-hooking` and `both-hooked` are **UNSAT in all 25**.
`completeness.py` derives the 25 from scratch in exact ℤ₇ arithmetic with no
symmetry reduction — 50,176 labelled cases, **0** violations — so 25 is *exact*,
not a superset. It also reproduces `coverage.py`'s 1-orbit result *in isolation*
while showing **5** orbits combined, which is K-16's defect made concrete. 12 of
the 25 are vacuous and the tooling says so, including the legacy `PQ-adj` case —
the original defect was that the one combination tested was a vacuous one.

**A separate serious defect, found in the harness itself.** `reproduce.sh` used
`if cmd | tee log; then` with no `pipefail`, so the status read was `tee`'s and
**every failing step would have printed PASS.** Confirmed independently:
`if false | tee /dev/null; then echo PASS; fi` prints `PASS`. Now reads
`${PIPESTATUS[0]}`. Nothing to do with K-16; it would have masked any future
regression.

**K-19, two of three fixed at source**: the certificate checker no longer exits 0
on an empty case list, and the lower-bound checker now asserts `I = 38`
absolutely rather than against the file's own `verified` block.

**Next milestone: obligation (4)** — the sole remaining enumeration gap.

Status unchanged: **candidate computer-assisted proof that f(7,7) = 38.**

---

## 2026-09-14, later: X1 discharged, E7(b) half-closed

**X1, the exceptional-class invariant, is no longer a hypothesis of the `I = 42`
exclusion** — for the 14 stored classes. `lean/ClassInvariant.lean` decides
`|M| = 5` and `maximal_crossing_sets = {FULL \ {m} : m ∈ M}` over a table
generated from `exceptional_profiles_14.json`, with `maximal_exact` giving the
set equality in **both** directions so the table is neither a weakening nor a
strengthening. `ClassInvariant.not_crossCount_42` is `Exclude42`'s theorem with
X1 supplied rather than assumed.

**E7(b), the "stored class data is correct" half, is partly closed.**
`lean/ClassDataFromChirotope.lean` *recomputes* `M_set` and the inclusion-maximal
crossing sets from each class's `canonical_chirotope` alone and proves they equal
the stored fields, 14/14. `OrderTypeClassification.classFam_eq` pins the whole
crossing family. `lemma2_windows` and `avoiding_pairs` are still stored, not
recomputed — and `avoiding_pairs` is load-bearing, since `AvoidingFlag.lean`
checks the 225 certificates against it. I have verified in Python that both
recompute correctly 14/14, so that is a ready next step, not a research problem.

**E7(a), exhaustiveness, is NOT closed and is the interesting negative.** The
statement is written down (`exceptionalPolygons`, all 135 × 360 = 48,600
candidates) and left unproved. It is true — verified independently in Python:
6342 simple, of which exactly the 16 expected are exceptional, and the 6342
matches the external `hamilt07.b08` cross-check. What blocks it is Lean kernel
reduction cost. Measured, not guessed:

- direct `decide +kernel` on the full statement: does not finish (a 180 s probe
  and a 25 min single-representative probe both timed out);
- the cost is dominated by list scans in the per-query path — `triples.idxOf`
  over 35 tuples on every chirotope query, and `cycles.getD j []` re-traversing
  a 360-element literal inside the `relabel` closure;
- a closed-form triple rank (kernel-checked equal to `triples.idxOf` over all
  increasing triples) plus hoisting the relabelled vector to once per candidate
  plus literal four-subset masks bought roughly **8×**, not the ~100× needed;
- a fully `Nat`-bitset encoding, where every operation is GMP-accelerated in the
  kernel, was **not** dramatically better. That surprised me and is worth
  recording: the bottleneck is not integer arithmetic.

This is the same shape as `hne40` (row 28) but much less severe — a parallel
per-representative split across cores is a plausible route and is being tried.

**Hygiene defect found and fixed.** `defaultTargets` listed only 27 of the 33
declared libraries, so plain `lake build` — and therefore `verify-all.sh` — was
**not rebuilding** `ExceptionalClass`, `AKRL5Derivation` or `IntersectionCount`,
all committed earlier the same day. Declaring a `[[lean_lib]]` is not the same as
putting it in the default build, and the existing guard checked only the former.
All 33 are now default targets; jobs 1397 → 1444.

**Documentation defect found and fixed.** `lean/README.md` claimed "eighteen of
the twenty-six libraries are Mathlib-free", obtained by adding direct-import
categories. Importing only local modules does not make a library Mathlib-free if
those modules import Mathlib. Over the transitive closure it is 14 of 33.
`paper/proof-manifest.tex` had it right — it defines its "core" column
transitively — so where the two disagreed, the manifest was correct.

**Next milestone: `lemma2_windows` and `avoiding_pairs` recomputed from the
chirotope**, then E7(a) exhaustiveness if the parallel split lands.

Status unchanged: **candidate computer-assisted proof that f(7,7) = 38.**

---

## 2026-09-15, overnight: (E7) closed on its computational side

### The headline

**(E7a) exhaustiveness is a kernel-checked theorem.**
`OTEnumAll.exceptionalPolygons_eq_expected` proves

    exceptionalPolygons = expectedPolygons

over **all 135 × 360 = 48,600** (order-type representative, cyclic vertex order)
candidates: exactly 16 of them give a simple heptagon with no uncrossable
four-subset of sides. Axioms: `propext`, `Quot.sound` — **no `Classical.choice`**.
Until tonight the 16 were a list *handed to* Lean; they are now the enumeration's
own output. `sixteen_labelled_fourteen_classes` restates
`verification-status.md` row 5 in those terms: 16 labelled exceptional
heptagons, each reducing by an explicit dihedral relabelling to a stored class,
all 14 classes occurring.

**(E7b) is closed.** Every field of the stored `ClassData` that the development
consumes is now recomputed in Lean from the stored chirotope and proved equal to
the stored table, 14/14: `M_set` and the maximal crossing sets by
`ClassDataFromChirotope.recomputed_eq`, `lemma2_windows` and `avoiding_pairs` by
`ClassDataFields.fields_recomputed_eq` (on `propext` alone). The last one is the
one to care about — `AvoidingFlag.lean` checks the 225 endgame certificates
against `avoiding_pairs`, and until now that table was read from JSON rather
than derived.

**X1 is discharged** for the 14 stored classes (`ClassInvariant.lean`), with the
set equality decided in **both** directions, so the table is neither a weakening
nor a strengthening. `Exclude42`'s `I ≠ 42` no longer assumes it.

### What this does NOT establish — read this before quoting the above

* **Completeness of the 135-representative list** is not proved. It is the
  remaining computational obligation and a build for it was running when this
  was written (see below).
* **No geometric reading.** `simple` and `exceptional` are chirotope predicates.
  That they characterise simple heptagons and exceptionality *in the plane* is
  not formalised; the development has no geometric definition of either, nor of
  "avoiding".
* **Class membership.** Nothing says a configuration belongs to the class its
  certificate names. That is the geometric half of (E7) and it is untouched.
* The 135 are a **superset** of the realizable order types — only necessary
  Grassmann–Plücker and Radon conditions are imposed. A superset is what an
  exclusion argument needs, and the JSON says the same.
* `f(7,7) = 38` is **still not a Lean theorem** and the status is unchanged:
  **candidate computer-assisted proof**. (E3)/A7-EXT still needs a human, and
  `hne40` is still a settled negative.

### How the enumeration was made to fit in the kernel

A direct `decide +kernel` does not finish. Five definitional changes got it to
**~1.9 core-hours**, and **each is paired with a kernel-checked equality**, so a
reader can check the transcription against the Python and the optimisation
against the transcription, separately. The reference definitions (`chiroRef`,
`exceptionalRef`, `fam`) are kept beside the fast ones.

1. closed-form triple rank replacing `triples.idxOf`'s 35-tuple linear scan;
2. the 35 four-subset masks as literals, not a filter over 128;
3. the crossing family with duplicates left in — `eraseDups` is two quadratic
   passes and every question asked of the family is a membership question;
4. the family as an **argument** (`exceptionalOf`), so it is built once per
   candidate rather than once per mask — worth ~35× by itself;
5. cycles paired with their indices, so a 360-element literal is not rescanned
   inside every chirotope query.

A full `Nat`-bitset re-encoding was also tried and was **not** dramatically
faster. The bottleneck is list traversal and recomputation, not arithmetic.

### The operational finding, which was the opposite of the obvious guess

Lake 5.0.0 has **no `-j` flag** and defaults to one worker per core. On this
8 GB machine:

* a bare `lake build` of the shards was **OOM-killed** by the OS;
* 3-way parallelism inflated individual shards from ~20 s to **11+ minutes**;
* strictly **one module at a time** was fastest — 540 blocks in 8,147 s.

Total RSS stays near 4 GB, so this does not look like memory exhaustion. The
symptom is *system* time several times *user* time: page churn against macOS
memory compression. CPU is not the binding constraint; memory bandwidth is.
`verify-all.sh` now says this at step 1, and `verification-status.md` row 33
records the measurements. Per-call costs, measured by isolating each predicate
in a 20-call probe: `simple` ≈ **5 ms**, `exceptional` ≈ **0.36 s**.

### Two defects found and fixed along the way

* **`defaultTargets` listed only 27 of 33 declared libraries**, so plain
  `lake build` — and therefore `verify-all.sh` — was **not rebuilding**
  `ExceptionalClass`, `AKRL5Derivation` or `IntersectionCount`, all committed
  earlier the same day. Declaring a `[[lean_lib]]` is not the same as putting it
  in the default build, and the existing guard checked only the former.
* **`lean/README.md` claimed "eighteen of the twenty-six libraries are
  Mathlib-free"**, obtained by summing direct-import categories. That is not
  what Mathlib-free means: a library importing only local modules still reaches
  Mathlib if those do. Transitively it is 14 of 34, and `EnumerationComplete`,
  `CounterexampleCount`, `UpperBoundAssembly` and `IntersectionParity` were
  miscounted. `paper/proof-manifest.tex` defines its "core" column transitively
  and was right all along; the README now says so, since a reader comparing the
  two needs to know which to trust.

### Counting caution

`lakefile.toml` now declares **834** targets. Quoting that as a measure of the
development would be dishonest: **34** are hand-written libraries and the rest
are *generated* enumeration shards (`OTEnum*`, `OTComp*`), which exist only
because the corresponding `decide +kernel` will not run in one piece.
`lean/README.md` and the manifest both say this wherever the number appears.

### In flight when this was written

**Completeness of the 135-representative list.** The stage-by-stage
construction in `python/core/chiro.py` extends each of the 16 six-element
representatives by one point: 16 × 2^15 = **524,288** candidates, of which
**1,657** survive the necessary conditions. Rather than transcribe `canonical`
into Lean and search for a lex-minimum, each survivor ships with an explicit
**witness** — a vertex permutation and an optional global sign flip — so Lean
only verifies, never searches. All 1,657 witnesses were computed and checked
outside Lean; all 135 classes are hit. 256 slice modules were building when this
was written.

What it will and will not say: it settles that every extension of a *stored*
six-element representative satisfying the necessary conditions is a relabelled
copy of a stored seven-element one. It will **not** prove that every rank-3
chirotope on 7 elements restricts to one of the 16 — that is the mathematical
content of the induction, and it is carried as an explicit hypothesis rather
than assumed silently.

### It landed, at 10:20

**Completeness of the 135-representative list is proved.** `allSurvivors_eq`
kernel-checks that exactly 1,657 of the 524,288 candidates survive;
`witnesses_ok` that each is a relabelled copy of a stored representative;
`all_135_reached` that all 135 arise. Axioms: **`propext` only** throughout.
256 slices, 12,672 s, serial. See `verification-status.md` row 34.

The induction hypothesis — that every rank-3 chirotope on 7 elements restricts
to one of the 16 stored six-element representatives — is **not** proved and is
carried as an explicit hypothesis. That is the mathematical content of the
stage-by-stage construction and it is where a reader should push.

Sharding was needed a third time, and by the same margin: `witnesses_ok` went
from over 20 minutes unsharded to **84 s** in blocks of 100, and the assembly
from 45+ minutes to **37 s** when split one lemma per base representative. That
is now three independent confirmations of row 33's finding, and it should be
treated as the default assumption for any future `decide +kernel` here.

**Next milestone: the geometric half of (E7)**, which is not a computation.

Status unchanged: **candidate computer-assisted proof that f(7,7) = 38.**
