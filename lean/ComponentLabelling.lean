/-
  ComponentLabelling.lean

  EXTERNAL INPUT (E6) OF `FilterSoundness.lean`, DISCHARGED.

  `FilterSoundness.lean`'s header lists eight external inputs (E1)-(E8) that its
  filter-soundness theorems assume rather than prove.  (E6) is

      "correctness of the component labelling computed by the search's
       union-find"

  and it appears there as a HYPOTHESIS `hcmp` on an arbitrary labelling function
  `cmp : Nat -> Nat`, in two strengths:

    * `filterA_sound` / `filterE_sound` need only
          forall a b, a < 7 -> b < 7 -> cmp a != cmp b ->
              not (Conn (toMasks K) (Vtx.P a) (Vtx.P b))
      ("different labels really do mean different components"), because a
      labelling that wrongly MERGES components only makes those filters test
      fewer pairs;
    * `filterB_sound` needs BOTH directions,
          forall a b, a < 7 -> b < 7 -> (cmp a = cmp b <-> ConnP (toMasks K) a b),
      because the auxiliary graph H's edges are defined by label DISTINCTNESS,
      so a labelling that wrongly SPLITS a component yields a supergraph of the
      true H, about which bipartiteness of H says nothing.

  WHAT THIS FILE DOES.  It defines a concrete component labelling `label` on the
  14 vertices of the bipartite disjointness graph -- no `partial`, no
  well-founded recursion, no `native_decide`, no `sorry`, no project-level
  `axiom` -- and proves it correct against `Endgame.Conn` IN BOTH DIRECTIONS:

      label_eq_iff :  InRange u -> InRange v ->
                      (label M u = label M v  <->  Conn M u v)

  This is a genuine iff, not an implication presented as one.  (E6) is therefore
  FULLY discharged, in both the weak and the strong form, and both forms are
  derived below in exactly the shapes `filterA_sound` and `filterB_sound`
  consume (`cmpP_ne`, `cmpP_iff`, and the `Q`-side copies `cmpQ_ne`,
  `cmpQ_iff`).  Section 9 then APPLIES `filterA_sound`, `filterE_sound`,
  `filterB_sound` and their `Q`-side copies with `hcmp` supplied by these
  lemmas rather than assumed -- that application is the real deliverable, since
  it is what shows (E6) is discharged and not merely restated.

  THE ALGORITHM, AND WHY IT IS STRUCTURAL.  A vertex set is a pair of 7-bit
  masks `(pm, qm)` -- exactly `EndgameDefs`' `InSep` / `SepClosed`
  representation.  `stepSet` is one round of the bipartite one-step closure
  (add every neighbour of a member on either side), `iterSet` iterates it a
  fixed `Nat` number of times, and `reach M v = iterSet M 14 (sing v)`.  The
  fuel `14` is enough, and that is PROVED, not assumed (`agree_step_reach`): the
  vertex set has at most 14 elements, each non-stationary round adds at least
  one (`card_lt_of_not_agree`, `card_iter_ge`), so some round at index `< 14` is
  already stationary and the closure is stationary from there on
  (`agree_iter_of_agree`).  Stationarity is literally `Endgame.SepClosed`, so
  the "no edge leaves the reached set" half of the correctness proof is
  `Endgame.conn_mem_sep`, reused rather than reproved.

  `label M v` is then the canonical representative: the least vertex of
  `reach M v` in the fixed order `p_0 < ... < p_6 < q_0 < ... < q_6`, encoded as
  a `Nat` in `0..13` (`14` would mean "empty", which never happens for an
  in-range vertex).

  WHAT THIS FILE DOES NOT DO.  It does not verify the Python `components()` of
  `python/elimination/audit_enum.py`, nor the bitmask closure of
  `independent/implementation_b/reduction.cpp`: there is no extraction and no
  cross-check, exactly as in `FilterSoundness.lean`.  What is proved is that
  THERE IS a correct component labelling, defined in Lean and kernel-checked
  against `Conn`, and that the filter-soundness theorems can be applied with it.
  Nothing else in (E1)-(E5), (E7), (E8) is touched.

  AXIOMS (verbatim `#print axioms`, Lean 4.33.1).  Only the three standard Lean
  axioms occur; this file contains no `axiom` command, no `sorry`, no `admit`,
  no `native_decide`, no `unsafe` and no `partial`.

    'Heptagon.ComponentLabelling.conn_of_memB_reach' depends on axioms: [propext, Quot.sound]
    'Heptagon.ComponentLabelling.agree_step_reach' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.ComponentLabelling.sepClosed_reach' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.ComponentLabelling.memB_reach_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.ComponentLabelling.label_eq_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.ComponentLabelling.cmpP_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.ComponentLabelling.cmpQ_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.ComponentLabelling.cmpP_ne' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.ComponentLabelling.cmpQ_ne' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.ComponentLabelling.filterA_sound'' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.ComponentLabelling.filterA_sound_Q'' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.ComponentLabelling.filterE_sound'' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.ComponentLabelling.filterB_sound'' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.ComponentLabelling.filterB_sound_Q'' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.ComponentLabelling.Example.exM_labels' does not depend on any axioms
    'Heptagon.ComponentLabelling.Example.exM_separates' does not depend on any axioms
    'Heptagon.ComponentLabelling.Example.exM_not_conn' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.ComponentLabelling.Example.exM_conn' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.ComponentLabelling.Example.cert_labels_P' depends on axioms: [propext, Quot.sound]
    'Heptagon.ComponentLabelling.Example.cert_labels_Q' depends on axioms: [propext, Quot.sound]
    'Heptagon.ComponentLabelling.Example.cert_labels_match_certCmp' depends on axioms: [propext, Quot.sound]
    'Heptagon.ComponentLabelling.Example.cert_filterA' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.ComponentLabelling.Example.cert_filterE' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.ComponentLabelling.Example.cert_filterE_guard_fires' depends on axioms: [propext, Quot.sound]

  Where `Classical.choice` comes from, so that nobody mistakes it for hidden
  mathematics: `exists_of_not_agree` turns "the closure round changed something"
  into a witness by `Classical.byContradiction`, and `agree_step_reach` splits
  on whether a stationary round exists (`by_cases`).  Both are decidable in
  principle -- the statements are about 14 bits -- and neither adds any
  mathematical content.

  No file is modified by this one; it only imports `FilterSoundness`.
-/
import FilterSoundness

set_option autoImplicit false

namespace Heptagon
namespace ComponentLabelling

open Heptagon.Endgame
open Heptagon.DisjointnessGraph
open Heptagon.FilterSoundness

/-! ## 1. Vertex sets as a pair of 7-bit masks -/

/-- A set of vertices of the bipartite disjointness graph: the `P`-side mask and
the `Q`-side mask.  This is the representation of `Endgame.InSep`. -/
abbrev VSet := Nat × Nat

/-- Membership of a vertex in a `VSet`, as a `Bool`. -/
def memB (s : VSet) : Vtx → Bool
  | Vtx.P i => bitAt s.1 i
  | Vtx.Q j => bitAt s.2 j

/-- A vertex whose index is a legal side index. -/
def InRange : Vtx → Prop
  | Vtx.P i => i < 7
  | Vtx.Q j => j < 7

instance instDecidableInRange (v : Vtx) : Decidable (InRange v) := by
  cases v with
  | P i => exact (inferInstance : Decidable (i < 7))
  | Q j => exact (inferInstance : Decidable (j < 7))

theorem memB_iff_inSep (s : VSet) (v : Vtx) : memB s v = true ↔ InSep s.1 s.2 v := by
  cases v <;> exact Iff.rfl

/-! ## 2. The one-step closure and its iteration -/

/-- One round of the bipartite closure: a `P`-vertex joins if it was already in,
or if some `Q`-member is adjacent to it; symmetrically for `Q`-vertices.  Both
sides are updated from the OLD set, so one round is one BFS level on each
side. -/
def stepP (M : Nat → Nat) (s : VSet) : Nat :=
  mkMask (fun i => bitAt s.1 i || idx7.any (fun j => bitAt s.2 j && bitAt (M i) j))

def stepQ (M : Nat → Nat) (s : VSet) : Nat :=
  mkMask (fun j => bitAt s.2 j || idx7.any (fun i => bitAt s.1 i && bitAt (M i) j))

def stepSet (M : Nat → Nat) (s : VSet) : VSet := (stepP M s, stepQ M s)

theorem bitAt_stepSet_P (M : Nat → Nat) (s : VSet) (i : Nat) (hi : i < 7) :
    bitAt (stepSet M s).1 i
      = (bitAt s.1 i || idx7.any (fun j => bitAt s.2 j && bitAt (M i) j)) := by
  have h : (stepSet M s).1
      = mkMask (fun i => bitAt s.1 i || idx7.any (fun j => bitAt s.2 j && bitAt (M i) j)) := rfl
  rw [h]
  exact bitAt_mkMask _ i hi

theorem bitAt_stepSet_Q (M : Nat → Nat) (s : VSet) (j : Nat) (hj : j < 7) :
    bitAt (stepSet M s).2 j
      = (bitAt s.2 j || idx7.any (fun i => bitAt s.1 i && bitAt (M i) j)) := by
  have h : (stepSet M s).2
      = mkMask (fun j => bitAt s.2 j || idx7.any (fun i => bitAt s.1 i && bitAt (M i) j)) := rfl
  rw [h]
  exact bitAt_mkMask _ j hj

/-- `n` rounds of the closure.  A plain `Nat` fuel parameter: structural
recursion, no `partial`, no well-founded recursion. -/
def iterSet (M : Nat → Nat) : Nat → VSet → VSet
  | 0, s => s
  | (n + 1), s => stepSet M (iterSet M n s)

theorem iterSet_succ (M : Nat → Nat) (n : Nat) (s : VSet) :
    iterSet M (n + 1) s = stepSet M (iterSet M n s) := rfl

/-- The one-element set `{v}`. -/
def sing : Vtx → VSet
  | Vtx.P i => (mkMask (fun x => x == i), 0)
  | Vtx.Q j => (0, mkMask (fun y => y == j))

/-- The set of vertices reached from `v`.  The fuel `14` is the number of
vertices; `agree_step_reach` proves it is enough. -/
def reach (M : Nat → Nat) (v : Vtx) : VSet := iterSet M 14 (sing v)

/-! ## 3. Monotonicity -/

theorem memB_stepSet {M : Nat → Nat} {s : VSet} {w : Vtx} (hw : InRange w)
    (h : memB s w = true) : memB (stepSet M s) w = true := by
  cases w with
  | P i =>
    have hi : i < 7 := hw
    have h' : bitAt s.1 i = true := h
    show bitAt (stepSet M s).1 i = true
    rw [bitAt_stepSet_P M s i hi, h']
    rfl
  | Q j =>
    have hj : j < 7 := hw
    have h' : bitAt s.2 j = true := h
    show bitAt (stepSet M s).2 j = true
    rw [bitAt_stepSet_Q M s j hj, h']
    rfl

theorem memB_iterSet {M : Nat → Nat} {s : VSet} {w : Vtx} (hw : InRange w)
    (h : memB s w = true) : ∀ n, memB (iterSet M n s) w = true := by
  intro n
  induction n with
  | zero => exact h
  | succ n ih => exact memB_stepSet hw ih

theorem memB_sing {v : Vtx} (hv : InRange v) : memB (sing v) v = true := by
  cases v with
  | P i =>
    have hi : i < 7 := hv
    show bitAt (mkMask (fun x => x == i)) i = true
    rw [bitAt_mkMask _ i hi]
    simp
  | Q j =>
    have hj : j < 7 := hv
    show bitAt (mkMask (fun y => y == j)) j = true
    rw [bitAt_mkMask _ j hj]
    simp

theorem memB_reach {M : Nat → Nat} {v : Vtx} (hv : InRange v) : memB (reach M v) v = true :=
  memB_iterSet hv (memB_sing hv) 14

/-! ## 4. Soundness: everything reached really is connected -/

/-- The invariant carried through the iteration. -/
def Sound (M : Nat → Nat) (v : Vtx) (s : VSet) : Prop :=
  ∀ w, InRange w → memB s w = true → Conn M v w

theorem sound_sing (M : Nat → Nat) {v : Vtx} (hv : InRange v) : Sound M v (sing v) := by
  intro w hw hm
  cases v with
  | P i =>
    cases w with
    | P i' =>
      have hi' : i' < 7 := hw
      have hm' : bitAt (mkMask (fun x => x == i)) i' = true := hm
      rw [bitAt_mkMask _ i' hi'] at hm'
      have : i' = i := by simpa using hm'
      subst this
      exact Conn.refl _
    | Q j =>
      have hm' : bitAt 0 j = true := hm
      rw [bitAt_zero] at hm'
      exact Bool.noConfusion hm'
  | Q j =>
    cases w with
    | P i =>
      have hm' : bitAt 0 i = true := hm
      rw [bitAt_zero] at hm'
      exact Bool.noConfusion hm'
    | Q j' =>
      have hj' : j' < 7 := hw
      have hm' : bitAt (mkMask (fun y => y == j)) j' = true := hm
      rw [bitAt_mkMask _ j' hj'] at hm'
      have : j' = j := by simpa using hm'
      subst this
      exact Conn.refl _

theorem sound_stepSet {M : Nat → Nat} {v : Vtx} {s : VSet} (h : Sound M v s) :
    Sound M v (stepSet M s) := by
  intro w hw hm
  cases w with
  | P i =>
    have hi : i < 7 := hw
    have hm' : bitAt (stepSet M s).1 i = true := hm
    rw [bitAt_stepSet_P M s i hi] at hm'
    cases hb : bitAt s.1 i with
    | true => exact h (Vtx.P i) hw hb
    | false =>
      rw [hb, Bool.false_or] at hm'
      obtain ⟨j, hjmem, hj2⟩ := List.any_eq_true.mp hm'
      have hj : j < 7 := mem_idx7.mp hjmem
      have hj2' := Bool.and_eq_true .. |>.mp hj2
      exact Conn.stepQP (h (Vtx.Q j) hj hj2'.1) hi hj hj2'.2
  | Q j =>
    have hj : j < 7 := hw
    have hm' : bitAt (stepSet M s).2 j = true := hm
    rw [bitAt_stepSet_Q M s j hj] at hm'
    cases hb : bitAt s.2 j with
    | true => exact h (Vtx.Q j) hw hb
    | false =>
      rw [hb, Bool.false_or] at hm'
      obtain ⟨i, himem, hi2⟩ := List.any_eq_true.mp hm'
      have hi : i < 7 := mem_idx7.mp himem
      have hi2' := Bool.and_eq_true .. |>.mp hi2
      exact Conn.stepPQ (h (Vtx.P i) hi hi2'.1) hi hj hi2'.2

theorem sound_iterSet (M : Nat → Nat) {v : Vtx} (hv : InRange v) :
    ∀ n, Sound M v (iterSet M n (sing v)) := by
  intro n
  induction n with
  | zero => exact sound_sing M hv
  | succ n ih => exact sound_stepSet ih

theorem conn_of_memB_reach {M : Nat → Nat} {v w : Vtx} (hv : InRange v) (hw : InRange w)
    (h : memB (reach M v) w = true) : Conn M v w :=
  sound_iterSet M hv 14 w hw h

/-! ## 5. The fuel is enough: 14 rounds reach a fixed point

Two sets `agree` when they have the same in-range members.  `agree_step_reach`
is the only nontrivial step: it shows `reach M v` is stationary, by a counting
argument (each non-stationary round adds at least one of the 14 vertices). -/

/-- Two vertex sets have the same in-range members. -/
def Agree (a b : VSet) : Prop := ∀ w, InRange w → memB a w = memB b w

theorem agree_refl (a : VSet) : Agree a a := fun _ _ => rfl

theorem agree_symm {a b : VSet} (h : Agree a b) : Agree b a := fun w hw => (h w hw).symm

theorem agree_trans {a b c : VSet} (h1 : Agree a b) (h2 : Agree b c) : Agree a c :=
  fun w hw => (h1 w hw).trans (h2 w hw)

/-- `List.any` over `idx7` only sees the arguments `0..6`. -/
theorem any7_congr {f g : Nat → Bool} (h : ∀ j, j < 7 → f j = g j) :
    idx7.any f = idx7.any g := by
  simp only [idx7, List.any_cons, List.any_nil, h 0 (by decide), h 1 (by decide),
    h 2 (by decide), h 3 (by decide), h 4 (by decide), h 5 (by decide), h 6 (by decide)]

theorem agree_stepSet {M : Nat → Nat} {a b : VSet} (h : Agree a b) :
    Agree (stepSet M a) (stepSet M b) := by
  intro w hw
  cases w with
  | P i =>
    have hi : i < 7 := hw
    show bitAt (stepSet M a).1 i = bitAt (stepSet M b).1 i
    rw [bitAt_stepSet_P M a i hi, bitAt_stepSet_P M b i hi,
      show bitAt a.1 i = bitAt b.1 i from h (Vtx.P i) hi,
      any7_congr (f := fun j => bitAt a.2 j && bitAt (M i) j)
        (g := fun j => bitAt b.2 j && bitAt (M i) j)
        (fun j hj => by rw [show bitAt a.2 j = bitAt b.2 j from h (Vtx.Q j) hj])]
  | Q j =>
    have hj : j < 7 := hw
    show bitAt (stepSet M a).2 j = bitAt (stepSet M b).2 j
    rw [bitAt_stepSet_Q M a j hj, bitAt_stepSet_Q M b j hj,
      show bitAt a.2 j = bitAt b.2 j from h (Vtx.Q j) hj,
      any7_congr (f := fun i => bitAt a.1 i && bitAt (M i) j)
        (g := fun i => bitAt b.1 i && bitAt (M i) j)
        (fun i hi => by rw [show bitAt a.1 i = bitAt b.1 i from h (Vtx.P i) hi])]

theorem exists_of_not_agree {a b : VSet} (h : ¬ Agree a b) :
    ∃ w, InRange w ∧ memB a w ≠ memB b w :=
  Classical.byContradiction fun hc =>
    h fun w hw => Classical.byContradiction fun hne => hc ⟨w, hw, hne⟩

/-! ### 5.1 Counting -/

/-- The number of indices of `L` on which `f` is `true`. -/
def cnt (f : Nat → Bool) : List Nat → Nat
  | [] => 0
  | i :: is => (if f i then 1 else 0) + cnt f is

theorem cnt_mono {f g : Nat → Bool} : ∀ (L : List Nat),
    (∀ i ∈ L, f i = true → g i = true) → cnt f L ≤ cnt g L := by
  intro L
  induction L with
  | nil => intro _; exact Nat.le_refl 0
  | cons i is ih =>
    intro hm
    have hrec := ih (fun x hx => hm x (List.Mem.tail _ hx))
    have hhead : (if f i then 1 else 0) ≤ (if g i then 1 else 0) := by
      cases hf : f i with
      | false => simp
      | true => rw [hm i (List.Mem.head _) hf]; simp
    simp only [cnt]
    omega

theorem cnt_lt {f g : Nat → Bool} : ∀ (L : List Nat) (x : Nat), x ∈ L →
    f x = false → g x = true → (∀ i ∈ L, f i = true → g i = true) → cnt f L < cnt g L := by
  intro L
  induction L with
  | nil => intro x hx; cases hx
  | cons i is ih =>
    intro x hx hfx hgx hm
    have hrec := cnt_mono (f := f) (g := g) is (fun y hy => hm y (List.Mem.tail _ hy))
    simp only [cnt]
    cases hx with
    | head =>
      have h1 : (if f i then 1 else 0) = 0 := by rw [hfx]; rfl
      have h2 : (if g i then 1 else 0) = 1 := by rw [hgx]; rfl
      omega
    | tail _ hx' =>
      have hlt := ih x hx' hfx hgx (fun y hy => hm y (List.Mem.tail _ hy))
      have hhead : (if f i then 1 else 0) ≤ (if g i then 1 else 0) := by
        cases hf : f i with
        | false => simp
        | true => rw [hm i (List.Mem.head _) hf]; simp
      omega

theorem cnt_le_length (f : Nat → Bool) : ∀ (L : List Nat), cnt f L ≤ L.length := by
  intro L
  induction L with
  | nil => exact Nat.le_refl 0
  | cons i is ih =>
    have : (if f i then 1 else 0) ≤ 1 := by cases f i <;> simp
    simp only [cnt, List.length_cons]
    omega

theorem cnt_pos {f : Nat → Bool} {L : List Nat} {i : Nat} (hi : i ∈ L) (h : f i = true) :
    1 ≤ cnt f L := by
  induction L with
  | nil => cases hi
  | cons u us ih =>
    simp only [cnt]
    cases hi with
    | head => rw [if_pos (by rw [h])]; omega
    | tail _ hi' => have := ih hi'; omega

/-- The number of in-range members of a vertex set; at most `14`. -/
def card (s : VSet) : Nat :=
  cnt (fun i => bitAt s.1 i) idx7 + cnt (fun j => bitAt s.2 j) idx7

theorem card_le (s : VSet) : card s ≤ 14 := by
  have h1 := cnt_le_length (fun i => bitAt s.1 i) idx7
  have h2 := cnt_le_length (fun j => bitAt s.2 j) idx7
  have h3 : idx7.length = 7 := rfl
  rw [h3] at h1 h2
  unfold card
  omega

theorem one_le_card {s : VSet} {w : Vtx} (hw : InRange w) (h : memB s w = true) :
    1 ≤ card s := by
  cases w with
  | P i =>
    have hi : i < 7 := hw
    have := cnt_pos (f := fun i => bitAt s.1 i) (mem_idx7.mpr hi) h
    unfold card
    omega
  | Q j =>
    have hj : j < 7 := hw
    have := cnt_pos (f := fun j => bitAt s.2 j) (mem_idx7.mpr hj) h
    unfold card
    omega

theorem card_lt_of_not_agree {M : Nat → Nat} {s : VSet} (h : ¬ Agree (stepSet M s) s) :
    card s < card (stepSet M s) := by
  obtain ⟨w, hw, hne⟩ := exists_of_not_agree h
  -- monotonicity forces the differing vertex to be new
  have hfalse : memB s w = false := by
    cases hb : memB s w with
    | false => rfl
    | true => exact absurd (by rw [memB_stepSet (M := M) hw hb, hb]) hne
  have htrue : memB (stepSet M s) w = true := by
    cases hb : memB (stepSet M s) w with
    | true => rfl
    | false => exact absurd (by rw [hb, hfalse]) hne
  have hmonoP : ∀ i ∈ idx7, bitAt s.1 i = true → bitAt (stepSet M s).1 i = true := by
    intro i hi hb
    exact memB_stepSet (M := M) (w := Vtx.P i) (mem_idx7.mp hi) hb
  have hmonoQ : ∀ j ∈ idx7, bitAt s.2 j = true → bitAt (stepSet M s).2 j = true := by
    intro j hj hb
    exact memB_stepSet (M := M) (w := Vtx.Q j) (mem_idx7.mp hj) hb
  cases w with
  | P i =>
    have hi : i < 7 := hw
    have hlt := cnt_lt (f := fun i => bitAt s.1 i) (g := fun i => bitAt (stepSet M s).1 i)
      idx7 i (mem_idx7.mpr hi) hfalse htrue hmonoP
    have hle := cnt_mono (f := fun j => bitAt s.2 j) (g := fun j => bitAt (stepSet M s).2 j)
      idx7 hmonoQ
    unfold card
    omega
  | Q j =>
    have hj : j < 7 := hw
    have hlt := cnt_lt (f := fun j => bitAt s.2 j) (g := fun j => bitAt (stepSet M s).2 j)
      idx7 j (mem_idx7.mpr hj) hfalse htrue hmonoQ
    have hle := cnt_mono (f := fun i => bitAt s.1 i) (g := fun i => bitAt (stepSet M s).1 i)
      idx7 hmonoP
    unfold card
    omega

/-- If no round up to `n` was stationary, the set has grown by `n`. -/
theorem card_iter_ge (M : Nat → Nat) (s : VSet) : ∀ n,
    (∀ k, k < n → ¬ Agree (iterSet M (k + 1) s) (iterSet M k s)) →
    card s + n ≤ card (iterSet M n s) := by
  intro n
  induction n with
  | zero => intro _; exact Nat.le_refl _
  | succ n ih =>
    intro h
    have hrec := ih (fun k hk => h k (Nat.lt_succ_of_lt hk))
    have hstep : card (iterSet M n s) < card (iterSet M (n + 1) s) := by
      rw [iterSet_succ]
      exact card_lt_of_not_agree (by rw [← iterSet_succ]; exact h n (Nat.lt_succ_self n))
    omega

/-- Once a round is stationary, every later round is too. -/
theorem agree_iter_of_agree (M : Nat → Nat) (s : VSet) (k : Nat)
    (h : Agree (iterSet M (k + 1) s) (iterSet M k s)) :
    ∀ d, Agree (iterSet M (k + d) s) (iterSet M k s) := by
  intro d
  induction d with
  | zero => exact agree_refl _
  | succ d ih =>
    have h1 : Agree (stepSet M (iterSet M (k + d) s)) (stepSet M (iterSet M k s)) :=
      agree_stepSet ih
    have h2 : Agree (iterSet M (k + (d + 1)) s) (iterSet M (k + 1) s) := by
      rw [show k + (d + 1) = (k + d) + 1 from rfl, iterSet_succ, iterSet_succ]
      exact h1
    exact agree_trans h2 h

/-- **The fuel `14` is enough.**  `reach M v` is stationary under one more
round of the closure. -/
theorem agree_step_reach (M : Nat → Nat) {v : Vtx} (hv : InRange v) :
    Agree (stepSet M (reach M v)) (reach M v) := by
  by_cases hex : ∃ k, k < 14 ∧ Agree (iterSet M (k + 1) (sing v)) (iterSet M k (sing v))
  · obtain ⟨k, hk, hak⟩ := hex
    have h14 : Agree (iterSet M 14 (sing v)) (iterSet M k (sing v)) := by
      have := agree_iter_of_agree M (sing v) k hak (14 - k)
      rw [show k + (14 - k) = 14 from by omega] at this
      exact this
    have h15 : Agree (iterSet M 15 (sing v)) (iterSet M k (sing v)) := by
      have := agree_iter_of_agree M (sing v) k hak (15 - k)
      rw [show k + (15 - k) = 15 from by omega] at this
      exact this
    have : Agree (iterSet M 15 (sing v)) (iterSet M 14 (sing v)) :=
      agree_trans h15 (agree_symm h14)
    exact this
  · exfalso
    have hall : ∀ k, k < 14 → ¬ Agree (iterSet M (k + 1) (sing v)) (iterSet M k (sing v)) :=
      fun k hk ha => hex ⟨k, hk, ha⟩
    have h1 := card_iter_ge M (sing v) 14 hall
    have h2 : 1 ≤ card (sing v) := one_le_card hv (memB_sing hv)
    have h3 : card (iterSet M 14 (sing v)) ≤ 14 := card_le _
    omega

/-- Stationarity is exactly `Endgame.SepClosed`, so `Endgame.conn_mem_sep`
applies to the reached set. -/
theorem sepClosed_reach (M : Nat → Nat) {v : Vtx} (hv : InRange v) :
    SepClosed M (reach M v).1 (reach M v).2 := by
  have hA := agree_step_reach M hv
  constructor
  · intro i hi j hj hp he
    have hstep : bitAt (stepSet M (reach M v)).2 j = true := by
      rw [bitAt_stepSet_Q M (reach M v) j hj]
      have : idx7.any (fun i => bitAt (reach M v).1 i && bitAt (M i) j) = true :=
        List.any_eq_true.mpr ⟨i, mem_idx7.mpr hi, by rw [hp, he]; rfl⟩
      rw [this, Bool.or_true]
    have := hA (Vtx.Q j) hj
    exact (show bitAt (stepSet M (reach M v)).2 j = bitAt (reach M v).2 j from this) ▸ hstep
  · intro i hi j hj hq he
    have hstep : bitAt (stepSet M (reach M v)).1 i = true := by
      rw [bitAt_stepSet_P M (reach M v) i hi]
      have : idx7.any (fun j => bitAt (reach M v).2 j && bitAt (M i) j) = true :=
        List.any_eq_true.mpr ⟨j, mem_idx7.mpr hj, by rw [hq, he]; rfl⟩
      rw [this, Bool.or_true]
    have := hA (Vtx.P i) hi
    exact (show bitAt (stepSet M (reach M v)).1 i = bitAt (reach M v).1 i from this) ▸ hstep

/-- **The reached set is exactly the connected component**, both directions.
`←` is `Endgame.conn_mem_sep` at the fixed point; `→` is the soundness
invariant. -/
theorem memB_reach_iff (M : Nat → Nat) {v w : Vtx} (hv : InRange v) (hw : InRange w) :
    memB (reach M v) w = true ↔ Conn M v w := by
  constructor
  · exact conn_of_memB_reach hv hw
  · intro hc
    have hu : InSep (reach M v).1 (reach M v).2 v := (memB_iff_inSep _ v).mp (memB_reach hv)
    exact (memB_iff_inSep _ w).mpr (conn_mem_sep (sepClosed_reach M hv) hu hc)

/-! ## 6. The canonical representative -/

/-- The fourteen vertices, in the order `p_0 < ... < p_6 < q_0 < ... < q_6`. -/
def vtx14 : List Vtx :=
  [Vtx.P 0, Vtx.P 1, Vtx.P 2, Vtx.P 3, Vtx.P 4, Vtx.P 5, Vtx.P 6,
   Vtx.Q 0, Vtx.Q 1, Vtx.Q 2, Vtx.Q 3, Vtx.Q 4, Vtx.Q 5, Vtx.Q 6]

/-- The index of a vertex in that order: `p_i ↦ i`, `q_j ↦ 7 + j`. -/
def idxOf : Vtx → Nat
  | Vtx.P i => i
  | Vtx.Q j => 7 + j

theorem vtx14_range : ∀ w ∈ vtx14, InRange w := by decide

theorem idxOf_inj : ∀ w1 ∈ vtx14, ∀ w2 ∈ vtx14, idxOf w1 = idxOf w2 → w1 = w2 := by decide

theorem mem_vtx14 : ∀ v : Vtx, InRange v → v ∈ vtx14 := by
  intro v hv
  cases v with
  | P i =>
    have hi : i < 7 := hv
    have h : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 ∨ i = 5 ∨ i = 6 := by omega
    rcases h with h | h | h | h | h | h | h <;> subst h <;> decide
  | Q j =>
    have hj : j < 7 := hv
    have h : j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 ∨ j = 4 ∨ j = 5 ∨ j = 6 := by omega
    rcases h with h | h | h | h | h | h | h <;> subst h <;> decide

/-- The index of the first member of `s` in the list `L`; `14` if there is
none. -/
def leastOf (s : VSet) : List Vtx → Nat
  | [] => 14
  | w :: ws => if memB s w then idxOf w else leastOf s ws

theorem leastOf_cons_pos {s : VSet} {u : Vtx} {us : List Vtx} (h : memB s u = true) :
    leastOf s (u :: us) = idxOf u := by simp [leastOf, h]

theorem leastOf_cons_neg {s : VSet} {u : Vtx} {us : List Vtx} (h : memB s u = false) :
    leastOf s (u :: us) = leastOf s us := by simp [leastOf, h]

theorem leastOf_spec (s : VSet) : ∀ (L : List Vtx), (∃ w, w ∈ L ∧ memB s w = true) →
    ∃ w, w ∈ L ∧ leastOf s L = idxOf w ∧ memB s w = true := by
  intro L
  induction L with
  | nil => intro h; obtain ⟨w, hw, _⟩ := h; cases hw
  | cons u us ih =>
    intro h
    cases hu : memB s u with
    | true => exact ⟨u, List.Mem.head _, leastOf_cons_pos hu, hu⟩
    | false =>
      obtain ⟨w, hw, hwm⟩ := h
      have hw' : w ∈ us := by
        cases hw with
        | head => rw [hu] at hwm; exact Bool.noConfusion hwm
        | tail _ h' => exact h'
      obtain ⟨w', h1, h2, h3⟩ := ih ⟨w, hw', hwm⟩
      exact ⟨w', List.Mem.tail _ h1, (leastOf_cons_neg hu).trans h2, h3⟩

theorem leastOf_congr {a b : VSet} : ∀ (L : List Vtx), (∀ w ∈ L, memB a w = memB b w) →
    leastOf a L = leastOf b L := by
  intro L
  induction L with
  | nil => intro _; rfl
  | cons u us ih =>
    intro h
    have hu : memB a u = memB b u := h u (List.Mem.head _)
    cases hb : memB b u with
    | true =>
      rw [leastOf_cons_pos (by rw [hu, hb]), leastOf_cons_pos hb]
    | false =>
      rw [leastOf_cons_neg (by rw [hu, hb]), leastOf_cons_neg hb]
      exact ih (fun w hw => h w (List.Mem.tail _ hw))

/-- **The component labelling.**  `label M v` is the index, in
`p_0 < ... < p_6 < q_0 < ... < q_6`, of the least vertex connected to `v`. -/
def label (M : Nat → Nat) (v : Vtx) : Nat := leastOf (reach M v) vtx14

/-! ## 7. Correctness of the labelling, in both directions -/

theorem bool_eq_of_iff {a b : Bool} (h : a = true ↔ b = true) : a = b := by
  cases a <;> cases b
  · rfl
  · exact absurd (h.mpr rfl) (by simp)
  · exact absurd (h.mp rfl) (by simp)
  · rfl

/-- **(E6), PROVED.**  Two in-range vertices get the same label exactly when
they are connected in the bipartite disjointness graph.  A genuine iff. -/
theorem label_eq_iff (M : Nat → Nat) {u v : Vtx} (hu : InRange u) (hv : InRange v) :
    label M u = label M v ↔ Conn M u v := by
  constructor
  · intro h
    obtain ⟨w1, hw1mem, hw1lab, hw1m⟩ :=
      leastOf_spec (reach M u) vtx14 ⟨u, mem_vtx14 u hu, memB_reach hu⟩
    obtain ⟨w2, hw2mem, hw2lab, hw2m⟩ :=
      leastOf_spec (reach M v) vtx14 ⟨v, mem_vtx14 v hv, memB_reach hv⟩
    have hidx : idxOf w1 = idxOf w2 := by
      rw [← hw1lab, ← hw2lab]; exact h
    have hw : w1 = w2 := idxOf_inj w1 hw1mem w2 hw2mem hidx
    subst hw
    have c1 : Conn M u w1 := conn_of_memB_reach hu (vtx14_range w1 hw1mem) hw1m
    have c2 : Conn M v w1 := conn_of_memB_reach hv (vtx14_range w1 hw1mem) hw2m
    exact conn_trans c1 (conn_symm c2)
  · intro hc
    refine leastOf_congr vtx14 (fun w hw => bool_eq_of_iff ?_)
    have hwr : InRange w := vtx14_range w hw
    rw [memB_reach_iff M hu hwr, memB_reach_iff M hv hwr]
    exact ⟨fun h => conn_trans (conn_symm hc) h, fun h => conn_trans hc h⟩

/-! ## 8. The two shapes `FilterSoundness` consumes

`cmpP M` is the labelling of the sides of `P`, `cmpQ M` that of the sides of
`Q`; in both cases `M` is the `P`-side mask function of the SAME bipartite
graph, which is what `Endgame.Conn M` is about. -/

/-- The search's `comp[]` array for the sides of `P`, defined in Lean. -/
def cmpP (M : Nat → Nat) (a : Nat) : Nat := label M (Vtx.P a)

/-- The search's `comp[]` array for the sides of `Q`. -/
def cmpQ (M : Nat → Nat) (a : Nat) : Nat := label M (Vtx.Q a)

/-- **(E6) in the strong (iff) form, `P` side** -- the hypothesis `hcmp` of
`FilterSoundness.filterB_sound`. -/
theorem cmpP_iff (M : Nat → Nat) : ∀ a b, a < 7 → b < 7 →
    (cmpP M a = cmpP M b ↔ Conn M (Vtx.P a) (Vtx.P b)) :=
  fun _ _ ha hb => label_eq_iff M ha hb

/-- **(E6) in the strong (iff) form, `Q` side.** -/
theorem cmpQ_iff (M : Nat → Nat) : ∀ a b, a < 7 → b < 7 →
    (cmpQ M a = cmpQ M b ↔ Conn M (Vtx.Q a) (Vtx.Q b)) :=
  fun _ _ ha hb => label_eq_iff M ha hb

/-- **(E6) in the weak form, `P` side** -- the hypothesis `hcmp` of
`FilterSoundness.filterA_sound` and `filterE_sound`. -/
theorem cmpP_ne (M : Nat → Nat) : ∀ a b, a < 7 → b < 7 →
    cmpP M a ≠ cmpP M b → ¬ Conn M (Vtx.P a) (Vtx.P b) :=
  fun a b ha hb hne hc => hne ((cmpP_iff M a b ha hb).mpr hc)

/-- **(E6) in the weak form, `Q` side.** -/
theorem cmpQ_ne (M : Nat → Nat) : ∀ a b, a < 7 → b < 7 →
    cmpQ M a ≠ cmpQ M b → ¬ Conn M (Vtx.Q a) (Vtx.Q b) :=
  fun a b ha hb hne hc => hne ((cmpQ_iff M a b ha hb).mpr hc)

/-! ## 9. (E6) discharged in `FilterSoundness`'s own theorems

Each theorem below is the corresponding `FilterSoundness` theorem with the
`hcmp` argument SUPPLIED rather than assumed, and with `cmp` instantiated to the
labelling defined above.  The remaining hypotheses are (E1)-(E5), (E7),
untouched. -/

/-- **Filter (a), with (E6) discharged.**  `filterA_sound` applied to `cmpP`. -/
theorem filterA_sound' (K : Config)
    (hAKR5 : ∀ p ∈ consecPairs, ¬ Conn (toMasks K) (Vtx.P p.1) (Vtx.P p.2) →
        AKR5ConclusionG (DisjointO K) p.1 p.2) :
    L5PairsOk (toMasks K) (cmpP (toMasks K)) consecPairs :=
  filterA_sound K (cmpP (toMasks K)) (cmpP_ne (toMasks K)) hAKR5

/-- **Filter (a), `Q` side, with (E6) discharged.** -/
theorem filterA_sound_Q' (K : Config)
    (hAKR5 : ∀ p ∈ consecPairs, ¬ Conn (toMasks K) (Vtx.Q p.1) (Vtx.Q p.2) →
        AKR5ConclusionG (fun j i => DisjointO K i j) p.1 p.2) :
    L5PairsOk (toMasksQ K) (cmpQ (toMasks K)) consecPairs :=
  filterA_sound_Q K (cmpQ (toMasks K)) (cmpQ_ne (toMasks K)) hAKR5

/-- **Filter (e), with (E6) discharged.** -/
theorem filterE_sound' (K : Config) (AV : List (Nat × Nat)) (Avoiding : Nat → Nat → Prop)
    (hAV : ∀ p ∈ AV, p.1 < 7 ∧ p.2 < 7)
    (hAVlist : ∀ p ∈ AV, Avoiding p.1 p.2)
    (hAKR5 : ∀ a b, a < 7 → b < 7 → Avoiding a b →
        ¬ Conn (toMasks K) (Vtx.P a) (Vtx.P b) → AKR5ConclusionG (DisjointO K) a b) :
    L5PairsOk (toMasks K) (cmpP (toMasks K)) AV :=
  filterE_sound K (cmpP (toMasks K)) AV Avoiding hAV hAVlist (cmpP_ne (toMasks K)) hAKR5

/-- **Filter (b), with (E6) discharged.**  This is the one that genuinely needs
the iff: `filterB_sound`'s `hcmp` is two-directional, and `cmpP_iff` supplies
both directions. -/
theorem filterB_sound' (K : Config) (S : Nat → Lemma7Bridge.Status → Prop)
    (hne : ∀ i, HVertexR (ConnP (toMasks K)) i → ∃ s, S i s)
    (hdisj : ∀ i k s, HAdjR (ConnP (toMasks K)) i k → S i s → S k s → False) :
    HBipOk (cmpP (toMasks K)) :=
  filterB_sound K (cmpP (toMasks K)) S (cmpP_iff (toMasks K)) hne hdisj

/-- **Filter (b), `Q` side, with (E6) discharged.** -/
theorem filterB_sound_Q' (K : Config) (S : Nat → Lemma7Bridge.Status → Prop)
    (hne : ∀ i, HVertexR (ConnQ (toMasks K)) i → ∃ s, S i s)
    (hdisj : ∀ i k s, HAdjR (ConnQ (toMasks K)) i k → S i s → S k s → False) :
    HBipOk (cmpQ (toMasks K)) :=
  filterB_sound_Q K (cmpQ (toMasks K)) S (cmpQ_iff (toMasks K)) hne hdisj

/-! ## 10. Non-vacuity

Two concrete graphs.  `exM` is a hand-built mask function with two components;
`toMasks certConfig` is the actual certificate pair of heptagons of
`LowerBound.lean`, whose three components `FilterSoundness` records (and whose
labelling it had to supply by hand, as `certCmp`, together with three
separators).  Here the labelling is COMPUTED, and the component structure is
obtained by applying `label_eq_iff` -- not asserted. -/

namespace Example

/- The `decide`s below evaluate the closure iteration, so they need more than
the default elaborator recursion depth.  They are plain kernel reductions on
`Nat` literals: no `native_decide`, and the kernel re-checks every one of
them. -/
set_option maxRecDepth 20000

/-- Sides `p_0, p_1` meet `q_0, q_1`; sides `p_2 .. p_6` meet `q_2 .. q_6`.
Two components: `{p_0,p_1,q_0,q_1}` and `{p_2..p_6, q_2..q_6}`. -/
def exM : Nat → Nat := fun i => if i < 2 then 3 else 124

/-- The labelling computes the expected representatives: `p_0` for the first
component, `p_2` for the second. -/
theorem exM_labels :
    cmpP exM 0 = 0 ∧ cmpP exM 1 = 0 ∧ cmpP exM 2 = 2 ∧ cmpP exM 3 = 2 ∧
    cmpP exM 4 = 2 ∧ cmpP exM 5 = 2 ∧ cmpP exM 6 = 2 ∧
    cmpQ exM 0 = 0 ∧ cmpQ exM 1 = 0 ∧ cmpQ exM 2 = 2 ∧ cmpQ exM 3 = 2 ∧
    cmpQ exM 4 = 2 ∧ cmpQ exM 5 = 2 ∧ cmpQ exM 6 = 2 := by decide

/-- It SEPARATES: the two components really do get different labels, and by
`cmpP_ne` that separation is a theorem about `Conn`, not just about labels. -/
theorem exM_separates : cmpP exM 0 ≠ cmpP exM 2 := by decide

theorem exM_not_conn : ¬ Conn exM (Vtx.P 0) (Vtx.P 2) :=
  cmpP_ne exM 0 2 (by decide) (by decide) exM_separates

/-- And it MERGES what is connected: `p_0` and `p_1` share a label, and by
`cmpP_iff` that gives an actual `Conn` derivation. -/
theorem exM_conn : Conn exM (Vtx.P 0) (Vtx.P 1) :=
  (cmpP_iff exM 0 1 (by decide) (by decide)).mp (by decide)

/-! ### 10.1 The certificate configuration

`FilterSoundness.Example` records the components of `certConfig` as
`{p0,p1,p2,q3}`, `{p3,p4,p5,q2}`, `{p6,q0,q1,q4,q5,q6}` and labels them by hand
with `certCmp = [0,0,0,1,1,1,2]`.  The labelling defined here computes the same
partition, with least-vertex representatives `p_0`, `p_3`, `p_6`. -/

theorem cert_labels_P :
    cmpP (toMasks certConfig) 0 = 0 ∧ cmpP (toMasks certConfig) 1 = 0 ∧
    cmpP (toMasks certConfig) 2 = 0 ∧ cmpP (toMasks certConfig) 3 = 3 ∧
    cmpP (toMasks certConfig) 4 = 3 ∧ cmpP (toMasks certConfig) 5 = 3 ∧
    cmpP (toMasks certConfig) 6 = 6 := by decide

theorem cert_labels_Q :
    cmpQ (toMasks certConfig) 0 = 6 ∧ cmpQ (toMasks certConfig) 1 = 6 ∧
    cmpQ (toMasks certConfig) 2 = 3 ∧ cmpQ (toMasks certConfig) 3 = 0 ∧
    cmpQ (toMasks certConfig) 4 = 6 ∧ cmpQ (toMasks certConfig) 5 = 6 ∧
    cmpQ (toMasks certConfig) 6 = 6 := by decide

/-- The computed labelling agrees with the hand-written `certCmp` as a
PARTITION: same label iff same label. -/
theorem cert_labels_match_certCmp : ∀ a, a < 7 → ∀ b, b < 7 →
    (cmpP (toMasks certConfig) a = cmpP (toMasks certConfig) b ↔
     FilterSoundness.Example.certCmp a = FilterSoundness.Example.certCmp b) := by
  decide

/-- **Filter (a) accepts the certificate configuration with the COMPUTED
labelling**, by applying `filterA_sound'` -- i.e. `filterA_sound` with (E6)
discharged.  `FilterSoundness.Example.cert_hAKR5` is (E1) at `certConfig`, the
only external input left. -/
theorem cert_filterA :
    L5PairsOk (toMasks certConfig) (cmpP (toMasks certConfig)) consecPairs :=
  filterA_sound' certConfig FilterSoundness.Example.cert_hAKR5

/-- **Filter (e) accepts the certificate configuration with the computed
labelling.**  The guard genuinely fires on the tested pair: `p_2` and `p_5` get
different labels. -/
theorem cert_filterE :
    L5PairsOk (toMasks certConfig) (cmpP (toMasks certConfig))
      FilterSoundness.Example.certAV :=
  filterE_sound' certConfig FilterSoundness.Example.certAV
    FilterSoundness.Example.certAvoiding (by decide)
    FilterSoundness.Example.cert_hAVlist FilterSoundness.Example.cert_hAKR5_avoid

theorem cert_filterE_guard_fires :
    cmpP (toMasks certConfig) 2 ≠ cmpP (toMasks certConfig) 5 := by decide

end Example

end ComponentLabelling
end Heptagon
