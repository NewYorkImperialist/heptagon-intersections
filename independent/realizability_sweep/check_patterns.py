"""The four patterns: unsatisfiable, minimally so, and not vacuous.

    python3 check_patterns.py patterns.txt [export-prefix]

For each pattern:
  * UNSAT, with a DRAT proof checked by drat-trim, and an unsat core exported
    for the Lean generators;
  * MINIMAL -- dropping any single constrained pair makes it satisfiable, and a
    model is exhibited and checked;
  * the constraint set is a partial pattern only: the remaining side pairs are
    left free, so the theorem it yields applies to every graph extending it.
"""
import hashlib, json, os, subprocess, sys
sys.path.insert(0, '../residual_realizability')
import sweep

DRAT = os.path.abspath('../drat_trim_crosscheck/drat-trim')
OUT = 'lean_export'
os.makedirs(OUT, exist_ok=True)

def read(path):
    pats = []
    for line in open(path):
        cells = [c for c in line.strip() if c in '.cd']
        if not cells: continue
        assert len(cells) == 49, len(cells)
        pats.append({(n // 7, n % 7): (c == 'd') for n, c in enumerate(cells) if c != '.'})
    return pats

def clauses(p):
    # `pattern_clauses` wants want_cross; `p[(i,j)]` is True when DISJOINT.
    return sweep.BASE + sweep.pattern_clauses([((i, 7 + j), not d) for (i, j), d in p.items()])

def dimacs(cls):
    return ('p cnf %d %d\n' % (sweep.E.nv, len(cls)) +
            ''.join(' '.join(map(str, c)) + ' 0\n' for c in cls)).encode()

def main():
    from pysat.solvers import Lingeling
    PRE = sys.argv[2] if len(sys.argv) > 2 else 'pcore'
    pats = read(sys.argv[1])
    print('%d patterns' % len(pats))
    summary = []
    for k, p in enumerate(pats):
        cls = clauses(p)
        with Lingeling(bootstrap_with=cls, with_proof=True) as s:
            sat = s.solve()
            proof = None if sat else s.get_proof()
        assert not sat, 'pattern %d is SAT' % k
        cnf = '/tmp/full%03d.cnf' % k; drat = '/tmp/pat%03d.drat' % k
        core = '%s/%s%03d.cnf' % (OUT, PRE, k); lrat = '/tmp/pat%03d.lrat' % k
        lem = '/tmp/pat%03d.lem' % k
        open(cnf, 'wb').write(dimacs(cls))
        open(drat, 'w').write('\n'.join(proof) + '\n')
        r = subprocess.run([DRAT, cnf, drat, '-c', core, '-l', lem],
                           capture_output=True, text=True, timeout=3600)
        assert 's VERIFIED' in r.stdout, r.stdout[-400:]
        r2 = subprocess.run([DRAT, core, lem, '-L', lrat], capture_output=True, text=True, timeout=3600)
        assert 's VERIFIED' in r2.stdout, r2.stdout[-400:]
        ncore = int(open(core).readline().split()[3])
        steps = sum(1 for l in open(lrat) if ' d ' not in l)
        with open('%s/%s%03d.lrat' % (OUT, PRE, k), 'w') as f:
            for l in open(lrat):
                if ' d ' not in l: f.write(l)
        os.remove(cnf)
        # minimality: dropping any one constrained pair must make it satisfiable
        nsat = 0
        for key in sorted(p):
            q = {a: b for a, b in p.items() if a != key}
            cl = clauses(q)
            with Lingeling(bootstrap_with=cl) as s:
                ok = s.solve()
                m = set(s.get_model()) if ok else None
            assert ok, 'pattern %d is not minimal: dropping %s keeps it UNSAT' % (k, key)
            assert all(any(x in m for x in c) for c in cl), 'bad model'
            nsat += 1
        summary.append({'pattern': k, 'constraints': len(p), 'core_clauses': ncore,
                        'proof_steps': steps, 'minimal_drops_all_sat': nsat})
        print('pattern %d: %2d constraints, UNSAT (drat-trim VERIFIED), core %d clauses, '
              'LRAT %d steps, all %d single drops SAT with a checked model'
              % (k, len(p), ncore, steps, nsat), flush=True)
    json.dump(summary, open('patterns_checked.json' if PRE == 'pcore'
                             else 'patterns2_checked.json', 'w'), indent=1)
    print('\nALL PATTERN CHECKS PASSED')

if __name__ == '__main__':
    main()
