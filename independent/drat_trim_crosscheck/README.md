# Every DRAT certificate, re-checked by drat-trim

**Result: 130 of 130 verified.** The checker was gate-tested first and rejects a
bogus proof. Run `sh check_all.sh` (about 8 seconds once the CNFs exist).

## Why this exists

Before this, every DRAT certificate in the repository — the A7 oriented-matroid
refutations, the 25-case coverage set, and the 412-graph residual refutations —
was checked by **`dratcheck.py`, a from-scratch checker written for this
project**. That checker is careful and its soundness notes are in
`../akr_l7_reproduction/REPRODUCE.md`, but it was a single point of failure for
the project's entire certificate story: if it had a bug, 130 certificates would
have been worthless together.

`drat-trim` is the reference implementation (Heule, Wetzler; used to check the
SAT competition proof track). Agreement between the two is worth much more than
either alone.

## What was checked

| track | pairs | verified |
|---|---:|---:|
| `residual_realizability` (the 412 residual graphs, 4 orbits + negative control) | 5 | 5 |
| `akr_l7_reproduction/evidence` (generic and adjacency variants) | 15 | 15 |
| `akr_l7_reproduction/coverage25` | 110 | 110 |
| **total** | **130** | **130** |

Log: [`check_all.log`](check_all.log).

## Two things the script does that matter

**A gate test, run before anything else.** `drat-trim` is asked to verify an
empty-clause "proof" of `positive.cnf` — a formula known to be *satisfiable*,
since the lower-bound certificate's own coordinates satisfy it. The expected
answer is `s NOT VERIFIED`, and the script aborts if it gets anything else. A
checker that accepts that proof accepts anything, and a run of 130 VERIFIEDs
from such a checker would mean nothing.

**A floor on the number of pairs checked.** The CNFs are gitignored throughout
this repository (4.2 MB each, regenerable). A pair whose `.cnf` is missing is
skipped — so without a floor, a fresh clone would skip all 130 and still print
`ALL VERIFIED`. The script counts skips, requires at least 130 pairs, and tells
you to regenerate otherwise.

## Limits

* This checks the **proofs**, not the **encodings**. If a CNF does not say what
  we think it says, 130 valid refutations of the wrong formula are still 130
  refutations of the wrong formula. The encodings are validated separately, by
  positive controls — see `../residual_realizability/README.md` §2.
* `drat-trim` is pinned by SHA-256 of its source
  (`d834b649f437e091597f5347f259b9f681087f89ca0844d0cee250a1a1a0c2ee`) and built
  from that source by the script.
* Two checkers agreeing is not a proof that both are correct; it is evidence
  against a common bug, and they share no code.
