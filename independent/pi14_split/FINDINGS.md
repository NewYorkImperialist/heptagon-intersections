# An attempt at an encoding-independent refutation of $\Pi_{14}$

**Status: complete. The route does not close.**

**Headline: 76 of 256 branches refuted, 0 realizable, 180 undecided.**
$\Pi_{14}$ is **not** independently refuted here, and Theorem 3.4 still rests on
the Lean route alone. Nothing below is a claim about $\Pi_{14}$ being refuted
unless it says so in those words.

Read **section 12** (the final census and the one durable structural result),
**section 13** (verdict), and **section 6b** (a retraction of my own earlier
headline claim). Sections 10 and 11 are superseded and marked as such; they are
kept because the project's convention is to show corrections rather than
overwrite them.

Results were recorded as they were confirmed, because long solver runs get
killed.

Vocabulary used throughout, kept strictly apart:

* **refuted** — a solver returned `unsat` on a system that is implied by
  $\Pi_{14}$'s hypotheses.
* **timed out** — the solver returned `unknown` within the stated budget. This
  is *not* evidence either way.
* **not attempted** — never run.

---

## 1. Ground truth, re-derived from Lean (confirmed)

The 21 conditions were transcribed from the statement of
`minpattern001_impossible`, `lean/MinPatternClauses001.lean` lines 8375–8397,
and are stored in `pi14_common.py`. The Lean statement is

```
theorem minpattern001_impossible (V : Fin 14 → Pt) (hGP : GP V)
    (h0_2 : ¬ProperCross (V 0) (V 1) (V 2) (V 3))   ...   : False
```

with `GP V : ∀ i j k, i ≠ j → j ≠ k → i ≠ k → orient (V i) (V j) (V k) ≠ 0`.

Definitions, from `lean/GeometryDefs.lean` (lines 59, 73), reproduced verbatim
in `pi14_common.py` and `verify_model.py`:

```
orient a b c        = (b.1 - a.1) * (c.2 - a.2) - (b.2 - a.2) * (c.1 - a.1)
ProperCross p1 p2 q1 q2 = orient p1 p2 q1 * orient p1 p2 q2 < 0
                        ∧ orient q1 q2 p1 * orient q1 q2 p2 < 0
```

Translating sides $P_i = (V_i, V_{i+1})$, $Q_j = (V_{7+j}, V_{8+j})$:

| kind | count | cells |
|---|---|---|
| $P_i \times Q_j$ crossing | 13 | (0,1) (0,2) (0,4) (1,0) (1,2) (1,3) (1,4) (2,0) (2,1) (2,4) (3,0) (3,1) (3,2) |
| $P_i \times Q_j$ **miss** | 1 | (1,1) |
| $P$-self miss | 3 | $P_0 \not\times P_2$, $P_0 \not\times P_3$, $P_1 \not\times P_3$ |
| $Q$-self miss | 4 | $Q_0 \not\times Q_2$, $Q_0 \not\times Q_3$, $Q_1 \not\times Q_3$, $Q_1 \not\times Q_4$ |

21 conditions, 13 crossings and 8 negations, on the eleven vertices
$\{0,1,2,3,4\} \cup \{7,\dots,12\}$. **This confirms the counts the project's
existing notes give**, now against the Lean source rather than against prose.
Only 61 of the $\binom{11}{3} = 165$ orientation triples occur in the 21
conditions.

**There is no convexity hypothesis.** The Lean theorem assumes only general
position. Any attempt that adds "$P$ and $Q$ are convex polygons" would be
proving a different, weaker statement. Nothing below adds it.

---

## 2. What the encoding assumes, and why refutation is still sound

The system handed to the solver is *implied by* $\Pi_{14}$'s hypotheses, so
`unsat` on it refutes $\Pi_{14}$. Specifically:

* Each crossing becomes the two strict inequalities of `ProperCross` verbatim.
* Each negation $\neg\mathrm{ProperCross}(a,b,c,d)$ is rewritten, **using
  `hGP`**, as the disjunction
  `or(a,b,c)·or(a,b,d) > 0  ∨  or(c,d,a)·or(c,d,b) > 0`.
  The rewriting needs the four determinants to be nonzero, which is exactly
  what `hGP` supplies; it is not an extra assumption.
* General position on the other $165-61$ triples is simply **not asserted**.
  That makes the system a *relaxation*, which only makes `unsat` harder to
  obtain and the conclusion stronger.
* No Grassmann–Plücker relation, no acyclicity clause, no Boolean variable, and
  no fact from the Lean development is asserted anywhere. The only external
  input is z3's decision procedure for the reals.

### The normalisation (new in v2)

v1 fixed $V_0=(0,0)$, $V_1=(1,0)$, leaving 18 variables and a **2-dimensional
residual stabiliser** $\{(x,y)\mapsto(x+by,\,dy),\ d>0\}$: every solution came
in a 2-parameter family. v2 additionally fixes $V_2=(0,1)$, giving **16
variables and no gauge freedom at all**. This is legitimate because

* `hGP` forbids $V_0,V_1,V_2$ collinear, and the orientation-preserving affine
  group acts simply transitively on ordered non-degenerate triangles, so every
  configuration with $\mathrm{orient}(V_0,V_1,V_2)>0$ has exactly one
  representative with these three points pinned;
* the case $\mathrm{orient}(V_0,V_1,V_2)<0$ is covered by reflection, which
  negates every determinant while leaving `ProperCross` — a conjunction of
  *products* of two determinants — unchanged.

---

## 3. Controls (confirmed, both pass)

Matching the discipline of `../order_type_pi8/run.log`.

**Positive control.** The $f(7,7)\ge 38$ lower-bound certificate
(`data/lower_bound/lower_bound_38.json`) supplies eleven concrete integer points
$V_0..V_4, V_7..V_{12}$. Evaluating the *same 21 cells* on those points gives a
pattern that is realizable by construction and that differs from $\Pi_{14}$ in
exactly **3** cells:

```
((1,2),(8,9))    Pi_14 says miss,  certificate crosses
((1,2),(10,11))  Pi_14 says cross, certificate misses
((3,4),(9,10))   Pi_14 says cross, certificate misses
```

Fed through the identical pipeline, the control returns **`sat` in 0.01 s** with
a rational model. So the pipeline is not a machine that refutes everything.

**Vacuity / soundness check.** The z3 model was re-verified *without z3*, in
exact `Fraction` arithmetic, by `verify_model.py`, which re-implements `orient`
and `ProperCross` straight from the Lean definitions: 21/21 conditions hold.
The same model was then checked against $\Pi_{14}$ and violates exactly the 3
cells listed above — the index arithmetic is therefore doing what it claims.
The certificate's own points (reflected, since
$\mathrm{orient}(V_0,V_1,V_2)=-6633<0$) also verify 21/21 against the control
pattern, with zero collinear triples among all 165 — confirming both the
reflection argument and the certificate's general position.

Constraint counts, spot-checked: monolithic control = 33 assertions
(2 per crossing + 1 `Or` per negation = 2·12 + 9); monolithic $\Pi_{14}$ =
2·13 + 8 = 34.

---


## 4. Branch census of the disjunct split (v1) — **COMPLETE, and it does not close**

`pi14_split.py` (2-point normalisation, 18 variables) over all $2^8 = 256$
choices of disjunct, 15 s per branch, 3771 s total:

```
RESULT  unsat=11  sat=0  unknown=245  total=3771s
```

| outcome | count |
|---|---|
| **refuted** (`unsat`) | **11** / 256 |
| realizable (`sat`) | 0 / 256 |
| **timed out** (`unknown`, 15 s) | **245** / 256 |

Refuted branch indices: `0, 1, 4, 12, 17, 21, 109, 132, 133, 140, 149`.

**This route, as formulated in v1, is nowhere near closing.** 245 of 256
branches are simply undecided; "all 256 branches refuted" is false, and the
earlier pilot (which saw 2 of 8 branches die fast) was not representative.

### Do the survivors cluster?

Writing each refuted branch as its 8 disjunct bits, in the order
`P1–Q1 miss, P0–P2, P0–P3, P1–P3, Q0–Q2, Q0–Q3, Q1–Q3, Q1–Q4`
(bit 0 = "the two endpoints of the second segment fall on the same side of the
first segment's line"; bit 1 = the mirror statement):

```
    0   0 0 0 0 0 0 0 0
    1   0 0 0 0 0 0 0 1
    4   0 0 0 0 0 1 0 0
   12   0 0 0 0 1 1 0 0
   17   0 0 0 1 0 0 0 1
   21   0 0 0 1 0 1 0 1
  109   0 1 1 0 1 1 0 1
  132   1 0 0 0 0 1 0 0
  133   1 0 0 0 0 1 0 1
  140   1 0 0 0 1 1 0 0
  149   1 0 0 1 0 1 0 1
```

The only uniformity is that **all 11 have bit 0 on $Q_1 \not\times Q_3$**, and
10 of 11 have bit 0 on both $P_0\not\times P_2$ and $P_0 \not\times P_3$. On a
sample of 11 that is weak, and the refuted set is otherwise scattered across the
cube. I do **not** read a structural pattern here: the distribution is better
explained by "z3 happened to find these easy", since the refuted indices are
heavily concentrated at small indices, which is just the enumeration order
interacting with per-branch difficulty. **This is a negative result about the
split, not a structural finding about $\Pi_{14}$.**

---

## 5. Two more controls, at the level of an individual branch (confirmed)

The census above is a claim about *branches*, so the controls should be too.

**Branch-level positive control.** Evaluating the certificate's eleven points
(reflected, so that $\mathrm{orient}(V_0,V_1,V_2)>0$) tells us which disjunct of
each of its 9 negated crossings actually holds: bits
`(0,0,0,0,0,1,0,0,0)`. That branch is satisfiable *by construction* — the
certificate is a witness. Fed through the pipeline it returns

```
  branch of the certificate, rand=0   -> sat      0.03 s
  branch of the certificate, default  -> unknown  30.0 s
```

So (i) the branch machinery finds realizable branches, and (ii) **z3's default
configuration returns `unknown` on a branch that demonstrably has a solution.**
That is the sharpest evidence available that `unknown` in this family means
"z3's search went badly", not "nearly unsatisfiable".

**Exact re-check.** Each `sat` model produced anywhere in this directory is
re-verified by `verify_model.py` in exact `Fraction` arithmetic, with `orient`
and `ProperCross` re-implemented from the Lean definitions and z3 not involved.
All models so far verify 21/21.

*(Note on the collinear triples those models contain: the encoding deliberately
does not assert general position on the 104 triples that no condition mentions.
Omitting them makes the system a relaxation, which is the safe direction for a
refutation — see section 2. It does mean a `sat` model is a witness for the
21 conditions, not automatically a general-position witness; a generic
perturbation fixes that, and the certificate itself has 0 collinear triples of
165.)*

---

## 6. `nlsat.randomize`: a finding I got wrong, and the corrected version

> **Read section 6b first.** What follows in 6 was my original claim; it is
> **retracted**. 6a is a challenge to it that arrived from outside this
> session; 6b is the controlled experiment that settles the question, and it
> comes out *against* the original claim.

### 6 (retracted, kept for the record)

z3's `qfnra-nlsat` randomises its variable order and its sample-point choices by
default (`nlsat.randomize = true`). **On this family that default is
catastrophic.** Same solver, same formula, same decision procedure — only
deterministic:

| problem | default | `nlsat.randomize=false` |
|---|---|---|
| disjunct branch 0 of $\Pi_{14}$ | `unknown` @ 15 s | **`unsat` in 0.10 s** |
| the certificate's own branch (satisfiable!) | `unknown` @ 30 s | **`sat` in 0.03 s** |

Other knobs were tried on the same branch and did nothing: `nlsat.reorder=false`,
`nlsat.shuffle_vars=true`, `nlsat.lazy=2` all still returned `unknown` at 12 s.
`nlsat.randomize` is the one that matters.

**This retroactively devalues every `unknown` recorded in this project for
$\Pi_{14}$**, including the original 15-minute run quoted in
`../order_type_pi8/README.md` and the 245 `unknown`s of section 4: all of them
were run with the randomising default. The order-of-magnitude speedups here are
not a better encoding, they are a solver setting.

It does **not** make the problem easy — see the next section — but it is the
first thing anyone continuing this work should set.

### 6a. Correction (2026-09-20): the direction of the effect does not hold up

The table above is two data points, and generalising it to "on this family that
default is catastrophic" was too strong. Checked afterwards on a sample of
**24 systems that are satisfiable by construction** — take 11 random points in
general position, read off their true 21-cell pattern, assert that pattern, and
ask z3 for coordinates, so a witness provably exists — at an 8 s timeout, on the
un-normalised 22-variable encoding:

| outcome | count |
|---|---|
| solved by **both** settings | 1 |
| solved **only** by the default | 1 |
| solved **only** by `randomize=false` | 2 |
| solved by **neither** | **20** |

So `randomize=false` is not reliably better — it is a different draw in the same
lottery, and on one seed the default won by the same dramatic margin the table
above reports in the other direction (`sat` in 0.50 s versus `unknown` at 30 s).
With 3 wins against 2 on a sample of 24, the difference is noise.

**The conclusion of section 6 survives, and is in fact stronger than stated: a
`unknown` from `qfnra-nlsat` on this family carries almost no information, under
either setting.** z3 failed to solve **20 of 24 systems it was guaranteed to be
able to satisfy**. That is the reason to discount every `unknown` recorded here
and in `../order_type_pi8/README.md` — not the randomisation default.

One thing the sweep does confirm: **no soundness problem.** Across all 48 runs
the solver never once returned `unsat` on a satisfiable system, so the 11
refutations of section 4 stand as genuine.

*(Caveat in the other direction: this sweep uses the un-normalised 22-variable
encoding, which is harder than the normalised 16-variable branches section 6
timed. The two data points in that table may well be real for those particular
branches; what does not follow is the general rule.)*

**Script:** `sat_by_construction_sweep.py`, added 2026-09-20 — it was written
outside the repository and the section originally cited results with nothing to
audit them against, which was a fair complaint. Re-run it with
`python3 sat_by_construction_sweep.py`; it builds each instance from a fixed
seed, so the table above reproduces.

**Read §6b next.** This section establishes only that the effect has no
*direction* under single runs. §6b goes further with a properly controlled
experiment on the encoding the census actually uses, and finds that there *is* a
direction and it is the opposite of §6: a restart portfolio beats derandomising,
24/64 against 11/64. Do not stop here.

### 6b. The controlled experiment, and the retraction

**Provenance note.** Section 6a, and the `README.md` in this directory, were
written during this session by something other than the run that produced
sections 1–5 and 7–11. I could not audit 6a's "24 systems" sweep — no script
and no log for it exists in this directory — so rather than accept or delete
it, I ran the discriminating experiment myself. 6a is kept as written.

6a's objection to section 6 is correct in method: two data points from a
*randomised* solver are a lottery draw, not a finding. But 6a's own sweep used
the **un-normalised 22-variable** encoding, in which 20 of 24 satisfiable
systems went unsolved under *both* settings — an experiment where both arms
fail 83 % of the time cannot separate them.

So I ran it on the encoding the census actually uses (`isolate_randomize.py`):
the same 256-branch systems, 3-point normalisation, 16 variables, branches
0–63, **equal total budget of 20 s per branch per arm**. Because "the default
is a lottery" is precisely the hypothesis under test, the default arm is given
its fairest form — five runs at different `nlsat.seed` values, 4 s each, and a
branch counts as solved if *any* seed solves it.

```
branches 0-63, 20 s total per branch per arm
  default, best-of-5-seeds : 24 / 64 refuted
  nlsat.randomize=false    : 11 / 64 refuted
  refuted by both          :  9
  only by the default      : 15
  only by randomize=false  :  2
  union                    : 26
```

**Section 6 is retracted.** `nlsat.randomize=false` is not "the first thing
anyone continuing this work should set" — at equal budget it is **less than
half as effective** as leaving the default alone and restarting with different
seeds. The two dramatic single-branch numbers in 6's table were real for those
two branches and generalised to nothing.

**What survives, and is the genuinely useful version:**

1. **Restarts are what matter.** Five 4-second runs beat one 20-second run
   24-to-11. On this family nlsat's runtime distribution is heavy-tailed, so
   budget is far better spent on diverse short attempts than on one long one.
   This is the actionable finding; it is the *opposite* of the advice in 6.
2. **The two settings are complementary** (union 26 > best single 24), so the
   right configuration is a portfolio containing both.
3. **`unknown` from `qfnra-nlsat` carries very little information on this
   family, under every setting tried.** The evidence for this is the branch of
   the certificate in section 5: a system with an explicit witness, on which
   the default returns `unknown` at 30 s. That observation stands. It is the
   real reason to discount the 15-minute run quoted in
   `../order_type_pi8/README.md` — 6a is right about that, and right that the
   reason is not the randomisation default.
4. **No soundness problem.** Across every run in this directory, no
   configuration ever returned `unsat` on a system known to be satisfiable, and
   no branch of $\Pi_{14}$ ever returned `sat`. The refutations stand.

**Consequence for section 10.** The 57/256 census was run with a
`[randomize=false, default]` portfolio at 20 s each, which the above shows was
a poor choice. It is superseded by section 12.

---

## 7. What was tried on the survivors

### 7.1 Full affine normalisation (three points pinned) — helps, but does not decide

`pi14_v2.py`. 18 variables and a 2-dimensional stabiliser become 16 variables
and none. On its own this did **not** crack the monolithic problem
(`unknown` at 60 s) nor the branches (branches 0–7 under the new numbering:
one `unsat` in 0.05 s, seven `unknown` at 15 s). It is kept because it is free,
it is clearly right, and it composes with everything else.

*Numbering warning:* v1 ordered the eight negations as
`P1–Q1, P0–P2, P0–P3, P1–P3, Q0–Q2, Q0–Q3, Q1–Q3, Q1–Q4`; v2 and later order
them as they appear in the Lean hypothesis list,
`P0–P2, P0–P3, P1–P3, P1–Q1, Q0–Q2, Q0–Q3, Q1–Q3, Q1–Q4`. **Branch indices are
not comparable between section 4 and later sections.**

### 7.2 nlsat seed portfolio — no effect

Ten different `nlsat.seed` values on branch 2 (a branch that resists
`randomize=false`), 8 s each: **all ten `unknown`**. The win in section 6 is
specifically from turning randomisation *off*, not from getting a lucky draw.
`nlsat.reorder`, `nlsat.shuffle_vars`, `nlsat.lazy` also did nothing.

### 7.3 Splitting on determinant signs instead of on disjuncts — right idea, too slow

`pi14_signs.py`, `run_signs2.py`. Both `ProperCross` and its negation are
statements about *products* of two determinants, so every inequality in the
disjunct split is degree 4. Fixing the sign of each determinant separately
replaces each by a single **degree-2** strict inequality:

```
ProperCross(a,b,c,d)  <->  s(abc) != s(abd)  and  s(cda) != s(cdb)
```

Only 61 of the 165 triples on the eleven points occur in the 21 conditions, so
the search is a DFS over 61 signs, pruned by (a) checking each condition as
soon as its four signs are set, and (b) handing the accumulated degree-2
conjunction to z3, whose `unsat` kills the subtree soundly. Leaves that come
back `unknown` are **adaptively refined**: split on one of the remaining 104
triples (exhaustive, because `hGP` makes every determinant nonzero) and recurse.

*Variable order matters enormously.* Ordering by "which condition closes
soonest" put the search into 16-dimensional z3 calls immediately and it ground
to a halt (9 800 nodes in 165 s, then effectively stopped). Ordering by
**point insertion** — V0,V1,V2 pinned, then V3,V4,V7,V8,V9,V10,V11,V12 — keeps
the subproblems at 2, 4, 6, ... variables for as long as possible, and z3
answers those in microseconds. A probe down one branch:

```
depth  1..16, dimensions 0..8 : every z3 call 0.00 s, then a combinatorial dead end
```

**But it does not scale.** With the point ordering, `nlsat.randomize=false`, and
adaptive refinement, after ~470 s: 4 741 nodes, 3 103 z3 calls, 611 subtrees
refuted, 98 leaves closed, 80 refinements, **0 undecided, 0 sat** — and still
inside the *first* of 16 384 measured prefixes. The refinement machinery works
(every leaf it reached was closed); the tree is simply far too large. Rough
shape of the difficulty: the raw count of sign assignments to the 61 triples
satisfying the 21 conditions is of order $2^{61}\cdot 4^{-13}\cdot(3/4)^{8}
\approx 10^{9}$, and z3's pruning at low depth does not cut that to anything
walkable on one machine.

**Verdict on this route: correct, sound, and not finishable at this scale.**

### 7.4 Adaptive sign refinement of the disjunct branches — best available lever

`refine_branches.py`. Start from a disjunct branch (a conjunction of degree-4
inequalities, which carries more information than any partial sign vector), and
whenever z3 says `unknown`, split on one more determinant sign and recurse.
Splitting is exhaustive under `hGP`. Splits are offered in point-insertion
order, constrained triples first, skipping `orient(V0,V1,V2)` which the
normalisation pins to the constant 1.

On branch 2, depth 6 (64 subproblems, 56 s) was still not enough. Deeper
refinement is where the remaining hope lies; it is expensive per branch.

---

## 8. A measurement trap worth recording before the numbers

Any census here is "how many branches did z3 close inside a *wall-clock*
budget". That makes the number sensitive to things that have nothing to do with
$\Pi_{14}$, and I walked into two of them.

**(a) Portfolio composition.** `nlsat.randomize=false` is much better than the
default *on average* (section 6) but it is **not uniformly better**: there are
branches the default closes and `randomize=false` does not. The two
configurations are complementary, so a census run with only `randomize=false`
undercounts.

**(b) CPU contention on a 4+4 machine.** This host has
`hw.perflevel0.logicalcpu = 4` performance cores and
`hw.perflevel1.logicalcpu = 4` efficiency cores. Running 8 solver processes puts
half of them on efficiency cores, where a 20 s wall-clock budget buys a small
fraction of the work it buys on a performance core.

Both at once produced a badly misleading run. Sharding 8 ways with a
`randomize=false`-only portfolio gave

```
unsat=26  sat=0  undecided=230   (8 shards, 20 s/branch)   <-- CONFOUNDED
```

whereas an unshared two-configuration portfolio, on the very same branches
0–31, closed **14 of 32** where the 8-way shard closed **2 of 32**. A factor of
seven, entirely from measurement conditions.

**So the 26/256 figure is not reported as a result.** The census was re-run
with 4 shards (one per performance core) and the full
`[randomize=false, default]` portfolio at 20 s per configuration. That is the
number recorded in section 9.

This also means the comparison "v1 got 11/256" is not apples-to-apples either:
v1 ran unshared at 15 s with the default configuration only.

---

## 9. Adaptive refinement does not rescue a hard branch

Branch 2 — `(0,0,0,0,0,0,1,0)` in the v2 numbering — is the canonical hard case:
`unknown` under `randomize=false`, `unknown` under all ten `nlsat.seed` values
tried, `unknown` under `reorder=false` / `shuffle_vars` / `lazy=2`.

Refining it by splitting on determinant signs (sound and exhaustive under
`hGP`), to depth 10, `randomize=false` throughout:

```
branch 2 UNDECIDED after depth 10 (453 s, 285 z3 calls)
```

285 calls rather than the $2^{11}-1$ a blind binary tree would need means the
refinement *is* closing most subtrees early — it just cannot close all of them.
So the lever works in the direction intended and is still not enough.

Pushed further to depth 18 (`refine_branch2_deep.log`), branch 2 ran for over
an hour without resolving and was stopped. **Refinement depth is not the
missing ingredient.**

---

## 10. ~~The definitive census~~ — superseded by section 12

> **Superseded.** This census used the `[randomize=false, default]` portfolio,
> which section 6b later showed to be a poor choice. Its 57/256 is beaten by
> the 76/256 of section 12. The *clustering* result below, however, replicates
> under the better configuration — see section 12.

### 10 (as run: 57 refuted, 0 realizable, 199 undecided)

3-point affine normalisation (16 variables, no gauge freedom), portfolio
`[nlsat.randomize=false, default]` at 20 s per configuration, 4 shards on the
4 performance cores (which reproduces the unshared numbers exactly: 4 refuted
on branches 0–7 either way).

```
RESULT PI_14  unsat=21  sat=0  unknown=43   (branches   0- 63, 1955s)
RESULT PI_14  unsat= 7  sat=0  unknown=57   (branches  64-127, 2368s)
RESULT PI_14  unsat=10  sat=0  unknown=54   (branches 128-191, 2194s)
RESULT PI_14  unsat=19  sat=0  unknown=45   (branches 192-255, 1953s)
---------------------------------------------------------------------
TOTAL          unsat=57  sat=0  unknown=199
```

| | v1 (2-point norm, default z3, 15 s) | this run |
|---|---|---|
| **refuted** | 11 / 256 | **57 / 256** |
| realizable | 0 | 0 |
| **undecided** | 245 / 256 | **199 / 256** |

A five-fold improvement in refutations, and **still 199 of 256 branches
undecided**. To say it plainly: *this does not refute $\Pi_{14}$.* No branch has
ever returned `sat`, so nothing here contradicts the Lean theorem — but
"nothing contradicts it" is not corroboration.

### The survivors *do* cluster, sharply, on one condition

Unlike the v1 census, the pattern here is unambiguous. Splitting by the
disjunct chosen for **$Q_1 \not\times Q_3$** — i.e. $\neg\mathrm{ProperCross}
(V_8,V_9,V_{10},V_{11})$:

| disjunct taken for $Q_1 \not\times Q_3$ | refuted |
|---|---|
| bit 0: $Q_3$'s endpoints on the same side of $Q_1$'s line | **55 / 128 (43 %)** |
| bit 1: $Q_1$'s endpoints on the same side of $Q_3$'s line | **2 / 128 (2 %)** |

The two exceptions are branches 14 and 18. No other condition comes close: the
next strongest are $P_0\not\times P_3$ (70 % of refuted vs 44 % of undecided)
and $Q_0\not\times Q_2$ (65 % vs 46 %), both consistent with noise by
comparison. The refuted branches run from index 0 to 241 and are spread across
all four shards, so this is not an enumeration-order artifact — and it
replicates the one hint the v1 census gave (all 11 of its refutations had bit 0
here).

**The hard core of $\Pi_{14}$, for this method, is the half of the search space
in which $Q_1$ lies to one side of $Q_3$'s supporting line rather than the
reverse.** That is the single most useful lead this session produced for anyone
continuing. I am not claiming it is mathematically deep rather than a fact
about how nlsat searches — but it is a real, replicated, 20-to-1 asymmetry.

*(Note: the two disjuncts of a negated crossing can both hold, so the 256
branches are a cover, not a partition. That is fine for exhaustiveness —
refuting all of them refutes $\Pi_{14}$ — but it means the two halves above are
not disjoint populations.)*

---

## 11. ~~Verdict~~ — superseded by section 13

> **Superseded.** Written before the section 6b retraction, so item 2 of its
> list ("`nlsat.randomize=false`") states the opposite of what the controlled
> experiment found, and its counts are the section 10 ones. Kept for the
> record; **read section 13 instead.**

### 11 (as written, before the retraction)

**The semialgebraic route does not close, and $\Pi_{14}$ remains without an
independent refutation.**

What is solid:

* the encoding is re-derived from the Lean source, not from prose, and is a
  *relaxation* of $\Pi_{14}$'s hypotheses, so `unsat` on it would be a genuine
  refutation;
* the pipeline is control-validated at two levels, with every model re-checked
  in exact rational arithmetic and z3 kept out of the check;
* **57 of 256 branches are refuted; 199 are undecided; none is realizable.**

What this session actually adds to the project:

1. **A completed census replaces an anecdote.** The README's "one 15-minute
   nlsat run did not terminate" becomes a measured distribution over all 256
   branches, twice, under two encodings.
2. **`nlsat.randomize=false`.** A solver default was silently wrecking this
   family — it returns `unknown` at 30 s on a system the lower-bound
   certificate *demonstrably satisfies*. Every `unknown` previously recorded
   for $\Pi_{14}$ was produced under that default and should not be trusted as
   evidence of difficulty.
3. **A measurement trap** (section 8) that produced a seven-fold wrong answer
   and would have been reported as a result.
4. **A replicated 20-to-1 structural asymmetry** in which branches are
   tractable (section 10).
5. **Three routes closed off with reasons**, so nobody repeats them: the seed
   portfolio (section 7.2), the 61-sign DFS (7.3, ~10⁹ assignments), and
   adaptive refinement of a hard branch (section 9, branch 2 survives depth 10
   at 285 z3 calls).

What would have to change for this to close: refuting 199 branches that resist
a 20 s two-configuration portfolio, several of which also resist depth-10 sign
refinement. That is not a matter of more patience on this machine. It wants
either a genuinely different formulation, or a CAD implementation better suited
to this shape than nlsat (QEPCAD, Redlog, Maple — none installed here), or a
machine-scale attack.

**Until then, Theorem 3.4 rests on the Lean route alone, and the paper's
statement that $\Pi_8$ and $\Pi_{14}$ have asymmetric support remains correct
and should stay.**

---

## 12. The final census — **76 refuted, 0 realizable, 180 undecided**

This supersedes section 10. Same encoding (3-point normalisation, 16
variables), but the configuration that section 6b actually established as best:
a **restart portfolio** — five runs of stock randomised nlsat under seeds
0,1,2,3,5 plus one `randomize=false` run, 4 s each, 24 s per branch. 4 shards
on the 4 performance cores. `census_final.py`.

```
RESULT range=  0- 64  unsat=28  sat=0  unknown=36   ( 977s)
RESULT range= 64-128  unsat=12  sat=0  unknown=52   (1355s)
RESULT range=128-192  unsat=26  sat=0  unknown=38   (1030s)
RESULT range=192-256  unsat=10  sat=0  unknown=54   (1384s)
--------------------------------------------------------------
TOTAL                 unsat=76  sat=0  unknown=180
```

| census | encoding | solver | refuted | realizable | **undecided** |
|---|---|---|---|---|---|
| v1 (§4) | 2-point norm, 18 vars | default, 15 s | 11 / 256 | 0 | **245** |
| §10 | 3-point norm, 16 vars | `randomize=false` + default, 40 s | 57 / 256 | 0 | **199** |
| **final (this)** | 3-point norm, 16 vars | **6-way restart portfolio, 24 s** | **76 / 256** | 0 | **180** |

Seven times v1's refutations, at less than twice the budget — and **180 of 256
branches are still undecided.** $\Pi_{14}$ is *not* refuted here.

**Which portfolio member closed each branch** (first to succeed):

```
seed0: 32   seed1: 20   seed2: 9   seed3: 7   seed5: 5   randomize=false: 3
```

A textbook heavy tail, and the final word on section 6: `randomize=false` was
first on **3 of 76**, the weakest member of the portfolio. Most branches that
can be closed are closed by the first 4-second attempt; the rest are picked up
by *diversity*, not by longer runs.

### The $Q_1 \not\times Q_3$ asymmetry replicates, independently

| disjunct for $Q_1 \not\times Q_3$ | refuted |
|---|---|
| bit 0: $Q_3$'s endpoints on one side of $Q_1$'s line | **74 / 128 (58 %)** |
| bit 1: $Q_1$'s endpoints on one side of $Q_3$'s line | **2 / 128 (2 %)** |

Exceptions: branches 30 and 46. This is now seen in **three independent runs**
under three different solver configurations — v1 (11/11), §10 (55/57), and this
one (74/76). It is not a solver-configuration artifact and not an
enumeration-order artifact.

**This is the one durable structural result of the session.** The difficulty of
$\Pi_{14}$, for every method tried, is concentrated almost entirely in the half
of the search space where $Q_1$ lies to one side of $Q_3$'s supporting line.
Anyone continuing should start there — and should note that a *human* argument
ruling out that half would reduce the remaining problem by a factor of ~30 in
practice.

---

## 13. Verdict

**The semialgebraic route does not close. $\Pi_{14}$ still has no independent
refutation, and Theorem 3.4 still rests on the Lean route alone.**

The numbers, stated the way they should be: **76 of 256 branches refuted, 0
realizable, 180 undecided.** "Undecided" is not evidence of anything.

What this session contributes:

1. **A Lean-verified, control-validated, encoding-independent formulation** of
   $\Pi_{14}$'s realizability, with a positive control at two levels and every
   model re-checked in exact rational arithmetic without z3.
2. **Three complete censuses** where the project previously had one anecdote,
   improving 11 → 57 → 76 refutations as the method improved.
3. **A replicated 30-to-1 structural asymmetry** (§12) — the best lead for
   future work.
4. **A retraction (§6b).** My own headline finding — "`nlsat.randomize=false`
   is the first thing anyone should set" — was wrong, generalised from two
   data points of a randomised solver. The controlled experiment shows the
   opposite: at equal budget, restarts with varied seeds refute more than twice
   as many branches. The correct advice is *restart, don't derandomise*.
5. **Negative results recorded so they are not repeated**: the 61-sign DFS
   (~10⁹ assignments), adaptive refinement of a hard branch (branch 2 survives
   depth 10), the seed sweep on a hard branch, and the reason the order-type
   route cannot be rescued by extension from $n=10$ (the cells available to an
   11th point depend on a particular realization's line arrangement, not on the
   10-point order type).
6. **Two methodology traps**, both of which produced wrong answers before being
   caught: CPU contention on a 4+4 core machine (§8, a factor of seven), and
   generalising from single runs of a randomised solver (§6b).

**What the paper should say is unchanged**: $\Pi_8$ has an independent
exhaustive check, $\Pi_{14}$ does not, and a reader weighing the result should
know that.
