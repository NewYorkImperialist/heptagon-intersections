# Python source

Every script here uses **only the Python standard library** and **exact integer
arithmetic**. There is no `requirements.txt` because there are no dependencies
to pin. Tested on Python 3.14.7 (macOS arm64); 3.9+ should work.

## Running anything

The original scripts were written in a single flat directory and use flat
imports (`from geom import *`, `from chiro import *`). Rather than edit research
code during an organizational pass, the shared modules live in `core/` and go on
the path explicitly:

```bash
export REPO=/path/to/heptagon-intersections
export PYTHONPATH=$REPO/python/core
```

`elimination/audit_pairs.py` additionally reads `audit_enum.py` **from the
current working directory**, so it must be run from `elimination/`.

Scripts read and write their pickles in the **current working directory**. Run
them from a scratch directory, not from inside the repository.

Full sequence, expected output and timings: [`../docs/computational-method.md`](../docs/computational-method.md).

## Layout

| Directory | Role |
|---|---|
| `core/` | Shared predicate libraries. Imported by everything. |
| `classification/` | Order types → the 14 exceptional heptagon classes. |
| `elimination/` | The finite search that rules out `I = 40`. |
| `validation/` | Checks that filters do not reject realizable configurations. |

The superseded first-generation pipeline is in
[`../archive/superseded/python/`](../archive/superseded/python/) — including one
file with a documented defect. Do not use it for results.

---

## `core/`

**`geom.py`** — exact coordinate predicates. `orient` (integer determinant
sign), `seg_cross`, `line_cuts_seg`, `is_simple`, `count_intersections`,
`disjointness_graph`, `halfplane_subsets`, `crossing_sets`. All integer
arithmetic; no floating point. **Current.** No inputs, no outputs — a library.

**`chiro.py`** — deterministic exhaustive enumeration of abstract order types
(uniform rank-3 chirotopes) on ≤ 7 elements, plus chirotope-only versions of
every geometric predicate.

* Run directly: `python3 chiro.py`
* Inputs: none.
* Outputs: `ot7_det.pkl` (135 representatives) in the CWD; prints the staged
  counts.
* Expected: `1, 2, 3, 16, 135` for `n = 3…7`, matching
  Aichholzer–Aurenhammer–Krasser, plus
  `all 105 GP + 35 Radon relations verified for every representative: True`.
* Runtime: ~8 s. **Current.** This is the project's entry point — it is
  self-contained and regenerates the classification input from nothing.

*Why this is sound:* only the 3-term Grassmann–Plücker and 4-point Radon sign
conditions are imposed, and both are *necessary* for realizability. The output
is therefore a **superset** of the realizable order types, which is exactly what
an exclusion theorem needs, and lets the proof avoid any realizability claim.

---

## `classification/`

**`audit_ot.py`** — the original three-part audit: (a) cross-check chirotope
predicates against coordinate predicates (340,335 tests, 0 mismatches as
reported); (b) confirm the deterministic order types equal the randomly sampled
ones; (c) re-run "Question A" and emit the 14 exceptional profiles.

* **Partially unrunnable.** Parts (a) and (b) require `ot7.pkl` — the 135
  *random realizations* — which is **not present**, and whose generator
  (`ot_fast.py`) is also missing. The script aborts before reaching part (c).
* Inputs: `ot7.pkl` (missing), `ot7_det.pkl`.
* Outputs: `exc_det.pkl`.
* **Current but blocked.** See `../docs/known-issues.md` K-04, K-05.

**`make_exceptional_profiles.py`** — **added during repository organization; not
original research code.** Works around the above by exec-ing the *unmodified
source text* of part (c) with `det` pre-loaded from `ot7_det.pkl`. No algorithm
changed, nothing reimplemented.

* `python3 make_exceptional_profiles.py [ot7_det.pkl] [exc_det.pkl]`
* Inputs: `ot7_det.pkl` (from `core/chiro.py`).
* Outputs: `exc_det.pkl` in the CWD — required by everything in `elimination/`.
* Expected: `6342` simple 7-gons, `{3: 6007, 4: 319, 5: 16}`, `14` classes.
* Runtime: ~2 s.

**`export_profiles.py`** — **added during repository organization.** Serializes
the 135 order types and the 14 exceptional profiles to the JSON certificates in
`../data/`. Transcribes the `classdata` function already duplicated verbatim in
both elimination scripts; no predicate is redefined.

* `python3 export_profiles.py <ot7_det.pkl> <exc_det.pkl> <outdir>`

---

## `elimination/`

**`audit_enum.py`** — the corrected enumeration and the full filter pipeline.
This is the heart of the upper-bound argument.

* `python3 audit_enum.py <E>` where `<E>` is the edge count (7, 8 or 9).
* Inputs: `exc_det.pkl` in the CWD (only reached when survivors exist).
* Outputs: prints per-stage counts.
* Runtime: 0.2 s / 8 s / ~3 min for `E` = 7 / 8 / 9.
* **Current.** Supersedes `archive/superseded/python/enum9.py`, whose leaf test
  omitted `budget == 0` and so enumerated `|E| ∈ {7,8,9}` — see
  `../docs/known-issues.md` K-01.

Reproduced 2026-09-13: `13,003,620 → 42,238 → 24,990 → 9,702 → 2,300 → 121 → 0`.

> The `2,300` and `121` are **representative-labelling artifacts**, not results.
> Only the final `0` is invariant. Use `audit_pairs.py` for the real claim.

**`audit_pairs.py`** — the labelling-invariant form, and the correction for
defect D2. Rebuilds the 9,702 survivors, then verifies emptiness **separately
for each of the 196 ordered pairs** of exceptional classes, under three
representative labellings (as stored; rotation 3 + reflection; rotation 5).

* Must be run from this directory: it reuses `audit_enum.py`'s helpers by
  exec-ing a slice of its source from the CWD.
* Inputs: `exc_det.pkl` in the CWD.
* Runtime: ~3 min.
* **Current. This is the load-bearing run.**

Reproduced 2026-09-13: all three labellings give 0 survivors over all 196 pairs.

---

## `validation/`

**`check_lower_bound.py`** — **added during repository organization.** Standalone
referee check of the `f(7,7) ≥ 38` certificate in
`../data/lower_bound/lower_bound_38.json`. Exact integer arithmetic, no external
lemma, no enumeration, <1 s, exit status 0 iff all ten properties hold.

The cheapest meaningful audit of this project. It establishes the lower bound
outright and says nothing about the upper bound.

**`validate.py`** — the adversarial check that no filter rejects a *realizable*
configuration. This is the main evidence that the filters are not
over-aggressive, which matters because an over-aggressive filter would produce
exactly the observed "zero survivors".

* **Unrunnable as shipped.** Section 1 loads `best_7_7_3.pkl` / `best_7_7_4.pkl`,
  which are absent, and their generator (`search.py`) is missing too, so the
  script aborts before section 2.
* Section 2 (4,000 random simple 7-gon pairs; no filter may reject) is
  self-contained and would run on its own, but the file **has not been edited**
  to allow that — editing research code was out of scope.
* **Current in intent, blocked in practice.** See `../docs/known-issues.md` K-05.
