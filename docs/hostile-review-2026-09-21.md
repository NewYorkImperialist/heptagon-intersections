# Hostile review, 2026-09-21

Reviewer: adversarial pass over the §9 work produced 2026-09-20/21. Goal is to
break things, not extend them. Written incrementally as the review proceeded;
later sections may revise earlier ones.

Ground rule kept throughout: no Lean build was run; all arithmetic below is
exact (`fractions.Fraction` / Python integers), never floating point.

## Status legend

- **BROKEN** — a concrete counterexample or certificate is given.
- **GAP** — the claim may well be true but the stated proof does not prove it.
- **DOUBTFUL** — I could not break it and could not convince myself either.
- **SURVIVES** — I tried specific attacks, they failed, and I believe it.

---

## 1. `independent/e9_directions/README.md` — existence of AKR's directions `E_i`

### Summary

The **central claim survives**: the cone construction is correct, and the
existential AKR assert without proof is true. But four separate statements in
the write-up are wrong or unsupported, and two of them are wrong in ways the
project has a track record of ("free corollary", over-claimed quantifier,
control that cannot fail).

### 1.1 GAP (serious): the Corollary's stated proof is false. Certificate given.

> "Under AKR's **own standing assumption** that the two polygons meet in
> finitely many points, condition (2) always holds."
>
> Proof given: "If all four directions were parallel, both V's would lie on one
> line `L` through the apex, each covering an interval of `L` of positive length
> containing the apex. Two such intervals overlap in a positive-length segment."

The last sentence is false. Two intervals that each merely *contain* a point
can meet in that point alone. Certificate, exact:

    a1 = (1,0)   a2 = (2,0)     P's V covers [0,2] on the x-axis
    b1 = (-1,0)  b2 = (-2,0)    Q's V covers [-2,0]

All four are mutually parallel, so condition (2) fails, and brute force
confirms no direction works in **either** model (`some_direction_works` and
`apexonly.some_dir` both return `None`). Yet `∂P ∩ ∂Q` is locally `{O}` —
**finite**. So "finiteness ⟹ (2)" does not follow from the argument given.

What actually rescues the corollary is *simplicity*, which the write-up never
invokes: if `a1` and `a2` are **positive** multiples of one another the two
edges at `P_i` overlap in a segment and `P` is not simple. Given simplicity,
`a1, a2` are antiparallel, each V contains the apex in its *interior*, and the
overlap does have positive length. The corollary is true; the proof as written
is not, and the hypothesis it is advertised as needing ("AKR's own standing
assumption" of finiteness) is not the hypothesis it uses.

This matters beyond pedantry because the corollary is the thing that discharges
the failure case, and it is sold as resting on a hypothesis AKR already state.
It in fact rests on a second one. (Simplicity is also an AKR standing
assumption, so the repair is available — but it has to be made.)

### 1.2 BROKEN (minor, write-up only): "both in `(0,1)` for every `ε > 0`"

The apex-only paragraph derives `μ = ε s₀/(1+ε s₀)`, `ν = ε t₀/(1+ε s₀)` and
asserts "both in `(0,1)` for every `ε > 0`". `μ` yes; `ν` no. `ν < 1` iff
`ε (t₀ − s₀) < 1`. Certificate, exact:

    a_k = (1,0), b_l = (0,1), s0 = 1, t0 = 6, E = t0*b_l - s0*a_k = (-1,6)
    eps = 1/4:  mu = 1/5,  nu = 6/5 > 1,  and the proper crossing is GONE
                (verified with the transcribed ProperCross: False)

This does not damage the lemma, which quantifies "for every `0 < ε < ε₀`". It
damages the *rhetorical* point the README makes twice — that scale invariance
of the cone gives one direction working for **all** `ε` rather than one `ε` at a
time. In the translate model that is genuinely true at ray level and becomes
`ε`-bounded only when you cut down to segments; in the **apex-only model, which
the 2026-09-20 correction says is the right one**, it is `ε`-bounded from the
start. The scale-invariance slogan is a property of the superseded model.

`apexonly.py`'s own theory check runs only at `ε = 10⁻⁶` with `s₀,t₀ ≤ 6`, i.e.
entirely inside the safe regime, so it cannot see this.

### 1.3 BROKEN: the nondegeneracy argument's "homogeneous" claim is false

> "Each local degeneracy is an incidence ... i.e. an equation `orient(·,·,·)=0`
> in which `E` occurs **linearly and homogeneously**. Its solution set is a
> finite union of **lines through the origin** in `E`-space."

Three of the four incidence families are homogeneous. The fourth is not. For
"`b_l` lies on the moved side `[εE, a_k]`", expanding exactly:

    orient(eps*E, a_k, b_l)  =  (a_k x b_l)  +  eps * ( E x (a_k - b_l) )

which is **affine** in `E` whenever `a_k x b_l ≠ 0` — and `a_k x b_l ≠ 0` is
exactly the case the cone construction is used in. The solution set is a line
*not* through the origin, and it **moves with `ε`**. Certificates, exact:

| `E` (in the open cone `C`, `a_k=(1,0)`, `b_l=(0,1)`) | `ε` at which `b_l` sits on the moved side |
|---|---|
| `(-1, 6)`    | `1/5` |
| `(-1, 11)`   | `1/10` |
| `(-1, 101)`  | `1/100` |
| `(-1, 1001)` | `1/1000` |

verified with the transcribed `orient` / on-segment test. So for **every**
`ε₀ > 0` there are directions in the cone that are degenerate at some
`ε < ε₀`: there is no `ε`-independent "finite union of lines through the
origin" to avoid.

The lemma's conclusion still holds, because for a *fixed* `E` the bad `ε` is a
single value, so `∃E ∃ε₀ ∀ε ∈ (0,ε₀)` is fine. But the proof given establishes
the wrong quantifier order — it argues for a bad set independent of `ε`, which
would give `∃E ∀ε`, and that is false. This is the exact quantifier confusion
the "One final point" ε-estimate turns on, appearing here in the one place the
README claims to be clean.

Note also that the `ν = 1` threshold of §1.2 and the degeneracy of §1.3 are the
*same event* (the crossing point sliding out through the endpoint `b_l`): at
`s₀=1, t₀=6` both occur at `ε = 1/5`. Two of the write-up's over-claims have one
cause.

### 1.4 The (1) ⟹ (2) direction is proved only in the superseded model

The Lemma's clause (1) literally reads "the **translate** of `P`'s V by `εE`",
and the `(1) ⟹ (2)` proof is a translate argument ("both V's lie in lines
parallel to a common direction, and so does every translate"). The apex-only
remark covers `(2) ⟹ (1)` only. Since the correction declares the translate
model *not what AKR do*, the lemma as stated is about the wrong object.

I checked the missing half rather than just complaining about it: 4,000
all-parallel configurations in the apex-only model (random primitive common
direction, random nonzero integer multiples, brute force over 224 primitive
integer directions) — **0 with a working direction**. The claim is true in the
correct model; it is the statement and the proof that were not updated.

### 1.5 `global_finiteness.py`: two controls with almost no power, and an
unreported 378/380

I re-ran it instrumented. On its 380 heptagon pairs:

| measured | value |
|---|---|
| `(trial, E)` pairs where the perturbed pair is **not** finite | **4** out of 85,120 |
| trials in which **any** direction destroys finiteness | **4** out of 380 |
| trials in which **every one** of the 224 directions "gives a crossing" | **154** |
| trials with a pre-existing proper crossing on the two apex sides | **145** |

Consequences:

* The two controls printed as passing — "moved-sides-clean but NOT finite
  (want 0): 0" and "CONTROL: LOCAL-only clause admits a NON-finite direction:
  0" — had **4 opportunities to fail in the entire run**. This is the same
  defect the README itself diagnoses two paragraphs later for the 113-pair
  control, and then does not apply to this script. `antiparallel.py` is the
  script with real power here (2,675 finiteness-destroying directions); the
  heptagon-level controls should be labelled as underpowered, not as passes.
* The predicate the script calls "a proper crossing near the apex" counts
  **any** proper crossing between a moved side and any `Q`-side, including ones
  that were already there at `ε = 0` and have nothing to do with `E`. In 145 of
  380 trials such a crossing pre-exists. I re-measured against the `ε = 0`
  baseline: **380/380 still have a direction producing a strictly new
  crossing**, so the conclusion is fine — but the reported statistic is not
  measuring what its label says.
* The script's headline line is `some direction gives crossing AND globally
  degeneracy-free : 378` — i.e. **2 of 380 fail** — and the README cites the
  script without mentioning this. The 2 failures are an artifact of the script
  still using the `moved_clean` proxy after the README's own prose concludes
  "the right condition is not a proxy at all — it is finiteness itself". I
  re-ran with `finite()` substituted for `moved_clean`: **380/380**. So the
  Lemma survives and the script is stale, but a reader who runs the committed
  code sees an unexplained failure count of 2.
* `global_finiteness.py`'s docstring repeats the false homogeneity claim of
  §1.3, and there it is worse: it is applied to `Q`-vertices on moved sides,
  which is precisely the affine family.

### 1.6 What survives

* The cone `C = {t·b_l − s·a_k : s,t>0}` construction, the solution
  `s = ε s₀`, `t = ε t₀` (translate) and `μ = ε s₀/(1+ε s₀)`,
  `ν = ε t₀/(1+ε s₀)` (apex-only): I re-derived both from scratch and they are
  correct, including transversality of the *moved* side
  (`a_k − εE = (1+ε s₀) a_k − ε t₀ b_l`, whose `a_k`-coefficient never
  vanishes, so it is never parallel to `b_l`).
* "Not all mutually parallel ⟹ some `a_k ∦ b_l`": correct, and the proof via
  parallelism being an equivalence relation is the right one.
* `(1) ⟹ (2)`: true in both models (proved for one, checked for the other).
* The **which-directions-destroy-finiteness** lemma: I re-derived it
  independently in the apex-only model. Writing `a_k = α b_l`, `E = η b_l`,
  the `P`-side runs from `εη` to `α` and the `Q`-side from `0` to `1` in the
  `b_l` coordinate; finiteness at `ε = 0` forces `α < 0`, and then the overlap
  is `[0, min(εη, 1)]`, of positive length iff `η > 0`. This is exactly the
  stated criterion, including the "positive multiple" half. `antiparallel.py`
  is a genuinely non-vacuous test of it (2,675 bad directions found, 0
  mismatches) and I found no hole in its `ε = 0` filter.
* The honesty of the "What this does not do" section, and of the admission
  that the 113-pair control was vacuous, is real and should be preserved.

**Confidence.** High that §1.1–1.4 are as described (all four have exact
certificates or exhaustive checks). High that the headline existential is
nonetheless true. Effort: re-derived every formula by hand, re-ran three
scripts, wrote four new probes.

## 1b. `e9_directions`: the nondegeneracy clause was never re-run in the corrected
model, and it **fails** there — 45/3980

This is the most serious defect I found in `e9_directions`, and it propagates
into `docs/akr-9-assembly.md` §3 hypothesis 5. I put it in its own section
because it is a refutation, not a quibble.

**The claim.** The README's table reports

> `nondegenerate.py` | 3,980 configurations, demanding a direction that crosses
> **and** leaves no local degeneracy | **0** failures

and the 2026-09-20 correction says of the switch from the translate model to
the apex-only model: "**The result is unchanged** — 11,856 configurations, zero
with no working direction".

**Why that is not a re-verification.** `apexonly.py` re-runs only the
*crossing* test. It never re-runs the *nondegeneracy* test. `nondegenerate.py`
is still the translate model: it moves `a₁`, `a₂` and the apex together, so a
pre-existing incidence of a fixed neighbour on a `Q`-side can be translated
away. In the apex-only model `a₁` and `a₂` **do not move**, so such an
incidence is frozen and no `E` can remove it. The README says this in prose two
sections later ("a moved side has an endpoint that does not move, and that
endpoint may already sit on a `Q`-side") — and then does not draw the
consequence for its own table.

**The measurement.** I re-ran `nondegenerate.py`'s own generator (same
`random.seed(9)`, same filters, same 368 primitive directions, exact rationals)
in the apex-only model:

| | translate model (as committed) | apex-only model (correct) |
|---|---|---|
| configurations | 3,980 | 3,980 |
| with a frozen incidence `a_k ∈` a `Q`-side | — | **45** |
| **no crossing-and-nondegenerate direction** | **0** | **45** |

The 45 failures are exactly the 45 frozen cases — the correspondence is
one-to-one, which is what the mechanism predicts.

**Exact certificates** (apex at the origin; the four ray endpoints):

    a1 = ( 2, 2)   a2 = ( 8,-15)   b1 = ( 5, 7)   b2 = (15, 15)
        a1 lies in the relative interior of the Q-side [O, b2]
        apex-only: 183 directions give a proper crossing, 0 of them are
                   degeneracy-free;  translate model: 182 are

    a1 = (12, 6)   a2 = ( 1, 3)    b1 = ( 3, 9)   b2 = ( 7,-13)
        apex-only: 221 crossing directions, 0 degeneracy-free;
        translate model: 220

    a1 = (-4, 3)   a2 = (-1,15)    b1 = (-4, 5)   b2 = (-8, 6)
        apex-only: 310 crossing directions, 0 degeneracy-free;
        translate model: 309

A hand-built minimal one, for reading: `a₁=(2,0)`, `a₂=(0,−3)`, `b₁=(5,0)`,
`b₂=(1,4)`. Here `a₁` sits inside the `Q`-side `[O,(5,0)]`, the four rays are
not all parallel so a crossing direction exists (183 of them), and **none** is
degeneracy-free in the apex-only model.

**What this refutes.**

1. The Lemma's "Moreover" clause, read in the corrected model with the
   nondegeneracy condition the README's own `nondegenerate.py` implements.
2. `docs/akr-9-assembly.md` §3 **hypothesis 5, "(E-clean): `E_i` can
   additionally be chosen with no local degeneracy"**, listed there as
   "**PROVED ON PAPER.** Not in AKR, and load-bearing". It is not proved; it is
   **unsatisfiable** on inputs §9.1 is required to handle, because §9.1
   deliberately leaves vertex-side degeneracies for §9.2 and one of them may
   sit on a neighbour of the apex.
3. The correction note's "The result is unchanged", as applied to the table row
   for `nondegenerate.py`.

**What it does not refute.** The *existence of a crossing direction* (the main
lemma) is untouched: 183/221/310 crossing directions in the three certificates.
And the README's later section already replaces the nondegeneracy proxy with
finiteness, which is the right condition and which `antiparallel.py` verifies
properly. The defect is that the earlier material was not retracted and the
assembly document then imported it as a hypothesis.

**Confidence: very high.** This is a re-run of the project's own script with
one line changed, and the failure count matches the structural prediction
exactly.

## 2. `independent/eps_uniform/` — Lemma U, Theorem U, Corollary U′, bootstrapping, (R3)

### 2.1 SURVIVES: Lemma U and Theorem U

I re-derived Lemma U line by line. With
`ρ(p) = min(1, |c_m|/(1 + Σ_{j>m}|c_j|))` and `0 < ε < ρ(p) ≤ 1`:
`|Σ_{j>m} c_j ε^{j−m}| ≤ ε Σ_{j>m}|c_j| < ρ(p) Σ_{j>m}|c_j| ≤ |c_m| Σ/(1+Σ) < |c_m|`.
Correct. The `min(1, ·)` is genuinely needed (it licenses `ε^{j−m} ≤ ε`), and
the degenerate case `Σ_{j>m}|c_j| = 0` makes one inequality in the chain `0 < 0`
but the conclusion trivial — a one-word fix, not an error.

Theorem U is immediate from it. The claim that this is "the entire analytic
content" is, as far as I can see, true, and it is the strongest thing in this
directory.

### 2.2 BROKEN: Corollary U′ is applied outside its own hypotheses, by its own
verification script

Corollary U′ reads "If `V⁰` has integer coordinates with `‖V⁰_i‖_∞ ≤ N` **and
the directions are integral** with `‖E_i‖_∞ ≤ M`, then `ε₀ ≥ 1/(1+8(N+M)²)`."
The proof's last step is "the lowest nonzero coefficient of an
**integer-coefficient** polynomial has `|c_m| ≥ 1`".

The directions are **not** integral in the setting the corollary is for. By
`FINDINGS.md`'s own (Aff)/Theorem-17 setup and by Lemma R3-B of `R3.md`, a
dependent vertex has `E_d = Σ α_{d,f} E_f` with `α` rational — the `λ`'s of
relation (1). `uniform.make_motion` implements exactly this:

    VQ[5] = lam * VP[0] + (1-lam) * VP[1],   lam in {1/5, 2/5, 3/5, 4/5}

so `E_{Q_5} = λE_0 + (1−λ)E_1` has denominator up to 5, and the `ε²`
coefficients of witnesses involving `Q_5` have denominator up to 25. `|c_m| ≥ 1`
is then false; the correct bound degrades to `|c_m| ≥ 1/q²` and hence
`ε₀ ≥ 1/(q²(1+8(N+M)²))`.

**`apriori.py` — the script that reports "60/60 satisfy `ε₀ ≥ 1/2049`" — runs
on exactly these configurations.** So the corollary's stated hypothesis is
violated in 100 % of its own test cases, and the observed 60/60 is luck of the
slack (the tightest case is 1.15× the bound), not a confirmation of the proof.
In the real §9.1 setting the `λ`'s are whatever the geometry gives, the
denominators are not controlled by `N` and `M`, and Corollary U′ **does not
give an a-priori bound from coordinate size**. The parenthetical "(For rational
data, clear denominators first)" does not rescue it: rescaling `E ↦ cE` is a
reparametrisation `ε ↦ ε/c`, so the bound you get back is
`1/(c(1+8(N+cM)²))`, cubically worse in the denominator `c`, not `1/(1+8(N+M)²)`.

I ran an adversarial search for an outright numerical violation (120
configurations built with `Q_5` forced to be a *lattice* point on `P_0P_1`, so
that `V⁰` is integral while `λ` has denominator ≥ 3, exact throughout). I did
**not** find one: 0/120. So this is a broken *proof* and an inapplicable
*corollary*, not (so far) a false inequality on the tested family. It is the
same shape as the already-known Corollary U52 defect: a "free corollary" whose
hypotheses were not checked against the setting it is sold for.

### 2.3 GAP: the Reduction Theorem lists a hypothesis its proof never uses

The Reduction Theorem assumes **(Aff), (R1), (R2), (R3)** and concludes
(G1)–(G4). Its proof is four paragraphs: (G1) cites (R1); (G3) cites Theorem 17;
(G4) cites bootstrapping; (G2) cites (R2) and Theorem U. **(R3) appears
nowhere.** Either it is redundant in the stated theorem — in which case listing
it is misleading, and Finding 4's "(R3) is open, and is the residue" overstates
what is at stake — or (G1)–(G4) are not the right deliverables.

`R3.md` in effect resolves this: (R3) is load-bearing for **(G5) finiteness**,
which `FINDINGS.md`'s deliverable list omits, and `R3.md` says so explicitly
("**(G5) is new.** `FINDINGS.md`'s Reduction Theorem does not list it"). So the
right reading is that `FINDINGS.md`'s Reduction Theorem is *stale*: it carries
(R3) as an unused hypothesis and omits the conclusion that (R3) actually buys.
`FINDINGS.md` has not been updated to say so, and a reader of `FINDINGS.md`
alone gets a theorem with a decorative hypothesis.

### 2.4 SURVIVES, and I checked it hard: (G2)'s distinctness step

`FINDINGS.md` flags the distinctness paragraph as "written as a sketch". I
worked it out in full and it is correct, and slightly stronger than written:

* two class-(a) crossings on side pairs `(s₁,t₁) ≠ (s₂,t₂)` coinciding at `X`
  forces `X ∈ s₁∩s₂` or `X ∈ t₁∩t₂` with `X` interior to at least one of them,
  contradicting simplicity of `∂P` or `∂Q` — the sketch's own argument, and it
  closes;
* the sketch omits two collision types, and both close too: a class-(b)
  maintained point is a polygon vertex, so coinciding with a class-(a) crossing
  would put a `P`-vertex in the relative interior of a `P`-side; and two
  class-(b) points coinciding is two vertices of the same polygon coinciding,
  excluded by (G4);
* the (R2) crossing at an apex cannot land on a side pair carrying a maintained
  degeneracy, because (R2) demands all four of that pair's `D`'s be `≢ 0` and a
  maintained degeneracy makes one of them `≡ 0`.

### 2.5 SURVIVES: `R3.md` Lemma R3-C's claim that every `E ∈ A` satisfies (R2)

This is the load-bearing step nobody would check, so I checked it symbolically
rather than taking the citation on trust. For the cone pair `(a_k, b_l)` with
`cross(a_k,b_l) ≠ 0`, the four `D`'s of the side pair
`([P_i(ε), P_{i+k}], [Q_j, Q_{j+l}])` are, exactly:

    orient(s0,s1,t0) = eps*cross(E,a_k)      + O(eps^2)
    orient(s0,s1,t1) = cross(a_k,b_l)        + O(eps)
    orient(t0,t1,s0) = eps*cross(b_l,E)      + O(eps^2)
    orient(t0,t1,s1) = cross(b_l,a_k)        + O(eps)

With `E = t₀b_l − s₀a_k`, `cross(E,a_k) = t₀ cross(b_l,a_k)` and
`cross(b_l,E) = −s₀ cross(b_l,a_k)`, so the two `ProperCross` products of
lowest-coefficient signs are `−t₀ cross(b_l,a_k)² < 0` and
`−s₀ cross(b_l,a_k)² < 0`. Both straddle conditions hold **for every** `E` in
the cone and **independently of the neighbours' directions** `F, G` — which is
exactly the "per-apex choices cannot interfere" claim, and it is true. Note the
two `D`'s have valuation 1 and the other two valuation 0; Theorem U handles the
mixed valuations correctly since it gives the sign of each polynomial
separately.

### 2.6 SURVIVES: Theorem R3, and Findings R3-3's two theorems

* **Theorem R3.** `c₀` constant, `c₁` linear on `L`, `c₂` quadratic on `L`
  (correct, since `Λ` is linear and `orient`/`⟨,⟩` are bilinear); `p ∈ Z_forced
  ⟺ c₀ = 0` and `c₁, c₂` identically zero on `L`; so for `p ∉ Z_forced` the bad
  set is inside the zero set of a nonzero polynomial on `L ≅ ℝ^{2|C|}`. Null,
  empty interior, at most 1638 of them, `A` open and nonempty. The argument is
  correct and the "shrinking `L` can only enlarge `Z_forced`, never make the
  target unreachable" observation is the right way to answer the two objections.
* **Lemma R3-C's "the cones live in different coordinates"** is correct: `C` is
  a partial matching because two `Q`-vertices equal to one `P`-vertex would
  coincide with each other.
* **Theorem R3-D.** I re-derived (b): with `A = V+εe`, `B = V+u⁰_k+εE_{P_{i+k}}`,
  `C = V`, `cross(u⁰_k + ε(E_{P_{i+k}}−e), −εe) = −ε cross(u⁰_k,e)
  − ε² cross(E_{P_{i+k}}−e, e)`. Correct. `cross(u⁰_k, ·)` is a nonzero linear
  form because `u⁰_k ≠ 0`, and `e` is an unconstrained coordinate pair of `L` by
  Lemma R3-A + R3-B. Correct.
* **Lemma R3-E** and **Theorem R3-F** are correct as written; I checked the
  three-way case split (not collinear at `ε=0` / collinear and disjoint /
  collinear and meeting) is exhaustive and that each branch delivers
  "at most one intersection point per side pair", which is what finiteness needs.
* I checked Finding R3-1's certificate against the theory and it is consistent:
  `E = (2,0)` with `u⁰ = P₆−P₀ = (−3,0)` gives `cross(u⁰,e) = 0`, and
  `E_{P₆} = 0` makes the `ε²` term `−cross(−e,e) = 0`, so the witness
  `D(P₀,P₆,Q₀)` really is `≡ 0`. R3-1 is a genuine certificate and correctly
  diagnosed.

### 2.7 Non-vacuity of the R3 sweeps: honest, and I could not improve on it

`R3.md` §R3-4 reports that the `Fsh` requirement fires 0 times in the 202
`base`/`deep` configurations and 83 times in the constructed `anti`/`antidep`
families, and says so as "the honesty point of the sweep". That is the correct
handling of exactly the vacuity trap this project has fallen into before. The
`Z_forced`/`Z(E)` computation is symbolic (polynomial identity over `L`), so
"vanishes for every admissible direction" is decided, not sampled — a
materially stronger method than anything else in the repo.

The one number I would ask about: 4 end-to-end failures out of 480, all
`infinite-intersection` on dirty directions, is reported in the table but not in
the prose summary, where "0 configs where `Z_forced` breaks a requirement" is
the headline. The 4 failures are *expected* (they are dirty directions, which
(R3) excludes) — but the table and the prose should not be read as the same
claim.

**Confidence.** High on §2.1, §2.3, §2.4, §2.5. High that §2.2 is a real defect
in the corollary's proof and scope; medium-low that the inequality itself is
ever violated in practice (I looked for a violation and did not find one).
Effort: re-derived Lemma U, Corollary U′'s constants, and the four `D`
expansions by hand; read `uniform.py`, `run_arms.py`, `apriori.py`,
`global_finiteness.py`, `antiparallel.py` in full; wrote and ran two adversarial
generators.

## 3. `independent/akr_9_2/REPAIR.md` §2 (averaging identity) and §3 (termination)

I attacked this hardest of the four items and **found nothing wrong with the
mathematics.** Reporting that honestly, with what I actually checked.

### 3.1 What I verified by re-derivation

* **The normalisation is the load-bearing design choice, and it is correct.**
  `⟨A_δ − A, n⟩ = ⟨B_δ − A, n⟩ = δN` gives `⟨B_δ − A_δ, n⟩ = 0`, so the shifted
  side is **always parallel to `u`**, for every admissible `(a,b)` including
  AKR's own `(w,z)`. I went looking for a missing `τ` term for a *rotating
  middle side* — the `τ₁` definition covers only `s⁻` and `s⁺` — and there is
  none to find: the middle side never rotates. That is a non-obvious property
  of the parametrisation and the document does not flag it as such, but it is
  true and it closes the hole I was hunting.
* **`K_slide`.** For `t : x = q + σ v_t`, `⟨x−A,n⟩ = δN` gives
  `dσ/dδ = N/⟨v_t,n⟩`, so the crossing point slides by `N|v_t|/|⟨v_t,n⟩|` per
  unit `δ`. Matches the definition exactly.
* **`K_rot`.** Solving `C + σ(w + δc_a a) = q + ν v_t` gives
  `|dσ/dδ| = |σ₀ c_a cross(a,v_t)| / |cross(w,v_t)|` with `σ₀ ∈ [0,1]`, so the
  displacement is `≤ |c_a a||w||v_t|/|cross(w,v_t)|`. Matches.
* **`τ₁` is never vacuous in the wrong direction.** If `cross(a,v_t) = 0` then
  `cross(w + δc_a a, v_t) = cross(w,v_t) ≠ 0` by Lemma 1, so collinearity never
  occurs and excluding those `t` from the `min` is correct.
* **The case list of §2.6 is exhaustive.** Points of `𝒟` on `s⁻ ∪ s ∪ s⁺` are
  at `C`, `A`, `B`, `D` or in one of the three relative interiors; (P0)–(P4)
  plus the two stated symmetries cover all of them.
* **The (P1a) "no other moving side contributes" step.** I tried to break this
  with a very sharp vertex angle at `A`, which puts `relint(s)` arbitrarily
  close to `s⁻` — `ρ₃` does not bound the distance between *adjacent* sides. It
  does not break: (Loc)'s "comes from" clause, plus disjointness of the `U_p`,
  forces any contribution in `U_p` to come from `p`, and `p ∈ s⁻ ∩ s = {A}` is
  false. The document's one-line justification is the right one.
* **(★) sums correctly over all six cases**, with `c_p(0) = 1` on
  `ℱ ∩ 𝒟` and `0` on `{A,B} ∖ 𝒟`.
* **§3.1 termination.** The `P`-pass/`Q`-pass argument closes. The two steps I
  went after: (i) a `Q`-vertex cleared from `relint(s)` cannot land on a
  rotated neighbour, because `ρ₂(i)` applies to `(Q`-vertex, `P`-side`)` pairs
  and gives `≥ 3r` while the neighbours move `< r/10`; (ii) after the `P`-pass
  no `Q`-vertex is on `∂P` at all (clause 3 for interiors, (VV) for vertices),
  so the `Q`-pass's moved `Q`-vertices start off `∂P` and stay off by (P0).
  Both hold.
* **§1.4's tilt.** `a ∦ u` always (`n ∦ u`, `n+u ∦ u`) and `a ∦ v_{t_A}` always
  (if `⟨u,v⟩ = 0` then `v ∥ n` and `n+u ∦ n`; if `⟨u,v⟩ ≠ 0` then `n ∦ v`).
  Correct, and `⟨a,n⟩ = N ≠ 0` in both branches so (G) holds.
* **§3.2's non-termination witness.** `n = (0,2) ∥ v = (0,5)`, so (P3-ii)
  applies and the translation slides `P₁` up the `Q`-side for ever. Correct,
  and the "honesty note" about unbounded `δ` escaping is the right caveat.

### 3.2 Two places where the written justification is weaker than the fact

Neither is an error in the theorem; both are places a Lean formaliser would
stop.

1. **(Loc), the "not parallel" step.** "By `δ₀ ≤ τ₁` and Lemma 1, `t` is not
   parallel to the line of `e_δ`." For the *middle* side, when `t ∥ s` and `t`
   meets only `s⁻`, `τ₁` says nothing; the right citation is `τ₂`, which keeps
   `t` off `ℓ_δ` so that `x ∈ t ∩ e_δ` is impossible in the first place. The
   conclusion is covered by the definition of `δ₀`; the sentence cites the
   wrong term.
2. **(P2-ii), "`p ∈ [C,A_δ]` because `τ₀ < 1` and `ρ₄` bounds the length
   change".** `τ₀ < 1` alone is not enough — `τ₀` can be arbitrarily close to
   `1`. What makes it work is `ρ₁`: `p ∈ 𝒟` and `A ∈ V(P)` are distinct points
   of `𝒟 ∪ V(P) ∪ V(Q)`, so `|p − A| ≥ ρ₁ ≥ 3r > 30·|δ|K_end`.

### 3.3 The controls in §4.3 are the best in the repository

R1, R2 and R3b fire; R4 is a directed test with a predicted outcome on both
arms; and **R3 is reported as not firing, with the reason worked out** ("the
skewed side is offset by `(1+τ)δ`, a nonzero multiple of `δ` with fixed sign, so
Lemma 3 still applies"). That is exactly the right handling of a control that
does not do what its author expected, and it is the opposite of the failure
mode this project has repeatedly shown. I have no criticism of §4.3.

### 3.4 One thing I could not check

The 72,400-instance sweep and the 47,346 tests behind (A9.2-avg) I did not
re-run; they are large and the §2 proof is what matters. My verdict on §2 and
§3 rests on re-derivation, not on re-running the sweeps.

**Verdict: SURVIVES.** Effort: re-derived `K_slide`, `K_rot`, `τ₁`, the
`⟨B_δ−A_δ,n⟩ = 0` identity, the (P3-i) sign-flip algebra and the (P2-ii)
containment bound by hand; checked exhaustiveness of the case list; hunted for
a missing rotation term and for a sharp-angle counterexample to (P1a), and
failed at both. **Confidence: high**, with the caveat that this is a pen-and-
paper proof that no formaliser has touched, and my check is one careful reading.

---

## 4. `docs/akr-9-assembly.md` §2 and §3

### 4.1 SURVIVES: Lemma CL and Theorem CI

Lemma CL is correct and its proof is complete. Theorem CI's injection is
correct; I checked the injectivity argument and found the sketch **understates
its own completeness** — see §2.4 above, where I close the two collision types
the four numbered facts omit (class (b) against class (a)/(c), and class (b)
against class (b)). Step 3 — two adjacent apexes forcing two sides to coincide
as segments — I worked through all four sign cases (`k = i±1`, `l = j±1`) and
each really does force `[P_a,P_{a+1}] = [Q_b,Q_{b+1}]` as a segment. The
document is right that this is the place finiteness is load-bearing for a
non-obvious reason.

I also verified every Lean claim §2 and §3 make, by reading the sources:
`AKR9.SimpleClosed`, `Pair9`, `NoVertexOnOther`, `points9`
(`lean/AKR9.lean`); `noVertexOnOther_iff` and `coincidence_crossing_linear`
(`lean/AKR9Reduction.lean`); `raw_crossPairs_card_le_38` and the `RawPair`
structure, which really does carry only `disjP`/`disjQ` and no general position
(`lean/RawConfig.lean` lines 112–123, 231); `heptagon_simplicity_stable_linear`
and `degenerate_corner_not_stable` (`lean/SimplicityStable.lean` lines 375, 393);
`lemmaU_sign`, `theoremU_sameSign`, `bootstrap`, `eps0`, `eps0_pos`
(`lean/UniformEps.lean`). Every statement is as the document describes it, the
Lean `Wit` structure is *more* general than `FINDINGS.md`'s degree-2 case, and
each file ends with `#print axioms` lines. **No `sorry` appears in any of them.**
(I did not build; per the brief I did not run Lake.)

### 4.2 BROKEN: A9-RED's hypothesis list omits the obligation its own "open
item (O1)" is about

Theorem A9-RED says: assume (1)–(12), then (A9). Its proof is "Phase 1 applies
(1)–(8) …; Phase 2 applies (9)–(12) repeatedly". Phase 2 is §9.2, whose
averaging identity has **(F) — finiteness — as an explicit hypothesis**
(`akr-9-2-obligation.md` line 216, `REPAIR.md` §2.1). Hypothesis 1 of A9-RED is
(Fin) for the **input** pair, with the note "it must be *carried*". Nothing in
(1)–(12) carries it: finiteness of §9.1's **output** is not among them, and it
is not a consequence of (G1)–(G4).

It is not automatic, and the project already knows this:
`independent/eps_uniform/R3.md` Finding R3-1 is an exact certificate of an
**AKR-admissible direction that makes `∂P(ε) ∩ ∂Q(ε)` infinite for every
`ε > 0`**, on a configuration satisfying every AKR standing hypothesis. R3.md
then adds the missing deliverable as **(G5)** and proves it (Theorem R3-F) —
*from (R3)*.

So: **(R3), which the assembly document names as open item (O1), has no
hypothesis row in the theorem it is supposed to be an open item of, and the
conclusion it buys is missing from the hypothesis list.** A9-RED as stated is
therefore either (a) false — Phase 2 can be entered with an infinite
intersection — or (b) true only if some unstated hypothesis is read into
"Phase 1 … reach a pair", in which case the hypothesis list is not the
complete obligation the section advertises ("the whole remaining obligation on
one page").

### 4.3 BROKEN: hypothesis 5 is not merely unproved, it is unsatisfiable

See §1b. Hypothesis 5, "(E-clean): `E_i` can additionally be chosen with no
local degeneracy", status "**PROVED ON PAPER** … and load-bearing", is false in
the apex-only model on 45 of `nondegenerate.py`'s own 3,980 configurations, with
exact certificates. The source it cites (`e9_directions` "Nondegeneracy") is a
translate-model result that was never re-run after the 2026-09-20 model
correction.

### 4.4 The assembly document does not know about `R3.md`

`docs/akr-9-assembly.md` (mtime 14:35) contains **no reference to
`independent/eps_uniform/R3.md`** (mtime 01:31, thirteen hours earlier). The
consequences are concrete:

* (O1)'s description says the (R3) sketch is "**explicitly not checked against
  Theorem 17's determination of the dependent directions**". R3.md's Lemma R3-B
  and Theorem R3 do exactly that check — that is the *entire point* of Finding
  R3-2 — symbolically, over the subspace `L`, on 180 configurations with 330
  Theorem-17 dependency rows. So (O1) is described using a status that was 13
  hours stale at the time of writing.
* (O1)'s evidence is given as "18.6 % of AKR-admissible directions violate it,
  `eps_uniform/control2.log`". R3.md replaces that with 15.8 % over 3,600
  symbolically-decided directions on four generators, and notes that the
  base-family rate 18.75 % reproduces the older figure.
* The whole **finiteness** obligation of §4.2 above is R3.md's Finding R3-1 and
  Theorem R3-F, and it is absent from the assembly.

This is the failure mode already recorded in the project's own memory —
completed work in `independent/` being invisible from the assembling document.
It has happened again, and this time it removed a hypothesis from a reduction
theorem.

### 4.5 §2.5a's certificate: verified, and one hole in its completeness argument
that I closed

I re-verified the certificate **from scratch**, in exact integer arithmetic,
with code that imports nothing from the repository. Everything checks:

    P = (2,-4) (2,1) (2,4) (1,3) (-1,3) (-3,4) (-2,2)      simple: yes
    Q = (-4,-3) (0,-2) (3,-1) (2,0) (1,1) (-1,1) (-3,0)    simple: yes
    |dP n dQ| = 4  at  (-5/4, 7/8), (6/11, -20/11), (2, -4/3), (2, 0)
    no side overlaps;  coincident vertices: none
    the unique vertex-side degeneracy: Q3 = (2,0) in relint of P-side 0
    (NC) blocked at exactly P-side 0, P-side 1, Q-side 2, Q-side 3

**But the prose's enumeration of "all the sides that would remove a given
degeneracy" is incomplete.** It lists "the containing side `s`, or either of
the two sides incident to `v`". It omits the **two sides adjacent to the
containing side**: an AKR shift of `P`-side `6` moves `P₀`, and of `P`-side `1`
moves `P₁`, and either would *rotate* the containing side `[P₀,P₁]` about the
other endpoint. `certificate.py`'s `kills` predicate has the same omission
(`(o != name and s == k)` only matches the containing side).

I checked the omitted cases directly. They do not break the certificate, for a
reason the document never states: `P`-side 6's shift moves `P₀` **along
`aff(P₀,P₁)`**, which is the line `x = 2`, so `Q₃ = (2,0)` stays in the
relative interior. Verified at `δ = ±2⁻¹⁰` and `±2⁻²⁰`, exact:

    shift P-side 6, delta = 1/1024:   P0 -> (2, -4083/1024),  Q3 still interior: True
    shift P-side 6, delta = -1/2^20:  P0 -> (2, -4194317/1048576), Q3 still interior: True

(`P`-side 1 is (NC)-blocked anyway.) So **the certificate survives**, but its
stated completeness argument does not cover the cases that matter most, and the
committed checker does not test them. A referee would have stopped here.

### 4.6 BROKEN (minor, but it is a reported statistic): "the seven that are
(NC)-defined"

§2.5a says "of the fourteen sides, the seven that are (NC)-defined all remove
**no** degeneracy, and the three that would remove one are all blocked".
`certificate.log`, committed in the same directory, lists `NC=True` for
`P2 P3 P4 P5 P6 Q0 Q1 Q4 Q5 Q6` — **ten**, not seven. (Seven plus three is
ten, not fourteen, which is the arithmetic tell.) My independent check agrees:
10 defined, 4 blocked. The substance is unaffected — all ten defined sides
remove no degeneracy — but this is the project's recurring "statistic reported
as X-vs-Y when it was really Z-vs-W" failure, in a document written to correct
exactly that class of error.

### 4.7 SURVIVES: the U52 correction

Already settled per the brief and I did not re-litigate it. I note only that the
appended correction's replacement statement, `|∂P ∩ ∂Q| ≤ 38 + d`, is correct
and its "beats 49 exactly when `d ≤ 10`" is right (`38 + 11 = 49` is a tie).

---

## 5. Addendum: the Corollary U′ attack, completed

The adversarial search of §2.2 finished. Twelve configurations built so that
`V⁰` is integral (`‖·‖_∞ ≤ 9`) while the relation-(1) coefficient `λ` has a
large denominator — `Q₅` forced to a **lattice** point strictly inside
`P₀P₁`, `gcd` of that side's vector `≥ 6` — and **9,169 admissible direction
pairs** enumerated exactly, taking the minimum `ε₀` over all of them:

    minimum eps_0 found = 13/4777      a-priori bound 1/(1+8(9+7)^2) = 1/2049
    ratio 5.58        VIOLATES Corollary U': False
    tightest witness B_{12;8,10}: valuation 1, lowest coefficient 2/13

Note the tightest witness's lowest nonzero coefficient is `2/13`, **not an
integer** — which is precisely the step Corollary U′'s proof asserts cannot
happen. So the attack confirms the *diagnosis* (the integrality hypothesis is
false in the intended setting, `λ = 2/13` here) while failing to produce a
violation of the *inequality* (the `1 + Σ|c_j|` denominator has enough slack).

Final verdict on Corollary U′: **the proof is broken and the corollary does not
apply to the setting it was written for**, but I could not refute the
inequality. Someone should either restate it as
`ε₀ ≥ 1/(q²(1+8(N+M)²))` with `q` the lcm of the relation-(1) denominators, or
drop the integrality of `E` from the hypotheses and prove the bound some other
way.

---

## 6. Ranked summary

### Wrong — with certificates

1. **`e9_directions` nondegeneracy: 45/3980 failures in the corrected model.**
   §1b. The `nondegenerate.py` row of the README's table, and
   `akr-9-assembly.md` §3 hypothesis 5 which depends on it, are refuted. Exact
   certificates given. This also means the 2026-09-20 correction's "The result
   is unchanged" is true only of the crossing test, which is the only test that
   was re-run.
2. **`akr-9-assembly.md` A9-RED omits finiteness of §9.1's output.** §4.2. The
   theorem's Phase 2 needs `(F)` and no listed hypothesis supplies it; the open
   item (O1) it names has no hypothesis row; `R3.md` had already identified the
   obligation as (G5) and proved it from (R3), and the assembly document does
   not cite `R3.md` at all (§4.4).
3. **`e9_directions` Corollary (finiteness ⟹ not all four parallel): the proof
   is false.** §1.1. Certificate `a₁=(1,0), a₂=(2,0), b₁=(−1,0), b₂=(−2,0)`.
   The corollary is true but needs *simplicity*, which the write-up never
   invokes and which is not the hypothesis it advertises.
4. **`e9_directions` nondegeneracy argument: "homogeneous" is false.** §1.3.
   The `b_l`-on-moved-side equation is affine in `E`; exact table of `ε`-values
   at which cone directions become degenerate, with `ε_bad → 0`. The proof
   establishes the wrong quantifier order.
5. **`akr-9-assembly.md` §2.5a: "the seven that are (NC)-defined".** §4.6. It
   is ten; the committed log says ten.
6. **Corollary U′'s proof.** §2.2, §5. Integrality of `E` is false in the
   setting, and violated in 100 % of the corollary's own test configurations.
   Inequality not refuted.
7. **`e9_directions`: "`μ, ν` both in `(0,1)` for every `ε > 0`".** §1.2. False;
   `ν = 6/5` at `a_k=(1,0)`, `b_l=(0,1)`, `s₀=1`, `t₀=6`, `ε=1/4`. Harmless to
   the lemma, fatal to the "scale invariance gives one direction for all `ε`"
   slogan, which is a property of the *superseded* model.

### Doubtful — weak or underpowered, not refuted

8. **`global_finiteness.py`'s two controls have 4 chances to fail in 85,120
   trials** (§1.5), and its "crossing near the apex" predicate is satisfied by a
   pre-existing crossing in 145 of 380 trials. Re-measured against the `ε = 0`
   baseline the conclusion holds 380/380; the reported statistic does not
   measure what its label says. Its unreported `378/380` is an artifact of a
   stale proxy (`moved_clean`) that the README's own prose has already
   superseded; with `finite()` substituted it is 380/380.
9. **`FINDINGS.md`'s Reduction Theorem carries (R3) as an unused hypothesis**
   and omits the conclusion (R3) actually buys (§2.3). Stale rather than wrong.
10. **`akr-9-assembly.md` §2.5a's completeness argument** omits the two sides
    adjacent to the containing side (§4.5). I checked them; the certificate
    survives, for a reason the document does not give and the checker does not
    test.

### Survives — I tried and failed

11. **`e9_directions`' central existential.** The cone construction, the
    explicit `μ, ν`, transversality of the *moved* side, and `(1) ⟹ (2)` in
    both models (the apex-only half is unproved in the document; I checked it
    on 4,000 all-parallel configurations, 0 working directions).
12. **The which-directions-destroy-finiteness lemma.** Re-derived independently
    in the `b_l`-coordinate; the "positive multiple" clause is exactly right,
    and `antiparallel.py` is a genuinely non-vacuous test of it.
13. **Lemma U and Theorem U** (§2.1), and their Lean statements.
14. **`R3.md` Findings R3-2 and R3-3 in full** (§2.5, §2.6) — Lemmas R3-A/B/C/E,
    Theorem R3, Theorem R3-D, Corollary R3-D′, Theorem R3-F. I checked the (R2)
    claim of Lemma R3-C symbolically rather than taking the citation, and it is
    correct including the independence from the neighbours' directions. The
    brief calls these "the least checked thing in the repository"; they are now
    checked, and they held.
15. **`akr_9_2/REPAIR.md` §2 and §3 entirely** (§3). Two weak justifications
    found (§3.2), no error. Its §4.3 controls are the best in the repository.
16. **`akr-9-assembly.md` Lemma CL and Theorem CI** (§4.1), plus every Lean
    statement the document cites, read from source.
17. **The §2.5a certificate itself** (§4.5), re-verified from scratch in exact
    integer arithmetic with independent code.

### A note on the brief

The brief asked for `FINDINGS.md` "sections 3, 4, 6, 6a, 6b". `FINDINGS.md` has
Findings 1–5 and no 6. I read Findings 3 and 4 in full (Lemma U, Theorem U,
Corollary U′, bootstrapping, the Reduction Theorem, the (R3) control) and took
"6, 6a, 6b" to mean `R3.md`'s Findings R3-1…R3-4, which I also read in full.
If something else was meant, it was not reviewed.

### Standing caveat

`f(7,7) = 38` is **not** proved. It remains a candidate resting on an import
(A9) that no mathematician has reviewed, and this review — by an AI agent, in
one session — is not that review either. What it is: an adversarial pass that
found six concrete errors and two structural omissions, and that failed to
break the central results of all four items.
