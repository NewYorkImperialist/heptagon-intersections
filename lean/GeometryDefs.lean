/-
  GeometryDefs.lean

  Planar points, the orientation determinant, segments, lines, side-of-line
  signs, and cyclic vertex/side indexing for a closed polygonal cycle.

  **Core Lean only — this file imports NOTHING.**  No Mathlib, no `axiom`, no
  `sorry`, no `native_decide`, no `unsafe`, no `partial`.

  DESIGN NOTE.  Every definition here is chosen to agree *on the nose* with the
  ones already in use in the repository, so that no competing vocabulary is
  introduced:

  * `Pt`, `orient` and `ProperCross` are literally the definitions of
    `lean/LowerBound.lean` (`Heptagon.LowerBound`).  `SegmentGeometry.lean`
    proves the agreement (`orient_eq_lowerBound`, `properCross_iff_lowerBound`),
    both by `rfl`, so the two developments cannot drift apart silently.
  * `CycAdj` is the `mod n` form of `Heptagon.Endgame.CycAdj` of
    `lean/EndgameDefs.lean`; `SegmentGeometry.lean` proves
    `cycAdj_seven_iff_endgame`.
  * side `j` of a cycle joins vertex `j` to vertex `j + 1 (mod n)`, the
    convention of `LowerBound.Pside` / `EndgameDefs`.

  SCOPE NOTE (read before believing anything).  Everything is at the level of
  *orientation predicates on integer coordinates*, exactly as in
  `LowerBound.lean`.  In particular:

  * `ProperCross` is the two-sided straddling test, not a point-set statement.
  * `Line.MeetsClosed L u v` is `L.eval u * L.eval v ≤ 0`.  Because `L.eval` is
    affine, this is the correct surrogate for "the line `L` and the closed
    segment `[u,v]` share a point"; that equivalence is a statement about `ℝ²`
    and is NOT formalised here.
  * Nothing here says a closed polygonal cycle is a simple closed curve.

  THE STRICT / LOOSE DISTINCTION, which this file is careful to keep.
  `Line.Separates` (strict, endpoints strictly on opposite sides) and
  `Line.MeetsClosed` (loose, `≤`) are DIFFERENT predicates.  They coincide
  exactly when the line avoids both endpoints
  (`separates_iff_meetsClosed_of_avoids`).  The project's classification depends
  on this difference — see `docs/a7-specification.md` and `docs/known-issues.md`
  K-09 — and `SegmentGeometry.lean` exhibits a simple triangle and a line
  meeting all three of its *closed* sides, so the loose form of the main theorem
  is false.
-/

set_option autoImplicit false

namespace Heptagon
namespace Geometry

/-! ## Points and the orientation determinant -/

/-- A point with exact integer coordinates.  Definitionally `LowerBound.Pt`. -/
abbrev Pt := Int × Int

/-- Twice the signed area of the triangle `a b c`.  Positive iff `a, b, c` is a
counterclockwise turn, zero iff the three points are collinear.  This is
character-for-character `Heptagon.LowerBound.orient`. -/
def orient (a b c : Pt) : Int :=
  (b.1 - a.1) * (c.2 - a.2) - (b.2 - a.2) * (c.1 - a.1)

/-- Three points are collinear iff their orientation determinant vanishes. -/
def Collinear (a b c : Pt) : Prop := orient a b c = 0

instance (a b c : Pt) : Decidable (Collinear a b c) :=
  inferInstanceAs (Decidable (_ = _))

/-! ## Segments and proper crossings -/

/-- The segments `[p1,p2]` and `[q1,q2]` **cross properly**: each segment has the
two endpoints of the other strictly on opposite sides of its supporting line.
This is character-for-character `Heptagon.LowerBound.ProperCross`. -/
def ProperCross (p1 p2 q1 q2 : Pt) : Prop :=
  orient p1 p2 q1 * orient p1 p2 q2 < 0 ∧ orient q1 q2 p1 * orient q1 q2 p2 < 0

instance (p1 p2 q1 q2 : Pt) : Decidable (ProperCross p1 p2 q1 q2) :=
  inferInstanceAs (Decidable (_ ∧ _))

/-! ## Lines

A line is stored by its three integer coefficients.  The point set it denotes is
`{ (x,y) : a*x + b*y + c = 0 }`, which is a genuine line exactly when
`Line.Proper` holds. -/

/-- A line `a*x + b*y + c = 0` with integer coefficients. -/
structure Line where
  a : Int
  b : Int
  c : Int
deriving DecidableEq, Repr

/-- The affine form of `L` evaluated at `p`.  Zero exactly on the line. -/
def Line.eval (L : Line) (p : Pt) : Int := L.a * p.1 + L.b * p.2 + L.c

/-- `L` is a genuine line (its normal vector is nonzero). -/
def Line.Proper (L : Line) : Prop := L.a ≠ 0 ∨ L.b ≠ 0

/-- `p` lies on `L`. -/
def Line.On (L : Line) (p : Pt) : Prop := L.eval p = 0

/-- `L` avoids the point `p`.  This is the **strict** vertex condition. -/
def Line.Avoids (L : Line) (p : Pt) : Prop := L.eval p ≠ 0

instance (L : Line) : Decidable L.Proper := inferInstanceAs (Decidable (_ ∨ _))
instance (L : Line) (p : Pt) : Decidable (L.On p) := inferInstanceAs (Decidable (_ = _))
instance (L : Line) (p : Pt) : Decidable (L.Avoids p) := inferInstanceAs (Decidable (¬ _))

/-- The supporting line of the segment `[p,q]`. -/
def lineThrough (p q : Pt) : Line :=
  { a := p.2 - q.2, b := q.1 - p.1, c := p.1 * q.2 - q.1 * p.2 }

/-- **The bridge between lines and the orientation determinant.**  Evaluating the
supporting line of `[p,q]` at `r` returns exactly `orient p q r`.  This is what
lets every statement about lines be read off the orientation data that
`LowerBound.lean` computes. -/
theorem lineThrough_eval (p q r : Pt) : (lineThrough p q).eval r = orient p q r := by
  simp only [Line.eval, lineThrough, orient, Int.mul_sub, Int.mul_comm]
  omega

theorem lineThrough_on_left (p q : Pt) : (lineThrough p q).On p := by
  simp only [Line.On, lineThrough_eval, orient, Int.sub_self, Int.mul_zero]

theorem lineThrough_on_right (p q : Pt) : (lineThrough p q).On q := by
  simp only [Line.On, lineThrough_eval, orient, Int.mul_comm]
  omega

/-- The supporting line of a nondegenerate segment really is a line. -/
theorem lineThrough_proper (p q : Pt) (h : p ≠ q) : (lineThrough p q).Proper := by
  simp only [Line.Proper, lineThrough]
  by_cases ha : p.2 - q.2 = 0
  · refine Or.inr ?_
    intro hb
    apply h
    have h1 : p.1 = q.1 := by omega
    have h2 : p.2 = q.2 := by omega
    cases p; cases q; simp_all
  · exact Or.inl ha

/-! ## Side-of-line signs

Given a line that avoids a point, the point has a well-defined side, recorded as
a `Bool`.  `Line.side` is total, but it is only *meaningful* at points the line
avoids, and every theorem below that uses it carries the avoidance hypothesis. -/

/-- Which side of `L` the point `p` is on.  Meaningful only when `L.Avoids p`. -/
def Line.side (L : Line) (p : Pt) : Bool := decide (0 < L.eval p)

/-- `L` **strictly separates** `u` and `v`: they lie strictly on opposite sides.
This is the STRICT notion of "L crosses the segment `[u,v]`". -/
def Line.Separates (L : Line) (u v : Pt) : Prop := L.eval u * L.eval v < 0

/-- `L` **meets the closed segment** `[u,v]`.  This is the LOOSE notion: it also
holds when `L` passes through an endpoint.  Since `L.eval` is affine this is the
orientation-level surrogate for "`L` and the closed segment share a point"; that
equivalence is a statement about `ℝ²` and is not formalised here. -/
def Line.MeetsClosed (L : Line) (u v : Pt) : Prop := L.eval u * L.eval v ≤ 0

instance (L : Line) (u v : Pt) : Decidable (L.Separates u v) :=
  inferInstanceAs (Decidable (_ < _))
instance (L : Line) (u v : Pt) : Decidable (L.MeetsClosed u v) :=
  inferInstanceAs (Decidable (_ ≤ _))

/-- Sign rule for a product of two nonzero integers. -/
theorem mul_neg_iff_sign_ne {x y : Int} (hx : x ≠ 0) (hy : y ≠ 0) :
    x * y < 0 ↔ decide (0 < x) ≠ decide (0 < y) := by
  rcases Int.lt_trichotomy x 0 with h1 | h1 | h1
  · rcases Int.lt_trichotomy y 0 with h2 | h2 | h2
    · have hp : 0 < x * y := Int.mul_pos_of_neg_of_neg h1 h2
      have hx' : ¬ (0 < x) := by omega
      have hy' : ¬ (0 < y) := by omega
      have hxy : ¬ (x * y < 0) := by omega
      simp [hx', hy', hxy]
    · exact absurd h2 hy
    · have hp : x * y < 0 := Int.mul_neg_of_neg_of_pos h1 h2
      have hx' : ¬ (0 < x) := by omega
      simp [hx', h2, hp]
  · exact absurd h1 hx
  · rcases Int.lt_trichotomy y 0 with h2 | h2 | h2
    · have hp : x * y < 0 := Int.mul_neg_of_pos_of_neg h1 h2
      have hy' : ¬ (0 < y) := by omega
      simp [hy', h1, hp]
    · exact absurd h2 hy
    · have hp : 0 < x * y := Int.mul_pos h1 h2
      have hxy : ¬ (x * y < 0) := by omega
      simp [h1, h2, hxy]

/-- **Side signs decide separation.**  For a line avoiding both endpoints,
"strictly separates" is exactly "the two side-signs differ".  This is the fact
that turns the geometric statement into the combinatorial parity statement. -/
theorem separates_iff_side_ne (L : Line) (u v : Pt)
    (hu : L.Avoids u) (hv : L.Avoids v) :
    L.Separates u v ↔ L.side u ≠ L.side v :=
  mul_neg_iff_sign_ne hu hv

theorem meetsClosed_of_separates (L : Line) (u v : Pt) (h : L.Separates u v) :
    L.MeetsClosed u v := Int.le_of_lt h

/-- **Strict and loose coincide exactly on vertex-avoiding lines.**  This is the
single place where the distinction the project depends on is pinned down. -/
theorem separates_iff_meetsClosed_of_avoids (L : Line) (u v : Pt)
    (hu : L.Avoids u) (hv : L.Avoids v) :
    L.Separates u v ↔ L.MeetsClosed u v := by
  constructor
  · exact meetsClosed_of_separates L u v
  · intro h
    simp only [Line.MeetsClosed] at h
    rcases Int.lt_trichotomy (L.eval u * L.eval v) 0 with h1 | h1 | h1
    · exact h1
    · rcases Int.mul_eq_zero.mp h1 with h2 | h2
      · exact absurd h2 hu
      · exact absurd h2 hv
    · omega

/-! ## Cyclic vertex and side indexing

A closed `n`-cycle is given by a vertex function `V : Nat → Pt` read modulo `n`.
Side `j` joins vertex `j` to vertex `j + 1 (mod n)` — the convention of
`LowerBound.Pside` and of `EndgameDefs`. -/

/-- The cyclic successor of `i` in `Z_n`. -/
def cycSucc (n i : Nat) : Nat := (i + 1) % n

/-- `x` and `y` are cyclically adjacent in `Z_n`.  For `n = 7` this is
`Heptagon.Endgame.CycAdj`; see `SegmentGeometry.cycAdj_seven_iff_endgame`. -/
def CycAdj (n x y : Nat) : Prop := (x + 1) % n = y % n ∨ (y + 1) % n = x % n

instance (n x y : Nat) : Decidable (CycAdj n x y) := inferInstanceAs (Decidable (_ ∨ _))

/-- Vertex `i` of the `n`-cycle `V`, read cyclically. -/
def vtx (n : Nat) (V : Nat → Pt) (i : Nat) : Pt := V (i % n)

/-- The two endpoints of side `j` of the `n`-cycle `V`. -/
def sideEnds (n : Nat) (V : Nat → Pt) (j : Nat) : Pt × Pt := (vtx n V j, vtx n V (j + 1))

theorem vtx_of_lt {n : Nat} (V : Nat → Pt) {i : Nat} (h : i < n) : vtx n V i = V i := by
  simp only [vtx, Nat.mod_eq_of_lt h]

/-- **A vertex-avoiding line**: `L` passes through no vertex of the `n`-cycle `V`.
This is the STRICT hypothesis of the main theorem.  Dropping it makes the
theorem false — see `SegmentGeometry.triangle_loose_fails`. -/
def AvoidsVertices (n : Nat) (V : Nat → Pt) (L : Line) : Prop :=
  ∀ i, i < n → L.Avoids (V i)

instance (n : Nat) (V : Nat → Pt) (L : Line) : Decidable (AvoidsVertices n V L) :=
  Nat.decidableBallLT n (fun i _ => L.Avoids (V i))

theorem avoids_vtx {n : Nat} {V : Nat → Pt} {L : Line}
    (h : AvoidsVertices n V L) (hn : 0 < n) (i : Nat) : L.Avoids (vtx n V i) :=
  h (i % n) (Nat.mod_lt i hn)

/-- `L` **meets side `j`** of the `n`-cycle `V`, in the STRICT sense: the two
endpoints of the side are strictly on opposite sides of `L`. -/
def MeetsSide (n : Nat) (V : Nat → Pt) (L : Line) (j : Nat) : Prop :=
  L.Separates (vtx n V j) (vtx n V (j + 1))

/-- `L` meets the CLOSED side `j`.  Weaker than `MeetsSide`; equal to it exactly
when `L` avoids the two vertices involved. -/
def MeetsClosedSide (n : Nat) (V : Nat → Pt) (L : Line) (j : Nat) : Prop :=
  L.MeetsClosed (vtx n V j) (vtx n V (j + 1))

instance (n : Nat) (V : Nat → Pt) (L : Line) (j : Nat) : Decidable (MeetsSide n V L j) :=
  inferInstanceAs (Decidable (_ < _))
instance (n : Nat) (V : Nat → Pt) (L : Line) (j : Nat) : Decidable (MeetsClosedSide n V L j) :=
  inferInstanceAs (Decidable (_ ≤ _))

/-- Boolean form of `MeetsSide`, so that counts are kernel-computable. -/
def meetsSideB (n : Nat) (V : Nat → Pt) (L : Line) (j : Nat) : Bool :=
  decide (MeetsSide n V L j)

theorem meetsSideB_iff (n : Nat) (V : Nat → Pt) (L : Line) (j : Nat) :
    meetsSideB n V L j = true ↔ MeetsSide n V L j := by
  simp [meetsSideB]

/-- The number of sides of the `n`-cycle `V` that the line `L` strictly meets. -/
def metCount (n : Nat) (V : Nat → Pt) (L : Line) : Nat :=
  ((List.range n).filter (meetsSideB n V L)).length

end Geometry
end Heptagon
