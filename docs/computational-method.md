# Computational method and reproduction guide

**Last updated:** 2026-09-17 (see the corrections dated 2026-09-14 and
2026-09-17 at the foot of this file; the body is otherwise as of 2026-09-14)

> **Scope note added 2026-09-17.** This is a guide to reproducing the **Python
> pipeline**, and it remains accurate as that. It is **not** a description of
> how the upper bound is now proved: since 2026-09-17 the upper bound for
> configurations in general position is a Lean theorem that touches none of the
> runs below. Read the "Update, 2026-09-17" block at the end before treating
> any run here as load-bearing.

Everything below was executed on 2026-09-13 unless explicitly marked otherwise.
Commands that were **not** run are marked as such; no command in this file is
invented.

## Requirements

* **Python 3.9+** (tested on 3.14.7, macOS arm64).
* **No third-party packages.** Every script uses only the standard library
  (`itertools`, `pickle`, `json`, `sys`, `os`, `random`). There is deliberately
  no `requirements.txt`: there are no dependencies to pin, and inventing version
  constraints would be misleading.
* All geometric arithmetic is **exact integer arithmetic**. There is no
  floating point anywhere on the critical path. (The one `float` in the project
  is a numerical sanity check of the Plücker identity at the top of `chiro.py`,
  which is illustrative and not load-bearing.)
* Single-threaded. Peak memory is modest; the `|E|=9` pass holds 9,702
  survivors, not 13 million.

## The `PYTHONPATH` convention

The original scripts use flat imports (`from geom import *`, `from chiro import
*`) because they were written in a single directory. Rather than edit research
code during an organizational pass, the shared modules live in `python/core/`
and are put on the path explicitly:

```bash
export REPO=/path/to/heptagon-intersections
export PYTHONPATH=$REPO/python/core
```

Additionally, `audit_pairs.py` reads `audit_enum.py` **from the current working
directory** (it reuses its helpers via `exec`), so it must be run from
`python/elimination/`. This is the project's own idiom, left intact.

---

## Tier 1 — quick validation (about 15 seconds total)

Run this first. It establishes the lower bound outright and confirms the
classification, without touching the 13-million-graph search.

```bash
export REPO=/path/to/heptagon-intersections
export PYTHONPATH=$REPO/python/core
mkdir -p /tmp/f77 && cd /tmp/f77

# (1) lower bound: f(7,7) >= 38.  Exact, self-contained, <1 s.
python3 $REPO/python/validation/check_lower_bound.py

# (2) order types: 1, 2, 3, 16, 135.  Writes ot7_det.pkl.  ~8 s.
python3 $REPO/python/core/chiro.py

# (3) exceptional classification: 6342 simple 7-gons, 14 classes.  ~2 s.
python3 $REPO/python/classification/make_exceptional_profiles.py
```

Expected output of (1): ten `PASS` lines, then
`All checks passed. This certifies f(7,7) >= 38.`

Expected output of (2):

```
  n=3: 1 order types
  n=4: 2 order types
  n=5: 3 order types
  n=6: 16 order types
  n=7: 135 order types
all 105 GP + 35 Radon relations verified for every representative: True
```

Expected output of (3):

```
(c) simple 7-gons examined: 6342
    minimum uncrossable-set size distribution: {3: 6007, 4: 319, 5: 16}
    exceptional polygon classes: 14
```

## Tier 2 — the full elimination (about 6.5 minutes total)

Requires `ot7_det.pkl` and `exc_det.pkl` from Tier 1 in the working directory.

```bash
cd /tmp/f77

# the cheap cases: I=42 and I=41
python3 $REPO/python/elimination/audit_enum.py 7      # 0.2 s
python3 $REPO/python/elimination/audit_enum.py 8      # 8 s

# the real case: I=40
python3 $REPO/python/elimination/audit_enum.py 9      # 3 m 6 s
```

Reproduced 2026-09-13 (`results/logs/`):

| `\|E\|` | graphs | +A5 | +A7 | +ČL3 | +compat | +ČL2 | +A5-avoid |
|---|---|---|---|---|---|---|---|
| 7 | 5,040 | 14 | **0** | — | — | — | — |
| 8 | 476,280 | 1,078 | **0** | — | — | — | — |
| 9 | 13,003,620 | 42,238 | 24,990 | 9,702 | 2,300 | 121 | **0** |

> **Read `2,300` and `121` as artifacts, not results.** Both depend on which
> labelled polygon is stored as each class representative; the superseded
> pipeline reported `3,522` and `64` for the same two stages. Only the final
> `0` is labelling-invariant. See `known-issues.md` K-11 — and then run Tier 3,
> which is the claim that actually matters.

## Tier 3 — the labelling-invariant elimination (about 3 minutes)

This is the load-bearing run *of the Python pipeline*. *(Qualifier added
2026-09-17: it is no longer load-bearing for the upper bound, which does not
reach this filter — see the update at the foot of this file.)* It re-derives the
9,702 survivors and then checks
emptiness **separately for each of the 196 ordered pairs of exceptional
classes**, under three different representative labellings (as stored;
rotation 3 + reflection; rotation 5).

`audit_pairs.py` reuses `audit_enum.py`'s helpers by exec-ing a slice of its
source **from the current working directory**, and it loads `exc_det.pkl` from
there too. So both must be present in the directory you run it from:

```bash
cd /tmp/f77                                    # already holds exc_det.pkl
cp $REPO/python/elimination/audit_enum.py .    # required: read from the CWD
python3 $REPO/python/elimination/audit_pairs.py   # 3 m 8 s
```

Reproduced 2026-09-13:

```
L3-survivors rebuilt: 9702
  [as stored]         196 ordered class pairs; max survivors over any pair = 0; total = 0
  [rotated+reflected] 196 ordered class pairs; max survivors over any pair = 0; total = 0
  [rotated]           196 ordered class pairs; max survivors over any pair = 0; total = 0
ALL THREE LABELLINGS GIVE ZERO SURVIVORS: True
```

## Tier 4 — the endgame certificate (about 3 minutes, or <1 s to check)

The final elimination step ships a per-case certificate. **Checking it costs
under a second** and requires none of the above:

```bash
python3 $REPO/python/validation/check_final_certificate.py \
        $REPO/data/certificates/final_elimination_225.json
```

Expected:

```
cases checked        : 225
distinct graphs      : 121
degree sequences (P) : {(2, 2, 1, 1, 1, 1, 1): 225}
degree sequences (Q) : {(2, 2, 1, 1, 1, 1, 1): 225}
classes P            : [1, 2, 3, 4, 9, 10, 11, 12, 13]
OK: all 225 cases establish the AKR Lemma 5 contradiction.
```

To regenerate the certificate from scratch (~3 min), from a directory holding
`exc_det.pkl`:

```bash
cd /tmp/f77
python3 $REPO/python/elimination/make_final_certificate.py \
        --out final_elimination_225.json           # Cerny L3 OFF (default)

python3 $REPO/python/elimination/make_final_certificate.py --with-l3 \
        --out final_elimination_225_with_cernyL3.json   # control
```

The `--with-l3` run is the faithfulness control: its counts must reproduce
`audit_enum.py` exactly (13,003,620 → 42,238 → 24,990 → 9,702 → 2,300 → 121),
and they do. Its case list is identical to the L3-free run, which is why Černý
Lemma 3 is not needed — see `known-issues.md` K-06.

## Regenerating the JSON certificates

```bash
cd /tmp/f77
python3 $REPO/python/classification/export_profiles.py \
        ot7_det.pkl exc_det.pkl $REPO/data
```

Rewrites `data/order_types/order_types_7.json` and
`data/exceptional_profiles/exceptional_profiles_14.json`.

Verify the committed data against its manifest:

```bash
cd $REPO/data && shasum -a 256 -c hashes/SHA256SUMS
```

## What cannot currently be run

See `known-issues.md` K-04 and K-05. In short:

* `python/validation/validate.py` aborts on the missing `best_7_7_3.pkl`. Its
  section 2 (random simple 7-gon pairs; no filter may reject) is self-contained
  and would run if section 1 were skipped, but **the file has not been edited to
  allow that**, because editing research code was out of scope for the
  organizational pass.
* `python/classification/audit_ot.py` parts (a) and (b) need the absent
  `ot7.pkl`. Only part (c) is reachable, via the wrapper.
* Everything in `archive/superseded/python/` needs missing pickles and should
  not be run for results in any case.
* ~~The 225-case endgame (`known-issues.md` K-03), the "Černý L3 is
  unnecessary" experiment (K-06) and Implementation B (K-02) have **no code at
  all** in this repository.~~
  **CORRECTED 2026-09-14 — this bullet was wrong, and it contradicted this same
  file.** All three now have code, and two of the three are exercised by
  sections above:
  * the 225-case endgame (K-03) is generated by
    `python/elimination/make_final_certificate.py` and checked by
    `python/validation/check_final_certificate.py` — both are Tier 4 above;
  * the "Černý L3 is unnecessary" experiment (K-06) is the `--with-l3` control
    run, also Tier 4 above;
  * Implementation B (K-02) is `independent/implementation_b/` — a C++
    reimplementation with `SPEC.md`, `reduction.cpp` and
    `compare_with_certificate.py`.

  What genuinely remains unrunnable is only what K-04 and K-05 describe: the
  three bullets above this one. Note also that Implementation B does **not**
  implement the final avoiding-pair filter, so the `225 → 0` step still has no
  second implementation (K-20).

## Design note: what a referee should have to do

The intended architecture — not yet achieved — is that a referee verifies a
small certificate without rerunning the expensive search:

* **Achieved** for the lower bound: one JSON file, one short script, <1 s, no
  external lemma, no enumeration.
* **Partly achieved** for the upper bound, as of 2026-09-13. The *last* step is
  now a small certificate: 225 cases, each a two-line cyclic-adjacency check,
  verified in under a second by an independent checker (Tier 4). A referee no
  longer has to take "the program returned zero" on faith for that step.
* **Still not achieved** for the enumeration that produces those 225 cases. The
  certificate establishes that each listed case dies, not that the list is
  complete, so a referee who wants completeness must still rerun the
  13,003,620-graph search and trust the same codebase that produced the claim.
* **Achieved differently, 2026-09-17, and this supersedes the bullet above for
  the general-position case.** A referee who accepts the general-position
  hypothesis does not have to rerun anything, or trust any codebase: the upper
  bound is a Lean theorem whose trusted base is the Lean kernel plus Mathlib,
  with no SAT solver, no certificate, no enumeration and no published lemma
  (`ConfigBridge.crossCountC_le_38_of_general_position`). The 225-case list and
  its completeness are no longer part of the chain. What a referee must still
  supply by hand is the general-position reduction itself — which is prose in
  AKR §9 and an unproved aside in AKR §3.

## Method summary

1. **Lower bound.** An explicit pair of integer-coordinate heptagons with 38
   crossings.
2. **Lemma A** (new) shows any non-exceptional heptagon already forces `I ≤ 38`,
   using parity to upgrade `|E| ≥ 10` to `|E| ≥ 11`.
3. Hence `I = 40` forces **both** polygons to be *exceptional*.
4. **Classification.** Crossing sets, simplicity and the avoiding relation are
   Boolean functions of the chirotope, so exceptionality is decided by a finite
   enumeration: 135 order types × 360 cyclic orders → 6,342 simple heptagons →
   exactly 16 exceptional (14 classes). Because only *necessary* realizability
   conditions are imposed, the enumeration is a **superset** of the realizable
   order types — sound for an exclusion theorem, and requiring no realizability
   certificates.
5. **Graph universe.** `I = 40` forces `|E| = 9` with minimum degree 1:
   13,003,620 graphs.
6. **Filters** from Černý et al. Lemmas 1–3 and AKR Lemmas 5, 7 cut this to
   9,702, then class-dependent filters to 0.
7. **Conclusion.** `I = 40` impossible; `I = 42` impossible; `I = 39, 41`
   impossible by parity; with the 38-example, `f(7,7) = 38`.

Steps 1–3 were `MANUALLY CHECKED` when this was written, 4–6 are `VERIFIED BY
EXACT COMPUTATION` but from a single codebase, and the whole of 6 is conditional
on external lemmas. See `verification-status.md`.

> **Update, 2026-09-14 — the Lean development has overtaken this page.** This
> file describes the **Python** method only and does not mention Lean anywhere
> else, which now understates what is machine-checked. Proved in the kernel for
> *every* configuration, not just the certificate pair: `I + |E| = 49`, minimum
> degree ≥ 1, `I ≤ 42`, `I` is even, and that 38 is attained; `I ≠ 42` is proved
> given the exceptional-class invariants. `lake build` → 25 libraries, 1395
> jobs, exit 0, with no project-specific axiom anywhere.
>
> None of that closes the enumeration. `f(7,7) = 38` is **not** a Lean theorem:
> the strongest statement, `IntersectionParity.isGreatest_38_final`, still needs
> the exceptional-class data and `hne40` — and `hne40` is a **settled negative**
> for the kernel (`roadmap.md` §8a–§8d). Everything is at the orientation level
> over `Pt := Int × Int`; the Jordan-curve step and AKR §9.1's general-position
> reduction are not formalized. See `verification-status.md`, which is
> authoritative.

> **Update, 2026-09-17 — the enumeration this page describes is no longer
> needed for the upper bound.** Everything below and above remains a correct
> description of the Python pipeline, and the pipeline still reproduces. What
> changed is that it is no longer load-bearing.
>
> Both branches of the upper bound are now Lean theorems for configurations in
> **general position**, importing **no published lemma** and touching **no**
> enumeration: `ConfigBridge.crossCountC_ne_40`, `crossCountC_ne_42`,
> `crossCountC_le_38_of_general_position`, and
> `isGreatest_38_pointCount` — the last stating that 38 is the greatest number
> of points of `∂P ∩ ∂Q` as a set in `ℝ × ℝ`. It carries one hypothesis,
> `FullGP`. `verification-status.md` rows 41–44; `docs/covering-step.md`.
>
> Four specific corrections to the paragraphs above. (i) `I ≠ 42` **no longer
> needs the exceptional-class invariants** — `crossCountC_ne_42` takes no class
> data at all. (ii) The strongest statement is not
> `IntersectionParity.isGreatest_38_final` but
> `ConfigBridge.isGreatest_38_pointCount`, and it needs neither of that
> theorem's two hypotheses. (iii) "`hne40` is a settled negative for the kernel"
> is scoped to the five routes that tried to kernel-**evaluate** the
> 13,003,620-graph filter pipeline; `hne40` itself is a kernel theorem for
> general position, by a route that evaluates no graph. (iv) "Everything is at
> the orientation level over `Pt := Int × Int`; the Jordan-curve step and AKR
> §9.1's general-position reduction are not formalized" is wrong three times
> over: the strongest statements are about point sets in `ℝ × ℝ`; the Jordan
> curve theorem is neither claimed nor needed (row 29); and the general-position
> citation is **AKR §9 plus §3's unproved clause**, not §9.1 (row 4,
> `docs/akr-9-1-obligation.md`).
>
> The build figure "25 libraries, 1395 jobs" is also two generations stale:
> **1,756** declared libraries (commit `d22c313`); the most recent committed
> full build is **1,755 libraries, 6,518 jobs, exit 0**
> (`results/validation/2026-09-17_verify_all_after_real_config.log`) and
> predates the last two committed modules.
>
> `f(7,7) = 38` is **still not a Lean theorem.** Two things separate the
> development from it: `Config` has **integer** coordinates
> (`RealConfig.exists_integer_model` gives the sign-vector half), and the
> general-position reduction is imported prose (of which
> `RealConfig.exists_near_generic` proves the perturbation-iteration half of
> §3's clause, and AKR §9 is not attempted). *(The integer-coordinate item is
> **closed for the upper bound** as of commit `9b2b926`: `lean/RealUpperBound.lean` (commit `9b2b926`) proves `RealUpperBound.pointsR_le_38 (R : RConfig) : (intersectionPointsR R).ncard ≤ 38` — two simple heptagons with **real** coordinates, in general position, meet in at most **38 boundary points**, `intersectionPointsR R` being `boundaryP R ∩ boundaryQ R` as a genuine set in `ℝ × ℝ` built from Mathlib's `segment ℝ`. It imports **no published lemma**. **This closes the integer-coordinate item outright for the upper bound.** Two caveats remain and both are in the file: there is no attaining example and no `IsGreatest` at the real level, so this is the upper bound alone; and `Set.ncard` is `0` on infinite sets, so the statement says nothing about boundaries sharing a segment — general position excludes that, but any weakening of it must re-examine the point. No committed `verify-all` log covers the module. `verification-status.md` row 46.)* `verification-status.md`
> is authoritative.
