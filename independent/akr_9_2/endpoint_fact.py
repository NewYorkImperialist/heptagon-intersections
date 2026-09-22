"""Fact (E): the distance between two DISJOINT closed segments in the PLANE is
attained at a pair in which at least one point is an endpoint.

    dist(sigma,t) = min( d(p,t), d(q,t), d(c,sigma), d(d,sigma) )
    for sigma=[p,q], t=[c,d]  with  sigma n t = empty.

This is the unstated step ATTACK.md 4.4 says REPAIR.md 2.4 needs.

The test must NOT be circular: `attack3.d2_seg_seg` *is* the endpoint formula,
so it cannot be used as ground truth.  Here the true minimum is bracketed by
three independent code paths:

  * `crit`   -- the interior critical point of g(s,tau)=|p+s e - c - tau f|^2,
                solved exactly as a 2x2 rational system, kept only if it lies
                in the OPEN unit square;
  * `grid`   -- exact evaluation of g on a rational grid of (s,tau);
  * `endpt`  -- the four endpoint-to-segment distances (the claim).

Fact (E) says  min(crit, grid) >= endpt  for disjoint planar segments.
A violation is a rational witness and would refute the fact.

Controls: the same checker is run (a) on INTERSECTING planar segments, where
the claim is false and must be reported false; (b) on segments in R^3, where
the claim is false and must be reported false.  Both fire.

Exact rationals only.  No float except in printed ratios.
"""
import sys, random
from fractions import Fraction as F
sys.path.insert(0, __file__.rsplit('/', 1)[0])
from shift import sub, cross, seg_inter

def dotk(a, b): return sum(x*y for x, y in zip(a, b))
def subk(a, b): return tuple(x-y for x, y in zip(a, b))
def addk(a, b): return tuple(x+y for x, y in zip(a, b))
def sclk(k, a): return tuple(k*x for x in a)

def d2_pt_seg_k(p, c, d):
    """Exact squared distance from point p to segment [c,d], any dimension."""
    dd = subk(d, c)
    den = dotk(dd, dd)
    if den == 0:
        v = subk(p, c); return dotk(v, v)
    t = F(dotk(subk(p, c), dd), 1) / den
    if t < 0: t = F(0)
    if t > 1: t = F(1)
    foot = addk(c, sclk(t, dd))
    v = subk(p, foot); return dotk(v, v)

def endpoint_min(p, q, c, d):
    return min(d2_pt_seg_k(p, c, d), d2_pt_seg_k(q, c, d),
               d2_pt_seg_k(c, p, q), d2_pt_seg_k(d, p, q))

def g(p, q, c, d, s, t):
    x = addk(p, sclk(s, subk(q, p)))
    y = addk(c, sclk(t, subk(d, c)))
    v = subk(x, y); return dotk(v, v)

def interior_critical(p, q, c, d):
    """Exact solution of grad g = 0; returned only if in the OPEN unit square."""
    e = subk(q, p); f = subk(d, c); wv = subk(p, c)
    a11 = dotk(e, e); a12 = -dotk(e, f); a22 = dotk(f, f)
    b1 = -dotk(wv, e); b2 = dotk(wv, f)
    det = a11*a22 - a12*a12
    if det == 0: return None
    s = F(b1*a22 - a12*b2, det)
    t = F(a11*b2 - a12*b1, det)
    if not (0 < s < 1 and 0 < t < 1): return None
    return (s, t, g(p, q, c, d, s, t))

def grid_min(p, q, c, d, K=24):
    best = None
    for i in range(K+1):
        for j in range(K+1):
            v = g(p, q, c, d, F(i, K), F(j, K))
            if best is None or v < best: best = v
    return best

def check_pair(p, q, c, d):
    """Returns (endpt, crit_val_or_None, gridmin, violated)."""
    ep = endpoint_min(p, q, c, d)
    cr = interior_critical(p, q, c, d)
    gm = grid_min(p, q, c, d)
    lower = gm if cr is None else min(gm, cr[2])
    return ep, (None if cr is None else cr[2]), gm, (lower < ep)

def rnd_seg(rng, R=6, dim=2):
    while True:
        a = tuple(F(rng.randint(-R, R)) for _ in range(dim))
        b = tuple(F(rng.randint(-R, R)) for _ in range(dim))
        if a != b: return a, b

def main():
    rng = random.Random(9091)
    stats = dict(disjoint=0, disj_viol=0, disj_crit=0,
                 inter=0, inter_viol=0,
                 r3=0, r3_viol=0, r3_crit=0, para=0, para_viol=0)
    # ---- main test: disjoint planar segments
    tried = 0
    while stats['disjoint'] < 4000 and tried < 400000:
        tried += 1
        p, q = rnd_seg(rng); c, d = rnd_seg(rng)
        if seg_inter(p, q, c, d)[0] != 'none':
            # control (a): INTERSECTING planar segments -- claim must fail
            if stats['inter'] < 2000:
                stats['inter'] += 1
                ep, cv, gm, bad = check_pair(p, q, c, d)
                if ep > 0: stats['inter_viol'] += 1   # endpoint min > 0 = true dist
            continue
        stats['disjoint'] += 1
        ep, cv, gm, bad = check_pair(p, q, c, d)
        if cv is not None: stats['disj_crit'] += 1
        if bad:
            stats['disj_viol'] += 1
            print('VIOLATION (planar disjoint):', p, q, c, d, ep, cv, gm)
        if cross(sub(q, p), sub(d, c)) == 0:
            stats['para'] += 1
            if bad: stats['para_viol'] += 1
    # ---- control (b): R^3, where the fact is FALSE
    tried = 0
    while stats['r3'] < 2000 and tried < 200000:
        tried += 1
        p, q = rnd_seg(rng, dim=3); c, d = rnd_seg(rng, dim=3)
        ep = endpoint_min(p, q, c, d)
        if ep == 0: continue
        stats['r3'] += 1
        ep, cv, gm, bad = check_pair(p, q, c, d)
        if cv is not None: stats['r3_crit'] += 1
        if bad: stats['r3_viol'] += 1
    print(stats)
    print()
    print('planar disjoint pairs tested          :', stats['disjoint'])
    print('  of which parallel                   :', stats['para'])
    print('  interior critical point in (0,1)^2  :', stats['disj_crit'])
    print('  VIOLATIONS of Fact (E)              :', stats['disj_viol'])
    print('control (a) intersecting planar pairs :', stats['inter'])
    print('  endpoint formula strictly wrong     :', stats['inter_viol'],
          '  (true dist = 0, endpoint min > 0)')
    print('control (b) segment pairs in R^3      :', stats['r3'])
    print('  interior critical point in (0,1)^2  :', stats['r3_crit'])
    print('  VIOLATIONS of Fact (E) in R^3       :', stats['r3_viol'])

if __name__ == '__main__':
    main()
