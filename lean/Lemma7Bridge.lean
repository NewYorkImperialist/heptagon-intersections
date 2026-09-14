/-
  Lemma7Bridge.lean

  The purely logical step of `A7` (the A7-BRIDGE subsection of §4 of the manifest):

      "disjoint status sets on adjacent vertices  ⟹  H is bipartite".

  **Core Lean only** — this file imports *nothing at all*.  No Mathlib, no
  `axiom`, no `sorry`, no `unsafe`, no `native_decide`, no `partial`.

  ---------------------------------------------------------------------------
  WHAT IS AND IS NOT PROVED HERE  (read this before believing anything)
  ---------------------------------------------------------------------------

  NOT PROVED, and deliberately not even *stated* anywhere in this file:
  AKR Lemma 7, and the project's reading of "associated" / "is hooking" that
  turns it into the disjointness condition.  Those are EXTERNAL and
  unformalised.  They enter below only as the hypothesis `hdisj`, which is an
  explicit hypothesis of every theorem here; nothing in this file derives it,
  assumes it globally, or postulates it.

  PROVED: for an arbitrary vertex type `V`, an arbitrary relation
  `Adj : V → V → Prop` and an arbitrary status assignment
  `S : V → Status → Prop` (read `S e s` as "`s ∈ S(e)`", i.e. the vertex `e`
  realises status `s` via some associated pair), if

      (hne)    ∀ e, ∃ s, S e s                                  -- S(e) ≠ ∅
      (hdisj)  ∀ e e' s, Adj e e' → S e s → S e' s → False      -- S(e) ∩ S(e') = ∅

  then

      * `adj_irrefl`             : `Adj` is automatically irreflexive;
      * `isolated_of_both`       : a vertex with S(e) = {hooking, hooked} is
                                   isolated (this is the subtle case: the two
                                   statuses may be witnessed by *different*
                                   associated pairs);
      * `statusIs_of_adj`        : a non-isolated vertex has a singleton status;
      * `opposite_of_adj`        : every edge joins a hooking-only vertex to a
                                   hooked-only vertex;
      * `disjoint_statuses_imply_bipartite` : the graph is bipartite, i.e.
                                   admits a proper 2-colouring (takes a
                                   decidability hypothesis `hdec`, used *only*
                                   to build the `Bool`-valued colouring);
      * `disjoint_statuses_imply_bipartite'` : the same, in partition form,
                                   with no decidability hypothesis;
      * `disjoint_statuses_imply_bipartite_classical` : the `Bool`-colouring
                                   conclusion from `hne` and `hdisj` alone,
                                   with `hdec` discharged classically.

  ON `hdec`.  It is a FORMALIZATION CONVENIENCE, not a mathematical assumption,
  and emphatically not an unproved geometric hypothesis.  `Bipartite` is defined
  here as the existence of a `Bool`-valued proper 2-colouring, while `S` is an
  arbitrary `Prop`-valued predicate; some decision procedure for "does `e`
  realise `hooking`?" is therefore needed just to *write down* a function
  `V -> Bool`.  It is discharged for free for any explicitly given status
  assignment (`Example.bipartite`), and unconditionally by
  `Classical.propDecidable` (`disjoint_statuses_imply_bipartite_classical`).
  No mathematical content whatsoever is hidden in it.

  AXIOMS (verbatim `#print axioms`, Lean 4.33.1).  Every theorem in this file
  except one `does not depend on any axioms` -- including `adj_irrefl`,
  `isolated_of_both`, `statusIs_of_adj`, `opposite_of_adj`,
  `disjoint_statuses_imply_bipartite`, `disjoint_statuses_imply_bipartite'` and
  all of the `Example` non-vacuity theorems.  The single exception is the
  classical corollary `disjoint_statuses_imply_bipartite_classical`, which
  `depends on axioms: [propext, Classical.choice, Quot.sound]` because it invokes
  `Classical.propDecidable`.  The file's "no axioms at all" claim refers to the
  former group and must NOT be extended to the corollary.

  Symmetry of `Adj` is never assumed (the theorems are stated so that they do
  not need it); irreflexivity is derived, not assumed.

  Non-vacuity is proved, not asserted: see the final section, which exhibits a
  concrete model in which the hypotheses hold *and there is an actual edge*,
  a concrete both-status vertex which is then isolated, and a concrete
  (triangle) graph which is **not** bipartite — so the conclusion
  `Bipartite` is not a predicate that holds of everything.
-/

set_option autoImplicit false

namespace Heptagon
namespace Lemma7Bridge

universe u

/-! ## Statuses -/

/-- The two statuses of AKR Lemma 7.  There is no third one. -/
inductive Status where
  | hooking : Status
  | hooked : Status
  deriving DecidableEq, Repr

-- A status set `S(e) ⊆ {hooking, hooked}` is represented by its membership
-- predicate: `S e s` means `s ∈ S(e)`.  No extra definition is needed.

/-- `StatusIs S e s` says `S(e) = {s}`: `e` realises `s` and nothing else. -/
def StatusIs {V : Type u} (S : V → Status → Prop) (e : V) (s : Status) : Prop :=
  S e s ∧ ∀ t, S e t → t = s

/-! ## Bipartiteness

For a simple graph, "bipartite" is exactly "admits a proper 2-colouring".  We
define it that way to keep the file self-contained (and Mathlib-free). -/

/-- `f` is a proper 2-colouring of `Adj`: adjacent vertices get different
colours. -/
def IsProperTwoColouring {V : Type u} (Adj : V → V → Prop) (f : V → Bool) : Prop :=
  ∀ e e', Adj e e' → f e ≠ f e'

/-- A graph is bipartite iff it admits a proper 2-colouring. -/
def Bipartite {V : Type u} (Adj : V → V → Prop) : Prop :=
  ∃ f : V → Bool, IsProperTwoColouring Adj f

/-! ## The inference -/

section Inference

variable {V : Type u} (Adj : V → V → Prop) (S : V → Status → Prop)

/-- Not hooking and not empty means hooked. -/
theorem hooked_of_not_hooking (hne : ∀ e, ∃ s, S e s) (e : V)
    (h : ¬ S e Status.hooking) : S e Status.hooked := by
  cases hne e with
  | intro s hs =>
    cases s with
    | hooking => exact absurd hs h
    | hooked => exact hs

/-- Not hooked and not empty means hooking. -/
theorem hooking_of_not_hooked (hne : ∀ e, ∃ s, S e s) (e : V)
    (h : ¬ S e Status.hooked) : S e Status.hooking := by
  cases hne e with
  | intro s hs =>
    cases s with
    | hooking => exact hs
    | hooked => exact absurd hs h

/-- **Irreflexivity is free.**  A vertex cannot be adjacent to itself, since its
own status set is nonempty and would have to be disjoint from itself. -/
theorem adj_irrefl
    (hne : ∀ e, ∃ s, S e s)
    (hdisj : ∀ e e' s, Adj e e' → S e s → S e' s → False)
    (e : V) : ¬ Adj e e := by
  intro h
  cases hne e with
  | intro s hs => exact hdisj e e s h hs hs

/-- **Theorem 1: both-status vertices are isolated.**
If `S(e) = {hooking, hooked}` then `e` has no incident edge, in either
direction.  (No symmetry of `Adj` is assumed, so both directions are stated.) -/
theorem isolated_of_both
    (hne : ∀ e, ∃ s, S e s)
    (hdisj : ∀ e e' s, Adj e e' → S e s → S e' s → False)
    (e : V) (hboth : S e Status.hooking ∧ S e Status.hooked) :
    ∀ e', ¬ Adj e e' ∧ ¬ Adj e' e := by
  intro e'
  constructor
  · intro hadj
    cases hne e' with
    | intro s hs =>
      cases s with
      | hooking => exact hdisj e e' Status.hooking hadj hboth.1 hs
      | hooked => exact hdisj e e' Status.hooked hadj hboth.2 hs
  · intro hadj
    cases hne e' with
    | intro s hs =>
      cases s with
      | hooking => exact hdisj e' e Status.hooking hadj hs hboth.1
      | hooked => exact hdisj e' e Status.hooked hadj hs hboth.2

/-- A vertex with an incident edge realises at most one status. -/
theorem status_unique_of_adj
    (hne : ∀ e, ∃ s, S e s)
    (hdisj : ∀ e e' s, Adj e e' → S e s → S e' s → False)
    (e : V) (hinc : ∃ e', Adj e e' ∨ Adj e' e) :
    ∀ s t, S e s → S e t → s = t := by
  intro s t hs ht
  cases s with
  | hooking =>
    cases t with
    | hooking => rfl
    | hooked =>
      cases hinc with
      | intro e' hadj =>
        have hiso := isolated_of_both Adj S hne hdisj e ⟨hs, ht⟩ e'
        cases hadj with
        | inl h => exact absurd h hiso.1
        | inr h => exact absurd h hiso.2
  | hooked =>
    cases t with
    | hooking =>
      cases hinc with
      | intro e' hadj =>
        have hiso := isolated_of_both Adj S hne hdisj e ⟨ht, hs⟩ e'
        cases hadj with
        | inl h => exact absurd h hiso.1
        | inr h => exact absurd h hiso.2
    | hooked => rfl

/-- **Theorem 2: non-isolated vertices have singleton status.**
If `e` has any incident edge then `S(e)` is a singleton `{s}`. -/
theorem statusIs_of_adj
    (hne : ∀ e, ∃ s, S e s)
    (hdisj : ∀ e e' s, Adj e e' → S e s → S e' s → False)
    (e : V) (hinc : ∃ e', Adj e e' ∨ Adj e' e) :
    ∃ s, StatusIs S e s := by
  cases hne e with
  | intro s hs =>
    exact ⟨s, hs, fun t ht => status_unique_of_adj Adj S hne hdisj e hinc t s ht hs⟩

/-- **Theorem 3: adjacent vertices have opposite statuses.**
Every edge of the graph joins a hooking-only vertex to a hooked-only vertex. -/
theorem opposite_of_adj
    (hne : ∀ e, ∃ s, S e s)
    (hdisj : ∀ e e' s, Adj e e' → S e s → S e' s → False)
    (e e' : V) (hadj : Adj e e') :
    (StatusIs S e Status.hooking ∧ StatusIs S e' Status.hooked) ∨
    (StatusIs S e Status.hooked ∧ StatusIs S e' Status.hooking) := by
  have hue : ∀ s t, S e s → S e t → s = t :=
    status_unique_of_adj Adj S hne hdisj e ⟨e', Or.inl hadj⟩
  have hue' : ∀ s t, S e' s → S e' t → s = t :=
    status_unique_of_adj Adj S hne hdisj e' ⟨e, Or.inr hadj⟩
  cases hne e with
  | intro s hs =>
    cases s with
    | hooking =>
      have h' : S e' Status.hooked :=
        hooked_of_not_hooking S hne e' (fun h => hdisj e e' Status.hooking hadj hs h)
      exact Or.inl ⟨⟨hs, fun t ht => hue t Status.hooking ht hs⟩,
                    ⟨h', fun t ht => hue' t Status.hooked ht h'⟩⟩
    | hooked =>
      have h' : S e' Status.hooking :=
        hooking_of_not_hooked S hne e' (fun h => hdisj e e' Status.hooked hadj hs h)
      exact Or.inr ⟨⟨hs, fun t ht => hue t Status.hooked ht hs⟩,
                    ⟨h', fun t ht => hue' t Status.hooking ht h'⟩⟩

/-- **Theorem 4 (main): disjoint statuses imply bipartiteness.**

`hdec` says only that "does `e` realise the status `hooking`?" is a decidable
question.  It is a *formalization convenience*, not a mathematical assumption:
`Bipartite` is defined via a `Bool`-valued colouring while `S` is an arbitrary
`Prop`-valued predicate, so a decision procedure is needed purely to *construct*
the function `V -> Bool`.  It is not a geometric hypothesis and nothing about
AKR Lemma 7 is smuggled into it.

Three ways to see that it costs nothing:
* it holds definitionally for any explicitly given status assignment (see
  `Example.bipartite` below);
* `disjoint_statuses_imply_bipartite'` below draws the same conclusion in
  partition form with no decidability hypothesis at all, and no axioms;
* `disjoint_statuses_imply_bipartite_classical` below drops `hdec` outright,
  at the cost of `Classical.choice`.

This theorem itself depends on no axioms. -/
theorem disjoint_statuses_imply_bipartite
    (hne : ∀ e, ∃ s, S e s)
    (hdisj : ∀ e e' s, Adj e e' → S e s → S e' s → False)
    (hdec : ∀ e, Decidable (S e Status.hooking)) :
    Bipartite Adj := by
  refine ⟨fun e => @decide (S e Status.hooking) (hdec e), ?_⟩
  intro e e' hadj hcol0
  -- `hcol0` beta-reduced, with the instances made explicit:
  have hcol : @decide (S e Status.hooking) (hdec e)
      = @decide (S e' Status.hooking) (hdec e') := hcol0
  cases hdec e with
  | isTrue he =>
    -- `e` is hooking, hence so is `e'` (same colour), contradicting disjointness.
    have hc : @decide (S e' Status.hooking) (hdec e') = true := by
      rw [← hcol]; exact @decide_eq_true _ (hdec e) he
    exact hdisj e e' Status.hooking hadj he (@of_decide_eq_true _ (hdec e') hc)
  | isFalse he =>
    -- `e` is not hooking, hence neither is `e'`; both are then hooked.
    have hc : @decide (S e' Status.hooking) (hdec e') = false := by
      rw [← hcol]; exact @decide_eq_false _ (hdec e) he
    have he' : ¬ S e' Status.hooking := @of_decide_eq_false _ (hdec e') hc
    exact hdisj e e' Status.hooked hadj
      (hooked_of_not_hooking S hne e he) (hooked_of_not_hooking S hne e' he')

/-- The same conclusion without any decidability hypothesis, in the equivalent
"partition" form: the vertex set splits into the hooking side and its
complement, and every edge crosses. -/
theorem disjoint_statuses_imply_bipartite'
    (hne : ∀ e, ∃ s, S e s)
    (hdisj : ∀ e e' s, Adj e e' → S e s → S e' s → False) :
    ∃ A : V → Prop, ∀ e e', Adj e e' → (A e ↔ ¬ A e') := by
  refine ⟨fun e => S e Status.hooking, ?_⟩
  intro e e' hadj
  constructor
  · intro he h'
    exact hdisj e e' Status.hooking hadj he h'
  · intro he'
    exact hooking_of_not_hooked S hne e
      (fun h => hdisj e e' Status.hooked hadj h (hooked_of_not_hooking S hne e' he'))

/-- **Corollary (classical).**  The two mathematical hypotheses `hne` and
`hdisj` alone already give bipartiteness in the `Bool`-colouring sense: the
decidability hypothesis of `disjoint_statuses_imply_bipartite` is discharged by
`Classical.propDecidable`, confirming that it carried no mathematical content.

**AXIOM WARNING.**  This is the *only* declaration in this file that depends on
any axiom.  `#print axioms` reports
`[propext, Classical.choice, Quot.sound]` for it, whereas
`disjoint_statuses_imply_bipartite`, `disjoint_statuses_imply_bipartite'` and
every other theorem here report `does not depend on any axioms`.  Do not quote
this corollary in support of the file's axiom-free claim. -/
theorem disjoint_statuses_imply_bipartite_classical
    (hne : ∀ e, ∃ s, S e s)
    (hdisj : ∀ e e' s, Adj e e' → S e s → S e' s → False) :
    Bipartite Adj :=
  disjoint_statuses_imply_bipartite Adj S hne hdisj
    (fun e => Classical.propDecidable (S e Status.hooking))

end Inference

/-! ## Non-vacuity

Everything above would be worthless if the hypotheses were contradictory, or if
`Adj` were forced to be empty, or if `Bipartite` held of every graph.  The three
theorems below rule out exactly those three failure modes, as Lean theorems. -/

namespace Example

/-- Three vertices: `u ~ v` is a genuine edge, `w` carries *both* statuses. -/
inductive Vtx where
  | u : Vtx
  | v : Vtx
  | w : Vtx
  deriving DecidableEq, Repr

-- The two tables below are `Bool`-valued and the corresponding propositions are
-- `... = true`.  This is only a technical convenience: a `Prop`-valued `match`
-- would drag in the `propext` axiom, and this way the whole file needs no axiom
-- whatsoever.

/-- Adjacency table of the example graph: the single edge `u ~ v`.
(The table is written out in full, with no wildcard patterns, because a
wildcard `match` compiles through an auxiliary matcher that uses `propext`.) -/
def exAdjB : Vtx → Vtx → Bool
  | .u, .u => false | .u, .v => true  | .u, .w => false
  | .v, .u => true  | .v, .v => false | .v, .w => false
  | .w, .u => false | .w, .v => false | .w, .w => false

/-- Adjacency of the example graph. -/
def exAdj (a b : Vtx) : Prop := exAdjB a b = true

/-- Status table: `S(u) = {hooking}`, `S(v) = {hooked}`, `S(w) = {hooking, hooked}`. -/
def exSB : Vtx → Status → Bool
  | .u, .hooking => true  | .u, .hooked => false
  | .v, .hooking => false | .v, .hooked => true
  | .w, .hooking => true  | .w, .hooked => true

/-- Status sets of the example graph. -/
def exS (e : Vtx) (s : Status) : Prop := exSB e s = true

theorem exNe : ∀ e, ∃ s, exS e s
  | .u => ⟨Status.hooking, rfl⟩
  | .v => ⟨Status.hooked, rfl⟩
  | .w => ⟨Status.hooking, rfl⟩

theorem exDisj : ∀ e e' s, exAdj e e' → exS e s → exS e' s → False := by
  intro e e' s h1 h2 h3
  cases e <;> cases e' <;> cases s <;>
    first
      | exact Bool.noConfusion h1
      | exact Bool.noConfusion h2
      | exact Bool.noConfusion h3

def exDec (e : Vtx) (s : Status) : Decidable (exS e s) :=
  inferInstanceAs (Decidable (exSB e s = true))

/-- **Non-vacuity 1: the hypotheses are consistent AND the graph has an edge.**
So `disjoint_statuses_imply_bipartite` is not a statement about the empty
relation. -/
theorem exHasEdge : exAdj Vtx.u Vtx.v := rfl

/-- The main theorem does apply to this model. -/
theorem bipartite : Bipartite exAdj :=
  disjoint_statuses_imply_bipartite exAdj exS exNe exDisj (fun e => exDec e Status.hooking)

/-- **Non-vacuity 2: a concrete both-status vertex, and it really is isolated.**
`w` realises `hooking` and `hooked`, and `isolated_of_both` yields that no edge
touches it. -/
theorem exW_both : exS Vtx.w Status.hooking ∧ exS Vtx.w Status.hooked :=
  ⟨rfl, rfl⟩

theorem exW_isolated : ∀ e', ¬ exAdj Vtx.w e' ∧ ¬ exAdj e' Vtx.w :=
  isolated_of_both exAdj exS exNe exDisj Vtx.w exW_both

/-- The edge of the example is genuinely bichromatic under the colouring built
by the main theorem: `opposite_of_adj` puts `u` on the hooking side and `v` on
the hooked side. -/
theorem exEdgeOpposite :
    StatusIs exS Vtx.u Status.hooking ∧ StatusIs exS Vtx.v Status.hooked := by
  cases opposite_of_adj exAdj exS exNe exDisj Vtx.u Vtx.v exHasEdge with
  | inl h => exact h
  | inr h => exact Bool.noConfusion h.1.1

/-- The triangle on `Vtx`. -/
def triAdj : Vtx → Vtx → Prop := fun a b => a ≠ b

instance triAdjDec (a b : Vtx) : Decidable (triAdj a b) :=
  inferInstanceAs (Decidable (a ≠ b))

/-- **Non-vacuity 3: `Bipartite` is not a trivial predicate.**
The triangle is not bipartite, so the conclusion of the main theorem has
content. -/
theorem tri_not_bipartite : ¬ Bipartite triAdj := by
  intro h
  cases h with
  | intro f hf =>
    have h1 : f Vtx.u ≠ f Vtx.v := hf Vtx.u Vtx.v (by decide)
    have h2 : f Vtx.v ≠ f Vtx.w := hf Vtx.v Vtx.w (by decide)
    have h3 : f Vtx.u ≠ f Vtx.w := hf Vtx.u Vtx.w (by decide)
    cases hu : f Vtx.u <;> cases hv : f Vtx.v <;> cases hw : f Vtx.w <;>
      rw [hu, hv] at h1 <;> rw [hv, hw] at h2 <;> rw [hu, hw] at h3 <;>
      first | exact h1 rfl | exact h2 rfl | exact h3 rfl

/-- Consequently the triangle cannot carry a nonempty, adjacent-disjoint status
assignment at all: the hypotheses of `A7` really do constrain the graph. -/
theorem tri_no_status_assignment :
    ¬ ∃ T : Vtx → Status → Prop,
        (∀ e, ∃ s, T e s) ∧
        (∀ e e' s, triAdj e e' → T e s → T e' s → False) := by
  intro h
  cases h with
  | intro T hT =>
    have h1 : T Vtx.u Status.hooking ∨ T Vtx.u Status.hooked := by
      cases hT.1 Vtx.u with
      | intro s hs => cases s with
        | hooking => exact Or.inl hs
        | hooked => exact Or.inr hs
    have h2 : T Vtx.v Status.hooking ∨ T Vtx.v Status.hooked := by
      cases hT.1 Vtx.v with
      | intro s hs => cases s with
        | hooking => exact Or.inl hs
        | hooked => exact Or.inr hs
    have h3 : T Vtx.w Status.hooking ∨ T Vtx.w Status.hooked := by
      cases hT.1 Vtx.w with
      | intro s hs => cases s with
        | hooking => exact Or.inl hs
        | hooked => exact Or.inr hs
    have huv : triAdj Vtx.u Vtx.v := by decide
    have hvw : triAdj Vtx.v Vtx.w := by decide
    have huw : triAdj Vtx.u Vtx.w := by decide
    cases h1 with
    | inl a =>
      cases h2 with
      | inl b => exact hT.2 Vtx.u Vtx.v Status.hooking huv a b
      | inr b =>
        cases h3 with
        | inl c => exact hT.2 Vtx.u Vtx.w Status.hooking huw a c
        | inr c => exact hT.2 Vtx.v Vtx.w Status.hooked hvw b c
    | inr a =>
      cases h2 with
      | inr b => exact hT.2 Vtx.u Vtx.v Status.hooked huv a b
      | inl b =>
        cases h3 with
        | inr c => exact hT.2 Vtx.u Vtx.w Status.hooked huw a c
        | inl c => exact hT.2 Vtx.v Vtx.w Status.hooking hvw b c

end Example

end Lemma7Bridge
end Heptagon
