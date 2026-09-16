import GeometryDefs
import Mathlib.Tactic

namespace Heptagon.ResidualBridge
open Heptagon.Geometry

/-- **Grassmann–Plücker, rank 3.**  A polynomial identity in the ten
coordinates, so it holds for every integer configuration. -/
theorem gp_identity (a b c d e : Pt) :
    orient a b c * orient a d e - orient a b d * orient a c e
      + orient a b e * orient a c d = 0 := by
  simp only [orient]; ring

/-- **The alternating 4-set identity** behind the acyclicity clauses. -/
theorem radon_identity (i j k l : Pt) :
    orient j k l - orient i k l + orient i j l - orient i j k = 0 := by
  simp only [orient]; ring

/-- Three integers summing to zero are not all of one sign — unless all are
zero, which general position excludes.  This is what turns each identity into
a clause. -/
theorem not_same_sign3 {x y z : Int} (h : x + y + z = 0) :
    ¬(0 < x ∧ 0 < y ∧ 0 < z) ∧ ¬(x < 0 ∧ y < 0 ∧ z < 0) := by
  constructor <;> rintro ⟨h1, h2, h3⟩ <;> omega

/-- Four integers summing to zero are not all of one sign. -/
theorem not_same_sign4 {w x y z : Int} (h : w + x + y + z = 0) :
    ¬(0 < w ∧ 0 < x ∧ 0 < y ∧ 0 < z) ∧ ¬(w < 0 ∧ x < 0 ∧ y < 0 ∧ z < 0) := by
  constructor <;> rintro ⟨h1, h2, h3, h4⟩ <;> omega

end Heptagon.ResidualBridge
