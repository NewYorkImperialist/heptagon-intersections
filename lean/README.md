# Lean formalization

> **Current state: five files, all compiled clean with `lake build` on
> Lean 4.33.1.** Read the scope notes below before extrapolating: what is
> kernel-checked is the explicit integer certificate, the combinatorial
> counting reduction, and the finite 225-case endgame — *not* the full
> `f(7,7) = 38` theorem, and not the geometric passage from orientation
> predicates to point-set statements.

## The three statuses that must never be conflated

1. **Theorem proved from Mathlib / kernel foundations.** Compiles, no `sorry`,
   no project-specific `axiom`. Trust rests on Lean's kernel and Mathlib.
   → `LowerBound.lean` and `LemmaA.lean` now have this status, *for the
   statements they actually make*.
2. **Theorem proved conditional on explicit axioms.** Compiles and is
   `sorry`-free, but depends on `axiom` declarations standing in for
   unformalized mathematics.
   → Nothing here has this status; no file declares an `axiom`.
3. **Unfinished theorem with `sorry`.** Not a proof at all.
   → Nothing here has this status.

The five published lemmas, the exceptional classification, the elimination step
and the assembly into `f 7 7 = 38` are **not formalized at all**. See
`../docs/lean-architecture.md`.

## What is here

| File | `sorry` | `axiom` | `native_decide` | Compiles? | Depends on |
|---|---|---|---|---|---|
| `LowerBound.lean` | none | none | none | **yes** | core Lean only |
| `LemmaA.lean` | none | none | none | **yes** | Mathlib `v4.33.1` |

### `LowerBound.lean` — the explicit `f(7,7) ≥ 38` certificate

Core Lean only: it imports **nothing**, so it can be checked with a bare
`lean LowerBound.lean` against an empty `LEAN_PATH`, in about 2.5 seconds. Every
proof is `by decide`, i.e. kernel reduction of exact `Int` arithmetic. There is
no Mathlib in its trust base.

Coordinates are transcribed from `../data/lower_bound/lower_bound_38.json` and
were checked to match it character for character.

Main theorems:

* `P_vertices_distinct`, `Q_vertices_distinct`
* `P_no_three_collinear`, `Q_no_three_collinear` — no three of the seven
  vertices of either heptagon are collinear
* `P_consecutive_sides_not_collinear`, `Q_consecutive_sides_not_collinear`
* `P_nonadjacent_no_proper_cross`, `Q_nonadjacent_no_proper_cross`
* `P_simple`, `Q_simple` — the conjunction of the four clauses above
* `no_Q_vertex_on_P_side_line`, `no_P_vertex_on_Q_side_line`,
  `general_position` — all four orientation determinants of every one of the 49
  (P-side, Q-side) pairs are nonzero
* `allPairs_length` / `allPairs_nodup` / `allPairs_complete` — the index list the
  count runs over really is all 49 pairs, each exactly once
* `crossing_count_eq_38` — `crossCount = 38`
* `per_P_side_counts` — the per-side breakdown `[6,6,6,6,6,6,2]`
* `disjoint_count_eq_11`, `crossCount_add_disjointCount` (`38 + 11 = 49`)

**Scope note.** Everything is stated at the level of orientation predicates on
integer coordinates. `P_simple` proves the *orientation-level* simplicity data
(distinct vertices, no three collinear, consecutive sides non-collinear, no
proper crossing of non-adjacent sides). The standard inference from that data to
"the closed polygonal curve is a simple closed curve in ℝ²", and from "properly
crossing" to "the closed segments meet in exactly one interior point", are
**not** formalized here.

### `LemmaA.lean` — the counting reduction

Rewritten from the earlier skeleton, which had never been submitted to the
elaborator and carried six `-- CHECK` markers on Mathlib lemma names. Nothing
about that earlier version was ever verified; the surviving statements are
`card_E_ge`, `card_E_ge_eleven` and `crossings_le_38`, reproved from scratch.
The proof no longer uses `choose`: both halves of the count come from
`Finset.card_le_card_of_surjOn` applied to the two coordinate projections.

Main theorems:

* `card_E_ge` — if every `Q`-side is disjoint from some `P`-side in `S`, and
  every `P`-side outside `S` is disjoint from some `Q`-side, then
  `n + (m - |S|) ≤ |E|`
* `card_E_ge_ten` — specialised to `m = n = 7`, `|S| = 4`: `10 ≤ |E|`
* `ge_eleven_of_ge_ten_of_odd`, `card_E_ge_eleven` — the parity upgrade
* `crossings_le_38` — with `I + |E| = 49`, conclude `I ≤ 38`

The geometric content sits in the hypotheses `h1`, `h2`, `hpar` and `hIE`, which
are **not** discharged for a general pair of heptagons. That is the intended
division of labour, but it means this file proves an implication, not `I ≤ 38`.

**Non-vacuity.** `Rcert` instantiates `R` with the actual disjointness relation
of the two explicit heptagons of `LowerBound.lean` and `Scert = {0,1,3,6}`.
`Rcert_h1`, `Rcert_h2`, `Rcert_odd` and `Rcert_card_E : |E| = 11` are all proved
by `decide`, so the hypotheses are simultaneously satisfiable and the bound
`|E| ≥ 11` is tight (`nonvacuous`, `cert_I_le_38`).
`hypotheses_are_restrictive` shows the empty relation fails `h1` and has
`|E| = 0`, so the hypotheses are doing real work.

## Building

```
export PATH="$HOME/.elan/bin:$PATH"
cd lean
lake build        # both libraries; requires Mathlib for LemmaA
```

Mathlib is fetched by `lake update` from the tag `v4.33.1`
(rev `0df444a360eaa60ab8c11dca51a86af692955474`) with prebuilt `.olean` files, so
no Mathlib source compilation is needed.

`LowerBound.lean` can also be checked in isolation with no dependencies at all:

```
LEAN_PATH= lean lean/LowerBound.lean
```

Toolchain: `leanprover/lean4:v4.33.1`.

## Axioms

`#print axioms` for every main theorem:

| theorem | axioms |
|---|---|
| `LowerBound.P_simple` | `propext` |
| `LowerBound.Q_simple` | `propext` |
| `LowerBound.general_position` | `propext` |
| `LowerBound.crossing_count_eq_38` | `propext` |
| `LemmaA.card_E_ge` | `propext, Classical.choice, Quot.sound` |
| `LemmaA.card_E_ge_eleven` | `propext, Classical.choice, Quot.sound` |
| `LemmaA.crossings_le_38` | `propext, Classical.choice, Quot.sound` |
| `LemmaA.nonvacuous` | `propext, Classical.choice, Quot.sound` |

Only the three standard Lean axioms appear; no project-specific axiom exists.

## What is designed but not written

`../docs/lean-architecture.md` lays out seven files in dependency order. Five
still do not exist.

| # | File | Contents | Present? |
|---|---|---|---|
| 0 | `LowerBound.lean` | explicit 38-crossing certificate | **yes, compiles** |
| 1 | `LemmaA.lean` | abstract counting lemma + parity upgrade | **yes, compiles** |
| 2 | `Model.lean` | `DGraph`, degrees, components, `L3cond`/`L5consec`/`HBip` | no |
| 3 | `Imported.lean` | Černý L1–L3 and AKR L5, L7 as `axiom`s | no |
| 4 | `Profiles.lean` | `structure Profile` + the 14-entry `ExcTable` | no |
| 5 | `Classification.lean` | the classification, axiomatic at first | no |
| 6 | `Elimination.lean` | the decisive finite theorem | no |
| 7 | `Main.lean` | assembly: `f 7 7 = 38` | no |

## Two design constraints from the architecture document

**Shrink analytically before any decision procedure.** A naive `decide` over
13,003,620 graphs is far beyond kernel reduction, and `native_decide` would put
the whole result on the compiler's trust base — unacceptable for a result whose
entire purpose is to be checkable. Nothing in this directory uses
`native_decide`, and nothing should.

**State the classification as an inclusion, never an equality.** The enumeration
imposes only *necessary* realizability conditions, so what it proves is

> every exceptional simple 7-gon's profile occurs in `ExcTable`, up to dihedral
> relabelling

and that is all an exclusion theorem needs.


## The 225-case endgame (`EndgameDefs.lean`, `EndgameData.lean`, `Endgame.lean`)

Like `LowerBound.lean`, these three files import **nothing** outside themselves:
core Lean only, no Mathlib, no Batteries. They compile with bare
`lean` and `LEAN_PATH` pointing at their own build directory. Every proof is an
ordinary `decide`/`rfl`, i.e. a kernel reduction; the only axioms reached are
`propext` and `Quot.sound` (notably **not** `Classical.choice`).

* `EndgameDefs.lean` — side indices mod 7, 7-bit neighbourhood bitmasks,
  cyclic adjacency, the bipartite disjointness graph and its connectivity
  relation `Conn`, the `Case` record, and the two forms of the AKR Lemma 5
  requirement (`AKR5Conclusion`, the lemma's literal conclusion, and
  `AKR5Adjacent`, the neighbourhood-difference condition the search code tests).
  `akr5Conclusion_iff_adjacent` proves they are equivalent.
* `EndgameData.lean` — **generated**, do not edit. Produced deterministically by
  `gen_endgame_data.py` from `data/certificates/final_elimination_225.json`.
* `Endgame.lean` — the theorems. Headline:
  `all_225_cases_fail_AKR5_requirement` and
  `all_225_cases_fail_AKR5_conclusion`.

Regenerate and check the data with

```
python3 lean/gen_endgame_data.py --stdout | diff - lean/EndgameData.lean
```

### Scope

What is proved is: *given* the 225 records of the certificate, and *given* AKR
Lemma 5, all 225 are impossible. What is **not** proved: AKR Lemma 5 itself
(external, geometric); that the stored pairs are geometrically *avoiding* (only
the necessary combinatorial part — distinct and not cyclically consecutive — is
recomputed); and **completeness of the 225-case list**, which rests entirely on
the unformalised enumeration upstream. `sepP`/`sepQ` are derived data, not JSON
fields, and are not trusted: the kernel re-checks that they are closed under
adjacency, which is what makes "the two sides lie in different components" a
theorem (`all_225_pairs_in_different_components`) rather than an assumption.

Non-vacuity is checked inside Lean: `akr5_not_vacuous` shows that 2016 of the
225 × 21 = 4725 side pairs of these very graphs *do* satisfy the condition, and
`case0_contrast` exhibits one graph where the stored pair fails it while another
pair of the same graph satisfies it.
