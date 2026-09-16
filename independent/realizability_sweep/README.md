# Realizability sweep: the whole `I = 40` branch, without any published lemma

> **Status: an experiment with checked certificates, not a proof.** Nothing in
> the candidate proof has been rewired to depend on it. Read §6 before quoting
> anything here.

## 1. What was asked, and what came back

A counterexample to `f(7,7) = 38` has `I = 40` properly crossing side pairs, so
its disjointness graph — which of the 49 (side of `P`, side of `Q`) pairs are
disjoint — is a 7×7 bipartite graph with exactly `49 - 40 = 9` edges and no
isolated side on either polygon. There are **13,003,620** such graphs, and
`lean/CounterexampleCount.lean` already proves in Lean that a counterexample's
graph is one of them.

The project's pipeline whittles those 13,003,620 down to nothing using AKR
Lemma 5, AKR Lemma 7, an order-type crossing fact, Černý Lemma 2 and the
exceptional classification. This experiment asks a blunter question:

> Take a candidate graph. Forget every published lemma. Ask a SAT solver
> whether **any** rank-3 chirotope on the fourteen vertices has that crossing
> pattern at all. How many of the 13,003,620 survive?

**Answer: none.** Every one of the 13,003,620 is refuted by the
oriented-matroid encoding alone.

And the refutations are local. Each unsatisfiable core mentions only 8–30 of
the 49 side pairs, and those constraints are already contradictory by
themselves. Minimising them and collecting the distinct ones gives a library of

> **four minimal forbidden patterns**, of 16, 15, 11 and 14 constrained side
> pairs, such that **every one of the 13,003,620 graphs contains one of them**
> under some relabelling.

## 2. The numbers

| | |
|---|---:|
| candidate graphs (7×7 bipartite, 9 edges, min degree ≥ 1) | 13,003,620 |
| orbits under relabelling (group of order 392) | 33,743 |
| orbits found **satisfiable** | **0** |
| orbits refuted, with the refutation checked by `drat-trim` | **33,743** |
| checks that failed | **0** |
| distinct CNFs, by SHA-256 | 33,743 |
| unsat core: smallest / median / largest | 58 / 124 / 1,029 clauses |
| solver time, and solve + proof + check time | 13,940 s, 45,135 s |
| minimal forbidden patterns needed to cover all 13,003,620 | **4** |
| their sizes, in constrained side pairs | 16, 15, 11, 14 |
| their unsat cores | 589, 692, 275, 1,233 clauses |
| their LRAT proofs | 189, 198, 101, 420 steps |

The four refutations of the patterns are **Lean theorems**, not certificates:
`Heptagon.PatternClauses00k.pattern00k_impossible` in `lean/PatternClauses00k.lean`,
axioms `propext`, `Classical.choice`, `Quot.sound`.  `lean/PatternControl.lean`
checks that none of the four can be applied to the lower-bound certificate.

### Two patterns are enough, and they are much smaller

`library.py` minimises each core in a fixed order, which finds *a* minimal
pattern, not a good one.  `minpool.py` minimises the same cores in randomised
orders, pools the results, and looks for a small covering subfamily.  It finds
**two**:

| | size | images | covers | core | LRAT | Lean build |
|---|---:|---:|---:|---:|---:|---:|
| pattern A | **8** | 196 | 33,672 of 33,743 orbits alone | 94 clauses | 71 steps | 74 s |
| pattern B | 14 | 392 | the other 71 | 410 clauses | 156 steps | 158 s |

`./cover patterns2.txt` confirms the pair covers all **13,003,620**.  Both are
minimal — every single-constraint drop is satisfiable with a checked model — and
both are Lean theorems, `Heptagon.MinPatternClauses00k.minpattern00k_impossible`,
with `lean/MinPatternControl.lean` as the control.

Pattern A is short enough to read.  It concerns three consecutive sides of each
heptagon and nothing else, and it needs **no simplicity hypothesis at all**:

> Let `P` have consecutive sides `p0, p1, p2` and `Q` consecutive sides
> `q0, q1, q2`, with the fourteen vertices in general position.  Then it is
> impossible that `p0` crosses all of `q0, q1, q2`, that `p1` crosses `q0` and
> `q2` but misses `q1`, and that `p2` crosses `q0` and `q1`.

That single statement rules out **33,672 of the 33,743** orbits, hence all but
8,428 of the 13,003,620 graphs.

The improvement carries to the covering step: the coverage refutation drops
from 154,794 steps against a 1,967-clause core to **59,657 steps against a
986-clause core** (`coverage_cnf.py`).  Still large, but 2.6x smaller, and the
gap is now the only thing between this and a lemma-free `I ≠ 40`.

`bestpair.cpp` says this pair cannot be improved from the pool: over the **299**
distinct minimal patterns collected, **no single pattern covers everything**
(the best covers 33,689 of 33,743), and among all covering pairs the one above
has the fewest relabelled images — 588 — which is what drives the size of the
covering refutation.  A smaller family, if one exists, needs a search that does
not start from solver cores.

The domain count `13,003,620` is re-derived here twice, and neither time from
the project's pipeline: once by inclusion–exclusion over zero rows and columns,
once by the enumeration in `orbits.cpp`.

## 3. Files

| | |
|---|---|
| `orbits.cpp` | enumerates the domain from its definition and reduces it to 33,743 orbit representatives (`orbits.txt`); 2.4 s |
| `sweep.py` | encodes and solves every orbit representative; records the verdict |
| `verify_sweep.py` | re-solves with proof logging and has **drat-trim** check every refutation; records the CNF's SHA-256 and the core size. Proofs are ~10 MB each and are deleted after checking, so the evidence here is the log, and the proofs are reproducible from `orbits.txt` |
| `library.py` | builds the library of minimal forbidden patterns (`library.json`, `patterns.txt`) |
| `check_patterns.py` | each pattern: UNSAT with a drat-trim-checked proof; **minimal**, in that dropping any single constraint makes it satisfiable with a checked model; exports the cores for the Lean generators to `lean_export/` |
| `cover.cpp` | re-enumerates all **13,003,620** graphs — not the orbits — and checks that each contains a relabelled pattern; 5 s |
| `controls.py`, `controls2.py` | see §4 |
| `patterns.py` | measures how local the solver's own cores are, before minimisation |
| `minpool.py` | collects minimal patterns by randomised minimisation and finds a small covering subfamily (`pool.json`, `patterns2.txt`) |
| `bestpair.cpp` | over the whole pool, the best single pattern, the cheapest covering pair, ranked by number of relabelled images |
| `coverage_cnf.py` | builds the covering claim as a CNF and measures its refutation |

## 4. Controls

An encoder that answered UNSAT for everything would produce exactly this
headline and mean nothing. What makes the result informative:

* `clauses(g)` is the same clause **set** as `run.encode(g)` in
  `../residual_realizability/`, checked on samples. Only the emission order
  differs. That encoder was control-tested in its own directory.
* The lower-bound certificate — a pair of simple heptagons that exists, with 38
  crossings — is **SAT**, and its own chirotope satisfies every clause.
* Twelve random simple heptagon pairs, 4 to 12 crossings: all **SAT**, each with
  its own chirotope as a model.
* Fifteen configurations reached by local search from the certificate, at
  **38, 36, 34, …, 10** crossings: all **SAT**, each with its own chirotope as a
  model. This is the control that matters, because it reaches the crossing
  counts the sweep is about. (Local search never met an odd count — the parity
  theorem, arrived at from the other direction.)
* Flipping a single pattern bit of a realizable configuration makes its true
  chirotope violate a clause, so the pattern constraints are load-bearing rather
  than inert.
* Each of the four patterns is minimal: all 16, 15, 11 and 14 single-constraint
  drops are satisfiable, with a checked model in every case.

## 5. What would have to happen for this to become part of the proof

The four patterns are already Lean theorems — `lean/PatternClauses00k.lean`,
generated by the same pipeline as the 412, built in 624 s, 541 s, 471 s and
5,264 s — so what is missing is one step:

> **Coverage, in Lean.** Every one of the 13,003,620 domain graphs contains a
> relabelled forbidden pattern.

`cover.cpp` checks that in five seconds, but it is a C++ program, and a Lean
`decide` over 13,003,620 graphs is a very different proposition — the largest
kernel enumeration in the project so far is 48,600 candidates at 8,147 s.

**It need not be an enumeration.** Coverage is itself a small refutation.
"A 7×7 graph with exactly 9 edges, no isolated side, containing none of the
1,568 relabelled patterns" is a CNF over the 49 cells plus a cardinality
encoding:

| encoding of "exactly 9" | clauses | variables | solve | drat-trim | core | LRAT |
|---|---:|---:|---:|---|---:|---:|
| sequential counter, four patterns | 3,022 | 769 | 64 s | VERIFIED | 1,967 | 154,794 |
| totalizer, four patterns | 4,494 | 607 | 58 s | VERIFIED | 1,970 | 152,726 |
| sequential counter, **two patterns** | 2,042 | 769 | 18 s | VERIFIED | **986** | **59,657** |

Symmetry breaking helps, and the cheap version helps most. The claim is
invariant under the 392 relabellings, so one may assume the graph is
lexicographically least in its orbit — which is sound in Lean too, because
pattern-containment is relabelling-invariant (`ResidualSymBase`) and a finite
orbit has a least element. Adding lex-leader constraints, with the **two**
patterns:

| lex-leader constraints | clauses | core | LRAT steps | steps × core |
|---|---:|---:|---:|---:|
| none | 2,042 | 986 | 59,657 | 5.9 × 10⁷ |
| 6 — the rotations of `P` | 2,636 | 976 | **30,149** | **2.9 × 10⁷** |
| 12 — rotations of `P` and of `Q` | 3,230 | 998 | 27,949 | 2.8 × 10⁷ |
| all 391 | 40,751 | 2,017 | 22,935 | 4.6 × 10⁷ |

Breaking *all* the symmetry is counter-productive: the proof gets shorter but
the core nearly doubles, and the cost of transcribing a step grows with the
context it elaborates against. **Six constraints — "assume the graph is least
among its seven rotations of `P`" — capture almost the whole gain.**

### Splitting by degree shape is what actually makes it small

Seven row degrees, each at least 1, summing to 9: the multiset is
`(3,1,1,1,1,1,1)` or `(2,2,1,1,1,1,1)`. Fixing which rows are heavy removes the
global cardinality encoding entirely — and that encoding is most of what made
the single-formula refutation enormous. Up to a rotation of `P` the heavy rows
can be placed canonically, leaving **four** cases (`coverage_cases.py`):

| | core | LRAT steps |
|---|---:|---:|
| one row of degree 3 | 557 | 2,189 |
| two rows of degree 2, cyclic distance 1 | 610 | 2,915 |
| two rows of degree 2, cyclic distance 2 | 543 | **2,934** |
| two rows of degree 2, cyclic distance 3 | 562 | 2,559 |
| **total** | | **10,597** |

The number that matters is the **largest single case**, because transcription
cost is per file: **2,934 steps against a 543-clause core**. The largest
refutation already built here is `lean/PatternCore003.lean` — 420 steps against
a 1,233-clause core. So the four covering cases are *a few times* the largest
file in the development, not the one-to-two orders of magnitude the
single-formula version suggested.

| formulation | files | largest file | total steps |
|---|---:|---|---:|
| one formula, four patterns | 1 | 154,794 steps / 1,967 clauses | 154,794 |
| one formula, two patterns | 1 | 59,657 / 986 | 59,657 |
| + 6 lex-leader constraints | 1 | 30,149 / 976 | 30,149 |
| 28 degree shapes | 28 | 2,934 / 614 | 68,884 |
| **4 shapes, rotation WLOG** | **4** | **2,934 / 543** | **10,597** |

`lean_export/ccase00k.{cnf,lrat}` are the four exported cases, in the form
`python/residual/gen_lean_refutation.py` consumes.

So the same machinery applies — and with the degree-shape split below it is no
longer obviously out of reach. The naive single formula, **59,657 propagation
steps against a 986-clause context, would be one to two orders of magnitude past
the largest thing transcribed into Lean here so far** (the largest to date is 420 steps
against 1,233 clauses, `PatternCore003`, and even that needed the elaboration
budget lifted entirely). Shrinking that proof — by symmetry breaking, by
splitting on the degree sequence, or by replacing it with a structural argument
— is the open problem.

A structural argument looks plausible: a graph in this domain has 14 vertices
and 9 edges with all degrees ≥ 1, so its cycle rank is `c - 5` where `c` is its
number of components, forcing `c ∈ {5, 6}` — it is a 5-component forest, or a
6-component graph with exactly one cycle. Equivalently, since seven row degrees
are each ≥ 1 and sum to 9, the row-degree multiset is `(3,1,1,1,1,1,1)` or
`(2,2,1,1,1,1,1)`, and likewise for columns: at most two heavy rows and at most
two heavy columns.

**The patterns are local in `P` as well**, which narrows where such an argument
would have to bite. Of the 392 relabellings, the 784 distinct images that do not
exchange `P` with `Q` all have a **cyclic row span of 2 or 4** — every one fits
inside a window of four consecutive sides of `P`. Normalising them gives **168
distinct 4×7 constraint blocks**, and a graph is covered exactly when one of its
seven row windows, or one of the seven column windows of its transpose, matches
a block.

One window is not enough on its own: of the **208,887** admissible 4×7 windows
(four rows, each non-empty, 4 to 6 edges — the other three rows need one each),
**80,731 match no block**, the simplest being four rows each meeting `Q` only in
side 0. So coverage is a statement about the *cyclic sequence* of a graph's seven
windows, not about any one of them — which is the shape of a transfer-matrix or
automaton argument rather than a case analysis.

`./cover patterns.txt --noswap` measures how far the `P`-local half gets on its
own: **12,995,192 of the 13,003,620** are covered by a row window, leaving
**8,428** that are covered only through the transpose — and
`--dump` shows those 8,428 fall into just **51 orbits**. Their row-degree
shapes are `(2,2,1,1,1,1,1)` for 5,096 of them and `(3,1,1,1,1,1,1)` for 3,332.

So the covering argument splits cleanly:

1. a `P`-local statement about the cyclic sequence of a graph's seven row
   windows, which settles all but 8,428 graphs; and
2. **51 orbits** of exceptions, which need no new refutation at all — they are
   covered by a *transposed* pattern, and transposition is `pc_swapS` in
   `lean/ResidualSymBase.lean`, already proved.

What is still missing is only step 1, and it is missing as an *enumeration*
problem, not a mathematical one.

Were that step closed, `I ≠ 40` would be a Lean theorem depending on **no
published lemma at all** — not AKR Lemma 5, not AKR Lemma 7, not Černý Lemma 2,
not the exceptional classification.

## 6. Limits

* **The general-position hypothesis is stronger than the project's `Config`.**
  `GP V` asks all 364 orientation determinants of the fourteen vertices to be
  nonzero. `DisjointnessGraph.Config` gives the all-`P` and all-`Q` triples and
  the mixed triples whose two same-polygon vertices form a *side*, and nothing
  more. Across the eight refutations in `lean/` (four residual orbits, four
  patterns) **218** of the 364 triples are used and **111** of them are of the
  kind `Config` does not supply. These theorems therefore need the project's
  standing "general position as WLOG" bridge, which is prose. See
  `docs/residual-412-lean.md` §4.

* **This is not a proof and nothing depends on it.** The candidate proof still
  runs through the pipeline described in `docs/proof-outline.md`.
* The encoding is a **relaxation**: it asserts the 3-term Grassmann–Plücker
  relations, acyclicity on every 4-set, and the crossing pattern. A satisfying
  assignment need not come from any point configuration. That direction does
  not matter here — every instance came back UNSAT, and UNSAT of a relaxation
  refutes the original. The direction that does matter, that a real
  configuration yields a satisfying assignment, is what the controls test, and
  what `lean/ResidualClauses000.lean` and `lean/PatternClauses000.lean` prove in
  Lean for the clauses they use.
* The domain is `I = 40` exactly. Why a counterexample has 40 crossings rather
  than 39 or 41 is parity plus the upper-bound machinery, and is elsewhere.
* Trust for the *certificate-level* claims here includes Python integer and
  Boolean execution, the CNF generator, `drat-trim`, and this directory's own
  code. It does **not** include the SAT solver's verdict. For the four patterns
  it does not include `drat-trim` either, since those refutations are checked by
  the Lean kernel.
* No Lean theorem, published-paper claim, or verification-status row about the
  *candidate proof* was changed on the strength of this sweep. The four pattern
  refutations were added to `lean/` because they stand on their own.
