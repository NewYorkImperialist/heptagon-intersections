# Pattern scaling for c = 7

The two-pattern covering approach survives these tests: every surjection at
n = 9 and n = 11 is covered, and all 1,000,000 sampled surjections at n = 13
are covered. The c = 7 regime does **not** escape the two patterns in these
experiments. This is exhaustive for 9 and 11, not a proof for 13 or all odd n.

## Final summary

Counts below refer to labelled surjections, not symmetry classes. The n = 13
row counts accepted sample draws, with replacement, not its whole population.
Pi₈ and Pi₁₄ coverage overlap; “either” is their union.

| n | Method | Covered by Pi₈ | Covered by Pi₁₄ | Covered by either | Escape both | Escapers left after pool |
|---|---|---:|---:|---:|---:|---:|
| 9 | Exhaustive | 2,327,850 | 2,325,834 | 2,328,480 | 0 | 0 (no escapers) |
| 11 | Exhaustive | 322,478,464 | 322,272,104 | 322,494,480 | 0 | 0 (no escapers) |
| 13 | Uniform random sample: 1,000,000 draws | 999,983 | 999,601 | 1,000,000 | 0 | 0 (no sampled escapers) |

**n = 7 control: PASS — 5,040 perfect matchings tested, 0 escapers.**

There are no escaping examples to print. The diagonal sigma(j) = j mod 7 is
not an escaper at any requested n:

| n | Pi₈ contains diagonal? | Pi₁₄ contains diagonal? | Diagonal escapes? |
|---|---|---|---|
| 9 | No | Yes | No |
| 11 | Yes | Yes | No |
| 13 | Yes | Yes | No |

The diagonal concern correctly identifies Pi₈ avoidance at n = 9, but Pi₁₄
covers it. For n = 11 and 13 the cyclic seam also allows Pi₈. Explicitly,
Pi₁₄ already matches the identity window P0…P3 against Q0…Q4 of each diagonal:
the only prescribed noncrossing is P1/Q1; P0/Q0, P2/Q2, and P3/Q3 are
unconstrained, and all prescribed crossings are off-diagonal.

## Run

From the repository root:

```sh
python3 independent/pattern_scaling/run.py
```

Requires Python 3 and a C++17 compiler named `c++`; no third-party packages.
The runner executes this compilation (with absolute paths internally):

```sh
c++ -O3 -std=c++17 independent/pattern_scaling/search.cpp -o independent/pattern_scaling/search
```

`run.py` reparses the authoritative Lean theorem statements and pool, writes
`patterns.json` and `input.txt`, builds `search`, and captures the complete
experiment output in `run.log`. Every write is inside this directory. No
files under `lean/`, `paper/`, or `independent/realizability_sweep/` are modified.
No commits are made. `search.cpp` is the search implementation; `patterns.json`
records the parsed hypotheses and source SHA256 hashes.

## Pattern extraction

The parser isolates the statement before `: False :=` for each theorem,
extracts every `ProperCross` hypothesis, and checks that both vertex pairs
are consecutive sides on their respective polygons. It checks that every
occurrence of `ProperCross` in the statement was parsed. Vertices 0…6 are P;
7…13 are Q. Negation means a prescribed noncrossing. Unmentioned cells impose
no constraint.

- `lean/MinPatternClauses000.lean`, `minpattern000_impossible` (Pi₈):
  used hypotheses `h0_7`, `h0_8`, `h0_9`, `h1_7`, `h1_8`, `h1_9`, `h2_7`,
  `h2_8`. Only `h1_8` is negated. No self-crossing hypotheses occur.
- `lean/MinPatternClauses001.lean`, `minpattern001_impossible` (Pi₁₄):
  used hypotheses `h0_8`, `h0_9`, `h0_11`, `h1_7`, `h1_8`, `h1_9`, `h1_10`,
  `h1_11`, `h2_7`, `h2_8`, `h2_11`, `h3_7`, `h3_8`, `h3_9`. Only `h1_8`
  is negated. Excluded self-non-crossing hypotheses: `h0_2`, `h0_3`, `h1_3`
  (P against P), and `h7_9`, `h7_10`, `h8_10`, `h8_11` (Q against Q).
  Their exact vertex indices are recorded in `patterns.json` and `run.log`.

The patterns are never entered manually from the prompt's tables.

## Containment and symmetry

For a surjection sigma, P-side i does not cross Q-side j exactly when
`sigma[j] == i`. All tests use integer and boolean operations.

The independent direct checker enumerates every vertex rotation and reflection
on both polygons. Rotation sends side i to i+k; reflected vertex relabelling
sends it to k-i-1, modulo the corresponding polygon length. There is no
P/Q exchange. The optimized checker precomputes truth tables for all length-3
and length-5 words over 0…6, allowing all P rotations/reflections and both
orientations of the Q window. It checks every cyclic starting position of Q.
Reflection of a local window by reversing its order is equivalent to the
side-reflection formula after varying its starting position.

For exhaustive enumeration, fix sigma(0) = 0 by P rotation and restrict the
first nonzero value to 1, 2, or 3 by P reflection. Prune a prefix only if its
remaining positions cannot supply the missing labels. At each surviving
surjection, compare all Q rotations/reflections and both P signs, normalizing
the first P value back to zero. Retain only the lexicographic minimum.
Thus containment is evaluated only once per orbit under D7 × Dn.

If s normalized transformations fix the representative, its exact labelled
orbit weight is 28n/s. Stabilizers, including reflection and periodic
symmetries, are counted rather than assuming every orbit has full size.
The exhaustive searches tested 9,432 representatives at n = 9 and 1,049,100
at n = 11. Orbit-weight sums are asserted equal to inclusion-exclusion:

| n | Total labelled surjections: sum from k=0 to 7 of (-1)^k C(7,k)(7-k)^n |
|---|---:|
| 7 | 5,040 |
| 9 | 2,328,480 |
| 11 | 322,494,480 |
| 13 | 28,805,736,960 |

For n = 13, exhaustive enumeration was not attempted. The permitted sampling
alternative was used: generate independent uniform labels in 0…6 and reject
words missing any label. This is uniform over labelled surjections, not over
symmetry classes. Sampling is with replacement; 3,363,900 proposals yielded
1,000,000 accepted draws. The engine is C++ `mt19937` seeded with 20260917.
The generator first supplies the documented random sanity checks, then the
sample. To draw a label without modulo bias, reject 32-bit outputs at least
4,294,967,292 and reduce the others modulo 7. No floating-point probabilities,
distributions, tolerances, or arithmetic are used in the computation.

## Validation and pool

The direct checker and optimized lookup checker agree separately for each
pattern on all 5,040 n = 7 perfect matchings. Their union has zero escapers.
They also agree on 800 random words across lengths 7, 9, 11, and 13, including
one negative Pi₈ result and seven negative Pi₁₄ results.

Two explicit negative controls prevent a vacuous always-true checker:
an all-crossing matrix cannot supply the required noncrossing; and a constant
sigma with randomly chosen row 1 cannot satisfy the prescribed crossings
in the same P row as the prescribed noncrossing. Both patterns are absent,
as both checkers confirm where applicable. These negative controls need not
be surjections: they test the predicate itself.

The runner reads all 148 pool entries and confirms the convention against the
header of `independent/realizability_sweep/cover.cpp`: bit `7*(6-i)+j`
represents P-side i/Q-side j; `sup` selects prescribed pairs and a set `val`
bit means noncrossing. The pool checker is implemented for potential escapers;
there are none, so the residual count is zero without any escaper tests.
The diagonal configurations are additionally checked and match the pool.

For reproducibility, that optional pool checker uses every cyclic cut of the
source seven columns, both orientations, P dihedral images, and each window
of seven consecutive target Q sides, without transposition. It deduplicates
23,422 compatible column-allowance templates. The experiment's two-pattern
counts and conclusion do not depend on this additional pool convention.
The pool masks alone test combinatorial containment; transporting a general
seven-side pool theorem to a larger polygon would additionally require
checking its geometric locality assumptions.

These are crossing-pattern covering results within the specified c = 7 model.
They do not settle c = 5 or 6 or prove the polygon intersection conjecture.
