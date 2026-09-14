# REPRODUCE — independent AKR Lemma 7 / A7 evidence

One command:

```sh
cd independent/akr_l7_reproduction
./reproduce.sh
```

Exit status: **0** = every check passed; **1** = something failed or an input is
missing; **2** = every executed check passed but the run was *partial* because
the solver cross-check was deliberately skipped (`REPRO_SKIP_Z3=1`). The script
never skips a step silently. Full wall time on the reference machine (Apple
silicon, CPython 3.14): **7 min 15 s** — the 15 DRAT re-checks (~171 s) plus the
125 DRAT/model re-checks of the coverage replacement (~150 s, parallel).

> **Coverage is step 10, not step 9.** `coverage.py` (step 9) is kept only as a
> reproducible historical record; its orbit argument is refuted
> (`docs/known-issues.md` **K-16**) and the representative it justifies is
> vacuous. n = 7 coverage is established by `coverage25/run_coverage25.sh`
> (step 10). If step 10 cannot run, `reproduce.sh` **fails**; it never reports a
> complete A7 reproduction without it. See §6.

Logs of the last run are written to `evidence/logs/` and `coverage25/logs/`.

---

## 1. Prerequisites

| requirement | needed for | status in this environment |
|---|---|---|
| CPython 3.9+ | everything | 3.14.7 — present |
| `z3` (`pip install z3-solver`) | step 6 only (independent re-solve of all 20 instances, export of models for the 5 SAT ones) | **present, 5.1.0** |
| `python-sat` (`pip install python-sat`) | **not needed** to check anything; only needed to *re-derive* DRAT proofs (`evidence/tools/gen_all_proofs.py`, `coverage25/solve_all.py`) | **ABSENT from the system interpreter**; installed into the isolated venv `coverage25/.venv` (gitignored), which was used once to derive the 110 coverage-replacement certificates |
| a SAT solver binary (cadical / kissat / glucose / minisat / lingeling) | nothing in this pipeline | **ABSENT** |

The important consequence: **the DRAT certificates can be re-checked here with
no SAT solver at all**, because `evidence/tools/dratcheck.py` is pure CPython
(`sys` + `collections` only). What *cannot* be done here is re-deriving the
proofs from scratch — see §7.

## 2. What this evidence is

Two *independent* encodings of the same geometric question are in this
directory:

* `om_lemma7.py` (already in the repo) — a z3 encoding; its results are the
  table in `RESULTS.md` §4.
* `evidence/tools/indep_om.py` (recovered here) — a **second, from-scratch**
  re-encoding written from the geometric statement alone, producing DIMACS CNF
  by brute-force blocking-clause enumeration. It shares no code with
  `om_lemma7.py`.

Both encode: is there a rank-3 uniform oriented matroid (chirotope) on the
10–12 points of the configuration realising the prescribed crossing pattern
*and* the prescribed hooking/hooked statuses? `unsat` rules out not only every
straight-line drawing but every pseudo-configuration, which is strictly
stronger than a straight-line result.

The recovered artifacts add a third layer on top: **machine-checkable
refutation certificates** (DRAT) for every `unsat` row, so the `unsat` verdicts
no longer rest on trusting a solver.

## 3. Per-certificate table

Four variants x five status combinations = 20 instances. `pts` is the number of
distinct points after the adjacency identifications; `chirotope vars` is
C(pts,3); `clauses` counts the DIMACS clauses of the `indep_om` encoding.
`z3` is this run's independent re-solve; `DRAT steps` and `dratcheck` are this
run's re-check of the recovered certificate.

| variant | status | pts | chirotope vars | clauses | z3 | DRAT steps | dratcheck | outcome | drat sha256 (first 16) |
|---|---|--:|--:|--:|---|--:|--:|---|---|
| `generic` | `none` | 12 | 220 | 64542 | SAT | n/a | n/a | SAT: `models/generic_none.model`, 0 clauses violated | `n/a` |
| `generic` | `mixed-1` | 12 | 220 | 64566 | SAT | n/a | n/a | SAT: `models/generic_mixed-1.model`, 0 clauses violated | `n/a` |
| `generic` | `mixed-2` | 12 | 220 | 64566 | SAT | n/a | n/a | SAT: `models/generic_mixed-2.model`, 0 clauses violated | `n/a` |
| `generic` | `both-hooking` | 12 | 220 | 64566 | UNSAT | 663 | 39.4 s | **VERIFIED UNSAT** | `ac8bc7e278a10207` |
| `generic` | `both-hooked` | 12 | 220 | 64566 | UNSAT | 606 | 32.6 s | **VERIFIED UNSAT** | `40f49436ef09c03f` |
| `P-adj` | `none` | 11 | 165 | 37808 | SAT | n/a | n/a | SAT: `models/P-adj_none.model`, 0 clauses violated | `n/a` |
| `P-adj` | `mixed-1` | 11 | 165 | 37832 | UNSAT | 396 | 9.1 s | **VERIFIED UNSAT** | `03e1e05644fab9ec` |
| `P-adj` | `mixed-2` | 11 | 165 | 37832 | UNSAT | 371 | 7.7 s | **VERIFIED UNSAT** | `24964117269f93d9` |
| `P-adj` | `both-hooking` | 11 | 165 | 37832 | UNSAT | 389 | 8.8 s | **VERIFIED UNSAT** | `9d9f85f07372d520` |
| `P-adj` | `both-hooked` | 11 | 165 | 37832 | UNSAT | 418 | 13.4 s | **VERIFIED UNSAT** | `2cd220c2d43d30a7` |
| `Q-adj` | `none` | 11 | 165 | 37808 | SAT | n/a | n/a | SAT: `models/Q-adj_none.model`, 0 clauses violated | `n/a` |
| `Q-adj` | `mixed-1` | 11 | 165 | 37832 | UNSAT | 441 | 13.5 s | **VERIFIED UNSAT** | `1ac91953b17e0872` |
| `Q-adj` | `mixed-2` | 11 | 165 | 37832 | UNSAT | 382 | 8.0 s | **VERIFIED UNSAT** | `dbc08db3b02d5e09` |
| `Q-adj` | `both-hooking` | 11 | 165 | 37832 | UNSAT | 503 | 13.3 s | **VERIFIED UNSAT** | `48da1c1a9b1122dd` |
| `Q-adj` | `both-hooked` | 11 | 165 | 37832 | UNSAT | 290 | 6.0 s | **VERIFIED UNSAT** | `b979271653e8d3cf` |
| `PQ-adj` | `none` | 10 | 120 | 20764 | UNSAT | 329 | 4.5 s | **VERIFIED UNSAT** | `b387bf7dacd807b0` |
| `PQ-adj` | `mixed-1` | 10 | 120 | 20788 | UNSAT | 283 | 3.4 s | **VERIFIED UNSAT** | `232890daf950951d` |
| `PQ-adj` | `mixed-2` | 10 | 120 | 20788 | UNSAT | 348 | 5.0 s | **VERIFIED UNSAT** | `72e7c5458d92b5f2` |
| `PQ-adj` | `both-hooking` | 10 | 120 | 20788 | UNSAT | 280 | 3.2 s | **VERIFIED UNSAT** | `37cc9a78c2409bb7` |
| `PQ-adj` | `both-hooked` | 10 | 120 | 20788 | UNSAT | 272 | 3.1 s | **VERIFIED UNSAT** | `355fa000c07139de` |

**Why there are 20 CNFs but only 15 DRATs.** A DRAT file is a *refutation*; it
exists only for an unsatisfiable formula. Exactly five instances are
satisfiable — `generic/none`, `generic/mixed-1`, `generic/mixed-2`,
`P-adj/none`, `Q-adj/none` — and therefore have no proof, by definition. That
is not an unexplained gap: it agrees exactly with the independent z3 table in
`RESULTS.md` §4, it is re-confirmed by this run's `z3_crosscheck.py`, and for
each of the five an explicit satisfying assignment is committed in
`evidence/models/`, which `evidence/check_models.py` verifies clause-by-clause
in pure Python with no solver. So all 20 instances carry a checkable
certificate: 15 refutations and 5 models.

The two rows that matter for **Lemma 7 / A7-EXT** are `generic/both-hooking`
and `generic/both-hooked`; both are `UNSAT` and both now have a re-verified
DRAT refutation. The `P-adj`, `Q-adj` and `PQ-adj` rows cover the degenerate
n = 7 cases (§6).

## 4. The steps `reproduce.sh` runs

1. **`evidence/regen_cnf.py --write evidence/cnf`** — rebuilds all 20 DIMACS
   files from `indep_om.py` in pure Python (~2 s) and compares SHA-256 against
   `evidence/SHA256SUMS.txt`. All 20 come back **byte-identical**. This is why
   the 19 MB of CNFs are gitignored rather than committed (§5).
2. **`evidence/verify_hashes.py`** — every artifact matches its recorded hash.
   A missing tracked file, a missing CNF, or an altered byte each abort with a
   specific message (verified by deliberately breaking each case).
3. **`evidence/validate_checker.py`** — validates the checker itself (§7).
4. **`evidence/run_drat_all.py`** — runs `dratcheck.py` on all 15 (cnf, drat)
   pairs. It also asserts that every CNF *without* a DRAT is one of the five
   known-SAT tags, so a silently vanished proof is a failure, not a skip.
5. **`evidence/check_models.py`** — solver-free verification of the 5 models.
6. **`evidence/z3_crosscheck.py`** — re-solves all 20 with z3 and compares
   against `RESULTS.md` §4. Any disagreement is a hard failure.
7. **Positive control, `evidence/tools/verify_fig6.py`** — see §8.
8. **`evidence/tools/certificate.py`** — the Observation 6 counterexample.
9. **`coverage.py`** — **HISTORICAL ONLY, not load-bearing.** Reproduces the
   original, refuted coverage argument verbatim so the record can be
   re-derived. The step prints a banner saying so (§6).
10. **`coverage25/run_coverage25.sh`** — **LOAD-BEARING.** The K-16
   replacement: all 25 labelled `(P-type × Q-type)` combinations, no symmetry
   reduction, 125 instances, each with a re-checked certificate (§6).

## 5. Tracked vs. gitignored vs. temporary

* **Tracked** (~300 KB): `evidence/tools/`, `evidence/drat/` (the 15
  certificates, 110 KB total), `evidence/fixtures/` (pigeonhole), 
  `evidence/models/`, `evidence/shims/`, `evidence/logs/`,
  `evidence/SHA256SUMS.txt`, the driver scripts, `reproduce.sh`, this file.
* **Gitignored** (19 MB): `evidence/cnf/` — the 20 DIMACS files. Recommendation
  and rationale: **do not commit them.** They are a deterministic, pure-Python
  function of `indep_om.py`, which *is* tracked, and `regen_cnf.py` rebuilds all
  20 byte-identically in under 2 seconds with their hashes pinned in
  `SHA256SUMS.txt`. Committing 19 MB to recreate something reproducible in 2 s
  buys nothing. This mirrors the existing treatment of the 24 MB
  `independent/akr_l7_reproduction/cnf/` directory.
  The `.drat` files are the opposite case and **are** committed: they are small
  (110 KB), and they are *not* regenerable in this environment at all, because
  no SAT solver is installed.
  Also gitignored: `evidence/fixtures/negative/` (regenerated by
  `validate_checker.py` on every run) and `__pycache__/`.

> **Ignore rules needed.** I do not edit `.gitignore`. Please add:
> ```
> independent/akr_l7_reproduction/evidence/cnf/
> independent/akr_l7_reproduction/evidence/fixtures/negative/
> independent/akr_l7_reproduction/evidence/**/__pycache__/
> ```
> Until those lines exist, `git status` will show the 19 MB of CNFs as
> untracked. Nothing else in this directory should be ignored.
>
> `coverage25/` carries its own `coverage25/.gitignore` covering `.venv/`,
> `cnf/` and `__pycache__/`, so no root-level rule is required for it.

### `coverage25/` (the K-16 replacement)

* **Tracked** (~1.4 MB): `coverage25/*.py`, `run_coverage25.sh`,
  `results.json`, `CNF_SHA256SUMS.txt`, `ARTIFACT_SHA256SUMS.txt`,
  `drat/` (110 refutations, ~600 KB), `models/` (15), `logs/`.
* **Gitignored**: `coverage25/cnf/` (81 MB — an exact, deterministic function of
  the two tracked sources `pq_types.py` and `evidence/tools/indep_om.py`,
  rebuilt and hash-checked in ~8 s by `gen_cnf.py --write`),
  `coverage25/.venv/` (the isolated python-sat environment used once to derive
  the certificates; nothing tracked depends on it), `__pycache__/`.
* The 110 `.drat` files **are** committed, for the same reason as the original
  15: they cannot be re-derived without a SAT solver, and they are small.

* **Temporary**: nothing outside `evidence/logs/`, `evidence/cnf/`,
  `coverage25/logs/` and `coverage25/cnf/` is written by a run.

## 6. Case coverage for n = 7

> **CORRECTION (coordinator, 2026-09-14) — do not rely on this section as
> written.** `coverage.py`'s orbit argument is **wrong in combination**, and the
> `PQ-adj` instance it justifies is **vacuous**. The four Q-adjacencies do form a
> single orbit *in isolation*, but the relabelling generators act in tandem
> (`a↔b` forces `A↔B`), so combined PQ types split into **four** orbits indexed
> by the XOR of the P-bits with the Q-bits, and only orbit `(0,0)` is tested.
>
> The evidence is in this file's own table: **`PQ-adj/none` is UNSAT** (§3).
> Status `none` imposes no status constraints at all, so the `PQ-adj` base
> pattern is itself infeasible and every `PQ-adj` verdict below — including
> `both-hooking` and `both-hooked` — is vacuously UNSAT. The geometrically
> feasible PQ orbit was never solved here.
>
> Coverage is re-established by the enumeration described below, which is now
> **executable and certificate-backed** in `coverage25/` (it was previously only
> prose in `docs/known-issues.md` **K-16**). The DRAT verifications in §3 are
> unaffected — they certify exactly the formulas they name.

### 6.1 What `coverage.py` (step 9) is, and is not

`coverage.py` is retained and is still re-run, **as a historical record only**.
Step 9 prints a banner saying so and the step name contains
`HISTORICAL / SUPERSEDED, NOT load-bearing`. Its reproducible part is correct:
for n = 7 the two consecutive P-pairs are separated by d = (j-i) mod 7 in
{2,3,4,5}; d = 3 and d = 4 give no endpoint coincidence, d = 2 and d = 5 give
exactly one. Its **last step is wrong**: the four Q-adjacencies do form a single
orbit *in isolation*, but the combined types do not, so one representative does
not suffice. Output in `evidence/logs/coverage.txt`.

### 6.2 The replacement: `coverage25/` (step 10, LOAD-BEARING)

```sh
cd independent/akr_l7_reproduction/coverage25
./run_coverage25.sh          # ~3 min; steps 1-4 need only the stdlib
```

| file | what it does | needs a solver? |
|---|---|---|
| `pq_types.py` | the 25 labelled combinations and the generalised model builder | no |
| `completeness.py` | proves the 25-list is complete for n = 7 by exhaustive exact enumeration over Z_7 | no |
| `gen_cnf.py` | regenerates the 125 DIMACS CNFs and checks SHA-256 | no |
| `verify_all.py` | re-checks all 125 certificates (110 DRAT + 15 models) | **no** |
| `resolve_check.py` | optional independent-solver cross-check of the 125 verdicts | yes (z3 and/or python-sat) |
| `solve_all.py` | derives the certificates in the first place | yes (python-sat) |

**No symmetry reduction is used anywhere in `coverage25/`.** That is the point:
a symmetry reduction is what failed.

### 6.3 The type list, and why it is complete

Write the vertices of P as `V(k) = p_k ∧ p_{k+1}`, so `p_k = [V(k-1), V(k)]`,
and likewise `W(k)` for Q. Lemma 7 involves two consecutive-side pairs of P at
apex positions `u`, `u2`, two of Q at `w`, `w2`, and the four E_D edges, which
match each P-pair *onto* a Q-pair. Because the four P-sides must be distinct
(they lie in four distinct components of G_D), `d_P = (u2-u) mod 7 ∈ {2,3,4,5}`,
and likewise `d_Q`.

The six P-endpoints are `a2 = V(u-1)`, `v1 = V(u)`, `b2 = V(u+1)`,
`ap2 = V(u2-1)`, `v2 = V(u2)`, `bp2 = V(u2+1)`. Solving the coincidence
equations exactly in Z_7:

| coincidence | condition | admissible `d` |
|---|---|---|
| `a2 = ap2` | `u-1 ≡ u2-1` | d = 0 — **impossible** |
| `b2 = bp2` | `u+1 ≡ u2+1` | d = 0 — **impossible** |
| `a2 = bp2` | `u-1 ≡ u2+1` | **d = 5** |
| `b2 = ap2` | `u+1 ≡ u2-1` | **d = 2** |

and every coincidence involving an apex (`v1`, `v2`) forces d ∈ {0,1,6}, all
excluded. Hence: **an apex never coincides with anything; the only possible
coincidences are far-endpoint-to-far-endpoint; and at most one can hold**
(d cannot be both 2 and 5). So each of P and Q contributes one of five types —
`none` plus four named adjacencies — giving **5 × 5 = 25**.

The *names* `a, b, a', b'` are not geometry: choosing which pair is unprimed and
which side of each pair is `a` is free (8 ways), and each choice forces the
Q-names through E_D. `completeness.py` enumerates all
`7·4 × 7·4 × 8 (E_D matchings) × 8 (labellings) = 50176` cases, verifies the
three claims above with **zero** violations, and finds that all **25** labelled
combined types occur. It then re-derives the defect for the record: under the
order-16 automorphism group the four Q-adjacencies form **1** orbit in
isolation (what `coverage.py` computed) but the combined types form **5**.

*Assumption*, inherited from AKR §9.1 and already relied on by the existing
encoder: P and Q are in general position, in particular they share no vertex.
That is what makes the P- and Q-coincidence data independent, hence a product.

### 6.4 Results — all 25 combinations, all five statuses

Every verdict below is backed by a certificate re-checked by
`coverage25/verify_all.py`: a DRAT refutation for `UNSAT`, an explicit model
for `SAT`. `pts` is the number of distinct points after identification.

| P-type | Q-type | pts | `none` | `mixed-1` | `mixed-2` | `both-hooking` | `both-hooked` | note |
|---|---|---|---|---|---|---|---|---|
| `none` | `none` | 12 | SAT | SAT | SAT | **UNSAT** | **UNSAT** | = legacy `generic` |
| `none` | `A-Ap` | 11 | SAT | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** |  |
| `none` | `A-Bp` | 11 | SAT | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** |  |
| `none` | `B-Ap` | 11 | SAT | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** | = legacy `Q-adj` |
| `none` | `B-Bp` | 11 | SAT | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** |  |
| `a-ap` | `none` | 11 | SAT | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** |  |
| `a-ap` | `A-Ap` | 10 | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** | **VACUOUS** |
| `a-ap` | `A-Bp` | 10 | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** | **VACUOUS** |
| `a-ap` | `B-Ap` | 10 | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** | **VACUOUS** |
| `a-ap` | `B-Bp` | 10 | SAT | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** |  |
| `a-bp` | `none` | 11 | SAT | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** |  |
| `a-bp` | `A-Ap` | 10 | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** | **VACUOUS** |
| `a-bp` | `A-Bp` | 10 | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** | **VACUOUS** |
| `a-bp` | `B-Ap` | 10 | SAT | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** |  |
| `a-bp` | `B-Bp` | 10 | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** | **VACUOUS** |
| `b-ap` | `none` | 11 | SAT | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** | = legacy `P-adj` |
| `b-ap` | `A-Ap` | 10 | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** | **VACUOUS** |
| `b-ap` | `A-Bp` | 10 | SAT | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** |  |
| `b-ap` | `B-Ap` | 10 | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** | **VACUOUS** = legacy `PQ-adj` |
| `b-ap` | `B-Bp` | 10 | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** | **VACUOUS** |
| `b-bp` | `none` | 11 | SAT | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** |  |
| `b-bp` | `A-Ap` | 10 | SAT | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** |  |
| `b-bp` | `A-Bp` | 10 | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** | **VACUOUS** |
| `b-bp` | `B-Ap` | 10 | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** | **VACUOUS** |
| `b-bp` | `B-Bp` | 10 | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** | **UNSAT** | **VACUOUS** |

**`both-hooking` and `both-hooked` are UNSAT in all 25 combinations.** That is
the Lemma 7 statement, now covering every case the n = 7 claim needs.

### 6.5 Vacuous combinations — read this before using the table

A combination whose `none` row is UNSAT has an **infeasible base pattern**:
status `none` imposes no status constraint at all, so *every* other verdict in
that row is vacuously UNSAT and carries no information about hooking. 12 of the
25 are vacuous, and they are listed as such by `verify_all.py` and in
`coverage25/logs/verify_all.json`.

**The old `PQ-adj` representative is one of the 12.** Its non-vacuous
counterparts — the combinations that actually had to be solved and never had
been — are the four

`Pa-ap/QB-Bp`, `Pa-bp/QB-Ap`, `Pb-ap/QA-Bp`, `Pb-bp/QA-Ap`

which are exactly the `XOR = (1,1)` orbit named in K-16. All four are `SAT` for
`none` (so the base pattern is genuinely realisable at the oriented-matroid
level, with a machine-checked model) and `UNSAT` for `both-hooking` and
`both-hooked`, each with a re-verified DRAT refutation. **This is the
substantive new content of the fix.**

Note that "vacuous" is not itself a defect: an UNSAT `none` row is a real
result (that labelled type admits no configuration with the required
intersection pattern at all). The defect was testing *only* such a
representative while believing it stood for the others.

### 6.6 Certificates and provenance

* The CNFs are produced by the **same** encoder as the committed 20,
  `evidence/tools/indep_om.py`, called with a generalised identification map.
  Four of the 25 combinations coincide with the four legacy variants
  (`generic`, `P-adj`, `Q-adj`, `PQ-adj`); `gen_cnf.py` asserts that those
  **20/20 instances are byte-identical** to the hashes already committed in
  `evidence/SHA256SUMS.txt`. That ties the 105 new formulas to the existing
  audit trail rather than to a fresh re-implementation.
* 110 UNSAT instances, **110 DRAT certificates**, all re-checked by
  `evidence/tools/dratcheck.py` — the same from-scratch checker that step 3
  validates in both directions (pigeonhole positives *and* four negative
  controls). **95 of the 110 are new**; the other 15 correspond to the legacy
  instances. There are **no solver-only verdicts**: every one of the 125
  instances has a checkable certificate.
* `verify_all.py` re-derives each CNF from source and refuses to check a
  certificate whose formula SHA-256 does not match, so every certificate is
  bound to its exact formula.
* Three solvers (cadical153, glucose42, lingeling) agreed on all 125 when the
  certificates were derived; `resolve_check.py` re-confirms the 125 verdicts
  with z3 and/or python-sat, and exits non-zero if no solver is available
  rather than skipping silently.

## 7. Validating the checker (this is the load-bearing part)

A checker that accepts everything proves nothing, so `validate_checker.py` runs
both directions.

**Positives — must verify.** Four pigeonhole refutations,
PHP(4) and PHP(5), each from two different solvers (lingeling and glucose4):
all four verify as UNSAT.

**Negatives — must be rejected.** All four are rejected:

| control | what it is | result |
|---|---|---|
| `php4_corrupt` | the real PHP(4) proof with one literal's sign flipped | rejected at step 0 |
| `sat_trivial` | a satisfiable 2-clause formula plus a proof asserting the empty clause | rejected at step 0 |
| `unjustified` | a proof whose final empty clause is not implied | rejected at step 1 |
| `wrong_formula` | the genuine `generic_both-hooking.drat` checked against the *weaker, satisfiable* `generic_none.cnf` | rejected at step 0 |

The last one is the sharpest: the same proof that verifies against its own
formula is rejected the moment it is paired with a formula it does not refute.

**Soundness notes on `dratcheck.py`.** Two properties worth stating because
they are easy to get wrong:

* It **ignores deletion steps**. This is sound for *verifying UNSAT*: skipping
  deletions only makes the accumulated clause set larger, and each added lemma
  is checked (RUP, or RAT on its first literal) against that larger set. RUP
  additions are logically implied and RAT additions are satisfiability-preserving,
  so by induction the original formula is unsatisfiable whenever the empty
  clause is reached. (It would *not* be sound for verifying that a proof is a
  minimal or well-formed DRAT proof — but that is not the claim.)
* It exits 0 when a proof simply never reaches the empty clause, printing
  `proof did not derive the empty clause`. Both `run_drat_all.py` and
  `validate_checker.py` therefore require the literal string
  `PROOF VERIFIED (UNSAT)` in the output and do not rely on the exit code alone.

In this run no lemma needed the RAT fallback: all 15 proofs are pure RUP.

## 8. Positive control — AKR's Figure 6

`evidence/tools/verify_fig6.py` takes the eight integer line equations of AKR's
own Fig. 6, builds the eight segments in exact rational arithmetic, and checks
two things:

* the configuration really realises the required crossing pattern —
  **24 pattern conditions checked, 0 mismatches** — with statuses
  `hooking1=True, hooked1=False, hooking2=False, hooked2=True`, i.e. exactly
  the `mixed-1` case;
* the resulting 12-point order type, read off as the sign of every one of the
  220 determinants, satisfies **all 64 566 clauses** of the independent
  `generic/mixed-1` CNF — **0 violated**.

This is what shows the encoding is not vacuously over-constrained: a
configuration that genuinely exists in the plane is a model of the CNF, so the
`unsat` verdicts on the other rows are real exclusions and not artifacts of a
broken encoding.

## 9. Observation 6 counterexample

`evidence/tools/certificate.py` (pure integer arithmetic, no dependencies)
exhibits an explicit triangle and pentagon with integer vertices and verifies
from first principles that they are simple, in general position (GP1/GP2/GP3),
that `(q0,q4)` is associated to `(p0,p1)` under AKR's printed definition, that
the pair is **neither hooking nor hooked** — so Lemma 5's cone dichotomy fails
for it — and that the Axis Property of Observation 6 consequently **does not
hold**. Output in `evidence/logs/certificate.txt`.

## 10. Provenance

| artifact | produced by | recovered from |
|---|---|---|
| `evidence/cnf/*.cnf` (20) | `indep_om.build`, via `gen_all_proofs.py` | regenerated here, byte-identical |
| `evidence/drat/*.drat` (15) | **lingeling** via `pysat`'s `Lingeling(with_proof=True)` in `gen_all_proofs.py` | session scratchpad; **not regenerable here** |
| `evidence/fixtures/php[45]_*.{cnf,drat}` | lingeling and glucose4 via `pysat` | session scratchpad |
| `evidence/tools/*.py` | a previous reviewing agent, session scratchpad | copied verbatim, hashes in `SHA256SUMS.txt` |
| `evidence/models/*.model` | z3, `z3_crosscheck.py` | generated here |
| `evidence/shims/pysat/` | written here | new |

`evidence/shims/pysat/` is a stand-in package. `indep_om.py`, `gen_all_proofs.py`,
`om_global2.py` and `realize8.py` all do `from pysat.solvers import ...` at import
time, and `python-sat` is not installed. The shim lets their pure-Python CNF
*construction* code be imported and used **verbatim, unmodified**, while any
attempt to actually solve raises a loud `RuntimeError` explaining the situation
instead of failing obscurely. No recovered file was edited.

## 11. Known gaps

* **The original 15 DRAT proofs cannot be regenerated by the system
  interpreter** — that needs `python-sat` (or a solver binary with `--proof`).
  They are recovered artifacts, re-checked but not re-derived. This is why they
  are committed. The 110 proofs under `coverage25/drat/` *were* derived here,
  by `coverage25/solve_all.py` running in the isolated venv
  `coverage25/.venv` (python-sat 1.9.dev15, lingeling); they are committed for
  the same reason, since that venv is not tracked.
* `evidence/tools/om_global2.py`, `realize8.py` and `hunt_global.py` are
  recovered and hashed for completeness but are **not** run by `reproduce.sh`:
  the first two need a real SAT solver, and `hunt_global.py` is a randomised
  search whose value is covered by the deterministic results above.
* The `sat` rows remain statements about oriented matroids, not claims of
  straight-line realisability — as `RESULTS.md` §4 already notes. The one
  exception is `generic/mixed-1`, which §8 shows *is* realisable by the actual
  Fig. 6 coordinates. The same caveat applies to the 15 `sat` rows of §6.4: they
  show the base pattern is non-vacuous *as an oriented matroid*, which is
  exactly what is needed to rule out a vacuous refutation, and nothing more.
* `RESULTS.md` and `README.md` in this directory still describe only the
  original four variants and the superseded coverage argument. They were not
  edited here (they are outside this task's ownership); §6 of this file and
  `coverage25/` are authoritative for coverage.
