/-
  EndgameDefs.lean

  Definitions for the finite 225-case endgame of the `f(7,7) = 38` argument.

  **Core Lean only — this file imports NOTHING.**  No Mathlib, no `axiom`, no
  `sorry`, no `native_decide`, no `unsafe`.

  SCOPE NOTE (read before believing anything).  Nothing geometric is proved
  here.  What is set up here is the purely finite combinatorial statement that
  the 225 surviving `(class_P, class_Q, graph)` combinations must satisfy if
  AKR Lemma 5 applies to them, so that `Endgame.lean` can kernel-check that all
  225 violate it.  The geometric content of AKR Lemma 5 itself, the
  classification of "avoiding" pairs, and the completeness of the 225-case list
  are all OUTSIDE this development.
-/

namespace Heptagon
namespace Endgame

/-! ## Side indices

Sides of each heptagon are indexed by `0, 1, ..., 6`.  We use `Nat` with
explicit `< 7` bounds rather than `Fin 7`: it keeps every decision procedure a
plain kernel reduction on `Nat` literals (which the Lean kernel accelerates),
and it makes the arithmetic `mod 7` completely explicit. -/

/-- The seven side indices. -/
def idx7 : List Nat := [0, 1, 2, 3, 4, 5, 6]

theorem mem_idx7 {k : Nat} : k ∈ idx7 ↔ k < 7 := by
  constructor
  · intro h; simp [idx7] at h; omega
  · intro h; simp [idx7]; omega

/-- `∀ k < 7, p k` from a `List.all` over `idx7`. -/
theorem all_idx7 {p : Nat → Bool} (h : idx7.all p = true) : ∀ k, k < 7 → p k = true := by
  intro k hk
  exact List.all_eq_true.mp h k (mem_idx7.mpr hk)

/-! ## Bitmask neighbourhoods

A neighbourhood of a side is stored as a 7-bit mask: bit `j` of the mask of
P-side `i` is set exactly when Q-side `j` is disjoint from P-side `i`, i.e.
exactly when `(p_i, q_j)` is an edge of the disjointness graph `G`. -/

/-- Bit `i` of `m`. -/
def bitAt (m i : Nat) : Bool := (m / 2 ^ i) % 2 == 1

theorem bitAt_zero (i : Nat) : bitAt 0 i = false := by
  simp [bitAt]

/-- Membership in the neighbourhood encoded by mask `m`. -/
def InMask (m i : Nat) : Prop := bitAt m i = true

/-- `i` lies in the set difference `mask a \ mask b`. -/
def InDiff (ma mb i : Nat) : Prop := bitAt ma i = true ∧ bitAt mb i = false

/-- Boolean version of `InDiff`. -/
def inDiffB (ma mb i : Nat) : Bool := bitAt ma i && !bitAt mb i

theorem inDiffB_iff (ma mb i : Nat) : inDiffB ma mb i = true ↔ InDiff ma mb i := by
  simp [inDiffB, InDiff]

/-- The number of set bits among bits `0 .. 6` of `m` (the degree of a side). -/
def deg (m : Nat) : Nat :=
  idx7.foldl (fun acc i => acc + (if bitAt m i then 1 else 0)) 0

/-- Transpose: the mask of Q-side `j`, i.e. the set of P-sides disjoint from it. -/
def transposeMask (M : Nat → Nat) (j : Nat) : Nat :=
  idx7.foldl (fun acc i => acc + (if bitAt (M i) j then 2 ^ i else 0)) 0

/-! ## Cyclic adjacency modulo 7 -/

/-- `x` and `y` are cyclically adjacent in `Z_7`, i.e. `y = x ± 1 (mod 7)`. -/
def CycAdj (x y : Nat) : Prop := (x + 1) % 7 = y % 7 ∨ (y + 1) % 7 = x % 7

/-- Boolean version of `CycAdj`. -/
def cycAdjB (x y : Nat) : Bool := ((x + 1) % 7 == y % 7) || ((y + 1) % 7 == x % 7)

theorem cycAdjB_iff (x y : Nat) : cycAdjB x y = true ↔ CycAdj x y := by
  simp [cycAdjB, CycAdj]

/-! ## The AKR Lemma 5 combinatorial requirement

AKR (Ackerman–Keszegh–Rote, DCG 68 (2022)) Lemma 5, as used by this project:

> If two sides `p_a, p_b` of `P` that are *consecutive or avoiding* lie in
> different connected components of the disjointness graph `G`, then there are
> two cyclically consecutive sides `q_i, q_{i'}` of `Q` (`i' = i ± 1 mod 7`)
> with `(p_a, q_i), (p_b, q_{i'}) ∈ E(G)` and `(p_a, q_{i'}), (p_b, q_i) ∉ E(G)`.

`AKR5Conclusion` below is that conclusion verbatim, and `AKR5Adjacent` is the
neighbourhood-difference form actually tested by the search code.  They are
proved equivalent in `akr5Conclusion_iff_adjacent`. -/

/-- The neighbourhood-difference form:
`∃ k ∈ N(p_a) \ N(p_b), ∃ k' ∈ N(p_b) \ N(p_a), k' = k ± 1 (mod 7)`. -/
def AKR5Adjacent (ma mb : Nat) : Prop :=
  ∃ k, k < 7 ∧ ∃ k', k' < 7 ∧ InDiff ma mb k ∧ InDiff mb ma k' ∧ CycAdj k k'

/-- Boolean version of `AKR5Adjacent`. -/
def akr5AdjB (ma mb : Nat) : Bool :=
  idx7.any fun k =>
    inDiffB ma mb k && idx7.any fun k' => inDiffB mb ma k' && cycAdjB k k'

theorem akr5AdjB_iff (ma mb : Nat) : akr5AdjB ma mb = true ↔ AKR5Adjacent ma mb := by
  constructor
  · intro h
    have h1 := List.any_eq_true.mp h
    match h1 with
    | ⟨k, hk, hk2⟩ =>
      have hk2' := Bool.and_eq_true .. |>.mp hk2
      have h2 := List.any_eq_true.mp hk2'.2
      match h2 with
      | ⟨k', hk', hk'2⟩ =>
        have hk'2' := Bool.and_eq_true .. |>.mp hk'2
        exact ⟨k, mem_idx7.mp hk, k', mem_idx7.mp hk',
               (inDiffB_iff ..).mp hk2'.1, (inDiffB_iff ..).mp hk'2'.1,
               (cycAdjB_iff ..).mp hk'2'.2⟩
  · intro h
    match h with
    | ⟨k, hk, k', hk', hd, hd', ha⟩ =>
      refine List.any_eq_true.mpr ⟨k, mem_idx7.mpr hk, ?_⟩
      refine Bool.and_eq_true .. |>.mpr ⟨(inDiffB_iff ..).mpr hd, ?_⟩
      refine List.any_eq_true.mpr ⟨k', mem_idx7.mpr hk', ?_⟩
      exact Bool.and_eq_true .. |>.mpr ⟨(inDiffB_iff ..).mpr hd', (cycAdjB_iff ..).mpr ha⟩

/-- The literal conclusion of AKR Lemma 5 for the pair of P-sides `a, b`,
where `M i` is the neighbourhood bitmask of P-side `i`:  there are two
cyclically consecutive Q-sides `i, i'` with `(p_a,q_i), (p_b,q_{i'}) ∈ E` and
`(p_a,q_{i'}), (p_b,q_i) ∉ E`. -/
def AKR5Conclusion (M : Nat → Nat) (a b : Nat) : Prop :=
  ∃ i, i < 7 ∧ ∃ i', i' < 7 ∧ CycAdj i i' ∧
    bitAt (M a) i = true ∧ bitAt (M b) i' = true ∧
    bitAt (M a) i' = false ∧ bitAt (M b) i = false

/-- **The bridge.**  AKR Lemma 5's conclusion for `(p_a, p_b)` is *exactly* the
neighbourhood-difference adjacency condition on `N(p_a)` and `N(p_b)`.  The
implication `→` is the direction the elimination needs; the converse shows the
filter is not a strict weakening of the lemma. -/
theorem akr5Conclusion_iff_adjacent (M : Nat → Nat) (a b : Nat) :
    AKR5Conclusion M a b ↔ AKR5Adjacent (M a) (M b) := by
  constructor
  · intro h
    match h with
    | ⟨i, hi, i', hi', hadj, h1, h2, h3, h4⟩ =>
      exact ⟨i, hi, i', hi', ⟨h1, h4⟩, ⟨h2, h3⟩, hadj⟩
  · intro h
    match h with
    | ⟨k, hk, k', hk', ⟨h1, h4⟩, ⟨h2, h3⟩, hadj⟩ =>
      exact ⟨k, hk, k', hk', hadj, h1, h2, h3, h4⟩

/-! ## Connectivity of the bipartite disjointness graph

Vertices are the 7 sides of `P` and the 7 sides of `Q`; `p_i ~ q_j` iff bit `j`
of `M i` is set.  We do *not* trust the `components_P` array stored in the
certificate: for each case a separator is supplied and the kernel checks that it
really is closed under adjacency, which is what makes the
"different components" claim a theorem rather than an assumption. -/

/-- A vertex of the bipartite disjointness graph. -/
inductive Vtx where
  | P : Nat → Vtx
  | Q : Nat → Vtx
  deriving DecidableEq, Repr

/-- Connectedness in the bipartite disjointness graph with P-side masks `M`.
Side indices are always `< 7`. -/
inductive Conn (M : Nat → Nat) : Vtx → Vtx → Prop where
  | refl (v : Vtx) : Conn M v v
  | stepPQ {u : Vtx} {i j : Nat} :
      Conn M u (Vtx.P i) → i < 7 → j < 7 → bitAt (M i) j = true → Conn M u (Vtx.Q j)
  | stepQP {u : Vtx} {i j : Nat} :
      Conn M u (Vtx.Q j) → i < 7 → j < 7 → bitAt (M i) j = true → Conn M u (Vtx.P i)

/-- Membership of a vertex in the set encoded by the pair of 7-bit masks
`(pm, qm)`. -/
def InSep (pm qm : Nat) : Vtx → Prop
  | Vtx.P i => bitAt pm i = true
  | Vtx.Q j => bitAt qm j = true

/-- `(pm, qm)` is closed under adjacency in the graph `M`. -/
def SepClosed (M : Nat → Nat) (pm qm : Nat) : Prop :=
  (∀ i, i < 7 → ∀ j, j < 7 → bitAt pm i = true → bitAt (M i) j = true → bitAt qm j = true) ∧
  (∀ i, i < 7 → ∀ j, j < 7 → bitAt qm j = true → bitAt (M i) j = true → bitAt pm i = true)

/-- Boolean version of `SepClosed`. -/
def sepClosedB (M : Nat → Nat) (pm qm : Nat) : Bool :=
  idx7.all fun i => idx7.all fun j =>
    (!(bitAt pm i && bitAt (M i) j) || bitAt qm j) &&
    (!(bitAt qm j && bitAt (M i) j) || bitAt pm i)

theorem sepClosed_of_sepClosedB {M : Nat → Nat} {pm qm : Nat}
    (h : sepClosedB M pm qm = true) : SepClosed M pm qm := by
  have key : ∀ i, i < 7 → ∀ j, j < 7 →
      ((!(bitAt pm i && bitAt (M i) j) || bitAt qm j) &&
       (!(bitAt qm j && bitAt (M i) j) || bitAt pm i)) = true := by
    intro i hi j hj
    exact all_idx7 (all_idx7 h i hi) j hj
  constructor
  · intro i hi j hj hp he
    have := key i hi j hj
    simp [hp, he] at this
    exact this
  · intro i hi j hj hq he
    have := key i hi j hj
    simp [hq, he] at this
    exact this

/-- Everything reachable from a vertex inside a closed set stays inside it. -/
theorem conn_mem_sep {M : Nat → Nat} {pm qm : Nat} (hc : SepClosed M pm qm)
    {u v : Vtx} (hu : InSep pm qm u) (h : Conn M u v) : InSep pm qm v := by
  induction h with
  | refl => exact hu
  | stepPQ _ hi hj he ih => exact hc.1 _ hi _ hj ih he
  | stepQP _ hi hj he ih => exact hc.2 _ hi _ hj ih he

/-- `Conn` is transitive. -/
theorem conn_trans {M : Nat → Nat} {u v w : Vtx}
    (h1 : Conn M u v) (h2 : Conn M v w) : Conn M u w := by
  induction h2 with
  | refl => exact h1
  | stepPQ _ hi hj he ih => exact Conn.stepPQ ih hi hj he
  | stepQP _ hi hj he ih => exact Conn.stepQP ih hi hj he

/-- `Conn` is symmetric. -/
theorem conn_symm {M : Nat → Nat} {u v : Vtx} (h : Conn M u v) : Conn M v u := by
  induction h with
  | refl => exact Conn.refl _
  | stepPQ _ hi hj he ih => exact conn_trans (Conn.stepQP (Conn.refl _) hi hj he) ih
  | stepQP _ hi hj he ih => exact conn_trans (Conn.stepPQ (Conn.refl _) hi hj he) ih

/-- A closed set containing `p_a` but not `p_b` certifies that `p_a` and `p_b`
lie in different connected components. -/
theorem not_conn_of_sep {M : Nat → Nat} {pm qm a b : Nat}
    (hc : SepClosed M pm qm) (ha : bitAt pm a = true) (hb : bitAt pm b = false) :
    ¬ Conn M (Vtx.P a) (Vtx.P b) := by
  intro h
  have : InSep pm qm (Vtx.P b) := conn_mem_sep hc (u := Vtx.P a) ha h
  simp [InSep, hb] at this

/-! ## Certificate records -/

/-- One entry of `data/certificates/final_elimination_225.json`, together with
one piece of *derived* data (`sepP`, `sepQ`) that the kernel re-checks. -/
structure Case where
  /-- `case_id` -/
  caseId : Nat
  /-- `class_P` -/
  classP : Nat
  /-- `class_Q` -/
  classQ : Nat
  /-- `graph.P_neighbourhood_bitmasks` (7 masks, 7 bits each) -/
  masks : List Nat
  /-- `graph.edges` -/
  edges : Nat
  /-- `graph.degree_sequence_P` -/
  degP : List Nat
  /-- `graph.degree_sequence_Q` -/
  degQ : List Nat
  /-- `graph.components_P` -/
  compP : List Nat
  /-- `graph.components_Q` -/
  compQ : List Nat
  /-- `witness.side`, encoded `0 = "P"`, `1 = "Q"` -/
  side : Nat
  /-- `witness.class_used` -/
  classUsed : Nat
  /-- `witness.pair[0]` -/
  pairI : Nat
  /-- `witness.pair[1]` -/
  pairJ : Nat
  /-- `witness.pair_kind == "avoiding"` -/
  avoiding : Bool
  /-- `witness.component_of_i` -/
  compOfI : Nat
  /-- `witness.component_of_j` -/
  compOfJ : Nat
  /-- `witness.N_i` -/
  Ni : List Nat
  /-- `witness.N_j` -/
  Nj : List Nat
  /-- `witness.A_i_minus_j` -/
  Aij : List Nat
  /-- `witness.B_j_minus_i` -/
  Bji : List Nat
  /-- number of entries of `witness.cyclic_adjacent_pairs_found` -/
  nCyc : Nat
  /-- DERIVED, not from the JSON: P-part of the connected component of `pairI`.
  Its correctness is re-checked by the kernel (`sepClosedB`). -/
  sepP : Nat
  /-- DERIVED, not from the JSON: Q-part of the connected component of `pairI`. -/
  sepQ : Nat
  deriving DecidableEq, Repr, Inhabited

namespace Case

/-- The P-side neighbourhood mask function of a case (`0` outside `0..6`). -/
def M (c : Case) : Nat → Nat := fun i => c.masks.getD i 0

/-- The Q-side neighbourhood mask function of a case. -/
def MQ (c : Case) : Nat → Nat := fun j => transposeMask c.M j

/-- The canonical key of a record: `class_P`, `class_Q` and the graph. -/
def key (c : Case) : List Nat := c.classP :: c.classQ :: c.masks

end Case

/-! ## Duplicate detection -/

def memKey (x : List Nat) : List (List Nat) → Bool
  | [] => false
  | y :: ys => (x == y) || memKey x ys

def hasDupKey : List (List Nat) → Bool
  | [] => false
  | x :: xs => memKey x xs || hasDupKey xs

/-- `Distinct l` : no element of `l` occurs twice. -/
def Distinct : List (List Nat) → Prop
  | [] => True
  | x :: xs => (∀ y ∈ xs, y ≠ x) ∧ Distinct xs

theorem memKey_false {x : List Nat} : ∀ {l : List (List Nat)},
    memKey x l = false → ∀ y ∈ l, y ≠ x
  | [], _ => by intro y hy; cases hy
  | z :: zs, h => by
      simp [memKey] at h
      intro y hy
      cases hy with
      | head => intro hEq; exact h.1 (by rw [← hEq])
      | tail _ hy' => exact memKey_false h.2 y hy'

theorem distinct_of_hasDupKey : ∀ {l : List (List Nat)},
    hasDupKey l = false → Distinct l
  | [], _ => trivial
  | _ :: _, h => by
      simp [hasDupKey] at h
      exact ⟨memKey_false h.1, distinct_of_hasDupKey h.2⟩

end Endgame
end Heptagon
