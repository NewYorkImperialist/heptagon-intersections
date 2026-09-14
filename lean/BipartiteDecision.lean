/-
  BipartiteDecision.lean

  DISCHARGING EXTERNAL INPUT (E8) OF `FilterSoundness.lean`.

  ---------------------------------------------------------------------------
  0. WHAT (E8) SAYS AND WHAT THIS FILE DOES ABOUT IT
  ---------------------------------------------------------------------------

  `FilterSoundness.lean`'s header lists, as external input (E8):

      "That the search program's bipartiteness routine (DSU with parity, or the
       Python DFS 2-colouring) returns `true` exactly when H is bipartite.
       This is a standard algorithmic fact; it is NOT formalised, and `HBipOk`
       below is the mathematical predicate, not a transcription of that
       routine."

  So the gap is: the project owns the MATHEMATICAL predicate
  `FilterSoundness.HBipOk cmp = Lemma7Bridge.Bipartite (FilterSoundness.HAdj cmp)`
  but no VERIFIED DECISION PROCEDURE for it, while the running search uses a
  procedure.

  This file supplies a verified decision procedure.  Concretely:

    * `bipTest adjB V : Bool` -- a total, executable, fuel-bounded 2-colouring
      search on the finite vertex list `V` with `Bool`-valued adjacency `adjB`.
      No `partial`, no well-founded recursion: the recursion is structural on a
      `Nat` fuel parameter, and `iter_isSome` proves that the fuel `V.length`
      suffices (each fuel unit colours at least one new vertex).

    * `bipTest_eq_true_iff` -- the correctness theorem, a genuine IFF:

          bipTest adjB V = true  <->  exists f : Nat -> Bool, adjacent vertices
                                      get different colours

      and `bipTest_iff_bipartite`, the same iff with the right-hand side
      literally `Lemma7Bridge.Bipartite Adj` for any `Adj` whose Boolean
      characteristic function is `adjB`.  BOTH DIRECTIONS ARE PROVED.  Nothing
      here is a one-directional result presented as if it were an iff.

    * `hBipTest cmp : Bool` and `hBipTest_iff_HBipOk`:

          hBipTest cmp = true  <->  FilterSoundness.HBipOk cmp

      i.e. the procedure decides exactly the predicate that `filterB_sound`
      produces and that the search's filter (b) consumes.

    * `instDecidableHBipOk` -- consequently `HBipOk` is a `Decidable` predicate,
      so `decide` now works on it.  Before this file it was an unrestricted
      existential over `Nat -> Bool` and `decide` did not work on it at all.

    * THE DISCHARGE (section 8): `filterB_decided`, `filterB_decided_Q`,
      `hBipOk_of_statuses_decided`.  These have exactly the hypotheses of
      `FilterSoundness.filterB_sound` / `filterB_sound_Q` /
      `hBipOk_of_statuses` -- i.e. (E3) and (E6), the genuinely external
      geometric inputs -- and conclude `hBipTest cmp = true`, a statement about
      an EXECUTABLE ROUTINE rather than about a `Prop`.  The step from "H is
      mathematically bipartite" to "the routine returns true" is (E8), and it is
      now a theorem (`hBipTest_iff_HBipOk`) rather than an assumption.  The
      converse half, which is the half that stops the filter OVER-accepting, is
      `hBipOk_of_hBipTest` / `not_HBipOk_of_hBipTest_false`.

    * NON-VACUITY (section 9): a concrete graph the test accepts and concrete
      graphs it rejects, each proved -- including a triangle, the 5-cycle, and
      the `H` of `FilterSoundness.Example.idCmp`, whose non-bipartiteness is
      re-derived HERE from the verified test rather than by hand.

  ---------------------------------------------------------------------------
  1. THE RESIDUAL GAP -- READ THIS BEFORE CLAIMING (E8) IS CLOSED
  ---------------------------------------------------------------------------

  (E8) had two halves.

    (E8a) "bipartiteness is decidable by a correct algorithm, and here is one".
          This file CLOSES that half, with a kernel-checked iff, in both
          directions.

    (E8b) "the routine that the SHIPPED programs actually execute is such an
          algorithm".  This file does NOT close that half, and cannot: there is
          no extraction, and no Lean code here reads
          `independent/implementation_b/reduction.cpp` or
          `python/elimination/audit_enum.py`.

  Moreover the algorithm verified here is ALGORITHMICALLY DIFFERENT from both
  shipped routines.  `reduction.cpp` uses a disjoint-set union with parity;
  `audit_enum.py`'s `H_bip` uses a DFS 2-colouring.  `bipTest` below is a
  fuel-bounded fixed-point colour propagation: each round either extends the
  colouring across one edge from an already-coloured vertex, or (only when no
  such extension exists anywhere, so that the coloured set is closed under
  adjacency) seeds one fresh component with colour `false`; the resulting total
  colouring is then verified edge by edge.  It is in the same family as the
  Python DFS -- compute a 2-colouring, then check it -- but it is not a
  byte-for-byte transcription of either program, and no such claim is made.

  So, stated plainly: after this file the remaining gap at (E8) is
  "the shipped code implements a parity-DSU / DFS, and what is verified in Lean
  is a fuel-bounded propagation 2-colouring, proved to decide the same
  predicate".  The mathematical fact that used to be assumed is now proved; the
  code-to-Lean transcription gap remains, exactly as it does for every other
  filter in `FilterSoundness.lean` (see its "TRANSCRIPTION, NOT EXTRACTION"
  paragraph).

  ---------------------------------------------------------------------------
  2. HYGIENE
  ---------------------------------------------------------------------------

  No `sorry`, no `admit`, no `native_decide`, no `unsafe`, no `partial`, no
  project-specific `axiom`, no well-founded recursion.  `set_option
  autoImplicit false`.  Imports only `FilterSoundness` (hence
  `DisjointnessGraph`, `Lemma7Bridge`, `CernyL2Interface`), all Mathlib-free, so
  this file stays outside Mathlib's trust base.  No existing file is modified.
-/
import FilterSoundness

set_option autoImplicit false

namespace Heptagon
namespace BipartiteDecision

open Heptagon.FilterSoundness

/-! ## 0. Boolean helpers

Written out rather than imported, to keep the file core-only. -/

/-- `diffB a b` is "the two colours differ". -/
def diffB : Bool → Bool → Bool
  | true, b => !b
  | false, b => b

theorem diffB_eq_true (a b : Bool) : diffB a b = true ↔ a ≠ b := by
  cases a <;> cases b <;> decide

theorem not_eq_iff (a b : Bool) : ((!a) = b) ↔ ¬ (a = b) := by
  cases a <;> cases b <;> decide

theorem eq_not_iff (a b : Bool) : (a = !b) ↔ ¬ (a = b) := by
  cases a <;> cases b <;> decide

theorem eq_not_of_ne {a b : Bool} (h : a ≠ b) : b = !a := by
  cases a <;> cases b <;> first | rfl | exact absurd rfl h

/-- `none = some _` is absurd. -/
theorem opt_ns {α : Type} {a : α} (h : (none : Option α) = some a) : False := by
  simp at h

/-- `some _ = none` is absurd. -/
theorem opt_sn {α : Type} {a : α} (h : some a = (none : Option α)) : False := by
  simp at h

/-! ## 1. A core-only bounded universal quantifier over a list -/

/-- `allB p L` is `∀ v ∈ L, p v`, as a `Bool`. -/
def allB (p : Nat → Bool) : List Nat → Bool
  | [] => true
  | v :: vs => p v && allB p vs

theorem allB_mem {p : Nat → Bool} :
    ∀ {L : List Nat}, allB p L = true → ∀ v, v ∈ L → p v = true := by
  intro L
  induction L with
  | nil => intro _ v hv; cases hv
  | cons w ws ih =>
    intro h v hv
    have h' : (p w && allB p ws) = true := h
    have h1 : p w = true := by
      cases hpw : p w with
      | true => rfl
      | false => rw [hpw] at h'; exact Bool.noConfusion h'
    have h2 : allB p ws = true := by rw [h1] at h'; exact h'
    cases hv with
    | head => exact h1
    | tail _ hv' => exact ih h2 v hv'

theorem allB_of {p : Nat → Bool} :
    ∀ {L : List Nat}, (∀ v, v ∈ L → p v = true) → allB p L = true := by
  intro L
  induction L with
  | nil => intro _; rfl
  | cons w ws ih =>
    intro h
    have h1 : p w = true := h w (List.Mem.head _)
    have h2 : allB p ws = true := ih (fun v hv => h v (List.Mem.tail _ hv))
    show (p w && allB p ws) = true
    rw [h1, h2]
    rfl

/-! ## 2. Walks in a `Bool`-valued graph

`Reach adjB u v` is "there is a walk from `u` to `v`".  This is the only graph
notion the correctness proof needs; the parity of walks is never tracked,
because the algorithm's invariant is stated relative to a reference proper
colouring rather than absolutely. -/

/-- There is a walk from `u` to `v` in the graph whose adjacency is `adjB`. -/
inductive Reach (adjB : Nat → Nat → Bool) (u : Nat) : Nat → Prop
  | refl : Reach adjB u u
  | tail {v w : Nat} : Reach adjB u v → adjB v w = true → Reach adjB u w

theorem reach_one {adjB : Nat → Nat → Bool} {a b : Nat} (h : adjB a b = true) :
    Reach adjB a b :=
  Reach.tail Reach.refl h

theorem reach_trans {adjB : Nat → Nat → Bool} {a b c : Nat}
    (h1 : Reach adjB a b) (h2 : Reach adjB b c) : Reach adjB a c := by
  induction h2 with
  | refl => exact h1
  | @tail v w _ he ih => exact Reach.tail ih he

theorem reach_symm {adjB : Nat → Nat → Bool} (hsym : ∀ i k, adjB i k = adjB k i)
    {a b : Nat} (h : Reach adjB a b) : Reach adjB b a := by
  induction h with
  | refl => exact Reach.refl
  | @tail v w _ he ih => exact reach_trans (reach_one ((hsym w v).trans he)) ih

/-! ## 3. The decision procedure

A partial colouring is a function `c : Nat → Option Bool`; `c v = none` means
"`v` not yet coloured".  One `step` colours exactly one further vertex:

* if some uncoloured `v ∈ V` has a coloured neighbour `u ∈ V` with colour `b`,
  colour `v` with `!b`  (PROPAGATION);
* otherwise -- so that the coloured set is then closed under adjacency -- colour
  the first uncoloured vertex of `V` with `false` (SEED A NEW COMPONENT);
* otherwise everything is coloured and `step` is the identity.

`iter` applies `step` a fixed number of times.  The fuel used is `V.length`,
which suffices because each non-identity `step` strictly decreases the number of
uncoloured vertices of `V` (`ucount_step_lt`), and that number starts at
`V.length`.  The resulting total colouring is then CHECKED on every pair drawn
from `V`, and `bipTest` returns the result of that check.

The auxiliary `*Pick` / `*Step` functions exist so that every `match` is on a
function ARGUMENT; this makes all the unfolding lemmas `rfl` and keeps the
correctness proofs free of `simp` on match-equations. -/

section Algo

variable (adjB : Nat → Nat → Bool) (V : List Nat)

/-- One step of the scan for a coloured neighbour of `v`. -/
def nbrPick (v u : Nat) (rest : Option Bool) : Option Bool → Option Bool
  | some b => if adjB u v = true then some b else rest
  | none => rest

/-- Look through `L` for a coloured neighbour of `v`, and return its colour. -/
def findColNbr (c : Nat → Option Bool) (v : Nat) : List Nat → Option Bool
  | [] => none
  | u :: us => nbrPick adjB v u (findColNbr c v us) (c u)

/-- Dispatch on the result of the neighbour scan. -/
def propPick (v : Nat) (rest : Option (Nat × Bool)) : Option Bool → Option (Nat × Bool)
  | some b => some (v, !b)
  | none => rest

/-- One step of the scan for a propagation candidate. -/
def propStep (c : Nat → Option Bool) (v : Nat) (rest : Option (Nat × Bool)) :
    Option Bool → Option (Nat × Bool)
  | some _ => rest
  | none => propPick v rest (findColNbr adjB c v V)

/-- Look through `L` for an uncoloured vertex with a coloured neighbour in `V`,
and return it together with the colour it must receive. -/
def findProp (c : Nat → Option Bool) : List Nat → Option (Nat × Bool)
  | [] => none
  | v :: vs => propStep adjB V c v (findProp c vs) (c v)

/-- One step of the scan for any uncoloured vertex. -/
def uncolStep (v : Nat) (rest : Option Nat) : Option Bool → Option Nat
  | some _ => rest
  | none => some v

/-- Look through `L` for an uncoloured vertex. -/
def findUncol (c : Nat → Option Bool) : List Nat → Option Nat
  | [] => none
  | v :: vs => uncolStep v (findUncol c vs) (c v)

/-- A fresh seed candidate. -/
def uncolToCand : Option Nat → Option (Nat × Bool)
  | some v => some (v, false)
  | none => none

/-- Prefer propagation; fall back to seeding. -/
def orElseCand (fallback : Option (Nat × Bool)) : Option (Nat × Bool) → Option (Nat × Bool)
  | some p => some p
  | none => fallback

/-- The vertex to colour next, and the colour it gets. -/
def cand (c : Nat → Option Bool) : Option (Nat × Bool) :=
  orElseCand (uncolToCand (findUncol c V)) (findProp adjB V c V)

/-- Extend a partial colouring at one vertex. -/
def assign (c : Nat → Option Bool) (v : Nat) (b : Bool) : Nat → Option Bool :=
  fun w => if w = v then some b else c w

/-- Apply a candidate, if there is one. -/
def stepWith (c : Nat → Option Bool) : Option (Nat × Bool) → (Nat → Option Bool)
  | some p => assign c p.1 p.2
  | none => c

/-- One colouring step. -/
def step (c : Nat → Option Bool) : Nat → Option Bool :=
  stepWith c (cand adjB V c)

/-- `k` colouring steps.  Structural recursion on the `Nat` fuel `k`; no
`partial`, no well-founded recursion. -/
def iter : Nat → (Nat → Option Bool) → (Nat → Option Bool)
  | 0, c => c
  | k + 1, c => iter k (step adjB V c)

/-- The total colouring the procedure computes.  The fuel is `V.length`; that
this suffices is `iter_isSome` below, so the `getD false` is never actually
reached at a vertex of `V`. -/
def colouring : Nat → Bool :=
  fun v => ((iter adjB V V.length (fun _ => none)) v).getD false

/-- The verification pass: every edge inside `V` is bichromatic. -/
def checkAll (f : Nat → Bool) : Bool :=
  allB (fun i => allB (fun k => !adjB i k || diffB (f i) (f k)) V) V

/-- **THE DECISION PROCEDURE.**  Compute a 2-colouring by fuel-bounded
propagation, then verify it. -/
def bipTest : Bool := checkAll adjB V (colouring adjB V)

end Algo

/-! ## 4. What the search helpers return -/

section Spec

variable {adjB : Nat → Nat → Bool} {V : List Nat} {c : Nat → Option Bool}

theorem nbrPick_some (v u : Nat) (rest : Option Bool) (b : Bool) :
    nbrPick adjB v u rest (some b) = if adjB u v = true then some b else rest := rfl

theorem nbrPick_none (v u : Nat) (rest : Option Bool) :
    nbrPick adjB v u rest none = rest := rfl

theorem findColNbr_cons (v u : Nat) (us : List Nat) :
    findColNbr adjB c v (u :: us) = nbrPick adjB v u (findColNbr adjB c v us) (c u) := rfl

theorem propPick_some (v : Nat) (rest : Option (Nat × Bool)) (b : Bool) :
    propPick v rest (some b) = some (v, !b) := rfl

theorem propPick_none (v : Nat) (rest : Option (Nat × Bool)) :
    propPick v rest none = rest := rfl

theorem propStep_some (v : Nat) (rest : Option (Nat × Bool)) (b : Bool) :
    propStep adjB V c v rest (some b) = rest := rfl

theorem propStep_none (v : Nat) (rest : Option (Nat × Bool)) :
    propStep adjB V c v rest none = propPick v rest (findColNbr adjB c v V) := rfl

theorem findProp_cons (v : Nat) (vs : List Nat) :
    findProp adjB V c (v :: vs) = propStep adjB V c v (findProp adjB V c vs) (c v) := rfl

theorem uncolStep_some (v : Nat) (rest : Option Nat) (b : Bool) :
    uncolStep v rest (some b) = rest := rfl

theorem uncolStep_none (v : Nat) (rest : Option Nat) :
    uncolStep v rest none = some v := rfl

theorem findUncol_cons (v : Nat) (vs : List Nat) :
    findUncol c (v :: vs) = uncolStep v (findUncol c vs) (c v) := rfl

theorem findColNbr_some {v : Nat} :
    ∀ {L : List Nat} {b : Bool}, findColNbr adjB c v L = some b →
      ∃ u, u ∈ L ∧ c u = some b ∧ adjB u v = true := by
  intro L
  induction L with
  | nil =>
    intro b h
    exact (opt_ns (h : (none : Option Bool) = some b)).elim
  | cons u us ih =>
    intro b h
    rw [findColNbr_cons] at h
    cases hcu : c u with
    | none =>
      rw [hcu, nbrPick_none] at h
      obtain ⟨w, hw, h1, h2⟩ := ih h
      exact ⟨w, List.Mem.tail _ hw, h1, h2⟩
    | some bu =>
      rw [hcu, nbrPick_some] at h
      by_cases hadj : adjB u v = true
      · rw [if_pos hadj] at h
        have hb : bu = b := Option.some.inj h
        exact ⟨u, List.Mem.head _, by rw [hcu, hb], hadj⟩
      · rw [if_neg hadj] at h
        obtain ⟨w, hw, h1, h2⟩ := ih h
        exact ⟨w, List.Mem.tail _ hw, h1, h2⟩

theorem findColNbr_none {v : Nat} :
    ∀ {L : List Nat}, findColNbr adjB c v L = none →
      ∀ u, u ∈ L → adjB u v = true → c u = none := by
  intro L
  induction L with
  | nil => intro _ u hu; cases hu
  | cons w ws ih =>
    intro h u hu hadj
    rw [findColNbr_cons] at h
    cases hcw : c w with
    | none =>
      rw [hcw, nbrPick_none] at h
      cases hu with
      | head => exact hcw
      | tail _ hu' => exact ih h u hu' hadj
    | some bw =>
      rw [hcw, nbrPick_some] at h
      by_cases hwv : adjB w v = true
      · rw [if_pos hwv] at h; exact (opt_sn h).elim
      · rw [if_neg hwv] at h
        cases hu with
        | head => exact absurd hadj hwv
        | tail _ hu' => exact ih h u hu' hadj

theorem findProp_some :
    ∀ {L : List Nat} {v : Nat} {b : Bool}, findProp adjB V c L = some (v, b) →
      v ∈ L ∧ c v = none ∧
        ∃ u bu, u ∈ V ∧ c u = some bu ∧ adjB u v = true ∧ b = !bu := by
  intro L
  induction L with
  | nil =>
    intro v b h
    exact (opt_ns (h : (none : Option (Nat × Bool)) = some (v, b))).elim
  | cons w ws ih =>
    intro v b h
    rw [findProp_cons] at h
    cases hcw : c w with
    | some bw =>
      rw [hcw, propStep_some] at h
      obtain ⟨h1, h2, h3⟩ := ih h
      exact ⟨List.Mem.tail _ h1, h2, h3⟩
    | none =>
      rw [hcw, propStep_none] at h
      cases hf : findColNbr adjB c w V with
      | some bu =>
        rw [hf, propPick_some] at h
        have hvw : w = v := congrArg Prod.fst (Option.some.inj h)
        have hbb : b = !bu := (congrArg Prod.snd (Option.some.inj h)).symm
        obtain ⟨u, hu, hcu, hadj⟩ := findColNbr_some hf
        rw [hvw] at hcw hadj
        exact ⟨hvw ▸ List.Mem.head ws, hcw, u, bu, hu, hcu, hadj, hbb⟩
      | none =>
        rw [hf, propPick_none] at h
        obtain ⟨h1, h2, h3⟩ := ih h
        exact ⟨List.Mem.tail _ h1, h2, h3⟩

theorem findProp_none :
    ∀ {L : List Nat}, findProp adjB V c L = none →
      ∀ v, v ∈ L → c v = none → ∀ u, u ∈ V → adjB u v = true → c u = none := by
  intro L
  induction L with
  | nil => intro _ v hv; cases hv
  | cons w ws ih =>
    intro h v hv hcv u hu hadj
    rw [findProp_cons] at h
    cases hcw : c w with
    | some bw =>
      rw [hcw, propStep_some] at h
      cases hv with
      | head => rw [hcw] at hcv; exact (opt_sn hcv).elim
      | tail _ hv' => exact ih h v hv' hcv u hu hadj
    | none =>
      rw [hcw, propStep_none] at h
      cases hf : findColNbr adjB c w V with
      | some bu => rw [hf, propPick_some] at h; exact (opt_sn h).elim
      | none =>
        rw [hf, propPick_none] at h
        cases hv with
        | head => exact findColNbr_none hf u hu hadj
        | tail _ hv' => exact ih h v hv' hcv u hu hadj

theorem findUncol_some :
    ∀ {L : List Nat} {v : Nat}, findUncol c L = some v → v ∈ L ∧ c v = none := by
  intro L
  induction L with
  | nil =>
    intro v h
    exact (opt_ns (h : (none : Option Nat) = some v)).elim
  | cons w ws ih =>
    intro v h
    rw [findUncol_cons] at h
    cases hcw : c w with
    | some bw =>
      rw [hcw, uncolStep_some] at h
      obtain ⟨h1, h2⟩ := ih h
      exact ⟨List.Mem.tail _ h1, h2⟩
    | none =>
      rw [hcw, uncolStep_none] at h
      have hwv : w = v := Option.some.inj h
      rw [hwv] at hcw
      exact ⟨hwv ▸ List.Mem.head ws, hcw⟩

theorem findUncol_none :
    ∀ {L : List Nat}, findUncol c L = none → ∀ v, v ∈ L → (c v).isSome = true := by
  intro L
  induction L with
  | nil => intro _ v hv; cases hv
  | cons w ws ih =>
    intro h v hv
    rw [findUncol_cons] at h
    cases hcw : c w with
    | none => rw [hcw, uncolStep_none] at h; exact (opt_sn h).elim
    | some bw =>
      rw [hcw, uncolStep_some] at h
      cases hv with
      | head => rw [hcw]; rfl
      | tail _ hv' => exact ih h v hv'

theorem orElseCand_some (fb : Option (Nat × Bool)) (p : Nat × Bool) :
    orElseCand fb (some p) = some p := rfl

theorem orElseCand_none (fb : Option (Nat × Bool)) :
    orElseCand fb none = fb := rfl

/-- The candidate, packaged: the vertex it returns is an uncoloured vertex of
`V`, and either it is coloured by propagation across an edge from an
already-coloured vertex, or it is a fresh seed AND the coloured set is then
closed under adjacency (which is what makes seeding safe). -/
theorem cand_some {v : Nat} {b : Bool} (h : cand adjB V c = some (v, b)) :
    v ∈ V ∧ c v = none ∧
      ((∃ u bu, u ∈ V ∧ c u = some bu ∧ adjB u v = true ∧ b = !bu) ∨
       (∀ x, x ∈ V → c x = none → ∀ u, u ∈ V → adjB u x = true → c u = none)) := by
  have h' : orElseCand (uncolToCand (findUncol c V)) (findProp adjB V c V) = some (v, b) := h
  cases hp : findProp adjB V c V with
  | some p =>
    rw [hp, orElseCand_some] at h'
    have hpe : p = (v, b) := Option.some.inj h'
    rw [hpe] at hp
    obtain ⟨h1, h2, h3⟩ := findProp_some hp
    exact ⟨h1, h2, Or.inl h3⟩
  | none =>
    rw [hp, orElseCand_none] at h'
    cases hu : findUncol c V with
    | none =>
      rw [hu] at h'
      exact (opt_ns (h' : (none : Option (Nat × Bool)) = some (v, b))).elim
    | some w =>
      rw [hu] at h'
      have h'' : some (w, false) = some (v, b) := h'
      have hwv : w = v := congrArg Prod.fst (Option.some.inj h'')
      rw [hwv] at hu
      obtain ⟨h1, h2⟩ := findUncol_some hu
      exact ⟨h1, h2, Or.inr (findProp_none hp)⟩

theorem cand_none (h : cand adjB V c = none) : ∀ v, v ∈ V → (c v).isSome = true := by
  have h' : orElseCand (uncolToCand (findUncol c V)) (findProp adjB V c V) = none := h
  cases hp : findProp adjB V c V with
  | some p =>
    rw [hp, orElseCand_some] at h'
    exact (opt_sn h').elim
  | none =>
    rw [hp, orElseCand_none] at h'
    cases hu : findUncol c V with
    | some w =>
      rw [hu] at h'
      exact (opt_sn (h' : some ((w, false) : Nat × Bool) = none)).elim
    | none => exact findUncol_none hu

end Spec

/-! ## 5. The fuel suffices

`ucount c L` is the number of uncoloured vertices in `L`.  A non-identity `step`
strictly decreases it, and it starts at `V.length`; hence `V.length` steps
colour everything. -/

/-- `1` on an uncoloured vertex, `0` on a coloured one. -/
def ucount1 : Option Bool → Nat
  | none => 1
  | some _ => 0

/-- The number of uncoloured vertices of `L`. -/
def ucount (c : Nat → Option Bool) : List Nat → Nat
  | [] => 0
  | v :: vs => ucount c vs + ucount1 (c v)

theorem ucount1_le_one (x : Option Bool) : ucount1 x ≤ 1 := by
  cases x with
  | none => exact Nat.le_refl 1
  | some b => exact Nat.zero_le 1

theorem ucount_cons (c : Nat → Option Bool) (v : Nat) (vs : List Nat) :
    ucount c (v :: vs) = ucount c vs + ucount1 (c v) := rfl

theorem ucount_none_fn (L : List Nat) : ucount (fun _ => none) L = L.length := by
  induction L with
  | nil => rfl
  | cons w ws ih =>
    show ucount (fun _ => none) ws + 1 = ws.length + 1
    rw [ih]

theorem isSome_of_ucount_zero {c : Nat → Option Bool} :
    ∀ {L : List Nat}, ucount c L = 0 → ∀ v, v ∈ L → (c v).isSome = true := by
  intro L
  induction L with
  | nil => intro _ v hv; cases hv
  | cons w ws ih =>
    intro h v hv
    rw [ucount_cons] at h
    cases hcw : c w with
    | none =>
      rw [hcw] at h
      exact absurd h (Nat.succ_ne_zero _)
    | some bw =>
      rw [hcw] at h
      have h2 : ucount c ws = 0 := h
      cases hv with
      | head => rw [hcw]; rfl
      | tail _ hv' => exact ih h2 v hv'

theorem ucount_zero_of_isSome {c : Nat → Option Bool} :
    ∀ {L : List Nat}, (∀ v, v ∈ L → (c v).isSome = true) → ucount c L = 0 := by
  intro L
  induction L with
  | nil => intro _; rfl
  | cons w ws ih =>
    intro h
    have hw := h w (List.Mem.head _)
    have h2 : ucount c ws = 0 := ih (fun v hv => h v (List.Mem.tail _ hv))
    rw [ucount_cons]
    cases hcw : c w with
    | none => rw [hcw] at hw; exact Bool.noConfusion hw
    | some bw => rw [h2]; rfl

theorem ucount_mono {c c' : Nat → Option Bool}
    (h : ∀ w, (c w).isSome = true → (c' w).isSome = true) :
    ∀ L : List Nat, ucount c' L ≤ ucount c L := by
  intro L
  induction L with
  | nil => exact Nat.le_refl _
  | cons w ws ih =>
    rw [ucount_cons, ucount_cons]
    refine Nat.add_le_add ih ?_
    cases hcw : c w with
    | none => exact ucount1_le_one _
    | some bw =>
      have hs : (c' w).isSome = true := h w (by rw [hcw]; rfl)
      cases hcw' : c' w with
      | none => rw [hcw'] at hs; exact Bool.noConfusion hs
      | some b' => exact Nat.le_refl _

theorem assign_self {c : Nat → Option Bool} {v : Nat} {b : Bool} : assign c v b v = some b := by
  show (if v = v then some b else c v) = some b
  rw [if_pos rfl]

theorem assign_other {c : Nat → Option Bool} {v w : Nat} {b : Bool} (h : w ≠ v) :
    assign c v b w = c w := by
  show (if w = v then some b else c w) = c w
  rw [if_neg h]

theorem assign_isSome {c : Nat → Option Bool} {v : Nat} {b : Bool} (w : Nat)
    (h : (c w).isSome = true) : (assign c v b w).isSome = true := by
  by_cases hw : w = v
  · rw [hw, assign_self]; rfl
  · rw [assign_other hw]; exact h

theorem ucount_assign_lt {c : Nat → Option Bool} {v : Nat} {b : Bool} (hcv : c v = none) :
    ∀ {L : List Nat}, v ∈ L → ucount (assign c v b) L < ucount c L := by
  intro L
  induction L with
  | nil => intro hv; cases hv
  | cons w ws ih =>
    intro hv
    rw [ucount_cons, ucount_cons]
    by_cases hwv : w = v
    · rw [hwv, assign_self, hcv]
      show ucount (assign c v b) ws + 0 < ucount c ws + 1
      exact Nat.lt_succ_of_le
        (ucount_mono (c := c) (c' := assign c v b) (fun x hx => assign_isSome x hx) ws)
    · rw [assign_other hwv]
      refine Nat.add_lt_add_right (ih ?_) _
      cases hv with
      | head => exact absurd rfl hwv
      | tail _ hv' => exact hv'

theorem step_isSome {adjB : Nat → Nat → Bool} {V : List Nat} {c : Nat → Option Bool}
    (w : Nat) (h : (c w).isSome = true) : ((step adjB V c) w).isSome = true := by
  show ((stepWith c (cand adjB V c)) w).isSome = true
  cases hcand : cand adjB V c with
  | none => exact h
  | some p => exact assign_isSome w h

theorem ucount_step_lt {adjB : Nat → Nat → Bool} {V : List Nat} {c : Nat → Option Bool}
    {v : Nat} (hv : v ∈ V) (hcv : c v = none) :
    ucount (step adjB V c) V < ucount c V := by
  show ucount (stepWith c (cand adjB V c)) V < ucount c V
  cases hcand : cand adjB V c with
  | none =>
    have hs := cand_none hcand v hv
    rw [hcv] at hs
    exact Bool.noConfusion hs
  | some p =>
    obtain ⟨x, bx⟩ := p
    obtain ⟨hp1, hp2, _⟩ := cand_some hcand
    exact ucount_assign_lt hp2 hp1

theorem iter_isSome {adjB : Nat → Nat → Bool} {V : List Nat} :
    ∀ (k : Nat) (c : Nat → Option Bool), ucount c V ≤ k →
      ∀ v, v ∈ V → ((iter adjB V k c) v).isSome = true := by
  intro k
  induction k with
  | zero =>
    intro c h v hv
    exact isSome_of_ucount_zero (Nat.le_antisymm h (Nat.zero_le _)) v hv
  | succ k ih =>
    intro c h v hv
    refine ih (step adjB V c) ?_ v hv
    cases h' : findUncol c V with
    | none =>
      have h0 : ucount c V = 0 := ucount_zero_of_isSome (findUncol_none h')
      have hm := ucount_mono (c := c) (c' := step adjB V c)
        (fun w hw => step_isSome w hw) V
      rw [h0] at hm
      exact Nat.le_trans hm (Nat.zero_le _)
    | some x =>
      obtain ⟨hx, hcx⟩ := findUncol_some h'
      have hlt := ucount_step_lt (adjB := adjB) (V := V) (c := c) hx hcx
      exact Nat.le_of_lt_succ (Nat.lt_of_lt_of_le hlt h)

/-! ## 6. The invariant, and the completeness direction

`Consistent adjB g c` says: within one connected component, the partial
colouring `c` agrees with the reference proper colouring `g` up to a global
flip.  It is the exact invariant needed, and it is preserved by `step`. -/

/-- The colouring built so far agrees with `g` up to a per-component flip. -/
def Consistent (adjB : Nat → Nat → Bool) (g : Nat → Bool) (c : Nat → Option Bool) : Prop :=
  ∀ v w bv bw, c v = some bv → c w = some bw → Reach adjB v w → ((bv = bw) ↔ (g v = g w))

theorem consistent_empty (adjB : Nat → Nat → Bool) (g : Nat → Bool) :
    Consistent adjB g (fun _ => none) := by
  intro v w bv bw h _ _
  exact (opt_ns (h : (none : Option Bool) = some bv)).elim

/-- If no uncoloured vertex of `V` has a coloured neighbour, then nothing
reachable from an uncoloured vertex is coloured.  This is what makes seeding a
fresh component with `false` harmless. -/
theorem reach_none {adjB : Nat → Nat → Bool} {V : List Nat} {c : Nat → Option Bool}
    (hsym : ∀ i k, adjB i k = adjB k i)
    (hV : ∀ i k, adjB i k = true → i ∈ V ∧ k ∈ V)
    (hcl : ∀ x, x ∈ V → c x = none → ∀ u, u ∈ V → adjB u x = true → c u = none)
    {x y : Nat} (h : Reach adjB x y) (hx : c x = none) : c y = none := by
  induction h with
  | refl => exact hx
  | @tail a b _ he ih =>
    have hab := hV a b he
    exact hcl a hab.1 ih b hab.2 ((hsym b a).trans he)

theorem consistent_step {adjB : Nat → Nat → Bool} {V : List Nat} {g : Nat → Bool}
    (hsym : ∀ i k, adjB i k = adjB k i)
    (hV : ∀ i k, adjB i k = true → i ∈ V ∧ k ∈ V)
    (hg : ∀ i k, adjB i k = true → g i ≠ g k)
    {c : Nat → Option Bool} (hc : Consistent adjB g c) :
    Consistent adjB g (step adjB V c) := by
  show Consistent adjB g (stepWith c (cand adjB V c))
  cases hcand : cand adjB V c with
  | none => exact hc
  | some p =>
    obtain ⟨v, b⟩ := p
    obtain ⟨hpV, hpn, hcase⟩ := cand_some hcand
    show Consistent adjB g (assign c v b)
    intro x y bx by' hx hy hreach
    by_cases hxv : x = v
    · by_cases hyv : y = v
      · -- both endpoints are the newly coloured vertex
        rw [hxv, assign_self] at hx
        rw [hyv, assign_self] at hy
        have e1 : b = bx := Option.some.inj hx
        have e2 : b = by' := Option.some.inj hy
        rw [hxv, hyv, ← e1, ← e2]
        exact ⟨fun _ => rfl, fun _ => rfl⟩
      · -- x is new, y was already coloured
        rw [hxv, assign_self] at hx
        have hbx : b = bx := Option.some.inj hx
        rw [assign_other hyv] at hy
        have hrvy : Reach adjB v y := by rw [← hxv]; exact hreach
        cases hcase with
        | inl hprop =>
          obtain ⟨u, bu, huV, hcu, hadj, hbbu⟩ := hprop
          have hiff := hc u y bu by' hcu hy (reach_trans (reach_one hadj) hrvy)
          have hgv : g v = !g u := eq_not_of_ne (hg u v hadj)
          rw [hxv, ← hbx, hbbu, hgv, not_eq_iff, not_eq_iff]
          exact not_congr hiff
        | inr hcl =>
          have hn : c y = none := reach_none hsym hV hcl hrvy hpn
          rw [hn] at hy
          exact (opt_ns hy).elim
    · by_cases hyv : y = v
      · -- y is new, x was already coloured
        rw [assign_other hxv] at hx
        rw [hyv, assign_self] at hy
        have hby : b = by' := Option.some.inj hy
        have hrxv : Reach adjB x v := by rw [← hyv]; exact hreach
        cases hcase with
        | inl hprop =>
          obtain ⟨u, bu, huV, hcu, hadj, hbbu⟩ := hprop
          have hiff := hc x u bx bu hx hcu
            (reach_trans hrxv (reach_symm hsym (reach_one hadj)))
          have hgv : g v = !g u := eq_not_of_ne (hg u v hadj)
          rw [hyv, ← hby, hbbu, hgv, eq_not_iff, eq_not_iff]
          exact not_congr hiff
        | inr hcl =>
          have hn : c x = none :=
            reach_none hsym hV hcl (reach_symm hsym hrxv) hpn
          rw [hn] at hx
          exact (opt_ns hx).elim
      · -- both endpoints were already coloured
        rw [assign_other hxv] at hx
        rw [assign_other hyv] at hy
        exact hc x y bx by' hx hy hreach

theorem consistent_iter {adjB : Nat → Nat → Bool} {V : List Nat} {g : Nat → Bool}
    (hsym : ∀ i k, adjB i k = adjB k i)
    (hV : ∀ i k, adjB i k = true → i ∈ V ∧ k ∈ V)
    (hg : ∀ i k, adjB i k = true → g i ≠ g k) :
    ∀ (k : Nat) (c : Nat → Option Bool), Consistent adjB g c →
      Consistent adjB g (iter adjB V k c) := by
  intro k
  induction k with
  | zero => intro c h; exact h
  | succ k ih => intro c h; exact ih _ (consistent_step hsym hV hg h)

/-! ## 7. The correctness theorem, both directions -/

/-- **SOUNDNESS.**  If the test succeeds, the computed colouring really is a
proper 2-colouring.  No hypothesis beyond "edges live inside `V`". -/
theorem proper_of_bipTest {adjB : Nat → Nat → Bool} {V : List Nat}
    (hV : ∀ i k, adjB i k = true → i ∈ V ∧ k ∈ V) (h : bipTest adjB V = true) :
    ∀ i k, adjB i k = true → colouring adjB V i ≠ colouring adjB V k := by
  intro i k hik
  obtain ⟨hi, hk⟩ := hV i k hik
  have h0 : allB (fun i => allB
      (fun k => !adjB i k || diffB (colouring adjB V i) (colouring adjB V k)) V) V = true := h
  have h1 := allB_mem h0 i hi
  have h2 := allB_mem h1 k hk
  rw [hik] at h2
  exact (diffB_eq_true _ _).mp h2

/-- **COMPLETENESS.**  If the graph admits ANY proper 2-colouring, then the
colouring the procedure computes is proper, so the test succeeds. -/
theorem bipTest_of_proper {adjB : Nat → Nat → Bool} {V : List Nat}
    (hsym : ∀ i k, adjB i k = adjB k i)
    (hV : ∀ i k, adjB i k = true → i ∈ V ∧ k ∈ V)
    {g : Nat → Bool} (hg : ∀ i k, adjB i k = true → g i ≠ g k) :
    bipTest adjB V = true := by
  have hcons : Consistent adjB g (iter adjB V V.length (fun _ => none)) :=
    consistent_iter hsym hV hg V.length _ (consistent_empty adjB g)
  have htot : ∀ v, v ∈ V → ((iter adjB V V.length (fun _ => none)) v).isSome = true :=
    iter_isSome V.length (fun _ => none) (Nat.le_of_eq (ucount_none_fn V))
  have hproper : ∀ i k, adjB i k = true → colouring adjB V i ≠ colouring adjB V k := by
    intro i k hik
    obtain ⟨hi, hk⟩ := hV i k hik
    have hsi := htot i hi
    have hsk := htot k hk
    cases hci : (iter adjB V V.length (fun _ => none)) i with
    | none => rw [hci] at hsi; exact Bool.noConfusion hsi
    | some bi =>
      cases hck : (iter adjB V V.length (fun _ => none)) k with
      | none => rw [hck] at hsk; exact Bool.noConfusion hsk
      | some bk =>
        have hiff := hcons i k bi bk hci hck (reach_one hik)
        show ((iter adjB V V.length (fun _ => none)) i).getD false ≠
             ((iter adjB V V.length (fun _ => none)) k).getD false
        rw [hci, hck]
        intro hbb
        exact hg i k hik (hiff.mp hbb)
  show checkAll adjB V (colouring adjB V) = true
  refine allB_of (fun i _ => ?_)
  show allB (fun k => !adjB i k || diffB (colouring adjB V i) (colouring adjB V k)) V = true
  refine allB_of (fun k _ => ?_)
  show (!adjB i k || diffB (colouring adjB V i) (colouring adjB V k)) = true
  cases hik : adjB i k with
  | false => rfl
  | true =>
    show (!true || diffB (colouring adjB V i) (colouring adjB V k)) = true
    exact (diffB_eq_true _ _).mpr (hproper i k hik)

/-- **THE DECISION PROCEDURE IS CORRECT -- a genuine iff, both directions
proved.** -/
theorem bipTest_eq_true_iff {adjB : Nat → Nat → Bool} {V : List Nat}
    (hsym : ∀ i k, adjB i k = adjB k i)
    (hV : ∀ i k, adjB i k = true → i ∈ V ∧ k ∈ V) :
    bipTest adjB V = true ↔ ∃ f : Nat → Bool, ∀ i k, adjB i k = true → f i ≠ f k :=
  ⟨fun h => ⟨colouring adjB V, proper_of_bipTest hV h⟩,
   fun h => match h with | ⟨_, hf⟩ => bipTest_of_proper hsym hV hf⟩

/-- **THE SAME IFF, AGAINST `Lemma7Bridge.Bipartite`.**  For any `Adj` whose
characteristic function is `adjB` and whose edges lie inside `V`, the procedure
decides `Lemma7Bridge.Bipartite Adj` -- the very notion `FilterSoundness.HBipOk`
is defined by. -/
theorem bipTest_iff_bipartite {adjB : Nat → Nat → Bool} {V : List Nat}
    {Adj : Nat → Nat → Prop}
    (hAdj : ∀ i k, adjB i k = true ↔ Adj i k)
    (hsym : ∀ i k, adjB i k = adjB k i)
    (hV : ∀ i k, adjB i k = true → i ∈ V ∧ k ∈ V) :
    bipTest adjB V = true ↔ Lemma7Bridge.Bipartite Adj := by
  rw [bipTest_eq_true_iff hsym hV]
  constructor
  · intro h
    obtain ⟨f, hf⟩ := h
    exact ⟨f, fun e e' hee => hf e e' ((hAdj e e').mpr hee)⟩
  · intro h
    obtain ⟨f, hf⟩ := h
    exact ⟨f, fun i k hik => hf i k ((hAdj i k).mp hik)⟩

/-! ## 8. Instantiation at the auxiliary graph `H`, and THE DISCHARGE OF (E8)

`FilterSoundness.HAdj cmp` is the auxiliary graph the search builds; every edge
of it has both endpoints `< 7` (the `HVertex` clauses), so the vertex list is
`List.range 7`.  `hAdjB` is its Boolean characteristic function, obtained from
the decidability instance `FilterSoundness.instDecidableHAdj` that
`FilterSoundness.lean` already provides. -/

/-- The Boolean adjacency of the search's `H`. -/
def hAdjB (cmp : Nat → Nat) (i k : Nat) : Bool := decide (HAdj cmp i k)

theorem hAdjB_iff (cmp : Nat → Nat) (i k : Nat) : hAdjB cmp i k = true ↔ HAdj cmp i k :=
  ⟨of_decide_eq_true, decide_eq_true⟩

theorem hAdjB_symm (cmp : Nat → Nat) (i k : Nat) : hAdjB cmp i k = hAdjB cmp k i := by
  cases h1 : hAdjB cmp i k with
  | true => exact (decide_eq_true (hAdj_symm ((hAdjB_iff cmp i k).mp h1))).symm
  | false =>
    cases h2 : hAdjB cmp k i with
    | false => rfl
    | true =>
      have hcon : hAdjB cmp i k = true :=
        decide_eq_true (hAdj_symm ((hAdjB_iff cmp k i).mp h2))
      rw [h1] at hcon
      exact Bool.noConfusion hcon

theorem hAdjB_mem (cmp : Nat → Nat) (i k : Nat) (h : hAdjB cmp i k = true) :
    i ∈ List.range 7 ∧ k ∈ List.range 7 := by
  have h' := (hAdjB_iff cmp i k).mp h
  exact ⟨List.mem_range.mpr h'.1.1, List.mem_range.mpr h'.2.1.1⟩

/-- **THE EXECUTABLE BIPARTITENESS ROUTINE FOR `H`.**  This is a `Bool`, and it
evaluates: `decide` works on it, and section 9 does exactly that. -/
def hBipTest (cmp : Nat → Nat) : Bool := bipTest (hAdjB cmp) (List.range 7)

/-- **(E8), PROVED.**  The routine returns `true` exactly when `H` is bipartite,
i.e. exactly when `FilterSoundness.HBipOk cmp` -- the predicate that
`filterB_sound` produces and that filter (b) of the search consumes. -/
theorem hBipTest_iff_HBipOk (cmp : Nat → Nat) : hBipTest cmp = true ↔ HBipOk cmp :=
  bipTest_iff_bipartite (hAdjB_iff cmp) (hAdjB_symm cmp) (hAdjB_mem cmp)

/-- Consequently `HBipOk` is decidable.  Before this file it was an
unrestricted existential over `Nat → Bool`, on which `decide` could not act. -/
instance instDecidableHBipOk (cmp : Nat → Nat) : Decidable (HBipOk cmp) :=
  decidable_of_iff _ (hBipTest_iff_HBipOk cmp)

/-- **THE DISCHARGE, label form.**  Same hypotheses as
`FilterSoundness.hBipOk_of_statuses` (AKR Lemma 7 for the label-level `H`);
conclusion about the EXECUTABLE ROUTINE. -/
theorem hBipOk_of_statuses_decided (cmp : Nat → Nat) (S : Nat → Lemma7Bridge.Status → Prop)
    (hne : ∀ i, HVertex cmp i → ∃ s, S i s)
    (hdisj : ∀ i k s, HAdj cmp i k → S i s → S k s → False) :
    hBipTest cmp = true :=
  (hBipTest_iff_HBipOk cmp).mpr (hBipOk_of_statuses cmp S hne hdisj)

/-- **THE DISCHARGE, `P`-side.**  Exactly the hypotheses of
`FilterSoundness.filterB_sound` -- (E6) in its two-directional form and (E3),
AKR Lemma 7 -- and the conclusion is that the search's bipartiteness ROUTINE
returns `true`.  In `FilterSoundness.lean` the passage from `HBipOk cmp` to that
conclusion was external input (E8); here it is `hBipTest_iff_HBipOk`. -/
theorem filterB_decided (K : DisjointnessGraph.Config) (cmp : Nat → Nat)
    (S : Nat → Lemma7Bridge.Status → Prop)
    (hcmp : ∀ a b, a < 7 → b < 7 →
      (cmp a = cmp b ↔ ConnP (DisjointnessGraph.toMasks K) a b))
    (hne : ∀ i, HVertexR (ConnP (DisjointnessGraph.toMasks K)) i → ∃ s, S i s)
    (hdisj : ∀ i k s, HAdjR (ConnP (DisjointnessGraph.toMasks K)) i k → S i s → S k s → False) :
    hBipTest cmp = true :=
  (hBipTest_iff_HBipOk cmp).mpr (filterB_sound K cmp S hcmp hne hdisj)

/-- **THE DISCHARGE, `Q`-side.** -/
theorem filterB_decided_Q (K : DisjointnessGraph.Config) (cmp : Nat → Nat)
    (S : Nat → Lemma7Bridge.Status → Prop)
    (hcmp : ∀ a b, a < 7 → b < 7 →
      (cmp a = cmp b ↔ ConnQ (DisjointnessGraph.toMasks K) a b))
    (hne : ∀ i, HVertexR (ConnQ (DisjointnessGraph.toMasks K)) i → ∃ s, S i s)
    (hdisj : ∀ i k s, HAdjR (ConnQ (DisjointnessGraph.toMasks K)) i k → S i s → S k s → False) :
    hBipTest cmp = true :=
  (hBipTest_iff_HBipOk cmp).mpr (filterB_sound_Q K cmp S hcmp hne hdisj)

/-- **THE CONVERSE HALF, which is what stops filter (b) over-accepting.**  If
the routine returns `true` then `H` really is bipartite.  (E8) is an "exactly
when", and this is the direction a mere soundness lemma would miss. -/
theorem hBipOk_of_hBipTest {cmp : Nat → Nat} (h : hBipTest cmp = true) : HBipOk cmp :=
  (hBipTest_iff_HBipOk cmp).mp h

/-- ... and the contrapositive, which is what the search actually uses to
DISCARD a candidate: if the routine says `false`, the graph genuinely is not
bipartite, so discarding it is justified. -/
theorem not_HBipOk_of_hBipTest_false {cmp : Nat → Nat} (h : hBipTest cmp = false) :
    ¬ HBipOk cmp := by
  intro hb
  rw [(hBipTest_iff_HBipOk cmp).mpr hb] at h
  exact Bool.noConfusion h

/-! ## 9. Non-vacuity

The test is not constantly `true` and not constantly `false`, and it agrees with
the hand proofs already in `FilterSoundness.lean`'s section 8. -/

namespace Example

/-! ### 9.1 Plain graphs: a triangle (rejected) and a 4-cycle (accepted) -/

/-- The triangle on `{0,1,2}`. -/
def triB (i k : Nat) : Bool := decide (i < 3 ∧ k < 3 ∧ i ≠ k)

theorem triB_symm (i k : Nat) : triB i k = triB k i := by
  have f : ∀ a b : Nat, triB a b = true → triB b a = true := by
    intro a b h
    obtain ⟨h1, h2, h3⟩ := of_decide_eq_true h
    exact decide_eq_true ⟨h2, h1, fun e => h3 e.symm⟩
  cases h1 : triB i k with
  | true => exact (f i k h1).symm
  | false =>
    cases h2 : triB k i with
    | false => rfl
    | true =>
      have hcon := f k i h2
      rw [h1] at hcon
      exact Bool.noConfusion hcon

theorem triB_mem (i k : Nat) (h : triB i k = true) :
    i ∈ List.range 3 ∧ k ∈ List.range 3 := by
  obtain ⟨h1, h2, _⟩ := of_decide_eq_true h
  exact ⟨List.mem_range.mpr h1, List.mem_range.mpr h2⟩

/-- **The test REJECTS the triangle** -- kernel-evaluated. -/
theorem tri_rejected : bipTest triB (List.range 3) = false := by decide

/-- ... and therefore, BY THE VERIFIED PROCEDURE (not by a hand argument), the
triangle has no proper 2-colouring. -/
theorem tri_not_bipartite : ¬ ∃ f : Nat → Bool, ∀ i k, triB i k = true → f i ≠ f k := by
  intro h
  have hc := (bipTest_eq_true_iff triB_symm triB_mem).mpr h
  rw [tri_rejected] at hc
  exact Bool.noConfusion hc

/-- The 4-cycle `0-1-2-3-0`. -/
def c4B (i k : Nat) : Bool :=
  decide (i < 4 ∧ k < 4 ∧ ((i + 1) % 4 = k ∨ (k + 1) % 4 = i))

theorem c4B_symm (i k : Nat) : c4B i k = c4B k i := by
  have f : ∀ a b : Nat, c4B a b = true → c4B b a = true := by
    intro a b h
    obtain ⟨h1, h2, h3⟩ := of_decide_eq_true h
    exact decide_eq_true ⟨h2, h1, h3.symm⟩
  cases h1 : c4B i k with
  | true => exact (f i k h1).symm
  | false =>
    cases h2 : c4B k i with
    | false => rfl
    | true =>
      have hcon := f k i h2
      rw [h1] at hcon
      exact Bool.noConfusion hcon

theorem c4B_mem (i k : Nat) (h : c4B i k = true) :
    i ∈ List.range 4 ∧ k ∈ List.range 4 := by
  obtain ⟨h1, h2, _⟩ := of_decide_eq_true h
  exact ⟨List.mem_range.mpr h1, List.mem_range.mpr h2⟩

/-- **The test ACCEPTS the 4-cycle** -- kernel-evaluated. -/
theorem c4_accepted : bipTest c4B (List.range 4) = true := by decide

/-- ... and the procedure therefore HANDS BACK an explicit proper 2-colouring.
This is the accepted-graph witness: a `Bool`-colouring produced by the verified
algorithm, not asserted. -/
theorem c4_bipartite : ∃ f : Nat → Bool, ∀ i k, c4B i k = true → f i ≠ f k :=
  (bipTest_eq_true_iff c4B_symm c4B_mem).mp c4_accepted

/-- The 5-cycle: an odd cycle that is not a triangle.  Also rejected. -/
def c5B (i k : Nat) : Bool :=
  decide (i < 5 ∧ k < 5 ∧ ((i + 1) % 5 = k ∨ (k + 1) % 5 = i))

theorem c5_rejected : bipTest c5B (List.range 5) = false := by decide

/-! ### 9.2 The auxiliary graph `H` of the search

`FilterSoundness.Example.idCmp` (seven singleton components) makes `H` the
complement of the 7-cycle, which contains the triangle `0-2-4`;
`FilterSoundness.Example.exCmp` makes `H` a graph with four edges which the
hand-written status assignment there 2-colours. -/

/-- **The routine REJECTS `idCmp`** -- kernel-evaluated on the actual auxiliary
graph of the search. -/
theorem idCmp_rejected : hBipTest FilterSoundness.Example.idCmp = false := by decide

/-- ... and therefore `H` is not bipartite there.  `FilterSoundness.lean` proves
the same statement by hand (`filterB_not_vacuous`); this proof instead goes
through the VERIFIED DECISION PROCEDURE, which is the point. -/
theorem idCmp_not_HBipOk : ¬ HBipOk FilterSoundness.Example.idCmp :=
  not_HBipOk_of_hBipTest_false idCmp_rejected

/-- **The routine ACCEPTS `exCmp`** -- kernel-evaluated. -/
theorem exCmp_accepted : hBipTest FilterSoundness.Example.exCmp = true := by decide

/-- ... and the mathematical predicate follows, from the routine. -/
theorem exCmp_HBipOk : HBipOk FilterSoundness.Example.exCmp :=
  hBipOk_of_hBipTest exCmp_accepted

/-- The routine's verdict on `exCmp` is also reachable from the OTHER side: the
hypotheses of `FilterSoundness.hBipOk_of_statuses` are satisfiable there (that
file proves it), and `hBipOk_of_statuses_decided` then says the routine returns
`true`.  So the discharge theorem of section 8 fires on real data. -/
theorem exCmp_accepted_via_statuses : hBipTest FilterSoundness.Example.exCmp = true :=
  hBipOk_of_statuses_decided FilterSoundness.Example.exCmp FilterSoundness.Example.exS
    FilterSoundness.Example.exS_ne FilterSoundness.Example.exS_disj

/-- `H` at `exCmp` really has an edge, so the acceptance is not the empty
graph's. -/
theorem exCmp_hasEdge : hAdjB FilterSoundness.Example.exCmp 0 2 = true := by decide

/-- `H` at `idCmp` really contains an odd cycle. -/
theorem idCmp_triangle :
    hAdjB FilterSoundness.Example.idCmp 0 2 = true ∧
    hAdjB FilterSoundness.Example.idCmp 2 4 = true ∧
    hAdjB FilterSoundness.Example.idCmp 0 4 = true := by decide

end Example

end BipartiteDecision
end Heptagon
