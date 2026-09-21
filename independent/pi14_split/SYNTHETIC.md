# The synthetic half of the $\Pi_{14}$ Theorem, finished

*Session of 2026-09-21, later than `ASYMMETRY.md`. Nothing here overwrites
`FINDINGS.md` or `ASYMMETRY.md`; both are left as written.*

**Do not read this as a refutation of $\Pi_{14}$.** It is not. Branches remain
undecided, no branch has ever returned `sat`, and $f(7,7)=38$ remains a
candidate resting on an unproved import and unreviewed by any mathematician.

---

## 0. What this session establishes

1. **LEMMA 2** (§3): the $V_{11}$ half of `ASYMMETRY.md`'s Theorem now has a
   synthetic proof. It was solver-and-sampler evidence only. The proof is four
   paragraphs, needs no case analysis and no crossing-parity count, and its
   hypothesis set is *exactly* the 12-condition minimal core that z3 finds
   independently.
2. The obstruction recorded in `ASYMMETRY.md` §10 — "the crossing parities
   depend on cells $\Pi_{14}$ leaves **free**, $P_0\times Q_0$ and
   $P_0 \times Q_3$" — is **dissolved, not worked around**: §4 shows those
   cells are not free at all.
3. **LEMMA 3** (§4): $\Pi_{14}$'s hypotheses force two of its six free
   $P\times Q$ cells. $P_0 \not\times Q_0$ and $P_2 \not\times Q_2$ are
   consequences, verified exhaustively over all 3,315 eight-point order types
   and all $8!$ labellings, with a leave-one-out control that is not vacuous.
4. **LEMMA 4** (§4b): the same tool run with the roles of $P$ and $Q$
   exchanged gives a *second* convex quadrilateral, which pins $V_4$ — the one
   vertex nothing else reached — and thereby **refutes the first disjunct of
   $P_1\not\times P_3$ in every branch**. That closes **32 of the 64 branches
   left open by the Theorem**, by hand plus an exhaustive order-type check, with
   no new solver work.
5. **50 derived facts** (§5, `derived.py`): 44 of the 165 orientation triples on
   $\Pi_{14}$'s eleven vertices are *pinned outright* as single degree-2
   inequalities, plus the two forced cells of Lemma 3 and the forced disjunct of
   Lemma 4. Every one was independently re-confirmed as implied — by z3, by the
   exhaustive database, or by the solver-free sampler; 0 came back wrong.
6. §6 reports what that bought on the undecided systems, and localises the
   entire residual problem to a single condition.

**Census after this session: 224 of 256 branches refuted, 0 realizable, 32
undecided** (16 distinct systems), up from 192 / 0 / 64. **$\Pi_{14}$ is still
not independently refuted.** What is still open is stated in §7.

---

## 1. The frame

Notation as in `pi14_common.py`: $P_i=[V_i,V_{i+1}]$ ($i=0..3$),
$Q_j=[V_{7+j},V_{8+j}]$ ($j=0..4$), $\operatorname{or}$ and `ProperCross`
verbatim from `lean/GeometryDefs.lean`.

Two lines carry the whole argument.

* $M$ := the line $V_1V_2$ (the line of $P_1$, the *only* $P$-side $\Pi_{14}$
  prescribes to miss a $Q$-side).
* $L$ := the line $V_8V_9$ (the line of $Q_1$, the $Q$-side that $P_1$ misses).

Write $\eta := \operatorname{or}(V_1,V_2,V_8)$ and
$\varepsilon := \operatorname{or}(V_8,V_9,V_1)$.

Four facts place everything, and each is one line:

* **(a)** $P_1 \not\times Q_1$ puts $V_8$ and $V_9$ strictly on the *same* side
  of $M$ — this is its first disjunct, and by `ASYMMETRY.md` §6 the two
  disjuncts are equivalent given six of $\Pi_{14}$'s crossings, so it is
  available disjunct-free. Say both are "above" $M$, i.e. $\eta$-side.
  The straddle halves of $P_1\times Q_0,Q_2,Q_3,Q_4$ then give
  $$\operatorname{or}(1,2,\cdot) \;=\; -\eta,\ +\eta,\ +\eta,\ -\eta,\ +\eta,\ -\eta \quad\text{at } V_7,V_8,V_9,V_{10},V_{11},V_{12}.$$
* **(b)** $V_0$ and $V_3$ are strictly above $M$. *Proof:* $Q_1=[V_8,V_9]$ lies
  strictly above $M$ by (a); $P_0=[V_0,V_1]$ crosses it and has the endpoint
  $V_1$ **on** $M$, so $P_0$ must reach above $M$, i.e. $V_0$ is above $M$.
  Identically for $V_3$ from $P_2 \times Q_1$. (Steps S1, S2 below.)
  Consequently $P_0, P_1, P_2$ all lie in the closed half-plane $U$ above $M$,
  meeting $M$ only in $[V_1,V_2]=P_1$.
* **(c)** **LEMMA 1** (`ASYMMETRY.md` §4, proved there and verified over the
  whole order-type database): $\operatorname{or}(8,9,1)=\operatorname{or}(8,9,2)=\operatorname{or}(8,9,7)=\operatorname{or}(8,9,10)=\varepsilon$ and $\operatorname{or}(8,9,0)=\operatorname{or}(8,9,3)=-\varepsilon$. In particular
  **$P_1$ lies strictly on one side of $L$**, so $Z := M \cap L$ is not in
  $[V_1,V_2]$.
* **(d)** $a_0 := P_0 \cap L$ and $a_2 := P_2 \cap L$ exist and lie in the
  **open segment** $(V_8,V_9)$ — that is what $P_0\times Q_1$ and
  $P_2 \times Q_1$ say. Both are above $M$, because $(V_8,V_9)$ is.

### The convex quadrilateral

Let $W$ be the closed convex wedge $U \cap \{\varepsilon\text{-side of } L\}$,
with apex $Z$. By (c) the points $V_1,V_2$ lie on one boundary ray of $W$ (on
$M$); by (d) the points $a_0,a_2$ lie on the other (on $L$). So

$$K \;:=\; \text{the quadrilateral } a_0 \to V_1 \to V_2 \to a_2 \to a_0$$

has its four sides on $P_0$, $P_1$, $P_2$ and $L$ respectively, and all four
vertices on the two boundary rays of a convex wedge, two on each.

> **$K$ is convex.** Its only possibly-crossing pair of sides is
> $[a_0,V_1]\subset P_0$ and $[V_2,a_2] \subset P_2$, and $P_0 \not\times P_2$
> forbids that; so $K$ is simple. Two disjoint chords of a wedge, each joining
> one boundary ray to the other, are nested: one of them separates the other
> from the apex. Hence $K$ is the intersection of the wedge with two
> half-planes, and therefore convex. $\square$

That is the whole tool. **A straight segment meets the boundary of a convex set
in at most two points** unless it contains a boundary sub-segment, which general
position (`hGP`) excludes. Everything below is that sentence applied four
times: to $Q_4$ (Lemma 2), to $Q_0$ and $Q_2$ (Lemma 3), and — against a second
quadrilateral built the same way out of $Q_0,Q_1,Q_2$ — to $P_3$ (Lemma 4).

---

## 2. Why the previous session stopped, and why this frame does not

`ASYMMETRY.md` §10 closed the sub-arc $Y_0 \to V_1 \to V_2 \to Y_2$ with a chord
of $Q_1$ and counted how often other segments cross the resulting **Jordan
curve**. That count needs the free cells $P_0 \times Q_0$ and $P_0\times Q_3$,
and stalls.

The curve here is the same curve. What changes is that it is recognised as
**convex**, which replaces a parity count (sensitive to every crossing,
including the free ones) by a *cardinality bound* (sensitive to none of them:
three is already too many). The convexity comes from two hypotheses the parity
argument was not using as geometry — $P_0\not\times P_2$ for simplicity, and
Lemma 1's $\operatorname{or}(8,9,1)=\operatorname{or}(8,9,2)$ for "both
$M$-vertices on one side of $L$", which is what makes $W$ a wedge with two
vertices on each ray.

---

## 3. LEMMA 2 — the $V_{11},V_{12}$ half

> **LEMMA 2.** Assume the twelve conditions
>
> * $P_0\times Q_1$, $P_0\times Q_2$, $P_1\times Q_0$, $P_1\times Q_2$,
>   $P_2\times Q_0$, $P_2\times Q_1$, $P_1\not\times Q_1$   (Lemma 1's seven)
> * $P_0\not\times P_2$
> * $P_1\times Q_3$, $P_0\times Q_4$, $P_1\times Q_4$, $P_2\times Q_4$.
>
> Then $\operatorname{or}(8,9,11) = -\varepsilon$ and
> $\operatorname{or}(8,9,12) = +\varepsilon$.

### Proof of $\operatorname{or}(8,9,11) = -\varepsilon$

Suppose instead $\operatorname{or}(8,9,11)=+\varepsilon$.

$V_{11}$ is above $M$ by (a) (the straddle half of $P_1\times Q_3$ together
with $\operatorname{or}(1,2,10)=-\eta$), and it is on the
$\varepsilon$-side of $L$ by assumption, so $V_{11} \in W$.

Let $t_4 := P_1 \cap Q_4$, which lies in the open segment $(V_1,V_2)$ because
$P_1 \times Q_4$ is a crossing. Then $t_4 \in W$ too, and $W$ is convex, so
$[V_{11},t_4] \subset W$; since both endpoints are strictly on the
$\varepsilon$-side of $L$, the whole segment is.

$V_{12}$ is strictly *below* $M$ by (a), so $Q_4 \cap U = [V_{11},t_4]$. The
crossing points $f_0 := Q_4\cap P_0$ and $f_2 := Q_4 \cap P_2$ lie in $U$
(because $P_0,P_2\subset U$), hence on $[V_{11},t_4]$, hence strictly on the
$\varepsilon$-side of $L$. But $P_0 \cap \{\varepsilon\text{-side}\} = (a_0,V_1]$
and $P_2 \cap \{\varepsilon\text{-side}\} = [V_2,a_2)$, so

$$f_0 \in (a_0,V_1), \qquad t_4 \in (V_1,V_2), \qquad f_2 \in (V_2,a_2),$$

three distinct points of $\partial K$ on the single straight segment $Q_4$. $K$
is convex, so this forces $[f_0,f_2] \subset \partial K$, which puts $V_1$ on
the line $V_{11}V_{12}$, i.e. $\operatorname{or}(11,12,1)=0$, contradicting
general position. $\blacksquare$

### Proof of $\operatorname{or}(8,9,12) = +\varepsilon$

By Lemma 1 the segment $P_1=[V_1,V_2]$ lies strictly on the
$\varepsilon$-side of $L$. $P_1 \times Q_4$ is a crossing, so $Q_4$ meets that
open half-plane, so its endpoints are not both on the other side. With
$\operatorname{or}(8,9,11) = -\varepsilon$ just proved,
$\operatorname{or}(8,9,12)=+\varepsilon$. $\blacksquare$

Together with Lemma 1's $\operatorname{or}(8,9,10)=+\varepsilon$ this is exactly
`ASYMMETRY.md`'s Theorem: $\operatorname{or}(8,9,10)$,
$\operatorname{or}(8,9,11)$, $\operatorname{or}(8,9,12)$ alternate.

### Which hypotheses the proof uses, and the machine's own answer

The proof uses: Lemma 1's seven (for (a), (c) and $\varepsilon$);
$P_0\times Q_1$, $P_2\times Q_1$ again for (b) and (d); $P_0\not\times P_2$ for
simplicity of $K$; $P_1\times Q_3$ for "$V_{11}$ is above $M$"; and
$P_0\times Q_4$, $P_1\times Q_4$, $P_2\times Q_4$ for the three boundary
points. Twelve conditions on ten vertices; $V_4$, $P_3$ and $Q_3$'s second role
never appear.

Independently, `core_q1q3.py` minimised the z3 refutation of
"the 13 crossings + $P_0\not\times P_2$ + $P_1\not\times Q_1$ +
$\operatorname{or}(8,9,10)\cdot\operatorname{or}(8,9,11)>0$", by randomised
deletion, for **all four** disjunct combinations of the two non-crossings. All
four returned the same core:

```
CORE (12): P0/P2, P0xQ1, P0xQ2, P0xQ4, P1xQ0, P1/Q1, P1xQ2, P1xQ3, P1xQ4,
           P2xQ0, P2xQ1, P2xQ4
```

`core_epsX.py` repeats this for the $\varepsilon$-form of the claim
($\operatorname{or}(8,9,1)\cdot\operatorname{or}(8,9,11)>0$) under three
independent minimisation seeds: same twelve, every time. The set the synthetic
proof consumes and the set the solver needs coincide exactly.

*Caveat on "minimal":* minimisation treats `unknown` as "cannot drop", so the
12 are minimal only in the sense that no single deletion was *confirmed*
droppable.

### Verification

`chirocheck.c` — the exact-arithmetic hill-climber of `sampler.c`, extended to
record the $\eta$-normalised sign of all $\binom{11}{3}=165$ orientation
triples and the truth value of all 29 cells. (Normalising by $\eta$ is what
makes the record reflection-invariant: reflection flips every orientation and
preserves every crossing, so only **even** products can be forced — the lesson
of `pi8_human/forced2.c`.)

```
./chirocheck corex 60 90210     (the 12 conditions of LEMMA 2, nothing else)
  27,943 configurations satisfying all twelve
  or(8,9,10) = +eta ,  or(8,9,11) = -eta ,  or(8,9,12) = +eta   in all 27,943
  52 of the 165 triples forced

./chirocheck thm 60 31337       (the Theorem's 15 conditions)
  14,018 configurations;  65 of 165 triples forced, including
  or(8,9,10) = +eta, or(8,9,11) = -eta, or(8,9,12) = +eta
```

These are samples, not proofs; the proof is above and the exhaustive checks are
in §4 and §5.

---

## 4. LEMMA 3 — two of $\Pi_{14}$'s free cells are not free

The same convexity argument, run on $Q_0$ and $Q_2$ instead of $Q_4$, settles
two cells $\Pi_{14}$ does not prescribe. These are exactly the cells
`ASYMMETRY.md` §10 named as the obstruction.

> **LEMMA 3.** Lemma 1's seven conditions imply
> $P_0 \not\times Q_0$ and $P_2 \not\times Q_2$.

*Proof.* $Q_0=[V_7,V_8]$ has $V_7$ strictly below $M$ and $V_8$ above it, and
$P_1 \times Q_0$ puts its crossing with $M$ at a point $t_0 \in (V_1,V_2)$. So
$Q_0 \cap U = [V_8,t_0]$, which lies in $W$ by convexity, with $V_8$ on the
$L$-boundary ray. $P_2\times Q_0$ is a crossing and $P_2 \subset U$, so that
crossing point is on $[V_8,t_0]$, hence on $P_2 \cap W = [V_2,a_2) \subset
\partial K$. Together with $t_0 \in (V_1,V_2) \subset \partial K$ that is
already two points of $\partial K$ on the straight segment $Q_0$; note
$V_8 \notin [a_0,a_2]$, since $a_0,a_2$ are interior to $(V_8,V_9)$, so $V_8$
itself is not a third. If $P_0 \times Q_0$ were a crossing as well, its
crossing point would likewise lie in $W$, hence on $(a_0,V_1] \subset \partial
K$, giving a third — impossible for a straight segment against a convex
boundary. Hence $P_0 \not\times Q_0$. The argument for $P_2 \not\times Q_2$ is
the mirror image ($Q_2 = [V_9,V_{10}]$, $V_9$ on the $L$-ray, $P_0\times Q_2$
supplying the second point). $\square$

### Verification: exhaustive, with a non-vacuous leave-one-out control

Both statements live on the eight vertices $V_0,V_1,V_2,V_3,V_7,V_8,V_9,V_{10}$,
so the TU Graz database certifies them. `lemma2.c`:

```
L3  LEMMA1 H1..H7 & P0/xP2  => P0 /x Q0 :  1,326 cases, 0 violations
L3  LEMMA1 H1..H7 & P0/xP2  => P2 /x Q2 :  1,326 cases, 0 violations
    (and on all 3,400 LEMMA 1 cases, i.e. P0 /x P2 is not even needed
     for the *statement*, though the proof above uses it for convexity)
```

A conclusion of the form "this cell misses" is worth nothing unless the cell can
cross at all nearby, so `lemma3_loo.c` drops each hypothesis in turn
(exhaustive, all 3,315 order types, all $8!$ labellings):

```
dropped                 cases      P0 x Q0      P2 x Q2
(none dropped)           3400            0            0
H1 P0xQ1                29029        13836            0
H2 P0xQ2                 9602         5152            0
H3 P1xQ0                20425         8854         5782
H4 P1xQ2                20425         5782         8854
H5 P2xQ0                 9602            0         5152
H6 P2xQ1                29029            0        13836
H7 disjunct             79416        54856        54856
```

Every single deletion makes at least one conclusion fail, most of them
massively; dropping the $P_1\not\times Q_1$ disjunct alone lets both cells
cross in 69 % of the 79,416 remaining labellings. The control is not vacuous,
and the split in the table (H1,H2 touch only $P_0\times Q_0$; H5,H6 only
$P_2\times Q_2$; H3,H4,H7 both) mirrors the proof's own structure.

`chirocheck.c` confirms it on the eleven-point systems as well: under the
Theorem's 15 conditions, $P_0\times Q_0$ occurs in 0 of 11,923 configurations
and $P_2 \times Q_2$ in 0 of 11,923, while the other four free cells
($P_0\times Q_3$, $P_2\times Q_3$, $P_3\times Q_3$, $P_3\times Q_4$) are all
seen both ways.

### The other small steps, also exhaustively

`lemma2.c`, all 3,315 order types and all $8!$ labellings:

```
S1  P0xQ1 & disj        => or(1,2,0)  = or(1,2,8)  :  8,818,416 cases, 0 violations
    CONTROL  P0xQ1 & NOT disj                      : 13,267,536 cases, 6,633,768 failures
S2  P2xQ1 & disj        => or(1,2,3)  = or(1,2,8)  :  8,818,416 cases, 0 violations
S3  P1xQ2,P1xQ3 & disj  => or(1,2,11) = or(1,2,8)  :  4,059,304 cases, 0 violations
    CONTROL  same without disj                     :  3,062,936 cases, 3,062,936 failures
S5  or(8,9,1)=or(8,9,2) & P1xQ4
      => NOT both V11,V12 on the far side of L     : 11,046,688 cases, 0 violations
    CONTROL  or(8,9,1)!=or(8,9,2) & P1xQ4          : 11,039,264 cases, 2,292,800 failures
```

Each step fires on millions of cases and each control shows the conclusion is
genuinely false without the hypothesis. S3's control fails on 100 % of its
cases, S1's on 50 %, S5's on 21 %.

---

## 4b. LEMMA 4 — the dual quadrilateral, and 32 more branches

The same tool, run with the roles of $P$ and $Q$ exchanged.

$Q_0,Q_1,Q_2$ and the line $M$ cut a **second** quadrilateral out of the same
wedge $W$:

$$K' \;:=\; t_0 \to V_8 \to V_9 \to t_2 \to t_0,
\qquad t_0 := P_1\cap Q_0,\quad t_2 := P_1 \cap Q_2 ,$$

with sides on $Q_0$, $Q_1$, $Q_2$ and $M$. Its two "cross" sides are
$[t_0,V_8]\subset Q_0$ and $[V_9,t_2]\subset Q_2$, which do not meet because
$Q_0 \not\times Q_2$ is prescribed; its four vertices lie two on each boundary
ray of $W$ ($V_8,V_9$ on the $L$-ray by (d), $t_0,t_2$ on the $M$-ray because
$P_1\times Q_0$ and $P_1\times Q_2$ put them in $(V_1,V_2)$, which Lemma 1 puts
strictly on the $\varepsilon$-side of $L$). So **$K'$ is convex**, by the same
nesting argument as $K$.

> **LEMMA 4.** Lemma 1's seven conditions, together with $P_2\times Q_1$,
> $P_3\times Q_0$, $P_3\times Q_1$, $P_3\times Q_2$ and $Q_0\not\times Q_2$,
> force
> $$\operatorname{or}(1,2,4) \;=\; -\operatorname{or}(1,2,8),$$
> i.e. $V_4$ lies strictly on $V_7,V_{10},V_{12}$'s side of the line $V_1V_2$.

*Proof.* Suppose not, so $V_4$ is strictly above $M$. $V_3$ is above $M$ too
(step S2, from $P_2\times Q_1$), so the whole segment $P_3$ is. $V_7$ and
$V_{10}$ are strictly below $M$ (the straddle halves of $P_1\times Q_0$ and
$P_1\times Q_2$), so $Q_0 \cap \{\text{above } M\} = [t_0,V_8]$ and
$Q_2 \cap \{\text{above } M\} = [V_9,t_2]$. Hence the three prescribed
crossings of $P_3$ land at

$$P_3\cap Q_0 \in (t_0,V_8), \qquad P_3 \cap Q_1 \in (V_8,V_9), \qquad
P_3 \cap Q_2 \in (V_9,t_2),$$

three distinct points on three different sides of the convex $K'$, all on the
single straight segment $P_3$. Impossible, exactly as in Lemma 2. $\blacksquare$

### What Lemma 4 costs $\Pi_{14}$: its first disjunct of $P_1\not\times P_3$

Step S2 gives $\operatorname{or}(1,2,3) = +\eta$ and Lemma 4 gives
$\operatorname{or}(1,2,4) = -\eta$, so

$$\operatorname{or}(1,2,3)\cdot\operatorname{or}(1,2,4) \;<\; 0 .$$

That is precisely the **negation of the first disjunct** of
$\neg\mathrm{ProperCross}(V_1,V_2,V_3,V_4)$. Every hypothesis Lemma 4 uses is a
prescribed crossing of $\Pi_{14}$, or $Q_0\not\times Q_2$ used disjunct-free, or
Lemma 1 — so this holds in **every one of the 256 branches**:

> $P_1 \not\times P_3$ must take its **second** disjunct,
> $\operatorname{or}(3,4,1)\cdot\operatorname{or}(3,4,2) > 0$.

In the census numbering that is bit 5 of the branch index. The 64 branches left
open after the Theorem are $n \equiv 3 \pmod 4$; **the 32 of them with
$\mathrm{bit}_5(n)=0$ are refuted**:

```
3   7  11  15  19  23  27  31   67  71  75  79  83  87  91  95
131 135 139 143 147 151 155 159  195 199 203 207 211 215 219 223
```

leaving the 32 with $\mathrm{bit}_5(n)=1$, which are 16 distinct systems by the
$P_1\not\times Q_1$ equivalence:

```
still open: 35 39 43 47 51 55 59 63  99 103 107 111 115 119 123 127
           163 167 171 175 179 183 187 191  227 231 235 239 243 247 251 255
distinct  : 35 39 43 47  99 103 107 111  163 167 171 175  227 231 235 239
```

**The census moves from 192 / 0 / 64 to 224 / 0 / 32**, with no new hard solver
work — the 32 come from a hand proof plus an exhaustive order-type check.

### Verification

Lemma 4 lives on the eight vertices $V_1,V_2,V_3,V_4,V_7,V_8,V_9,V_{10}$
(Lemma 1's conclusion $\operatorname{or}(8,9,1)=\operatorname{or}(8,9,2)$ is
imported as a hypothesis, which is what removes $V_0$), so the order-type
database certifies it. `lemma4.c`, all 3,315 order types x all $8!$ labellings,
with a leave-one-out control on **every** hypothesis:

```
dropped                           cases     violations
(none dropped)                      266              0
A or(8,9,1)=or(8,9,2)               988             46
B P1/xQ1 disjunct                  1788            761
C P1xQ0                            8632           2247
D P1xQ2                            8632           2247
I P2xQ1                             808            404
E P3xQ0                            3067            718
F P3xQ1                             750             56
G P3xQ2                            3067            718
H Q0/xQ2                           2540            112
```

Not one hypothesis is redundant and the control is nowhere vacuous: every
single deletion lets the conclusion fail, by between 5 % and 50 % of the
remaining labellings.

On the eleven-point systems, `chirocheck`'s `thmq` mode (the Theorem's 15
conditions + $Q_0\not\times Q_2$, which is Lemma 4's hypothesis set inside
$\Pi_{14}$) finds $\operatorname{or}(1,2,4) = -\eta$ in **all 6,662**
configurations it produces, and this is one of only two triples that
$Q_0\not\times Q_2$ newly forces — under `thm`, without it,
$\operatorname{or}(1,2,4)$ is genuinely free, exactly as the leave-one-out row
`H Q0/xQ2` predicts.

A direct z3 check of the branch consequence (13 crossings + $P_1\not\times Q_1$
+ $Q_0\not\times Q_2$ + $P_1\not\times P_3$[bit 0]) returned **`unknown`** after
30 constraint orders at 6 s (`lemma4_branch.py`) — which is what `unknown`
usually means on this family, and why the claim rests on the proof and the
exhaustive database check rather than on the solver. Its two controls behave:
the same system with bit 1 instead of bit 0 is `sat` in 60 s, and dropping
$Q_0\not\times Q_2$ while keeping bit 0 is `sat` in 12 s, so neither the bit nor
the hypothesis is doing nothing.


---

## 5. 47 derived signs, 50 derived facts, 44 pinned triples

`derived.py` collects everything the synthetic proof pins, each tagged with its
provenance: the **Core Lemma** of `../pi8_human/` plus the straddle half of a
prescribed crossing, **Lemma 1**, **Lemma 2**, **Lemma 3** or **Lemma 4**. None
depends on which disjunct a negated crossing takes, so all of it holds in every
one of the 256 branches.

Under the 3-point normalisation $V_0=(0,0), V_1=(1,0), V_2=(0,1)$ we have
$\operatorname{or}(0,1,2)=+1$, and S1 says
$\operatorname{or}(1,2,0)=\operatorname{or}(1,2,8)$, so $\eta=+1$ outright; the
sampler additionally finds $\varepsilon = \eta$ in every configuration, and z3
confirms $\operatorname{or}(8,9,1)>0$ is implied. Every derived fact is then a
**single degree-2 inequality**, where the branch constraints are degree 4 —
`FINDINGS.md` §7.3's observation that degree 2 is the regime nlsat likes.

The list: the seven $\operatorname{or}(1,2,\cdot)$ (six from §1(a) plus
$\operatorname{or}(1,2,4)$ from Lemma 4), the nine
$\operatorname{or}(8,9,\cdot)$, four on the line $V_7V_8$, five on $V_9V_{10}$,
two on $V_{10}V_{11}$, four on $V_{11}V_{12}$, five on $V_0V_1$, five on
$V_2V_3$, four on $V_3V_4$ — 47 signs, of which 44 are distinct triples — plus
Lemma 3's two forced cells and Lemma 4's forced disjunct of $P_1\not\times P_3$.

**Soundness controls** (`derived_control.py`):

```
CONTROL A  the Theorem's hypotheses alone       : sat
CONTROL B  the same + all 48 derived facts      : sat        <- none of them is false
per-fact   hypotheses + NOT(phi) is unsat       : 46 of 48 confirmed by z3 at
                                                  10 orders x 3 s, 0 WRONG,
                                                  2 unknown
retry      the two unknowns at 40 orders x 8 s  : both unsat (retry2.log)
```

So **all 48 of the pre-Lemma-4 facts are confirmed implied by z3**, and none is
false. Control B is the one that matters: had any derived fact been wrong, the
augmented *satisfiable* system would have gone `unsat`.

The solver-free sampler gives the same answer without z3.
`check_derived_sampler.py` parses `chirocheck`'s forced-triple table and
compares it with `derived.py` entry by entry:

```
mode=thm    15,709 configurations : 46 confirmed forced, 0 not forced, 0 WRONG
mode=drop5   1,654 configurations : 46 confirmed forced, 0 not forced, 0 WRONG
mode=thmq    3,471 configurations : 47 confirmed forced, 0 not forced, 0 WRONG
mode=corex  27,356 configurations : 38 confirmed forced, 8 not forced, 0 WRONG
```

The eight that are not forced under `corex` are exactly the eight that mention
$V_4$ or $P_3$ — and `corex` is Lemma 2's 12-condition core, which contains
none of $P_3$'s crossings. The sampler and the proof agree on which facts need
which hypotheses. Lemma 4's $\operatorname{or}(1,2,4)$ shows up only under
`thmq`, the mode that has $Q_0\not\times Q_2$.

---

## 6. What the synthetic proof bought the solver, and where the difficulty moved

### 6.1 A ladder of disjunct-free sub-systems

With the $V_{11}$ half proved, the first disjunct of both $Q_1\not\times Q_3$
and $Q_1 \not\times Q_4$ is refuted outright, so every one of $\Pi_{14}$'s 256
branches contains

> the 13 crossings + $P_1\not\times Q_1$ + $Q_1\not\times Q_3$[bit 1] +
> $Q_1 \not\times Q_4$[bit 1]

and differs only in the disjuncts of the five remaining non-crossings
$P_0\not\times P_2$, $P_0\not\times P_3$, $P_1\not\times P_3$,
$Q_0\not\times Q_2$, $Q_0\not\times Q_3$ — which is exactly where the 32
distinct open systems come from. **An `unsat` at any rung of the ladder below
would close all 64 open branches at once**, because every branch extends every
rung. (Adding the derived facts to a *sub*-system is sound in this direction:
they are consequences of $\Pi_{14}$'s full hypothesis set, so
$\Pi_{14} \models \text{rung} \wedge \text{DERIVED}$, and `unsat` on the
conjunction refutes $\Pi_{14}$. `sat` on a rung says nothing about
$\Pi_{14}$.)

`ladder.py`, 24 constraint orders x nlsat seeds at 5 s:

```
L0  17 conditions (base)     : sat  order#0   (0s)
L1  + Q0/xQ2                 : sat  order#3  (15s)
L2  + Q0/xQ2, Q0/xQ3         : sat  order#11 (55s)
L3  + .., P0/xP2             : sat  order#8  (40s)
L4  + .., P0/xP3             : sat  order#2  (10s)
L5  full Pi_14 (+ P1/xP3)    : unknown, 40 orders x 8 s (366s)
```

*(run with the 48-fact derived set, i.e. before Lemma 4; `ladder_L5b.log`
repeats the last rung with Lemma 4's two extra facts included.)*

**So 20 of $\Pi_{14}$'s 21 conditions, plus everything the synthetic proof
derives, are simultaneously satisfiable.** The residual contradiction is not
distributed over the pattern: after Lemmas 1–4 it is carried by the single
condition $P_1 \not\times P_3 = \neg\mathrm{ProperCross}(V_1,V_2,V_3,V_4)$, the
one non-crossing that involves $V_4$ — and by Lemma 4 only **half** of that
condition survives, the disjunct
$\operatorname{or}(3,4,1)\cdot\operatorname{or}(3,4,2)>0$.

### 6.2 The drop-one sweep — solver-free, exact, non-degenerate

`chirocheck.c` gained a `drop<k>` mode: the full 21-condition $\Pi_{14}$ with
condition $k$ omitted, searched by the exact-arithmetic hill-climber with the
non-degeneracy test switched on, 8 s each. This is the solver-free counterpart
of §6.1 and it does not depend on any derived fact.

```
drop 0  P0/xP2   325      drop 7  P1/xQ1  2531      drop14  P3xQ0     51
drop 1  P0/xP3     0      drop 8  P1xQ2   1968      drop15  P3xQ1     18
drop 2  P0xQ1   3508      drop 9  P1xQ3     28      drop16  P3xQ2    287
drop 3  P0xQ2    245      drop10  P1xQ4    476      drop17  Q0/xQ2   139
drop 4  P0xQ4    129      drop11  P2xQ0    284      drop18  Q0/xQ3     0
drop 5  P1/xP3   213      drop12  P2xQ1    995      drop19  Q1/xQ3     0
drop 6  P1xQ0   2436      drop13  P2xQ2    655      drop20  Q1/xQ4     1
```

Every one of the 21 conditions is load-bearing: 18 of the 21 one-condition
relaxations are realised, most of them hundreds of times, so no condition is
redundant. **`drop5` — dropping exactly $P_1\not\times P_3$ — is realised 213
times**, which confirms rung L4 with a genuinely general-position
configuration rather than a z3 model. (The z3 model for L4 was *degenerate*:
it had $V_{10}=V_{12}$ and 10 collinear triples, because the encoding
deliberately does not assert general position on the 104 triples no condition
mentions — `FINDINGS.md` §5. That is why the sampler, not z3, is quoted here.)

The three relaxations the sampler could not realise — `drop1` ($P_0\not\times
P_3$), `drop18` ($Q_0\not\times Q_3$), `drop19` ($Q_1\not\times Q_3$) — are the
same three that `ASYMMETRY.md` §11's *flip* sweep could not realise, plus
`drop20` at exactly 1. A hill-climber that misses is a hill-climber that
missed; this is evidence, not proof.

### 6.3 An L4 model, re-verified outside z3

`ladder_model.py` re-verifies an L4 model outside z3 in exact `Fraction`
arithmetic against all 21 cells, all 46 derived signs and Lemma 3's two forced
cells: 20 of 21 cells as prescribed (only $P_1\not\times P_3$ differs, by
construction), 0 derived signs violated, both Lemma 3 cells missing. That model
is *degenerate* ($V_{10}=V_{12}$, 10 collinear triples) because the encoding
does not assert general position on unconstrained triples; §6.2's `drop5` run
is the non-degenerate version and is the one to believe. The sampler
cross-check of `derived.py` is in §5.

### 6.4 The open systems

`push_derived.py` re-runs `ASYMMETRY.md` §10's portfolio on the open systems
($n\equiv 3 \bmod 4$, bit 4 of $n$ zero; each result transfers to its twin
$n\oplus 16$) with the derived facts added. Adding them does not change
satisfiability, but it turns most of the constraints from degree 4 into degree
2, which is the regime `FINDINGS.md` §7.3 identified as the one nlsat handles.

Two runs, and the difference between them is worth stating carefully:

```
push_der_full.log : 48 facts (pre-LEMMA 4)  : branches 3, 7, 11, 15, 35, 39, 43
                                              all `unknown` at 20 orders x 5 s
push_der_16.log   : 50 facts (post-LEMMA 4) : 3, 7, 11, 15 -> unsat  (45-85 s)
                                              35, 39, 43   -> unknown at
                                              24 orders x 6 s (144 s each)
ladder_L5b.log    : the monolithic system with the 50 facts, 40 orders x 8 s
                                              -> unknown (321 s)
```

Branches 3, 7, 11, 15 are exactly the four `bit5 = 0` members of the 32-strong
TODO list; branches 35, 39, 43 are the first three genuinely open ones, and they
resist as hard as ever. **The derived facts refuted no branch that the synthetic
proof had not already refuted.**

The new `unsat`s are **not** independent confirmation of Lemma 4. Those
branches take bit 0 of $P_1\not\times P_3$, which asserts
$\operatorname{or}(1,2,3)\cdot\operatorname{or}(1,2,4)>0$, and the derived set
now contains $\operatorname{or}(1,2,3)>0$ and $\operatorname{or}(1,2,4)<0$
outright — so the contradiction is one multiplication deep and z3 is only
checking that the two assertions are inconsistent, which they are by
construction. The evidence for Lemma 4 is the proof in §4b plus the exhaustive
order-type check; the direct z3 attempt on the statement returned `unknown`
(§4b).

---

## 7. Where it stands, honestly

* **The synthetic proof of `ASYMMETRY.md`'s Theorem is complete.** Lemma 1 was
  the $V_7,V_{10}$ half; **Lemma 2** (§3) is the $V_{11},V_{12}$ half, which was
  solver-and-sampler evidence only. The hypothesis set Lemma 2 consumes is
  exactly the 12-condition core z3 finds by randomised minimisation, under all
  four disjunct combinations and three minimisation seeds.
* **The §10 obstruction is gone.** It was "crossing parities depend on free
  cells". **Lemma 3** (§4) shows the two cells in question are not free, and the
  proof replaces the parity count by a cardinality bound against a *convex*
  boundary, which no free cell can affect.
* **The census moves to 224 of 256 refuted, 0 realizable, 32 undecided** (16
  distinct systems), from 192 / 0 / 64. The 32 new refutations come from
  **Lemma 4** (§4b) — a hand proof plus an exhaustive order-type check with a
  leave-one-out control on every hypothesis — and not from any solver run.
* **$\Pi_{14}$ is still NOT independently refuted, and nothing here changes
  Theorem 3.4's status or the status of $f(7,7)=38$**, which remains a
  candidate resting on an unproved import and unreviewed by any mathematician.
* **No branch of $\Pi_{14}$ has ever returned `sat`**, in this session or any
  previous one, and the solver-free sampler found 0 configurations for
  $\Pi_{14}$ itself while realising 18 of its 21 one-condition relaxations.

### The residual problem, stated exactly

After Lemmas 1–4, everything left is one inequality. Write $N$ for the line
$V_3V_4$.

> **What remains.** All 21 of $\Pi_{14}$'s conditions except
> $P_1 \not\times P_3$ are simultaneously realizable (§6.2, 213 exact
> non-degenerate configurations). $P_1\not\times P_3$'s first disjunct is
> refuted (Lemma 4). So $\Pi_{14}$ is unrealizable **iff**
> $$\operatorname{or}(3,4,1)\cdot\operatorname{or}(3,4,2) > 0$$
> is incompatible with the rest — i.e. iff $V_1$ and $V_2$ cannot lie on the
> same side of $N$.

What the frame already knows about $N$: the four signs
$\operatorname{or}(3,4,7)=-\eta$, $\operatorname{or}(3,4,8)=+\eta$,
$\operatorname{or}(3,4,9)=-\eta$, $\operatorname{or}(3,4,10)=+\eta$ — so $N$
separates $\{V_8,V_{10}\}$ from $\{V_7,V_9\}$, which is just $P_3$'s three
prescribed crossings read off. It knows **nothing** about
$\operatorname{or}(3,4,1)$, $\operatorname{or}(3,4,2)$,
$\operatorname{or}(3,4,11)$, $\operatorname{or}(3,4,12)$, and the sampler sees
both signs for all four.

### What a continuation should try, in order

1. **A third convex quadrilateral.** The tool has now been used three times: on
   $K$ (sides $P_0,P_1,P_2,L$) against $Q_4$ (Lemma 2) and against $Q_0,Q_2$
   (Lemma 3), and on $K'$ (sides $Q_0,Q_1,Q_2,M$) against $P_3$ (Lemma 4). $K$
   and $K'$ are inscribed in the *same* wedge $W$, interleaved: $a_0,a_2$ lie
   between $V_8$ and $V_9$ on one boundary ray, and $t_0,t_2$ lie between $V_1$
   and $V_2$ on the other. That interleaving has not been used at all, and it is
   the obvious place to look for the fourth instance.
2. **The wedge-chord reformulation.** *(Derived this session, sketched only —
   it is a statement about intersection points rather than about the eleven
   vertices, so none of it has been machine-checked and it should be treated as
   a lead, not a result.)* Seven of $\Pi_{14}$'s sides meet the wedge $W$ in a
   **chord** running from one boundary ray to the other:

   | chord | on $L$-ray $\rho_2$ | on $M$-ray $\rho_1$ |
   |---|---|---|
   | $P_0$ | $a_0 = P_0\cap Q_1$ | $V_1$ |
   | $P_2$ | $a_2 = P_2\cap Q_1$ | $V_2$ |
   | $P_3$ | $a_3 = P_3\cap Q_1$ | $s = P_3 \cap M$ |
   | $Q_0$ | $V_8$ | $t_0 = Q_0\cap P_1$ |
   | $Q_2$ | $V_9$ | $t_2 = Q_2\cap P_1$ |
   | $Q_3$ | $h_3 = Q_3\cap L$ | $t_3 = Q_3 \cap P_1$ |
   | $Q_4$ | $h_4 = Q_4\cap L$ | $t_4 = Q_4 \cap P_1$ |

   Two chords of a wedge cross **iff** their endpoints interleave on the two
   rays, so a whole layer of $\Pi_{14}$ becomes a statement about two linear
   orders. $a_0,a_2,a_3$ lie strictly between $V_8$ and $V_9$ (the three
   $\times Q_1$ crossings); $t_0,t_2,t_3,t_4$ lie strictly between $V_1$ and
   $V_2$; $h_3,h_4$ lie **outside** $[V_8,V_9]$ (that is $Q_1\not\times Q_3$
   and $Q_1\not\times Q_4$, i.e. the surviving disjunct of each); and
   **$\Pi_{14}$ needs $s$ outside $[V_1,V_2]$** — that is the surviving
   disjunct of $P_1\not\times P_3$, and by Lemma 4 it is the *only* thing left
   to refute.

   Four pairs meet only inside $W$ (their outside-$W$ parts lie in disjoint
   regions), so for those the chord test is exact: $P_0\not\times Q_0$ (Lemma
   3), $P_0\times Q_2$, $P_2\times Q_0$, $P_2\not\times Q_2$ (Lemma 3). Those
   four alone appear to force the order of $V_8,V_9$ along $\rho_2$ to be
   *opposite* to the order of $V_1,V_2$ along $\rho_1$; $P_0\not\times P_2$
   and $Q_0\not\times Q_2$ then appear to order $a_0$ against $a_2$ and $t_0$
   against $t_2$. **Verifying this reformulation needs a program that computes
   the seven intersection points in exact rational arithmetic and reports the
   two orders — that program does not exist yet, and nothing above should be
   quoted until it does.**
3. **Follow $P_3$ into $W$.** With $V_4$ below $M$ (Lemma 4), $P_3$ meets $W$ in
   the segment $[a_3,s]$, where $a_3 = P_3\cap Q_1 \in (V_8,V_9)$ is on
   $\partial K'$ and $s = P_3 \cap M$ is on the $M$-ray *outside* $[V_1,V_2]$ —
   that last fact being exactly the surviving disjunct of $P_1\not\times P_3$.
   Convexity of $K'$ then already forces **at least one of the two crossings
   $P_3\times Q_0$, $P_3\times Q_2$ to happen below $M$**. Pushing that, with
   $P_0\not\times P_3$ and $Q_0\not\times Q_3$ brought in, is the natural next
   step; it is where this session ran out of time.
4. **The 16 remaining distinct systems** (35, 39, 43, 47, 99, 103, 107, 111,
   163, 167, 171, 175, 227, 231, 235, 239, each transferring to its twin
   $n\oplus16$) are one structural situation, not 16 accidents: all of them are
   $Q_1\not\times Q_3$[bit 1], $Q_1\not\times Q_4$[bit 1], $P_1\not\times
   P_3$[bit 1], differing only in the disjuncts of $P_0\not\times P_2$,
   $P_0\not\times P_3$, $Q_0\not\times Q_2$, $Q_0\not\times Q_3$. Any lemma
   about the line $V_3V_4$ decides all 16 at once.
5. **Do not derandomise** (`FINDINGS.md` §6b) and shuffle the constraint order
   (`ASYMMETRY.md` §3); both still hold, and both were used throughout.

## 8. Files added this session

| file | what |
|---|---|
| `SYNTHETIC.md` | this document |
| `chirocheck.c` | `sampler.c` extended: records the $\eta$-normalised sign of all 165 triples and the truth value of all 29 cells; modes `thm`, `thm3`, `corex`, `lemma1`, `xs13`, `drop<k>`, `control` |
| `lemma2.c` | exhaustive check of steps S1, S2, S3, S5 and LEMMA 3 over all 3,315 order types x $8!$ labellings |
| `lemma3_loo.c` | leave-one-out non-vacuity control for LEMMA 3 |
| `core_q1q3.py`, `core_epsX.py` | randomised minimisation of the z3 refutation of the $V_{11}$ claim; both find the same 12-condition core |
| `derived.py` | the 48 facts the synthetic proof pins, each with its provenance |
| `derived_control.py`, `retry2.py` | soundness controls on `derived.py` (46+2 of 48 confirmed implied by z3, 0 wrong) |
| `check_derived_sampler.py` | cross-check of `derived.py` against `chirocheck`'s forced table |
| `ladder.py`, `ladder_L5.py`, `ladder_model.py` | the disjunct-free ladder of §6.1 and the exact re-check of its L4 model |
| `push_derived.py` | the open systems re-run with the derived facts added |
| `lemma4.c` | exhaustive check of LEMMA 4 with a leave-one-out control on all nine hypotheses |
| `lemma4_branch.py` | the direct z3 attempt at LEMMA 4's branch consequence, and its two controls |
| `lemma2_probe.py` | **a recorded negative result**: the first guess at LEMMA 2 was an *eight*-point statement on $V_0,V_1,V_2,V_3,V_8,V_9,V_{11},V_{12}$ (so the order-type database would have certified it). It is FALSE — z3 returns `sat` on all six variants, with and without each disjunct of $P_0\not\times P_2$. $V_7$ and $V_{10}$ are genuinely needed, which is why Lemma 2 is a ten-point statement and why the sampler rather than the database has to certify it. |
