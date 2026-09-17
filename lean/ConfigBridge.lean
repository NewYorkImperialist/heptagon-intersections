import CoverAll
import EnumerationDomain
import UpperBoundAssembly
import IntersectionParity

/-!
# Connecting the covering step to `Config`

`CoverAll.no_nine_edges` is stated about a bare `V : Fin 14 → Pt`.  This file
instantiates it at the fourteen vertices of a `Config` and draws the
consequence: **a configuration in general position does not have 40 crossings.**

## What is proved from what

Every hypothesis of `no_nine_edges` but one comes from theorems the project
already had:

| hypothesis | source |
|---|---|
| `SimpleP`, `SimpleQ` | the fourth conjunct of `Simple7`, i.e. `Config`'s own `P_simple` / `Q_simple` |
| `hrow`, `hcol` | `DisjointnessGraph.exists_disjointO_Qside` / `_Pside` — derived from the geometry in `SegmentGeometry`, and holding for *every* `Config` |
| `htot` | `EnumerationDomain.crossCount_40_iff_edges_9` |
| `hGP` | **not available from `Config`** — see below |

## The general-position hypothesis

`GP` asks all 364 orientation determinants of the fourteen combined vertices to
be nonzero.  `Config` forces only 168 of them: the 35 all-`P` and 35 all-`Q`
triples (from `Simple7`), and the 49 + 49 mixed triples whose two same-polygon
vertices are cyclically *adjacent* (from `no_Q_vertex_on_P_side_line` and
`no_P_vertex_on_Q_side_line`).  Nothing in `Config` rules out a vertex of `Q`
lying on the line through two **non-adjacent** vertices of `P`, and there are
**196** such triples.

So `FullGP` is carried as an explicit hypothesis.  It is **not a new
assumption**.  `docs/proof-outline.md` Step 0, imported from Ackerman–Keszegh–Rote
§9.1 and carried as dependency **A9** (`docs/verification-status.md` row 4),
lists among its consequences "*no three vertices of `P` and `Q` combined are
collinear*" — which is exactly `FullGP`.  The project has always worked in that
regime; `Config` simply never encoded it.

**§9.1 itself is not formalized, here or anywhere in this development**, and
`crossCountC_ne_40` therefore does **not** discharge the unconditional `hne40`
that `MainTheorem.isGreatest_38` takes.  What this file changes is which *other*
things the `I ≠ 40` branch depends on: after it, that branch imports no
published lemma beyond §9.1 — not AKR Lemma 5, not AKR Lemma 7, not Černý
Lemma 2, not the order-type crossing fact, not the exceptional classification,
and not the 13,003,620-graph pipeline.
-/

namespace Heptagon.ConfigBridge

open Heptagon.Geometry Heptagon.Cover Heptagon.ResidualSym
open Heptagon.DisjointnessGraph Heptagon.EnumerationDomain Heptagon.Endgame

/-- The fourteen vertices of a configuration as one map: `P` then `Q`.  The
shape of `ResidualNonVacuity.Vcert`, for an arbitrary `Config`. -/
def Vcfg (K : Config) : Fin 14 → Pt := fun i =>
  if h : i.val < 7 then K.Pv ⟨i.val, h⟩ else K.Qv ⟨i.val - 7, by omega⟩

@[simp] theorem Vcfg_pP (K : Config) (i : Fin 7) : Vcfg K (pP i) = K.Pv i := by
  simp [Vcfg, pP, i.isLt]

@[simp] theorem Vcfg_pQ (K : Config) (j : Fin 7) : Vcfg K (pQ j) = K.Qv j := by
  simp [Vcfg, pQ]

/-! ## Transport -/

/-- `P` is simple, in the shape `no_nine_edges` wants.  This is the fourth
conjunct of `Simple7`; the index conventions already agree, because `SimpleP`
writes `pP (i+1)` — adding in `Fin 7`, before the embedding — exactly as
`Simple7` does. -/
theorem simpleP_Vcfg (K : Config) : SimpleP (Vcfg K) := by
  intro i j h
  simpa using K.P_simple.2.2.2 i j h

/-- `Q` is simple, likewise. -/
theorem simpleQ_Vcfg (K : Config) : SimpleQ (Vcfg K) := by
  intro i j h
  simpa using K.Q_simple.2.2.2 i j h

/-- `Miss` and `DisjointO` are the same predicate — both are `¬ ProperCross` of
the same two sides; only the indexing differs, and
`DisjointnessGraph.disjointO_iff_fin` is the bridge. -/
theorem miss_iff (K : Config) (i j : Fin 7) :
    Miss (Vcfg K) i j ↔ DisjointO K i.val j.val := by
  rw [disjointO_iff_fin K i j]
  simp only [Miss, Vcfg_pP, Vcfg_pQ]

/-! ## Degrees

`rowDeg` counts with a `Finset`, `deg` with a bit-fold over `idx7`.  They agree,
and the disjointness graph's masks are what connects them. -/

/-- `deg` of a mask is the number of its set bits below 7, counted as a
`Finset.card`. -/
theorem card_filter_eq_deg (m : Nat) :
    (Finset.univ.filter (fun j : Fin 7 => bitAt m j.val = true)).card = deg m := by
  rw [Finset.card_filter, Fin.sum_univ_seven]
  simp [deg, idx7]

/-- The row degree of a configuration is the degree of its mask. -/
theorem rowDeg_eq_deg (K : Config) (i : Fin 7) :
    rowDeg (Vcfg K) i = deg (toMasks K i.val) := by
  rw [← card_filter_eq_deg, rowDeg]
  congr 1
  ext j
  simp only [Finset.mem_filter, Finset.mem_univ, true_and]
  rw [toMasks_spec K i.val j.val i.isLt j.isLt, miss_iff]

/-! ## The hypotheses of `no_nine_edges`, discharged -/

/-- Every side of `P` misses some side of `Q` — `SegmentGeometry`'s minimum
disjointness degree, transported.  True of every `Config`, with no hypothesis on
the crossing count. -/
theorem rowDeg_pos (K : Config) (i : Fin 7) : 0 < rowDeg (Vcfg K) i := by
  obtain ⟨j, hj, hd⟩ := exists_disjointO_Qside K i.val i.isLt
  refine Finset.card_pos.mpr ⟨⟨j, hj⟩, ?_⟩
  simpa [rowDeg] using (miss_iff K i ⟨j, hj⟩).mpr hd

/-- Every side of `Q` misses some side of `P`. -/
theorem colDeg_pos (K : Config) (j : Fin 7) : 0 < colDeg (Vcfg K) j := by
  obtain ⟨i, hi, hd⟩ := exists_disjointO_Pside K j.val j.isLt
  refine Finset.card_pos.mpr ⟨⟨i, hi⟩, ?_⟩
  simpa [colDeg] using (miss_iff K ⟨i, hi⟩ j).mpr hd

/-- Forty crossings leaves exactly nine disjoint side pairs, since `I + |E| = 49`. -/
theorem rowDeg_total (K : Config) (h40 : crossCountC K = 40) :
    rowDeg (Vcfg K) 0 + rowDeg (Vcfg K) 1 + rowDeg (Vcfg K) 2 + rowDeg (Vcfg K) 3
      + rowDeg (Vcfg K) 4 + rowDeg (Vcfg K) 5 + rowDeg (Vcfg K) 6 = 9 := by
  have h9 : degSum (toMasks K) = 9 := (crossCount_40_iff_edges_9 K).mp h40
  rw [degSum, sum7_eq] at h9
  have e : ∀ i : Fin 7, rowDeg (Vcfg K) i = deg (toMasks K i.val) := rowDeg_eq_deg K
  rw [e 0, e 1, e 2, e 3, e 4, e 5, e 6]
  exact h9

/-! ## General position, and the conclusion -/

/-- **The general position AKR §9.1 supplies**: no three of the fourteen
combined vertices are collinear.  `Config` forces 168 of these 364
determinants; this asks for the other 196 as well.

See the note at the head of this file: it is an *existing* imported assumption
of the project, not a new one, and it is carried as a hypothesis — never an
axiom. -/
abbrev FullGP (K : Config) : Prop := GP (Vcfg K)

/-- **`I ≠ 40` for a configuration in general position.**

No pair of simple heptagons whose fourteen vertices are in general position has
exactly 40 properly crossing side pairs.

This imports **no published lemma**.  Its one hypothesis beyond `Config` is
`FullGP`, which is what AKR §9.1 — already dependency A9 — was imported to
supply.  It does **not** discharge the unconditional `hne40` that
`MainTheorem.isGreatest_38` takes: that needs §9.1 itself, which is not
formalized. -/
theorem crossCountC_ne_40 (K : Config) (hgp : FullGP K) : crossCountC K ≠ 40 := by
  intro h40
  exact no_nine_edges (Vcfg K) hgp (simpleP_Vcfg K) (simpleQ_Vcfg K)
    (colDeg_pos K) (rowDeg_pos K) (rowDeg_total K h40)

/-! ## Non-vacuity

A theorem of the form "no configuration satisfies this" is worthless if the
hypotheses cannot be met.  The lower-bound certificate is a `Config`, and its
fourteen vertices *are* in general position — so `FullGP` is inhabited and
`crossCountC_ne_40` is not a statement about the empty class.  The certificate
has 38 crossings, not 40, so the theorem says nothing false about it. -/

theorem fullGP_certConfig : FullGP certConfig := by decide

/-! ## What this changes downstream

`UpperBoundAssembly.crossCountC_le_38_of_enumeration` needed five inputs:
parity, the three class-data hypotheses, and `hne40`.  Parity has been a
theorem since 2026-09-14 (`IntersectionParity.crossCountC_even`), and `hne40`
is now supplied by `crossCountC_ne_40` for a configuration in general position.
So the upper bound for such a configuration rests on the class data alone.

This is stated to make the change concrete, not because it closes anything: the
class hypotheses `hMPcard`/`hclass`/`hcross` are (X1) and (X2), still open, and
`hclass` is entangled with the `I = 42` branch (`known-issues.md` K-22). -/
theorem crossCountC_le_38_of_general_position (K : Config) (hgp : FullGP K)
    {mcs : List Nat} {MP : Finset Nat}
    (hMPcard : MP.card = 5)
    (hclass : ∀ C ∈ mcs, ∃ m ∈ MP, m < 7 ∧
      ∀ i, i < 7 → (bitAt C i = true ↔ i ≠ m))
    (hcross : ∀ j, j < 7 → ∃ C ∈ mcs, ∀ i, i < 7 →
      ¬ DisjointO K i j → bitAt C i = true) :
    crossCountC K ≤ 38 :=
  UpperBoundAssembly.crossCountC_le_38_of_enumeration K
    (IntersectionParity.crossCountC_even K) hMPcard hclass hcross
    (crossCountC_ne_40 K hgp)

end Heptagon.ConfigBridge

#print axioms Heptagon.ConfigBridge.crossCountC_ne_40
#print axioms Heptagon.ConfigBridge.fullGP_certConfig
#print axioms Heptagon.ConfigBridge.crossCountC_le_38_of_general_position
