import CoverDefs

/-!
# Counting, for the row-degree clauses of the covering step

The covering refutations (`CCase00k_false`) fix the degree of each row of the
disjointness graph — how many of the seven sides of `Q` a given side of `P`
misses — and then use two families of clause per row:

* *at most `k`*: no `k+1` of the seven sides are all missed;
* *at least `k`*: no `7-k+1` of them are all met.

Both are counting facts, and both come from the two lemmas below by taking `S`
to be the literal set of side indices the clause mentions.  Nothing here is
specific to heptagons; the statements are about a decidable predicate on a
finite type.
-/

namespace Heptagon.Cover
open Finset

variable {α : Type*} [Fintype α] [DecidableEq α]

/-- If every element of `S` satisfies `p`, then `S` is no larger than the set of
elements satisfying `p`.  Used for the *at most `k`* clauses: exhibiting `k+1`
sides that are all missed would make the row's degree exceed `k`. -/
theorem card_le_of_all {p : α → Prop} [DecidablePred p] {S : Finset α}
    (h : ∀ a ∈ S, p a) : S.card ≤ (univ.filter p).card :=
  card_le_card fun a ha => mem_filter.mpr ⟨mem_univ a, h a ha⟩

/-- Dually, if no element of `S` satisfies `p` then `S` is no larger than the
complement.  Used for the *at least `k`* clauses. -/
theorem card_le_of_none {p : α → Prop} [DecidablePred p] {S : Finset α}
    (h : ∀ a ∈ S, ¬ p a) : S.card ≤ (univ.filter (fun a => ¬ p a)).card :=
  card_le_card fun a ha => mem_filter.mpr ⟨mem_univ a, h a ha⟩

/-- **The at-most direction.**  If exactly `k` elements satisfy `p`, no set of
more than `k` elements can satisfy it throughout — so some member of `S` fails
`p`, which is the clause. -/
theorem exists_not_of_card_lt {p : α → Prop} [DecidablePred p] {k : ℕ}
    (hk : (univ.filter p).card = k) {S : Finset α} (hS : k < S.card) :
    ∃ a ∈ S, ¬ p a := by
  by_contra hc
  push_neg at hc
  have := card_le_of_all (p := p) (S := S) hc
  omega

/-- **The at-least direction.**  If exactly `k` of the `n` elements satisfy `p`,
no set of more than `n - k` elements can fail it throughout.  `n` is taken as a
parameter so that call sites can supply `Fintype.card (Fin 7) = 7` directly
rather than carrying it through `simp`. -/
theorem exists_of_card_lt {p : α → Prop} [DecidablePred p] {k n : ℕ}
    (hk : (univ.filter p).card = k) (hn : Fintype.card α = n)
    {S : Finset α} (hS : n - k < S.card) : ∃ a ∈ S, p a := by
  by_contra hc
  push_neg at hc
  have hle := card_le_of_none (p := p) (S := S) hc
  have hsum := card_filter_add_card_filter_not (s := (univ : Finset α)) p
  rw [card_univ] at hsum
  omega

/-! ## The heptagon instances

`rowDeg V i` counts how many sides of `Q` side `i` of `P` misses; it is the
degree of that row of the disjointness graph.  `colDeg V j` is the same for a
side of `Q`.  Both are computable — `ProperCross` is decidable over `Int × Int`.
-/

variable (V : Fin 14 → Heptagon.Geometry.Pt)

/-- How many of the seven sides of `Q` side `i` of `P` misses. -/
def rowDeg (i : Fin 7) : ℕ := (univ.filter (fun j => Miss V i j)).card

/-- How many of the seven sides of `P` side `j` of `Q` misses. -/
def colDeg (j : Fin 7) : ℕ := (univ.filter (fun i => Miss V i j)).card

/-- More than `rowDeg V i` sides of `Q` cannot all be missed by side `i`. -/
theorem row_exists_cross {i : Fin 7} {S : Finset (Fin 7)} (hS : rowDeg V i < S.card) :
    ∃ j ∈ S, ¬ Miss V i j :=
  exists_not_of_card_lt (p := fun j => Miss V i j) rfl hS

/-- More than `7 - rowDeg V i` sides of `Q` cannot all be met by side `i`. -/
theorem row_exists_miss {i : Fin 7} {S : Finset (Fin 7)} (hS : 7 - rowDeg V i < S.card) :
    ∃ j ∈ S, Miss V i j :=
  exists_of_card_lt (p := fun j => Miss V i j) rfl (Fintype.card_fin 7) hS

/-- More than `colDeg V j` sides of `P` cannot all be missed by side `j`. -/
theorem col_exists_cross {j : Fin 7} {S : Finset (Fin 7)} (hS : colDeg V j < S.card) :
    ∃ i ∈ S, ¬ Miss V i j :=
  exists_not_of_card_lt (p := fun i => Miss V i j) rfl hS

/-- More than `7 - colDeg V j` sides of `P` cannot all be met by side `j`. -/
theorem col_exists_miss {j : Fin 7} {S : Finset (Fin 7)} (hS : 7 - colDeg V j < S.card) :
    ∃ i ∈ S, Miss V i j :=
  exists_of_card_lt (p := fun i => Miss V i j) rfl (Fintype.card_fin 7) hS

end Heptagon.Cover
