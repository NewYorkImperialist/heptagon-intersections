# A7 — exact specification and geometry-to-encoding audit

**Date:** 2026-09-13 · **Scope:** the one unresolved mathematical dependency of the
`f(7,7) = 38` candidate proof.

This file does two things and nothing else.

1. **§§1–7** give a self-contained mathematical specification of the A7 dependency:
   every definition, the exact statement `A7-EXT`, and a separate justification of
   `S(e) ≠ ∅` with the precise part of AKR Lemma 5 that it consumes.
2. **§§8–11** audit the eight steps that carry a hypothetical *geometric*
   counterexample down to the *finite* oriented-matroid model of
   `independent/akr_l7_reproduction/om_lemma7.py`, and label each one.

Nothing here is a status upgrade for the project. Two things below are new:
a **coverage gap** in the repo's own symmetry reduction (§9.7), closed by direct
enumeration; and a sharpening of which bridges are prose and which are not.

Cross-references: [`a7-independent-resolution.md`](a7-independent-resolution.md)
(verdict), [`a7-independent-proof.md`](a7-independent-proof.md) (direct proof
attempt), [`known-issues.md`](known-issues.md) K-14/K-15,
[`akr-l7-human-review.md`](akr-l7-human-review.md) (author letter, **superseded**).

Primary sources: `references/akr-dcg-2022.pdf` ("AKR-DCG"),
`references/akr-socg-2020.pdf` ("AKR-SoCG").

---

## 1. Standing hypotheses

`P = p_0 … p_{m−1}` and `Q = q_0 … q_{n−1}` are **simple** polygons, regarded as
closed piecewise-linear curves (the enclosed region is disregarded); sides are
closed segments; `m, n ≥ 3` odd. For A7 the relevant case is `m = n = 7`.

*Simplicity* means: the sides of `P` are pairwise disjoint except for the
unavoidable shared endpoint of consecutive sides `p_i, p_{i+1}`; likewise for `Q`.

**General position** (AKR-DCG §3, verbatim assumptions):

| tag | assumption |
|---|---|
| **GP0** | `P` and `Q` have finitely many intersection points (no overlapping sides). |
| **GP1** | No vertex of one polygon lies on the other polygon. |
| **GP2** | No three vertices of `P` and `Q` **combined** lie on a line. |
| **GP3** | No two sides of `P` and `Q` **combined** are parallel. |

GP0 and GP1 are the basic assumptions; AKR justify GP1 in their §9 by a
non-trivial perturbation (their Theorem 17) which does not decrease the number of
intersections. GP2 and GP3 are then obtained by a further small perturbation of
the sides which AKR state changes **no** intersection pattern. §8 audits exactly
what the encoding takes from these and shows that it introduces **no additional
perturbation of its own**.

Consequence of GP1 used throughout: every intersection point between `P` and `Q`
is an interior point of two sides, and every such crossing is **transversal**.

---

## 2. The disjointness graph

```
G^D = (V^D, E^D),   V^D = {p_0,…,p_{m−1}} ⊔ {q_0,…,q_{n−1}},
E^D = { (p_i, q_j) : p_i ∩ q_j = ∅ }.
```

`G^D` is bipartite; **an edge means DISJOINT**. `CC(s)` is the connected component
of the side `s`. If `(s,t) ∈ E^D` then `CC(s) = CC(t)`.

---

## 3. Geometric notions

For non-parallel segments `s, s'`: `ℓ(s)` is the supporting line and
`I(s,s') = ℓ(s) ∩ ℓ(s')`. The segments are **avoiding** if neither contains
`I(s,s')`. If `s, s'` are avoiding *or share an endpoint*, `r_{s'}(s)` is the ray
from `I(s,s')` containing `s`, `r_s(s')` the ray containing `s'`, and

```
Cone(s,s') = the convex cone with apex I(s,s') spanned by r_{s'}(s) and r_s(s').
```

`Cone` is **closed**. For consecutive sides `s = [v,s_2]`, `t = [v,t_2]` of a
simple polygon, GP2 gives `ℓ(s) ≠ ℓ(t)`, so `I(s,t) = v` and
`Cone(s,t) = { v + σ(s_2−v) + τ(t_2−v) : σ, τ ≥ 0 }`.

---

## 4. AKR Lemma 5, and the two notions of "associated"

> **Lemma 5 (AKR-DCG).** Let `p_a` and `p_b` be two sides of `P` that are either
> consecutive or avoiding such that `CC(p_a) ≠ CC(p_b)`. Then there are two
> consecutive sides `q_i, q_{i±1}` of `Q` such that
> **(L5a)** `(p_a,q_i), (p_b,q_{i±1}) ∈ E^D` and
> **(L5b)** `(p_a,q_{i±1}), (p_b,q_i) ∉ E^D`.
> **(L5c)** Furthermore, `I(p_a,p_b) ∈ Cone(q_i,q_{i±1})` **or**
> `I(q_i,q_{i±1}) ∈ Cone(p_a,p_b)`.

Write `a = p_i`, `b = p_{i+1}`, `A = q_j`, `B = q_{j±1}`, `O = I(a,b)`,
`v = I(A,B)`.

```
Associated_broad(a,b ; A,B)  :=  (E1) a∩A = ∅   ∧  (E2) b∩B = ∅
Associated_L5   (a,b ; A,B)  :=  (E1) ∧ (E2) ∧ (D)
                (D)  O ∈ Cone(A,B)  ∨  v ∈ Cone(a,b)                 ← cone dichotomy
```

Three settled facts, not re-derived here:

* **The two cross non-edges (L5b) are automatic**, hence carry no information:
  under the standing hypothesis `CC(a) ≠ CC(b)`, if `(a,B) ∈ E^D` then
  `a — B — b` is a path in `G^D` and `CC(a) = CC(b)`. This uses connectivity only;
  it is **not** a consequence of `G^D` being bipartite.
* **The cone dichotomy (D) is indispensable** and is *not* implied by
  (E1)∧(E2)∧(L5b) — see §11.
* Therefore `Associated_L5 = edges + dichotomy`, with the non-edges free.

**Status of an association.** For `α = (A,B)` associated to `e = (a,b)`:

```
e is hooking via α   :⟺   I(A,B) ∈ Cone(a,b)      (and α is hooked via e)
e is hooked  via α   :⟺   I(a,b) ∈ Cone(A,B)      (and α is hooking via e)
```

AKR explicitly allow a pair to be **both** hooking and hooked with respect to a
single association (their Fig. 5c), so the two statuses are *not* exclusive. `(D)`
says exactly: at least one status holds.

---

## 5. The auxiliary graph `H`, the status sets, and `A7-EXT`

Fix `P` (the construction for `Q` is symmetric; the project's endgame uses the
`P` side, `python/elimination/audit_enum.py:30`).

```
V(H) = { i ∈ ℤ_7 : CC(p_i) ≠ CC(p_{i+1}) },  identified with e_i = (p_i, p_{i+1})

i ~_H k  :⟺  (H1)  {i,i+1} ∩ {k,k+1} = ∅,  i.e. (k−i) mod 7 ∉ {0,1,6}
         and  (H2)  |{ CC(p_i), CC(p_{i+1}), CC(p_k), CC(p_{k+1}) }| = 4
```

(H2) is imposed directly, so an `H`-edge reproduces Lemma 7's hypothesis verbatim;
it is not inferred from (H1).

```
A(e)  = { α : α is a pair of consecutive sides of Q with Associated_L5(e ; α) }

S(e)  = { hooking : ∃ α ∈ A(e).  I(α) ∈ Cone(e) }
      ∪ { hooked  : ∃ α ∈ A(e).  I(e) ∈ Cone(α) }        ⊆ {hooking, hooked}
```

The two existentials are **independent**: different statuses of the same `e` may be
witnessed by different associations.

### The required statement

```
A7-EXT :    e ~_H e'   ⟹   S(e) ∩ S(e') = ∅
```

Downstream, `A7-EXT` together with `S(e) ≠ ∅` gives bipartiteness of `H`. That
last step — and only that step — is **formally proved**: `lean/Lemma7Bridge.lean`,
Lean 4.33.1 core, no Mathlib, no `sorry`, no `native_decide`; hypotheses
`hne : ∀ e, ∃ s, S e s` and `hdisj : ∀ e e' s, Adj e e' → S e s → S e' s → False`.
It is stated for an arbitrary vertex type and relation, so it imports no geometry.

### What `A7-EXT` is, as a claim about eight sides

Unfolding the two existentials, `¬A7-EXT` yields: `e = (a,b)`, `e' = (a',b')`
consecutive pairs of `P` sharing no side, four distinct components, together with
associations `α = (A,B)` of `e` and `α' = (A',B')` of `e'`, both witnessing the
**same** status. So `A7-EXT` is exactly AKR Lemma 7 read with the *existential*
("some association witnesses it") reading of "is hooking":

> **Lemma 7 (AKR-DCG).** Let `p_i,p_{i+1}`, `p_j,p_{j+1}` be two pairs of
> consecutive sides of `P` that belong to four different connected components of
> `G^D`. Then it is impossible that both pairs are hooked or that both pairs are
> hooking.

---

## 6. `S(e) ≠ ∅` — separate justification

`S(e) ≠ ∅` is a **second, independent** dependency. It is required by
`Lemma7Bridge.hne` and it is **not** supplied by `A7-EXT`, nor by the endgame's
edge/non-edge formulation.

**Claim.** For every `e = (p_i,p_{i+1}) ∈ V(H)`, `S(e) ≠ ∅`.

**Proof.** `e ∈ V(H)` means `CC(p_i) ≠ CC(p_{i+1})`, and `p_i, p_{i+1}` are
consecutive. This is exactly Lemma 5's hypothesis. Lemma 5 produces a specific
pair `α = (q_j, q_{j±1})` satisfying (L5a), so `Associated_broad(e ; α)` holds; and
its "Furthermore" clause **(L5c)** applied *to that same pair* gives
`I(e) ∈ Cone(α)` or `I(α) ∈ Cone(e)`. Hence `Associated_L5(e ; α)`, i.e.
`α ∈ A(e)`, and `α` witnesses at least one status. ∎

**Exactly what is required from Lemma 5.** Both (L5a) *and* (L5c), **for the same
witness pair**. Specifically:

* the existence clause **(L5a)** alone gives only `A_broad(e) ≠ ∅`, which is not
  enough: a broadly-associated pair may be *neither* hooking nor hooked;
* the non-edge clause **(L5b)** is automatic (§4) and contributes nothing;
* the dichotomy **(L5c)** is the load-bearing clause, and it must be read as
  attached to the pair whose existence (L5a) asserts. Lemma 5 as printed does
  deliver it in that form (its proof normalises `I(p_a,p_b)` to the origin and
  concludes that `I(q_i,q_{i±1})` lies in quadrant I or III, which is strictly
  stronger than (L5c)).

**Why the endgame's edge/non-edge formulation cannot supply it.** The endgame
filter `L5_ok` (`python/elimination/audit_enum.py:22`) tests a purely
graph-theoretic condition — the existence of `j` with `(p_a,q_j) ∈ E^D`,
`(p_b,q_j) ∉ E^D`, `(p_b,q_{j±1}) ∈ E^D`, `(p_a,q_{j±1}) ∉ E^D` — i.e. (L5a)+(L5b).
The dichotomy (L5c) is **not a function of `G^D`**: the K-14 configuration (§11)
satisfies (L5a) and (L5b) and violates (L5c). So no strengthening of the
combinatorial filter can yield `S(e) ≠ ∅`.

**Where (L5c) itself comes from, and its status.** AKR prove Lemma 5 from their
Proposition 4 and the walk in the auxiliary graph `G_0` (AKR-DCG §4). That argument
is **global**: it uses every side of `Q` and the parity of `n`. Consequently
`S(e) ≠ ∅` is *not* a local statement about eight segments and is **not** covered
by any oriented-matroid result in `independent/akr_l7_reproduction/`. It is
imported from AKR and is machine-checked nowhere in this repository.

> **Consequence for the project's risk register.** `A7-EXT` and `S(e) ≠ ∅` have
> genuinely different evidence. `A7-EXT` is backed by the OM certificates.
> `S(e) ≠ ∅` rests on AKR Lemma 5 (L5c) alone, with no independent verification of
> any kind. §12 records this as the sharpest residual dependency.

---

## 7. The local model: eight sides, ≤ 12 points

Assume `¬A7-EXT` and fix a witnessing configuration. Following AKR's notation:

```
a  = p_i      b  = p_{i+1}      share the vertex  v1 = I(a,b)
a' = p_j      b' = p_{j+1}      share the vertex  v2 = I(a',b')
A  = q_{i'}   B  = q_{i'±1}     share the vertex  v3 = I(A,B)
A' = q_{j'}   B' = q_{j'±1}     share the vertex  v4 = I(A',B')
```

with `a = [v1,a2]`, `b = [v1,b2]`, `a' = [v2,ap2]`, `b' = [v2,bp2]`,
`A = [v3,A2]`, `B = [v3,B2]`, `A' = [v4,Ap2]`, `B' = [v4,Bp2]` — at most **12
points**, all of which are polygon vertices.

The hypothesis yields, with no further geometry:

* **(M) matching pattern.** `(a,A), (b,B), (a',A'), (b',B') ∈ E^D` (disjoint), and
  every other `P`–`Q` pair among the eight **intersects**. [§9.3]
* **(SP) simplicity of `P`.** Any two of `a,b,a',b'` that are non-adjacent sides of
  `P` are disjoint; `a,b` meet exactly at `v1` and `a',b'` exactly at `v2`. [§9.4]
* **(SQ) simplicity of `Q`.** The same for `A,B,A',B'`, apexes `v3, v4`.
* **(H) status hypothesis.** Either `v3 ∈ Cone(a,b) ∧ v4 ∈ Cone(a',b')`
  (both hooking), or `v1 ∈ Cone(A,B) ∧ v2 ∈ Cone(A',B')` (both hooked).
* **(GP)** GP2 restricted to these ≤ 12 vertices: no three collinear.

The **pattern** is therefore **24 pair requirements**:

```
16 cross-polygon :  4 DISJOINT (the E^D matching)  +  12 CROSS
 4 within P      :  a–a', a–b', b–a', b–b'   DISJOINT
 4 within Q      :  A–A', A–B', B–A', B–B'   DISJOINT
```

For `n = 7` some one of these 24 pairs may share an endpoint (§9.5); such a pair
carries no expressible constraint and is dropped, leaving **24 / 23 / 23 / 22**
explicit crossing predicates in the `generic` / `P-adj` / `Q-adj` / `PQ-adj`
variants. (Recomputed from `om_lemma7.py` for this audit; independently
cross-checked by `evidence/tools/verify_fig6.py`, which reports
`pattern conditions checked: 24` on the straight-line Fig. 6 witness.)

> The figure **"20-pair pattern"** appearing in earlier revisions of
> `a7-independent-resolution.md` is wrong and must not be used as the
> specification of this bridge. The correct figure is 24.

---

## 8. Inherited general position vs. additional perturbation

The mission-critical question is whether the encoding assumes anything beyond what
the polygons already satisfy.

**Finding: it does not.** The encoding's only positional assumption is that the
chirotope of the ≤ 12 points is **uniform** (no three collinear). All twelve points
are vertices of `P` or of `Q`, so this is *verbatim* **GP2**, which is a standing
assumption of the whole paper. **No perturbation is performed at the local level
and none is needed.**

The perturbation question therefore lives entirely upstream, in AKR §3/§9:

1. **GP0/GP1** — justified by AKR §9 (Theorem 17: a global parametric perturbation
   removing vertex-vertex degeneracies while maintaining vertex-side ones, followed
   by local side shifts). This perturbation *can* change `G^D`; AKR's claim is only
   that it does not decrease `I(P,Q)`, which is what the upper-bound argument needs.
   **This step is external to this audit** (it belongs to AKR's own reduction, and
   is used identically by every consumer of their theorem).
2. **GP2/GP3 given GP1** — AKR: *"this can be achieved easily by another small
   perturbation of the sides without changing the intersection pattern."* The proof
   is routine and is worth recording because `G^D` preservation is exactly what the
   project needs:

   > Under GP1, each of the `mn` side pairs `(p_i,q_j)` either is disjoint — hence,
   > being compact, at positive distance — or crosses transversally at a point
   > interior to both. Both are **open** conditions on the vertex coordinates.
   > Simplicity of `P` and of `Q` is likewise open (non-adjacent sides at positive
   > distance; adjacent sides meet only at their shared vertex, which moves with
   > them). The collinear-triple and parallel-pair loci are a finite union of proper
   > algebraic subvarieties of the configuration space. Hence a generic
   > arbitrarily small perturbation of all vertices achieves GP2 and GP3 while
   > preserving simplicity, `E^D` **exactly** (so `G^D`, `CC`, `V(H)`, `~_H`), and
   > `I(P,Q)`. ∎

   So the properties used in the contradiction — simplicity, oddness, `I(P,Q)`,
   `G^D` and hence `H` — are all preserved by the *additional* perturbation.
   Label: **proved in prose**.

This retires the "general position of the ≤ 12 vertices is WLOG" bridge
(`a7-independent-resolution.md` §8 item 1) in the form in which it was stated: the
worry *"perturbation can change `G^D`"* does not apply to the GP2/GP3 step, and the
GP0/GP1 step is AKR's, not the encoding's.

---

## 9. The eight geometry-to-encoding steps

Throughout, the **decisive criterion** is: *every constraint the encoder imposes
must be a necessary consequence of the existence of a geometric counterexample.*
Under-constraining is sound for an UNSAT claim; over-constraining is fatal.
A positive control shows non-vacuity only; it does **not** show that every
relevant configuration survives the encoding. Each step below is therefore audited
for **over-constraint specifically**.

Labels are one of: *proved in prose* / *formally proved* / *computationally tested*
/ *unresolved*.

### 9.1 Endpoint labels and orientation signs — **proved in prose**

*What the encoder does.* `om_lemma7.py:build` names 12 points and forms the eight
segments as above. `Chi.chi(p,q,r)` returns the Boolean variable `X[i<j<k]` XOR the
parity of the sorting permutation, so `χ` is alternating by construction.

*Why it is justified.* Writing `V(k)` for the polygon vertex `p_k ∩ p_{k+1}`, the
six `P`-points are `a2 = V(i−1)`, `v1 = V(i)`, `b2 = V(i+1)`, `ap2 = V(j−1)`,
`v2 = V(j)`, `bp2 = V(j+1)`; likewise for `Q`. This is forced, not chosen. The
labels `a` vs `b` inside a `P`-pair are *not* free independently: `A` is by
definition the `Q`-side of `α` disjoint from `a`, so a swap `a ↔ b` must be
accompanied by `A ↔ B`. The group of such tandem relabellings is
`⟨(a↔b, A↔B), (a'↔b', A'↔B'), prime-swap, P↔Q-swap⟩`; all of its elements preserve
the 24-pair pattern (verified: all 16 elements of `arr8.AUT` map `WANT` to itself)
and permute `{both-hooking, both-hooked}` and `{mixed-1, mixed-2}` among
themselves. Alternating `χ` is the standard chirotope convention. No orientation is
fixed globally, which is correct: the whole configuration may be reflected.

*Over-constraint check.* None. This step imposes no constraint; it fixes notation.

### 9.2 Necessity of the imposed chirotope axioms — **proved in prose**

*What the encoder does.* Asserts (P1) every `χ(i,j,k) ∈ {+,−}`; (P2) the 3-term
Grassmann–Plücker relations for all `5 · C(n,5)` instances; (P7) acyclicity for all
`C(n,4)` 4-subsets.

*Why each is necessary for a real configuration.*

* **(P1)** is GP2 restricted to the ≤ 12 vertices (§8). Necessary.
* **(P2)** For any five points, `det(abc)det(ade) − det(abd)det(ace) +
  det(abe)det(acd) = 0` identically. With all five determinants non-zero, three
  reals summing to `0` cannot all have the same sign, which is exactly the asserted
  clause `¬(T1 = T2 = T3)` with `T1 = χ(abc)χ(ade)`, `T2 = −χ(abd)χ(ace)`,
  `T3 = χ(abe)χ(acd)`. The code's Booleanisation is faithful:
  `t2 = (χ(abd) ≠ χ(ace))` is precisely `T2 = +`. Necessary.
* **(P7)** For four points the affine circuit `(det(jkl), −det(ikl), det(ijl),
  −det(ijk))` has coefficients summing to `0` (Cramer) and, in general position,
  all non-zero; hence they cannot all share a sign. Necessary. (Acyclicity is what
  restricts the model to *affine* — as opposed to projective/cyclic — configurations
  and is indispensable: the repo records that its omission in a first version made
  every query trivially `sat` and broke the controls.)

*Over-constraint check.* All three are satisfied by **every** real general-position
point set, so they cannot exclude a counterexample.

*Corroboration re-run for this audit:* `validate_encoding.py` — 60 random integer
12-point sets, **237 600** GP instances and **29 700** acyclicity instances,
**0 violations**; `validate_axioms.py` — reorientation/relabelling classes
`1, 1, 1, 4` for `n = 3..6`, matching the published simple-pseudoline-arrangement
counts, so the axiom set is neither too weak nor too strong.

### 9.3 Cross-polygon restrictions forced by four distinct components — **proved in prose**

*What the encoder does.* Of the 16 `P`–`Q` pairs, asserts `¬CROSS` for the four
`E^D` pairs `(a,A), (b,B), (a',A'), (b',B')` and `CROSS` for the other twelve.

*Why it is justified.* `(a,A) ∈ E^D` is definitional for the witness, so the four
disjointness constraints are necessary. For the twelve: `(a,A) ∈ E^D ⟹ CC(A) =
CC(a)`, and likewise `CC(B) = CC(b)`, `CC(A') = CC(a')`, `CC(B') = CC(b')`. By
(H2) these four components are distinct. Hence for each of the twelve remaining
pairs `(x,Y)` we have `CC(x) ≠ CC(Y)`, so `(x,Y) ∉ E^D`, so `x ∩ Y ≠ ∅`. I checked
all twelve instances individually; each is a two-step component argument. Finally,
`x ∩ Y ≠ ∅` upgrades to *proper crossing*: the four endpoints are distinct
(`P`- and `Q`-vertices are distinct under GP1), no three are collinear (GP2), so
the intersection is a single point interior to both segments (an endpoint on the
other segment would put three combined vertices on a line, or violate GP1), i.e.
a transversal crossing. Necessary.

*Over-constraint check.* None found. Note also that the four `E^D` disjointness
constraints are *redundant* — they are implied by the twelve crossings plus the
axioms — which the `unsat_core.py` run confirms (see §10).

### 9.4 Within-polygon restrictions supplied by simplicity — **proved in prose**

*What the encoder does.* Asserts `¬CROSS` for `a–a'`, `a–b'`, `b–a'`, `b–b'` and for
`A–A'`, `A–B'`, `B–A'`, `B–B'`.

*Why it is justified.* Two sides of a simple polygon that are **not** consecutive
are disjoint; two that are consecutive meet exactly at the shared vertex. For
`n = 7` and `d = (j−i) mod 7 ∈ {2,3,4,5}` (forced by (H1)), the index arithmetic is:

| pair | adjacent in `P` iff | occurs for |
|---|---|---|
| `a–a'` (`p_i, p_j`) | `d = ±1` | never |
| `b–b'` (`p_{i+1}, p_{j+1}`) | `d = ±1` | never |
| `b–a'` (`p_{i+1}, p_j`) | `d = 2` | `d = 2` |
| `a–b'` (`p_i, p_{j+1}`) | `d = −2` | `d = 5` |

and at most one of these can occur at a time (`d = 2` and `d = 5` simultaneously
would need `4 ≡ 0 mod 7`). The same table holds for `Q` with its own distance
`d_Q ∈ {2,3,4,5}`. So in the non-adjacent cases the constraint is exactly
"non-consecutive sides of a simple polygon are disjoint" — necessary — and in the
adjacent case the encoder drops it (§9.5).

*Over-constraint check.* None found. The encoder does **not** exploit the stronger
true fact that adjacent sides meet *only* at the shared vertex; omitting it is
under-constraint and therefore sound.

### 9.5 Shared endpoints in the adjacency variants — **proved in prose**

*What the encoder does.* In `P-adj` it identifies `ap2 ≡ b2` (so `b` and `a'` share
that vertex); in `Q-adj`, `Ap2 ≡ B2`; in `PQ-adj`, both. For any pair in the
24-pattern whose two segments share an endpoint, it records the pair in `forced`
and adds **no constraint at all** (`om_lemma7.py:213-257`; if such a pair were
required to be *disjoint* the build raises — it never does).

*Why the identification is the right one.* With `b = p_{i+1} = [V(i), V(i+1)]` and
`a' = p_{i+2} = [V(i+1), V(i+2)]`, the shared vertex is `V(i+1) = b2 = ap2`:
the *far* endpoint of each. It cannot be an apex: a third side incident to `v2`
would give `Q`… resp. `P` a vertex of degree 3. Same for `Q`.

*Why dropping is sound.* Two segments sharing an endpoint always intersect, so the
`CROSS` requirement is automatically satisfied and adding nothing is
under-constraint. The non-collinearity of the two adjacent sides is **still**
enforced, implicitly, by (P1) uniformity on `{v1, b2, v2}`.

*Verified counts (recomputed for this audit).*

| variant | points | pairs sharing an endpoint | explicit crossing predicates | total constraints |
|---|---:|---|---:|---:|
| `generic` | 12 | — | **24** | 4479 |
| `P-adj` | 11 | `b–a'` at `b2` | **23** | 2663 |
| `Q-adj` | 11 | `B–A'` at `B2` | **23** | 2663 |
| `PQ-adj` | 10 | both | **22** | 1492 |

*Over-constraint check.* None found.

### 9.6 Correctness of the crossing and cone predicates — **proved in prose**

*What the encoder does.*

```
CROSS(s,t)               :=  χ(p,q,r) ≠ χ(p,q,w)  ∧  χ(r,w,p) ≠ χ(r,w,q)      s=[p,q], t=[r,w]
IN_CONE(x; v, s2, t2)    :=  χ(v,s2,x) = χ(v,s2,t2)  ∧  χ(v,t2,x) = χ(v,t2,s2)
```

*Proof that `CROSS` is exactly "the segments intersect", given four distinct
endpoints and GP2.* If they intersect, the intersection is a single point `z` (a
common sub-segment would put three of the four endpoints on a line). `z` is not an
endpoint of either segment: `z = p` would give `p ∈ [r,w]`, hence `p, r, w`
collinear. So `z` is interior to both and the crossing is transversal, giving both
sign inequalities. Conversely the two sign inequalities are the standard
straddling test and imply intersection. ∎

*Proof that `IN_CONE` is exactly "`x ∈ int Cone`", given `v, s2, t2` not collinear
and `x ∉ ℓ(v,s2) ∪ ℓ(v,t2)`.* Write `x = v + σ(s2−v) + τ(t2−v)` (a basis).
Then `det(v, s2, x) = τ·det(s2−v, t2−v)` and `det(v, t2, x) = σ·det(t2−v, s2−v)`,
so `χ(v,s2,x) = χ(v,s2,t2) ⟺ τ > 0` and `χ(v,t2,x) = χ(v,t2,s2) ⟺ σ > 0`.
Hence `IN_CONE ⟺ σ, τ > 0 ⟺ x ∈ int Cone(s,t)`. ∎

*Over-constraint check — the one real risk, and why it is not realised.*
`Cone` is **closed** (`σ, τ ≥ 0`) but `IN_CONE` is **open**. Imposing the open
version would be an over-constraint if a genuine counterexample could have the apex
`v3` on the boundary of `Cone(a,b)`. It cannot: in all four uses the tested point
and the three cone-defining points come from **different** polygons —
`hooking1 = IN_CONE(v3; v1,a2,b2)`, `hooked1 = IN_CONE(v1; v3,A2,B2)`,
`hooking2 = IN_CONE(v4; v2,ap2,bp2)`, `hooked2 = IN_CONE(v2; v4,Ap2,Bp2)` — so
GP2 forbids the degenerate case. Open and closed coincide here. ✔

Also correct: `I(A,B) = v3` requires `A, B` non-collinear, which is GP2 within `Q`;
and `Cone(a,b)` has apex `I(a,b) = v1` because `a, b` are consecutive.

*Corroboration re-run for this audit:* `validate_encoding.py` — **89 100** `CROSS`
comparisons and **356 400** `IN_CONE` comparisons against direct exact rational
geometry (Cramer), **0 mismatches**; `om_control.py` — four controls pass,
including a machine verification of AKR's Observation 3.

### 9.7 Exhaustiveness of variants and symmetry reductions for `n = 7` — **proved in prose** (repo's own reduction was incomplete; closed here)

*What the encoder does.* Runs four variants, `generic / P-adj / Q-adj / PQ-adj`,
and `coverage.py` argues they exhaust `n = 7`: the `P`-distance
`d ∈ {2,3,4,5}` gives a coincidence only for `d = 2` (`b2 = ap2`) and `d = 5`
(`a2 = bp2`), and the four possible `Q`-adjacencies
`{A2=Ap2, A2=Bp2, B2=Ap2, B2=Bp2}` form a **single orbit** under the order-16
automorphism group `AUT`.

**Finding (new).** The orbit argument is valid for a `Q`-adjacency *alone*, but
**not** for the combined case. The relabelling generators act in *tandem*:
`g1 = (a↔b, A↔B)` flips the "first coordinate" of the `P`-type **and** of the
`Q`-type simultaneously, and `g2 = (a'↔b', A'↔B')` flips the second. Writing each
type as a bit pair (`a/b` → 0/1, `ap/bp` → 0/1, and likewise `A/B`, `Ap/Bp`), the
orbit invariant of a *combined* type is the XOR of the `P`-bits with the `Q`-bits.
There are therefore **four** orbits of combined `PQ` types, and `om_lemma7.py`'s
`PQ-adj` tests only the orbit `XOR = (0,0)`. The other three were untested.

Worse for non-vacuity: `PQ-adj / none` is **UNSAT**, i.e. the single combined case
the repo does test is a *vacuous* instance — its base pattern is already
unsatisfiable, so all four of its status rows carry no information beyond it. The
geometrically feasible `PQ` orbit (`XOR = (1,1)`, e.g. `b2 = ap2` together with
`A2 = Bp2`) is the one that was **not** in the file.

**Closure (done for this audit).** I enumerated all **25** combinations
(`P`-type ∈ {none, `a2=ap2`, `a2=bp2`, `b2=ap2`, `b2=bp2`} × `Q`-type ∈ {none,
`A2=Ap2`, `A2=Bp2`, `B2=Ap2`, `B2=Bp2`}) **with no symmetry reduction at all**, and
solved all five status queries in each. Result:

```
both-hooking : unsat in all 25      both-hooked : unsat in all 25
mixed-1 / mixed-2 : sat only in (P none, Q none); unsat in the other 24
none : sat in 9, unsat in 16 — in particular exactly one Q-type per P-type
       is satisfiable, the one with XOR = (1,1), confirming the orbit analysis
```

so the conclusion is unaffected and the coverage gap is closed.

> **SUPERSEDED BY A SHIPPED, CERTIFICATE-BACKED RUN (2026-09-14).** The
> "Closure" paragraph above was produced in a session scratchpad and the script
> was **not recoverable**; for a period the repository contained no executable
> evidence for it. It has now been reconstructed and shipped as
> `independent/akr_l7_reproduction/coverage25/`, and **two numbers above are
> wrong**:
>
> * **`none` is SAT in 13 combinations and UNSAT in 12**, not "sat in 9, unsat
>   in 16". The 13 are: `Pnone/Qnone`; the 8 combinations where exactly one side
>   is `none`; and the 4 both-adjacent combinations with `XOR = (1,1)` — which is
>   precisely what the same paragraph's own orbit claim predicts, so the
>   9/16 figures were simply a miscount.
> * The **combined** types form **5** orbits in total, and among the 16
>   both-adjacent types only **3** (`XOR = (0,0)`, `{(0,1),(1,0)}` merged, and
>   `XOR = (1,1)`) — not the four asserted earlier, because the group also swaps
>   the two pairs.
>
> What is **unchanged** is the conclusion and the load-bearing claim:
> `both-hooking` and `both-hooked` are **UNSAT in all 25**, now backed by 110
> DRAT refutations and 15 explicit models, **125/125 re-verified** against CNFs
> re-derived from source and matched by SHA-256. The 25-figure is also no longer
> prose: `coverage25/completeness.py` derives it in exact ℤ₇ arithmetic over
> 50,176 labelled cases with **0** violations and no symmetry reduction.
> See `known-issues.md` K-16. The case list
itself is a finite index-arithmetic proof (§9.4 table: at most one coincidence in
`P` and at most one in `Q`, since two would force `4 ≡ 0 mod 7`), hence the
*proved in prose* label; each individual verdict is machine-checked.

*Reproduction.* Take `om_lemma7.build` and replace the hard-coded `ident` with a
parameter ranging over the 25 pairs above; keep everything else identical. The
script used is in the session scratchpad as `audit/variants25.py`; it imports
`om_lemma7` unchanged and re-derives `want`, so it exercises the same predicates.

*Over-constraint check.* None found; the enumeration widened the case list rather
than narrowing it.

### 9.8 Agreement of witness quantifiers with the status-set statement — **proved in prose**

*What the encoder does.* Imposes `hooking1 ∧ hooking2` (resp. `hooked1 ∧ hooked2`)
where `hooking1` refers to the *specific* pair `(A,B)` constrained to be `E^D`-matched
to `(a,b)`, and `hooking2` to the *specific* pair `(A',B')` matched to `(a',b')`.

*Why it matches `A7-EXT`.* `¬A7-EXT` gives a status `s ∈ S(e) ∩ S(e')` and, by the
two **independent** existentials in the definition of `S`, witnesses `α ∈ A(e)` and
`α' ∈ A(e')` chosen *separately*, each realising `s`. Setting `(A,B) := α`,
`(A',B') := α'` reproduces exactly the encoded hypothesis. There is no
existential trap and no coupling. Corroborating textual evidence: AKR-SoCG's proof
of Lemma 7 *selects* the associated pairs with the cone conditions spelled out
(`I(q_{i'},q_{i'±1}) ∈ Cone(p_i,p_{i+1})` etc.), which only makes sense under the
existential reading; AKR-DCG deleted those clauses, which is an expositional
regression, not a change of statement.

*Why `A(e)` may be the `Associated_L5` set at no cost.* The encoder does not assert
the dichotomy `(D)` separately, and does not need to: the status constraint it
*does* assert **is** one disjunct of `(D)`; and the cross non-edges (L5b) follow
from (M). So the witnesses the encoder ranges over include every `Associated_L5`
witness. Under-constraint in the right direction.

*Over-constraint check.* None. The encoder demands of `(A,B)` only: two consecutive
sides of `Q`, `E^D`-matched to `(a,b)`, and the status. It does **not** demand
`(L5b)` or `(D)` as separate hypotheses, so it cannot discard a legitimate witness.

---

## 10. Over-constraint audit — summary

| candidate over-constraint | verdict |
|---|---|
| uniform chirotope (P1) | = GP2 on polygon vertices; no extra perturbation. **Safe.** |
| Grassmann–Plücker (P2), acyclicity (P7) | hold in every real configuration. **Safe.** |
| 12 forced crossings | necessary by the component argument + GP1/GP2. **Safe.** |
| 8 within-polygon disjointness | necessary by simplicity + `n = 7` index arithmetic. **Safe.** |
| 4 `E^D` disjointness | definitional; also *redundant* (not in the UNSAT core). **Safe.** |
| `IN_CONE` open vs `Cone` closed | boundary case excluded by GP2 (cross-polygon apexes). **Safe.** |
| adjacency identifications | shared endpoint is forced to be the far–far vertex. **Safe.** |
| dropping endpoint-sharing pairs | under-constraint. **Safe.** |
| variant list | was **incomplete** for combined `PQ` (§9.7) — a *coverage* defect, i.e. under-coverage, not over-constraint. Closed: all 25 cases UNSAT. |

**No over-constraint was found.** Two independent robustness checks, re-run for this
audit, agree:

* `drop_one.py` on `generic / both-hooking`: **22 of 26** single-constraint
  weakenings turn `sat`. The four that stay `unsat` are exactly the four `E^D`
  disjointness constraints, which are implied by the twelve crossings. So the
  contradiction is tight, not an artefact of a bloated model.
* `unsat_core.py`: the minimal core of `generic / both-hooking` is **22**
  constraints — the 12 crossings, the 8 within-polygon disjointnesses, and the 2
  status constraints. Every member of that core is individually justified above.
  The same shape holds for `generic / both-hooked`.

**Non-vacuity.** The positive control is genuine but narrow. Re-run for this audit:
`evidence/tools/verify_fig6.py` reconstructs AKR's Fig. 6 from integer line
coefficients in exact rationals, checks all **24** pattern conditions
(`mismatches: 0`), reads off `hooking1 = True, hooked2 = True` (the mixed pattern),
and verifies that the resulting 12-point order type **satisfies all 64 566 clauses**
of the independent `generic / mixed-1` CNF. That establishes the `generic` encoding
is not vacuously over-constrained. **It does not extend to the adjacency
variants:** no straight-line realisation of any `P-adj` / `Q-adj` / `PQ-adj` base
pattern is exhibited anywhere in the repository, and for `PQ-adj` as shipped the
base pattern is UNSAT. This is a non-vacuity gap, not a soundness gap.

**Verdict re-run.** All 20 verdicts of `om_lemma7.py` reproduce exactly
(`generic/none`, `generic/mixed-1`, `generic/mixed-2`, `P-adj/none`, `Q-adj/none`
`sat`; the other 15 `unsat`), as do the 15 DRAT-verified UNSATs recorded in
`evidence/logs/drat_results.txt`.

---

## 11. The Observation 6 counterexample — precisely what it settles

> **Observation 6 (Axis Property, AKR-DCG, verbatim).** If the pair `p_i,p_{i+1}`
> and the pair `q_j,q_{j±1}` are associated such that
> `(p_i,q_j),(p_{i+1},q_{j±1}) ∈ E^D`, then the line through `I(p_i,p_{i+1})` and
> `I(q_j,q_{j±1})` separates `p_i` and `q_{j±1}` on the one side from `p_{i+1}` and
> `q_j` on the other side.

**The counterexample (K-14), re-verified independently for this audit in exact
integer arithmetic:**

```
P (triangle) = (2,0), (3,4), (−2,0)
Q (pentagon) = (4,−4), (−3,1), (0,−1), (3,3), (2,1)
```

* `P`, `Q` simple; 8 vertices distinct; **no three combined vertices collinear**;
  **no vertex of one polygon on the other**; **no two combined sides parallel** —
  GP0–GP3 all hold; `m = 3`, `n = 5` odd; `I(P,Q) = 8`.
* `E^D = {(0,0),(0,1),(1,2),(1,3),(1,4),(2,3),(2,4)}`, two components,
  `CC(p_0) ≠ CC(p_1)`.
* `(p_0,q_0), (p_1,q_4) ∈ E^D` and `(p_0,q_4), (p_1,q_0) ∉ E^D`: so `q_0,q_4` is
  associated to `p_0,p_1` under the printed definition **and** the two cross
  non-edges hold.
* `I(a,b) = (3,4)`, `I(A,B) = (4,−4)`; `I(A,B) ∉ Cone(a,b)` and
  `I(a,b) ∉ Cone(A,B)` — the dichotomy fails both ways.
* The axis through the two apexes leaves all four of `a, b, A, B` in the **same**
  closed half-plane (side signs: `a (−1,0)`, `b (0,−1)`, `A (0,−1)`, `B (−1,0)`).
  It separates nothing. **Observation 6 fails.**

### What it refutes

1. **Observation 6 exactly as printed** — inside genuine simple polygons, under
   every general-position condition AKR themselves impose. A published erratum,
   not a difficulty of interpretation.
2. **The "edges + cross non-edges" repair.** Since (L5b) holds here too, adding the
   non-edges to the definition of "associated" does **not** rescue Observation 6.
   The **cone dichotomy is the indispensable ingredient**; the non-edges are free
   (§4) and therefore cannot be what is missing.
3. **Any formalisation that asserts Observation 6 for all `Associated_broad` pairs,
   or for all `edges + non-edges` pairs, is unsound.** The correct statement is
   Observation 6′ (`a7-independent-proof.md` §3–4), which adds `(D)` as a
   hypothesis and is proved there.

### What it does **not** establish

1. **It is not a counterexample to Lemma 7, nor to `A7-EXT`.** `S(e) ⊆ {hooking,
   hooked}` and each status *is* a disjunct of `(D)`. A pair for which `(D)` fails
   contributes nothing to any `S(e)` and can never appear as a witness in
   `¬A7-EXT`. In this very configuration the pair `q_0,q_4` is *neither* hooking
   nor hooked, so it is not in `A(p_0,p_1)`.
2. **It does not invalidate the one use of Observation 6 inside Lemma 7's proof.**
   There, the two cross non-edges come free from (M) and the dichotomy comes free
   from the hooking hypothesis (H); so Observation 6′ applies with no extra
   hypotheses (`a7-independent-proof.md` §6.1, "Repair Lemma").
3. **It says nothing about the twelve-case analysis** that is the body of Lemma 7's
   proof, nor about AKR's §10.2 computer check, nor about the counts 158830 / 840 /
   14 / 13.
4. **It does not touch `S(e) ≠ ∅`** (§6), which needs (L5c), a clause the
   counterexample does not contradict — the counterexample's pair simply is not
   the pair Lemma 5 produces.
5. **It is not a counterexample to Lemma 5.** Lemma 5 asserts the existence of a
   *good* pair; it does not claim every pair satisfying (L5a)+(L5b) is good.

---

## 12. Residual unresolved items

| # | item | why it is still open |
|---|---|---|
| **R1** | **`S(e) ≠ ∅`**, i.e. AKR Lemma 5 clause **(L5c)** | Imported from AKR §4 (Proposition 4 + the `G_0` walk). It is a **global** statement about all of `Q` and the parity of `n`; no oriented-matroid or local argument in this repository bears on it, and nothing machine-checks it. **This is the sharpest residual dependency of A7.** |
| **R2** | AKR's own proof of **Lemma 7** | `a7-independent-proof.md` §6.8: of the twelve terminal cases, 2 are fully proved there (7, 9), 1 is proved up to one sub-case (5), and the remaining 9 rest on figure-level reasoning (§6.9 names the obstruction: the extents of the frame sides beyond their forced crossings are free parameters). The OM certificates supersede this for the finite question, so R2 is a defect in the *published* proof rather than a live dependency — *provided* one accepts the OM route. |
| **R3** | AKR §9 (**GP0/GP1 as WLOG**) | External to this audit. Not re-derived here; used identically by any consumer of AKR's theorem. |
| **R4** | Non-vacuity of the **adjacency variants** | No straight-line (or even OM-realisable) witness is exhibited for any `P-adj` / `Q-adj` / `PQ-adj` base pattern. Soundness is unaffected (all constraints are necessary), but the "the encoding is not vacuous" evidence covers `generic` only. |

Items **1–3** of `a7-independent-resolution.md` §8's list of four prose bridges are
discharged by this document (general position: §8; four components ⟹ the 24-pair
pattern: §9.3–9.5; case exhaustion: §9.7, after closing a gap). Item **4**
(quantifier match) is discharged in §9.8. The translation of "crosses" and "point
in cone" into chirotope conditions, previously recorded as *validated by testing
only*, now has proofs in §9.6. What remains is **R1–R4**, and R1 is the one that
matters.

---

## 13. Updated expert / author inquiry — **DRAFT ONLY, NOT TO BE SENT**

> **This is a draft for internal record. It supersedes the letter in
> `akr-l7-human-review.md` §F, whose premise (the cross non-edges) was wrong.
> Do not send it; no approval to contact anyone has been given or is implied.**

**Subject:** Possible erratum in Observation 6, and the role of the cone dichotomy
(DCG 68 (2022) 1049–1077, §4)

> Dear Professor Ackerman, Professor Keszegh, Professor Rote,
>
> We are working out the case `m = n = 7` of the two-simple-polygons intersection
> problem and our argument leans on your Lemma 7. Two points in §4 seem to us to
> need a correction or a clarification; we would be grateful for your view.
>
> **1. Observation 6 appears to be false as printed.** In the following pair of
> simple polygons
>
> ```
> P = (2,0), (3,4), (−2,0)                     (triangle)
> Q = (4,−4), (−3,1), (0,−1), (3,3), (2,1)     (pentagon)
> ```
>
> every general-position assumption of your §3 holds — both polygons are simple,
> the eight vertices are distinct, no three of the eight combined vertices are
> collinear, no vertex of one polygon lies on the other, and no two of the eight
> combined sides are parallel — and `I(P,Q) = 8`. Here `CC(p_0) ≠ CC(p_1)`, and
> `(p_0,q_0), (p_1,q_4) ∈ E^D`, so `q_0,q_4` is *associated* to `p_0,p_1` under the
> definition as printed. (The two cross non-edges `(p_0,q_4), (p_1,q_0) ∉ E^D`
> also hold, so this is not an artefact of the broad reading.) Yet
> `I(q_0,q_4) ∉ Cone(p_0,p_1)` and `I(p_0,p_1) ∉ Cone(q_0,q_4)`, and the line
> through the two apexes leaves all four sides in one closed half-plane, so it
> separates nothing. All of this is verified in exact integer arithmetic.
>
> **2. The ingredient that seems to be missing is the cone dichotomy, not the
> non-edges.** We first suspected that "associated" was meant to carry the two
> cross non-edges of Lemma 5. That cannot be it: whenever "associated" is defined
> at all — i.e. when `CC(p_i) ≠ CC(p_{i+1})` — the non-edges are automatic, since
> `(p_i,q_{j±1}) ∈ E^D` would give a path `p_i — q_{j±1} — p_{i+1}` and hence
> `CC(p_i) = CC(p_{i+1})`. The example above confirms this: it satisfies the
> non-edges and still fails the Axis Property.
>
> Observation 6 does become provable once one additionally assumes the "Furthermore"
> clause of Lemma 5, i.e. `I(p_i,p_{i+1}) ∈ Cone(q_j,q_{j±1})` or
> `I(q_j,q_{j±1}) ∈ Cone(p_i,p_{i+1})`. With that hypothesis the apex
> `I(q_j,q_{j±1})` is forced into the interior of `Cone(p_i,p_{i+1})` or of its
> vertical opposite, and the separation follows in a few lines. Is that the
> intended hypothesis of Observation 6?
>
> We note that §10.2 describes discarding 13 of the 14 enumerated configurations
> because *"some associated pair did not conform to the hooking/hooked pattern of
> Lemma 5"*, which reads to us as though the computer verification did use the
> dichotomy-carrying notion, while the printed definition does not mention it.
>
> **3. The quantifier in "is hooking".** The SoCG 2020 proof of Lemma 7 *selects*
> the associated pairs subject to `I(q_{i'},q_{i'±1}) ∈ Cone(p_i,p_{i+1})` and
> `I(q_{j'},q_{j'±1}) ∈ Cone(p_j,p_{j+1})`; the DCG version omits those two
> clauses. We read the SoCG phrasing as fixing the intended meaning: *`p_i,p_{i+1}`
> is hooking* means *some* associated pair witnesses it, with the two witnesses in
> Lemma 7 chosen independently. Could you confirm?
>
> Concretely, the statement we use is: if `e` and `e'` are pairs of consecutive
> sides of `P` sharing no side, whose four sides lie in four distinct components of
> `G^D`, and `S(e) ⊆ {hooking, hooked}` is the set of statuses realised by *some*
> associated pair of `e`, then `S(e) ∩ S(e') = ∅` and `S(e) ≠ ∅`. The second half
> is Lemma 5 including its "Furthermore" clause; the first half is Lemma 7 under
> the existential reading.
>
> **4. Two arithmetic points in §10.2, for completeness.** (i) 158830 is the number
> of abstract order types on **nine** points (OEIS A006247); for eight the counts
> are 135 / 3315 / 1232944. We suspect a ninth pseudoline (a line at infinity) was
> added, which would make the enumerated set a harmless superset, but then the
> remark about stretchability below nine lines would not apply to it. (ii)
> `840 = 8!/48` quotients by `Aut` of the disjointness graph on the eight sides
> (which is `Q_3`, of order 48); that group does not preserve which pairs of sides
> are consecutive. The subgroup preserving both has order 16, giving
> `8!/16 = 2520 = 3 × 840`. Was a two-stage scheme used?
>
> With thanks for the paper, and apologies if we have misread any of this,

**Preparation notes for whoever eventually sends something like the above.**
Lead with §1 (the counterexample) — it is a concrete, checkable fact and it makes
the rest of the letter obviously worth answering. Do **not** repeat the superseded
non-edge question. Keep §4 last and short; it is bookkeeping, not mathematics, and
burying the lede in it would weaken the letter.

---

## 14. Reproduction

All of the following were re-run for this audit, from copies in the session
scratchpad so that no repository file was modified.

```
python3 om_lemma7.py          # 20 verdicts: 5 sat, 15 unsat — reproduced exactly
python3 validate_encoding.py  # 237600 GP, 29700 acyclicity, 89100 CROSS,
                              # 356400 IN_CONE checks vs exact geometry — 0 failures
python3 validate_axioms.py    # reorientation classes 1,1,1,4 for n = 3..6
python3 om_control.py         # 4 controls pass (incl. AKR Observation 3)
python3 drop_one.py           # 22/26 weakenings -> sat; only the 4 E^D edges stay unsat
python3 unsat_core.py         # minimal core = 12 crossings + 8 disjointness + 2 status
python3 coverage.py           # P-distance table; Q-adjacency orbit (see §9.7 caveat)
python3 symmetry.py           # |Aut| = 48 vs 16; 840 vs 2520
PYTHONPATH=evidence/shims python3 evidence/tools/verify_fig6.py
                              # 24 pattern conditions, 0 mismatches; mixed status;
                              # 0 of 64566 clauses violated
```

Two computations were written for this audit and are not in the repository:

* the exact re-verification of the K-14 triangle/pentagon counterexample (§11)
  — simplicity, GP0–GP3, `E^D`, components, both cone tests, and the axis side
  signs, in `fractions.Fraction`/integers;
* the 25-case symmetry-free enumeration of §9.7.

Both are short and are described precisely enough above to be rewritten from
scratch; neither is required for any claim in the repository, and §9.7's
enumeration only widens the case list.
