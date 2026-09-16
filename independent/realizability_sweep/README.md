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
| sequential counter | 3,022 | 769 | 64 s | VERIFIED | 1,967 | 154,794 |
| totalizer | 4,494 | 607 | 58 s | VERIFIED | 1,970 | 152,726 |

So the same machinery applies in principle — but **155,000 propagation steps
against a 1,967-clause context is one to two orders of magnitude past what has
been transcribed into Lean here so far** (the largest to date is 420 steps
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
