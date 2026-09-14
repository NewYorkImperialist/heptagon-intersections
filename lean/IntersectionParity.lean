/-
  IntersectionParity.lean
  =======================

  WORK IN PROGRESS header -- replaced at the end.
-/
import UpperBoundAssembly
import MainTheorem

set_option autoImplicit false

namespace Heptagon
namespace IntersectionParity

open Heptagon.Geometry
open Heptagon.Endgame
open Heptagon.DisjointnessGraph
open Heptagon.EnumerationDomain

/-! ## 0. Bool / Nat bookkeeping -/

/-- The `0/1` indicator of a `Bool`. -/
def nOf (b : Bool) : Nat := if b then 1 else 0

/-- Five `0/1` indicators sum to an even number exactly when their `xor` is
`false`.  Kernel check over the 32 assignments. -/
theorem xor5_parity : ∀ b1 b2 b3 b4 b5 : Bool,
    (b1 ^^ b2 ^^ b3 ^^ b4 ^^ b5) = false →
    (nOf b1 + nOf b2 + nOf b3 + nOf b4 + nOf b5) % 2 = 0 := by decide

/-! ## 1. The sheared height order -/

/-- The lexicographic `(y, then x)` strict order on integer points.  It is the
order induced by the linear functional `p ↦ N * p.2 + p.1` once `N` exceeds
every `|x|` in play (`hlt_eq_decide`), i.e. by a ray direction obtained from the
horizontal by an infinitesimal clockwise tilt. -/
def hlt (p q : Pt) : Bool := decide (p.2 < q.2 ∨ (p.2 = q.2 ∧ p.1 < q.1))

/-- **The shear lemma.**  For `N` larger than the `x`-spread, the lexicographic
order `hlt` is the order of the integer linear functional `N * y + x`. -/
theorem hlt_eq_decide (N : Int) (p q : Pt) (h1 : p.1 - q.1 < N) (h2 : q.1 - p.1 < N) :
    hlt p q = decide (N * p.2 + p.1 < N * q.2 + q.1) := by
  have hN : 0 < N := by omega
  rcases lt_trichotomy p.2 q.2 with h | h | h
  · have k1 : (1 : Int) ≤ q.2 - p.2 := by omega
    have k2 : N * 1 ≤ N * (q.2 - p.2) := Int.mul_le_mul_of_nonneg_left k1 (le_of_lt hN)
    have k3 : N * p.2 + p.1 < N * q.2 + q.1 := by nlinarith
    simp only [hlt]
    exact decide_eq_decide.mpr ⟨fun _ => k3, fun _ => Or.inl h⟩
  · simp only [hlt]
    refine decide_eq_decide.mpr ?_
    rw [h]
    generalize N * q.2 = m
    omega
  · have k1 : (1 : Int) ≤ p.2 - q.2 := by omega
    have k2 : N * 1 ≤ N * (p.2 - q.2) := Int.mul_le_mul_of_nonneg_left k1 (le_of_lt hN)
    have k3 : ¬ (N * p.2 + p.1 < N * q.2 + q.1) := by nlinarith
    simp only [hlt]
    refine decide_eq_decide.mpr ⟨?_, ?_⟩
    · rintro (hx | ⟨hx, _⟩) <;> omega
    · intro hx; exact absurd hx k3

/-- Distinct points get distinct heights. -/
theorem shear_ne (N : Int) (p q : Pt) (h1 : p.1 - q.1 < N) (h2 : q.1 - p.1 < N)
    (hpq : p ≠ q) : N * p.2 + p.1 ≠ N * q.2 + q.1 := by
  have hN : 0 < N := by omega
  intro he
  apply hpq
  rcases lt_trichotomy p.2 q.2 with h | h | h
  · have k1 : (1 : Int) ≤ q.2 - p.2 := by omega
    have k2 : N * 1 ≤ N * (q.2 - p.2) := Int.mul_le_mul_of_nonneg_left k1 (le_of_lt hN)
    nlinarith
  · have hx : p.1 = q.1 := by rw [h] at he; omega
    exact Prod.ext hx h
  · have k1 : (1 : Int) ≤ p.2 - q.2 := by omega
    have k2 : N * 1 ≤ N * (p.2 - q.2) := Int.mul_le_mul_of_nonneg_left k1 (le_of_lt hN)
    nlinarith


/-! ## 2. Ray crossings and the abstract parity core -/

/-- The rightward (infinitesimally tilted) ray from `v` crosses the segment
`[c,d]`.  `hlt c v && hlt v d` is the straddle test for the ray's supporting
line; the `orient` test picks the forward half of that line. -/
def rayCrossR (v c d : Pt) : Bool :=
  (hlt c v && hlt v d && decide (0 < orient c d v)) ||
  (hlt d v && hlt v c && decide (orient c d v < 0))

/-- The leftward ray from `v` crosses the segment `[c,d]`: same straddle test,
opposite half. -/
def rayCrossL (v c d : Pt) : Bool :=
  (hlt c v && hlt v d && decide (orient c d v < 0)) ||
  (hlt d v && hlt v c && decide (0 < orient c d v))

/-- `0/1` indicator that `[a,b]` and `[c,d]` cross properly. -/
def crossN (a b c d : Pt) : Nat := nOf (decide (ProperCross a b c d))

/-- `0/1` indicator that the rightward ray from `v` crosses `[c,d]`. -/
def rayRN (v c d : Pt) : Nat := nOf (rayCrossR v c d)

/-- `0/1` indicator that the leftward ray from `v` crosses `[c,d]`. -/
def rayLN (v c d : Pt) : Nat := nOf (rayCrossL v c d)

/-- `xy, yz, xz` are the comparison bits of a strict order: no 3-cycle. -/
def trans3 (xy yz xz : Bool) : Bool := !(xy && yz && !xz) && !(!xy && !yz && xz)

/-- The three bits are not all equal. -/
def notAll3 (q1 q2 q3 : Bool) : Bool := !((q1 == q2) && (q2 == q3))

/-- The four bits are not all equal. -/
def notAll4 (q1 q2 q3 q4 : Bool) : Bool :=
  !(q1 && q2 && q3 && q4) && !(!q1 && !q2 && !q3 && !q4)

/-- Abstract form of `decide (ProperCross a b c d)`. -/
def bX (pA pB pC pD : Bool) : Bool := (pA != pB) && (pC != pD)

/-- Abstract form of `rayCrossR a c d` (with `p = pC`, `lc = Lac`, `ld = Lad`). -/
def bR (p lc ld : Bool) : Bool := (!lc && ld && p) || (!ld && lc && !p)

/-- Abstract form of `rayCrossL c a b` (with `p = pA`, `lac = Lac`, `lbc = Lbc`). -/
def bL (p lac lbc : Bool) : Bool := (lac && !lbc && !p) || (lbc && !lac && p)

/-- **THE COMBINATORIAL CORE.**  Ten Booleans -- the four orientation signs and
the six height comparisons -- with the four order-consistency constraints and
the five sign constraints coming from the Grassmann-Plücker relations, force the
five crossing indicators to `xor` to `false`.  Kernel check over the `2^10`
assignments; exactly 192 of them survive the constraints. -/
def coreHyp (pA pB pC pD Lab Lac Lad Lbc Lbd Lcd : Bool) : Bool :=
  trans3 Lab Lbc Lac && trans3 Lab Lbd Lad &&
  trans3 Lac Lcd Lad && trans3 Lbc Lcd Lbd &&
  notAll3 (pA == Lad) (pB == !Lac) (pC == Lab) &&
  notAll3 (pA == !Lbd) (pB == Lbc) (pD == !Lab) &&
  notAll3 (pC == !Lbc) (pD == Lac) (pA == Lcd) &&
  notAll3 (pC == Lbd) (pD == !Lad) (pB == !Lcd) &&
  notAll4 pA (!pB) pC (!pD)

theorem bool_core : ∀ pA pB pC pD Lab Lac Lad Lbc Lbd Lcd : Bool,
    coreHyp pA pB pC pD Lab Lac Lad Lbc Lbd Lcd = true →
    (bX pA pB pC pD ^^ bR pC Lac Lad ^^ bR pD Lbc Lbd ^^
      bL pA Lac Lbc ^^ bL pB Lad Lbd) = false := by decide

/-! ### Sign bookkeeping -/

theorem decide_pos_mul (x y : Int) (hx : x ≠ 0) (hy : y ≠ 0) :
    decide (0 < x * y) = (decide (0 < x) == decide (0 < y)) := by
  have h := mul_neg_iff_sign_ne hx hy
  have hne : x * y ≠ 0 := mul_ne_zero hx hy
  revert h hne
  generalize x * y = z
  intro h hne
  by_cases p1 : 0 < x <;> by_cases p2 : 0 < y <;> simp [p1, p2] at h ⊢ <;> omega

theorem notAll3_of_sum_zero (t1 t2 t3 : Int) (h : t1 + t2 + t3 = 0)
    (h1 : t1 ≠ 0) (h2 : t2 ≠ 0) (h3 : t3 ≠ 0) :
    notAll3 (decide (0 < t1)) (decide (0 < t2)) (decide (0 < t3)) = true := by
  by_cases p1 : 0 < t1 <;> by_cases p2 : 0 < t2 <;> by_cases p3 : 0 < t3 <;>
    simp [notAll3, p1, p2, p3] <;> omega

theorem notAll4_of_sum_zero (t1 t2 t3 t4 : Int) (h : t1 + t2 + t3 + t4 = 0)
    (h1 : t1 ≠ 0) (h2 : t2 ≠ 0) (h3 : t3 ≠ 0) (h4 : t4 ≠ 0) :
    notAll4 (decide (0 < t1)) (decide (0 < t2)) (decide (0 < t3)) (decide (0 < t4)) = true := by
  by_cases p1 : 0 < t1 <;> by_cases p2 : 0 < t2 <;> by_cases p3 : 0 < t3 <;>
    by_cases p4 : 0 < t4 <;> simp [notAll4, p1, p2, p3, p4] <;> omega

theorem trans3_of_lt (x y z : Int) :
    trans3 (decide (x < y)) (decide (y < z)) (decide (x < z)) = true := by
  by_cases h1 : x < y <;> by_cases h2 : y < z <;> by_cases h3 : x < z <;>
    simp [trans3, h1, h2, h3] <;> omega

theorem decide_lt_swap (x y : Int) (h : x ≠ y) : decide (y < x) = !decide (x < y) := by
  by_cases h1 : x < y <;> simp [h1] <;> omega

theorem decide_neg_of_ne (x : Int) (h : x ≠ 0) : decide (x < 0) = !decide (0 < x) := by
  by_cases h1 : 0 < x <;> simp [h1] <;> omega



/-! ## 3. The four-point parity identity -/

theorem decide_pos_mul_sub (x u v : Int) (hx : x ≠ 0) (huv : u ≠ v) :
    decide (0 < x * (v - u)) = (decide (0 < x) == decide (u < v)) := by
  rw [decide_pos_mul _ _ hx (sub_ne_zero.mpr (Ne.symm huv))]
  congr 1
  exact decide_eq_decide.mpr sub_pos

theorem decide_pos_neg (x : Int) (h : x ≠ 0) : decide (0 < -x) = !decide (0 < x) := by
  by_cases h1 : 0 < x <;> simp [h1] <;> omega

/-- The bridge from the combinatorial core to the geometric statement. -/
theorem four_point_bridge (a b c d : Pt) (pA pB pC pD Lab Lac Lad Lbc Lbd Lcd : Bool)
    (eX : decide (ProperCross a b c d) = bX pA pB pC pD)
    (eR1 : rayCrossR a c d = bR pC Lac Lad)
    (eR2 : rayCrossR b c d = bR pD Lbc Lbd)
    (eL1 : rayCrossL c a b = bL pA Lac Lbc)
    (eL2 : rayCrossL d a b = bL pB Lad Lbd)
    (t1 : trans3 Lab Lbc Lac = true) (t2 : trans3 Lab Lbd Lad = true)
    (t3 : trans3 Lac Lcd Lad = true) (t4 : trans3 Lbc Lcd Lbd = true)
    (c1 : notAll3 (pA == Lad) (pB == !Lac) (pC == Lab) = true)
    (c2 : notAll3 (pA == !Lbd) (pB == Lbc) (pD == !Lab) = true)
    (c3 : notAll3 (pC == !Lbc) (pD == Lac) (pA == Lcd) = true)
    (c4 : notAll3 (pC == Lbd) (pD == !Lad) (pB == !Lcd) = true)
    (c5 : notAll4 pA (!pB) pC (!pD) = true) :
    (crossN a b c d + rayRN a c d + rayRN b c d + rayLN c a b + rayLN d a b) % 2 = 0 := by
  simp only [crossN, rayRN, rayLN, eX, eR1, eR2, eL1, eL2]
  refine xor5_parity _ _ _ _ _ (bool_core pA pB pC pD Lab Lac Lad Lbc Lbd Lcd ?_)
  simp only [coreHyp, t1, t2, t3, t4, c1, c2, c3, c4, c5, Bool.and_self]

/-- **THE FOUR-POINT PARITY IDENTITY.**

For any four integer points in the only general position this file needs -- the
four orientation determinants that the two segments `[a,b]` and `[c,d]` produce
are nonzero -- the number of

  * proper crossings of `[a,b]` with `[c,d]`,
  * crossings of the rightward ray from `a` (resp. `b`) with `[c,d]`,
  * crossings of the leftward ray from `c` (resp. `d`) with `[a,b]`

is EVEN.  Geometrically this is the statement that the two bi-infinite curves
`ray(a) ∪ [a,b] ∪ ray(b)` (going east) and `ray(c) ∪ [c,d] ∪ ray(d)` (going
west) meet an even number of times, because their four ends do not interleave at
infinity.  The proof is the `2^10` kernel enumeration `bool_core` fed with the
four Grassmann-Plücker relations. -/
theorem four_point_parity (a b c d : Pt)
    (hA : orient a b c ≠ 0) (hB : orient a b d ≠ 0)
    (hC : orient c d a ≠ 0) (hD : orient c d b ≠ 0) :
    (crossN a b c d + rayRN a c d + rayRN b c d + rayLN c a b + rayLN d a b) % 2 = 0 := by
  -- the four points are pairwise distinct
  have nab : a ≠ b := by rintro rfl; exact hA (by simp only [orient]; ring)
  have nac : a ≠ c := by rintro rfl; exact hA (by simp only [orient]; ring)
  have nbc : b ≠ c := by rintro rfl; exact hA (by simp only [orient]; ring)
  have nad : a ≠ d := by rintro rfl; exact hB (by simp only [orient]; ring)
  have nbd : b ≠ d := by rintro rfl; exact hB (by simp only [orient]; ring)
  have ncd : c ≠ d := by rintro rfl; exact hC (by simp only [orient]; ring)
  -- a shear parameter large enough to realise the lexicographic order
  obtain ⟨N, hN⟩ : ∃ N : Int, ∀ p q : Pt,
      (p = a ∨ p = b ∨ p = c ∨ p = d) → (q = a ∨ q = b ∨ q = c ∨ q = d) →
        p.1 - q.1 < N := by
    refine ⟨1 + (a.1.natAbs : Int) + (b.1.natAbs : Int) + (c.1.natAbs : Int)
              + (d.1.natAbs : Int), ?_⟩
    rintro p q (rfl | rfl | rfl | rfl) (rfl | rfl | rfl | rfl) <;> omega
  have ma : (a = a ∨ a = b ∨ a = c ∨ a = d) := Or.inl rfl
  have mb : (b = a ∨ b = b ∨ b = c ∨ b = d) := Or.inr (Or.inl rfl)
  have mc : (c = a ∨ c = b ∨ c = c ∨ c = d) := Or.inr (Or.inr (Or.inl rfl))
  have md : (d = a ∨ d = b ∨ d = c ∨ d = d) := Or.inr (Or.inr (Or.inr rfl))
  have E : ∀ p q : Pt, (p = a ∨ p = b ∨ p = c ∨ p = d) →
      (q = a ∨ q = b ∨ q = c ∨ q = d) →
      hlt p q = decide (N * p.2 + p.1 < N * q.2 + q.1) :=
    fun p q hp hq => hlt_eq_decide N p q (hN p q hp hq) (hN q p hq hp)
  have EN : ∀ p q : Pt, (p = a ∨ p = b ∨ p = c ∨ p = d) →
      (q = a ∨ q = b ∨ q = c ∨ q = d) → p ≠ q →
      N * p.2 + p.1 ≠ N * q.2 + q.1 :=
    fun p q hp hq hne => shear_ne N p q (hN p q hp hq) (hN q p hq hp) hne
  have Eab := E a b ma mb
  have Eac := E a c ma mc
  have Ead := E a d ma md
  have Ebc := E b c mb mc
  have Ebd := E b d mb md
  have Ecd := E c d mc md
  have Eca := E c a mc ma
  have Eda := E d a md ma
  have Ecb := E c b mc mb
  have Edb := E d b md mb
  have Nab := EN a b ma mb nab
  have Nac := EN a c ma mc nac
  have Nad := EN a d ma md nad
  have Nbc := EN b c mb mc nbc
  have Nbd := EN b d mb md nbd
  have Ncd := EN c d mc md ncd
  set Ha : Int := N * a.2 + a.1 with hHa
  set Hb : Int := N * b.2 + b.1 with hHb
  set Hc : Int := N * c.2 + c.1 with hHc
  set Hd : Int := N * d.2 + d.1 with hHd
  rw [decide_lt_swap _ _ Nac] at Eca
  rw [decide_lt_swap _ _ Nad] at Eda
  rw [decide_lt_swap _ _ Nbc] at Ecb
  rw [decide_lt_swap _ _ Nbd] at Edb
  -- the five indicator terms in abstract form
  have eX : decide (ProperCross a b c d) =
      bX (decide (0 < orient a b c)) (decide (0 < orient a b d))
         (decide (0 < orient c d a)) (decide (0 < orient c d b)) := by
    have hiff : ProperCross a b c d ↔
        ((decide (0 < orient a b c) != decide (0 < orient a b d)) = true ∧
         (decide (0 < orient c d a) != decide (0 < orient c d b)) = true) := by
      constructor
      · rintro ⟨h1, h2⟩
        exact ⟨bne_iff_ne.mpr ((mul_neg_iff_sign_ne hA hB).mp h1),
               bne_iff_ne.mpr ((mul_neg_iff_sign_ne hC hD).mp h2)⟩
      · rintro ⟨h1, h2⟩
        exact ⟨(mul_neg_iff_sign_ne hA hB).mpr (bne_iff_ne.mp h1),
               (mul_neg_iff_sign_ne hC hD).mpr (bne_iff_ne.mp h2)⟩
    rw [Bool.eq_iff_iff, decide_eq_true_eq, bX, Bool.and_eq_true]
    exact hiff
  have eR1 : rayCrossR a c d =
      bR (decide (0 < orient c d a)) (decide (Ha < Hc)) (decide (Ha < Hd)) := by
    simp only [rayCrossR, bR, Eca, Ead, Eda, Eac, decide_neg_of_ne _ hC]
  have eR2 : rayCrossR b c d =
      bR (decide (0 < orient c d b)) (decide (Hb < Hc)) (decide (Hb < Hd)) := by
    simp only [rayCrossR, bR, Ecb, Ebd, Edb, Ebc, decide_neg_of_ne _ hD]
  have eL1 : rayCrossL c a b =
      bL (decide (0 < orient a b c)) (decide (Ha < Hc)) (decide (Hb < Hc)) := by
    simp only [rayCrossL, bL, Eac, Ecb, Ebc, Eca, decide_neg_of_ne _ hA]
  have eL2 : rayCrossL d a b =
      bL (decide (0 < orient a b d)) (decide (Ha < Hd)) (decide (Hb < Hd)) := by
    simp only [rayCrossL, bL, Ead, Edb, Ebd, Eda, decide_neg_of_ne _ hB]
  -- the Grassmann-Plücker relations
  have P1 : orient a b c * (Hd - Ha) + orient a b d * (Ha - Hc)
      + orient c d a * (Hb - Ha) = 0 := by
    simp only [hHa, hHb, hHc, hHd, orient]; ring
  have P2 : orient a b c * (Hb - Hd) + orient a b d * (Hc - Hb)
      + orient c d b * (Ha - Hb) = 0 := by
    simp only [hHa, hHb, hHc, hHd, orient]; ring
  have P3 : orient c d a * (Hb - Hc) + orient c d b * (Hc - Ha)
      + orient a b c * (Hd - Hc) = 0 := by
    simp only [hHa, hHb, hHc, hHd, orient]; ring
  have P4 : orient c d a * (Hd - Hb) + orient c d b * (Ha - Hd)
      + orient a b d * (Hc - Hd) = 0 := by
    simp only [hHa, hHb, hHc, hHd, orient]; ring
  have P5 : orient a b c + -orient a b d + orient c d a + -orient c d b = 0 := by
    simp only [orient]; ring
  have c1 : notAll3 (decide (0 < orient a b c) == decide (Ha < Hd))
                    (decide (0 < orient a b d) == !decide (Ha < Hc))
                    (decide (0 < orient c d a) == decide (Ha < Hb)) = true := by
    have h := notAll3_of_sum_zero _ _ _ P1
      (mul_ne_zero hA (sub_ne_zero.mpr (Ne.symm Nad)))
      (mul_ne_zero hB (sub_ne_zero.mpr Nac))
      (mul_ne_zero hC (sub_ne_zero.mpr (Ne.symm Nab)))
    rwa [decide_pos_mul_sub _ _ _ hA Nad, decide_pos_mul_sub _ _ _ hB (Ne.symm Nac),
      decide_pos_mul_sub _ _ _ hC Nab, decide_lt_swap _ _ Nac] at h
  have c2 : notAll3 (decide (0 < orient a b c) == !decide (Hb < Hd))
                    (decide (0 < orient a b d) == decide (Hb < Hc))
                    (decide (0 < orient c d b) == !decide (Ha < Hb)) = true := by
    have h := notAll3_of_sum_zero _ _ _ P2
      (mul_ne_zero hA (sub_ne_zero.mpr Nbd))
      (mul_ne_zero hB (sub_ne_zero.mpr (Ne.symm Nbc)))
      (mul_ne_zero hD (sub_ne_zero.mpr Nab))
    rwa [decide_pos_mul_sub _ _ _ hA (Ne.symm Nbd), decide_pos_mul_sub _ _ _ hB Nbc,
      decide_pos_mul_sub _ _ _ hD (Ne.symm Nab), decide_lt_swap _ _ Nbd,
      decide_lt_swap _ _ Nab] at h
  have c3 : notAll3 (decide (0 < orient c d a) == !decide (Hb < Hc))
                    (decide (0 < orient c d b) == decide (Ha < Hc))
                    (decide (0 < orient a b c) == decide (Hc < Hd)) = true := by
    have h := notAll3_of_sum_zero _ _ _ P3
      (mul_ne_zero hC (sub_ne_zero.mpr Nbc))
      (mul_ne_zero hD (sub_ne_zero.mpr (Ne.symm Nac)))
      (mul_ne_zero hA (sub_ne_zero.mpr (Ne.symm Ncd)))
    rwa [decide_pos_mul_sub _ _ _ hC (Ne.symm Nbc), decide_pos_mul_sub _ _ _ hD Nac,
      decide_pos_mul_sub _ _ _ hA Ncd, decide_lt_swap _ _ Nbc] at h
  have c4 : notAll3 (decide (0 < orient c d a) == decide (Hb < Hd))
                    (decide (0 < orient c d b) == !decide (Ha < Hd))
                    (decide (0 < orient a b d) == !decide (Hc < Hd)) = true := by
    have h := notAll3_of_sum_zero _ _ _ P4
      (mul_ne_zero hC (sub_ne_zero.mpr (Ne.symm Nbd)))
      (mul_ne_zero hD (sub_ne_zero.mpr Nad))
      (mul_ne_zero hB (sub_ne_zero.mpr Ncd))
    rwa [decide_pos_mul_sub _ _ _ hC Nbd, decide_pos_mul_sub _ _ _ hD (Ne.symm Nad),
      decide_pos_mul_sub _ _ _ hB (Ne.symm Ncd), decide_lt_swap _ _ Nad,
      decide_lt_swap _ _ Ncd] at h
  have c5 : notAll4 (decide (0 < orient a b c)) (!decide (0 < orient a b d))
      (decide (0 < orient c d a)) (!decide (0 < orient c d b)) = true := by
    have h := notAll4_of_sum_zero _ _ _ _ P5 hA (neg_ne_zero.mpr hB) hC (neg_ne_zero.mpr hD)
    rwa [decide_pos_neg _ hB, decide_pos_neg _ hD] at h
  exact four_point_bridge a b c d _ _ _ _ (decide (Ha < Hb)) (decide (Ha < Hc))
    (decide (Ha < Hd)) (decide (Hb < Hc)) (decide (Hb < Hd)) (decide (Hc < Hd))
    eX eR1 eR2 eL1 eL2
    (trans3_of_lt Ha Hb Hc) (trans3_of_lt Ha Hb Hd)
    (trans3_of_lt Ha Hc Hd) (trans3_of_lt Hb Hc Hd)
    c1 c2 c3 c4 c5



/-! ## 4. Telescoping around the closed curve -/

/-- The number of sides of the closed 7-cycle `W` that the rightward ray from
`v` crosses.  Side `j` joins `W j` to `W (j+1)`, and `W 7 = W 0` closes it. -/
def insideCnt (W : Nat → Pt) (v : Pt) : Nat :=
  rayRN v (W 0) (W 1) + rayRN v (W 1) (W 2) + rayRN v (W 2) (W 3) + rayRN v (W 3) (W 4)
    + rayRN v (W 4) (W 5) + rayRN v (W 5) (W 6) + rayRN v (W 6) (W 7)

/-- **`v` is INSIDE the closed 7-cycle `W`**, by the ray-crossing parity test.
Purely `Int` arithmetic; no topology and no reals. -/
def insideB (W : Nat → Pt) (v : Pt) : Bool := decide (insideCnt W v % 2 = 1)

/-- The number of sides of `W` that the segment `[a,b]` crosses properly. -/
def sideCross (W : Nat → Pt) (a b : Pt) : Nat :=
  crossN a b (W 0) (W 1) + crossN a b (W 1) (W 2) + crossN a b (W 2) (W 3)
    + crossN a b (W 3) (W 4) + crossN a b (W 4) (W 5) + crossN a b (W 5) (W 6)
    + crossN a b (W 6) (W 7)

/-- **THE PER-SIDE CROSSING-PARITY LEMMA.**  A segment `[a,b]` crosses the
closed curve `W` an odd number of times exactly when its two endpoints have
different `insideCnt` parities -- i.e. exactly when crossing the curve toggled
inside/outside.  This is the telescoping of `four_point_parity` around the
cycle: the leftward-ray terms attached to the VERTICES of `W` each occur twice
and cancel mod 2. -/
theorem side_parity (W : Nat → Pt) (a b : Pt) (hper : W 7 = W 0)
    (h1 : ∀ j, j ≤ 7 → orient a b (W j) ≠ 0)
    (h2 : ∀ j, j < 7 → orient (W j) (W (j + 1)) a ≠ 0)
    (h3 : ∀ j, j < 7 → orient (W j) (W (j + 1)) b ≠ 0) :
    sideCross W a b % 2 = (insideCnt W a + insideCnt W b) % 2 := by
  have k0 := four_point_parity a b (W 0) (W 1)
    (h1 0 (by omega)) (h1 1 (by omega)) (h2 0 (by omega)) (h3 0 (by omega))
  have k1 := four_point_parity a b (W 1) (W 2)
    (h1 1 (by omega)) (h1 2 (by omega)) (h2 1 (by omega)) (h3 1 (by omega))
  have k2 := four_point_parity a b (W 2) (W 3)
    (h1 2 (by omega)) (h1 3 (by omega)) (h2 2 (by omega)) (h3 2 (by omega))
  have k3 := four_point_parity a b (W 3) (W 4)
    (h1 3 (by omega)) (h1 4 (by omega)) (h2 3 (by omega)) (h3 3 (by omega))
  have k4 := four_point_parity a b (W 4) (W 5)
    (h1 4 (by omega)) (h1 5 (by omega)) (h2 4 (by omega)) (h3 4 (by omega))
  have k5 := four_point_parity a b (W 5) (W 6)
    (h1 5 (by omega)) (h1 6 (by omega)) (h2 5 (by omega)) (h3 5 (by omega))
  have k6 := four_point_parity a b (W 6) (W 7)
    (h1 6 (by omega)) (h1 7 (by omega)) (h2 6 (by omega)) (h3 6 (by omega))
  have hL : rayLN (W 7) a b = rayLN (W 0) a b := by rw [hper]
  simp only [sideCross, insideCnt]
  omega

/-! ## 5. Configurations -/

/-- The `P`-cycle of a configuration, `Nat`-indexed mod 7. -/
def PW (K : Config) : Nat → Pt := fun i => vtx 7 K.PV i

/-- The `Q`-cycle of a configuration, `Nat`-indexed mod 7. -/
def QW (K : Config) : Nat → Pt := fun j => vtx 7 K.QV j

theorem PW_seven (K : Config) : PW K 7 = PW K 0 := rfl
theorem QW_seven (K : Config) : QW K 7 = QW K 0 := rfl

/-- No vertex of `Q` lies on a side-line of `P`; `Config` field, transported to
the `Nat`-mod-7 indexing. -/
theorem gpP (K : Config) (i j : Nat) (hi : i < 7) (hj : j < 7) :
    orient (PW K i) (PW K (i + 1)) (QW K j) ≠ 0 := by
  have e1 : PW K i = K.Pv ⟨i, hi⟩ := vtx_PV K ⟨i, hi⟩
  have e2 : PW K (i + 1) = K.Pv (⟨i, hi⟩ + 1) := vtx_PV_succ K ⟨i, hi⟩
  have e3 : QW K j = K.Qv ⟨j, hj⟩ := vtx_QV K ⟨j, hj⟩
  rw [e1, e2, e3]
  exact K.no_Q_vertex_on_P_side_line _ _

/-- No vertex of `P` lies on a side-line of `Q`; `Config` field, transported. -/
theorem gpQ (K : Config) (i j : Nat) (hi : i < 7) (hj : j < 7) :
    orient (QW K j) (QW K (j + 1)) (PW K i) ≠ 0 := by
  have e1 : PW K i = K.Pv ⟨i, hi⟩ := vtx_PV K ⟨i, hi⟩
  have e2 : QW K j = K.Qv ⟨j, hj⟩ := vtx_QV K ⟨j, hj⟩
  have e3 : QW K (j + 1) = K.Qv (⟨j, hj⟩ + 1) := vtx_QV_succ K ⟨j, hj⟩
  rw [e1, e2, e3]
  exact K.no_P_vertex_on_Q_side_line _ _

theorem gpP' (K : Config) (i j : Nat) (hi : i < 7) (hj : j ≤ 7) :
    orient (PW K i) (PW K (i + 1)) (QW K j) ≠ 0 := by
  rcases Nat.lt_or_ge j 7 with h | h
  · exact gpP K i j hi h
  · have hj7 : j = 7 := by omega
    subst hj7
    rw [QW_seven]
    exact gpP K i 0 hi (by omega)

/-- Each summand of `crossRow` is a `crossN`. -/
theorem disj_term (K : Config) (i j : Nat) :
    (if disjB K i j then 0 else 1) = crossN (PW K i) (PW K (i + 1)) (QW K j) (QW K (j + 1)) := by
  simp only [crossN, nOf, PW, QW]
  by_cases h : ProperCross (vtx 7 K.PV i) (vtx 7 K.PV (i + 1))
      (vtx 7 K.QV j) (vtx 7 K.QV (j + 1))
  · have : disjB K i j = false := by
      simp [disjB, DisjointO, h]
    simp [this, h]
  · have : disjB K i j = true := by
      simp [disjB, DisjointO, h]
    simp [this, h]

/-- `EnumerationDomain.crossRow` is the number of sides of `Q` crossed by side
`i` of `P`. -/
theorem crossRow_eq (K : Config) (i : Nat) :
    crossRow K i = sideCross (QW K) (PW K i) (PW K (i + 1)) := by
  have e0 := disj_term K i 0
  have e1 := disj_term K i 1
  have e2 := disj_term K i 2
  have e3 := disj_term K i 3
  have e4 := disj_term K i 4
  have e5 := disj_term K i 5
  have e6 := disj_term K i 6
  norm_num at e0 e1 e2 e3 e4 e5 e6
  simp only [crossRow, idx7, List.foldl, sideCross]
  omega

/-- **THE PER-SIDE LEMMA FOR A CONFIGURATION.** -/
theorem crossRow_parity (K : Config) (i : Nat) (hi : i < 7) :
    crossRow K i % 2 =
      (insideCnt (QW K) (PW K i) + insideCnt (QW K) (PW K (i + 1))) % 2 := by
  rw [crossRow_eq]
  refine side_parity (QW K) (PW K i) (PW K (i + 1)) (QW_seven K) ?_ ?_ ?_
  · intro j hj; exact gpP' K i j hi hj
  · intro j hj; exact gpQ K i j hi hj
  · intro j hj
    rcases Nat.lt_or_ge (i + 1) 7 with h | h
    · exact gpQ K (i + 1) j h hj
    · have : i + 1 = 7 := by omega
      rw [this, PW_seven]
      exact gpQ K 0 j (by omega) hj


/-! ## 5. The cyclic sum

Each vertex indicator appears in exactly two consecutive sides, so summing the
per-side lemma around the closed polygon doubles every term.  This is the same
cancellation `SegmentGeometry.cycChanges_even` performs for a line; here it is
done directly on the seven `crossRow` terms. -/

/-- **`I` IS EVEN.**  The total number of properly crossing side pairs of any
configuration is even.

This is the last elementary hypothesis of the upper bound: with it,
`UpperBoundAssembly.crossCountC_le_38` needs only the two exclusions, and
`MainTheorem.isGreatest_38` needs only `hne42` and `hne40`. -/
theorem crossCountC_even (K : Config) : crossCountC K % 2 = 0 := by
  have h0 := crossRow_parity K 0 (by omega)
  have h1 := crossRow_parity K 1 (by omega)
  have h2 := crossRow_parity K 2 (by omega)
  have h3 := crossRow_parity K 3 (by omega)
  have h4 := crossRow_parity K 4 (by omega)
  have h5 := crossRow_parity K 5 (by omega)
  have h6 := crossRow_parity K 6 (by omega)
  norm_num at h0 h1 h2 h3 h4 h5 h6
  rw [PW_seven K] at h6
  simp only [crossCountC, idx7, List.foldl]
  omega

/-- The certificate pair, by *application* of the general theorem. -/
theorem cert_crossCountC_even : crossCountC certConfig % 2 = 0 :=
  crossCountC_even certConfig

/-! ## 6. What this closes

With parity proved, `heven` disappears from every downstream statement.  The
upper bound now rests on ONE open input: the enumeration. -/

/-- **The upper bound, with parity discharged.**  Only the class data and the
`I = 40` exclusion remain. -/
theorem crossCountC_le_38_final (K : Config) {mcs : List Nat} {MP : Finset Nat}
    (hMPcard : MP.card = 5)
    (hclass : ∀ C ∈ mcs, ∃ m ∈ MP, m < 7 ∧ ∀ i, i < 7 → (bitAt C i = true ↔ i ≠ m))
    (hcross : ∀ j, j < 7 → ∃ C ∈ mcs, ∀ i, i < 7 → ¬ DisjointO K i j → bitAt C i = true)
    (hne40 : crossCountC K ≠ 40) :
    crossCountC K ≤ 38 :=
  Heptagon.UpperBoundAssembly.crossCountC_le_38_of_enumeration K
    (crossCountC_even K) hMPcard hclass hcross hne40

/-- **The target statement, with parity discharged.**

Compare `MainTheorem.isGreatest_38`, which needed three hypotheses.  Two are now
gone: `hne42` was discharged by `Exclude42`, and `heven` is proved here.  What
remains is the class data -- shared with the enumeration branch, not extra -- and
`hne40`, which is the 13 003 620-graph enumeration and nothing else. -/
theorem isGreatest_38_final
    (hclass : ∀ K : Config, ∃ (mcs : List Nat) (MP : Finset Nat),
        MP.card = 5 ∧
        (∀ C ∈ mcs, ∃ m ∈ MP, m < 7 ∧ ∀ i, i < 7 → (bitAt C i = true ↔ i ≠ m)) ∧
        (∀ j, j < 7 → ∃ C ∈ mcs, ∀ i, i < 7 → ¬ DisjointO K i j → bitAt C i = true))
    (hne40 : ∀ K : Config, crossCountC K ≠ 40) :
    IsGreatest Heptagon.MainTheorem.attained 38 :=
  Heptagon.MainTheorem.isGreatest_38_of_enumeration
    (fun K => crossCountC_even K) hclass hne40

end IntersectionParity
end Heptagon
