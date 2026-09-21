# `pi14_split` — a second, solver-based attempt at `Pi_14`

`Pi_8` has an independent check: exhaustive enumeration against the TU Graz
order-type database refutes it in 0 of 3,315 order types
([`../order_type_pi8/`](../order_type_pi8/)). `Pi_14` has none — it needs
**eleven** points, and the eleven-point database does not exist and will not
(2,334,512,907 order types). So `Theorem 3.4` rests on the Lean/SAT route alone,
and that asymmetry is the weakest joint in the argument.

This directory attacks the remaining route: `Pi_14`'s realizability as a
**semialgebraic feasibility problem**, which is encoding-independent of the
chirotope/SAT proof — no Boolean variables, no Grassmann–Plücker clauses.

**It does not close, and `Pi_14` is not independently refuted here.** No branch
ever returned `sat`, so nothing contradicts the Lean result; but the large
majority of branches are *undecided*, not refuted.

Full write-up in [`FINDINGS.md`](FINDINGS.md).

## Ground truth

`pi14_common.py` holds the 21 conditions, transcribed from the statement of
`minpattern001_impossible` in `lean/MinPatternClauses001.lean` (lines
8375–8397) and the `orient`/`ProperCross` definitions in `lean/GeometryDefs.lean`
— not from the project's prose. It self-asserts its own invariants (21
conditions, 13 crossings, 8 non-crossings, exactly the 11 vertices
`{0..4} ∪ {7..12}`), and the transcription has been diffed against the Lean
source programmatically.

Note there is **no convexity hypothesis** — only general position. An attempt
that assumes `P` and `Q` convex proves a different, weaker statement.

## What was run

**Three complete 256-branch censuses.** The 8 `¬ProperCross` conditions are
disjunctions; enumerating which disjunct holds turns each branch into a pure
conjunction of strict polynomial inequalities, the regime `nlsat` handles best.

| census | encoding | solver | refuted | realizable | **undecided** |
|---|---|---|---|---|---|
| v1 | 2-point normalisation, 18 vars | default, 15 s | 11 / 256 | 0 | **245** |
| v2 | 3-point normalisation, 16 vars | `randomize=false` + default, 40 s | 57 / 256 | 0 | **199** |
| **final** | 3-point normalisation, 16 vars | **6-way restart portfolio, 24 s** | **76 / 256** | 0 | **180** |

Seven times v1's refutations, and **180 of 256 branches still undecided**. No
branch has ever returned `sat`.

**The one durable structural result.** The refuted branches cluster, hard, on a
single condition. Splitting by which disjunct is taken for
`¬ProperCross(V8,V9,V10,V11)` — that is, $Q_1 \not\times Q_3$:

| disjunct | refuted |
|---|---|
| $Q_3$'s endpoints on one side of $Q_1$'s line | **74 / 128 (58 %)** |
| $Q_1$'s endpoints on one side of $Q_3$'s line | **2 / 128 (2 %)** |

Seen in all three censuses under three different solver configurations
(11/11, 55/57, 74/76), so it is neither a solver artifact nor an
enumeration-order artifact. The difficulty is concentrated almost entirely in
one half of the search space.

Also tried and recorded in `FINDINGS.md`: full affine normalisation (18 vars →
16 with no gauge freedom), sign-splitting instead of disjunct-splitting (drops
every inequality from degree 4 to degree 2, with adaptive refinement), and
point-insertion variable ordering, which matters enormously. None finishes: the
consistent-assignment count is of order 10⁹.

## Controls

Real ones, and they are sharp:

* **Positive control** — the `f(7,7) ≥ 38` certificate's own eleven points,
  evaluated on the same 21 cells, give a pattern realizable by construction. The
  pipeline returns `sat` on it.
* **Branch-level positive control** — the specific disjunct branch the
  certificate takes also returns `sat`.
* **Vacuity check** — every model is re-verified *without z3*, in exact
  `Fraction` arithmetic by `verify_model.py`, which re-implements `orient` and
  `ProperCross` from the Lean definitions. All verify 21/21.

## The thing to know before continuing

**`qfnra-nlsat` returns `unknown` on this family even when a solution provably
exists.** The sharpest instance: the disjunct branch that the $f(7,7)\ge38$
certificate itself satisfies — an explicit witness exists — and z3's default
returns `unknown` at 30 s on it. So an `unknown` here carries almost no
information, including the single 15-minute run quoted in
`../order_type_pi8/README.md`.

It never returned `unsat` on a satisfiable system, and no branch of `Pi_14`
ever returned `sat`, so the refutations stand.

**Restart; do not derandomise.** `FINDINGS.md` §6 originally claimed
`nlsat.randomize=false` was the fix. That is **retracted** — see §6a and §6b.
A controlled experiment at equal total budget on branches 0–63:

```
  default, best-of-5-seeds : 24 / 64 refuted
  nlsat.randomize=false    : 11 / 64 refuted
```

and in the final census `randomize=false` was first to close only 3 of 76
branches, the weakest member of the portfolio. nlsat's runtime here is
heavy-tailed: five 4-second attempts under different seeds beat one 20-second
deterministic run by better than two to one.

## What this is not

Not an independent refutation of `Pi_14`, and it does not change
`Theorem 3.4`'s status. **76 of 256 branches refuted, 0 realizable, 180
undecided** — and "undecided" is not evidence of anything. What it replaces is
an anecdote — "one 15-minute run did not terminate" — with three measured
censuses, a Lean-verified encoding, working controls, a replicated structural
asymmetry, and one retracted claim of my own.
