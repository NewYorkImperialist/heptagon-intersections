"""A library of minimal forbidden partial patterns.

    python3 library.py orbits.txt library.json

The sweep refutes each of the 33,743 orbit representatives separately, which is
far too many to transcribe into Lean.  But the refutations are LOCAL: the
unsatisfiable core of each instance mentions only 8 to 30 of the 49 (side of P,
side of Q) constraints.  Those constraints, with the values the graph gives
them, form a PARTIAL pattern that is unsatisfiable on its own, so every graph
extending it is refuted by the same argument.

This script builds a library of such partial patterns, each MINIMAL -- no
constraint can be dropped without the instance becoming satisfiable -- and
reports how many are needed to cover all 33,743.  For each orbit it first asks
whether some pattern already in the library occurs in the graph, under any of
the 392 relabellings; only if none does is a new pattern minimized and added.

If the library saturates at a manageable size, a Lean proof of the whole I = 40
branch becomes: refute each library pattern (the machinery of
lean/ResidualCore*.lean, once per pattern), then check that every domain graph
contains one (a decidable, shardable computation).  This script measures the
size; it proves nothing on its own.
"""
import itertools, json, os, subprocess, sys, tempfile, time
sys.path.insert(0, '../residual_realizability')
import sweep

DRAT = os.path.abspath('../drat_trim_crosscheck/drat-trim')
E = sweep.E

OWNER = {}
for i in range(7):
    for j in range(7):
        for want in (False, True):
            for c in sweep.pattern_clauses([((i, 7+j), want)]):
                OWNER[tuple(sorted(c))] = (i, j)

PERMS = [[((k - i) % 7 + 7) % 7 if s else (i + k) % 7 for i in range(7)]
         for s in (0, 1) for k in range(7)]
SYM = []
for a in range(14):
    for b in range(14):
        for sw in (False, True):
            m = [0] * 49
            for i in range(7):
                for j in range(7):
                    u, v = PERMS[a][i], PERMS[b][j]
                    m[i * 7 + j] = (v * 7 + u) if sw else (u * 7 + v)
            SYM.append(m)

def images(sup, val):
    """The 392 relabellings of a partial pattern, deduplicated."""
    out = set()
    for m in SYM:
        s2 = v2 = 0; x = sup
        while x:
            b = (x & -x).bit_length() - 1; x &= x - 1
            s2 |= 1 << m[b]
            if val >> b & 1: v2 |= 1 << m[b]
        out.add((s2, v2))
    return out

def gmask(g):
    """The graph as a 49-bit word, bit i*7+j set when side i of P misses side j of Q."""
    return sum(1 << (i * 7 + j) for i in range(7) for j in range(7) if g[i] >> j & 1)

def unsat(g, pairs, solver):
    cls = sweep.BASE + sweep.pattern_clauses(
        [((i, 7 + j), not bool(g[i] >> j & 1)) for (i, j) in pairs])
    with solver(bootstrap_with=cls) as s:
        return not s.solve()

def main():
    src, dst = sys.argv[1], sys.argv[2]
    rows = [tuple(map(int, l.split())) for l in open(src)]
    from pysat.solvers import Lingeling
    tmp = tempfile.mkdtemp(prefix='sweeplib')
    cnf, drat, core = (os.path.join(tmp, n) for n in ('a.cnf', 'a.drat', 'a.core'))
    lib = []            # (sup, val, pairs) minimal patterns
    index = []          # list of (sup, val) over all relabellings, flattened
    t0 = time.time(); hits = 0
    for n, g in enumerate(rows):
        gm = gmask(g)
        if any((gm & s) == v for (s, v) in index):
            hits += 1
        else:
            cls = sweep.clauses(g)
            with Lingeling(bootstrap_with=cls, with_proof=True) as s:
                assert not s.solve(), 'orbit %d is SAT' % n
                proof = s.get_proof()
            open(cnf, 'wb').write(('p cnf %d %d\n' % (E.nv, len(cls))).encode() +
                                  b''.join((' '.join(map(str, c)) + ' 0\n').encode() for c in cls))
            open(drat, 'w').write('\n'.join(proof) + '\n')
            subprocess.run([DRAT, cnf, drat, '-c', core], capture_output=True, timeout=1800)
            pairs = set()
            for l in open(core):
                if not l.strip() or l[0] in 'pc': continue
                k = tuple(sorted(int(x) for x in l.split() if x != '0'))
                if k in OWNER: pairs.add(OWNER[k])
            for f in (cnf, drat, core):
                if os.path.exists(f): os.remove(f)
            assert unsat(g, pairs, Lingeling), 'core support is not unsatisfiable'
            for p in sorted(pairs):                    # greedy minimization
                if unsat(g, pairs - {p}, Lingeling): pairs = pairs - {p}
            sup = sum(1 << (i * 7 + j) for (i, j) in pairs)
            val = sum(1 << (i * 7 + j) for (i, j) in pairs if g[i] >> j & 1)
            lib.append({'sup': sup, 'val': val, 'pairs': sorted(pairs), 'from_orbit': n})
            index.extend(images(sup, val))
            print('%6d  NEW pattern #%d on %d pairs  (library %d, index %d, %.0f s)'
                  % (n, len(lib), len(pairs), len(lib), len(index), time.time() - t0), flush=True)
        if (n + 1) % 1000 == 0:
            print('%6d  covered=%d  library=%d  %.0f s' % (n + 1, hits, len(lib), time.time() - t0), flush=True)
            json.dump({'patterns': lib, 'covered': hits, 'seen': n + 1},
                      open(dst, 'w'), indent=1)
    json.dump({'patterns': lib, 'covered': hits, 'seen': len(rows)}, open(dst, 'w'), indent=1)
    print('DONE  %d orbits, %d minimal patterns, %d covered by an earlier pattern, %.0f s'
          % (len(rows), len(lib), hits, time.time() - t0), flush=True)

if __name__ == '__main__':
    main()
