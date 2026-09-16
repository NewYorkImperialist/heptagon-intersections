# Lemma 7 still needs case 11; nine terminal cases are closed here

> **UNREVIEWED.** These arguments were produced in one automated session on
> 2026-09-15 and **nobody has checked them**. They are committed as an artifact,
> not as a result the project relies on. Nothing elsewhere in this repository
> cites them, and `docs/verification-status.md` does not count them.
>
> That caution is not boilerplate here. The defect these proofs set out to
> repair is precisely *unrigorous case analysis presented as proof* — AKR's own
> Lemma 7 argument, which `docs/a7-independent-proof.md` §6.8 characterises as
> figure-reading. A second layer of unreviewed case analysis is the specific way
> this work could make things worse rather than better.
>
> A spot-read of case 3 (PROOFS §4) found the right *kind* of argument:
> coordinates and inequalities deriving the crossing order `l < t < r` that AKR
> read off Fig. 10. That is encouraging and is not a review.

**This is not a complete proof of AKR Lemma 7.** Case **11** remains open.
No counterexample to Lemma 7 was found, and no exhaustive arrangement
enumeration was run. These are written mathematical proofs, not Lean proofs
or independently checked proof certificates.

**New result:** extent-independent arguments close cases
**1, 2, 3, 4, 6, 8, 10, 12**, and also close **all of case 5**, including
its previously unresolved branch. Full arguments: [PROOFS.md](PROOFS.md).
Taking the existing case-7 and case-9 proofs in
`docs/a7-independent-proof.md` §6.8 as dependencies leaves **one** terminal
case, not a finished lemma.

There is also an exact six-side example showing that a free-extension escape
can occur while respecting every constraint involving those six sides.
It is **not** an eight-side counterexample. It explains why one cannot simply
declare the unbounded regions sealed.

## 1. Case-by-case result

Numbering follows `docs/a7-independent-proof.md` §6.8 and AKR PDF pp. 8–11.
The source document's shorthand count in §6.9 does not uniquely specify a
subset of its case table; this report gives every case number explicitly.

| Case | Result here | Full argument |
|---|---|---|
| 1 | Closed | PROOFS §2: three incompatible direction inequalities |
| 2 | Closed | PROOFS §3: a' has x>0, y>-c; A at positive x is below -c |
| 3 | Closed | PROOFS §4: derive the b-line crossing orders, then apply the cone fact |
| 4 | Closed | PROOFS §§5–5.1: derive the ray slopes/intercepts and put w strictly between them |
| 5 | Closed, including the residual branch | PROOFS §6: supporting-line proof of convexity of the pentagon |
| 6 | Closed | PROOFS §7: explicit relabelling and coordinate map to case 1 |
| 7 | Not re-proved | Existing proof: `docs/a7-independent-proof.md` §6.8 |
| 8 | Closed | PROOFS §§5–5.2: A is in sealed faces; b' is strictly above them |
| 9 | Not re-proved | Existing proof: `docs/a7-independent-proof.md` §6.8 |
| 10 | Closed | PROOFS §7: explicit relabelling and coordinate map to case 3 |
| 11 | **Open** | Failed approach and remaining step below |
| 12 | Closed | PROOFS §8: bound the forced forbidden crossing inside the actual B' segment |

The main device combines **bounded, genuinely sealed faces** with
**affine linear functions along a straight segment**. In case 1, for example,
a' would need `d_y<0`, `d_y-m*d_x>0`, and `d_y-n*d_x<0`, with n>m.
The first two force d_x<0, making the third impossible. Crossing an unused
part of a frame line cannot change these inequalities.

Case 5 uses the second hooking condition explicitly. In coordinates along
A', B', convexity reduces to `K=p*d+r*q-r*d>0`; cone membership gives
positive coefficients `p*d/K` and `r*q/K`, proving this inequality. All
three required crossings of A are then located on actual boundary edges
of the convex pentagon. No location for the far crossing a'–B is assumed.

The normalization and local matching assumptions are taken from
`docs/a7-independent-proof.md` §§6.1, 6.3–6.5. The sealed-face argument is
restated from §6.6 with passage directions specified. The cone fact used in
that document's §6.2 is proved directly in PROOFS §1.2. The endpoint convention
in PROOFS §1 addresses same-polygon adjacency (the document's §6.8(f));
it does not assume all twelve polygon vertices are distinct.

## 2. An actual free-extension escape, with exact coordinates

Use these six segments. A' and B' are the frame sides; A and b' are absent.

| Side | First endpoint | Second endpoint |
|---|---|---|
| a | (-1,0) | (41/20,61/20) |
| b | (-1,0) | (1,0) |
| A' | (0,-1) | (0,2) |
| B' | (0,-1) | (11/5,17/5) |
| a' | (1,5/4) | (3,93/20) |
| B | (1/2,5/4) | (3,9/2) |

The four frame sides have all four required crossings. The two free sides
start in F2 and respect all their frame walls and doors:

- a' crosses B', avoids A', and avoids a and b;
- B crosses a, avoids b, and avoids A' and B';
- a' crosses the **line** a at x=29/14, beyond a's endpoint x=41/20;
- B crosses the **line** B' at x=16/7, beyond its endpoint x=11/5;
- a' and B cross at **(21/8,321/80)**, in G4: above a and below B'.

All distinct endpoint triples are noncollinear, and all six supporting
lines are pairwise nonparallel. [check.py](check.py) verifies these facts,
all fifteen pair relations, and the exact coordinates with `fractions.Fraction`.

This witnesses the *possibility of the two escapes* described in
`docs/a7-independent-proof.md` §6.7. A and b' have **not** been supplied;
the complete matching pattern and second hooking condition have **not**
been realized. It neither falsifies case 5 nor supplies evidence against
any completed terminal case. PROOFS §6 excludes completing it with all
case-5 hypotheses. It refutes only the shortcut of extending frame walls
to infinity without further justification.

## 3. Attempts that did not finish the job

### Case 11: open, not absorbed into a symmetry

Here w is in F3 and U is in F5. The first-entry arguments locate the
a'–B' door above T and the b'–A' door above V. Tracing A puts its b'
crossing in the lower-left quadrant, consistent with the first step on
AKR PDF p. 11. This does not prove that the triangle formed by U, A∩a',
A∩b' contains the required part of a, or that B cannot reach both b' and a
through a free extension of B'. We did not obtain all the necessary
crossing-order inequalities. No closure claim rests on this partial analysis.

The F6 lemma in PROOFS §5 is unavailable in F5: essential signs change.
The symmetry in PROOFS §7 sends case 11 back to the same face pattern;
it does not send it to a closed case.

### Projective compactification: considered, not established

No projective capping lemma was proved or used. A change of affine chart
must preserve the finite segment intervals and the intended convex cones;
a horizon crossing can change both. We did not derive a chart choice
meeting those requirements uniformly. Direct direction and crossing-order
arguments made that route unnecessary for the nine cases above.

### Parity alone: not extended to unsealed faces

The six-side example shows why a'–B need not occur in F2 under the
individual wall/door constraints. Simply counting four crossings inside
F2 does not finish the residual branch of `docs/a7-independent-proof.md`
§6.7. We instead used the second hooking condition to prove the pentagon
convex. No general parity theorem for unbounded faces is claimed here.

## 4. Priority 2 and the published counts

**No new exhaustive search was attempted.** We inspected
`independent/akr_l7_reproduction/arr8.py`, README, RESULTS and REPRODUCE,
including the existing oriented-matroid work. We did not run or modify those
programs. Since the geometric arguments were productive, we kept the effort
on Priority 1.

AKR PDF p. 28 reports the following sequence, checked directly against the
supplied PDF rather than copied from a repository paraphrase.

| Quantity | AKR reports | Obtained here |
|---|---:|---|
| arrangements | 158830 | Not enumerated |
| assignments per arrangement | 840 | Not enumerated |
| configurations up to isomorphism | 14 | Not enumerated |
| discarded for the hooking/hooked pattern | 13 | Not enumerated |
| remaining Fig. 6 configuration | 1 | Not enumerated |

The existing reproduction README §§4–5 discusses counting conventions and
assignment symmetries. This work does not settle those discrepancies.
There is no new reproduction of **158830 / 840 / 14 / 13 / 1**. None of
our finite arithmetic audit counts is comparable to that sequence.

## 5. Validation and reproduction

From the repository root:

```sh
python3 independent/l7_frame_extents/check.py
```

Only the standard library is needed. Output: [checks.json](checks.json),
written inside this directory. The run checks:

- the exact partial escape witness, including general position;
- **322** applicable direction-inequality instances, zero failures;
- **4248** hooking/convex and **729** nonhooking/nonconvex pentagons,
  comparing independently evaluated cone and supporting-line predicates;
  **108** degenerate pentagons skipped;
- **17328** face-equivalence instances for the coordinate symmetry;
- literal equality for the two quotations below against page-specific text
  extracted directly from the PDF.

These finite tests are **evidence and error checks, not universal proofs**.
They do not validate every wall/door argument, exhaust the frame parameters,
or certify the entire text. The universal arguments are in PROOFS.md.

Source inspection used macOS PDFKit. The `pdf-page-*.txt` files record PDF
pages 7–11 and 28; rendered pages 7, 10 and 28 were also inspected. These
are source records, not authored quotations or reconstructed figures.
To regenerate them on macOS:

```sh
swift -module-cache-path independent/l7_frame_extents/swift-cache independent/l7_frame_extents/read_pdf.swift
```

The input PDF SHA-256 is in checks.json. All sources and outputs stay in
this directory. No files in docs, lean, python,
independent/akr_l7_reproduction, or independent/residual_realizability were
modified, and no commit was made.

## 6. AKR quotation ledger and source locations

These are the **only two direct AKR quotations used in this report**.
Each was checked character-for-character against the extracted text of its
PDF page and visually against the rendered page. Mathematical A in the
first sentence retains its character, with font styling omitted. Neither
sentence spans a line break in the extracted text.

1. **PDF p. 10, case 5:**

   > It follows that A must intersect three sides of the pentagon, which is impossible.

2. **PDF p. 28, §10.2:**

   > The remaining configuration is the one in Fig. 6.

Other AKR source references are **paraphrases**, not quotations: Lemma 7
and initial relabelling, PDF p. 7; normalization and case split, p. 8;
cases 1–4, pp. 8–10; case 5 and cases 6–8, pp. 10–11;
cases 9–12 and exchange of polygons, p. 11; enumeration method and
counts, p. 28. The supplied PDF has no printed journal page numerals
on these pages; citations consistently use the PDF page index.
