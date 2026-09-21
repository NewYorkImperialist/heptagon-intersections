# `pi8_human` — trying to prove `Pi_8` by hand

`Pi_8` is not realizable: zero of the 3,315 eight-point order types realize it
([`../order_type_pi8/`](../order_type_pi8/)). That is a machine result with no
human proof behind it, and the paper says so in as many words — *"a synthetic
argument, or a counterexample, may well be findable by a specialist. We could
not find either."* This directory is an attempt at the synthetic argument.

**It succeeded.** Π₈ now has a complete human proof: four steps, using each of
the eight prescribed cells and never touching the free cell `(2,2)`. Every
inference is verified as a universally quantified statement across all 3,315
order types and all 8! labellings, with zero violations.

This does **not** change `f(7,7) = 38`'s status — Π₈ was already a
kernel-checked theorem by the SAT route, and a second human route to the same
statement removes no hypothesis. What it supplies is the synthetic argument the
paper asks for and reports it could not find.

The mathematics is in [`NOTES.md`](NOTES.md); this file is orientation only.

## What is proved

**A reformulation of `Pi_8`, stronger and symmetric** (session 1, exhaustive):

> If all six off-diagonal cells cross and the centre cell `(1,1)` misses, then
> both corner cells `(0,0)` and `(2,2)` must also miss.

Symmetric under transpose and under index reversal, and strictly stronger than
`Pi_8` itself. Found by enumerating the diagonal patterns over the database:
`. . .` leaves 427 order types, while `X . .`, `. . X` and `X . X` all leave 0.

**A general Core Lemma** (session 2, proved by an affine-coordinate argument,
no case split, and *not* specific to this problem):

> If `[B,A]` and `[B,C]` share the endpoint `B` and both cross a segment
> `[D,E]`, then `or(A,B,D) = -or(B,C,D)`, and likewise for `E`.

The proof sends `B, A, C` to `(0,0), (1,0), (0,1)`; the claim becomes "`D` and
`E` both lie in the open second or fourth quadrant", which follows because the
line `DE` meets both unit segments and so its endpoints straddle the parameter
interval.

**Consequences.** Applying the Core Lemma twice gives `u0 = u2`, hence
`u1 != u2` *unconditionally* — which collapses the case split that stopped the
first attempt. The centre miss stops being a disjunction and becomes the single
forced equality `w1 = w2`. Two further quantities, `x0` and `x1`, are pinned the
same way.

## The proof

Write `v_k = or(q0,q1,p_k)` and `w_k = or(q1,q2,p_k)`. Suppose Π₈ is realized.

1. `(0,0)` and `(0,1)` cross, so `Q₀` and `Q₁` — which **share the endpoint
   `q1`** — both cross `P₀`. Core Lemma at `q1`: `v₁ = −w₁`.
2. `(2,0)` and `(2,1)` cross, so `Q₀` and `Q₁` both cross `P₂`. Core Lemma at
   **the same vertex** `q1`: `v₂ = −w₂`.
3. `(1,0)` crosses, so `p1` and `p2` lie strictly on opposite sides of the line
   `q0q1`: `v₁ ≠ v₂`. With 1 and 2, this gives **`w₁ ≠ w₂`**.
4. The five cells `(0,0),(0,1),(0,2),(1,0),(1,2)` force `u₁ ≠ u₂`. Since `P₁`
   crosses `Q₁` iff `u₁≠u₂` **and** `w₁≠w₂`, the prescribed miss at `(1,1)`
   forces **`w₁ = w₂`**.

Steps 3 and 4 contradict. ∎

The earlier attempt stalled because it worked from the `p`-side, trying to pin
`x₂ = or(p2,p3,q2)`, and hit a real 330/4842 split between two mechanisms.
Assuming `(2,1)` *crosses* and arguing from the `q`-side costs one extra Core
Lemma application and no case analysis. The exhaustive searches over all 56
orientation triples and all 1,540 XOR-pairs could not have found this: they were
looking for a sign to decide a disjunction the proof never forms.

Full derivation and the verification table are in [`NOTES.md`](NOTES.md),
session 3; the checker is `proofcheck.c`.

## Running it

Each `.c` file builds standalone and reads the TU Graz database at
`../order_type_audit/external/otypes08.b08`:

```
cc -O2 -o probe2 probe2.c && ./probe2
```

`pat.c` is the general pattern searcher (`./pat XXXX.XXX?`, `./pat --diag`).
`probe2`–`probe9` and `lemma_probe*` check the individual steps in `NOTES.md`;
the counts they print are quoted there. `sigtypes.c` is a documented dead end,
kept deliberately.

## What this is not

Not independent evidence *that* Π₈ holds — the control lines simply re-run
`order_type_pi8/`'s check, and the theorem was already machine-established. It
is a human proof of an already-known theorem, which is valuable precisely
because the machine proof is not human-checkable.

It says nothing about Π₁₄, and nothing about AKR §9, which remains the one open
import behind `f(7,7) = 38`.
