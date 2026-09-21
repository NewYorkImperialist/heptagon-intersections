"""NON-VACUITY CONTROLS for the generalised-shift checker.

A checker that always says "holds" proves nothing.  Each control is a statement
of the SAME SHAPE as the averaging claim, evaluated by the SAME code
(attack.check_instance), which is FALSE -- and the code must report it false.
"""
import sys, random, collections
from fractions import Fraction as F
sys.path.insert(0, __file__.rsplit('/', 1)[0])
from shift import is_simple, count, inter_points, vertex_vertex, vertex_side
from attack import check_instance, degset
from sweep2 import rand_simple

ok = lambda b: "PASS (control fired)" if b else "*** FAIL (control silent) ***"

def sweep(seed, target, exp, modes, vv=False, k=6, g=6):
    rng = random.Random(seed)
    tal = collections.defaultdict(lambda: [0, 0])
    tot = 0
    while tot < target:
        P = rand_simple(rng, k, g); Q = rand_simple(rng, k, g)
        if P is None or Q is None: continue
        if vv:
            ia, ib = rng.randrange(k), rng.randrange(k)
            dx, dy = P[ia][0]-Q[ib][0], P[ia][1]-Q[ib][1]
            Q = tuple((x+dx, y+dy) for (x, y) in Q)
            if not is_simple(Q): continue
            if not vertex_vertex(P, Q): continue
        else:
            if vertex_vertex(P, Q): continue
        if inter_points(P, Q) is None: continue
        if not degset(P, Q): continue
        for i in range(k):
            for m in modes:
                r = check_instance(P, Q, i, F(1, 2**exp), m)
                if r['status'] != 'ok': continue
                tal[m][0] += 1; tot += 1
                if not r['identity']: tal[m][1] += 1
    return tal

print("=" * 74)
print("CONTROL R1 -- FALSE claim: the averaging identity at a NOT-small shift.")
print("   Same code, same configurations, delta = 2^-3 instead of 2^-20.")
print("=" * 74)
t = sweep(901, 1200, 3, ('translate', 'tilt', 'akr'))
for m in t: print(f"   {m:<10} tested={t[m][0]:<6} violations={t[m][1]}")
print("  ", ok(all(v[1] > 0 for v in t.values())))

print()
print("=" * 74)
print("CONTROL R2 -- the 9.1-BEFORE-9.2 ordering is load-bearing for the REPAIR")
print("   too: averaging FAILS when a vertex-vertex degeneracy is still there.")
print("   Q is translated so one of its vertices coincides with a P-vertex.")
print("   delta = 2^-20, i.e. genuinely small.")
print("=" * 74)
t = sweep(902, 900, 20, ('translate', 'tilt', 'akr'), vv=True)
for m in t: print(f"   {m:<10} tested={t[m][0]:<6} violations={t[m][1]}")
print("  ", ok(all(v[1] > 0 for v in t.values())))

print()
print("=" * 74)
print("CONTROL R3 -- FALSE rule: 'skew', which moves A by delta*n and B by")
print("   2*delta*n, so the shifted side is NOT parallel to s and does not lie")
print("   on any single l_delta.  Identity must FAIL.  delta = 2^-20.")
print("=" * 74)
t = sweep(903, 1200, 20, ('skew', 'tilt'))
for m in t: print(f"   {m:<10} tested={t[m][0]:<6} violations={t[m][1]}")
print("  ", ok(t['skew'][1] > 0 and t['tilt'][1] == 0))

print()
print("=" * 74)
print("CONTROL R4 -- the clause-3 checker is not vacuous: it must report")
print("   NOT CLEARED for the pure translation on the perpendicular witness,")
print("   and CLEARED for the tilt on the same input.")
print("=" * 74)
P = tuple((F(x), F(y)) for x, y in [(0,0),(2,0),(4,0),(6,0),(6,4),(3,6),(0,4)])
Q = tuple((F(x), F(y)) for x, y in [(2,-2),(2,3),(5,3),(5,-2)])
for m in ('akr', 'translate', 'tilt'):
    r = check_instance(P, Q, 1, F(1, 2**24), m)
    print(f"   {m:<10} status={r['status']:<10} identity={r.get('identity')} "
          f"cleared={r.get('cleared')} degcount={r.get('dcount')}")
r1 = check_instance(P, Q, 1, F(1, 2**24), 'translate')
r2 = check_instance(P, Q, 1, F(1, 2**24), 'tilt')
print("  ", ok(r1['cleared'] is False and r2['cleared'] is True))
