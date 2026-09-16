"""High-crossing controls for the realizability sweep.

`controls.py` exercises the encoder on random simple heptagon pairs, but random
point sets almost never produce many crossings -- the sample tops out around a
dozen, while the sweep is about 40.  This script closes that gap from the other
end, by local search from the lower-bound certificate: move one vertex at a
time, keep the move if both heptagons stay simple and the fourteen points stay
in general position, and record the configurations met along the way.

Every one of them is a pair of simple heptagons that demonstrably exists, so
the encoder must answer SAT for each, with the configuration's own chirotope
as a model.  If the sweep's all-UNSAT verdict came from a systematically
over-constrained encoding, these are where it would show.
"""
import itertools, json, random, sys
sys.path.insert(0, '../residual_realizability')
import sweep
from pysat.solvers import Lingeling

E = sweep.E
def det(p, q, r): return (q[0]-p[0])*(r[1]-p[1]) - (q[1]-p[1])*(r[0]-p[0])
def cross(P, i, j, k, l):
    return (det(P[i],P[j],P[k])*det(P[i],P[j],P[l]) < 0 and
            det(P[k],P[l],P[i])*det(P[k],P[l],P[j]) < 0)
def gp(P): return all(det(*(P[i] for i in t)) for t in itertools.combinations(range(14), 3))
def simple(P):
    return all(not cross(P, off+i, off+(i+1) % 7, off+j, off+(j+1) % 7)
               for off in (0, 7) for i, j in itertools.combinations(range(7), 2)
               if (j-i) % 7 not in (1, 6))
def ncross(P):
    return sum(1 for i in range(7) for j in range(7)
               if cross(P, i, (i+1) % 7, 7+j, 7+(j+1) % 7))
def graph_of(P):
    return tuple(sum(1 << j for j in range(7)
                     if not cross(P, i, (i+1) % 7, 7+j, 7+(j+1) % 7)) for i in range(7))
def chirotope(P):
    return {v if det(*(P[i] for i in t)) > 0 else -v for t, v in E.var.items()}

d = json.load(open('../../data/lower_bound/lower_bound_38.json'))
start = [tuple(p) for p in d['P'] + d['Q']]
assert gp(start) and simple(start) and ncross(start) == 38

random.seed(20260916)
seen = {}                                   # crossing count -> configuration
cur = list(start)
seen[38] = list(cur)
STEP = [(dx, dy) for dx in (-3,-2,-1,0,1,2,3) for dy in (-3,-2,-1,0,1,2,3) if (dx, dy) != (0, 0)]
for _ in range(60000):
    i = random.randrange(14); dx, dy = random.choice(STEP)
    cand = list(cur); cand[i] = (cand[i][0] + dx, cand[i][1] + dy)
    if len(set(cand)) != 14 or not gp(cand) or not simple(cand): continue
    cur = cand
    seen.setdefault(ncross(cur), list(cur))

fails = 0
print('local search from lower_bound_38 met crossing counts %s' %
      sorted(seen, reverse=True), flush=True)
for c in sorted(seen, reverse=True):
    P = seen[c]; g = graph_of(P); cls = sweep.clauses(g)
    with Lingeling(bootstrap_with=cls) as s:
        sat = s.solve()
    ok = sat and all(any(x in chirotope(P) for x in cl) for cl in cls)
    if not ok: fails += 1
    print('%-4s %2d crossings, graph %s: SAT with its own chirotope as a model'
          % ('ok' if ok else 'FAIL', c, g), flush=True)

print('\n%s' % ('ALL HIGH-CROSSING CONTROLS PASSED' if fails == 0
                else '%d CONTROL(S) FAILED' % fails))
sys.exit(1 if fails else 0)
