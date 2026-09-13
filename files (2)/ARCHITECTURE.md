# Lean architecture for f(7,7) = 38

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
