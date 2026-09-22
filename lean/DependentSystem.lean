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

/-! ## 3b. `Reaches` is not an extra assumption: AKR's Observation 15 and Lemma 18

Every result above takes `Reaches` as a hypothesis. AKR do not assume it — they
*prove* it, as Lemma 18, from Observation 15. Both are done here, so the
hypothesis is discharged rather than imported. -/

open scoped Classical in
/-- **Lemma 18, in the form it is actually used.** If from every dependent
point some arc strictly increases a potential, then a free point is reachable
from every dependent point.

The proof is finite, not inductive on the graph: among the points reachable
from `i`, take one maximising the potential; it cannot be dependent, because a
dependent point has a strictly larger neighbour, which is also reachable. -/
theorem reaches_of_strict_potential {α : Type*} [LinearOrder α] (p : ι → α)
    (h : ∀ i ∈ S.dep, ∃ j, S.Arc i j ∧ p i < p j) : S.Reaches := by
  intro i _
  obtain ⟨j, hjmem, hjmax⟩ :=
    Finset.exists_max_image
      (Finset.univ.filter fun x => Relation.ReflTransGen S.Arc i x) p
      ⟨i, by simp [Relation.ReflTransGen.refl]⟩
  have hjr : Relation.ReflTransGen S.Arc i j := by
    simpa using (Finset.mem_filter.mp hjmem).2
  by_cases hjd : j ∈ S.dep
  · obtain ⟨k, hk, hlt⟩ := h j hjd
    have hkr : Relation.ReflTransGen S.Arc i k := hjr.tail hk
    have hle : p k ≤ p j := hjmax k (by simpa using hkr)
    exact absurd hle (not_le.mpr hlt)
  · exact ⟨j, hjd, hjr⟩

/-- **Observation 15**, one coordinate at a time — which is how AKR's proof of
Theorem 17 uses it, since their system "splits into an `x`-system and a
`y`-system".

A convex combination equals its own value only if every point carrying positive
weight is *already* at that value; otherwise some such point is strictly
larger. -/
theorem observation15 {A : ι → ℝ} {i : ι} (hi : i ∈ S.dep)
    (hrep : A i = ∑ j, S.lam i j * A j) :
    (∀ j, 0 < S.lam i j → A j = A i) ∨ (∃ j, 0 < S.lam i j ∧ A i < A j) := by
  by_cases hall : ∀ j, 0 < S.lam i j → A j ≤ A i
  · left
    intro j hj
    by_contra hne
    have hlt : A j < A i := lt_of_le_of_ne (hall j hj) hne
    have hle : ∀ k ∈ Finset.univ, S.lam i k * A k ≤ S.lam i k * A i := by
      intro k _
      rcases lt_or_eq_of_le (S.lam_nonneg i k) with hk | hk
      · exact mul_le_mul_of_nonneg_left (hall k hk) (le_of_lt hk)
      · simp [← hk]
    have hstrict : S.lam i j * A j < S.lam i j * A i :=
      mul_lt_mul_of_pos_left hlt hj
    have : ∑ k, S.lam i k * A k < ∑ k, S.lam i k * A i :=
      Finset.sum_lt_sum hle ⟨j, Finset.mem_univ j, hstrict⟩
    rw [← Finset.sum_mul, S.lam_sum i hi, one_mul] at this
    exact absurd hrep (by linarith)
  · right
    push_neg at hall
    obtain ⟨j, hj, hlt⟩ := hall
    exact ⟨j, hj, hlt⟩

/-- A strict convex combination of two **distinct** points lies strictly below
the lexicographically larger of them. This is what rules out the first
disjunct of `observation15` for the real dependence graph: a dependent vertex
lies strictly between the two it depends on, so it cannot coincide with both. -/
theorem lex_lt_of_strict_between {u v w : ℝ × ℝ} (huv : u ≠ v) {t : ℝ}
    (ht0 : 0 < t) (ht1 : t < 1) (hw : w = t • u + (1 - t) • v) :
    toLex w < toLex u ∨ toLex w < toLex v := by
  have h1 : w.1 = t * u.1 + (1 - t) * v.1 := by rw [hw]; simp
  have h2 : w.2 = t * u.2 + (1 - t) * v.2 := by rw [hw]; simp
  have hne : toLex u ≠ toLex v := fun h => huv (by simpa using h)
  rcases lt_or_gt_of_ne hne with hlt | hlt
  · right
    rw [Prod.Lex.toLex_lt_toLex] at hlt ⊢
    rcases hlt with hx | ⟨hx, hy⟩
    · exact Or.inl (by rw [h1]; nlinarith)
    · exact Or.inr ⟨by rw [h1, hx]; ring, by rw [h2]; nlinarith⟩
  · left
    rw [Prod.Lex.toLex_lt_toLex] at hlt ⊢
    rcases hlt with hx | ⟨hx, hy⟩
    · exact Or.inl (by rw [h1]; nlinarith)
    · exact Or.inr ⟨by rw [h1, hx]; ring, by rw [h2]; nlinarith⟩

/-- **AKR's Lemma 18 for the actual dependence graph.**  If every dependent
vertex lies strictly between two vertices it depends on, then `Reaches` holds —
so `theorem17`'s hypothesis is supplied by the geometry of the vertex-side
degeneracies, not assumed. -/
theorem reaches_of_strict_between (V : ι → ℝ × ℝ)
    (h : ∀ i ∈ S.dep, ∃ b c : ι, S.Arc i b ∧ S.Arc i c ∧ V b ≠ V c ∧
          ∃ t : ℝ, 0 < t ∧ t < 1 ∧ V i = t • V b + (1 - t) • V c) :
    S.Reaches := by
  refine S.reaches_of_strict_potential (fun i => toLex (V i)) ?_
  intro i hi
  obtain ⟨b, c, hab, hac, hbc, t, ht0, ht1, hrep⟩ := h i hi
  rcases lex_lt_of_strict_between hbc ht0 ht1 hrep with hlt | hlt
  · exact ⟨b, hab, hlt⟩
  · exact ⟨c, hac, hlt⟩

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

/-! ## 5b. From vertex-side degeneracies to a `DepSystem`

AKR's relation (1): at each vertex-side degeneracy a point `A` of one polygon
lies on a side `BC` of the other, so `A = t·B + (1−t)·C` with `t ∈ (0,1)`, and
the perturbation maintains that relation with the same `t`.  This packages such
a family and produces the `DepSystem` together with `Reaches`, so
`theorem17` applies to the real configuration with no hypothesis left over. -/

/-- A family of vertex-side degeneracies on a vertex map `V`. -/
structure VSDeg {ι : Type*} [Fintype ι] [DecidableEq ι] (V : ι → ℝ × ℝ) where
  /-- The dependent vertices. -/
  dep : Finset ι
  /-- The first vertex each dependent vertex lies between. -/
  b : ι → ι
  /-- The second. -/
  c : ι → ι
  /-- The barycentric ratio, maintained by the motion. -/
  t : ι → ℝ
  ht0 : ∀ i ∈ dep, 0 < t i
  ht1 : ∀ i ∈ dep, t i < 1
  hne : ∀ i ∈ dep, V (b i) ≠ V (c i)
  hrep : ∀ i ∈ dep, V i = t i • V (b i) + (1 - t i) • V (c i)

namespace VSDeg

variable {ι : Type*} [Fintype ι] [DecidableEq ι] {V : ι → ℝ × ℝ} (D : VSDeg V)

theorem bc_ne {i : ι} (hi : i ∈ D.dep) : D.b i ≠ D.c i := by
  intro h; exact D.hne i hi (by rw [h])

/-- The dependence system it induces. -/
noncomputable def toDepSystem : DepSystem ι where
  dep := D.dep
  lam := fun i j =>
    if i ∈ D.dep then
      (if j = D.b i then D.t i else if j = D.c i then 1 - D.t i else 0)
    else 0
  lam_nonneg := by
    intro i j
    by_cases hi : i ∈ D.dep
    · simp only [if_pos hi]
      by_cases h1 : j = D.b i
      · simp only [if_pos h1]; exact le_of_lt (D.ht0 i hi)
      · by_cases h2 : j = D.c i
        · simp only [if_neg h1, if_pos h2]; linarith [D.ht1 i hi]
        · simp only [if_neg h1, if_neg h2]
          exact le_refl 0
    · simp only [if_neg hi]
      exact le_refl 0
  lam_sum := by
    intro i hi
    have hbc := D.bc_ne hi
    simp only [if_pos hi]
    have hsplit : ∀ j : ι,
        (if j = D.b i then D.t i else if j = D.c i then 1 - D.t i else 0)
          = (if j = D.b i then D.t i else 0) + (if j = D.c i then 1 - D.t i else 0) := by
      intro j
      by_cases h1 : j = D.b i
      · subst h1; simp [hbc]
      · by_cases h2 : j = D.c i
        · subst h2; simp [Ne.symm hbc]
        · simp [h1, h2]
    rw [Finset.sum_congr rfl fun j _ => hsplit j, Finset.sum_add_distrib,
      Finset.sum_ite_eq' Finset.univ (D.b i) (fun _ => D.t i),
      Finset.sum_ite_eq' Finset.univ (D.c i) (fun _ => 1 - D.t i)]
    simp

theorem arc_b {i : ι} (hi : i ∈ D.dep) : (D.toDepSystem).Arc i (D.b i) := by
  refine ⟨hi, ?_⟩
  simp only [toDepSystem, if_pos hi, if_pos rfl]
  exact D.ht0 i hi

theorem arc_c {i : ι} (hi : i ∈ D.dep) : (D.toDepSystem).Arc i (D.c i) := by
  refine ⟨hi, ?_⟩
  have hbc := D.bc_ne hi
  simp only [toDepSystem, if_pos hi, if_neg (Ne.symm hbc)]
  simp only [if_pos trivial]
  linarith [D.ht1 i hi]

/-- **`Reaches` holds for a real family of vertex-side degeneracies.**  So
`theorem17` applies with nothing assumed about the dependence graph. -/
theorem reaches : (D.toDepSystem).Reaches := by
  refine (D.toDepSystem).reaches_of_strict_between V ?_
  intro i hi
  exact ⟨D.b i, D.c i, D.arc_b hi, D.arc_c hi, D.hne i hi,
    D.t i, D.ht0 i hi, D.ht1 i hi, D.hrep i hi⟩

end VSDeg

/-! ## 6. Axiom check -/

#print axioms Heptagon.DependentSystem.DepSystem.eq_zero_of_homogeneous
#print axioms Heptagon.DependentSystem.DepSystem.solves_unique
#print axioms Heptagon.DependentSystem.DepSystem.op_injective
#print axioms Heptagon.DependentSystem.DepSystem.op_surjective
#print axioms Heptagon.DependentSystem.DepSystem.exists_solves
#print axioms Heptagon.DependentSystem.DepSystem.solves_affine
#print axioms Heptagon.DependentSystem.DepSystem.reaches_of_strict_potential
#print axioms Heptagon.DependentSystem.DepSystem.observation15
#print axioms Heptagon.DependentSystem.DepSystem.lex_lt_of_strict_between
#print axioms Heptagon.DependentSystem.DepSystem.reaches_of_strict_between
#print axioms Heptagon.DependentSystem.DepSystem.lex_lt_of_strict_between
#print axioms Heptagon.DependentSystem.DepSystem.reaches_of_strict_between
#print axioms Heptagon.DependentSystem.VSDeg.reaches
#print axioms Heptagon.DependentSystem.DepSystem.theorem17
#print axioms Heptagon.DependentSystem.move_of_theorem17

end DependentSystem
end Heptagon
