# Extent-independent terminal-case proofs

These are proofs of cases **1, 2, 3, 4, 5, 6, 8, 10, 12**, under the
normalized hypotheses below. Case **11 is not proved here**.
Cases 7 and 9 are not re-proved here; their existing treatment is in
`docs/a7-independent-proof.md` §6.8. No exhaustive computer enumeration
is used in these proofs.

## 1. Hypotheses, coordinates, and boundary conventions

Use the local hypotheses (M), (SP), (SQ), (H) from
`docs/a7-independent-proof.md` §6.1, and its normalization (§§6.3–6.5).
In particular each of the twelve unmatched P–Q pairs properly crosses;
matched pairs are disjoint. Same-polygon sides have disjoint relative
interiors and may meet only at a shared polygon endpoint. Set

- `u=(-alpha,0)`, `w'=(0,-c)`, `alpha,c>0`;
- `a`: from u along `y=m(x+alpha)`, with `m>0`;
- `b`: from u to `(beta,0)`;
- `A'`: from w' to `(0,h)`;
- `B'`: from w' along `y=n*x-c`, with `n>m`.

Write `v=m*alpha`, `e=c/n`, `R=(c+v)/(n-m)`, and `T=(R,m*R+v)`.
The forced crossings give `beta>e`, `h>v`, and both a and B' extend
strictly past T. Their far endpoints are otherwise unrestricted. Define

`L(x,y)=y-m*x-v`, `N(x,y)=y-n*x+c`.

The faces used below are open:

- F1: `x<0, y>0, L<0`;
- F2: `x>0, y>0, L<0, N>0`;
- F4: `x>0, y<0, N>0`;
- F5: `x>0, L>0, N>0`;
- F6: `x<0, N<0`.

Thus F6 also has `y<-c` and `L<0`. Put `w=I(A,B)` and
`U=I(a',b')`. All named apices lie off the frame lines.
The twelve case numbers and face assignments are those of
`docs/a7-independent-proof.md` §6.8 (AKR PDF pp. 8–11).

**Boundary convention.** Claims about containing whole segments in unions
of faces include closures. Claims about a required P–Q crossing use open
faces unless a particular frame crossing is explicitly named. A crossing
cannot occur at a polygon vertex, by general position. In particular the
crossings used below cannot be at a frame vertex or an endpoint of a frame
side. A same-polygon shared endpoint can terminate a segment at a wall;
it cannot let its relative interior pass through that wall. Every line
crossing used to reach points on both sides of that line lies in the
relative interior of the travelling segment. Thus such a crossing is not
an allowed shared-endpoint contact. These facts cover the adjacency issue
identified in `docs/a7-independent-proof.md` §6.8(f).

### 1.1 Sealed faces, with the direction of passage made explicit

Let `O=(0,0)`, `V=(0,v)`, `E=(e,0)`. The closed faces F1, F2, F4 are,
respectively, the triangle uOV, quadrilateral OVTE, and triangle Ow'E.
Their boundaries are covered by frame **segments**, for all permitted
extents. The permitted frame crossing (door) of each free side is

| Side | Door | Other frame sides, which it cannot cross |
|---|---|---|
| A | b | a, A', B' |
| B | a | b, A', B' |
| a' | B' | a, b, A' |
| b' | A' | a, b, B' |

This is `docs/a7-independent-proof.md` §6.6, directly from (M), (SP),
(SQ). A segment starting outside a sealed face cannot have an interior
point in it before crossing its door. A segment leaving a sealed face
through its door cannot subsequently enter another sealed face through a
different point of that door: two non-collinear lines intersect only once.
Nor can it enter through a wall. These assertions follow by taking the
first boundary passage along the segment. The boundary convention above
excludes passage through corners.

Consequences that will be used repeatedly:

1. If w is in F1, A stays in F1 until its b crossing, then has `y<0`;
   B stays in F1 until its a crossing, then has `L>0`.
2. If w is in F2, A leaves across the edge OE of b, enters F4, and
   cannot leave again. Thus `A ⊂ cl(F2 ∪ F4)`.
3. If U is in F2, a' leaves across ET of B', and thereafter has `N<0`;
   b' leaves across OV of A', enters F1, and cannot leave again.
   The part of a' in F2 is precisely the subsegment from U to its door.
   It cannot visit F4: entry through a wall is forbidden and its unique
   B' crossing is on ET, not w'E.
4. If U is in F4, a' leaves across w'E of B', thereafter having `N<0`.

Each use below is about a bounded face; **no unbounded face is treated as
sealed**.

### 1.2 Elementary cone fact

A segment starting strictly inside a convex cone of angle less than pi,
and not passing through its apex, cannot meet both positive boundary
rays. Send those rays by an invertible linear map to the positive coordinate
axes. To meet both, both coordinates must decrease from positive values.
At the second coordinate's zero, the coordinate that vanished first is
negative. Thus the second meeting is not on the positive ray. Simultaneous
zeros would pass through the apex. This proves the fact.

Consequently `w ∉ int Cone(a',b')` if A must cross both a' and b'.
This is also (F7) in `docs/a7-independent-proof.md` §6.2. General position
excludes A passing through U.

## 2. Case 1: w in F1, U in F2

The side a' cannot enter F1: all three sides of that triangle are walls
for a'. Therefore its required meeting with A has `y<0`, and its required
meeting with B has `L>0`, by §1.1(1).

Let `(d_x,d_y)` be its direction from U toward its other endpoint.
Since U has `y>0, L<0`, these two meetings imply

`d_y<0`, and `d_y-m*d_x>0`.

In particular `d_x<0`. But a' must leave F2 through B', so §1.1(3) gives
`d_y-n*d_x<0`. This is impossible, since

`d_y-n*d_x = (d_y-m*d_x) - (n-m)*d_x > 0`.

This accounts for all points of A and B beyond their forced crossings,
regardless of their lengths. **Case 1 is closed.** Neither hooking condition
is used beyond the specified face memberships.

## 3. Case 2: w in F1, U in F4

Again a' cannot enter F1, so meeting B requires reaching `L>0`.
Since `L(U)<0`, its direction satisfies `d_y-m*d_x>0`.
Its B' door crossing gives `d_y-n*d_x<0` by §1.1(4).
Subtracting gives `(n-m)*d_x>0`, hence `d_x>0` and `d_y>0`.
Thus the entire side a' has `x>0` and `y>-c`, since U in F4 has
these properties.

A's required b crossing is in the edge uO, hence at a negative abscissa.
After that crossing A has `y<0`. If A subsequently reaches `x>0`, it
must first cross the line x=0 with `y<0`. To avoid the segment A', that
crossing must have `y<-c`. Its y coordinate continues to decrease, so
**every point of A with x>0 and outside F1 has y<-c**.
A has no points with x>0 inside F1. It therefore cannot meet a', whose
points have x>0 and y>-c. **Case 2 is closed.**

## 4. Case 3: w in F1, U in F5

First locate the two doors, without fixing any endpoint lengths.

Let `C=a'∩B'`. Before reaching C, a' has `N>0`, as does U.
If C were on w'E, the approach to C would be inside F4; if C were on
ET, the approach would be inside F2. Both are impossible: a' starts
outside these sealed faces and has not yet crossed its door. Thus
`C_x>R`, and in particular `C_y>0`.

Let `D=b'∩A'`. The direction of b' has negative x component.
If `-c<D_y<0`, its approach to D from x>0 would be inside F4;
if `0<D_y<v`, it would be inside F2. The same first-entry argument
excludes these. Therefore `D_y>v>0`.

The side a' cannot enter F1, which has no door for it. The side b'
cannot enter F1 either: its only possible entrance would be across OV,
whereas its unique A' crossing D is above V. Thus their required
crossings with A are both below b, by §1.1(1). In particular both
sides have negative y direction.

Their b-line crossings occur after C and D, respectively, since those
points have positive y. Write these crossings as `(r,0)` on a' and
`(l,0)` on b'. After C, a' has `N<0`, so `-n*r+c<0`, or `r>e`.
It cannot cross the segment b, giving `r>beta`. After D, b' has x<0,
so `l<0`, and avoiding b gives `l<-alpha`.

Let A's b crossing be `(t,0)`, where `-alpha<t<0`.
We have `l<t<r`. The open interval from `(l,0)` to `(r,0)` lies
strictly inside the cone at U through these two points: for example,
its points are positive convex combinations of their two direction
vectors from U. These are the directions of b' and a'.

Truncate A at `(t,0)`, retaining its portion below b. Both required
crossings with a', b' are on this portion. It starts strictly inside
`Cone(a',b')`, so §1.2 forbids both crossings. **Case 3 is closed.**

## 5. A lemma for U in F6, valid with arbitrary frame extents

Assume `U=(s,t)` is in F6, and `w∈Cone(a,b)` (strictly off its boundary).
Assume the matching and simplicity conditions and that both a', b'
meet B. Then their supporting lines have forms

`a': y=k_a*x+r_a`,  `b': y=k_b*x+r_b`,

with directions toward increasing x, and

1. `k_b>k_a>n>m`;
2. `r_a<-c`, `r_b>v`;
3. a' crosses the line b at an abscissa greater than beta;
4. b' crosses that line at an abscissa less than -alpha, so `s<-alpha`;
5. every point on the line b' with `x≥-alpha` is strictly above the line a.

**Proof.** U has x<0, y<-c, L<0, N<0. Both directions have positive
x component, because the a' door is on B' at x>0 and the b' door is
on A' at x=0. In particular neither line is vertical.

Before its required a crossing, B has y>0: both w and that crossing
have positive y. After that crossing B has L>0, since L(w)<0 and
its supporting line crosses L=0 only once. Thus B contains no point
satisfying **both** `y<0` and `L<0`.

If either a' or b' enters F4 through its door, it cannot leave that
sealed face again. Its endpoint is then in cl(F4). Both U and every
point of cl(F4) have y≤0 and L<0, and the relative interior of the
segment from U to that endpoint has y<0. Affine linearity implies
that whole relative interior has y<0 and L<0. Such a side cannot
properly cross B. Therefore neither door enters F4.

Put `C=a'∩B'`. Since N(U)<0 and C has x>0, its line slope satisfies
`k_a>n`. On x=0, before reaching C, its N value is negative, so
`r_a<-c`. If `0<C_x<e`, the side enters F4 from below B', which has
just been excluded. Hence C_x>e and C_y>0. Its y=0 crossing is
between x=0 and C_x, and cannot be on b, so its abscissa is >beta.

Put `D=b'∩A'=(0,r_b)`. Since `r_b>-c`, whereas N(U)<0, we have
`k_b>n`. If `-c<r_b<0`, b' enters F4 from the left, excluded above.
Thus r_b>0. Its y=0 crossing has negative abscissa, and must be
strictly left of -alpha. Write that abscissa as z. Then

`r_b=-k_b*z>k_b*alpha>m*alpha=v`.

Also s<z<-alpha, since U has negative y and k_b>0. For x≥-alpha,

`(k_b*x+r_b) - m(x+alpha)
 = (k_b-m)(x+alpha) + k_b*(-alpha-z) > 0`.

Finally the two lines meet at U, so
`r_b-r_a=(k_b-k_a)*(-s)`. Here `r_b>0>r_a` and `-s>0`, giving
`k_b>k_a`. This proves all five assertions. The uses of strict
inequalities at b are legitimate even when sides are adjacent: the
line crossing is followed by a required crossing or a door on the
other side, so it lies in the side's relative interior. ∎

### 5.1 Case 4: w in F1, U in F6

Apply the lemma. For `-alpha<w_x<0`, the line a' has negative y
because k_a>0 and r_a<0. Hence w is above it. By assertion 5, w is
below the line b', since w is below a. Moreover `w_x>-alpha>s`.
The two rays a', b' point right, have common apex U and slopes
`k_a<k_b`. At any x>s their convex cone consists exactly of points
between their two line heights (solve for the two nonnegative
coefficients of the direction vectors, or take the interval section
at that x). Therefore w is strictly inside `Cone(a',b')`.
Section 1.2 contradicts A crossing both sides. **Case 4 is closed.**

### 5.2 Case 8: w in F2, U in F6

Again apply the lemma. Here `A ⊂ cl(F2 ∪ F4)` by §1.1(2).
These faces have x≥0 and are below a. Assertion 5 puts the line b'
strictly above a for x≥0. Thus A cannot meet b', contrary to (M).
**Case 8 is closed.** This proof does not assert that w is inside
`Cone(a',b')`; that stronger claim is unnecessary.

## 6. Case 5: w and U in F2 — including the residual branch

Let `C=a'∩B'` on ET, `D=b'∩A'` on OV. All crossings of A with a'
and b' occur on the respective initial subsegments UC and UD inside
F2. Indeed A is confined to cl(F2∪F4); a' cannot visit F4 and its
F2 portion is UC; b' is confined to cl(F2∪F1), with F2 portion UD
(§1.1). A's b crossing lies on OE.

We prove, rather than infer from a drawing, that the polygon
`O,E,C,U,D` is convex. Apply an invertible affine map taking w' to
(0,0), the ray B' to the positive x-axis, and the ray A' to the
positive y-axis. Write

`O=(0,c0), E=(e0,0), C=(r,0), D=(0,d), U=(p,q)`,

where `0<c0<d`, `0<e0<r`, `p,q>0`. U is strictly on the F2 side
of the line OE. The cone directions from U are C-U and D-U.
Put `K=p*d+r*q-r*d`.

The second hooking hypothesis is `(0,0)∈Cone(U;C,D)`.
The two directions are independent, and solving
`-U=lambda*(C-U)+mu*(D-U)` gives

`lambda=p*d/K`, `mu=r*q/K`.

Both numerators are positive. Cone membership therefore implies
`K>0` (and conversely K>0 implies strict membership).

Here is a supporting-line verification of convexity. Orient the edges
in the order O→E→C→U→D→O.

- For OE, E→C, and D→O, every other vertex is strictly on the left:
  this follows respectively from U being in F2 and C,D being beyond
  E,O on their axes, from positive y, and from positive x.
- For C→U, the determinants with D and w' are respectively K and r*q,
  both positive. O is strictly between w' and D; E is strictly between
  w' and C. By affine linearity of the determinant, both are also
  strictly left of C→U.
- For U→D, the determinants with C and w' are respectively K and p*d,
  both positive. The same convex-combination argument treats O and E.

Thus every listed edge supports the convex hull of the five vertices,
with the other three vertices strictly on its left. Consequently those
five edges are the boundary of their convex hull: no other vertex can
interrupt an exposed edge, and the edges already form a cycle through
all vertices. This proves strict convexity of the pentagon.

A crosses the three distinct boundary edges OE, CU, UD properly, as
proved in the first paragraph. Its supporting line is not any of
those edge lines. A line not containing an edge meets the boundary
of a convex polygon in at most two points: intersection with the
polygon is an interval, and only its two ends can be boundary points
unless the line contains a boundary interval. Contradiction.

**Case 5 is closed, including the `a'×B` outside-F2 branch left in
`docs/a7-independent-proof.md` §6.7.** The proof uses the second hooking
condition, exactly in K>0. It does not assume a bound on any far
endpoint, or a location for `a'×B`. It supplies the convexity and
boundary-crossing justifications for the pentagon used by AKR on
PDF p. 10.

## 7. Explicit symmetry: cases 6 and 10

There is no unverified appeal to a picture here. Given the old labels,
set the new labels to

| New | a | b | a' | b' | A | B | A' | B' |
|---|---|---|---|---|---|---|---|---|
| Old | B' | A' | B | A | b' | a' | b | a |

and change coordinates by `(x_new,y_new)=(y_old,x_old)`.
This exchanges the two polygons and preserves every required crossing,
matched disjointness and within-polygon noncrossing. It also preserves
all shared-apex pairs. The normalized parameters become

`alpha_new=c`, `c_new=alpha`, `m_new=1/n`, `n_new=1/m`.

Direct substitution in the face inequalities gives

`F4_old → F1_new`, `F2_old → F2_new`, `F3_old → F5_new`.

The new w is the old U, and the new U is the old w.
Thus case 6 (`w∈F2,U∈F4`) becomes case 1; case 10
(`w∈F3,U∈F4`) becomes case 3. Their proofs used only the local
crossing/simplicity conditions and those face memberships, not a
hooking condition that might change under this exchange.
**Cases 6 and 10 are closed.**

## 8. Case 12: w in F3, U in F6

Here F3 is `y>0, L<0, N<0`; in particular x>e>0.
Apply the lemma of §5 and keep its notation. The line b' is above a
at every positive x. Thus w is strictly below b'. Since w is to the
right of U, if w were above the line a', it would be in the cone
between the two rays, contradicting §1.2. Hence **w is below a'**.

Let `H=B∩a`. We first prove `H_x>R`. Before H, B has L<0.
If H were on uV, its approach would lie in F1; if H were on VT,
its approach would lie in F2. But B starts in F3, outside both
sealed faces, and before H has not used its sole door a. Both
approaches are impossible by first entry. Thus H_x>R. Let f be
the far endpoint's abscissa on a, so `R<H_x<f`.

Let `C=a'∩B'` and write `q=C_x`. By §5, `k_a>n` and `q>0`.
The crossing of the *lines* a' and a has abscissa

`z=(v-r_a)/(k_a-m)`.

The possibility q=R is excluded: C would be T, giving a forbidden
same-polygon intersection of a' with the interior of a. There are
two remaining cases.

### 8.1 q<R

At x=q the line a' equals B' and is below a; at x=R it is above a,
since its slope exceeds n and it crossed B' at q<R. Thus
`q<z<R`. The side a' cannot reach z: a contains that point, and
a' would pass through it in its relative interior. Its far endpoint
therefore has x<z. In particular **all of a' has L<0**.

At H, where H_x>R>z, the line a' is above a, so H is below a'.
We already know w is below a'. Thus the subsegment wH of B cannot
meet a'. After H, B has L>0, whereas all of a' has L<0. This
contradicts the required B–a' crossing.

### 8.2 q>R

At x=R the line a' is below a; at x=q it is above a. Thus
`R<z<q`. The side a' passes through its line-a crossing z on its
way to C. Simplicity forces that crossing to lie strictly beyond
the far endpoint of a, giving

`R<H_x<f<z<q`.

At H the line a' is below a, so H is above a'. Since w is below
a', B crosses a' at a unique point Z strictly between w and H.
Both endpoints have positive x and positive y; before H, B has L<0.
Thus `Z_x>0`, and L(Z)<0 on the line a' implies `Z_x<z<q`.
Because a' has slope greater than n and meets B' at q, we have
**N(Z)<0**.

The points w and H are both below the line b' (each is at positive
x and on or below a). Hence the required crossing `Y=B∩b'` is
strictly after H along B. In particular L(Y)>0.

We show Y_x>0, including the possibility of B travelling leftwards.
If Y_x=0, B meets A' at D=b'∩A', forbidden by (SQ).
If Y_x<0, the portion of B from H to Y crosses x=0 at J. It is
after H, so `J_y>v`. Avoiding the actual segment A' forces `J_y>h`.
But b' meets x=0 at r_b<h. Thus J is above b', while H is below
b'. B would already cross b' between H and J, at positive x,
contradicting its unique line intersection Y. Therefore Y_x>0.
As `k_b>n` and `r_b>-c`, this gives **N(Y)>0**.

Between Z and Y, B must cross the line B', at a point V. We now
bound its x coordinate so that this is a crossing of the actual
segment, not a free extension.

- If B has nonpositive x direction, then
  `0<Y_x≤V_x≤Z_x<q` (strictness at V follows from opposite N signs).
- If it has positive x direction and Y_x≤q, the same conclusion
  `0<V_x<q` follows by interpolation, with N(Z)<0<N(Y).
- If it has positive x direction and Y_x>q, consider its point Jq
  at x=q. This point is after Z, so it is above the line a': B
  crossed that line from below to above at Z. At x=q, a' equals
  B'. Hence N(Jq)>0. The zero of N between Z and Jq occurs with
  `0<V_x<q`.

In all cases V lies strictly between w' and C on B'. This entire
interval is contained in the actual side B', since C is a required
crossing. B therefore crosses B', contrary to (SQ).

Both subcases are impossible. **Case 12 is closed.** All bounds on
V use forced crossings, and no upper bound on any free extent is
assumed.

## 9. What remains open in this work

Case **11** remains open. Its two apices lie in unsealed faces
(w in F3, U in F5), so the initial containment arguments used in
§§2–4 and 6 do not apply. The §5 slope lemma requires U in F6
and is therefore unavailable.

There is a rigorous partial observation. The door-location argument in
§4 depends only on U being in F5, so C=a'∩B' is beyond T and
D=b'∩A' is above V. Let J=A∩b. If J were on uO or OE,
A would approach J from inside F1 or F2 before using its b door,
impossible by first entry. Thus `e<J_x<beta`.
Both w and J have positive x and N<0; all of A before J therefore
has positive x and N<0. Before D, b' has positive x and N>0
(by interpolation between U and D). After D it has negative x.
So A cannot meet b' before J. After J, A has negative y; before
D, b' has positive y. Consequently A∩b' is after both J and D:
it has **negative x and negative y**. This proves that initial
location claim without bounding any extent.

We did not go on to prove the triangle-containment step or its final
visibility consequence (AKR PDF p. 11;
`docs/a7-independent-proof.md` §6.8, case 11). In particular the
location just proved does not by itself locate A∩a', establish all
needed containment relations with a, or block B beyond the frame ends.

Combining this work with the existing case-7 and case-9 arguments would
leave **one terminal case**, not establish Lemma 7. Those existing proofs
and their reduction are cited dependencies, not independently formalized
or machine-certified by this note.
