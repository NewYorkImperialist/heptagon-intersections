"""NON-VACUITY CONTROLS for the Sect. 9.2 averaging checker.

A checker that always says "holds" proves nothing.  Each control below is a
statement of the SAME SHAPE as the averaging claim, evaluated by the SAME code,
which is FALSE -- and the code must report it false.
"""
import sys, random
from fractions import Fraction as F
sys.path.insert(0, __file__.rsplit('/', 1)[0])
from shift import (is_simple, count, shift_side, inter_points, vertex_vertex,
                   vertex_side, sides, seg_inter)
from sweep2 import rand_simple, classify

D = F(1, 2**20)
ok = lambda b: "PASS (control fired)" if b else "*** FAIL (control silent) ***"

print("=" * 72)
print("CONTROL 0 -- the intersection counter itself, on hand-checked inputs")
print("=" * 72)
# unit square P, and a Q whose vertex sits exactly on the bottom side of P
P = ((F(0),F(0)), (F(4),F(0)), (F(4),F(4)), (F(0),F(4)))
# Q touches the bottom side from above at (2,0): a "touching" degeneracy
Qt = ((F(1),F(2)), (F(2),F(0)), (F(3),F(2)))
# Q crosses the bottom side at (2,0): a "crossing" degeneracy
Qc = ((F(1),F(2)), (F(2),F(0)), (F(3),F(-2)), (F(1),F(-2)))
print("  square x touching-V   count =", count(P, Qt), " (hand value: 1)")
print("  square x crossing-V   count =", count(P, Qc), " (hand value: 2: Q meets the bottom side at (1,0) and at the vertex (2,0))")
print("  two disjoint squares  count =",
      count(P, ((F(10),F(10)),(F(11),F(10)),(F(11),F(11)))), " (hand value: 0)")
print("  overlapping sides ->", inter_points(P, ((F(1),F(0)),(F(3),F(0)),(F(2),F(5)))),
      " (must be None = infinite)")

print()
print("=" * 72)
print("CONTROL 1 -- explicit touching: shift must give 2 one way and 0 the other")
print("=" * 72)
# shift the BOTTOM side of P (side index 0, from (0,0) to (4,0)); left normal
# of (4,0) is (0,4), so delta>0 moves the side UP, into the touching V.
for sgn in (+1, -1):
    Pp = shift_side(P, 0, sgn*D, 'akr')
    print(f"  delta={sgn}*2^-20  count =", count(Pp, Qt))
cp = count(shift_side(P, 0, D, 'akr'), Qt)
cm = count(shift_side(P, 0, -D, 'akr'), Qt)
print(f"  sum = {cp+cm}, 2*original = {2*count(P,Qt)}  -> averaging holds:",
      cp+cm == 2*count(P, Qt))

print()
print("=" * 72)
print("CONTROL 2 -- FALSE claim A: 'the shift never changes the count'")
print("   (i.e. count(+d) == count(0)).  Must be reported FALSE.")
print("=" * 72)
print("   count(+d) =", cp, " count(0) =", count(P, Qt), " equal?", cp == count(P, Qt))
print("  ", ok(cp != count(P, Qt)))

print()
print("=" * 72)
print("CONTROL 3 -- FALSE claim B: 'some direction STRICTLY increases the count'")
print("   Must be reported FALSE on the crossing configuration.")
print("=" * 72)
c0 = count(P, Qc)
cpp = count(shift_side(P, 0, D, 'akr'), Qc)
cmm = count(shift_side(P, 0, -D, 'akr'), Qc)
print(f"   crossing config: count(0)={c0} count(+d)={cpp} count(-d)={cmm}")
print("  ", ok(max(cpp, cmm) <= c0))

print()
print("=" * 72)
print("CONTROL 4 -- the 9.1-first ORDERING is load-bearing:")
print("   averaging FAILS when a vertex-vertex degeneracy is still present.")
print("   Same code, same delta; the only change is that Q is translated so")
print("   that one of its vertices coincides with a vertex of P.")
print("=" * 72)
rng = random.Random(4242)
bad = tot = 0
worst = []
while tot < 300:
    A = rand_simple(rng, 6, 6); B = rand_simple(rng, 6, 6)
    if A is None or B is None: continue
    ia = rng.randrange(6); ib = rng.randrange(6)
    dx = A[ia][0] - B[ib][0]; dy = A[ia][1] - B[ib][1]
    B = tuple((x + dx, y + dy) for (x, y) in B)
    if not is_simple(B): continue
    if inter_points(A, B) is None: continue
    if not vertex_vertex(A, B): continue
    c = count(A, B)
    for i in (ia, (ia - 1) % 6):          # the two sides at the shared vertex
        Pp = shift_side(A, i, D, 'akr'); Pm = shift_side(A, i, -D, 'akr')
        if Pp is None or Pm is None: continue
        if not (is_simple(Pp) and is_simple(Pm)): continue
        x, y = count(Pp, B), count(Pm, B)
        if x is None or y is None: continue
        tot += 1
        if x + y != 2*c:
            bad += 1
            if len(worst) < 3: worst.append((c, x, y))
print(f"   tested={tot} violations={bad}   examples (c0,c+,c-): {worst}")
print("  ", ok(bad > 0))

print()
print("=" * 72)
print("CONTROL 5 -- FALSE claim D: averaging at a NOT-small shift")
print("   The same code, same configurations, delta = 2^-3 instead of 2^-20.")
print("=" * 72)
rng = random.Random(778)
bad = tot = 0
while tot < 400:
    A = rand_simple(rng, 6, 6); B = rand_simple(rng, 6, 6)
    if A is None or B is None: continue
    if inter_points(A, B) is None or vertex_vertex(A, B) or not vertex_side(A, B):
        continue
    c = count(A, B)
    for i in range(6):
        Pp = shift_side(A, i, F(1,8), 'akr'); Pm = shift_side(A, i, F(-1,8), 'akr')
        if Pp is None or Pm is None: continue
        if not (is_simple(Pp) and is_simple(Pm)): continue
        x, y = count(Pp, B), count(Pm, B)
        if x is None or y is None: continue
        tot += 1
        if x + y != 2*c: bad += 1
print(f"   tested={tot} violations={bad}")
print("  ", ok(bad > 0))

print()
print("=" * 72)
print("CONTROL 6 -- the construction is UNDEFINED at a straight vertex")
print("   P has three consecutive collinear vertices; shifting the side that")
print("   follows them has no Fig.-28 endpoint.  shift_side must return None,")
print("   and the 'translate' repair must not.")
print("=" * 72)
Pstraight = ((F(0),F(0)), (F(2),F(0)), (F(4),F(0)), (F(4),F(4)), (F(0),F(4)))
print("   P simple?", is_simple(Pstraight))
print("   akr  shift of side 1 = [(2,0),(4,0)] ->", shift_side(Pstraight, 1, D, 'akr'))
print("  ", ok(shift_side(Pstraight, 1, D, 'akr') is None))
t = shift_side(Pstraight, 1, D, 'translate')
print("   translate shift of side 1 ->", "defined" if t is not None else "None")
print("  ", ok(t is not None))
