I'll work through this as an actual research problem. Let me start with the literature, then move to independent mathematics and computation.

A note upfront: I don't have the ability to spawn parallel sub-agents, but I will run an extensive search of the literature plus substantial computation (randomized geometric search, exhaustive combinatorial enumeration, and a solver-based realizability attack) in this session.Excellent — this is a live research problem with a substantial recent literature. Let me get the key papers.Now the full text of the key paper, to find the actual constant C and what it says about small cases.Now the earlier paper that gives the best *small-case* bound. Let me verify exactly what it proves.Key finding: Černý et al. solved the case k=5 exactly. Let me get their full paper.I have the key literature. Let me record the state of the art precisely, then start computing.Now the key computation. I've reduced the (7,7) problem to a question about a *single* 7-gon — let me set that up.The canonical form is over-counting (known answer: 135). Let me fix the reflection handling.134 of the expected 135. Let me optimize and sample from more varied distributions to find the last one.All 135 order types of 7 points found — matching the known count. Now the decisive computation:Important result: Question A fails — but only barely. Let me look at the exceptional polygons.# Two Simple 7-Gons: Where the Problem Actually Stands

Before the report: I can't spawn sub-agents, so this is one long single-threaded attack — literature, then independent mathematics, then computation. I got further than I expected, and I want to be precise about what is proved, what is published, and what is still open.

---

## 1. What is known

This is a real open problem with a documented history, and one important thing in your prompt needs correcting: **the relevant gap for (7,7) is not 38 vs 39 — it is 38 vs 40.**

**Proved results (all checked by reading the papers, not just abstracts):**

- **Dillencourt, Mount, Saalfeld (CCCG 1993).** Solved both even cases: $f(m,n)=mn$ for $m,n$ even; $f(m,n)=m(n-1)$ for $m$ even, $n$ odd. They also gave the odd–odd lower bound $mn-m-n+3$. Their claimed proof of the odd–odd upper bound contains, in Ackerman–Keszegh–Rote's words, an *unrecoverable error*.
- **Černý, Kára, Kráľ, Podbrdský, Sotáková, Šámal**, *On the number of intersections of two polygons*, Comment. Math. Univ. Carolin. **44** (2003) 217–228 (full text: `cmuc.karlin.mff.cuni.cz/pdf/cmuc0302/cerny.pdf`). Proves $f(k,l)\le kl-\lceil k/6\rceil-l$ for odd $k\le l$, and — crucially — **solves $k=5$ exactly: $f(5,l)=4l-2$**. So $f(5,5)=18$ and $f(5,7)=26$ are *theorems*, matching the conjecture. Their Lemma 3 (no perfect matching in the disjointness graph between 6 consecutive sides of one polygon and 6 sides of the other) is the engine. They state explicitly: "The case that $k$ and $l$ are both odd and at least seven remains open **also for $k=l=7$**."
- **Ackerman, Keszegh, Rote**, *An almost optimal bound…*, SoCG 2020 / **Discrete Comput. Geom. 68 (2022) 1049–1077**, arXiv:2002.05680. Proves $mn-(m+n)+C$ with an explicit but astronomical $C\approx 2^{2^{70}}$ — asymptotically optimal, **vacuous for $m=n=7$**. Their Lemma 5 (associated pairs), Observation 6 (axis property) and Lemma 7 (hooking/hooked) are the sharp local tools.
- **Günther**, arXiv:1207.0996, claims to prove the full conjecture. It was **withdrawn by the author**; AKR confirm it "turned out to have a fault." Semantic Scholar still advertises the claim — do not cite it.

**So for (7,7): $38 \le f(7,7) \le 40$, and 39 is impossible by parity.** The published upper bound of 40 comes from Černý et al. ($49-7-\lceil 7/6\rceil=40$); AKR's Proposition 9 gives 41, which parity also reduces to 40.

## 2. Precise formulation

General position (no 3 vertices collinear, no vertex on the other boundary). With $G^D$ the bipartite **disjointness graph** on the 7+7 sides, $I=49-|E(G^D)|$.

Two elementary facts, both of which I verified independently and computationally:

- **$I$ is even** (two closed curves in the plane cross evenly). Hence $|E(G^D)|$ is *odd*. This is why your target "$|E|\ge 11$" is right but "rule out 39" is not the live question.
- **Every vertex of $G^D$ has degree $\ge 1$** (a *line* meets a simple 7-gon an even number of times, so at most 6). Hence $|E|\ge 7$, i.e. $I\le 42$.

**The entire (7,7) problem is: can $|E(G^D)|=9$, i.e. $I=40$?**

## 3. What I proved along the way

**(a) $I=42$ is impossible, cleanly.** $|E|=7$ plus min-degree 1 forces $G^D$ to be a perfect matching, so all 14 sides lie in 14 distinct components. Then the three disjoint consecutive pairs $(p_0p_1),(p_2p_3),(p_4p_5)$ lie in six distinct components; each is hooking or hooked; pigeonhole gives two of the same type, contradicting AKR Lemma 7.

**(b) A general "uncrossable set" lemma.** If $P$ has a set $S$ of $s$ sides that **no single line meets all of**, then every side of $Q$ misses some member of $S$, so $|E|\ge n+(m-s)$, i.e. $I \le mn-n-m+s$. For (7,7): $s=3$ gives $I\le38$ outright; $s=4$ gives $|E|\ge10$, and **parity upgrades this to $|E|\ge11$, i.e. $I\le38$**.

So the whole problem reduces to a question about **one** polygon:

> **Question A.** Does every simple 7-gon have 4 sides that no line meets all of?

**(c) I answered Question A exhaustively — and the answer is *no*, but only barely.** Coverage depends only on the order type of the 7 vertices plus the cyclic order, so this is finite. I generated all **135 order types of 7 points** (matching the published count of Aichholzer–Aurenhammer–Krasser — a strong correctness check) and tested all 360 cyclic orders each: **6342 simple 7-gons**, i.e. *every* simple 7-gon up to order type.

Result:
- 6007 have an uncrossable **3**-set → $I\le38$ immediately;
- 319 more have an uncrossable **4**-set → $I\le38$ via parity;
- **exactly 16** (14 classes up to symmetry) have minimum uncrossable size **5**. Every one of them has exactly two reflex vertices and $|M|=5$, where $M$ is the set of sides $s_j$ such that some line meets the other six. Equivalently $s_j\in M$ iff the triple $\{v_{j+2},v_{j+4},v_{j+6}\}$ is linearly separable — and empirically $|M|\le5$ always.

**Consequence (rigorous, modulo the published AKR/Černý lemmas):** if $I(P,Q)=40$ then **both** $P$ and $Q$ must be one of these 14 exceptional combinatorial types, and the degree sequence of $G^D$ on each side must be $(3,1^6)$ or $(2,2,1^5)$, with the two sides outside the uncrossable 5-set having degree exactly 1.

That cuts the (7,7) problem from "all pairs of simple 7-gons" to "pairs drawn from 14 explicitly listed combinatorial types with a forced 9-edge disjointness pattern."

## 4. Where I stopped, and what I'd do next

I hit the tool limit mid-attack. What remains — and it is genuinely finite — is:

1. **Enumerate the ~13M bipartite graphs** with 9 edges and min degree 1 on 7+7 vertices (degree sequences $(3,1^6)$/$(2,2,1^5)$), and filter by three purely combinatorial necessary conditions I derived: (i) Černý Lemma 3 in its correct *induced* form (no induced perfect matching between 6 consecutive $P$-sides and 6 $Q$-sides); (ii) AKR Lemma 5 (for consecutive sides in different components, an alternating 2×2 pattern on consecutive $Q$-sides must exist); (iii) the graph $H$ of disjoint consecutive-pairs-in-4-distinct-components must be **bipartite** (my reformulation of AKR Lemma 7 — this already kills the 6-component case outright, so $G^D$ must be a spanning forest with exactly 5 trees).
2. **Cross the survivors with the 14 exceptional polygon types**, which pin down the crossing-set family of each polygon exactly.
3. **Targeted geometric search** seeded from the 14 exceptional types, to attempt an actual 40-configuration.

**The honest bottom line:** I did not settle $f(7,7)$. But I can state exactly where the obstruction sits. It is *not* in the trivial bounds and *not* in parity — those give $38\le f(7,7)\le40$ with 39 excluded. It is concentrated entirely in **16 exceptional 7-gons out of 6342**, for which the line-crossing argument that solves $f(5,l)$ degrades from "saves 4 edges" to "saves only 2". Everything else about the (7,7) case is finished. I'd also flag that the "at most three connected components" idea in your prompt cannot be right as a general statement (two even polygons give $m+n$ components); it is only plausible as an odd–odd statement, and for $I=40$ the truth is that exactly 5 components are forced.

I can't spawn sub-agents, but let me push the attack forward on all remaining fronts. First, the decisive combinatorial enumeration.The published lemmas cut 13.5M candidates to 9702. Now I combine that with the exceptional-polygon constraint — the decisive step.3522 combinatorial candidates survive. I need geometry now. Let me run large-scale optimization searches — with two *proven* cases as controls to validate the search.Controls hit the proven optima exactly (18 and 26) — the search is calibrated. Now the (7,7) results:Both (7,7) runs converge to exactly 38 and stop. Now the final targeted attack: Černý's Lemma 2 as a class-dependent filter, plus a search seeded from the exceptional types.From 3522 down to **64**, and the degree sequence (3,1⁶) is eliminated entirely. Let me apply one more rigorous filter — AKR's Lemma 5 also applies to *avoiding* pairs, which I can compute exactly for these 9 known types.**Zero survivors.** That is a complete refutation of I = 40 — which would settle the smallest open case. Before I believe it, I must try hard to break it. The critical test: my filters must *not* kill a genuinely realizable configuration.Both realizable 38-configurations pass every filter (and have exactly 3 components), and 3952 random pairs give zero false rejections. Now let me trace *why* the 64 died and stress-test on high-intersection configurations.Zero false rejections across **129,812** high-intersection realizable configurations (including 62,051 at I=38). The elimination is hand-checkable too: for the first candidate, sides 1 and 6 of P are avoiding and in different components, with N(1)={q₁} and N(6)={q₅,q₆} — Lemma 5 needs indices in N(1)\N(6) and N(6)\N(1) to be cyclically adjacent in ℤ₇, but 1 is adjacent only to 0 and 2. Let me do a final independent confirmation.Everything holds up. Let me package the full argument and code for reproducibility.# $f(7,7) = 38$

The (7,7) case is closed — conditional on four published lemmas plus computation. Here is the argument end to end.

## The reduction chain

**Step 0.** $I$ is even and every side meets the other boundary at most 6 times, so $|E(G^D)| \ge 7$ and $I \le 42$. Since $|E| = 49 - I$ is odd, only $I \in \{38, 40, 42\}$ survive.

**Step 1 — $I=42$ dies.** $|E|=7$ plus min-degree 1 forces a perfect matching, so all 14 sides lie in 14 distinct components. The three disjoint consecutive pairs $(p_0p_1),(p_2p_3),(p_4p_5)$ then form a triangle in the "hooking" conflict graph, contradicting AKR Lemma 7.

**Step 2 — a new lemma.** If $P$ has $s$ sides that no single line meets all of, then $|E|\ge n+(m-s)$. For (7,7), $s=4$ gives $|E|\ge10$, and **parity upgrades it to 11**, i.e. $I\le38$. So $I=40$ forces both polygons to be *exceptional*: every 4 of their sides met by some line.

**Step 3 — exhaustive classification.** Crossing-sets depend only on the order type. I generated all **135 order types of 7 points** (count matches Aichholzer–Aurenhammer–Krasser) × 360 cyclic orders = **6342 simple 7-gons, i.e. all of them**. Result: 6007 have an uncrossable 3-set, 319 an uncrossable 4-set, and exactly **16 are exceptional** (14 classes, each with two reflex vertices and just two avoiding side-pairs).

**Step 4 — the kill.** Enumerating all **13,484,940** nine-edge disjointness graphs and filtering:

| filter | left |
|---|---|
| all 9-edge graphs, min degree 1 | 13,484,940 |
| + Lemma 5 (consecutive pairs) | 43,330 |
| + Lemma 7 ($H$ bipartite) | 24,990 |
| + Lemma 3 | 9,702 — all with exactly 5 components |
| + compatibility with the 14 exceptional classes | 3,522 |
| + Lemma 2 (class-dependent) | 64 — all degrees $(2,2,1^5)$ |
| + Lemma 5 on **avoiding** pairs | **0** |

The last step is hand-checkable: sides 1 and 6 of the class-8 polygon are avoiding and in different components, with $N(1)=\{q_1\}$, $N(6)=\{q_5,q_6\}$ — Lemma 5 needs an element of $\{1\}$ cyclically adjacent to one of $\{5,6\}$ in $\mathbb{Z}_7$, but 1 neighbours only 0 and 2.

## Certificate for 38

$P=(373,157),(132,5),(369,182),(88,157),(327,282),(60,272),(372,298)$
$Q=(344,24),(89,303),(345,19),(373,214),(270,338),(325,93),(192,284)$

Both simple, general position, **38 crossings**, $|E|=11$, three components, per-side crossing counts $(6,6,6,6,6,6,2)$.

## How hard I tried to break it

- Search controls hit the *proven* optima exactly: (5,5)→18, (5,7)→26.
- Two independent (7,7) runs reach 38 and stop; restricting both polygons to the exceptional classes — the only regime where 40 could live — also stops at 38.
- Every filter run against realizable configurations: 2 explicit 38-configs, 3,952 random pairs, and **129,812 high-intersection configs** (62,051 at $I=38$). **Zero false rejections.** A filter that wrongly rejects realizable input would have shown up here.

## What I'd want a referee to check

The result rests on Černý et al. Lemmas 1–3 (CMUC 2003) and AKR Lemmas 5, 7 (DCG 2022) — I read all five in full — plus my code. It should be independently reimplemented. The order types came from random sampling landing exactly on 135; using the Aichholzer database would make that airtight rather than merely corroborated.

And this is **not** the general conjecture. Lemma A needs an uncrossable 4-set, and 16 of 6342 heptagons already defeat it; that fraction should grow with $k$, so odd–odd in general still needs a genuinely different idea. Two footnotes on your prompt: the "at most three components" claim is false as stated (two even polygons give $m+n$), though realizable 38-configurations do land at 1–3 components; and the binding question was never 39 — parity kills that for free.

A hostile audit is the right call — and it immediately found something. Let me work through it systematically, starting with an arithmetic check on my own enumeration count.Confirmed bug: my recursion never forced `budget == 0` at the leaf, so it enumerated |E| ∈ {7,8,9}, not |E| = 9. That's a *superset*, so soundness survives, but the figure was mislabeled. Now the deterministic order-type enumeration.My deterministic enumeration over-counts (3, 4, 32, 381 vs 2, 3, 16, 135) — the 5-point GP relations alone are too weak. Let me derive and add the missing 4-point relation.Now exactly 1, 2, 3, 16, 135 — matching the published counts at every stage, from necessary conditions only. Let me re-run the entire pipeline on this deterministic set, with the enumeration bug fixed.Deterministic enumeration reproduces the sampled results *exactly* (identical 135-element set, same 6342/6007/319/16). Now the corrected graph enumeration and full downstream pipeline.Corrected run: |E|=7 → 0, |E|=8 → 0, |E|=9 → 13,003,620 → 0. One more audit point: intermediate counts shifted (3522→2300, 64→121) because they depend on which representative labeling each class gets. Emptiness shouldn't. Let me verify per class-pair, which is labeling-invariant.All 196 ordered class pairs are empty, under three different representative labelings. Let me record the corrections.# Referee audit

**Two defects found. Neither is fatal. The claim survives, with corrected figures.**

## Defect 1 — arithmetic/reporting error

I reported 13,484,940 as "all 9-edge graphs." The recursion in `enum9.py` never forced the edge budget to be exhausted at the leaf, so it enumerated |E| ∈ {7,8,9}. Closed form via inclusion–exclusion, $T(k)=[x^9]((1+x)^k-1)^7$:

| \|E\| | count |
|---|---|
| 7 | 5,040 |
| 8 | 476,280 |
| 9 | **13,003,620** |
| total | 13,484,940 ✓ |

So the enumeration was a **superset** — soundness unaffected, and I=42 and I=41 got swept for free. Corrected run: |E|=7 → 0 (dies at Lemma 7, independently confirming my hand proof that I=42 is impossible); |E|=8 → 0; |E|=9 → 13,003,620 → 42,238 → 24,990 → 9,702 → **0**.

## Defect 2 — labeling-dependent intermediate counts

The figures 3522 and 64 are artifacts of *which* labeled polygon got stored as each class representative. For a fixed ordered pair (a,b) of classes, re-labeling carries the survivor set bijectively, so emptiness is invariant — but the union over classes is not. Fixed by verifying emptiness for each of the **196 ordered class pairs separately**, under three different representative labelings (as stored; rotation 3 + reflection; rotation 5). All zero.

## The two reductions you flagged

**Lemma 7 ⟹ H bipartite.** For a consecutive pair $e$ in different components, Lemma 5 gives a nonempty set $A(e)$ of associated pairs; define $S(e) \subseteq \{\text{hooking, hooked}\}$ by existence of a witness in $A(e)$. AKR explicitly allow $|S(e)|=2$ (their Fig. 5c). Reading Lemma 7 as its own proof uses it — *"let … be their associated (hooked) pairs such that …"* — the hypothesis "both hooking" means hooking $\in S(e) \wedge$ hooking $\in S(e')$. So adjacency in H forces $S(e)\cap S(e')=\emptyset$; two nonempty disjoint subsets of a 2-set are distinct singletons; hence $e \mapsto S(e)$ is a proper 2-coloring. The code joins $i,k$ when $(k-i) \bmod 7 \notin \{1,6\}$, which is exactly "the pairs share no side" since $\{i,i{+}1\}\cap\{k,k{+}1\}\neq\emptyset \iff k \equiv i, i\pm1$.

**Avoiding-pair Lemma 5.** For non-adjacent sides $s=ab$, $s'=cd$: $s \ni I(s,s') \iff \ell(s')$ strictly separates $a$ from $b$. (⇐ is clear; ⇒ because $I$ cannot be an endpoint of $s$ — that would make three vertices of P collinear with $c,d$.) So avoiding $\iff \chi(c,d,a)=\chi(c,d,b)$ **and** $\chi(a,b,c)=\chi(a,b,d)$ — an order-type predicate, exactly `not line_cuts_seg` both ways. For parallel sides (which AKR's general position forbids), the perturbation sends $I$ to a far point on neither segment, and the predicate is a strict sign condition, unchanged.

## Deterministic enumeration (replaces the sampling)

Staged extension: extend each (n−1)-representative by one element in all $2^{\binom{n-1}{2}}$ ways, filter by GP and Radon relations involving the new element, reduce by a combinatorial canonical form. I had to **derive the missing 4-point relation** — GP alone gave 3, 4, 32, 381. From Cramer, $\det(123)-\det(023)+\det(013)-\det(012)=0$, so those four signed terms can't all agree. With it: **1, 2, 3, 16, 135**, matching the published counts at every stage, and the 135-set is *identical* to the sampled one. Since only necessary conditions are used, this is a superset of the realizable order types, so the conclusion no longer depends on any realizability claim.

Chirotope predicates were cross-checked against the coordinate versions: **340,335 tests, 0 mismatches.**

## Assumptions that remain

1. **The four published lemmas are correct.** I verified their statements and applicability, not their internal proofs. AKR Lemma 7 is a twelve-case argument carried largely by figures — this is the main external dependency.
2. **General position is part of the definition of $f(7,7)$**, as in all three source papers. I sketch the perturbation argument in the audit file; a fully degenerate-inclusive treatment is not given.
3. **Code correctness**, mitigated by the cross-checks, the $n(n-1)+2$ and 135 identities, controls hitting the proven optima 18 and 26, and 129,812 realizable configurations with zero false rejections — but *not* by an independent reimplementation, which a referee should demand.

The claim $f(7,7)=38$ stands, conditional on (1) and (2).

I'll stop searching and do exactly these two things. First, one more adversarial pass at the six points — one of them needed repair.# 1. The complete proof certificate

**Conventions.** C1: $P,Q$ are simple 7-gons in *general position* — no three of the 14 vertices collinear, no two of the 14 sides parallel, no vertex of one on the boundary of the other. $f(7,7)$ is the maximum of $I(P,Q):=|\partial P\cap\partial Q|$ over such pairs (the convention of all three source papers). C2: $G^D$ is the bipartite graph on the $7+7$ sides with an edge iff the two **closed** segments are disjoint.

| # | Proposition | Kind |
|---|---|---|
| **P1** | $I+|E(G^D)|=49$ | elementary, here |
| **P2** | $I$ is even, hence $|E|$ is odd | elementary, here |
| **P3** | A line meets a simple $k$-gon evenly, so at most $k-1$ sides for odd $k$ | **published**: Černý et al. 2003, Lemma 1 |
| **P4** | Every vertex of $G^D$ has degree $\ge1$ | from P3 applied to $\ell(p)$ vs $Q$ and $\ell(q)$ vs $P$ |
| **P5** | $I\le42$; and $I=42\iff G^D$ is a perfect matching | P1+P4 |

**P6 (Lemma A — new).** Let $S\subseteq\mathrm{sides}(P)$ satisfy (★): *every line disjoint from $V(P)$ fails to meet at least one member of $S$*. Then $|E(G^D)|\ge n+(m-|S|)$.

*Proof.* For each side $q_j$, C1 gives $\ell(q_j)\cap V(P)=\emptyset$, so (★) applies: some $p\in S$ has $\ell(q_j)\cap p=\emptyset$, hence $q_j\cap p=\emptyset$. That is $n$ edges with distinct $Q$-endpoints, all with $P$-endpoint in $S$. By P3 each $p\notin S$ misses some $q$: $m-|S|$ further edges with distinct $P$-endpoints, all outside $S$. The families are disjoint. ∎

> **Repair made during this pass.** I had been writing (★) as "no line meets all of $S$". That is wrong as stated: "meets" on *closed* segments includes a line touching a vertex, and my computation only tested *strict* separation. The two notions differ in general but coincide for the only lines Lemma A ever uses, namely $\ell(q_j)$, which avoids $V(P)$ by C1. Quantifying over vertex-avoiding lines is both what the proof needs and exactly what the code computes. Not a gap, but the earlier phrasing did not license the code.

| # | Proposition | Kind |
|---|---|---|
| **P7** | If some 4-subset of $\mathrm{sides}(P)$ satisfies (★) then $\|E\|\ge10$, so by P2 $\|E\|\ge11$, so $I\le38$ | P6+P2 |
| **Def** | $P$ is **exceptional** iff no 4-subset satisfies (★) | — |
| **P8** | $I=40\implies$ both $P$ and $Q$ exceptional | P7 contrapositive |
| **P9** | For $\ell$ avoiding $V(P)$, the sides met by $\ell$ = sides whose endpoints $\ell$ strictly separates; as $\ell$ varies these bipartitions are exactly the halfplane subsets (count $n(n-1)+2$) | elementary, here |
| **P10** | Simplicity, $\mathcal C_P$, exceptionality, L2-windows, and the avoiding relation are all Boolean functions of the chirotope | elementary, here |
| **P11** | Over all order types of 7 points × all 360 cyclic orders: **6342** simple 7-gons, of which **exactly 16** (14 classes) are exceptional | **computational, finite** |
| **P12** | The 3-term GP relations and the 4-point Radon relation are *necessary* for realizability | elementary (Plücker, Cramer) |
| **P13** | Staged extension is complete: a valid 7-chirotope restricts to a valid 6-chirotope, hence appears among that representative's $2^{15}$ extensions | elementary, here |
| **P14** | Canonicalization is *sound*: equal canonical strings $\Rightarrow$ isomorphic. (Only soundness is needed; over-splitting merely keeps redundant representatives) | elementary, here |
| **P15** | An order-type isomorphism carrying $P$ to a representative acts on sides by a dihedral permutation | elementary, here |
| **P16** | Necessary conditions on $G^D$: L3 (Černý L3), L5-consecutive (AKR L5), L5-avoiding (AKR L5 + P17), $H$ bipartite (AKR L7 + P18), L2 (Černý L2), crossing-set compatibility (P9) | published + P17/P18 |
| **P17** | For non-adjacent sides, *avoiding* $\iff \chi(c,d,a)=\chi(c,d,b)$ and $\chi(a,b,c)=\chi(a,b,d)$ | elementary, here |
| **P18** | AKR Lemma 7 $\implies$ $H$ bipartite | elementary, here |
| **P19** | $|\mathcal G_9|=13{,}003{,}620$ (closed form) $\to$ 42,238 $\to$ 24,990 $\to$ 9,702; and for each of the **196** ordered class pairs, **zero** of the 9,702 survive the class-dependent filters, under three representative labelings | **computational, finite** |

**The chain.**
$$I=40 \overset{\text{P8}}{\implies} P,Q \text{ exceptional} \overset{\text{P11,P15}}{\implies} (\text{profile}_P,\text{profile}_Q,G^D)\in \{14\}\times\{14\}\times\mathcal G_9 \overset{\text{P16}}{\implies} \text{some triple survives all filters} \overset{\text{P19}}{\implies} \bot$$
With P5, P2 and the explicit 38-certificate: $f(7,7)=38$.

**Why the finite sets are exhaustive.** $\mathcal G_9$ = all $(N_0,\dots,N_6)$, $N_i\subseteq[7]$ nonempty, $\sum|N_i|=9$, $\bigcup N_i=[7]$; max degree $\le3$ is forced, the recursion's pruning only discards non-completable prefixes, and the count matches an independent inclusion–exclusion. The classification set is a **superset** of realizable order types because only necessary relations were imposed. **Why every filter is necessary:** each is a published lemma or (P17/P18/P9) an elementary consequence, and each was validated on 129,812 realizable high-intersection configurations with zero false rejections.

# 2. Remaining gaps

The six you named: **(1)** enumeration — sound, and only soundness of canonicalization is needed; **(3)** L7⇒H-bipartite — sound, hinging on reading Lemma 7's hypothesis existentially, which is how AKR's own proof uses it ("*let … be their associated (hooked) pairs such that*"); **(4)** avoiding L5 — sound, with parallel pairs handled by perturbation; **(5)** 13,003,620 — verified by closed form; **(6)** zero survivors — sound via P15 + filter invariance. **(2)** needed the repair above.

Genuinely outstanding, and not closable by me:

- **A1.** The five imported lemmas are used as black boxes. I checked their statements and applicability, not their internal proofs. AKR Lemma 7 is a twelve-case argument carried largely by figures.
- **A2.** The degenerate-configuration convention. The perturbation argument (a vertex-on-side incidence perturbs to 0 or 2 crossings, and the direction giving 2 can be chosen) is sketched, not proved.
- **A3.** No independent reimplementation.

# 3–4. Lean architecture and the first file

Seven files; details in `ARCHITECTURE.md`. **Start with `LemmaA.lean`** (attached): the abstract bipartite counting lemma plus the parity upgrade, ~60 lines, *no geometry* — all geometry is confined to discharging `h1`/`h2` at the call site. Do `LowerBound.lean` first as a half-hour warm-up (49 `decide`s on integer determinants).

Two design points that matter more than anything else:

- **Shrink before searching.** A naive `decide` over 13M graphs is hopeless and `native_decide` would put the result on the compiler's trust base. Prove in Lean first that (i) the degree sequences are $(3,1^6)$ or $(2,2,1^5)$, (ii) every exceptional profile's maximal crossing sets are the five 6-sets, so compatibility collapses to $N(q_j)\cap M_P\neq\emptyset$, (iii) hence the two sides outside $M_P$ have degree 1 and attach only to the $\le2$ high-degree sides. That reduces the search to thousands.
- **State the classification as an inclusion, never an equality.** "Every exceptional 7-gon's profile occurs in `ExcTable`" is what a superset enumeration proves and all an exclusion theorem needs. Claiming "the realizable order types are exactly these 135" would require realizability certificates and is used nowhere.

# 5. Division of labor

**Python** owns both enumerations and emits machine-readable certificates (14 profiles, 9,702 survivors, lower-bound coordinates), plus the search-shrinking experiments that make file 6 tractable. **Lean** owns Lemma A, the model, the lower bound, and the final finite theorem; the five published lemmas stay axioms, and the classification stays an axiom until last. **The paper** carries P1–P10 and P15–P18 in full prose, states P11 and P19 precisely enough to re-run, and — this is what referees will press on — should contain a *human-readable* account of the 9,702→0 step, or at least a structural lemma explaining it.

**Honest verdict on publishability.** The result is a legitimate contribution: it closes the smallest case both source papers explicitly flag as open. But it is not yet submittable. The blockers, in priority order: an independent reimplementation (A3); a structural explanation of the final elimination rather than a bare "zero survivors"; a decision to cite Aichholzer's order-type database instead of re-deriving the classification (much easier for a referee); and a careful confirmation of the existential reading of "hooking" in AKR Lemma 7 — ideally by correspondence with the authors, since the entire L7 filter rests on it.

Priority 1 first. I found a real subtlety in (A) that changes the definition — and a real hole in my earlier hand-waving on (B) that I can now close properly.

## 1A. AKR Lemma 7 ⟹ H bipartite

**The definitions, stated exactly.** Fix $P,Q$ in general position, $G^D$ the disjointness graph, $CC(\cdot)$ its components. For segments $s,s'$ that are avoiding or share an endpoint, $I(s,s')$ is the meet of their lines and $\mathrm{Cone}(s,s')$ is the convex cone at $I(s,s')$ spanned by the two rays containing $s$ and $s'$ (AKR §4). Let $e=(p_i,p_{i+1})$ be consecutive sides of $P$ with $CC(p_i)\neq CC(p_{i+1})$.

$$A(e):=\{(q_j,q_{j'}) : j'=j\pm1,\ (p_i,q_j),(p_{i+1},q_{j'})\in E^D,\ (p_i,q_{j'}),(p_{i+1},q_j)\notin E^D\}$$

**This definition is forced, and my earlier write-up had it wrong.** AKR's prose defines "associated" using only the two *edges*. Under that looser reading their Observation 6 (the Axis Property) is false, and Observation 6 is used inside Lemma 7's proof. Counterexample to the loose reading: $u=I(a,b)$ at the origin, $a=[(0,0),(1,0)]$, $b=[(0,0),(0,1)]$, $v=(1,-1)$, $A=[(1,-1),(2,-1)]$, $B=[(1,-1),(1,-2)]$. Then $a\cap A=\varnothing$ and $b\cap B=\varnothing$, so $(A,B)$ is "associated" in the loose sense, yet the axis $y=-x$ has both $a$ and $b$ strictly on the same side — the Axis Property fails. Adding the two non-edges (i.e. $a$ meets $B$ and $b$ meets $A$) kills this configuration. So $A(e)$ must be the full Lemma 5 conclusion.

**The cone dichotomy holds for *every* $\alpha\in A(e)$**, not just the one Lemma 5 produces. In AKR's proof of Lemma 5, a side of $Q$ disjoint from $p_a$ and meeting $p_b$ is a $b$-labelled edge of $G_0$, and one disjoint from $p_b$ and meeting $p_a$ is an $a$-labelled edge. Any $\alpha\in A(e)$ is exactly such a consecutive $\{b\text{-edge},a\text{-edge}\}$ pair, so its shared vertex is a node of $G_0$ incident to both an $a$- and a $b$-labelled edge, and $\mathrm{I}$ and $\mathrm{III}$ are the only such nodes — which is precisely the dichotomy $I(\alpha)\in\mathrm{Cone}(e)$ or $I(e)\in\mathrm{Cone}(\alpha)$.

$$S(e):=\{\text{hooking}\mid \exists\alpha\in A(e),\,I(\alpha)\in\mathrm{Cone}(e)\}\cup\{\text{hooked}\mid \exists\alpha\in A(e),\,I(e)\in\mathrm{Cone}(\alpha)\}$$

Lemma 5 gives $A(e)\neq\varnothing$, and the dichotomy then gives $S(e)\neq\varnothing$.

**Proposition.** If $e,e'$ are adjacent in $H$ then $S(e)\cap S(e')=\varnothing$.

*Proof.* Adjacency means the four sides lie in four different components — exactly Lemma 7's hypothesis. Suppose hooking $\in S(e)\cap S(e')$. Take witnesses $\alpha\in A(e),\alpha'\in A(e')$ with $I(\alpha)\in\mathrm{Cone}(e)$, $I(\alpha')\in\mathrm{Cone}(e')$. This is literally the opening configuration of Lemma 7's proof ("*let … be their associated (hooked) pairs such that …*"), so Lemma 7 yields a contradiction. Symmetrically for hooked. $\square$

**Corollary.** $H$ is bipartite. Every $e$ with a neighbour has $S(e)$ nonempty and disjoint from a nonempty $S(e')\subseteq\{\text{hooking},\text{hooked}\}$, so both are singletons and differ; $e\mapsto S(e)$ is a proper 2-colouring, extended arbitrarily on isolated vertices. $\square$

**Figure 5(c) does not break this.** A pair with $|S(e)|=2$ can have no $H$-neighbour at all: any neighbour $e'$ would need $S(e')\neq\varnothing$ disjoint from a 2-element set. Such pairs are forced isolated in $H$, and isolated vertices never obstruct 2-colourability. The conclusion is unaffected.

**Net effect on the proof:** none. Narrowing $A(e)$ shrinks $S(e)$, which only makes the disjointness conclusion easier; nonemptiness survives via Lemma 5. And my code never computes $S(e)$ — it tests only graph-theoretic bipartiteness of $H$, which is implied.

## 1B. General position does not reduce the maximum

Two segments that are not collinear meet in at most one point, so assume no two sides are collinear-overlapping (otherwise $\partial P\cap\partial Q$ is infinite; see the remark below). Then every $x\in\partial P\cap\partial Q$ is of exactly one type: (i) transversal crossing of two side-interiors; (ii) a vertex of one polygon in the relative interior of a side of the other; (iii) a vertex of both.

**Lemma.** Each degeneracy can be removed by moving one vertex an arbitrarily small amount without decreasing $I$.

*Type (ii).* Let $v$ be a vertex of $P$ in the relative interior of side $q$, with incident sides $p^-,p^+$ and far endpoints $w^-,w^+$. If $w^-,w^+$ are strictly on the same side of $\ell(q)$, move $v$ to the other side: both $p^-,p^+$ now cross $q$, and for small $\delta$ the crossings lie within $q$ since they converge to $x$, which is interior to $q$. That is $2\geq1$. If $w^-,w^+$ are on opposite sides, either direction gives exactly $1$.

*Type (iii).* Let $x=v=w$. If the four wedge-rays interleave around $x$, any small move gives $2$ crossings. If they do not — the case where naive separation would lose the point — move $v$ a distance $\delta$ *into* the cone of $Q$ at $w$. Then $p^-$ and $p^+$ each start inside that cone and have far endpoints outside it, so each exits across $q^-$ or $q^+$ at a point within $O(\delta)$ of $w$, hence in the relative interior of that side. That is $2\geq1$.

In both cases only $p^-,p^+$ move; transversal crossings are an open condition and persist; degeneracies at other vertices are untouched; simplicity of $P$ is an open condition at a simple $P$. Finitely many degeneracies, so finitely many steps.

**Removing the remaining two conditions.** After the above, the configuration lies in an open $U\subseteq\mathbb{R}^{28}$ on which every side pair is either disjoint (disjoint compacta) or transversally crossing, both polygons are simple, and no vertex lies on the other boundary — all open conditions — so $I$ is constant on $U$. The loci "three of the 14 vertices collinear" and "two of the 14 sides parallel" are a finite union of proper algebraic subsets of $\mathbb{R}^{28}$, each with empty interior. A nonempty open set cannot be covered by finitely many such, so $U$ contains a point in general position with the same $I$. $\square$

Hence $f(7,7)=f_{\text{gp}}(7,7)$. (Overlapping collinear sides: under the connected-components convention, tilting one endpoint off the line turns the shared segment into one crossing, so that case does not decrease the count either.) Černý et al. assert this reduction in one sentence citing Aronov–Sharir; the argument above is self-contained and does not rely on it.

Both blockers are now closed. Let me build the independent second implementation.The background jobs were killed with the foreground command. Relaunching detached.Both implementations agree exactly, including an identical SHA-256 of the survivor set. Let me emit the certificates and Lean files.## 1. The two unresolved points — both now closed

### A. AKR Lemma 7 ⟹ H bipartite

The implication is **valid**, but I had the definition of "associated pair" wrong, and fixing it matters.

Definitions: for $e=(p_i,p_{i+1})$ with $CC(p_i)\neq CC(p_{i+1})$,

$$A(e):=\{(q_j,q_{j\pm1}) : (p_i,q_j),(p_{i+1},q_{j\pm1})\in E^D,\ (p_i,q_{j\pm1}),(p_{i+1},q_j)\notin E^D\}$$

**The non-edges are mandatory.** AKR's prose defines "associated" using only the two edges; under that looser reading their Observation 6 (the Axis Property) is *false*, and Observation 6 is used inside Lemma 7's proof. Explicit counterexample: $I(a,b)$ at the origin, $a=[(0,0),(1,0)]$, $b=[(0,0),(0,1)]$, $v=(1,-1)$, $A=[(1,-1),(2,-1)]$, $B=[(1,-1),(1,-2)]$ — here $a\cap A=\varnothing$, $b\cap B=\varnothing$, yet the axis $y=-x$ leaves both $a$ and $b$ strictly on one side. Adding $a\cap B\neq\varnothing$, $b\cap A\neq\varnothing$ destroys it.

The cone dichotomy then holds for **every** $\alpha\in A(e)$, not just for the pair Lemma 5 outputs: any such $\alpha$ is a consecutive $\{b\text{-edge},a\text{-edge}\}$ pair in AKR's graph $G_0$, and $\mathrm{I},\mathrm{III}$ are its only nodes incident to both labels. With $S(e)$ the set of achievable statuses: $S(e)\neq\varnothing$; adjacency in $H$ is exactly Lemma 7's hypothesis, so $S(e)\cap S(e')=\varnothing$; two disjoint nonempty subsets of a 2-set are distinct singletons; $e\mapsto S(e)$ is a proper 2-colouring. **Figure 5(c) is harmless**: $|S(e)|=2$ forces $e$ to be isolated in $H$, and isolated vertices never obstruct 2-colourability.

Narrowing $A(e)$ only shrinks $S(e)$, which weakens nothing — and the code never computes $S(e)$, only bipartiteness of $H$, which is implied.

### B. General position

Proved, not assumed. Every degeneracy is a vertex on a side-interior (type ii) or a vertex on a vertex (type iii). Type (ii): move the vertex across $\ell(q)$ if both neighbours lie on one side (gives 2), otherwise either way (gives 1). Type (iii) non-interleaved — the case where naive separation *loses* the point — do not separate: push the vertex a distance $\delta$ **into the cone of $Q$**, so both incident sides must exit across $q^-$ or $q^+$ within $O(\delta)$ of $w$, giving 2. Interleaved gives 2 automatically. One vertex moves at a time; transversal crossings and simplicity are open conditions. Then "three collinear" and "two parallel" are finitely many proper algebraic subsets, which cannot cover a nonempty open set. Hence $f(7,7)=f_{\mathrm{gp}}(7,7)$, self-contained, without leaning on the one-sentence assertion in Černý et al.

## 2. Independent implementation — exact agreement

Implementation B was written from the definitions with deliberately different machinery: enumeration transposed to traverse **Q**-side neighbourhoods; components by **BFS** (A uses union-find); $H$-bipartiteness by **union-find with parity** (A uses DFS colouring); L3/L2 by induced-edge **count + endpoint distinctness** (A checks degrees); separability by a **separating-axis test over hull edges** (A enumerates halfplane subsets by rotation about point pairs).

$$13{,}003{,}620 \to 42{,}238 \to 24{,}990 \to 9{,}702 \to 0$$

Both implementations produce the identical survivor set:

`SHA-256 = 451cd2893234813952946fc2c92671853827035be337003451bdd7cea631d467`

B also independently rederived the class profiles and confirmed the structural fact the whole endgame rests on: **every exceptional profile's maximal crossing sets all have size 6**.

## 3. Certificates

- **Order types** 1, 2, 3, 16, 135 — deterministic staged extension under GP + Radon relations (necessary conditions only, hence a superset of realizable types, which is what an exclusion theorem needs).
- **Polygonalizations** $6!/2=360$ per order type; 6342 simple; split 6007 / 319 / 16.
- **Graphs** 13,003,620 by enumeration *and* by closed form $\sum_j(-1)^j\binom7j T(7-j)$, $T(k)=[x^9]((1+x)^k-1)^7$.
- **14 class profiles** (M-set, L2-windows, avoiding pairs; every class has exactly 2 reflex vertices, and class 7 has *no* avoiding pairs): `SHA-256 = dabf1fb12de23a81a8285da306d9cccd16287758fe4a547d658bdf23627f09a5`.

## 4. Lean

`LemmaA.lean` (written), `LowerBound.lean`, `Model.lean`, `Elimination.lean` are in `/heptagon/lean/`. The critical design note is in `Elimination.lean`: **shrink analytically before any decision procedure** — degree sequences, then `compat` collapsing to $N\cap M_P\neq\varnothing$, then the forced structure of the two sides outside $M_P$. A naive `decide` over 13M graphs is hopeless and `native_decide` would put the theorem on the compiler's trust base.

## 5. Referee classification: **B — COMPLETE CONDITIONAL ON EXPLICIT EXTERNAL LEMMAS**

Assumed: **Černý et al. 2003 Lemmas 1, 2, 3** and **Ackerman–Keszegh–Rote 2022 Lemmas 5, 7** (statements and applicability verified here; internal proofs not re-verified — AKR Lemma 7 is a twelve-case figure-driven argument). Nothing else is assumed: the general-position reduction is now proved, and Lemma A is proved.

One honest caveat on "independent": both implementations are mine, in Python, in one session. They share an author and a language, so they cannot rule out a shared conceptual error — only a shared coding error. A check by a different person in a different language remains the strongest thing still missing, alongside a human-readable account of the 9,702 → 0 step, which a referee will ask for.

Continuing with the item my own referee report flagged as the main remaining blocker: a **human-readable** account of the 9,702 → 0 step. First I need to find the minimal set of filters that actually does the work.Two significant findings: only **225** (class-pair, graph) combinations ever reach the last filter, and **Černý's Lemma 3 appears to be unnecessary**. Let me confirm and extract the endgame structure.The endgame is now fully characterized, and two things improved. Let me record them.# Two improvements, both substantive

## Černý's Lemma 3 is not needed

I tested the minimality of the filter set by re-running the elimination from each saved intermediate stage:

| filter set | survivors |
|---|---|
| A5-consec + A7 + C-L3 + compat + C-L2 + A5-avoid | **0** |
| drop C-L3 only | **0** |
| drop C-L2 | 64 |
| drop C-L2 and C-L3 | 64 |
| drop C-L2, C-L3 and A7 | 20,618 |

So C-L2 and A7 are load-bearing; **C-L3 is redundant**. The external dependency list drops from five published lemmas to four: Černý Lemmas 1 and 2, AKR Lemmas 5 and 7. That's worth having — C-L3 was the most intricate of the Černý lemmas (the seven-region case analysis through Figures 5–9).

## The endgame is now human-readable

Only **225** (class-pair, graph) combinations ever reach the final filter, on **121** distinct graphs — and every single one has degree sequence $(2,2,1,1,1,1,1)$ **on both sides**, with only 9 of the 14 classes surviving that far. The structure is forced, not observed:

> Let $A_P$ be the two sides of $P$ outside $M_P$. A degree-1 side of $Q$ attaches inside $M_P$, so each $a\in A_P$ can attach only to a side of $Q$ of degree $\ge 2$ — and there are exactly two of those. Hence each $a \in A_P$ has degree exactly 1. Symmetrically on the $Q$ side.

And Lemma 5 reduces to a statement anyone can check by eye:

**Neighbour-adjacency form of A5.** If $p_a,p_b$ are consecutive or avoiding and lie in different components, some $k\in N(p_a)\setminus N(p_b)$ must be cyclically adjacent in $\mathbb{Z}_7$ to some $k'\in N(p_b)\setminus N(p_a)$.

First surviving combination: $N=[\{0\},\{0\},\{1\},\{2,4\},\{3\},\{4\},\{5,6\}]$, class $a{=}12$ with $M_P=\{0,2,3,4,6\}$, avoiding pair $(4,6)$. Then $N(p_4)=\{3\}$ and $N(p_6)=\{5,6\}$; but 3 is cyclically adjacent only to 2 and 4, neither of which is in $\{5,6\}$. Violated. All 225 cases have exactly this shape.

That converts "the computer found zero" into 225 two-line verifications with a uniform structural explanation — which is what a referee was going to demand.

## Where this now stands

Classification is unchanged: **B — complete conditional on explicit external lemmas**, but with a shorter list. Assumed: Černý Lemmas 1–2, AKR Lemmas 5 and 7. Proved here: the general-position reduction, Lemma A, the L7⟹H-bipartite derivation (with the corrected definition of $A(e)$), the classification, and the elimination — the last now in two independent implementations agreeing on an identical SHA-256.

What I still cannot supply from here: a check by a different person in a different language, and compiled Lean. The Lean files are skeletons with `sorry`s in the places I flagged; I have no toolchain in this session, so I can't claim any of them typecheck. The honest next moves, in order, are (1) `LowerBound.lean` — pure `decide` on integer determinants, should compile almost immediately and gives the lower bound outright; (2) `LemmaA.lean`, where the Mathlib names I marked `-- CHECK` need fixing; (3) the three shrinking lemmas in `Elimination.lean`, which are what make the final `decide` feasible without `native_decide`.
