"""How hard is the covering step, as a refutation?

    python3 coverage_cnf.py patterns.txt

"A 7x7 graph with exactly 9 edges, no isolated side, containing no relabelled
copy of any pattern in the file" is a CNF over the 49 cells plus a cardinality
encoding.  Its UNSAT is exactly the covering claim that `cover.cpp` checks by
enumeration.  This measures the refutation, because transcribing it into Lean --
the way lean/PatternCore00k.lean is transcribed -- is the missing step, and its
cost is the proof length against the core size.
"""
import os, subprocess, sys, time
from pysat.formula import IDPool
from pysat.card import CardEnc, EncType
from pysat.solvers import Lingeling

DRAT = os.path.abspath('../drat_trim_crosscheck/drat-trim')
PERMS = [[((k-i) % 7 + 7) % 7 if s else (i+k) % 7 for i in range(7)]
         for s in (0, 1) for k in range(7)]
SYM = []
for a in range(14):
    for b in range(14):
        for sw in (False, True):
            m = [0]*49
            for i in range(7):
                for j in range(7):
                    u, v = PERMS[a][i], PERMS[b][j]
                    m[i*7+j] = (v*7+u) if sw else (u*7+v)
            SYM.append(m)

def main():
    imgs = set()
    for line in open(sys.argv[1]):
        cells = [c for c in line.strip() if c in '.cd']
        if not cells: continue
        sup = sum(1 << n for n, c in enumerate(cells) if c != '.')
        val = sum(1 << n for n, c in enumerate(cells) if c == 'd')
        for m in SYM:
            s2 = v2 = 0; x = sup
            while x:
                b = (x & -x).bit_length()-1; x &= x-1
                s2 |= 1 << m[b]
                if val >> b & 1: v2 |= 1 << m[b]
            imgs.add((s2, v2))
    pool = IDPool(); X = [pool.id(('x', n)) for n in range(49)]
    cls = [[X[i*7+j] for j in range(7)] for i in range(7)]
    cls += [[X[i*7+j] for i in range(7)] for j in range(7)]
    cls += CardEnc.equals(lits=X, bound=9, vpool=pool, encoding=EncType.seqcounter).clauses
    for sup, val in imgs:
        cls.append([(-X[b] if (val >> b & 1) else X[b]) for b in range(49) if sup >> b & 1])
    t = time.time()
    with Lingeling(bootstrap_with=cls, with_proof=True) as s:
        sat = s.solve(); proof = None if sat else s.get_proof()
    if sat:
        print('SATISFIABLE -- the patterns do NOT cover the domain'); sys.exit(1)
    open('/tmp/cov.cnf', 'w').write('p cnf %d %d\n' % (pool.top, len(cls)) +
                                    ''.join(' '.join(map(str, c)) + ' 0\n' for c in cls))
    open('/tmp/cov.drat', 'w').write('\n'.join(proof) + '\n')
    p = subprocess.run([DRAT, '/tmp/cov.cnf', '/tmp/cov.drat', '-c', '/tmp/cov.core',
                        '-l', '/tmp/cov.lem'], capture_output=True, text=True, timeout=7200)
    ok = 's VERIFIED' in p.stdout
    ncore = int(open('/tmp/cov.core').readline().split()[3]) if ok else -1
    p2 = subprocess.run([DRAT, '/tmp/cov.core', '/tmp/cov.lem', '-L', '/tmp/cov.lrat'],
                        capture_output=True, text=True, timeout=7200)
    steps = sum(1 for l in open('/tmp/cov.lrat') if ' d ' not in l) if 's VERIFIED' in p2.stdout else -1
    print('%s: %d images, %d clauses, %d vars, UNSAT in %.0f s, drat-trim %s, core %d clauses, LRAT %d steps'
          % (sys.argv[1], len(imgs), len(cls), pool.top, time.time()-t,
             'VERIFIED' if ok else 'FAILED', ncore, steps))

if __name__ == '__main__':
    main()
