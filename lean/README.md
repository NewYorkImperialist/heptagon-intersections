# Lean formalization

> **Current state: seven Lean sources, all compiled clean with `lake build` on
> Lean 4.33.1 (752 jobs, exit 0).** Read the scope notes below before
> extrapolating. What is kernel-checked is the explicit integer certificate, the
> combinatorial counting reduction, the finite 225-case endgame *as a statement
> about a stored certificate*, one purely logical bridge lemma, and a Lean
> transcription of one filter predicate — *not* the full `f(7,7) = 38` theorem,
> not the geometric passage from orientation predicates to point-set statements,
> and not anything about polygons in the endgame files.

## The three statuses that must never be conflated

1. **Theorem proved from Mathlib / kernel foundations.** Compiles, no `sorry`,
   no project-specific `axiom`. Trust rests on Lean's kernel and Mathlib.
   → All seven files have this status, *for the statements they actually
   make* — which in several cases is much narrower than the name of the file
   suggests. Check the scope note at the top of each file before quoting it.
2. **Theorem proved conditional on explicit axioms.** Compiles and is
   `sorry`-free, but depends on `axiom` declarations standing in for
   unformalized mathematics.
   → Nothing here has this status; no file declares an `axiom`.
3. **Unfinished theorem with `sorry`.** Not a proof at all.
   → Nothing here has this status.

The five published lemmas, the exceptional classification, the elimination step
and the assembly into `f 7 7 = 38` are **not formalized at all**. `Endgame.lean`
proves things about a *stored certificate*, not about polygons;
`Lemma7Bridge.lean` proves one purely logical implication with the geometric
input as an explicit hypothesis; `CernyL2Interface.lean` certifies a Lean
*transcription* of one filter predicate, not the Python/C++ implementations. See
`../docs/lean-architecture.md`.

## What is here

**Updated 2026-09-13.** Seven Lean sources build (`lake build`, 752 jobs).
Per-file trust summary:

| File | `import` line(s) | `autoImplicit false`? | Axioms | Proves |
|---|---|---|---|---|
| `LowerBound.lean` | **none** | no | `propext` | 38 crossings; simplicity; general position; counted over provably all 49 pairs |
| `LemmaA.lean` | 4 × Mathlib + `LowerBound` | **yes** | `propext`, `Classical.choice`, `Quot.sound` | counting + parity ⟹ `I ≤ 38`, as an implication; non-vacuity |
| `EndgameDefs.lean` | **none** | no | at most `propext`, `Quot.sound` | bitmasks, `Conn`, separator lemmas; `AKR5Conclusion ↔ AKR5Adjacent` and `conn_symm` are axiom-free |
| `EndgameData.lean` | `EndgameDefs` | no | — (generated data, no theorems) | the 225 records, transcribed by `gen_endgame_data.py` |
| `Endgame.lean` | `EndgameData` | no | `propext`, `Quot.sound` | properties of the **stored certificate**: component separation recomputed in-kernel, and failure of the AKR-L5 conclusion. **Not a statement about polygons** |
| `Lemma7Bridge.lean` | **none** | **yes** | **none at all** (except the one classical corollary, below) | non-empty + disjoint status sets ⟹ `H` bipartite; both-status vertices *proved* isolated. AKR L7 is a **hypothesis**, never an axiom |
| `CernyL2Interface.lean` | **none** | **yes** | `propext`, `Classical.choice`, `Quot.sound` | the **Lean transcription** of the Černý-L2 filter fires **iff** an exact induced perfect matching exists |

Reading the import column: four files (`LowerBound`, `EndgameDefs`,
`Lemma7Bridge`, `CernyL2Interface`) import *nothing at all* and compile with a
bare `lean` and an empty `LEAN_PATH`. `EndgameData` and `Endgame` import only
files from this directory, so the endgame group as a whole is core-Lean-only.
Only `LemmaA.lean` reaches Mathlib.

Reading the `autoImplicit` column: three files set
`set_option autoImplicit false` — `LemmaA.lean`, `Lemma7Bridge.lean` and
`CernyL2Interface.lean`. The other four do **not**; they rely on all binders
being explicitly bound, which is easy to satisfy because they are written
entirely in terms of `Nat` literals and concrete structures, but the guard that
caught the earlier `Odd` defect in `LemmaA.lean` is not switched on in them.
`Endgame.lean` additionally sets `maxRecDepth 100000` and
`linter.unusedVariables false`; no other file sets any option.

No `sorry`, `admit`, project `axiom`, `unsafe`, `native_decide` or `partial` in
any file (verified by scanning with comments stripped).
`f(7,7) = 38` is **not** a Lean theorem.

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
lake build        # all seven libraries; requires Mathlib for LemmaA only
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

`#print axioms` output, verbatim, for every principal theorem
(Lean 4.33.1, Mathlib `v4.33.1`):

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
| `Endgame.card_certificates` | *does not depend on any axioms* |
| `Endgame.akr5Conclusion_iff_adjacent` (in `EndgameDefs.lean`) | *does not depend on any axioms* |
| `Endgame.akr5_not_vacuous` | `propext` |
| `Endgame.keys_distinct` | `propext, Quot.sound` |
| `Endgame.all_graphs_have_shape` | `propext, Quot.sound` |
| `Endgame.all_witnesses_consistent` | `propext, Quot.sound` |
| `Endgame.all_225_pairs_in_different_components` | `propext, Quot.sound` |
| `Endgame.all_225_neighbourhoods_disjoint` | `propext, Quot.sound` |
| `Endgame.all_225_cases_fail_AKR5_requirement` | `propext, Quot.sound` |
| `Endgame.all_225_cases_fail_AKR5_conclusion` | `propext, Quot.sound` |
| `Endgame.endgame_summary` | `propext, Quot.sound` |
| `Lemma7Bridge.adj_irrefl` | *does not depend on any axioms* |
| `Lemma7Bridge.isolated_of_both` | *does not depend on any axioms* |
| `Lemma7Bridge.statusIs_of_adj` | *does not depend on any axioms* |
| `Lemma7Bridge.opposite_of_adj` | *does not depend on any axioms* |
| `Lemma7Bridge.disjoint_statuses_imply_bipartite` | *does not depend on any axioms* |
| `Lemma7Bridge.disjoint_statuses_imply_bipartite'` | *does not depend on any axioms* |
| `Lemma7Bridge.Example.bipartite` | *does not depend on any axioms* |
| `Lemma7Bridge.Example.tri_not_bipartite` | *does not depend on any axioms* |
| `Lemma7Bridge.Example.tri_no_status_assignment` | *does not depend on any axioms* |
| **`Lemma7Bridge.disjoint_statuses_imply_bipartite_classical`** | **`propext, Classical.choice, Quot.sound`** |
| `CernyL2.l2FiresB_iff` | `propext, Classical.choice, Quot.sound` |
| `CernyL2.l2OkB_iff` | `propext, Classical.choice, Quot.sound` |
| `CernyL2.test_matching_detected` | `propext` |
| `CernyL2.test_extraEdge_notDetected` | `propext` |
| `CernyL2.test_outsideEdge_detected` | `propext` |
| `CernyL2.test_extraEdge_noPattern` | `propext, Classical.choice, Quot.sound` |

Only the three standard Lean axioms appear; no project-specific `axiom` is
declared anywhere.

**The "`Lemma7Bridge` has no axioms at all" claim, stated precisely.** It holds
for every theorem in that file *except* the classical corollary
`disjoint_statuses_imply_bipartite_classical`, which was added deliberately and
which depends on `Classical.choice` because it discharges the decidability
hypothesis with `Classical.propDecidable`. The load-bearing theorems —
`disjoint_statuses_imply_bipartite` and `disjoint_statuses_imply_bipartite'` —
remain axiom-free, and the corollary must not be quoted in support of the
axiom-free claim.

## What is designed but not written

`../docs/lean-architecture.md` lays out a numbered file plan, entries `0`–`7`,
i.e. eight files. Two exist; **six still do not**. (The prose at the top of that
document says "seven files" while its own table lists eight rows; the table is
the one to go by.)

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

Five files present in this directory are **not** in that numbering, having been
added since: `EndgameDefs.lean`, `EndgameData.lean` and `Endgame.lean` (the
225-case endgame), `Lemma7Bridge.lean` (A7 bridge) and `CernyL2Interface.lean`
(C2 bridge). They are bridges and finite checks, not steps of the plan above,
and none of them replaces files 2–7.

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
`EndgameDefs.lean` imports nothing at all, `EndgameData.lean` imports
`EndgameDefs`, `Endgame.lean` imports `EndgameData`. Core Lean only, no Mathlib,
no Batteries; none of the three sets `autoImplicit false`. They compile with bare
`lean` and `LEAN_PATH` pointing at their own build directory (verified). Every
proof is an ordinary `decide`/`rfl`, i.e. a kernel reduction; the axioms reached
are at most `propext` and `Quot.sound` (notably **not** `Classical.choice`), and
some theorems reach none.

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

### Scope — these are theorems about a stored certificate, not about polygons

`certificates` is a list of 225 records of integers and lists of integers. No
theorem statement in these files mentions a polygon, a point or a coordinate;
the objects quantified over are `Nat`s, `List Nat`s and `Case` records. Read the
header of `Endgame.lean` for the long form; the short form is:

**Lean verifies, for each of the 225 records:**

1. **Component separation**, recomputed in the kernel via the separator
   argument. The certificate's own `components_P` array is *not* trusted:
   `sepP`/`sepQ` are derived data (not JSON fields), and the kernel checks that
   the vertex set they encode is closed under adjacency, contains `p_pairI` and
   omits `p_pairJ`. That is what makes "the two sides lie in different
   components" a theorem (`all_225_pairs_in_different_components`) rather than
   an assumption.
2. **Failure of the AKR-L5 adjacency conclusion** for the stored pair
   (`all_225_cases_fail_AKR5_conclusion`, equivalently
   `..._fail_AKR5_requirement`).
3. Bookkeeping: 225 records, `case_id`s `0..224`, distinct canonical keys,
   well-formed 7-bit masks, 9 edges and degree sequence `(2,2,1,1,1,1,1)` on
   both sides recomputed from the masks, and consistency of the stored witness
   fields with the masks.

**Lean does NOT establish:**

* **The geometric *avoiding* status of the stored side pair.**
  `pair_kind = "avoiding"` is a **stored Boolean flag** copied out of the JSON,
  and `witnessConsistent` only checks that the Boolean is `true`. That is a fact
  about the file on disk, not a geometric proof. What *is* recomputed is the
  necessary combinatorial part only: that the two indices are `< 7`, distinct,
  and not cyclically consecutive. A record whose flag was wrong would pass every
  theorem in the file.
* **The correspondence between exceptional-class profiles and actual polygons.**
  `class_P` and `class_Q` are opaque `Nat` labels; nothing ties them to
  exceptional simple 7-gons, to the 14-entry classification table, or to any
  geometric object, and nothing says a surviving pair of heptagons must have a
  profile in this list.
* **AKR Lemma 5 itself** — external and geometric; its conclusion is
  *formalised* (`AKR5Conclusion`) but never derived, and never assumed as an
  `axiom` either.
* **Completeness of the 225-case list**, which rests entirely on the
  unformalised enumeration upstream.

So the conditional actually proved is: *given* the certificate data, *given*
that the stored `avoiding` flags are geometrically correct, and *given* AKR
Lemma 5, all 225 remaining cases die.

Non-vacuity is checked inside Lean: `akr5_not_vacuous` shows that 2016 of the
225 × 21 = 4725 side pairs of these very graphs *do* satisfy the condition, and
`case0_contrast` exhibits one graph where the stored pair fails it while another
pair of the same graph satisfies it.

### The future interface for the endgame (specified, not built)

Turning the above into an impossibility theorem about polygons — something of
the shape `theorem no_exceptional_survivor (K : Config) : ¬ Survives K` — would
need the following. This is **one sufficient route**, not the only conceivable
one, and **none of it exists**: what follows is a specification of missing work,
not a claim about it. File names follow `../docs/lean-architecture.md`.

| # | What must be supplied | By |
|---|---|---|
| I1 | `Config`: a type of pairs of simple 7-gons in general position, at the orientation-predicate level of `LowerBound.lean` | `Model.lean` (absent) |
| I2 | `toMasks : Config → (Nat → Nat)` **and** `toMasks_spec`: bit `j` of mask `i` holds iff side `i` of `P` is disjoint from side `j` of `Q`. The only bridge from geometry to the bitmasks | `Model.lean` (absent) |
| I3 | `Avoiding : Config → Nat → Nat → Prop` (the order-type notion) **and** `avoiding_of_flag : ProfileOf K = c → c.avoiding = true → Avoiding K c.pairI c.pairJ`. This is exactly the gap left by the stored flag; it cannot be proved *from* the flag and must be re-derived from the exceptional class of `K` | `Classification.lean` + `Profiles.lean` (absent) |
| I4 | AKR Lemma 5 as an imported statement, honestly flagged as an `axiom` or proved: `akr5 : (CycAdj a b ∨ Avoiding K a b) → ¬ Conn (toMasks K) (P a) (P b) → AKR5Conclusion (toMasks K) a b` | `Imported.lean` (absent) |
| I5 | `ProfileOf : Config → Case` **and** `profile_complete : Survives K → ∃ c ∈ certificates, ProfileOf K = c`, plus invariance under the dihedral relabelling used to canonicalise. The formalised counterpart of the 13,003,620-graph enumeration, and by far the largest missing piece | `Elimination.lean` (absent) |

Given I1–I5 the assembly is short, purely logical, and uses these files
unchanged: I5 yields a record `c`; rewriting along `ProfileOf K = c` turns
`all_225_pairs_in_different_components c` into disconnection in `toMasks K`;
`all_witnesses_consistent c` gives distinctness, non-consecutiveness and
`c.avoiding = true`, which I3 upgrades to `Avoiding K c.pairI c.pairJ`; I4 then
forces `AKR5Conclusion (toMasks K) c.pairI c.pairJ`, contradicting
`all_225_cases_fail_AKR5_conclusion c`.

The value of writing the interface down is that it localises the two real gaps:
**I3 is where the `avoiding` flag stops being a flag**, and **I5 is where the
225-case list stops being a list someone handed us**.

## `Lemma7Bridge.lean` — the A7 bridge

Core Lean, zero imports, `autoImplicit false`. It formalises **only** the
project's own inference

> non-empty status sets + status sets disjoint across edges ⟹ `H` is bipartite

AKR Lemma 7 is never assumed, axiomatised, or **stated**: the disjointness
condition is an explicit hypothesis `hdisj` of every theorem, and nothing in the
file derives it. (Precisely: with comments stripped, the string `AKR` does not
occur in the file at all; it appears three times in prose — the header, the
docstring of `Status`, and the docstring of the main theorem. So "not named"
holds of the *code*, not of the file as a text.)

**On the decidability hypothesis `hdec`.** `disjoint_statuses_imply_bipartite`
takes `hdec : ∀ e, Decidable (S e Status.hooking)`. This is a **formalization
convenience, not a mathematical assumption, and not an unproved geometric
hypothesis.** `Bipartite` is defined as the existence of a `Bool`-valued proper
2-colouring while `S` is an arbitrary `Prop`-valued predicate, so a decision
procedure is needed purely to *write down* a function `V → Bool`. Three
independent confirmations that it costs nothing:

* it is discharged definitionally for any explicitly given status assignment
  (`Example.bipartite`);
* `disjoint_statuses_imply_bipartite'` reaches the same conclusion in partition
  form with no decidability hypothesis at all, and no axioms;
* `disjoint_statuses_imply_bipartite_classical` drops `hdec` outright, deriving
  the `Bool`-colouring conclusion from `hne` and `hdisj` alone via
  `Classical.propDecidable` — at the cost of `Classical.choice`, as the axiom
  table above records. It is the only declaration in the file that depends on
  any axiom.

Non-vacuity is proved, not asserted: a three-vertex model in which the
hypotheses hold *and there is a real edge*; a concrete both-status vertex shown
isolated; and the triangle shown **not** bipartite, hence admitting no valid
status assignment at all.

## `CernyL2Interface.lean` — the C2 bridge

Core Lean, zero imports, `autoImplicit false`. `l2FiresB_iff` and `l2OkB_iff`
prove that the filter predicate **as transcribed in this file** fires at a
window exactly when some 4-tuple of Q-sides induces, with the four window sides,
a block that is *exactly* a perfect matching: all four matching edges present
and all twelve cross pairs absent.

**Verified transcription ≠ verified implementation.** What is kernel-checked is
a property of the Lean definitions `matchAtB` / `l2FiresB` / `l2OkB`. Those
definitions were transcribed **by hand** from `L2_ok` in
`../python/elimination/audit_enum.py` and `l2_ok` in
`../independent/implementation_b/reduction.cpp`. There is **no code extraction
out of Lean**, no compilation of these definitions into the pipeline, and **no
mechanised cross-check against the Python source or the C++ binary**. That the
Lean definitions faithfully mirror the two implementations is an unverified
human reading, and is where this bridge can still fail.

**The extra-edge fixtures, stated correctly.** Adding an edge inside a 4×4 block
destroys the exact-matching property of **that particular block**. It does *not*
follow that the filter stops firing: `l2FiresB` quantifies existentially over
all ordered 4-tuples of Q-sides and `l2OkB` over all windows of the class, so
**another block — at the same window or a different one — can still trigger the
filter.** The fixtures are per-fixture facts, not general laws:

* `test_extraEdge_notDetected` / `test_extraEdge_noPattern`: for the specific
  mask family `Nextra` (`Npos` plus the edge `(p_0, q_1)`, inside the block), no
  window fires at all. True of `Nextra`; **not** a general "an extra edge stops
  the filter" law.
* `test_outsideEdge_detected`: for `Noutside` (`Npos` plus `(p_0, q_4)`, outside
  the block) the filter still fires — the forbidden pattern is a property of the
  *induced* subgraph, so edges leaving the block are harmless to it.

Nothing geometric is proved: the file says nothing about polygons, triangles,
`D ∈ int(ABC)`, or order types, and Černý Lemma 2 itself remains an external
mathematical dependency.
