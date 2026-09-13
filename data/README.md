# Generated mathematical data and certificates

This directory holds machine-checkable data kept deliberately separate from
source code. Everything here is **generated**, but generated data is the
auditable content of this project and is committed on purpose — see the note at
the bottom of `../.gitignore`.

## Canonical vs. regenerable

| File | Kind | Regenerable? |
|---|---|---|
| `lower_bound/lower_bound_38.json` | **canonical input** | **No.** The coordinates are the primary artifact of the lower bound. Everything else in the file is verified output. |
| `order_types/order_types_7.json` | regenerable certificate | Yes — `core/chiro.py` + `classification/export_profiles.py`, ~10 s. |
| `exceptional_profiles/exceptional_profiles_14.json` | regenerable certificate | Yes — same, ~12 s total. |
| `hashes/SHA256SUMS` | manifest | Yes — see below. |

Nothing in this directory is expensive to rebuild. The expensive artifact — the
9,702 survivor set and the final elimination — is **not** stored here, because
the shipped code does not emit it in a serialized form. See
`../docs/known-issues.md` K-03 and K-07.

## Contents

### `lower_bound/lower_bound_38.json`

The explicit 38-crossing construction. Coordinates transcribed verbatim from §6
of the superseded `../archive/superseded/REPORT.md`, which is their source of
record. The `verified` block records ten properties confirmed by exact integer
arithmetic on 2026-09-13.

Check it in under a second:

```bash
PYTHONPATH=../python/core python3 ../python/validation/check_lower_bound.py
```

This is the only claim in the repository that is fully established, and the only
one a referee can confirm without trusting any external lemma.

### `order_types/order_types_7.json`

The 135 order-type representatives on 7 elements, as chirotope sign vectors over
the 35 lexicographically ordered triples. Regenerated deterministically by
`core/chiro.py`.

A **superset** of the realizable order types: only the necessary
Grassmann–Plücker and Radon sign conditions are imposed. That is sound for an
exclusion theorem and is all the proof uses. The count matches the published
Aichholzer–Aurenhammer–Krasser figure, which is corroboration of the enumeration.

### `exceptional_profiles/exceptional_profiles_14.json`

The 14 exceptional simple-heptagon classes — those in which **no** 4-subset of
sides is uncrossable. Per class: the canonical chirotope, the `M` set, the
Lemma-2 windows, the avoiding pairs, and the maximal crossing sets.

**Read as an inclusion, never an equality:** every exceptional 7-gon's profile
occurs here up to dihedral relabelling.

Structural invariants re-derived on 2026-09-13 and recorded in the file, all
confirming the claims the Lean architecture depends on:

* every class has `|M| = 5`;
* every class has exactly **five** maximal crossing sets, **all of size 6**;
* every class has exactly 2 avoiding pairs, except class 7 which has **0**.

### `hashes/SHA256SUMS`

SHA-256 digests of the committed JSON certificates. Verify with:

```bash
cd data && shasum -a 256 -c hashes/SHA256SUMS
```

Transcripts are deliberately **not** hashed — they are large, they are preserved
verbatim under version control anyway, and a digest would add nothing.

> **These digests are new (2026-09-13) and do NOT correspond to the two SHA-256
> values quoted in `../docs/proof-outline.md`** (`451cd2…` for the survivor set,
> `dabf1f…` for the 14-class profile table). The serialization that produced
> those is not recorded anywhere in the surviving materials, so they cannot be
> checked, and no claim of agreement is made. See `../docs/known-issues.md`
> K-07.

## What is missing

Not present, and not reconstructible from the shipped code:

* the 9,702-survivor set in serialized form;
* the **225** final (class-pair, graph) combinations — the most valuable missing
  artifact, since each is a two-line check a referee could confirm by hand
  (K-03);
* `ot7.pkl`, the 135 random point realizations (K-04);
* `best_7_7_*.pkl`, the 38-crossing search output (K-05).

## A note on pickles

The intermediate `ot7_det.pkl` and `exc_det.pkl` are Python pickles and are
**not** committed: they are machine-specific binaries, they rebuild in seconds,
and unpickling untrusted data is unsafe. The durable certificates here are JSON
instead.
