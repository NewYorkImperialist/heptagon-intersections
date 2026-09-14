# A7-EXT — independent resolution attempt

**Date:** 2026-09-13 · **Status assigned:** `VERY STRONGLY CORROBORATED — HUMAN REVIEW STILL DESIRABLE`

This records a focused, adversarial attack on the project's one unresolved
mathematical dependency. Five independent lines of attack were run, then a
hostile review adjudicated them. The main agent independently re-verified every
load-bearing computation reported below.

---

## 1. The exact statement investigated

With `G^D` the disjointness graph, `CC(·)` its components, and `H` the auxiliary
graph on relevant consecutive side pairs — vertices `{i : CC(p_i) ≠ CC(p_{i+1})}`,
and `i ~_H k` iff the two pairs share no side **and** their four sides lie in four
distinct components —

```
A7-EXT :    e ~_H e'   ⟹   S(e) ∩ S(e') = ∅
```

where `S(e) ⊆ {hooking, hooked}` is the set of statuses witnessed by **some**
associated pair of `e`.

The downstream step (non-empty + pairwise-disjoint ⟹ `H` bipartite) is already
Lean-kernel-checked in `lean/Lemma7Bridge.lean` and is not at issue.

## 2. Broad versus narrow association — settled

| notion | requires |
|---|---|
| `Associated_broad` | the two edges `(p_i,q_j), (p_{i+1},q_{j±1}) ∈ E^D` |
| `Associated_L5` | the above, plus the two cross non-edges, plus the cone **dichotomy** |

Two findings, both independently re-verified by the main agent:

**(a) The two cross non-edges are automatic, hence redundant.** If
`(p_i,q_{j±1}) ∈ E^D` then `p_i — q_{j±1} — p_{i+1}` is a path and
`CC(p_i) = CC(p_{i+1})`, contradicting the hypothesis that defines "associated".
Checked exhaustively over all `2^16` bipartite graphs on 4+4: 110,304 qualifying
configurations, **0 violations**. *This follows from connectivity alone; the
bipartiteness of `G^D` plays no role* — a subagent's stated justification was
wrong for a correct conclusion.

**(b) The cone dichotomy is indispensable.** Adding the non-edges is **not**
enough. Verified exactly in rationals:

```
a = [(0,0),(2,0)]   b = [(0,0),(0,3)]
A = [(-1,10),(1/10,6/5)]   B = [(-1,10),(7/5,-2)]
```
All four edge/non-edge conditions hold, `a,b` are genuinely consecutive, yet the
dichotomy fails and the axis `y = −10x` leaves both `a` and `b` in `y ≥ −10x`,
separating nothing.

**Correct definition:** `edges + cone dichotomy`, with the non-edges free.

## 3. AKR Observation 6 is FALSE as printed — in genuine polygons

The hostile reviewer escalated (b) from a bare 4-segment picture to a complete
configuration. Verified independently by the main agent in exact integer
arithmetic:

```
P (triangle) = (2,0), (3,4), (-2,0)
Q (pentagon) = (4,-4), (-3,1), (0,-1), (3,3), (2,1)
```

* `P`, `Q` simple; 8 vertices distinct; **no three of the eight combined vertices
  collinear**; **no vertex of one polygon on the other**; **no two of the eight
  sides parallel** — every general-position condition of AKR §3 holds.
* `I(P,Q) = 8`, even, so the Jordan parity check passes.
* `E^D` has two components and `CC(p_0) ≠ CC(p_1)`.
* `(p_0,q_0), (p_1,q_4) ∈ E^D`, so `q_0,q_4` **is associated** to `p_0,p_1` under
  AKR's printed definition; both cross non-edges also hold.
* `I(A,B) ∉ Cone(a,b)` **and** `I(a,b) ∉ Cone(A,B)` — the dichotomy fails; the
  pair is **neither** hooking nor hooked.
* The axis through the two apexes leaves `a`, `b`, `A`, `B` all in one closed
  half-plane. **Observation 6 fails.**

This is a genuine published erratum, not a difficulty of interpretation. It is
**not** a counterexample to A7-EXT — see §4.

## 4. Why the erratum does not reach A7-EXT

`S(e) ⊆ {hooking, hooked}`, and each of those statuses **is** one disjunct of the
cone dichotomy. An associated pair for which the dichotomy fails contributes
**nothing** to `S(e)`, so it can never participate in `A7-EXT`. Equivalently,
Lemma 7's hypothesis supplies the dichotomy for free on exactly the pairs that
matter.

Consequently the earlier claim that *"any formalisation defining `Associated_L5`
as edges + cross non-edges is unsound"* is **overstated**: it is unsound only for
a formalisation that asserts Observation 6 for *all* associated pairs. The
A7-EXT → A7-BRIDGE path does not.

Independent corroboration that AKR themselves use the narrow reading: §10.2 says
13 of 14 configurations were discarded because *"some associated pair did not
conform to the hooking/hooked pattern of Lemma 5"* — a sentence that is only
coherent if "associated" carries the dichotomy.

## 5. Independent verification of A7-EXT itself

An oriented-matroid (rank-3 chirotope) encoding over the twelve segment
endpoints makes both-hooking and both-hooked **UNSAT**, while the mixed (Fig. 6)
patterns are **SAT**. UNSAT over a superset of realisable configurations is sound
for an impossibility claim.

The hostile reviewer attacked and then strengthened this:

* every encoded predicate checked against the paper; all constraints are
  *necessary* consequences of the hypothesis (under-constraining is sound for
  UNSAT; no over-constraint found);
* a **positive control**: AKR's own Fig. 6 configuration, reconstructed from
  integer line coefficients in exact rationals, satisfies all 64,566 clauses —
  so the encoding is not vacuously over-constrained;
* an **independent re-encoding** from scratch reproduces all 20 verdicts;
* re-solved with **CaDiCaL, Glucose and MiniSat** — all agree;
* **15 DRAT proofs** generated and verified by a from-scratch RUP/RAT checker
  (itself validated on PHP(4)/PHP(5));
* the chirotope axiom set validated by reproducing published enumeration counts
  (1, 1, 1, 4 for n = 3..6, matching OEIS A006248);
* coverage independently recomputed: `generic / P-adj / Q-adj / PQ-adj` exhaust
  the `n = 7` cases, **including the cyclic-distance-2 cases AKR's own described
  filter excludes**.

Direct search for a counterexample on real heptagon pairs (exact integers,
simplicity and full general position enforced): ~57,000 admissible
configurations, 306 associated pairs on consecutive pairs in different
components, **0 violations**.

## 6. Can A7 be avoided entirely? No — but it is needed in only one place

Running the whole pipeline with the A7 filter switched off gives **2,187
surviving triples on 412 graphs**, not zero. The 533 post-Černý-L2 graphs split
as exactly **121 H-bipartite + 412 H-non-bipartite**; the 121 are identical to
the shipped certificate's graphs, and the avoiding-pair filter kills all 121 and
none of the 412. No trusted ingredient replaces A7 (Černý L3 kills 0 of the 412).

**Secondary result, positive:** the `I = 42` branch does **not** need A7.
Crossing-set compatibility alone eliminates it — verified over all 5,040 perfect
matchings, with a hand argument: `|E| = 7` forces a perfect matching, so each
`N(q_j)` is a singleton `{i_j}`; compatibility forces `i_j ∈ M`; the `i_j` are
distinct, so `|M| = 7`, contradicting `|M| = 5`. A7 is therefore needed at
exactly **one** point: the `I = 40` endgame.

## 7. Published numbers

* **`158830`** is a **nine**-element count (abstract order types on 9 points,
  OEIS A006247), not eight. The benign explanation is exact: x-monotone PSLAs of
  8 pseudolines correspond to AOTs on 9 points, the ninth element being the line
  at infinity. AKR enumerated a **complete but redundant superset**, so the
  §10.2 conclusion is unaffected. A documentation defect, not a mathematical
  error.
* **`840 = 8!/48`** uses `Aut` of the disjointness graph alone (`≅ Q₃`, order 48),
  which does **not** preserve which pairs are consecutive. The stabiliser of the
  configuration has order 16, giving `8!/16 = 2520 = 3 × 840`. Reproduced by
  brute force over `S₈`. A fair question for the authors.

## 8. What remains informal

The connection from the machine-checked UNSAT to the geometric statement rests
on four unformalised prose steps, each hand-checked but none certified:

1. general position of the ≤ 12 vertices is WLOG (inherited from AKR §9;
   perturbation can change `G^D`);
2. "four distinct components" yields exactly the encoded 20-pair pattern;
3. `generic / P-adj / Q-adj / PQ-adj` exhaust the `n = 7` cases;
4. Lemma 7's quantification matches A7-EXT's existential `S(e)`.

Also: the translation of "segments cross" and "point in cone" into chirotope
conditions is validated by exact random testing, not by proof. And `S(e) ≠ ∅`,
needed alongside A7-EXT, follows from Lemma 5, which is machine-checked nowhere.

## 9. Verdict

**`VERY STRONGLY CORROBORATED — HUMAN REVIEW STILL DESIRABLE`.**

Not `VERIFIED INDEPENDENTLY`: that requires certificates *whose connection to the
geometric statement is itself justified*, and the four bridges in §8 are prose.

Not `UNRESOLVED`: the evidence is no longer agreement between agents. The exact
project statement, including the cases AKR's own filter excludes, is backed by
independently re-derived, independently solved, and independently **proof-checked**
unsatisfiability, with a verified positive control and zero counterexamples from
direct exact-arithmetic search.

Not `INCORRECT`: the counterexample found refutes **Observation 6 as printed**,
not A7-EXT.

## 10. Consequences for the author letter

The letter drafted in [`akr-l7-human-review.md`](akr-l7-human-review.md) must be
**re-pointed**. Its original premise — that the two cross non-edges are the
missing ingredient — is wrong: those are free. The correct questions are about
the **cone dichotomy**, and the letter should now lead with the
triangle/pentagon counterexample of §3, which refutes Observation 6 as printed
under full general position.
