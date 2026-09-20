# `pi8_human` — trying to prove `Pi_8` by hand

`Pi_8` is not realizable: zero of the 3,315 eight-point order types realize it
([`../order_type_pi8/`](../order_type_pi8/)). That is a machine result with no
human proof behind it, and the paper says so in as many words — *"a synthetic
argument, or a counterexample, may well be findable by a specialist. We could
not find either."* This directory is an attempt at the synthetic argument.

**It did not succeed.** Roughly half the mechanism is proved unconditionally and
the remainder is isolated to one precisely-stated case split. Nothing in the
repository depends on anything here.

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

## What is open

Finishing needs `x1 != x2 AND w2 != w3` ruled out. Over the 5,782 qualifying
labellings that condition is closed **330** times by `x1 = x2` alone, **4,842**
times by `w2 = w3` alone, **610** times by both, and **0** times by neither —
so the theorem holds, but two different mechanisms are doing the work and
neither covers the whole range. An exhaustive search over all 56 orientation
triples and all 1,540 XOR-pairs of triples found nothing that decides it, so
the missing ingredient is not a single sign that was overlooked.

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

Not a proof of `Pi_8`, and not independent evidence for it either — the control
lines simply re-run `order_type_pi8/`'s check. It is a partial human argument
plus the exact statement of what is missing, for whoever attacks this next.
