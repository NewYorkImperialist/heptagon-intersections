# Continuous integration — what the green tick means, and what it does not

There is exactly one workflow: [`verify.yml`](verify.yml). It exists for a
single reason. Every other artifact in this repository — every build log, every
certificate, every `#print axioms` line — was produced on the author's own
machine, inside the AI-assisted process that produced the mathematics. A CI run
is not. GitHub clones this repository onto a machine nobody here controls,
installs the pinned toolchain from scratch, builds the headline chain, and runs
the repository's own checker against the log it just produced.

That is the whole value of the tick: **independent re-execution**, not more
assertions from us.

---

## 1. What the workflow runs

### Job `headline` — on every push to `master`, every PR into `master`, and on demand

| Step | What it asserts |
|---|---|
| Record the machine | Diagnostic only (cores, RAM, disk, `python3`, `rsync`). Never fails the run. |
| Ensure `rsync` | `scripts/negative-tests.sh` hard-requires `rsync` and exits 3 without it. |
| Install elan | The Lean toolchain manager, at no default toolchain. |
| Install and show the **pinned** toolchain | Asserts `lean/lean-toolchain` is **exactly** `leanprover/lean4:v4.33.1`. If the pin is ever moved, the run fails *here*, loudly, rather than quietly verifying a different Lean. |
| Show the dependency pins | Prints every package and its exact revision from `lean/lake-manifest.json` (mathlib is pinned to `0df444a3…`, input rev `v4.33.1`). |
| Fetch the Mathlib build cache | `lake exe cache get`. Pulls Mathlib `.olean`s for exactly the pinned revision. Without it, Mathlib alone is a multi-hour cold build. |
| **Build the `Headline` target** | `cd lean && lake build Headline`. Fails the run on any non-zero exit (`set -o pipefail` around the `tee`). |
| Assert no `sorry`, no `error` | **0** occurrences of `sorryAx`; **0** occurrences of `declaration uses 'sorry'`; no `error:` line; and **at least one** `depends on axioms:` line. The first three matter because `lake build` exits 0 on a proof containing `sorry` — it is only a warning — so the build's exit code is not on its own sufficient. The fourth is a floor, not a freshness test: it catches an empty or truncated log, and nothing more (see §4). |
| **Axiom check** | `bash scripts/verify-all.sh --axiom-log <build log> --out <dir>`. This is the repository's own checker, in a mode that needs no Lean: it parses `#print axioms` output, rejects any axiom outside `{propext, Classical.choice, Quot.sound}`, rejects `sorryAx` anywhere, and **fails if any of the six headline theorems printed no axiom line of its own**. Writes `axiom_check.txt` into the artifact directory. |
| **Negative tests, group A** | `bash scripts/negative-tests.sh --groups A`. Eight cases (A1–A8), about six seconds, no Lean. Two controls that must be **accepted**, six mutations that must be **rejected**: `sorryAx` in a headline theorem; a warm log with the headline lines missing; `Lean.ofReduceBool` (what `native_decide` leaves behind); a project-declared axiom; a log with no axiom output at all; and a disallowed axiom hidden on a *wrapped continuation line*. Without these, a green tick only says "the checker said yes"; these show the checker says **no** when it should. |
| Job summary + artifacts | The six headline axiom lines, the checker's verdict, and the negative-test table are written to the run summary; the full logs are uploaded as an artifact (90-day retention). |

The six theorems the axiom check requires (they are hard-coded in
`scripts/verify-all.sh` as `AXIOM_HEADLINES`):

```
Heptagon.MainTheorem.isGreatest_38
Heptagon.RealUpperBound.isGreatest_38_real
Heptagon.AKR9.points_le_38_of_no_vertex_on_boundary
Heptagon.AKR9.isGreatest_38_of_E9
Heptagon.Pair9Shift.points9_le_38_of_coincFree
Heptagon.Pair9Shift.isGreatest_38_of_coincFree
```

Five of the six are printed by `lean/Headline.lean` itself; the sixth,
`points_le_38_of_no_vertex_on_boundary`, is printed by `lean/AKR9.lean:420`,
which is inside the `Headline` closure. A CI run compiles all 332 modules of
that closure from source (331 dependencies plus `Headline` itself), so all six
lines are output the kernel produced on GitHub's machine, from this commit. In
the two recorded runs (`36086080499`, `36089101301`) Lake printed 346 `Built`
lines and 0 `Replayed`: the 332 project modules plus 14 jobs that build
Mathlib's `cache` tool. Keeping them that way is why the workflow
must not cache the project build tree — see §4, which is explicit about what
that rule does and does not rest on.

### Job `lean-mutations` — opt-in only, and probably infeasible here

Triggered only by **Run workflow** with the `run_lean_mutations` box ticked. It
runs `scripts/negative-tests.sh --lean --groups L`: a planted `sorry`, a
declared `axiom`, a `native_decide`, and — the one to read first — **L4, a
changed definition** (`points9` from an intersection to a union, with the
proofs untouched). L4 is what pins "Lean proved it" to the definitions the
statement is written in terms of; nothing in group A substitutes for it.

**Be honest about this job: it is not expected to go green on a hosted
runner.** Each L case invokes `scripts/verify-all.sh --steps 1` on a mutated
copy, and step 1 is `cd lean && lake build && lake build Headline` — the *full*
1,779-library build, four times over, with only Mathlib warm. The suite is
designed around a warm `lean/.lake` (`NEGTESTS_LAKE_DIR`), which a fresh clone
does not have. Run it on a self-hosted runner with a warm build tree, or
locally. The job is committed so the command is recorded and correct, not
because `ubuntu-latest` can finish it.

---

## 2. What CI does **not** cover

This section is the important one. Read it before treating the tick as more
than it is.

**It does not build 1,447 of the 1,779 declared libraries.** `lake build
Headline` builds 332 modules: the 331-module transitive closure of the four
roots (`MainTheorem`, `RealUpperBound`, `AKR9`, `Pair9Shift`) plus `Headline`
itself. The other 1,447 modules are never compiled in CI. Of those,
**1,084 are `OTEnum*` (542) and `Strat*` (542)** — the per-shard data modules
of the abandoned enumeration route. They are not in the headline import closure
and nothing in the live chain imports them. A cold build of all 1,779 is
roughly **17 CPU-hours**, dominated by those shards; it would exceed any
free-tier job limit, and it would not strengthen the headline claim.

*(Separately: 23 of the 1,779 declared libraries — including `AKR9`,
`Pair9Shift` and `Headline` — are deliberately **not** in `defaultTargets`, so
a plain `lake build` does not compile the headline theorems at all. That is why
CI builds `Headline` explicitly and not `lake build`.)*

**It does not make `f(7,7) = 38` an unconditional theorem.** What is formalized
is the *conditional* statement. AKR **§9.1**'s half of the general-position
reduction — removing vertex–vertex coincidences, i.e. no vertex of one polygon
*equal* to a vertex of the other — is **assumed**, imported as prose from the
literature, not proved in Lean. `Heptagon.Pair9Shift.isGreatest_38_of_coincFree`
carries that hypothesis in its name. §9.2's half *is* formalized
(`points9_le_38_of_coincFree` allows a vertex in the interior of the other's
side). See rows 4, 113, 117, 121, 124 and 130 of
[`docs/verification-status.md`](../../docs/verification-status.md) and the
opening of the top-level [`README.md`](../../README.md). **A green tick says the
Lean development compiles and rests on no axiom beyond `propext`,
`Classical.choice` and `Quot.sound`. It does not say the §9.1 gap is closed.**

**It does not run steps 2–6 of `scripts/verify-all.sh`.** The lower-bound
certificate, the 225-case endgame certificate, the SHA-256 data manifests, the
A7/DRAT evidence, and Implementation B are *not* checked here. CI runs step 1b
(the axiom check) only, against the log it just produced. Run
`scripts/verify-all.sh` locally for the rest.

**It does not run the Lean-level mutation tests by default.** Group A proves
the *parser* rejects bad logs. Only group L proves the *Lean development* is
load-bearing, and group L is opt-in (see above).

**It does not check the paper, the Python validators, or `independent/`.**

**A green tick is evidence about one build on one machine at one commit.** It is
not a proof that the mathematics is correct.

---

## 3. Adding a collaborator so they can view runs (private repository)

Actions works normally on private repositories; the runs are simply visible
only to people with repository access. To let a reviewer see them:

1. On GitHub, open the repository → **Settings** (top bar of the repo, not your
   account settings).
2. In the left sidebar, **Collaborators and teams** (on a personal account it
   is just **Collaborators**). GitHub will ask you to confirm your password or
   2FA.
3. Click **Add people**.
4. Enter their **GitHub username**, full name, or the email address attached to
   their GitHub account, and select them from the dropdown.
5. Choose a role. **Read** is enough to view Actions runs, logs, artifacts and
   the run summary. Pick **Read** unless there is a reason not to — a reviewer
   does not need write access, and Read cannot re-run or cancel workflows.
6. Click **Add \<name\> to this repository**. They receive an email invitation
   and must accept it; until they do, the repository stays invisible to them.
   A pending invitation expires after 7 days and can be re-sent from the same
   page.
7. Once accepted, send them the direct link:
   `https://github.com/<owner>/<repo>/actions/workflows/verify.yml`
   — or the specific run URL, which is stabler to cite in correspondence.

Notes worth passing on with the invitation:

- **Artifacts**: each run attaches `headline-verification-<run id>-<attempt>`,
  containing the full build log, the axiom report, the negative-test log, and
  the recorded toolchain and dependency pins. They are downloadable from the
  bottom of the run page and are kept for 90 days.
- **The run summary** (the page that opens when you click a run) shows the six
  headline axiom lines, the checker's verdict, and the pass/fail table for the
  eight negative tests, without downloading anything.
- **Re-running** requires Write access. If the reviewer wants to trigger a run
  themselves rather than read ours — which is the stronger form of the
  evidence — they need **Write**, and can then use **Run workflow** on the
  Actions tab (the `workflow_dispatch` trigger exists for exactly this).
- If the repository belongs to an **organization** rather than a personal
  account, add them to a team instead: **Settings → Collaborators and teams →
  Add people**, or **Teams → \<team\> → Members**. Organization members may also
  need `Settings → Actions → General` to permit their role to view logs.
- Actions minutes on private repositories are **billed to the repository
  owner**, including runs a collaborator triggers.

---

## 4. Maintenance notes

- **Do not add `actions/cache` for `lean/.lake/build`.** The reason is
  *provenance*, and it is worth stating precisely, because the obvious reason is
  wrong. Lake **replays** the stored diagnostics of an up-to-date module, so a
  warm build still prints every `#print axioms` line. That is measured, on this
  repository: `results/validation/2026-09-24_headline_build.log` is a fully warm
  `lake build Headline` — **271 `Replayed` jobs, 0 `Built`** — and it emits all
  **409** axiom directives in the closure, the six headline theorems among them,
  with zero `sorryAx`. So a cached run would go **green**, and none of the checks
  in this workflow would notice.

  That is exactly why the rule has to be a rule rather than an assertion. With a
  cache, the axiom lines in the log are text unpacked from an archive an earlier
  run uploaded — they attest the cache, not this commit, and a stale or poisoned
  cache would replay them just as faithfully. The tick would certify GitHub's
  ability to extract a tarball. The one thing this workflow exists to show is
  that a machine nobody here controls elaborated the proofs *from source*, so
  the project's own modules get compiled every time.

  **Mathlib is the deliberate exception, and it is not dogma.** Mathlib is not
  the artifact under test; a cold build of it alone is on the order of hours and
  would exceed the job limit. `lake exe cache get` fetches `.olean`s for exactly
  the revision pinned in `lean/lake-manifest.json`, which the run also prints.
  Caching a *dependency* is ordinary engineering; caching the artifact you are
  claiming to have verified is not. Caching `~/.elan` would be safe on the same
  reasoning, and was left out only to keep the moving parts down.
- **Do not add `-j` to `lake build`.** Lake 5.0 has no such flag. Build
  parallelism is `nproc`, which is 2 on a standard private-repo runner — close
  to serial, which is what this closure wants: it contains 28 `CoverCase*`
  modules needing roughly 730 MB RSS each.
- **The toolchain assertion is deliberate.** If `lean/lean-toolchain` is
  intentionally moved off `v4.33.1`, update the literal in the *Install and show
  the PINNED toolchain* step in the same commit. Do not delete the assertion.
- **Never run `lake update`** in CI: it would rewrite the pins in
  `lake-manifest.json` and verify something other than what is committed.
- **If the `headline` job times out**, the fix is a larger or self-hosted
  runner, not a smaller target — `Headline` is already the minimum that covers
  the claim. The cold cost of the closure on a 2-core runner has never been
  measured; the 300-minute ceiling is a guess with headroom, not a measurement.
