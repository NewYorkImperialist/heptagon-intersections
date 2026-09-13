/-
  CernyL2Interface.lean

  The code-to-mathematics bridge for the {\v C}ern{\'y} et al. (2003) Lemma 2
  filter (`C2` in `paper/proof-manifest.tex` §4.3 / the `C2` subsection).

  **Core Lean only — this file imports NOTHING.**  No Mathlib, no `axiom`, no
  `sorry`, no `native_decide`, no `unsafe`, no `partial`.

  ---------------------------------------------------------------------------
  SCOPE NOTE (read before believing anything).

  NOTHING geometric is proved here.  In particular this file says nothing about
  polygons, triangles, `D ∈ int(ABC)`, order types, or why the configuration
  below is impossible.  {\v C}ern{\'y} Lemma 2 itself remains an external
  mathematical dependency of the project.

  What IS established here is one thing only: that the *computational filter
  predicate* actually implemented in
      `python/elimination/audit_enum.py`      (function `L2_ok`)
      `independent/implementation_b/reduction.cpp` (function `l2_ok`)
  fires exactly when the combinatorial pattern described in the manifest is
  present, namely:

    given four consecutive sides of P (a "window" w, w+1, w+2, w+3 mod 7) and
    four sides of Q, the induced subgraph of the disjointness graph on those
    4+4 sides is EXACTLY a perfect matching.

  The word "exactly" is load-bearing, and the equivalence proved below makes
  both halves of it explicit:
    (a) all four matching edges are PRESENT;
    (b) all twelve non-matching cross pairs are ABSENT.
  A perfect matching PLUS an extra edge is NOT the forbidden pattern, and
  `test_extraEdge_notDetected` below is a kernel-checked witness that the
  predicate indeed does not fire on such a configuration.
  ---------------------------------------------------------------------------
-/

set_option autoImplicit false

namespace Heptagon
namespace CernyL2

/-! ## Conventions

Side indices are `Nat` with explicit `< 7` bounds, and neighbourhoods are 7-bit
masks, exactly as in `EndgameDefs.lean`: bit `j` of the mask of P-side `i` is
set precisely when `(p_i, q_j)` is an edge of the disjointness graph `G`. -/

/-- The seven side indices. -/
def idx7 : List Nat := [0, 1, 2, 3, 4, 5, 6]

theorem mem_idx7 {k : Nat} (h : k < 7) : k ∈ idx7 := by
  simp only [idx7, List.mem_cons, List.not_mem_nil, or_false]
  omega

theorem lt_of_mem_idx7 {k : Nat} (h : k ∈ idx7) : k < 7 := by
  simp only [idx7, List.mem_cons, List.not_mem_nil, or_false] at h
  omega

/-- `∀ k < 7, p k` from a `List.all` over `idx7`. -/
theorem all_idx7 {p : Nat → Bool} (h : idx7.all p = true) : ∀ k, k < 7 → p k = true :=
  fun k hk => List.all_eq_true.mp h k (mem_idx7 hk)

/-- Bit `i` of `m` (same definition as `EndgameDefs.bitAt`). -/
def bitAt (m i : Nat) : Bool := (m / 2 ^ i) % 2 == 1

/-- `(p_i, q_j)` is an edge of the disjointness graph encoded by the mask
family `N`. -/
def Edge (N : Nat → Nat) (i j : Nat) : Prop := bitAt (N i) j = true

/-- Side `t` of the window based at `w`: the code's `(w + t) % 7`. -/
def sideAt (w t : Nat) : Nat := (w + t) % 7

/-- The `t`-th chosen Q-side of a 4-tuple `(j0, j1, j2, j3)`. -/
def qAt (j0 j1 j2 j3 t : Nat) : Nat :=
  if t = 0 then j0 else if t = 1 then j1 else if t = 2 then j2 else j3

/-- Case analysis on `t < 4`. -/
theorem lt4_cases {p : Nat → Prop} (h0 : p 0) (h1 : p 1) (h2 : p 2) (h3 : p 3) :
    ∀ t, t < 4 → p t
  | 0, _ => h0
  | 1, _ => h1
  | 2, _ => h2
  | 3, _ => h3
  | (_ + 4), h => absurd h (by omega)

/-! ## The mathematical pattern

`IsExactInducedMatching N w j0 j1 j2 j3` says: the four Q-sides `j0..j3` are
four *distinct* legal side indices, and the induced `4 × 4` bipartite block
between window sides `(w, w+1, w+2, w+3)` and `(j0, j1, j2, j3)` is *exactly*
the identity perfect matching.  The single `↔` clause carries both halves:
`t = u` gives (a) the four matching edges are present, `t ≠ u` gives (b) the
twelve cross pairs are absent.

Fixing the pairing to be the identity costs no generality: `l2FiresB` below
quantifies over *ordered* 4-tuples `(j0, j1, j2, j3) ∈ {0..6}^4`, so every
bijection between the window sides and the chosen Q-sides is reached by some
tuple.  This matches both implementations (C++ enumerates ordered systems of
distinct representatives; Python takes an unordered 4-subset `qs` and checks
that the induced map is a bijection onto it). -/
def IsExactInducedMatching (N : Nat → Nat) (w j0 j1 j2 j3 : Nat) : Prop :=
  (∀ u, u < 4 → qAt j0 j1 j2 j3 u < 7) ∧
  (∀ t, t < 4 → ∀ u, u < 4 → t ≠ u → qAt j0 j1 j2 j3 t ≠ qAt j0 j1 j2 j3 u) ∧
  (∀ t, t < 4 → ∀ u, u < 4 → (Edge N (sideAt w t) (qAt j0 j1 j2 j3 u) ↔ t = u))

/-! ## The computational filter predicate

`degIn4 m j0 j1 j2 j3` is the code's `pc(N[s] & S)` where `S` is the 7-bit mask
`(1 << j0) | (1 << j1) | (1 << j2) | (1 << j3)`.  Because the search enforces
`j0, j1, j2, j3` pairwise distinct *before* this quantity is ever consulted
(C++ lines 201-209; Python `dq={j:0 for j in qs}` over a 4-element combination),
the population count of `N[s] & S` is exactly the sum of the four indicator
bits written out below. -/
def degIn4 (m j0 j1 j2 j3 : Nat) : Nat :=
  (if bitAt m j0 then 1 else 0) + (if bitAt m j1 then 1 else 0) +
  (if bitAt m j2 then 1 else 0) + (if bitAt m j3 then 1 else 0)

/-- The inner test of `l2_ok` / `L2_ok`: distinct representatives `j0..j3`, each
adjacent to its own window side, with every window side having induced degree
exactly one inside `{j0, j1, j2, j3}`. -/
def matchAtB (N : Nat → Nat) (w j0 j1 j2 j3 : Nat) : Bool :=
  (j0 != j1) && (j0 != j2) && (j0 != j3) && (j1 != j2) && (j1 != j3) && (j2 != j3) &&
  bitAt (N (sideAt w 0)) j0 &&
  bitAt (N (sideAt w 1)) j1 &&
  bitAt (N (sideAt w 2)) j2 &&
  bitAt (N (sideAt w 3)) j3 &&
  (degIn4 (N (sideAt w 0)) j0 j1 j2 j3 == 1) &&
  (degIn4 (N (sideAt w 1)) j0 j1 j2 j3 == 1) &&
  (degIn4 (N (sideAt w 2)) j0 j1 j2 j3 == 1) &&
  (degIn4 (N (sideAt w 3)) j0 j1 j2 j3 == 1)

/-- The filter fires at window `w`: some 4-tuple of Q-sides realises the
forbidden pattern.  This is the body of the `for (int w : p.windows)` loop. -/
def l2FiresB (N : Nat → Nat) (w : Nat) : Bool :=
  idx7.any fun j0 => idx7.any fun j1 => idx7.any fun j2 => idx7.any fun j3 =>
    matchAtB N w j0 j1 j2 j3

/-- `l2_ok` / `L2_ok` itself: the graph survives when no Lemma-2 window `w ∈ W`
fires. -/
def l2OkB (N : Nat → Nat) (W : List Nat) : Bool :=
  W.all fun w => !l2FiresB N w

/-! ## One-hot arithmetic -/

theorem degIn4_one {m j0 j1 j2 j3 : Nat} (h : degIn4 m j0 j1 j2 j3 = 1) :
    (bitAt m j0 = true → bitAt m j1 = false ∧ bitAt m j2 = false ∧ bitAt m j3 = false) ∧
    (bitAt m j1 = true → bitAt m j0 = false ∧ bitAt m j2 = false ∧ bitAt m j3 = false) ∧
    (bitAt m j2 = true → bitAt m j0 = false ∧ bitAt m j1 = false ∧ bitAt m j3 = false) ∧
    (bitAt m j3 = true → bitAt m j0 = false ∧ bitAt m j1 = false ∧ bitAt m j2 = false) := by
  unfold degIn4 at h
  cases h0 : bitAt m j0 <;> cases h1 : bitAt m j1 <;> cases h2 : bitAt m j2 <;>
    cases h3 : bitAt m j3 <;> simp_all

/-! ## The interface theorem -/

/-- **Interface theorem.**  The computational filter fires at window `w` if and
only if there is a 4-tuple of Q-sides whose induced block with the window is
*exactly* a perfect matching — all four matching edges present, all twelve
cross pairs absent. -/
theorem l2FiresB_iff (N : Nat → Nat) (w : Nat) :
    l2FiresB N w = true ↔ ∃ j0 j1 j2 j3, IsExactInducedMatching N w j0 j1 j2 j3 := by
  constructor
  · intro h
    simp only [l2FiresB, List.any_eq_true] at h
    obtain ⟨j0, hj0, h⟩ := h
    obtain ⟨j1, hj1, h⟩ := h
    obtain ⟨j2, hj2, h⟩ := h
    obtain ⟨j3, hj3, h⟩ := h
    refine ⟨j0, j1, j2, j3, ?_, ?_, ?_⟩
    · exact lt4_cases (lt_of_mem_idx7 hj0) (lt_of_mem_idx7 hj1) (lt_of_mem_idx7 hj2)
        (lt_of_mem_idx7 hj3)
    · simp only [matchAtB, Bool.and_eq_true, bne_iff_ne, ne_eq, beq_iff_eq] at h
      obtain ⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨n01, n02⟩, n03⟩, n12⟩, n13⟩, n23⟩, _⟩, _⟩, _⟩, _⟩, _⟩, _⟩, _⟩, _⟩ := h
      refine lt4_cases ?_ ?_ ?_ ?_ <;>
        refine lt4_cases ?_ ?_ ?_ ?_ <;>
          intro hne <;>
            first
                | exact absurd rfl hne
                | exact n01 | exact n02 | exact n03 | exact n12 | exact n13 | exact n23
                | exact fun c => n01 c.symm | exact fun c => n02 c.symm
                | exact fun c => n03 c.symm | exact fun c => n12 c.symm
                | exact fun c => n13 c.symm | exact fun c => n23 c.symm
    · simp only [matchAtB, Bool.and_eq_true, bne_iff_ne, ne_eq, beq_iff_eq] at h
      obtain ⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨_, _⟩, _⟩, _⟩, _⟩, _⟩, e0⟩, e1⟩, e2⟩, e3⟩, d0⟩, d1⟩, d2⟩, d3⟩ := h
      obtain ⟨f0, -, -, -⟩ := degIn4_one d0
      obtain ⟨-, f1, -, -⟩ := degIn4_one d1
      obtain ⟨-, -, f2, -⟩ := degIn4_one d2
      obtain ⟨-, -, -, f3⟩ := degIn4_one d3
      obtain ⟨a01, a02, a03⟩ := f0 e0
      obtain ⟨a10, a12, a13⟩ := f1 e1
      obtain ⟨a20, a21, a23⟩ := f2 e2
      obtain ⟨a30, a31, a32⟩ := f3 e3
      refine lt4_cases ?_ ?_ ?_ ?_ <;> refine lt4_cases ?_ ?_ ?_ ?_ <;>
        simp [Edge, qAt, e0, e1, e2, e3,
          a01, a02, a03, a10, a12, a13, a20, a21, a23, a30, a31, a32]
  · intro h
    obtain ⟨j0, j1, j2, j3, hb, hd, he⟩ := h
    have b0 : j0 < 7 := hb 0 (by omega)
    have b1 : j1 < 7 := hb 1 (by omega)
    have b2 : j2 < 7 := hb 2 (by omega)
    have b3 : j3 < 7 := hb 3 (by omega)
    -- (a) the four matching edges are present
    have e0 : bitAt (N (sideAt w 0)) j0 = true := (he 0 (by omega) 0 (by omega)).mpr rfl
    have e1 : bitAt (N (sideAt w 1)) j1 = true := (he 1 (by omega) 1 (by omega)).mpr rfl
    have e2 : bitAt (N (sideAt w 2)) j2 = true := (he 2 (by omega) 2 (by omega)).mpr rfl
    have e3 : bitAt (N (sideAt w 3)) j3 = true := (he 3 (by omega) 3 (by omega)).mpr rfl
    -- (b) the twelve cross pairs are absent
    have a : ∀ t, t < 4 → ∀ u, u < 4 → t ≠ u →
        bitAt (N (sideAt w t)) (qAt j0 j1 j2 j3 u) = false := by
      intro t ht u hu htu
      have hmp := (he t ht u hu).mp
      unfold Edge at hmp
      cases hx : bitAt (N (sideAt w t)) (qAt j0 j1 j2 j3 u) with
      | false => rfl
      | true => exact absurd (hmp hx) htu
    have a01 : bitAt (N (sideAt w 0)) j1 = false := a 0 (by omega) 1 (by omega) (by omega)
    have a02 : bitAt (N (sideAt w 0)) j2 = false := a 0 (by omega) 2 (by omega) (by omega)
    have a03 : bitAt (N (sideAt w 0)) j3 = false := a 0 (by omega) 3 (by omega) (by omega)
    have a10 : bitAt (N (sideAt w 1)) j0 = false := a 1 (by omega) 0 (by omega) (by omega)
    have a12 : bitAt (N (sideAt w 1)) j2 = false := a 1 (by omega) 2 (by omega) (by omega)
    have a13 : bitAt (N (sideAt w 1)) j3 = false := a 1 (by omega) 3 (by omega) (by omega)
    have a20 : bitAt (N (sideAt w 2)) j0 = false := a 2 (by omega) 0 (by omega) (by omega)
    have a21 : bitAt (N (sideAt w 2)) j1 = false := a 2 (by omega) 1 (by omega) (by omega)
    have a23 : bitAt (N (sideAt w 2)) j3 = false := a 2 (by omega) 3 (by omega) (by omega)
    have a30 : bitAt (N (sideAt w 3)) j0 = false := a 3 (by omega) 0 (by omega) (by omega)
    have a31 : bitAt (N (sideAt w 3)) j1 = false := a 3 (by omega) 1 (by omega) (by omega)
    have a32 : bitAt (N (sideAt w 3)) j2 = false := a 3 (by omega) 2 (by omega) (by omega)
    -- four distinct Q-sides
    have n01 : j0 ≠ j1 := hd 0 (by omega) 1 (by omega) (by omega)
    have n02 : j0 ≠ j2 := hd 0 (by omega) 2 (by omega) (by omega)
    have n03 : j0 ≠ j3 := hd 0 (by omega) 3 (by omega) (by omega)
    have n12 : j1 ≠ j2 := hd 1 (by omega) 2 (by omega) (by omega)
    have n13 : j1 ≠ j3 := hd 1 (by omega) 3 (by omega) (by omega)
    have n23 : j2 ≠ j3 := hd 2 (by omega) 3 (by omega) (by omega)
    refine List.any_eq_true.mpr ⟨j0, mem_idx7 b0, List.any_eq_true.mpr ⟨j1, mem_idx7 b1,
      List.any_eq_true.mpr ⟨j2, mem_idx7 b2, List.any_eq_true.mpr ⟨j3, mem_idx7 b3, ?_⟩⟩⟩⟩
    simp [matchAtB, degIn4, e0, e1, e2, e3,
      a01, a02, a03, a10, a12, a13, a20, a21, a23, a30, a31, a32, n01, n02, n03, n12, n13, n23]

/-- **Interface theorem, `l2_ok` form.**  The survival test implemented by
`L2_ok` (Python) and `l2_ok` (C++) holds exactly when no Lemma-2 window of the
class carries an exact induced perfect matching. -/
theorem l2OkB_iff (N : Nat → Nat) (W : List Nat) :
    l2OkB N W = true ↔ ∀ w ∈ W, ¬ ∃ j0 j1 j2 j3, IsExactInducedMatching N w j0 j1 j2 j3 := by
  constructor
  · intro h w hw hc
    have h1 : (!l2FiresB N w) = true := List.all_eq_true.mp h w hw
    rw [(l2FiresB_iff N w).mpr hc] at h1
    exact Bool.noConfusion h1
  · intro h
    refine List.all_eq_true.mpr ?_
    intro w hw
    have hf : l2FiresB N w = false := by
      cases hx : l2FiresB N w with
      | false => rfl
      | true => exact absurd ((l2FiresB_iff N w).mp hx) (h w hw)
    rw [hf]; rfl

/-! ## Finite tests

`ofList l` reads P-side neighbourhood masks off a list. -/

def ofList (l : List Nat) : Nat → Nat := fun i => l.getD i 0

/-- POSITIVE.  Sides `0,1,2,3` of P are matched to Q-sides `0,1,2,3`
respectively, and to nothing else: an exact induced perfect matching. -/
def Npos : Nat → Nat := ofList [1, 2, 4, 8, 0, 0, 0]

/-- POSITIVE, wrapping window.  The same matching placed on the window
`5, 6, 0, 1`, to exercise the `mod 7` arithmetic. -/
def Nwrap : Nat → Nat := ofList [4, 8, 0, 0, 0, 1, 2]

/-- NEGATIVE (the load-bearing case).  `Npos` PLUS one extra edge
`(p_0, q_1)`: a perfect matching *plus* an extra edge.  Not forbidden. -/
def Nextra : Nat → Nat := ofList [1 + 2, 2, 4, 8, 0, 0, 0]

/-- POSITIVE, discriminating.  `Npos` plus an extra edge `(p_0, q_4)` that lies
*outside* the chosen block `{q_0, q_1, q_2, q_3}`.  The forbidden pattern is a
property of the INDUCED subgraph, so this must still be detected — which shows
`test_extraEdge_notDetected` is genuinely about the extra edge landing inside
the block, not about `p_0` merely having degree 2. -/
def Noutside : Nat → Nat := ofList [1 + 16, 2, 4, 8, 0, 0, 0]

/-- NEGATIVE.  `Npos` with the matching edge `(p_3, q_3)` deleted. -/
def Nmissing : Nat → Nat := ofList [1, 2, 4, 0, 0, 0, 0]

/-- NEGATIVE.  A non-injective assignment: `p_0` and `p_1` both see only `q_0`,
so no system of distinct representatives exists. -/
def Ndup : Nat → Nat := ofList [1, 1, 4, 8, 0, 0, 0]

/-- The filter fires on the exact induced perfect matching. -/
theorem test_matching_detected : l2FiresB Npos 0 = true := by decide

/-- ... and therefore the pattern really is there, in mathematical form. -/
theorem test_matching_pattern :
    ∃ j0 j1 j2 j3, IsExactInducedMatching Npos 0 j0 j1 j2 j3 :=
  (l2FiresB_iff Npos 0).mp test_matching_detected

/-- The wrapping window `5, 6, 0, 1` is detected too. -/
theorem test_wrap_detected : l2FiresB Nwrap 5 = true := by decide

theorem test_wrap_pattern :
    ∃ j0 j1 j2 j3, IsExactInducedMatching Nwrap 5 j0 j1 j2 j3 :=
  (l2FiresB_iff Nwrap 5).mp test_wrap_detected

/-- **THE LOAD-BEARING NEGATIVE TEST.**  A perfect matching PLUS an extra edge
is NOT the forbidden configuration, and the filter does not fire on it — at
window `0`, nor at any other window. -/
theorem test_extraEdge_notDetected : idx7.all (fun w => !l2FiresB Nextra w) = true := by decide

/-- The same statement in mathematical form: no window of `Nextra` carries an
exact induced perfect matching.  Adding an edge to a forbidden block makes it
un-forbidden. -/
theorem test_extraEdge_noPattern :
    ∀ w, w < 7 → ¬ ∃ j0 j1 j2 j3, IsExactInducedMatching Nextra w j0 j1 j2 j3 := by
  intro w hw hc
  have h := all_idx7 test_extraEdge_notDetected w hw
  rw [(l2FiresB_iff Nextra w).mpr hc] at h
  exact Bool.noConfusion h

/-- `l2_ok` therefore accepts `Nextra` for every possible window profile. -/
theorem test_extraEdge_l2Ok : l2OkB Nextra idx7 = true := by decide

/-- An edge leaving the block does not destroy the induced pattern. -/
theorem test_outsideEdge_detected : l2FiresB Noutside 0 = true := by decide

theorem test_outsideEdge_pattern :
    ∃ j0 j1 j2 j3, IsExactInducedMatching Noutside 0 j0 j1 j2 j3 :=
  (l2FiresB_iff Noutside 0).mp test_outsideEdge_detected

/-- NEGATIVE: deleting a matching edge also removes the pattern. -/
theorem test_missingEdge_notDetected : idx7.all (fun w => !l2FiresB Nmissing w) = true := by decide

/-- NEGATIVE: a non-injective assignment is not a perfect matching. -/
theorem test_dup_notDetected : idx7.all (fun w => !l2FiresB Ndup w) = true := by decide

/-- Sanity: the interface theorem is not vacuous on the positive side — the
existential really is inhabited by `(0, 1, 2, 3)`. -/
theorem test_witness_explicit : IsExactInducedMatching Npos 0 0 1 2 3 := by
  refine ⟨?_, ?_, ?_⟩
  · exact lt4_cases (by decide) (by decide) (by decide) (by decide)
  · refine lt4_cases ?_ ?_ ?_ ?_ <;> refine lt4_cases ?_ ?_ ?_ ?_ <;> intro h <;> revert h <;> decide
  · refine lt4_cases ?_ ?_ ?_ ?_ <;> refine lt4_cases ?_ ?_ ?_ ?_ <;>
      exact Iff.of_eq (by unfold Edge; decide)

end CernyL2
end Heptagon
