# External-lemma audit

Audit of the external mathematical dependencies of the candidate computer-assisted
proof that `f(7,7) = 38`.

**Auditor:** independent audit pass (Subagent C — an **LLM subagent**, not a
person), 2026-09-13. *(Qualifier added 2026-09-14: "independent" here means a
fresh model instance with no inherited context. **Independent human verification
of this repository is still none**; see `ai-disclosure.md` and
`verification-status.md` row 18.)*

> **§7 IS SUPERSEDED — read this before §7. Banner added 2026-09-14; the body is
> otherwise unedited except where marked inline.**
>
> §7 audits the project's **own** general-position argument, and it found that
> argument **incorrect**. That finding was accepted and acted on: `proof-outline.md`
> Step 0 was rewritten on 2026-09-13 to **cite AKR §9.1** instead of proving the
> reduction itself, and `verification-status.md` row 4 marks the old argument
> `SUPERSEDED / KNOWN DEFECT`. §7 therefore audits text that **no longer exists**,
> and several of its present-tense sentences are now false:
>
> * "The project does **not** cite [AKR-J] §9; it proves the reduction itself."
>   — false since 2026-09-13.
> * "**K-10 should be upgraded from a completeness caveat to a correctness
>   defect.**" — already done; K-10 is titled "the project's Step 0 is INCORRECT
>   (UPGRADED 2026-09-13)".
> * "**Option 3 is recommended**" (delete the type-(iii) argument and cite AKR
>   §9.1) — already done.
> * The long blockquote attributed to `docs/proof-outline.md:19–32` is **no longer
>   in that file at all**.
>
> The audit's *verdict* stands and is why the repair happened. Only its
> recommendations are spent.
>
> **Two further cautions that apply to the whole document:**
>
> 1. **Every `file:line` citation into `docs/` has drifted** and should be treated
>    as a section pointer, not a line pointer. The referenced text has moved in
>    `proof-outline.md`, `literature-notes.md` and `known-issues.md`. Quoted
>    *content* was spot-checked and is accurate; the *line numbers* are not.
> 2. **The summary table's "extra row" marks AKR §9's own reduction `VERIFIED`.**
>    That overstates what was done — §7.3 records checking the §9.2 averaging
>    argument, not re-deriving §9.1 — and it conflicts with
>    `verification-status.md` row 4, which classifies this dependency as
>    `EXTERNAL PUBLISHED LEMMA` (imported, not reproved), and with
>    `a7-specification.md` R3, "External to this audit. Not re-derived here."
>    The authoritative classification is row 4's.
**Remit:** the *external* results (Černý Lemmas 1 and 2; AKR Lemmas 5 and 7; AKR's
general-position reduction) and the project's *use* of them, including the STRICT
Lemma-A line condition. The internal correctness of the enumeration is audited only
to the extent needed to check that each filter rejects exactly what the published
result forbids.

**This document does not certify the theorem.** It certifies (or fails to certify)
six named dependencies. Two findings below are new and material; one is a defect.

---

## 0. Sources, hashes, and how they were read

| File | Pages | SHA-256 (verified on disk) |
|---|---|---|
| `references/cerny-2003.pdf` | 12 | `e8749e868809a403da3a43087bdb5ba5c4632ae0e71603cbcc2cf077154b5ad9` |
| `references/akr-dcg-2022.pdf` | 29 | `f0ae336e03857766597e5760acaa9c0cc9dbe3ef86d6200334bfad7f8b9c548a` |
| `references/akr-socg-2020.pdf` | 18 | `304f45fd69150114a9c986091ae48ada4f280d9e3128e3b400fc145cdb4bb975` |

All three hashes match the values supplied with the audit brief.

> **Re-verified 2026-09-14.** All three were recomputed from the files on disk
> and match the values above. Note the standing limitation, unchanged: the PDFs
> are `.gitignore`d (they are copyrighted), so **someone cloning this repository
> still cannot check these hashes** — they can only confirm that whatever copy
> they obtain independently has the same digest. The table establishes which
> files this project read, not that a third party has the same files.

**Citations.**

* **[Č]** J. Černý, J. Kára, D. Kráľ, P. Podbrdský, M. Sotáková, R. Šámal,
  *On the number of intersections of two polygons*, Comment. Math. Univ. Carolin.
  **44**(2) (2003), 217–228. PDF page *n* = journal page 216 + *n*.
* **[AKR-J]** E. Ackerman, B. Keszegh, G. Rote, *An Almost Optimal Bound on the
  Number of Intersections of Two Simple Polygons*, Discrete Comput. Geom. **68**
  (2022), 1049–1077, DOI `10.1007/s00454-022-00438-0`.
  PDF page *n* = journal page 1048 + *n*. **Authoritative source.**
* **[AKR-C]** same authors, SoCG 2020, LIPIcs **164**, Art. 1, pp. 1:1–1:18,
  DOI `10.4230/LIPIcs.SoCG.2020.1`. PDF page *n* = article page 1:*n*.
  Used only for provenance and version comparison.

**Reading method.** Neither `pdftotext`, `pypdf`, `pdfminer`, `poppler` nor PyObjC
is installed on this machine, so the Read tool's `pages` renderer was unavailable.
A short Swift/PDFKit utility was built in the session scratchpad to (a) extract the
embedded text layer of each PDF page and (b) rasterise pages to PNG for the
figure-driven material. All lemma statements quoted below were read from the actual
extracted page text; AKR Figures 5 and 6 (p. 1055) were additionally inspected as
rendered images. No project paraphrase was relied on for any published statement.

**Independent replication performed.** A from-scratch reimplementation of the
elimination pipeline (chirotope handling, tope enumeration, crossing sets, windows,
avoiding pairs, `L5`, `H`, `L2`) was written against `data/exceptional_profiles/exceptional_profiles_14.json`
only, and reproduced, exactly:

* all 14 stored profiles (`lemma2_windows`, `avoiding_pairs`, `M_set`) re-derived from
  their stored chirotopes — 14/14 match, and all 14 are STRICT-exceptional;
* the pipeline counts **13,003,620 → 42,238 → 24,990 → 2,300 → 121 → 0**
  (with Černý L3 switched off), matching `docs/proof-outline.md` Step 7 and the
  shipped certificate.

This is a third implementation and it agrees. Note the common-mode caveat of
`known-issues.md` K-02 applies to it too: it encodes *the same reading* of the
published lemmas. It is evidence against coding error, not against misreading.
The misreading question is what the rest of this document is about.

---

## 1. Summary table

> **What "VERIFIED" means in this table, added 2026-09-14.** It means *the
> published statement was read, its hypotheses checked one by one against the
> project's use, and the argument judged sound*. It does **not** mean the lemma
> was re-proved here, and it does not mean it is machine-checked. This matters
> because a reader comparing with
> [`verification-status.md`](verification-status.md) row 4 will see AKR §9.1
> recorded there as an `EXTERNAL PUBLISHED LEMMA` — imported, not reproved. The
> two are consistent: the audit judged AKR's own argument sound, and the project
> imports it. Neither claim is that this project proved it.
>
> Where a lemma's *required consequence* has since been derived inside the
> project rather than imported — Černý L1 via the parity argument in
> `SegmentGeometry.lean` — that is recorded in `verification-status.md`, not
> here.

| Dependency | Verdict | Main reason |
|---|---|---|
| Černý Lemma 1 (min degree ≥ 1) | **VERIFIED** | The half of L1 the project uses ("no line meets every side of an odd polygon") is robust even for lines through vertices; the parity half, which does need vertex-avoidance, is not used. Filter is the enumeration domain and is exactly right. |
| Černý Lemma 2 (`lemma2_windows`) | **VERIFIED** | Code rejects *exactly* "induced 4×4 block is a perfect matching", matching the published "forms a perfect matching". Path and intersection-free hypotheses are established by simplicity, not assumed. Adversarial battery (extra edge / missing edge / non-injective / wrong window) behaves correctly in all 8 probes. |
| AKR Lemma 5, consecutive case | **VERIFIED** | The two cross-*non*-edges are stated explicitly in the published conclusion (both versions). `L5_ok` is a literal transcription; the `CC(p_i) ≠ CC(p_{i+1})` guard is present. |
| AKR Lemma 5, avoiding case | **VERIFIED** | AKR's definition of *avoiding* re-derived independently as the AND of two orientation-sign equalities; matches `classdata`'s predicate exactly. Elimination requires failure for *every* still-viable class, which is the sound direction. |
| AKR Lemma 7 → *H* bipartite | **PROBABLY CORRECT — HUMAN REVIEW STILL DESIRABLE** | The derivation `e ~_H e' ⟹ S(e) ∩ S(e') = ∅ ⟹ H bipartite` is airtight *given* the existential reading of "is hooking", and **the SoCG version settles that reading explicitly** (new finding, §5.5). Residual risk is in the source, not the project: AKR's Observation 6, used inside L7's proof, is unproved and is *false* under AKR's own literal definition of "associated". |
| STRICT Lemma-A line condition | **VERIFIED** | STRICT is exactly what Lemma A needs, and is *sufficient*: the only lines Lemma A ever applies to are the ℓ(q_j), and AKR general position ("no three combined vertices collinear") forces ℓ(q_j) ∩ V(P) = ∅. Proof in §6.3. **No failure here.** |
| General position (reduction to ≥ 40 proper crossings) | **INCORRECT** *(as written in the project's Step 0; conclusion salvageable)* | The project's own type-(iii) rule — "push the vertex δ **into the cone of Q at w**" — **loses the intersection point** whenever the P-wedge at *v* is contained in the Q-wedge at *w*. Demonstrated numerically in §7.5. Repairable in one clause; and AKR-J §9 independently proves the needed reduction correctly. |
| *(extra row)* AKR §9 degenerate-case reduction itself | **VERIFIED** | §9.1 (coincident vertices, parametric morph + Thm 17) and §9.2 (vertex-side, averaging over the two shift directions) are sound and never decrease the **intersection-point** count. §9.3 explicitly disclaims the *pairs-of-sides* counting model — the project must, and does, stay in the point model. |

**Overall:** the theorem is **not** marked verified, and is not assessed here.

---

## 2. Černý Lemma 1

### 2.1 Published statement

[Č] p. 218 (PDF p. 2), immediately after §3's heading, verbatim:

> **Lemma 1.** Let *K* be a *k*-gon and let *p* be a line. The number of
> intersections of *p* with the segments of *K* is even and at most *k*. Thus no
> line intersects all the segments of a polygon with odd number of vertices.

The load-bearing definitions are on the same page (p. 218, PDF p. 2):

> We mean by a segment a closed line segment. […] We assume throughout the whole
> paper that all the end-points of all the segments are in general position.
> **Two segments intersect if they share an interior point** and we call that point
> their intersection. […] **Two segments miss each other if they do not intersect.**

**What "intersect" means here.** Sharing an *interior* point. **Endpoints do not
count.** Two consecutive sides of a polygon, which share exactly one endpoint, do
*not* intersect in Černý's sense.

**General position.** [Č] assumes it globally ("all the end-points of all the
segments are in general position"), without stating the exact conditions.

**Why it applies to supporting lines.** *p* is quantified as an arbitrary **line**,
not a segment. So it applies verbatim to ℓ(q), the supporting line of a side *q* of
the other polygon.

**Does L1 need general position?** This matters, so it was checked directly rather
than assumed. Černý's Lemma 1 has two claims with *different* robustness:

* **The parity claim ("even") genuinely requires *p* to avoid the vertices of *K*.**
  Counterexample: a triangle *ABC* and a line *p* through vertex *A* meeting the
  interior of *BC*. Since *p* ∩ *AB* = {*A*} and *p* ∩ *AC* = {*A*} are not
  interior points, *p* intersects exactly **one** side. Odd. Likewise if *p* = ℓ(*AB*):
  *p* shares interior points with *AB* only, again one. So "even" is false for
  vertex-incident lines.
* **The conclusion actually used ("no line intersects all sides of an odd polygon")
  is robust and needs no general-position hypothesis at all.** If *p* passes
  through a vertex *v* of *K*, then for each of the two sides at *v*, *p* either
  meets it only at *v* (not an interior point) or *p* is its supporting line, in
  which case *p* meets the *other* side at *v* only. Either way *p* fails to
  intersect at least one side, so it cannot intersect all of them. If *p* avoids
  all vertices, the parity argument applies and *k* odd rules out *k*.

**The project uses only the robust half.** This is recorded here because it is
exactly the distinction that resurfaces, in a different guise, in §6.

### 2.2 Project usage

`docs/proof-outline.md` Step 2, lines 40–43:

> By **C1** a line meets a simple 7-gon at most 6 times, so every side of either
> polygon misses at least one side of the other.

The logical arrows:

1. Let *q* be a side of *Q*. Then ℓ(*q*) is a line.
2. [Č] L1 with *K* = *P*, *k* = 7 odd ⟹ ℓ(*q*) does not intersect all 7 sides of *P*.
3. So there is a side *p* of *P* with ℓ(*q*) ∩ int(*p*) = ∅. Since *q* ⊆ ℓ(*q*),
   also *q* ∩ int(*p*) = ∅; under general position (no vertex of one polygon on the
   other) this is equivalent to *q* ∩ *p* = ∅, i.e. (*p*, *q*) ∈ E^D.
4. Hence deg_{G^D}(*q*) ≥ 1. Symmetrically deg_{G^D}(*p*) ≥ 1 for every side *p* of
   *P*, using *K* = *Q*, *l* = 7 odd.
5. Therefore |E| ≥ 7 and *I* = 49 − |E| ≤ 42.

C1 is used a **second** time inside Lemma A, as the source of the "m − |S| further
edges" family (§6.2, step 2).

### 2.3 Hypothesis matching

| Published hypothesis | Where established |
|---|---|
| *K* is a *k*-gon, *k* odd | *P* (resp. *Q*) is a simple heptagon; 7 is odd. **Established.** |
| *p* is a line | ℓ(*q*) for a side *q*. **Established.** |
| endpoints in general position | Supplied by the Step-0 reduction. **Established there** (but see §7 — Step 0 has a defect). Note: *not actually needed* for the half of L1 used, per §2.1. |
| Černý's "intersect" = shared interior point vs. AKR's E^D = `p ∩ q = ∅` on closed sets | These two notions coincide iff no vertex of one polygon lies on the other, which is exactly AKR-J §3 general position. **Established**, and it is worth flagging that this equivalence is *general-position-dependent*: without it, the project's `E^D` and Černý's non-intersection graph are different graphs. |

Nothing is merely assumed here.

### 2.4 Code/filter mapping

There is **no** `L1_ok` predicate. C1 is baked into the *domain* of the enumeration,
`python/elimination/audit_enum.py:61–72`:

* `for size in range(1, hi+1)` with `size ≥ 1` — every *P*-side has a non-empty
  neighbourhood (min degree ≥ 1 on the *P* side);
* `if budget != 0 or used != FULL: return` — `used == FULL` (= 127) forces every
  *Q*-side to be covered (min degree ≥ 1 on the *Q* side), and `budget == 0` pins
  |E| exactly at the target;
* `hi = min(3, budget-(rem-1))` — a degree cap of 3, which is not a filter but an
  arithmetic consequence of seven positive degrees summing to 9.

Implementation B does the same at `independent/implementation_b/reduction.cpp:244`
and via the fixed *Q*-degree sequences at `:312–324`.

**Does this reject only what L1 forbids?** Yes. A bipartite graph on 7+7 with a
degree-0 vertex is excluded from the domain, and L1 says such a graph cannot be the
disjointness graph of two simple heptagons. Nothing stronger is imposed: all
13,003,620 graphs with min degree ≥ 1 and |E| = 9 are generated (count independently
reproduced, and separately confirmed by the project's inclusion–exclusion identity
`T(k) = [x⁹]((1+x)^k − 1)⁷`).

### 2.5 Adversarial check

* *Tried:* a configuration **allowed** by L1 but rejected by the domain. Would need
  a bipartite graph with min degree ≥ 1, |E| = 9, that `rec` fails to generate. The
  recursion is a plain complete enumeration over neighbourhood masks with no
  symmetry reduction; the count matches a closed-form check. Nothing found.
* *Tried:* a configuration the filter applies to although L1 does not. The filter is
  applied to both polygons; L1 requires the polygon being *stabbed* to have an odd
  number of sides. Both are heptagons. No gap.
* *Tried:* breaking the deduction with a vertex-incident supporting line. Under
  general position ℓ(*q*) contains no *P*-vertex; and even if it did, §2.1 shows the
  conclusion still holds. The deduction is doubly safe.
* *Tried:* the endpoint-vs-interior mismatch between Černý's graph and `E^D`.
  This is a real difference, but it is annihilated by general position. Recorded as
  a dependency of C1's use on Step 0, not a defect.
* *Note on symmetry:* the enumeration deliberately does **not** quotient by the
  dihedral action, and that is load-bearing — see §6.5.

### 2.6 Verdict

**VERIFIED.** The statement is transcribed faithfully, the hypotheses are met, the
only half of the lemma used is the half that does not depend on general position,
and the implementation rejects exactly the graphs the lemma forbids.

---

## 3. Černý Lemma 2

### 3.1 Published statement

[Č] p. 220 (PDF p. 4), verbatim:

> **Lemma 2.** Let *ABCDE* be a path such that the point *D* is inside the triangle
> *ABC*. Then there is no intersection-free set **B** of four segments such that the
> non-crossing graph of **A** = {*AB*, *BC*, *CD*, *DE*} and **B** forms a perfect
> matching.

Unpacking every hypothesis against the definitions on p. 218:

1. ***ABCDE* is a path.** [Č] p. 218: "The sequence of **non-intersecting**
   segments *A₁A₂, A₂A₃, …, A_kA_{k+1}* where *A_i ≠ A_j* for *i ≠ j* is called a
   path." So this hypothesis carries two requirements:
   * *AB*, *BC*, *CD*, *DE* pairwise share no **interior** point;
   * the five points *A*, *B*, *C*, *D*, *E* are pairwise distinct.
2. ***D* is inside the triangle *ABC*.** Interior; strict.
3. **B is an intersection-free set of four segments**: p. 218, "The set of segments
   is intersection-free if no two of segments of the set intersect" — pairwise no
   shared interior point. |**B**| = 4 exactly.
4. **"the non-crossing graph … forms a perfect matching".** The graph is defined on
   p. 218 under the name *non-intersection graph*: bipartite on **A** ∪ **B**, with
   an edge joining *a* ∈ **A** to *b* ∈ **B** **iff *a* and *b* do not intersect**;
   no edges inside **A** or inside **B**. (The paper switches to the phrase
   "non-crossing graph" in Lemmas 2 and 3 without redefining it; from Observation 1,
   the proof of Lemma 2, and Lemma 3's restatement it is unambiguously the same
   object. Recorded as a terminological wobble in the source, not an ambiguity.)
   **"Forms a perfect matching" means the graph *is* a perfect matching**: every one
   of the 8 vertices has degree **exactly 1**. Not "contains".
5. **Conclusion:** no such **B** exists.

**"Forms", not "contains" — and this is essential.** The published proof opens
"Let *p* be the segment which misses **only** *CD* and let *q* be the segment which
misses **only** *DE*", and later "let *r* be the segment of **B** which misses
**only** *AB*; *r* does not intersect *p* or *q*, but it **intersects** *BC*, *CD*
and *DE*". Every step uses degree *exactly* 1. A graph with one extra
non-intersection edge is **not** covered by the lemma, and the proof visibly breaks.
Conversely a *missing* edge is not covered either. So the correct filter must test
for an *induced* perfect matching.

No explicit general-position assumption appears in the lemma; [Č]'s global
end-points-in-general-position assumption (p. 218) applies.

### 3.2 Project usage

For each *window* `w` admitted for the class assigned to *P*, the four cyclically
consecutive sides *p_w, p_{w+1}, p_{w+2}, p_{w+3}* play the role of
{*AB*, *BC*, *CD*, *DE*} with

```
A = v_w,  B = v_{w+1},  C = v_{w+2},  D = v_{w+3},  E = v_{w+4}   (indices mod 7)
```

and any 4-subset of the sides of *Q* plays the role of **B**. If the induced
4 × 4 block of the disjointness graph is exactly a perfect matching, the
configuration is impossible and the (graph, class) pair is killed.

A window is admitted if **either** the forward traversal *ABCDE* **or** the reverse
traversal *EDCBA* satisfies the triangle hypothesis. The reverse traversal has
*A′ = v_{w+4}, B′ = v_{w+3}, C′ = v_{w+2}, D′ = v_{w+1}, E′ = v_w*, so its triangle
condition is "*v_{w+1}* inside triangle *v_{w+4} v_{w+3} v_{w+2}*".

**Is the reverse traversal legitimate?** Yes, and this was checked rather than
assumed. Reversing the path replaces **A** = {*AB*, *BC*, *CD*, *DE*} by
{*ED*, *DC*, *CB*, *BA*}, which is **the same set of four segments**. The conclusion
of Lemma 2 is a statement about that *set* and about **B**, and is therefore
invariant under the reversal. So the lemma is available at window *w* as soon as
*either* orientation satisfies its hypothesis, and taking the union is correct (it
makes the filter *stronger*, which is why it needed checking).

### 3.3 Hypothesis matching

| Published hypothesis | Where established | Status |
|---|---|---|
| *AB*, *BC*, *CD*, *DE* pairwise non-intersecting | *P* is a **simple** polygon: non-adjacent sides are disjoint; adjacent sides meet only at a shared endpoint, which is not an interior point provided no three consecutive vertices are collinear. | **Established** (simplicity + general position) |
| *A, B, C, D, E* pairwise distinct | Five distinct vertices of a simple heptagon. | **Established** |
| *D* strictly inside triangle *ABC* | `inside_tri(chi, …)` on the class chirotope; this is precisely χ(A,B,D) = χ(B,C,D) = χ(C,A,D). | **Established, and it is an order-type invariant** |
| **B** intersection-free, |**B**| = 4 | Any 4 sides of the simple polygon *Q*: non-adjacent ones are disjoint, adjacent ones share only an endpoint. | **Established** |
| non-intersection graph *is* a perfect matching | Tested as an *induced* condition — see §3.4. | **Established** |
| Černý "do not intersect" ≡ project `E^D` | Requires no vertex of one polygon on the other. | **Established via Step 0** (and see §7) |

Nothing is merely assumed.

### 3.4 Code/filter mapping

`python/elimination/audit_enum.py:128–136`:

```python
FOUR=list(combinations(range(7),4))
def L2_ok(N,W):
    for i in W:
        sides=[(i+t)%7 for t in range(4)]
        for qs in FOUR:
            mq=0
            for j in qs: mq|=1<<j
            dq={j:0 for j in qs}; ok=True
            for s in sides:
                dd=N[s]&mq
                if pc(dd)!=1: ok=False; break
                dq[dd.bit_length()-1]+=1
            if ok and all(v==1 for v in dq.values()): return False
    return True
```

and the window predicate, `audit_enum.py:110–113`:

```python
    W=set()
    for i in range(7):
        if inside_tri(chi,(i+3)%7,i,(i+1)%7,(i+2)%7): W.add(i)
        if inside_tri(chi,(i+1)%7,(i+4)%7,(i+3)%7,(i+2)%7): W.add(i)
```

with `python/core/chiro.py:73–74` `inside_tri(chi,p,a,b,c)` = `chi(a,b,p)==chi(b,c,p)==chi(c,a,p)`.

The rejection condition decomposes exactly as:

* `pc(dd) != 1` never fires ⟺ **each of the four *P*-sides has degree exactly 1**
  inside the block (this is the "no extra edges" / *induced* requirement, and also
  the "no missing edge" requirement);
* `all(v == 1 for v in dq.values())` ⟺ **each of the four chosen *Q*-sides is used
  exactly once**, i.e. the degree-1 map is a bijection.

Together: *the induced bipartite subgraph on the 4 × 4 block is exactly a perfect
matching.* That is literally "forms a perfect matching". Implementation B applies
the same induced test at `reduction.cpp:213` and pins the distinction with a unit
test at `reduction.cpp:410–413`.

### 3.5 Adversarial check — with a concrete rejected case from the pipeline

**(i) An actual rejected case.** Running the independently reimplemented pipeline
and dumping the first Černý-L2 kill:

```
exceptional class 0,  window w = 3,  witness on the P side
N(P) = [{0}, {0}, {1}, {2}, {3}, {1,4}, {5,6}]
N(Q) = [{0,1}, {2,5}, {3}, {4}, {5}, {6}, {6}]
```

*The four consecutive P-sides:* p₃, p₄, p₅, p₆.
*The four Q-sides chosen as **B**:* q₁, q₂, q₃, q₅.

A concrete integer realisation of exceptional class 0 (found by matching its stored
chirotope against the Aichholzer order-type database in
`independent/order_type_audit/external/otypes07.b08`, then mirroring; the chirotope
matches all 35 triples exactly, the 7-gon is simple, and no three of the 7 vertices
are collinear):

```
v0 = (-249, 212)   v1 = (-24,  53)   v2 = (-201, 185)   v3 = (-109, 189)
v4 = (-168, 192)   v5 = (-39, 250)   v6 = (-7,     5)
```

*Concrete sides for AB, BC, CD, DE.* The window is admitted through the **reverse**
traversal, so the labelling that satisfies Lemma 2's hypothesis is

```
A = v0 = (-249, 212)      AB = side p6 = v6v0
B = v6 = (-7,     5)      BC = side p5 = v5v6
C = v5 = (-39,  250)      CD = side p4 = v4v5
D = v4 = (-168, 192)      DE = side p3 = v3v4
E = v3 = (-109, 189)
```

*Verification of D ∈ int(triangle ABC)*, by exact integer orientation:

```
orient(A,B,D) = +1     orient(B,C,D) = +1     orient(C,A,D) = +1     -> all equal
```

so *D* = v4 lies **strictly inside** triangle *A B C* = triangle(v0, v6, v5). ✔
(The *forward* traversal for this window gives orient = +1, −1, +1 and therefore
fails; this case exercises the reverse branch, confirming the union in §3.2 is not
decorative.)

*Verification of the path hypothesis*, exact integer arithmetic, on the three
non-adjacent pairs (adjacent pairs share an endpoint, which is not an interior point):

```
AB × CD  cross? False      AB × DE  cross? False      BC × DE  cross? False
```

and the five points are pairwise distinct. ✔ **A B C D E is a path.**

*The induced non-intersection graph* on {p₆, p₅, p₄, p₃} × {q₁, q₂, q₃, q₅}
(entry 1 = the two sides are **disjoint**, i.e. an edge of E^D):

```
              q1   q2   q3   q5
   AB = p6     0    0    0    1
   BC = p5     1    0    0    0
   CD = p4     0    0    1    0
   DE = p3     0    1    0    0
```

Every row sum is 1 and every column sum is 1. **This is exactly a perfect matching**
— *AB*–q₅, *BC*–q₁, *CD*–q₃, *DE*–q₂ — with no extra edge and no missing edge.
Černý Lemma 2 says no such **B** exists, so this (graph, class) pair is impossible.
That is precisely the situation in which `L2_ok` returns `False`. ✔

**(ii) Does the code reject anything *more* than that?** An eight-probe battery was
run directly against `L2_ok` (window `W = [0]`, i.e. *P*-sides 0,1,2,3):

| probe | rejected? | wanted |
|---|---|---|
| exact perfect matching on {q₀,q₁,q₂,q₃} | **True** | True |
| matching **plus one extra edge** (p₃ also misses q₀) | **False** | False |
| **missing** matching edge (p₃ misses nothing in the block) | **False** | False |
| two *P*-sides mapped to the **same** *q* (not injective) | **False** | False |
| same matching but the window is **not** in `W` | **False** | False |
| matching on a run of four consecutive sides at a **different** offset | **False** | False |
| …same graph with the **correct** window `W = [1]` | **True** | True |
| matching, plus an extra edge to a *q* **outside** the chosen 4-set | **True** | True |

All eight behave as the published lemma requires. In particular the two failure
modes the brief asked about — rejecting on an *extra* non-intersection edge, and
rejecting on a *missing* matching edge — do **not** occur, and neither does
rejection on wrong path geometry or a wrong triangle condition.

The last row deserves a note: an extra edge to a *Q*-side **outside** the chosen
4-set is correctly *still* a rejection, because Lemma 2 is applied to the set
**B** = {q₀,q₁,q₂,q₃} and Observation 1 of [Č] (p. 218) says the non-intersection
graph of subsets is the *induced* subgraph. Edges leaving the block are irrelevant.
This is the correct reading and the code gets it right.

**(iii) Tried and failed to break it.** I looked for a configuration *allowed* by
Lemma 2 but rejected by the filter, via: (a) windows admitted by the reverse
traversal only — handled, and shown legitimate in §3.2; (b) *Q*-side 4-subsets
containing two *adjacent* sides of *Q*, which might not be "intersection-free" — they
are, since adjacent sides share only an endpoint; (c) blocks where the matching is
perfect but the four *P*-sides are not consecutive — the code only ever takes
`[(i+t)%7 for t in range(4)]`, i.e. consecutive runs, so this cannot arise;
(d) the wrap-around windows *w* = 4, 5, 6 where the run straddles index 0 — the
modular arithmetic is uniform and the vertex indices used by `inside_tri` wrap
identically. Nothing found.

### 3.6 Verdict

**VERIFIED.** The correspondence is an **exact equivalence**, not a similarity: the
code's rejection condition is, term by term, "the induced non-intersection graph of
the four consecutive sides and the four chosen *Q*-sides is a perfect matching", and
the published hypothesis is "the non-crossing graph … forms a perfect matching". All
side hypotheses (path, distinctness, intersection-freeness, strict triangle
interiority) are *established* from simplicity and general position rather than
assumed. The reverse-traversal extension is justified rather than merely plausible.

*(Note for the record: `docs/known-issues.md` states at lines 633–635 that verifying
Černý Lemma 2's exact statement against the paper "remains open" because an earlier
auditor hit a rate limit. **That item can now be closed.** The statement has been
read from `references/cerny-2003.pdf` p. 220 and matches.)*

---

## 4. AKR Lemma 5

### 4.1 Published statement

[AKR-J] p. 1053 (PDF p. 5), verbatim:

> **Lemma 5** Let *p_a* and *p_b* be two sides of *P* that are either consecutive or
> avoiding such that CC(*p_a*) ≠ CC(*p_b*). Then there are two consecutive sides
> *q_i*, *q_{i±1}* of *Q* such that (*p_a*,*q_i*), (*p_b*,*q_{i±1}*) ∈ E^D and
> (*p_a*,*q_{i±1}*), (*p_b*,*q_i*) ∉ E^D. Furthermore, *I*(*p_a*,*p_b*) ∈
> Cone(*q_i*,*q_{i±1}*) or *I*(*q_i*,*q_{i±1}*) ∈ Cone(*p_a*,*p_b*).

Hypotheses, exhaustively:

* *P*, *Q* simple polygons with *m*, *n* sides, **both odd** ([AKR-J] §3, p. 1052);
  *n* odd is used essentially (the closed walk traversing *Q* has odd length, which
  is what feeds Proposition 4).
* *p_a*, *p_b* are sides of the **same** polygon *P*.
* They are **either consecutive or avoiding**. These are the *only* two admissible
  relations; an arbitrary disjoint non-adjacent pair is **not** enough.
* **CC(*p_a*) ≠ CC(*p_b*)** — different connected components of the disjointness
  graph. Used twice in the proof: to guarantee every side of *Q* meets *p_a* or
  *p_b*, and (implicitly) to exclude degeneracies, see §4.5.
* General position per [AKR-J] §3, p. 1052: no vertex of one polygon on the other;
  no three vertices of *P* and *Q* combined on a line; no two sides of *P* and *Q*
  combined parallel (the last is what makes *I*(*s*,*s*′) always exist).

Conclusion, in four parts plus a cone dichotomy:

* *q_i*, *q_{i±1}* are **consecutive** sides of *Q*;
* (*p_a*, *q_i*) ∈ E^D and (*p_b*, *q_{i±1}*) ∈ E^D — two disjointness edges;
* (*p_a*, *q_{i±1}*) ∉ E^D and (*p_b*, *q_i*) ∉ E^D — **two cross non-edges**;
* the cone dichotomy.

**Are the two cross non-edges explicitly stated, or merely forced?** The brief asks
this specifically. **They are stated explicitly, in the conclusion of the lemma, in
*both* the journal and the conference version, verbatim and identically.** They are
*also* re-derived in the proof ("*q_i* intersects *p_b* and does not intersect *p_a*,
while *q_{i±1}* intersects *p_a* and does not intersect *p_b*"). They are *separately*
forced, in the different context of Lemma 7, by the four-different-components
hypothesis — [AKR-J] p. 1056: "Since *a,b,a′,b′* belong to different connected
components of G^D, it follows that the nodes *A, B, A′, B′* … belong to the same four
different connected components. There can be no more edges among these eight nodes,
and they induce a matching in G^D." So the project does **not** need to rely on the
component hypothesis to get the non-edges out of Lemma 5; it has them directly. This
removes one of the two worries recorded under `known-issues.md` K-09 item 2.

### 4.2 The deduction to the project's certificate consequence, written out formally

Write *N*(*p*) = {*j* : (*p*, *q_j*) ∈ E^D} for the neighbourhood of a side *p* of
*P* in the disjointness graph — that is, the set of *Q*-sides **disjoint** from *p*.

> **Claim.** Let *p_a*, *p_b* be sides of *P* that are consecutive or avoiding, with
> CC(*p_a*) ≠ CC(*p_b*). Then there exist *k* ∈ *N*(*p_a*) \ *N*(*p_b*) and
> *k*′ ∈ *N*(*p_b*) \ *N*(*p_a*) with *k*′ ≡ *k* ± 1 (mod 7).
>
> **Proof.** The hypotheses of AKR Lemma 5 are exactly those of the Claim, so the
> Lemma applies and yields an index *i* and a sign ε ∈ {+1, −1} such that, writing
> *k* := *i* and *k*′ := *i* + ε (mod *n*), the four sides *q_k*, *q_{k′}* are
> consecutive sides of *Q* and
>
> * (*p_a*, *q_k*) ∈ E^D, i.e. *k* ∈ *N*(*p_a*);
> * (*p_b*, *q_k*) ∉ E^D, i.e. *k* ∉ *N*(*p_b*);
> * (*p_b*, *q_{k′}*) ∈ E^D, i.e. *k*′ ∈ *N*(*p_b*);
> * (*p_a*, *q_{k′}*) ∉ E^D, i.e. *k*′ ∉ *N*(*p_a*).
>
> The first two give *k* ∈ *N*(*p_a*) \ *N*(*p_b*); the last two give
> *k*′ ∈ *N*(*p_b*) \ *N*(*p_a*). Consecutiveness of *q_k*, *q_{k′}* in the cyclic
> side-order of the *n*-gon *Q* is, by definition, *k*′ ≡ *k* ± 1 (mod *n*). With
> *n* = 7 this is *k*′ ≡ *k* ± 1 (mod 7). ∎

The contrapositive is the filter: if for some admissible pair (*p_a*, *p_b*) in
different components **no** such (*k*, *k*′) exists, the configuration cannot be
realised. Note the deduction consumes *only* the four E^D clauses; the cone
dichotomy is not used here (it is used only for Lemma 7, §5).

Note also that both difference sets are automatically non-empty under the
hypotheses: if *N*(*p_a*) \ *N*(*p_b*) = ∅ then, since *N*(*p_a*) ≠ ∅ by C1, every
neighbour of *p_a* is a neighbour of *p_b*, forcing CC(*p_a*) = CC(*p_b*). The
independent checker `python/validation/check_final_certificate.py:186–188` enforces
non-emptiness explicitly; that is a correct and slightly redundant guard.

### 4.3 Project usage — the two instances

**(a) Consecutive.** `audit_enum.py:80–83`:

```python
    for i in range(7):
        if compP[i]!=compP[(i+1)%7] and not L5_ok(N[i],N[(i+1)%7]): return
    for j in range(7):
        if compQ[j]!=compQ[(j+1)%7] and not L5_ok(NQ[j],NQ[(j+1)%7]): return
```

Applied to all 7 cyclic consecutive pairs, on **both** polygons. The roles of *P*
and *Q* in Lemma 5 are symmetric (AKR themselves apply it in both directions —
[AKR-J] p. 1062 applies it to consecutive pairs *q_{i_j}, q_{i_j+1}* of *Q*), so
this is licensed. Effect: 13,003,620 → 42,238.

**(b) Avoiding.** `audit_enum.py:152–153`:

```python
    okP=[a for a in okP if all(L5_ok(N[i],N[j]) for (i,j) in CD[a][2] if compP[i]!=compP[j])]
    okQ=[b for b in okQ if all(L5_ok(NQ[i],NQ[j]) for (i,j) in CD[b][2] if compQ[i]!=compQ[j])]
```

`CD[a][2]` is the class's stored list of avoiding pairs. Effect: 121 → 0. All 225
certificate cases die here, all on a *P*-side avoiding pair
(`"pair_kind_counts": {"avoiding": 225}`).

The shared predicate, `audit_enum.py:23–29`:

```python
def L5_ok(Na,Nb):
    A=Na&~Nb; B=Nb&~Na
    for j in range(7):
        if A>>j&1:
            for e in (1,-1):
                if B>>((j+e)%7)&1: return True
    return False
```

`A` = *N*(*p_a*) \ *N*(*p_b*), `B` = *N*(*p_b*) \ *N*(*p_a*), and the loop asks for
*j* ∈ A with *j* ± 1 (mod 7) ∈ B. That is the Claim of §4.2, verbatim.

### 4.4 The `avoiding` predicate — independent derivation of the orientation test

AKR's definition, [AKR-J] p. 1052 (PDF p. 4), verbatim:

> We say that *s* and *s*′ are **avoiding** if neither of them contains *I*(*s*,*s*′).
> (This requirement is stronger than just disjointness.)

Deriving the sign test **from scratch**, without reference to the project's code.
Let *s* = *ab* and *s*′ = *cd* be non-adjacent sides, and let *z* = *I*(*s*,*s*′) be
the meet of ℓ(*s*) and ℓ(*s*′) (which exists, since general position forbids parallel
sides).

* *z* ∈ *s* ⟺ ℓ(*s*′) meets *s*. Indeed *z* ∈ ℓ(*s*′) always; and conversely any
  point of ℓ(*s*′) ∩ *s* lies on both lines, hence equals *z*.
* ℓ(*s*′) meets *s* ⟺ ℓ(*s*′) does not strictly separate… more precisely, since
  general position ("no three combined vertices on a line") forbids *a* or *b* from
  lying **on** ℓ(*s*′), we have ℓ(*s*′) ∩ *s* ≠ ∅ ⟺ *a* and *b* lie on **opposite**
  open sides of ℓ(*s*′) ⟺ χ(*c*,*d*,*a*) ≠ χ(*c*,*d*,*b*).
* Symmetrically *z* ∈ *s*′ ⟺ χ(*a*,*b*,*c*) ≠ χ(*a*,*b*,*d*).

Hence

> **avoiding(*s*, *s*′) ⟺ χ(*c*,*d*,*a*) = χ(*c*,*d*,*b*) **and**
> χ(*a*,*b*,*c*) = χ(*a*,*b*,*d*).**

Two independent corroborations of this derivation:

* It confirms AKR's parenthetical "stronger than just disjointness": *s* and *s*′ are
  **disjoint** iff they do not properly cross, i.e. iff the two sign equalities hold
  in the **OR**; *avoiding* is the same two equalities in the **AND**. So
  avoiding ⟹ disjoint, strictly. A pair that is disjoint but not avoiding is exactly
  a *stabbing* pair ([AKR-J] Fig. 4 caption, p. 1054; formalised on p. 1064: "*s*
  stabs *s*′ if *I*(*s*,*s*′) ∈ *s*′").
* The parallel case: if ℓ(*s*) ∥ ℓ(*s*′), there is no *z* at all and the pair is
  vacuously avoiding; both sign equalities hold automatically, so the predicate
  returns the right answer. (General position excludes this anyway.)

The code, `audit_enum.py:114–120` with `chiro.py:71–72`:

```python
    AV=[]
    for i in range(7):
        for j in range(i+1,7):
            if (j-i)%7 in (1,6): continue
            a,b,c,dd=i,(i+1)%7,j,(j+1)%7
            if (not line_cuts_seg(chi,c,dd,a,b)) and (not line_cuts_seg(chi,a,b,c,dd)):
                AV.append((i,j))

def line_cuts_seg(chi,c,d,a,b):
    return chi(c,d,a)!=chi(c,d,b)
```

This is the AND of the two sign equalities, restricted to non-adjacent pairs
(`(j-i)%7 in (1,6): continue`). **It matches the derivation exactly.** The
coordinate version `python/validation/validate.py:104–111` with
`python/core/geom.py:32–35` is the same predicate over exact integers. Re-deriving
the `avoiding_pairs` of all 14 stored classes from their chirotopes with my own
implementation reproduced the stored lists 14/14.

### 4.5 Hypothesis matching

| Published hypothesis | Where established | Status |
|---|---|---|
| *m*, *n* odd | both 7 | **Established** |
| *p_a*, *p_b* consecutive **or** avoiding | consecutive case: index adjacency, free. avoiding case: the class's stored `avoiding_pairs`, an order-type invariant of *P*. | **Established** |
| CC(*p_a*) ≠ CC(*p_b*) | `compP[i]!=compP[j]` guard, from union–find on the enumerated graph. | **Established** |
| no vertex of one polygon on the other | Step 0 | **Established there — see §7** |
| no three combined vertices collinear | Step 0 | **Established there — see §7** |
| no two combined sides parallel | Step 0; needed for *I*(*s*,*s*′) to exist | **Established there — see §7** |
| *P* is the polygon whose class is `a` | the class is only *assumed* to be one of the 14; the code requires the L5 test to fail for **every** still-viable class before eliminating (`if not okP or not okQ: continue`). | **Sound direction** — elimination is conservative |

One hypothesis AKR do **not** discuss, checked here: in the *avoiding* case,
*I*(*p_a*, *p_b*) is not a polygon vertex, and the closed-walk argument would be
ill-defined if some side of *Q* passed exactly through it (three lines spanned by
polygon vertices concurrent — **not** excluded by AKR's stated general position).
This turns out to be automatically impossible: if a side *q* of *Q* contains
*I*(*p_a*, *p_b*), then since *q* meets ℓ(*p_a*) only there and *p_a* does not
contain that point (the pair is avoiding), *q* ∩ *p_a* = ∅; symmetrically
*q* ∩ *p_b* = ∅; so *q* is a common neighbour and CC(*p_a*) = CC(*p_b*),
contradicting the hypothesis. The same argument disposes of a *Q*-**vertex** landing
there. So the gap closes, but it closes by an argument the paper does not give.
Recorded as a (true) unstated step in the source.

### 4.6 Adversarial check

* *Tried:* feeding `L5_ok` a pair that is **disjoint but not avoiding** (a stabbing
  pair). AKR Lemma 5 does **not** cover such pairs, so applying the filter to them
  would be unsound. The code only iterates over `CD[a][2]`, which is built with the
  **AND** of the sign equalities, i.e. genuinely avoiding pairs. Checked in my
  reimplementation: replacing the AND by an OR ("disjoint") changes the stored pair
  lists. The shipped lists match the AND. **No unsound extension.**
* *Tried:* an **adjacent** pair sneaking into the avoiding list (adjacent sides share
  an endpoint and are covered by the "consecutive" branch, but *I*(*s*,*s*′) is then
  the shared vertex and both segments contain it, so they are never "avoiding"). The
  guard `(j-i)%7 in (1,6): continue` excludes them. Consistent either way.
* *Tried:* dropping the `CC ≠ CC` guard would make the filter apply where the lemma
  does not. The guard is present in all four call sites.
* *Tried:* a configuration **allowed** by Lemma 5 but rejected. `L5_ok` returns
  `True` as soon as one witness exists, and Lemma 5 asserts a witness exists; so a
  rejection means no witness exists, which the lemma forbids. The implication runs
  the right way.
* *Tried:* the "±1 mod 7" wrap. `(j+e)%7` for `e ∈ {1,-1}` is the correct cyclic
  adjacency on a 7-gon's side indices; `(j-1)%7` in Python is non-negative. Checked.
* *Tried:* relabelling. The class data is stored only for the 14 *canonical*
  representatives, but the graph enumeration is over **all** labelled graphs with no
  symmetry reduction. See §6.5 — this is exactly why the absence of symmetry
  reduction is load-bearing, and it checks out.

### 4.7 Verdict

**VERIFIED — consecutive case. VERIFIED — avoiding case.**
Statement transcribed exactly (and identically in both published versions); the two
cross non-edges are explicit in the published conclusion rather than inferred; the
derivation to the neighbour-adjacency form is elementary and written out above; the
`avoiding` predicate was re-derived from AKR's definition without reference to the
code and agrees with it, including on the 14 stored classes.

---

## 5. AKR Lemma 7 ⟹ *H* bipartite — the highest-priority item

### 5.1 Published statement, verbatim

[AKR-J] p. 1055 (PDF p. 7):

> **Lemma 7** Let *p_i*, *p_{i+1}*, *p_j*, *p_{j+1}* be two pairs of consecutive
> sides of *P* that belong to four different connected components of G^D. Then it is
> impossible that both *p_i*, *p_{i+1}* and *p_j*, *p_{j+1}* are hooked or that both
> pairs are hooking.

The definitions it depends on, [AKR-J] p. 1054 (PDF p. 6), verbatim:

> Let *p_i*, *p_{i+1}* be two sides of *P* such that CC(*p_i*) ≠ CC(*p_{i+1}*). Then
> by Lemma 5 there are sides *q_j*, *q_{j±1}* of *Q* such that (*p_i*,*q_j*),
> (*p_{i+1}*,*q_{j±1}*) ∈ E^D. We say that such a pair *q_j*, *q_{j±1}* is
> **associated** to *p_i*, *p_{i+1}*. By Lemma 5 we have *I*(*q_j*,*q_{j±1}*) ∈
> Cone(*p_i*,*p_{i+1}*) or *I*(*p_i*,*p_{i+1}*) ∈ Cone(*q_j*,*q_{j±1}*). If the first
> condition holds we say that *p_i*, *p_{i+1}* is **hooking** and *q_j*, *q_{j±1}* is
> **hooked**, see Fig. 5. In the second case we say that *p_i*, *p_{i+1}* is hooked
> and *q_j*, *q_{j±1}* is hooking. **Note that it is possible that a pair of
> consecutive sides is associated with several pairs and that it is both hooking and
> hooked** (with respect to two different pairs from the other polygon or even with
> respect to a single pair, as in Fig. 5c).

Figure 5 (p. 1055) was inspected as a rendered image and confirms the reading: in
(a) the *P*-wedge contains the *Q*-apex; in (b) the reverse; in (c) each wedge
contains the other's apex, so the pair is simultaneously hooking and hooked with
respect to one and the same association.

**Key structural point.** *Hooking*/*hooked* is defined **per association**, but the
sentence "we say that *p_i*, *p_{i+1}* is hooking" attaches the word to the **pair**.
The quoted Note makes the intended resolution explicit: a pair "is both hooking and
hooked" when *some* association makes it hooking and *some* association makes it
hooked. That is the **existential** reading, and it is the only reading under which
the Note is even meaningful.

### 5.2 The project's *H*, defined precisely

Fix a polygon *P* and the disjointness graph G^D of the configuration.

* **Relevant consecutive pair.** For *i* ∈ ℤ₇ write *e_i* := (*p_i*, *p_{i+1}*).
  Call *e_i* **relevant** iff CC(*p_i*) ≠ CC(*p_{i+1}*).
* **Vertices of *H*:** *V*(*H*) := { *e_i* : *e_i* relevant }.
* **Edges of *H*:** *e_i* ~_H *e_k* iff *i* ≠ *k*, the two pairs share no side
  (equivalently *k* − *i* mod 7 ∉ {0, 1, 6}), and
  |{CC(*p_i*), CC(*p_{i+1}*), CC(*p_k*), CC(*p_{k+1}*)}| = 4.
* **Status set.** For a relevant *e*, let *A*(*e*) be the set of pairs of consecutive
  sides of *Q* associated to *e*, and put

  *S*(*e*) := { hooking : ∃α ∈ *A*(*e*) with *I*(α) ∈ Cone(*e*) }
            ∪ { hooked  : ∃α ∈ *A*(*e*) with *I*(*e*) ∈ Cone(α) } ⊆ {hooking, hooked}.

### 5.3 The five checks the brief asks for, against the paper

**(1) Every relevant consecutive pair has ≥ 1 associated pair.** ✔ — [AKR-J] p. 1054,
first sentence of the definition: "Then **by Lemma 5** there are sides *q_j*, *q_{j±1}*
of *Q* such that …". The hypothesis CC(*p_i*) ≠ CC(*p_{i+1}*) is exactly relevance,
and consecutive sides are always an admissible Lemma-5 pair. So *A*(*e*) ≠ ∅.

**(2) Every such association gives a hooking/hooked status.** ✔ — the "Furthermore"
clause of Lemma 5 is a *dichotomy*: *I*(*p_a*,*p_b*) ∈ Cone(*q_i*,*q_{i±1}*) **or**
*I*(*q_i*,*q_{i±1}*) ∈ Cone(*p_a*,*p_b*). One of the two always holds, so each
association contributes at least one element to *S*(*e*), hence *S*(*e*) ≠ ∅.
**Caveat, flagged:** the dichotomy is guaranteed by Lemma 5 for the pair Lemma 5
*produces*. AKR's definition sentence defines "associated" using only the two E^D
edges, and then asserts the dichotomy for any such pair. See §5.6 — this is a real
looseness in the source, but it does not damage the project.

**(3) A pair can genuinely be BOTH.** ✔ — stated outright in the Note, and realised
in Fig. 5c, "even with respect to a single pair". So |*S*(*e*)| = 2 is possible and
must be handled, not assumed away.

**(4) If two *H*-adjacent pairs involve four distinct components, L7 forbids
both-hooking.** ✔ — this is half of the literal conclusion.

**(5) L7 also forbids both-hooked.** ✔ — the other half ("it is impossible that both
… are hooked **or** that both pairs are hooking"). The proof handles it by symmetry:
[AKR-J] p. 1059, "Suppose now that *a,b* and *a′,b′* are hooked with respect to *A,B*
and *A′,B′*, respectively. Then *A,B* is hooking with respect to *a,b* and *A′,B′* is
hooking with respect to *a′,b′*. Recall that *A, B, A′*, and *B′* belong to four
different connected components. Hence, this case can be handled as above, after
exchanging the capital letters with the small letters (i.e., exchanging *P* and *Q*)."

### 5.4 Proof of the bipartiteness chain

> **Proposition.** Under the existential reading of §5.1, *e* ~_H *e*′ ⟹
> *S*(*e*) ∩ *S*(*e*′) = ∅.
>
> **Proof.** Let *e* = *e_i*, *e*′ = *e_k* with *e* ~_H *e*′. By the edge definition
> the four sides *p_i*, *p_{i+1}*, *p_k*, *p_{k+1}* lie in four different connected
> components of G^D; in particular they are four *distinct* sides. These are exactly
> Lemma 7's hypotheses.
> Suppose hooked ∈ *S*(*e*) ∩ *S*(*e*′). Under the existential reading this says
> precisely that *e* is hooked and *e*′ is hooked, which Lemma 7 declares impossible.
> Suppose hooking ∈ *S*(*e*) ∩ *S*(*e*′). Symmetrically impossible.
> Since {hooking, hooked} has only these two elements, the intersection is empty. ∎

> **Corollary (a).** If *S*(*e*) = {hooking, hooked} then *e* is isolated in *H*.
> **Proof.** For any *H*-neighbour *e*′ we would need *S*(*e*′) ⊆ {hooking,hooked} \
> *S*(*e*) = ∅, contradicting §5.3(2). ∎

> **Corollary (b).** Every non-isolated vertex of *H* has |*S*(*e*)| = 1, and every
> edge of *H* joins vertices with *opposite* singleton statuses.
> **Proof.** Non-isolated + Corollary (a) gives |*S*(*e*)| ≤ 1; §5.3(2) gives ≥ 1.
> Two non-empty disjoint singletons in a 2-set are the two distinct singletons. ∎

> **Corollary (c).** *H* is bipartite.
> **Proof.** Colour each non-isolated *e* by the unique element of *S*(*e*), and each
> isolated *e* arbitrarily. By Corollary (b) every edge is bichromatic. A graph with
> a proper 2-colouring is bipartite. ∎

Note that this is precisely AKR's **own** use of Lemma 7. [AKR-J] p. 1059, proof of
Lemma 8, partitions the pairs into "*H*⁺ … the subset of these pairs that are
**hooked**" and "the complementary subset *H*⁻ of pairs that are **not hooked, but
hooking**", and applies Lemma 7 within each class. That partition *is* the
2-colouring, and it only makes sense under the existential reading. So the project's
translation reproduces AKR's own argument pattern, one step more explicitly.

### 5.5 **New finding: the SoCG version settles the existential reading**

`known-issues.md` K-09 item 1 records the existential reading of "is hooking" as the
project's single largest interpretive risk, recommending confirmation by
correspondence with the authors. **The conference version resolves it in the
project's favour, and this appears not to have been noticed.**

[AKR-C] p. 1:6, opening of the proof of Lemma 7, verbatim:

> **Proof.** Suppose first that both pairs *p_i, p_{i+1}* and *p_j, p_{j+1}*, are
> hooking and let *q_{i′}, q_{i′±1}* and *q_{j′}, q_{j′±1}* be their associated
> (hooked) pairs such that: (*p_i*,*q_{i′}*), (*p_{i+1}*,*q_{i′±1}*) ∈ E^D,
> (*p_j*,*q_{j′}*), (*p_{j+1}*,*q_{j′±1}*) ∈ E^D, **I(*q_{i′}*,*q_{i′±1}*) ∈
> Cone(*p_i*, *p_{i+1}*) and I(*q_{j′}*,*q_{j′±1}*) ∈ Cone(*p_j*, *p_{j+1}*)**.

The two bolded clauses say explicitly that the associated pairs are **chosen to
witness the hooking**. That is only possible if "both pairs are hooking" means
"each has *some* association witnessing hooking" — i.e. the **existential** reading.

The journal version **dropped** these two clauses ([AKR-J] p. 1055):

> Let *q_{i′}, q_{i′±1}* and *q_{j′}, q_{j′±1}* be associated (hooked or hooking)
> pairs of *p_i, p_{i+1}* and *p_j, p_{j+1}*, respectively, such that
> (*p_i*,*q_{i′}*), (*p_{i+1}*,*q_{i′±1}*) ∈ E^D and (*p_j*,*q_{j′}*),
> (*p_{j+1}*,*q_{j′±1}*) ∈ E^D. Recall that the existence of such pairs follows from
> Lemma 5.

Under this phrasing alone the very next sentence — "Suppose first that both *a,b*
and *a′,b′* are hooking. Hence, *I*(*A*,*B*) ∈ Cone(*a*,*b*) and *I*(*A′*,*B′*) ∈
Cone(*a′*,*b′*)" — is a *non sequitur*, because *A,B* was not chosen to witness
anything. The journal edit is an **expositional regression**; the conference text
supplies the missing selection. Reading the two together, the intended meaning is
unambiguous and is exactly the project's reading.

This materially de-risks K-09 item 1. It does not eliminate the need for review,
because it is still an inference about authors' intent across two versions rather
than a statement either version makes in one place.

### 5.6 Two residual defects **in the source** (not in the project's translation)

**(i) AKR's Observation 6 is unproved, and is false under AKR's literal definition of
"associated".** [AKR-J] p. 1054:

> **Observation 6** (Axis Property) If the pair *p_i*, *p_{i+1}* and the pair *q_j*,
> *q_{j±1}* are associated such that (*p_i*,*q_j*), (*p_{i+1}*,*q_{j±1}*) ∈ E^D, then
> the line through *I*(*p_i*,*p_{i+1}*) and *I*(*q_j*,*q_{j±1}*) separates *p_i* and
> *q_{j±1}* on the one side from *p_{i+1}* and *q_j* on the other side.

No proof is given, in either version. And the project's counterexample
(`known-issues.md` K-09 item 2, from the transcript) is **correct**; I re-verified it
by hand:

```
a = p_i     = [(0,0), (1,0)]        b = p_{i+1} = [(0,0), (0,1)]     I(a,b) = (0,0)
A = q_j     = [(1,-1),(2,-1)]       B = q_{j±1} = [(1,-1),(1,-2)]    I(A,B) = (1,-1)
axis = line through (0,0) and (1,-1), i.e. y = -x
```

Here (*a*, *A*) ∈ E^D and (*b*, *B*) ∈ E^D, so the displayed hypothesis of
Observation 6 holds. But every point of *a* and every point of *b* satisfies
*x* + *y* ≥ 0, so *a* and *b* lie on the **same** closed side of the axis.
Observation 6 fails.

The resolution is that "associated" must be read as "arising from Lemma 5" — i.e.
carrying also the two cross non-edges and the cone dichotomy — not as the bare
two-edge condition the definition sentence literally states. (The counterexample
does not survive that reading: *a* ∩ *B* = ∅, so (*a*, *B*) ∈ E^D, violating the
required non-edge.) The journal's insertion of the word "such" — "We say that
**such** a pair *q_j*, *q_{j±1}* is associated" — is a nod in that direction but does
not make it precise. **Observation 6 is used repeatedly inside Lemma 7's case
analysis** (cases 1–12, and again in §8.2 on pp. 1069), so this is not cosmetic: the
proof of the project's principal external dependency rests on an unproved statement
that is mis-stated as published.

**(ii) Lemma 7's proof is a 12-case, figure-driven argument.** Cases 4, 8 and 12
reason about schematic drawings in which "some line segments are drawn schematically
as curves" ([AKR-J] p. 1057). This is the project's own stated worry
(`literature-notes.md:96–98`). I did not re-verify the twelve cases.

**Mitigation, and it is a strong one.** [AKR-J] §10.2, p. 1076, verbatim:

> We have **independently confirmed Lemma 7** concerning the intersection structure of
> pairs of associated pairs of sides, which is our principal workhorse, **by a computer
> enumeration.** […] we enumerated all 158830 arrangements of eight lines. […] After a
> few days of computing (and several weeks of programming), the result was that there
> were, up to isomorphism, **14 configurations** with the required intersection
> pattern. In 13 of them, some associated pair did not conform to the hooking/hooked
> pattern of Lemma 5. The remaining configuration is the one in Fig. 6.

So the authors themselves machine-checked the exact statement the project leans on.
This section does not appear in [AKR-C]; it is journal-only. ~~The project's docs do
not mention it anywhere, and it should be cited~~ — **acted on; this sentence is
stale as of 2026-09-14.** AKR §10.2 is now cited in `literature-notes.md`,
`known-issues.md` K-09, `akr-l7-human-review.md` §E, `a7-independent-proof.md` and
`a7-specification.md`. It remains the best available independent evidence for the
project's single most load-bearing import.
*(The numeral 14 here is AKR's count of eight-line configurations and is unrelated to
the project's 14 exceptional heptagon classes. Coincidence; do not conflate.)*

### 5.7 Code/filter mapping

`audit_enum.py:30–48`:

```python
def H_bip(comp):
    V=[i for i in range(7) if comp[i]!=comp[(i+1)%7]]
    adj={i:[] for i in V}
    for a in range(len(V)):
        for b in range(a+1,len(V)):
            i,k=V[a],V[b]
            if (k-i)%7 in (1,6): continue
            if len({comp[i],comp[(i+1)%7],comp[k],comp[(k+1)%7]})==4:
                adj[i].append(k); adj[k].append(i)
    col={}
    for s in V:
        if s in col: continue
        col[s]=0; st=[s]
        while st:
            u=st.pop()
            for w in adj[u]:
                if w not in col: col[w]=1-col[u]; st.append(w)
                elif col[w]==col[u]: return False
    return True
```

Line-by-line against §5.2:

* `V` = relevant pairs. ✔ Matches Lemma 5's applicability condition exactly.
* `if (k-i)%7 in (1,6): continue` — excludes index-adjacent pairs, i.e. pairs sharing
  a side. **This guard is logically redundant**: if *e_i* and *e_{i+1}* share side
  *p_{i+1}*, the multiset of four component labels has at most 3 distinct values, so
  the `len(...)==4` test already fails. Redundant but *conservative* — it can only
  remove edges, which can only make *H* easier to 2-colour, which can only produce
  *fewer* rejections. Not a soundness risk.
* `len({...})==4` — literally Lemma 7's "belong to four different connected
  components". ✔ No extra edges beyond what Lemma 7 licenses.
* DFS 2-colouring, `return False` on a monochromatic edge. Bipartiteness is exactly
  "a proper 2-colouring exists", and Corollary (c) supplies one, so a non-bipartite
  *H* is impossible. Rejection is sound. ✔
* Applied to `compP` **and** `compQ` (`audit_enum.py:84`). Lemma 7 is stated for
  pairs of sides of *P*, but the setup is symmetric in *P* and *Q* and AKR themselves
  apply it to *Q*-pairs in Lemma 8 ([AKR-J] p. 1059). ✔ Licensed.

There is **no** `hooking`/`hooked` variable in the codebase; the concepts live only
in the derivation. That is appropriate — *S*(*e*) is not computable from the
disjointness graph alone, and the code never needs it, only the Proposition's
consequence.

### 5.8 Adversarial check

* **Does status attach to a PAIR or to a particular ASSOCIATION?** To an association
  *primitively*, to the pair *existentially*. Confirmed from the Note (§5.1) and,
  decisively, from [AKR-C]'s explicit witness selection (§5.5). This was the single
  point most likely to break the argument, and it holds.
* **Can different associations give different statuses?** Yes — that is exactly what
  the Note says, and it is why *S*(*e*) is a *set* and why Corollary (a) is needed.
  The project's derivation handles this correctly; a naive version that assumed a
  unique status per pair would be wrong, and this one does not.
* **Does published L7 quantify strongly enough?** Yes, *given* the existential
  reading: the Proposition needs "hooked ∈ *S*(*e*) and hooked ∈ *S*(*e*′) ⟹ ⊥",
  which is literally L7. If instead "is hooking" were read *universally* ("every
  association is hooking"), L7 would be a weaker statement and the Proposition would
  **fail** — a pair with *S* = {hooking, hooked} would satisfy neither "all hooking"
  nor "all hooked", L7 would say nothing about it, and *H* could contain a
  monochromatic edge. So the reading is not a stylistic choice; the entire filter
  turns on it. This is why the §5.5 finding matters.
* *Tried:* an *H*-edge that L7 does not license. Would require an edge without four
  distinct components. The code's condition is exactly that. None.
* *Tried:* an *H*-vertex with *S*(*e*) = ∅, which would break Corollary (b). Requires
  a relevant pair with no associated pair, contradicting Lemma 5. None.
* *Tried:* the triangle case. With |E| = 7 the disjointness graph is a perfect
  matching, giving **7 components, each a single matched pair** [corrected
  2026-09-13: the original text said "14 singleton components", which is wrong --- a
  perfect matching on 7+7 has 7 components of size 2 and no singletons. The
  argument is unaffected, since what it needs is that distinct sides of *P* lie in
  distinct components, and each component contains exactly one *P*-side]; then
  every *e_i* is relevant and every
  non-index-adjacent pair has four distinct components, so *H* has 7 vertices and 14
  edges and contains triangles. Verified directly: `H_bip([0,1,2,3,4,5,6])` returns
  `False` with |E(*H*)| = 14. This is `proof-outline.md` Step 9's argument that
  *I* = 42 is impossible, and it checks out.
* *Tried:* an *H* with no edges at all (e.g. only 3 components) — returns `True`, no
  rejection. Correct.

### 5.9 Verdict

**PROBABLY CORRECT — HUMAN REVIEW STILL DESIRABLE.**

The *translation* (Lemma 7 ⟹ *H* bipartite) is, in my assessment, correct, and the
derivation in §5.4 is complete and rigorous given the existential reading. The code's
*H* matches the definition in §5.2 term for term, adds no edges Lemma 7 does not
license, and its one extra guard is redundant-and-conservative. The existential
reading, previously the project's chief admitted risk, is now **explicitly evidenced**
by the SoCG proof text (§5.5).

I stop short of VERIFIED for reasons that lie in the **source**, not the project:

1. Observation 6, used throughout Lemma 7's proof, is **unproved** and is **false as
   literally stated** under AKR's own definition of "associated" (§5.6(i)). The
   repaired reading is surely what was meant, but the published lemma's proof is, as
   printed, resting on a false auxiliary claim.
2. Lemma 7's proof is a 12-case figure-driven argument that I did not re-verify.
3. The existential reading is established by reading two versions against each other
   rather than from a single unambiguous sentence.

Item 2 is substantially mitigated by AKR's own computer verification (§5.6), which
the project should cite. Items 1 and 3 are the right subject of an author query
(§10).

---

## 6. STRICT vs LOOSE — the exceptional condition

### 6.1 The two readings

For a 4-element set *S* of sides of *P*:

* **STRICT:** ∀ℓ ( ℓ ∩ *V*(*P*) = ∅ ⟹ ℓ misses some side in *S* ).
  Equivalently: no **vertex-avoiding** line meets all four sides.
* **LOOSE:** no line at all meets all four **closed** sides.

LOOSE ⟹ STRICT (it quantifies over strictly more lines), so
{*S* : STRICT fails} ⊆ {*S* : LOOSE fails}. A heptagon is *exceptional* when the
condition fails for **every** 4-subset of its sides. The project measures:

| reading | exceptional labelled heptagons |
|---|---|
| **STRICT** (used) | **16** (in 14 classes up to dihedral relabelling) |
| LOOSE | **2,268** |

differing on 2,252 objects (`independent/order_type_audit/run_audit.log:31–44`;
`known-issues.md` K-13). Had LOOSE been implemented the downstream enumeration would
have been infeasible, so the question "which does Lemma A actually need?" is
existential for the project. It is treated here as the brief demands.

### 6.2 What Lemma A actually needs

Project Lemma A, `docs/proof-outline.md:47–48`:

> If *S* ⊆ sides(*P*) is such that **every line disjoint from *V*(*P*)** misses some
> member of *S*, then |E| ≥ *n* + (*m* − |*S*|).

Its proof has exactly two edge families:

1. **For each side *q_j* of *Q*** (there are *n* = 7): the hypothesis is applied to
   the line ℓ(*q_j*). It yields a side *p* ∈ *S* with ℓ(*q_j*) ∩ *p* = ∅, hence
   *q_j* ∩ *p* = ∅, hence (*p*, *q_j*) ∈ E. These *n* edges have pairwise distinct
   *Q*-endpoints.
2. **For each side *p* ∉ *S*** (there are *m* − |*S*| = 3): Černý L1 yields a side
   *q* of *Q* with *p* ∩ *q* = ∅. These *m* − |*S*| edges have pairwise distinct
   *P*-endpoints, all **outside** *S*, so they are distinct from the family-1 edges
   (whose *P*-endpoints lie **inside** *S*).

Total |E| ≥ *n* + (*m* − |*S*|) = 7 + 3 = **10**, and by parity (|E| odd, since
*I* = 49 − |E| is even for two closed curves in general position) |E| ≥ **11**, hence
*I* ≤ **38**.

**The only lines the hypothesis is ever instantiated at are the ℓ(*q_j*).** There is
no other appeal to it anywhere in the argument. This is the whole ballgame.

### 6.3 Proof that STRICT is sufficient

> **Claim.** Under the general-position regime of [AKR-J] §3 (p. 1052), every
> supporting line of a side of *Q* is disjoint from *V*(*P*). Consequently the STRICT
> hypothesis suffices for Lemma A.
>
> **Proof.** [AKR-J] §3 assumes "no three vertices of *P* and *Q* combined lie on a
> line". Let *q_j* be a side of *Q* with endpoints *w*, *w*′ ∈ *V*(*Q*). Then
> ℓ(*q_j*) is *the* line through *w* and *w*′. Suppose some *v* ∈ *V*(*P*) lay on
> ℓ(*q_j*). Then *v*, *w*, *w*′ would be three vertices of *P* and *Q* combined lying
> on a line — excluded. Hence ℓ(*q_j*) ∩ *V*(*P*) = ∅. ∎
>
> Now let *S* be a 4-set satisfying STRICT and let *q_j* be any side of *Q*. By the
> Claim ℓ(*q_j*) is vertex-avoiding, so STRICT applies to it and gives *p* ∈ *S* with
> ℓ(*q_j*) ∩ *p* = ∅. Since *q_j* ⊆ ℓ(*q_j*), also *q_j* ∩ *p* = ∅. That is exactly
> family 1 of §6.2. ∎

So **STRICT is sufficient. This is not a failure — it is the correct reading, and it
is also the sharpest one.** The LOOSE phrasing would have been *sound but far weaker*;
implementing it would have cost 2,252 spurious exceptional objects for nothing.

AKR make the same observation in the other direction in the conference version,
[AKR-C] p. 1:2: "we assume that the vertices of *P* and *Q* are in general position
(no three of them on a line), **and so every intersection point between *P* and *Q*
is an interior point of two polygon sides**." That deduction is the same one as the
Claim above.

**Why the gap is exactly 2,252 and why it is harmless.** The 2,252 differing objects
are 4-sets for which transversal lines exist but *every* transversal passes through a
vertex of *P*. Such a line can never be an ℓ(*q_j*), because ℓ(*q_j*) is determined by
two *Q*-vertices and cannot contain a *P*-vertex. The STRICT/LOOSE distinction is
precisely the distinction between "some line" and "some line of the kind that can
actually occur", and the argument only ever meets the latter kind.

**A third reading, for completeness.** Černý's own Corollary 1 (p. 226, PDF p. 10)
states the pentagon analogue as "no line **intersects** all of these four segments",
where *intersects* means *shares an interior point*. That is a third condition,
strictly between STRICT and LOOSE. It is not what the project implements and not what
Lemma A needs; STRICT is weaker than it (hence gives fewer exceptional objects) and
is still sufficient, so nothing is lost.

### 6.4 Code/filter mapping

`python/core/chiro.py:75–80` enumerates the topes:

```python
def halfplane_subsets(chi,n):
    out={frozenset(),frozenset(range(n))}
    for i,j in permutations(range(n),2):
        L=frozenset(k for k in range(n) if k!=i and k!=j and chi(i,j,k)>0)
        out.add(L); out.add(L|{i}); out.add(L|{j}); out.add(L|{i,j})
    return out
```

This is the standard enumeration of the sets "points strictly on one side of a line":
every such set is realised by a line through two of the points, perturbed in one of
four ways, and both orientations are covered by using `permutations` rather than
`combinations`. The crossing set of a tope *A* is then, `audit_enum.py:106–108`,

```python
        for s in range(7):
            if ((s in A)!=(((s+1)%7) in A)): m|=1<<s
```

i.e. side *s* is crossed iff its two endpoints are **strictly separated**. A line
through a vertex is never modelled — which is exactly right, because STRICT quantifies
only over vertex-avoiding lines, and for such a line "meets the closed side", "meets
the open side" and "strictly separates the endpoints" all coincide.

Exceptionality, `python/classification/audit_ot.py:69–74`: `cov4 == 35` (every one of
the 35 4-subsets is contained in some crossing set) together with `cov3 == 35`.

**Does the code reject only what the published result forbids?** The direction of use
is: *not* exceptional ⟹ *I* ≤ 38 ⟹ the configuration is not a 40-crossing
counterexample. So the code must not classify as *non-exceptional* any polygon that
is in fact exceptional in the sense Lemma A needs. By §6.3, STRICT-non-exceptional
⟹ Lemma A applies. ✔ Sound.

### 6.5 Adversarial check

* *Tried:* a 4-set where every transversal passes through a *P*-vertex, so STRICT
  holds but LOOSE fails — i.e. one of the 2,252. Lemma A then still applies via §6.3
  because ℓ(*q_j*) can never be such a transversal. **Not a counterexample.**
* *Tried:* whether "vertex-avoiding line meets all four open segments" is really an
  order-type invariant, since the profiles are stored per chirotope. It is: in the
  dual, the lines crossing a segment form an open double wedge determined by the duals
  of its endpoints, and non-emptiness of an intersection of such wedges is a
  combinatorial property of the dual line arrangement, which is determined by the
  chirotope. The tope enumeration above computes it directly. ✔
* *Tried:* completeness of `halfplane_subsets`. Re-implemented independently and
  re-derived all 14 stored profiles' `M_set` and `maximal_crossing_sets` — 14/14 match,
  and all 14 are STRICT-exceptional under my own code. ✔
* *Tried:* **the relabelling hazard.** Class data is stored only for 14 *canonical*
  representatives, but a real *P* may be a dihedral relabelling of one. The code
  checks compatibility of a labelled graph *N* only against the *unrelabelled* 14.
  Could a real configuration be wrongly eliminated? **No**, and the reason is that
  `rec` enumerates **all** 13,003,620 labelled graphs with no symmetry reduction: for
  any configuration, choose a dihedral relabelling σ_P of *P*'s sides carrying *P* to
  its stored representative, and independently σ_Q for *Q*; the graph *N* transforms
  to *N*″ = *N* ∘ (σ_P, σ_Q), which is still a min-degree-≥1, 9-edge bipartite graph
  and therefore *is* enumerated. At *N*″ both classes are the canonical ones and the
  filters are applied with the right data. Since **all** graphs die, *N*″ dies. ✔
  *This makes the absence of symmetry reduction load-bearing rather than merely
  wasteful, and it should be stated explicitly in the write-up — it currently is not.*
* *Tried:* whether the "*m* − |*S*|" family could collide with the "*n*" family. It
  cannot: their *P*-endpoints are respectively outside and inside *S*. ✔
* *Tried:* the parity step |E| ≥ 10 ⟹ |E| ≥ 11. Needs *I* even, which needs all
  intersections to be proper transversal crossings — supplied by general position
  (§7). Noted as a dependency.

### 6.6 Verdict

**VERIFIED.** STRICT is exactly the hypothesis Lemma A needs, it is **sufficient**,
the proof is given in §6.3, and the implementation computes it correctly (independently
reproduced). **No major failure here.** The project's mid-session repair recorded in
`known-issues.md` K-13 was correct and is, on this audit, the single best judgement
call in the project.

---

## 7. General-position reduction

### 7.1 What the project needs

> If a configuration of two simple heptagons with 40 boundary intersection points
> exists, then one exists in the project's general-position regime with ≥ 40 proper
> crossings.

The target regime, from [AKR-J] §3 p. 1052: (G1) finitely many intersection points /
no overlapping sides; (G2) no vertex of one polygon on the other polygon; (G3) no
three vertices of *P* and *Q* combined on a line; (G4) no two sides of *P* and *Q*
combined parallel. Plus simplicity of both polygons.

### 7.2 The definition of *f*(*m*,*n*) in both source papers — they differ

* **[AKR-J]** p. 1050: "We are interested in the maximum number of **intersection
  points of the boundaries** of *P* and *Q*, hence we assume that this number is
  finite, that is, there are no sides of *P* and *Q* that overlap." **No general
  position is assumed in the definition**; §9 discharges it.
* **[AKR-C]** p. 1:1, abstract: "What is the maximum number of intersections of the
  boundaries of a simple *m*-gon and a simple *n*-gon, **assuming general position**?"
  and p. 1:1 body: "For simplicity we **always assume** general position in the sense
  that no three vertices (of *P* and *Q* combined) lie on a line and no two sides (of
  *P* and *Q* combined) are parallel." **General position is part of the definition.**
* **[Č]** p. 218: "Intersections of two polygons are the intersections of segments
  which form their boundaries", with *intersect* = share an interior point, under a
  blanket "all the end-points of all the segments are in general position". So Černý's
  *f* is also a general-position quantity, and shared endpoints are *not* counted.

So the journal paper is the only one of the three that proves anything about the
degenerate case, and it is the right one to lean on. **This is the single most
important reason the brief's instruction to treat [AKR-J] as authoritative is correct.**

### 7.3 [AKR-J] §9, audited per degeneracy type

§9 (pp. 1069–1073) classifies degeneracies into exactly two types (p. 1069):
*vertex-vertex* (two vertices from different polygons coincide) and *vertex-side*
(a vertex of one polygon lies on a side of the other).

| Degeneracy | AKR treatment | Effect on the **point** count |
|---|---|---|
| **Q-vertex on P-side interior**, and symmetrically **P-vertex on Q-side interior** | §9.2, p. 1073: small parallel shift of a side. "an intersection point may disappear or multiply into two intersection points, depending on the direction of the shift. However, the **average** number of intersections over the two possible directions is always the same as before. Thus, there exists a small parallel shift that **does not decrease** the number of intersection points." | **Does not decrease** (may increase: a *touching* becomes 2, a *crossing* stays 1) |
| **Coincident vertices** | §9.1, pp. 1069–1072: a global parametric morph. Vertex-side dependencies are *maintained* while all vertex-vertex coincidences are simultaneously resolved; unique solvability from Theorem 17 (p. 1071) via Lemma 16 and Lemma 18. Directions *E_i* are chosen "so that the two polygons have at least one nondegenerate intersection in the neighborhood". | **Does not decrease** (≥ 1 point survives near each resolved coincidence; original count there was 1) |
| **Three collinear vertices (G3)**, **parallel sides (G4)** | §3, p. 1052, one sentence: "Indeed, given that no vertex of one polygon lies on the other polygon, this can be achieved easily by another small perturbation of the sides **without changing the intersection pattern**." | **Preserves exactly** |
| **Overlapping sides / infinitely many intersections** | Excluded by fiat in the problem statement (p. 1050), as in all three papers. | n/a |
| **Tangential / non-proper intersections** | After (G2) holds, "every intersection point between *P* and *Q* is an interior point of two polygon sides" (p. 1052), and two non-collinear segments meet at most once, so points = crossing pairs. | **Every counted intersection is an interior proper crossing** ✔ |

The averaging argument in §9.2 is sound and I checked it: on a side *s* carrying
several *Q*-vertices in its interior, each degeneracy contributes 2 in one shift
direction and 0 in the other (a *touching*, where the two *Q*-sides at the vertex lie
on the same side of ℓ(*s*)), or 1 in both (a *crossing*); in every case the two-direction
average equals the original contribution of 1, and contributions are additive over
degeneracies on *s*. Hence one of the two directions is ≥ the original.

Afterwards: (G2) holds by construction; (G3), (G4) by the §3 perturbation; simplicity
is preserved because for a simple polygon the pairwise distances between non-adjacent
sides are positive, so small perturbations cannot create self-intersections; ℓ(*q_j*)
avoids *V*(*P*) by (G3) (proved in §6.3); and every counted intersection is a proper
interior crossing. **All of the brief's post-conditions are met.**

**FLAG — [AKR-J] §9.3, p. 1073, verbatim:**

> **9.3 The Combinatorial Counting Model.** Instead of counting intersection points,
> one could count **pairs of sides that intersect**. A vertex-side degeneracy is then
> counted twice, and a vertex-vertex degeneracy is counted four times. **We leave this
> variation for future research.**

AKR explicitly **do not** cover the pairs-of-sides counting model. The project's
*f*(7,7) is the **intersection-point** count (`docs/literature-notes.md:11–21`:
"the maximum number of boundary **intersection points**"), and Step 0's own case
analysis counts points, so the project is inside the model AKR support. **But any
restatement of the result in the pairs model is not licensed by [AKR-J], and must
not be made.** AKR do note (same page) that the more refined Dillencourt–Mount–
Saalfeld accounting is fine: "With this type of accounting, our results carry over."

### 7.4 The project's own Step 0

The project does **not** cite [AKR-J] §9; it proves the reduction itself.
`docs/proof-outline.md:19–32`, verbatim:

> Every degeneracy is a vertex of one polygon on a side-interior of the other
> (type ii) or a vertex on a vertex (type iii). **Type (ii):** move the vertex across
> the line of that side, choosing the side that yields 2 crossings when both
> neighbours lie on one side, else either (1 crossing). **Type (iii):** if the four
> wedge-rays interleave, any move yields 2; if not — the case where separation would
> lose the point — push the vertex a distance δ **into the cone of *Q* at *w***, so
> both incident sides of *P* must exit across *q*⁻ or *q*⁺ within *O*(δ) of *w*,
> yielding 2. Only two sides move; transversal crossings and simplicity are open
> conditions. Finitely many degeneracies. Afterwards the configuration lies in an open
> set on which *I* is constant, and "three of the 14 vertices collinear" / "two of the
> 14 sides parallel" are finitely many proper algebraic subsets, which cannot cover a
> nonempty open set. Hence *f* = *f*_general position.

Type (ii) is correct, and is a cleaner case analysis than AKR's averaging trick.
The final paragraph (open set / proper algebraic subsets) is correct and is sharper
than AKR's one-sentence §3 justification. **Type (iii) is wrong.**

### 7.5 **DEFECT — the type (iii) rule loses the intersection point**

Place the coincident vertex *v* = *w* at the origin, let Cone_P be the wedge of *P*
at *v* and Cone_Q the wedge of *Q* at *w*. I enumerated the four qualitative
configurations and counted, by exact orientation predicates, the crossings created
near *w* for each of 720 sampled displacement directions at distance δ = 10⁻³:

| configuration (wedge directions) | move **into** Cone_Q | move **out of** Cone_Q | over 720 directions |
|---|---|---|---|
| Cone_Q ⊂ Cone_P: *P* = [80°,100°], *Q* = [85°,95°] | **2** ✔ | 0 | {2: 678, 1: 1, 0: 41} |
| **Cone_P ⊂ Cone_Q: *P* = [85°,95°], *Q* = [80°,100°]** | **0 ✗** | **2** | {2: 679, 0: 41} |
| interleaved: *P* = [80°,95°], *Q* = [85°,100°] | 1 | 1 | {1: 400, 3: 319, 0: 1} |
| disjoint (opposite): *P* = [0°,10°], *Q* = [180°,190°] | **2** ✔ | 0 | {0: 700, 2: 20} |
| disjoint (adjacent): *P* = [0°,10°], *Q* = [20°,30°] | **2** ✔ | 0 | {0: 381, 4: 300, 2: 39} |

**Row 2 is a counterexample to the project's rule as written.** When the *P*-wedge at
*v* is contained in the *Q*-wedge at *w* — a perfectly legitimate configuration (a
narrow spike of *P* inside a wider wedge of *Q*, both polygons simple) — pushing *v*
"into the cone of *Q* at *w*" yields **0** crossings near *w*, destroying the single
intersection point that was there. The count **decreases**, and the reduction fails.

The stated *justification* fails in the same case, and visibly so: "both incident
sides of *P* must exit across *q*⁻ or *q*⁺ within *O*(δ) of *w*" is false, because
both *P*-sides point in directions **interior to** Cone_Q and, starting inside
Cone_Q, never leave it.

The secondary clause "if the four wedge-rays interleave, any move yields 2" is also
inaccurate — the interleaved case yields **1 or 3**, never 2 — though harmlessly so,
since the original count is 1 and 1 or 3 is ≥ 1.

**Severity and repair.** The *conclusion* of Step 0 is true; only the stated rule is
wrong, and in one sub-case. Repairs, any of which suffices:

1. Replace "push into the cone of *Q* at *w*" by "push into Cone_Q(*w*) if
   Cone_P(*v*) ⊄ Cone_Q(*w*), and out of Cone_Q(*w*) otherwise" — verified against all
   five rows above.
2. Equivalently and more symmetrically: move whichever vertex has the **wider** wedge
   into the other's cone. (Row 2 with the roles of *P* and *Q* exchanged is row 1.)
3. Simplest: **delete Step 0's type (iii) argument and cite [AKR-J] §9.1** (pp. 1069–1072),
   which proves the same thing correctly and in more generality, including the case
   where a single side participates in several degeneracies at once — a case Step 0
   does not discuss at all.

Option 3 is recommended: it converts a hand-written and currently-broken argument
into a citation of a peer-reviewed one, at the cost of one more external dependency
in a paper the project already depends on twice.

**One further gap in Step 0, noted:** Step 0 treats degeneracies one at a time
("Only two sides move … Finitely many degeneracies"), but does not address the case
[AKR-J] §9.1 opens with — "Finding a good perturbation is delicate because **a side
may be involved in multiple degeneracies**" — where resolving one coincidence moves a
vertex that another degeneracy depends on. AKR's whole §9.1 apparatus (dependence
graph, Lemma 16, Theorem 17, Lemma 18) exists to handle exactly that. Step 0's
sequential argument is plausible but is not obviously sufficient, and it is not
argued. This reinforces recommendation 3.

### 7.6 Adversarial check

* *Tried:* a degenerate 40-point configuration that Step 0 would map to a
  39-crossing general-position configuration. The row-2 wedge nesting is exactly such
  a mechanism at a single vertex-vertex coincidence. **Found** (§7.5).
* *Tried:* the same against [AKR-J] §9. §9.1 chooses each direction *E_i* to preserve
  ≥ 1 nearby intersection rather than by a fixed geometric rule, and the table above
  shows such a direction always exists (every row has a direction giving ≥ 1, indeed
  ≥ 2 in the non-interleaved rows). **Not found.**
* *Tried:* whether the "parity ⟹ 39 impossible ⟹ 40" step survives. It needs all
  intersections to be transversal crossings of two closed curves, which holds only
  *after* the reduction. So the reduction must come first, as it does. ✔
* *Tried:* whether the pairs-vs-points counting model matters. It does, and AKR
  disclaim the pairs model (§7.3 FLAG). The project is in the points model. ✔

### 7.7 Verdict

**INCORRECT** — for the project's Step 0 as written, on the strength of the explicit
counterexample in §7.5. The needed *statement* is true and is correctly proved in
[AKR-J] §9; the defect is in the project's own substitute argument and is repairable
by a one-clause fix or by citing §9 instead. It does not, on this audit, propagate to
the theorem — **but it is a real error in a step the project explicitly claims to
prove itself ("proved here, not assumed"), and `known-issues.md` K-10 already
describes this step as prose with "no formal treatment". K-10 should be upgraded from
a completeness caveat to a correctness defect.**

*(The separate row for [AKR-J] §9 itself in §1 is **VERIFIED**.)*

---

## 8. Source-version comparison: SoCG 2020 vs DCG 2022

Scope as requested: Lemmas 5 and 7, plus anything relevant to this project.

| Item | [AKR-C] SoCG 2020 | [AKR-J] DCG 2022 | Relevant? |
|---|---|---|---|
| **Lemma 5 statement** | p. 1:4 | p. 1053 | **Word-for-word identical**, including the two cross non-edges and the cone dichotomy. No change. |
| **Lemma 5 proof** | p. 1:5 | p. 1053 | Identical modulo the auxiliary numbering (SoCG "Proposition 2" → DCG "Proposition 4"). No mathematical change. |
| **Definition of *avoiding*** | p. 1:4 | p. 1052 | Identical, including the parenthetical "(This requirement is stronger than just disjointness.)". |
| **Definition of *associated* / hooking / hooked** | p. 1:5 | p. 1054 | Substantively the same. DCG inserts "**such** a pair" and extends the Note to "is **associated with several pairs** and that it is both hooking and hooked". Both clarify in the direction the project relies on. |
| **Observation 6 (Axis Property)** | p. 1:5 | p. 1054 | Identical, **and unproved in both**. |
| **Lemma 7 statement** | p. 1:6 | p. 1055 | **Word-for-word identical.** No hypothesis change. |
| **Lemma 7 proof — opening** | p. 1:6: witnesses chosen with the cone conditions **stated explicitly** | p. 1055: those clauses **removed**; replaced by "associated (hooked or hooking) pairs … Recall that the existence of such pairs follows from Lemma 5" | **HIGHLY RELEVANT — see §5.5.** This is a regression in the journal version, and the conference version is the one that settles the project's existential reading. |
| **Lemma 7 proof — cases** | pp. 1:6–1:7, 12 cases | pp. 1056–1059, same 12 cases | Same cases, same figures, same conclusions. DCG's "(This is in fact the only place where we need the assumption that *a′,b′* is hooking.)" in case 5 appears in both. |
| **Lemma 7 proof — closing** | p. 1:7: "hooked, **with respect to some pairs** *A,B* and *A′,B′*" | p. 1059: "hooked with respect to *A,B* and *A′,B′*, respectively" | SoCG's "some pairs" again reads existentially. |
| **Lemma 8** | p. 1:10 | p. 1059 | Identical, including the *H*⁺ (hooked) / *H*⁻ (not hooked, but hooking) partition. |
| **General position** | Part of the **problem definition** (abstract and p. 1:1): "assuming general position". No degenerate-case section. | Removed from the definition; **new §9 "Degenerate Cases"** (pp. 1069–1073) discharges it, plus new §9.3 disclaiming the pairs counting model. | **HIGHLY RELEVANT.** The journal version is the only source that supports Step 0's goal at all. |
| **§10.2 Computer-Supported Proofs** (machine verification of Lemma 7) | **Absent** | **New**, p. 1076 | **HIGHLY RELEVANT — see §5.6.** Independent corroboration of the project's principal import. |
| **Constant *C*** | — | p. 1074: "This gives *C* < (2⁶⁷)⁴ = **2²⁶⁸**" | **False-alarm, recorded so nobody else trips on it.** The project's LOOSE-reading count is **2268**, and a naive text extraction of this sentence renders AKR's "2²⁶⁸" as "2268". Page 1074 was therefore re-read as a rendered image: AKR's value is **2 to the power 268**, and the number 2268 does **not** occur anywhere in [AKR-J]. The two are entirely unrelated; there is not even a digit coincidence in the paper. |
| **Corrections** | n/a | Title page carries "© The Author(s) 2022, **corrected publication 2023**" | **UNRESOLVED — see §10.** No correction notice or change-list appears anywhere in the 29-page PDF, and I could not retrieve the Correction article (Springer requires authentication). |

**Net assessment of the version comparison:** no hypothesis of Lemma 5 or Lemma 7
changed between versions, and no correction relevant to this project is visible.
Two journal-only additions (§9, §10.2) *strengthen* the project's position. One
journal-only deletion (the explicit witness selection in Lemma 7's proof) *weakens*
the printed argument, and the project should cite the **conference** version for that
specific point while citing the journal for everything else.

---

## 9. Remaining ambiguities

1. **The 2023 correction to [AKR-J] is unidentified.** The PDF is stamped "corrected
   publication 2023" but contains no correction notice. The PDF in `references/`
   *is* presumably the corrected version (its hash is what the project pins), but
   what changed is unknown. A web search surfaced no correction article; Springer
   blocked automated retrieval. **Open.**
2. **"Associated" is defined loosely in both versions** (§5.6(i)), and under the
   literal definition AKR's own Observation 6 is false. The project's repaired
   reading is surely the intended one, but it is an inference.
3. **Observation 6 is unproved in both versions** and is used throughout Lemma 7's
   case analysis and again in §8.2.
4. **Lemma 7's 12-case proof was not re-verified here** (out of scope), and some cases
   are argued on schematic figures in which segments are drawn as curves. Mitigated
   by AKR §10.2.
5. **The project's Step 0 is defective** (§7.5) and its multiple-degeneracy case is
   not argued (§7.5, final note).
6. ~~**`docs/literature-notes.md:5–9` is stale** — it states that "no PDF of any
   source paper is included in this repository". Three are, in `references/`, and
   their hashes match the audit brief.~~
   **WITHDRAWN 2026-09-14 — this recommendation was itself wrong, and acting on it
   would have introduced an error.** `literature-notes.md` now says "the PDFs
   themselves are not committed", and that is **correct**: `.gitignore` excludes
   `references/*.pdf`, and `git ls-files references/` returns only `README.md`.
   The three PDFs exist on the author's disk only. **Consequence for this
   document:** the SHA-256 values in §0's evidence table are "verified on disk"
   and **cannot be re-checked by anyone who clones the repository**.
7. **`docs/known-issues.md`'s Černý-Lemma-2 item can be closed** — Černý Lemma 2's
   exact statement has now been read from the paper and matches the implementation
   (§3). *(Status note, 2026-09-14: `verification-status.md` row 10 **has** been
   upgraded to VERIFIED, but `known-issues.md` still records that verification as
   open. The two authoritative documents disagree; this audit's recommendation has
   been acted on in one of them only. Flagged, not resolved here.)*
8. **The relabelling/no-symmetry-reduction argument (§6.5) is correct but unwritten.**
   It should appear in `proof-outline.md`; as it stands, a referee has to reconstruct
   why applying 14 canonical class profiles to un-canonicalised labelled graphs is sound.
9. **`known-issues.md` K-05 remains the largest non-external risk** and is untouched by
   this audit: the "zero false rejections on realizable configurations" evidence is
   unrunnable because `validate.py` depends on absent `best_7_7_3.pkl` files. Every
   filter audited here was checked for *over-rejection* against the published
   statements, which is a different and weaker check than testing against realizable
   configurations.

---

## 10. Suggested author-contact questions

To **Ackerman, Keszegh and Rote** (rote@inf.fu-berlin.de is the most likely
respondent, and the §10.2 computer verification is his):

1. **Lemma 7, quantification.** "In Lemma 7, should 'both pairs are hooking' be read
   as '*each* pair has *some* associated pair witnessing hooking' (existential)? The
   SoCG 2020 proof selects the associated pairs with the cone conditions stated
   explicitly, which forces this reading, but the DCG 2022 proof omits those clauses.
   Please confirm the existential reading is intended." *(This is the project's
   K-09 item 1. Expected answer: yes.)*
2. **Definition of "associated".** "Is a pair *q_j*, *q_{j±1}* 'associated' to
   *p_i*, *p_{i+1}* whenever merely (*p_i*,*q_j*), (*p_{i+1}*,*q_{j±1}*) ∈ E^D, or
   only when it additionally carries the two cross non-edges and the cone dichotomy
   produced by Lemma 5? Under the former reading Observation 6 appears to be false:
   *a* = [(0,0),(1,0)], *b* = [(0,0),(0,1)], *A* = [(1,−1),(2,−1)], *B* = [(1,−1),(1,−2)]
   satisfies *a* ∩ *A* = ∅ and *b* ∩ *B* = ∅, but the axis *y* = −*x* does not
   separate *a* from *b*."
3. **Observation 6.** "Is a proof of the Axis Property available? It is used in most
   of Lemma 7's twelve cases and again in §8.2."
4. **§10.2 artefacts.** "Is the code and/or the list of 14 eight-line configurations
   from the computer verification of Lemma 7 available? It would let an independent
   project cross-check its own encoding of Lemma 7 against yours."
5. **The 2023 correction.** "The DCG PDF is marked 'corrected publication 2023'. What
   was corrected?"
6. **§9.3.** "Do you expect the bound to be unchanged in the 'count pairs of
   intersecting sides' model you leave open in §9.3, or is there a reason to expect
   it to differ?"
7. **Case *m* = *n* = 7 specifically.** "Fig. 29 gives a max-degree-3 lower-bound
   construction for *m* = *n* = 7. Are you aware of any result or unpublished
   computation bearing on whether *f*(7,7) = 38 or 40?"

To the **Černý et al.** authors, only if convenient — nothing in that paper was found
ambiguous:

8. "In Lemma 2, 'the non-crossing graph … forms a perfect matching' — we read this as
   the graph *being* a perfect matching (all eight degrees exactly 1), not merely
   containing one, since the proof uses 'the segment which misses **only** *CD*'.
   Please confirm."

---

## 11. Reproduction notes

Everything in §§2–7 that is computational was produced in the session scratchpad and
does not touch the repository. The steps are:

1. Build a Swift/PDFKit utility (`pdftool`) with `swiftc`; run it in `text` mode to
   extract each PDF's text layer, and in `render` mode to rasterise AKR p. 1055
   (Figs. 5–6) and Černý p. 221 (Fig. 4).
2. Independently reimplement the pipeline from
   `data/exceptional_profiles/exceptional_profiles_14.json` alone. Confirms the 14
   profiles and the counts 13,003,620 / 42,238 / 24,990 / 2,300 / 121 / 0 (~3 min).
3. Realise exceptional class 0 by matching its stored chirotope (allowing a global
   reflection) against `independent/order_type_audit/external/otypes07.b08`, then
   mirroring; verify all 35 orientation triples, simplicity, and non-collinearity in
   exact integer arithmetic.
4. Run the eight-probe Černý-L2 battery and the *H* battery of §§3.5, 5.8.
5. Run the five-configuration wedge experiment of §7.5.

No file in the repository was modified by this audit other than this document.
