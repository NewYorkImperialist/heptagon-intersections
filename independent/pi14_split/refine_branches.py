#!/usr/bin/env python3
"""
Pi_14: the 256-branch disjunct split, with ADAPTIVE SIGN REFINEMENT of every
branch z3 cannot decide, and nlsat randomisation switched off.

For each of the 2^8 disjunct choices the branch is a conjunction of degree-4
strict inequalities.  If z3 returns `unknown` on it, the branch is split on the
sign of one more orientation determinant:

    C  is refuted  <==>  C and orient(t) > 0  is refuted
                     and C and orient(t) < 0  is refuted

That case split is exhaustive because `Pi_14`'s own hypothesis `hGP` says every
orientation determinant of three of the eleven vertices is nonzero.  Each half
carries one extra degree-2 inequality, which is exactly the kind of fact nlsat
propagates well, so the halves are strictly easier than the parent.  Recurse to
a bounded depth; anything still undecided at the bound is reported as such.

Triples are offered for splitting in point-insertion order
(V0,V1,V2 pinned, then V3,V4,V7,...,V12), so the early splits constrain the
low-dimensional part of the configuration first.

Nothing is asserted that Pi_14 does not give: the 21 conditions and `hGP`.  No
Grassmann-Plucker relation, no acyclicity clause, no Boolean variable, nothing
from the Lean development.
"""
import sys, time, itertools, argparse
from z3 import *
from pi14_common import PI14, VERTS
from pi14_v2 import build, mk_points, orient, control_conditions

VSEQ = [0, 1, 2, 3, 4, 7, 8, 9, 10, 11, 12]
POS = {v: i for i, v in enumerate(VSEQ)}
def _split_order(conds):
    """Triples offered for splitting, best first.
    (1) the triples that occur in the conditions, in point-insertion order --
        splitting one of those turns a degree-4 product into a degree-2 fact
        plus a forced sign on its partner, which propagates hard;
    (2) then the remaining triples, same order.
    (0,1,2) is dropped: the normalisation pins V0,V1,V2, so orient(V0,V1,V2)
    is the constant 1 and splitting on it is a no-op."""
    from pi14_common import quad_triples, canon
    used = set()
    for (a, b), (c, d), _ in conds:
        for t in quad_triples(a, b, c, d):
            used.add(canon(t)[0])
    key = lambda t: (max(POS[v] for v in t), sorted(POS[v] for v in t))
    allt = sorted(itertools.combinations(VSEQ, 3), key=key)
    allt = [t for t in allt if t != (0, 1, 2)]
    return [t for t in allt if t in used] + [t for t in allt if t not in used]


ALLT = _split_order(PI14)


def solver(ms):
    s = Tactic('qfnra-nlsat').solver()
    s.set('timeout', ms)
    s.set('nlsat.randomize', False)
    return s


class Refiner:
    def __init__(self, conds, base_ms, ref_ms, max_depth, logf):
        self.conds = conds
        self.split_order = _split_order(conds)
        self.pt = mk_points()
        self.tri = [orient(self.pt[a], self.pt[b], self.pt[c]) for a, b, c in self.split_order]
        self.base_ms, self.ref_ms, self.max_depth = base_ms, ref_ms, max_depth
        self.logf = logf
        self.calls = 0
        self.undecided = []
        self.sat = []
        self.max_depth_used = 0
        self.t0 = time.time()

    def check(self, C, ms):
        self.calls += 1
        s = solver(ms)
        s.add(C)
        return s.check(), s

    def refine(self, C, d):
        """Return 'unsat' / 'sat' / 'undecided' for the system C."""
        self.max_depth_used = max(self.max_depth_used, d)
        r, s = self.check(C, self.base_ms if d == 0 else self.ref_ms)
        if r == unsat:
            return 'unsat'
        if r == sat:
            self.sat.append((d, s.model()))
            return 'sat'
        if d >= self.max_depth or d >= len(self.tri):
            return 'undecided'
        e = self.tri[d]
        a = self.refine(C + [e > 0], d+1)
        if a == 'sat':
            return 'sat'
        b = self.refine(C + [e < 0], d+1)
        if b == 'sat':
            return 'sat'
        return 'unsat' if (a == 'unsat' and b == 'unsat') else 'undecided'


if __name__ == '__main__':
    ap = argparse.ArgumentParser()
    ap.add_argument('--control', action='store_true')
    ap.add_argument('--base-ms', type=int, default=10000)
    ap.add_argument('--ref-ms', type=int, default=4000)
    ap.add_argument('--max-depth', type=int, default=8)
    ap.add_argument('--start', type=int, default=0)
    ap.add_argument('--stop', type=int, default=256)
    a = ap.parse_args()
    conds = control_conditions() if a.control else PI14
    tag = 'CONTROL' if a.control else 'PI_14'
    nneg = sum(1 for *_, w in conds if not w)
    print(f'# {tag} adaptive refinement: {2**nneg} disjunct branches, '
          f'base_ms={a.base_ms} ref_ms={a.ref_ms} max_depth={a.max_depth} '
          f'nlsat.randomize=false', flush=True)
    sys.setrecursionlimit(10000)
    R = Refiner(conds, a.base_ms, a.ref_ms, a.max_depth, sys.stdout)
    t0 = time.time()
    nu = ns = nd = 0
    for n, ch in enumerate(itertools.product([0, 1], repeat=nneg)):
        if not (a.start <= n < a.stop):
            continue
        C, pt = build(conds, choice=ch)
        R.pt = pt
        R.tri = [orient(pt[x], pt[y], pt[z]) for x, y, z in R.split_order]
        t = time.time()
        res = R.refine(C, 0)
        if res == 'unsat':
            nu += 1
        elif res == 'sat':
            ns += 1
            print(f'!!! BRANCH {n} {ch} SAT -- Pi_14 WOULD BE REALIZABLE', flush=True)
            print(R.sat[-1][1], flush=True)
        else:
            nd += 1; R.undecided.append(n)
            print(f'  branch {n:3d} {ch} UNDECIDED after depth {a.max_depth} '
                  f'({time.time()-t:.0f}s)', flush=True)
        if (n+1) % 8 == 0:
            print(f'{n+1:4d}/{2**nneg} unsat={nu} sat={ns} undecided={nd} '
                  f'z3calls={R.calls} ({time.time()-t0:.0f}s)', flush=True)
    print(f'RESULT {tag} unsat={nu} sat={ns} undecided={nd} '
          f'z3calls={R.calls} total={time.time()-t0:.0f}s')
    print('undecided branches:', R.undecided)
