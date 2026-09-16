# Residual realizability: 412 graphs excluded, without class restrictions

> **Status note, 2026-09-16 — this directory has been superseded as *evidence*,
> and is retained as provenance.** The DRAT certificates below are no longer
> what the project relies on: all 412 graphs are now refuted by a Lean theorem,
> `ResidualAll.residual_not_realizable`, whose trusted base contains no SAT
> solver, no certificate and no proof checker. What is still load-bearing here
> is the *inventory* — the 412 graphs and the four-orbit decomposition — and
> `verify.py`'s check that they are exactly the pipeline's output. The exported
> unsat cores that seed the Lean generators are in `lean_export/`. See
> `docs/residual-412-lean.md`.
>
> The closing sentence of §5, "No Lean theorem, published-paper claim, or
> verification status was updated. No commit was made", was true when written
> and is no longer; all four have since changed.

**This does not establish f(7,7) = 38 or close the project's proof.** It does
provide certificate-checked exclusions of **all 412 residual labelled graphs**
(**all 2,187 residual triples**), using four 14-point CNFs and four checked DRAT
refutations, with independently checked vertex-relabelling witnesses covering
every graph. **0 remain unresolved; no timeouts occurred.**

These exclusions do not use AKR Lemma 7, any hooking/cone condition, or any
exceptional-class restriction. They supply a candidate replacement for the
residual I = 40 use of Lemma 7. Integrating that replacement into the complete
reduction is separate work. AKR Lemma 5, Černý Lemma 2, the order-type crossing
fact, and the other upstream reduction/classification dependencies remain.
No existing proof/status files were changed.

## 1. Exact statement

For every row-neighbourhood tuple in `inventory.json`'s `graphs` (the 412
distinct tuples in the two no-A7 residual datasets), there do not exist two
simple closed heptagons with 14 distinct combined vertices and no three of those
vertices collinear, whose cyclically indexed sides have exactly that bipartite
disjointness graph. Side i is the segment from vertex i to vertex i+1 modulo 7.

More precisely, the four representative formulas have no Boolean sign assignment
satisfying the encoded rank-3 Grassmann–Plücker conditions, affine Radon
conditions, polygon simplicity constraints, and exact crossing pattern.
Every real configuration as above would supply such an assignment. The
geometric implication and invariance under cyclic relabelling/reversal/exchange
are explained below, not formalized in Lean. The CNF refutations are checked
computationally, not kernel-checked.

This statement is stronger than excluding just the listed exceptional classes
for these graphs. **No coordinates or internal polygon order types were fixed.**
Dropping class constraints enlarges the candidate set; a refutation of that
larger set also refutes every residual class assignment. This is not a search
with P fixed to a particular realization.

## 2. Method

`run.py` uses a local copy of `evidence/tools/indep_om.py` from the existing
AKR reproduction. The only edit to that copy removes its unused module-level
solver import, permitting solver-free checking. The generic `build` function
is called with points 0..13, fourteen cyclic segments, a crossing-pattern
mapping, and an **empty status list**. No AKR-specific model builder is called.

There are 364 Boolean variables, one for each increasing triple of the 14
points. True means a positive orientation determinant; permutations change the
literal's sign. Every variable is Boolean, so zero orientations are excluded.

Each residual CNF has **162,790 clauses**:

* 160,160 Grassmann–Plücker clauses: for each 5-set and distinguished point a,
  the signs of χ(a,b,c)χ(a,d,e), −χ(a,b,d)χ(a,c,e), and
  χ(a,b,e)χ(a,c,d) cannot all agree. These three determinant products sum to
  zero, so these clauses are necessary for every real configuration.
* 2,002 affine Radon clauses: for each increasing quadruple i,j,k,l, the
  signs χ(j,k,l), −χ(i,k,l), χ(i,j,l), −χ(i,j,k) cannot all agree.
  These are affine-dependence cofactors whose sum is zero. Their exclusion
  is necessary for affine point configurations.
* 112 simplicity clauses: all 14 nonadjacent side pairs within each polygon
  must not properly cross (28 pairs, four clauses each). Adjacent sides share
  their cyclic endpoint. Distinctness and absence of collinearity ensure they
  meet only there; no additional adjacent-side constraint is needed.
* 516 crossing-pattern clauses: the 40 nonedges of the disjointness graph
  require proper crossings (12 clauses each); its nine edges require
  noncrossings (four clauses each). For endpoints a,b,c,d, crossing means
  χ(a,b,c) ≠ χ(a,b,d) AND χ(c,d,a) ≠ χ(c,d,b). With all endpoints distinct
  and no three collinear, noncrossing is equivalent to disjointness.

These are necessary conditions; no claim that every satisfying oriented-matroid
assignment has a straight-line realization is needed. There is no assumption
that f(7,7) = 38 is true.

### Symmetry coverage — explicit vertex maps, not a guessed orbit argument

Only independent rotations/reversals of each cyclic polygon and exchanging
the two polygons are used. All preserve simplicity and segment intersections.
`run.py inventory` canonicalizes the graphs under the resulting 392 side-label
maps. `verify.py` independently enumerates **vertex** maps, derives the induced
side maps from unordered endpoint sets, and checks every one of the 49 edge
AND nonedge conditions. It writes an explicit witness for every input graph to
`coverage.json`. It also re-reads both source datasets and verifies exact set
equality of all 2,187 triples. It does not assume the two datasets agree.

| orbit | P-side neighbourhood bitmasks of representative | input graphs | DRAT lines |
|---|---|---:|---:|
| 000 | [1,1,2,4,12,16,96] | 36 | 335 |
| 001 | [1,1,2,12,8,16,96] | 144 | 430 |
| 002 | [1,1,2,12,16,16,96] | 196 | 344 |
| 003 | [1,2,4,12,16,32,96] | 36 | 449 |

Four certificates are shared via these checked maps; there are not 412
independently solved CNFs. This coverage does not depend on exceptional-class
symmetries, because classes are unconstrained. The number 412 refers to the
shipped representative labellings, as in the no-A7 experiment.

## 3. Validation and certificate checking

Controls were run before accepting any residual refutation. Verbatim from
`controls.log`:

```text
POSITIVE: lower_bound_38; 364 nonzero determinants; 38 crossings; 162774 clauses; 0 violated
positive SAT; model checked
negative UNSAT; DRAT checked (RUP only)
NEGATIVE: same side pair required to cross and not cross; PROOF VERIFIED (UNSAT)
```

The positive control uses exact integer coordinates from
`data/lower_bound/lower_bound_38.json`, also recorded in `lean/LowerBound.lean`.
All 364 coordinate signs satisfy every clause of the same encoding with the
actual 11-edge graph. The solver additionally returns a checked SAT model.
`verify.py` separately checks general position, both polygons' simplicity,
38 crossings, and every CNF clause directly from those integer coordinates.

The negative control adds noncrossing clauses for a pair already required to
cross, retaining the entire positive-control formula. Its 283-line DRAT proof
is checked by the same route as the residual proofs. `verify.py` also gives
the checker a fake empty-clause proof for the positive formula and requires
rejection (`checker_negative.log`).

Solving uses Lingeling through python-sat in the existing read-only environment
`../akr_l7_reproduction/coverage25/.venv/bin/python`. Each representative solved
in less than one second here; certificate checking takes substantially longer.
`orbit_*.json` times measure solving and proof export, not checking. Batch jobs
have a 900-second outer timeout and each certificate check a 600-second timeout;
none were reached. Orbit 000 was initially invoked directly.

`dratcheck.py` is a **verbatim copy** of the existing standalone checker. We
require exit zero, the literal `PROOF VERIFIED (UNSAT)`, and **zero RAT-only
steps**. Thus none of these conclusions relies on its RAT fallback: all proof
additions used here are checked as reverse unit propagation (RUP). Ignoring
proof deletions is sound for these pure-RUP proofs. The negative control and
all four residual proofs derive the empty clause.

Every CNF is retained. `verify.py` regenerates it from input and source,
requires byte equality and the recorded SHA-256, and then checks the DRAT.
Hashes of sources, inputs, and evidence are in `SHA256SUMS.txt` (paths relative
to this directory). The final solver-free run is in `verification.log`.

## 4. Reproduce

From the repository root, **no solver required**:

```sh
sh independent/residual_realizability/reproduce.sh
```

To regenerate proofs using the available python-sat environment:

```sh
export PYTHONDONTWRITEBYTECODE=1
PY=independent/akr_l7_reproduction/coverage25/.venv/bin/python
$PY independent/residual_realizability/run.py controls
$PY independent/residual_realizability/run.py inventory
$PY independent/residual_realizability/run.py 0
$PY independent/residual_realizability/batch.py
sh independent/residual_realizability/reproduce.sh
```

Alternatively use a Python environment with python-sat installed. The existing
venv is only read; bytecode writes are disabled. All generated files go here.
`verify.py` is standard-library-only and does not need that environment.

## 5. Limits and assumptions

* Assumes the task's general-position domain: 14 distinct vertices, no three
  collinear, and simple polygons in their given cyclic order. We do not encode
  the further condition of no parallel sides; allowing them enlarges the
  candidate set and strengthens the exclusion. Extending to degenerate
  configurations still needs the project's general-position reduction.
* Uses only necessary determinant identities and the orientation crossing
  criterion. Their translation to clauses and the real-geometry bridge are
  source-auditable and control-tested, not formally proved. Passing one
  coordinate control is evidence, not a proof of encoder correctness.
* Trust includes Python integer/Boolean execution, the CNF generator, the
  pure-RUP checker, the input data, and the checked symmetry coverage code.
  Lingeling's verdict alone is not trusted. This is not a second independently
  written oriented-matroid encoding; the generic encoder is reused openly.
* Does not enumerate all nine-edge graphs or re-prove completeness of the
  residual pipeline. Its universe is precisely the supplied residual list.
  It does not resolve how the published AKR Lemma 7 should be read.
* AKR Lemma 5, Černý Lemma 2, the order-type crossing fact, classification,
  and upstream completeness/general-position obligations remain in the
  overall proof. No Lean theorem, published-paper claim, or verification
  status was updated. No commit was made.
