import AKR9
import CrossTransport

/-!
# A complete instance of the count inequality

`docs/akr-9-assembly.md` §2.3's Theorem CI is proved on paper only, and
`independent/akr_9_assembly/CI_HARDENED.md` showed its `ncard` form is **false**
without (Fin-out), because `Set.ncard` of an infinite set is `0`.

There is nonetheless a case where the whole thing goes through in Lean with no
open hypothesis: when the starting configuration has **no degeneracies at all**.
Then every intersection point is class (a), `AKR9.points9_ncard` identifies the
count with the number of crossing pairs, and
`CrossTransport.crossPairs_card_mono` says that number cannot drop.

This is a genuine instance of CI, not the general statement.  It is worth
having because it is the branch §9.1 is *trying to reach* — the perturbation's
whole purpose is to arrive at a configuration of this kind — and because it
isolates exactly what the degenerate classes are responsible for.

Nothing here is an axiom and nothing here proves `f(7,7) = 38`.
-/

namespace Heptagon
namespace CIInstance

open Heptagon.AKR9 Heptagon.CrossTransport Heptagon.RealPerturb
open Heptagon.UniformEps Heptagon.RealUpperBound Heptagon.ResidualSym

/-- **The count inequality, non-degenerate case.**  If the starting pair has no
vertex of either polygon on the other's boundary, its intersection count is at
most the number of crossing pairs of any configuration into which every one of
its crossings survives. -/
theorem points9_ncard_le_of_survives (R : Pair9) (h9 : NoVertexOnOther R)
    (E : Fin 14 → ℝ × ℝ) {e : ℝ}
    (h : ∀ i j : Fin 7,
      ProperCrossR (R.V (pP i)) (R.V (pP (i + 1))) (R.V (pQ j)) (R.V (pQ (j + 1))) →
      ProperCrossR (move R.V E e (pP i)) (move R.V E e (pP (i + 1)))
        (move R.V E e (pQ j)) (move R.V E e (pQ (j + 1)))) :
    (points9 R).ncard ≤ (crossPairsOf (move R.V E e)).card := by
  rw [points9_ncard R h9]
  exact crossPairs_card_mono h

/-- And the moved configuration's crossing pairs are themselves bounded by `38`
as soon as it is simple — with no general-position hypothesis, by
`RawConfig.raw_crossPairs_card_le_38`.  So the count is squeezed on both sides. -/
theorem points9_ncard_le_38_of_survives (R : Pair9) (h9 : NoVertexOnOther R)
    (E : Fin 14 → ℝ × ℝ) {e : ℝ} (R' : RawConfig.RawPair) (hR' : R'.V = move R.V E e)
    (h : ∀ i j : Fin 7,
      ProperCrossR (R.V (pP i)) (R.V (pP (i + 1))) (R.V (pQ j)) (R.V (pQ (j + 1))) →
      ProperCrossR (move R.V E e (pP i)) (move R.V E e (pP (i + 1)))
        (move R.V E e (pQ j)) (move R.V E e (pQ (j + 1)))) :
    (points9 R).ncard ≤ 38 := by
  refine le_trans (points9_ncard_le_of_survives R h9 E h) ?_
  rw [← hR']
  exact RawConfig.raw_crossPairs_card_le_38 R'

#print axioms points9_ncard_le_of_survives
#print axioms points9_ncard_le_38_of_survives

end CIInstance
end Heptagon
