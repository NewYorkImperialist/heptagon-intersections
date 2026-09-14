/-
  SegmentGeometry.lean

  The first genuinely geometric milestone of this development.

  **Core Lean only.**  This file imports `GeometryDefs`, `LowerBound` and
  `EndgameDefs`, all three of which import nothing at all, so the whole group is
  Mathlib-free.  No `axiom`, no `sorry`, no `native_decide`, no `unsafe`, no
  `partial`.

  ## What is proved

  1. **The parity fact** (`cycChanges_even`, `metCount_even`).  Assign to each
     vertex of a closed `n`-cycle a `Bool`.  The number of indices `j < n` at
     which the labels of vertex `j` and vertex `j+1 (mod n)` differ is **even**.
     This is a clean induction on a path count plus the observation that a cycle
     returns to its starting label; it is NOT a `decide` over `Fin 7`.
     (`sevenCycle_exists_no_change_decide` re-derives the `n = 7` instance by
     `decide` as an independent cross-check.)

  2. **The main geometric theorem** (`exists_side_not_met`).  A line that avoids
     every vertex of a closed cycle of **odd** length cannot strictly meet every
     side.  Quantitatively, `metCount_lt_of_odd`: it meets at most `n - 1` of
     them.  This is the half of Černý Lemma 1 that the project uses.

  3. **Minimum disjointness degree** (`exists_disjoint_Pside`,
     `min_disjointness_degree_fin7`), i.e. `δ(G^D) ≥ 1`: every side of one
     odd polygon fails to cross at least one side of the other.

  4. **Lemma A's hypothesis `h2`** (`exists_disjoint_Qside`, `lemmaA_h2_fin7`):
     every side of `P` is disjoint from some side of `Q`.  `lemmaA_h2_fin7` has
     literally the shape of the `h2` binder of `LemmaA.card_E_ge` with
     `R i j := ¬ ProperCross ...`; see the note above it.

  5. **The connection to the existing files** (`orient_eq_lowerBound`,
     `properCross_iff_lowerBound`, `cycAdj_seven_iff_endgame`,
     `adjacent_iff_cycAdj`), and an instantiation of the main results at the
     *actual* certificate heptagons of `LowerBound.lean`
     (`cert_min_disjointness_degree`, `cert_lemmaA_h2`).

  ## The strict / loose distinction is preserved, and shown to matter

  The hypothesis of every theorem below is `AvoidsVertices` — the line passes
  through **no vertex**.  `triangle_loose_fails` exhibits a *simple triangle*
  (an odd polygon) and a line that meets all three of its **closed** sides, so
  the loose reading of the theorem is false; `triangle_metCount_odd` shows the
  parity conclusion itself fails for that line.  `dart_meets_all_four_sides`
  exhibits a vertex-avoiding line meeting **all four** sides of a quadrilateral,
  so the oddness hypothesis is essential too.

  ## SCOPE NOTE

  Everything is at the orientation-predicate level of `LowerBound.lean`.
  `¬ ProperCross s t` is proved, which is the orientation-level statement "the
  two closed segments do not cross transversally"; the step from there to the
  point-set statement `s ∩ t = ∅` needs the general-position facts that are
  recorded separately (no vertex of one polygon on the other, no three vertices
  collinear) and is NOT formalised here.  Likewise, `Line.MeetsClosed` is the
  affine-sign surrogate for "the line meets the closed segment"; the equivalence
  is a statement about `ℝ²` and is not formalised.
-/
import GeometryDefs
import LowerBound
import EndgameDefs

set_option autoImplicit false

namespace Heptagon
namespace Geometry

/-! ## 1. The parity core

Everything in this section is about `Bool`-valued labels; no geometry appears.
`pathChanges s k` is the number of indices `j < k` at which `s j ≠ s (j+1)`. -/

/-- The number of label changes along the path `s 0, s 1, …, s k`. -/
def pathChanges (s : Nat → Bool) : Nat → Nat
  | 0 => 0
  | k + 1 => pathChanges s k + (if s k == s (k + 1) then 0 else 1)

/-- **The parity of a path count is the disagreement of its endpoints.**  This
one induction is the whole mathematical content. -/
theorem pathChanges_parity (s : Nat → Bool) (k : Nat) :
    pathChanges s k % 2 = (if s 0 == s k then 0 else 1) := by
  induction k with
  | zero => simp [pathChanges]
  | succ k ih =>
      simp only [pathChanges]
      cases h0 : s 0 <;> cases hk : s k <;> cases hk1 : s (k + 1) <;>
        simp [h0, hk] at ih ⊢ <;> omega

theorem pathChanges_even_iff (s : Nat → Bool) (k : Nat) :
    pathChanges s k % 2 = 0 ↔ s 0 = s k := by
  rw [pathChanges_parity]
  cases h : (s 0 == s k) <;> simp_all

/-- `pathChanges` really is the cardinality of the set of change indices. -/
theorem pathChanges_eq_countP (s : Nat → Bool) (k : Nat) :
    pathChanges s k = ((List.range k).filter fun j => s j != s (j + 1)).length := by
  induction k with
  | zero => simp [pathChanges]
  | succ k ih =>
      rw [List.range_succ, List.filter_append, List.length_append, ← ih]
      simp only [pathChanges, List.filter_cons, List.filter_nil]
      cases h : (s k == s (k + 1)) <;> simp_all

theorem pathChanges_le (s : Nat → Bool) (k : Nat) : pathChanges s k ≤ k := by
  induction k with
  | zero => simp [pathChanges]
  | succ k ih =>
      have hb : (if s k == s (k + 1) then 0 else 1) ≤ 1 := by split <;> omega
      simp only [pathChanges]
      omega

/-- If the label changes at every step, the count is maximal. -/
theorem pathChanges_eq_of_all_change (s : Nat → Bool) (k : Nat)
    (h : ∀ j, j < k → s j ≠ s (j + 1)) : pathChanges s k = k := by
  induction k with
  | zero => simp [pathChanges]
  | succ k ih =>
      have hk : s k ≠ s (k + 1) := h k (Nat.lt_succ_self k)
      have hrec : pathChanges s k = k := ih (fun j hj => h j (Nat.lt_succ_of_lt hj))
      simp only [pathChanges, hrec]
      simp [hk]

/-- Conversely, a non-maximal count exhibits a step with no change.  Proved
constructively, so no `Classical.choice` enters through the back door. -/
theorem exists_no_change_of_pathChanges_lt (s : Nat → Bool) (k : Nat)
    (h : pathChanges s k < k) : ∃ j, j < k ∧ s j = s (j + 1) := by
  induction k with
  | zero => exact absurd h (Nat.not_lt_zero 0)
  | succ k ih =>
      cases hb : (s k == s (k + 1)) with
      | true => exact ⟨k, Nat.lt_succ_self k, by simpa using hb⟩
      | false =>
          have h' : pathChanges s k < k := by
            simp [pathChanges, hb] at h; omega
          obtain ⟨j, hj, hje⟩ := ih h'
          exact ⟨j, Nat.lt_succ_of_lt hj, hje⟩

/-! ### The cyclic count -/

/-- The number of indices `j < n` at which the cyclic label sequence
`s (0 % n), s (1 % n), …` changes.  The `% n` is what closes the cycle. -/
def cycChanges (n : Nat) (s : Nat → Bool) : Nat :=
  pathChanges (fun j => s (j % n)) n

/-- **THE PARITY FACT.**  The number of label changes around a *closed* cycle is
always even.  (No oddness hypothesis: this holds for every `n > 0`.) -/
theorem cycChanges_even (n : Nat) (s : Nat → Bool) :
    cycChanges n s % 2 = 0 := by
  rw [cycChanges, pathChanges_even_iff]
  simp [Nat.zero_mod, Nat.mod_self]

/-- **The consequence for odd cycles.**  If `n` is odd the labels cannot change
at every one of the `n` cyclic steps. -/
theorem exists_no_cyclic_change_of_odd (n : Nat) (hodd : n % 2 = 1) (s : Nat → Bool) :
    ∃ j, j < n ∧ s (j % n) = s ((j + 1) % n) := by
  have heven : cycChanges n s % 2 = 0 := cycChanges_even n s
  have hle : cycChanges n s ≤ n := pathChanges_le _ n
  have hlt : cycChanges n s < n := by omega
  exact exists_no_change_of_pathChanges_lt _ n hlt

/-- The `n = 7` specialisation of the parity fact, obtained by instantiating the
general theorem — not by `decide`. -/
theorem sevenCycle_exists_no_change (s : Nat → Bool) :
    ∃ j, j < 7 ∧ s (j % 7) = s ((j + 1) % 7) :=
  exists_no_cyclic_change_of_odd 7 (by decide) s

/-- Independent cross-check of the `n = 7` instance by kernel enumeration of all
`2^7` label assignments.  It is *not* used to prove anything above; it is here
so that the general induction and a brute-force computation agree. -/
theorem sevenCycle_exists_no_change_decide :
    ∀ b0 b1 b2 b3 b4 b5 b6 : Bool,
      b0 = b1 ∨ b1 = b2 ∨ b2 = b3 ∨ b3 = b4 ∨ b4 = b5 ∨ b5 = b6 ∨ b6 = b0 := by decide

/-! ## 2. The main geometric theorem -/

/-- For a vertex-avoiding line, "meets side `j`" is exactly "the side-signs at
the two endpoints of side `j` differ". -/
theorem meetsSideB_eq_side_bne (n : Nat) (hn : 0 < n) (V : Nat → Pt) (L : Line)
    (havoid : AvoidsVertices n V L) (j : Nat) :
    meetsSideB n V L j = (L.side (vtx n V j) != L.side (vtx n V (j + 1))) := by
  have h1 := avoids_vtx havoid hn j
  have h2 := avoids_vtx havoid hn (j + 1)
  have hiff := separates_iff_side_ne L (vtx n V j) (vtx n V (j + 1)) h1 h2
  by_cases hs : L.side (vtx n V j) = L.side (vtx n V (j + 1))
  · have hnot : ¬ MeetsSide n V L j := fun hm => (hiff.mp hm) hs
    simp [meetsSideB, hnot, hs]
  · have hm : MeetsSide n V L j := hiff.mpr hs
    simp [meetsSideB, hm, hs]

/-- The number of sides met by a vertex-avoiding line is the cyclic
sign-alternation count of its side-sign labelling. -/
theorem metCount_eq_cycChanges (n : Nat) (hn : 0 < n) (V : Nat → Pt) (L : Line)
    (havoid : AvoidsVertices n V L) :
    metCount n V L = cycChanges n (fun i => L.side (V i)) := by
  have hfun : (meetsSideB n V L) =
      (fun j => (L.side (vtx n V j) != L.side (vtx n V (j + 1)))) :=
    funext (meetsSideB_eq_side_bne n hn V L havoid)
  rw [metCount, hfun, cycChanges, pathChanges_eq_countP]
  rfl

/-- **Černý Lemma 1, parity half.**  A line avoiding every vertex of a closed
polygonal cycle meets an EVEN number of its sides. -/
theorem metCount_even (n : Nat) (hn : 0 < n) (V : Nat → Pt) (L : Line)
    (havoid : AvoidsVertices n V L) : metCount n V L % 2 = 0 := by
  rw [metCount_eq_cycChanges n hn V L havoid]
  exact cycChanges_even n _

theorem metCount_le (n : Nat) (V : Nat → Pt) (L : Line) : metCount n V L ≤ n := by
  have h := List.length_filter_le (meetsSideB n V L) (List.range n)
  rw [List.length_range] at h
  exact h

/-- **Černý Lemma 1, the half the project uses.**  For `n` odd, a vertex-avoiding
line meets at most `n - 1` of the `n` sides. -/
theorem metCount_lt_of_odd (n : Nat) (hodd : n % 2 = 1) (V : Nat → Pt) (L : Line)
    (havoid : AvoidsVertices n V L) : metCount n V L < n := by
  have hn : 0 < n := by omega
  have h1 := metCount_even n hn V L havoid
  have h2 := metCount_le n V L
  omega

/-- **THE MAIN THEOREM.**  A line that passes through no vertex of a closed
polygonal cycle of odd length fails to meet at least one side.

The hypothesis `AvoidsVertices` is the STRICT one and cannot be dropped:
`triangle_loose_fails` below is a simple triangle together with a line meeting
all three of its closed sides. -/
theorem exists_side_not_met (n : Nat) (hodd : n % 2 = 1) (V : Nat → Pt) (L : Line)
    (havoid : AvoidsVertices n V L) :
    ∃ j, j < n ∧ ¬ MeetsSide n V L j := by
  have hn : 0 < n := by omega
  obtain ⟨j, hj, he⟩ := exists_no_cyclic_change_of_odd n hodd (fun i => L.side (V i))
  refine ⟨j, hj, ?_⟩
  intro hm
  have h1 := avoids_vtx havoid hn j
  have h2 := avoids_vtx havoid hn (j + 1)
  exact ((separates_iff_side_ne L _ _ h1 h2).mp hm) he

/-- The `n = 7` specialisation of the main theorem: a line through no vertex of a
heptagon misses one of its seven sides. -/
theorem exists_side_not_met_seven (V : Nat → Pt) (L : Line)
    (havoid : AvoidsVertices 7 V L) : ∃ j, j < 7 ∧ ¬ MeetsSide 7 V L j :=
  exists_side_not_met 7 (by decide) V L havoid

/-- Quantitative `n = 7` form: at most six of the seven sides are met. -/
theorem metCount_le_six (V : Nat → Pt) (L : Line) (havoid : AvoidsVertices 7 V L) :
    metCount 7 V L ≤ 6 := by
  have := metCount_lt_of_odd 7 (by decide) V L havoid
  omega

/-! ## 3. From lines to segment pairs -/

/-- A proper crossing makes the supporting line of the first segment separate the
endpoints of the second. -/
theorem separates_of_properCross_left (p1 p2 q1 q2 : Pt)
    (h : ProperCross p1 p2 q1 q2) : (lineThrough p1 p2).Separates q1 q2 := by
  simp only [Line.Separates, lineThrough_eval]
  exact h.1

/-- …and symmetrically for the second segment. -/
theorem separates_of_properCross_right (p1 p2 q1 q2 : Pt)
    (h : ProperCross p1 p2 q1 q2) : (lineThrough q1 q2).Separates p1 p2 := by
  simp only [Line.Separates, lineThrough_eval]
  exact h.2

/-- **Minimum disjointness degree, `Q`-side.**  Fix a side `j` of the odd cycle
`QV`.  If its supporting line passes through no vertex of the odd cycle `PV`,
then some side of `PV` does not cross it.  This is `δ(G^D) ≥ 1` for `q_j`. -/
theorem exists_disjoint_Pside
    (n : Nat) (hodd : n % 2 = 1) (PV QV : Nat → Pt) (j : Nat)
    (hgp : ∀ i, i < n → orient (vtx n QV j) (vtx n QV (j + 1)) (PV i) ≠ 0) :
    ∃ i, i < n ∧
      ¬ ProperCross (vtx n PV i) (vtx n PV (i + 1)) (vtx n QV j) (vtx n QV (j + 1)) := by
  have havoid : AvoidsVertices n PV (lineThrough (vtx n QV j) (vtx n QV (j + 1))) := by
    intro i hi
    simp only [Line.Avoids, lineThrough_eval]
    exact hgp i hi
  obtain ⟨i, hi, hns⟩ := exists_side_not_met n hodd PV _ havoid
  exact ⟨i, hi, fun hc => hns (separates_of_properCross_right _ _ _ _ hc)⟩

/-- **Minimum disjointness degree, `P`-side** — equivalently **Lemma A's `h2`**.
Fix a side `i` of the odd cycle `PV`.  If its supporting line passes through no
vertex of the odd cycle `QV`, then some side of `QV` does not cross it. -/
theorem exists_disjoint_Qside
    (n : Nat) (hodd : n % 2 = 1) (PV QV : Nat → Pt) (i : Nat)
    (hgp : ∀ j, j < n → orient (vtx n PV i) (vtx n PV (i + 1)) (QV j) ≠ 0) :
    ∃ j, j < n ∧
      ¬ ProperCross (vtx n PV i) (vtx n PV (i + 1)) (vtx n QV j) (vtx n QV (j + 1)) := by
  have havoid : AvoidsVertices n QV (lineThrough (vtx n PV i) (vtx n PV (i + 1))) := by
    intro j hj
    simp only [Line.Avoids, lineThrough_eval]
    exact hgp j hj
  obtain ⟨j, hj, hns⟩ := exists_side_not_met n hodd QV _ havoid
  exact ⟨j, hj, fun hc => hns (separates_of_properCross_left _ _ _ _ hc)⟩

/-! ## 4. Agreement with the existing definitions

These four lemmas are the point of the file: they forbid the new vocabulary from
drifting away from the vocabulary already in the repository. -/

/-- `Geometry.orient` is `LowerBound.orient`, on the nose. -/
theorem orient_eq_lowerBound (a b c : Pt) : orient a b c = LowerBound.orient a b c := rfl

/-- `Geometry.ProperCross` is `LowerBound.ProperCross`, on the nose. -/
theorem properCross_iff_lowerBound (p1 p2 q1 q2 : Pt) :
    ProperCross p1 p2 q1 q2 ↔ LowerBound.ProperCross p1 p2 q1 q2 := Iff.rfl

/-- `Geometry.CycAdj 7` is `Endgame.CycAdj`, on the nose. -/
theorem cycAdj_seven_iff_endgame (x y : Nat) :
    CycAdj 7 x y ↔ Heptagon.Endgame.CycAdj x y := Iff.rfl

/-- `LowerBound.Adjacent` — sides of a heptagon sharing a vertex — is "equal or
cyclically adjacent" in the sense of `CycAdj 7`. -/
theorem adjacent_iff_cycAdj (i j : Fin 7) :
    LowerBound.Adjacent i j ↔ (i = j ∨ CycAdj 7 i.val j.val) := by
  revert i j; decide

/-! ## 5. `Fin 7` interface

`LowerBound.lean` and `LemmaA.lean` index the seven sides by `Fin 7`.  This
section transports the results above to that indexing. -/

/-- A `Fin 7`-indexed vertex function read as a `7`-periodic `Nat`-indexed one. -/
def liftFin7 (f : Fin 7 → Pt) : Nat → Pt := fun k => f ⟨k % 7, by omega⟩

theorem fin7_succ_val (i : Fin 7) : (i + 1).val = (i.val + 1) % 7 := by
  revert i; decide

theorem vtx_lift (f : Fin 7 → Pt) (i : Fin 7) : vtx 7 (liftFin7 f) i.val = f i := by
  have hi : i.val < 7 := i.isLt
  simp only [vtx, liftFin7]
  congr 1
  apply Fin.eq_of_val_eq
  show i.val % 7 % 7 = i.val
  omega

theorem vtx_lift_succ (f : Fin 7 → Pt) (i : Fin 7) :
    vtx 7 (liftFin7 f) (i.val + 1) = f (i + 1) := by
  simp only [vtx, liftFin7]
  congr 1
  apply Fin.eq_of_val_eq
  show (i.val + 1) % 7 % 7 = (i + 1).val
  rw [fin7_succ_val]
  omega

theorem liftFin7_apply (f : Fin 7 → Pt) (k : Nat) (h : k < 7) :
    liftFin7 f k = f ⟨k, h⟩ := by
  simp only [liftFin7]
  congr 1
  apply Fin.eq_of_val_eq
  show k % 7 = k
  omega

/-- **Minimum disjointness degree for two heptagons, `Fin 7` form** (`δ(G^D) ≥ 1`
on the `Q` side).  `hgp` is exactly `LowerBound.no_P_vertex_on_Q_side_line`. -/
theorem min_disjointness_degree_fin7 (PV QV : Fin 7 → Pt)
    (hgp : ∀ i j : Fin 7, orient (QV j) (QV (j + 1)) (PV i) ≠ 0) (j : Fin 7) :
    ∃ i : Fin 7, ¬ ProperCross (PV i) (PV (i + 1)) (QV j) (QV (j + 1)) := by
  have e3 : vtx 7 (liftFin7 QV) j.val = QV j := vtx_lift QV j
  have e4 : vtx 7 (liftFin7 QV) (j.val + 1) = QV (j + 1) := vtx_lift_succ QV j
  have hgp' : ∀ i, i < 7 →
      orient (vtx 7 (liftFin7 QV) j.val) (vtx 7 (liftFin7 QV) (j.val + 1))
        (liftFin7 PV i) ≠ 0 := by
    intro i hi
    rw [e3, e4, liftFin7_apply PV i hi]
    exact hgp _ j
  obtain ⟨i, hi, hnc⟩ :=
    exists_disjoint_Pside 7 (by decide) (liftFin7 PV) (liftFin7 QV) j.val hgp'
  refine ⟨⟨i, hi⟩, ?_⟩
  have e1 : vtx 7 (liftFin7 PV) i = PV ⟨i, hi⟩ := vtx_lift PV ⟨i, hi⟩
  have e2 : vtx 7 (liftFin7 PV) (i + 1) = PV (⟨i, hi⟩ + 1) := vtx_lift_succ PV ⟨i, hi⟩
  rw [e1, e2, e3, e4] at hnc
  exact hnc

/-- **Lemma A's hypothesis `h2`, discharged geometrically.**

`LemmaA.card_E_ge` takes `h2 : ∀ i : Fin m, i ∉ S → ∃ j : Fin n, R i j`.  With
`m = n = 7` and `R i j := ¬ ProperCross (PV i) (PV (i+1)) (QV j) (QV (j+1))`
— which is `LemmaA.Rcert` for the certificate pair — the statement below is the
unrestricted form of that binder, so it yields `h2` for *every* `S`:
`fun i _ => lemmaA_h2_fin7 PV QV hgp i`.

`hgp` is exactly `LowerBound.no_Q_vertex_on_P_side_line`.  (This file does not
import `LemmaA.lean`, and therefore not Mathlib; the statement is written so
that it matches the binder shape verbatim.) -/
theorem lemmaA_h2_fin7 (PV QV : Fin 7 → Pt)
    (hgp : ∀ i j : Fin 7, orient (PV i) (PV (i + 1)) (QV j) ≠ 0) (i : Fin 7) :
    ∃ j : Fin 7, ¬ ProperCross (PV i) (PV (i + 1)) (QV j) (QV (j + 1)) := by
  have e1 : vtx 7 (liftFin7 PV) i.val = PV i := vtx_lift PV i
  have e2 : vtx 7 (liftFin7 PV) (i.val + 1) = PV (i + 1) := vtx_lift_succ PV i
  have hgp' : ∀ j, j < 7 →
      orient (vtx 7 (liftFin7 PV) i.val) (vtx 7 (liftFin7 PV) (i.val + 1))
        (liftFin7 QV j) ≠ 0 := by
    intro j hj
    rw [e1, e2, liftFin7_apply QV j hj]
    exact hgp i _
  obtain ⟨j, hj, hnc⟩ :=
    exists_disjoint_Qside 7 (by decide) (liftFin7 PV) (liftFin7 QV) i.val hgp'
  refine ⟨⟨j, hj⟩, ?_⟩
  have e3 : vtx 7 (liftFin7 QV) j = QV ⟨j, hj⟩ := vtx_lift QV ⟨j, hj⟩
  have e4 : vtx 7 (liftFin7 QV) (j + 1) = QV (⟨j, hj⟩ + 1) := vtx_lift_succ QV ⟨j, hj⟩
  rw [e1, e2, e3, e4] at hnc
  exact hnc

/-! ## 6. Instantiation at the certificate heptagons of `LowerBound.lean`

These are not `decide` proofs of the conclusions: the conclusions are obtained by
*applying* the theorems above to the general-position facts already proved in
`LowerBound.lean`.  What they demonstrate is that the hypotheses are
simultaneously satisfiable by a genuine pair of simple heptagons. -/

section Certificate

open Heptagon.LowerBound

/-- Every side of `Q` fails to cross some side of `P` — derived from
`min_disjointness_degree_fin7` and `LowerBound.no_P_vertex_on_Q_side_line`. -/
theorem cert_min_disjointness_degree (j : Fin 7) : ∃ i : Fin 7, ¬ PQCross i j :=
  min_disjointness_degree_fin7 Pv Qv no_P_vertex_on_Q_side_line j

/-- Every side of `P` fails to cross some side of `Q` — Lemma A's `h2` for the
certificate pair, derived from `lemmaA_h2_fin7` and
`LowerBound.no_Q_vertex_on_P_side_line`. -/
theorem cert_lemmaA_h2 (i : Fin 7) : ∃ j : Fin 7, ¬ PQCross i j :=
  lemmaA_h2_fin7 Pv Qv no_Q_vertex_on_P_side_line i

/-- `h2` in exactly the binder shape `LemmaA.card_E_ge` expects, for an arbitrary
set `S` of `P`-sides. -/
theorem cert_lemmaA_h2_binder (S : Fin 7 → Prop) :
    ∀ i : Fin 7, ¬ S i → ∃ j : Fin 7, ¬ PQCross i j :=
  fun i _ => cert_lemmaA_h2 i

end Certificate

/-! ## 7. Non-vacuity, and why each hypothesis is needed

Four independent checks.  Every one is a kernel computation on explicit integer
coordinates. -/

section NonVacuity

open Heptagon.LowerBound

/-! ### 7a. The bound `metCount < n` is attained: a line meeting 6 of 7 sides -/

/-- The supporting line of side `0` of the certificate heptagon `Q`. -/
def certLine : Line := lineThrough (Qv 0) (Qv 1)

/-- It avoids every vertex of `P`. -/
theorem certLine_avoids : AvoidsVertices 7 (liftFin7 Pv) certLine := by decide

/-- …and it meets **six** of the seven sides of `P`.  So `metCount_lt_of_odd` is
sharp at `n = 7`, and the main theorem is not vacuously true: lines really do
meet almost every side. -/
theorem certLine_metCount : metCount 7 (liftFin7 Pv) certLine = 6 := by decide

/-- The general theorem applied to this concrete line reproduces `6 < 7`. -/
theorem certLine_lt : metCount 7 (liftFin7 Pv) certLine < 7 :=
  metCount_lt_of_odd 7 (by decide) _ _ certLine_avoids

/-! ### 7b. Oddness is essential: a vertex-avoiding line meeting ALL four sides
of a quadrilateral. -/

/-- A simple (non-convex) quadrilateral. -/
def Dart : Nat → Pt
  | 0 => (0, 0)
  | 1 => (2, 2)
  | 2 => (4, 0)
  | _ => (2, 3)

/-- The horizontal line `2y = 3`. -/
def dartLine : Line := ⟨0, 2, -3⟩

/-- `Dart` is simple at the orientation level: no three vertices collinear and
its two non-adjacent side pairs do not cross. -/
theorem dart_simple :
    ¬ Collinear (Dart 0) (Dart 1) (Dart 2) ∧ ¬ Collinear (Dart 0) (Dart 1) (Dart 3) ∧
    ¬ Collinear (Dart 0) (Dart 2) (Dart 3) ∧ ¬ Collinear (Dart 1) (Dart 2) (Dart 3) ∧
    ¬ ProperCross (Dart 0) (Dart 1) (Dart 2) (Dart 3) ∧
    ¬ ProperCross (Dart 1) (Dart 2) (Dart 3) (Dart 0) := by decide

theorem dartLine_avoids : AvoidsVertices 4 Dart dartLine := by decide

/-- **All four sides are met**, by a line avoiding all four vertices.  So the
oddness hypothesis of `exists_side_not_met` cannot be dropped. -/
theorem dart_meets_all_four_sides :
    MeetsSide 4 Dart dartLine 0 ∧ MeetsSide 4 Dart dartLine 1 ∧
    MeetsSide 4 Dart dartLine 2 ∧ MeetsSide 4 Dart dartLine 3 := by decide

theorem dart_metCount : metCount 4 Dart dartLine = 4 := by decide

/-- The parity conclusion still holds here — `4` is even — as
`metCount_even` predicts. -/
theorem dart_metCount_even : metCount 4 Dart dartLine % 2 = 0 :=
  metCount_even 4 (by decide) _ _ dartLine_avoids

/-! ### 7c. The STRICT vertex-avoidance hypothesis is essential

A simple triangle — an *odd* polygon — and a line through one of its vertices
that meets all three **closed** sides.  So the loose reading of the main theorem
("no line meets all sides") is FALSE, and the strict reading really is the one
the project must use.  Compare `docs/known-issues.md` K-09 and
`docs/external-lemma-audit.md` §2.1. -/

/-- The triangle `(0,1), (1,-1), (2,0)`. -/
def Tri : Nat → Pt
  | 0 => (0, 1)
  | 1 => (1, -1)
  | _ => (2, 0)

/-- The `x`-axis.  It passes through the vertex `(2,0)`. -/
def triLine : Line := ⟨0, 1, 0⟩

/-- The triangle is nondegenerate, hence a simple polygon. -/
theorem tri_simple : ¬ Collinear (Tri 0) (Tri 1) (Tri 2) := by decide

/-- The line does NOT avoid the vertices — it passes through `Tri 2`. -/
theorem triLine_not_avoiding : ¬ AvoidsVertices 3 Tri triLine := by decide

/-- **The loose form fails.**  All three closed sides of this simple odd polygon
are met by the line. -/
theorem triangle_loose_fails :
    MeetsClosedSide 3 Tri triLine 0 ∧ MeetsClosedSide 3 Tri triLine 1 ∧
    MeetsClosedSide 3 Tri triLine 2 := by decide

/-- **The parity conclusion fails too** for a vertex-incident line: the strict
count is `1`, which is odd.  So `metCount_even` genuinely consumes
`AvoidsVertices`. -/
theorem triangle_metCount_odd : metCount 3 Tri triLine = 1 := by decide

/-- The strict conclusion of the main theorem does hold here (side `1` is not
strictly met) — as it must, since the strict statement is robust — but it is not
obtained from `exists_side_not_met`, whose hypothesis fails. -/
theorem triangle_strict_still_misses : ¬ MeetsSide 3 Tri triLine 1 := by decide

/-! ### 7d. The predicates are not trivial

`Line.Separates` and `Line.MeetsClosed` really do differ, and `AvoidsVertices` is
really satisfiable at `n = 7`. -/

theorem separates_ne_meetsClosed :
    ¬ triLine.Separates (Tri 1) (Tri 2) ∧ triLine.MeetsClosed (Tri 1) (Tri 2) := by decide

theorem certLine_proper : certLine.Proper := by decide

/-- `Qv 0` and `Qv 1` do lie on `certLine`, so it really is their supporting
line — and by `certLine_avoids` it still avoids every vertex of `P`. -/
theorem certLine_through : certLine.On (Qv 0) ∧ certLine.On (Qv 1) :=
  ⟨lineThrough_on_left _ _, lineThrough_on_right _ _⟩

end NonVacuity

end Geometry
end Heptagon
