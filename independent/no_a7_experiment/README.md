# Can the `f(7,7) = 38` proof drop the AKR Lemma 7 filter?

**Answer: no.** With AKR Lemma 7 switched off and *everything else identical*,
the pipeline does not reach zero. It ends with **2,187 surviving
`(classP, classQ, graph)` triples on 412 distinct graphs**, instead of 0.

This directory contains the experiment, in full, with two independent code
paths and a third independent re-checker.

---

## 1. The headline numbers

| stage | shipped pipeline (A7 **on**) | this experiment (A7 **off**) |
|---|---:|---:|
| bipartite graphs, `\|E\|=9`, min degree ≥ 1 (Černý L1 domain) | 13,003,620 | 13,003,620 |
| after AKR Lemma 5, **consecutive** pairs | 42,238 | 42,238 |
| after **AKR Lemma 7** (`H` bipartite) | 24,990 | *(filter off)* 42,238 |
| after exceptional-class crossing-set compatibility | 2,300 | 6,376 |
| after Černý Lemma 2 (class-dependent windows) | 121 | 533 |
| `(classP, classQ, graph)` triples reaching the final filter | 225 | 2,412 |
| **after AKR Lemma 5 on avoiding pairs — FINAL** | **0** | **2,187** |
| distinct graphs in the final residual | 0 | **412** |

Černý Lemma 3 is **not** applied in either column, exactly as in the shipped
proof.

Both columns were produced twice, by two different implementations, and the
resulting triple **sets** (not just counts) are equal — see §3.

---

## 2. The sharp statement of what A7 is doing

The experiment gives an unusually clean picture. After Černý Lemma 2 and with
A7 off there are **533** graphs, and they split exactly two ways:

* **121 graphs** on which `H` **is** bipartite (i.e. A7 keeps them) — these are
  the shipped 121, and the final avoiding-pair AKR L5 filter kills **all** of
  them (all 225 of their triples);
* **412 graphs** on which `H` is **not** bipartite (A7 discards them) — the
  final avoiding-pair filter kills **none** of them (all 2,187 of their triples
  survive).

So on the post-Černý-L2 set the two filters are *complementary*: the
avoiding-pair filter is exactly as strong as it needs to be on the graphs A7
keeps, and completely powerless on the graphs A7 removes. The set of triples
killed by the avoiding-pair filter in the A7-off run is **set-equal to the
shipped 225** (checked in `log_compare_paths.log`). A7 is not a convenience
step; it is the only thing in the pipeline that touches those 412 graphs.

A further observation from the run (`log_cpp_no_a7.log`, diagnostic block):
from the 42,238-graph stage onward, `H` is bipartite on the `P` side **iff** it
is bipartite on the `Q` side — the mixed cases `(T,F)` and `(F,T)` never occur
(0 out of 42,238). So "A7 fires" is a single condition, not two.

---

## 2b. Two secondary findings, both positive for the proof

**(i) The `I = 42` branch of Step 9 does not need A7.** `docs/proof-outline.md`
Step 9 eliminates `I = 42` by an explicit appeal to A7: "`|E| = 7` forces a
perfect matching, hence 7 components, … making `H` the complement of `C₇`,
which contains a triangle, contradicting A7." Re-running that branch with A7 off
(`certificate_a7opt.py --edges 7 --no-a7`, log `log_e7_no_a7.log`):

```
graphs |E|=7, min degree >=1 : 5040
after AKR Lemma 5 consecutive: 14
after AKR Lemma 7            : 14      [A7 FILTER OFF]
after crossing-set compatibility : 0
```

**Crossing-set compatibility alone kills all 14.** The reason is immediate:
with `|E| = 7` every `N(q_j)` is a singleton, and compatibility forces that
singleton into `M_P`; ranging over all seven `j` would put all seven sides of
`P` into `M_P`, but `|M_P| = 5` for every exceptional class. So Step 9 can drop
its A7 citation and cite compatibility instead. That removes one of the
proof's two uses of A7 — but not the one that matters.

**(ii) Step 8's structural description is also A7-free.** Step 8 states that
every surviving combination has degree sequence `(2,2,1,1,1,1,1)` on both sides
and that only 9 of the 14 classes get that far. Both remain true with A7 off:
all **533** post-Černý-L2 graphs have `(2,2,1⁵)` on both sides, and the classes
represented are the same nine, `{1,2,3,4,9,10,11,12,13}`. A7 is not what forces
that structure.

---

## 3. Why I believe the 2,187 (and why I would not have believed a 0)

A bug that *over*-filters yields the hoped-for zero, so the baseline was
checked first and the residual was checked three ways.

**Baseline reproduction.** Both implementations, with A7 **on**, reproduce the
shipped chain `13,003,620 → 42,238 → 24,990 → 2,300 → 121 → 225 → 0` exactly,
and produce the *same set* of 225 triples. If either had a filter wired wrong,
this would not hold. Stronger: `py_with_a7.json` (my patched copy, A7 on) and
`baseline_with_a7.json` (the project's unmodified
`make_final_certificate.py`) are **byte-identical**, SHA-256
`7d51a8e37ae8b4caa998c168e9bd4dff6127e060164869624cdeeaea11457011` — so the
`--no-a7` patch demonstrably changes nothing when the flag is absent.

**Enumeration domain.** `check_domain_count.py` re-derives the 13,003,620 by
inclusion–exclusion in closed form, `Σ_j (−1)^j C(7,j) [x⁹]((1+x)^{7−j} − 1)⁷`,
with no enumeration at all. A domain that was silently too small would fake a
smaller residual; it is not.

**Path A — `certificate_a7opt.py` (Python).** A verbatim copy of
`python/elimination/make_final_certificate.py` with one behavioural change: a
`--no-a7` flag. It still `exec`s slices of the project's own
`python/elimination/audit_enum.py`, so every predicate that runs — components,
`L5_ok`, `H_bip`, crossing-set compatibility, `L2_ok`, and the final
avoiding-pair filter — is **Implementation A's original code**, unmodified.
Class data is regenerated deterministically from nothing
(`chiro.py` → `ot7_det.pkl` → `make_exceptional_profiles.py` → `exc_det.pkl`).

**Path B — `reduction_a7opt.cpp` (C++).** A copy of
`independent/implementation_b/reduction.cpp` with two changes: A7 made optional,
and the final avoiding-pair filter added (Implementation B deliberately stopped
one step short of it). Path B differs from path A in language, enumeration axis
(Q-columns by degree sequence vs P-rows by edge budget), graph representation
(49-bit bitboard vs int tuples), component algorithm (bitmask closure vs
union-find), bipartiteness (union-find-with-parity vs DFS colouring) and Lemma 2
(SDR enumeration vs C(7,4) subsets). Its profile input is the canonical JSON,
not the pickle.

**The two paths agree as sets**, not merely in count
(`compare_paths.py`, `log_compare_paths.log`):
2,412 triples reaching the final filter — identical sets; 2,187 surviving —
identical sets; 225 killed — identical to the shipped 225.

**Path C — `verify_residual.py`.** A from-scratch re-checker sharing no code
with either pipeline (Python sets instead of bitmasks, BFS components,
brute-force 2-colouring, `permutations`-based Lemma 2). For each of the 2,187
residual triples it re-derives everything and confirms the triple really does
satisfy `|E|=9` / min-degree, consecutive AKR L5, crossing-set compatibility,
Černý L2 and avoiding-pair AKR L5 — and really does fail A7. **0 failures.**

**Negative control.** The same checker, run on the shipped 225
(`log_control_225.log`), reports **225 failures**, every one of them
`classP killed by avoiding-pair L5` plus `H IS bipartite`. The checker has
teeth; it is not trivially accepting.

**Profile-data agreement.** `check_profile_agreement.py` confirms that the
canonical JSON profiles that path B reads (M-sets, maximal crossing sets,
Lemma-2 windows, **avoiding pairs**, and the compatibility predicate on all 128
neighbourhood masks) are identical to what path A derives at run time from
`exc_det.pkl` via `audit_enum.py`'s own `classdata`. Without this the two
"independent" paths would not be testing the same mathematics.

**Determinism.** `reduction_a7opt --a7=off` run three times produces a
byte-identical output file
(`sha256 a715cf548289c59dd574d9577cbd906d83e0e5545cb89d1e8a6743d25bca2758`).
No randomness, no floating point, no hashing-order dependence anywhere in the
experiment.

---

## 4. What the 412 residual graphs look like

Every one of the 2,187 residual triples has:

* degree sequence **(2,2,1,1,1,1,1) on both sides** — the same as the shipped
  121, so the degree sequence does **not** distinguish them;
* **5 connected components**, hence (14 vertices, 9 edges, 5 components) a
  **forest** — again the same as the shipped 121;
* `H` **non-bipartite on both sides** — this is the *only* structural
  difference from the 121, by construction;
* class indices drawn from `{1,2,3,4,9,10,11,12,13}` on both sides — **the same
  nine classes** as the shipped 225. Classes 0, 5, 6, 7, 8 never appear (they
  are already killed by compatibility / Lemma 2), so class 7, the one with no
  avoiding pairs, is not the problem.

The residual is remarkably uniform: all **81** class pairs from those nine
classes occur, each on exactly **27** graphs (81 × 27 = 2,187). Triples per
graph range from 1 to 36.

The component shape profiles (listing, per component, `(#P-sides, #Q-sides)`)
are the one genuinely new structure:

| component profile | residual (412) | shipped 121 |
|---|---:|---:|
| `(1,1)(1,1)(1,1)(2,2)(2,2)` | 36 | 9 |
| `(1,1)(1,1)(1,2)(2,1)(2,2)` | 180 | 112 |
| `(1,1)(1,2)(1,2)(2,1)(2,1)` | **196** | **0** |

So A7 is the only filter that removes the entire family with two `(1,2)` and two
`(2,1)` components — 196 graphs, roughly half the residual, that no other
justified filter in the project sees at all.

Three concrete representatives (P-side neighbourhoods, i.e. the *non-crossing*
graph):

```
[[0],[0],[1],[2,3],[3],[4],[5,6]]    classes (P,Q) = (2,1)    profile (1,1)(1,1)(1,2)(2,1)(2,2)
[[0],[0],[1],[2,3],[4],[4],[5,6]]    classes (P,Q) = (12,1)   profile (1,1)(1,2)(1,2)(2,1)(2,1)
[[0],[1],[2],[3,4],[4],[5],[0,6]]    classes (P,Q) = (2,9)    profile (1,1)(1,1)(1,1)(2,2)(2,2)
```

The full residual is in `cpp_no_a7.json` (`residual_survivors`, canonically
ordered) and in `py_no_a7.json` (`cases` with `"SURVIVES": true`).

---

## 4b. Does the residual depend on the choice of class representative?

No, not in the way that matters. `docs/known-issues.md` K-11 records defect D2:
the pipeline's intermediate counts depend on which labelled polygon is stored as
each class representative, because "re-labelling carries the survivor set
bijectively **for a fixed ordered class pair**, so emptiness is invariant but
the union over classes is not".

`pairs_no_a7.py` re-runs the class-dependent half of the A7-off pipeline under
three labellings of all 14 representatives — the canonical ones, rotation 3 with
reflection, and rotation 5 — exactly the construction of
`python/elimination/audit_pairs.py`. Result (`log_pairs_no_a7.log`):

* the **per-ordered-class-pair table is identical** under all three labellings,
  hence so is the total **2,187**;
* the **union of distinct graphs is not** representative-independent, as K-11
  predicts: the three labellings give three *different* sets of graphs (they
  happen to have the same size, 412, but they are not equal as sets).

So the quantity to quote from this experiment is **2,187 surviving
`(classP, classQ, graph)` triples**, and the fact that it is non-zero is
invariant. The "412 distinct graphs" figure is real for the shipped
representatives but is representative-dependent, and should be quoted with that
caveat — exactly as the shipped "121 graphs" figure must be.

---

## 5. Can already-trusted ingredients kill the residual?

I checked every ingredient the project already justifies. **None of them
removes a single one of the 412 graphs.**

* **Crossing-set compatibility — is there a sharper trusted form?** No, the
  applied form is already the complete content of the data. Because every class
  has `|M| = 5` and its five maximal crossing sets are exactly the complements
  of the singletons of `M`, the condition "the set crossed by `q_j` lies inside
  some maximal crossing set" is *equivalent* to "`N(q_j) ∩ M ≠ ∅`", i.e.
  "`N(q_j)` is not contained in the 2-element complement of `M`". There is
  nothing left to extract per side, and nothing joint across sides is justified
  by anything short of Lemmas 2/5/7 themselves. All 412 already satisfy it.
* **Černý Lemma 1's parity half** ("a line meets an even number of sides") is
  *not* available as an extra filter here, and the project is right not to use
  it: the pipeline's crossing-set test is a *containment* test on the set
  crossed by the **segment** `q_j`, which is only a subset of the set crossed by
  the **line** `ℓ(q_j)`. Parity constrains the line's set, not the segment's.
  (Indeed the degree-2 sides would violate a naive parity reading, which would
  wrongly kill the shipped 121 too — a useful check that the pipeline's reading
  is the right one.)
* **Černý Lemma 2** is applied at every window of every still-viable class on
  both polygons. Exhausted.
* **AKR Lemma 5, consecutive** is applied to all 7 consecutive pairs on both
  polygons with the published different-component guard. Exhausted.
* **AKR Lemma 5, avoiding** is applied to every avoiding pair of every
  still-viable class on both polygons. Exhausted — and see the diagnostic below:
  even an *unjustifiably strengthened* version of it changes nothing.
* **Order-type data not currently used.** The only fields in
  `exceptional_profiles_14.json` that the pipeline does not consume are the raw
  `canonical_chirotope` and `maximal_crossing_set_sizes`. The verified
  structural invariants (`|M| = 5`; five maximal crossing sets, all of size 6;
  exactly **two reflex vertices** per class) are *facts about the polygon
  classes*, not predicates on the graph: none of them constrains a
  `(classP, classQ, graph)` triple without a further lemma to connect them. I
  could not find a trusted predicate that is available and unused.

### Diagnostics (explicitly **not** part of the verdict)

Computed in `analyse_residual.py`, using predicates the project does **not**
justify, purely to show how far the residual is from eliminable:

* **[DIAG] Černý Lemma 3 kills 0 of the 412.** This is the most informative
  diagnostic in the whole experiment. L3 is off-limits as an A7 replacement
  (unaudited, and the project deliberately showed it unnecessary), but it is
  worth recording that it *could not* serve as one even if it were allowed: it
  does not touch the residual. Nothing currently in or near the project's
  toolkit does.
* **[DIAG] dropping the different-component guard** from the avoiding-pair
  filter — a strictly stronger filter than AKR L5 justifies — kills **0** of the
  412. The residual satisfies the avoiding-pair condition outright, not merely
  by the guard.
* **[DIAG] AKR L5 applied to *all* non-adjacent pairs** (not just the class's
  avoiding pairs) kills **412 of 412**. This is far stronger than anything AKR
  proves — L5 applies only to consecutive and *avoiding* pairs — so it is
  useless as a filter. It does, however, locate precisely where the residual
  lives: these graphs fail the neighbour-adjacency condition only on
  non-adjacent pairs that the class profiles do **not** certify as avoiding.

---

## 6. Verdict

**AKR Lemma 7 cannot be dropped from the `f(7,7) ≤ 38` argument as the proof is
currently organised.** It is load-bearing in the `I = 40` branch: it is the sole
filter that eliminates 2,187 class-pair/graph combinations (412 graphs under the
shipped representatives), including an entire component-shape family that no
other justified filter reaches. The project's one unresolved external dependency
stays.

The experiment does narrow A7's role. Of the proof's two appeals to A7, the
`I = 42` one (Step 9) turns out to be removable — crossing-set compatibility
kills that branch on its own (§2b). So A7 is needed at exactly one point, the
`I = 40` endgame, and nothing else in the project's toolkit comes near it there:
Černý Lemma 3, which is off-limits anyway, kills **zero** of the residual
graphs.

Three honest limits on that verdict:

1. **This shows the current toolkit is insufficient, not that A7 is
   necessary.** A different argument — a new lemma, a realizability argument, a
   sharper use of the order-type classification — might eliminate the 412
   without A7. This experiment did not find one; it does not prove one cannot
   exist.
2. **The 412 are almost certainly not realizable** (if `f(7,7) = 38` holds, none
   of them is). They are artifacts of an over-approximating reduction. Nothing
   here certifies their non-realizability, and no realizability search was
   attempted — a joint order type of 14 points is out of reach.
3. **Common-mode caveat (K-02 / K-09) applies.** Both code paths encode the
   same reading of the published lemmas, and path A literally runs the project's
   own predicate code. This experiment is evidence about the *pipeline*, not an
   independent check of the *mathematics*. In particular it says nothing about
   whether the project's reading of AKR Lemma 7 is correct — only that the
   proof needs it.

---

## 7. Files and how to reproduce

```sh
cd independent/no_a7_experiment
sh run.sh          # ~8 minutes, deterministic, writes only into this directory
```

| file | what it is |
|---|---|
| `run.sh` | the full deterministic invocation, start to finish |
| `reduction_a7opt.cpp` | **path B**: C++ pipeline, `--a7=on\|off`, with the final avoiding-pair filter added. Copy of `implementation_b/reduction.cpp` |
| `certificate_a7opt.py` | **path A**: copy of `python/elimination/make_final_certificate.py` plus a `--no-a7` flag; still runs `audit_enum.py`'s own predicates |
| `verify_residual.py` | **path C**: from-scratch re-checker of every residual triple |
| `compare_paths.py` | set-level comparison of paths A and B |
| `pairs_no_a7.py` | per-ordered-class-pair counts under three representative labellings (K-11 / D2 invariance) |
| `make_control.py` | builds the negative-control input from the reproduced 225 |
| `check_profile_agreement.py` | canonical JSON profiles vs pickle-derived profiles |
| `check_domain_count.py` | closed-form (inclusion–exclusion) cross-check that the enumeration domain really is 13,003,620 |
| `e7_no_a7.json`, `e7_with_a7.json` | the `I = 42` branch (`\|E\| = 7`), with and without A7 |
| `analyse_residual.py` | characterisation of the residual + the labelled diagnostics |
| `make_profiles2.py` | format converter (JSON → flat text), adds the avoiding-pairs field |
| `profiles2.txt` | the converted profile table read by path B |
| `cpp_no_a7.json`, `py_no_a7.json` | the experiment's output, both paths |
| `cpp_with_a7.json`, `py_with_a7.json`, `baseline_with_a7.json` | the A7-on baselines |
| `control_input.json` | the shipped 225 reshaped for the negative control |
| `ot7_det.pkl`, `exc_det.pkl` | regenerated class data (deterministic) |
| `log_*.log`, `gen_*.log` | full output logs of every step |
| `SHA256SUMS.txt` | SHA-256 of every source, input and output in this directory |

Nothing outside this directory was modified. `python/`, `lean/`, `docs/`,
`paper/`, `data/` and `independent/implementation_b/` were read only.
