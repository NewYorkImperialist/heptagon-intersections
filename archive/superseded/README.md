# Superseded material

Nothing here has been deleted, corrected, or rewritten. These files are kept as
the research record: they show what was originally claimed, and — in one case —
contain a real defect that was later found and documented.

**Do not cite anything in this directory. Do not run it for results.**

Corrections live in [`../../docs/audit-report.md`](../../docs/audit-report.md)
and [`../../docs/known-issues.md`](../../docs/known-issues.md). The old figures
below have deliberately **not** been updated in place.

## Index

### `REPORT.md` — the first full write-up

**Superseded by** `../../docs/proof-outline.md` (the argument) and
`../../docs/literature-notes.md` (the literature survey, which is still accurate
and was extracted from §1–2 of this file).

Superseded because its §5 elimination table reports the pre-audit pipeline:

| stage | REPORT.md | current |
|---|---|---|
| 9-edge graphs, min degree 1 | 13,484,940 | **13,003,620** |
| + AKR L5 (consecutive) | 43,330 | 42,238 |
| + AKR L7 | 24,990 | 24,990 |
| + Černý L3 | 9,702 | 9,702 |
| + crossing-set compatibility | 3,522 | 2,300 |
| + Černý L2 | 64 | 121 |
| + AKR L5 (avoiding) | **0** | **0** |

Two distinct problems, and they should not be confused:

* **D1 (a real error).** 13,484,940 is not the number of 9-edge graphs; it is
  the number with `|E| ∈ {7,8,9}`, because of the `enum9.py` defect below. The
  43,330 figure inherits this. Soundness was unaffected — a superset was
  searched — but the reported figure was wrong. See K-01.
* **D2 (not an error, a misreading of what the numbers mean).** 3,522 and 64 are
  **artifacts of representative labelling**, as are the current 2,300 and 121.
  Re-labelling carries the survivor set bijectively for a fixed ordered class
  pair, so emptiness is invariant but the union over classes is not. Only the
  final `0` was ever a claim. See K-11.

Also superseded in §4 and §8: the order types were obtained by **random
sampling** here, which the report itself flags as "corroboration rather than
proof". The current pipeline enumerates them deterministically
(`python/core/chiro.py`), and the resulting 135-element set was confirmed
identical to the sampled one.

§6, the explicit 38-crossing construction, remains **valid and is still in use**.
It was extracted verbatim to `../../data/lower_bound/lower_bound_38.json` and
re-verified on 2026-09-13. This file is its source of record.

§Reproducing lists scripts that are **not present** in these materials at all:
`ot_fast.py`, `combine.py`, `final.py`, `trace.py`, `confirm.py`, `search.py`.
See K-04 and K-05.

### `python/enum9.py` — **CONTAINS A KNOWN DEFECT, PRESERVED UNPATCHED**

**Superseded by** `../../python/elimination/audit_enum.py`.

The recursion's leaf test checks that every Q-side is covered but never checks
that the edge budget was exhausted:

```python
if i==7:
    if used!=FULL: return     # no `budget == 0` test
    process(N)
```

so it enumerated `|E| ∈ {7,8,9}`, not `|E| = 9`. `audit_enum.py` fixes this
(`if budget!=0 or used!=FULL: return`).

**This file has deliberately not been patched.** It is the primary evidence for
defect D1 and for how it was found. It also still contains a harmless dead loop
(`for m in range(1, 8): pass`), likewise left alone.

Cannot be run for results in any case: it writes `survivors9.pkl` for downstream
scripts that are absent.

### `python/questionA.py` — first exceptional classification

**Superseded by** `../../python/classification/audit_ot.py` part (c), reachable
via `make_exceptional_profiles.py`.

Coordinate-based rather than chirotope-based, and driven by the randomly sampled
`ot7.pkl`. Not defective — its results (6342 / 6007 / 319 / 16) were reproduced
exactly by the deterministic pipeline. **Unrunnable**: `ot7.pkl` is missing and
its generator `ot_fast.py` is absent.

### `python/avoid.py` — first avoiding-pair filter

**Superseded by** the `L5avoid` stage inside `../../python/elimination/audit_enum.py`
and `audit_pairs.py`.

The final `64 → 0` step of the original pipeline. Not defective; the logic
survives in the current scripts. **Unrunnable**: needs `ot7.pkl` and `alive.pkl`,
both missing.

## Duplicate files removed during organization

The materials arrived as four partially overlapping download folders. These
byte-identical duplicates were dropped; a single copy of each was kept.

| File | Copies received | Kept at |
|---|---|---|
| `AUDIT.md` | 3 (`files (1)`, `files (2)`, `files (3)`) | `docs/audit-report.md` |
| `ARCHITECTURE.md` | 2 (`files (2)`, `files (3)`) | `docs/lean-architecture.md` |
| `LemmaA.lean` | 2 (`files (2)`, `files (3)`) | `lean/LemmaA.lean` |

Verified identical by SHA-256 before removal. All copies remain recoverable from
the first commit, which is a verbatim snapshot of the materials as received.
