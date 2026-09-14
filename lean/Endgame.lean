/-
  Endgame.lean

  The finite 225-case endgame of the `f(7,7) = 38` argument, kernel-checked.

  **Core Lean only** — the only `import` is the project's own `EndgameData`,
  which imports only `EndgameDefs`, which imports nothing at all.  No Mathlib,
  no `axiom`, no `sorry`, no `unsafe`, no `native_decide`.  Every proof below is
  an ordinary `decide`/`rfl`, i.e. a kernel reduction.

  ---------------------------------------------------------------------------
  WHAT IS AND IS NOT PROVED HERE  (read this before believing anything)
  ---------------------------------------------------------------------------

  THIS FILE PROVES THEOREMS ABOUT A STORED CERTIFICATE, NOT ABOUT POLYGONS.
  No theorem statement below mentions a polygon, a point or a coordinate; the
  objects quantified over are `Nat`s, `List Nat`s and `Case` records.
  `certificates` is a list of 225 such records, transcribed from
  `data/certificates/final_elimination_225.json` by `gen_endgame_data.py`.
  Every theorem below is a statement about that list of records.

  VERIFIED IN THE KERNEL, for each of the 225 records:

  (V1) COMPONENT SEPARATION.  The two P-sides of the stored pair lie in
       different connected components of the bipartite disjointness graph
       encoded by the record's bitmasks
       (`all_225_pairs_in_different_components`).  This is genuinely
       recomputed: the certificate's own `components_P` array is NOT trusted;
       instead the generated data carries a vertex set `(sepP, sepQ)` and the
       kernel checks that it is closed under adjacency, contains `p_pairI` and
       omits `p_pairJ`.  `not_conn_of_sep` turns that into a disconnection
       proof.  This is the separator argument, run in-kernel.

  (V2) FAILURE OF THE AKR-L5 ADJACENCY CONCLUSION.  For the stored pair, the
       conclusion of AKR Lemma 5 is false
       (`all_225_cases_fail_AKR5_conclusion`, equivalently
       `all_225_cases_fail_AKR5_requirement`): there is no pair of cyclically
       consecutive Q-sides positioned as the lemma requires.

  (V3) Bookkeeping: 225 records, `case_id`s `0..224`, no two records sharing the
       canonical key `(class_P, class_Q, graph)`, well-formed 7-bit masks, 9
       edges and degree sequence `(2,2,1,1,1,1,1)` on both sides recomputed
       from the masks, and the internal consistency of the stored witness
       fields against the masks.

  NOT ESTABLISHED HERE.  In particular, the following are NOT theorems of this
  development and must not be reported as such:

  (N1) THE GEOMETRIC *AVOIDING* STATUS OF THE STORED SIDE PAIR.
       `Case.avoiding` is a STORED BOOLEAN FLAG copied out of the JSON field
       `witness.pair_kind == "avoiding"`.  `witnessConsistent` merely checks
       that this Boolean is `true`; it is not, and cannot be, a proof of
       anything geometric.  "Avoiding" is an order-type notion about two sides
       of a polygon, and no polygon exists in this file.  What IS recomputed is
       only the necessary COMBINATORIAL part: that the two indices are `< 7`,
       distinct, and not cyclically consecutive.  A record whose flag was wrong
       would sail through every theorem below.

  (N2) THE CORRESPONDENCE BETWEEN EXCEPTIONAL-CLASS PROFILES AND ACTUAL
       POLYGONS.  `class_P` and `class_Q` are opaque `Nat` labels here.
       Nothing relates them to exceptional simple 7-gons, to the 14-entry
       classification table, or to any geometric object; nothing says that a
       surviving pair of heptagons must have a profile appearing in this list.

  (N3) AKR LEMMA 5 ITSELF.  It is an external published geometric lemma.  Its
       conclusion is *formalised* here (`AKR5Conclusion`) but never derived, and
       the lemma is never assumed as an `axiom` either.

  (N4) COMPLETENESS OF THE 225-CASE LIST.  That rests entirely on the
       unformalised exhaustive enumeration upstream.

  (N5) ANY GEOMETRY WHATSOEVER: heptagons, sides, crossings, chirotopes,
       realisability.

  So this file discharges exactly one link of the chain: *given* the certificate
  data, *given* that the stored `avoiding` flags are geometrically correct, and
  *given* AKR Lemma 5, all 225 remaining cases die.

  ---------------------------------------------------------------------------
  THE FUTURE INTERFACE: what it would take to make this a theorem about polygons
  ---------------------------------------------------------------------------

  The results below would become an impossibility theorem of the shape

      theorem no_exceptional_survivor (K : Config) : ¬ Survives K

  once the following were supplied.  This is ONE sufficient route, not the only
  conceivable one; and NONE of it is built here.  What follows is a
  specification of missing work, not a claim about it.  The file names are those
  of `docs/lean-architecture.md`, none of which exist yet.

  (I1) A TYPE OF CONFIGURATIONS.  `Config`: a pair of simple 7-gons in general
       position, at the orientation-predicate level already used by
       `LowerBound.lean`.  Supplied by: `Model.lean` (does not exist).

  (I2) THE ABSTRACTION MAP AND ITS CORRECTNESS.
           `toMasks : Config -> (Nat -> Nat)`
           `toMasks_spec : forall K i j, i < 7 -> j < 7 ->
               (bitAt (toMasks K i) j = true <-> Disjoint (side P i) (side Q j))`
       i.e. bit `j` of mask `i` really encodes disjointness of the two closed
       sides.  This is the only bridge from geometry to the bitmasks this file
       manipulates.  Supplied by: `Model.lean`.

  (I3) THE GEOMETRIC PREDICATE BEHIND (N1), AND A THEOREM DISCHARGING THE FLAG.
           `Avoiding : Config -> Nat -> Nat -> Prop`     (order-type notion)
           `avoiding_of_flag : forall K c, ProfileOf K = c -> c.avoiding = true
                                 -> Avoiding K c.pairI c.pairJ`
       THIS IS THE HARD ONE, and it is exactly what (N1) says is missing.  It
       cannot be proved from the flag: the flag must be re-derived from the
       exceptional class of `K`, since that is where the Python pipeline gets
       it.  Supplied by: `Classification.lean` + `Profiles.lean`.

  (I4) AKR LEMMA 5, AS AN IMPORTED STATEMENT (honestly flagged as an `axiom`,
       or proved):
           `akr5 : forall K a b, a < 7 -> b < 7 ->
               (CycAdj a b \/ Avoiding K a b) ->
               ~ Conn (toMasks K) (Vtx.P a) (Vtx.P b) ->
               AKR5Conclusion (toMasks K) a b`
       Supplied by: `Imported.lean` (does not exist).

  (I5) THE PROFILE MAP AND COMPLETENESS — the fix for (N2) and (N4):
           `ProfileOf : Config -> Case`   (class labels + bitmasks, canonicalised)
           `profile_complete : forall K, Survives K ->
               exists c, c IN certificates /\ ProfileOf K = c`
       together with invariance of everything above under the dihedral
       relabelling used to canonicalise profiles.  This is the formalised
       counterpart of the 13,003,620-graph enumeration and is by far the
       largest missing piece.  Supplied by: `Elimination.lean` (does not exist).

  GIVEN (I1)-(I5) the assembly is short and purely logical, and uses this file
  unchanged: take `K` with `Survives K`; (I5) gives a record `c`; rewriting
  along `ProfileOf K = c` turns `all_225_pairs_in_different_components c` into
  disconnection of `p_pairI`, `p_pairJ` in `toMasks K`;
  `all_witnesses_consistent c` gives `pairI != pairJ` and `!cycAdjB pairI pairJ`
  together with `c.avoiding = true`, which (I3) upgrades to
  `Avoiding K c.pairI c.pairJ`; (I4) then forces
  `AKR5Conclusion (toMasks K) c.pairI c.pairJ`, contradicting
  `all_225_cases_fail_AKR5_conclusion c`.  Hence `¬ Survives K`.

  The point of writing the interface out is that it makes the two gaps explicit
  and localised: (I3) is where the `avoiding` flag stops being a flag, and (I5)
  is where the 225-case list stops being a list someone handed us.
-/
import EndgameData

set_option maxRecDepth 100000
set_option linter.unusedVariables false

namespace Heptagon
namespace Endgame

/-! ## Extraction helper -/

theorem of_all {p : Case → Bool} (h : certificates.all p = true) :
    ∀ c ∈ certificates, p c = true :=
  fun c hc => List.all_eq_true.mp h c hc

/-! ## Basic shape of the certificate list -/

/-- There are exactly 225 records. -/
theorem card_certificates : certificates.length = 225 := by decide

/-- Every record stores exactly 7 neighbourhood bitmasks, each a 7-bit mask. -/
def masksWellFormed (c : Case) : Bool :=
  (c.masks.length == 7) && idx7.all fun i => c.masks.getD i 0 < 128

theorem masks_well_formed : ∀ c ∈ certificates, masksWellFormed c = true :=
  of_all (by decide)

/-- `case_id`s are `0, 1, ..., 224` in order. -/
theorem case_ids_are_range :
    certificates.map Case.caseId = (List.range 225) := by decide

/-! ## No duplicate records

The canonical key of a record is `(class_P, class_Q, graph)`, encoded as the
list `class_P :: class_Q :: masks`. -/

/-- No two of the 225 records share a canonical key. -/
theorem keys_distinct : Distinct (certificates.map Case.key) :=
  distinct_of_hasDupKey (by decide)

/-! ## The graphs: 9 edges, min degree 1, degree sequence (2,2,1,1,1,1,1)

All of these are *recomputed from the bitmasks*, and separately compared with
the values stored in the certificate. -/

/-- The list of bits set in `m` (a neighbourhood as a list of side indices). -/
def bitsOf (m : Nat) : List Nat := idx7.filter (fun k => bitAt m k)

/-- Degrees of the seven P-sides, recomputed from the masks. -/
def degsP (c : Case) : List Nat := idx7.map (fun i => deg (c.M i))

/-- Degrees of the seven Q-sides, recomputed by transposing the masks. -/
def degsQ (c : Case) : List Nat := idx7.map (fun j => deg (c.MQ j))

/-- Number of edges, recomputed from the masks. -/
def edgeCount (c : Case) : Nat := idx7.foldl (fun a i => a + deg (c.M i)) 0

/-- `l` is a permutation of `(2,2,1,1,1,1,1)` (stated as: length 7, exactly two
entries equal to 2 and exactly five equal to 1). -/
def isDegSeq2211111 (l : List Nat) : Bool :=
  (l.length == 7) && ((l.filter (fun d => d == 2)).length == 2)
                  && ((l.filter (fun d => d == 1)).length == 5)

def graphShapeOK (c : Case) : Bool :=
  (edgeCount c == 9) && (c.edges == 9) &&
  (idx7.all fun i => 1 ≤ deg (c.M i)) && (idx7.all fun j => 1 ≤ deg (c.MQ j)) &&
  isDegSeq2211111 (degsP c) && isDegSeq2211111 (degsQ c) &&
  (c.degP == [2,2,1,1,1,1,1]) && (c.degQ == [2,2,1,1,1,1,1])

/-- Every certificate graph has exactly 9 edges, minimum degree at least 1 on
both sides, and degree sequence `(2,2,1,1,1,1,1)` on both sides — all
recomputed from the bitmasks, and agreeing with the stored values. -/
theorem all_graphs_have_shape : ∀ c ∈ certificates, graphShapeOK c = true :=
  of_all (by decide)

/-! ## Internal consistency of the stored witness data -/

def witnessConsistent (c : Case) : Bool :=
  (c.side == 0) &&                       -- witness.side = "P" in every case
  (c.classUsed == c.classP) &&
  c.avoiding &&                          -- witness.pair_kind = "avoiding"
  (c.nCyc == 0) &&                       -- no cyclically adjacent pair was found
  (c.pairI < 7) && (c.pairJ < 7) && (c.pairI != c.pairJ) &&
  (!cycAdjB c.pairI c.pairJ) &&          -- the pair is NOT cyclically consecutive
  (c.Ni == bitsOf (c.M c.pairI)) &&
  (c.Nj == bitsOf (c.M c.pairJ)) &&
  (c.Aij == (bitsOf (c.M c.pairI)).filter (fun k => !bitAt (c.M c.pairJ) k)) &&
  (c.Bji == (bitsOf (c.M c.pairJ)).filter (fun k => !bitAt (c.M c.pairI) k)) &&
  (c.compP.length == 7) && (c.compQ.length == 7) &&
  (c.compP.getD c.pairI 99 == c.compOfI) &&
  (c.compP.getD c.pairJ 99 == c.compOfJ) &&
  (c.compOfI != c.compOfJ)

/-- In every case the stored witness is internally consistent with the stored
masks: the witness side is `P`, the class used is `class_P`, the pair indices
are `< 7`, distinct and not cyclically consecutive, `N_i`, `N_j`, `A_i_minus_j`,
`B_j_minus_i` are exactly what the bitmasks say they are, the stored components
of the two pair endpoints differ, and no cyclically adjacent pair was recorded.

CAUTION about the `c.avoiding` conjunct: it checks only that the stored Boolean
flag (`witness.pair_kind == "avoiding"` in the JSON) is `true`.  That is a fact
about the file on disk, not a proof that the pair of sides is geometrically
avoiding — see (N1) and (I3) in the file header.  The only part of "avoiding"
recomputed here is its necessary combinatorial consequence, namely that the two
indices are distinct and not cyclically consecutive. -/
theorem all_witnesses_consistent : ∀ c ∈ certificates, witnessConsistent c = true :=
  of_all (by decide)

/-! ## The two sides of the stored pair really are in different components

The `components_P` array of the certificate is *not* trusted.  For each case the
generated data carries a set of vertices `(sepP, sepQ)`; the kernel checks that
this set is closed under adjacency in the bipartite disjointness graph, contains
`p_{pairI}` and does not contain `p_{pairJ}`.  By `not_conn_of_sep` that is a
proof of disconnection. -/

def sepOK (c : Case) : Bool :=
  sepClosedB c.M c.sepP c.sepQ && bitAt c.sepP c.pairI && !bitAt c.sepP c.pairJ

theorem all_sep_ok : ∀ c ∈ certificates, sepOK c = true :=
  of_all (by decide)

/-- **In every one of the 225 cases the two P-sides of the stored pair lie in
different connected components of the bipartite disjointness graph.**  (Proved
from a kernel-checked separator, not read off the certificate.) -/
theorem all_225_pairs_in_different_components :
    ∀ c ∈ certificates, ¬ Conn c.M (Vtx.P c.pairI) (Vtx.P c.pairJ) := by
  intro c hc
  have h := all_sep_ok c hc
  simp [sepOK, Bool.and_eq_true] at h
  exact not_conn_of_sep (sepClosed_of_sepClosedB h.1.1) h.1.2 (by simpa using h.2)

/-- If two P-sides lie in different components, their neighbourhoods are
disjoint — so the set differences `N(p_a) \ N(p_b)` and `N(p_b) \ N(p_a)` are
just `N(p_a)` and `N(p_b)`.  (General fact, not a per-case computation.) -/
theorem nbhd_disjoint_of_not_conn {M : Nat → Nat} {a b : Nat} (ha : a < 7) (hb : b < 7)
    (h : ¬ Conn M (Vtx.P a) (Vtx.P b)) :
    ∀ k, k < 7 → bitAt (M a) k = true → bitAt (M b) k = false := by
  intro k hk h1
  cases hbk : bitAt (M b) k with
  | false => rfl
  | true => exact absurd (Conn.stepQP (Conn.stepPQ (Conn.refl _) ha hk h1) hb hk hbk) h

/-- Consequently, in each of the 225 cases the set difference
`N(p_i) \ N(p_j)` coincides with `N(p_i)` (and symmetrically), which is exactly
what the certificate's `A_i_minus_j = N_i` and `B_j_minus_i = N_j` record. -/
theorem all_225_neighbourhoods_disjoint :
    ∀ c ∈ certificates, ∀ k, k < 7 →
      (bitAt (c.M c.pairI) k = true → InDiff (c.M c.pairI) (c.M c.pairJ) k) ∧
      (bitAt (c.M c.pairJ) k = true → InDiff (c.M c.pairJ) (c.M c.pairI) k) := by
  intro c hc k hk
  have hw := all_witnesses_consistent c hc
  simp [witnessConsistent, Bool.and_eq_true] at hw
  have hi : c.pairI < 7 := by omega
  have hj : c.pairJ < 7 := by omega
  have hsep := all_225_pairs_in_different_components c hc
  exact ⟨fun h => ⟨h, nbhd_disjoint_of_not_conn hi hj hsep k hk h⟩,
         fun h => ⟨h, nbhd_disjoint_of_not_conn hj hi (fun hcon => hsep (conn_symm hcon)) k hk h⟩⟩

/-! ## The main theorem: all 225 cases violate AKR Lemma 5 -/

/-- The AKR Lemma 5 requirement fails for the stored pair. -/
def failsAKR5 (c : Case) : Bool := !akr5AdjB (c.M c.pairI) (c.M c.pairJ)

theorem all_failsAKR5 : ∀ c ∈ certificates, failsAKR5 c = true :=
  of_all (by decide)

/-- **MAIN THEOREM.**  For every one of the 225 `(class_P, class_Q, graph)`
combinations reaching the final filter, the neighbourhood-difference adjacency
condition fails for the stored pair of P-sides: there is NO
`k ∈ N(p_i) \ N(p_j)` and `k' ∈ N(p_j) \ N(p_i)` with `k' = k ± 1 (mod 7)`. -/
theorem all_225_cases_fail_AKR5_requirement :
    ∀ c ∈ certificates, ¬ AKR5Adjacent (c.M c.pairI) (c.M c.pairJ) := by
  intro c hc h
  have h1 := all_failsAKR5 c hc
  rw [failsAKR5, Bool.not_eq_true', (akr5AdjB_iff _ _).mpr h] at h1
  exact Bool.noConfusion h1

/-- **MAIN THEOREM, in the form of AKR Lemma 5's literal conclusion.**  For every
one of the 225 records, there is no pair of cyclically consecutive Q-sides
`q_i, q_{i'}` with `(p_a,q_i), (p_b,q_{i'}) ∈ E` and `(p_a,q_{i'}), (p_b,q_i) ∉ E`,
where `(p_a, p_b)` is the stored pair.

What this buys, stated exactly.  By `all_225_pairs_in_different_components`,
`p_a` and `p_b` lie in different components — that half is a kernel-checked
recomputation.  By `all_witnesses_consistent` the pair is distinct and not
cyclically consecutive, and the stored `avoiding` flag is `true`.  IF that flag
is geometrically correct (it is NOT verified here: see (N1) in the file header)
AND AKR Lemma 5 holds (external, see (N3)), THEN the lemma would force such a
pair of Q-sides to exist, contradicting this theorem — so the record could not
be the profile of an actual pair of heptagons.  The conditional is the theorem;
the discharge of its two antecedents is the future interface (I3), (I4). -/
theorem all_225_cases_fail_AKR5_conclusion :
    ∀ c ∈ certificates, ¬ AKR5Conclusion c.M c.pairI c.pairJ := by
  intro c hc h
  exact all_225_cases_fail_AKR5_requirement c hc
    ((akr5Conclusion_iff_adjacent _ _ _).mp h)

/-- The whole endgame in one statement. -/
theorem endgame_summary :
    certificates.length = 225 ∧
    Distinct (certificates.map Case.key) ∧
    (∀ c ∈ certificates,
       graphShapeOK c = true ∧
       witnessConsistent c = true ∧
       ¬ Conn c.M (Vtx.P c.pairI) (Vtx.P c.pairJ) ∧
       ¬ AKR5Conclusion c.M c.pairI c.pairJ) :=
  ⟨card_certificates, keys_distinct, fun c hc =>
    ⟨all_graphs_have_shape c hc, all_witnesses_consistent c hc,
     all_225_pairs_in_different_components c hc,
     all_225_cases_fail_AKR5_conclusion c hc⟩⟩

/-! ## Non-vacuity

"All 225 cases fail the condition" is worthless if the condition can never hold.
It can, often — including on the very graphs of the certificate, for other pairs
of sides. -/

/-- A toy positive instance: `N(p_a) = {0}`, `N(p_b) = {1}`. -/
theorem akr5_satisfiable : AKR5Adjacent 1 2 :=
  (akr5AdjB_iff 1 2).mp (by decide)

/-- The same statement in AKR Lemma 5's own form. -/
theorem akr5Conclusion_satisfiable :
    AKR5Conclusion (fun i => if i = 0 then 1 else 2) 0 1 :=
  (akr5Conclusion_iff_adjacent _ 0 1).mpr (by
    exact (akr5AdjB_iff _ _).mp (by decide))

/-- The 21 unordered pairs of distinct P-sides. -/
def pairs7 : List (Nat × Nat) :=
  [(0,1),(0,2),(0,3),(0,4),(0,5),(0,6),(1,2),(1,3),(1,4),(1,5),(1,6),
   (2,3),(2,4),(2,5),(2,6),(3,4),(3,5),(3,6),(4,5),(4,6),(5,6)]

theorem pairs7_length : pairs7.length = 21 := by decide

/-- How many of the 21 side pairs of a case's graph DO satisfy the condition. -/
def nSat (c : Case) : Nat :=
  (pairs7.filter (fun p => akr5AdjB (c.M p.1) (c.M p.2))).length

/-- Total over all 225 cases of the number of side pairs satisfying the
condition, out of `225 * 21 = 4725`.  Far from zero: the predicate is a real
constraint that the stored pairs happen to violate. -/
theorem akr5_not_vacuous :
    certificates.foldl (fun a c => a + nSat c) 0 = 2016 := by decide

theorem akr5_not_vacuous_total : 225 * 21 = 4725 := by decide

/-- Concretely, in case 0 the stored pair `(4,6)` fails the condition while the
pair `(0,2)` of the very same graph satisfies it. -/
theorem case0_contrast :
    ∃ c ∈ certificates,
      ¬ AKR5Adjacent (c.M 4) (c.M 6) ∧ AKR5Adjacent (c.M 0) (c.M 2) := by
  refine ⟨certificates.getD 0 default, by decide, ?_, ?_⟩
  · intro h
    have : akr5AdjB ((certificates.getD 0 default).M 4)
                    ((certificates.getD 0 default).M 6) = false := by decide
    rw [(akr5AdjB_iff _ _).mpr h] at this
    exact Bool.noConfusion this
  · exact (akr5AdjB_iff _ _).mp (by decide)

end Endgame
end Heptagon
