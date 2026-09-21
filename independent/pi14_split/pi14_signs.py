#!/usr/bin/env python3
"""
Pi_14 attacked by splitting on the SIGN OF EACH ORIENTATION DETERMINANT, not on
which disjunct of a negated crossing holds.

Why this is the right split.  Both ProperCross and its negation are statements
about PRODUCTS of two determinants, so every inequality in the v1/v2 encodings
is degree 4 in the coordinates.  Fixing the sign of each determinant separately
replaces every one of them by a single degree-2 strict inequality
`orient(a,b,c) > 0` / `< 0`.  Degree 2 is where nlsat is strong.

  ProperCross(a,b,c,d)  <->  s(abc) != s(abd)  and  s(cda) != s(cdb)
  its negation          <->  s(abc) == s(abd)   or  s(cda) == s(cdb)

Only 61 of the 165 triples on the eleven points occur in the 21 conditions, and
the search is a DFS over their signs with two prunings:

  (a) COMBINATORIAL: as soon as all four signs of a condition are assigned,
      the condition is checked.  This is pure Boolean bookkeeping.
  (b) REAL-ALGEBRAIC: the conjunction of the degree-2 inequalities assigned so
      far is handed to z3; `unsat` kills the whole subtree, soundly, because a
      partial system is implied by every completion of it.

Pruning (b) is the ONLY mathematical input beyond the 21 conditions.  In
particular NO Grassmann-Plucker relation and no acyclicity clause is asserted:
whatever consequences of the real-closed-field theory are needed, z3 derives
them itself from the polynomials.  That is what keeps this independent of the
chirotope/SAT route, whose clauses are exactly those axioms.
"""
import sys, time, itertools, argparse
from z3 import *
from pi14_common import PI14, VERTS, quad_triples, canon


def build_index(conds):
    """Return (triples, cond_specs).
    triples    : list of canonical triples, the DFS variables.
    cond_specs : per condition, [(triple_idx, perm_sign) x 4] and want_cross."""
    keys = []
    seen = {}
    specs = []
    for (a, b), (c, d), want in conds:
        entry = []
        for t in quad_triples(a, b, c, d):
            k, sg = canon(t)
            if k not in seen:
                seen[k] = len(keys); keys.append(k)
            entry.append((seen[k], sg))
        specs.append((entry, want))
    return keys, specs


def order_triples(keys, specs):
    """Order DFS variables so that conditions close as early as possible:
    repeatedly pick the condition with the fewest unassigned triples."""
    order = []
    placed = set()
    remaining = list(range(len(specs)))
    while remaining:
        best = min(remaining, key=lambda ci: sum(
            1 for ti, _ in specs[ci][0] if ti not in placed))
        remaining.remove(best)
        for ti, _ in specs[best][0]:
            if ti not in placed:
                placed.add(ti); order.append(ti)
    assert len(order) == len(keys)
    return order


def mk_points():
    pt = {0: (RealVal(0), RealVal(0)),
          1: (RealVal(1), RealVal(0)),
          2: (RealVal(0), RealVal(1))}
    for v in VERTS:
        if v not in pt:
            pt[v] = (Real(f'x{v}'), Real(f'y{v}'))
    return pt


def orient_expr(pt, t):
    a, b, c = (pt[i] for i in t)
    return (b[0]-a[0])*(c[1]-a[1]) - (b[1]-a[1])*(c[0]-a[0])


class Search:
    def __init__(self, conds, z3_every=1, node_ms=2000, log=sys.stdout):
        self.keys, self.specs = build_index(conds)
        self.order = order_triples(self.keys, self.specs)
        self.pt = mk_points()
        self.expr = [orient_expr(self.pt, k) for k in self.keys]
        self.sign = [0]*len(self.keys)
        # conditions indexed by which triples they touch
        self.touch = {}
        for ci, (entry, _) in enumerate(self.specs):
            for ti, _ in entry:
                self.touch.setdefault(ti, set()).add(ci)
        self.z3_every = z3_every
        self.node_ms = node_ms
        self.log = log
        self.nodes = 0
        self.z3_calls = 0
        self.z3_unsat = 0
        self.z3_unknown_leaf = 0
        self.leaves_sat = []
        self.leaves_unknown = []
        self.t0 = time.time()

    def cond_ok(self, ci):
        entry, want = self.specs[ci]
        s = [self.sign[ti]*sg for ti, sg in entry]
        if any(v == 0 for v in s):
            return True                      # not yet determined
        cross = (s[0] != s[1]) and (s[2] != s[3])
        return cross == want

    def z3_check(self, depth, ms):
        self.z3_calls += 1
        s = Tactic('qfnra-nlsat').solver()
        s.set("timeout", ms)
        for ti in self.order[:depth]:
            e = self.expr[ti]
            s.add(e > 0 if self.sign[ti] > 0 else e < 0)
        return s

    def run(self, depth=0, budget=None):
        if budget and time.time()-self.t0 > budget:
            raise TimeoutError
        if depth == len(self.order):
            s = self.z3_check(depth, self.node_ms*8)
            r = s.check()
            if r == sat:
                self.leaves_sat.append(list(self.sign)); return True
            if r == unknown:
                self.leaves_unknown.append(list(self.sign))
            return False
        ti = self.order[depth]
        for sg in (1, -1):
            self.sign[ti] = sg
            self.nodes += 1
            if all(self.cond_ok(ci) for ci in self.touch[ti]):
                if depth % self.z3_every == 0:
                    r = self.z3_check(depth+1, self.node_ms).check()
                    if r == unsat:
                        self.z3_unsat += 1
                        self.sign[ti] = 0
                        continue
                if self.run(depth+1, budget):
                    return True
            self.sign[ti] = 0
        return False
