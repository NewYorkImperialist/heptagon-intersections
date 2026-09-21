# Where the $Q_1 \not\times Q_3$ asymmetry comes from

*Session of 2026-09-20/21, later than everything in `FINDINGS.md`. Nothing here
overwrites `FINDINGS.md`; `FINDINGS.md` §14 is the dated pointer to this file.*

**Do not read this as a refutation of $\Pi_{14}$.** It is not. 64 of the 256
branches are still undecided, no branch has ever returned `sat`, and
`f(7,7)=38` remains a candidate resting on an unproved import and unreviewed by
any mathematician.

## 0. Summary of what is established here

1. **LEMMA 1** (§4): six of $\Pi_{14}$'s crossings plus one disjunct of its
   *only* prescribed $P$–$Q$ non-crossing determine the side of the line
   $V_8V_9$ for six other vertices. Four steps, no case analysis, and verified
   over all 3,315 eight-point order types and all $8!$ labellings with 0
   violations.
2. **The two disjuncts of $P_1\not\times Q_1$ are equivalent** (§6), so one of
   the eight branch coordinates is redundant and the 256-branch enumeration is
   really 128.
3. **THEOREM** (§7): the 13 prescribed crossings plus just two of the eight
   non-crossings force $\operatorname{or}(8,9,10),\operatorname{or}(8,9,11),
   \operatorname{or}(8,9,12)$ to alternate — so $Q_1\not\times Q_3$ and
   $Q_1\not\times Q_4$ must both take their **second** disjunct.
4. **The census goes from 76/0/180 to 192/0/64** (§7), with no new hard solver
   work.
5. **The asymmetry is real but §12's numbers were not** (§7, §9): 128-vs-64,
   not 74-vs-2, and the six "secondary" conditions are at exactly 96/128 each.
   Branches 30 and 46 are not exceptions (§8).
6. A second solver lever: the **order in which the constraints are asserted**
   (§3).

## 1. The 12-condition core (confirmed, four independent refutations)

Write $P_i=[V_i,V_{i+1}]$ ($i=0..3$), $Q_j=[V_{7+j},V_{8+j}]$ ($j=0..4$).

> **CORE0.** The following eleven conditions, together with
> $\operatorname{or}(8,9,11)\cdot\operatorname{or}(8,9,12) > 0$, are
> unsatisfiable over $\mathbb{R}^2$:
>
> * $\operatorname{or}(0,1,2)\cdot\operatorname{or}(0,1,3) > 0$  (the first disjunct of $P_0 \not\times P_2$)
> * $P_0 \times Q_1$, $P_0 \times Q_2$, $P_0 \times Q_4$
> * $P_1 \times Q_0$, $P_1 \times Q_2$, $P_1 \times Q_4$
> * $\operatorname{or}(1,2,8)\cdot\operatorname{or}(1,2,9) > 0$  (the first disjunct of $P_1 \not\times Q_1$)
> * $P_2 \times Q_0$, $P_2 \times Q_1$, $P_2 \times Q_4$

The last displayed inequality is the first disjunct of $Q_1 \not\times Q_4$.
Ten vertices: $0,1,2,3$ and $7,\dots,12$. $V_4$ does not occur, and neither
$P_3$ nor $Q_3$ occurs.

Equivalently, dropping the closer:

> **Claim A.** The eleven conditions above force
> $\operatorname{or}(V_8,V_9,V_{11})$ and $\operatorname{or}(V_8,V_9,V_{12})$
> to have **opposite** signs — i.e. the line through $Q_1$ separates $V_{11}$
> from $V_{12}$, so $Q_4$ must cross the *line* $Q_1$.

Status: `unsat` obtained on four independent runs (minimisation pass; and
shuffle-portfolio seeds 11, 22, 33, closing at 3 s, 9 s and 22 s). It is
*order-sensitive*: at the "natural" index order the same 12 constraints return
`unknown` after 24 s and after 48 s.

## 2. What CORE0 refutes: a 32-branch subcube

CORE0 fixes the disjunct of exactly three of the eight negated crossings —
$P_0\not\times P_2$, $P_1\not\times Q_1$ and $Q_1\not\times Q_4$, all to bit 0 —
and says nothing about the other five. Every branch agreeing with it on those
three bits therefore contains CORE0 and is unsatisfiable, whatever the other
five bits are. In the census numbering (bit $7-i$ for the $i$-th negated
condition in `pi14_common.PI14`) that is

    { n : bit7(n)=0, bit4(n)=0, bit0(n)=0 }   -- 32 branches

The final census refuted 8 of these 32. **24 are new.** Sixteen of the 32 have
$Q_1\not\times Q_3 = $ bit 1, the "hard" side; the census had refuted exactly
one of those sixteen (branch 46).

This is where branch 46 comes from: it is not special. It is a member of a
32-branch cube all of which are unsat, and it is the only member of that cube
on the hard side that the portfolio happened to close.

## 3. Constraint order is a randomisation dimension, and a strong one

`FINDINGS.md` §6b established a restart portfolio over `nlsat.seed`. There is a
second, independent knob that was not being used: **the order in which the
constraints are handed to the solver.**

CORE0 (12 constraints, §1) under the six-member seed portfolio of
`census_final.py`, with the constraints in their natural index order:

```
  6 seeds x 4 s   : unknown
  6 seeds x 8 s   : unknown
```

The same 12 constraints, shuffled:

```
  shuffle seed 11 : unsat at order #3   (9 s total)
  shuffle seed 22 : unsat at order #1   (3 s total)
  shuffle seed 33 : unsat at order #7   (22 s total)
```

In a 8-trial sweep at 3 s per trial, exactly 1 of 8 orders closed it. So the
order is worth about as much as the seed, and the two compose. Every result
below uses a seed+order portfolio (`shuffle_port.py`).

## 4. LEMMA 1 — verified exhaustively on the order-type database

The mechanism behind the asymmetry is a statement about the line $V_8V_9$, and
it lives on **eight** of the eleven vertices, so it can be checked the way
`pi8_human` checks its steps: over all 3,315 eight-point order types and all
$8!$ labellings. `lemma1.c` does that; `./lemma1` prints the table below.

> **LEMMA 1.** Assume the following seven of $\Pi_{14}$'s conditions:
>
> * $P_0 \times Q_1$, $P_0 \times Q_2$
> * $P_1 \times Q_0$, $P_1 \times Q_2$
> * $P_2 \times Q_0$, $P_2 \times Q_1$
> * $\operatorname{or}(1,2,8)\cdot\operatorname{or}(1,2,9) > 0$ — the **first**
>   disjunct of $P_1 \not\times Q_1$.
>
> Then, writing $\varepsilon = \operatorname{or}(V_8,V_9,V_1)$,
> $$\operatorname{or}(8,9,1)=\operatorname{or}(8,9,2)=\operatorname{or}(8,9,7)=\operatorname{or}(8,9,10)=\varepsilon,\qquad \operatorname{or}(8,9,0)=\operatorname{or}(8,9,3)=-\varepsilon .$$
>
> In words: the line through $Q_1$ has $V_1,V_2,V_7,V_{10}$ strictly on one
> side and $V_0,V_3$ strictly on the other.

Note the first equality is the **second** disjunct of $P_1\not\times Q_1$: under
the other six conditions, the first disjunct of that non-crossing *implies* the
second.

### The proof (no case analysis)

Normalise by reflection so that $\operatorname{or}(1,2,8)>0$; put $V_1$ at the
origin, $V_2$ at $(1,0)$, so $\operatorname{or}(1,2,c)=c_y$ and "$\operatorname{or}(1,2,\cdot)>0$" is
"above the $x$-axis". The hypothesis puts $V_8,V_9$ above it, and
$P_1\times Q_0$, $P_1\times Q_2$ put $V_7,V_{10}$ below it with both crossing
points inside the open segment $(V_1,V_2)$.

1. **Monotonicity.** $\operatorname{or}(V_7,V_8,(x,0))$ is affine in $x$ with
   slope $-(V_{8y}-V_{7y})<0$, and vanishes at the $Q_0$ crossing, which lies in
   $(0,1)$. So $\operatorname{or}(7,8,V_1)>0>\operatorname{or}(7,8,V_2)$. The
   same computation for $Q_2$ has slope $-(V_{10y}-V_{9y})>0$, so
   $\operatorname{or}(9,10,V_1)<0<\operatorname{or}(9,10,V_2)$. Hence
   $\operatorname{or}(7,8,1)=\operatorname{or}(9,10,2)$ — *this is the step that
   consumes the disjunct, and it is the only place it is used.*
2. **Core Lemma at $V_9$.** $Q_1$ and $Q_2$ share $V_9$ and both cross $P_0$, so
   $\operatorname{or}(8,9,1)=-\operatorname{or}(9,10,1)$.
3. **Core Lemma at $V_8$.** $Q_0$ and $Q_1$ share $V_8$ and both cross $P_2$, so
   $\operatorname{or}(7,8,2)=-\operatorname{or}(8,9,2)$.
4. Chain: $\operatorname{or}(8,9,1) \overset{2}{=} -\operatorname{or}(9,10,1)
   \overset{P_1\times Q_2}{=} \operatorname{or}(9,10,2)
   \overset{1}{=} \operatorname{or}(7,8,1)
   \overset{P_1\times Q_0}{=} -\operatorname{or}(7,8,2)
   \overset{3}{=} \operatorname{or}(8,9,2)$.
5. **Endpoint on the line.** $V_8$ lies *on* the line $V_8V_9$, so every point of
   the half-open segment $(V_8,V_7]$ is strictly on $V_7$'s side of it. The
   $P_1\times Q_0$ crossing point lies on that half-open segment and also on the
   segment $P_1$, which by step 4 is strictly on side $\varepsilon$. Hence
   $\operatorname{or}(8,9,7)=\varepsilon$. Identically with $V_9$, $Q_2$ and
   $V_{10}$: $\operatorname{or}(8,9,10)=\varepsilon$.
6. $\operatorname{or}(8,9,0)=-\varepsilon$ and $\operatorname{or}(8,9,3)=-\varepsilon$
   are the straddle halves of $P_0\times Q_1$ and $P_2\times Q_1$.

### Verification (`lemma1.c`, all 3,315 order types x all $8!$ labellings)

```
S1  H3,H4        => or(7,8,1)=-or(7,8,2) & or(9,10,1)=-or(9,10,2) :  4,731,680 cases, 0 violations
S2  H5,H6        => or(7,8,2) = -or(8,9,2)   [Core Lemma at V8]   :  7,122,240 cases, 0 violations
S3  H1,H2        => or(8,9,1) = -or(9,10,1)  [Core Lemma at V9]   :  7,122,240 cases, 0 violations
S4  H3,H4,H7     => or(7,8,1) =  or(9,10,2)  [monotonicity]       :  2,365,840 cases, 0 violations
E1  P1xQ0 + C1   => or(8,9,7)  = or(8,9,1)   [V8 on the line]     :  8,818,416 cases, 0 violations
E2  P1xQ2 + C1   => or(8,9,10) = or(8,9,1)   [V9 on the line]     :  8,818,416 cases, 0 violations

full hypotheses H1..H7                                            :      3,400 cases
C1..C5 (the five conclusions)                                     :          0 violations each

CONTROL: H1..H6 without the disjunct H7                           :     79,416 cases
         C1 fails there in                                        :     76,016   (H7 does real work)
```

Every step fires on millions of cases, and the control shows the conclusion is
false 96 % of the time without the disjunct, so nothing here is vacuous.

## 5. Why this makes the two disjuncts of $Q_1\not\times Q_3$ unequal

$\neg\mathrm{ProperCross}(V_8,V_9,V_{10},V_{11})$ is the disjunction

* **bit 0**: $\operatorname{or}(8,9,10)\cdot\operatorname{or}(8,9,11) > 0$
* **bit 1**: $\operatorname{or}(10,11,8)\cdot\operatorname{or}(10,11,9) > 0$

Lemma 1 pins $\operatorname{or}(8,9,10)=\varepsilon$ outright. So **bit 0
collapses to the single statement $\operatorname{or}(8,9,11)=\varepsilon$** —
one more vertex to place against a line whose position is already completely
determined for six of the other eight vertices. Bit 1, by contrast, is a
statement about $\operatorname{or}(10,11,8)$ and $\operatorname{or}(10,11,9)$,
and Lemma 1 says nothing whatever about the line $V_{10}V_{11}$.

That is the structural asymmetry: **one disjunct lands on a line that the rest
of the pattern has already determined, and the other lands on a line it has
not.** Exactly the same applies to $Q_1\not\times Q_4$, whose bit 0 is
$\operatorname{or}(8,9,11)\cdot\operatorname{or}(8,9,12)>0$ — also a statement
about the line $V_8V_9$ — which is why CORE0 closes with $Q_1\not\times Q_4$ and
the branch-1 core closes with $Q_1\not\times Q_3$, interchangeably.

Caveat, stated plainly: Lemma 1 requires the **first** disjunct of
$P_1\not\times Q_1$, so on its own it explains the asymmetry only on the half of
the space where that bit is 0. §6 shows the census's own cube data on the other
half.

## 6. The two disjuncts of $P_1\not\times Q_1$ are EQUIVALENT — the branch space has a redundant coordinate

Lemma 1 derives the second disjunct of $P_1\not\times Q_1$ from the first. The
converse also holds, from the **same six crossings**
($P_0\times Q_1$, $P_0\times Q_2$, $P_1\times Q_0$, $P_1\times Q_2$,
$P_2\times Q_0$, $P_2\times Q_1$), and `lemma1.c` checks it exhaustively:

```
CONTROL: H1..H6 without the disjunct : 79,416 cases
         first disjunct only         :      0
         second disjunct only        :      0
         both                        :  3,400      => EQUIVALENT
```

Since those six crossings are hypotheses of $\Pi_{14}$ in every branch,
**branch $n$ and branch $n\oplus 16$ have logically equivalent constraint
sets.** The 256-branch enumeration is really a 128-branch enumeration with one
coordinate duplicated, and the final census refuted a branch while leaving its
twin "undecided" 12 times.

I checked the other seven negated crossings the same way (`disj_implies.py`):
all seven have genuinely independent disjuncts. $P_1\not\times Q_1$ is the only
degenerate one.

## 7. THE THEOREM — and 192 of the 256 branches

Put Lemma 1 together with the solver work on $V_{11}$ and $V_{12}$ and the
statement becomes clean and disjunct-free:

> **THEOREM (this session).** $\Pi_{14}$'s thirteen prescribed *crossings*,
> together with just two of its eight prescribed *non-crossings* —
> $\neg\mathrm{ProperCross}(V_0,V_1,V_2,V_3)$ and
> $\neg\mathrm{ProperCross}(V_1,V_2,V_8,V_9)$ — force
> $$\operatorname{or}(8,9,10),\quad \operatorname{or}(8,9,11),\quad \operatorname{or}(8,9,12)$$
> to **alternate in sign**. Equivalently: both $Q_1\not\times Q_3$ and
> $Q_1\not\times Q_4$ must take their **second** disjunct.

Both non-crossings are needed: dropping either one makes the system satisfiable.
The complete grid (`theorem_grid.py`, `theorem_grid.log`), each entry a fresh
seed+order portfolio:

```
  13 crossings + P0/P2=--- + P1/Q1=--- + Q1/Q3=bit0 : sat        13 crossings + ... + Q1/Q4=bit0 : sat
  13 crossings + P0/P2=--- + P1/Q1=  0 + Q1/Q3=bit0 : sat                                        : sat
  13 crossings + P0/P2=--- + P1/Q1=  1 + Q1/Q3=bit0 : sat                                        : sat
  13 crossings + P0/P2=  0 + P1/Q1=--- + Q1/Q3=bit0 : sat                                        : sat
  13 crossings + P0/P2=  1 + P1/Q1=--- + Q1/Q3=bit0 : sat                                        : sat
  13 crossings + P0/P2=  0 + P1/Q1=  0 + Q1/Q3=bit0 : UNSAT                                      : UNSAT
  13 crossings + P0/P2=  0 + P1/Q1=  1 + Q1/Q3=bit0 : UNSAT                                      : UNSAT
  13 crossings + P0/P2=  1 + P1/Q1=  0 + Q1/Q3=bit0 : UNSAT                                      : UNSAT
  13 crossings + P0/P2=  1 + P1/Q1=  1 + Q1/Q3=bit0 : UNSAT                                      : UNSAT
```

All four disjunct combinations of the two non-crossings are refuted, so the
non-crossings can be used as genuine disjunctions and the theorem is
disjunct-free.

### Independent verification without z3

`sampler.c` searches for integer-coordinate configurations by exact-arithmetic
hill climbing — no solver, no floating point — and tests the conclusion on
everything it finds. Its positive control is the $f(7,7)\ge38$ certificate's own
11-point pattern on the same 21 cells, which it recovers 4,155 times in 15 s.

```
./sampler thm 60 31337
  15 conditions, 11 vertices
  configurations satisfying ALL hypotheses          : 15,457
  or(8,9,10) = or(8,9,1)                            : 15,457 cases, 0 violations
  or(8,9,10)*or(8,9,11) < 0                         : 15,457 cases, 0 violations
  or(8,9,11)*or(8,9,12) < 0                         : 15,457 cases, 0 violations

./sampler lemma1 15 7   : 127,790 configurations, 0 violations
./sampler core12 45 4242:  20,238 configurations, 0 violations (all three claims)
```

### The recount: 76 -> 192 of 256

`recount.py` applies two rules that need no further solver calls: the
$P_1\not\times Q_1$ equivalence of §6, and the subcube of every core found by
`cube_cover.py` (58 cores, each independently re-verified for a random sample of
six — all `unsat` again on a fresh portfolio).

```
  census (FINDINGS.md 12)     :  76 / 256
  + P1/Q1 equivalence         :  88 / 256
  + cube cover                : 190 / 256
  + both                      : 192 / 256
```

The 192 does **not** depend on the cube machinery: it follows from the eight
`UNSAT` entries of the grid above alone, since every branch takes at least one
disjunct of each non-crossing. Those eight were re-run end to end on fresh
seeds and closed again, in 0 s, 0 s, 0 s, 0 s, 4 s, 8 s, 8 s, 16 s. The cube
cover is an independent route to the same 190 and is what makes the two
mechanisms visible.

The recount of the asymmetry table is now flat everywhere except at the two
conditions the Theorem names:

```
  P0/P2:  bit0  96/128   bit1  96/128        Q0/Q2:  bit0  96/128   bit1  96/128
  P0/P3:  bit0  96/128   bit1  96/128        Q0/Q3:  bit0  96/128   bit1  96/128
  P1/P3:  bit0  96/128   bit1  96/128        Q1/Q3:  bit0 128/128   bit1  64/128
  P1/Q1:  bit0  96/128   bit1  96/128        Q1/Q4:  bit0 128/128   bit1  64/128
```

**The remaining 64 open branches are exactly the branches in which $Q_1\not\times
Q_3$ AND $Q_1\not\times Q_4$ both take their second disjunct** — the 64 indices
$n \equiv 3 \pmod 4$.

### So how much of the 74-vs-2 split was real?

Both parts. The effect is real — one disjunct of $Q_1\not\times Q_3$ is
*identically* refutable and the other is not — but the measured **size** of it
was mostly solver noise. The truth is 128 vs 64, not 74 vs 2, and the six
"secondary" conditions that `census_final_summary.txt` reported at 39–71 % are
at exactly 96/128 each, i.e. no effect at all.

## 8. Branches 30 and 46 are not exceptions

* **Branch 46** ($P_0\not\times P_2=0$, $P_1\not\times Q_1=0$,
  $Q_1\not\times Q_4=0$) contains CORE0 of §1 verbatim. CORE0 never mentions
  $Q_1\not\times Q_3$; branch 46 is refuted through its $Q_1\not\times Q_4$ bit
  instead. It is one of 32 branches in that cube and simply the only one on the
  hard side that the census portfolio happened to close.
* **Branch 30** has $P_1\not\times Q_1 = 1$, so it is not in that cube — but by
  the §6 equivalence it is logically the same branch as **14**, which is.

So neither is a counterexample to the structural story, and neither is special:
they are the two branches where the census's portfolio got lucky. The Theorem
refutes all 64 branches with $Q_1\not\times Q_4 = $ bit 0, of which 30 and 46
are members.

## 9. The one-line version of the asymmetry

The cleanest way to see it. Fix the Theorem's hypotheses — the 13 crossings plus
$P_0\not\times P_2$ and $P_1\not\times Q_1$ — and ask, for each $Q$-side, how
many of the $\binom{9}{2}=36$ pair-products $\operatorname{or}(j,j{+}1,u)\cdot
\operatorname{or}(j,j{+}1,v)$ over the nine other vertices are *forced*.
(Pair-products, not single signs: reflection flips every orientation and
preserves every crossing, so only even products can be forced — the lesson from
`pi8_human/forced2.c`.) `forced_89.py`, `forced_more.py`:

Every entry is a **lower bound**: a pair is counted only when one of the two
signs came back `unsat`, and `unknown` counts as not shown. (Re-running the
$V_8V_9$ row on different seeds gave 33 and 35; the two runs never disagree
about a *value*, they differ only in how many pairs timed out.)

| line | pairs shown forced, of 36 |
|---|---|
| $V_8V_9$ (the line of $Q_1$) | **33–35** |
| $V_9V_{10}$ | 15 |
| $V_7V_8$ | 10 |
| $V_{11}V_{12}$ | 10 |
| $V_{10}V_{11}$ (the line of $Q_3$) | **1** |

The line of $Q_1$ is *completely determined* by the rest of the pattern:

$$\{V_1,V_2,V_4,V_7,V_{10},V_{12}\}\ \big|\ \{V_0,V_3,V_{11}\}$$

(the pairs the probe left `unknown` are forced by transitivity through the
pairs it did settle). The line of $Q_3$ is determined in exactly one
pair, $(V_1,V_2)$, and that is nothing but the straddle half of
$P_1\times Q_3$, which is a hypothesis.

$Q_1\not\times Q_3$'s **first** disjunct is a statement about the line $V_8V_9$;
it lands on the 35/36 line and is decided outright. Its **second** disjunct is a
statement about the line $V_{10}V_{11}$; it lands on the 1/36 line and the
pattern has nothing to say about it. That is the asymmetry, and it is not a
solver artifact.

Why is the line of $Q_1$ the special one? Because $P_1\not\times Q_1$ is the
**only** prescribed $P$–$Q$ non-crossing in $\Pi_{14}$, and Lemma 1's
configuration — $Q_{j-1},Q_j$ sharing a vertex and both crossing one $P$-side,
$Q_j,Q_{j+1}$ sharing a vertex and both crossing another, and a third $P$-side
crossing $Q_{j-1}$ and $Q_{j+1}$ but prescribed to miss $Q_j$ — occurs at
$j=1$ and nowhere else in the pattern.

## 10. Where it stands

* **192 of 256 branches are refuted, 0 realizable, 64 undecided.** Up from
  76/0/180. The 64 are exactly those with $Q_1\not\times Q_3$ and
  $Q_1\not\times Q_4$ both taking their second disjunct ($n\equiv 3 \bmod 4$),
  which by §6 are only 32 genuinely distinct systems.
* Those 32 were each given a 24-member seed+order portfolio at 5 s per member,
  120 s per branch (`push64.py`, `push_*.log`): **all 32 returned `unknown`.**
  They are genuinely hard, not merely unlucky. No branch of $\Pi_{14}$ has ever
  returned `sat`, in this session or any previous one.
* **$\Pi_{14}$ is still not independently refuted, and nothing here changes
  Theorem 3.4's status or the status of $f(7,7)=38$,** which remains a candidate
  resting on an unproved import.

What a continuation should try, in order:

1. A synthetic proof of the $V_{11},V_{12}$ half of the Theorem. Lemma 1
   ($V_7,V_{10}$) is proved by hand and machine-checked exhaustively; the
   $V_{11},V_{12}$ half is currently solver + sampler evidence only. It needs
   ten points, so the order-type database cannot certify it — `sampler.c` is the
   substitute.
2. The 64 survivors are a *single* structural situation, not 64 accidents: both
   $Q_1\not\times Q_3$ and $Q_1\not\times Q_4$ second-disjunct, i.e. $V_8,V_9$
   on one side of both the line $V_{10}V_{11}$ and the line $V_{11}V_{12}$. Any
   lemma about $V_{11}$'s wedge would decide all 64 at once.
3. Order-shuffling (§3) roughly doubles what the portfolio closes and costs
   nothing; it should be folded into any future census.

### What $P_0 \not\times P_2$ is doing, and where the synthetic proof stops

$\neg\mathrm{ProperCross}(V_0,V_1,V_2,V_3)$ is exactly the statement that the
three-edge polyline $V_0 \to V_1 \to V_2 \to V_3$ is a **simple arc**. In the
normalisation of Lemma 1 the arc meets the line $V_8V_9$ in exactly two points
$Y_0 = P_0 \cap Q_1$ and $Y_2 = P_2 \cap Q_1$, both interior to the segment
$Q_1$; so the sub-arc $Y_0 \to V_1 \to V_2 \to Y_2$ closed up by the segment
$[Y_0,Y_2] \subset V_8V_9$ is a Jordan curve, and $V_8, V_9$ lie outside it.
That is plainly the right frame for the $V_{11}, V_{12}$ half of the Theorem,
and it is why $P_0\not\times P_2$ is one of the two non-crossings the Theorem
needs.

I could not finish that argument. The obstruction is concrete and worth
recording: the parity of how often a segment meets the Jordan curve depends on
cells of the pattern that $\Pi_{14}$ leaves **free** — $P_0 \times Q_0$ and
$P_0 \times Q_3$ among them — so counting crossings does not close without a
further idea. The $V_7, V_{10}$ half (Lemma 1) needs no such counting, which is
why it went through.

## 11. A second, solver-free search for a $\Pi_{14}$ configuration — and its control

`sampler.c` is a plain randomised hill-climber over integer coordinates with
exact arithmetic. It is not a decision procedure and cannot prove anything
negative, but it comes with a matched capability control, which is what makes
its silence worth recording.

```
control  : the f(7,7)>=38 certificate's own 21-cell pattern, same 11 vertices
           2,947 configurations found in 10 s
Pi_14    : the real 21-cell pattern, non-crossings as genuine non-crossings
           0 configurations in 100 s /  19,293 restarts
           0 configurations in 600 s / 148,208 restarts
```

Capability control, one cell of $\Pi_{14}$ flipped at a time (4 s each):

```
  18 of the 21 single-cell flips are realised, most of them hundreds of times
  3 are not: flip1 (P0 /x P3), flip18 (Q0 /x Q3), flip19 (Q1 /x Q3)
  flip20 (Q1 /x Q4) is realised exactly once in 4 s -- so the search does
  reach very thin patterns, just slowly
```

So the search is not obviously incapable: it finds 18 of $\Pi_{14}$'s 21
one-cell neighbours quickly, and $\Pi_{14}$ itself never. **This is evidence,
not proof, and it is consistent with — not independent confirmation of — the
Lean result.** A hill-climber that misses is a hill-climber that missed.

## 12. Files added this session

| file | what |
|---|---|
| `ASYMMETRY.md` | this document |
| `lemma1.c` | exhaustive check of Lemma 1 and of the $P_1\not\times Q_1$ disjunct equivalence over all 3,315 order types x $8!$ labellings |
| `sampler.c` | solver-free exact-arithmetic configuration search; modes `control`, `pi14`, `flip<k>`, `lemma1`, `core12`, `thm` |
| `shuffle_port.py` | seed **and constraint-order** portfolio |
| `core_tools.py`, `min_claim.py`, `deepmin.py` | randomised unsat-core minimisation |
| `cube_cover.py`, `cube_*.log` | per-branch cube extraction (58 cores) |
| `recount.py` | the 76 -> 192 recount |
| `disj_implies.py` | which negated crossings have interdependent disjuncts |
| `theorem_grid.py`, `forced_pairs.py`, `forced_89.py`, `forced_more.py`, `probe_q1line.py` | the probes quoted above |
| `drop_q1q3.py`, `push64.py` | the two solver sweeps |
| `chiro.py`, `chiro_gen.py`, `gp_check.py` | a chirotope/Grassmann-Plucker relaxation — **a dead end, kept deliberately**: the validated 3-term GP relations are too weak, they leave even $\Pi_8$ satisfiable |

---

## 13. Addendum, 2026-09-21 (later) — the synthetic half is finished, and the
## census moves to 224/0/32. See [`SYNTHETIC.md`](SYNTHETIC.md)

Nothing above is edited; this section records what a later session found and
which of the claims above it extends.

**§10's item 1 is done.** "A synthetic proof of the $V_{11},V_{12}$ half of the
Theorem" is **LEMMA 2** of `SYNTHETIC.md` §3. Its hypothesis set is exactly the
12-condition core z3 finds by randomised minimisation, for all four disjunct
combinations of the two non-crossings and three minimisation seeds.

**§10's stated obstruction is dissolved, not worked around.** §10 records that
"the parity of how often a segment meets the Jordan curve depends on cells
$\Pi_{14}$ leaves FREE — $P_0\times Q_0$ and $P_0\times Q_3$ among them".
**LEMMA 3** (`SYNTHETIC.md` §4) shows $P_0\times Q_0$ is not free at all: Lemma
1's seven conditions force $P_0 \not\times Q_0$ and $P_2\not\times Q_2$, checked
over all 3,315 order types with a leave-one-out control on every hypothesis. And
the proof does not count parities: the Jordan curve of §10 is recognised as the
boundary of a **convex quadrilateral** — its four vertices are $P_0\cap Q_1$,
$V_1$, $V_2$, $P_2\cap Q_1$, two on each boundary ray of the wedge
$\{$one side of $V_1V_2\} \cap \{$one side of $V_8V_9\}$, simple because
$P_0\not\times P_2$ — so "a straight segment meets it at most twice" replaces
the parity count, and no free cell can affect that.

**New: LEMMA 4, and 32 of the 64 open branches.** The same construction with the
roles of $P$ and $Q$ exchanged gives a second convex quadrilateral
$P_1\cap Q_0 \to V_8 \to V_9 \to P_1\cap Q_2$, simple because $Q_0\not\times
Q_2$. $P_3$ crosses three of its four sides, which forces
$\operatorname{or}(1,2,4) = -\operatorname{or}(1,2,8)$ — the first fact anything
in this project has pinned about $V_4$. With
$\operatorname{or}(1,2,3)=+\operatorname{or}(1,2,8)$ that **refutes the first
disjunct of $P_1\not\times P_3$ in every branch**, so the 32 open branches with
bit 5 of the index zero are refuted. Verified exhaustively on the order-type
database (266 cases, 0 violations) with a non-vacuous leave-one-out control on
all nine hypotheses.

**§10's counts are therefore superseded**: **224 of 256 branches refuted, 0
realizable, 32 undecided** (16 distinct systems), from 192 / 0 / 64. The 32 new
refutations are a hand proof plus an exhaustive 8-point check, not solver runs —
a direct z3 attempt on Lemma 4's branch consequence returned `unknown`.

**Unchanged.** $\Pi_{14}$ is still not independently refuted, no branch has ever
returned `sat`, and nothing here changes Theorem 3.4's status or the status of
$f(7,7)=38$. The residual problem is now a single inequality, stated exactly in
`SYNTHETIC.md` §7: can $V_1$ and $V_2$ lie on the same side of the line
$V_3V_4$?
