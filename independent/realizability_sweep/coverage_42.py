"""The covering step for `I = 42`: the perfect-matching case.

    python3 independent/realizability_sweep/coverage_42.py patterns2.txt

`I = 42` leaves `49 - 42 = 7` disjoint side pairs, and with every side of each
polygon missing at least one side of the other (`SegmentGeometry`'s minimum
degree, true of every configuration) seven edges over seven rows forces **every
row and every column degree to be exactly 1** — a perfect matching.  There are
`7! = 5040` of them, and the **same two forbidden patterns** that cover the
13,003,620 graphs of the `I = 40` domain cover all 5040 as well.

So, unlike the `I = 40` side, there is no degree-shape split and no rotation
WLOG: one CNF, one refutation.

Writes `lean_export/mcase000.{cnf,lrat}` in the form
`python/residual/gen_lean_refutation_shards.py` consumes.
"""
import itertools, os, subprocess, sys, time

DRAT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..',
                                    'drat_trim_crosscheck', 'drat-trim'))
HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(HERE, 'lean_export')

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
                    m[i*7+j] = (v*7+u) if sw else (u*7+v)
            SYM.append(m)

def exactly_one(lits):
    """Exactly one of `lits` holds: 21 at-most-one pairs plus one at-least-one."""
    cl = [[-a, -b] for a, b in itertools.combinations(lits, 2)]
    cl.append(list(lits))
    return cl

def main():
    src = sys.argv[1] if len(sys.argv) > 1 else os.path.join(HERE, 'patterns2.txt')
    from pysat.solvers import Lingeling
    imgs = set()
    for line in open(src):
        cells = [c for c in line.strip() if c in '.cd']
        if not cells: continue
        sup = sum(1 << n for n, c in enumerate(cells) if c != '.')
        val = sum(1 << n for n, c in enumerate(cells) if c == 'd')
        for m in SYM:
            s2 = v2 = 0; x = sup
            while x:
                b = (x & -x).bit_length() - 1; x &= x - 1
                s2 |= 1 << m[b]
                if val >> b & 1: v2 |= 1 << m[b]
            imgs.add((s2, v2))

    # Sanity, before proving anything: the patterns really do cover all 5040.
    nun = sum(1 for p in itertools.permutations(range(7))
              if not any((sum(1 << (i*7+p[i]) for i in range(7)) & s) == v for s, v in imgs))
    assert nun == 0, f'{nun} perfect matchings are not covered'
    print('all 5040 perfect matchings contain a relabelled pattern', flush=True)

    X = [n + 1 for n in range(49)]
    cls = []
    for i in range(7): cls += exactly_one([X[i*7+j] for j in range(7)])
    for j in range(7): cls += exactly_one([X[i*7+j] for i in range(7)])
    for sup, val in imgs:
        cls.append([(-X[b] if (val >> b & 1) else X[b]) for b in range(49) if sup >> b & 1])

    t = time.time()
    with Lingeling(bootstrap_with=cls, with_proof=True) as s:
        sat = s.solve(); proof = None if sat else s.get_proof()
    assert not sat, 'SATISFIABLE -- the patterns do not cover the I = 42 domain'
    os.makedirs(OUT, exist_ok=True)
    full = '/tmp/mcase000_full.cnf'
    open(full, 'w').write('p cnf 49 %d\n' % len(cls) +
                          ''.join(' '.join(map(str, c)) + ' 0\n' for c in cls))
    open('/tmp/mcase000.drat', 'w').write('\n'.join(proof) + '\n')
    core = os.path.join(OUT, 'mcase000.cnf'); lem = '/tmp/mcase000.lem'
    p = subprocess.run([DRAT, full, '/tmp/mcase000.drat', '-c', core, '-l', lem],
                       capture_output=True, text=True, timeout=7200)
    assert 's VERIFIED' in p.stdout, p.stdout[-400:]
    lrat = '/tmp/mcase000.lrat'
    p2 = subprocess.run([DRAT, core, lem, '-L', lrat], capture_output=True, text=True, timeout=7200)
    assert 's VERIFIED' in p2.stdout, p2.stdout[-400:]
    ncore = int(open(core).readline().split()[3])
    steps = 0
    with open(os.path.join(OUT, 'mcase000.lrat'), 'w') as f:
        for l in open(lrat):
            if ' d ' not in l: f.write(l); steps += 1
    print('%d clauses -> core %d, LRAT %d steps, %.1f s'
          % (len(cls), ncore, steps, time.time() - t), flush=True)

if __name__ == '__main__':
    main()
