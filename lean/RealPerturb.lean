import RealUpperBound

/-!
# Crossings survive perturbation — the openness half of AKR §3's second step

`RealConfig.exists_near_generic` proves the **iteration** half of AKR §3's
unproved "for convenience" clause: every configuration of fourteen real points
is arbitrarily close to one in full general position.  That alone licenses
nothing, because a bound proved for the perturbed configuration says nothing
about the original unless the intersection count is known not to have *dropped*
on the way.

This file proves the half of that which is pure topology, and isolates the half
which is not.

**What is proved here.**  A crossing is a conjunction of two strict
inequalities between continuous functions of the fourteen points, so the set of
configurations at which a given side pair crosses is **open**.  There are only
`49` side pairs, so the set of configurations retaining *all* of a given
configuration's crossings is a finite intersection of open sets, hence open, and
it contains the configuration itself.  Intersecting that open neighbourhood with
the dense generic set gives:

  `exists_near_generic_keeping` — every configuration has generic
  configurations arbitrarily close to it that keep **every one** of its
  crossings.

So the crossing count can only *rise* under a small enough perturbation, which
is the direction the upper bound needs.

**What is not proved here, and it is one thing.**  `crossingPairsR_card_le_38`
applies to an `RConfig`, which requires the perturbed configuration to be
**simple** in both halves.  Simplicity is `¬ ProperCrossR` for non-adjacent
side pairs — a *closed* condition, not an open one — so nothing above preserves
it, and at a degenerate configuration it genuinely can fail: two non-adjacent
sides that merely touch can be pushed into a proper crossing.

That obligation is named `SimplePerturbable` below and carried explicitly, never
as an axiom.  The honest route to discharging it does not go through openness at
all: for a polygon that is simple *as a point set*, non-adjacent closed sides
are disjoint compact sets, hence at positive distance, hence still disjoint
after a small enough perturbation.  Formalising that needs a notion of
simplicity stated on point sets rather than on determinant signs, which is the
`RawPair` type sketched in `docs/akr-9-1-obligation.md` §4.2 and is not built
here.

Nothing in this file touches AKR §9, which remains an import.
-/

set_option autoImplicit false

namespace Heptagon
namespace RealPerturb

open Heptagon.Geometry Heptagon.RealConfig Heptagon.RealUpperBound
open Heptagon.ResidualSym

open scoped Classical

/-! ## A crossing is an open condition -/

/-- The configurations at which the side `a b` crosses the side `c d`. -/
def Crossing (a b c d : Fin 14) : Set (Fin 14 → ℝ × ℝ) :=
  { W | ProperCrossR (W a) (W b) (W c) (W d) }

/-- **Crossing is open.**  `ProperCrossR` is two strict inequalities between
continuous functions of the fourteen points, and `orientR` is a polynomial. -/
theorem isOpen_Crossing (a b c d : Fin 14) : IsOpen (Crossing a b c d) := by
  have hf : Continuous fun W : Fin 14 → ℝ × ℝ =>
      orientR (W a) (W b) (W c) * orientR (W a) (W b) (W d) :=
    (continuous_orientR a b c).mul (continuous_orientR a b d)
  have hg : Continuous fun W : Fin 14 → ℝ × ℝ =>
      orientR (W c) (W d) (W a) * orientR (W c) (W d) (W b) :=
    (continuous_orientR c d a).mul (continuous_orientR c d b)
  have he : Crossing a b c d =
      {W : Fin 14 → ℝ × ℝ |
          orientR (W a) (W b) (W c) * orientR (W a) (W b) (W d) < 0} ∩
        {W : Fin 14 → ℝ × ℝ |
          orientR (W c) (W d) (W a) * orientR (W c) (W d) (W b) < 0} := by
    ext W; exact Iff.rfl
  rw [he]
  exact (isOpen_lt hf continuous_const).inter (isOpen_lt hg continuous_const)

/-! ## Keeping every crossing -/

/-- The configurations that retain every crossing `V` has.  Note the direction:
`W ∈ Keeps V` allows `W` to have *more* crossings than `V`, which is harmless
for an upper bound. -/
def Keeps (V : Fin 14 → ℝ × ℝ) : Set (Fin 14 → ℝ × ℝ) :=
  { W | ∀ i j : Fin 7,
      ProperCrossR (V (pP i)) (V (pP (i+1))) (V (pQ j)) (V (pQ (j+1))) →
      ProperCrossR (W (pP i)) (W (pP (i+1))) (W (pQ j)) (W (pQ (j+1))) }

theorem mem_Keeps_self (V : Fin 14 → ℝ × ℝ) : V ∈ Keeps V := fun _ _ h => h

/-- **Keeping every crossing is an open condition.**  It is an intersection over
the `49` side pairs; each factor is either a `Crossing` set or, where `V` has no
crossing, the whole space. -/
theorem isOpen_Keeps (V : Fin 14 → ℝ × ℝ) : IsOpen (Keeps V) := by
  classical
  have he : Keeps V = ⋂ p : Fin 7 × Fin 7,
      (if ProperCrossR (V (pP p.1)) (V (pP (p.1+1))) (V (pQ p.2)) (V (pQ (p.2+1)))
        then Crossing (pP p.1) (pP (p.1+1)) (pQ p.2) (pQ (p.2+1))
        else Set.univ) := by
    ext W
    simp only [Keeps, Set.mem_setOf_eq, Set.mem_iInter]
    constructor
    · intro h p
      by_cases hc : ProperCrossR (V (pP p.1)) (V (pP (p.1+1))) (V (pQ p.2)) (V (pQ (p.2+1)))
      · rw [if_pos hc]; exact h p.1 p.2 hc
      · rw [if_neg hc]; trivial
    · intro h i j hc
      have hp := h (i, j)
      rw [if_pos hc] at hp
      exact hp
  rw [he]
  refine isOpen_iInter_of_finite ?_
  intro p
  by_cases hc : ProperCrossR (V (pP p.1)) (V (pP (p.1+1))) (V (pQ p.2)) (V (pQ (p.2+1)))
  · rw [if_pos hc]; exact isOpen_Crossing _ _ _ _
  · rw [if_neg hc]; exact isOpen_univ

/-- **Every configuration has generic configurations arbitrarily close to it
that keep all of its crossings.**

This is `RealConfig.exists_near_generic` strengthened with the conclusion that
no crossing is lost — which is what makes the approximation usable for an upper
bound.  The proof is that `Keeps V` is an open set containing `V`, so
`Metric.ball V ε ∩ Keeps V` is a nonempty open set, and the generic
configurations are dense. -/
theorem exists_near_generic_keeping (V : Fin 14 → ℝ × ℝ) {ε : ℝ} (hε : 0 < ε) :
    ∃ W : Fin 14 → ℝ × ℝ, dist W V < ε ∧ W ∈ Keeps V ∧
      ∀ i j k : Fin 14, i ≠ j → j ≠ k → i ≠ k → orientR (W i) (W j) (W k) ≠ 0 := by
  have hdense : Dense (⋂ p : Fin 14 × Fin 14 × Fin 14, NZ p) :=
    dense_iInter_of_isOpen isOpen_NZ dense_NZ
  have hopen : IsOpen (Metric.ball V ε ∩ Keeps V) :=
    Metric.isOpen_ball.inter (isOpen_Keeps V)
  have hne : (Metric.ball V ε ∩ Keeps V).Nonempty :=
    ⟨V, Metric.mem_ball_self hε, mem_Keeps_self V⟩
  -- `Dense.inter_open_nonempty` gives `(U ∩ s).Nonempty`, with the open set first.
  obtain ⟨W, ⟨hWball, hWkeep⟩, hWgen⟩ := hdense.inter_open_nonempty _ hopen hne
  refine ⟨W, Metric.mem_ball.mp hWball, hWkeep, ?_⟩
  intro i j k hij hjk hik
  exact (Set.mem_iInter.mp hWgen (i, j, k)) hij hjk hik

/-! ## The crossing count of an arbitrary configuration -/

/-- The crossing side pairs of fourteen arbitrary real points — no general
position and no simplicity assumed.  Agrees with `crossingPairsR` on an
`RConfig` by definition. -/
noncomputable def crossPairsOf (V : Fin 14 → ℝ × ℝ) : Finset (Fin 7 × Fin 7) :=
  Finset.univ.filter fun p =>
    ProperCrossR (V (pP p.1)) (V (pP (p.1+1))) (V (pQ p.2)) (V (pQ (p.2+1)))

theorem crossPairsOf_RConfig (R : RConfig) : crossPairsOf R.V = crossingPairsR R := by
  ext p
  simp only [crossPairsOf, crossingPairsR, Finset.mem_filter, Finset.mem_univ, true_and]

theorem mem_crossPairsOf {V : Fin 14 → ℝ × ℝ} {i j : Fin 7} :
    (i, j) ∈ crossPairsOf V ↔
      ProperCrossR (V (pP i)) (V (pP (i+1))) (V (pQ j)) (V (pQ (j+1))) := by
  simp only [crossPairsOf, Finset.mem_filter, Finset.mem_univ, true_and]

/-- Keeping crossings is exactly monotonicity of the crossing-pair set. -/
theorem crossPairsOf_mono {V W : Fin 14 → ℝ × ℝ} (h : W ∈ Keeps V) :
    crossPairsOf V ⊆ crossPairsOf W := by
  intro p hp
  obtain ⟨i, j⟩ := p
  exact mem_crossPairsOf.mpr (h i j (mem_crossPairsOf.mp hp))

/-! ## The remaining obligation, named

`SimplePerturbable V` is what `exists_near_generic_keeping` would have to be
strengthened to in order to bound an arbitrary configuration's crossing count.
It asks for arbitrarily close configurations that are generic, keep every
crossing, **and are simple in both halves**.  The first two conjuncts are
theorems above; the third is the open obligation, and it is not topological —
see this file's header. -/

/-- The obligation: some arbitrarily close generic configuration keeps all of
`V`'s crossings **and is simple in both halves**. -/
def SimplePerturbable (V : Fin 14 → ℝ × ℝ) : Prop :=
  ∀ ε : ℝ, 0 < ε → ∃ R : RConfig, dist R.V V < ε ∧ R.V ∈ Keeps V

/-- **Non-vacuity.**  A configuration that is already an `RConfig` is
`SimplePerturbable`, witnessed by itself. -/
theorem simplePerturbable_of_RConfig (R : RConfig) : SimplePerturbable R.V := by
  intro ε hε
  exact ⟨R, by simpa using hε, mem_Keeps_self R.V⟩

/-- **The upper bound for an arbitrary configuration, modulo the named
obligation.**  No general position and no simplicity is assumed of `V` itself:
they are assumed only of the approximating configurations. -/
theorem crossPairsOf_card_le_38_of_simplePerturbable {V : Fin 14 → ℝ × ℝ}
    (h : SimplePerturbable V) : (crossPairsOf V).card ≤ 38 := by
  obtain ⟨R, _, hkeep⟩ := h 1 one_pos
  calc (crossPairsOf V).card
      ≤ (crossPairsOf R.V).card := Finset.card_le_card (crossPairsOf_mono hkeep)
    _ = (crossingPairsR R).card := by rw [crossPairsOf_RConfig]
    _ ≤ 38 := crossingPairsR_card_le_38 R

/-! ## What this does and does not add

**Added.**  The direction of the perturbation that the upper bound needs — that
crossings are not lost — is now a theorem rather than an appeal to "signs are
locally constant".  `exists_near_generic_keeping` strictly strengthens
`RealConfig.exists_near_generic`.

**Not added.**  Two things, and they are different in kind.

*Simplicity preservation.*  `SimplePerturbable` is a hypothesis.  It is
satisfiable (`simplePerturbable_of_RConfig`) but is not proved for a degenerate
`V`, which is the only case where it has content.  As the header says, the route
is disjointness of compact sets, not openness, and it needs a point-set notion
of simplicity this development does not yet have.

*The count itself.*  `crossPairsOf` counts side **pairs**.  For a configuration
in general position that equals the number of intersection **points**
(`RealUpperBound.pointsR_ncard`), but at a degenerate configuration it does not:
one point can lie on several side pairs — a vertex resting on a vertex is a
single point belonging to four pairs — so the counting layer, not merely the
encoding, would have to be redone.  This is exactly why the reduction is done by
perturbation rather than by enumerating degenerate cases.

**AKR §9 is untouched.**  Everything here presupposes that intersections are
already interior to sides; getting there is §9.
-/

end RealPerturb
end Heptagon

#print axioms Heptagon.RealPerturb.isOpen_Crossing
#print axioms Heptagon.RealPerturb.isOpen_Keeps
#print axioms Heptagon.RealPerturb.exists_near_generic_keeping
#print axioms Heptagon.RealPerturb.crossPairsOf_mono
#print axioms Heptagon.RealPerturb.simplePerturbable_of_RConfig
#print axioms Heptagon.RealPerturb.crossPairsOf_card_le_38_of_simplePerturbable
