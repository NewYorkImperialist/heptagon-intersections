# `akr_9_assembly` — evidence for `docs/akr-9-assembly.md`

Three scripts. All arithmetic is exact `fractions.Fraction`; nothing is
floating point. Each carries a control that must fire, because a checker that
always says "yes" proves nothing.

| script | what it checks | result | log |
|---|---|---|---|
| `injection.py` | the **explicit injection** `Φ : ∂P⁰ ∩ ∂Q⁰ → ∂P(α) ∩ ∂Q(α)` of `akr-9-assembly.md` §2.3 — that it is total, that its images land in the target, and that it is **injective as exact rational points** | **285/285** in the arm satisfying AKR's criterion (R2), across two seeds | `injection.log` |
| `nc_stuck.py` | whether the (NC) precondition of §9.2's shift operator can block **every** side that would remove some remaining degeneracy — not just the first one tried | ~1 % of degenerate random pairs are **fully stuck** | `nc_stuck.log` |
| `certificate.py` | an independent, self-contained re-derivation of one stuck configuration from integer coordinates, plus the invariance argument that makes the blockage permanent | certified | `certificate.log` |

## Why `injection.py` exists when `eps_uniform/run_arms.py` already ran

`run_arms.py` checks that the intersection-point **count** does not drop.
That is the *conclusion* of the count inequality, not its *proof*. The proof is
an injection defined by cases, and points can be lost in one class while being
gained in another. They are: in the `E ∥ edge` control arm the count failed to
drop in 129 of 285 instances while `Φ` failed in **all 285**. So a
count-preservation experiment over-reports by roughly a factor of two here and
cannot certify the argument.

## What the controls showed

* `E ∥ an incident edge` (the `eps_uniform` Finding 2 family): `Φ` succeeds
  **0/285**, i.e. it fails every time — the checker can say no.
* Bare directions (arm A): `Φ` fails in 111 of 285, reproducing the
  arm-A/arm-B contrast of `eps_uniform` Finding 4 at the level of the injection.
* **Every** failure in both control arms is in class (c), the vertex-vertex
  class — never class (a) or (b). That is exactly what the theorem predicts:
  (R2) is needed only for class (c).
* `certificate.py` on a generic pair reports six usable sides, so the
  stuck-detector is not a detector that always says "blocked".

## What this does not establish

`f(7,7) = 38` is **not proved** and nothing here proves it. §9's *conclusion*
is not refuted by any of this; what `nc_stuck.py` and `certificate.py` refute is
§9's *printed procedure*, on an explicit input. Repairs are discussed in
`docs/akr-9-assembly.md` §2.5 and are not proved.

## `CI_HARDENED.md` — hardening pass on Theorem CI, 2026-09-21

Independent re-derivation of Lemma CL and Theorem CI, an exhaustive decision of
the double-counting hazard, and a hypothesis audit. Headline: the **injection**
survives (1 668/1 668, choice-free, with four firing controls), but the
**`ncard` inequality** `|∂P(α) ∩ ∂Q(α)| ≥ |X|` is **false under the hypotheses
§2.3 lists** — it silently needs **(Fin-out)**, A9-RED hypothesis 13.
Certificate: `ci_finout_cert.py`. Also: (R2) as stated is unsatisfiable at a
coincidence the motion does not separate, and a fourth rule is needed.
See `CI_HARDENED.md` §0 for the verdict table and §7 for the file list.
