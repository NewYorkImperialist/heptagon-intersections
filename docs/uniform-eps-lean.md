# `UniformEps.lean` — the uniform-ε machinery, formalised

**Status: in progress.**  Live progress log; updated as the work happens, not
after it.

This does **not** prove `f(7,7) = 38`.  That remains a candidate resting on the
AKR §9 import, unreviewed by any mathematician.

## What is being formalised

The paper proof is `independent/eps_uniform/FINDINGS.md` §3 (Lemma U,
Theorem U, Corollary U′) and §5/Finding 4 (the bootstrapping principle).

* **Lemma U.**  For `p = Σ_{j=m}^{d} c_j ε^j` with `c_m ≠ 0` and
  `ρ(p) = min(1, |c_m| / (1 + Σ_{j>m} |c_j|))`: every `ε ∈ (0, ρ(p))` has
  `p(ε) ≠ 0` and `sgn p(ε) = sgn c_m`.
* **Theorem U.**  For a finite family `W` of such polynomials,
  `ε₀ = min_{p ∈ W} ρ(p) > 0` and the full sign vector of `W` is constant on
  `(0, ε₀)`.
* **Corollary U′.**  Integer coefficients with tail-sum bound `K` give
  `ρ ≥ 1/(1+K)`; for the 14-point configuration data with `‖V⁰‖_∞ ≤ N`,
  `‖E‖_∞ ≤ M` this is `ε₀ ≥ 1/(1 + 8(N+M)²)`.
* **Bridge.**  Under `V_i(ε) = V⁰_i + ε E_i`, each of the 364 determinants
  `orientR (V_i ε) (V_j ε) (V_k ε)` is a degree-≤2 polynomial in `ε` with
  explicit coefficients, so Theorem U applies and `ProperCrossR` is constant on
  `(0, ε₀)`.

## Representation decision

**Concrete, not `Polynomial`.**  A witness is a coefficient function
`ℕ → ℝ` together with a degree bound and the valuation `m`, and evaluation is
`∑ j ∈ Finset.range (deg+1), coeff j * ε^j`.  Reasons:

1. The whole analytic content is one `Finset.sum` estimate.  Mathlib's
   `Polynomial` would force `natDegree` / `coeff` / `rootMultiplicity`
   bookkeeping and `Polynomial.eval` rewriting for no gain.
2. The consumer side is `orientR`, which is literally a polynomial *expression*
   in `ε`; matching it to a concrete coefficient triple is one `ring`, whereas
   matching it to a `Polynomial ℝ` term would need `C`/`X` plumbing.
3. Mathlib has nothing to reuse here anyway (checked at the pinned commit
   `0df444a`): `Analysis/Polynomial/Basic.lean` is entirely `atTop`/`atBot`
   asymptotics, `Analysis/Polynomial/CauchyBound.lean` bounds roots from
   *above*, and there is no lemma about the sign of a polynomial on a right
   neighbourhood of `0`.  Grepping `Mathlib/Analysis` for an "eventually the
   sign of the leading/lowest coefficient" statement returns only
   `Calculus/DerivativeTest.lean`, which is unrelated.

## Log

- Read `independent/eps_uniform/FINDINGS.md`, `lean/RealConfig.lean`,
  `lean/RealPerturb.lean`, `lean/RealUpperBound.lean`, `lean/SimplicityStable.lean`,
  `lean/SimplicityBridge.lean`.  Confirmed the Mathlib gap independently.
- Chose the concrete representation (above).
- Writing `lean/UniformEps.lean` as a **leaf**: added to `lakefile.toml` as a
  `[[lean_lib]]` only, not to `defaultTargets`; no existing module edited.

## Status after the first build (all green)

`lean/UniformEps.lean` compiles under `lake build UniformEps`, with **no
errors and no warnings**.  It is a leaf: added to `lean/lakefile.toml` as a
`[[lean_lib]]` only, never to `defaultTargets`; no existing module was edited.

### What is in it

| name | statement |
|---|---|
| `Wit` | a coefficient function `ℕ → ℝ` + degree bound `deg` + valuation `ord`, with `coeff ord ≠ 0` and `coeff j = 0` for `j < ord` |
| `Wit.eval` | `Σ_{j ∈ range (deg+1)} coeff j · εʲ` |
| `Wit.rho` | `min(1, \|c_m\| / (1 + Σ_{j>m} \|c_j\|))` |
| `Wit.eval_eq` | the factorisation `p(ε) = ε^m · (c_m + tailVal ε)` |
| `Wit.abs_tailVal_le/_lt` | `\|tail\| ≤ ε·Σ\|c_j\|` and, for `ε < ρ`, `\|tail\| < \|c_m\|` |
| **`Wit.lemmaU_sign`** | **Lemma U**: `0 < ε < ρ(p) → 0 < c_m · p(ε)` |
| `Wit.lemmaU_ne_zero` | `ρ` is a root-free radius |
| `Wit.lemmaU_pos/_neg` | the sign statement in the two unpacked forms |
| `Wit.sameSign_eval` | `SameSignR (p ε₁) (p ε₂)` for `ε₁,ε₂ ∈ (0,ρ)` |
| `Wit.rho_ge_of_int` | **Corollary U′**, one polynomial: integer `c_m` + tail `≤ K` ⟹ `ρ ≥ 1/(1+K)` |
| `eps0` | `W.inf' hW (fun i => (p i).rho)` |
| `eps0_pos`, `eps0_le` | `ε₀ > 0`; `ε₀ ≤ ρ(p_i)` |
| `theoremU_ne_zero`, `theoremU_sign` | **Theorem U** parts 1 and 2 |
| **`theoremU_sameSign`** | **Theorem U**: the sign vector is constant on `(0, ε₀)` |
| **`bootstrap`** | the bootstrapping principle, for any `Φ` invariant under `SameSignR` |
| `le_eps0` | a uniform lower bound on every `ρ` is a lower bound on `ε₀` |
| `exists_wit` | not-identically-zero coefficients carry a witness (`Nat.find` on the valuation) |
| `eval_eq_zero_of_coeff_eq_zero` | the trivial converse half of Theorem U part 1 |
| `move` | the affine motion `Vᵢ(ε) = V⁰ᵢ + ε·Eᵢ`; `move_zero` |
| `orientCoeff` | the three coefficients `cross(u⁰,w⁰)`, `cross(u,w⁰)+cross(u⁰,w)`, `cross(u,w)` |
| **`orientR_move`** | `orientR` of the moving configuration `= Σ_{n<3} orientCoeff n · εⁿ` |
| `orientWit`, `orientWit_eval` | the witness attached to a determinant, and that it evaluates to that determinant |
| `orient_sameSign` | a determinant keeps a constant sign on `(0,ρ)` |
| `properCrossR_congr` | `ProperCrossR` depends only on the signs of its four determinants |
| **`properCrossR_move_iff`** | the crossing pattern of a side pair is constant on `(0,ε₀)` |
| `abs_orientCoeff_le` | `\|c₀\| ≤ 8N²`, `\|c₁\| ≤ 16MN`, `\|c₂\| ≤ 8M²` |
| `orientWit_tailAbs_le` | the tail-sum is `≤ 8(N+M)²` whatever the valuation |
| `ofIntPts`, `orientCoeff_int` | integer input data gives integer coefficients |
| **`rho_orient_ge`** | **Corollary U′**: `ρ ≥ 1/(1 + 8(N+M)²)` for integer data |

### `#print axioms`

All 24 checked results report exactly

    [propext, Classical.choice, Quot.sound]

No `sorryAx`, no project axiom.  (The first build run *did* report `sorryAx` on
seven results while other results in the file still had errors — the file-level
`#print axioms` block caught it exactly as the project's convention intends.)

### What is deliberately *not* here

* **AKR Theorem 17 is not proved.**  Affine motion is a hypothesis (`move`),
  not a theorem.  Theorem U is about *any* affinely moving configuration.
* `properCrossR_move_iff` takes the four witnesses and a common bound `t` as
  hypotheses.  Producing the witnesses for a concrete configuration means
  exhibiting the valuation of each determinant; `exists_wit` does that from
  "some coefficient is nonzero", but deciding *which* determinants are
  identically zero is configuration-specific and is the content of (R3) in
  `FINDINGS.md`, not of this file.
* The `Δ` and `B` families of `FINDINGS.md` §3 are degree-≤1 and degree-≤2
  polynomials in exactly the same way; `Wit` covers them, but only the `D`
  (determinant) family has a dedicated coefficient function here, because
  `orientR`/`ProperCrossR` is what the rest of the development consumes.
