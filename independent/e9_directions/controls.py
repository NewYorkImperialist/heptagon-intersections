#!/usr/bin/env python3
"""Non-vacuity and adversarial controls for sweep.py."""
from fractions import Fraction as F
from sweep import some_direction_works, crossings, cone_prediction, parallel, EPS

def V(x,y): return (F(x),F(y))

print("=== CONTROL 1: the checker must be able to say NO ===")
# all four ray directions collinear along the x-axis: every orient() vanishes,
# so no proper crossing is possible for ANY translation direction.
a1,a2,b1,b2 = V(1,0), V(-1,0), V(2,0), V(-2,0)
E = some_direction_works(a1,a2,b1,b2)
print(f"  all four directions collinear -> {'FOUND ' + str(E) if E else 'no direction'}"
      f"   (want: no direction)   {'PASS' if E is None else 'FAIL'}")

# P's V collapsed onto a line, Q's V generic: P can never cross transversally?
a1,a2 = V(1,0), V(-1,0)          # straight-through P vertex
b1,b2 = V(0,1), V(1,3)
E = some_direction_works(a1,a2,b1,b2)
print(f"  P straight-through, Q generic -> {'found ' + str(E) if E else 'no direction'}"
      f"   (a real V for Q, so a crossing should exist)")

print()
print("=== CONTROL 2: positive control, an obvious crossing exists ===")
a1,a2 = V(-1,1), V(-1,-1)        # P's V opening left
b1,b2 = V(1,1), V(1,-1)          # Q's V opening right
E = some_direction_works(a1,a2,b1,b2)
print(f"  opposed V's -> {'found ' + str(E) if E else 'NO DIRECTION'}"
      f"   {'PASS' if E else 'FAIL'}")

print()
print("=== CONTROL 3: the K-10 killer -- nested cones Cone_P subset Cone_Q ===")
# P's V is a narrow wedge strictly inside Q's wide wedge, both opening right.
a1,a2 = V(10,1), V(10,-1)        # narrow
b1,b2 = V(1,10), V(1,-10)        # wide
print(f"  nested? P-wedge inside Q-wedge by construction")
E = some_direction_works(a1,a2,b1,b2)
print(f"  some direction works -> {'YES ' + str(E) if E else 'NO'}")
if E:
    n = crossings(a1,a2,b1,b2,E,EPS)
    print(f"    it yields {n} proper crossing(s)")
# and show the NAIVE rule fails on the same configuration
for naive in (V(1,0), V(-1,0)):
    n = crossings(a1,a2,b1,b2,naive,EPS)
    print(f"    naive fixed direction {naive}: {n} crossings"
          f"{'   <- this is the K-10 failure' if n==0 else ''}")

print()
print("=== CONTROL 4: does the count SURVIVE as eps shrinks? ===")
a1,a2 = V(10,1), V(10,-1); b1,b2 = V(1,10), V(1,-10)
E = some_direction_works(a1,a2,b1,b2)
for k in (3,5,7,9,12,20):
    print(f"    eps=1e-{k}: {crossings(a1,a2,b1,b2,E,F(1,10**k))} crossings")
