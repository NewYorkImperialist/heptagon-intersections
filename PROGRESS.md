# Overnight progress log

Persistent across context resets. Append; do not rewrite history.

## Objective
End-to-end Lean-kernel-checked `f(7,7) = 38`, faithful geometric definitions,
no unproved project-specific axioms.

## Standing distinctions (do not blur)
mathematical defect | correct-but-unformalized | solver result | checked external
certificate | Lean-kernel theorem | theorem whose statement matches the geometry.

---

## 2026-09-14, resumed after usage limit

### State inherited
- `lean/DisjointnessGraph.lean` (530 lines) complete and **verified by me**:
  clean build 758 jobs, `#print axioms` = `[propext, Quot.sound]` only, **zero
  `Classical.choice`**, `cert_masks = [8,8,8,4,4,4,115]` consistent with
  `disjoint_count_eq_11` and `per_P_side_counts`. Uncommitted.
- `docs/reviewer-guide.md` (1015 lines) — draft, agent killed mid-edit.
- `scripts/verify-all.sh` (471 lines) — draft, agent killed before fresh-clone test.
- `lean/EnumerationDomain.lean` — **absent**, agent killed before writing.
- 4 tracked evidence logs had been overwritten by a re-run. Checked: all 15
  verdicts/clauses/steps identical, only aggregate timing differed. **Restored**
  to the committed versions; fresh runs now write to an untracked location.

### Queue (priority order, from the overnight plan)
1. [done] Integrate + commit Track 1 (I2a bridge).
2. [ ] **A7 coverage reproducibility** — highest immediate priority. Ship the
       25-case replacement as executable evidence + certificates; stop
       `reproduce.sh` claiming complete coverage from the known-incomplete
       four-variant argument.
3. [ ] Honest `verify-all.sh` + clean-checkout test.
4. [ ] Real-polygon connection (Pt := Int × Int is not the intended theorem).
5. [ ] Enumeration completeness — four separate obligations, not one.
6. [ ] Remaining kernel obligations.
7. [ ] Reviewer guide finish.

---

## 2026-09-14, overnight session — EnumerationDomain integrated (`ead7b98`)

**Landed.** `lean/EnumerationDomain.lean` (867 lines) is the **11th** Lean
library. Clean build: 1279 jobs, exit 0. Forbidden-token scan clean across all
11 sources with comments stripped.

* **Obligation (1) — PROVED.** `toMasks_inDomain_of_crossCount_eq_40` holds for
  an *arbitrary* `Config`, not the certificate pair: 40 properly crossing side
  pairs ⟹ `toMasks K` is in the searched domain. Axioms `propext`,
  `Quot.sound`; **no `Classical.choice`**, no Mathlib result used in substance.
* **Obligation (2) — partial.** Both ends proved (`ieAlternatingSum_eq`,
  `gfCoeff9_eq_coeff`, `domain_card_inclusion_exclusion`); the two links between
  them are stated and unproved. Only `0 < domainFinset.card` is a kernel-checked
  cardinality fact.
* **Obligations (3), (4) — untouched.**

**I did not accept the agent's axiom claim.** Re-running `#print axioms` myself
found `crossCount_40_iff_edges_9` pulling `Classical.choice`, because
`cross_disjoint_link` was proved `by omega` on an `Iff`. Split into two
directions; all of Part A is now `{propext, Quot.sound}`, matching the claim.

**K-17 — an escalated finding that did not survive checking.** The agent
reported `Endgame.graphShapeOK`'s `(2,2,1,1,1,1,1)` requirement as an unchecked
filter hiding the `{3,1,1,1,1,1,1}` degree branch. The *observation* is right
(`sampleM` is a domain element with P-degrees `[1,1,1,1,1,1,3]` that the test
rejects) but the *conclusion* is wrong: `graphShapeOK` is a descriptive check on
the 225 survivors, not a search precondition, and **both** implementations
enumerate the degree-3 branch (`reduction.cpp:310-317`,
`audit_enum.py:68-69`), where it dies in the L5/L7/L3 filters. Resolved by
reading the search code. The Lean file's §A.8 comment is corrected in place with
the superseded reading left visible.

**K-18 — two real committed defects, found by the first genuine fresh-clone
run.** `data/hashes/SHA256SUMS.lean` was stale (4 of 8 entries FAILED; manifest
written at `a4aa6bc`, sources edited later at `f769255`) and 3 Lean sources were
unhashed. Regenerated over all 11 sources + `lakefile.toml` + `lean-toolchain`:
14/14 OK, not weakened to pass. `scripts/` was untracked, so a fresh clone had
no verification entrypoint. Both now fixed and committed. In-place testing
could not have found either.

**K-19 — three validators exit 0 on inputs that establish nothing**: an empty
`cases` list, a self-consistent lower-bound file reporting `I = 0`, and a DRAT
proof deriving no empty clause. The text is honest, the exit status is not.
`verify-all.sh` asserts the counts rather than trusting exit codes and self-tests
its own DRAT gate on every run; the underlying scripts are still unfixed.

**Running now:** A7 25-case coverage reconstruction; obligation (2) completion
(`lean/DomainCount.lean`); obligation (3) completeness-of-enumeration
(`lean/EnumerationComplete.lean`) — the latter framed as induction on the search
recursion, *not* kernel evaluation of 13M elements.

Status unchanged: **candidate computer-assisted proof that f(7,7) = 38.**
