# Unsat cores exported for the Lean refutation

These eight files are the *input to a generator*, not evidence in their own
right. `python/residual/gen_lean_refutation.py` reads a `(core CNF, LRAT)` pair
and emits `lean/ResidualCore00k.lean`, a Lean theorem saying the core's clauses
are jointly contradictory; `python/residual/gen_lean_clauses.py` emits
`lean/ResidualClauses00k.lean`, which proves each of those clauses from the
geometry and feeds them in. Once those two Lean files build, **nothing here is
trusted any more** — the kernel has rechecked the whole refutation, and these
files are only a record of how the proof was found.

| orbit | graphs | core clauses | proof steps |
|-------|-------:|-------------:|------------:|
| 000   |     36 |          167 |         102 |
| 001   |    144 |          371 |         164 |
| 002   |    196 |          242 |         114 |
| 003   |     36 |          513 |         148 |

## Regeneration

From the repository root, with `drat-trim` on `$PATH` (the version used is the
one recorded in `../drat_trim_crosscheck/`):

```sh
for k in 0 1 2 3; do
  o=independent/residual_realizability/orbit_00$k
  e=independent/residual_realizability/lean_export/core00$k
  drat-trim $o.cnf $o.drat -c /tmp/c.cnf -l /tmp/lem.drat
  drat-trim /tmp/c.cnf /tmp/lem.drat -L /tmp/p.lrat
  cp /tmp/c.cnf $e.cnf
  grep -v ' d ' /tmp/p.lrat > $e.lrat
done
```

Two passes are needed. The LRAT emitted from the *original* CNF hints into the
full 162,790-clause formula, so it cannot be read against the core alone; and
the original DRAT replayed against the core alone fails ("RAT check on proof
pivot failed") because intermediate steps use clauses drat-trim dropped from the
core. Running drat-trim a second time on `(core, trimmed lemmas)` gives a
self-contained pair whose hints index only the core. Deletion lines are stripped
because the Lean transcription keeps every derived clause in scope.

Each pair re-verifies standalone:

```sh
drat-trim lean_export/core00$k.cnf <the trimmed lemmas>   # s VERIFIED
```

The generator additionally asserts, per step, that every hint is a positive
(RUP, not RAT) hint and that each hint is unit under the accumulated
assignment — so a corrupted LRAT file makes generation fail loudly rather than
produce a Lean file that does not compile.
