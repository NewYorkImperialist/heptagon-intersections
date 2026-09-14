# Independent order-type and exceptional-classification audit

A second, separately written derivation of the two inputs that the whole
`f(7,7) ≤ 38` argument consumes before any external lemma is applied:

1. the **135 order types** of 7 points, and
2. the **14 exceptional heptagon classes** with their profile fields.

**Result: exact agreement, and an external cross-check on top of it.**

## What independence means here, precisely

This audit was written by a fresh agent with no inherited context. It does
**not** import `python/core/chiro.py` or `python/core/geom.py`, and it does not
read any project data file until its own results have already been written to
`independent_profiles.json` — stage 6 of `run_audit.py` is the first stage that
opens anything under `data/`.

It also does not *start* from the project's enumeration. Its input is the **TU
Graz order-type database** (`external/otypes07.b08`, sha256 `0f13421854f049…`),
an external artifact with an independent provenance.

What it does **not** establish: the audit and the project share the same
mathematical *definitions* of "uncrossable", "exceptional", `M_set`, the
Lemma-2 windows and "avoiding". If a definition is the wrong formalisation of
the intended geometric notion, both are wrong together. This audit checks
derivation, not interpretation. The interpretation questions live in
`../../docs/known-issues.md` K-09 and `../../docs/akr-l7-human-review.md`.

## What it found

| Stage | Check | Result |
|---|---|---|
| 1 | 135 external order types parsed; chirotope (Gordan/circuit) vs explicit rational lines, 135 × 128 = 17,280 sign decisions | **0 mismatches**; every set has exactly 44 topes |
| 1 | the project's 135 chirotopes vs the external 135, up to relabelling **and** reflection | **exact set equality**, 0 in either difference |
| 2 | simple heptagons, vs `external/hamilt07.b08` (TU Graz crossing-free Hamiltonian cycle counts) | **6342**, all 135 per-set counts agree |
| 3 | stratification by uncrossable subsets | 6007 / 319 / **16** exceptional |
| 4 | classes under `D₇ × {±1}` | **14** |
| 6 | class bijection against `data/exceptional_profiles/exceptional_profiles_14.json` | total and injective |
| 6 | `M_set`, `maximal_crossing_sets`, `lemma2_windows`, `avoiding_pairs`, recomputed by this audit's own predicates on the project's representatives | **14 / 14 each**, byte-order identical |
| — | `tests.py` adversarial suite | **33 / 33 pass** |

Stage 3 also records a finding that is **not** agreement and matters: the
*strict* reading of "uncrossable" ("every line disjoint from `V(P)` misses some
side of `S`") gives **16** exceptional objects, while the *loose* reading ("no
line at all meets all four closed sides") gives **2268**. The two readings
differ on 2,252 objects. The project uses the strict reading; that this choice
is load-bearing is exactly why it is recorded here rather than buried.

## Layout

| Path | What it is |
|---|---|
| `otlib.py` | every definition used by this audit, written from scratch |
| `run_audit.py` | stages 1–6; writes `independent_profiles.json`, then compares |
| `compare.py` | the field-by-field comparison against the project's profiles; writes `comparison_report.json` |
| `tests.py` | 33 adversarial tests, including exhaustive chirotope-vs-coordinate cross-checks |
| `external/` | the TU Graz database files and their `otypes_readme.txt`, unmodified |
| `independent_profiles.json` | this audit's own output, written before any project file is read |
| `comparison_report.json` | the machine-readable comparison result |
| `run_audit.log`, `compare.log`, `tests.log` | the recorded runs |

## Running it

```bash
cd independent/order_type_audit
python3 run_audit.py      # ~2 min; writes independent_profiles.json
python3 compare.py        # writes comparison_report.json
python3 tests.py          # 33 tests
```

Standard library only. The file hashes are in
`../../data/hashes/SHA256SUMS.order_type_audit` and are checked by
`scripts/verify-all.sh` step 4.

The `run_audit.log` and `compare.log` files in this directory record absolute
paths from the machine they were produced on; that is cosmetic and affects
nothing that is checked.

## Where this lands in the project's status

`../../docs/verification-status.md` rows 5 and 6 — **INDEPENDENTLY
REIMPLEMENTED + EXTERNAL CROSS-CHECK** and **EXTERNALLY CROSS-CHECKED (exact set
equality)**. These are the strongest non-Lean statuses anything in this project
has. They do not extend to the upper bound, which depends on external lemmas
this audit does not touch.
