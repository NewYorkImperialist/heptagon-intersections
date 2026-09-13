# A Proof Dependency Manifest for a Candidate Computer-Assisted Proof of `f(7,7) = 38`

**Jayden Lin** — Northeastern University · 13 September 2026

## Disclosure of generative-AI use

Generative-AI systems — principally Anthropic's Claude, together with OpenAI's
ChatGPT — were used substantially throughout this project: proof exploration and
the search for the reduction strategy; literature-guided reasoning about the
published results; generation of essentially all software, in Python, C++ and
Lean; the computational experimentation; debugging; the construction of redundant
and independent verification paths; the Lean formalisation; source auditing of
the cited papers; and the drafting of the documentation, including this manifest.

The named author is responsible for the claims made here. AI-generated output was
not treated as inherently trustworthy. Each major claim is discharged by an
explicit, separately recorded mechanism — source audit, independent
reimplementation in a second language, an externally sourced dataset, a
machine-checkable certificate with a standalone checker, or Lean-kernel
verification — and the dependency table records which applies to which claim.
Several substantive errors introduced during AI-assisted development were caught
by those mechanisms and are catalogued below rather than quietly repaired.
Project artifacts and provenance, including the complete development
transcripts, are preserved in the repository.

No claim is made about conformance with any particular publisher's or
institution's generative-AI policy; that must be assessed separately.


> **The authoritative version of this document is
> [`../paper/proof-manifest.tex`](../paper/proof-manifest.tex)** (compiled:
> `paper/proof-manifest.pdf`). This Markdown file is a convenience mirror; where
> the two differ, the LaTeX file is correct.

> **Status.** This describes a *candidate* computer-assisted proof. All currently
> known computational components have been independently checked or formally
> verified, but the interpretation of AKR Observation 6 / Lemma 7 remains subject
> to external human review. The result should not be treated as established.

## The reductio in one line

With `G^D` the bipartite disjointness graph on the 7+7 sides and `I + |E^D| = 49`:

```
I = 40  ⟹  |E^D| = 9                         [ I + |E^D| = 49 ]
        ⟹  δ(G^D) ≥ 1                        [ C1  = Černý L1 ]
        ⟹  P and Q both exceptional          [ LA  = Lemma A + parity ]
        ⟹  profiles ∈ {14} × {14}            [ OT, EX = order-type classification ]
        ⟹  225 terminal triples / 121 graphs [ GR, COMP + A5-C, A7, C2 ]
        ⟹  every triple violates AKR L5      [ A5-A, CERT, LEAN-END ]
        ⟹  ⊥
```

Hence `I ≠ 40`; with `I ≠ 42` and parity excluding 39 and 41, `I ≤ 38`; and the
explicit construction attains 38. Therefore `f(7,7) = 38`.

## Dependency summary

| ID | Claim | Type | Source | Verification | Remaining risk |
|---|---|---|---|---|---|
| **GP** | general position may be assumed | published | AKR §9.1, §3 | SOURCE-AUDITED | none known; project's own earlier proof was **wrong**, removed |
| **C1** | `δ(G^D) ≥ 1` | published | Černý L1 | SOURCE-AUDITED | none known |
| **C2** | forbidden local perfect matching | published | Černý L2 | SOURCE-AUDITED | none known |
| **A5-C** | L5 on consecutive pairs | published | AKR L5 | SOURCE-AUDITED | none known |
| **A5-A** | L5 on avoiding pairs | published | AKR L5 | SOURCE-AUDITED; bridge LEAN-KERNEL-CHECKED | none known |
| **A7** | L7 ⟹ `H` bipartite | published + project inference | AKR L7 | **HUMAN REVIEW PENDING** | **principal open item** |
| **LA** | Lemma A + parity ⟹ `I ≤ 38` | project lemma | this project | LEAN-KERNEL-CHECKED (counting core) | geometric premises stay hypotheses |
| **OT** | 135 order types | external dataset | Aichholzer et al. | EXTERNALLY CROSS-CHECKED (exact set equality) | none known |
| **EX** | 6,342 simple → 16 exceptional → 14 classes | enumeration | this project | INDEPENDENTLY REIMPLEMENTED; 6,342 externally cross-checked | none known |
| **GR** | 13,003,620 candidate graphs | enumeration | this project | INDEPENDENTLY REIMPLEMENTED + closed form | none known |
| **COMP** | pipeline → 121 graphs / 225 triples | enumeration | this project | INDEPENDENTLY REIMPLEMENTED (exact set match) | inherits **A7** |
| **CERT** | each of the 225 violates AKR L5 | certificate | this project | CERTIFICATE-CHECKED | completeness not certified |
| **LEAN-LB** | 38 crossings, simple, general position | Lean | `lean/LowerBound.lean` | LEAN-KERNEL-CHECKED | simplicity is orientation-level |
| **LEAN-LA** | counting + parity core | Lean | `lean/LemmaA.lean` | LEAN-KERNEL-CHECKED | an implication |
| **LEAN-END** | all 225 fail L5; `iff` bridge | Lean | `lean/Endgame.lean` | LEAN-KERNEL-CHECKED | completeness not formalized |
| **LB38** | `f(7,7) ≥ 38` | construction | this project | LEAN-KERNEL-CHECKED | none known |
| **UB40** | `I = 40` impossible | composite | GP, C1, C2, A5, A7, LA, COMP | conditional on **A7** | **fails if A7 fails** |

## Filter pipeline

| Count | Next filter | Justification | Checked by |
|---:|---|---|---|
| 13,003,620 | AKR L5, consecutive | A5-C | Python, C++ |
| 42,238 | AKR L7 ⟹ `H` bipartite | A7 | Python, C++ |
| 24,990 | crossing-set compatibility | elementary | Python, C++ |
| 2,300 | Černý L2, class-dependent | C2 | Python, C++ |
| 121 | *(change of counted object)* | — | — |
| 225 | AKR L5, avoiding | A5-A | Python, C++, certificate, Lean |
| 0 | — | — | — |

**`121 → 225` is not a filter.** Counts up to 121 are *graphs*; 225 counts
*triples* `(class_P, class_Q, G)` on those same 121 graphs, since a graph may be
compatible with several classes on either side.

**Černý Lemma 3 is not a dependency.** Running the pipeline with and without it
gives an identical set of 225 terminal triples.

## Strict vs loose exceptional condition

| Reading | Exceptional objects |
|---|---|
| **strict** — every line *disjoint from V(P)* misses some side of `S` | **16** |
| loose — no line at all meets all four closed sides | 2,268 |

Strict is the correct reading: Lemma A is only ever instantiated at the lines
`ℓ(q_j)`, which avoid `V(P)` by general position (GP5).

## Lean trust boundary

| File | Imports | Axioms | Proves |
|---|---|---|---|
| `LowerBound.lean` | **none** (core Lean) | `propext` | 38 crossings; simplicity; general position; counted over provably all 49 pairs |
| `LemmaA.lean` | Mathlib | `propext`, `Classical.choice`, `Quot.sound` | counting + parity ⟹ `I ≤ 38`, as an implication; non-vacuity |
| `Endgame.lean` | **none** (core Lean) | `propext`, `Quot.sound` | all 225 fail AKR-L5; components recomputed in-kernel; `AKR5Conclusion ↔ AKR5Adjacent` (axiom-free) |

No `sorry`, `admit`, project `axiom`, `unsafe`, or `native_decide` in any file.

> Key finite and combinatorial components are formally verified in Lean; the
> published geometric lemmas remain external dependencies. `f(7,7) = 38` is
> **not** a Lean theorem.

## Known defects found during development

| Defect | Affected the theorem? | Superseded by |
|---|---|---|
| 13,484,940 enumeration bug (`|E| ∈ {7,8,9}`) | No — a superset was searched | corrected enumeration + closed form |
| Raw component-ID comparison in a checker | No — checker bug | relabelling-invariant comparison |
| Lean `Odd` / `autoImplicit` vacuity | No — file had never compiled | `LemmaA.lean` with `autoImplicit false` |
| Step 0 perturbation argument | No — AKR §9.1 gives the statement | **GP** (citation) |
| Strict vs loose exceptional condition | Would have been severe if implemented | strict form `(★)` |

## Remaining work

1. External human review of AKR Observation 6 / Lemma 7 — see
   [`akr-l7-human-review.md`](akr-l7-human-review.md).
2. Ideally, confirmation from an AKR author.
3. Independent expert review of the overall proof.
4. Convert this manifest into a readable paper.
5. The human author learning the argument well enough to defend it.
6. Further Lean formalization only where it improves the trust boundary.

Formalizing all of Černý or all of AKR is **not** required by this architecture.

## Final trust statement

> The project currently contains a heavily audited **candidate** computer-assisted
> proof of `f(7,7) = 38`. The novel finite reductions and the terminal elimination
> have been independently implemented, certificate checked, and in key places
> Lean-kernel verified. The principal remaining mathematical issue is the
> interpretation and application of AKR Observation 6 and Lemma 7 in the
> auxiliary-graph bipartiteness step. Independent expert review remains required
> before the result should be treated as established.
