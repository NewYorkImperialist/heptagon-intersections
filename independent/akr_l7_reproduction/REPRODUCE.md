# REPRODUCE — independent AKR Lemma 7 / A7 evidence

One command:

```sh
cd independent/akr_l7_reproduction
./reproduce.sh
```

Exit status: **0** = every check passed; **1** = something failed or an input is
missing; **2** = every executed check passed but the run was *partial* because
the z3 cross-check was deliberately skipped (`REPRO_SKIP_Z3=1`). The script never
skips a step silently. Full wall time on the reference machine (Apple silicon,
CPython 3.14): **5 min 3 s**, dominated by the 15 DRAT re-checks (~171 s).

Logs of the last run are written to `evidence/logs/`.

---

## 1. Prerequisites

| requirement | needed for | status in this environment |
|---|---|---|
| CPython 3.9+ | everything | 3.14.7 — present |
| `z3` (`pip install z3-solver`) | step 6 only (independent re-solve of all 20 instances, export of models for the 5 SAT ones) | **present, 5.1.0** |
| `python-sat` (`pip install python-sat`) | **not needed** to check anything; only needed to *re-derive* DRAT proofs via `evidence/tools/gen_all_proofs.py` | **ABSENT** |
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
9. **`coverage.py`** — the n = 7 case-coverage argument (§6).

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

* **Temporary**: nothing outside `evidence/logs/` and `evidence/cnf/` is
  written by a run.

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
> Coverage was re-established separately by enumerating all **25**
> `(P-type × Q-type)` combinations with no symmetry reduction: `both-hooking`
> and `both-hooked` UNSAT in all 25. See `docs/known-issues.md` **K-16** and
> `docs/a7-specification.md`. The DRAT verifications in §3 are unaffected — they
> certify exactly the formulas they name.

`coverage.py` (already in the repo; re-run as step 9) reproduces the **original,
now-superseded** exhaustiveness argument. For n = 7 the two consecutive P-pairs are separated by
d = (j-i) mod 7 in {2,3,4,5}; d = 3 and d = 4 give no endpoint coincidence
(`generic`), while d = 2 and d = 5 give exactly one (`P-adj`, up to the
a<->b / a'<->b' symmetry). The same analysis applies on the Q side, and the
four possible Q-adjacencies form a **single orbit** under the order-16
automorphism group of the configuration, so the one `Q-adj` representative
covers all of them. `PQ-adj` is the simultaneous case. Reproduced verbatim in
this run; output in `evidence/logs/coverage.txt`. **The last step of that
argument does not hold — see the correction above.**

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

* **The DRAT proofs cannot be regenerated in this environment** — that needs
  `python-sat` (or a solver binary with `--proof`). They are recovered
  artifacts, re-checked but not re-derived. This is why they are committed.
* `evidence/tools/om_global2.py`, `realize8.py` and `hunt_global.py` are
  recovered and hashed for completeness but are **not** run by `reproduce.sh`:
  the first two need a real SAT solver, and `hunt_global.py` is a randomised
  search whose value is covered by the deterministic results above.
* The `sat` rows remain statements about oriented matroids, not claims of
  straight-line realisability — as `RESULTS.md` §4 already notes. The one
  exception is `generic/mixed-1`, which §8 shows *is* realisable by the actual
  Fig. 6 coordinates.
