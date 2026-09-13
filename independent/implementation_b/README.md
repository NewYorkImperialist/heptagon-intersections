# Implementation B — independent finite reduction (C++)

An independent reimplementation of the finite reduction behind the
`f(7,7) ≤ 38` argument, from the mathematical specification in
[`SPEC.md`](SPEC.md), covering everything **up to but not including** the final
avoiding-pair AKR Lemma 5 filter.

**Result: exact agreement.** The 225 `(classP, classQ, graph)` triples produced
here are **set-equal** to those in `data/certificates/final_elimination_225.json`.

## Honest statement of independence

This is **not a clean-room reimplementation**, and should not be described as
one.

The same agent (Claude) that organized this repository and wrote the certificate
generator also wrote this implementation, and had **already read Implementation
A's source in full** — `audit_enum.py`, `audit_pairs.py`, `chiro.py`, `geom.py`
and the certificate generator — earlier in the same session, before this task
began. That exposure cannot be undone.

What this implementation therefore **does** and **does not** provide:

**Does provide** — an independent check on:

* *transcription and coding errors* in Implementation A: a different language,
  different graph representation, and different algorithm for every filter and
  for the enumeration all reproduce the same set;
* *arithmetic*: the graph count is confirmed by a closed-form generating-function
  derivation that involves no enumeration at all;
* *the enumeration's completeness*: the count 13,003,620 and the survivor set
  are reached by a materially different traversal order, so a missed branch in
  one is unlikely to be mirrored in the other.

**Does not provide** — any check on:

* *the mathematical translations*. Both implementations read the same
  `SPEC.md`-level statements of AKR Lemmas 5 and 7 and Černý Lemma 2. If the
  project's reading of AKR Lemma 7 (`known-issues.md` K-09) is wrong, B is
  wrong in exactly the same way.
* *the canonical profile data*. B consumes
  `data/exceptional_profiles/exceptional_profiles_14.json` as input. It does not
  re-derive the 14 exceptional classes, their crossing sets, their Lemma-2
  windows, or the order-type enumeration behind them. A shared error there is
  invisible to this comparison.
* *author independence*. A genuinely independent check requires a different
  person. This is the residual risk that K-02 always warned about, and it
  remains open.

## Design decisions, and how they differ from Implementation A

| | Implementation A (Python) | Implementation B (C++) |
|---|---|---|
| language | Python 3 | C++17 |
| enumeration axis | **P-side** rows | **Q-side** columns (transposed) |
| enumeration control | recursion with a running **edge budget**, trying each neighbourhood size | recursion with the **degree sequence fixed in advance** (partitions of 9 into 7 positive parts: `3+1⁶`, `2²+1⁵`) |
| pruning | budget feasibility (`hi = min(3, budget-(rem-1))`) | coverage feasibility (`popcount(covered) + remaining < 7`) |
| graph key | tuple of 7 Python ints | packed **49-bit `uint64_t` bitboard** |
| components | **union-find** with path compression over 14 vertices | **iterative bitmask closure** (alternate P→Q→P fixpoint) |
| consecutive AKR L5 | double loop over `j` and `e = ±1` | **cyclic bitmask rotation**: `((rotL(A)\|rotR(A)) & B) != 0` |
| H bipartiteness | **DFS 2-colouring** with an explicit stack | **union-find with parity** |
| crossing-set compatibility | precomputed 128-entry lookup table per class | direct containment test against the 5 maximal crossing sets |
| Černý L2 | iterate all `C(7,4) = 35` subsets of Q-sides | enumerate **systems of distinct representatives** |
| Černý L3 | applied unconditionally | **not implemented at all** |
| graph count cross-check | inclusion–exclusion quoted in prose | `count_check.py`, exact integer polynomial arithmetic |

Two small equivalences worth noting: A excludes H-adjacency when
`(k-i) % 7 ∈ {1,6}` while B also excludes `0` — unreachable in A's loop since
`k > i`, so the two agree. And B's derivation showed that compatibility
collapses to `N(q_j) ∩ M_P ≠ ∅`; B nevertheless implements the general
containment form and asserts the collapse as a startup consistency check.

## Build and run

No dependencies beyond a C++17 compiler and the Python standard library.

```bash
cd independent/implementation_b

# 1. convert the canonical profile JSON to a flat table (format conversion only)
python3 make_profiles.py \
    ../../data/exceptional_profiles/exceptional_profiles_14.json profiles.txt

# 2. build
c++ -O2 -std=c++17 -Wall -o reduction reduction.cpp

# 3. adversarial unit tests (23 tests, positive and negative for every filter)
./reduction --test profiles.txt

# 4. the full reduction
./reduction profiles.txt implementation_b_output.json

# 5. independent closed-form check of the graph count (no enumeration)
python3 count_check.py

# 6. compare against the existing certificate
python3 compare_with_certificate.py
```

**Runtime: 1.56 s** for the full 13,003,620-graph enumeration and all filters
(Apple clang 17, macOS arm64, single core). Implementation A takes ~3 minutes
for the same work.

Deterministic: no randomness, no hashing of iteration order, no parallelism.

## Results

| stage | Implementation B | claimed |
|---|---|---|
| 9-edge graphs, min degree ≥ 1 | **13,003,620** | 13,003,620 |
| after consecutive AKR L5 | **42,238** | 42,238 |
| after AKR L7 (`H` bipartite) | **24,990** | 24,990 |
| after crossing-set compatibility | **2,300** | 2,300 |
| after Černý L2 | **121** | 121 |
| distinct surviving graphs | **121** | 121 |
| `(classP, classQ, graph)` triples | **225** | 225 |
| degree sequence, P side | `(2,2,1,1,1,1,1)` ×121 | `(2,2,1⁵)` |
| degree sequence, Q side | `(2,2,1,1,1,1,1)` ×121 | `(2,2,1⁵)` |
| classes represented (both sides) | `{1,2,3,4,9,10,11,12,13}` | same |

Degree sequences are tallied once per surviving **graph** (121), which covers
all 225 triples since the triples are class pairs over those graphs.

**Strong comparison: the canonical set of 225 triples is exactly equal to the
set in `data/certificates/final_elimination_225.json`** — no element in either
difference. Verified by `compare_with_certificate.py`.

The closed-form check also independently reproduces the `|E| = 7` and `|E| = 8`
counts (5,040 and 476,280) and their sum with 13,003,620, which is the
historical 13,484,940 figure of `known-issues.md` K-01.

## Unit tests

23 tests, positive **and** negative for each filter — consecutive AKR L5
(including the wrap-around case and the certificate's own case-0 witness),
H-bipartiteness (odd cycle, matching, empty, isolated vertices),
compatibility (in `M_set`, not in `M_set`, one bad column), Černý L2 (induced
matching present, no SDR available, too few candidates, an extra edge breaking
"exactly a matching", an alternative representative, and a class with no
windows), and components.

**One test-design failure is recorded honestly**: three Černý L2 tests initially
failed. The implementation was correct; the *fixtures* were wrong, because they
were built to be safe on window 0 while the real class 12 has windows `{0,2,3}`
and the untouched sides 4,5,6 formed an induced matching on window 3. The tests
were rewritten against a synthetic single-window profile; `l2_ok` was not
changed. See the comment block in `reduction.cpp`.

## Files and hashes

| file | SHA-256 |
|---|---|
| `SPEC.md` | `afe33c9e3278f8154abd552ce84e94a81934e88f2e6915c69f5abefc4a421b2b` |
| `reduction.cpp` | *(recomputed after the test fix; see `../../data/hashes/SHA256SUMS.tools`)* |
| `make_profiles.py` | `959abfabd96fddd708fb9ffae24fd5a41d66aa1783483abd3e234012ed003531` |
| `count_check.py` | `8ad99b87bdbe8fc3d6ede84f2227220d302c509b3acf9c349434e0551649f27b` |
| `profiles.txt` | `75e77806c179b303888af894d71e31fc944e6d0a875027351429a09b9889d547` |
| `implementation_b_output.json` | `b94a8fde028101028a8172b5e256d91376919da3102a4e5c053f11d8e902bac6` |

Authoritative digests for all of these are in
[`../../data/hashes/SHA256SUMS.implementation_b`](../../data/hashes/SHA256SUMS.implementation_b).

## Scope

This implementation covers the reduction **up to** the final filter. It does
**not** implement the avoiding-pair AKR Lemma 5 step — that is the already
certified endgame (`known-issues.md` K-03), and applying it here would have
meant testing the certificate against itself. The target was precisely the set
*entering* that stage.

Nothing here makes the theorem verified. It closes one specific gap: whether
the 225 endgame cases are the complete set surviving the earlier reductions.
