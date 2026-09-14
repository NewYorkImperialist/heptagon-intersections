/-
  EnumerationComplete.lean
  ========================

  ENUMERATION OBLIGATION (3): THE SEARCH RECURSION COVERS THE WHOLE DOMAIN.

  `EnumerationDomain.lean` addresses obligations (1) and (2) of the four-way
  split stated in its header:

    (1) a hypothetical counterexample produces a graph in the search domain;
    (2) the abstract search domain has 13 003 620 elements;
    (3) the enumeration ACTUALLY COVERS that domain;              <-- THIS FILE
    (4) every valid configuration survives each filter.           <-- not here

  This file addresses (3), and only (3).  Nothing here says anything about the
  filters `L5_ok` / `H_bip` / `L3_ok` that `process` applies afterwards; that is
  obligation (4) and it is untouched.

  ---------------------------------------------------------------------------
  WHAT IS TRANSCRIBED
  ---------------------------------------------------------------------------

  `python/elimination/audit_enum.py` builds its search domain with

      SUBS=[[m for m in range(1,128) if pc(m)==s] for s in range(4)]
      def rec(i,N,used,budget):
          if i==7:
              if budget!=0 or used!=FULL: return
              process(N); return
          rem=7-i
          hi=min(3,budget-(rem-1))
          for size in range(1,hi+1):
              for msk in SUBS[size]:
                  N.append(msk); rec(i+1,N,used|msk,budget-size); N.pop()
      rec(0,[],0,E_TARGET)

  called as `rec(0,[],0,9)` (the project's `E_TARGET` is 9).  `pc` is popcount
  and `FULL = 127`.

  `subs` and `enumRec` below are that program.  The ONE presentational change is
  that the Python loop counter `i` (counting UP from 0 to 7) is replaced by
  `rem = 7 - i` (counting DOWN from 7 to 0), so that the recursion is
  STRUCTURAL in `rem` and Lean accepts it with no `partial` and no
  well-founded-recursion boilerplate.  The pruning bound is transcribed
  verbatim: Python's `rem` is this file's `rem + 1`, so Python's
  `min(3, budget-(rem-1))` is `min 3 (budget - rem)` here.  Python's
  `SUBS[size]` is `subs size`, and Python's collection of the leaves via
  `process(N)` is replaced by returning the leaf `N` in the output list.

  A precise faithfulness statement, including the one place where Lean's
  truncated subtraction differs from Python's signed subtraction (it does not:
  both give an empty loop), is in the doc comment of `enumRec`.

  ---------------------------------------------------------------------------
  WHAT IS PROVED
  ---------------------------------------------------------------------------

    * `enumRec_complete`   -- the strengthened induction hypothesis: for EVERY
                              recursion depth, prefix, `used` and `budget`, any
                              suffix of masks compatible with that state is
                              produced.  This is the mathematical content.

    * `enumerate_complete` -- **OBLIGATION (3), COMPLETENESS.**  For every
                              `M : Nat -> Nat` with `EnumerationDomain.InDomain M`,
                              the 7-tuple `[M 0, ..., M 6]` occurs in the output
                              list `enumerate = enumRec 7 [] 0 9`.  NO bound, NO
                              special case, NO restriction on `M`: this is the
                              full statement.

    * `enumRec_sound` / `enumerate_sound`
                           -- the converse (soundness): everything the recursion
                              outputs is a list of seven 7-bit nonzero masks with
                              degree sum 9 whose OR is 127, i.e. `InDomain` holds
                              of the mask function it denotes.

  The completeness proof is an induction on the recursion depth and does NOT
  evaluate the 13 003 620-element output anywhere.  Nothing in this file is
  `decide`d on the output list; the only `decide`s are on statements about a
  single 7-bit mask or a handful of Booleans.

  The prune `hi = min 3 (...)` is NOT dropped: it is transcribed exactly and
  then proved harmless.  Harmlessness is the conjunction of two facts, both
  discharged inside `enumRec_complete`:
    * `length_le_sumDeg` -- the remaining `rem` masks each have degree at least
      one, so they consume at least `rem` of the budget; hence the mask chosen
      now has degree at most `budget - rem`, which is the second argument of the
      `min`;
    * the `deg m <= 3` hypothesis of the induction, which at the top level comes
      from `degSum M = 9` together with minimum degree one on all seven P-sides
      (seven positive integers summing to 9 are each at most 3).

  ---------------------------------------------------------------------------
  TRUST
  ---------------------------------------------------------------------------

  No `sorry`, no `admit`, no project-level `axiom`, no `unsafe`, no
  `native_decide`, no `partial`.  `set_option autoImplicit false` throughout.
  No `set_option maxRecDepth` is needed.

  AXIOMS (verbatim `#print axioms`, Lean 4.33.1 / Mathlib v4.33.1).  Only the
  three standard Lean axioms occur; nothing project-specific is assumed.

    'Heptagon.EnumerationComplete.bitAt_eq_testBit' depends on axioms: [propext, Quot.sound]
    'Heptagon.EnumerationComplete.bitAt_or' depends on axioms: [propext, Quot.sound]
    'Heptagon.EnumerationComplete.bitAt_eq_false_of_lt_128' depends on axioms: [propext, Quot.sound]
    'Heptagon.EnumerationComplete.bitAt_127' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.EnumerationComplete.eq_127_of_bits' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.EnumerationComplete.or_lt_128' depends on axioms: [propext, Quot.sound]
    'Heptagon.EnumerationComplete.mem_subs' depends on axioms: [propext, Quot.sound]
    'Heptagon.EnumerationComplete.length_le_sumDeg' depends on axioms: [propext, Quot.sound]
    'Heptagon.EnumerationComplete.deg_zero' does not depend on any axioms
    'Heptagon.EnumerationComplete.ne_zero_of_deg_pos' depends on axioms: [propext, Quot.sound]
    'Heptagon.EnumerationComplete.enumRec_complete' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.EnumerationComplete.exists_bitAt_of_deg_pos' depends on axioms: [propext, Quot.sound]
    'Heptagon.EnumerationComplete.bitAt_orAll_of_mem' depends on axioms: [propext, Quot.sound]
    'Heptagon.EnumerationComplete.orAll_lt_128' depends on axioms: [propext, Quot.sound]
    'Heptagon.EnumerationComplete.mem_maskList' depends on axioms: [propext, Quot.sound]
    'Heptagon.EnumerationComplete.mem_maskList_of_lt' depends on axioms: [propext, Quot.sound]
    'Heptagon.EnumerationComplete.sumDeg_maskList' depends on axioms: [propext, Quot.sound]
    'Heptagon.EnumerationComplete.enumerate_complete' depends on axioms: [propext, Classical.choice, Quot.sound]
    'Heptagon.EnumerationComplete.exists_mem_of_bitAt_orAll' depends on axioms: [propext, Quot.sound]
    'Heptagon.EnumerationComplete.enumRec_sound' depends on axioms: [propext, Quot.sound]
    'Heptagon.EnumerationComplete.maskList_maskFn' depends on axioms: [propext]
    'Heptagon.EnumerationComplete.enumerate_sound' depends on axioms: [propext, Classical.choice, Quot.sound]

  WHAT THIS FILE DOES NOT DO.  It proves a theorem about the LEAN function
  `enumRec`.  That `enumRec` is a correct transcription of the Python `rec` is
  asserted by reading the two side by side (see above), not proved: there is no
  extraction and no cross-check against the Python or C++ source.  Likewise
  nothing here re-proves that the 13 003 620 count is the length of `enumerate`;
  that would need obligation (2)'s remaining gap plus a duplicate-freeness
  argument, and is not attempted.

  WHAT WAS DONE INSTEAD, as EVIDENCE (not proof) of faithful transcription: the
  Python `rec` was re-run with its hard-coded `7` replaced by a parameter `n`,
  and its leaf list compared, IN ORDER, against `#eval (enumRec n [] 0 b)`, for
  (n,b) = (3,9) [5670 leaves], (4,7) [7560 leaves] and (2,7) [0 leaves].  The
  outputs were byte-identical in all three cases, so the two agree on tuple
  contents, on tuple order, and on the pruning behaviour.  The same Python
  program at the real parameters `rec(0,[],0,9)` yields 13 003 620 leaves,
  agreeing with the count PART B of `EnumerationDomain.lean` discusses.  These
  are `#eval`s, i.e. compiled evaluation outside the kernel; they are NOT part
  of any proof in this file and nothing below depends on them.
-/

import EnumerationDomain

set_option autoImplicit false

namespace Heptagon
namespace EnumerationComplete

open Heptagon.Endgame
open Heptagon.DisjointnessGraph
open Heptagon.EnumerationDomain

/-! # PART 1 -- bit arithmetic for the `used` accumulator

The Python search threads a running OR `used` through the recursion and accepts
a leaf only when `used == FULL = 127`.  `InDomain`, on the other hand, states
minimum degree one on the `Q` side as `1 <= deg (transposeMask M j)` for every
`j < 7`.  This part is the dictionary between the two.
-/

/-- `EndgameDefs.bitAt` is `Nat.testBit`.  `bitAt` is defined by division, which
is convenient for `decide`; `Nat.testBit` is what the `|||` lemmas are stated
about. -/
theorem bitAt_eq_testBit (m i : Nat) : bitAt m i = Nat.testBit m i := by
  rw [Nat.testBit_eq_decide_div_mod_eq, bitAt, Bool.eq_iff_iff]
  simp

/-- Bitwise OR sets exactly the union of the bits. -/
theorem bitAt_or (a b i : Nat) : bitAt (a ||| b) i = (bitAt a i || bitAt b i) := by
  simp [bitAt_eq_testBit, Nat.testBit_or]

/-- A 7-bit number has no bits at or above position 7. -/
theorem bitAt_eq_false_of_lt_128 {x i : Nat} (hx : x < 128) (hi : 7 ≤ i) :
    bitAt x i = false := by
  rw [bitAt_eq_testBit]
  apply Nat.testBit_lt_two_pow
  calc x < 128 := hx
    _ = 2 ^ 7 := by norm_num
    _ ≤ 2 ^ i := Nat.pow_le_pow_right (by omega) hi

/-- Bit `j` of `127` is set exactly for `j < 7`. -/
theorem bitAt_127 (j : Nat) : bitAt 127 j = decide (j < 7) := by
  match j with
  | 0 => rfl
  | 1 => rfl
  | 2 => rfl
  | 3 => rfl
  | 4 => rfl
  | 5 => rfl
  | 6 => rfl
  | (k + 7) =>
      rw [bitAt_eq_false_of_lt_128 (by omega) (by omega)]
      simp

/-- A 7-bit number all of whose seven low bits are set IS `127`. -/
theorem eq_127_of_bits {x : Nat} (hx : x < 128) (h : ∀ j, j < 7 → bitAt x j = true) :
    x = 127 := by
  apply Nat.eq_of_testBit_eq
  intro j
  rw [← bitAt_eq_testBit, ← bitAt_eq_testBit, bitAt_127]
  by_cases hj : j < 7
  · rw [h j hj]; simp [hj]
  · rw [bitAt_eq_false_of_lt_128 hx (by omega)]; simp [hj]

/-- A bitwise OR of two 7-bit numbers is 7-bit. -/
theorem or_lt_128 {a b : Nat} (ha : a < 128) (hb : b < 128) : a ||| b < 128 := by
  have : (128 : Nat) = 2 ^ 7 := by norm_num
  rw [this] at ha hb ⊢
  exact Nat.or_lt_two_pow ha hb

/-! # PART 2 -- the enumeration, transcribed -/

/-- `SUBS[s]` of `audit_enum.py`: the masks `m` with `1 <= m < 128` and popcount
`s`, in increasing order of `m`.  Python builds this only for `s = 0,1,2,3`;
`subs` is uniform in `s` and agrees with `SUBS[s]` on that range (for `s = 0`
both are empty, since `deg m = 0` forces `m = 0` among 7-bit masks). -/
def subs (s : Nat) : List Nat :=
  (List.range 128).filter (fun m => m != 0 && deg m == s)

theorem mem_subs {m s : Nat} : m ∈ subs s ↔ m < 128 ∧ m ≠ 0 ∧ deg m = s := by
  simp [subs, List.mem_filter, List.mem_range]

/-- **The search recursion**, transcribed from `rec` in `audit_enum.py`.

`enumRec rem N used budget` is Python's `rec(7 - rem, N, used, budget)`: `rem`
is the number of `P`-sides still to be chosen, so Python's `i == 7` test is
`rem = 0` and Python's `rem = 7 - i` is this `rem`.  The pruning bound
`hi = min(3, budget-(rem_py - 1))` therefore reads `min 3 (budget - rem)` in the
`rem + 1` branch, and Python's `for size in range(1, hi+1)` is
`List.range' 1 hi = [1, ..., hi]`.

The one place Lean's `Nat` and Python's `int` could disagree is when
`budget - rem_py + 1 < 0`: Python's `min` returns that negative number and
`range(1, hi+1)` is empty; Lean's truncated subtraction returns `0`, `min 3 0 = 0`,
and `List.range' 1 0 = []` is empty too.  So the two agree.

`process(N)` is modelled by returning the singleton `[N]`, so the output is the
list of all leaves reached, in the order Python reaches them. -/
def enumRec : Nat → List Nat → Nat → Nat → List (List Nat)
  | 0, N, used, budget => if budget = 0 ∧ used = 127 then [N] else []
  | rem + 1, N, used, budget =>
      (List.range' 1 (min 3 (budget - rem))).flatMap fun size =>
        (subs size).flatMap fun msk =>
          enumRec rem (N ++ [msk]) (used ||| msk) (budget - size)

/-- The top-level call `rec(0, [], 0, 9)`. -/
def enumerate : List (List Nat) := enumRec 7 [] 0 9

/-! # PART 3 -- bookkeeping on the chosen suffix -/

/-- The total degree (popcount sum) of a list of masks; Python's running
`budget` is `9` minus this, over the prefix chosen so far. -/
def sumDeg : List Nat → Nat
  | [] => 0
  | m :: L => deg m + sumDeg L

/-- The running `used` accumulator: `orAll used L` is what `used` has become
after the masks of `L` have been chosen. -/
def orAll : Nat → List Nat → Nat
  | used, [] => used
  | used, m :: L => orAll (used ||| m) L

/-- **The prune's arithmetic half.**  Masks of degree at least one consume at
least one unit of budget each, so a list of `n` of them consumes at least `n`.
This is what makes `min 3 (budget - rem)` big enough. -/
theorem length_le_sumDeg (L : List Nat) (h : ∀ m ∈ L, 1 ≤ deg m) : L.length ≤ sumDeg L := by
  induction L with
  | nil => simp [sumDeg]
  | cons a t ih =>
      have ha : 1 ≤ deg a := h a (by simp)
      have ht : t.length ≤ sumDeg t := ih (fun m hm => h m (by simp [hm]))
      simp only [List.length_cons, sumDeg]
      omega

theorem deg_zero : deg 0 = 0 := by decide

/-- A mask of positive degree is nonzero -- what `SUBS` needs, since it starts
at `m = 1`. -/
theorem ne_zero_of_deg_pos {m : Nat} (h : 1 ≤ deg m) : m ≠ 0 := by
  intro hm; rw [hm, deg_zero] at h; omega

/-! # PART 4 -- COMPLETENESS -/

/-- **The strengthened induction hypothesis.**

Read it as: whatever state `(rem, N, used, budget)` the recursion is in, every
list `L` of `rem` further masks which
  * are 7-bit (`m < 128`) and have degree between `1` and `3`,
  * consume the budget exactly (`sumDeg L = budget`), and
  * complete `used` to `127`
is reached, i.e. `N ++ L` occurs in the output of that call.

Every clause is used:
  * `deg m <= 3` and `length_le_sumDeg` are exactly what is needed to get past
    the prune `min 3 (budget - rem)`;
  * `m < 128` and `m /= 0` are what `subs size` requires;
  * `sumDeg L = budget` and `orAll used L = 127` are what the leaf test
    `budget = 0 ∧ used = 127` requires.

Completeness for the real search is the instance `rem = 7`, `N = []`,
`used = 0`, `budget = 9`. -/
theorem enumRec_complete :
    ∀ (rem : Nat) (N L : List Nat) (used budget : Nat),
      L.length = rem →
      (∀ m ∈ L, m < 128) →
      (∀ m ∈ L, 1 ≤ deg m) →
      (∀ m ∈ L, deg m ≤ 3) →
      sumDeg L = budget →
      orAll used L = 127 →
      N ++ L ∈ enumRec rem N used budget := by
  intro rem
  induction rem with
  | zero =>
      intro N L used budget hlen _ _ _ hsum hor
      match L, hlen with
      | [], _ =>
          simp only [sumDeg] at hsum
          simp only [orAll] at hor
          simp [enumRec, hsum.symm, hor]
  | succ r ih =>
      intro N L used budget hlen hlt hpos hle3 hsum hor
      match L, hlen with
      | m :: L', hlen =>
        have hlen' : L'.length = r := by simpa using hlen
        have hm128 : m < 128 := hlt m (by simp)
        have hmpos : 1 ≤ deg m := hpos m (by simp)
        have hmle3 : deg m ≤ 3 := hle3 m (by simp)
        have hlt' : ∀ x ∈ L', x < 128 := fun x hx => hlt x (by simp [hx])
        have hpos' : ∀ x ∈ L', 1 ≤ deg x := fun x hx => hpos x (by simp [hx])
        have hle3' : ∀ x ∈ L', deg x ≤ 3 := fun x hx => hle3 x (by simp [hx])
        have hsum' : deg m + sumDeg L' = budget := by simpa [sumDeg] using hsum
        -- the prune is harmless: the remaining `r` masks need at least `r`
        have hrem : r ≤ sumDeg L' := by
          have := length_le_sumDeg L' hpos'
          omega
        -- the recursive call succeeds, by the induction hypothesis
        have hrec : (N ++ [m]) ++ L' ∈
            enumRec r (N ++ [m]) (used ||| m) (budget - deg m) :=
          ih (N ++ [m]) L' (used ||| m) (budget - deg m) hlen' hlt' hpos' hle3'
            (by omega) (by simpa [orAll] using hor)
        -- and it is the call the loops actually make
        rw [enumRec]
        rw [List.mem_flatMap]
        refine ⟨deg m, ?_, ?_⟩
        · rw [List.mem_range'_1]
          omega
        · rw [List.mem_flatMap]
          refine ⟨m, mem_subs.mpr ⟨hm128, ne_zero_of_deg_pos hmpos, rfl⟩, ?_⟩
          simpa using hrec

/-! ## The `Q`-side minimum degree is the `used == FULL` test -/

/-- A set bit is a unit of degree, read backwards: positive degree produces a
set bit. -/
theorem exists_bitAt_of_deg_pos {m : Nat} (h : 1 ≤ deg m) : ∃ i, i < 7 ∧ bitAt m i = true := by
  by_contra hc
  push Not at hc
  have h0 : bitAt m 0 = false := Bool.not_eq_true _ ▸ hc 0 (by omega)
  have h1 : bitAt m 1 = false := Bool.not_eq_true _ ▸ hc 1 (by omega)
  have h2 : bitAt m 2 = false := Bool.not_eq_true _ ▸ hc 2 (by omega)
  have h3 : bitAt m 3 = false := Bool.not_eq_true _ ▸ hc 3 (by omega)
  have h4 : bitAt m 4 = false := Bool.not_eq_true _ ▸ hc 4 (by omega)
  have h5 : bitAt m 5 = false := Bool.not_eq_true _ ▸ hc 5 (by omega)
  have h6 : bitAt m 6 = false := Bool.not_eq_true _ ▸ hc 6 (by omega)
  rw [deg_eq_degB, h0, h1, h2, h3, h4, h5, h6] at h
  simp [degB] at h

/-- Bits of a running OR: a bit is set in `orAll used L` iff it is set in `used`
or in one of the masks of `L`. -/
theorem bitAt_orAll_of_mem {used : Nat} {L : List Nat} {m : Nat} (hm : m ∈ L) {j : Nat}
    (h : bitAt m j = true) : bitAt (orAll used L) j = true := by
  induction L generalizing used with
  | nil => simp at hm
  | cons a t ih =>
      rcases List.mem_cons.mp hm with rfl | ht
      · -- `m = a`: the bit enters `used` right now and never leaves
        clear ih
        have key : ∀ (t : List Nat) (u : Nat), bitAt u j = true → bitAt (orAll u t) j = true := by
          intro t
          induction t with
          | nil => intro u hu; simpa [orAll] using hu
          | cons b s ihs =>
              intro u hu
              exact ihs (u ||| b) (by rw [bitAt_or, hu]; simp)
        exact key t (used ||| m) (by rw [bitAt_or, h]; simp)
      · exact ih ht

theorem orAll_lt_128 {used : Nat} (h : used < 128) {L : List Nat}
    (hL : ∀ m ∈ L, m < 128) : orAll used L < 128 := by
  induction L generalizing used with
  | nil => simpa [orAll] using h
  | cons a t ih =>
      exact ih (or_lt_128 h (hL a (by simp))) (fun m hm => hL m (by simp [hm]))

/-! ## The main theorem -/

/-- The seven masks of `M`, in the order the search chooses them. -/
def maskList (M : Nat → Nat) : List Nat := [M 0, M 1, M 2, M 3, M 4, M 5, M 6]

theorem mem_maskList {M : Nat → Nat} {x : Nat} (h : x ∈ maskList M) :
    ∃ i, i < 7 ∧ x = M i := by
  simp only [maskList, List.mem_cons, List.not_mem_nil, or_false] at h
  rcases h with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact ⟨0, by omega, rfl⟩
  · exact ⟨1, by omega, rfl⟩
  · exact ⟨2, by omega, rfl⟩
  · exact ⟨3, by omega, rfl⟩
  · exact ⟨4, by omega, rfl⟩
  · exact ⟨5, by omega, rfl⟩
  · exact ⟨6, by omega, rfl⟩

theorem mem_maskList_of_lt (M : Nat → Nat) {i : Nat} (hi : i < 7) : M i ∈ maskList M := by
  match i, hi with
  | 0, _ => simp [maskList]
  | 1, _ => simp [maskList]
  | 2, _ => simp [maskList]
  | 3, _ => simp [maskList]
  | 4, _ => simp [maskList]
  | 5, _ => simp [maskList]
  | 6, _ => simp [maskList]
  | (_ + 7), hk => exact absurd hk (by omega)

theorem sumDeg_maskList (M : Nat → Nat) : sumDeg (maskList M) = degSum M := by
  simp only [maskList, sumDeg, degSum_eq]
  omega

/-- **OBLIGATION (3): COMPLETENESS OF THE ENUMERATION.**

Every mask function in the abstract search domain `EnumerationDomain.InDomain`
is produced by the search recursion `enumRec 7 [] 0 9`, i.e. by the transcribed
`rec(0,[],0,9)` of `audit_enum.py`.

There is no bound, no case restriction and no weakening: `M` is an arbitrary
`Nat -> Nat`.  Combined with `EnumerationDomain.toMasks_inDomain_of_crossCount_eq_40`
(obligation (1)), this says that a hypothetical counterexample's mask function
is one of the tuples the search program examines. -/
theorem enumerate_complete (M : Nat → Nat) (h : InDomain M) : maskList M ∈ enumerate := by
  obtain ⟨h128, hsum9, hposP, -, -, hposQ⟩ := h
  -- degrees are between 1 and 3: seven positive integers summing to 9
  have hd := degSum_eq M
  have hp0 := hposP 0 (by omega); have hp1 := hposP 1 (by omega)
  have hp2 := hposP 2 (by omega); have hp3 := hposP 3 (by omega)
  have hp4 := hposP 4 (by omega); have hp5 := hposP 5 (by omega)
  have hp6 := hposP 6 (by omega)
  have hle3 : ∀ i, i < 7 → deg (M i) ≤ 3 := by
    intro i hi
    rw [hsum9] at hd
    match i, hi with
    | 0, _ => omega
    | 1, _ => omega
    | 2, _ => omega
    | 3, _ => omega
    | 4, _ => omega
    | 5, _ => omega
    | 6, _ => omega
    | (_ + 7), hk => exact absurd hk (by omega)
  -- the `used == FULL` test: every `Q`-side has an incident `P`-side
  have hor : orAll 0 (maskList M) = 127 := by
    refine eq_127_of_bits (orAll_lt_128 (by omega) ?_) ?_
    · intro x hx
      obtain ⟨i, hi, rfl⟩ := mem_maskList hx
      exact h128 i hi
    · intro j hj
      obtain ⟨i, hi, hbit⟩ := exists_bitAt_of_deg_pos (hposQ j hj)
      rw [bitAt_transposeMask M i j hi] at hbit
      exact bitAt_orAll_of_mem (m := M i) (mem_maskList_of_lt M hi) hbit
  have := enumRec_complete 7 [] (maskList M) 0 9 (by simp [maskList])
    (fun x hx => by obtain ⟨i, hi, rfl⟩ := mem_maskList hx; exact h128 i hi)
    (fun x hx => by obtain ⟨i, hi, rfl⟩ := mem_maskList hx; exact hposP i hi)
    (fun x hx => by obtain ⟨i, hi, rfl⟩ := mem_maskList hx; exact hle3 i hi)
    (by rw [sumDeg_maskList, hsum9]) hor
  simpa [enumerate] using this

/-! # PART 5 -- SOUNDNESS (the converse)

Completeness is the direction that makes the search's NEGATIVE result
meaningful.  Soundness is the direction that says the search wastes no effort
and, more usefully, that `enumerate` is exactly the domain rather than merely a
superset of it. -/

/-- A set bit in a running OR came from somewhere. -/
theorem exists_mem_of_bitAt_orAll :
    ∀ (L : List Nat) (used j : Nat), bitAt (orAll used L) j = true →
      bitAt used j = true ∨ ∃ m ∈ L, bitAt m j = true := by
  intro L
  induction L with
  | nil => intro used j h; exact Or.inl (by simpa [orAll] using h)
  | cons a t ih =>
      intro used j h
      rcases ih (used ||| a) j (by simpa [orAll] using h) with h' | ⟨m, hm, hbm⟩
      · rw [bitAt_or] at h'
        rcases Bool.or_eq_true_iff.mp h' with h'' | h''
        · exact Or.inl h''
        · exact Or.inr ⟨a, by simp, h''⟩
      · exact Or.inr ⟨m, by simp [hm], hbm⟩

/-- **Soundness of the recursion**, in the same generalised form as
`enumRec_complete`: every list the call `enumRec rem N used budget` outputs is
`N` extended by `rem` further masks that are 7-bit, have degree at least one,
consume the budget exactly and complete `used` to `127`. -/
theorem enumRec_sound :
    ∀ (rem : Nat) (N : List Nat) (used budget : Nat) (L : List Nat),
      L ∈ enumRec rem N used budget →
      ∃ S, L = N ++ S ∧ S.length = rem ∧ (∀ m ∈ S, m < 128) ∧ (∀ m ∈ S, 1 ≤ deg m)
        ∧ sumDeg S = budget ∧ orAll used S = 127 := by
  intro rem
  induction rem with
  | zero =>
      intro N used budget L hL
      rw [enumRec] at hL
      split at hL
      · rename_i hc
        simp only [List.mem_cons, List.not_mem_nil, or_false] at hL
        exact ⟨[], by simp [hL], rfl, by simp, by simp,
          by simp [sumDeg, hc.1], by simpa [orAll] using hc.2⟩
      · simp at hL
  | succ r ih =>
      intro N used budget L hL
      rw [enumRec, List.mem_flatMap] at hL
      obtain ⟨size, hsize, hL⟩ := hL
      rw [List.mem_flatMap] at hL
      obtain ⟨msk, hmsk, hL⟩ := hL
      obtain ⟨S, hLS, hlen, hlt, hpos, hsum, hor⟩ :=
        ih (N ++ [msk]) (used ||| msk) (budget - size) L hL
      rw [List.mem_range'_1] at hsize
      obtain ⟨hm128, hmne, hmdeg⟩ := mem_subs.mp hmsk
      have hposm : 1 ≤ deg msk := by omega
      refine ⟨msk :: S, by simp [hLS], by simp [hlen], ?_, ?_, ?_, ?_⟩
      · intro x hx
        rcases List.mem_cons.mp hx with rfl | hx
        · exact hm128
        · exact hlt x hx
      · intro x hx
        rcases List.mem_cons.mp hx with rfl | hx
        · exact hposm
        · exact hpos x hx
      · simp only [sumDeg, hmdeg, hsum]; omega
      · simpa [orAll] using hor

/-- The mask function denoted by a 7-tuple of masks: the inverse of `maskList`. -/
def maskFn (L : List Nat) (i : Nat) : Nat := L.getD i 0

theorem maskList_maskFn {L : List Nat} (h : L.length = 7) : maskList (maskFn L) = L := by
  match L, h with
  | [_, _, _, _, _, _, _], _ => rfl

/-- **SOUNDNESS OF THE ENUMERATION.**  Everything `enumerate` outputs is a
7-tuple of masks lying in the abstract search domain.  Together with
`enumerate_complete` this says `enumerate` enumerates `InDomain` exactly. -/
theorem enumerate_sound (L : List Nat) (h : L ∈ enumerate) :
    L.length = 7 ∧ InDomain (maskFn L) := by
  obtain ⟨S, hLS, hlen, hlt, hpos, hsum, hor⟩ := enumRec_sound 7 [] 0 9 L h
  rw [List.nil_append] at hLS
  subst hLS
  refine ⟨hlen, ?_⟩
  have hML : maskList (maskFn L) = L := maskList_maskFn hlen
  have hmem : ∀ i, i < 7 → maskFn L i ∈ L := by
    intro i hi
    have hx := mem_maskList_of_lt (maskFn L) hi
    rwa [hML] at hx
  refine inDomain_of _ (fun i hi => hlt _ (hmem i hi)) ?_ (fun i hi => hpos _ (hmem i hi)) ?_
  · rw [← sumDeg_maskList, hML]; exact hsum
  · intro j hj
    have hbit : bitAt (orAll 0 L) j = true := by rw [hor, bitAt_127]; simp [hj]
    rcases exists_mem_of_bitAt_orAll L 0 j hbit with hz | ⟨m, hm, hbm⟩
    · rw [bitAt_zero] at hz; exact absurd hz (by simp)
    · rw [← hML] at hm
      obtain ⟨i, hi, rfl⟩ := mem_maskList hm
      exact one_le_deg_of_bitAt hi (by rw [bitAt_transposeMask _ i j hi]; exact hbm)

end EnumerationComplete
end Heptagon
