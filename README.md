# Heptagon Intersection Project

A computer-assisted investigation of `f(7,7)`, the smallest open case of the
Dillencourt–Mount–Saalfeld conjecture on intersections of two simple polygons.

> **Status: candidate computer-assisted proof that `f(7,7) = 38`, undergoing
> independent verification and Lean formalization.**
>
> This is **not** a peer-reviewed result, and it has not been reviewed by any
> expert outside the AI-assisted development process.
>
> Several components **are** now formally verified in Lean, and the finite
> reduction has been independently reimplemented in a second language — but
> `f(7,7) = 38` is **not** a Lean theorem, and the interpretation of AKR
> Observation 6 / Lemma 7 remains an open review item. See
> [`docs/verification-status.md`](docs/verification-status.md) and
> [`paper/proof-manifest.tex`](paper/proof-manifest.tex) before citing or relying
> on anything here.

## Problem

For simple polygons `P` and `Q` with `m` and `n` sides in general position, let
`I(P,Q)` be the number of points where their boundaries meet, and let `f(m,n)`
be the maximum of `I(P,Q)`. The even cases were settled by Dillencourt, Mount
and Saalfeld in 1993; the odd–odd case is conjectured to be
`f(m,n) = mn − m − n + 3` and remains open in general.

For `m = n = 7` the conjecture predicts **38**. The published bounds are
`38 ≤ f(7,7) ≤ 40`, and `39` is excluded by parity — two closed curves in
general position cross an even number of times. **The entire question is
whether 40 is attainable.** Černý et al. (2003) explicitly flag `k = l = 7` as
open, and the Ackerman–Keszegh–Rote (2022) bound, while asymptotically optimal,
is vacuous at `m = n = 7`.

## Current claim

> This repository contains a **candidate computer-assisted proof that
> `f(7,7) = 38`**. The argument is undergoing independent verification and Lean
> formalization.

Two halves, with very different levels of support:

* **`f(7,7) ≥ 38`** — established. An explicit pair of integer-coordinate
  heptagons with 38 crossings, verifiable in under a second with no external
  lemma and no enumeration.
* **`f(7,7) ≤ 38`** — candidate. A finite case analysis that reproduces exactly,
  but is conditional on external lemmas and has only ever been run from a single
  Python codebase written in one LLM-assisted session.

## High-level proof idea

1. **Lower bound.** An explicit 38-crossing construction.
2. **Lemma A (new).** If some set `S` of sides of `P` is *uncrossable* — no line
   disjoint from `V(P)` meets all of `S` — then `|E| ≥ n + (m − |S|)`. For
   `|S| = 4` this gives `|E| ≥ 10`, and since `I` is even, `|E|` is odd, so
   `|E| ≥ 11` and `I ≤ 38`. So any *non-exceptional* heptagon already forces the
   desired bound.
3. **Reduction.** A hypothetical 40-intersection configuration therefore
   requires **both** polygons to be *exceptional* (no uncrossable 4-set).
4. **Classification.** Exceptionality is a Boolean function of the chirotope, so
   it is decided by a finite enumeration: 135 order types of 7 points × 360
   cyclic orders → 6,342 simple heptagons → exactly **16 exceptional** (14
   classes up to symmetry). Only *necessary* realizability conditions are
   imposed, so the enumeration is a **superset** of realizable order types —
   sound for an exclusion theorem, and requiring no realizability certificates.
5. **External necessary conditions.** Published lemmas of **Černý et al.**
   (Lemmas 1–3) and **Ackerman–Keszegh–Rote** (Lemmas 5, 7) constrain the finite
   graph search. `I = 40` forces `|E| = 9` with minimum degree 1: 13,003,620
   bipartite graphs, cut to 9,702.
6. **Elimination.** Class-dependent filters reduce the survivors to **zero**,
   for each of the 196 ordered pairs of exceptional classes, under three
   different representative labellings. Exactly **225** (class-pair, graph)
   combinations reach the final filter, and each is refuted by AKR Lemma 5 on an
   avoiding pair — all 225 ship as a checkable certificate.
7. **Formalization and reproduction** are ongoing, and incomplete.

**New in this work:** Lemma A; the exceptional classification; the
the "`H` is bipartite"
reformulation of AKR Lemma 7; the extension of AKR Lemma 5 to avoiding pairs;
the final elimination.

**External, imported as black boxes:** Černý et al. Lemmas 1 and 2, and AKR
Lemmas 5 and 7. (Černý Lemma 3 was shown redundant on 2026-09-13 — see
`docs/known-issues.md` K-06 — so the dependency list is four lemmas, not five.) Their statements and applicability were checked; **their internal
proofs were not re-verified here.** The translations of AKR Lemmas 5 and 7 into
combinatorial filters are the least secure steps in the argument — see
[`docs/known-issues.md`](docs/known-issues.md) K-09.

## Repository map

| Path | Contents |
|---|---|
| `docs/` | Mathematical exposition and project status. Start with `verification-status.md`. |
| `python/` | Active computational source. `core/` (exact predicates, chirotope enumeration), `classification/`, `elimination/`, `validation/`. |
| `lean/` | Formalization. **Seven files, all compiling** (`lake build`, 752 jobs); four import literally nothing, two import only in-directory, one uses Mathlib. See `lean/README.md`. |
| `data/` | Generated mathematical data and certificates: order types, exceptional profiles, the lower-bound certificate, the 225-case endgame certificate, SHA-256 manifests. |
| `results/` | Reproduction logs, filter counts, validation output from the 2026-09-13 run. |
| `independent/` | Implementation B: an independent C++ reimplementation of the finite reduction, written from a written specification. |
| `transcripts/` | Unmodified LLM session transcripts, kept as provenance. |
| `archive/superseded/` | The earlier pipeline, including a file with a documented defect. Preserved, not deleted. Do not cite. |

Key documents:

* [`docs/verification-status.md`](docs/verification-status.md) — **authoritative** trust status, claim by claim.
* [`docs/known-issues.md`](docs/known-issues.md) — every open gap, numbered.
* [`docs/proof-outline.md`](docs/proof-outline.md) — the argument in theorem/lemma form.
* [`docs/computational-method.md`](docs/computational-method.md) — method and reproduction guide.
* [`docs/audit-report.md`](docs/audit-report.md) — the project's adversarial self-audit.
* [`docs/literature-notes.md`](docs/literature-notes.md) — sources and imported lemmas.
* [`docs/lean-architecture.md`](docs/lean-architecture.md) — the planned formalization.
* [`docs/ai-disclosure.md`](docs/ai-disclosure.md) — how this work was produced.

## Verification status

See **[`docs/verification-status.md`](docs/verification-status.md)** for the
full table. In brief:

| | |
|---|---|
| Verified in Lean | 38-crossing construction; Lemma A counting + parity; all 225 endgame cases; the AKR-L5 bridge as an `iff` |
| Verified by exact computation | lower bound; order types; classification; graph enumeration; the full elimination pipeline |
| Manually checked (prose only) | parity |
| Superseded — known defect | the project's own Step 0 general-position argument (incorrect; replaced by a citation to AKR §9.1) |
| **Open review item** | **AKR Observation 6 / Lemma 7 and the `H`-bipartite deduction** — see [`docs/akr-l7-human-review.md`](docs/akr-l7-human-review.md) |
| External published lemmas | Černý L1–L3, AKR L5, L7 — statements checked, proofs not re-verified |
| Reproduced by a second implementation | the finite graph/profile reduction, exact 225-triple set match (C++, different enumeration) |
| Needs independent reproduction | the order-type enumeration and exceptional classification; the upper bound as a whole |
| Not present at all | Implementation B; six of the eight planned Lean files |

## Reproducibility

No third-party packages are required — the standard library only. There is
deliberately no `requirements.txt`, because there are no versions to pin.

**Quickest meaningful check (under a second)** — the lower bound, standalone,
independent of every external lemma:

```bash
export REPO=$PWD
export PYTHONPATH=$REPO/python/core
python3 python/validation/check_lower_bound.py
```

**Check the endgame certificate (under a second)** — verifies all 225 final
cases of the upper-bound argument with an independent checker:

```bash
python3 python/validation/check_final_certificate.py \
        data/certificates/final_elimination_225.json
```

**Quick validation (about 15 seconds)** — adds the order-type enumeration and
the exceptional classification:

```bash
mkdir -p /tmp/f77 && cd /tmp/f77
python3 $REPO/python/core/chiro.py
python3 $REPO/python/classification/make_exceptional_profiles.py
```

**Independent reduction, Implementation B (about 2 seconds)** — a separate C++
codebase that reproduces the reduction and the exact 225-case set:

```bash
cd independent/implementation_b
c++ -O2 -std=c++17 -o reduction reduction.cpp
./reduction --test profiles.txt                      # 23 unit tests
./reduction profiles.txt implementation_b_output.json
python3 compare_with_certificate.py
```

**Full elimination (about 6.5 minutes)**:

```bash
cd /tmp/f77
python3 $REPO/python/elimination/audit_enum.py 7
python3 $REPO/python/elimination/audit_enum.py 8
python3 $REPO/python/elimination/audit_enum.py 9

# audit_pairs.py reads audit_enum.py from the working directory
cp $REPO/python/elimination/audit_enum.py .
python3 $REPO/python/elimination/audit_pairs.py
```

Full details, expected output and the parts that **cannot** currently be run are
in [`docs/computational-method.md`](docs/computational-method.md).

## AI-assisted research disclosure

Substantial portions of the exploration, code generation, proof development,
auditing, and formalization assistance in this project were performed using
**Claude** (Anthropic) and **ChatGPT** (OpenAI). The organization of this
repository was itself performed by Claude.

LLM output is not treated as authoritative here. Full session transcripts are
preserved in `transcripts/` as provenance — they record where ideas came from,
including false starts and self-corrections, but a claim in a transcript has no
verified status. **Human verification is ongoing and, at present, largely
incomplete.** See [`docs/ai-disclosure.md`](docs/ai-disclosure.md).

## Citation and status warning

**This repository should not be cited as a peer-reviewed proof of
`f(7,7) = 38`**, and should not be described as having settled the case, unless
and until its status changes.

If you refer to this work in the meantime, describe it as a *candidate
computer-assisted proof undergoing verification*, and cite the specific commit
you examined. `CITATION.cff` carries the same warning in machine-readable form.

The lower bound `f(7,7) ≥ 38` may be cited as verified computation; it is also
not new — the construction realizes the known Dillencourt–Mount–Saalfeld lower
bound.

## License

Code and documentation in this repository are released under the MIT License
(see `LICENSE`). The preserved transcripts in `transcripts/` are a record of
research provenance rather than licensed software; see `transcripts/README.md`.
