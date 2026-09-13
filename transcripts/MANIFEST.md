# Transcript manifest

Mapping from original filenames, as received, to the names used in this
repository. Contents are **byte-for-byte identical**; only names changed.

| Original path | Current path | SHA-256 | Verified identical |
|---|---|---|---|
| `transcript.txt` | `claude/2026-09-13-claude-session-01.md` | `d86149490a6262478d86fa3c67af592ec57ccb96dd76cafe6a5cf4e5eedae4a1` | yes (2026-09-13) |

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
