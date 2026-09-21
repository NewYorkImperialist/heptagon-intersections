"""TERMINATION attack, round 2.

`procedure2.do_shift` picks delta by HALVING UNTIL AN ACCEPTANCE TEST PASSES,
and that acceptance test inspects the very conclusions the theorem is supposed
to guarantee (the identity, clause 3, clause 4).  That is a legitimate way to
run a procedure, but it cannot FALSIFY the theorem: if the theorem were false
at every delta the loop would simply run out of halvings and report a skip.

Here delta is chosen WITHOUT looking at the answer: delta = the largest dyadic
strictly below the delta_0 of REPAIR.md 2.3, computed from (P,Q,i,rule) alone.
The sign is chosen by AKR's pigeonhole (the one that does not decrease the
count); if BOTH signs decrease the count, that is a counterexample and is
recorded.  Then every claim of REPAIR.md 3.1 is checked at every step:

  T1  the averaging identity holds at the chosen delta;
  T2  clause 3: every foreign vertex in relint(s) is gone;
  T3  clause 4 STRICT: no new degeneracy anywhere (index-keyed);
  T4  D never increases;
  T5  the hypotheses survive: P(d) simple, dP(d) n dQ finite, no vertex-vertex;
  T6  at least one sign does not decrease |dP n dQ|;
  T7  after one P-pass + one Q-pass, D = 0;
  T8  total shifts <= m + n;
  T9  the final count is >= the initial count.

Orders: forward, reverse, and random permutations of the sides -- 3.1 claims
"in any order".
"""
import sys, random, collections
from fractions import Fraction as F
sys.path.insert(0, __file__.rsplit('/', 1)[0])
from shift import is_simple, count, vertex_vertex, inter_points, sides, cross, sub
from repair import shift, DIRS, host_side_through
from attack3 import degset_idx, delta0, dyadic_below, strictly_inside, check

class Fail(Exception): pass

def carries(P, Q, i):
    m = len(P); A, B = P[i], P[(i+1) % m]
    if any(strictly_inside(v, A, B) for v in Q): return True
    for v in (A, B):
        if host_side_through(v, Q) is not None: return True
    return False

def one_shift(P, Q, i, mode, log, tag):
    """Shift side i of P.  delta from delta_0 only.  Returns P' or raises."""
    m = len(P)
    d0, parts = delta0(P, Q, i, mode)
    if d0 is None: raise Fail('%s undefined: %s' % (tag, parts))
    d = dyadic_below(d0)
    D0 = degset_idx(P, Q); c0 = count(P, Q)
    outs = {}
    for sg in (1, -1):
        Pn = shift(P, Q, i, sg*d, mode)
        if Pn is None: raise Fail('%s shift None' % tag)
        if not is_simple(Pn): raise Fail('T5 not simple %s' % tag)
        if inter_points(Pn, Q) is None: raise Fail('T5 infinite %s' % tag)
        if vertex_vertex(Pn, Q): raise Fail('T5 vertex-vertex created %s' % tag)
        Dn = degset_idx(Pn, Q)
        if Dn - D0: raise Fail('T3 NEW DEGENERACY %s: %s' % (tag, sorted(Dn - D0)))
        if len(Dn) > len(D0): raise Fail('T4 D rose %s' % tag)
        outs[sg] = (Pn, count(Pn, Q), Dn)
    if outs[1][1] + outs[-1][1] != 2*c0: raise Fail('T1 IDENTITY %s: %s' % (
        tag, (c0, outs[1][1], outs[-1][1])))
    # T2: clause 3 -- foreign vertices in relint(s) must be gone, both signs
    interior = {e for e in D0 if e[0] == 'Qv_on_Ps' and e[2] == i}
    for sg in (1, -1):
        if interior & outs[sg][2]:
            raise Fail('T2 interior deg survived %s' % tag)
    # T6 + pigeonhole
    ok = [sg for sg in (1, -1) if outs[sg][1] >= c0]
    if not ok: raise Fail('T6 BOTH SIGNS DECREASE the count %s: %s' % (
        tag, (c0, outs[1][1], outs[-1][1])))
    sg = ok[0]
    log.append((tag, i, d, c0, outs[sg][1], len(D0), len(outs[sg][2])))
    return outs[sg][0]

def two_pass(P, Q, mode, orderP=None, orderQ=None):
    log = []; shifts = 0
    m, n = len(P), len(Q)
    for i in (orderP if orderP is not None else range(m)):
        if not carries(P, Q, i): continue
        P = one_shift(P, Q, i, mode, log, 'P%d' % i); shifts += 1
    dP_left = len(degset_idx(P, Q))
    for j in (orderQ if orderQ is not None else range(n)):
        if not carries(Q, P, j): continue
        Q = one_shift(Q, P, j, mode, log, 'Q%d' % j); shifts += 1
    return P, Q, shifts, log, dP_left

def run(trials, seed, k, g, mode, order='fwd'):
    rng = random.Random(seed)
    st = collections.Counter(); hist = collections.Counter()
    dmax = 0; fails = []
    done = 0; drawn = 0
    while done < trials and drawn < trials*60:
        drawn += 1
        from sweep2 import rand_simple
        P = rand_simple(rng, k, g); Q = rand_simple(rng, k, g)
        if P is None or Q is None: continue
        if inter_points(P, Q) is None or vertex_vertex(P, Q): continue
        D0 = degset_idx(P, Q)
        if not D0: continue
        done += 1; dmax = max(dmax, len(D0))
        st['D0=%d' % len(D0)] += 1
        c_init = count(P, Q)
        oP = list(range(len(P))); oQ = list(range(len(Q)))
        if order == 'rev': oP.reverse(); oQ.reverse()
        elif order == 'rand': rng.shuffle(oP); rng.shuffle(oQ)
        try:
            Pf, Qf, sh, log, dPleft = two_pass(P, Q, mode, oP, oQ)
        except Fail as e:
            st['*** ' + str(e)[:52]] += 1
            if len(fails) < 6: fails.append((P, Q, mode, str(e)))
            continue
        left = len(degset_idx(Pf, Qf))
        if left:
            st['*** T7 DEGENERACIES LEFT AFTER TWO PASSES ***'] += 1
            if len(fails) < 6: fails.append((P, Q, mode, 'T7 left=%d' % left))
        else: st['T7 cleared'] += 1
        if dPleft == 0: st['cleared by the P-pass alone'] += 1
        else: st['P-pass alone insufficient (Q-pass needed)'] += 1
        if sh > len(P) + len(Q): st['*** T8 MORE THAN m+n SHIFTS ***'] += 1
        hist[sh] += 1
        c_fin = count(Pf, Qf)
        if c_fin < c_init: st['*** T9 FINAL COUNT DECREASED ***'] += 1
        st['count decreased' if c_fin < c_init else
           'count increased' if c_fin > c_init else 'count preserved'] += 1
    return st, hist, dmax, fails, done

if __name__ == '__main__':
    import argparse
    ap = argparse.ArgumentParser()
    ap.add_argument('--trials', type=int, default=120)
    ap.add_argument('--seed', type=int, default=501)
    ap.add_argument('--k', type=int, default=7)
    ap.add_argument('--g', type=int, default=7)
    ap.add_argument('--mode', default='tilt')
    ap.add_argument('--order', default='fwd')
    a = ap.parse_args()
    st, hist, dmax, fails, done = run(a.trials, a.seed, a.k, a.g, a.mode, a.order)
    print(f"TERMINATION mode={a.mode} order={a.order} k={a.k} g={a.g} "
          f"configs={done} seed={a.seed} (bound m+n={2*a.k}) "
          f"delta chosen from delta_0 only, no acceptance test")
    for kk in sorted(st): print(f"   {kk}: {st[kk]}")
    print("   shifts histogram:", dict(sorted(hist.items())))
    print("   max initial D:", dmax)
    for f in fails[:4]: print("   FAIL", f)

# ------------------------------------------------------------------ extras

def interleaved(P, Q, mode, order):
    """A SINGLE pass over all m+n sides of both polygons in an arbitrary
    interleaved order.  REPAIR.md 3.1 only claims P-pass THEN Q-pass; AKR's
    sentence "looking at the sides one by one" does not say that, so this is
    the reading 3.1 does not cover."""
    log = []; shifts = 0
    for (who, i) in order:
        if who == 'P':
            if not carries(P, Q, i): continue
            P = one_shift(P, Q, i, mode, log, 'P%d' % i)
        else:
            if not carries(Q, P, i): continue
            Q = one_shift(Q, P, i, mode, log, 'Q%d' % i)
        shifts += 1
    return P, Q, shifts, log

def naive(P, Q, mode, rounds=60):
    """AKR read literally: to kill a degeneracy at vertex x, shift a side
    INCIDENT to x, in the polygon that owns x.  delta from delta_0 only."""
    seq = []
    for _ in range(rounds):
        Dl = sorted(degset_idx(P, Q))
        seq.append(len(Dl))
        if not Dl: return seq, 'cleared'
        kind, vi, si = Dl[0]
        log = []
        try:
            if kind == 'Pv_on_Qs':
                P = one_shift(P, Q, vi, mode, log, 'nP')
            else:
                Q = one_shift(Q, P, vi, mode, log, 'nQ')
        except Fail as e:
            return seq, str(e)[:50]
    return seq, 'DID NOT TERMINATE in %d rounds' % rounds
