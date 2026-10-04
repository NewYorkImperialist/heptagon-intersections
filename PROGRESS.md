> **Append-only working log (banner added 2026-10-04).** Entries are dated and
> left as written, including earlier status lines such as "candidate
> computer-assisted proof that f(7,7) = 38", which are superseded. For the
> current statement see `README.md` → "Current status": a Lean-verified bound of
> 38 for simple heptagons sharing no vertex; f(7,7) = 38 depends additionally on
> the external AKR §9.1 reduction, whose applicability here is unresolved.

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

### Three additions after that, to make the results usable rather than just true

* **`OTBridge.stored135_eq_orderSigns`** — the completeness proof packs each
  chirotope into 35 bits and the enumeration keeps a list of 35 signs. Both are
  generated from the same JSON, but that is a fact about the *generators*. This
  proves they are the same 135 representatives, entry by entry. Without it,
  combining the completeness result with the enumeration would have been an
  appeal to the reader's memory.
* **`ClassificationSummary.classification`** — the five results in one citable
  conjunction, with one header stating what is assumed. Note in particular why
  the induction hypothesis is a *comment* there rather than a Lean hypothesis:
  the development has no type of "arbitrary rank-3 chirotope on 7 elements" to
  quantify over, and that absence is itself part of what is missing. Inventing a
  hypothesis would have made the gap look smaller than it is.
* **`SimpleCount.simple_total`** — there are exactly **6,342** simple heptagons.
  Row 5 quoted that as externally cross-checked and the enumeration evaluated
  the test on all 48,600 candidates, but nothing made it a theorem. Now the
  chain **6,342 simple → 16 exceptional → 14 classes** is kernel-checked end to
  end. `propext` only.

`scripts/verify-all.sh` was re-run over the whole repository afterwards:
**COMPLETE SUCCESS, exit 0** — Lean build clean with every declared library
built, all 838 files in `SHA256SUMS.lean` matching, the 225 endgame cases
re-refuted by the independent checker, the A7 evidence reproduced, and
Implementation B independently reproducing 13,003,620 → 225. Log in
`results/validation/2026-09-15_verify_all_after_e7.log`.

**Not pushed.** Everything above is committed locally only; there is no standing
authorization to push, so that is left as a decision.

### And the stratification, 13:21

**`Stratification.stratification : totals = [6007, 319, 16]`** — of the 6,342
simple heptagons, 6,007 have some uncrossable 3-subset of sides, 319 have none
of those but an uncrossable 4-subset, and 16 have neither. Row 5 quoted that
split from the independent audit; **every number row 5 quotes is now
kernel-checked**. 540 blocks, 8,907 s, serial; `propext` only.

One near-miss worth recording. The assembly was first written as 540 nested
`add3` calls with a trailing `rfl`. Had `simp only` failed to finish the
arithmetic, that `rfl` would have re-evaluated `strataOf` from scratch and
re-run the entire 8,907 s search *inside the kernel*. It was restructured
before the build reached it, into a list of the 540 block results, so after
`blockCounts_eq` only additions of literals remain and nothing is left that
could re-run. The general lesson: in a sharded proof, a fallback tactic that
can recompute the sharded object defeats the sharding silently.

A second, smaller one: `git add -A` while a sharded build is in flight sweeps
the unbuilt shard files into whatever commit you are making, producing a HEAD
that declares libraries with no `.olean`. That happened once and was split back
out with `git reset --soft HEAD~1`.

`scripts/verify-all.sh` re-run over everything afterwards: **COMPLETE SUCCESS,
exit 0**, all 1,411 files in `SHA256SUMS.lean` matching.

**Next milestone: the geometric half of (E7)**, which is not a computation. The
open items are unchanged in kind: (E3)/A7-EXT needs one discrete geometer,
`hne40` is a settled negative, and nothing here touched either.

Status unchanged: **candidate computer-assisted proof that f(7,7) = 38.**

---

## 2026-09-16 — AKR Lemma 7 stops being load-bearing

Written 2026-09-17. The log stopped at 2026-09-15 13:21, in the middle of the
two days that changed the proof's shape. Appended after the fact; every claim
below is either a commit or a committed artifact, named.

### The 412, closed (`786f374` → `1d113cd`, 00:21–02:06)

The evening of 09-15 produced certificate-level refutations of all 412 residual
graphs — the graphs that survive the pipeline once AKR Lemma 7 is *dropped*
rather than assumed (`db8a496`). Overnight they became Lean theorems.

The method that made it fit: the 412 fall into **4 orbits** under a 392-element
relabelling group (rotate/reflect each polygon, 14 × 14, times swap P↔Q, times
2 for reflection). So four refutations plus a symmetry argument, not 412.
Each refutation is a drat-trim-checked UNSAT proof of an oriented-matroid
encoding, **transcribed** into Lean as an explicit unit-propagation chain — the
kernel checks a chain of `Prop` implications and searches for nothing.

`ResidualAll.residual_not_realizable` is the result. **AKR Lemma 7 is no longer
an input to the upper bound.** It was the project's principal open question for
weeks; the reviewer guide's weakness list had it at #1.

Two things that mattered mechanically, both now in memory:

- drat-trim's `-c` core plus the *original* DRAT fails for orbits 1–3 ("RAT
  check on proof pivot failed"). A two-pass extraction works: `-c` for the
  core, `-l` for trimmed lemmas, then `-L` for LRAT.
- drat-trim **does not preserve literal order** — 1,998 of 2,272 core clauses
  came back permuted. A generator that assumes order silently emits garbage.

### The sweep: two patterns cover everything (`afeb58d` → `c7ac89c`, 05:39–08:01)

Then the more consequential result. Rather than filter 13,003,620 candidate
graphs, ask whether the *encoding alone* refutes each one. It does: **33,743 of
33,743** orbit representatives, all drat-trim verified.

And the refutations are highly redundant. Minimising the unsat cores turned up
small **forbidden local crossing patterns**, and then:

> **Two patterns, of sizes 8 and 14, cover all 13,003,620 `I = 40` candidate
> graphs and all 5,040 `I = 42` perfect matchings.**

Proved optimal among 299 pooled patterns: no single pattern suffices, and the
8+14 pair is the cheapest pair. The size-8 one is readable
(`minpattern000_impossible`) and needs no simplicity hypothesis.

The lesson that generalised (now in memory): **randomised minimisation beats
greedy.** Shuffling the removal order when minimising cores gave patterns of
size 8 where greedy gave 16 — a 70× faster Lean build.

### The covering step, built in layers (`3a60482` → `93052ce`, 12:57–23:20)

Turning "two patterns cover everything" into Lean took five layers and 218
generated modules holding 10,597 propagation steps. Measured, not guessed
(`c950a60`): a 2,934-step proof **does not fit in one Lean theorem**, so the
chains are sharded — each block takes only the core clauses and
earlier-derived clauses its own steps cite.

Also that day, honestly: `93052ce` recorded that status row 20's "VERIFIED IN
LEAN" had overstated its independence, and carried the K-22 caveat upward.

---

## 2026-09-17 — the upper bound stops importing anything

### Both exclusions, in the kernel (`1112e10` → `718c45d`, 00:55–02:30)

`Cover.no_nine_edges` (`I ≠ 40`) and `Cover.no_seven_edges` (`I ≠ 42`), then
the `Config` bridge: `ConfigBridge.crossCountC_ne_40`, `crossCountC_ne_42`,
`crossCountC_le_38_of_general_position`, `isGreatest_38_pointCount`.

**`I ≠ 42` needs no class data at all.** That is what removes the `hclass`
entanglement: `hclass` is ∀-quantified over every `Config` and is in fact
*false* (it fails for all 5,040 `I = 42` matchings), so it already entailed the
conclusion `Exclude42` drew from it. The new route never mentions it.

Row 28 had called kernel `hne40` "the decisive engineering question of the
project… SETTLED NEGATIVE" after five measured routes — and its own closing
sentence carved out "a mathematical restructuring shrinking the
13,003,620-element domain." **That carve-out is what happened.** The negative
result about *computation* stands; it was never a result about mathematics.

### A citation defect of my own (`1facaa8`, 03:17)

I had been citing **AKR §9.1** for `FullGP` all day — in commit messages, in
status rows, in committed Lean docstrings. An agent checked it against the PDF
and I was wrong. §9 (both §9.1 vertex–vertex and §9.2 vertex–side) justifies
only "no vertex of one polygon lies on the boundary of the other". The
*collinearity* condition the development actually consumes comes from **§3's
parenthetical "for convenience" remark, which AKR do not prove.**

The error ran in the direction that **understates** the risk, which is the worse
direction. Root cause: `proof-outline.md` Step 0's *body* attributed it
correctly to §3 while its *heading* said §9.1, and I conflated the two. Every
site is corrected; `docs/akr-9-1-obligation.md` (806 lines) is the line-by-line
audit.

### Integer coordinates, removed (`541234f` → `9b2b926`, 03:45–04:55)

`RealConfig`: real coordinates, and `exists_integer_model` — every real
configuration in general position has an integer one with the **same 364
orientation-determinant signs**. Everything between the two sides of this
development is defined by strict sign conditions on determinants, so that
suffices.

The route is shorter than the one I had planned and handed to Codex. `orient`
is homogeneous of degree 2, so the good set is **scale-invariant**: scale a box
until its sides exceed 1 and it must contain an integer point. No rationals, no
clearing denominators. (Codex produced nothing on this task in over an hour; I
stopped waiting, said so, and took it over.)

Also `exists_near_generic` — §3's **iteration** half, that every configuration
is arbitrarily close to a generic one. The trick that avoided all case analysis:
moving vertex `j` in x and `k` in y by the same `t` makes the determinant
`t² + tA + B`, **monic regardless of the configuration**, so it has at most two
roots.

Then `RealUpperBound.pointsR_le_38`: at most 38 points in
`∂P ∩ ∂Q` as a genuine subset of `ℝ × ℝ`, built from Mathlib's `segment ℝ`.

### The equality (`2f2d46a`, 05:13)

`certRConfig` is the integer lower-bound certificate cast into `ℝ × ℝ`; its
general-position field comes from `fullGP_certConfig` through `det_realPt`, and
its simplicity fields from `LowerBound` through `properCrossR_realPt` (real
crossing of cast integer points *is* integer crossing — both sides are the same
two determinant products, one cast). Hence:

```lean
theorem isGreatest_38_real :
    IsGreatest { n | ∃ R : RConfig, (intersectionPointsR R).ncard = n } 38
```

**Three standard axioms. Real coordinates. Genuine point sets. No published
lemma imported. One hypothesis: general position.**

### Where that leaves it

Gone from the proof entirely: AKR Lemma 5, AKR Lemma 7, Černý Lemma 2, the
order-type crossing fact, the exceptional classification, the 225-case list,
the 13,003,620-graph pipeline, `hclass`, `hne40`, and the integer-coordinate
restriction.

Remaining, in priority order:

1. **Independent expert review.** Nobody outside this AI-assisted process has
   read any of it. Now *more* tractable, not less — a reader's time goes
   against one named import and a short combinatorial core.
2. **§3's second half** — that the intersection count survives the
   perturbation. `exists_near_generic` gives the iteration and not the
   invariance. Smallest real gap left; the machinery is already here.
3. **AKR §9 itself** — recorded with the audit's own recommendation *against*
   attempting it: five pages, a quantitative uniform-ε step with no Mathlib
   scaffolding, and an existence step AKR assert rather than prove. That
   asserted step is close to the sub-case on which this project's own earlier
   general-position proof broke.

Also noted for whoever picks this up: I suggested at one point handling
degeneracies *combinatorially* instead of by perturbation. That is worse than I
implied. With degeneracies one intersection point can belong to several
side-pairs — a vertex lying on a vertex is one point but four pairs — so the
**counting** layer breaks, not just the encoding. Do not attempt it on my word.

Status unchanged, and it should stay this way until a person reads it:
**candidate computer-assisted proof that f(7,7) = 38.**

---

## 2026-09-17, continued — the real level, and AKR §3's clause

Same day as the entry above; written as it happened.

### The equality at the real level (`2f2d46a`)

Row 46 had `pointsR_le_38` — at most 38 boundary points for real heptagons in
general position — but **no attaining example**, so the equality existed only
over integer coordinates (row 44). `certRConfig` is the integer certificate
cast into `ℝ × ℝ`: general position from `fullGP_certConfig` through
`det_realPt`, simplicity from `LowerBound` through the new
`properCrossR_realPt` (real crossing of cast integer points *is* integer
crossing — both sides are the same two determinant products, one cast). Hence

```lean
isGreatest_38_real :
  IsGreatest { n | ∃ R : RConfig, (intersectionPointsR R).ncard = n } 38
```

Eight files were carrying "there is no attaining example and no `IsGreatest` at
the real level"; all eight updated, the old text kept quoted.

### AKR §3's clause, discharged for the crossing-pair count (rows 48–50)

Three modules, in sequence.

**`RealPerturb` (row 48)** — the openness half. A crossing is a conjunction of
two strict inequalities between continuous functions of the fourteen points, so
`{W | side pair (a,b) crosses (c,d)}` is **open**; there are only 49 side
pairs, so "keeps every crossing `V` has" is a finite intersection of open sets
containing `V`. Intersect with the dense generic set and you get
`exists_near_generic_keeping`: every configuration has generic configurations
arbitrarily close that lose **no** crossing. So the count can only *rise* — the
direction the bound needs. What that could not give was **simplicity**, which
is `¬ ProperCrossR`, a *closed* condition. Carried as `SimplePerturbable`.

**`SegmentStable` (row 49)** — the fact simplicity needs. If two segments are
disjoint, they stay disjoint when their four endpoints move by less than some
`ε`. Compact disjoint sets are separated by `r > 0`; a point of `[a',b']` and
the point of `[a,b]` with the **same** convex parameters differ by
`‖α(a'-a) + β(b'-b)‖ ≤ αε + βε = ε`; take `ε = r/3`. **This file imports only
Mathlib** — no heptagon, no `Config` — so it can be reviewed on its own.

**`RawConfig` (row 50)** — the assembly, and it closes the obligation.
`RawPair` is two heptagons with exactly two fields: non-adjacent closed sides
of each are **disjoint as point sets**. No `gp` field at all. Take `δ` inside
`ε` and both halves' stability radii; `ball V δ ∩ Keeps V` is open and contains
`V`, so intersecting with the dense generic set gives a `W` that is generic,
keeps every crossing, and still has disjoint non-adjacent sides — and *because*
`W` is generic, `not_properCrossR_iff_disjoint` converts point-set disjointness
into the determinant-sign form `RConfig` wants. So `W` is a real `RConfig` and

```lean
raw_crossPairs_card_le_38 (R : RawPair) : (crossPairsOf R.V).card ≤ 38
```

**with no general-position hypothesis at all.** The bound holds at *degenerate*
configurations, which is exactly what §3's clause was being assumed to avoid.

### What that changes about the one remaining import

It used to be one thing: "the general-position reduction — AKR §9 plus §3's
unproved clause". It is now two things with different statuses:

| | |
|---|---|
| **§3's clause** | **discharged in Lean** for the crossing-pair count |
| **§9** | still an import, and now pinned to one job: identifying crossing **pairs** with intersection **points** |

### A correction I had to make to my own writeup (`4e05201`)

When I first wrote row 50 I said the only pairs-versus-points discrepancy was
**over**-counting — one point lying on several pairs — and concluded the
missing step was "an inequality in the convenient direction."

That was wrong, and wrong in the direction that **understates** the difficulty.
At a degenerate configuration a point of `∂P ∩ ∂Q` can belong to **no** crossing
pair: two sides that merely *touch* share a point but have vanishing
determinants, so `ProperCrossR` is false and the pair is not counted. So
`crossPairsOf` can **under**-count points, and the pair bound does *not* bound
points. Removing touching-without-crossing is exactly §9's job — which is why
§9 is still load-bearing, and specifically for the point count.

Second time today I've made an error in the direction of understating risk (the
other was the §9.1 citation). Both were caught, both are recorded in place with
the wrong text quoted, and the pattern is worth naming: when I summarise a gap
I am biased toward making it sound smaller. The fix is to state the failure
*mode* concretely — "a point on no crossing pair" — rather than the failure
*size*.

### Provenance headers on the generated modules — ATTEMPTED AND REVERTED

The hand-written module count is not derivable from the directory. The rule

```bash
cd lean && ls *.lean | while read f; do \
  grep -qi 'gen_lean|generated by|auto-generated|GENERATED FILE' "$f" || echo "$f"; \
done | wc -l
```

gives **61** against **1,759** targets, but fifteen of those 61 are generator
output that simply lacks a provenance header — `ResidualCore000`–`003`,
`PatternCore000`–`003`, `MinPatternCore000`–`001`,
`CCase000All`–`CCase003All`, `MCase000All` — so 61 is an **upper bound** and the
hand-written figure is at most **46**.

I tried to fix it at the source: `gen_lean_refutation.py` and
`gen_lean_refutation_shards.py` were given a provenance block and the fifteen
files regenerated. That part worked and was verified in both directions —
byte-for-byte reproduction of all fifteen confirmed *before* touching the
generators, and the resulting diff was **215 insertions, 0 deletions**, headers
only.

**Then I reverted all of it, and the reason is the useful part of this entry.**

Those fifteen files sit near the bottom of the import graph. Walking the
reverse graph from them reaches **130 modules**, and the expensive tail is the
~26 `CoverCase*` modules, which reach **~730 MB RSS each**. On this 8 GB
machine that drives swap to 3 GB of 4 GB with 324,000 swapouts, at which point
a single `CoverCase` module takes **50+ minutes** instead of 5–12.

The machine **rebooted three times** — 06:42, 09:49, 12:53 — each time during a
heavy Lean build, with no kernel-panic report, which is what memory exhaustion
looks like rather than a panic. The serial rebuild (one `lake build <target>`
per module, in dependency order, with a load guard) got **64 of 130 modules
with zero failures** before the third reboot took it. Finishing needed roughly
ten more hours of the same.

So: a cosmetic improvement, against ten hours of thrashing and a fourth reboot
on someone's working machine. Reverted. `lean/` and `python/` are byte-identical
to the pushed `62e92a0`; the only cost left behind is a stale `.olean` cache for
the 64 modules that did rebuild, which the next `lake build` absorbs.

What survives is the *documentation*, which was the actual goal: the rule above,
the raw count, and the explicit list of the fifteen unheaded files are recorded
in `lean/README.md`, `docs/verification-status.md` and the LaTeX manifest, so
the figure is a stated bound with a reproducible derivation rather than a number
to be taken on trust. Whether to spend the rebuild is the operator's call, not
one to make unattended.

*(A note on my own reasoning here, because I got it wrong once mid-flight. I
first argued that reverting was no cheaper than finishing, since both invalidate
the same 130 modules. That is false. The 66 modules that had not yet been
rebuilt still carried traces consistent with the original sources, so reverting
left them untouched and only the 64 already-rebuilt ones went stale. Revert and
finish cost about the same, which makes the decision turn on value, not on sunk
cost — and the value here was cosmetic.)*

### Validation

Four full `verify-all` runs, all **COMPLETE SUCCESS, exit 0**, 33 checks each,
logs committed: after the real equality, after `RealPerturb`, after
`SegmentStable`, after `RawConfig` (1,759 targets).

One of them failed first time, on the `SHA256SUMS.lean` manifest, because I had
edited two Lean sources and not re-hashed them. Recorded rather than quietly
fixed: that is exactly the slip the manifest check exists to catch.

Status unchanged, and it should stay that way until a person reads it:
**candidate computer-assisted proof that f(7,7) = 38.**
