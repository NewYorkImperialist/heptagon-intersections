# An independent, non-SAT check of $\Pi_8$

`check_pi8.py` verifies, **exhaustively and without any SAT solver or proof
assistant**, that the forbidden pattern $\Pi_8$ of the paper is not realizable.
It runs in seconds and needs only Python and the order-type database.

    python3 check_pi8.py

## Why this is exhaustive

$\Pi_8$ constrains three consecutive sides of each polygon, so it involves
exactly **8 points**: ,\dots,P_3$ and ,\dots,Q_3$. Whether two segments
cross is determined entirely by the signs of orientation determinants, i.e. by
the *order type* of those 8 points. The TU Graz database enumerates **all 3315**
order types of 8 points in general position, so checking every labelling of
every representative decides the question.

Two conventions could have caused a gap, and neither does:

* **Reflection.** The database identifies mirror images. That loses nothing
  here: reflecting negates every orientation, but each crossing test is a
  *product* of two orientations, so a global sign flip cancels and the crossing
  relation is unchanged.
* **Relabelling.** The database stores one representative per order type, so the
  script enumerates labellings itself (a depth-first search that prunes on each
  prescribed incidence as soon as it is determined).

## Result

```
Pi_8: order types admitting a realization: 0 / 3315
```

## Two controls, because "found nothing" is worthless on its own

1. **Positive control.** The crossing pattern taken from the lower-bound
   certificate's own first three sides of each polygon *is* found in the
   database. So the search can find realizable patterns.
2. **Minimality control**, which is much sharper. Dropping any single one of
   $\Pi_8$'s eight conditions yields a realizable pattern --- all eight
   relaxations are found. This simultaneously shows the search is not failing
   vacuously and **independently confirms that $\Pi_8$ is minimal**, a property
   the project had previously only established by randomised minimisation of
   unsatisfiable cores.

## Relation to the main proof

This is *corroboration, not the proof*. The paper's Theorem 3.2 is established
by a refutation transcribed into Lean and checked by its kernel. The check here
is independent of that route in every component: different source of truth
(an externally produced, externally published database rather than an encoding
of our own), different algorithm (enumeration rather than refutation), different
language, no solver, no proof assistant.

It does **not** cover $\Pi_{14}$, which involves 9 points --- the =9$ database
has 158,817 order types and the same method would apply, but we have not run it.

## Provenance of the database

`../order_type_audit/external/otypes08.b08`, obtained from
<http://www.ist.tugraz.at/aichholzer/research/rp/triangulations/ordertypes/data/otypes08.b08>
on 2026-09-17.

* size 53040 bytes = 3315 order types x 8 points x 2 coordinates
* SHA-256 `d4a5756295a584a57962fca946b4021cbe5c257481b0bc731ef081d1ca2ea0bd`

The parser is validated in the same run against `otypes07.b08`, which this
project already cross-checks elsewhere: it must yield 135 order types, and every
representative in both files must be in general position.

O. Aichholzer, F. Aurenhammer, H. Krasser, *Enumerating order types for small
point sets with applications*, Order 19 (2002) 265-281.
