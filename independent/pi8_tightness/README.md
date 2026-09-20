# `pi8_tightness` — which of `Pi_8`'s eight conditions does the work?

`Pi_8` is not realizable (see [`../order_type_pi8/`](../order_type_pi8/)): zero
of the 3,315 eight-point order types realize it. That is a yes/no answer, and it
says nothing about *why*. This directory asks a quantitative follow-up: **drop
one condition at a time and count how many order types realize the remaining
seven.** A small count means the other seven nearly suffice on their own, and
the dropped condition is the last obstacle; a large count means that condition
is doing little.

Run with `python3 tightness.py`; output is reproduced in `tightness.log`. It
reads the same TU Graz database as `order_type_pi8/` and takes about a minute.

## Result

```
CONTROL  full Pi_8 realized by 0 / 3315 order types   (PASS)

  drop P0xQ0 cross  ->    427    <- tightest
  drop P0xQ2 cross  ->   1306
  drop P2xQ0 cross  ->   1306
  drop P1xQ1 MISS   ->   1571
  drop P1xQ2 cross  ->   1651
  drop P2xQ1 cross  ->   1651
  drop P0xQ1 cross  ->   2461
  drop P1xQ0 cross  ->   2461    <- loosest
```

**The profile is exactly symmetric under transpose** — `(i,j)` and `(j,i)` give
identical counts in all four off-diagonal pairs. That is not assumed anywhere in
the script; it falls out of the enumeration, and it is an independent
reproduction of the reason `Pi_8` has **196** images rather than 392: the
pattern is invariant under exchanging the roles of `P` and `Q`.

**The corner crossing `P0 x Q0` is the load-bearing condition.** Relaxing it
leaves only 427 realizable order types, against 2,461 for the loosest. The
centre non-crossing — the condition that makes `Pi_8` interesting to state — is
middling at 1,571. So the obstruction is not concentrated in the miss; it is
concentrated in the corner diagonally opposite the unconstrained `*` cell.

The 427 is corroborated from the opposite direction by a separate search over
the same database: fixing all six off-diagonal cells to cross and the centre to
miss leaves 427 order types, and in every one of them both corners `(0,0)` and
`(2,2)` also miss. That search is still in progress and is not committed here.

## What this is not

This is an experiment on the project's own claim, using the same external
database as `order_type_pi8/`. It is **not** independent evidence that `Pi_8` is
unrealizable — the `CONTROL` line above simply re-runs that check. Nothing in
the proof depends on this directory. Its value is as a pointer for anyone
attacking `Pi_8` by hand: start at the `P0 x Q0` corner.
