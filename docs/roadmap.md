# Dependency roadmap toward a kernel-checked `f(7,7) = 38`

**Date:** 2026-09-14. Written after the bounded A7/Lean work of 2026-09-13/14.

## 0. Two endpoints, kept apart

**Endpoint 1 — a mathematical paper.** May rely on correctly applied published
lemmas plus reproducible exact computation. On this endpoint the project is
close: every external lemma has been audited against the source, the
computations are reproduced by two implementations, and the endgame ships a
certificate with an independent checker.

**Endpoint 2 — an end-to-end kernel proof.** Must prove every required
dependency or replace it with a proved alternative. Leaving Černý L2 or AKR L5
external does **not** complete it. What is needed is their *required
consequences*, not formalisations of the whole papers — and the first such
consequence was obtained on 2026-09-14 (Černý L1's use, §2 below).

A **mathematical gap** and **a correct argument that is not yet formalized** are
different things. Most of what follows is the second kind. The exceptions are
flagged.

## 1. Current state by component

| # | Component | Status | Kernel-checked? |
|---|---|---|---|
| A | 38-crossing lower bound | verified, exact | **yes** (`LowerBound.lean`, core Lean) |
| B | Lemma A counting + parity | verified | **yes** as an implication (`LemmaA.lean`) |
| C | Černý L1 consequence (min degree), Lemma A `h2` | verified | **yes, from geometry** (`SegmentGeometry.lean`) |
| D | Lemma A `h1` (exceptional condition) | prose + classification | no |
| E | Order types / exceptional classification | externally cross-checked, reimplemented | no |
| F | 13,003,620 enumeration + filters → 225 | two implementations, exact set match | no |
| G | 225 → 0 endgame | certificate + checker | **yes, about the certificate** (`Endgame.lean`) |
| H | A7-EXT | very strongly corroborated | bridge only (`Lemma7Bridge.lean`) |
| I | Černý L2 consequence | source-audited | transcription only (`CernyL2Interface.lean`) |
| J | AKR L5 consequence | source-audited | `iff` bridge only |
| K | General position (AKR §9) | imported | no |

## 2. What changed on 2026-09-14

Component **C** moved from "imported lemma" to "kernel-checked from geometry".
That is the first time a *published lemma's required consequence* has been
replaced by a proof inside this project, and it is the template for the rest:
we did not formalize Černý's paper — we identified the one consequence the proof
actually uses (`δ(G^D) ≥ 1`) and proved that.

The proof is a parity argument: the number of sign alternations around a closed
cycle is always even, so a vertex-avoiding line cannot meet all sides of an
*odd* polygon. Mathlib-free, no `Classical.choice`.

It also machine-checked the **strict-vs-loose** distinction that the whole
classification rests on (16 exceptional heptagons vs 2,268).

## 3. Ranked by risk, not by effort

**Risk 1 — completeness of the enumeration (F, E).** The largest single
unformalized claim, and the one with the worst track record. Three defects have
now been found in this area, each leaving the headline number unchanged:
the mislabelled 13,484,940 count (K-01), the representative-labelling artifact
(K-11), and the vacuous PQ-adjacency orbit (K-16). **Two of the three were
symmetry or bookkeeping errors that survived review.** Nothing currently
certifies that the 225-case list is complete; `Endgame.lean` explicitly does not.

**Decomposed, 2026-09-14.** "Completeness of the enumeration" is four claims,
and conflating them has been a recurring source of confusion:

1. a counterexample produces a graph satisfying the search conditions;
2. the abstract domain has 13,003,620 elements;
3. the search actually visits every element of that domain;
4. every valid configuration survives each filter to a terminal case proved
   impossible.

`lean/EnumerationDomain.lean` closes **(1)** in full, for an arbitrary
configuration rather than the certificate pair, with no `Classical.choice` and
no Mathlib result used in substance. For **(2)** it proves both ends and neither
of the two links between them. **(3) and (4) remain the gap** — nothing in Lean
inspects, extracts or certifies any search program, and a correct domain count
is not a proof that an implementation enumerates the right set.

A fourth candidate defect in this area was raised and **closed** on 2026-09-14
(K-17): `graphShapeOK`'s degree-sequence requirement looked like an unchecked
filter hiding the `{3,1,1,1,1,1,1}` branch, but it is a descriptive check on the
survivors, and both implementations do enumerate that branch. Worth recording
because the track record above makes such reports easy to believe too quickly.

**Risk 2 — the geometry-to-model bridges for A7 (H).** Four prose steps between
the DRAT certificates and the geometric statement. Now precisely specified in
`docs/a7-specification.md`, which is what makes them attackable.

**Risk 3 — `S(e) ≠ ∅` (H).** Sharper than it looks. It needs AKR Lemma 5's
existence clause *and* its cone dichotomy for the same witness, and the dichotomy
is **not a function of `G^D`** — so no combinatorial filter can supply it. Machine-checked nowhere.

**Risk 4 — the stored `avoiding` flag (G).** `Endgame.lean` trusts a Boolean in
the certificate. A record with a wrong flag passes every theorem. This is
interface `I3` in `lean/README.md`.

**Risk 5 — point-set semantics (A, C).** Everything is at the orientation level.
"No proper crossing" ⟹ "disjoint segments" needs ℝ². Real work, low risk of
being *false*.

**Risk 6 — external lemmas L2/L5 (I, J).** Audited; consequences identified.
Following the component-C template is a known path.

## 4. Three routes to A7 in the kernel

| Route | What it needs | Evidence | Assessment |
|---|---|---|---|
| **Direct geometry** | Prove Observation 6′ + the parts of Lemma 7 used | Observation 6′ is proved in prose; 3 of 12 terminal cases closed | Honest but long. The remaining 9 cases are figure-driven in the source. |
| **Verified finite procedure** | A Lean decision procedure over the chirotope model | none yet | Plausible. The model is small (≤ 12 points). Would need the §3 bridges anyway. |
| **Certificate checking in Lean** | A verified DRAT/RUP checker, plus justified CNF conversion | 15 DRAT proofs exist and re-verify | **External DRAT checking is not kernel verification.** A kernel route must justify the CNF conversion and the checker itself. |

**Before building anything**, investigate existing work: Mathlib's
`SimpleGraph` and combinatorics for the bipartiteness side; any existing Lean
SAT/DRAT checker; and `Mathlib.Analysis.Convex` for the cone predicates. The
project has twice built infrastructure it did not need.

## 5. Recommended next milestone — one, bounded

> **Completed 2026-09-14, over one extended run:** the `I2` milestone; enumeration
> obligations **(1)**, **(2)** and **(3)**; obligation **(4)** *stated* filter by
> filter with (E6) fully and (E8) half discharged; **UB42** formalized; the
> **upper-bound assembly**, including the unconditional `I ≤ 42`; the **(X3)**
> bridge making Lemma A usable at the mask level; and **the target statement
> itself** (`MainTheorem.isGreatest_38`). Twenty-one Lean libraries, 657
> theorems, no project axiom anywhere.

**The situation has changed shape, and the next milestone should be chosen with
that in mind.**

After the above, the upper bound rests on exactly two things: **parity** (that
`I` is even) and **`hne40`** (the enumeration). Everything else is
kernel-checked. And `hne40`'s remaining hypotheses (E1)–(E5), (E7) are now *all*
external mathematics — the published Černý and AKR lemmas plus the exceptional
classification. There is no more "project's own algorithms" work left inside
obligation (4); that was (E6) and (E8), and they are done or half done.

So the candidate milestones are of two quite different kinds:

**(a) Formalize an external lemma.** Černý L2 is the most self-contained (a
statement about 5 consecutive vertices and a 4×4 induced matching). AKR L5 and
L7 are harder. This is real mathematical formalization, not bridge-building, and
should be scoped as such.

**(b) Attack the enumeration barrier itself.** See §8 below — this is the item
that determines whether the stated end goal is reachable at all, and it should
probably be settled before investing in (a).

Explicitly **not** recommended: point-set semantics (`I2b`, needs ℝ², orthogonal);
a Lean SAT checker (A7 is certificate-backed since K-16 closed).

### The `I2`/`I2a`/`I2b` split, recorded

`I2` as originally written stated `toMasks_spec` against **point-set**
disjointness of two segments. That is not statable in this development: `Pt` is
`Int × Int` and `side P i` is never defined as a set anywhere in the repository.
Stating it requires Mathlib's `segment`/`Convex` and the reals, which would
destroy the Mathlib-free trust base the geometry group exists to have — so the
milestone as documented was **not bounded**, its last line silently requiring
real analysis. It is therefore split:

* **`I2a`** — the orientation-level form, against
  `DisjointO K i j := ¬ ProperCross …`. **Proved** (`DisjointnessGraph.lean`),
  core Lean, no Mathlib, no reals.
* **`I2b`** — the single isolated lemma
  `DisjointO K i j ↔ Disjoint (segP K i) (segQ K j)`, needing ℝ² and Mathlib.
  **Not proved.** When proved it upgrades `I2a` to the interface as originally
  written, touching nothing else.

The split costs nothing downstream because `Endgame.lean` never consumes
`toMasks_spec`: every one of its theorems is parametric in `M : Nat → Nat`. It
needs a *function*, not a specification, so the statement form of the spec is a
free design choice.

## 6. On estimates

No week or month figures are given. Observed: the geometric milestone took one
bounded agent session; the A7 attack took five agent sessions and produced a
counterexample rather than a proof. Both are data, neither is a schedule.

## 7. Status

Unchanged: **a candidate computer-assisted proof**. Component C is the first
external dependency replaced by a proof; nothing else moved.

---

## 8. The enumeration barrier — measured, 2026-09-14

**This section decides whether the stated end goal is reachable, and it should
be read before planning any further formalization work.**

The goal is a kernel-checked `f(7,7) = 38` with **no unproved project-specific
axioms**. That excludes `native_decide`, which discharges a goal by running
compiled code and adds `Lean.ofReduceBool` to the axiom set — it would be exactly
the kind of unchecked computation the goal rules out.

So `hne40` — "no configuration attains 40" — has to be established by the kernel.
As currently structured that means the kernel must certify the outcome of a
search over **13,003,620** graphs. The question is whether it can.

### What was measured

* **Kernel `decide`, trivial per-element work** (seven bitmask tests per
  element): 10,000 elements in ~6.2 s and 20,000 in ~12.6 s of user time —
  clean linear scaling, about **2,000 elements/second**. At that rate 13,003,620
  elements would be roughly **1.8 hours**, and that is a *floor*: it does no
  filtering at all.
* **The project's own enumeration**, `EnumerationComplete.enumRec`, at depth 3 —
  **5,670** leaves, about 1/2,300 of the full run — did **not complete in over
  ten minutes** of kernel reduction under `decide`. Scaling that to the full
  13,003,620 leaves gives **weeks at minimum**, before any filter is applied.

Caveats, stated because the numbers are doing real work here: this is one
machine; another job was competing for CPU during the second measurement; and
`decide` cost is dominated by term construction, which grows worse than linearly
as the lists get longer.

**And memory may bind before time does.** The measurements above were taken on a
machine with **8 GB of RAM and 8 cores**, and during this session the OS killed
two benchmark jobs outright for memory pressure — the invalid fold benchmark,
which explored a far larger tree than the real search and ballooned accordingly.
That is a warning worth heeding rather than an anecdote: kernel `decide`
materialises proof terms, and a 13,003,620-leaf evaluation does not obviously fit
in 8 GB regardless of how long one is willing to wait. Any serious attempt at
route (1) of §8's conclusion should measure **peak RSS** as a function of problem
size alongside wall time, and should expect memory, not time, to be the binding
constraint. A machine with substantially more RAM may be a precondition for
answering the question at all. The measurement should be read as an order of
magnitude and a *lower bound*, not a precise figure. It is not close enough to
feasible for those caveats to change the conclusion.

Note also (found the hard way) that `#eval` here runs the **IR interpreter**, not
the kernel, because the project does not set `precompileModules`. `#eval` timings
say nothing about kernel cost in either direction.

### The conclusion, and a correction to it

**`hne40` cannot be closed by kernel-evaluating the search *as currently
written*.** Not "would be slow" — not feasible as a build step.

> **CORRECTION, same day, and it matters.** The sentence above originally read
> "cannot be closed by kernel-evaluating the search", full stop. That was
> stronger than my evidence supports, for two reasons I found by trying to
> benchmark the alternative:
>
> 1. **`enumRec` returns `List (List Nat)`.** The depth-3 measurement above is
>    therefore dominated by *building 5,670 list terms*, not by the arithmetic.
>    A **counting** formulation that accumulates a `Nat` and never materialises
>    the 13,003,620 outputs is a different computation with a different cost, and
>    it has **not** been properly benchmarked.
> 2. **My attempt to benchmark one was invalid.** I wrote a fold version that
>    iterates all 128 masks at each of the seven levels, omitting the real
>    algorithm's size-indexed `SUBS` iteration and its
>    `hi = min(3, budget-(rem-1))` prune. That explores a vastly larger tree than
>    `rec` does — so much so that **Python could not finish it either**. It
>    measured a much worse algorithm and is evidence about nothing.
>
> For calibration in the other direction: the real Python `rec`, *with the full
> filter pipeline*, sweeps all 13,003,620 graphs in about **190 seconds**. If
> kernel reduction were the ~500× slower than Python that the trivial-work
> measurement suggests, a well-engineered fold version would be on the order of
> **a day**, not weeks — expensive and absurd as a build step, but not obviously
> impossible as a one-off.
>
> **So the honest position was: the barrier is real, and its magnitude is not
> established.** That benchmark has now been run. See §8a.

### 8a. The benchmark, run properly (2026-09-14)

A rigorous benchmark of exactly the formulation §8 called for — popcount-indexed
mask iteration, the real prune, `Nat` accumulator, no list construction — was
carried out. Full report, all thirteen scratch Lean files, the measurement
harness and the Python cross-checks are preserved at
[`results/benchmarks/2026-09-14_kernel-enumeration-feasibility.md`](../results/benchmarks/2026-09-14_kernel-enumeration-feasibility.md).

**Scale of the problem, measured exactly:** the full traversal is
**226,668,772 recursive calls** (202,591,578 terminal), yielding the 13,003,620
accepted tuples.

**The measured ladder** (`Nat`, completed runs only):

| calls | user s | wall s | peak RSS |
|---:|---:|---:|---:|
| 19,174 | 4.05 | 3.96 | 0.91 GB |
| 29,101 | 6.61 | 6.58 | 1.00 GB |
| 88,905 | 20.86 | 21.12 | 2.42 GB |
| 134,030 | 32.65 | **173.80** | 2.68 GB |
| 228,061 | — | **did not finish in 180 s** | — |

**CPU time scales linearly and gives ≈15 CPU-hours.** A least-squares fit on the
completed points gives `user ≈ 0.135 + 2.385e-4 × calls`, so 226,668,772 calls
projects to 54,066 s = **15.0 CPU-hours** (band 13–16).

**Wall time does not.** At 134,030 calls, wall time is **5.3× CPU time** — the
machine is already swapping — and that single point alone projects to 81.65
wall-hours. The linear wall model has broken *before* reaching 0.06% of the full
tree.

**Memory is the binding constraint, as suspected.** Peak RSS runs at roughly
**20–25 KB per call** above baseline. Extending that naively to 226,668,772 calls
gives **4.5–5.8 TB — some 560–720× the 8 GB installed**. That figure is
illustrative rather than measured (sharing, compression and cache policy could
change it), but the direction is not in doubt: during a large run `vm_stat`
reported ~19.75 GB sitting in the system compressor.

**Two secondary results worth knowing, both negative.** `UInt8` masks were
**1.8–2.0× *slower*** in user CPU than `Nat` (and used more memory), so the
obvious "use machine words" optimisation is counterproductive here. Switching
`foldl` to `foldr` did not help either.

**Soundness of the measurement itself:** every completed Lean equation was true
and independently verified in Python, and the `Nat` trials reported
`depends on axioms: [propext]` — no `native_decide`, nothing smuggled in.

### The verdict

**Not feasible on this machine, and the obstacle is memory rather than time.**
~15 CPU-hours would be tolerable for a one-off; 4.5 TB of resident memory is not.

Three caveats stated plainly, because this should not be over-read:

1. It identifies a **resource cliff for one formulation**, and does not prove
   every kernel-only approach infeasible. Chunked certificates, explicit state
   sharing, or a formulation with better term sharing were not benchmarked.
2. **The 15 CPU-hours is for *counting only*.** It does not evaluate a single
   filter. The actual `hne40` argument needs AKR L5, AKR L7, crossing-set
   compatibility and Černý L2 applied per graph, which is strictly more work.
3. A machine with far more RAM might complete it. That is a purchasable
   experiment, and it is the one that would settle the question.

### The way forward, and there is a good one

**`UB42` is the proof of concept, and it is in this repository.**

The `I = 42` branch also had an exhaustive computational justification: a sweep
over all `7! = 5,040` perfect matchings against all 14 classes, 70,560 cases, 0
survivors. That sweep is *not* what `lean/Exclude42.lean` checks. Instead the
argument was restructured into: 7 edges with δ ≥ 1 forces a perfect matching; the
crossing set of each `q_j` is a 6-set; two 6-subsets of a 7-set nest only if
equal (**one line**, by instantiating containment at `i := m`); the partners are
distinct; seven distinct indices cannot fit in a 5-element set. The kernel checks
that in milliseconds.

The same should be sought for `I = 40`. There is direct evidence such structure
exists: the project's own pipeline reports that every surviving graph has degree
sequence `(2,2,1,1,1,1,1)` on **both** sides and that only 9 of the 14 classes
survive — the repository's own phrasing is that "the structure is forced, not
observed". If those forcings can be *proved* rather than observed, the case count
collapses and the residual may be small enough to check directly.

**Recommended next milestone: prove the structural forcings for `I = 40`.**

> **Amended the same day, after measuring.** The first draft of this section
> proposed starting with "the degree sequence must be `(2,2,1,1,1,1,1)`",
> on the grounds that `degSeq_of_sum_nine` reduces it to excluding the
> `{3,1,1,1,1,1,1}` branch and that the branch "dies in the L5/L7/L3 filters".
> **That last claim was wrong** — see the correction in `known-issues.md` K-17.
> Instrumenting the pipeline shows the degree-3 branch survives every
> graph-level filter and dies only at the class-dependent ones:
>
> `4,086,600 → L5 11,466 → L7 6,174 → L3 2,646 → crossing-set 222 → Černý L2 0`
>
> So the degree-sequence forcing is **not** elementary and **not** a bounded
> first step: it needs Černý L2 and the exceptional classification, i.e. (E5)
> and (E7), the two hardest remaining inputs. Proposing it as the easy opener
> was a mistake produced by trusting a summary instead of measuring.

That amendment does not sink the strategy, but it does relocate the effort. The
lesson from `UB42` still holds — an exhaustive sweep was replaced by a structural
argument — but note *why* `UB42` was tractable: it consumed only Lemma A (already
in Lean) and the class **invariants** (`|M| = 5`, maximal crossing sets of the
form `FULL \ {m}`), which are cheap, checkable facts about the class data. It
never needed Černý L2.

So the right question is not "which forcing is easiest to state" but **"which
forcings can be proved from the cheap class invariants alone?"** That is the
`UB42` pattern, and it is the one worth searching for. A useful concrete
experiment, cheap to run: for the `I = 40` domain, measure how far the
elimination gets using *only* Lemma A plus the class invariants, with Černý L2
and AKR L5/L7 switched off. If a large fraction dies, there is a `UB42`-style
argument to be found. If almost nothing dies, the external lemmas are genuinely
load-bearing and the restructuring hope should be abandoned rather than pursued.

**Run that experiment before investing in any external-lemma formalization.**

If no such restructuring exists, the honest options are to accept
`native_decide` with a clearly documented trust caveat — which **changes the
stated goal** and should be the user's decision, not a drift — or to leave
`hne40` as a computational result standing outside the kernel, which is what the
project has today.

---

## 9. If the enumeration must be restructured — where the locality is

Recorded 2026-09-14 for whoever picks this up. §8 establishes that closing
`hne40` in the kernel by brute evaluation is at best marginal. The alternative is
to make the search *smaller*, and the useful question is which filters are
**local** — because a local filter can be pushed into a dynamic program over the
seven rows, whose state space may be far smaller than 13,003,620, while a global
one cannot.

Classifying the five filters by locality:

| filter | locality | can it go in a row DP? |
|---|---|---|
| (a) AKR L5, consecutive pairs | needs the **component partition** — global | no, not directly |
| (b) AKR L7 ⟹ `H` bipartite | needs the component partition — global | no |
| (c) crossing-set compatibility | **per column**: each `crossSet(q_j)` must lie in a maximal crossing set | **yes** |
| (d) Černý L2 | windows of **4 consecutive** P-sides | yes, with 3 masks of history |
| (e) AKR L5, avoiding pairs | needs the component partition — global | no |

**The obstruction, stated plainly.** The big cut is (a): the pipeline goes
`13,003,620 → 42,238` on AKR L5 alone, a factor of 308. But (a) fires only on
consecutive P-sides lying in *different components*, and connectivity is a
property of the whole graph, so it cannot be evaluated while a DP is still
choosing rows. Applying it unconditionally would be *unsound* in the direction
that matters — it would discard graphs the real search keeps, which is exactly
the failure obligation (4) exists to prevent.

**Two routes that might get around it, neither yet tested.**

1. **Enumerate over (graph, partition) pairs.** Carry a candidate component
   partition of the 14 vertices in the DP state, apply (a) and (b) against it,
   and at the leaf check the partition is the one the graph actually induces.
   Soundness is then local. The question is whether the state space
   (partition × used-mask × budget × history) stays small enough to be worth it;
   partitions of 14 vertices are numerous, but reachable ones after a few rows
   are far fewer.
2. **Lead with the local filters.** Apply (c) and (d) first, in a DP, and only
   then evaluate (a), (b), (e) on whatever survives. This is sound in any order,
   since all five are necessary conditions. **The cheap experiment nobody has
   run: how many of the 13,003,620 survive (c) alone?** If that number is small,
   the global filters never need to see 13 million graphs and the whole barrier
   softens. If it is still millions, this route is dead. One Python run answers
   it — see `python/elimination/audit_enum.py` for the filter, and note that
   (c) is just "every `crossSet(q_j)` misses some element of `M_P`".

**Route 2 was measured, and it is dead.** Crossing-set compatibility applied
*alone* to the 13,003,620-graph domain leaves:

* **5,404,140** surviving for some P-class;
* **2,783,508** surviving on both sides for some class pair.

Still millions — against the 42,238 that AKR L5 alone achieves. So leading with
the local filters does **not** spare the global ones from seeing most of the
domain, and the row-DP idea buys nothing on its own. The script is
`results/benchmarks/` adjacent work; the filter is just "every `crossSet(q_j)`
misses some element of `M_P`".

That leaves route 1 (carry a candidate partition in the DP state) as the only
untested restructuring, and it should be weighed against §8a's finding that the
binding constraint is **memory**, which a larger state space makes worse, not
better.
