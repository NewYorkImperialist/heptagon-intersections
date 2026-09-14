/-
  IntersectionParity.lean
  =======================

  WORK IN PROGRESS header -- replaced at the end.
-/
import UpperBoundAssembly

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
theorem bool_core : ∀ pA pB pC pD Lab Lac Lad Lbc Lbd Lcd : Bool,
    trans3 Lab Lbc Lac = true → trans3 Lab Lbd Lad = true →
    trans3 Lac Lcd Lad = true → trans3 Lbc Lcd Lbd = true →
    notAll3 (pA == Lad) (pB == !Lac) (pC == Lab) = true →
    notAll3 (pA == !Lbd) (pB == Lbc) (pD == !Lab) = true →
    notAll3 (pC == !Lbc) (pD == Lac) (pA == Lcd) = true →
    notAll3 (pC == Lbd) (pD == !Lad) (pB == !Lcd) = true →
    notAll4 pA (!pB) pC (!pD) = true →
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


end IntersectionParity
end Heptagon
