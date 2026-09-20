# Independent re-derivations and experiments

Twelve separate investigations, each in its own subdirectory, each written to
check something the main pipeline in `../python/` asserts, or to probe a claim
the paper makes. They differ sharply in how independent they actually are, and
the difference is the whole point of keeping them apart — read each
subdirectory's own README before quoting it.

> This index said "Four separate investigations" and tabled four until
> 2026-09-20, while eight further directories sat here uncited. If you have
> quoted this file before that date, you were reading a partial list.

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
| [`pi8_human/`](pi8_human/) | a **human** proof of `Pi_8`, which the paper explicitly invites and which nobody had attempted | not a check of anything — an attempt at the synthetic argument the machine result lacks, against the same external order-type database | **Incomplete, and says so.** A reformulation of `Pi_8` that is strictly stronger and symmetric, plus a general Core Lemma proved by coordinates (if two segments share an endpoint and both cross a third, two orientations are forced opposite). From it `u1 != u2` follows unconditionally, collapsing the case split that stopped the first attempt. The remainder is one isolated case split, closed 330/4842/610/0 by two different mechanisms; all 56 triples and 1,540 XOR-pairs searched for a deciding sign, none found. **Not a proof**; nothing depends on it |

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
