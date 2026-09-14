# Transcripts

## What these are

Records of the LLM sessions in which this project was developed, preserved as
**research provenance**.

**Two kinds, and the distinction matters when citing them.** The first
(`2026-09-13-claude-session-01.md`) was received as a file and is byte-for-byte
unmodified. The rest are **derived** from Claude Code's own session logs: they
contain every user message and every assistant reply, plus a one-line record of
each tool call, but *not* the tool output — build logs, file dumps and command
results, which are roughly 97% of the raw bytes and merely duplicate this
repository's own contents. Internal reasoning blocks and harness scaffolding are
also omitted, and home-directory paths are normalised to `~`.

Each derived transcript records the SHA-256 of the log it came from, and
`scripts/extract-transcripts.py --check` re-derives them to confirm the committed
copies still reproduce. See [`MANIFEST.md`](MANIFEST.md) for the full mapping and
one caveat about the final, still-running session.

This project was developed with extensive large-language-model assistance: the
literature review, the formulation and proof of Lemma A, the general-position
reduction, the translations of the external lemmas, every Python program, the
self-audit, the Lean skeleton, and the organization of this repository were all
produced with **Claude** (Anthropic), with **ChatGPT** (OpenAI) used for
auditing, debugging Lean, reviewing claims and organizing verification. See
[`../docs/ai-disclosure.md`](../docs/ai-disclosure.md).

## Mathematical claims in transcripts are NOT verified

Read this directory as a record of **how the work happened**, never as a record
of **what is true**.

A statement appearing in a transcript has no verified status whatsoever. The
transcripts contain, among other things:

* the mislabelled count of 13,484,940 "9-edge graphs" (actually `|E| ∈ {7,8,9}`);
* intermediate survivor counts (3,522 and 64) that were later shown to be
  artifacts of representative labelling;
* an order-type enumeration that first produced 3, 4, 32, 381 before the missing
  4-point Radon relation was derived;
* a statement of Lemma A that had to be repaired mid-project, because
  "no line meets all of `S`" did not license what the code actually computed;
* a claim that the Lean files contain `sorry`s, when the one delivered Lean file
  contains none.

These errors are kept on purpose. A cleaned-up record would misrepresent how the
result was reached and would hide exactly the kind of mistake a referee needs to
look for. The self-corrections are as much a part of the provenance as the
conclusions.

## What is authoritative instead

For the status of any claim, use — in this order:

1. [`../docs/verification-status.md`](../docs/verification-status.md) — the
   authoritative trust status, claim by claim. **It overrides every transcript.**
2. [`../docs/known-issues.md`](../docs/known-issues.md) — every open gap.
3. [`../docs/proof-outline.md`](../docs/proof-outline.md) — the current argument.
4. [`../results/`](../results/) — what actually reproduces.

Where a transcript and `verification-status.md` disagree, the transcript is
wrong or obsolete by construction.

## Contents

See [`MANIFEST.md`](MANIFEST.md) for the mapping from original filenames to the
names used here. Original filenames remain recoverable both from that manifest
and from the first commit in this repository's history, which is a verbatim
snapshot of the materials as received.

| File | Content |
|---|---|
| `claude/2026-09-13-claude-session-01.md` | The full development session: literature review → Lemma A → classification → elimination → self-audit → corrected pipeline → Lean architecture. |

## Integrity

Transcripts are **not** listed in `../data/hashes/SHA256SUMS`. They are large,
they are already preserved verbatim under version control, and hashing them adds
nothing an audit would use. Their integrity is guaranteed by git history.

No transcript has been edited, redacted, reordered or truncated. The only change
is the filename.
