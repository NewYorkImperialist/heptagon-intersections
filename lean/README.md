# Lean formalization

> **Current state: one file, never compiled. Nothing in this project is
> formally verified.**

## The three statuses that must never be conflated

When reading anything in this repository about Lean, insist on knowing which of
these applies:

1. **Theorem proved from Mathlib / kernel foundations.** Compiles, no `sorry`,
   no project-specific `axiom`. Trust rests on Lean's kernel and Mathlib.
   → **Nothing here has this status.**
2. **Theorem proved conditional on explicit axioms.** Compiles and is
   `sorry`-free, but depends on `axiom` declarations standing in for
   unformalized mathematics (here: the five published lemmas, and initially the
   exceptional classification). This is a genuine Lean proof *of an implication*,
   and must never be described as kernel-verified.
   → **Nothing here has this status yet**; it is what `Main.lean` would reach first.
3. **Unfinished theorem with `sorry`.** Not a proof at all.
   → Plus a fourth case, which is what this directory actually contains:
   **never submitted to the elaborator.**

## What is here

| File | `sorry` | `axiom` | Compiles? | Status |
|---|---|---|---|---|
| `LemmaA.lean` | none | none | **unknown — never attempted** | skeleton |

`LemmaA.lean` states the new counting lemma in purely combinatorial form (no
geometry), together with the parity upgrade and the restatement as `I ≤ 38`:

* `card_E_ge` — the abstract bipartite counting lemma;
* `card_E_ge_eleven` — the parity upgrade from `|E| ≥ 10` to `|E| ≥ 11`;
* `crossings_le_38` — restated via `I + |E| = 49`.

All geometry is deliberately confined to discharging the hypotheses `h1` and
`h2` at the call site, which is the right design and makes this file the natural
place to start.

### Why "no `sorry`" does not mean "verified"

`LemmaA.lean` contains no `sorry`, no `axiom`, no `admit` and no
`native_decide` — confirmed by grep. It has nonetheless **never been compiled**:

* there is no `lakefile.lean` / `lakefile.toml`;
* there is no `lean-toolchain`;
* Mathlib is not vendored or declared as a dependency;
* there are no build artifacts and no build log;
* no Lean toolchain was installed in the environment where this repository was
  organized, so compilation could not even be attempted.

Its own header reads `Status: skeleton. Mathlib lemma names marked -- CHECK may
need adjusting`, and **six** proof steps carry `-- CHECK` markers on lemmas the
author was unsure of (`disjoint_filter_filter'`, `card_le_card_of_injOn`,
`card_compl`, `card_union_of_disjoint`, and a dependent-`choose` step). For a
file that has never been through the elaborator, absence of `sorry` carries no
information.

There is also an unresolved contradiction in the research record: the session
transcript says *"The Lean files are skeletons with `sorry`s in the places I
flagged"*, but this file has none. The likely explanation is that the remark
referred to the six files below, which were never delivered. See
`../docs/known-issues.md` K-08.

## What is designed but not written

`../docs/lean-architecture.md` lays out seven files in dependency order. Six do
not exist. The transcript refers to some of them as living in a `/heptagon/lean/`
directory; they are not in these materials.

| # | File | Contents | Present? |
|---|---|---|---|
| 0 | `LowerBound.lean` | 38 crossings for explicit integer coordinates: 49 segment-crossing tests + 21+21 simplicity tests, all `decide` on `ℤ` determinants | **no** |
| 1 | `LemmaA.lean` | abstract counting lemma + parity upgrade | **yes** (uncompiled) |
| 2 | `Model.lean` | `DGraph := Fin 7 → Fin 7 → Bool`; edges, degrees, components, `L3cond`/`L5consec`/`HBip` as `DecidablePred` | **no** |
| 3 | `Imported.lean` | Černý L1–L3 and AKR L5, L7 as `axiom`s | **no** |
| 4 | `Profiles.lean` | `structure Profile` + the 14-entry `ExcTable` as literal data | **no** |
| 5 | `Classification.lean` | the classification, axiomatic at first | **no** |
| 6 | `Elimination.lean` | the decisive finite theorem | **no** |
| 7 | `Main.lean` | assembly: `f 7 7 = 38` | **no** |

### Recommended order

1. **`LowerBound.lean` first.** Pure `decide` on integer determinants, no
   Mathlib subtleties, gives the lower bound outright. The data it needs is
   already verified and committed at `../data/lower_bound/lower_bound_38.json`.
2. **`LemmaA.lean`** — fix the six `-- CHECK` Mathlib names and get it to
   compile. Small, no geometry.
3. **The three shrinking lemmas** destined for `Elimination.lean`, which are
   what make the final decision procedure feasible at all.

## Two design constraints from the architecture document

**Shrink analytically before any decision procedure.** A naive `decide` over
13,003,620 graphs is far beyond kernel reduction, and `native_decide` would put
the whole result on the compiler's trust base — unacceptable for a result whose
entire purpose is to be checkable. The architecture document proves three
reductions first (degree sequences are `(3,1⁶)` or `(2,2,1⁵)`; `compat`
collapses to `N(q_j) ∩ M_P ≠ ∅`; the two sides outside `M_P` have degree 1),
cutting the space to a few thousand graphs per class pair.

The structural facts these reductions rest on were independently re-derived
during repository organization and are recorded in
`../data/exceptional_profiles/exceptional_profiles_14.json`: every one of the 14
classes has `|M| = 5` and exactly **five maximal crossing sets, all of size 6**.

**State the classification as an inclusion, never an equality.** The enumeration
imposes only *necessary* realizability conditions, so what it proves is

> every exceptional simple 7-gon's profile occurs in `ExcTable`, up to dihedral
> relabelling

and that is all an exclusion theorem needs. Do **not** state "the realizable
order types are exactly these 135" — that is a strictly stronger claim requiring
realizability certificates, and it is used nowhere.

## Building

There is nothing to build. When a toolchain is added, the usual invocation would
be `lake build` — but **no `lake build` has ever been run in this project**, and
no claim about what would happen is made here.
