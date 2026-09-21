import SegmentStable
import LowerBound
import Mathlib.Data.Finset.Lattice.Fold

/-!
# Simplicity of a closed polygon survives a small perturbation of its vertices

This file proves the statement that AKR §9 *uses* but never *states*: that the
perturbed polygons of the general-position reduction are still **simple**.
See `docs/akr-9-1-obligation.md` §6.2 and `docs/simplicity-preservation.md`.

It imports only `SegmentStable` (Mathlib only) and `LowerBound` (core Lean
only), and nothing in the project imports it, so it is a leaf.

## The two halves, and which one is the real content

Simplicity of a closed polygon `W : Fin n → E`, as a *curve*, is three things:

* **no degenerate side**: `W i ≠ W (i+1)`;
* **non-adjacent sides are disjoint**;
* **adjacent sides meet exactly in their shared vertex**.

The second is handled by `SegmentStable.exists_eps_disjoint_stable`: disjoint
compact sets are at positive distance.  The first and third are *not*: adjacent
sides always meet, so no disjointness argument reaches them, and the condition
"they meet in **exactly one** point" is not obviously open.

This file's contribution is that the first and third are a single **open**
condition, namely that the vector

  `cornerVec a b c = ‖c - b‖ • (a - b) - ‖a - b‖ • (c - b)`

is nonzero at every corner.  `cornerVec a b c = 0` says exactly that `a - b`
and `c - b` are *parallel and point the same way* (a "spur", a corner of angle
zero) **or** that one of them is zero (a degenerate side).  Both are the ways a
corner can fail, and `cornerVec` detects them simultaneously and continuously.

## The nondegeneracy hypothesis is not decorative

`cornerVec a b c = 0` whenever `a = b`.  This is not an artefact: the theorem
below is **false** without `W i ≠ W (i+1)`.  Take `a = b` and `c ≠ b`; then
`segment a b ∩ segment b c = {b}` holds, yet moving `a` to a point of the open
segment `(b, c)` makes the two sides overlap in a segment.  So a "heptagon"
with a repeated consecutive vertex — a hexagon in disguise — can lose
simplicity *as a parametrised curve* under an arbitrarily small perturbation.
Recorded here because the informal argument in `akr-9-1-obligation.md` §6.2
("adjacent sides can only fail by folding back") glosses exactly this case.
-/

set_option autoImplicit false

namespace Heptagon
namespace SimplicityStable

open Heptagon.SegmentStable

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-! ## 1. The corner vector -/

/-- The **corner vector** at `b`, for the corner `a — b — c`.

It vanishes exactly when the two closed segments `[a,b]` and `[b,c]` meet in
more than the point `b`, or when one of them is a single point.  See
`meet_eq_singleton_of_cornerVec_ne_zero` and `cornerVec_ne_zero_of_meet`. -/
noncomputable def cornerVec (a b c : E) : E :=
  ‖c - b‖ • (a - b) - ‖a - b‖ • (c - b)

theorem cornerVec_eq_zero_of_left {a b c : E} (h : a = b) : cornerVec a b c = 0 := by
  subst h; simp [cornerVec]

theorem cornerVec_eq_zero_of_right {a b c : E} (h : c = b) : cornerVec a b c = 0 := by
  subst h; simp [cornerVec]

theorem left_ne_of_cornerVec_ne_zero {a b c : E} (h : cornerVec a b c ≠ 0) : a ≠ b :=
  fun he => h (cornerVec_eq_zero_of_left he)

theorem right_ne_of_cornerVec_ne_zero {a b c : E} (h : cornerVec a b c ≠ 0) : c ≠ b :=
  fun he => h (cornerVec_eq_zero_of_right he)

/-- **A nonzero corner vector forces the two adjacent sides to meet exactly in
their shared vertex.** -/
theorem meet_eq_singleton_of_cornerVec_ne_zero {a b c : E} (h : cornerVec a b c ≠ 0) :
    segment ℝ a b ∩ segment ℝ b c = {b} := by
  apply Set.Subset.antisymm
  · rintro p ⟨hp1, hp2⟩
    have hp1' : p ∈ segment ℝ b a := by rwa [segment_symm]
    rw [segment_eq_image'] at hp1'
    rw [segment_eq_image'] at hp2
    obtain ⟨s, hs, hps⟩ := hp1'
    obtain ⟨t, ht, hpt⟩ := hp2
    dsimp only at hps hpt
    simp only [Set.mem_Icc] at hs ht
    have hst : s • (a - b) = t • (c - b) := add_left_cancel (hps.trans hpt.symm)
    have hzero : s • (a - b) = 0 := by
      by_contra hne
      have hs0 : s ≠ 0 := by rintro rfl; simp at hne
      have hnorm : s * ‖a - b‖ = t * ‖c - b‖ := by
        have hn := congrArg norm hst
        rwa [norm_smul, norm_smul, Real.norm_of_nonneg hs.1,
          Real.norm_of_nonneg ht.1] at hn
      have key : s • cornerVec a b c = 0 := by
        have e1 : s • cornerVec a b c
            = ‖c - b‖ • (s • (a - b)) - (s * ‖a - b‖) • (c - b) := by
          rw [cornerVec, smul_sub, smul_comm s ‖c - b‖ (a - b), smul_smul, smul_smul]
        rw [e1, hst, hnorm, smul_smul, mul_comm ‖c - b‖ t, sub_self]
      exact h ((smul_eq_zero.mp key).resolve_left hs0)
    have hpb : p = b := by rw [← hps, hzero, add_zero]
    exact Set.mem_singleton_iff.mpr hpb
  · intro p hp
    rw [Set.mem_singleton_iff] at hp
    rw [hp]
    exact ⟨right_mem_segment ℝ a b, left_mem_segment ℝ b c⟩

/-- **Converse**, given that neither side is degenerate. -/
theorem cornerVec_ne_zero_of_meet {a b c : E} (hab : a ≠ b) (hcb : c ≠ b)
    (h : segment ℝ a b ∩ segment ℝ b c = {b}) : cornerVec a b c ≠ 0 := by
  intro h0
  have hu : (0:ℝ) < ‖a - b‖ := by
    rw [norm_pos_iff]; exact sub_ne_zero.mpr hab
  have hv : (0:ℝ) < ‖c - b‖ := by
    rw [norm_pos_iff]; exact sub_ne_zero.mpr hcb
  have heq : ‖c - b‖ • (a - b) = ‖a - b‖ • (c - b) := sub_eq_zero.mp h0
  have hθ0 : (0:ℝ) < min 1 (‖c - b‖ / ‖a - b‖) := lt_min one_pos (div_pos hv hu)
  have hθ1 : min 1 (‖c - b‖ / ‖a - b‖) ≤ 1 := min_le_left _ _
  have hkey : min 1 (‖c - b‖ / ‖a - b‖) • (a - b)
      = (min 1 (‖c - b‖ / ‖a - b‖) * ‖a - b‖ / ‖c - b‖) • (c - b) := by
    have h1 : (min 1 (‖c - b‖ / ‖a - b‖) / ‖c - b‖) • (‖c - b‖ • (a - b))
        = (min 1 (‖c - b‖ / ‖a - b‖) / ‖c - b‖) • (‖a - b‖ • (c - b)) := by rw [heq]
    rw [smul_smul, smul_smul, div_mul_cancel₀ _ (ne_of_gt hv)] at h1
    rw [h1]
    congr 1
    field_simp
  have hp1 : b + min 1 (‖c - b‖ / ‖a - b‖) • (a - b) ∈ segment ℝ a b := by
    rw [← segment_symm, segment_eq_image']
    exact ⟨_, Set.mem_Icc.mpr ⟨le_of_lt hθ0, hθ1⟩, rfl⟩
  have hp2 : b + min 1 (‖c - b‖ / ‖a - b‖) • (a - b) ∈ segment ℝ b c := by
    rw [segment_eq_image']
    refine ⟨min 1 (‖c - b‖ / ‖a - b‖) * ‖a - b‖ / ‖c - b‖,
      Set.mem_Icc.mpr ⟨div_nonneg (mul_nonneg hθ0.le (norm_nonneg _)) (norm_nonneg _), ?_⟩, ?_⟩
    · rw [div_le_one hv]
      have h2 : min 1 (‖c - b‖ / ‖a - b‖) ≤ ‖c - b‖ / ‖a - b‖ := min_le_right _ _
      rw [le_div_iff₀ hu] at h2
      linarith
    · dsimp only
      rw [← hkey]
  have hmem : b + min 1 (‖c - b‖ / ‖a - b‖) • (a - b) ∈ ({b} : Set E) := by
    rw [← h]; exact ⟨hp1, hp2⟩
  rw [Set.mem_singleton_iff, add_eq_left] at hmem
  rcases smul_eq_zero.mp hmem with hz | hz
  · exact absurd hz (ne_of_gt hθ0)
  · exact hab (sub_eq_zero.mp hz)

/-! ## 2. A nonzero corner vector is an open condition -/

theorem continuous_cornerVec :
    Continuous fun p : E × E × E => cornerVec p.1 p.2.1 p.2.2 := by
  have h1 : Continuous fun p : E × E × E => p.1 - p.2.1 :=
    continuous_fst.sub (continuous_fst.comp continuous_snd)
  have h2 : Continuous fun p : E × E × E => p.2.2 - p.2.1 :=
    (continuous_snd.comp continuous_snd).sub (continuous_fst.comp continuous_snd)
  exact (h2.norm.smul h1).sub (h1.norm.smul h2)

/-- **Stability of a corner.**  If the corner `a — b — c` is nondegenerate then
so is every corner obtained by moving `a`, `b`, `c` by at most `ε`. -/
theorem exists_eps_cornerVec_stable {a b c : E} (h : cornerVec a b c ≠ 0) :
    ∃ ε : ℝ, 0 < ε ∧ ∀ a' b' c' : E,
      dist a' a ≤ ε → dist b' b ≤ ε → dist c' c ≤ ε → cornerVec a' b' c' ≠ 0 := by
  have hopen : IsOpen {p : E × E × E | cornerVec p.1 p.2.1 p.2.2 ≠ 0} :=
    isOpen_compl_singleton.preimage continuous_cornerVec
  obtain ⟨δ, hδ, hball⟩ := Metric.isOpen_iff.mp hopen (a, b, c) h
  refine ⟨δ / 2, by linarith, ?_⟩
  intro a' b' c' ha hb hc
  have hmem : (a', b', c') ∈ Metric.ball (a, b, c) δ := by
    rw [Metric.mem_ball, Prod.dist_eq, Prod.dist_eq]
    exact max_lt (by linarith) (max_lt (by linarith) (by linarith))
  exact hball hmem

/-! ## 3. Simplicity of a closed polygon -/

variable {n : ℕ} [NeZero n]

/-- Sides `i` and `j` of an `n`-gon share a vertex.  At `n = 7` this is
definitionally `LowerBound.Adjacent`; see `adj_iff_adjacent`. -/
def Adj (i j : Fin n) : Prop := i = j ∨ j = i + 1 ∨ i = j + 1

theorem adj_iff_adjacent (i j : Fin 7) : Adj i j ↔ LowerBound.Adjacent i j := Iff.rfl

/-- The `i`-th closed side of the polygon `W`. -/
def side (W : Fin n → E) (i : Fin n) : Set E := segment ℝ (W i) (W (i + 1))

/-- **A closed polygon is simple** when it has no degenerate side, its
non-adjacent sides are disjoint, and its adjacent sides meet exactly in their
shared vertex.  This is the parametrised ("as a curve") notion: it is what
makes `fun t => W ⌊t⌋ + ...` injective on the circle.  It is the notion in the
draft of `docs/akr-9-1-obligation.md` §4.2, transcribed verbatim except that
`Disjoint` replaces `∩ = ∅` so that `SegmentStable` applies directly. -/
structure SimpleClosed (W : Fin n → E) : Prop where
  /-- No side is a single point. -/
  nondeg : ∀ i : Fin n, W i ≠ W (i + 1)
  /-- Non-adjacent sides are disjoint. -/
  disj : ∀ i j : Fin n, ¬ Adj i j → Disjoint (side W i) (side W j)
  /-- Adjacent sides meet exactly in the vertex they share. -/
  meet : ∀ i : Fin n, side W i ∩ side W (i + 1) = {W (i + 1)}

/-- Every corner of a simple closed polygon has a nonzero corner vector. -/
theorem SimpleClosed.cornerVec_ne_zero {W : Fin n → E} (h : SimpleClosed W) (i : Fin n) :
    cornerVec (W i) (W (i + 1)) (W (i + 1 + 1)) ≠ 0 :=
  cornerVec_ne_zero_of_meet (h.nondeg i) (fun he => h.nondeg (i + 1) he.symm) (h.meet i)

/-- **The corner-vector form of simplicity.**  The two closed conditions
`nondeg` and `meet` collapse into one open condition. -/
theorem simpleClosed_of {W : Fin n → E}
    (hc : ∀ i : Fin n, cornerVec (W i) (W (i + 1)) (W (i + 1 + 1)) ≠ 0)
    (hd : ∀ i j : Fin n, ¬ Adj i j → Disjoint (side W i) (side W j)) :
    SimpleClosed W where
  nondeg i := left_ne_of_cornerVec_ne_zero (hc i)
  disj := hd
  meet i := meet_eq_singleton_of_cornerVec_ne_zero (hc i)

theorem simpleClosed_iff (W : Fin n → E) :
    SimpleClosed W ↔
      ((∀ i : Fin n, cornerVec (W i) (W (i + 1)) (W (i + 1 + 1)) ≠ 0) ∧
        ∀ i j : Fin n, ¬ Adj i j → Disjoint (side W i) (side W j)) :=
  ⟨fun h => ⟨h.cornerVec_ne_zero, h.disj⟩, fun h => simpleClosed_of h.1 h.2⟩

/-! ## 4. One `ε` for the whole polygon -/

/-- A positive lower bound for finitely many positive reals. -/
theorem exists_uniform_eps {ι : Type*} [Fintype ι] [Nonempty ι]
    (f : ι → ℝ) (hf : ∀ i, 0 < f i) : ∃ ε : ℝ, 0 < ε ∧ ∀ i, ε ≤ f i := by
  refine ⟨Finset.univ.inf' Finset.univ_nonempty f, ?_,
    fun i => Finset.inf'_le f (Finset.mem_univ i)⟩
  rw [Finset.lt_inf'_iff]
  exact fun i _ => hf i

/-- **Simplicity of a closed polygon is stable under a small enough
perturbation of its vertices.**

This is the statement AKR §9 uses without stating it.  No general position is
assumed, and no bound on the *shape* of the perturbation: every vertex may move
independently, by anything at all of norm at most `ε`. -/
theorem exists_eps_simpleClosed_stable {W : Fin n → E} (h : SimpleClosed W) :
    ∃ ε : ℝ, 0 < ε ∧ ∀ W' : Fin n → E,
      (∀ k, dist (W' k) (W k) ≤ ε) → SimpleClosed W' := by
  classical
  have : Nonempty (Fin n) := ⟨(0 : Fin n)⟩
  -- one `ε` per corner
  have hc : ∀ i : Fin n, ∃ e : ℝ, 0 < e ∧ ∀ a' b' c' : E,
      dist a' (W i) ≤ e → dist b' (W (i + 1)) ≤ e → dist c' (W (i + 1 + 1)) ≤ e →
      cornerVec a' b' c' ≠ 0 := fun i =>
    exists_eps_cornerVec_stable (h.cornerVec_ne_zero i)
  choose fc hfc0 hfc using hc
  -- one `ε` per non-adjacent side pair; adjacent pairs get the vacuous `1`
  have hd : ∀ p : Fin n × Fin n, ∃ e : ℝ, 0 < e ∧ (¬ Adj p.1 p.2 →
      ∀ W' : Fin n → E, (∀ k, dist (W' k) (W k) ≤ e) →
        Disjoint (side W' p.1) (side W' p.2)) := by
    intro p
    by_cases hadj : Adj p.1 p.2
    · exact ⟨1, one_pos, fun hn => absurd hadj hn⟩
    · obtain ⟨e, he, hstab⟩ := exists_eps_disjoint_stable (h.disj p.1 p.2 hadj)
      exact ⟨e, he, fun _ W' hW' =>
        hstab (W' p.1) (W' (p.1 + 1)) (W' p.2) (W' (p.2 + 1))
          (hW' _) (hW' _) (hW' _) (hW' _)⟩
  choose fd hfd0 hfd using hd
  obtain ⟨e1, he1, hle1⟩ := exists_uniform_eps fc hfc0
  obtain ⟨e2, he2, hle2⟩ := exists_uniform_eps fd hfd0
  refine ⟨min e1 e2, lt_min he1 he2, ?_⟩
  intro W' hW'
  refine simpleClosed_of (fun i => ?_) (fun i j hij => ?_)
  · have hb : ∀ k : Fin n, dist (W' k) (W k) ≤ fc i := fun k =>
      le_trans (hW' k) (le_trans (min_le_left _ _) (hle1 i))
    exact hfc i (W' i) (W' (i + 1)) (W' (i + 1 + 1)) (hb i) (hb (i + 1)) (hb (i + 1 + 1))
  · exact hfd (i, j) hij W'
      (fun k => le_trans (hW' k) (le_trans (min_le_right _ _) (hle2 (i, j))))

/-! ## 5. The two-polygon version -/

/-- **Both polygons of a pair stay simple.**  This is the simplicity half of
the AKR §9 import, for an arbitrary small perturbation of the fourteen
vertices. -/
theorem exists_eps_simpleClosed_stable_pair {P Q : Fin n → E}
    (hP : SimpleClosed P) (hQ : SimpleClosed Q) :
    ∃ ε : ℝ, 0 < ε ∧ ∀ P' Q' : Fin n → E,
      (∀ k, dist (P' k) (P k) ≤ ε) → (∀ k, dist (Q' k) (Q k) ≤ ε) →
      SimpleClosed P' ∧ SimpleClosed Q' := by
  obtain ⟨εP, hεP, hP'⟩ := exists_eps_simpleClosed_stable hP
  obtain ⟨εQ, hεQ, hQ'⟩ := exists_eps_simpleClosed_stable hQ
  refine ⟨min εP εQ, lt_min hεP hεQ, fun P' Q' hp hq => ⟨?_, ?_⟩⟩
  · exact hP' P' fun k => le_trans (hp k) (min_le_left _ _)
  · exact hQ' Q' fun k => le_trans (hq k) (min_le_right _ _)

/-! ## 6. The linear motion of AKR Theorem 17 -/

/-- Scaling a finite family down: for every `ε > 0` there is a `t₀ > 0` with
`‖t • F i‖ ≤ ε` for all `|t| ≤ t₀` and all `i`. -/
theorem exists_t0_of_eps (F : Fin n → E) {ε : ℝ} (hε : 0 < ε) :
    ∃ t₀ : ℝ, 0 < t₀ ∧ ∀ t : ℝ, |t| ≤ t₀ → ∀ i, ‖t • F i‖ ≤ ε := by
  have : Nonempty (Fin n) := ⟨(0 : Fin n)⟩
  obtain ⟨M, hM⟩ : ∃ M : ℝ, ∀ i, ‖F i‖ ≤ M :=
    ⟨Finset.univ.sup' Finset.univ_nonempty fun i => ‖F i‖,
      fun i => Finset.le_sup' (fun i => ‖F i‖) (Finset.mem_univ i)⟩
  have hM0 : 0 ≤ M := le_trans (norm_nonneg _) (hM (0 : Fin n))
  refine ⟨ε / (M + 1), by positivity, ?_⟩
  intro t ht i
  rw [norm_smul, Real.norm_eq_abs]
  have h1 : |t| * ‖F i‖ ≤ (ε / (M + 1)) * M :=
    mul_le_mul ht (hM i) (norm_nonneg _) (by positivity)
  have h2 : (ε / (M + 1)) * M ≤ ε := by
    rw [div_mul_eq_mul_div, div_le_iff₀ (by linarith)]
    nlinarith
  linarith

/-- **Simplicity survives the whole of a linear motion.**

AKR's Theorem 17 gives that the §9.1 perturbation moves every vertex along a
straight line at constant speed in `ε`.  This says that both polygons are
simple at *every* time `|t| ≤ t₀`, not merely at the endpoint — which is what
a continuous-motion argument needs. -/
theorem exists_t_simpleClosed_linear {P Q EP EQ : Fin n → E}
    (hP : SimpleClosed P) (hQ : SimpleClosed Q) :
    ∃ t₀ : ℝ, 0 < t₀ ∧ ∀ t : ℝ, |t| ≤ t₀ →
      SimpleClosed (fun i => P i + t • EP i) ∧ SimpleClosed (fun i => Q i + t • EQ i) := by
  obtain ⟨ε, hε, hstab⟩ := exists_eps_simpleClosed_stable_pair hP hQ
  obtain ⟨tP, htP, hboundP⟩ := exists_t0_of_eps EP hε
  obtain ⟨tQ, htQ, hboundQ⟩ := exists_t0_of_eps EQ hε
  refine ⟨min tP tQ, lt_min htP htQ, fun t ht => ?_⟩
  refine hstab _ _ (fun k => ?_) (fun k => ?_)
  · have : dist (P k + t • EP k) (P k) = ‖t • EP k‖ := by
      rw [dist_eq_norm]; congr 1; abel
    rw [this]
    exact hboundP t (le_trans ht (min_le_left _ _)) k
  · have : dist (Q k + t • EQ k) (Q k) = ‖t • EQ k‖ := by
      rw [dist_eq_norm]; congr 1; abel
    rw [this]
    exact hboundQ t (le_trans ht (min_le_right _ _)) k

/-! ## 7. The heptagon case, in the idiom of `docs/akr-9-1-obligation.md` §4.2

The draft there writes simplicity with `∩ = ∅` for the non-adjacent clause and
with `W (i+2)` for the corner clause.  These lemmas show that the structure
above is exactly that predicate at `n = 7`, so that nothing is lost in the
translation. -/

theorem simpleClosed_iff_draft (V : Fin 7 → ℝ × ℝ) :
    SimpleClosed V ↔
      ((∀ i : Fin 7, V i ≠ V (i + 1)) ∧
        (∀ i j : Fin 7, ¬ LowerBound.Adjacent i j →
          segment ℝ (V i) (V (i + 1)) ∩ segment ℝ (V j) (V (j + 1)) = ∅) ∧
        (∀ i : Fin 7, segment ℝ (V i) (V (i + 1)) ∩ segment ℝ (V (i + 1)) (V (i + 2))
          = {V (i + 1)})) := by
  have hsucc : ∀ i : Fin 7, i + 1 + 1 = i + 2 := by decide
  constructor
  · intro h
    refine ⟨h.nondeg, fun i j hij => ?_, fun i => ?_⟩
    · exact Set.disjoint_iff_inter_eq_empty.mp (h.disj i j hij)
    · have := h.meet i
      rwa [side, side, hsucc i] at this
  · rintro ⟨h1, h2, h3⟩
    refine ⟨h1, fun i j hij => ?_, fun i => ?_⟩
    · exact Set.disjoint_iff_inter_eq_empty.mpr (h2 i j hij)
    · have := h3 i
      rwa [side, side, hsucc i]

/-- **The heptagon statement.**  Two simple heptagons in the plane stay simple
under any small enough perturbation of their fourteen vertices. -/
theorem heptagon_simplicity_stable {P Q : Fin 7 → ℝ × ℝ}
    (hP : SimpleClosed P) (hQ : SimpleClosed Q) :
    ∃ ε : ℝ, 0 < ε ∧ ∀ P' Q' : Fin 7 → ℝ × ℝ,
      (∀ k, dist (P' k) (P k) ≤ ε) → (∀ k, dist (Q' k) (Q k) ≤ ε) →
      SimpleClosed P' ∧ SimpleClosed Q' :=
  exists_eps_simpleClosed_stable_pair hP hQ

/-- **The heptagon statement along AKR's linear motion.** -/
theorem heptagon_simplicity_stable_linear {P Q EP EQ : Fin 7 → ℝ × ℝ}
    (hP : SimpleClosed P) (hQ : SimpleClosed Q) :
    ∃ t₀ : ℝ, 0 < t₀ ∧ ∀ t : ℝ, |t| ≤ t₀ →
      SimpleClosed (fun i => P i + t • EP i) ∧ SimpleClosed (fun i => Q i + t • EQ i) :=
  exists_t_simpleClosed_linear hP hQ

/-! ## 8. The nondegeneracy hypothesis cannot be dropped

`cornerVec_ne_zero_of_meet` needs `a ≠ b` and `c ≠ b`.  The following makes the
failure concrete over `ℝ`: the corner `0 — 0 — 1` satisfies
`[0,0] ∩ [0,1] = {0}`, yet moving the first vertex from `0` to `t ∈ (0,1]`
makes the two segments overlap in `[0,t]`, so their intersection is no longer
the single point `0`.

Consequently no theorem of the shape "small perturbations preserve simplicity"
can hold for polygons with a repeated consecutive vertex, and the AKR §9 import
has to be read as quantifying over heptagons with seven genuinely distinct
consecutive vertices. -/
theorem degenerate_corner_not_stable :
    (segment ℝ (0:ℝ) 0 ∩ segment ℝ (0:ℝ) 1 = {0}) ∧
      ∀ t : ℝ, 0 < t → t ≤ 1 →
        segment ℝ t 0 ∩ segment ℝ (0:ℝ) 1 ≠ {0} := by
  constructor
  · rw [segment_same]
    exact Set.inter_eq_left.mpr (Set.singleton_subset_iff.mpr (left_mem_segment ℝ (0:ℝ) 1))
  · intro t ht ht1 hcon
    have hmem : t ∈ segment ℝ t (0:ℝ) ∩ segment ℝ (0:ℝ) 1 := by
      refine ⟨left_mem_segment ℝ t 0, ?_⟩
      rw [segment_eq_image']
      exact ⟨t, Set.mem_Icc.mpr ⟨le_of_lt ht, ht1⟩, by ring⟩
    rw [hcon, Set.mem_singleton_iff] at hmem
    exact absurd hmem (ne_of_gt ht)

end SimplicityStable
end Heptagon

#print axioms Heptagon.SimplicityStable.meet_eq_singleton_of_cornerVec_ne_zero
#print axioms Heptagon.SimplicityStable.cornerVec_ne_zero_of_meet
#print axioms Heptagon.SimplicityStable.exists_eps_cornerVec_stable
#print axioms Heptagon.SimplicityStable.simpleClosed_iff
#print axioms Heptagon.SimplicityStable.exists_eps_simpleClosed_stable
#print axioms Heptagon.SimplicityStable.exists_eps_simpleClosed_stable_pair
#print axioms Heptagon.SimplicityStable.exists_t_simpleClosed_linear
#print axioms Heptagon.SimplicityStable.simpleClosed_iff_draft
#print axioms Heptagon.SimplicityStable.heptagon_simplicity_stable
#print axioms Heptagon.SimplicityStable.heptagon_simplicity_stable_linear
#print axioms Heptagon.SimplicityStable.degenerate_corner_not_stable
