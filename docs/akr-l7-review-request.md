# One question about Ackerman–Keszegh–Rote, for a discrete geometer

**What this asks for:** a judgement about what a published definition licenses.
Roughly an afternoon. It needs no code, no computation, and nothing else from
this repository.

**Why you:** this is the single unresolved *mathematical* question in a
computer-assisted proof of `f(7,7) = 38`. Everything else in the project has been
checked by machine or by independent reimplementation. Those mechanisms catch
implementation error; none of them can tell us whether we have read the paper
correctly. That is the question.

**Please feel free to answer "no".** If the reading below is wrong, the project's
upper-bound argument is in serious trouble, and we would much rather learn that
from you than not learn it. This note is written to be refutable.

---

## 1. The question

Ackerman, Keszegh and Rote define an **associated** pair, then assign it a status
— *hooking* or *hooked* — and Lemma 7 is a statement about those statuses.

The definition of *associated* requires **two edges** of the disjointness graph
and nothing more. The hooking/hooked dichotomy is then asserted "by Lemma 5".
But Lemma 5 establishes that dichotomy only for the pair **Lemma 5 itself
produces** — not for every pair meeting the two-edge definition.

> **The question.** When AKR say a pair "is hooking" or "is hooked", is that
> status attached only to associations that *carry Lemma 5's cone dichotomy*
> (the **narrow** reading), or to any pair satisfying the two-edge definition of
> *associated* (the **broad** reading)?

Our argument needs the **narrow** reading. We would like to know whether that is
what the authors mean.

A secondary signal, which may or may not settle it: elsewhere AKR write the
status *relative to an association* — "Each `q_{i_j},q_{i_j±1}` is hooking **with
respect to** an associated pair `p_{k_j},p_{k_j±1}`" ([AKR-J] PDF p. 15, journal
p. 1063). That phrasing reads to us as an existential over associations, which
would support the narrow reading. We are not confident that is decisive.

---

## 2. The source text, verbatim

The journal [AKR-J] and conference [AKR-C] versions are **verbatim identical** on
every passage below.

> **These quotations were checked against the PDF itself on 2026-09-14**, not
> copied from earlier project notes. Every passage in this section was located in
> `references/akr-dcg-2022.pdf` (SHA-256 `f0ae336e…`, which also matches the value
> recorded in [`external-lemma-audit.md`](external-lemma-audit.md) §0) and
> compared character-by-character after normalising ligatures and mathematical
> symbols. No transcription error was found. If you spot one anyway, that is
> itself worth telling us.

### Associated pair — [AKR-J] §4, PDF p. 6 (journal p. 1054); [AKR-C] p. 24:5

> Let `p_i, p_{i+1}` be two sides of *P* such that `CC(p_i) ≠ CC(p_{i+1})`. Then
> by Lemma 5 there are sides `q_j, q_{j±1}` of *Q* such that
> `(p_i,q_j), (p_{i+1},q_{j±1}) ∈ E^D`. We say that such a pair `q_j, q_{j±1}` is
> **associated** to `p_i, p_{i+1}`.

The definition names **exactly two edges**. It does not require the two cross
non-edges `(p_i,q_{j±1}), (p_{i+1},q_j) ∉ E^D`, and it does not mention the cone
dichotomy — although Lemma 5, the result invoked to produce such a pair, delivers
both.

### Hooking / hooked — [AKR-J] §4, PDF p. 6; [AKR-C] p. 24:5

> By Lemma 5 we have `I(q_j,q_{j±1}) ∈ Cone(p_i,p_{i+1})` or
> `I(p_i,p_{i+1}) ∈ Cone(q_j,q_{j±1})`. If the first condition holds we say that
> `p_i,p_{i+1}` is **hooking** and `q_j,q_{j±1}` is **hooked**. In the second case
> we say that `p_i,p_{i+1}` is **hooked** and `q_j,q_{j±1}` is **hooking**.
>
> Note that it is possible that a pair of consecutive sides is associated with
> several pairs and that it is both hooking and hooked (with respect to two
> different pairs from the other polygon or even with respect to a single pair,
> as in Fig. 5c).

This is the crux. The dichotomy is asserted "by Lemma 5" for an *associated*
pair, but Lemma 5 proves it only for the pair it constructs.

The parenthetical is quoted in full deliberately, because it cuts against us if
anything: the authors explicitly contemplate a pair being both hooking and
hooked, including "with respect to a single pair". A reader might take that as
evidence the status is meant to attach broadly. We do not think it settles the
question either way — being both *with respect to different associations* is
exactly what the narrow reading predicts — but it is the strongest textual
signal we found pointing away from our reading, and you should weigh it.

### Lemma 7 — [AKR-J] PDF p. 7 (journal p. 1055); [AKR-C] p. 24:6

> Let `p_i,p_{i+1}, p_j,p_{j+1}` be two pairs of consecutive sides of *P* that
> belong to **four different connected components** of `G^D`. Then it is
> impossible that both `p_i,p_{i+1}` and `p_j,p_{j+1}` are hooked or that both
> pairs are hooking.

*Notation, for self-containment:* `G^D` is the bipartite **disjointness** graph on
the sides, with `(p_i,q_j) ∈ E^D` iff the closed segments are **disjoint**
([AKR-J] §3, PDF p. 4); `CC(·)` is a side's connected component; for non-parallel
segments `s,s'`, `I(s,s')` is the intersection of their supporting lines and
`Cone(s,s')` the convex cone at `I(s,s')` spanned by the rays containing them.

---

## 3. What turns on the answer

**If the narrow reading is right**, the consequence we use follows: two pairs
adjacent in our auxiliary graph have disjoint status sets, which makes that graph
bipartite, which is what our exclusion of 40 intersections needs. The
upper-bound argument stands.

**If the broad reading is right**, we have a counterexample that becomes
load-bearing *against* us — a configuration satisfying the two-edge definition
and the cross non-edges while carrying neither cone containment. Under the broad
reading such a pair would still have a status, and our deduction fails. The
`I = 40` exclusion would need a different argument, and we would not currently
have one.

So this is not a matter of presentation. It decides whether the proof works.

---

## 4. A ten-minute calibration check, if you want one

You do not have to take our word about the state of the source text. We found
that **Observation 6 (the "Axis Property") is false as printed**, and the check
is four determinants on eight integer points.

Observation 6 claims: if `p_i,p_{i+1}` and `q_j,q_{j±1}` are associated with
`(p_i,q_j),(p_{i+1},q_{j±1}) ∈ E^D`, then the line through `I(p_i,p_{i+1})` and
`I(q_j,q_{j±1})` separates `p_i` and `q_{j±1}` from `p_{i+1}` and `q_j`.

Counterexample, in genuine simple polygons in general position:

```
P (triangle) = (2,0), (3,4), (−2,0)
Q (pentagon) = (4,−4), (−3,1), (0,−1), (3,3), (2,1)
```

Full working, including that general position genuinely holds for all eight
points, is in [`a7-independent-resolution.md`](a7-independent-resolution.md) §3
and [`known-issues.md`](known-issues.md) K-14. We believe this defect does **not**
reach the argument above — a pair failing the dichotomy contributes no status —
but it does mean the published text contains at least one error, which is part of
why we are asking rather than assuming.

---

## 5. What not to spend time on

- **The computation.** We have oriented-matroid unsatisfiability results with
  proof-checked certificates, a second independent implementation, and Lean
  formalisation of much of the surrounding argument. None of it bears on this
  question, which is about reading a paper.
- **The rest of the repository.** If you want context,
  [`reviewer-guide.md`](reviewer-guide.md) §§1–2 is a three-page orientation, and
  [`a7-specification.md`](a7-specification.md) §§4–6 states the narrow reading
  formally. Neither is required to answer.
- **Being diplomatic about it.** A flat "the broad reading is what we meant"
  would be the most valuable sentence anyone has contributed to this project.

---

## Provenance

This note supersedes [`akr-l7-human-review.md`](akr-l7-human-review.md), which
was written for the same purpose but accumulated retractions as its own content
was found wrong — roughly a third of that document is now correction, and its
central section rests on a definition we later showed to be unsound. It is kept
for the record, not for reading. §A of it — the source quotations — is sound and
is reproduced above.

Current status of everything referred to here:
[`verification-status.md`](verification-status.md), rows 9a and 9b.
