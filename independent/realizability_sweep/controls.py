"""Controls for the realizability sweep.  Run after sweep.py.

An encoder that answered UNSAT for every input would produce exactly the
sweep's headline result and mean nothing.  These checks are what make the
result informative:

  1. `clauses(g)` is the same clause SET as `run.encode(g)` in
     `independent/residual_realizability/`, which was itself control-tested
     there.  Only the emission order differs.
  2. The lower-bound certificate -- a pair of simple heptagons that exists,
     with 38 crossings -- is SAT, and its own chirotope satisfies every clause.
  3. Randomly generated genuine simple-heptagon pairs are SAT, with their own
     chirotopes as models.  These have crossing counts spread below 40, so the
     encoder is exercised across the pattern space, not at one point.
  4. Corrupting one pattern bit of a realizable configuration makes the encoder
     disagree with the truth -- so the pattern clauses are load-bearing rather
     than inert.
"""
import itertools, json, random, sys
sys.path.insert(0, '../residual_realizability')
import sweep
from run import encode
from pysat.solvers import Lingeling

E = sweep.E
def det(p, q, r): return (q[0]-p[0])*(r[1]-p[1]) - (q[1]-p[1])*(r[0]-p[0])
def cross(P, i, j, k, l):
    return (det(P[i],P[j],P[k])*det(P[i],P[j],P[l]) < 0 and
            det(P[k],P[l],P[i])*det(P[k],P[l],P[j]) < 0)
def graph_of(P):
    return tuple(sum(1 << j for j in range(7)
                     if not cross(P, i, (i+1) % 7, 7+j, 7+(j+1) % 7)) for i in range(7))
def gp(P): return all(det(*(P[i] for i in t)) for t in itertools.combinations(range(14), 3))
def simple(P):
    return all(not cross(P, off+i, off+(i+1) % 7, off+j, off+(j+1) % 7)
               for off in (0, 7) for i, j in itertools.combinations(range(7), 2)
               if (j-i) % 7 not in (1, 6))
def chirotope(P):
    return {v if det(*(P[i] for i in t)) > 0 else -v for t, v in E.var.items()}

def sat(cls):
    with Lingeling(bootstrap_with=cls) as s:
        return (True, set(s.get_model())) if s.solve() else (False, None)

fails = 0
def report(name, ok, extra=''):
    global fails
    if not ok: fails += 1
    print('%-4s %s %s' % ('ok' if ok else 'FAIL', name, extra), flush=True)

# --- 1. encoder agreement ------------------------------------------------
rows = [tuple(map(int, l.split())) for l in open('orbits.txt')]
random.seed(20260916)
for g in random.sample(rows, 8):
    report('encoder agrees with run.encode on %s' % (g,),
           {tuple(c) for c in sweep.clauses(g)} == {tuple(c) for c in encode(g).cls})

# --- 2. the lower-bound certificate --------------------------------------
d = json.load(open('../../data/lower_bound/lower_bound_38.json')); P = d['P'] + d['Q']
g = graph_of(P); cls = sweep.clauses(g)
s, m = sat(cls)
report('lower_bound_38 is SAT (graph %s, %d edges)' % (g, sum(bin(x).count('1') for x in g)), s)
report('lower_bound_38 own chirotope is a model', all(any(x in chirotope(P) for x in c) for c in cls))

# --- 3. random genuine configurations -------------------------------------
found = 0; tried = 0
counts = []
while found < 12 and tried < 400000:
    tried += 1
    pts = random.sample([(x, y) for x in range(-40, 41) for y in range(-40, 41)], 14)
    if not gp(pts) or not simple(pts): continue
    g = graph_of(pts); cls = sweep.clauses(g)
    ncross = 49 - sum(bin(x).count('1') for x in g)
    s, m = sat(cls)
    ok = s and all(any(x in chirotope(pts) for x in c) for c in cls)
    report('random simple pair, %d crossings: SAT and own chirotope is a model' % ncross, ok)
    counts.append(ncross); found += 1
print('   (%d random configurations accepted out of %d point sets tried; '
      'crossing counts %s)' % (found, tried, sorted(counts)), flush=True)

# --- 4. the pattern clauses are load-bearing ------------------------------
d = json.load(open('../../data/lower_bound/lower_bound_38.json')); P = d['P'] + d['Q']
g = list(graph_of(P)); g[0] ^= 1                      # flip one (P side 0, Q side 0) bit
cls = sweep.clauses(tuple(g))
report('flipping one pattern bit makes the true chirotope violate a clause',
       not all(any(x in chirotope(P) for x in c) for c in cls))

print('\n%s' % ('ALL CONTROLS PASSED' if fails == 0 else '%d CONTROL(S) FAILED' % fails))
sys.exit(1 if fails else 0)
