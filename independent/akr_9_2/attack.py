"""Adversarial testing of the generalised shift G(a,b) -- in particular of the
translation repair (a=b=n) and the tilted repair.

Every test is exact rational.  For each (config, side, delta, mode) instance we
record:
   status     : undefined / not-simple / infinite / ok
   identity   : |dP(d) n dQ| + |dP(-d) n dQ| == 2 |dP n dQ|   (clause 5)
   cleared    : every vertex-side degeneracy involving s, A, B is gone  (clause 3)
   nonew      : no vertex-side degeneracy of (P(d),Q) is absent from (P,Q)
                and the TOTAL degeneracy count did not go up          (clause 4)
"""
import sys, random, collections
from fractions import Fraction as F
sys.path.insert(0, __file__.rsplit('/', 1)[0])
from shift import (is_simple, count, vertex_vertex, vertex_side, inter_points,
                   sides, cross, sub, seg_inter)
from repair import shift, frame, dot, host_side_through, gen_shift
from sweep2 import rand_simple, strictly_inside, classify

def degset(P, Q):
    """Canonical set of vertex-side degeneracies, as (which, vertex, side-pair)
    so it survives re-indexing."""
    out = set()
    for name, A, B in (('Qv_on_Ps', Q, P), ('Pv_on_Qs', P, Q)):
        for v in A:
            for (c, d) in sides(B):
                if v != c and v != d and strictly_inside(v, c, d):
                    out.add((name, v, frozenset((c, d))))
    return out

def touching(P, Q, i):
    """The degeneracies that involve the shifted side s_i, its endpoints A,B."""
    m = len(P); A, B = P[i], P[(i+1) % m]
    out = set()
    for e in degset(P, Q):
        name, v, pr = e
        if name == 'Qv_on_Ps' and pr == frozenset((A, B)): out.add(e)
        if name == 'Pv_on_Qs' and v in (A, B): out.add(e)
    return out

def check_instance(P, Q, i, delta, mode):
    r = {'status': 'ok'}
    Pp = shift(P, Q, i, delta, mode)
    Pm = shift(P, Q, i, -delta, mode)
    if Pp is None or Pm is None:
        r['status'] = 'undefined'; return r
    if not (is_simple(Pp) and is_simple(Pm)):
        r['status'] = 'not-simple'; return r
    c0 = count(P, Q); cp = count(Pp, Q); cm = count(Pm, Q)
    if c0 is None or cp is None or cm is None:
        r['status'] = 'infinite'; return r
    r['c'] = (c0, cp, cm)
    r['identity'] = (cp + cm == 2*c0)
    d0 = degset(P, Q); T = touching(P, Q, i)
    dp = degset(Pp, Q); dm = degset(Pm, Q)
    # clause 3: every degeneracy involving s, A or B is gone, in BOTH directions
    surv = set()
    for e in T:
        name, v, pr = e
        m = len(P)
        for (D, NP) in ((dp, Pp), (dm, Pm)):
            if name == 'Qv_on_Ps':
                if any(x[0] == 'Qv_on_Ps' and x[1] == v and
                       x[2] == frozenset((NP[i], NP[(i+1) % m])) for x in D):
                    surv.add(e)
            else:
                nv = NP[i] if v == P[i] else NP[(i+1) % m]
                if any(x[0] == 'Pv_on_Qs' and x[1] == nv and x[2] == pr for x in D):
                    surv.add(e)
    r['cleared'] = (len(surv) == 0)
    r['survivors'] = surv
    r['ntouch'] = len(T)
    r['nonew'] = (len(dp) <= len(d0) and len(dm) <= len(d0))
    r['dcount'] = (len(d0), len(dp), len(dm))
    return r

def base_ok(P, Q, require_vs=True):
    """(F) finite, (VV) no vertex-vertex coincidence, and >=1 vertex-side deg."""
    if P is None or Q is None: return False
    if inter_points(P, Q) is None: return False
    if vertex_vertex(P, Q): return False
    if require_vs and not degset(P, Q): return False
    return True

def tally_new():
    return collections.Counter()

def report(name, tal, extra=''):
    print(f"[{name}] {extra}")
    for k in sorted(tal): print(f"    {k:<34} {tal[k]}")
