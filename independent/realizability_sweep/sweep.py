"""Oriented-matroid realizability sweep over the I = 40 candidate domain.

    python3 sweep.py orbits.txt out.jsonl [start] [stop]

For each orbit representative, encode "two simple heptagons in general position
with this disjointness graph" as a rank-3 chirotope SAT problem -- exactly the
encoding of `independent/residual_realizability/indep_om.py`, reused openly --
and record SAT or UNSAT.  UNSAT means no such pair of heptagons exists, with no
appeal to any published lemma.

The Grassmann-Plucker and acyclicity clauses do not depend on the graph, so
they are built once; only the pattern clauses are rebuilt per graph.
"""
import itertools, json, sys, time
sys.path.insert(0, '../residual_realizability')
from indep_om import Enc

E = Enc(range(14))
SEGS = {i: (i//7*7 + i % 7, i//7*7 + (i+1) % 7) for i in range(14)}

# --- graph-independent clauses -------------------------------------------
FIXED = []
for five in itertools.combinations(range(14), 5):
    for a in five:
        b, c, d, e = [x for x in five if x != a]
        L = [E.lit(a,b,c), E.lit(a,d,e), E.lit(a,b,d), E.lit(a,c,e), E.lit(a,b,e), E.lit(a,c,d)]
        for bits in itertools.product([False, True], repeat=6):
            if ((bits[0]==bits[1]) == (bits[2]!=bits[3])) and ((bits[2]!=bits[3]) == (bits[4]==bits[5])):
                FIXED.append([-l if x else l for l, x in zip(L, bits)])
for i, j, k, l in itertools.combinations(range(14), 4):
    L = [E.lit(j,k,l), E.lit(i,k,l), E.lit(i,j,l), E.lit(i,j,k)]
    for bits in itertools.product([False, True], repeat=4):
        if bits[0] == (not bits[1]) == bits[2] == (not bits[3]):
            FIXED.append([-x if b else x for x, b in zip(L, bits)])

# --- the same-polygon pattern clauses are graph-independent too -----------
def pattern_clauses(pairs):
    out = []
    for (s, t), want in pairs:
        p, q = SEGS[s]; r, w = SEGS[t]
        if len({p, q, r, w}) != 4: continue
        L = [E.lit(p,q,r), E.lit(p,q,w), E.lit(r,w,p), E.lit(r,w,q)]
        for bits in itertools.product([False, True], repeat=4):
            if ((bits[0]!=bits[1]) and (bits[2]!=bits[3])) == want: continue
            out.append([-x if b else x for x, b in zip(L, bits)])
    return out

SAME = pattern_clauses([((off+i, off+j), False) for off in (0, 7)
                        for i, j in itertools.combinations(range(7), 2)])
BASE = FIXED + SAME

def clauses(g):
    return BASE + pattern_clauses([((i, 7+j), not bool(g[i] >> j & 1))
                                   for i in range(7) for j in range(7)])

def main():
    src, dst = sys.argv[1], sys.argv[2]
    lo = int(sys.argv[3]) if len(sys.argv) > 3 else 0
    hi = int(sys.argv[4]) if len(sys.argv) > 4 else 10**9
    rows = [tuple(map(int, l.split())) for l in open(src)]
    from pysat.solvers import Lingeling
    t0 = time.time(); nsat = nunsat = 0
    with open(dst, 'w') as out:
        for n, g in enumerate(rows):
            if n < lo or n >= hi: continue
            t = time.time()
            with Lingeling(bootstrap_with=clauses(g)) as s:
                sat = s.solve()
                model = s.get_model() if sat else None
            if sat:
                nsat += 1
                cls = clauses(g); ms = set(model)
                assert all(any(x in ms for x in c) for c in cls), 'model does not satisfy'
            else:
                nunsat += 1
            out.write(json.dumps({'n': n, 'g': list(g), 'sat': sat,
                                  'seconds': round(time.time()-t, 3)}) + '\n')
            out.flush()
            if (n - lo + 1) % 100 == 0:
                print('%6d done  sat=%d unsat=%d  %.1f s elapsed' %
                      (n - lo + 1, nsat, nunsat, time.time()-t0), flush=True)
    print('RANGE %d..%d  sat=%d unsat=%d  %.1f s' % (lo, min(hi, len(rows)), nsat, nunsat, time.time()-t0), flush=True)

if __name__ == '__main__':
    main()
