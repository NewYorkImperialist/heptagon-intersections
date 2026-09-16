"""How local are the refutations?

    python3 patterns.py orbits.txt patterns.jsonl [start] [stop]

Each UNSAT instance of the sweep has a small unsatisfiable core, and the core
only mentions some of the 49 (side of P, side of Q) pattern constraints.  The
ones it mentions, with the values the graph gives them, form a PARTIAL pattern
that is already unsatisfiable -- so every graph extending that partial pattern
is refuted by the same argument.

If the number of distinct partial patterns, up to relabelling, is small, then a
Lean proof of the whole I = 40 branch is a finite number of refutations plus a
covering check, rather than one refutation per graph.  This script measures
that number.  It proves nothing on its own.
"""
import hashlib, itertools, json, os, subprocess, sys, tempfile, time
sys.path.insert(0, '../residual_realizability')
import sweep

DRAT = os.path.abspath('../drat_trim_crosscheck/drat-trim')
E = sweep.E

# clause -> the (P side, Q side) pattern constraint it came from
OWNER = {}
for i in range(7):
    for j in range(7):
        for want in (False, True):
            for c in sweep.pattern_clauses([((i, 7+j), want)]):
                OWNER[tuple(sorted(c))] = (i, j)

PERM = [[((k - i) % 7 + 7) % 7 if s else (i + k) % 7 for i in range(7)]
        for s in (0, 1) for k in range(7)]
SYM = []
for a in range(14):
    for b in range(14):
        for sw in (False, True):
            m = [0] * 49
            for i in range(7):
                for j in range(7):
                    u, v = PERM[a][i], PERM[b][j]
                    m[i * 7 + j] = (v * 7 + u) if sw else (u * 7 + v)
            SYM.append(m)
assert len(SYM) == 392

def canon(sup, val):
    """Lex-least (support, values) over the 392 relabellings."""
    best = None
    for m in SYM:
        s2 = v2 = 0
        x = sup
        while x:
            b = (x & -x).bit_length() - 1
            x &= x - 1
            s2 |= 1 << m[b]
            if val >> b & 1: v2 |= 1 << m[b]
        if best is None or (s2, v2) < best: best = (s2, v2)
    return best

def dimacs(cls, nv):
    return ('p cnf %d %d\n' % (nv, len(cls)) +
            ''.join(' '.join(map(str, c)) + ' 0\n' for c in cls)).encode()

def main():
    src, dst = sys.argv[1], sys.argv[2]
    lo = int(sys.argv[3]) if len(sys.argv) > 3 else 0
    hi = int(sys.argv[4]) if len(sys.argv) > 4 else 10**9
    rows = [tuple(map(int, l.split())) for l in open(src)]
    from pysat.solvers import Lingeling
    tmp = tempfile.mkdtemp(prefix='sweeppat')
    cnf, drat, core = (os.path.join(tmp, n) for n in ('a.cnf', 'a.drat', 'a.core'))
    t0 = time.time()
    with open(dst, 'a') as out:
        for n, g in enumerate(rows):
            if n < lo or n >= hi: continue
            cls = sweep.clauses(g)
            with Lingeling(bootstrap_with=cls, with_proof=True) as s:
                assert not s.solve(), 'instance %d is SAT' % n
                proof = s.get_proof()
            open(cnf, 'wb').write(dimacs(cls, E.nv))
            open(drat, 'w').write('\n'.join(proof) + '\n')
            subprocess.run([DRAT, cnf, drat, '-c', core], capture_output=True, timeout=1800)
            used = set()
            for l in open(core):
                if not l.strip() or l[0] in 'pc': continue
                k = tuple(sorted(int(x) for x in l.split() if x != '0'))
                if k in OWNER: used.add(OWNER[k])
            sup = val = 0
            for (i, j) in used:
                sup |= 1 << (i * 7 + j)
                if g[i] >> j & 1: val |= 1 << (i * 7 + j)
            cs, cv = canon(sup, val)
            out.write(json.dumps({'n': n, 'g': list(g), 'pairs': len(used),
                                  'sup': cs, 'val': cv}) + '\n')
            out.flush()
            for f in (cnf, drat, core):
                if os.path.exists(f): os.remove(f)
            if (n - lo + 1) % 50 == 0:
                print('%6d  %.0f s' % (n - lo + 1, time.time() - t0), flush=True)
    print('RANGE %d..%d done in %.0f s' % (lo, min(hi, len(rows)), time.time() - t0), flush=True)

if __name__ == '__main__':
    main()
