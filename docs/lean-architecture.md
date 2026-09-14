# Lean architecture for f(7,7) = 38

> **HISTORICAL DESIGN NOTE — SUPERSEDED (2026-09-14).**
> This seven-file plan was **not followed**. The development that exists has
> **25 libraries** (`lake build`, 1395 jobs, exit 0, re-verified 2026-09-14;
> this banner previously said 23), built bottom-up around explicit interfaces
> rather than
> around the paper's sections. See [`../lean/README.md`](../lean/README.md) for
> the actual architecture and
> [`verification-status.md`](verification-status.md) row 16.
>
> Three divergences are worth knowing, because two of them were deliberate
> improvements rather than drift:
>
> * **File 3, `Imported.lean`, was never built and should not be.** It would
>   have introduced the five published lemmas as global **`axiom`s**. The
>   project now refuses that: external content enters as *explicit named
>   hypotheses* of the theorems that use it — (E1)–(E8) in
>   `lean/FilterSoundness.lean` — so a reader can see precisely which result
>   leans on which import, and `#print axioms` stays clean. An axiom would have
>   hidden exactly what most needs to be visible.
> * **Files 4–5 (`Profiles`, `Classification`) remain genuinely absent.** That
>   is obligation (E7), the exceptional classification — a large computational
>   obligation, not an unwritten file. A fragment of file 4 does now exist:
>   `lean/AvoidingFlag.lean` carries the 14-class avoiding-pair table,
>   generated from the JSON.
> * **File 7's role is filled** by `lean/MainTheorem.lean` together with
>   `IntersectionParity.isGreatest_38_final`.
>
> The difficulty estimates below were, for what it is worth, broadly wrong about
> where the work would be: the "routine" items were routine, but the real cost
> landed in bridging geometry to the finite model, which this plan does not
> mention at all.

Seven files, in dependency order.  Only files 1, 2, 6 contain new mathematics;
3 is imported, 4-5 are data + reflection, 7 is assembly.

| # | file | contents | difficulty |
|---|---|---|---|
| 0 | `LowerBound.lean` | 38 crossings for explicit integer coordinates: 49 segment-crossing tests + 21+21 simplicity tests, all `decide` on `ℤ` determinants | trivial, do it first as a warm-up |
| 1 | `LemmaA.lean` | abstract bipartite counting lemma + parity upgrade | small, no geometry |
| 2 | `Model.lean` | `DGraph := Fin 7 → Fin 7 → Bool`; `edges`, `degP`, `degQ`, components via reflexive-transitive closure; `L3cond`, `L5consec`, `HBip` as `DecidablePred` | routine |
| 3 | `Imported.lean` | Černý L1,L2,L3 and AKR L5,L7 as `axiom`s with exact hypotheses | statement design only |
| 4 | `Profiles.lean` | `structure Profile` (crossing family, L2 windows, avoiding pairs) + the 14-entry `ExcTable` as literal data | data entry |
| 5 | `Classification.lean` | `axiom exceptional_profile_mem : Exceptional P → ∃ ρ, profileOf P = (ExcTable.get a).relabel ρ` — later discharged by a verified chirotope enumeration | **heaviest**; keep axiomatic at first |
| 6 | `Elimination.lean` | the decisive finite theorem (below) | needs search shrinking |
| 7 | `Main.lean` | assembly: `f 7 7 = 38` | glue |

## The decisive theorem (file 6)

```lean
theorem no_admissible_graph (a b : Fin 14) (G : DGraph)
    (hE : edges G = 9) (hmin : minDegPos G)
    (h5 : L5consec G) (h7 : HBip G) (h3 : L3cond G)
    (hc : compat (ExcTable.get a) (ExcTable.get b) G)
    (hl2 : L2cond (ExcTable.get a) (ExcTable.get b) G)
    (hav : L5avoid (ExcTable.get a) (ExcTable.get b) G) : False
```

A naive `decide` ranges over 13,003,620 graphs -- far beyond kernel reduction,
and `native_decide` would put the whole result on the compiler's trust base.
**Shrink analytically first.**  Prove in Lean, before any search:

1. `edges G = 9 ∧ minDegPos G → degree sequence ∈ {(3,1⁶), (2,2,1⁵)}` on each side.
2. Every exceptional profile has exactly five maximal crossing sets, all of size
   6 (a checkable property of `ExcTable`).  Hence `compat` collapses to
   `∀ j, N(q_j) ∩ M_P ≠ ∅` and `∀ i, N(p_i) ∩ M_Q ≠ ∅`.
3. Therefore every degree-1 side of `Q` has its unique neighbour in `M_P`, and
   the two sides outside `M_P` have degree 1 and are adjacent only to the
   at-most-two sides of `Q` of degree ≥ 2.

(1)-(3) cut the space to a few thousand graphs per class pair, which `decide`
can handle.  This is the single most valuable piece of engineering.

## The superset subtlety (file 5)

The classification must be stated as an **inclusion**, never an equality:

> every exceptional simple 7-gon's profile occurs in `ExcTable` (up to dihedral
> relabelling)

This is what a superset enumeration proves, and it is all that an exclusion
theorem needs.  Do **not** state "the realizable order types are exactly these
135"; that is a stronger claim requiring realizability certificates, and it is
not used anywhere.
