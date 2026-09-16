import GeometryDefs
import LowerBound
import Mathlib.Tactic

/-!
# Vocabulary for the 412 residual graphs

`ResidualClauses00k.orbit00k_impossible` refutes one *representative* graph, and
states its hypotheses as bare `ProperCross` facts about fourteen numbered points.
This file gives the same content a name — a configuration `V : Fin 14 → Pt`
whose two heptagons are simple and whose crossing pattern is a given
disjointness graph — and the three reorderings of `ProperCross` needed to move a
fact from one labelling of a configuration to another.

Vertices `0..6` are `P` in cyclic order, `7..13` are `Q`.  Side `i` of `P` is the
segment from vertex `i` to vertex `i+1 mod 7`.
-/

namespace Heptagon.ResidualSym
open Heptagon.Geometry

/-- Vertex `i` of `P`, as an index into the fourteen. -/
def pP (i : Fin 7) : Fin 14 := ⟨i.val, by omega⟩

/-- Vertex `i` of `Q`, as an index into the fourteen. -/
def pQ (i : Fin 7) : Fin 14 := ⟨7 + i.val, by omega⟩

/-- No three of the fourteen vertices are collinear.  Definitionally equal to
`ResidualClauses000.GP` and its siblings. -/
abbrev GP (V : Fin 14 → Pt) : Prop :=
  ∀ i j k : Fin 14, i ≠ j → j ≠ k → i ≠ k → orient (V i) (V j) (V k) ≠ 0

/-- `P` is a simple polygon: no two non-adjacent sides cross. -/
def SimpleP (V : Fin 14 → Pt) : Prop :=
  ∀ i j : Fin 7, ¬ LowerBound.Adjacent i j →
    ¬ ProperCross (V (pP i)) (V (pP (i+1))) (V (pP j)) (V (pP (j+1)))

/-- `Q` is a simple polygon: no two non-adjacent sides cross. -/
def SimpleQ (V : Fin 14 → Pt) : Prop :=
  ∀ i j : Fin 7, ¬ LowerBound.Adjacent i j →
    ¬ ProperCross (V (pQ i)) (V (pQ (i+1))) (V (pQ j)) (V (pQ (j+1)))

/-- `V` realizes the disjointness graph `g`: side `i` of `P` and side `j` of `Q`
cross exactly when bit `j` of `g i` is **clear**.  A set bit means *disjoint*,
which is the convention of `independent/residual_realizability/indep_om.py` and
of the residual inventory. -/
def Realizes (V : Fin 14 → Pt) (g : Fin 7 → Nat) : Prop :=
  ∀ i j : Fin 7,
    (ProperCross (V (pP i)) (V (pP (i+1))) (V (pQ j)) (V (pQ (j+1))) ↔
      ¬ (g i).testBit j.val)

/-- A crossing read off the graph: bit clear means the two sides cross. -/
theorem cross_of {V : Fin 14 → Pt} {g : Fin 7 → Nat} (hR : Realizes V g) (i j : Fin 7)
    (h : (g i).testBit j.val = false) :
    ProperCross (V (pP i)) (V (pP (i+1))) (V (pQ j)) (V (pQ (j+1))) :=
  (hR i j).mpr (by rw [h]; exact Bool.false_ne_true)

/-- A non-crossing read off the graph: bit set means the two sides are disjoint. -/
theorem not_cross_of {V : Fin 14 → Pt} {g : Fin 7 → Nat} (hR : Realizes V g) (i j : Fin 7)
    (h : (g i).testBit j.val = true) :
    ¬ ProperCross (V (pP i)) (V (pP (i+1))) (V (pQ j)) (V (pQ (j+1))) :=
  fun k => (hR i j).mp k h

/-! ## Relabelling

Rotating or reflecting a polygon's vertex cycle, and exchanging `P` with `Q`,
leave the pair of polygons and their crossing pattern alone; they only rename
things.  Composing a configuration with such a relabelling therefore preserves
general position (it is injective) and turns each side into the same segment,
possibly with its endpoints named in the other order — hence the three lemmas.
-/

theorem pc_swapL {a b c d : Pt} (h : ProperCross a b c d) : ProperCross b a c d := by
  obtain ⟨h1, h2⟩ := h
  refine ⟨?_, ?_⟩
  · have e : orient b a c * orient b a d = orient a b c * orient a b d := by
      simp only [orient]; ring
    rw [e]; exact h1
  · rw [mul_comm]; exact h2

theorem pc_swapR {a b c d : Pt} (h : ProperCross a b c d) : ProperCross a b d c := by
  obtain ⟨h1, h2⟩ := h
  refine ⟨?_, ?_⟩
  · rw [mul_comm]; exact h1
  · have e : orient d c a * orient d c b = orient c d a * orient c d b := by
      simp only [orient]; ring
    rw [e]; exact h2

theorem pc_swapS {a b c d : Pt} (h : ProperCross a b c d) : ProperCross c d a b :=
  ⟨h.2, h.1⟩

theorem npc_swapL {a b c d : Pt} (h : ¬ProperCross a b c d) : ¬ProperCross b a c d :=
  fun k => h (pc_swapL k)

theorem npc_swapR {a b c d : Pt} (h : ¬ProperCross a b c d) : ¬ProperCross a b d c :=
  fun k => h (pc_swapR k)

theorem npc_swapS {a b c d : Pt} (h : ¬ProperCross a b c d) : ¬ProperCross c d a b :=
  fun k => h (pc_swapS k)

/-- General position survives an injective relabelling. -/
theorem gp_comp {V : Fin 14 → Pt} (hGP : GP V) (σ : Fin 14 → Fin 14)
    (hσ : ∀ a b : Fin 14, σ a = σ b → a = b) : GP (fun i => V (σ i)) :=
  fun i j k hij hjk hik =>
    hGP (σ i) (σ j) (σ k) (fun e => hij (hσ _ _ e)) (fun e => hjk (hσ _ _ e))
      (fun e => hik (hσ _ _ e))

end Heptagon.ResidualSym
