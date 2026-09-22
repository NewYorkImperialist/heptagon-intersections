# No 8-vertex restriction of Π₁₄ can carry the contradiction

*2026-09-21.*

`SYNTHETIC.md` reduces Π₁₄ to a single inequality: Π₁₄ is unrealizable **iff**
`V₁` and `V₂` cannot lie on the same side of the line `V₃V₄`. That inequality
mentions four vertices, which raises an obvious and cheap question — **is the
residue an 8-point statement?** If it were, the TU Graz order-type database
would settle Π₁₄ outright, exactly as it settled Π₈.

It is not, and the reason is structural rather than a matter of search effort.

## The measurement

The richest 8-subset of Π₁₄'s eleven vertices induces only **10 of its 21
conditions**; every 8-subset therefore omits at least **11**. There are three
subsets attaining 10, and all three are realizable — checked exhaustively over
all 3,315 order types and all 8! labellings (`residue_8point.c`, and the
generated checker in this directory's log):

| 8-subset | induced conditions | realizing labellings |
|---|---|---|
| `{0,1,2,3,4,7,8,9}` | 10 | **6,841** |
| `{0,1,2,3,4,8,9,10}` | 10 | **4,708** |
| `{1,2,3,4,7,8,9,10}` | 10 | **424** |

The third is the interesting one: it contains `h1_3`, the very condition the
residue is about. Of its 1,058 labellings satisfying the other nine conditions,
**358 have `V₁` and `V₂` on the same side of `V₃V₄`** — the surviving disjunct
is comfortably realizable on eight points.

## Why no 8-subset can ever work

> **Claim.** No 8-vertex restriction of Π₁₄ is unrealizable.
>
> *Proof.* Every 8-subset omits at least 11 of the 21 conditions. At most three
> conditions are not confirmed droppable (`SYNTHETIC.md` §6.2 realizes **18 of
> the 21** one-condition relaxations by solver-free exact search), so every
> 8-subset omits at least eight *confirmed* droppable conditions. Pick one, say
> `c`. The induced set is contained in `Π₁₄ ∖ {c}`, which has a realization on
> eleven points; restrict that realization to the eight chosen vertices. ∎

So the order-type route is closed for Π₁₄ in a stronger sense than the usual
one. The usual statement is that eleven points is out of reach — 2,334,512,907
order types, and no database. This is sharper: **even a complete 11-point
database would not help via restriction**, and no 8-point certificate exists to
be found, because Π₁₄'s own minimality forbids one.

It also makes the Π₈/Π₁₄ asymmetry precise. Π₈ *is* an 8-point statement, so
enumeration settles it and a human proof was findable. Π₁₄ is irreducibly
11-point, and minimality is the obstruction.

## What this does and does not say

It does **not** say Π₁₄ is realizable — no branch has ever returned `sat`, and
the solver-free sampler found none. It says only that this particular route to
refuting it is provably unavailable, so effort should go to the synthetic
argument or to the 16 remaining distinct systems.

`f(7,7) = 38` is unchanged.
