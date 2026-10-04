# AI-assisted research disclosure

**Last updated:** 2026-09-14 *(note added 2026-10-04)*

> **Note, 2026-10-04.** The current AI-use disclosure is the one in
> `../paper/heptagon-paper.pdf` (the section preceding the appendix). On
> review status, see `verification-status.md` row 18: a colleague began
> reading an earlier dependency manifest in September 2026 and no findings are
> recorded; no independent review has been completed. The statements below
> that "independent human verification is still none" were written on
> 2026-09-14 and predate that row.

> The authoritative, and more complete, AI-use disclosure is now the one on the
> title page of [`../paper/proof-manifest.tex`](../paper/proof-manifest.tex)
> (mirrored in [`proof-manifest.md`](proof-manifest.md)). This file predates it
> and is kept for continuity.

## Summary

This project was developed with extensive large-language-model assistance.
Substantial portions of the literature review, mathematical exploration, code
generation, proof development, self-auditing, reimplementation and
formalization planning were performed by **Claude** (Anthropic) and
**ChatGPT** (OpenAI). The organization of this repository was itself performed
by Claude.

This disclosure exists so that a reader can calibrate how much independent human
checking stands behind each claim. The answer, at present, is: very little.

> **Update, 2026-09-17.** Figures: **1,756 declared libraries** (commit
> `d22c313`). The most recent committed full build is **1,755 libraries, 6,518
> jobs, exit 0** (`results/validation/2026-09-17_verify_all_after_real_config.log`)
> and predates the last two committed modules. Almost all
> of the 1,756 are generated per-shard data modules; the hand-written
> development is a few dozen files. The theorem census has not been re-run since
> 2026-09-15 and no figure for it is given here. **All of the work added since
> 2026-09-14 was also AI-performed**, including the covering argument, the
> `Config` bridge and `RealConfig` — which are the steps that made the upper
> bound for configurations in general position a Lean theorem importing no
> published lemma. *(The paragraph below is the 2026-09-14 version, retained.)*

> **Update, 2026-09-14.** The Lean formalization roughly tripled on this date —
> from 9 libraries to **25** (`lake build`, 1395 jobs, exit 0), and from a few
> dozen theorems to at least 706 (the last mechanical census was taken at 23
> libraries and has not been re-run) — and **all of that work was also
> AI-performed**, by Claude coordinating a set of subagents and, for part of it,
> OpenAI's Codex. The same applies to the measurements that now underpin
> `roadmap.md` §8a–§8d (kernel feasibility, concluded **negative**) and to the
> corrections recorded in `known-issues.md` K-17 through K-21.
>
> Two things are worth a reader's attention here rather than being buried:
>
> * Several of the day's findings were **corrections of the AI's own earlier
>   claims** — a wrong statement about where the degree-3 branch dies (K-17), an
>   overstated feasibility conclusion, an invalid benchmark, and a Lean file
>   committed unbuilt and unregistered. These were caught by re-measuring rather
>   than by review, which is the failure mode this disclosure exists to flag.
> * **Independent human verification is still none.** Nothing on 2026-09-14
>   changed that, and no amount of further formalization substitutes for it.
>   More machine-checked theorems make the *claims* sharper and the gaps more
>   precisely located; they do not supply the outside judgement the project
>   still lacks.

## What the models did

**Claude** was used for the main line of work:

* locating and reading the relevant literature (Dillencourt–Mount–Saalfeld 1993;
  Černý et al. 2003; Ackerman–Keszegh–Rote 2022; the withdrawn Günther preprint);
* formulating and proving **Lemma A**, the new counting lemma;
* the general-position reduction argument;
* translating AKR Lemmas 5 and 7 into combinatorial filters;
* writing every Python program in this repository;
* running the enumerations and the elimination pipeline;
* conducting an adversarial self-audit that found two real defects in its own
  earlier work (see `known-issues.md` K-01 and K-11);
* writing **every** Lean file in this repository — all **1,756** declared
  libraries as of commit `d22c313` *(figure corrected 2026-09-17; it read "all
  25 libraries")*, of which the first seven were `LowerBound.lean`, `LemmaA.lean`, `EndgameDefs.lean`,
  `EndgameData.lean`, `Endgame.lean`, `Lemma7Bridge.lean` and
  `CernyL2Interface.lean` — and designing the Lean architecture;
  *(updated 2026-09-14: this list was written when it was exhaustive and was left
  standing after eighteen more libraries were added; `lean/lakefile.toml` is the
  current list)*;
* auditing the cited papers against their published text;
* organizing this repository and writing the documentation in `docs/`.

**ChatGPT** was used for auditing, debugging Lean, reviewing claims, and
organizing verification.

## How LLM output is treated here

**LLM output is not authoritative.** Specifically:

* A mathematical claim appearing in a transcript has no status until it is
  either machine-checked, reproduced from source, or verified by a human. The
  transcripts are provenance, not evidence.
* `docs/verification-status.md` is the authoritative record of trust status, and
  it overrides any claim in any transcript, any proof document, and this file.
* The strongest statement this project makes is the conservative one:
  a **candidate** computer-assisted proof, undergoing verification.

## Why the transcripts are kept

> **Note (2026-10-04).** The transcripts are no longer distributed in the
> repository; the author keeps them as provenance. The paragraphs below describe
> why they were kept.

`transcripts/` preserves the full session record, unmodified, so that a reader
can separate two very different things:

1. **Where an idea came from** — exploration, false starts, abandoned
   approaches, and the corrections the model made to its own earlier claims.
2. **Whether the resulting claim is true** — which depends only on the proofs,
   the code, and the reproductions in `results/`, never on the transcript.

Keeping the record also preserves the failures. The transcripts contain the
mislabelled 13,484,940 count, the labelling-dependent intermediate figures, an
order-type enumeration that first produced 3, 4, 32, 381 before the missing
Radon relation was derived, and a definition of Lemma A that had to be repaired
mid-project. A cleaned-up record would misrepresent how the result was reached
and would hide exactly the kind of error a referee needs to look for.

## The specific risk in this project

Two implementations of the elimination were reportedly written and reportedly
agreed on an identical survivor-set hash. Both were written by the same model,
in the same language, in the same session, from the same reading of the same
papers. (Neither of *those two* is fully present in these materials — see
`known-issues.md` K-02.)

*(Clarified 2026-09-14. A **different** second implementation was written later
and is present: `independent/implementation_b/`, in C++, from a written spec,
with a different algorithm for every filter. It reproduces the reduction down to
the exact 225-triple set. Two caveats keep this from being the independence the
paragraph above asks for: the same model wrote it, having already read
Implementation A; and it does **not** run the final avoiding-pair filter, so the
`225 → 0` step — the step that actually refutes — still has no second
implementation. See K-02 and K-20.)*

Such agreement is evidence against a *transcription* error. It is **not**
evidence against a *conceptual* error, because both implementations inherit any
misreading of Černý et al. or Ackerman–Keszegh–Rote from a shared source. The
two translations most at risk are catalogued in `known-issues.md` K-09, and one
of them knowingly departs from the published wording of AKR Lemma 5 on the
grounds that the published wording cannot be what was meant.

An LLM auditing its own work shares its own blind spots. The self-audit in
`docs/audit-report.md` found two genuine defects, which is worth something — but
it is not a substitute for review by a different person.

## Human authorship and responsibility

Authorship of a mathematical result carries responsibility for its correctness.
Before any part of this work is submitted, presented, or cited as established,
a human author must:

* understand and be able to defend **Lemma A** and the general-position
  reduction without reference to a transcript;
* independently confirm the translations of AKR Lemmas 5 and 7 against the
  published papers — ideally, for Lemma 7, by correspondence with its authors;
* reproduce the computation from an independent implementation, preferably in a
  different language and by a different person;
* be able to explain the final elimination in human-readable terms, not as
  "the program returned zero".

None of these four conditions is currently met. Until they are, the status in
`docs/verification-status.md` stands unchanged.
