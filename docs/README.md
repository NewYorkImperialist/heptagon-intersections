# Documentation index

Two kinds of document live here, and the difference matters.

**Written during repository organization (2026-09-13)** — these describe the
project's status conservatively and are maintained going forward:

| File | Purpose |
|---|---|
| [`verification-status.md`](verification-status.md) | **Authoritative.** Trust status of every claim. Overrides every other document and every transcript. |
| [`known-issues.md`](known-issues.md) | Every open gap and unresolved question, numbered `K-01`…`K-13`. |
| [`a7-independent-resolution.md`](a7-independent-resolution.md) | **The A7-EXT resolution attempt** and its verdict (`VERY STRONGLY CORROBORATED — HUMAN REVIEW STILL DESIRABLE`). Includes the counterexample showing AKR Observation 6 is false as printed. Read with `a7-independent-proof.md`. |
| [`a7-independent-proof.md`](a7-independent-proof.md) | Direct from-scratch proof attempt: Observation 6′ proved; Lemma 7 reconstruction partial (three of twelve terminal cases). Carries two corrections from hostile review. |
| [`akr-l7-human-review.md`](akr-l7-human-review.md) | **The one open mathematical review item**, written to be read standalone by a combinatorial geometer in ~3 pages. Start here if you are reviewing the mathematics rather than the code. |
| [`external-lemma-audit.md`](external-lemma-audit.md) | Full hypothesis-by-hypothesis audit of every external lemma against the published papers. |
| [`computational-method.md`](computational-method.md) | Method summary and the reproduction guide, with what does and does not run. |
| [`literature-notes.md`](literature-notes.md) | Sources, published bounds, and the imported lemmas. |
| [`ai-disclosure.md`](ai-disclosure.md) | How this work was produced and how LLM output is treated. |

**Original research documents.** These were preserved byte-for-byte until
2026-09-13. **`proof-outline.md` has since been edited**: its Step 0 was found to
be mathematically incorrect and has been replaced by a citation to AKR §9.1 (see
`known-issues.md` K-10). The active proof must be correct, so the repair was made
in place; the failed argument remains in git history and the supersession is
stated in the file itself. The other two remain unedited:

| File | Written | Status |
|---|---|---|
| [`proof-outline.md`](proof-outline.md) | latest pipeline, **Step 0 repaired 2026-09-13** | The current argument in theorem/lemma form. Now carries a status banner and an explicit note recording that its original Step 0 was incorrect. Read alongside `verification-status.md`. |
| [`audit-report.md`](audit-report.md) | mid-project | The project's adversarial self-audit. Found defects D1 and D2. Note it states that the result is *not* mitigated by an independent reimplementation — which contradicts the later `proof-outline.md` claim of "2 independent implementations" (see `known-issues.md` K-02). |
| [`lean-architecture.md`](lean-architecture.md) | design stage | The original seven-file Lean plan. **Superseded in an important way and preserved unedited.** It plans an `Imported.lean` holding Černý L1–L3 and AKR L5, L7 **as `axiom`s**, and an axiomatic `Classification.lean`. That is *not* what was built: `Lemma7Bridge.lean` takes the AKR-L7 consequence as an explicit **hypothesis**, never an axiom, and no project-specific axiom exists anywhere in `lean/`. Read [`../lean/README.md`](../lean/README.md) for what actually exists. It also has an off-by-one in its own text ("Seven files" above a table of eight rows, 0–7); left unedited as an original document. |

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

* `proof-outline.md` certifies "0 … in **2 independent implementations**". Only
  one implementation exists in these materials (K-02).
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
