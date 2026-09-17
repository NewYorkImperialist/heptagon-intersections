import RealConfig
import ConfigBridge
import PointSetSemantics

/-!
# The upper bound for *real* configurations in general position

`ConfigBridge.isGreatest_38_pointCount` bounds the boundary-intersection count
of an **integer**-coordinate configuration in general position.
`RealConfig.exists_integer_model` says a real configuration in general position
has an integer one with the same 364 determinant signs.  This file joins them.

The join is pure sign bookkeeping, because everything in between is defined by
strict sign conditions:

* `ProperCross p₁ p₂ q₁ q₂` is `orient p₁ p₂ q₁ * orient p₁ p₂ q₂ < 0 ∧ …`;
* `Simple7`'s conjuncts are "determinant ≠ 0" and "¬ ProperCross";
* `Config`'s two vertex-avoidance fields are "determinant ≠ 0".

So a real configuration whose determinants match an integer one's signs gives a
`Config`, and a `Config` in `FullGP` at that.

`PointSetSemantics.det` is character-for-character `RealConfig.orientR`, so the
real-plane machinery already in this development — `straddle_of_common`,
`common_of_straddle`, `common_unique` — applies here unchanged.

## Scope

This file bounds the number of **crossing side pairs** of a real configuration.
Identifying that with the number of boundary intersection *points* in `ℝ × ℝ`
is the real analogue of `IntersectionCount.crossCountC_eq_pointCount`, and is
**not** done here — see the note at the end.
-/

namespace Heptagon.RealUpperBound

open Heptagon.Geometry Heptagon.RealConfig Heptagon.PointSetSemantics
open Heptagon.DisjointnessGraph Heptagon.ConfigBridge Heptagon.ResidualSym

-- Strict inequalities over `ℝ` are not decidable, so the `Finset.filter` below
-- needs a classical instance.
open scoped Classical

/-- The two real determinants of this development are the same function. -/
theorem orientR_eq_det (a b c : ℝ × ℝ) : orientR a b c = det a b c := rfl

/-- Strict two-sided straddling, over the reals: the real form of
`GeometryDefs.ProperCross`. -/
def ProperCrossR (a b c d : ℝ × ℝ) : Prop :=
  orientR a b c * orientR a b d < 0 ∧ orientR c d a * orientR c d b < 0

/-! ## Sign transport -/

theorem sameSign_ne_zero {x y : ℝ} (h : SameSignR x y) : x ≠ 0 ∧ y ≠ 0 := by
  rcases h with ⟨h1, h2⟩ | ⟨h1, h2⟩
  · exact ⟨ne_of_gt h1, ne_of_gt h2⟩
  · exact ⟨ne_of_lt h1, ne_of_lt h2⟩

/-- Matching signs make the two products have matching signs, so the strict
inequality transports. -/
theorem mul_neg_iff_of_sameSign {x y x' y' : ℝ}
    (h : SameSignR x y) (h' : SameSignR x' y') : x * x' < 0 ↔ y * y' < 0 := by
  rcases h with ⟨hx, hy⟩ | ⟨hx, hy⟩ <;> rcases h' with ⟨hx', hy'⟩ | ⟨hx', hy'⟩
  · constructor <;> intro hc <;> nlinarith
  · constructor <;> intro _ <;> nlinarith
  · constructor <;> intro _ <;> nlinarith
  · constructor <;> intro hc <;> nlinarith

/-! ## A real configuration

The orientation-level hypotheses a pair of simple heptagons in general position
satisfies.  `gp` is `FullGP`'s real counterpart — AKR §3's clause — and the two
simplicity fields are the fourth conjunct of `Simple7`. -/

structure RConfig where
  /-- The fourteen vertices: `P` is `0..6`, `Q` is `7..13`. -/
  V : Fin 14 → ℝ × ℝ
  /-- General position: no three of the fourteen collinear. -/
  gp : ∀ i j k : Fin 14, i ≠ j → j ≠ k → i ≠ k → orientR (V i) (V j) (V k) ≠ 0
  /-- `P` is simple: no two non-adjacent sides cross. -/
  simpleP : ∀ i j : Fin 7, ¬ LowerBound.Adjacent i j →
    ¬ ProperCrossR (V (pP i)) (V (pP (i+1))) (V (pP j)) (V (pP (j+1)))
  /-- `Q` is simple. -/
  simpleQ : ∀ i j : Fin 7, ¬ LowerBound.Adjacent i j →
    ¬ ProperCrossR (V (pQ i)) (V (pQ (i+1))) (V (pQ j)) (V (pQ (j+1)))

/-- The crossing side pairs of a real configuration: side `i` of `P` against
side `j` of `Q`.  Classical, since a strict inequality over `ℝ` is not
decidable. -/
noncomputable def crossingPairsR (R : RConfig) : Finset (Fin 7 × Fin 7) :=
  Finset.univ.filter fun p =>
    ProperCrossR (R.V (pP p.1)) (R.V (pP (p.1+1))) (R.V (pQ p.2)) (R.V (pQ (p.2+1)))

/-! ## Small `Fin 7` facts, decided once -/

theorem fin7_ne_succ : ∀ i : Fin 7, i ≠ i + 1 := by decide
theorem fin7_succ_ne_succ2 : ∀ i : Fin 7, i + 1 ≠ i + 2 := by decide
theorem fin7_ne_succ2 : ∀ i : Fin 7, i ≠ i + 2 := by decide
theorem fin7_succ_inj : ∀ i j : Fin 7, i + 1 = j + 1 → i = j := by decide

/-! ## The integer model as a `Config` -/

section Model

variable (R : RConfig)

/-- An integer model of `R`, from `RealConfig.exists_integer_model`. -/
noncomputable def model : Fin 14 → ℤ × ℤ := (exists_integer_model R.V R.gp).choose

theorem model_sign (i j k : Fin 14) (hij : i ≠ j) (hjk : j ≠ k) (hik : i ≠ k) :
    SameSignR (orientR (R.V i) (R.V j) (R.V k))
      ((orient (model R i) (model R j) (model R k) : ℤ) : ℝ) :=
  (exists_integer_model R.V R.gp).choose_spec i j k hij hjk hik

theorem model_orient_ne_zero (i j k : Fin 14) (hij : i ≠ j) (hjk : j ≠ k) (hik : i ≠ k) :
    orient (model R i) (model R j) (model R k) ≠ 0 := by
  have h := (sameSign_ne_zero (model_sign R i j k hij hjk hik)).2
  exact_mod_cast h

/-- Crossing transports from the real configuration to its integer model: the
crossing condition is four strict sign conditions, and the signs agree. -/
theorem properCross_model_iff {a b c d : Fin 14}
    (hab : a ≠ b) (hcd : c ≠ d) (hac : a ≠ c) (had : a ≠ d) (hbc : b ≠ c) (hbd : b ≠ d) :
    ProperCrossR (R.V a) (R.V b) (R.V c) (R.V d) ↔
      ProperCross (model R a) (model R b) (model R c) (model R d) := by
  have s1 := model_sign R a b c hab hbc hac
  have s2 := model_sign R a b d hab hbd had
  have s3 := model_sign R c d a hcd had.symm hac.symm
  have s4 := model_sign R c d b hcd hbd.symm hbc.symm
  have e1 := mul_neg_iff_of_sameSign s1 s2
  have e2 := mul_neg_iff_of_sameSign s3 s4
  constructor
  · rintro ⟨h1, h2⟩
    exact ⟨by exact_mod_cast e1.mp h1, by exact_mod_cast e2.mp h2⟩
  · rintro ⟨h1, h2⟩
    refine ⟨e1.mpr ?_, e2.mpr ?_⟩
    · exact_mod_cast h1
    · exact_mod_cast h2

/-- `pP` and `pQ` are injective and never collide. -/
theorem pP_inj {i j : Fin 7} (h : pP i = pP j) : i = j := by
  have := congrArg Fin.val h; simp only [pP] at this; exact Fin.ext this

theorem pQ_inj {i j : Fin 7} (h : pQ i = pQ j) : i = j := by
  have := congrArg Fin.val h; simp only [pQ] at this; exact Fin.ext (by omega)

theorem pP_ne_pQ (i j : Fin 7) : pP i ≠ pQ j := by
  intro h
  have := congrArg Fin.val h
  simp only [pP, pQ] at this
  omega

/-- The vertices of the integer model are distinct — general position forces it. -/
theorem model_inj {a b : Fin 14} (hab : a ≠ b) : model R a ≠ model R b := by
  intro heq
  obtain ⟨c, hca, hcb⟩ : ∃ c : Fin 14, c ≠ a ∧ c ≠ b := by
    have hle : ({a, b} : Finset (Fin 14)).card ≤ 2 :=
      le_trans (Finset.card_insert_le _ _) (by simp)
    have hne : (({a, b} : Finset (Fin 14))ᶜ).Nonempty := by
      rw [← Finset.card_pos, Finset.card_compl, Fintype.card_fin]; omega
    obtain ⟨c, hc⟩ := hne
    simp only [Finset.mem_compl, Finset.mem_insert, Finset.mem_singleton, not_or] at hc
    exact ⟨c, hc.1, hc.2⟩
  exact model_orient_ne_zero R a b c hab (fun h => hcb h.symm) (fun h => hca h.symm)
    (by simp only [orient, heq]; ring)

/-- `Simple7` for the `P` half of the integer model. -/
theorem simple7_model_P : Simple7 (fun i : Fin 7 => model R (pP i)) := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro i j hij
    exact model_inj R (fun h => hij (pP_inj h))
  · intro i j k hij hjk hik
    exact model_orient_ne_zero R _ _ _ (fun h => hij (pP_inj h))
      (fun h => hjk (pP_inj h)) (fun h => hik (pP_inj h))
  · intro i
    have h1 := fin7_ne_succ i
    have h2 := fin7_succ_ne_succ2 i
    have h3 := fin7_ne_succ2 i
    exact model_orient_ne_zero R _ _ _ (fun h => h1 (pP_inj h))
      (fun h => h2 (pP_inj h)) (fun h => h3 (pP_inj h))
  · intro i j hadj hcross
    refine R.simpleP i j hadj ?_
    have hij : i ≠ j := fun h => hadj (Or.inl h)
    have hji1 : j ≠ i + 1 := fun h => hadj (Or.inr (Or.inl h))
    have hij1 : i ≠ j + 1 := fun h => hadj (Or.inr (Or.inr h))
    have hi1 := fin7_ne_succ i
    have hj1 := fin7_ne_succ j
    have hs : i + 1 ≠ j + 1 := fun h => hij (fin7_succ_inj i j h)
    exact (properCross_model_iff R (fun h => hi1 (pP_inj h)) (fun h => hj1 (pP_inj h))
      (fun h => hij (pP_inj h)) (fun h => hij1 (pP_inj h))
      (fun h => hji1 (pP_inj h).symm) (fun h => hs (pP_inj h))).mpr hcross

/-- `Simple7` for the `Q` half. -/
theorem simple7_model_Q : Simple7 (fun j : Fin 7 => model R (pQ j)) := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro i j hij
    exact model_inj R (fun h => hij (pQ_inj h))
  · intro i j k hij hjk hik
    exact model_orient_ne_zero R _ _ _ (fun h => hij (pQ_inj h))
      (fun h => hjk (pQ_inj h)) (fun h => hik (pQ_inj h))
  · intro i
    have h1 := fin7_ne_succ i
    have h2 := fin7_succ_ne_succ2 i
    have h3 := fin7_ne_succ2 i
    exact model_orient_ne_zero R _ _ _ (fun h => h1 (pQ_inj h))
      (fun h => h2 (pQ_inj h)) (fun h => h3 (pQ_inj h))
  · intro i j hadj hcross
    refine R.simpleQ i j hadj ?_
    have hij : i ≠ j := fun h => hadj (Or.inl h)
    have hji1 : j ≠ i + 1 := fun h => hadj (Or.inr (Or.inl h))
    have hij1 : i ≠ j + 1 := fun h => hadj (Or.inr (Or.inr h))
    have hi1 := fin7_ne_succ i
    have hj1 := fin7_ne_succ j
    have hs : i + 1 ≠ j + 1 := fun h => hij (fin7_succ_inj i j h)
    exact (properCross_model_iff R (fun h => hi1 (pQ_inj h)) (fun h => hj1 (pQ_inj h))
      (fun h => hij (pQ_inj h)) (fun h => hij1 (pQ_inj h))
      (fun h => hji1 (pQ_inj h).symm) (fun h => hs (pQ_inj h))).mpr hcross

/-- **The integer model, as a `Config`.** -/
noncomputable def toConfig : Config where
  Pv := fun i => model R (pP i)
  Qv := fun j => model R (pQ j)
  P_simple := simple7_model_P R
  Q_simple := simple7_model_Q R
  no_Q_vertex_on_P_side_line := by
    intro i j
    have hi1 := fin7_ne_succ i
    exact model_orient_ne_zero R _ _ _ (fun h => hi1 (pP_inj h))
      (fun h => pP_ne_pQ (i+1) j h) (fun h => pP_ne_pQ i j h)
  no_P_vertex_on_Q_side_line := by
    intro i j
    have hj1 := fin7_ne_succ j
    exact model_orient_ne_zero R _ _ _ (fun h => hj1 (pQ_inj h))
      (fun h => (pP_ne_pQ i (j+1)) h.symm) (fun h => (pP_ne_pQ i j) h.symm)

/-- The fourteen vertices of `toConfig R` are exactly the model. -/
theorem Vcfg_toConfig : Vcfg (toConfig R) = model R := by
  funext i
  simp only [Vcfg, toConfig]
  by_cases h : i.val < 7
  · rw [dif_pos h]
    exact congrArg (model R) (Fin.ext rfl)
  · rw [dif_neg h]
    exact congrArg (model R) (Fin.ext (by simp only [pQ]; omega))

/-- The model is in full general position. -/
theorem fullGP_toConfig : FullGP (toConfig R) := by
  intro i j k hij hjk hik
  simp only [Vcfg_toConfig]
  exact model_orient_ne_zero R i j k hij hjk hik

/-- Membership in the integer model's crossing pairs, in `Fin 7` terms. -/
theorem mem_crossingPairs_iff (i j : Fin 7) :
    (i, j) ∈ IntersectionCount.crossingPairs (toConfig R) ↔
      ProperCross (model R (pP i)) (model R (pP (i+1)))
        (model R (pQ j)) (model R (pQ (j+1))) := by
  classical
  simp only [IntersectionCount.crossingPairs, Finset.mem_filter, Finset.mem_univ, true_and,
    EnumerationDomain.disjB, decide_eq_false_iff_not, DisjointO, Decidable.not_not,
    vtx_PV, vtx_PV_succ, vtx_QV, vtx_QV_succ]
  exact Iff.rfl

/-- **The upper bound, for a real configuration in general position.**

A pair of simple heptagons with *real* coordinates, in general position, has at
most 38 crossing side pairs.

This carries `ConfigBridge.crossCountC_le_38_of_general_position` across the
integer model, and it imports **no published lemma**.  The one thing it assumes
beyond simplicity is general position — AKR §3's clause; `RealConfig` proves the
`exists_near_generic` half of that clause and AKR §9 remains an import. -/
theorem crossingPairsR_card_le_38 : (crossingPairsR R).card ≤ 38 := by
  classical
  have hEq : crossingPairsR R = IntersectionCount.crossingPairs (toConfig R) := by
    ext p
    obtain ⟨i, j⟩ := p
    rw [mem_crossingPairs_iff]
    simp only [crossingPairsR, Finset.mem_filter, Finset.mem_univ, true_and]
    exact properCross_model_iff R
      (fun h => fin7_ne_succ i (pP_inj h))
      (fun h => fin7_ne_succ j (pQ_inj h))
      (pP_ne_pQ i j)
      (pP_ne_pQ i (j+1))
      (pP_ne_pQ (i+1) j)
      (pP_ne_pQ (i+1) (j+1))
  rw [hEq, IntersectionCount.pair_card]
  exact crossCountC_le_38_of_general_position (toConfig R) (fullGP_toConfig R)

end Model

/-! ## What remains

This file stops at the sign transport.  Two further steps would carry the bound
`≤ 38` from `ConfigBridge` to a real configuration:

1. **Assemble the `Config`.**  `Simple7` for `fun i => model R (pP i)` needs its
   four conjuncts: distinct vertices and the two non-collinearity clauses come
   from `model_orient_ne_zero`; the fourth is `R.simpleP` transported by
   `properCross_model_iff`.  Then `FullGP` of that `Config` is
   `model_orient_ne_zero` again, modulo `Vcfg (toConfig R) = model R`.
2. **Identify pairs with points.**  `crossingPairsR R` counts crossing *pairs*;
   the theorem one wants is about the number of *points* of
   `boundary P ∩ boundary Q` in `ℝ × ℝ`.  That is the real analogue of
   `IntersectionCount.crossCountC_eq_pointCount`, and its ingredients already
   exist over `ℝ` — `PointSetSemantics.straddle_of_common`,
   `common_of_straddle`, and `IntersectionCount.common_unique` are all stated
   for real points, not for `Config`.  What is missing is the real analogue of
   `shared_is_vertex` / `side_indices_unique`.

Neither is done.  And AKR §9 remains an import regardless: nothing here reaches
a configuration that has a vertex on the other polygon's boundary.
-/

end Heptagon.RealUpperBound
