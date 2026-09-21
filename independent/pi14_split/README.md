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

**The 256-branch census is complete.** The 8 `¬ProperCross` conditions are
disjunctions; enumerating which disjunct holds turns each branch into a pure
conjunction of strict polynomial inequalities, the regime `nlsat` handles best.

```
RESULT  unsat=11  sat=0  unknown=245  total=3771s
```

Eleven branches refuted, none satisfied, 245 undecided. The earlier pilot — 2 of
8 branches dying in under half a second — was not representative. The refuted
branches do not cluster in any way that survives scrutiny on a sample of 11.

Also tried and recorded in `FINDINGS.md`: full affine normalisation (18 vars → 16
with no gauge freedom), sign-splitting instead of disjunct-splitting (drops every
inequality from degree 4 to degree 2, with adaptive refinement), and
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

`qfnra-nlsat` returns `unknown` on this family **even when a solution provably
exists**. On a sample of 24 systems built to be satisfiable by construction, it
failed to solve **20** of them. So an `unknown` here carries almost no
information — including the single 15-minute run quoted in
`../order_type_pi8/README.md` and the 245 above.

It never returned `unsat` on a satisfiable system, so the 11 refutations stand.

See `FINDINGS.md` §6 and §6a: the effect was first attributed to z3's
`nlsat.randomize` default, and §6a corrects that — the setting is a different
draw in the same lottery, not a fix.

## What this is not

Not an independent refutation of `Pi_14`, and it does not change
`Theorem 3.4`'s status. What it replaces is an anecdote — "one 15-minute run did
not terminate" — with a measured distribution, a Lean-verified encoding, and
working controls.
