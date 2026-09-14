/-
  DisjointnessGraph.lean

  The bridge from the *geometry* group (`GeometryDefs` / `SegmentGeometry` /
  `LowerBound`) to the *endgame* group (`EndgameDefs` / `Endgame`): a type of
  configurations of two heptagons, the 7-bit neighbourhood bitmasks they induce,
  and the proof that those bitmasks encode exactly the orientation-level
  disjointness relation.

  **Core Lean only.**  This file imports `GeometryDefs`, `LowerBound`,
  `EndgameDefs` and `SegmentGeometry`, none of which imports Mathlib, so the
  whole group stays outside Mathlib's trust base.  No `axiom`, no `sorry`, no
  `native_decide`, no `unsafe`, no `partial`.  Every principal theorem below
  depends on `propext` and `Quot.sound` only — in particular NOT on
  `Classical.choice`.

  ---------------------------------------------------------------------------
  WHAT THIS FILE IS, AND THE ONE PLACE IT DEPARTS FROM `Endgame.lean`'s (I2)
  ---------------------------------------------------------------------------

  `Endgame.lean`'s header sketches a future interface (I2) as

      toMasks : Config -> (Nat -> Nat)
      toMasks_spec : forall K i j, i < 7 -> j < 7 ->
          (bitAt (toMasks K i) j = true <-> Disjoint (side P i) (side Q j))

  where `Disjoint` is set-theoretic disjointness of the two closed sides as
  subsets of the plane.  **That form is deliberately NOT what is proved here,
  and this file does not claim it.**  Reason, stated plainly: `Pt` is
  `Int × Int`, and nowhere in this development is a side of a polygon defined as
  a *set* of points.  Writing `Disjoint (side P i) (side Q j)` would require
  real coordinates, `segment`, `Convex` — i.e. Mathlib — which would destroy the
  Mathlib-free trust base that `GeometryDefs`, `SegmentGeometry`, `LowerBound`
  and the endgame files all share.

  What IS proved is (I2) at the orientation-predicate level that the entire rest
  of the development already lives at:

      DisjointO K i j  :=  ¬ ProperCross (side i of P) (side j of Q)

  and `toMasks_spec` for `DisjointO`.  The remaining step — from "the two closed
  segments do not cross transversally" to "the two closed segments are disjoint
  as point sets" — is the *same* unformalised step that the header of
  `SegmentGeometry.lean` and of `LowerBound.lean` already flag; it needs the
  general-position facts carried by `Config` (no vertex of one heptagon on a
  side line of the other, no three vertices collinear) plus a real-coordinate
  argument.  It is NOT formalised here and must not be reported as such.

  This is enough for the endgame.  Every theorem of `Endgame.lean` —
  `Conn`, `AKR5Adjacent`, `AKR5Conclusion`, `nbhd_disjoint_of_not_conn`,
  `SepClosed` / `not_conn_of_sep` — is parametric in the mask function
  `M : Nat → Nat` and never consumes `toMasks_spec`.  It needs a *function*;
  the specification is what makes that function geometrically meaningful, and
  the orientation-level specification is the strongest one statable without
  Mathlib.

  ---------------------------------------------------------------------------
  NO NEW VOCABULARY WITHOUT A PROVED AGREEMENT
  ---------------------------------------------------------------------------

  Nothing here is redefined.  `Pt`, `orient`, `ProperCross`, `vtx`, `liftFin7`
  come from `GeometryDefs` / `SegmentGeometry`; `bitAt`, `deg`, `transposeMask`,
  `Conn`, `Vtx`, `InSep`, `SepClosed` come from `EndgameDefs`.  In particular
  **no component notion is introduced**: `Endgame.Conn` is already parametric in
  the mask function, so `Conn (toMasks K)` *is* the connectivity of the
  configuration's disjointness graph.

  The three genuinely new notions each come with an agreement theorem:

  * `Simple7` — `simple7_Pv`, `simple7_Qv` exhibit `LowerBound.P_simple` and
    `LowerBound.Q_simple` as instances, so `Config` demands exactly the
    general-position package `LowerBound.lean` already proves.
  * `mkMask` — `transposeMask_eq_mkMask` is `rfl`, so `EndgameDefs`'
    `transposeMask` is literally a `mkMask`, and `bitAt_transposeMask` is a
    corollary of `bitAt_mkMask`.
  * `toMasks` — `toMasks_eq_getD` and `case_M_eq_toMasks` match it to
    `Case.M`'s shape (`c.masks.getD i 0`), so a future `ProfileOf K = c` rewrites
    a certificate record into a configuration's masks in one step.

  SCOPE NOTE.  This file supplies (I1) and the orientation-level (I2) of the
  `Endgame.lean` interface.  It supplies NOTHING of (I3) (the `avoiding` flag),
  (I4) (AKR Lemma 5) or (I5) (`ProfileOf` and completeness of the 225-case
  list).  Those remain exactly as open as `Endgame.lean` says they are.
-/
import GeometryDefs
import LowerBound
import EndgameDefs
import SegmentGeometry

set_option autoImplicit false

namespace Heptagon
namespace DisjointnessGraph

open Heptagon.Geometry
open Heptagon.Endgame

/-! ## 1. Bitmask arithmetic

This section is the only real arithmetic in the file.  `mkMask f` packs the
seven Booleans `f 0, …, f 6` into a 7-bit `Nat`; `bitAt_mkMask` says the packing
round-trips.  `EndgameDefs.transposeMask` turns out to be *literally* a
`mkMask` (`transposeMask_eq_mkMask` is `rfl`), so the transposition lemma
`bitAt_transposeMask`, which `EndgameDefs` does not have, comes for free. -/

/-- Pack `f 0, …, f 6` into a 7-bit mask.  Same `foldl`-of-`2 ^ j` shape as
`EndgameDefs.transposeMask`. -/
def mkMask (f : Nat → Bool) : Nat :=
  idx7.foldl (fun acc j => acc + (if f j then 2 ^ j else 0)) 0

/-- `mkMask` with its seven Boolean arguments spelled out, so that a `decide`
over `2 ^ 7` assignments can see them. -/
def mkMaskB (b0 b1 b2 b3 b4 b5 b6 : Bool) : Nat :=
  0 + (if b0 then 2 ^ 0 else 0) + (if b1 then 2 ^ 1 else 0) + (if b2 then 2 ^ 2 else 0)
    + (if b3 then 2 ^ 3 else 0) + (if b4 then 2 ^ 4 else 0) + (if b5 then 2 ^ 5 else 0)
    + (if b6 then 2 ^ 6 else 0)

theorem mkMask_eq_mkMaskB (f : Nat → Bool) :
    mkMask f = mkMaskB (f 0) (f 1) (f 2) (f 3) (f 4) (f 5) (f 6) := rfl

theorem bitAt_mkMaskB :
    ∀ b0 b1 b2 b3 b4 b5 b6 : Bool,
      bitAt (mkMaskB b0 b1 b2 b3 b4 b5 b6) 0 = b0 ∧
      bitAt (mkMaskB b0 b1 b2 b3 b4 b5 b6) 1 = b1 ∧
      bitAt (mkMaskB b0 b1 b2 b3 b4 b5 b6) 2 = b2 ∧
      bitAt (mkMaskB b0 b1 b2 b3 b4 b5 b6) 3 = b3 ∧
      bitAt (mkMaskB b0 b1 b2 b3 b4 b5 b6) 4 = b4 ∧
      bitAt (mkMaskB b0 b1 b2 b3 b4 b5 b6) 5 = b5 ∧
      bitAt (mkMaskB b0 b1 b2 b3 b4 b5 b6) 6 = b6 := by decide

theorem mkMaskB_lt : ∀ b0 b1 b2 b3 b4 b5 b6 : Bool,
    mkMaskB b0 b1 b2 b3 b4 b5 b6 < 128 := by decide

/-- **The packing round-trips.**  Bit `j` of `mkMask f` is `f j`, for `j < 7`. -/
theorem bitAt_mkMask (f : Nat → Bool) (j : Nat) (hj : j < 7) : bitAt (mkMask f) j = f j := by
  rw [mkMask_eq_mkMaskB]
  have h := bitAt_mkMaskB (f 0) (f 1) (f 2) (f 3) (f 4) (f 5) (f 6)
  match j, hj with
  | 0, _ => exact h.1
  | 1, _ => exact h.2.1
  | 2, _ => exact h.2.2.1
  | 3, _ => exact h.2.2.2.1
  | 4, _ => exact h.2.2.2.2.1
  | 5, _ => exact h.2.2.2.2.2.1
  | 6, _ => exact h.2.2.2.2.2.2
  | (_ + 7), hk => exact absurd hk (by omega)

/-- A `mkMask` really is a 7-bit mask. -/
theorem mkMask_lt (f : Nat → Bool) : mkMask f < 128 := by
  rw [mkMask_eq_mkMaskB]
  exact mkMaskB_lt _ _ _ _ _ _ _

/-- **`EndgameDefs.transposeMask` is a `mkMask`, on the nose.** -/
theorem transposeMask_eq_mkMask (M : Nat → Nat) (j : Nat) :
    transposeMask M j = mkMask (fun i => bitAt (M i) j) := rfl

/-- **Transposition reads bits transposed.**  This lemma does not exist in
`EndgameDefs.lean`, and it is what turns a statement about the `Q`-side masks
`Case.MQ` into a statement about the `P`-side masks. -/
theorem bitAt_transposeMask (M : Nat → Nat) (i j : Nat) (hi : i < 7) :
    bitAt (transposeMask M j) i = bitAt (M i) j := by
  rw [transposeMask_eq_mkMask]
  exact bitAt_mkMask _ i hi

theorem transposeMask_lt (M : Nat → Nat) (j : Nat) : transposeMask M j < 128 := by
  rw [transposeMask_eq_mkMask]
  exact mkMask_lt _

/-! ### A set bit forces degree at least one -/

/-- `EndgameDefs.deg` with its seven Booleans spelled out. -/
def degB (b0 b1 b2 b3 b4 b5 b6 : Bool) : Nat :=
  0 + (if b0 then 1 else 0) + (if b1 then 1 else 0) + (if b2 then 1 else 0)
    + (if b3 then 1 else 0) + (if b4 then 1 else 0) + (if b5 then 1 else 0)
    + (if b6 then 1 else 0)

theorem deg_eq_degB (m : Nat) :
    deg m = degB (bitAt m 0) (bitAt m 1) (bitAt m 2) (bitAt m 3) (bitAt m 4) (bitAt m 5)
      (bitAt m 6) := rfl

theorem one_le_degB : ∀ b0 b1 b2 b3 b4 b5 b6 : Bool,
    (1 ≤ degB true b1 b2 b3 b4 b5 b6) ∧
    (1 ≤ degB b0 true b2 b3 b4 b5 b6) ∧
    (1 ≤ degB b0 b1 true b3 b4 b5 b6) ∧
    (1 ≤ degB b0 b1 b2 true b4 b5 b6) ∧
    (1 ≤ degB b0 b1 b2 b3 true b5 b6) ∧
    (1 ≤ degB b0 b1 b2 b3 b4 true b6) ∧
    (1 ≤ degB b0 b1 b2 b3 b4 b5 true) := by decide

/-- **One set bit is one unit of degree.**  This lemma does not exist in
`EndgameDefs.lean` either; it is what converts an *existence* statement coming
from the geometry into the *minimum-degree* statement `Endgame.graphShapeOK`
speaks about. -/
theorem one_le_deg_of_bitAt {m j : Nat} (hj : j < 7) (h : bitAt m j = true) : 1 ≤ deg m := by
  rw [deg_eq_degB]
  match j, hj with
  | 0, _ => rw [h]; exact (one_le_degB true _ _ _ _ _ _).1
  | 1, _ => rw [h]; exact (one_le_degB _ true _ _ _ _ _).2.1
  | 2, _ => rw [h]; exact (one_le_degB _ _ true _ _ _ _).2.2.1
  | 3, _ => rw [h]; exact (one_le_degB _ _ _ true _ _ _).2.2.2.1
  | 4, _ => rw [h]; exact (one_le_degB _ _ _ _ true _ _).2.2.2.2.1
  | 5, _ => rw [h]; exact (one_le_degB _ _ _ _ _ true _).2.2.2.2.2.1
  | 6, _ => rw [h]; exact (one_le_degB _ _ _ _ _ _ true).2.2.2.2.2.2
  | (_ + 7), hk => exact absurd hk (by omega)

/-! ## 2. Configurations  — interface (I1)

A `Config` is a pair of heptagons carrying exactly the general-position package
that `LowerBound.lean` proves for the certificate pair, and exactly what the
theorems below consume: nothing more.  `general_position` is a *derived*
theorem, not a field, because it follows from the two vertex-avoidance fields. -/

/-- Orientation-level simplicity of a closed heptagon: distinct vertices, no
three collinear, consecutive sides non-collinear, non-adjacent sides not
crossing.  This is character-for-character the conclusion of
`LowerBound.P_simple` / `LowerBound.Q_simple`; see `simple7_Pv`, `simple7_Qv`. -/
def Simple7 (V : Fin 7 → Pt) : Prop :=
  (∀ i j : Fin 7, i ≠ j → V i ≠ V j) ∧
  (∀ i j k : Fin 7, i ≠ j → j ≠ k → i ≠ k → orient (V i) (V j) (V k) ≠ 0) ∧
  (∀ i : Fin 7, orient (V i) (V (i + 1)) (V (i + 2)) ≠ 0) ∧
  (∀ i j : Fin 7, ¬ LowerBound.Adjacent i j →
    ¬ ProperCross (V i) (V (i + 1)) (V j) (V (j + 1)))

/-- **Agreement.**  `LowerBound.P_simple` *is* a `Simple7`. -/
theorem simple7_Pv : Simple7 LowerBound.Pv := LowerBound.P_simple

/-- **Agreement.**  `LowerBound.Q_simple` *is* a `Simple7`. -/
theorem simple7_Qv : Simple7 LowerBound.Qv := LowerBound.Q_simple

/-- **(I1): a pair of simple heptagons in general position**, at the
orientation-predicate level of `LowerBound.lean`.  Vertices are `Fin 7`-indexed,
matching `LowerBound.Pv` / `LowerBound.Qv`; `Config.PV` / `Config.QV` below
transport them to the `Nat`-mod-7 indexing of `EndgameDefs`.

Nothing is stored that the results below do not use. -/
structure Config where
  /-- Vertices of `P`. -/
  Pv : Fin 7 → Pt
  /-- Vertices of `Q`. -/
  Qv : Fin 7 → Pt
  /-- `P` is simple; the shape of `LowerBound.P_simple`. -/
  P_simple : Simple7 Pv
  /-- `Q` is simple; the shape of `LowerBound.Q_simple`. -/
  Q_simple : Simple7 Qv
  /-- No vertex of `Q` lies on the supporting line of a side of `P`; the shape of
  `LowerBound.no_Q_vertex_on_P_side_line`. -/
  no_Q_vertex_on_P_side_line : ∀ i j : Fin 7, orient (Pv i) (Pv (i + 1)) (Qv j) ≠ 0
  /-- No vertex of `P` lies on the supporting line of a side of `Q`; the shape of
  `LowerBound.no_P_vertex_on_Q_side_line`. -/
  no_P_vertex_on_Q_side_line : ∀ i j : Fin 7, orient (Qv j) (Qv (j + 1)) (Pv i) ≠ 0

/-- `P`'s vertices as a 7-periodic `Nat`-indexed function (`SegmentGeometry`'s
transport layer). -/
def Config.PV (K : Config) : Nat → Pt := liftFin7 K.Pv

/-- `Q`'s vertices as a 7-periodic `Nat`-indexed function. -/
def Config.QV (K : Config) : Nat → Pt := liftFin7 K.Qv

/-- **`general_position` is derived, not assumed.**  All four orientation
determinants attached to each of the 49 side pairs are nonzero — the shape of
`LowerBound.general_position`, obtained from the two fields above. -/
theorem Config.general_position (K : Config) : ∀ i j : Fin 7,
    orient (K.Pv i) (K.Pv (i + 1)) (K.Qv j) ≠ 0 ∧
    orient (K.Pv i) (K.Pv (i + 1)) (K.Qv (j + 1)) ≠ 0 ∧
    orient (K.Qv j) (K.Qv (j + 1)) (K.Pv i) ≠ 0 ∧
    orient (K.Qv j) (K.Qv (j + 1)) (K.Pv (i + 1)) ≠ 0 :=
  fun i j => ⟨K.no_Q_vertex_on_P_side_line i j, K.no_Q_vertex_on_P_side_line i (j + 1),
              K.no_P_vertex_on_Q_side_line i j, K.no_P_vertex_on_Q_side_line (i + 1) j⟩

/-! ## 3. The disjointness relation

`DisjointO K i j` is the ORIENTATION-LEVEL disjointness of side `i` of `P` and
side `j` of `Q`: the two closed segments do not cross transversally.  See the
file header for why this, and not point-set `Disjoint`, is what is used. -/

/-- Side `i` of `P` and side `j` of `Q` do not cross properly.  Indices are read
modulo 7, so this is total in `i` and `j`. -/
def DisjointO (K : Config) (i j : Nat) : Prop :=
  ¬ ProperCross (vtx 7 K.PV i) (vtx 7 K.PV (i + 1))
                (vtx 7 K.QV j) (vtx 7 K.QV (j + 1))

instance (K : Config) (i j : Nat) : Decidable (DisjointO K i j) :=
  inferInstanceAs (Decidable (¬ _))

theorem vtx_PV (K : Config) (i : Fin 7) : vtx 7 K.PV i.val = K.Pv i := vtx_lift K.Pv i

theorem vtx_PV_succ (K : Config) (i : Fin 7) :
    vtx 7 K.PV (i.val + 1) = K.Pv (i + 1) := vtx_lift_succ K.Pv i

theorem vtx_QV (K : Config) (j : Fin 7) : vtx 7 K.QV j.val = K.Qv j := vtx_lift K.Qv j

theorem vtx_QV_succ (K : Config) (j : Fin 7) :
    vtx 7 K.QV (j.val + 1) = K.Qv (j + 1) := vtx_lift_succ K.Qv j

/-- **The `Nat`-mod-7 / `Fin 7` bridge for `DisjointO`.**  This is the whole
reason `SegmentGeometry`'s `liftFin7` transport layer is reused rather than
rebuilt: `EndgameDefs` indexes sides by `Nat` with a `< 7` bound, `LowerBound`
by `Fin 7`. -/
theorem disjointO_iff_fin (K : Config) (i j : Fin 7) :
    DisjointO K i.val j.val ↔
      ¬ ProperCross (K.Pv i) (K.Pv (i + 1)) (K.Qv j) (K.Qv (j + 1)) := by
  simp only [DisjointO, vtx_PV, vtx_PV_succ, vtx_QV, vtx_QV_succ]

/-! ## 4. The abstraction map  — interface (I2)

`masks K` is a `List Nat` of length 7 and `toMasks K` is its `getD`, exactly the
shape of `Case.masks` / `Case.M` in `EndgameDefs.lean`, so that a future
`ProfileOf K = c` rewrites a certificate record into a configuration's masks in
one step (`case_M_eq_toMasks`). -/

/-- The seven `P`-side neighbourhood bitmasks of `K`: bit `j` of entry `i` is set
exactly when side `j` of `Q` is disjoint from side `i` of `P`. -/
def masks (K : Config) : List Nat :=
  idx7.map (fun i => mkMask (fun j => decide (DisjointO K i j)))

/-- **(I2): the abstraction map.**  Same shape as `Case.M`. -/
def toMasks (K : Config) : Nat → Nat := fun i => (masks K).getD i 0

/-- The `Q`-side masks, obtained by transposition.  Same shape as `Case.MQ`. -/
def toMasksQ (K : Config) : Nat → Nat := fun j => transposeMask (toMasks K) j

theorem masks_length (K : Config) : (masks K).length = 7 := rfl

/-- `toMasks` is `getD` of a stored list, exactly like `Case.M`. -/
theorem toMasks_eq_getD (K : Config) (i : Nat) : toMasks K i = (masks K).getD i 0 := rfl

theorem toMasks_apply (K : Config) (i : Nat) (hi : i < 7) :
    toMasks K i = mkMask (fun j => decide (DisjointO K i j)) := by
  match i, hi with
  | 0, _ => rfl
  | 1, _ => rfl
  | 2, _ => rfl
  | 3, _ => rfl
  | 4, _ => rfl
  | 5, _ => rfl
  | 6, _ => rfl
  | (_ + 7), hk => exact absurd hk (by omega)

/-- **`toMasks_spec` — interface (I2), at the orientation level.**

Bit `j` of mask `i` is set exactly when side `i` of `P` and side `j` of `Q` are
orientation-level disjoint, i.e. do not cross properly.

This is NOT the point-set statement `Disjoint (side P i) (side Q j)` of
`Endgame.lean`'s header; see the file header for why that statement is not
available in a Mathlib-free development, and what remains to be done. -/
theorem toMasks_spec (K : Config) (i j : Nat) (hi : i < 7) (hj : j < 7) :
    bitAt (toMasks K i) j = true ↔ DisjointO K i j := by
  rw [toMasks_apply K i hi, bitAt_mkMask _ j hj]
  exact Iff.intro of_decide_eq_true decide_eq_true

/-- The `Q`-side form of the specification. -/
theorem toMasksQ_spec (K : Config) (i j : Nat) (hi : i < 7) (hj : j < 7) :
    bitAt (toMasksQ K j) i = true ↔ DisjointO K i j := by
  rw [toMasksQ, bitAt_transposeMask _ i j hi]
  exact toMasks_spec K i j hi hj

/-- **Masks are 7-bit**, which is exactly the bound `Endgame.masksWellFormed`
recomputes for the certificate records (`c.masks.getD i 0 < 128`). -/
theorem toMasks_lt_128 (K : Config) (i : Nat) (hi : i < 7) : toMasks K i < 128 := by
  rw [toMasks_apply K i hi]
  exact mkMask_lt _

theorem toMasksQ_lt_128 (K : Config) (j : Nat) : toMasksQ K j < 128 :=
  transposeMask_lt _ j

/-! ### Matching a certificate record

These are the rewriting hooks a future `ProfileOf K = c` would use. -/

/-- If a certificate record stores `K`'s masks, its mask function *is* `toMasks K`. -/
theorem case_M_eq_toMasks (c : Case) (K : Config) (h : c.masks = masks K) :
    c.M = toMasks K := by
  funext i
  simp only [Case.M, toMasks, h]

/-- …and likewise on the `Q` side. -/
theorem case_MQ_eq_toMasksQ (c : Case) (K : Config) (h : c.masks = masks K) :
    c.MQ = toMasksQ K := by
  funext j
  simp only [Case.MQ, toMasksQ, case_M_eq_toMasks c K h]

/-! ## 5. Minimum degree, derived from the geometry

Both bounds are obtained by *applying* the theorems of `SegmentGeometry.lean` —
which prove them from the parity of sign alternations around an odd cycle — and
NOT by `decide` on any particular pair of heptagons.  They hold for every
`Config`. -/

/-- Every side of `P` is disjoint from some side of `Q`.  This is
`SegmentGeometry.lemmaA_h2_fin7` applied to `K`, transported to `Nat` indexing. -/
theorem exists_disjointO_Qside (K : Config) (i : Nat) (hi : i < 7) :
    ∃ j, j < 7 ∧ DisjointO K i j := by
  obtain ⟨j, hj⟩ := lemmaA_h2_fin7 K.Pv K.Qv K.no_Q_vertex_on_P_side_line ⟨i, hi⟩
  exact ⟨j.val, j.isLt, (disjointO_iff_fin K ⟨i, hi⟩ j).mpr hj⟩

/-- Every side of `Q` is disjoint from some side of `P`.  This is
`SegmentGeometry.min_disjointness_degree_fin7` applied to `K`. -/
theorem exists_disjointO_Pside (K : Config) (j : Nat) (hj : j < 7) :
    ∃ i, i < 7 ∧ DisjointO K i j := by
  obtain ⟨i, hi⟩ := min_disjointness_degree_fin7 K.Pv K.Qv K.no_P_vertex_on_Q_side_line ⟨j, hj⟩
  exact ⟨i.val, i.isLt, (disjointO_iff_fin K i ⟨j, hj⟩).mpr hi⟩

/-- **Minimum degree on the `P` side**: `1 ≤ deg (toMasks K i)` for every side
`i` of `P`.  This is the `deg`-form of `Endgame.graphShapeOK`'s
`idx7.all fun i => 1 ≤ deg (c.M i)`, proved from the geometry rather than read
off a certificate. -/
theorem one_le_deg_toMasks (K : Config) (i : Nat) (hi : i < 7) : 1 ≤ deg (toMasks K i) := by
  obtain ⟨j, hj, hd⟩ := exists_disjointO_Qside K i hi
  exact one_le_deg_of_bitAt hj ((toMasks_spec K i j hi hj).mpr hd)

/-- **Minimum degree on the `Q` side**: `1 ≤ deg (toMasksQ K j)` for every side
`j` of `Q`.  The `Q`-side half of `Endgame.graphShapeOK`'s minimum-degree
clause. -/
theorem one_le_deg_toMasksQ (K : Config) (j : Nat) (hj : j < 7) : 1 ≤ deg (toMasksQ K j) := by
  obtain ⟨i, hi, hd⟩ := exists_disjointO_Pside K j hj
  exact one_le_deg_of_bitAt hi ((toMasksQ_spec K i j hi hj).mpr hd)

/-- **Minimum disjointness degree, both sides at once** — `δ(G^D) ≥ 1` for the
disjointness graph of any configuration. -/
theorem min_degree_both_sides (K : Config) :
    (∀ i, i < 7 → 1 ≤ deg (toMasks K i)) ∧ (∀ j, j < 7 → 1 ≤ deg (toMasksQ K j)) :=
  ⟨one_le_deg_toMasks K, one_le_deg_toMasksQ K⟩

/-! ## 6. The endgame's graph is the configuration's graph

`Endgame.Conn` is already parametric in the mask function, so `Conn (toMasks K)`
IS connectivity of `K`'s disjointness graph; no component notion is introduced
here.  These two lemmas are the geometric reading of an edge and the geometric
payoff of `EndgameDefs.not_conn_of_sep`. -/

/-- A geometric disjointness is an edge of `Conn (toMasks K)`. -/
theorem conn_of_disjointO (K : Config) (i j : Nat) (hi : i < 7) (hj : j < 7)
    (h : DisjointO K i j) : Conn (toMasks K) (Vtx.P i) (Vtx.Q j) :=
  Conn.stepPQ (Conn.refl _) hi hj ((toMasks_spec K i j hi hj).mpr h)

/-- **The separator argument, read geometrically.**  If a vertex set `(pm, qm)`
is closed under adjacency in `K`'s disjointness graph, contains `p_a` and omits
`p_b`, then no side of `Q` is disjoint from both `p_a` and `p_b`.  Proved by
applying `EndgameDefs.not_conn_of_sep` — the same machinery `Endgame.lean` runs
on the 225 certificate records. -/
theorem no_common_disjointO_of_sep (K : Config) {pm qm a b : Nat}
    (hc : SepClosed (toMasks K) pm qm) (ha : bitAt pm a = true) (hb : bitAt pm b = false)
    (hA : a < 7) (hB : b < 7) :
    ∀ j, j < 7 → DisjointO K a j → ¬ DisjointO K b j := by
  intro j hj h1 h2
  exact not_conn_of_sep hc ha hb
    (Conn.stepQP (conn_of_disjointO K a j hA hj h1) hB hj
      ((toMasks_spec K b j hB hj).mpr h2))

/-! ## 7. Non-vacuity at the certificate heptagons

`Config` is instantiated at the *actual* `f(7,7) ≥ 38` certificate of
`LowerBound.lean`, and the minimum-degree conclusions are obtained by APPLYING
the general theorems of §5 to it — not by `decide`.  This mirrors
`SegmentGeometry.cert_lemmaA_h2`.  The `decide` proofs in this section are only
cross-checks that the masks are what the certificate's crossing data says they
are. -/

section Certificate

/-- The certificate pair of heptagons as a `Config`.  Every field is discharged
by a theorem of `LowerBound.lean`; nothing new is assumed. -/
def certConfig : Config where
  Pv := LowerBound.Pv
  Qv := LowerBound.Qv
  P_simple := simple7_Pv
  Q_simple := simple7_Qv
  no_Q_vertex_on_P_side_line := LowerBound.no_Q_vertex_on_P_side_line
  no_P_vertex_on_Q_side_line := LowerBound.no_P_vertex_on_Q_side_line

/-- **The abstraction map agrees with `LowerBound`'s crossing predicate.**  Bit
`j` of mask `i` is set exactly when side `i` of `P` does not properly cross side
`j` of `Q` — i.e. exactly the complement of `LowerBound.PQCross`. -/
theorem cert_bitAt_iff_not_PQCross (i j : Fin 7) :
    bitAt (toMasks certConfig i.val) j.val = true ↔ ¬ LowerBound.PQCross i j := by
  rw [toMasks_spec certConfig i.val j.val i.isLt j.isLt]
  exact disjointO_iff_fin certConfig i j

/-- The seven masks of the certificate configuration. -/
theorem cert_masks : masks certConfig = [8, 8, 8, 4, 4, 4, 115] := by decide

/-- The seven transposed (`Q`-side) masks. -/
theorem cert_masksQ : idx7.map (toMasksQ certConfig) = [64, 64, 56, 7, 64, 64, 64] := by decide

/-- **Minimum degree at the certificate, derived.**  Not a `decide`: this is the
general theorem `one_le_deg_toMasks` applied to `certConfig`. -/
theorem cert_min_degree_P (i : Nat) (hi : i < 7) : 1 ≤ deg (toMasks certConfig i) :=
  one_le_deg_toMasks certConfig i hi

/-- Likewise on the `Q` side, from `one_le_deg_toMasksQ`. -/
theorem cert_min_degree_Q (j : Nat) (hj : j < 7) : 1 ≤ deg (toMasksQ certConfig j) :=
  one_le_deg_toMasksQ certConfig j hj

/-- **The degrees agree with `LowerBound.per_P_side_counts`.**  Side `i` of `P`
crosses `perPSideCount i` sides of `Q` and is disjoint from `deg (toMasks …) i`
of them; the two add up to seven.  This is the cross-check that the bitmasks
encode the certificate's own crossing data. -/
theorem cert_deg_add_perPSideCount (i : Fin 7) :
    deg (toMasks certConfig i.val) + LowerBound.perPSideCount i = 7 := by
  revert i; decide

/-- The `P`-side degree sequence of the certificate's disjointness graph. -/
theorem cert_degsP : idx7.map (fun i => deg (toMasks certConfig i)) = [1, 1, 1, 1, 1, 1, 5] := by
  decide

/-- The `Q`-side degree sequence. -/
theorem cert_degsQ : idx7.map (fun j => deg (toMasksQ certConfig j)) = [1, 1, 3, 3, 1, 1, 1] := by
  decide

/-- **The edge count agrees with `LowerBound.disjointCount`.**  Summing the
`P`-side degrees (the shape of `Endgame.edgeCount`) reproduces the 11
non-crossing pairs of `LowerBound.disjoint_count_eq_11`. -/
theorem cert_edgeCount_eq_disjointCount :
    idx7.foldl (fun a i => a + deg (toMasks certConfig i)) 0 = LowerBound.disjointCount := by
  decide

/-- `DisjointO` is a real constraint at the certificate: side `0` of `P` is
disjoint from side `3` of `Q` but not from side `0`. -/
theorem cert_disjointO_nontrivial :
    DisjointO certConfig 0 3 ∧ ¬ DisjointO certConfig 0 0 := by decide

/-- The certificate masks are 7-bit, via the general theorem. -/
theorem cert_masks_lt_128 (i : Nat) (hi : i < 7) : toMasks certConfig i < 128 :=
  toMasks_lt_128 certConfig i hi

end Certificate

end DisjointnessGraph
end Heptagon
