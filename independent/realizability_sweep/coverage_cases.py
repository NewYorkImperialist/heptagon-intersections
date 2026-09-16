"""The covering claim, split by degree shape -- and exported for Lean.

    python3 coverage_cases.py patterns2.txt

Seven row degrees, each at least 1, summing to 9: the multiset is
(3,1,1,1,1,1,1) or (2,2,1,1,1,1,1).  Up to a rotation of `P` the heavy rows can
be placed canonically, leaving four cases -- one row of degree 3, or two rows of
degree 2 at cyclic distance 1, 2 or 3.  Fixing the row degrees removes the
global cardinality encoding, which is what made the single-formula version of
this refutation enormous.

  one formula, no symmetry breaking     986-clause core,  59,657 steps
  one formula, 6 lex-leader constraints 976-clause core,  30,149 steps
  28 shapes, no rotation WLOG           614-clause core,  68,884 steps total,
                                        largest single case 2,934
  FOUR cases, rotation WLOG             543-611 clause cores, 10,597 total,
                                        largest single case 2,934

The last line is the one that matters: the cost of transcribing a refutation
into Lean is per file, and no file is far outside what has already been built
here (`lean/PatternCore003.lean` is 420 steps against a 1,233-clause core).

Writes `lean_export/ccase00k.cnf` and `.lrat` for each case, in the form
`python/residual/gen_lean_refutation.py` consumes.
"""
import itertools, os, subprocess, sys, time

DRAT = os.path.abspath('../drat_trim_crosscheck/drat-trim')
OUT = 'lean_export'
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

CASES = [('one row of degree 3, at row 0', {0: 3}),
         ('two rows of degree 2, cyclic distance 1', {0: 2, 1: 2}),
         ('two rows of degree 2, cyclic distance 2', {0: 2, 2: 2}),
         ('two rows of degree 2, cyclic distance 3', {0: 2, 3: 2})]

def exactly(lits, k):
    cl = [[-x for x in c] for c in itertools.combinations(lits, k+1)]
    cl += [list(c) for c in itertools.combinations(lits, len(lits)-k+1)]
    return cl

def main():
    from pysat.solvers import Lingeling
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
    X = [n+1 for n in range(49)]
    os.makedirs(OUT, exist_ok=True)
    total = 0
    for k, (name, heavy) in enumerate(CASES):
        cls = []
        for i in range(7): cls += exactly([X[i*7+j] for j in range(7)], heavy.get(i, 1))
        for j in range(7): cls.append([X[i*7+j] for i in range(7)])
        for sup, val in imgs:
            cls.append([(-X[b] if (val >> b & 1) else X[b]) for b in range(49) if sup >> b & 1])
        t = time.time()
        with Lingeling(bootstrap_with=cls, with_proof=True) as s:
            sat = s.solve(); proof = None if sat else s.get_proof()
        assert not sat, '%s is SATISFIABLE -- the patterns do not cover it' % name
        full = '/tmp/ccase%03d.cnf' % k
        open(full, 'w').write('p cnf 49 %d\n' % len(cls) +
                              ''.join(' '.join(map(str, c)) + ' 0\n' for c in cls))
        open('/tmp/ccase%03d.drat' % k, 'w').write('\n'.join(proof) + '\n')
        core = '%s/ccase%03d.cnf' % (OUT, k); lem = '/tmp/ccase%03d.lem' % k
        p = subprocess.run([DRAT, full, '/tmp/ccase%03d.drat' % k, '-c', core, '-l', lem],
                           capture_output=True, text=True, timeout=7200)
        assert 's VERIFIED' in p.stdout, p.stdout[-400:]
        lrat = '/tmp/ccase%03d.lrat' % k
        p2 = subprocess.run([DRAT, core, lem, '-L', lrat], capture_output=True, text=True, timeout=7200)
        assert 's VERIFIED' in p2.stdout, p2.stdout[-400:]
        ncore = int(open(core).readline().split()[3])
        with open('%s/ccase%03d.lrat' % (OUT, k), 'w') as f:
            steps = 0
            for l in open(lrat):
                if ' d ' not in l: f.write(l); steps += 1
        total += steps
        print('case %d  %-42s  %d clauses -> core %d, LRAT %d steps, %.1f s'
              % (k, name, len(cls), ncore, steps, time.time()-t), flush=True)
    print('four cases, %d LRAT steps in total' % total)

if __name__ == '__main__':
    main()
