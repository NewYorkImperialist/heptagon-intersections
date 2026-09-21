#!/usr/bin/env python3
"""
Exhaustive sign-split DFS for Pi_14 (v3), with ADAPTIVE REFINEMENT.

Search variables are the signs of orientation determinants.  Two phases:

  PHASE 1 -- the 61 triples that occur in the 21 conditions, in POINT-INSERTION
  order (V0,V1,V2 pinned, then V3,V4,V7,V8,V9,V10,V11,V12).  Point-insertion
  order matters a great deal: it keeps the z3 subproblems low-dimensional for as
  long as possible (2 unknown coordinates after V3, 4 after V4, ...), and z3
  decides those in microseconds.

  PHASE 2 -- if a full assignment of the 61 comes back `unknown`, the leaf is
  REFINED: an as-yet-unassigned triple (of the other 104) is chosen and the leaf
  is split on its sign.  Each half carries one more degree-2 inequality, so it
  is a strictly easier question, and the split is exhaustive.  Recurse until z3
  decides or the refinement budget runs out.  Leaves that survive that are
  recorded verbatim in `undecided.txt` -- they are the honest gap.

Soundness: every node's system is implied by Pi_14's hypotheses (see FINDINGS.md
section 2), so `unsat` at a node refutes that whole subtree.  Nothing is
asserted that Pi_14 does not give: no Grassmann-Plucker relation, no acyclicity
clause, no Boolean variable.
"""
import sys, time, argparse, itertools
from z3 import *
from pi14_common import PI14, VERTS, quad_triples, canon
from pi14_signs import build_index, mk_points, orient_expr
from pi14_v2 import control_conditions

VSEQ = [0, 1, 2, 3, 4, 7, 8, 9, 10, 11, 12]
POS = {v: i for i, v in enumerate(VSEQ)}


def all_triples():
    return sorted(itertools.combinations(VSEQ, 3))


def pt_key(t):
    return (max(POS[v] for v in t), sorted(POS[v] for v in t))


class Search:
    def __init__(self, conds, node_ms, leaf_ms, refine_ms, max_refine, logf, tag):
        self.keys, self.specs = build_index(conds)
        idx = {k: i for i, k in enumerate(self.keys)}
        # extra triples, appended after the constrained ones
        self.extra = [t for t in all_triples() if t not in idx]
        for t in self.extra:
            idx[t] = len(self.keys); self.keys.append(t)
        self.nc = len(self.keys) - len(self.extra)      # phase-1 variable count
        self.order = sorted(range(self.nc), key=lambda i: pt_key(self.keys[i]))
        self.refine_order = sorted(range(self.nc, len(self.keys)),
                                   key=lambda i: pt_key(self.keys[i]))
        self.pt = mk_points()
        self.expr = [orient_expr(self.pt, k) for k in self.keys]
        self.sign = [0]*len(self.keys)
        self.touch = {}
        for ci, (entry, _) in enumerate(self.specs):
            for ti, _ in entry:
                self.touch.setdefault(ti, set()).add(ci)
        self.node_ms, self.leaf_ms = node_ms, leaf_ms
        self.refine_ms, self.max_refine = refine_ms, max_refine
        self.logf, self.tag = logf, tag
        self.nodes = self.z3_calls = self.z3_unsat = self.comb_prune = 0
        self.refines = 0
        self.sat_leaves = []
        self.undecided = 0
        self.leaves_closed = 0
        self.PROG = 14
        self.done = 0
        self.t0 = time.time(); self.last = 0

    def cond_ok(self, ci):
        entry, want = self.specs[ci]
        s = [self.sign[ti]*sg for ti, sg in entry]
        if 0 in s:
            return True
        return ((s[0] != s[1]) and (s[2] != s[3])) == want

    def mk(self, ms, idxs):
        s = Tactic('qfnra-nlsat').solver()
        s.set("timeout", ms)
        # nlsat randomises its variable order and sample points by default; on
        # this family that is catastrophic (see FINDINGS.md section 6).
        s.set("nlsat.randomize", False)
        for ti in idxs:
            e = self.expr[ti]
            s.add(e > 0 if self.sign[ti] > 0 else e < 0)
        return s

    def log(self, extra=''):
        print(f'[{time.time()-self.t0:8.0f}s] {self.tag} prog {self.done}/{1<<self.PROG} '
              f'nodes={self.nodes} z3={self.z3_calls} unsat={self.z3_unsat} '
              f'comb={self.comb_prune} leaves_closed={self.leaves_closed} '
              f'refines={self.refines} undecided={self.undecided} '
              f'sat={len(self.sat_leaves)} {extra}', file=self.logf, flush=True)

    def assigned(self):
        return [i for i in range(len(self.keys)) if self.sign[i] != 0]

    def refine(self, depth):
        """Leaf handling with adaptive refinement.  Returns True if a SAT leaf
        was found (caller should abort)."""
        idxs = self.assigned()
        self.z3_calls += 1
        r = self.mk(self.leaf_ms, idxs).check()
        if r == unsat:
            self.z3_unsat += 1; self.leaves_closed += 1; return False
        if r == sat:
            self.sat_leaves.append([(self.keys[i], self.sign[i]) for i in idxs])
            open(f'sat_leaf_{self.tag}.txt', 'a').write(repr(self.sat_leaves[-1])+'\n')
            self.log('*** SAT LEAF ***'); return True
        # unknown -> refine
        return self._refine(0)

    def _refine(self, k):
        if k >= self.max_refine or k >= len(self.refine_order):
            self.undecided += 1
            open(f'undecided_{self.tag}.txt', 'a').write(
                ' '.join(f'{"".join(map(str,self.keys[i]))}:{self.sign[i]:+d}'
                         for i in self.assigned())+'\n')
            return False
        ti = self.refine_order[k]
        self.refines += 1
        for sg in (1, -1):
            self.sign[ti] = sg
            self.z3_calls += 1
            r = self.mk(self.refine_ms, self.assigned()).check()
            if r == unsat:
                self.z3_unsat += 1; continue
            if r == sat:
                self.sat_leaves.append([(self.keys[i], self.sign[i]) for i in self.assigned()])
                open(f'sat_leaf_{self.tag}.txt', 'a').write(repr(self.sat_leaves[-1])+'\n')
                self.sign[ti] = 0; self.log('*** SAT LEAF (refined) ***'); return True
            if self._refine(k+1):
                self.sign[ti] = 0; return True
        self.sign[ti] = 0
        self.leaves_closed += 1
        return False

    def run(self, depth=0):
        if depth == len(self.order):
            return self.refine(depth)
        ti = self.order[depth]
        for sg in (1, -1):
            self.sign[ti] = sg
            self.nodes += 1
            ok = all(self.cond_ok(ci) for ci in self.touch[ti])
            if ok:
                self.z3_calls += 1
                if self.mk(self.node_ms, self.order[:depth+1]).check() == unsat:
                    self.z3_unsat += 1; ok = False
            else:
                self.comb_prune += 1
            if ok:
                if self.run(depth+1):
                    self.sign[ti] = 0; return True
            elif depth < self.PROG:
                self.done += 1 << (self.PROG-depth-1)
            if depth == self.PROG-1:
                self.done += 1
            if time.time()-self.last > 60:
                self.last = time.time(); self.log()
        self.sign[ti] = 0
        return False


if __name__ == '__main__':
    ap = argparse.ArgumentParser()
    ap.add_argument('--control', action='store_true')
    ap.add_argument('--node-ms', type=int, default=500)
    ap.add_argument('--leaf-ms', type=int, default=5000)
    ap.add_argument('--refine-ms', type=int, default=3000)
    ap.add_argument('--max-refine', type=int, default=12)
    ap.add_argument('--tag', default='pi14')
    a = ap.parse_args()
    conds = control_conditions() if a.control else PI14
    sys.setrecursionlimit(20000)
    S = Search(conds, a.node_ms, a.leaf_ms, a.refine_ms, a.max_refine, sys.stdout, a.tag)
    print(f'# {"CONTROL" if a.control else "PI_14"} phase1_vars={S.nc} '
          f'refine_pool={len(S.extra)} node_ms={a.node_ms} leaf_ms={a.leaf_ms} '
          f'refine_ms={a.refine_ms} max_refine={a.max_refine}', flush=True)
    got = S.run()
    S.log('FINISHED')
    print(f'RESULT sat_leaves={len(S.sat_leaves)} undecided={S.undecided} '
          f'leaves_closed={S.leaves_closed}')
    if S.sat_leaves:
        print('>>> SAT: the sign system is realizable. Pi_14 would be REALIZABLE. Investigate.')
    elif S.undecided == 0:
        print('>>> EXHAUSTED: every branch refuted, no undecided leaf. Pi_14 is NOT realizable.')
    else:
        print(f'>>> INCOMPLETE: {S.undecided} leaves undecided; see undecided_{a.tag}.txt')
