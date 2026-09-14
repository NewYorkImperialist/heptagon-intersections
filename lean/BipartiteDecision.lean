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
      now a theorem (`hBipTest_iff_HBipOk`) rather than an assumption.

    * NON-VACUITY (section 9): a concrete graph the test accepts and concrete
      graphs it rejects, each proved -- including a triangle, the 5-cycle, and
      the `H` of `FilterSoundness.Example.idCmp`, whose non-bipartiteness is
      re-derived HERE from the verified test rather than by hand.

  ---------------------------------------------------------------------------
  1. THE RESIDUAL GAP -- READ THIS BEFORE CLAIMING (E8) IS CLOSED
  ---------------------------------------------------------------------------

  (E8) had two halves.

    (E8a) "bipartiteness is decidable by a correct algorithm, and here is one".
          This file CLOSES that half, with a kernel-checked iff.

    (E8b) "the routine that the SHIPPED programs actually execute is such an
          algorithm".  This file does NOT close that half, and cannot: there is
          no extraction, and no Lean code reads
          `independent/implementation_b/reduction.cpp` or
          `python/elimination/audit_enum.py`.

  Moreover the algorithm verified here is ALGORITHMICALLY DIFFERENT from both
  shipped routines.  `reduction.cpp` uses a disjoint-set union with parity;
  `audit_enum.py`'s `H_bip` uses a recursive DFS 2-colouring.  `bipTest` below
  is a fuel-bounded fixed-point colour propagation: each round either extends
  the colouring across one edge from an already-coloured vertex, or (only when
  no such extension exists anywhere, so that the coloured set is closed under
  adjacency) seeds one fresh component with colour `false`.  It is in the same
  family as the Python DFS -- it computes a 2-colouring and verifies it -- but
  it is not a byte-for-byte transcription of either program, and no such claim
  is made.

  So, stated plainly: after this file, the remaining gap at (E8) is
  "the shipped code implements a parity-DSU / recursive DFS, and what is
  verified in Lean is a fuel-bounded propagation 2-colouring, proved to decide
  the same predicate".  The mathematical fact that used to be assumed is now
  proved; the code-to-Lean transcription gap remains, exactly as it does for
  every other filter in `FilterSoundness.lean` (see its "TRANSCRIPTION, NOT
  EXTRACTION" paragraph).

  ---------------------------------------------------------------------------
  2. HYGIENE
  ---------------------------------------------------------------------------

  No `sorry`, no `admit`, no `native_decide`, no `unsafe`, no `partial`, no
  project-specific `axiom`, no well-founded recursion.  `set_option
  autoImplicit false`.  Imports only `FilterSoundness` (hence
  `DisjointnessGraph`, `Lemma7Bridge`, `CernyL2Interface`), all Mathlib-free, so
  this file stays outside Mathlib's trust base.  The only axioms that occur are
  the three standard ones; see section 10 for the verbatim `#print axioms`
  output.

  No existing file is modified.
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

/-! ## 2. Walks in a `Bool`-valued graph

`Reach adjB u v` is "there is a walk from `u` to `v`".  This is the only graph
notion the correctness proof needs; no parity of walks is tracked, because the
invariant of the algorithm is stated relative to a given proper colouring. -/

/-- There is a walk from `u` to `v` in the graph whose adjacency is `adjB`. -/
inductive Reach (adjB : Nat → Nat → Bool) : Nat → Nat → Prop
  | refl (v : Nat) : Reach adjB v v
  | tail {u v w : Nat} : Reach adjB u v → adjB v w = true → Reach adjB u w

theorem reach_one {adjB : Nat → Nat → Bool} {a b : Nat} (h : adjB a b = true) :
    Reach adjB a b :=
  Reach.tail (Reach.refl a) h

theorem reach_trans {adjB : Nat → Nat → Bool} {a b c : Nat}
    (h1 : Reach adjB a b) (h2 : Reach adjB b c) : Reach adjB a c := by
  induction h2 with
  | refl => exact h1
  | tail _ he ih => exact Reach.tail ih he

theorem reach_symm {adjB : Nat → Nat → Bool} (hsym : ∀ i k, adjB i k = adjB k i)
    {a b : Nat} (h : Reach adjB a b) : Reach adjB b a := by
  induction h with
  | refl v => exact Reach.refl v
  | tail _ he ih => exact reach_trans (reach_one ((hsym _ _).trans he)) ih

/-! ## 3. The decision procedure

A partial colouring is a function `c : Nat → Option Bool`; `c v = none` means
"`v` not yet coloured".  One `step` colours exactly one further vertex:

* if some uncoloured `v ∈ V` has a coloured neighbour `u ∈ V` with colour `b`,
  colour `v` with `!b`  (PROPAGATION);
* otherwise -- so that the coloured set is closed under adjacency -- colour the
  first uncoloured vertex of `V` with `false`  (SEEDING A NEW COMPONENT);
* otherwise everything is coloured and `step` is the identity.

`iter` applies `step` a fixed number of times.  The fuel used is `V.length`,
which suffices because each non-identity `step` strictly decreases the number of
uncoloured vertices of `V` (`ucount_step_lt`), and that number starts at
`V.length`.  Then the resulting total colouring is CHECKED on every pair of
`V`; `bipTest` returns the result of that check. -/

section Algo

variable (adjB : Nat → Nat → Bool) (V : List Nat)

/-- Look through `L` for a coloured neighbour of `v`, and return its colour. -/
def findColNbr (c : Nat → Option Bool) (v : Nat) : List Nat → Option Bool
  | [] => none
  | u :: us =>
    match c u with
    | some b => if adjB u v = true then some b else findColNbr c v us
    | none => findColNbr c v us

/-- Look through `L` for an uncoloured vertex with a coloured neighbour in `V`,
and return it together with the colour it must receive. -/
def findProp (c : Nat → Option Bool) : List Nat → Option (Nat × Bool)
  | [] => none
  | v :: vs =>
    match c v with
    | some _ => findProp c vs
    | none =>
      match findColNbr adjB c v V with
      | some b => some (v, !b)
      | none => findProp c vs

/-- Look through `L` for any uncoloured vertex. -/
def findUncol (c : Nat → Option Bool) : List Nat → Option Nat
  | [] => none
  | v :: vs =>
    match c v with
    | some _ => findUncol c vs
    | none => some v

/-- The vertex to colour next, and the colour it gets. -/
def cand (c : Nat → Option Bool) : Option (Nat × Bool) :=
  match findProp adjB V c V with
  | some p => some p
  | none =>
    match findUncol c V with
    | some v => some (v, false)
    | none => none

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

theorem findColNbr_some {v : Nat} :
    ∀ {L : List Nat} {b : Bool}, findColNbr adjB c v L = some b →
      ∃ u, u ∈ L ∧ c u = some b ∧ adjB u v = true := by
  intro L
  induction L with
  | nil => intro b h; exact Option.noConfusion h
  | cons u us ih =>
    intro b h
    cases hcu : c u with
    | none =>
      rw [findColNbr, hcu] at h
      obtain ⟨w, hw, h1, h2⟩ := ih h
      exact ⟨w, List.Mem.tail _ hw, h1, h2⟩
    | some bu =>
      rw [findColNbr, hcu] at h
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
    cases hcw : c w with
    | none =>
      rw [findColNbr, hcw] at h
      cases hu with
      | head => exact hcw
      | tail _ hu' => exact ih h u hu' hadj
    | some bw =>
      rw [findColNbr, hcw] at h
      by_cases hwv : adjB w v = true
      · rw [if_pos hwv] at h; exact Option.noConfusion h
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
  | nil => intro v b h; exact Option.noConfusion h
  | cons w ws ih =>
    intro v b h
    cases hcw : c w with
    | some bw =>
      rw [findProp, hcw] at h
      obtain ⟨h1, h2, h3⟩ := ih h
      exact ⟨List.Mem.tail _ h1, h2, h3⟩
    | none =>
      rw [findProp, hcw] at h
      cases hf : findColNbr adjB c w V with
      | some bu =>
        rw [hf] at h
        have hvw : v = w := congrArg Prod.fst (Option.some.inj h)
        have hbb : b = !bu := congrArg Prod.snd (Option.some.inj h)
        obtain ⟨u, hu, hcu, hadj⟩ := findColNbr_some hf
        subst hvw
        exact ⟨List.Mem.head _, hcw, u, bu, hu, hcu, hadj, hbb⟩
      | none =>
        rw [hf] at h
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
    cases hcw : c w with
    | some bw =>
      rw [findProp, hcw] at h
      cases hv with
      | head => rw [hcw] at hcv; exact Option.noConfusion hcv
      | tail _ hv' => exact ih h v hv' hcv u hu hadj
    | none =>
      rw [findProp, hcw] at h
      cases hf : findColNbr adjB c w V with
      | some bu => rw [hf] at h; exact Option.noConfusion h
      | none =>
        rw [hf] at h
        cases hv with
        | head => exact findColNbr_none hf u hu hadj
        | tail _ hv' => exact ih h v hv' hcv u hu hadj

theorem findUncol_some :
    ∀ {L : List Nat} {v : Nat}, findUncol c L = some v → v ∈ L ∧ c v = none := by
  intro L
  induction L with
  | nil => intro v h; exact Option.noConfusion h
  | cons w ws ih =>
    intro v h
    cases hcw : c w with
    | some bw =>
      rw [findUncol, hcw] at h
      obtain ⟨h1, h2⟩ := ih h
      exact ⟨List.Mem.tail _ h1, h2⟩
    | none =>
      rw [findUncol, hcw] at h
      have : w = v := Option.some.inj h
      subst this
      exact ⟨List.Mem.head _, hcw⟩

theorem findUncol_none :
    ∀ {L : List Nat}, findUncol c L = none → ∀ v, v ∈ L → (c v).isSome = true := by
  intro L
  induction L with
  | nil => intro _ v hv; cases hv
  | cons w ws ih =>
    intro h v hv
    cases hcw : c w with
    | none => rw [findUncol, hcw] at h; exact Option.noConfusion h
    | some bw =>
      rw [findUncol, hcw] at h
      cases hv with
      | head => rw [hcw]; rfl
      | tail _ hv' => exact ih h v hv'

/-- The candidate, packaged: the vertex it returns is an uncoloured vertex of
`V`, and either it is coloured by propagation across an edge from an
already-coloured vertex, or it is a fresh seed AND the coloured set is then
closed under adjacency. -/
theorem cand_some {v : Nat} {b : Bool} (h : cand adjB V c = some (v, b)) :
    v ∈ V ∧ c v = none ∧
      ((∃ u bu, u ∈ V ∧ c u = some bu ∧ adjB u v = true ∧ b = !bu) ∨
       (∀ x, x ∈ V → c x = none → ∀ u, u ∈ V → adjB u x = true → c u = none)) := by
  rw [cand] at h
  cases hp : findProp adjB V c V with
  | some p =>
    rw [hp] at h
    have hpe : p = (v, b) := Option.some.inj h
    subst hpe
    obtain ⟨h1, h2, h3⟩ := findProp_some hp
    exact ⟨h1, h2, Or.inl h3⟩
  | none =>
    rw [hp] at h
    cases hu : findUncol c V with
    | none => rw [hu] at h; exact Option.noConfusion h
    | some w =>
      rw [hu] at h
      have hvw : w = v := congrArg Prod.fst (Option.some.inj h)
      subst hvw
      obtain ⟨h1, h2⟩ := findUncol_some hu
      exact ⟨h1, h2, Or.inr (findProp_none hp)⟩

theorem cand_none (h : cand adjB V c = none) : ∀ v, v ∈ V → (c v).isSome = true := by
  rw [cand] at h
  cases hp : findProp adjB V c V with
  | some p => rw [hp] at h; exact Option.noConfusion h
  | none =>
    rw [hp] at h
    cases hu : findUncol c V with
    | some w => rw [hu] at h; exact Option.noConfusion h
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
  cases x <;> exact Nat.le_refl _ |>.trans (by decide)

theorem ucount_none (L : List Nat) : ucount (fun _ => none) L = L.length := by
  induction L with
  | nil => rfl
  | cons w ws ih =>
    show ucount (fun _ => none) ws + ucount1 (none : Option Bool) = ws.length + 1
    rw [ih]

theorem isSome_of_ucount_zero {c : Nat → Option Bool} :
    ∀ {L : List Nat}, ucount c L = 0 → ∀ v, v ∈ L → (c v).isSome = true := by
  intro L
  induction L with
  | nil => intro _ v hv; cases hv
  | cons w ws ih =>
    intro h v hv
    have h' : ucount c ws + ucount1 (c w) = 0 := h
    cases hcw : c w with
    | none =>
      rw [hcw] at h'
      exact absurd h' (Nat.succ_ne_zero _)
    | some bw =>
      have h2 : ucount c ws = 0 := by rw [hcw] at h'; exact h'
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
    show ucount c ws + ucount1 (c w) = 0
    cases hcw : c w with
    | none => rw [hcw] at hw; exact Option.noConfusion hw
    | some bw => rw [hcw, h2]

theorem ucount_mono {c c' : Nat → Option Bool}
    (h : ∀ w, (c w).isSome = true → (c' w).isSome = true) :
    ∀ L : List Nat, ucount c' L ≤ ucount c L := by
  intro L
  induction L with
  | nil => exact Nat.le_refl _
  | cons w ws ih =>
    show ucount c' ws + ucount1 (c' w) ≤ ucount c ws + ucount1 (c w)
    refine Nat.add_le_add ih ?_
    cases hcw : c w with
    | none => exact ucount1_le_one _
    | some bw =>
      have : (c' w).isSome = true := h w (by rw [hcw]; rfl)
      cases hcw' : c' w with
      | none => rw [hcw'] at this; exact Option.noConfusion this
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
  · subst hw; rw [assign_self]; rfl
  · rw [assign_other hw]; exact h

theorem ucount_assign_lt {c : Nat → Option Bool} {v : Nat} {b : Bool} (hcv : c v = none) :
    ∀ {L : List Nat}, v ∈ L → ucount (assign c v b) L < ucount c L := by
  intro L
  induction L with
  | nil => intro hv; cases hv
  | cons w ws ih =>
    intro hv
    show ucount (assign c v b) ws + ucount1 (assign c v b w) <
      ucount c ws + ucount1 (c w)
    by_cases hwv : w = v
    · subst hwv
      rw [assign_self, hcv]
      show ucount (assign c w b) ws + 0 < ucount c ws + 1
      exact Nat.lt_succ_of_le
        (Nat.le_trans (Nat.le_of_eq (Nat.add_zero _))
          (ucount_mono (fun x hx => assign_isSome x hx) ws))
    · rw [assign_other hwv]
      refine Nat.add_lt_add_right (ih ?_) _
      cases hv with
      | head => exact absurd rfl hwv
      | tail _ hv' => exact hv'

theorem step_isSome {adjB : Nat → Nat → Bool} {V : List Nat} {c : Nat → Option Bool}
    (w : Nat) (h : (c w).isSome = true) : ((step adjB V c) w).isSome = true := by
  rw [step, stepWith]
  cases hcand : cand adjB V c with
  | none => exact h
  | some p => exact assign_isSome w h

theorem ucount_step_lt {adjB : Nat → Nat → Bool} {V : List Nat} {c : Nat → Option Bool}
    {v : Nat} (hv : v ∈ V) (hcv : c v = none) :
    ucount (step adjB V c) V < ucount c V := by
  rw [step, stepWith]
  cases hcand : cand adjB V c with
  | none =>
    have := cand_none hcand v hv
    rw [hcv] at this
    exact Option.noConfusion this
  | some p =>
    obtain ⟨hp1, hp2, _⟩ := cand_some (v := p.1) (b := p.2) (by rw [hcand])
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
    by_cases hall : ∀ x, x ∈ V → (c x).isSome = true
    · have h0 : ucount c V = 0 := ucount_zero_of_isSome hall
      have := ucount_mono (c := c) (c' := step adjB V c) (fun w hw => step_isSome w hw) V
      rw [h0] at this
      exact Nat.le_trans this (Nat.zero_le _)
    · have : ∃ x, x ∈ V ∧ c x = none := by
        by_contra hcon
        exact hall (fun x hx => by
          cases hcx : c x with
          | none => exact absurd ⟨x, hx, hcx⟩ hcon
          | some b => rfl)
      obtain ⟨x, hx, hcx⟩ := this
      have hlt := ucount_step_lt (adjB := adjB) (V := V) (c := c) hx hcx
      exact Nat.le_of_lt_succ (Nat.lt_of_lt_of_le hlt h)

end BipartiteDecision

namespace BipartiteDecision

/-! ## 6. The invariant, and the completeness direction

`Consistent adjB g c` says: within one connected component, the partial
colouring `c` agrees with the reference proper colouring `g` up to a global
flip.  It is the exact invariant needed, and it is preserved by `step`. -/

/-- The colouring built so far agrees with `g` up to a per-component flip. -/
def Consistent (adjB : Nat → Nat → Bool) (g : Nat → Bool) (c : Nat → Option Bool) : Prop :=
  ∀ v w bv bw, c v = some bv → c w = some bw → Reach adjB v w → ((bv = bw) ↔ (g v = g w))

theorem consistent_none (adjB : Nat → Nat → Bool) (g : Nat → Bool) :
    Consistent adjB g (fun _ => none) := by
  intro v w bv bw h _ _
  exact Option.noConfusion h

/-- If no uncoloured vertex of `V` has a coloured neighbour, then no vertex
reachable from an uncoloured vertex is coloured. -/
theorem reach_none {adjB : Nat → Nat → Bool} {V : List Nat} {c : Nat → Option Bool}
    (hsym : ∀ i k, adjB i k = adjB k i)
    (hV : ∀ i k, adjB i k = true → i ∈ V ∧ k ∈ V)
    (hcl : ∀ x, x ∈ V → c x = none → ∀ u, u ∈ V → adjB u x = true → c u = none)
    {x y : Nat} (h : Reach adjB x y) (hx : c x = none) : c y = none := by
  induction h with
  | refl => exact hx
  | tail _ he ih =>
    rename_i a b _
    have hab := hV a b he
    exact hcl a hab.1 ih b hab.2 ((hsym b a).trans he)

theorem consistent_step {adjB : Nat → Nat → Bool} {V : List Nat} {g : Nat → Bool}
    (hsym : ∀ i k, adjB i k = adjB k i)
    (hV : ∀ i k, adjB i k = true → i ∈ V ∧ k ∈ V)
    (hg : ∀ i k, adjB i k = true → g i ≠ g k)
    {c : Nat → Option Bool} (hc : Consistent adjB g c) :
    Consistent adjB g (step adjB V c) := by
  rw [step, stepWith]
  cases hcand : cand adjB V c with
  | none => exact hc
  | some p =>
    obtain ⟨hpV, hpn, hcase⟩ := cand_some (v := p.1) (b := p.2) (by rw [hcand])
    set v := p.1 with hv
    set b := p.2 with hb
    show Consistent adjB g (assign c v b)
    intro x y bx by' hx hy hreach
    by_cases hxv : x = v <;> by_cases hyv : y = v
    · -- both new
      subst hxv
      have h1 : bx = b := Option.some.inj (by rw [← assign_self (c := c) (v := v) (b := b)]; exact hx.symm).symm
      have h2 : by' = b := by
        rw [hyv] at hy
        exact (Option.some.inj ((assign_self (c := c) (v := v) (b := b)).symm.trans hy)).symm
      subst hyv
      rw [h1, h2]
      exact ⟨fun _ => rfl, fun _ => rfl⟩
    · -- x new, y old
      subst hxv
      have hbx : bx = b :=
        (Option.some.inj ((assign_self (c := c) (v := x) (b := b)).symm.trans hx)).symm
      have hcy : c y = some by' := by rw [← assign_other (c := c) (v := x) (b := b) hyv]; exact hy
      cases hcase with
      | inl hprop =>
        obtain ⟨u, bu, huV, hcu, hadj, hbbu⟩ := hprop
        have hreachuy : Reach adjB u y := reach_trans (reach_one hadj) hreach
        have hiff := hc u y bu by' hcu hcy hreachuy
        have hgv : g x = !g u := eq_not_of_ne (hg u x hadj)
        rw [hbx, hbbu, hgv]
        constructor
        · intro h
          exact (eq_not_iff (g y) (g u)).mpr (fun hgg => ((not_eq_iff bu by').mp h) (hiff.mpr hgg.symm)) |>.symm ▸ rfl
        · intro h
          exact (not_eq_iff bu by').mpr (fun hbb => ((eq_not_iff (g y) (g u)).mp h.symm) (hiff.mp hbb).symm)
      | inr hcl =>
        have : c y = none := reach_none hsym hV hcl hreach hpn
        rw [this] at hcy
        exact Option.noConfusion hcy
    · -- x old, y new
      subst hyv
      have hby : by' = b :=
        (Option.some.inj ((assign_self (c := c) (v := y) (b := b)).symm.trans hy)).symm
      have hcx : c x = some bx := by rw [← assign_other (c := c) (v := y) (b := b) hxv]; exact hx
      cases hcase with
      | inl hprop =>
        obtain ⟨u, bu, huV, hcu, hadj, hbbu⟩ := hprop
        have hreachxu : Reach adjB x u :=
          reach_trans hreach (reach_symm hsym (reach_one hadj))
        have hiff := hc x u bx bu hcx hcu hreachxu
        have hgv : g y = !g u := eq_not_of_ne (hg u y hadj)
        rw [hby, hbbu, hgv]
        constructor
        · intro h
          exact (eq_not_iff (g x) (g u)).mpr (fun hgg => ((eq_not_iff bx bu).mp h) (hiff.mpr hgg))
        · intro h
          exact (eq_not_iff bx bu).mpr (fun hbb => ((eq_not_iff (g x) (g u)).mp h) (hiff.mp hbb))
      | inr hcl =>
        have : c x = none :=
          reach_none hsym hV hcl (reach_symm hsym hreach) hpn
        rw [this] at hcx
        exact Option.noConfusion hcx
    · -- both old
      have hcx : c x = some bx := by rw [← assign_other (c := c) (v := v) (b := b) hxv]; exact hx
      have hcy : c y = some by' := by rw [← assign_other (c := c) (v := v) (b := b) hyv]; exact hy
      exact hc x y bx by' hcx hcy hreach

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
  have h1 := allB_mem (p := fun i =>
    allB (fun k => !adjB i k || diffB (colouring adjB V i) (colouring adjB V k)) V) h i hi
  have h2 := allB_mem (p := fun k =>
    !adjB i k || diffB (colouring adjB V i) (colouring adjB V k)) h1 k hk
  rw [hik] at h2
  exact (diffB_eq_true _ _).mp h2

/-- **COMPLETENESS.**  If the graph admits ANY proper 2-colouring, the
procedure's colouring is proper, so the test succeeds. -/
theorem bipTest_of_proper {adjB : Nat → Nat → Bool} {V : List Nat}
    (hsym : ∀ i k, adjB i k = adjB k i)
    (hV : ∀ i k, adjB i k = true → i ∈ V ∧ k ∈ V)
    {g : Nat → Bool} (hg : ∀ i k, adjB i k = true → g i ≠ g k) :
    bipTest adjB V = true := by
  have hcons : Consistent adjB g (iter adjB V V.length (fun _ => none)) :=
    consistent_iter hsym hV hg V.length _ (consistent_none adjB g)
  have htot : ∀ v, v ∈ V → ((iter adjB V V.length (fun _ => none)) v).isSome = true :=
    iter_isSome V.length (fun _ => none) (Nat.le_of_eq (ucount_none V))
  have hproper : ∀ i k, adjB i k = true → colouring adjB V i ≠ colouring adjB V k := by
    intro i k hik
    obtain ⟨hi, hk⟩ := hV i k hik
    have hsi := htot i hi
    have hsk := htot k hk
    cases hci : (iter adjB V V.length (fun _ => none)) i with
    | none => rw [hci] at hsi; exact Option.noConfusion hsi
    | some bi =>
      cases hck : (iter adjB V V.length (fun _ => none)) k with
      | none => rw [hck] at hsk; exact Option.noConfusion hsk
      | some bk =>
        have hiff := hcons i k bi bk hci hck (reach_one hik)
        have hgik := hg i k hik
        show ((iter adjB V V.length (fun _ => none)) i).getD false ≠
             ((iter adjB V V.length (fun _ => none)) k).getD false
        rw [hci, hck]
        intro hbb
        exact hgik (hiff.mp hbb)
  refine allB_of ?_
  intro i hi
  refine allB_of ?_
  intro k hk
  cases hik : adjB i k with
  | false => rfl
  | true =>
    show (!true || diffB (colouring adjB V i) (colouring adjB V k)) = true
    exact (diffB_eq_true _ _).mpr (hproper i k hik)

/-- **THE DECISION PROCEDURE IS CORRECT -- a genuine iff.** -/
theorem bipTest_eq_true_iff {adjB : Nat → Nat → Bool} {V : List Nat}
    (hsym : ∀ i k, adjB i k = adjB k i)
    (hV : ∀ i k, adjB i k = true → i ∈ V ∧ k ∈ V) :
    bipTest adjB V = true ↔ ∃ f : Nat → Bool, ∀ i k, adjB i k = true → f i ≠ f k :=
  ⟨fun h => ⟨colouring adjB V, proper_of_bipTest hV h⟩,
   fun ⟨_, hf⟩ => bipTest_of_proper hsym hV hf⟩

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
  · intro ⟨f, hf⟩
    exact ⟨f, fun e e' hee => hf e e' ((hAdj e e').mpr hee)⟩
  · intro ⟨f, hf⟩
    exact ⟨f, fun i k hik => hf i k ((hAdj i k).mp hik)⟩

end BipartiteDecision
end Heptagon

namespace Heptagon
namespace BipartiteDecision

open Heptagon.FilterSoundness

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
  | true =>
    exact (decide_eq_true (hAdj_symm ((hAdjB_iff cmp i k).mp h1))).symm
  | false =>
    cases h2 : hAdjB cmp k i with
    | false => rfl
    | true =>
      have : hAdjB cmp i k = true := decide_eq_true (hAdj_symm ((hAdjB_iff cmp k i).mp h2))
      rw [h1] at this
      exact Bool.noConfusion this

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
`FilterSoundness.hBipOk_of_statuses` (AKR Lemma 7 for the label-level `H`),
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

/-- **THE CONVERSE HALF, which is what makes filter (b) not over-accept.**  If
the routine returns `true` then `H` really is bipartite.  (E8) is an "exactly
when", and this is the direction that a mere soundness lemma would miss. -/
theorem hBipOk_of_hBipTest {cmp : Nat → Nat} (h : hBipTest cmp = true) : HBipOk cmp :=
  (hBipTest_iff_HBipOk cmp).mp h

/-- ... and the contrapositive the search actually uses to DISCARD a candidate:
if the routine says `false`, the graph genuinely is not bipartite, so discarding
is justified. -/
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
  cases h1 : triB i k with
  | true =>
    have ⟨a, b, c⟩ := of_decide_eq_true h1
    exact (decide_eq_true ⟨b, a, fun h => c h.symm⟩).symm
  | false =>
    cases h2 : triB k i with
    | false => rfl
    | true =>
      have ⟨a, b, c⟩ := of_decide_eq_true h2
      have : triB i k = true := decide_eq_true ⟨b, a, fun h => c h.symm⟩
      rw [h1] at this
      exact Bool.noConfusion this

theorem triB_mem (i k : Nat) (h : triB i k = true) :
    i ∈ List.range 3 ∧ k ∈ List.range 3 := by
  have ⟨a, b, _⟩ := of_decide_eq_true h
  exact ⟨List.mem_range.mpr a, List.mem_range.mpr b⟩

/-- **The test REJECTS the triangle** -- kernel-evaluated. -/
theorem tri_rejected : bipTest triB (List.range 3) = false := by decide

/-- ... and therefore, BY THE VERIFIED PROCEDURE (not by a hand argument), the
triangle has no proper 2-colouring. -/
theorem tri_not_bipartite : ¬ ∃ f : Nat → Bool, ∀ i k, triB i k = true → f i ≠ f k := by
  intro h
  have := (bipTest_eq_true_iff triB_symm triB_mem).mpr h
  rw [tri_rejected] at this
  exact Bool.noConfusion this

/-- The 4-cycle `0-1-2-3-0`. -/
def c4B (i k : Nat) : Bool :=
  decide (i < 4 ∧ k < 4 ∧ ((i + 1) % 4 = k ∨ (k + 1) % 4 = i))

theorem c4B_symm (i k : Nat) : c4B i k = c4B k i := by
  cases h1 : c4B i k with
  | true =>
    have ⟨a, b, c⟩ := of_decide_eq_true h1
    exact (decide_eq_true ⟨b, a, c.symm⟩).symm
  | false =>
    cases h2 : c4B k i with
    | false => rfl
    | true =>
      have ⟨a, b, c⟩ := of_decide_eq_true h2
      have : c4B i k = true := decide_eq_true ⟨b, a, c.symm⟩
      rw [h1] at this
      exact Bool.noConfusion this

theorem c4B_mem (i k : Nat) (h : c4B i k = true) :
    i ∈ List.range 4 ∧ k ∈ List.range 4 := by
  have ⟨a, b, _⟩ := of_decide_eq_true h
  exact ⟨List.mem_range.mpr a, List.mem_range.mpr b⟩

/-- **The test ACCEPTS the 4-cycle** -- kernel-evaluated. -/
theorem c4_accepted : bipTest c4B (List.range 4) = true := by decide

/-- ... and the procedure therefore HANDS BACK an explicit proper 2-colouring.
This is the accepted-graph witness: a `Bool`-colouring produced by the verified
algorithm, not asserted. -/
theorem c4_bipartite : ∃ f : Nat → Bool, ∀ i k, c4B i k = true → f i ≠ f k :=
  (bipTest_eq_true_iff c4B_symm c4B_mem).mp c4_accepted

/-- The 5-cycle: an odd cycle that is not a triangle, also rejected. -/
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

/-! ## 10. Axioms

Verbatim `#print axioms`, Lean 4.33.1, is recorded in the report accompanying
this file.  Only `propext`, `Classical.choice` and `Quot.sound` occur;
`Classical.choice` enters only through `FilterSoundness.filterB_sound`, i.e.
through `Lemma7Bridge.disjoint_statuses_imply_bipartite_classical`, and NOT
through the decision procedure or its correctness proof. -/

end BipartiteDecision
end Heptagon
