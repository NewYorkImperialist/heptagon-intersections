# What is left of (E7), and why it is one lemma

**Status:** analysis, 2026-09-15. Nothing here is proved; the point is to say
precisely what *would* have to be proved, and to show that it is much less than
"formalise the classification".

As of 2026-09-15 the computational half of (E7) is kernel-checked: the
enumeration over the 135 order-type representatives is exhaustive (rows 32, 36,
37), the 135-representative list is complete for its own construction modulo an
explicit induction hypothesis (row 34), and every field of the stored class data
is recomputed from the chirotope (row 32). All of that is about **predicates on
chirotopes**. Nothing connects those predicates to polygons in the plane.

This note traces the connection that is missing. The conclusion is that it is
**one lemma**, and the rest is definitional.

---

## 1. The chain, definition by definition

Write `V : Fin 7 → Pt` for the vertices of a heptagon over `Pt = Int × Int`, and

```
chiOf V a b c  :=  sign (orient (V a) (V b) (V c))
```

for its chirotope. `orient` is `GeometryDefs.orient`, twice the signed area.

**(i) Simplicity.** `OrderTypeClassification.simple (chiOf V)` unfolds, pair by
pair, to `¬ ProperCross (V i) (V (i+1)) (V j) (V (j+1))` for every non-adjacent
`i, j` — which is the fourth conjunct of `DisjointnessGraph.Simple7`. This is a
sign-bookkeeping identity, not geometry: for nonzero integers, `sign x ≠ sign y`
iff `x * y < 0`, and `ProperCross` is exactly two such products being negative.
**Proved 2026-09-15** — `SimpleBridge.simple_chiOf_iff`, as an iff, under the
general-position hypothesis alone; `simple_chiOf_of_Simple7` derives it from
`Simple7` directly, and `simple_chiOf_Pv`/`simple_chiOf_Qv` fire it on the
lower-bound certificate's two actual heptagons.

**(ii) Side masks.** `sideMask A` is `{s : bit s of A ≠ bit (s+1 mod 7) of A}`,
and side `s` joins vertex `s` to vertex `s+1`. So if `A` is the set of vertices
strictly on one side of a line `ℓ`, then `sideMask A` is exactly the set of
sides `ℓ` separates — i.e. the sides `ℓ` crosses. Definitional, given (iii).

**(iii) The crossing family.** `famRaw chi = (halfplaneSubsetsRaw chi).map
sideMask`. So a side-subset `t` satisfies `t ⊆ m` for some `m ∈ famRaw` exactly
when some `A ∈ halfplaneSubsetsRaw` separates every side in `t`.

**(iv) Exceptionality.** `exceptional chi` says every **4**-subset of sides is
contained in some member of the family. By (ii)+(iii), that is: every 4-subset
of sides is crossed by a single line. Which is "no uncrossable 4-set of sides",
in the **strict** reading (`reviewer-guide.md` §6.5). Definitional.

So steps (ii), (iii) and (iv) are bookkeeping, and step (i) is sign bookkeeping
and is now proved.
Exactly one step is genuine planar geometry:

---

## 2. The lemma

> **(HP)** For `V : Fin 7 → Pt` in general position,
> `halfplaneSubsetsRaw (chiOf V)` lists exactly the sets
> `{k : V k strictly on the positive side of ℓ}`
> as `ℓ` ranges over the lines of the plane that contain no `V k`.

`halfplaneSubsetsRaw` enumerates, for each ordered pair `(i, j)`, the set `L` of
points strictly left of the directed line through `V i` and `V j`, together with
`L ∪ {i}`, `L ∪ {j}` and `L ∪ {i, j}` — the four ways of perturbing that line
off the two points it passes through — plus `∅` and everything.

Both inclusions need work, and both are classical:

* **(⊇)** Every line avoiding the `V k` cuts off one of the enumerated sets.
  The usual argument translates and rotates `ℓ` until it meets two of the
  points without changing which points lie on which side. That is a
  continuity/extremal argument; in Lean it wants either real analysis or a
  discrete replacement.
* **(⊆)** Every enumerated set is cut off by some line avoiding the `V k`. This
  is the perturbation direction: displace the line through `V i, V j` by a
  small enough amount. Over `Pt = Int × Int` a *rational* displacement bound can
  be written down explicitly, so this direction looks the more tractable of the
  two, and possibly doable without leaving `ℚ`.

**(HP) is the whole geometric residue of the *classification statements*.**
Granting it, steps (i)–(iv) carry rows 32, 36 and 37 — simplicity,
exceptionality, the 6,342 and the 6,007/319/16 split — over from chirotopes to
integer heptagons in the plane. It is **not** the whole of what (E7) needs; §3
lists what it leaves untouched, and the difference matters.

---

## 3. What (HP) does *not* give

Three things stay open even with (HP) in hand, and they should not be conflated
with it:

1. **Class membership.** That a configuration in the 225-case endgame belongs to
   the class its certificate names (`class_P`, `class_Q` are opaque labels —
   `verification-status.md` row 13).
2. **"Avoiding".** `AvoidingFlag.lean` checks the stored `avoiding` flags
   against the class table, and `ClassDataFields` now derives that table from
   the chirotope — but the development still has **no geometric definition of
   "avoiding"** at all. (HP) says nothing about it.
3. **Realizability.** The 135 are a superset of the realizable order types, only
   necessary Grassmann–Plücker and Radon conditions being imposed. That is
   fine for an exclusion argument and is not a gap, but it does mean the 135 are
   not in bijection with anything geometric.

And (HP) is irrelevant to the two items that actually gate `f(7,7) = 38`:
**A7-EXT** (row 9a), which needs a human judgement about a published
definition, and **`hne40`** (row 28), which is a settled negative.

---

So the honest one-line summary is: *(HP) is the one lemma standing between the
kernel-checked classification and the same statements about polygons* — not
*(HP) closes (E7)*.

---

## 4. Why this is worth writing down

Before this note, "the geometric half of (E7) is open" was true but shapeless,
and easy to read as "the classification is unformalised". It is not: the
classification is formalised, over chirotopes, and the bridge to the plane is a
single named lemma with a known classical proof. Someone deciding whether to
spend a week here should be choosing to prove **(HP)**, not to reformalise a
search.
