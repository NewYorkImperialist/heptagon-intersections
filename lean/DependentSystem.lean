import UniformEps
import Mathlib.LinearAlgebra.FiniteDimensional.Basic

/-!
# AKR Theorem 17: the dependent-vertex system has a unique, affinely-moving solution

This file proves the statement of **Theorem 17** of Ackerman–Keszegh–Rote,
*Discrete Comput. Geom.* **68** (2022) 1049–1077, quoted in
`docs/akr-9-1-obligation.md` §1.4:

> "Suppose that from every dependent point, one can reach a free point in the
> dependence graph.  If the system of equations (2)–(3) has a solution for
> `α = 0`, then it has a unique solution for all `α`, and the solution depends
> linearly on `α`."

Its conclusion is exactly the hypothesis **(Aff)** that `UniformEps.lean`
consumes: `Vᵢ(α) = V⁰ᵢ + α·Eᵢ`, i.e. `UniformEps.move`.  `move_of_theorem17`
below is the join.

## The system

`N` points `A₁,…,A_N`, split into *dependent* (`dep`) and *free*.  A dependent
point is a convex combination of the others,

  `A_i = Σ_{j} λ_ij A_j`,  `λ_ij ≥ 0`,  `Σ_j λ_ij = 1`      (2)

and each free point is prescribed.  The *dependence graph* has an arc `i → j`
whenever `i` is dependent and `λ_ij > 0` (`DepSystem.Arc`).

The system is scalar here.  As AKR say, the proof "splits into an `x`-system and
a `y`-system"; `move_of_theorem17` runs the scalar theorem twice.

## The proof given here is not AKR's, and is shorter

AKR route Theorem 17 through Observation 15 (a lexicographic-maximum argument)
and Lemma 16 (all points lie in the convex hull of the free points), then argue
that a singular coefficient matrix would give unboundedly large solutions,
contradicting Lemma 16.

The proof here is the **absorption / maximum-modulus** argument and needs
neither convex hulls nor the lexicographic order nor a matrix:

> Let `u` solve the homogeneous system (dependent equations, zero free data).
> Let `M = max_i |u_i|` and suppose `M > 0`.  For any `i` with `|u_i| = M`,
> `M = |Σ_j λ_ij u_j| ≤ Σ_j λ_ij |u_j| ≤ Σ_j λ_ij M = M`, so the middle
> inequality is an equality, and since every term is nonnegative,
> `λ_ij > 0 ⟹ |u_j| = M`.  So the set `{i : |u_i| = M}` is closed under arcs,
> and contains no free point (free points have `u = 0 ≠ M`).  That contradicts
> reachability of a free point.  Hence `M = 0`.

Injectivity of `I − Λ` follows, surjectivity from finite-dimensionality
(`LinearMap.injective_iff_surjective`), and linearity in `α` is then the
one-line observation that the solution operator is linear.

**The reachability hypothesis is stated with `Relation.ReflTransGen` on the arc
relation**, which is AKR's "one can reach a free point" verbatim.  AKR's
**Lemma 18** — that the dependence graph coming from vertex-side degeneracies
always has this property — is *not* proved here; it is a hypothesis.

## Scope, honestly

* Observation 15 and Lemma 16 are **not** formalised; they are not needed for
  the route taken.  Nothing else in the project depends on them.
* Lemma 18 is **not** formalised.
* This file therefore does **not** discharge the AKR §9 import.

**This file does not prove `f(7,7) = 38`.**  That remains a candidate resting on
the AKR §9 import, unreviewed by any mathematician.

This module is a **leaf**: nothing in the project imports it, and it is not in
`defaultTargets`.
-/

set_option autoImplicit false

namespace Heptagon
namespace DependentSystem

open Finset

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

/-- A system of points split into dependent and free, each dependent point being
a convex combination of the others.  This is AKR's system (2). -/
structure DepSystem (ι : Type*) [Fintype ι] where
  /-- The dependent indices; the rest are free. -/
  dep : Finset ι
  /-- The dependency weights `λ_ij`. -/
  lam : ι → ι → ℝ
  lam_nonneg : ∀ i j, 0 ≤ lam i j
  lam_sum : ∀ i ∈ dep, ∑ j, lam i j = 1

namespace DepSystem

variable (S : DepSystem ι)

/-- An arc of the dependence graph: `i` is dependent and depends on `j` with
positive weight. -/
def Arc (i j : ι) : Prop := i ∈ S.dep ∧ 0 < S.lam i j

/-- AKR's hypothesis: from every dependent point one can reach a free point in
the dependence graph. -/
def Reaches : Prop := ∀ i ∈ S.dep, ∃ f, f ∉ S.dep ∧ Relation.ReflTransGen S.Arc i f

/-- `v` solves the system with prescribed free data `a`: it satisfies the
dependency equations (2) at every dependent index, and agrees with `a` at every
free index (AKR's (3)). -/
def Solves (v a : ι → ℝ) : Prop :=
  (∀ i ∈ S.dep, v i = ∑ j, S.lam i j * v j) ∧ (∀ i, i ∉ S.dep → v i = a i)

/-! ## 1. The heart: the homogeneous system has only the zero solution -/

/-- **Absorption.**  A solution of the dependency equations with zero free data
vanishes identically.  This is what replaces AKR's Observation 15 + Lemma 16. -/
theorem eq_zero_of_homogeneous (hR : S.Reaches) {v : ι → ℝ}
    (hd : ∀ i ∈ S.dep, v i = ∑ j, S.lam i j * v j)
    (hf : ∀ i, i ∉ S.dep → v i = 0) : v = 0 := by
  by_contra hv
  obtain ⟨i0, hi0⟩ : ∃ i, v i ≠ 0 := by
    by_contra h
    push Not at h
    exact hv (funext fun i => h i)
  have hne : (Finset.univ : Finset ι).Nonempty := ⟨i0, Finset.mem_univ _⟩
  set M := Finset.univ.sup' hne (fun i => |v i|) with hMdef
  have hle : ∀ j, |v j| ≤ M := by
    intro j
    rw [hMdef]
    exact Finset.le_sup' (fun i => |v i|) (Finset.mem_univ j)
  have hMpos : 0 < M := lt_of_lt_of_le (abs_pos.mpr hi0) (hle i0)
  -- an index of maximal modulus is dependent
  have hTdep : ∀ i, |v i| = M → i ∈ S.dep := by
    intro i hi
    by_contra hnd
    rw [hf i hnd, abs_zero] at hi
    exact absurd hi.symm (ne_of_gt hMpos)
  -- the maximal-modulus set is closed under arcs
  have hclosed : ∀ i, |v i| = M → ∀ j, S.Arc i j → |v j| = M := by
    intro i hi j hij
    have hidep : i ∈ S.dep := hTdep i hi
    have h1 : M = |∑ j, S.lam i j * v j| := by rw [← hd i hidep, hi]
    have h2 : |∑ j, S.lam i j * v j| ≤ ∑ j, S.lam i j * |v j| := by
      refine le_trans (Finset.abs_sum_le_sum_abs _ _) (le_of_eq ?_)
      exact Finset.sum_congr rfl fun j _ => by
        rw [abs_mul, abs_of_nonneg (S.lam_nonneg i j)]
    have h3 : ∑ j, S.lam i j * |v j| ≤ ∑ j, S.lam i j * M :=
      Finset.sum_le_sum fun j _ => mul_le_mul_of_nonneg_left (hle j) (S.lam_nonneg i j)
    have h4 : ∑ j, S.lam i j * M = M := by
      rw [← Finset.sum_mul, S.lam_sum i hidep, one_mul]
    have hsum : ∑ j, S.lam i j * |v j| = M := le_antisymm (by linarith) (by linarith)
    have heq : ∑ j, S.lam i j * (M - |v j|) = 0 := by
      have hsplit : ∑ j, S.lam i j * (M - |v j|)
          = (∑ j, S.lam i j * M) - ∑ j, S.lam i j * |v j| := by
        rw [← Finset.sum_sub_distrib]
        exact Finset.sum_congr rfl fun j _ => by ring
      rw [hsplit, h4, hsum, sub_self]
    have hterm : S.lam i j * (M - |v j|) = 0 :=
      (Finset.sum_eq_zero_iff_of_nonneg (fun k _ =>
        mul_nonneg (S.lam_nonneg i k) (by linarith [hle k]))).mp heq j (Finset.mem_univ j)
    rcases mul_eq_zero.mp hterm with h | h
    · exact absurd h (ne_of_gt hij.2)
    · linarith
  have hreach : ∀ x y, Relation.ReflTransGen S.Arc x y → |v x| = M → |v y| = M := by
    intro x y h
    induction h with
    | refl => exact id
    | tail _ hbc ih => exact fun hx => hclosed _ (ih hx) _ hbc
  obtain ⟨i1, _, hi1⟩ := Finset.exists_mem_eq_sup' hne (fun i => |v i|)
  have hmem : |v i1| = M := hi1.symm
  obtain ⟨f, hfnd, hpath⟩ := hR i1 (hTdep i1 hmem)
  exact hfnd (hTdep f (hreach i1 f hpath hmem))

/-! ## 2. Uniqueness -/

/-- **Uniqueness.**  Two solutions with the same free data are equal. -/
theorem solves_unique (hR : S.Reaches) {v w a : ι → ℝ}
    (hv : S.Solves v a) (hw : S.Solves w a) : v = w := by
  have h : (fun i => v i - w i) = 0 := by
    refine S.eq_zero_of_homogeneous hR ?_ ?_
    · intro i hi
      have h1 := hv.1 i hi
      have h2 := hw.1 i hi
      have hs : ∑ j, S.lam i j * (v j - w j)
          = (∑ j, S.lam i j * v j) - ∑ j, S.lam i j * w j := by
        rw [← Finset.sum_sub_distrib]
        exact Finset.sum_congr rfl fun j _ => by ring
      show v i - w i = ∑ j, S.lam i j * (v j - w j)
      rw [hs, ← h1, ← h2]
    · intro i hi
      show v i - w i = 0
      rw [hv.2 i hi, hw.2 i hi, sub_self]
  funext i
  have := congrFun h i
  simp only [Pi.zero_apply] at this
  linarith

/-! ## 3. Existence, via the operator `I − Λ` -/

/-- The linear operator that is `I − Λ` on the dependent block and the identity
on the free block.  `S.op v = c` says exactly that `v` satisfies the dependency
equations wherever `c` vanishes on `dep`, and takes the values of `c` on the
free block. -/
noncomputable def op (S : DepSystem ι) : (ι → ℝ) →ₗ[ℝ] (ι → ℝ) where
  toFun v := fun i => if i ∈ S.dep then v i - ∑ j, S.lam i j * v j else v i
  map_add' v w := by
    funext i
    by_cases h : i ∈ S.dep
    · have hs : ∑ j, S.lam i j * (v j + w j)
          = (∑ j, S.lam i j * v j) + ∑ j, S.lam i j * w j := by
        rw [← Finset.sum_add_distrib]
        exact Finset.sum_congr rfl fun j _ => by ring
      simp only [h, if_true, Pi.add_apply, hs]
      ring
    · simp only [h, if_false, Pi.add_apply]
  map_smul' c v := by
    funext i
    by_cases h : i ∈ S.dep
    · have hs : ∑ j, S.lam i j * (c * v j) = c * ∑ j, S.lam i j * v j := by
        rw [Finset.mul_sum]
        exact Finset.sum_congr rfl fun j _ => by ring
      simp only [h, if_true, Pi.smul_apply, smul_eq_mul, RingHom.id_apply, hs]
      ring
    · simp only [h, if_false, Pi.smul_apply, smul_eq_mul, RingHom.id_apply]

theorem op_apply (v : ι → ℝ) (i : ι) :
    S.op v i = if i ∈ S.dep then v i - ∑ j, S.lam i j * v j else v i := rfl

theorem op_injective (hR : S.Reaches) : Function.Injective S.op := by
  intro v w h
  have hz : S.op (v - w) = 0 := by rw [map_sub, h, sub_self]
  have hzero : (fun i => v i - w i) = 0 := by
    refine S.eq_zero_of_homogeneous hR ?_ ?_
    · intro i hi
      have := congrFun hz i
      rw [op_apply] at this
      simp only [hi, if_true, Pi.sub_apply, Pi.zero_apply] at this
      linarith
    · intro i hi
      have := congrFun hz i
      rw [op_apply] at this
      simp only [hi, if_false, Pi.sub_apply, Pi.zero_apply] at this
      exact this
  funext i
  have := congrFun hzero i
  simp only [Pi.zero_apply] at this
  linarith

theorem op_surjective (hR : S.Reaches) : Function.Surjective S.op :=
  LinearMap.injective_iff_surjective.mp (S.op_injective hR)

/-- **Existence.**  For any prescribed free data there is a solution. -/
theorem exists_solves (hR : S.Reaches) (a : ι → ℝ) : ∃ v, S.Solves v a := by
  obtain ⟨v, hv⟩ := S.op_surjective hR (fun i => if i ∈ S.dep then 0 else a i)
  refine ⟨v, ?_, ?_⟩
  · intro i hi
    have hc := congrFun hv i
    rw [op_apply] at hc
    simp only [hi, if_true] at hc
    linarith
  · intro i hi
    have hc := congrFun hv i
    rw [op_apply] at hc
    simp only [hi, if_false] at hc
    exact hc

/-! ## 4. Linearity in the parameter -/

omit [DecidableEq ι] in
/-- Solutions combine affinely: this is the "depends linearly on `α`" half. -/
theorem solves_affine {A B a b : ι → ℝ} (hA : S.Solves A a) (hB : S.Solves B b) (e : ℝ) :
    S.Solves (fun i => A i + e * B i) (fun i => a i + e * b i) := by
  constructor
  · intro i hi
    have h1 := hA.1 i hi
    have h2 := hB.1 i hi
    have hs : ∑ j, S.lam i j * (A j + e * B j)
        = (∑ j, S.lam i j * A j) + e * ∑ j, S.lam i j * B j := by
      rw [Finset.mul_sum, ← Finset.sum_add_distrib]
      exact Finset.sum_congr rfl fun j _ => by ring
    show A i + e * B i = ∑ j, S.lam i j * (A j + e * B j)
    rw [hs, ← h1, ← h2]
  · intro i hi
    show A i + e * B i = a i + e * b i
    rw [hA.2 i hi, hB.2 i hi]

/-- **AKR Theorem 17.**  Given a solution `A` at parameter `0` with free data
`a`, and any prescribed free *directions* `b`, there is a direction vector `B`
such that for every parameter `e` the system with free data `a + e·b` has
`A + e·B` as its **unique** solution.  That is: the solution exists for all `e`,
is unique, and depends affinely on `e`. -/
theorem theorem17 (hR : S.Reaches) {A a : ι → ℝ} (hA : S.Solves A a) (b : ι → ℝ) :
    ∃ B : ι → ℝ, S.Solves B b ∧
      ∀ e : ℝ, S.Solves (fun i => A i + e * B i) (fun i => a i + e * b i) ∧
        ∀ v : ι → ℝ, S.Solves v (fun i => a i + e * b i) → v = fun i => A i + e * B i := by
  obtain ⟨B, hB⟩ := S.exists_solves hR b
  refine ⟨B, hB, fun e => ⟨S.solves_affine hA hB e, fun v hv => ?_⟩⟩
  exact S.solves_unique hR hv (S.solves_affine hA hB e)

end DepSystem

/-! ## 5. The join with `UniformEps`: Theorem 17 supplies hypothesis (Aff)

AKR's system is two-dimensional; its proof "splits into an `x`-system and a
`y`-system".  Running `theorem17` on each coordinate produces exactly
`UniformEps.move V⁰ E' e`, the affine motion that `UniformEps.theoremU_sameSign`
consumes. -/

open UniformEps

/-- **Theorem 17, in the form `UniformEps` needs it.**  A 14-point configuration
whose dependent vertices satisfy AKR's relation (1) at `e = 0`, with free
directions `E` prescribed, moves **affinely**: there is a single direction
vector `E'`, agreeing with `E` at every free index, such that for every `e` the
unique solution of the system is `UniformEps.move V0 E' e`.

Combined with `UniformEps.theoremU_sameSign` this turns every "for small enough
`ε`" of AKR §9.1 that is a sign condition into the explicit bound `ε₀`. -/
theorem move_of_theorem17 (S : DepSystem (Fin 14)) (hR : S.Reaches)
    (V0 E : Fin 14 → ℝ × ℝ)
    (hx : S.Solves (fun i => (V0 i).1) (fun i => (V0 i).1))
    (hy : S.Solves (fun i => (V0 i).2) (fun i => (V0 i).2)) :
    ∃ E' : Fin 14 → ℝ × ℝ, (∀ i, i ∉ S.dep → E' i = E i) ∧
      ∀ e : ℝ,
        (S.Solves (fun i => (move V0 E' e i).1) (fun i => (V0 i).1 + e * (E i).1) ∧
         S.Solves (fun i => (move V0 E' e i).2) (fun i => (V0 i).2 + e * (E i).2)) ∧
        ((∀ v, S.Solves v (fun i => (V0 i).1 + e * (E i).1) →
            v = fun i => (move V0 E' e i).1) ∧
         (∀ v, S.Solves v (fun i => (V0 i).2 + e * (E i).2) →
            v = fun i => (move V0 E' e i).2)) := by
  obtain ⟨Bx, hBx, hx'⟩ := S.theorem17 hR hx (fun i => (E i).1)
  obtain ⟨By, hBy, hy'⟩ := S.theorem17 hR hy (fun i => (E i).2)
  refine ⟨fun i => (Bx i, By i), ?_, ?_⟩
  · intro i hi
    have h1 := hBx.2 i hi
    have h2 := hBy.2 i hi
    exact Prod.ext h1 h2
  · intro e
    have hmx : (fun i => (move V0 (fun i => (Bx i, By i)) e i).1)
        = fun i => (V0 i).1 + e * Bx i := rfl
    have hmy : (fun i => (move V0 (fun i => (Bx i, By i)) e i).2)
        = fun i => (V0 i).2 + e * By i := rfl
    rw [hmx, hmy]
    exact ⟨⟨(hx' e).1, (hy' e).1⟩, ⟨(hx' e).2, (hy' e).2⟩⟩

/-! ## 6. Axiom check -/

#print axioms Heptagon.DependentSystem.DepSystem.eq_zero_of_homogeneous
#print axioms Heptagon.DependentSystem.DepSystem.solves_unique
#print axioms Heptagon.DependentSystem.DepSystem.op_injective
#print axioms Heptagon.DependentSystem.DepSystem.op_surjective
#print axioms Heptagon.DependentSystem.DepSystem.exists_solves
#print axioms Heptagon.DependentSystem.DepSystem.solves_affine
#print axioms Heptagon.DependentSystem.DepSystem.theorem17
#print axioms Heptagon.DependentSystem.move_of_theorem17

end DependentSystem
end Heptagon
