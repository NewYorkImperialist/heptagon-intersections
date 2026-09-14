# Referee audit of the claimed proof that f(7,7) = 38

> **HISTORICAL DOCUMENT — mid-project self-audit. Banner added 2026-09-14; the
> body below is unedited.**
>
> This is the project's own adversarial self-audit, written mid-research. It is
> preserved as a research record, not as a current status statement. The
> authoritative status is [`verification-status.md`](verification-status.md),
> which wins wherever this file conflicts with it.
>
> Three things below have since been overtaken, and are listed here rather than
> repaired in place:
>
> * **"Assumptions that remain", item 2** restates the project's own
>   general-position perturbation argument ("a vertex-on-side incidence perturbs
>   to 0 or 2 crossings, and the direction giving 2 can be chosen"). That
>   argument was later found **INCORRECT** in the cone-containment sub-case and
>   removed from the active proof, which now cites AKR §9.1 instead. See
>   `known-issues.md` K-10 and `proof-outline.md` Step 0.
> * **"Assumptions that remain", item 3** says the result is "Not mitigated by
>   an independent reimplementation". A C++ second implementation
>   (`independent/implementation_b/`) was written later and reproduces the
>   reduction down to the 225 triples exactly — but it does **not** run the final
>   avoiding-pair filter, so the `225 → 0` step still has no second
>   implementation. See `known-issues.md` K-02 and K-20.
> * **The correctness evidence quoted in item 3** — 340,335 predicate
>   cross-checks and 129,812 realizable configurations — **cannot be re-run**:
>   the required data files and scripts are absent (`known-issues.md` K-04,
>   K-05).
>
> The closing line, "The claim **f(7,7) = 38** survives the audit", is a
> statement about *this audit*, not about the repository's position. The
> repository's position is and remains: a **candidate** computer-assisted proof.
> `f(7,7) = 38` is not a Lean theorem, and no person outside this AI-assisted
> process has verified any part of it.


Two defects found.  Neither is fatal; both are corrected below.  One unproven
assumption is intrinsic and is stated explicitly.

## Defects found

**D1 (arithmetic / reporting error).**  `enum9.py` enumerated 13,484,940 graphs
and this was reported as "all 9-edge graphs".  The recursion never forced the
edge budget to be exhausted at the leaf, so it actually enumerated all graphs
with |E| in {7,8,9}.  Closed form (inclusion-exclusion on uncovered Q-sides,
T(k) = [x^9]((1+x)^k-1)^7):

| |E| | count |
|---|---|
| 7 | 5,040 |
| 8 | 476,280 |
| 9 | **13,003,620** |
| total | 13,484,940 |

The enumeration was therefore a *superset* of what was needed: soundness is
unaffected, and the I=42 and I=41 cases were swept for free.  Corrected run:
|E|=7 → 0 survivors (dies at Lemma 7, confirming the hand proof that I=42 is
impossible); |E|=8 → 0; |E|=9 → 13,003,620 → 42,238 → 24,990 → 9,702 → 0.

**D2 (labelling-dependent intermediate counts).**  The counts 3522 and 64 are
artifacts of which labelled polygon happens to be stored as the representative
of each exceptional class.  For a fixed ordered class pair (a,b) the survivor
set is carried bijectively by re-labelling, so *emptiness* is invariant, but the
union over classes is not.  Corrected by verifying emptiness for each of the
196 ordered pairs separately, under three different representative labellings
(as stored; rotation 3 + reflection; rotation 5).  All give 0.

## Step-by-step audit

| # | Proposition | Source | Code | Implementation check |
|---|---|---|---|---|
| 1 | Two closed curves in general position cross an even number of times | folklore; used by Černý et al. Thm 5 | parity used symbolically | 0 odd counts in ~134k random pairs |
| 2 | A line meets a simple k-gon evenly, so ≤ k−1 times for odd k | Černý et al., Lemma 1 | `crossing_sets` | all crossing sets have even size (asserted) |
| 3 | I + |E(G)| = 49 | general position: each side pair meets ≤ once | `disjointness_graph` | verified on the 38-certificate |
| 4 | If no line meets all of S ⊆ sides(P), then |E| ≥ n + (m−|S|) | **new (Lemma A)** | `questionA.py` | proof below |
| 5 | Set of sides met by a line = sides whose endpoints a halfplane separates | elementary | `halfplane_subsets` | count = n(n−1)+2 for n ≤ 7 |
| 6 | Order type determines simplicity, crossing sets, avoiding, inside-triangle | elementary | `chiro.py` | 340,335 chirotope-vs-coordinate tests, 0 mismatches |
| 7 | 3-term GP and 4-point Radon relations are necessary for realizability | Plücker / Cramer identities | `gp_ok`, `radon_ok` | GP identity verified numerically (1e−16); staged counts 1,2,3,16,135 match Aichholzer–Aurenhammer–Krasser |
| 8 | AKR Lemma 5 for consecutive **or avoiding** pairs | AKR 2022, Lemma 5 | `L5_ok` | justification below |
| 9 | AKR Lemma 7 ⟹ H bipartite | AKR 2022, Lemma 7 | `H_bipartite` | justification below |
| 10 | Černý Lemma 3 (6 consecutive vs 6, induced perfect matching) | Černý et al., Lemma 3 | `L3_ok` | tests *induced* matching (all 12 degrees = 1), matching the source's "misses only" wording |
| 11 | Černý Lemma 2 (4 consecutive, D inside triangle ABC) | Černý et al., Lemma 2 | `L2_ok` + `inside_tri` | both reading directions of the path applied |

**Lemma A, proof.** Let S be a set of sides of P such that no line meets every
member of S.  For each side q of Q apply this to the line ℓ(q): some p ∈ S has
ℓ(q) ∩ p = ∅, hence q ∩ p = ∅.  This gives n edges of G with pairwise distinct
Q-endpoints.  By Černý Lemma 1 each side p ∉ S misses some side of Q, giving
m − |S| further edges with pairwise distinct P-endpoints, all in S's complement
and hence distinct from the first family. ∎
For m = n = 7 and |S| = 4 this gives |E| ≥ 10; since I is even, |E| is odd, so
|E| ≥ 11 and I ≤ 38.

## Justification 1: Lemma 7 ⟹ H bipartite

For a pair e = (p_i,p_{i+1}) with CC(p_i) ≠ CC(p_{i+1}), Lemma 5 gives a
non-empty set A(e) of associated pairs, and its last clause gives, for each
α ∈ A(e), that I(α) ∈ Cone(e) or I(e) ∈ Cone(α).  Put

  S(e) = {hooking if some α ∈ A(e) has I(α) ∈ Cone(e)}
       ∪ {hooked  if some α ∈ A(e) has I(e) ∈ Cone(α)}.

S(e) ≠ ∅.  AKR explicitly allow |S(e)| = 2 (their Figure 5c).  Reading Lemma 7
as its proof uses it ("let … be their associated (hooked) pairs such that …"),
the hypothesis "both hooking" means hooking ∈ S(e) ∧ hooking ∈ S(e′).  So for
disjoint e, e′ whose four sides lie in four different components,
S(e) ∩ S(e′) = ∅.  Two non-empty disjoint subsets of a 2-element set are
distinct singletons; hence every non-isolated vertex of H has |S| = 1 and
e ↦ S(e) is a proper 2-colouring.  **H is bipartite.** ∎

Code: `H_bipartite` takes V = {i : comp[i] ≠ comp[i+1]}, joins i,k when
(k−i) mod 7 ∉ {1,6} (exactly the condition that the pairs share no side, since
{i,i+1} ∩ {k,k+1} ≠ ∅ iff k ≡ i, i±1) and the four components are distinct, then
2-colours by DFS.  This is literally the statement above.

## Justification 2: Lemma 5 on avoiding pairs

AKR define s, s′ avoiding iff neither contains I(s,s′), the meet of ℓ(s), ℓ(s′),
and their Lemma 5 covers pairs that are "consecutive **or avoiding**".

*Claim.* For non-adjacent sides s = ab, s′ = cd of a simple polygon in general
position, s ∋ I(s,s′) ⟺ ℓ(s′) strictly separates a from b.
*Proof.* If ℓ(s′) meets the relative interior of s at x then x ∈ ℓ(s) ∩ ℓ(s′) =
{I}.  Conversely if I ∈ s then I ∈ ℓ(s′); I cannot be an endpoint of s, since
that endpoint together with c and d would be three collinear vertices of P.  So
I is interior to s and a, b are strictly separated. ∎

Hence avoiding ⟺ χ(c,d,a) = χ(c,d,b) **and** χ(a,b,c) = χ(a,b,d): an order-type
predicate, which is exactly `not line_cuts_seg` in both directions.

*Parallel sides.*  AKR's general position forbids parallel sides, so I(s,s′)
always exists there.  If a realisation has ℓ(s) ∥ ℓ(s′), the perturbation of the
next section moves I to a far point lying on neither segment, so the perturbed
pair is avoiding; and the predicate above is a strict sign condition, unchanged
by the perturbation.  The code's classification is therefore the correct one for
the general-position configuration to which the argument reduces.

## Deterministic replacement for the random order-type generation

Random sampling has been replaced by a staged, deterministic enumeration
(`chiro.py`): representatives on n−1 elements are extended by one new element in
all 2^C(n−1,2) ways, filtered by the GP and Radon relations *involving the new
element*, and reduced by a combinatorial canonical form (the chirotope analogue
of "sort the rest by angle around p starting at q", minimised over the 2n(n−1)
candidate labellings).

Completeness: if χ is a valid 7-element chirotope then its restriction to the
first 6 elements is a valid 6-element chirotope, hence isomorphic to a stored
representative, and χ appears among that representative's extensions.

Because only *necessary* conditions are imposed, the enumeration is a superset
of the realizable order types — so the conclusion does not depend on knowing
which enumerated types are realizable.  Output: 1, 2, 3, 16, 135 for n = 3…7,
matching the published counts, and the resulting 135-element set is *identical*
to the set found by random sampling.  Re-running the analysis on it reproduces
6342 simple 7-gons, the 6007/319/16 split, and the 14 exceptional classes.

## Assumptions that remain

1. **The four published lemmas are correct.**  Their statements and their
   applicability were checked here; their internal proofs were not re-verified.
   AKR Lemma 7 in particular is a twelve-case argument carried largely by
   figures.  This is the main external dependency.
2. **General position is part of the definition of f(7,7)**, as in all three
   source papers.  A degenerate configuration can be perturbed so that the
   number of transverse crossings does not decrease (a vertex-on-side incidence
   perturbs to 0 or 2 crossings, and the direction giving 2 can be chosen), and
   the conditions "no 3 of the 14 vertices collinear" and "no two of the 14
   sides parallel" fail only on a finite union of proper algebraic subsets,
   which cannot contain the non-empty open set of configurations with the given
   combinatorics.  A fully degenerate-inclusive treatment is not given here.
3. **Code correctness.**  Mitigated by: 340,335 predicate cross-checks; the
   n(n−1)+2 and 135 identities; controls reaching the proven optima f(5,5)=18
   and f(5,7)=26; and 129,812 realizable high-intersection configurations with
   zero false rejections by any filter.  Not mitigated by an independent
   reimplementation, which a referee should demand.

## Revised status

The claim **f(7,7) = 38** survives the audit, with the corrected figures above.
It remains conditional on (1) and (2).
