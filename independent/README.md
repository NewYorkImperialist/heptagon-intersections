# Independent re-derivations and experiments

## NONE OF THIS IS PART OF THE PROOF

**Read this before anything else in this directory.**

`independent/` is **not in the trust chain.** The Lean development does not
depend on a single file here: no `.lean` module reads, imports, embeds or
executes anything in this directory (every mention of `independent/` in
`lean/*.lean` is a prose comment), and the development uses no
`native_decide`, no `include_str` and no `IO`. **Delete this entire directory
and every Lean theorem in the repository remains exactly as true as it was.**
What would be lost is *evidence about* the theorems and about the published
papers — corroboration, ablations, adversarial searches and counterexamples —
not any step of any proof. Verify the claim rather than taking it:

```bash
# every mention of this directory from Lean is inside a comment or docstring:
grep -rn 'independent/' lean/*.lean
# and the development reads nothing from disk at elaboration time -- the only
# `native_decide` / `include_str` hits are the scope notes saying there are none:
grep -rn 'native_decide\|include_str' lean/*.lean
```

`scripts/verify-all.sh` re-runs the comment-stripped version of that scan on
every build and fails if a real occurrence appears, which is the check to trust
rather than the greps above.

Two consequences a reviewer should draw:

* **A defect found here cannot invalidate a Lean theorem.** It can invalidate a
  *claim made about* a Lean theorem, or remove corroboration for an imported
  lemma, which is why the findings are worth reading. But the kernel-checked
  statements stand or fall on `lean/` alone.
* **A success here does not make anything a theorem.** "47,346 exact tests, 0
  violations" is a search, not a proof, and several directories below say so of
  themselves.

**Most of this will not run on your machine.** Of the 280 committed
Python/shell/C files here (**38,530 lines**), **36 Python files and 22 C files
hardcode absolute paths under `/Users/jaydenlin/…`** and will fail immediately
from a fresh clone. They are concentrated in `eps_uniform/` (26),
`pi8_human/` (15), `pi14_split/` (7) and `akr_9_assembly/` (6), with one each in
`pi8_tightness/`, `order_type_pi8/`, `akr_l7_reproduction/` and `akr_9_2/`.
Re-run the count:

```bash
cd independent
grep -rl '/Users/jaydenlin' --include='*.py' --include='*.sh' . | wc -l   # -> 36
grep -rl '/Users/jaydenlin' --include='*.c'  --include='*.h'  . | wc -l   # -> 22
```

The parts `scripts/verify-all.sh` actually exercises — `akr_l7_reproduction/`
steps 5b–5d and `implementation_b/` step 6 — do run from a clean checkout; see
"Running them" at the foot of this file. Everything else should be read as a
**recorded result with a committed log**, not as a reproducible artifact.

*(This section added 2026-09-24. The file previously opened straight into the
table, so a reader could not tell from here whether these ~38,000 lines were
load-bearing. They are not, and saying so plainly is more useful than leaving
it to be inferred.)*

---

## The investigations

**Seventeen** separate investigations, each in its own subdirectory, each
written to check something the main pipeline in `../python/` asserts, or to
probe a claim the paper makes. They differ sharply in how independent they
actually are, and the difference is the whole point of keeping them apart —
read each subdirectory's own README before quoting it.

> This index said "Four separate investigations" and tabled four until
> 2026-09-20, while nine further directories sat here uncited (a tenth, `e9_directions/`, and an eleventh, `akr_9_2/`, were added on 2026-09-20). If you have
> quoted this file before that date, you were reading a partial list.
>
> *(**Corrected again 2026-09-24.** The heading then read "Fifteen" while the
> table listed fifteen and **seventeen** directories existed:
> `eps_uniform/` and `akr_9_assembly/` were present and uncited. Rows for both
> are now at the foot of the table. Same failure as the one above it, one level
> down; `ls -d independent/*/ | wc -l` should match the row count.)*

**None of this is human verification.** Every directory here was produced
inside the same AI-assisted development process as the rest of the repository.
See `../docs/ai-disclosure.md`.

| Directory | What it checks | How independent | Verdict |
|---|---|---|---|
| [`order_type_audit/`](order_type_audit/) | the 135 order types and the 14 exceptional classes | **Strongest.** Fresh agent, no inherited context, does not import `chiro.py`/`geom.py`, and starts from the **external TU Graz order-type database** | 135 order types **set-equal** to the external database; 6342 simple heptagons; 16 exceptional / **14** classes; all four profile fields **14/14**; 33/33 adversarial tests |
| [`implementation_b/`](implementation_b/) | the finite reduction, up to but **not including** the final avoiding-pair filter | **Partial.** A different language (C++), different representation, different algorithm per filter — but the same agent wrote it after reading Implementation A in full, and both read the same `SPEC.md`-level statements of the external lemmas | the 225 `(classP, classQ, graph)` triples are **set-equal** to `data/certificates/final_elimination_225.json`; graph count confirmed in closed form with no enumeration |
| [`akr_l7_reproduction/`](akr_l7_reproduction/) | AKR's own computer verification behind Observation 6 / Lemma 7 | **Independent of this repository.** Inputs are the two AKR papers in `../references/` and published counts — no project code, data or definition | AKR **Observation 6 is false as printed**; a repaired Observation 6′ is corroborated by 15 DRAT refutations and an n = 7 coverage argument. The Lemma 7 reconstruction is **partial**. This is the project's one open mathematical review item |
| [`no_a7_experiment/`](no_a7_experiment/) | what the pipeline gives with the AKR Lemma 7 filter switched **off** | a controlled ablation of the project's own pipeline, run down two code paths | **A7 is load-bearing.** Without it the pipeline ends at **2,187** surviving triples on 412 graphs instead of 0. The 121 graphs A7 keeps are exactly the ones the final filter can kill; on the 412 it discards, the final filter kills nothing |
| [`order_type_pi8/`](order_type_pi8/) | Theorem `thm:pat8` — that `Pi_8` is not realizable | **Strong.** No SAT solver, no proof assistant, no project encoding: exhaustive enumeration against the external TU Graz order-type database for 8 points | `Pi_8` realizable in **0 of 3315** order types. Two controls: a positive control found in the database, and a minimality control showing all eight one-condition relaxations *are* realizable. Cannot extend to `Pi_14`, which needs **eleven** points |
| [`realizability_sweep/`](realizability_sweep/) | the whole `I = 40` branch, with every published lemma switched off | an experiment on the project's own candidate set, using its own oriented-matroid encoding | All **13,003,620** graphs (33,743 orbits) refuted by the chirotope encoding alone, every refutation `drat-trim`-checked. Cores are local; minimising them yields a small pattern library, and **two** patterns — the `Pi_8`/`Pi_14` of the paper — suffice. **Not wired into the proof** |
| [`residual_realizability/`](residual_realizability/) | the 412 residual `I = 40` graphs, without AKR Lemma 7 or any class restriction | same encoding lineage as `realizability_sweep/` | All 412 graphs (2,187 triples) refuted via four 14-point CNFs and four checked DRAT proofs; 0 unresolved, no timeouts. **Superseded as evidence** — the same 412 are now refuted by a Lean theorem with no solver or checker in its trusted base. Retained for the *inventory* and for provenance |
| [`drat_trim_crosscheck/`](drat_trim_crosscheck/) | the project's from-scratch DRAT checker, `dratcheck.py` | **Independent of this repository's checker.** `drat-trim` is the reference implementation (Heule–Wetzler), pinned by source SHA-256 and rebuilt by the script; the two checkers share no code | **130 of 130 certificates verified** by both. A gate test first confirms `drat-trim` *rejects* a bogus proof of a satisfiable formula. Checks the **proofs**, not the **encodings** |
| [`l7_frame_extents/`](l7_frame_extents/) | the terminal case analysis of AKR Lemma 7, the project's one open review item | written arguments read off the AKR PDF, not machine-checked and **not reviewed by anyone** | Extent-independent arguments close cases 1–6, 8, 10, 12; cases 7 and 9 are taken as dependencies from `../docs/a7-independent-proof.md` §6.8, and case **11 remains open**, so this is *not* a proof of Lemma 7. Flagged in its own README as the place where a second layer of unreviewed case analysis could make things worse. Nothing else in the repository depends on it |
| [`pattern_scaling/`](pattern_scaling/) | whether the two-pattern covering result scales past `n = 7` — i.e. the `f(7,n)` hope of the paper's §11 | re-parses the two pattern statements from the authoritative Lean sources rather than from prose, then searches in C++; a fresh implementation, but of this project's own claim | **Zero escapers.** Exhaustive at `n = 9` (2,328,480 surjections) and `n = 11` (322,494,480); 1,000,000 uniform samples at `n = 13`; in every case every `c = 7` surjection is covered by `Pi_8` or `Pi_14`. Also the direct test of the paper's `rem:diagonal`: it confirms the diagonal `sigma(j) = j mod 7` **does** contain `Pi_8` at `n = 11` and `n = 13`, at the cyclic seam. **Not a proof for `n = 13` or for any larger `n`** |
| [`pi8_tightness/`](pi8_tightness/) | which of `Pi_8`'s eight conditions carries the obstruction | an experiment on the project's own claim, against the same external order-type database as `order_type_pi8/`; **not** independent evidence that `Pi_8` is unrealizable | Dropping each condition in turn and counting realizable order types gives a profile that is **exactly transpose-symmetric**, independently reproducing why `Pi_8` has 196 images and not 392. The corner crossing `P0 x Q0` is load-bearing (427 realizable without it); the centre miss is middling (1,571). A pointer for a hand attack, nothing more |
| [`pi8_human/`](pi8_human/) | a **human** proof of `Pi_8`, which the paper explicitly invites, reports it could not find, and which nobody had attempted | not a check of anything — the synthetic argument the machine result lacks. Verified against the same external order-type database | **Proved.** Four steps, using each of the eight prescribed cells and never the free cell `(2,2)`. Rests on a general **Core Lemma** (two segments sharing an endpoint that both cross a third force two orientations opposite), applied twice at the vertex `q1`. Every inference checked as a universally quantified statement over all 3,315 order types and all 8! labellings: **0 violations**. **Does not change `f(7,7)=38`** — `Pi_8` was already kernel-checked by the SAT route, so a second human route removes no hypothesis |
| [`pi14_split/`](pi14_split/) | `Pi_14`, the one pattern with **no** independent check — eleven points puts the order-type route permanently out of reach | **Encoding-independent of the SAT/chirotope proof** (semialgebraic feasibility, no Boolean variables, no Grassmann-Plücker clauses), with ground truth transcribed from the Lean source and diffed against it | **Does not close, but most of it is gone.** Successive censuses of the 256-branch disjunct split reached 11, 57, 76, and now **192 refuted / 0 realizable / 64 undecided**. The jump came from a *theorem*, not more solving: the 13 crossings plus two of the eight non-crossings force `or(8,9,10)`, `or(8,9,11)`, `or(8,9,12)` to alternate, so both `Q1 ⊁ Q3` and `Q1 ⊁ Q4` must take their second disjunct. Underneath sits **Lemma 1**, an 8-point statement proved by hand and verified exhaustively (3,400 hypothesis cases, 0 violations; control: 76,016/76,016 fail without it). It also explains the asymmetry — the line `V8V9` has 33–35 of 36 pair-products forced, against **1** for `V10V11` — and **corrects the earlier 74-vs-2 figure to 128-vs-64**; the "secondary clustering" was noise. The 64 survivors resisted a 24-member portfolio each. **`Pi_14` is not independently refuted** |
| [`e9_directions/`](e9_directions/) | the existence of the directions `E_i` in AKR §9.1 — asserted by the authors with no argument, and rated *"hard, and unproved in the paper"* by this project's own audit | **Independent of this repository.** The statement comes from the AKR journal text; only `orient`/`ProperCross` are taken from `lean/GeometryDefs.lean`. Exact rational arithmetic throughout | **Proved, with a sharp criterion.** A direction exists **iff** the four edge directions at the apex are not all mutually parallel — and that failure case would force `∂P ∩ ∂Q` to be infinite, which AKR's own standing assumption excludes. The direction can also be chosen degeneracy-free. Verified on 19,765 + 8,628 + 3,980 configurations with zero failures, 66 genuine "no" cases present so the criterion is not vacuous, and controls that reproduce the K-10 failure exactly. **Does not close §9** — the uniform-ε₀ step is untouched |
| [`akr_9_2/`](akr_9_2/) | AKR §9.2, the **vertex-side** half of §9 — four sentences, essentially unstudied here before this, rated "moderate–hard" in one table row of `../docs/akr-9-1-obligation.md` §5.1 | **Independent of this repository.** The statement is read off the AKR journal PDF (page 25 rendered as a 4× raster via a Swift/PDFKit utility, cross-checked against a from-scratch zlib content-stream extractor); the geometry is written from scratch in exact rationals and imports no project code | **The averaging claim is true and is proved** (`../docs/akr-9-2-obligation.md` §4, on paper, unreviewed, not in Lean); **47 346** exact tests, **0** violations. Three findings AKR do not state: their own description covers only one of the four cases (the **moving endpoints** of the shifted side behave differently and are the commonest case, 12 776 of 47 346); the shift is **undefined** when the shifted side has a collinear neighbour, which §9.2 may not assume away and which `lean/AKR9.lean`'s `SimpleClosed` deliberately admits — **17.7 %** of random hexagon pairs; and **dropping §9.2's opening clause makes its conclusion false**, with an explicit exact counterexample where **both** shift directions lose a point. A repair (translate the side, let the neighbours rotate) is always defined and tests clean on 16 716 instances but is **not** AKR's operation and is **not proved**. **Does not close §9** — §9.1's uniform-ε₀ step is upstream and untouched |
| [`eps_uniform/`](eps_uniform/) | the **"One final point:" uniform-ε₀ paragraph** of AKR §9.1 (PDF p. 24) — the step `../../docs/akr-9-1-obligation.md` §5.2 calls the hardest in the section | **Independent of this repository.** The statement is read off the AKR journal text; exact `fractions.Fraction` throughout, with a from-scratch polynomial/power-series layer (`epslib.py`) because `sympy` is not installed | **AKR's local claim is TRUE, but not by the mechanism they cite** — not the sine law, but insensitivity of an `ε`-valuation-≥1 numerator to an `O(ε)` perturbation. The uniform `ε₀` then comes almost free: Theorem 17 makes every vertex affine in `ε`, so all 1,638 predicates are signs of degree-≤2 polynomials and one root-free radius serves them all. **On this evidence the audit ranked the wrong half as hard.** Two unexpected findings, both kept: AKR's "there will be no degenerate situations" is **literally false** for directions their own criterion admits (Finding 2, exact certificate), and **one of the directory's own controls was wrong and silently passed** — documented in Finding 4 rather than deleted. Now largely superseded as evidence by `lean/UniformEps.lean` (`../docs/uniform-eps-lean.md`), which kernel-checks the machinery. **Does not close §9.** *(Added to this table 2026-09-24; the directory existed and was uncited.)* |
| [`akr_9_assembly/`](akr_9_assembly/) | the **explicit injection** `Φ` of `../../docs/akr-9-assembly.md` §2.3, and whether §9.2's shift operator can be **permanently blocked** | an experiment on this project's own assembly of §9, in exact rationals; each of the three scripts carries a control that must fire | **Two negatives, and they are the useful part.** (i) `injection.py`: `Φ` is total and injective **285/285** in the arm satisfying AKR's (R2) — and the paper's own count-preservation framing **over-reports by about a factor of two**, since in the `E ∥ edge` control arm the count failed to drop 129/285 while `Φ` failed **285/285**. (ii) `nc_stuck.py` + `certificate.py`: the (NC) precondition can block **every** usable side at once, ~1 % of degenerate random pairs, certified from integer coordinates with the blockage shown **permanent**. `CI_HARDENED.md` adds a third: the `ncard` inequality `\|∂P(α) ∩ ∂Q(α)\| ≥ \|X\|` is **false under the hypotheses §2.3 lists** — it silently needs (Fin-out) — while the injection itself survives 1,668/1,668. **What is refuted is §9's *printed procedure* on an explicit input, never §9's conclusion.** **Does not close §9**; repairs are discussed in `docs/akr-9-assembly.md` §2.5 and are not proved. *(Added to this table 2026-09-24; the directory existed and was uncited.)* |

## How to read the "independent" in the directory name

Only `order_type_audit/`, `akr_l7_reproduction/`, `order_type_pi8/` and
`drat_trim_crosscheck/` are independent in the strong sense of checking
something against a source outside this repository — the TU Graz database in the
first and third, the AKR papers in the second, the reference `drat-trim` in the
fourth. `implementation_b/` is explicit that it is **not** a clean-room
reimplementation. `no_a7_experiment/` is not an independent check at all — it is
an ablation, and its value is in showing which filter carries the weight.
`realizability_sweep/`, `residual_realizability/` and `pattern_scaling/` are
experiments on the project's own claims using the project's own encodings: the
first two reuse the oriented-matroid encoding they are testing, and the third
reuses the Lean pattern statements (though it re-parses them from source rather
than trusting a prose restatement). `l7_frame_extents/` is a written argument,
unreviewed and incomplete, and nothing depends on it.

Three of these are explicitly **not load-bearing**: `residual_realizability/`
has been superseded by a Lean theorem, `realizability_sweep/` was never wired
into the proof, and `l7_frame_extents/` is not counted by
`../docs/verification-status.md`.

Two limits apply to everything here:

* **Shared readings of the external lemmas.** `implementation_b/` and the main
  pipeline encode the same interpretation of AKR Lemmas 5 and 7 and Černý
  Lemma 2. If that reading is wrong, both are wrong identically
  (`../docs/known-issues.md` K-09).
* **The final filter is single-sourced.** No second implementation runs the
  final avoiding-pair AKR Lemma 5 step — the `225 → 0` move. It has a
  per-case certificate and a Lean cross-check of the stored flags, but no
  independent re-run (`../docs/known-issues.md` K-20).

## Running them

`scripts/verify-all.sh` exercises `akr_l7_reproduction/` (steps 5b–5d) and
`implementation_b/` (step 6) as part of a full run, and checks the SHA-256
manifests for `implementation_b/` and `order_type_audit/` in step 4. Each
subdirectory also documents how to run it standalone.

Some large regenerable artifacts here are deliberately gitignored — the
compiled `implementation_b/reduction` binary, the 19–24 MB of generated DIMACS
CNF under `akr_l7_reproduction/`, and the `no_a7_experiment/` pickles. In every
case the SHA-256 digests are committed, so the results stay re-checkable by
regenerating and comparing hashes. See the notes in `../.gitignore`.
