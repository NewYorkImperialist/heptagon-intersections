"""TERMINATION (Gap 4 of ../../docs/akr-9-2-obligation.md).

AKR: "it is easy to get rid of the remaining degeneracies by looking at the
sides one by one".  There is no induction, no monovariant, and no claim that a
shift cannot re-create a degeneracy on an already-processed side.

The theorem this file tests:

  D(P,Q) := #{vertex-side degeneracies} <= m + n  (= 14 for two heptagons),
  and ONE PASS over the sides of P followed by ONE PASS over the sides of Q
  clears every degeneracy, because
    (i)  shifting a side clears every foreign vertex in its relative interior,
         for EVERY admissible direction pair (a,b);
    (ii) a shift creates no new degeneracy.
  So the procedure stops after at most m + n shifts, with no back-tracking.

Also runs the NAIVE variant -- "shift a side incident to the degenerate
vertex" -- which can loop for ever under the pure translation.
"""
import sys, random, collections
from fractions import Fraction as F
sys.path.insert(0, __file__.rsplit('/', 1)[0])
from shift import is_simple, count, vertex_vertex, inter_points, sides, cross, sub
from repair import shift
from attack import degset
from sweep2 import rand_simple, strictly_inside

MAXHALVE = 60

def carries(P, Q, i):
    """Does side i of P carry a degeneracy this shift is meant to clear?"""
    m = len(P); A, B = P[i], P[(i+1) % m]
    if any(strictly_inside(v, A, B) for v in Q): return True
    for v in (A, B):
        for (c, d) in sides(Q):
            if strictly_inside(v, c, d): return True
    return False

def do_shift(P, Q, i, mode):
    """Shift side i of P; return (P', delta, info) or (None, None, reason).

    Acceptance encodes exactly what the theorem guarantees for |delta| < delta_0:
      * the averaging identity;
      * EVERY foreign vertex strictly inside the shifted side is cleared
        (`need`, which the theorem gives for every admissible (a,b));
      * NO new degeneracy anywhere, so the total drops by at least `need`.
    delta is halved until that holds.  Requiring only `d <= d0` instead lets a
    too-large delta SWEEP THE SIDE ACROSS a foreign vertex, trading one
    degeneracy for another; that is a delta > delta_0 artefact, not a
    counterexample, and it is what this stricter test rules out."""
    m = len(P); A, B = P[i], P[(i+1) % m]
    # clause 3, exactly: a foreign vertex strictly inside s is cleared for EVERY
    # admissible (a,b); an endpoint degeneracy at A is cleared iff a is not
    # parallel to the Q-side through A (case (P3-i) of the proof).
    need = sum(1 for v in Q if strictly_inside(v, A, B))
    from repair import DIRS, host_side_through
    aa, bb = DIRS[mode](P, Q, i)
    for (v, dd) in ((A, aa), (B, bb)):
        t = host_side_through(v, Q)
        if t is not None and cross(sub(t[1], t[0]), dd) != 0: need += 1
    c0 = count(P, Q); d0 = len(degset(P, Q))
    delta = F(1)
    for h in range(MAXHALVE):
        good = []
        for sg in (1, -1):
            Pn = shift(P, Q, i, sg*delta, mode)
            if Pn is None: return None, None, 'UNDEFINED'
            if not is_simple(Pn): continue
            if inter_points(Pn, Q) is None: continue
            if vertex_vertex(Pn, Q): continue
            good.append((Pn, count(Pn, Q), len(degset(Pn, Q))))
        if len(good) == 2 and good[0][1] + good[1][1] == 2*c0 \
           and all(g[2] <= d0 - need for g in good):
            Pn, c, d = max(good, key=lambda g: g[1])
            return Pn, delta, (c0, c, d0, d, h)
        delta /= 2
    return None, None, 'no small enough delta in %d halvings' % MAXHALVE

def two_pass(P, Q, mode):
    """One pass over P's sides, then one over Q's.  Returns (P,Q,shifts,log)."""
    shifts = 0; log = []
    for i in range(len(P)):
        if not carries(P, Q, i): continue
        Pn, d, info = do_shift(P, Q, i, mode)
        if Pn is None: return None, None, shifts, info
        P = Pn; shifts += 1; log.append(('P', i, info))
    for j in range(len(Q)):
        if not carries(Q, P, j): continue
        Qn, d, info = do_shift(Q, P, j, mode)
        if Qn is None: return None, None, shifts, info
        Q = Qn; shifts += 1; log.append(('Q', j, info))
    return P, Q, shifts, log

def naive_loop(P, Q, mode, rounds=40):
    """AKR read literally as 'shift a side incident to the degeneracy', with
    the incident side always taken in the polygon that OWNS the vertex.
    Returns the sequence of degeneracy counts."""
    seq = []
    for _ in range(rounds):
        ds = sorted(degset(P, Q))
        seq.append(len(ds))
        if not ds: break
        name, v, pr = ds[0]
        if name == 'Pv_on_Qs':
            i = [k for k in range(len(P)) if P[k] == v][0]     # a P-side AT v
            Pn, d, info = do_shift(P, Q, i, mode)
            if Pn is None: seq.append(info); break
            P = Pn
        else:
            j = [k for k in range(len(Q)) if Q[k] == v][0]
            Qn, d, info = do_shift(Q, P, j, mode)
            if Qn is None: seq.append(info); break
            Q = Qn
    return seq

def run(trials, seed, k, g, mode):
    rng = random.Random(seed)
    st = collections.Counter(); hist = collections.Counter()
    dmax = 0; bad = []
    done = 0
    while done < trials:
        P = rand_simple(rng, k, g); Q = rand_simple(rng, k, g)
        if P is None or Q is None: continue
        if inter_points(P, Q) is None or vertex_vertex(P, Q): continue
        d0 = degset(P, Q)
        if not d0: continue
        done += 1
        dmax = max(dmax, len(d0))
        c_init = count(P, Q)
        Pf, Qf, sh, info = two_pass(P, Q, mode)
        if Pf is None:
            st[str(info)[:44]] += 1; continue
        left = len(degset(Pf, Qf))
        if left: st['*** DEGENERACIES LEFT AFTER TWO PASSES ***'] += 1; bad.append((P,Q,left))
        else: st['cleared'] += 1
        hist[sh] += 1
        if sh > 2*k: st['*** MORE THAN m+n SHIFTS ***'] += 1
        c_fin = count(Pf, Qf)
        st['count decreased' if c_fin < c_init else
           'count increased' if c_fin > c_init else 'count preserved'] += 1
    return st, hist, dmax, bad

if __name__ == '__main__':
    import argparse
    ap = argparse.ArgumentParser()
    ap.add_argument('--trials', type=int, default=400)
    ap.add_argument('--seed', type=int, default=31)
    ap.add_argument('--k', type=int, default=6)
    ap.add_argument('--g', type=int, default=6)
    ap.add_argument('--mode', default='tilt')
    a = ap.parse_args()
    st, hist, dmax, bad = run(a.trials, a.seed, a.k, a.g, a.mode)
    print(f"mode={a.mode} k={a.k} grid={a.g} configs={a.trials} seed={a.seed}  "
          f"(bound m+n = {2*a.k})")
    for kk in sorted(st): print(f"  {kk}: {st[kk]}")
    print("  shifts-used histogram:", dict(sorted(hist.items())))
    print("  max initial degeneracy count D observed:", dmax)
