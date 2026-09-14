# Independent re-derivations and experiments

Four separate investigations, each in its own subdirectory, each written to
check something the main pipeline in `../python/` asserts. They differ sharply
in how independent they actually are, and the difference is the whole point of
keeping them apart — read each subdirectory's own README before quoting it.

**None of this is human verification.** Every directory here was produced
inside the same AI-assisted development process as the rest of the repository.
See `../docs/ai-disclosure.md`.

| Directory | What it checks | How independent | Verdict |
|---|---|---|---|
| [`order_type_audit/`](order_type_audit/) | the 135 order types and the 14 exceptional classes | **Strongest.** Fresh agent, no inherited context, does not import `chiro.py`/`geom.py`, and starts from the **external TU Graz order-type database** | 135 order types **set-equal** to the external database; 6342 simple heptagons; 16 exceptional / **14** classes; all four profile fields **14/14**; 33/33 adversarial tests |
| [`implementation_b/`](implementation_b/) | the finite reduction, up to but **not including** the final avoiding-pair filter | **Partial.** A different language (C++), different representation, different algorithm per filter — but the same agent wrote it after reading Implementation A in full, and both read the same `SPEC.md`-level statements of the external lemmas | the 225 `(classP, classQ, graph)` triples are **set-equal** to `data/certificates/final_elimination_225.json`; graph count confirmed in closed form with no enumeration |
| [`akr_l7_reproduction/`](akr_l7_reproduction/) | AKR's own computer verification behind Observation 6 / Lemma 7 | **Independent of this repository.** Inputs are the two AKR papers in `../references/` and published counts — no project code, data or definition | AKR **Observation 6 is false as printed**; a repaired Observation 6′ is corroborated by 15 DRAT refutations and an n = 7 coverage argument. The Lemma 7 reconstruction is **partial**. This is the project's one open mathematical review item |
| [`no_a7_experiment/`](no_a7_experiment/) | what the pipeline gives with the AKR Lemma 7 filter switched **off** | a controlled ablation of the project's own pipeline, run down two code paths | **A7 is load-bearing.** Without it the pipeline ends at **2,187** surviving triples on 412 graphs instead of 0. The 121 graphs A7 keeps are exactly the ones the final filter can kill; on the 412 it discards, the final filter kills nothing |

## How to read the "independent" in the directory name

Only `order_type_audit/` and `akr_l7_reproduction/` are independent in the
strong sense of not having read the thing they are checking.
`implementation_b/` is explicit that it is **not** a clean-room
reimplementation. `no_a7_experiment/` is not an independent check at all — it is
an ablation, and its value is in showing which filter carries the weight.

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
