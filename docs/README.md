# Documentation index

Two kinds of document live here, and the difference matters.

**Written during repository organization (2026-09-13)** — these describe the
project's status conservatively and are maintained going forward:

| File | Purpose |
|---|---|
| [`verification-status.md`](verification-status.md) | **Authoritative.** Trust status of every claim. Overrides every other document and every transcript. |
| [`roadmap.md`](roadmap.md) | **Dependency roadmap** toward a kernel-checked theorem: current state by component, risks ranked by track record rather than effort, three candidate A7 routes, and the single recommended next milestone. |
| [`known-issues.md`](known-issues.md) | Every open gap and unresolved question, numbered `K-01`…`K-21`. |
| [`a7-independent-resolution.md`](a7-independent-resolution.md) | **The A7-EXT resolution attempt** and its verdict (`VERY STRONGLY CORROBORATED — HUMAN REVIEW STILL DESIRABLE`). Includes the counterexample showing AKR Observation 6 is false as printed. Read with `a7-independent-proof.md`. |
| [`a7-independent-proof.md`](a7-independent-proof.md) | Direct from-scratch proof attempt: Observation 6′ proved; Lemma 7 reconstruction partial (three of twelve terminal cases). Carries two corrections from hostile review. |
| [`akr-l7-human-review.md`](akr-l7-human-review.md) | **The one open mathematical review item**, written to be read standalone by a combinatorial geometer in ~3 pages. Start here if you are reviewing the mathematics rather than the code. |
| [`external-lemma-audit.md`](external-lemma-audit.md) | Full hypothesis-by-hypothesis audit of every external lemma against the published papers. |
| [`computational-method.md`](computational-method.md) | Method summary and the reproduction guide, with what does and does not run. |
| [`literature-notes.md`](literature-notes.md) | Sources, published bounds, and the imported lemmas. |
| [`ai-disclosure.md`](ai-disclosure.md) | How this work was produced and how LLM output is treated. |
| [`reviewer-guide.md`](reviewer-guide.md) | **Start here if you are reviewing.** Self-contained walkthrough for a combinatorialist who has never seen the problem, with what to check and where the argument is weakest. |
| [`a7-specification.md`](a7-specification.md) | Precise specification of the A7 geometry-to-finite-model bridges. |
| [`proof-manifest.md`](proof-manifest.md) | Per-claim dependency manifest (mirrors `paper/proof-manifest.tex`). |
| [`handoff-2026-09-14.md`](handoff-2026-09-14.md) | Chronological session log for 2026-09-14. Sections are append-only and **earlier sections are superseded by later ones** — §10 is the final position. |

*(Index completed 2026-09-14: these five files existed but were not listed.)*

**Original research documents.** These were preserved byte-for-byte until
2026-09-13. **`proof-outline.md` has since been edited**: its Step 0 was found to
be mathematically incorrect and has been replaced by a citation to AKR §9.1 (see
`known-issues.md` K-10). The active proof must be correct, so the repair was made
in place; the failed argument remains in git history and the supersession is
stated in the file itself.

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
