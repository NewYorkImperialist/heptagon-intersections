#!/usr/bin/env python3
"""Exhaustive sign-split DFS for Pi_14, with progress logging and checkpoints."""
import sys, time, argparse, json
from z3 import *
from pi14_common import PI14, VERTS, quad_triples, canon
from pi14_signs import build_index, order_triples, mk_points, orient_expr
from pi14_v2 import control_conditions


def point_order(keys, specs, seq):
    """Order triples by a point-insertion sequence: all constraint triples whose
    largest-position vertex is seq[k] come at step k (ties by index)."""
    pos = {v: i for i, v in enumerate(seq)}
    return sorted(range(len(keys)),
                  key=lambda i: (max(pos[v] for v in keys[i]),
                                 sorted(pos[v] for v in keys[i])))


class Exhaustive:
    def __init__(self, conds, order_mode, node_ms, z3_every, logf):
        self.keys, self.specs = build_index(conds)
        if order_mode == 'cond':
            self.order = order_triples(self.keys, self.specs)
        else:
            seq = [0, 1, 2, 3, 4, 7, 8, 9, 10, 11, 12]
            self.order = point_order(self.keys, self.specs, seq)
        self.pt = mk_points()
        self.expr = [orient_expr(self.pt, k) for k in self.keys]
        self.sign = [0]*len(self.keys)
        self.touch = {}
        for ci, (entry, _) in enumerate(self.specs):
            for ti, _ in entry:
                self.touch.setdefault(ti, set()).add(ci)
        self.node_ms = node_ms
        self.leaf_ms = 30000
        self.z3_every = z3_every
        self.logf = logf
        self.nodes = 0; self.z3_calls = 0; self.z3_unsat = 0
        self.comb_prune = 0
        self.sat_leaves = []; self.unknown_leaves = 0
        self.t0 = time.time()
        self.PROG = 12                    # progress measured over this prefix depth
        self.done_prefixes = 0
        self.last_log = 0

    def cond_ok(self, ci):
        entry, want = self.specs[ci]
        s = [self.sign[ti]*sg for ti, sg in entry]
        if 0 in s:
            return True
        return ((s[0] != s[1]) and (s[2] != s[3])) == want

    def mk_solver(self, depth, ms):
        s = Tactic('qfnra-nlsat').solver()
        s.set("timeout", ms)
        for ti in self.order[:depth]:
            e = self.expr[ti]
            s.add(e > 0 if self.sign[ti] > 0 else e < 0)
        return s

    def log(self, tag=''):
        el = time.time()-self.t0
        print(f'[{el:8.0f}s] prefixes {self.done_prefixes}/{1<<self.PROG}  '
              f'nodes={self.nodes} z3={self.z3_calls} unsat_prune={self.z3_unsat} '
              f'comb_prune={self.comb_prune} unknown_leaves={self.unknown_leaves} '
              f'sat_leaves={len(self.sat_leaves)} {tag}', file=self.logf, flush=True)

    def run(self, depth=0):
        if depth == len(self.order):
            s = self.mk_solver(depth, self.leaf_ms)
            r = s.check()
            self.z3_calls += 1
            if r == sat:
                self.sat_leaves.append(list(self.sign))
                self.log('*** SAT LEAF ***')
                open('sat_leaf.json','a').write(repr(list(zip(self.keys,self.sign)))+'\n')
            elif r == unknown:
                self.unknown_leaves += 1
                open('unknown_leaves.txt','a').write(
                    ' '.join(f'{k[0]}{k[1]}{k[2]}:{sg:+d}' for k,sg in zip(self.keys,self.sign))+'\n')
            else:
                self.z3_unsat += 1
            return
        ti = self.order[depth]
        for sg in (1, -1):
            self.sign[ti] = sg
            self.nodes += 1
            if not all(self.cond_ok(ci) for ci in self.touch[ti]):
                self.comb_prune += 1
                if depth < self.PROG:
                    self.done_prefixes += 1 << (self.PROG-depth-1)
                self.sign[ti] = 0
                continue
            if depth % self.z3_every == 0:
                self.z3_calls += 1
                if self.mk_solver(depth+1, self.node_ms).check() == unsat:
                    self.z3_unsat += 1
                    if depth < self.PROG:
                        self.done_prefixes += 1 << (self.PROG-depth-1)
                    self.sign[ti] = 0
                    continue
            self.run(depth+1)
            if depth == self.PROG-1:
                self.done_prefixes += 1
            if time.time()-self.last_log > 30:
                self.last_log = time.time(); self.log()
        self.sign[ti] = 0


if __name__ == '__main__':
    ap = argparse.ArgumentParser()
    ap.add_argument('--control', action='store_true')
    ap.add_argument('--order', default='cond', choices=['cond', 'point'])
    ap.add_argument('--node-ms', type=int, default=1500)
    ap.add_argument('--z3-every', type=int, default=1)
    a = ap.parse_args()
    conds = control_conditions() if a.control else PI14
    E = Exhaustive(conds, a.order, a.node_ms, a.z3_every, sys.stdout)
    print(f'# {"CONTROL" if a.control else "PI_14"} order={a.order} '
          f'node_ms={a.node_ms} z3_every={a.z3_every} vars={len(E.keys)}', flush=True)
    sys.setrecursionlimit(10000)
    E.run()
    E.log('FINISHED')
    print('RESULT sat_leaves=%d unknown_leaves=%d' % (len(E.sat_leaves), E.unknown_leaves))
    if E.sat_leaves:
        print('SAT LEAF FOUND -> the sign system is realizable; investigate immediately')
    elif E.unknown_leaves == 0:
        print('EXHAUSTED WITH NO SAT AND NO UNKNOWN LEAF')
