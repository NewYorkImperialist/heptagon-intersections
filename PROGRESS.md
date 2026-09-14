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
