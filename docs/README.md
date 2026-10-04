# Documentation index

> **Start here (added 2026-10-04).** The current statement of what is proved,
> what is Lean-verified, what is external and what is unresolved is in
> [`../README.md`](../README.md) → "Current status". The mathematical write-up
> is [`../paper/heptagon-paper.pdf`](../paper/heptagon-paper.pdf) (Theorem 1.2);
> the audit of the formal statement and its evidence is
> [`audit/audit.pdf`](audit/audit.pdf);
> [`mathdb-submission.md`](mathdb-submission.md) is a submission draft prepared
> for MathDB (the problem has since been submitted to TheoremDB instead). Many
> files below describe earlier stages of the project and carry historical
> banners.

Two kinds of document live here, and the difference matters.

**Written during repository organization (2026-09-13)** — these describe the
project's status conservatively and are maintained going forward:

| File | Purpose |
|---|---|
| [`verification-status.md`](verification-status.md) | **Authoritative.** Trust status of every claim. Overrides every other document and every transcript. |
| [`mathdb-submission.md`](mathdb-submission.md) | **Submission draft (2026-10-04)** prepared for MathDB; the problem has since been submitted to TheoremDB. States the proved scope, the external §9.1 reduction and the review status. |
| [`roadmap.md`](roadmap.md) | **SUPERSEDED 2026-09-17 —** **Dependency roadmap** toward a kernel-checked theorem: current state by component, risks ranked by track record rather than effort, three candidate A7 routes, and the single recommended next milestone. |
| [`known-issues.md`](known-issues.md) | Every open gap and unresolved question, numbered `K-01`…`K-22`. *(Range corrected 2026-09-17: it read `K-21`, and `K-22` has existed since 2026-09-14.)* |
| [`covering-step.md`](covering-step.md) | **The current upper-bound route.** The two minimal forbidden crossing patterns, the five-layer covering argument, and the bridge to `Config`. Added 2026-09-17. |
| [`akr-9-1-obligation.md`](akr-9-1-obligation.md) | **Authoritative on the general-position citation.** What AKR §9 proves, what §9.1 does *not* say, and why the collinearity clause rested on one sentence of §3. *(Historical on that point: the collinearity clause is now proved, `RawConfig.raw_crossPairs_card_le_38`.)* |
| [`residual-412-lean.md`](residual-412-lean.md) | The 412 AKR-Lemma-7-free residual graphs, refuted in Lean. Superseded as a route by `covering-step.md`; §4 remains the clearest statement of the `GP`-versus-`Config` gap. |
| [`akr-l7-review-request.md`](akr-l7-review-request.md) | **The AKR Lemma 7 question, as it should now be asked.** Supersedes `akr-l7-human-review.md`. Self-contained, with a drafted author question. |
| [`e7-geometric-residue.md`](e7-geometric-residue.md) | Analysis of what the exceptional classification's geometric residue would require. Nothing proved; and since 2026-09-17 the classification is not an input to the upper bound. |
| [`a7-independent-resolution.md`](a7-independent-resolution.md) | **The A7-EXT resolution attempt** and its verdict (`VERY STRONGLY CORROBORATED — HUMAN REVIEW STILL DESIRABLE`). Includes the counterexample showing AKR Observation 6 is false as printed. Read with `a7-independent-proof.md`. |
| [`a7-independent-proof.md`](a7-independent-proof.md) | Direct from-scratch proof attempt: Observation 6′ proved; Lemma 7 reconstruction partial (three of twelve terminal cases). Carries two corrections from hostile review. |
| [`akr-l7-human-review.md`](akr-l7-human-review.md) | **SUPERSEDED — do not cite.** *(Corrected 2026-09-17. This row read "**The one open mathematical review item**, written to be read standalone by a combinatorial geometer in ~3 pages. Start here if you are reviewing the mathematics rather than the code." Two things were wrong. `verification-status.md` row 9a records this document as having become a third retraction with an unsound central section, superseded by [`akr-l7-review-request.md`](akr-l7-review-request.md) — the status file corrected its own pointer on 2026-09-16 and this index was not updated. And since 2026-09-17 the AKR Lemma 7 question is not a review item for the proof at all: it is an open question about the published paper on which nothing here depends. Retained, not repaired.)* |
| [`external-lemma-audit.md`](external-lemma-audit.md) | Full hypothesis-by-hypothesis audit of every external lemma against the published papers. |
| [`computational-method.md`](computational-method.md) | Method summary and the reproduction guide, with what does and does not run. |
| [`literature-notes.md`](literature-notes.md) | Sources, published bounds, and the imported lemmas. |
| [`ai-disclosure.md`](ai-disclosure.md) | How this work was produced and how LLM output is treated. |
| [`reviewer-guide.md`](reviewer-guide.md) | **PARTLY SUPERSEDED — read the banner first, and read `verification-status.md` alongside it.** Self-contained walkthrough for a combinatorialist who has never seen the problem. Its §1 and §6 preamble are still the best orientation in the repository, but **its own banner declares §§2, 3, 4, 5 and 6.1–6.8 superseded** (they are written for the enumeration route, which the upper bound no longer uses), §7's "what would falsify this" table targets that same dead route, and **it knows nothing after 2026-09-17** — in particular nothing about the AKR §9 work, which is where all of the remaining risk now sits. *(Relabelled 2026-09-24. This row read "**Start here if you are reviewing.**" with no caveat, which sent a reviewer straight into five superseded sections. If you are reviewing, start with `verification-status.md` and this file's §1/§6 preamble.)* |
| [`a7-specification.md`](a7-specification.md) | Precise specification of the A7 geometry-to-finite-model bridges. |
| [`proof-manifest.md`](proof-manifest.md) | Per-claim dependency manifest (mirrors `paper/proof-manifest.tex`). |
| [`handoff-2026-09-14.md`](../archive/notes/handoff-2026-09-14.md) *(moved to `archive/notes/`)* | Chronological session log for 2026-09-14. Sections are append-only and **earlier sections are superseded by later ones** — §10 is the final position. |
| [`akr-9-2-in-lean.md`](akr-9-2-in-lean.md) | **§9.2's half of the general-position reduction, in Lean — what is proved and what is not.** Written 2026-09-22. Companion to `../independent/akr_9_2/REPAIR.md`, which states the repair on paper. Sixteen modules, 376 declarations, `sorry`-free and `native_decide`-free. This is the document behind `verification-status.md` rows 113 and 121: `Pair9Shift.points9_le_38_of_coincFree`. |
| [`akr-9-assembly.md`](akr-9-assembly.md) | **How the §9 pieces compose, and where they do not.** Written 2026-09-21. The dependency graph of §9 step by step, the count inequality assembled — "the piece nobody had written down" — and the reduction theorem. Explicitly *"an assembly document. It closes nothing."* Every claim about a Lean theorem was checked against the `.lean` source. |
| [`akr-9-2-obligation.md`](akr-9-2-obligation.md) | **§9.2 stated as an obligation, with explicit quantifiers.** Written 2026-09-20; the §9.2 companion to `akr-9-1-obligation.md`. Records that §9.2's published argument is **five sentences with no case analysis and no lemma**, that its load-bearing averaging claim is **asserted without proof**, and proves it under hypotheses AKR do not state. Predates `akr-9-2-in-lean.md`; its "nothing here is in Lean" scope note is no longer true. |
| [`akr-9-attempt.md`](akr-9-attempt.md) | **The first §9 attempt (2026-09-17), and its negative outcome.** `exists_noVertexOnOther_ge` is **not** proved; neither global E9a nor global E9b is proved. Records two useful negative findings, including the cone-containment witness that independently reproduces the project's own K-10 defect. `verification-status.md` row 53. |
| [`simplicity-preservation.md`](simplicity-preservation.md) | **A Lean lemma: simplicity survives every sufficiently small linear motion of the vertices.** A partial result toward the simplicity half of the §9.1 reduction, not yet assembled with it. Written 2026-09-20; the artifact is `../lean/SimplicityStable.lean`. AKR never state this step at all. Also records **one case in which the informal argument of `akr-9-1-obligation.md` §6.2 is false**. |
| [`uniform-eps-lean.md`](uniform-eps-lean.md) | **The uniform-ε machinery, formalised** (`../lean/UniformEps.lean`). Lemma U, Theorem U, Corollary U′ and the bootstrapping principle — the quantitative step of §9 that the earlier audit called the hardest to formalize. A **live progress log**, updated as the work happens; read its status line before quoting it. |
| [`hostile-review-2026-09-21.md`](../archive/notes/hostile-review-2026-09-21.md) *(moved to `archive/notes/`)* | **Adversarial pass over the §9 work of 2026-09-20/21**, written to break things rather than extend them. Graded BROKEN / GAP / DOUBTFUL / SURVIVES, with exact arithmetic throughout and no Lean build run. Read this before believing any §9 claim in the other four §9 documents above. |
| [`literature-check.md`](literature-check.md) | **Prior-art search** for the claims of `covering-step.md` and `verification-status.md` rows 41–44 (2026-09-17). Performed by an AI agent, not a domain expert, over roughly two dozen queries with **no paywalled full text reached**. It is a search log with assessments, and is explicitly **not** an assertion of novelty. |

*(Index completed 2026-09-14: these five files existed but were not listed.)*

*(Index completed again 2026-09-17: six more files existed but were not listed —
`covering-step.md`, `akr-9-1-obligation.md`, `residual-412-lean.md`,
`akr-l7-review-request.md`, `e7-geometric-residue.md` and `proof-outline.md`,
the last of which is indexed in the second table below. The first two of those
are the most important documents written since 2026-09-15 and a reader arriving
at this index would not have found them.)*

*(Index completed a **third** time, 2026-09-24: **eight** more files existed and
were not listed — `akr-9-2-in-lean.md`, `akr-9-assembly.md`,
`akr-9-2-obligation.md`, `akr-9-attempt.md`, `simplicity-preservation.md`,
`uniform-eps-lean.md`, `archive/notes/hostile-review-2026-09-21.md` and
`literature-check.md`. Seven of the eight are the **AKR §9 work**, which is the
whole of the remaining mathematical risk and the newest thing in the
repository; a reader arriving at this index would have found no trace of it.
The index now covers **all 31 files in `docs/`** — verify with
`ls docs/*.md | wc -l` against the links in this file. Twice is a pattern and
three times is a process failure, so the check is written down here rather than
left implicit: **when you add a file to `docs/`, add its row to this table in
the same commit.**)*

**Original research documents.** These were preserved byte-for-byte until
2026-09-13. **`proof-outline.md` has since been edited**: its Step 0 was found to
be mathematically incorrect and has been replaced by a citation to AKR **§9,
together with §3's unproved "for convenience" clause** (see `known-issues.md`
K-10, and `akr-9-1-obligation.md` which is authoritative on the attribution). *(Updated 2026-10-04: §3's clause and §9.2 are now
proved; §9.1 alone remains external.)*
The active proof must be correct, so the repair was made in place; the failed
argument remains in git history and the supersession is stated in the file
itself. *(Citation corrected 2026-09-17: this paragraph said "§9.1". §9.1 is
the vertex-vertex half of "no vertex of one polygon on the boundary of the
other" and says nothing about collinearity, which is the half the development
actually consumes.)*

**Correction, 2026-09-14.** This section used to say "the other two remain
unedited". That is no longer true of either of them, and the claim was left
standing after the edits were made:

* `lean-architecture.md` now carries a **SUPERSEDED (2026-09-14)** banner at the
  top. Its body below the banner is unedited.
* `audit-report.md` now carries a **historical status banner** at the top. Its
  body below the banner is unedited.

In both cases the original text is intact below the banner, and the banner is
the only addition.

| File | Written | Status |
|---|---|---|
| [`proof-outline.md`](proof-outline.md) | latest pipeline, **Step 0 repaired 2026-09-13** | The current argument in theorem/lemma form. Now carries a status banner and an explicit note recording that its original Step 0 was incorrect. Read alongside `verification-status.md`. |
| [`audit-report.md`](audit-report.md) | mid-project | The project's adversarial self-audit. Found defects D1 and D2. **Banner added 2026-09-14; body unedited.** Note it states that the result is *not* mitigated by an independent reimplementation — which contradicts the later `proof-outline.md` claim of "2 independent implementations" (see `known-issues.md` K-02, now PARTIALLY RESOLVED). Its "Assumptions that remain" §2 also restates the project's own general-position perturbation argument, which was later found **incorrect** (K-10). |
| [`lean-architecture.md`](lean-architecture.md) | design stage | The original seven-file Lean plan. **Superseded; a banner was added 2026-09-14 and the body below it is unedited.** It plans an `Imported.lean` holding Černý L1–L3 and AKR L5, L7 **as `axiom`s**, and an axiomatic `Classification.lean`. That is *not* what was built: `Lemma7Bridge.lean` takes the AKR-L7 consequence as an explicit **hypothesis**, never an axiom, and no project-specific axiom exists anywhere in `lean/`. Read [`../lean/README.md`](../lean/README.md) for what actually exists. It also has an off-by-one in its own text ("Seven files" above a table of eight rows, 0–7); left unedited as an original document. |

## Reading them safely

These three documents were written by the author mid-research, and they use
language a finished result would earn. In particular `proof-outline.md` opens
"**Theorem.** Two simple heptagons in general position have at most 38 boundary
intersection points" and closes "∎".

That is **not** this repository's position. The official status is:

> Candidate computer-assisted proof that `f(7,7) = 38`, undergoing independent
> verification and formalization.

The documents were deliberately left unedited: rewriting the research record to
match a later, more cautious assessment would destroy exactly the provenance
this repository exists to preserve. The reconciliation lives in
`verification-status.md`, which is authoritative.

Specific things to keep in mind while reading them:

* `proof-outline.md` certifies "0 … in **2 independent implementations**". The
  second implementation it refers to is **not** in these materials. A *different*
  second implementation (C++, `independent/implementation_b/`) was written later
  and reproduces the reduction down to the 225 triples exactly — but it does
  **not** run the final avoiding-pair filter, i.e. the `225 → 0` step that
  proof-outline's sentence is about (K-02, K-20). So the quoted certificate line
  is still not supported. *(Updated 2026-09-14; this bullet used to read "Only
  one implementation exists in these materials", which K-02's partial resolution
  had overtaken.)*
* `proof-outline.md` asserts "**Černý Lemma 3 is NOT needed**". This was
  confirmed on 2026-09-13 (K-06) and is no longer a caveat.
* `proof-outline.md` Step 8's figures — 225 combinations, 121 graphs, all
  `(2,2,1⁵)` — were confirmed on 2026-09-13 and now ship as a certificate that is
  also kernel-checked in Lean (K-03).
* Both SHA-256 digests quoted in `proof-outline.md` refer to an unrecorded
  serialization and cannot be checked (K-07).
* `audit-report.md`'s correctness evidence (340,335 predicate cross-checks;
  129,812 realizable configurations) cannot be re-run: the required data files
  and scripts are absent (K-05).

None of this makes the argument wrong. It means the argument is not yet
*checkable* at the level a referee would require — which is precisely why the
status is "candidate".
