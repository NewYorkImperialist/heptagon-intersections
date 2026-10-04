> **Historical document (banner added 2026-10-04).** This file describes an earlier stage of the project and is kept for provenance. For the current statement see `README.md` → "Current status", `paper/heptagon-paper.pdf` (Theorem 1.2) and `docs/audit/audit.pdf`. f(7,7) = 38 is not established by this repository; it depends on the external AKR §9.1 reduction, whose applicability here is unresolved.

# AKR Observation 6 / Lemma 7 and the bipartiteness of *H* — note for external review

> # ⇒ DO NOT SEND THIS DOCUMENT. Use [`akr-l7-review-request.md`](akr-l7-review-request.md).
>
> **Superseded 2026-09-14.** This was written to obtain an expert judgement on
> the AKR Lemma 7 reading, and it is no longer fit for that: roughly a third of
> it is retraction, and §C rests on a definition of `A(e)` that omits the cone
> dichotomy — which `a7-independent-proof.md` §2.3 shows is **unsound**, so §C's
> proof of `S(e) ≠ ∅` does not go through and §D's dismissal of the
> counterexample fails with it.
>
> It is kept as the record of what was believed and how it was corrected, not
> for reading. **§A (the source quotations) is sound**, and is reproduced in the
> replacement.

> **PARTLY SUPERSEDED — read this before §§B–D and §G. Banner added
> 2026-09-14; the body below is unedited.**
>
> This document carries a `SUPERSEDED 2026-09-13` notice, but it is **buried in
> §F**, roughly three-quarters of the way down. A reader who stops before §F gets
> the superseded framing as current. The supersession is not confined to §F:
>
> * **The repair is the cone dichotomy, not the cross non-edges.** §B.2 and §G
>   present "demand the two cross non-edges" as what fixes Observation 6. §F's own
>   banner calls that premise **wrong** — the non-edges are *automatic* whenever
>   "associated" is defined at all. See `known-issues.md` K-14.
> * **§C's definition of `A(e)` omits the dichotomy, and is therefore unsound as
>   a specification.** §C defines `A(e)` by the two edges and two non-edges and
>   calls that "the full conclusion of Lemma 5". It is not: Lemma 5 also concludes
>   `I(p_a,p_b) ∈ Cone(q_i,q_{i±1})` or `I(q_i,q_{i±1}) ∈ Cone(p_a,p_b)`.
>   `a7-independent-proof.md` §2.3 shows that omitting the dichotomy is **unsound**
>   and says explicitly: "Do not define it as (E1)∧(E2)∧(N1)∧(N2)". Accordingly the
>   two-line proof of `S(e) ≠ ∅` in §C does **not** go through as written — the
>   dichotomy does not follow from membership in `A(e)` as §C defines it.
> * **§D's dismissal of the counterexample no longer holds.** §D argues the
>   counterexample "does not touch the project's use" because the project's `A(e)`
>   is the narrow set. The counterexample in `a7-independent-resolution.md` and
>   K-14 *satisfies the cross non-edges*, so it **is** in `A(e)` as §C defines it.
>   Only the dichotomy-carrying definition escapes it.
> * **"Observation 6 remains unproved in general" (§E, §G) understates it.**
>   Observation 6 is **false as printed** (K-14) — as this document itself says in
>   §B. And Observation 6′, the dichotomy-carrying repair, *is* proved in prose in
>   `a7-independent-proof.md` §4.
> * **The AKR §10.2 figures quoted in §E are uncorrected.** "158,830 arrangements
>   of eight lines" and "840 assignments after symmetry reduction" are both
>   corrected in `a7-independent-resolution.md` §7 and K-14: 158,830 is a
>   *nine*-element count, and the correct assignment count is 8!/16 = **2520**,
>   which is what `independent/akr_l7_reproduction/RESULTS.md` uses.
>
> **The open question itself is unchanged**, and so is the status
> `VERY STRONGLY CORROBORATED — HUMAN REVIEW STILL DESIRABLE`
> (`verification-status.md` row 9a): whether the published text licenses the
> disjoint-status consequence. Read this file **with**
> [`a7-independent-resolution.md`](a7-independent-resolution.md) and
> [`a7-independent-proof.md`](a7-independent-proof.md), which carry the corrected
> definition and the counterexample.

**Purpose.** This is the one remaining mathematical review item in a candidate
computer-assisted proof that *f*(7,7) = 38.

*(Corrected 2026-09-14: this paragraph continued "It is self-contained: no other
file in this repository, and no code, needs to be read to judge it." That is no
longer true — §F's banner itself directs the reader elsewhere, and the corrected
definition of "associated" and the load-bearing counterexample both live in
`a7-independent-resolution.md`.)*

**Sources.** [AKR-J] = Ackerman, Keszegh, Rote, *An almost optimal bound on the
number of intersections of two simple polygons*, Discrete Comput. Geom. **68**
(2022) 1049–1077, DOI 10.1007/s00454-022-00438-0. [AKR-C] = the same authors,
SoCG 2020 (LIPIcs 164), art. 24. Page references to [AKR-J] are given as PDF page
*n*; the article occupies journal pages 1049–1077, so journal page = 1048 + *n*.
SHA-256 of the exact files read are in [`../references/README.md`](../references/README.md).

---

## A. Exact source definitions

Throughout, *P* and *Q* are simple polygons in general position, `G^D` is the
**disjointness graph** — bipartite on the sides, with `(p_i, q_j) ∈ E^D` iff the
closed segments `p_i` and `q_j` are **disjoint** ([AKR-J] §3, PDF p. 4) — and
`CC(·)` denotes the connected component of a side in `G^D`. For two
non-parallel segments *s*, *s*′, `I(s,s′)` is the intersection point of their
supporting lines, and `Cone(s,s′)` is the convex cone at `I(s,s′)` spanned by the
two rays containing *s* and *s*′.

A **consecutive pair** is `(p_i, p_{i+1})`; it is *relevant* here when
`CC(p_i) ≠ CC(p_{i+1})`.

### Associated pair — [AKR-J] §4, PDF p. 6 (journal p. 1054); [AKR-C] p. 24:5

The two versions are **verbatim identical** on this definition:

> Let `p_i, p_{i+1}` be two sides of *P* such that `CC(p_i) ≠ CC(p_{i+1})`. Then by
> Lemma 5 there are sides `q_j, q_{j±1}` of *Q* such that
> `(p_i,q_j), (p_{i+1},q_{j±1}) ∈ E^D`. We say that such a pair `q_j, q_{j±1}` is
> **associated** to `p_i, p_{i+1}`.

Note what is *defining* and what is not. The definition requires exactly two
edges. It does **not** require the two cross non-edges
`(p_i,q_{j±1}), (p_{i+1},q_j) ∉ E^D`, even though Lemma 5 — the result invoked to
produce such a pair — does deliver them.

### Hooking / hooked — [AKR-J] §4, PDF p. 6 (journal p. 1054); [AKR-C] p. 24:5 (identical)

> By Lemma 5 we have `I(q_j,q_{j±1}) ∈ Cone(p_i,p_{i+1})` or
> `I(p_i,p_{i+1}) ∈ Cone(q_j,q_{j±1})`. If the first condition holds we say that
> `p_i,p_{i+1}` is **hooking** and `q_j,q_{j±1}` is **hooked**. In the second case
> we say that `p_i,p_{i+1}` is **hooked** and `q_j,q_{j±1}` is **hooking**.
>
> Note that it is possible that a pair of consecutive sides is associated with
> several pairs and that it is both hooking and hooked (with respect to two
> different pairs from the other polygon or even with respect to a single pair, as
> in Fig. 5c).

Two things to record. First, the dichotomy is asserted "by Lemma 5" for an
*associated* pair — but Lemma 5 establishes it only for the pair Lemma 5 itself
produces. Second, the authors explicitly allow a pair to be **both** hooking and
hooked.

Elsewhere [AKR-J] writes the status **relative to an association**: "Each
`q_{i_j},q_{i_j±1}` is hooking **with respect to** an associated pair
`p_{k_j},p_{k_j±1}`" (PDF p. 15, journal p. 1063). That phrasing supports reading a bare "is
hooking" as an existential over associations.

### Observation 6 (Axis Property) — [AKR-J] PDF p. 6 (journal p. 1054); [AKR-C] p. 24:5 (identical)

> If the pair `p_i,p_{i+1}` and the pair `q_j,q_{j±1}` are associated such that
> `(p_i,q_j),(p_{i+1},q_{j±1}) ∈ E^D`, then the line through `I(p_i,p_{i+1})` and
> `I(q_j,q_{j±1})` separates `p_i` and `q_{j±1}` on the one side from `p_{i+1}`
> and `q_j` on the other side.

**Observation 6 is stated without proof in both versions.** Its hypothesis names
only the two edges.

### Lemma 7 — [AKR-J] PDF p. 7 (journal p. 1055); [AKR-C] p. 24:6 (verbatim identical)

> Let `p_i,p_{i+1}, p_j,p_{j+1}` be two pairs of consecutive sides of *P* that
> belong to **four different connected components** of `G^D`. Then it is
> impossible that both `p_i,p_{i+1}` and `p_j,p_{j+1}` are hooked or that both
> pairs are hooking.

---

## B. The version discrepancy

**1. What the definition literally permits.** Under the definition as written,
`(A,B)` is associated to `(a,b)` as soon as `a ∩ A = ∅` and `b ∩ B = ∅`. Nothing
constrains `a ∩ B` or `b ∩ A`.

**2. Why Observation 6 is not immediate under that reading.** It is not merely
unproved — it is **false**. An explicit counterexample, verified in exact rational
arithmetic:

```
a = [(0,0),(1,0)]        b = [(0,0),(0,1)]        (consecutive sides of P)
A = [(1,-1),(2,-1)]      B = [(1,-1),(1,-2)]      (consecutive sides of Q)

a ∩ A = ∅ and b ∩ B = ∅          → (A,B) IS associated to (a,b) as defined
I(a,b) = (0,0),  I(A,B) = (1,-1) → axis is the line x + y = 0
```

Observation 6 requires the axis to separate `{a, B}` from `{b, A}`. But on `a` the
quantity `x+y` ranges over `[0,1]` and on `b` it ranges over `[0,1]`: both lie in
the closed half-plane `x+y ≥ 0`, meeting the axis only at their shared endpoint.
So `a` and `b` are **not** separated, and Observation 6 fails.

The configuration is excluded the moment the cross non-edges are demanded: here
`a ∩ B = ∅` and `b ∩ A = ∅`, so `(a,B)` and `(b,A)` are *edges* of `G^D`, which
the narrow reading forbids.

So Observation 6 — used throughout Lemma 7's case analysis — is true only under a
reading of "associated" narrower than the printed definition.

**3. The extra cone conditions in the SoCG proof.** [AKR-C] opens the proof of
Lemma 7 (p. 24:6) by *selecting* the associated pairs, with the cone conditions
stated explicitly:

> Suppose first that both pairs `p_i,p_{i+1}` and `p_j,p_{j+1}` are hooking and
> let `q_{i′},q_{i′±1}` and `q_{j′},q_{j′±1}` be their associated (hooked) pairs
> such that: `(p_i,q_{i′}), (p_{i+1},q_{i′±1}) ∈ E^D`,
> `(p_j,q_{j′}), (p_{j+1},q_{j′±1}) ∈ E^D`,
> **`I(q_{i′},q_{i′±1}) ∈ Cone(p_i,p_{i+1})` and
> `I(q_{j′},q_{j′±1}) ∈ Cone(p_j,p_{j+1})`**.

**4. Why those conditions force the reading we need.** The two bolded clauses say
the associated pairs are *chosen to witness the hooking*. A choice is only
available if "both pairs are hooking" means "each has **some** association
witnessing hooking" — the existential reading. Under a universal reading no
choice would be needed, and under a reading in which status attached to the pair
independently of any association the clauses would be redundant.

**5. Does the journal proof implicitly make the same choice?** [AKR-J] (PDF p. 7, journal p. 1055)
**deleted** both clauses:

> Let `q_{i′},q_{i′±1}` and `q_{j′},q_{j′±1}` be associated (hooked or hooking)
> pairs of `p_i,p_{i+1}` and `p_j,p_{j+1}`, respectively, such that
> `(p_i,q_{i′}),(p_{i+1},q_{i′±1}) ∈ E^D` and
> `(p_j,q_{j′}),(p_{j+1},q_{j′±1}) ∈ E^D`. Recall that the existence of such pairs
> follows from Lemma 5.

The very next sentence then reads "Suppose first that both `a,b` and `a′,b′` are
hooking. Hence, `I(A,B) ∈ Cone(a,b)` and `I(A′,B′) ∈ Cone(a′,b′)`" — which does
**not** follow, because `A,B` was no longer chosen to witness anything. Read
alone, the journal proof has a gap at its first step. Read against [AKR-C], the
intent is unambiguous. We take this to be an expositional regression in the
journal version, not a mathematical change: the statements of the definition,
Observation 6 and Lemma 7 are verbatim identical in the two versions, and only the
proof's opening sentence differs.

**Distinguishing the three levels.** *Published statement*: "associated" = two
edges. *Published proof behaviour*: [AKR-C] selects associated pairs satisfying
the cone conditions; [AKR-J] does not, but then uses the conclusion as if it had.
*Project inference*: "is hooking" is existential over associations, and the
associations quantified over are those delivered by Lemma 5 — i.e. carrying the
cross non-edges.

---

## C. The auxiliary graph *H* and the intended derivation

**Definition.** Fix *P* (the construction is applied to *Q* symmetrically).

* `V(H) = { i ∈ ℤ₇ : CC(p_i) ≠ CC(p_{i+1}) }`, identified with the relevant
  consecutive pairs `e_i = (p_i, p_{i+1})`.
* `i ∼_H k` iff **(a)** the two pairs share no side, i.e.
  `{i,i+1} ∩ {k,k+1} = ∅`, equivalently `(k−i) mod 7 ∉ {0,1,6}`; and **(b)** the
  four sides `p_i, p_{i+1}, p_k, p_{k+1}` lie in **four distinct** components of
  `G^D`.

Condition (b) is imposed directly, so an *H*-edge reproduces Lemma 7's hypothesis
exactly; it is not inferred from (a).

**Status set.** For `e = (p_i,p_{i+1}) ∈ V(H)` let `A(e)` be the set of pairs of
consecutive sides of *Q* associated to `e` **in the narrow sense** — i.e. pairs
`(q_j,q_{j±1})` with

```
(p_i,q_j), (p_{i+1},q_{j±1}) ∈ E^D    and    (p_i,q_{j±1}), (p_{i+1},q_j) ∉ E^D,
```

which is the full conclusion of Lemma 5. Define

```
S(e) = { hooking : ∃ α ∈ A(e) with I(α) ∈ Cone(e) }
     ∪ { hooked  : ∃ α ∈ A(e) with I(e) ∈ Cone(α) }.
```

**`S(e) ≠ ∅`.** `e ∈ V(H)` means `CC(p_i) ≠ CC(p_{i+1})`, which is Lemma 5's
hypothesis, so `A(e) ≠ ∅`; and for `α ∈ A(e)` Lemma 5's dichotomy gives
`I(α) ∈ Cone(e)` or `I(e) ∈ Cone(α)`, so at least one status is realised. ∎

**Intended derivation of disjointness.** Let `e ∼_H e'`.

> Suppose `hooking ∈ S(e) ∩ S(e')`. Pick witnesses `α ∈ A(e)`, `α' ∈ A(e')` with
> `I(α) ∈ Cone(e)` and `I(α') ∈ Cone(e')`. By construction of *H* the four sides
> of `e` and `e'` lie in four distinct components, which is Lemma 7's hypothesis;
> and `e, e'` are then both hooking *as witnessed by `α, α'`* — which is exactly
> the configuration [AKR-C]'s proof of Lemma 7 begins with. Lemma 7 therefore
> yields a contradiction. Symmetrically for `hooked`. Hence
> `S(e) ∩ S(e') = ∅`. ∎

**Bipartiteness.** Suppose `e ∼_H e'`. Both `S(e), S(e')` are non-empty and
disjoint subsets of a 2-element set, hence distinct singletons. Consequently:

* if `S(e) = {hooking, hooked}` then `e` has **no** *H*-neighbour, since any
  neighbour would need a non-empty status set disjoint from a 2-element set;
* every non-isolated vertex therefore has `|S(e)| = 1`;
* every *H*-edge joins vertices with *opposite* singleton statuses;
* so `e ↦ S(e)` is a proper 2-colouring of the non-isolated part of *H*, and
  isolated vertices never obstruct 2-colourability. **`H` is bipartite.** ∎

**The point requiring judgement.** Everything hinges on whether "both pairs are
hooking" in Lemma 7 means (i) *each pair has some association witnessing
hooking* (existential), (ii) *every association of each pair witnesses hooking*
(universal), or (iii) *a status intrinsic to the pair, independent of any
association*. Reading (iii) is excluded by the authors' own note that a pair can
be both hooking and hooked. Reading (ii) would make Lemma 7 weaker and the
derivation above invalid as written. The project uses (i).

---

## D. Attempt to falsify the deduction

**The scenario to worry about.** Suppose `e` has two associations, `α₁` making it
hooking and `α₂` making it hooked, so `S(e) = {hooking, hooked}`; and suppose
Lemma 7 is applied with *different* choices on different *H*-edges. Could the
local applications be individually valid yet globally inconsistent, so that no
single 2-colouring exists?

**Under reading (i), no — and the reason is structural, not delicate.** A vertex
with `|S(e)| = 2` cannot have any *H*-neighbour at all: a neighbour `e'` would
need `S(e') ≠ ∅` and `S(e') ∩ S(e) = ∅`, impossible against a 2-element set. So
precisely the vertices for which a choice could be made are the vertices that are
isolated in *H*, and isolated vertices are irrelevant to 2-colourability. On every
actual *H*-edge both endpoints have singleton status, so there is nothing to
choose and no inconsistency can arise. The "different choices on different edges"
failure mode is therefore vacuous. Note this argument uses only the *existence*
of statuses and Lemma 7 — not any property of particular associations.

**Under reading (ii) (universal) the derivation fails**, though not by producing a
counterexample to bipartiteness: `S(e)` would have to be defined as the set of
statuses realised by *all* associations, which may be empty when a pair is both
hooking and hooked, and the emptiness argument above collapses. The project's
filter would then be testing a condition not licensed by the lemma. This is the
concrete way the proof could be wrong, and it is exactly what an author's
confirmation would settle.

**What we could not falsify.** We found no logical counterexample to the
bipartiteness inference under reading (i), and no configuration in the project's
own finite search that would distinguish the readings. What we *did* falsify is
**Observation 6 under the printed definition of "associated"** (§B.2). Since the
project's `A(e)` is the narrow set, that counterexample does not touch the
project's use — but it does show the printed definition is too broad for
Observation 6 as stated, which is why this note exists.

**A note on what the project's code actually computes.** The implementation never
computes `S(e)`, cones, hooking or hooked. It tests only the graph-theoretic
bipartiteness of *H* as defined in §C, which the argument above implies. So an
error in the above would mean the filter is *unjustified*, not that it is
*misimplemented*.

---

## E. AKR's own computer verification (journal only)

[AKR-J] §10.2 "Computer-Supported Proofs", PDF p. 28 (journal p. 1076) — **absent from [AKR-C]** —
reports, checked against the paper:

> "We have independently confirmed Lemma 7 concerning the intersection structure
> of pairs of associated pairs of sides, which is our principal workhorse, by a
> computer enumeration."

* Lemma 7 involves **eight** polygon sides; they enumerated all **158,830**
  arrangements of eight lines (as pseudoline arrangements, noting all such with
  fewer than nine lines are stretchable);
* per arrangement, **840** assignments of the eight sides after symmetry
  reduction (rather than 8! = 40,320);
* "after a few days of computing (and several weeks of programming), the result
  was that there were, **up to isomorphism, 14 configurations** with the required
  intersection pattern. **In 13 of them, some associated pair did not conform to
  the hooking/hooked pattern of Lemma 5.** The remaining configuration is the one
  in Fig. 6."

**What this corroborates.** Lemma 7's *statement* has independent machine support
from its authors — valuable, given that the human proof is a twelve-case argument
carried substantially by figures, and given that Observation 6 (used inside it) is
unproved.

**What it does not settle.** It does not verify the project's *interpretation*.
Indeed the exclusion criterion is stated as conformity to "the hooking/hooked
pattern **of Lemma 5**", which is suggestive of the narrow reading but is a
description of their filter, not a definition. Author-run computation is
corroboration of the lemma, not a substitute for checking the logical bridge in
§C.

---

## F. Draft question for the authors

> **SUPERSEDED 2026-09-13 — re-point before use.** The letter below was drafted
> on the premise that the two cross **non-edges** of Lemma 5 are the missing
> ingredient in the definition of "associated". That premise is **wrong**: the
> non-edges are automatic whenever "associated" is defined at all, since
> `(p_i,q_{j±1}) ∈ E^D` would put `p_i` and `p_{i+1}` in one component. The
> essential ingredient is the **cone dichotomy**.
>
> Worse, Observation 6 is not merely unproven but **false as printed**, and this
> is now demonstrable inside genuine simple polygons under full general position:
>
> ```
> P (triangle) = (2,0), (3,4), (-2,0)
> Q (pentagon) = (4,-4), (-3,1), (0,-1), (3,3), (2,1)
> ```
> Here `CC(p_0) ≠ CC(p_1)`; `q_0,q_4` is associated to `p_0,p_1` under the
> printed definition; both cross non-edges also hold; the cone dichotomy fails
> both ways; and the axis leaves all four sides in one closed half-plane. Every
> AKR §3 general-position condition holds and `I(P,Q) = 8` is even.
>
> A rewritten letter should therefore (i) lead with this counterexample as a
> probable **erratum** in Observation 6, (ii) ask whether the intended hypothesis
> carries the cone dichotomy, and (iii) note that §10.2's own phrase "did not
> conform to the hooking/hooked pattern of Lemma 5" suggests the narrow reading
> was used in the computer check while the broad one was printed. It should also
> record that A7-EXT itself appears unaffected, since a "neither" pair
> contributes no status to `S(e)`. See
> [`a7-independent-resolution.md`](a7-independent-resolution.md).
>
> The original text is retained below unedited, as the record of what was
> believed before the counterexample was found.



*Not sent. Narrow by design: it asks about one definitional reading, not for a
review of this project.*

> **Subject:** Reading of "associated" in Observation 6 / Lemma 7 (DCG 68 (2022) 1049–1077)
>
> Dear Professor Ackerman / Keszegh / Rote,
>
> We are studying the case *m* = *n* = 7 of the polygon-intersection problem, and
> our argument uses your Lemma 7. We would be grateful for a clarification on one
> definitional point.
>
> In §4 a pair `q_j,q_{j±1}` is defined to be *associated* to `p_i,p_{i+1}` when
> `(p_i,q_j),(p_{i+1},q_{j±1}) ∈ E^D`. Read literally this requires only those two
> edges. Under that reading Observation 6 (the Axis Property) appears not to hold:
> taking `a = [(0,0),(1,0)]`, `b = [(0,0),(0,1)]`, `A = [(1,-1),(2,-1)]`,
> `B = [(1,-1),(1,-2)]`, we have `a ∩ A = ∅` and `b ∩ B = ∅`, yet the axis through
> `I(a,b) = (0,0)` and `I(A,B) = (1,-1)` leaves both `a` and `b` in the half-plane
> `x+y ≥ 0`, so it does not separate them. The configuration is excluded if one
> additionally requires the two cross non-edges
> `(p_i,q_{j±1}),(p_{i+1},q_j) ∉ E^D` — i.e. the full conclusion of your Lemma 5.
>
> Relatedly, the SoCG 2020 version of the proof of Lemma 7 chooses the associated
> pairs so that `I(q_{i′},q_{i′±1}) ∈ Cone(p_i,p_{i+1})` and
> `I(q_{j′},q_{j′±1}) ∈ Cone(p_j,p_{j+1})`, whereas the journal version omits these
> two clauses.
>
> Could you confirm whether the intended reading is:
>
> 1. "associated" means the two edges **together with** the two cross non-edges of
>    Lemma 5; and
> 2. "`p_i,p_{i+1}` is hooking" means there **exists** an associated pair `α` with
>    `I(α) ∈ Cone(p_i,p_{i+1})` (rather than all associated pairs having that
>    property)?
>
> The implication we need is the following. Writing
> `S(e) ⊆ {hooking, hooked}` for the set of statuses realised by *some* associated
> pair of a consecutive pair `e` with `CC(p_i) ≠ CC(p_{i+1})`, we use: if `e` and
> `e'` are consecutive pairs sharing no side whose four sides lie in four distinct
> components of `G^D`, then `S(e) ∩ S(e') = ∅`. We would like to be sure this is a
> correct application of Lemma 7 under your intended definitions.
>
> With thanks for the paper and for any clarification,

---

## G. Summary for a reviewer

| | |
|---|---|
| **Is the printed definition of "associated" sufficient for Observation 6?** | **No** — explicit counterexample, §B.2. |
| **Does the narrow reading (Lemma 5's full conclusion) fix it?** | Yes for that counterexample; Observation 6 remains unproved in general. |
| **Does [AKR-C] settle the intended reading?** | It makes the existential reading close to forced, via the cone-selection clauses in the proof (§B.3–4). It is still an inference about intent across two versions, not a statement either version makes in one place. |
| **Is there a counterexample to "`H` is bipartite"?** | None found. Under the existential reading the "different choices on different edges" failure mode is vacuous, because `|S(e)| = 2` forces `e` isolated (§D). |
| **Could the deduction still be wrong?** | Yes, under a universal reading of "is hooking" (§D). That is the single question the authors could settle. |
| **Independent support for Lemma 7 itself?** | Yes — the authors' own enumeration, [AKR-J] §10.2 (§E). Corroborates the statement, not our interpretation. |
