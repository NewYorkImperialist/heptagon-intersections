# Results, logs and counts

Output from reproduction runs. Everything in this directory was produced on
**2026-09-13**, during the repository-organization pass, by re-running the
committed sources in an empty scratch directory.

Environment: Python 3.14.7, macOS 24.6.0 (arm64), single core, standard library
only.

## Important

These logs are a **reproduction of this project's own code by this project's own
code**. They confirm that the shipped sources produce the documented figures.
They are **not** independent verification, and they say nothing about whether
the underlying mathematics or the translations of the external lemmas are
correct. See `../docs/verification-status.md`.

## `logs/`

| File | Run | Result | Time |
|---|---|---|---|
| `2026-09-13_chiro_order_types.log` | `core/chiro.py` | 1, 2, 3, 16, 135 ✓ | 8 s |
| `2026-09-13_audit_enum_E7.log` | `audit_enum.py 7` | 5,040 → 14 → **0** | 0.2 s |
| `2026-09-13_audit_enum_E8.log` | `audit_enum.py 8` | 476,280 → 1,078 → **0** | 8 s |
| `2026-09-13_audit_enum_E9.log` | `audit_enum.py 9` | 13,003,620 → 42,238 → 24,990 → 9,702 → 2,300 → 121 → **0** | 3 m 6 s |
| `2026-09-13_audit_pairs_196_class_pairs.log` | `audit_pairs.py` | 0 survivors over all 196 ordered class pairs, under 3 labellings | 3 m 8 s |
| `2026-09-13_make_final_certificate_no_cernyL3.log` | `make_final_certificate.py` | 225 cases on 121 graphs, 0 survivors, **Černý L3 not applied** | 3 m 6 s |
| `2026-09-13_make_final_certificate_with_cernyL3.log` | `make_final_certificate.py --with-l3` | identical 225 cases; counts reproduce `audit_enum.py` exactly | 3 m 6 s |

Two things worth reading carefully:

* **`|E| = 7` dies at AKR Lemma 7**, independently confirming the hand proof that
  `I = 42` is impossible.
* **`5,040 + 476,280 + 13,003,620 = 13,484,940`** — this closes the arithmetic on
  defect D1, showing the original figure was the union over `|E| ∈ {7,8,9}`
  rather than the 9-edge count. See `../docs/known-issues.md` K-01.

The `2,300` and `121` in the `E9` log are **representative-labelling artifacts**,
not results. The superseded pipeline reported `3,522` and `64` at the same two
stages. Only the final `0` is labelling-invariant, which is what the
`audit_pairs` run establishes.

Implementation B logs:

| File | Run | Result | Time |
|---|---|---|---|
| `2026-09-13_implementation_b_reduction.log` | `independent/implementation_b/reduction` | identical counts through 225 triples | 1.6 s |
| `2026-09-13_graph_count_closed_form.log` | `count_check.py` | 13,003,620 by generating function, no enumeration | <1 s |

These are in a **different language with a different enumeration**, so unlike
the logs above they are not simply this project's code re-running itself. See
`../docs/known-issues.md` K-02 for what that does and does not establish.

## `counts/pipeline_counts.json`

Every headline count in the project, as **documented** in the research
materials, alongside what was actually **reproduced** here — with an explicit
`NOT_reproduced_here` list. Read this before trusting any number quoted in
`docs/` or in a transcript.

## `validation/`

`2026-09-13_check_lower_bound.log` — the ten exact checks confirming
`f(7,7) ≥ 38`. This is the only fully established claim in the repository.

`2026-09-13_check_final_certificate.log` — the independent checker verifying all
**225** cases of the endgame certificate, and
`..._with_cernyL3.log` for the control. Both pass.

`2026-09-13_implementation_b_unit_tests.log` — 23 adversarial unit tests for
Implementation B's filters, all passing.

`2026-09-13_implementation_b_vs_certificate.log` — the strong comparison:
Implementation B's 225 triples are **set-equal** to the certificate's, with zero
elements in either difference.

Together these confirm that each of the 225 final cases is refuted, and that the
list of 225 is complete *with respect to a second, independently written
enumeration*. They do not address a shared reading of the external lemmas or the
single-sourced profile data. See `../docs/known-issues.md` K-02, K-03, K-09.

## Preserved historical figures

The superseded pipeline's numbers are **not** reproduced here and its logs have
deliberately **not** been rewritten to match the corrected values. The original
figures survive in `../archive/superseded/REPORT.md` §5, and the corrections are
documented separately in `../docs/audit-report.md` and
`../docs/known-issues.md` K-01 and K-11.
