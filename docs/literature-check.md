# Literature / prior-art check

**Date of search:** 2026-09-17.
**Performed by:** an AI agent (Claude, Opus 5), not a domain expert. Read
§4 before quoting anything in this file.
**Scope:** a bounded web search — roughly two dozen queries and page fetches —
for prior statements of the claims in `docs/covering-step.md` and
`docs/verification-status.md` rows 41–44. **No paywalled full text was
reached** (see §4).

This file is a *search log with assessments*. It is **not** an assertion of
novelty. The strongest conclusion available from a search of this kind is
"a bounded search found no prior statement of this", and that is the
conclusion recorded below wherever the assessment is NO HIT FOUND.

This complements, and does not replace, [`literature-notes.md`](literature-notes.md)
(what the project cites and imports) and
[`external-lemma-audit.md`](external-lemma-audit.md) (whether the imported
statements say what the project claims they say). Neither of those asks the
question this file asks: *has someone already done this?*

---

## 1. What was searched

### 1.1 Queries run

Web search (results are US-region and engine-mediated; the engine's own
summaries were treated as unreliable and are not cited below except where a
primary source was then read directly):

1. `Dillencourt Mount Saalfeld maximum number of intersections two simple polygons`
2. `Gunther 1207.0996 "maximum number of intersections of two polygons" withdrawn`
3. `f(7,7)=38 heptagon intersections simple polygons computer-assisted proof`
4. `oriented matroid chirotope SAT non-realizability forbidden configuration polygon crossing pattern`
5. `"number of intersections of two simple polygons" odd case 7-gon "open problem" 2023 OR 2024 OR 2025`
6. `SAT solver formal verification Lean combinatorial geometry order type realizability empty hexagon Subercaseaux Heule`
7. `"simple polygon" crossing pattern realizability SAT solver "oriented matroid" Dillencourt conjecture odd`
8. `minimal forbidden subconfiguration covering argument non-realizable order type "unavoidable" pattern discrete geometry`
9. `Cerny Kara Kral Podbrdsky Sotakova Samal "On the number of intersections of two polygons" cited by`
10. `Scheucher SAT-based computer-assisted proof discrete geometry realizability point sets "order type" 2024 2025 unavoidable configurations`
11. `"disjointness graph" polygon sides SAT encoding refutation intersection conjecture odd polygons computer search`
12. `Lean 4 OR Isabelle formalization "simple polygon" intersection bound computer-assisted proof 2025 2026`
13. `Rote "intersections of two simple polygons" journal version Discrete Computational Geometry 2022 section 9 general position`
14. `"open problem" list maximum intersections two simple polygons odd conjecture Dillencourt "Open Problem Garden" OR "Erdos problems" OR "Problem Collection"`
15. `"simple polygon" simplicity constraints encoded oriented matroid chirotope variables sign conditions realizability SAT polygon vertices`
16. `Mackey "Pinwheels and polygons" symmetric realizations polygon-free point placements SAT thesis`
17. `minimal unsatisfiable core reuse small set of forbidden subpatterns covers all cases SAT proof combinatorics technique`
18. `"m=n=7" OR "7-gon" simple polygons maximum intersections 38 40 upper bound resolved`
19. `Ackerman Keszegh Rote 2024 2025 2026 improved constant intersections simple polygons odd follow-up`

### 1.2 Structured bibliographic queries

* **Semantic Scholar citation graph**, `arXiv:2002.05680` (AKR) forward
  citations — **1 result**: Alkauskas, *Regular triangle unions with maximal
  number of sides*, arXiv:2510.22584 (2025).
* **Semantic Scholar citation graph**, `arXiv:1207.0996` (Günther) forward
  citations — **2 results**: AKR (2020), and M. Naeem, *A most versatile
  relative position descriptor* (2016).
* **Semantic Scholar paper search**, `number of intersections of two polygons`.
* **Crossref** `api.crossref.org/works`, three bibliographic queries
  (see §1.1 themes 1, 18). Yielded the AKR DCG DOI
  `10.1007/s00454-022-00438-0` — which matches the DOI already recorded in
  `references/README.md`, so that citation is independently corroborated.
* **arXiv API** (`export.arxiv.org/api/query`), abstract search
  `abs:"two simple polygons"`, 40 results sorted by date.

### 1.3 Sources actually read (not merely listed by a search engine)

* AKR arXiv v1 full text via ar5iv — introduction and the whole body,
  scanned programmatically for `7`, `heptagon`, `oriented matroid`, `SAT`,
  `exhaustive`, `open`, `smallest`.
  <https://ar5iv.labs.arxiv.org/html/2002.05680>
* AKR arXiv abstract page and version history.
  <https://arxiv.org/abs/2002.05680>
* Günther arXiv abstract page, including the withdrawal comment.
  <https://arxiv.org/abs/1207.0996>
* Kada Williams, *On Intersecting Polygons*, arXiv:2303.11208.
* Alkauskas, arXiv:2510.22584.
* *Toward Satisfiability Modulo Realizability*, arXiv:2607.02958.
* *Combinatorial Geometry of Erdős–Szekeres Type Problems: SAT/ASP Modeling
  and Linear Subreduction*, arXiv:2604.20120.

### 1.4 What was attempted and failed

These are gaps in the search, not negative results.

* **The AKR journal version (DCG 68 (2022) 1049–1077) was not read.** The
  Springer page redirects to an authentication endpoint; the fetch was refused.
  **The arXiv posting is v1 only, dated 2020-02-13, and is the SoCG version.**
  This matters: **§9 and §10 — the sections this project actually depends on —
  are journal-only and were not reachable by this search.** Everything said
  below about AKR is said about the SoCG text.
* **DBLP** returned an anti-bot interstitial for both the API and the search
  endpoint. No DBLP-based author sweep was performed.
* **Mount's *Handbook of Discrete and Computational Geometry* chapter 42,
  "Geometric Intersection"** (<https://www.csun.edu/~ctoth/Handbook/chap42.pdf>)
  was fetched but not parsed — the extraction returned PDF structure rather
  than text, and no PDF text tooling was available in this environment. This
  is a **significant gap**: it is a survey by one of the three original
  authors, and is exactly where a statement of the current status of `f(7,7)`
  would be expected to appear.
* **Google Scholar and MathSciNet were not reachable** from this environment.
  Forward-citation coverage therefore rests on Semantic Scholar and Crossref,
  which are known to under-index conference proceedings (CCCG 1993) and
  regional journals (Comment. Math. Univ. Carolin. 2003). **The Černý et al.
  2003 paper could not be resolved to a Semantic Scholar or Crossref record
  at all, so its forward citations were never enumerated.** For a problem
  whose literature is this small, that is the single largest hole in the
  search.
* No search of non-English literature, no preprint servers other than arXiv,
  no theses repositories beyond what general search surfaced.

---

## 2. Findings

### 2.1 The problem's status as stated in the literature

AKR's introduction, read verbatim from the arXiv v1 full text
(<https://ar5iv.labs.arxiv.org/html/2002.05680>, submitted 2020-02-13):

> "This problem was first studied in 1993 by Dillencourt, Mount, and Saalfeld
> [2]. The cases when `m` or `n` is even are solved there. […] When both `m`
> and `n` are odd, the situation is more difficult […] the best known family
> of examples gives only `mn − (m + n) + 3 = (m−1)(n−1) + 2` intersection
> points"

and, on the two failed attempts:

> "In [2] an unrecoverable error appears in a claimed proof of Conjecture 1.
> Another attempted proof [5] also turned out to have a fault. The only
> correct improvement over the trivial upper bound is an upper bound of
> `mn − (m + ⌈n/6⌉)` for `m ≥ n`, due to Černý, Kára, Král', Podbrdský,
> Sotáková, and Šámal [1]."

Reference [5] in that list is given as:

> "Felix Günther, The maximum number of intersections of two polygons.
> Preprint, arXiv: 1207.0996 [math.CO], July 2012, **withdrawn by the
> author**."

This is a primary-source confirmation of the framing in
`literature-notes.md`: as of the SoCG 2020 text, the odd–odd conjecture is
open, and the only correct improvement on the trivial bound is Černý et al.

**Günther's withdrawal, confirmed at the source.** arXiv:1207.0996, submitted
2012-07-04, withdrawn 2015-02-10, two versions. The v2 comment reads verbatim:

> "This paper has been withdrawn by the author due to an unrecoverable error
> in the proof of Lemma 2. In fact, a counterexample to an even weaker version
> of Lemma 2 has been found by the author"

The abstract claims only the general odd–odd conjecture
(`(p−1)(q−1)+2` for all odd `p`, `q`); it makes **no** special claim about
`p = q = 7`, and nothing in the abstract is computational.

> **A caution about search-engine summaries.** Three of the searches above
> returned engine-authored summaries stating, in substance, that the odd–odd
> conjecture "has been proven to be correct for all odd p and q". **That is
> false.** In each case the sentence was paraphrased from the *withdrawn*
> Günther abstract, which states the conjecture, not a theorem. This confirms
> the warning already in `literature-notes.md` ("Several secondary sources
> still advertise the claim. Do not cite it.") and extends it: the
> misinformation is now also being generated on the fly by search summarisers.
> No claim in this file rests on an engine summary.

### 2.2 Forward citations: the literature is very small

The AKR paper has, per Semantic Scholar, **one** forward citation:
Alkauskas, *Regular triangle unions with maximal number of sides*,
arXiv:2510.22584 (2025). Fetched and checked: it concerns the maximum number
of sides of a union of `n` triangles with cyclically arranged boundary
vertices (OEIS A375986). **It does not discuss `f(m,n)`, the odd cases, or
`f(7,7)`.**

The only other paper the searches surfaced in the same problem space is
Kada Williams, *On Intersecting Polygons*, arXiv:2303.11208, submitted
2023-03-20. Fetched and checked. Its abstract:

> "Consider two regions in the plane, bounded by an n-gon and an m-gon,
> respectively. At most how many connected components can there be in their
> intersection?"

This is a **different quantity** — connected components of the intersection
*region*, not boundary intersection *points*. Not prior art for anything here.

The arXiv abstract search `abs:"two simple polygons"` returned nothing on this
problem beyond AKR itself. Ackerman/Keszegh/Rote's visible subsequent output
(digons among pairwise intersecting pseudocircles, SoCG 2025; tangencies among
1-intersecting curves, SoCG 2026, arXiv:2603.11885) is on adjacent but
different problems; **no follow-up by those authors on `f(m,n)` was found.**

Caveat, and it is a real one: absence of forward citations on Semantic
Scholar is weak evidence about a 1993 CCCG paper and a 2003 Carolinae paper,
both poorly indexed. See §1.4.

### 2.3 Primary claim — the two minimal forbidden patterns of sizes 8 and 14

**Nothing resembling this was found.**

Specifically not found:
* any statement that a *bounded number* of forbidden local crossing patterns
  suffices to eliminate `I = 40` for two heptagons;
* any enumeration of the `I = 40` disjointness graphs, or the count 13,003,620,
  or the 5,040 perfect matchings of the `I = 42` branch, anywhere in the
  literature;
* any prior use of the term "disjointness graph" in this problem outside AKR
  themselves, who introduce `G^D` and use it for a *component-counting*
  argument, not for enumeration.

AKR's own use of the disjointness graph is structurally the opposite of this
project's: they bound the number of *connected components* in order to get an
additive constant, and their Lemma 8 rules out one configuration of four
components. Their argument is asymptotic in shape and, in their own words,
yields `C ≈ 2^(2^67)` (arXiv v1; `2^(2^70)` is quoted in
`literature-notes.md` from the journal version). **Nothing in the SoCG text
specialises to small `m`, `n`.**

Programmatic scan of the AKR arXiv v1 full text: `heptagon` — **0
occurrences**; `oriented matroid` — **0**; `SAT` — **0**; `exhaustive` — **0**.
The token `7` occurs 22 times, all of them in lemma/figure/section numbers,
constant exponents, or the `m = 9, n = 7` and `m = 8, n = 7` lower-bound
figures, and in none of them as the case `m = n = 7`.

### 2.4 Secondary claim 1 — chirotope/SAT non-realizability as a technique

**The technique is thoroughly established in discrete geometry generally.**
Recorded here as background, not as prior art for its application to this
problem.

* Chirotope-as-SAT for realizability/non-realizability is standard. Schewe,
  *Non-Realizable Minimal Vertex Triangulations of Surfaces: Showing
  Non-Realizability using Oriented Matroids and Satisfiability Solvers*,
  arXiv:0801.2582 (2008), is an explicit instance: transform the existence of
  an admissible oriented matroid into a SAT instance, introduce a variable per
  ordered `r`-subset, refute.
* Bokowski et al., *Generation of Oriented Matroids Using Satisfiability
  Solvers*, ICMS 2006 (<https://link.springer.com/chapter/10.1007/11832225_19>).
* Finschi/Fukuda and Aichholzer/Aurenhammer/Krasser on enumeration of small
  oriented matroids and the order-type database; *Complete Enumeration of
  Small Realizable Oriented Matroids*, DCG (arXiv:1204.0645).
* Non-realizability certificates by other means: biquadratic final polynomials
  (arXiv:math/0510500), semidefinite programming
  (<http://www.ybook.co.jp/online-p/PJO/vol5/pjov5n2p211.pdf>).
* Realizability is `∃ℝ`-complete, so a compact exact SAT encoding cannot exist
  unless `NP = ∃ℝ` — stated explicitly in *Toward Satisfiability Modulo
  Realizability*, arXiv:2607.02958. This is the standard reason such work
  refutes the *order-type relaxation* rather than realizability itself, which
  is exactly the shape of this project's argument.
* The closest methodological precedents for the *whole pipeline* (geometric
  problem → order-type SAT encoding → solver refutation → machine-checked
  proof) are:
  - Heule & Scheucher, *Happy Ending: An Empty Hexagon in Every Set of 30
    Points*, arXiv:2403.00737 — CNF with `O(n⁴)` clauses, 17,300 CPU hours.
  - Subercaseaux, Nawrocki, Gallicchio, Codel, Carneiro, Heule, *Formal
    Verification of the Empty Hexagon Number*, ITP 2024,
    <https://drops.dagstuhl.de/entities/document/10.4230/LIPIcs.ITP.2024.35>,
    arXiv:2403.17370 — full **Lean 4** verification of the geometric encoding
    plus solver-produced LRAT checked by `cake_lpr`. **This is the closest
    published analogue to what this project is doing methodologically**, on a
    different problem.
  - Scheucher, *A SAT Attack on Erdős–Szekeres Numbers in ℝ^d and the Empty
    Hexagon Theorem*, Computing in Geometry and Topology 2(1), 2023.
  - Subercaseaux, Mackey, Qian, Heule, *Automated Symmetric Constructions in
    Discrete Geometry*, arXiv:2506.00224 (2025); Mackey, *Pinwheels and
    Polygons*, CMU-CS-25-108 (2025).

**But**: no instance was found of this technique applied to the realizability
of a *crossing pattern between two simple polygons*, nor to the
Dillencourt–Mount–Saalfeld problem. Search 15, aimed squarely at encoding
*simplicity* of a polygon as sign conditions on a chirotope, returned nothing
on point. The nearest thing found was *Visibility Graphs and Oriented
Matroids* (Abello/Kumar), which encodes a different polygon property.

### 2.5 Secondary claim 2 — covering by a small set of minimal forbidden patterns

**Partially anticipated as a general idea; no hit for this problem.**

The general notion is well established and has a book-length treatment:
David Eppstein, *Forbidden Configurations in Discrete Geometry*, Cambridge
University Press, 2018. The book's framing — characterising geometric
properties by families of forbidden subconfigurations, and asking when
*finitely many* suffice — is precisely the shape of this project's
covering step, in the abstract.

What was **not** found is any instance of this specific combination:
extracting a *small* set (here: two) of *minimal* forbidden patterns from
solver unsat cores, and then proving *combinatorially* that every member of a
large enumerated family contains a relabelled copy of one of them, as a
substitute for re-running the solver on each case. The generic SAT literature
on minimal unsatisfiable cores (search 17) is about *extracting* small cores
from one formula; it does not address reusing a handful of cores to cover a
combinatorial family. That does not mean it is unknown — core reuse across
symmetric instances is folklore in SAT-based combinatorics — but no written
statement of it in this form was reached.

The 2026 Erdős–Szekeres SAT/ASP modeling paper (arXiv:2604.20120) was checked
specifically for this technique and does **not** use it; its method is
"linear subreduction", combining the logical model with geometric
inequalities.

### 2.6 Secondary claim 3 — is `f(7,7) = 38` or `f(7,7) ≤ 38` claimed anywhere?

**No hit found.** Searches 3, 5, 18 were aimed directly at this and returned
nothing. No paper found states the value 38 for `m = n = 7` other than as an
instance of the *conjectured* formula `mn − (m+n) + 3`. AKR's SoCG text does
not mention `m = n = 7`.

Note the logical asymmetry, which weakens this finding: `f(7,7) = 38` **is**
what the Dillencourt–Mount–Saalfeld conjecture predicts, so the *value* is
published and has been since 1993. What was not found is any **proof or
unconditional upper bound** establishing it. The novelty at issue is the
proof, not the number.

**Not checked, and it is the obvious place to look:** Mount's *Handbook*
chapter 42 (§1.4). If anyone had settled `m = n = 7`, that survey is where it
would be recorded.

### 2.7 Secondary claim 4 — any prior computer-assisted attack on the odd–odd cases?

**No hit found.** Searches 3, 7, 11, 12 targeted this. Nothing was found that
applies exhaustive enumeration, SAT, oriented matroids, or a proof assistant
to `f(m,n)` for odd `m`, `n`. Both published attacks (DMS 1993, Günther 2012)
and both correct partial results (Černý et al. 2003, AKR 2020/2022) are
by-hand arguments; AKR's SoCG text mentions no computation at all.

One qualification the project should be aware of, from its own records rather
than from this search: `literature-notes.md` states that **AKR §10.2 of the
journal version reports the authors' own independent computer verification of
their Lemma 7**. If that is right, then AKR *did* use a computer in a
supporting role, and this claim should be read as "no prior computer-assisted
attack on the *bound itself*" rather than "no computer used". **This search
could not verify that, because the journal version was unreachable (§1.4).**

The general-position result the project imports (AKR §9 plus §3's unproved
"for convenience" clause) was likewise not re-read here; see
[`akr-9-1-obligation.md`](akr-9-1-obligation.md) and
[`external-lemma-audit.md`](external-lemma-audit.md), which are authoritative
on that point and are based on the journal PDF.

---

## 3. Assessment

| # | Claim | Assessment |
|---|---|---|
| **P** | Two minimal forbidden local crossing patterns, sizes 8 and 14, covering all 13,003,620 `I = 40` candidate disjointness graphs and all 5,040 `I = 42` matchings, each refuted by a machine-checked chirotope encoding | **NO HIT FOUND** |
| **S1** | Encoding realizability of a two-polygon crossing pattern as an oriented-matroid/chirotope SAT instance and refuting it | **PARTIALLY ANTICIPATED** — the *method* is standard and well published (Schewe 2008; Bokowski et al. 2006; Heule–Scheucher 2024; Subercaseaux et al., ITP 2024, which does the Lean half too). **NO HIT FOUND** for its application to two simple polygons' crossing patterns or to `f(m,n)`. |
| **S2** | Covering by a small set of minimal forbidden local patterns, rather than case enumeration | **PARTIALLY ANTICIPATED** — forbidden-configuration characterisation is a book-length established framing (Eppstein 2018). **NO HIT FOUND** for the specific device of covering an enumerated family by a handful of solver-derived minimal cores. |
| **S3** | `f(7,7) = 38` or `f(7,7) ≤ 38` claimed in the literature | **NO HIT FOUND** for a proof or unconditional bound. The *value* 38 is of course published since 1993 as the DMS conjecture's prediction; that is not the same claim. |
| **S4** | A prior computer-assisted attack on the odd–odd cases of `f(m,n)` | **NO HIT FOUND**, with the qualification in §2.7 that AKR's journal §10.2 reportedly contains an independent computer verification of their own Lemma 7, which this search could not reach or confirm. |

For **P**, the only two things in the literature that touch the same object at
all — AKR's disjointness graph `G^D` and their Lemma 8 — go in a different
direction (component counting, asymptotic constant) and do not specialise to
`m = n = 7`.

---

## 4. Limitations — read this before quoting anything above

**Absence of a hit is weak evidence, not proof of novelty.** Every NO HIT
FOUND above means "a bounded, non-expert, English-language web search on
2026-09-17 did not surface it". It does not mean the result is new. In
particular:

1. **The searcher is not a domain expert.** This check was performed by an AI
   agent with no independent knowledge of combinatorial geometry. It cannot
   reliably recognise a result stated in different vocabulary, cannot judge
   whether a superficially different theorem in fact implies the claim, and
   cannot tell a deep prior anticipation from a shallow keyword miss. **A
   domain expert's judgment is not replaced by this search, and nothing here
   should be presented as if it were.**

2. **The search was time-bounded and shallow.** Roughly two dozen queries and
   fetches. A serious prior-art check would read the full text of every paper
   citing DMS 1993 and Černý et al. 2003, which this did not do — and in fact
   **could not**, because Černý et al. resolved to no citation-graph record at
   all (§1.4).

3. **Paywalled and non-indexed literature was not reached.** Most importantly,
   **the authoritative AKR text — DCG 68 (2022) 1049–1077, containing the very
   §9 and §10 this project depends on — was not read.** Springer refused the
   fetch; arXiv carries only the 2020 SoCG version. Every statement above
   about "AKR does not mention X" is a statement about the SoCG version only.
   MathSciNet, zbMATH and Google Scholar were unreachable. CCCG 1993
   proceedings were not obtained. Mount's own survey chapter, the single most
   likely place for a statement of `f(7,7)`'s status, **was fetched but could
   not be parsed and was therefore not read**.

4. **A result can be present under different vocabulary.** "Disjointness
   graph", "crossing pattern", "forbidden configuration", "order type",
   "chirotope", "allowable sequence", "wiring diagram" and "pseudoline
   arrangement" are all live descriptions of overlapping objects, and the same
   theorem can appear under any of them. The queries above cover only some of
   these combinations. A negative result for the phrase is not a negative
   result for the mathematics.

5. **Search engines are an unreliable witness here, demonstrably.** As
   documented in §2.2, multiple engine-generated summaries during this very
   search asserted that the odd–odd conjecture is *proved*, paraphrasing a
   **withdrawn** preprint. If the summarisers get the headline status of this
   problem wrong, their coverage of a fine-grained sub-claim is worth little.
   Only primary sources read directly are cited above.

6. **No claim of novelty is made or implied by this document.** The most that
   §3 supports is: *a bounded search found no prior statement of these
   claims*. Anyone writing this up for publication should treat §5 as a
   to-do list, not as a completed clearance.

---

## 5. Leads worth a human following up

Roughly in order of value.

1. **Ask Günter Rote directly.** He is a co-author of the current best bound,
   he maintains the problem's live status, and he is the person most likely to
   know in one email whether `m = n = 7` has been attacked before and whether
   a covering-by-forbidden-patterns argument has been tried. This is the
   **single most important lead** and it is cheap. Eyal Ackerman and Balázs
   Keszegh equally. A specific question worth pairing with it: the reading of
   AKR Lemma 7 already recorded in
   [`akr-l7-review-request.md`](akr-l7-review-request.md), and the status of
   §3's unproved "for convenience" collinearity clause
   ([`akr-9-1-obligation.md`](akr-9-1-obligation.md)) — which is now the
   project's *only* remaining external import.

2. **Read the AKR journal version §9 and §10 properly, and record what §10.2
   actually says.** This search could not reach it. Two separate things
   depend on it: whether the "no prior computer-assisted attack" assessment
   (S4) survives, and the §3/§9 citation the whole upper bound rests on. The
   PDF is already in the project's hands per `references/README.md`; it is
   the *search* that could not see it, not the project.

3. **Parse Mount's *Handbook of Discrete and Computational Geometry* chapter
   42, "Geometric Intersection"** —
   <https://www.csun.edu/~ctoth/Handbook/chap42.pdf>. A survey by an original
   author, and the canonical place a settled `f(7,7)` would be recorded.
   Fetched but unreadable in this environment; a human with a PDF reader
   settles it in two minutes with a text search for "Dillencourt", "odd", "38".

4. **Enumerate forward citations of Černý et al. 2003 by hand.** It resolved
   to no Semantic Scholar or Crossref record, so its citation graph is
   entirely unexamined here. Comment. Math. Univ. Carolin. 44 (2003) 217–228;
   free PDF at
   <https://cmuc.karlin.mff.cuni.cz/pdf/cmuc0302/cerny.pdf>. Check via
   MathSciNet or zbMATH, which this search could not reach. **This is the most
   likely hiding place for an unnoticed prior partial result on small odd
   cases**, since it is the one paper that actually solved a small odd case
   (`k = 5`) and explicitly flagged `k = l = 7` as open.

5. **Bernardo Subercaseaux, Marijn Heule, and Manfred Scheucher** — the
   closest methodological neighbours. The ITP 2024 empty-hexagon Lean
   verification (arXiv:2403.17370) is the nearest published analogue to this
   project's architecture, and its authors are the people most likely to know
   whether the "cover a family by a few minimal unsat cores" device has a
   name and a prior use. Also relevant for comparing the chirotope encoding
   and the LRAT-into-Lean pipeline against an established one.

6. **David Eppstein**, *Forbidden Configurations in Discrete Geometry* (CUP,
   2018) — check whether the finite-forbidden-configuration framing there
   already covers, or names, the covering argument of `covering-step.md`.

7. **Felix Günther** — he found a counterexample to a weak form of his own
   Lemma 2 (§2.1). That counterexample is not in the withdrawn preprint and
   was, so far as this search could tell, never published. If it concerns
   small cases it may be directly informative, and possibly a useful negative
   test for this project's patterns.

8. **Kada Williams** (arXiv:2303.11208) — working on a different but adjacent
   polygon-intersection quantity, and apparently the only other person to have
   published in this corner recently. May know the folklore.
