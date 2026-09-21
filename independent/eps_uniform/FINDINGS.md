# `eps_uniform` — the "One final point" uniform-epsilon step of AKR §9.1

Target: the paragraph beginning **"One final point:"** on PDF p. 24 (journal
p. 1072) of Ackerman–Keszegh–Rote, *Discrete Comput. Geom.* **68** (2022)
1049–1077. `../../docs/akr-9-1-obligation.md` §5.2 rates it **the hardest step
in the whole section** and the remaining blocker after `../e9_directions/`
closed the other one.

All arithmetic below is exact `fractions.Fraction`. Nothing is floating point.

**This does not prove `f(7,7) = 38`.** That remains a candidate resting on this
import, unreviewed by any mathematician.

---

## Finding 1 — AKR's local claim is true, and the real mechanism is not the sine law

### What AKR say

> "If `P_i` moves linearly as `εE₁`, the marked distance changes like `kε + O(ε²)`
> for some constant `k > 0` if all other points remain fixed … If one or both
> endpoints of an edge move by a distance `O(ε)`, the rotation angle is bounded
> by `O(ε)`. Since the leading side `εE_i` of the shaded triangle is of length
> `O(ε)`, the effect of the rotation on the side lengths of the triangle is of
> order `O(ε²)`. (This can be checked by using the sine law.)"

### The exact computation

Put the coincidence `P_i = Q_j` at the origin. `Q_j` is free and stationary;
`P_i(ε) = εE`; the far endpoints move too: `P_{i−1}(ε) = a₁ + εF₁`,
`Q_{j−1}(ε) = b₁ + εG₁`. Write

    w = P_i(ε) − Q_j        = εE
    u = P_{i−1}(ε) − P_i(ε) = a₁ + ε(F₁ − E)
    v = Q_{j−1}(ε) − Q_j    = b₁ + εG₁

The intersection is `w + s·u = t·v`, so by Cramer

    s(ε) = −cross(w,v) / cross(u,v),    t(ε) = cross(w,u) / cross(v,u)

and the marked distance from `Q_j` is `d(ε) = t(ε)·‖v(ε)‖`. Expanding
(`cross(E,E) = 0`):

    cross(w,u) = ε·cross(E,a₁) + ε²·cross(E,F₁)
    cross(v,u) = cross(b₁,a₁) + ε·[cross(b₁,F₁−E) + cross(G₁,a₁)] + ε²·cross(G₁,F₁−E)
    cross(w,v) = ε·cross(E,b₁) + ε²·cross(E,G₁)
    cross(u,v) = cross(a₁,b₁) + ε·[cross(a₁,G₁) + cross(F₁−E,b₁)] + ε²·cross(F₁−E,G₁)

Hence, **provided `cross(a₁,b₁) ≠ 0`** (the two sides are not parallel):

> **t(ε) = [cross(E,a₁)/cross(b₁,a₁)]·ε + O(ε²)** and
> **s(ε) = [cross(E,b₁)/cross(a₁,b₁)]·ε + O(ε²)**,
>
> and **both leading coefficients are completely independent of `F₁` and `G₁`** —
> i.e. of the motion of the other endpoints.

### Why this is cleaner than AKR's argument

The mechanism is **not** a sine-law estimate on rotation angles. It is a
statement about valuations of two polynomials:

* the numerator `cross(w,·)` has **valuation ≥ 1** in `ε`, because `w = εE`;
* the denominator has a **nonzero constant term** `cross(b₁,a₁)`, because the
  two sides are not parallel at `ε = 0`.

Moving the far endpoints perturbs the *denominator* at order `ε` and the
*numerator* at order `ε²`. A perturbation of order `ε` in a denominator whose
numerator already has valuation 1 can only show up at order `ε²` in the
quotient. That is the whole content, and it is an identity in `ℚ(ε)`, not an
estimate. **No sine law, no rotation angle, no triangle is needed.**

For the marked distance itself, `d(ε) = t(ε)·‖b₁ + εG₁‖`, and `‖b₁ + εG₁‖` is
analytic with nonzero value `‖b₁‖` at `ε = 0`, so
`d(ε) = [cross(E,a₁)/cross(b₁,a₁)]·‖b₁‖·ε + O(ε²)`, again with `F₁, G₁`
absent from the leading coefficient.

### `k > 0`

With the `e9_directions` cone direction `E = t₀·b₁ − s₀·a₁`, `s₀,t₀ > 0`:
`cross(E,a₁) = t₀·cross(b₁,a₁)`, so the leading coefficient of `t` is **exactly
`t₀ > 0`**, and that of `s` is **exactly `s₀ > 0`**. So `k > 0` is not an extra
hypothesis — it is forced by the direction `e9_directions` constructs.

### Controlled verification — `fig27.py`, log in `fig27.log`

4000 random configurations with integer coordinates in `[−6,6]`, cone
parameters `s₀,t₀ ∈ {1..5}`, and independent random motions `F₁,G₁` of the two
far endpoints; 187 skipped for `a₁ ∥ b₁` or a zero vector.

| quantity | count |
|---|---|
| trials | **3813** |
| `ε¹`-coefficient of `t` identical with far endpoints fixed vs. moving | **3813** |
| … mismatches | **0** |
| same, for `s` | 3813 / **0** mismatches |
| leading coefficient equals the predicted `t₀` (resp. `s₀`) exactly | 3813 (asserted, no failures) |
| `k > 0` | **3813** |
| `k = 0` or `k < 0` | **0** |

**Non-vacuity control.** A test that compared two *identical* computations would
pass trivially. The `ε²` coefficients of `t` with the far endpoints fixed vs.
moving **differ in 3757 of 3813 trials** (they coincide in 56, where the random
`F₁,G₁` happen to be harmless). So the two series really are different
functions, and the agreement at order `ε¹` is a genuine cancellation, not an
artifact.

---

## Finding 2 — "there will be no degenerate situations" is literally false, and `e9_directions`' extra clause is load-bearing

AKR's sentence choosing the directions is:

> "We choose each direction `E_i` independently so that the two polygons have at
> least one nondegenerate intersection in the neighborhood of the original
> configuration, assuming that all other points stay where they are."

and the paragraph concludes "for small enough `ε`, the linear growth `kε`
dominates, and **there will be no degenerate situations**."

**Those two sentences do not fit together.** The criterion on `E_i` is
*existential in one crossing*; it does not constrain `E_i` relative to the other
three sides at the apex. Taking `E_i ∥ a₁` makes
`orient(P_i(ε), P_{i−1}, Q_j)` **identically zero in `ε`** — a degeneracy that
no `ε > 0`, however small, removes.

### An exact certificate — `attackA_detail.py`, log `attackA_detail.log`

Apex at the origin, `Q_j` stationary, `P_i(ε) = εE`, everything else fixed:

    a₁ = P_{i−1} = ( 1, −3)      b₁ = Q_{j−1} = (4, −1)
    a₂ = P_{i+1} = ( 3, −4)      b₂ = Q_{j+1} = (3,  5)
    E  = −2·a₁   = (−2,  6)

Both V's are genuine (`cross(a₁,a₂) = 5 ≠ 0`, `cross(b₁,b₂) = 23 ≠ 0`). Then:

* **AKR's criterion is met**, twice over: side `P_iP_{i+1}` properly crosses
  *both* `Q_jQ_{j−1}` and `Q_jQ_{j+1}` for all small `ε > 0` (leading sign
  pattern `[−,+,+,−]` on both, checked also at `ε = 1/4` and `ε = 1/100` by
  exact evaluation).
* The vertex-vertex coincidence **does** separate: `P_i(ε) = εE ≠ 0 = Q_j`.
* And `orient(P_i(ε), P_{i−1}, Q_j) ≡ 0`, with `Q_j` strictly **between**
  `P_i(ε)` and `P_{i−1}` — verified at `ε = 1/2, 1/10, 10⁻⁹` (the parameter is
  `1/(1+2ε)`, always in `(0,1)`). So `Q_j` lies in the interior of side
  `P_iP_{i−1}` for **every** `ε > 0`.

### How bad is this?

**Not fatal, but the paper does not contain the fix.** The persistent
degeneracy is a *vertex-side* degeneracy, and §9.2 is exactly the section that
removes those, so §9's overall conclusion survives. But:

* AKR's stated conclusion for §9.1 — "no degenerate situations" — is false as
  written; what is true is the weaker "no vertex-vertex coincidence remains and
  no intersection point is lost".
* The repair AKR would need is the **extra clause proved in
  `../e9_directions/`**: `E_i` can additionally be chosen so that the
  translated configuration has no local degeneracy, because each local
  degeneracy cuts out finitely many lines through the origin in `E`-space and an
  open 2-D cone is not covered by finitely many lines. That clause is **not in
  the paper**, and Finding 2 shows it is not decorative.
* It also shows the "One final point" estimate is **not sufficient by itself**.
  `k > 0` for the *chosen* crossing says nothing about quantities that are
  identically zero on other side pairs at the same apex. The `O(ε)` vs `O(ε²)`
  comparison is the wrong tool for those: they are not small, they are zero.

### Non-vacuity of `k > 0` — `adversarial.py` attack B

`k = cross(E,a₁)/cross(b₁,a₁)`, so the `k > 0` guarantee is a real constraint on
`E`, not automatic. Drawing `E` uniformly at random from `[−6,6]²` instead of
from the `e9_directions` cone, over 4000 trials (191 skipped for `a₁ ∥ b₁` or
`E = 0`):

| `k > 0` | `k = 0` | `k < 0` |
|---|---|---|
| 1826 | **131** | **1852** |

So `k ≤ 0` happens in **52 %** of unconstrained directions. Finding 1's
`3813/3813` with `k > 0` is a consequence of the cone choice, not of the test
being unable to fail.

---

## Finding 3 — the uniform `ε₀`, stated precisely and proved

This is what §5.2 of the audit says nobody in the project has written down.

### Setup

Let `V⁰ = (V⁰₁,…,V⁰₁₄) ∈ (ℝ²)¹⁴` be the combined vertex list of two simple
heptagons `P⁰, Q⁰` whose boundaries meet in finitely many points (AKR's standing
assumption). AKR's **Theorem 17** supplies a motion which is *linear in `ε`* and
agrees with `V⁰` at `ε = 0`; that is exactly

> **(Aff)**  `V_i(ε) = V⁰_i + ε·E_i` for some `E_i ∈ ℝ²`, `i = 1,…,14`,

with `E_i` the chosen perturbation direction when `V_i` is a moved free vertex,
`E_i = 0` when `V_i` is a stationary free vertex, and `E_i` determined by
Theorem 17's linear system when `V_i` is dependent.

### The witness family `W`

Because of **(Aff)**, three families of functions of `ε` — and these are *all*
that the argument ever needs — are polynomials **of degree ≤ 2**:

| family | definition | count |
|---|---|---|
| `D_{ijk}` | `orient(V_i(ε),V_j(ε),V_k(ε))` | `C(14,3) = 364` |
| `Δˣ_{ij}, Δʸ_{ij}` | the two components of `V_i(ε) − V_j(ε)` | `2·C(14,2) = 182` |
| `B_{i;jk}` | `⟨V_j(ε)−V_i(ε), V_k(ε)−V_i(ε)⟩` | `3·364 = 1092` |

`W` := the union; `|W| = 1638`. Writing `u⁰ = V⁰_j − V⁰_i`, `w⁰ = V⁰_k − V⁰_i`,
`u = E_j − E_i`, `w = E_k − E_i`:

    D_{ijk}(ε)  = cross(u⁰,w⁰) + ε·[cross(u,w⁰) + cross(u⁰,w)] + ε²·cross(u,w)
    B_{i;jk}(ε) = ⟨u⁰,w⁰⟩     + ε·[⟨u,w⁰⟩ + ⟨u⁰,w⟩]           + ε²·⟨u,w⟩
    Δˣ_{ij}(ε)  = (V⁰_i − V⁰_j)ˣ + ε·(E_i − E_j)ˣ            (likewise Δʸ)

`D` decides collinearity and the side of a line; `Δ` decides whether two
vertices coincide; `B` decides **betweenness along a collinear triple**, which
the orientation signs alone do *not* determine — this is the family one is most
likely to forget, and it is needed for "a vertex lies **on the segment**" as
opposed to "on the line".

### The bound

For a real polynomial `p = Σ_{j=m}^{d} c_j εʲ` with `c_m ≠ 0` (`m` = the
valuation), put

> **`ρ(p) := min( 1 , |c_m| / (1 + Σ_{j>m} |c_j|) )`**

and

> **`ε₀(V⁰, E) := min { ρ(p) : p ∈ W, p ≢ 0 }`.**

`ε₀ > 0`, and it is an **explicit** algebraic expression in the 28 coordinates
of `V⁰` and the 28 coordinates of `E` — no limit, no compactness, no "for small
enough".

### Lemma U (root-free radius)

> Let `p = Σ_{j=m}^{d} c_j εʲ ∈ ℝ[ε]`, `c_m ≠ 0`. Then for every `ε` with
> `0 < ε < ρ(p)`: `p(ε) ≠ 0` and `sgn p(ε) = sgn c_m`.

*Proof.* `p(ε) = εᵐ·(c_m + Σ_{j>m} c_j ε^{j−m})`. Since `0 < ε ≤ 1`,
`|Σ_{j>m} c_j ε^{j−m}| ≤ ε·Σ_{j>m}|c_j| < ρ(p)·Σ_{j>m}|c_j|
 ≤ |c_m|·Σ_{j>m}|c_j| / (1 + Σ_{j>m}|c_j|) < |c_m|`.
So the bracket has the sign of `c_m`, and `εᵐ > 0`. ∎

That is the entire analytic content. It is three lines and needs no library.

### Theorem U (uniform sign-constancy)

> Assume **(Aff)**. For every `ε` with `0 < ε < ε₀`:
> 1. for each `p ∈ W`: `p(ε) = 0` ⟺ `p ≡ 0`;
> 2. for each `p ∈ W` with `p ≢ 0`: `sgn p(ε) = sgn(c_m(p))`, the sign of the
>    lowest nonzero coefficient.
>
> Consequently the sign vector `(sgn p(ε))_{p∈W} ∈ {−,0,+}¹⁶³⁸` is **constant**
> on the whole interval `(0, ε₀)`, and is computable from the coefficients
> alone, without evaluating anything.

*Proof.* Immediate from Lemma U, since `ε₀ ≤ ρ(p)` for every non-zero `p ∈ W`. ∎

### Corollary U′ (an a-priori bound from coordinate size)

> If `V⁰` has integer coordinates with `‖V⁰_i‖_∞ ≤ N` and the directions are
> integral with `‖E_i‖_∞ ≤ M`, then
>
> **`ε₀ ≥ 1 / (1 + 8(N+M)²)`.**

*Proof.* `|cross(x,y)| ≤ 2‖x‖_∞‖y‖_∞` and `|⟨x,y⟩| ≤ 2‖x‖_∞‖y‖_∞`, with
`‖u⁰‖_∞ ≤ 2N`, `‖u‖_∞ ≤ 2M`; so `|c₀| ≤ 8N²`, `|c₁| ≤ 16MN`, `|c₂| ≤ 8M²`, and
`8N² + 16MN + 8M² = 8(N+M)²`. The lowest nonzero coefficient of an
integer-coefficient polynomial has `|c_m| ≥ 1`. ∎

*(For rational data, clear denominators first. For real data Theorem U still
gives an explicit `ε₀`; only Corollary U′ needs integrality.)*

### Verification — `uniform.py`, `run_arms.py`, `apriori.py`

Full 14-vertex configurations: two random simple heptagons with integer
coordinates in `[−9,9]`, then `Q₀ := P₀` and `Q₃ := P₁` (two vertex-vertex
coincidences, **on the same `P`-side**, so both endpoints of that side move —
AKR's Fig. 27c), and `Q₅ := λP₀ + (1−λ)P₁` with `λ ∈ {1/5,…,4/5}` (a
vertex-side degeneracy on a moving side, i.e. a genuine acyclic instance of
Theorem 17's system (2)–(3)). Simplicity of both heptagons is re-checked
exactly after the surgery.

| check | result |
|---|---|
| configurations | **60** |
| sign vector constant across 10 sampled `ε ∈ (0,ε₀)` (including `ε₀/10⁹`) | **60/60** |
| that constant vector equals the one predicted from the coefficients | **60/60** |
| both heptagons simple at every sampled `ε` | **60/60** |
| relation (1) holds with the same `λ` at every sampled `ε` | **60/60** |
| intersection-point count constant on `(0,ε₀)` | **60/60** |
| `ε₀` range | `3/3680` … `8/237`, median `1/89` |

Corollary U′, 60 further configurations at `N = 9`, `M = 7`
(`1/(1+8·256) = 1/2049`): **60/60 satisfy `ε₀ ≥ 1/2049`**; the tightest case is
only **1.15×** the bound, the loosest 76×. **Non-vacuity:** understating the
input size makes the bound false — pretending `N=M=2` it is violated in 29/60
cases, `N=M=3` in 13/60, `N=M=4` in 6/60. So the `(N+M)²` dependence is doing
work, not decoration.

---

## Finding 4 — the reduction, and why the audit ranked the two halves the wrong way round

### The bootstrapping principle

Theorem U's real payoff is not the number `ε₀` but this:

> **Bootstrapping.** Let `Φ` be any property of the configuration that is a
> Boolean function of the sign vector of `W`. If `Φ(ε)` holds *for all
> sufficiently small `ε > 0`* — by any soft, non-quantitative argument — then
> `Φ(ε)` holds for **every** `ε ∈ (0, ε₀)`.
>
> *Proof.* The sign vector is constant on `(0,ε₀)` (Theorem U); the soft
> argument supplies at least one point of `(0,ε₀)` at which `Φ` holds. ∎

So every "for small enough `ε`" in §9 that is about a **sign** can be converted
to the single explicit `ε₀` at no cost. This is precisely what §5.2 of the audit
asks for ("an explicit, uniform `ε₀ > 0` quantified over every degeneracy and
every non-degeneracy in a 14-vertex configuration, from a motion known only to
be linear in `ε` via Theorem 17") — and it follows from linearity in `ε` in
three lines.

The properties §9.1 needs are all sign conditions on `W`:

| property | why it is a sign condition on `W` |
|---|---|
| two vertices coincide | `Δˣ = Δʸ = 0` |
| three vertices collinear | `D = 0` |
| a vertex lies on a **segment** | `D = 0` and the two `B`'s of the triple are `≥ 0` |
| two segments cross properly | the `ProperCross` conjunction of four `D` signs (this is `lean/GeometryDefs.lean`'s definition verbatim) |
| two closed segments are disjoint | the negation of "proper cross or an endpoint of one is on the other" — again `D` and `B` signs |
| a polygon is simple | a finite conjunction of the previous row over its own side pairs |

### What §9.1 must deliver (AKR's conclusion, corrected per Finding 2)

* **(G1)** no vertex-vertex coincidence remains;
* **(G2)** `|∂P(ε) ∩ ∂Q(ε)| ≥ |∂P⁰ ∩ ∂Q⁰|`;
* **(G3)** every original vertex-side degeneracy is maintained, with the same `λ`;
* **(G4)** `P(ε)` and `Q(ε)` are still **simple** (AKR never state this — audit §6.2).

### Conditions on the initial data (the reduction's hypotheses)

Let `C` be the set of vertex-vertex coincidences. At a coincidence `(P_i, Q_j)`
write `a₁,a₂` for the two `P`-edge vectors at the apex and `b₁,b₂` for the two
`Q`-edge ones.

* **(R1) separation.** For each `(i,j) ∈ C`: `E_i ≠ E_j`.
* **(R2) first-order crossing.** For each `(i,j) ∈ C` there is a pair `(k,l)`
  such that the four `D`-polynomials of the side pair
  `(P_iP_{i±1}, Q_jQ_{j±1})` are all `≢ 0` and their lowest-nonzero-coefficient
  signs form the `ProperCross` straddle pattern.
* **(R3) no removable degeneracy left.** Every `p ∈ W` with `p ≡ 0` is *forced*:
  it vanishes identically for **every** admissible direction tuple. Equivalently:
  the only persistent zeros are the maintained relations (1) and collinearities
  among vertices that AKR's rule keeps stationary.

### Reduction Theorem

> Assume **(Aff)**, **(R1)**, **(R2)**, **(R3)**, together with AKR's standing
> finiteness assumption and simplicity of `P⁰, Q⁰`. Let `ε₀` be as in Theorem U.
> Then **(G1)–(G4)** hold for **every** `ε ∈ (0, ε₀)`.

*Proof.*

**(G1)** By (R1), `Δ_{ij} ≢ 0`, so `Δ_{ij}(ε) ≠ 0` for `ε ∈ (0,ε₀)` (Theorem U).

**(G3)** By construction of Theorem 17's system (2)–(3): relation (1) with the
same `λ` is one of the equations solved.

**(G4)** Simplicity is a sign condition on `W` (table above), and it holds for
all sufficiently small `ε > 0` by a soft argument: at `ε = 0` each pair of
non-adjacent sides of `P⁰` is a pair of **disjoint compact sets**, hence at
positive distance, and the vertices move continuously. Bootstrapping ⟹ (G4) on
all of `(0,ε₀)`. **No quantitative distance estimate is needed.**

**(G2)** Every point of `∂P⁰ ∩ ∂Q⁰` is exactly one of:

* **(a)** interior to a `P`-side and interior to a `Q`-side. The two sides are
  then not collinear (collinear overlapping sides would make `∂P⁰ ∩ ∂Q⁰`
  infinite), so this is a *proper* crossing and all four of its `D`'s are
  **nonzero at `ε = 0`**, i.e. `c₀ ≠ 0`. By Theorem U the same sign pattern
  holds throughout `(0,ε₀)`: the crossing survives.
* **(b)** a vertex of one polygon in the relative interior of a side of the
  other. Maintained exactly, by (G3).
* **(c)** a vertex of both. By (R2) at least one proper crossing appears in its
  place, for all of `(0,ε₀)`.

The three classes are disjoint and exhaustive. Surviving points remain pairwise
distinct: if the crossings of side pairs `(s₁,t₁) ≠ (s₂,t₂)` coincided at `X`,
then either `s₁ = s₂` (so `X ∈ t₁ ∩ t₂`, making `X` a `Q`-vertex or `∂Q`
non-simple), or `t₁ = t₂` symmetrically, or all four differ (so `X ∈ s₁ ∩ s₂`,
same dichotomy for `∂P`) — each alternative contradicts (G4) or moves the point
out of class (a). Hence the count does not drop. ∎

> **Honesty flag.** The distinctness paragraph is the one step written as a
> sketch rather than in full. It was checked computationally instead: the
> intersection-**point** count (a set of exact rational points, not a count of
> side pairs) is *constant* on `(0,ε₀)` in **60/60** configurations.

### The controlled experiment that locates the content — `run_arms.py`

60 configurations, two arms, identical checks. **Arm A** picks a direction
satisfying only "no new identically-zero witness, and the coincidences break" —
everything the "One final point" `ε`-estimate by itself gives you. **Arm B**
additionally imposes AKR's own criterion (R2).

| | directions found | sign vector constant on `(0,ε₀)` | coincidences gone | both simple | relation (1) held | **count did not drop** | count constant |
|---|---|---|---|---|---|---|---|
| **Arm A** (bare) | 60 | **60** | 60 | 60 | 60 | **40** | 60 |
| **Arm B** (AKR) | 60 | **60** | 60 | 60 | 60 | **60** | 60 |

Arm A loses intersection points in **20 of 60** configurations. The six drops
printed in `run_arms.log` are each by a single point (`8→7`, `4→3`, `5→4`,
`6→5`, …); I did not check that all twenty are drops of exactly one. Arm B
loses none.

### Replication at a second seed — `reseed.log`

Because the whole thesis turns on the A-vs-B contrast, both load-bearing
experiments were re-run at an unrelated seed.

* **Finding 1** (seed `11111`, 3830 trials): `ε¹`-coefficient of `t` and of `s`
  identical fixed-vs-moving in **3830/3830**, **0** mismatches, `k > 0` in
  **3830/3830**; non-vacuity control, `ε²` coefficients differ in **3765/3830**.
* **Two arms** (seed `24680`, 40 configurations): sign-constancy **40/40 in
  both arms**; Arm A **7/40** count drops; Arm B **0/40**.

The qualitative result replicates exactly. The *rate* at which a bare direction
loses points does **not** replicate as a number — `20/60 = 33 %` at the first
seed, `7/40 = 17.5 %` at the second. I therefore claim only that bare
directions lose points **often**, not any particular frequency. The two figures
that do replicate cleanly, and that the thesis rests on, are `0` drops in arm B
and full sign-constancy in both arms.

### The thesis

**The audit's §5.2 ranks the wrong half as hard.**

* *Uniformity* — "one explicit `ε₀` good for every degeneracy and every
  non-degeneracy at once" — held **60/60 in both arms**. It does not depend on
  the direction being well chosen, on the sine law, or on any estimate. It is a
  three-line consequence of Theorem 17's linearity. The audit's expectation of
  "a quantitative real-analysis argument with no Mathlib scaffolding" is, on
  this analysis, **not what the step needs**.
* *The first-order sign conditions* (R2) and (R3) are where all the content is:
  **0/60 vs 20/60** on the count. And AKR's paragraph does not prove them — it
  proves `k > 0` for one crossing in one picture, which is (R2) at a single
  apex with the neighbours held fixed.

### Where (R2) and (R3) now stand

* **(R2) is essentially closed.** `e9_directions` proves a valid `E_i` exists at
  one apex *with everything else fixed*. **Finding 1 upgrades that to the
  simultaneous setting**: the leading coefficients at an apex do not involve the
  neighbours' directions at all, so (R2) at apex `i` is a condition on `E_i`
  alone and the per-apex choices cannot interfere. This is exactly the gap
  AKR's "One final point" paragraph was written to bridge, and the valuation
  argument bridges it cleanly.
* **(R3) is open, and is the residue.** Whether a witness is *identically* zero
  is a condition on the whole tuple `(E_i)`, not per-apex, and the bootstrapping
  principle says nothing about it (an identically-zero polynomial has no small-`ε`
  escape). A sketch: for the finitely many triples with `c₀ = 0`, `c₁` is a
  linear and `c₂` a quadratic form in the tuple, so `{E : c₁ = c₂ = 0}` is
  Zariski-closed and *proper* unless the triple is collinear for every admissible
  tuple. A finite union of proper Zariski-closed subsets of the direction space
  has empty interior, while (R2) cuts out a nonempty **open** set (a product of
  open cones, by `e9_directions` + Finding 1); an open set is not contained in
  such a union. **I have not verified that this survives the constraint that
  Theorem 17 determines the dependent directions from the free ones, and that
  AKR force the uninvolved free vertices to `E = 0`. Recorded as reasoning, not
  as a finding.**

### Control for (R3) — `control2.py`, log `control2.log`

*(The first version of this control was **wrong** and reported 0 detections; it
tested for a **new** identically-zero witness, but the Finding-2 degeneracy is
not new — the apex coincidence already makes that triple collinear at `ε = 0`,
so it sits in `Z₀` and passes a `Z ⊆ Z₀` test. The corrected control asks
whether a **removable** degeneracy is left behind. This is recorded because the
first test's "0 hits" looked like a clean pass and was not one.)*

30 configurations with one coincidence, only `P₀` moving, all 225 integer
directions in `[−7,7]²` enumerated exactly:

| | total | leaving a removable degeneracy |
|---|---|---|
| AKR-admissible directions | 5198 | **965 (18.6 %)** |
| directions parallel to an incident edge | 96 | **96 (100 %)** |
| … of those that are *also* AKR-admissible | 50 | **50 (100 %)** |
| configurations admitting a **fully good** direction | **30/30** | — |

So: AKR's stated criterion on `E_i` admits a direction that leaves a removable
degeneracy in roughly **one case in five**; the Finding-2 family (`E` parallel
to an incident edge) does so **always**, which is the control firing exactly
where it was predicted to; and a direction meeting both requirements exists in
every configuration tested, which is `e9_directions`' extra clause holding up on
full 14-vertex configurations rather than only on the local four-ray picture.

---

## Finding 5 — what Mathlib would need (audit §5.2's last claim, re-checked)

Checked against the Mathlib pinned in `lean/lake-manifest.json`, commit
`0df444a360eaa60ab8c11dca51a86af692955474`, **2026-08-21**. No Lean build was
run; this is a source survey.

### The audit's claim

> "In Lean that is a quantitative real-analysis argument with no Mathlib
> scaffolding: there is no library notion of 'the intersection point of two
> ε-moving segments', so one would build the whole local theory first."

**First clause: still accurate.** There is no such notion. The closest things
are `segment_inter_subset_endpoint_of_linearIndependent_sub` and
`segment_inter_eq_endpoint_of_linearIndependent_of_ne`
(`Mathlib/Analysis/Convex/Segment.lean:293,324`), which say when a segment meets
another *only at an endpoint* — not a construction of a crossing point. Nothing
in `Geometry/Euclidean/` or `Analysis/Convex/` produces the intersection point
of two segments, moving or not.

**Second clause: I would revise it.** Under **(Aff)** you never need that
theory. Every predicate is the sign of an explicit degree-≤2 polynomial in `ε`,
and the only analytic input is Lemma U. The project's own
`lean/RealConfig.lean` header already states the static version of this thesis —
"everything the development says about a configuration is determined by the
signs of the 364 orientation determinants" — and `W` is just its `ε`-parametrised
form.

### What is in Mathlib and usable

| need | Mathlib |
|---|---|
| polynomial API, roots, degree | `Mathlib/Algebra/Polynomial/*`, `Polynomial.card_roots'` (`Roots.lean:80`) |
| upper Cauchy bound on roots | `Polynomial.cauchyBound`, `Polynomial.IsRoot.norm_lt_cauchyBound` (`Analysis/Polynomial/CauchyBound.lean:74`) |
| reversal, for converting that to a **lower** bound on nonzero roots | `Polynomial.reverse`, `coeff_reverse` (`Algebra/Polynomial/Reverse.lean:221`) — but there is **no** `roots`↔`reverse` lemma, so the conversion must be written |
| betweenness | `Wbtw`, `Sbtw`, `Collinear.wbtw_or_wbtw_or_wbtw` (`Analysis/Convex/Between.lean:133,137,1058`) |
| segments, convexity | `segment`, `affineSegment`, `AffineMap.lineMap`, `Convex` |
| 2-D cross product | `Orientation.areaForm` (`Analysis/InnerProductSpace/TwoDim.lean:91`) — though the project's own `orient`/`orientR` is a closer fit |

### What is **not** in Mathlib, and is the whole analytic requirement

`Mathlib/Analysis/Polynomial/Basic.lean` is entirely about `atTop`/`atBot`
asymptotics (`isEquivalent_atTop_lead`, `tendsto_atTop_of_leadingCoeff_nonneg`,
`eventually_atTop_not_isRoot`, …). **There is nothing about the sign of a
polynomial on a right-neighbourhood of `0`.** That one statement is Lemma U, and
at the degree the problem actually has it is this, with no `Polynomial`, no
`Filter`, no topology, no `Convex`:

```lean
-- the m = 0 case; the m = 1 and m = 2 cases divide by ε and ε² first
theorem sign_stable (c₀ c₁ c₂ ε : ℝ) (h₀ : c₀ ≠ 0)
    (hε : 0 < ε) (hlt : ε < |c₀| / (1 + |c₁| + |c₂|)) (hle : ε ≤ 1) :
    0 < c₀ * (c₀ + c₁ * ε + c₂ * ε ^ 2) := by
  ...  -- |c₁ε + c₂ε²| ≤ ε(|c₁| + |c₂|) < |c₀|;  nlinarith
```

### Shape of a Lean development

1. `sign_stable` and its `m = 1, 2` variants — tens of lines, `nlinarith`.
2. `W` as a `Finset` of coefficient triples indexed by `Fin 14` triples and
   pairs — the same finite-index bookkeeping the project already does for
   `GP`/`FullGP`'s 364 determinants. This is the bulk, and it is bookkeeping.
3. `ε₀ := W.inf' ρ` and Theorem U as a `Finset.inf'`-and-`sign_stable` argument.
4. Bootstrapping as a one-line corollary.

This belongs next to `lean/RealConfig.lean`, not in a new analysis development.
It is **not** "the same order of magnitude as the existing enumeration
development" — I would estimate Theorem U alone at a few hundred lines.

### What would still be hard in Lean

* **(R3)**, which needs the "proper Zariski-closed set" argument over the
  constrained direction space.
* **AKR's Theorem 17 itself**, which is what supplies (Aff). The audit rates it
  "moderate" and I agree — `Matrix.det`, affine subspaces, and "an affine
  subspace of positive dimension is unbounded" are all in Mathlib.
* Neither of these is the "One final point" paragraph.

---

## Summary of controls (a checker that always says yes proves nothing)

| control | what it must detect | result |
|---|---|---|
| Finding 1 non-vacuity | the fixed-endpoint and moving-endpoint series are *different functions* | `ε²` coefficients differ in **3757/3813** |
| Finding 2 / attack B | `k > 0` is a real constraint | unconstrained `E`: `k ≤ 0` in **1983/3809 (52 %)** |
| Theorem U, `K1` | sign vector at `ε = 0` differs from the small-`ε` one | **40/40** |
| Theorem U, `K2` | at an exact root of a witness (necessarily `≥ ε₀`) the sign vector changes | **40/40**, and the root was `≥ ε₀` in **40/40** |
| Theorem U, `K3` | with `E = 0` the coincidence survives and the test says so | **40/40** |
| Corollary U′ | the bound is false if the input size is understated | violated **29/60**, **13/60**, **6/60** at `N=M=2,3,4` |
| Reduction, arm A | a direction meeting only the weak criterion loses points | **20/60** count drops |
| (R3) control | `E` parallel to an incident edge leaves a removable degeneracy | **96/96 (100 %)** |
| **(R3) control, first version** | — | **reported 0/120 and was WRONG**; recorded in Finding 4 |

---

## What this does and does not establish

**Does not:** prove `f(7,7) = 38`, which remains a candidate resting on the
unreviewed import (A9). Does not close §9. Does not formalize anything in Lean.
Does not discharge (R3). Does not touch §9.2 or §9.3.

**Does:**

1. Verify AKR's local "One final point" claim exactly, and identify its actual
   mechanism (valuations, not the sine law) — Finding 1.
2. Show AKR's stated conclusion "there will be no degenerate situations" is
   **literally false** for directions their own criterion admits, with an exact
   certificate, and show `e9_directions`' unstated extra clause is what repairs
   it — Finding 2.
3. Write down, for the first time in this project, the **precise uniform `ε₀`**
   with explicit quantifiers, prove Theorem U, and give an a-priori bound
   `ε₀ ≥ 1/(1+8(N+M)²)` — Finding 3.
4. Give a **reduction** of §9.1's conclusion to three checkable conditions
   (R1)–(R3), prove it modulo one sketched distinctness lemma, and locate the
   remaining content in (R3) — Finding 4.
5. Re-check the Mathlib claim and argue the step is a few hundred lines in the
   project's existing style, not a new analysis development — Finding 5.
