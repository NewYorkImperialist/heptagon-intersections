# `eps_uniform` — the "One final point" uniform-epsilon step of AKR §9.1

The full write-up is **[`FINDINGS.md`](FINDINGS.md)**. This file is orientation
only.

## What this attacks

`f(7,7) = 38` rests on one unproved input, §9 of Ackerman–Keszegh–Rote (2022).
`../../docs/akr-9-1-obligation.md` §5.2 names two steps AKR assert rather than
prove. One was closed in `../e9_directions/` (existence of the directions `E_i`).
This directory attacks the other — the paragraph beginning **"One final point:"**
on PDF p. 24 / journal p. 1072, which §5.2 calls the hardest step in the section
and which `e9_directions` names as the remaining blocker.

**Nothing here proves `f(7,7) = 38`.** It remains a candidate resting on this
import, unreviewed by any mathematician.

## The headline

AKR's local claim is **true**, and its mechanism is not the sine law they cite:
it is that a numerator of `ε`-valuation ≥ 1 over a denominator with nonzero
constant term is insensitive at first order to an `O(ε)` perturbation of the
denominator. The leading coefficient of the marked distance does not contain the
other endpoints' velocities at all.

The uniform `ε₀` the audit asks for then comes almost free, because AKR's
Theorem 17 makes every vertex **affine in `ε`**, so every predicate in the whole
argument is the sign of a **degree-≤2 polynomial in `ε`**. An explicit
root-free radius gives one `ε₀` valid for all 1638 of them at once, and hence
for every degeneracy and non-degeneracy of the 14-vertex configuration
simultaneously. On the evidence here **the audit ranked the wrong half as
hard**: the uniformity is three lines; the content is in the first-order sign
conditions.

Two things came out that were not expected:

* AKR's conclusion "there will be no degenerate situations" is **literally
  false** for directions their own criterion admits (Finding 2, with an exact
  certificate). The repair is `e9_directions`' extra clause, which is not in the
  paper.
* One of my own controls was **wrong** and silently reported a clean pass. It is
  documented in Finding 4 rather than deleted.

## Scripts

All arithmetic is exact `fractions.Fraction`. Nothing is floating point.
`sympy` is not installed on this machine, so `epslib.py` implements the needed
polynomial and power-series arithmetic over ℚ directly.

| script | what it does | log |
|---|---|---|
| `epslib.py` | exact `Poly`/`Vec` arithmetic in `ε`, series division, root-free radius | — |
| `fig27.py` | AKR's Fig. 27 marked distance; 3813 trials | `fig27.log` |
| `adversarial.py` | attempts to force `k = 0`; non-vacuity of `k > 0`; `ε₀` vs coordinate size | `adversarial.log` |
| `attackA_detail.py` | exact certificate for the Finding-2 counterexample | `attackA_detail.log` |
| `uniform.py` | the witness family `W`, `ε₀`, exact segment intersection, simplicity, configuration generator | — |
| `run_uniform.py` | first pass on 14-vertex configurations, plus controls K1–K4 (**K4 is the wrong control**) | `run_uniform.log` |
| `run_arms.py` | the controlled two-arm experiment, 60 configurations | `run_arms.log` |
| `apriori.py` | `ε₀ ≥ 1/(1+8(N+M)²)`, with non-vacuity | `apriori.log` |
| `control2.py` | corrected (R3) control: removable degeneracies, all 225 directions enumerated | `control2.log` |
| (replication) | Findings 1 and 4 re-run at unrelated seeds | `reseed.log` |

`orient` and `ProperCross` are transcribed from `../../lean/GeometryDefs.lean`
lines 59 and 73. No Lean build was run.
