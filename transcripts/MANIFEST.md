# Transcript manifest

Mapping from source materials to the names used in this repository.

**Two kinds of transcript live here, and the difference matters.** Session 01 of
2026-09-13 was *received* as a file and is byte-for-byte identical to what was
received — only its name changed. Every later session is a **derived** transcript
extracted from Claude Code's own session logs; it contains the full conversation
but not the tool output. The section below says exactly what is kept and what is
dropped. Do not cite a derived transcript as a verbatim record.

| Original path | Current path | SHA-256 | Verified identical |
|---|---|---|---|
| `transcript.txt` | `claude/2026-09-13-claude-session-01.md` | `d86149490a6262478d86fa3c67af592ec57ccb96dd76cafe6a5cf4e5eedae4a1` | yes (2026-09-13) |

## Sessions 02 onwards — DERIVED transcripts (added 2026-09-14)

The session above was *received* as a text file and is byte-for-byte identical to
what was received. **The sessions below are different in kind and must not be
read as verbatim copies.**

They come from Claude Code's own JSONL session logs, which total roughly **18 MB**
— the large majority of which is tool *output*: file dumps, build logs and command
results that simply duplicate the contents of this repository. Committing them
verbatim would add megabytes of noise around the part that has research value.

What is committed instead is a **derived transcript** containing:

* every user message;
* every assistant reply;
* a one-line record of each tool invocation (name and description).

and deliberately **omitting**:

* tool result bodies;
* the assistant's internal reasoning blocks;
* harness scaffolding (system reminders, slash-command wrappers).

Absolute paths under the user's home directory are rewritten to `~`. The
transcripts were scanned before commit for email addresses, API keys and
credentials: **none were found.**

| Source log | Current path | Source SHA-256 | Session span (UTC) | Size |
|---|---|---|---|---|
| `8fe86978-e30b-426b-aae4-188ed76edd8c.jsonl` | `claude/2026-09-13-claude-session-02.md` | `4782edbc32aafe31…` | `2026-09-13T05:29:43` → `2026-09-14T20:13:17` | 394 KB |
| `b7452178-c93e-4615-8dab-01ce916ad8a7.jsonl` | `claude/2026-09-14-claude-session-01.md` | `6b21c65632172a89…` | `2026-09-14T02:29:42` → `2026-09-14T03:23:13` | 118 KB |
| `5df73377-5651-4588-833e-27750ad8bfea.jsonl` | `claude/2026-09-14-claude-session-02.md` | `b808bea23df720e6…` | `2026-09-14T20:16:04` → `2026-09-14T21:38:30` | 137 KB |

### Reproducing them

`scripts/extract-transcripts.py` regenerates these files from the source logs,
and `--check` verifies the committed copies still reproduce exactly:

```
python3 scripts/extract-transcripts.py --check
```

Each transcript records the SHA-256 of the log it came from, so a reader can
confirm which log produced it.

### One caveat, stated because it will otherwise look like a defect

The **final** session's transcript is a snapshot taken while that session was
still running. Re-running the extractor later will produce a *longer* file for
it, and `--check` will report a difference. That is correct behaviour, not
corruption: the recorded source SHA-256 identifies the exact log state the
committed snapshot was taken from. Earlier sessions are closed and reproduce
exactly.

## Naming scheme

```
claude/YYYY-MM-DD-claude-session-NN.md
```

`YYYY-MM-DD` is the date the materials were received and organized
(2026-09-13). The materials carry no internal session timestamp, so this date
records **receipt**, not necessarily when the session ran. `NN` orders sessions
within a day.

The `.md` extension replaces `.txt` because the content is Markdown throughout.
No byte was changed.

## Recovering the originals

Two independent routes:

1. This manifest.
2. The first commit in this repository (`Preserve original research materials`),
   which is a verbatim snapshot of the materials exactly as received, before any
   reorganization:

```bash
git log --oneline --diff-filter=A -- transcript.txt
git show <first-commit>:transcript.txt
```

The rename is also recorded as a git rename, so `git log --follow` traces it.

## Session summary

`claude/2026-09-13-claude-session-01.md` — a single long development session, in
roughly this order:

1. Literature review (DMS 1993; Černý et al. 2003; AKR 2022; the withdrawn
   Günther preprint), establishing that `38 ≤ f(7,7) ≤ 40` with 39 excluded by
   parity, and that `k = l = 7` is explicitly open.
2. The reduction to a question about a **single** polygon, and **Lemma A**.
3. "Question A" answered exhaustively — the answer is *no*, but only barely:
   exactly 16 of 6,342 simple heptagons are exceptional.
4. First elimination pipeline → 0 survivors.
5. An adversarial self-audit that found two real defects: the mislabelled
   13,484,940 graph count (D1) and labelling-dependent intermediate counts (D2).
6. Deterministic order-type enumeration replacing random sampling — which
   required deriving the missing 4-point Radon relation after Grassmann–Plücker
   alone gave 3, 4, 32, 381 instead of 2, 3, 16, 135.
7. Corrected pipeline: `13,003,620 → 42,238 → 24,990 → 9,702 → 0`.
8. Repair of the Lemma A hypothesis (★) to quantify over lines disjoint from
   `V(P)`, which is what the code actually computes.
9. A corrected definition of AKR "associated pairs" requiring the two non-edges,
   with an explicit counterexample showing AKR's Observation 6 fails under the
   looser reading.
10. A self-contained proof of the general-position reduction.
11. The 225-case endgame and the claim that Černý Lemma 3 is unnecessary.
12. The Lean architecture and `LemmaA.lean`.

Several artifacts described in this session are **not present** in the delivered
materials — Implementation B, six of the seven Lean files, `ot_fast.py`,
`search.py`, `combine.py`, `final.py`, `trace.py`, `confirm.py`, and every
generated pickle. See [`../docs/known-issues.md`](../docs/known-issues.md) K-02,
K-04, K-05 and K-08.
