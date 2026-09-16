"""Search for a smaller library of minimal forbidden patterns.

    python3 minpool.py orbits.txt pool.json [samples] [seed]

`library.py` minimises each new core greedily in a fixed order, which finds *a*
minimal pattern, not the best one.  This collects many, by minimising the same
cores in randomised orders and from several starting orbits, and reports which
small subfamilies still cover all 33,743.

Smaller patterns are strictly better here: a pattern with fewer constraints is
easier to match, so it covers more graphs, and the coverage refutation it has to
support is correspondingly easier.  That refutation -- 154,794 steps for the
current four -- is the obstacle to putting the covering step in Lean.
"""
import itertools, json, os, random, subprocess, sys, tempfile, time
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
    out = set()
    for m in SYM:
        s2 = v2 = 0; x = sup
        while x:
            b = (x & -x).bit_length() - 1; x &= x - 1
            s2 |= 1 << m[b]
            if val >> b & 1: v2 |= 1 << m[b]
        out.add((s2, v2))
    return out

def canon(sup, val): return min(images(sup, val))
def gmask(g): return sum(1 << (i*7+j) for i in range(7) for j in range(7) if g[i] >> j & 1)

def main():
    src, dst = sys.argv[1], sys.argv[2]
    nsample = int(sys.argv[3]) if len(sys.argv) > 3 else 400
    seed = int(sys.argv[4]) if len(sys.argv) > 4 else 1
    rows = [tuple(map(int, l.split())) for l in open(src)]
    masks = [gmask(g) for g in rows]
    from pysat.solvers import Lingeling
    tmp = tempfile.mkdtemp(prefix='minpool')
    cnf, drat, core = (os.path.join(tmp, n) for n in ('a.cnf', 'a.drat', 'a.core'))
    random.seed(seed)
    picks = random.sample(range(len(rows)), min(nsample, len(rows)))
    pool = {}                                     # canonical (sup,val) -> size
    t0 = time.time()
    for c, n in enumerate(picks):
        g = rows[n]
        cls = sweep.clauses(g)
        with Lingeling(bootstrap_with=cls, with_proof=True) as s:
            assert not s.solve()
            proof = s.get_proof()
        open(cnf, 'wb').write(('p cnf %d %d\n' % (E.nv, len(cls))).encode() +
                              b''.join((' '.join(map(str, cc)) + ' 0\n').encode() for cc in cls))
        open(drat, 'w').write('\n'.join(proof) + '\n')
        subprocess.run([DRAT, cnf, drat, '-c', core], capture_output=True, timeout=1800)
        base = set()
        for l in open(core):
            if not l.strip() or l[0] in 'pc': continue
            k = tuple(sorted(int(x) for x in l.split() if x != '0'))
            if k in OWNER: base.add(OWNER[k])
        for f in (cnf, drat, core):
            if os.path.exists(f): os.remove(f)
        for _ in range(3):                        # three randomised minimisations
            pairs = set(base); order = sorted(pairs); random.shuffle(order)
            for p in order:
                q = pairs - {p}
                cl = sweep.BASE + sweep.pattern_clauses(
                    [((i, 7+j), not bool(g[i] >> j & 1)) for (i, j) in q])
                with Lingeling(bootstrap_with=cl) as s:
                    if not s.solve(): pairs = q
            sup = sum(1 << (i*7+j) for (i, j) in pairs)
            val = sum(1 << (i*7+j) for (i, j) in pairs if g[i] >> j & 1)
            pool[canon(sup, val)] = len(pairs)
        if (c + 1) % 25 == 0:
            print('%4d/%d orbits, pool %d, smallest %d, %.0f s'
                  % (c + 1, len(picks), len(pool), min(pool.values()), time.time() - t0), flush=True)
    # coverage of each pooled pattern over all orbits
    stats = []
    for (sup, val), sz in pool.items():
        im = images(sup, val)
        cov = sum(1 for m in masks if any((m & s) == v for s, v in im))
        stats.append({'sup': sup, 'val': val, 'size': sz, 'covers': cov, 'images': len(im)})
    stats.sort(key=lambda r: (-r['covers'], r['size']))
    # greedy set cover, preferring wide then small
    left = set(range(len(masks))); chosen = []
    prepared = {(r['sup'], r['val']): images(r['sup'], r['val']) for r in stats}
    while left and len(chosen) < 12:
        best = None
        for r in stats:
            im = prepared[(r['sup'], r['val'])]
            got = {i for i in left if any((masks[i] & s) == v for s, v in im)}
            if best is None or (len(got), -r['size']) > (len(best[1]), -best[0]['size']):
                best = (r, got)
        if not best[1]: break
        chosen.append(best[0]); left -= best[1]
        print('picked size %d covering %d more; %d orbits left'
              % (best[0]['size'], len(best[1]), len(left)), flush=True)
    json.dump({'pool': stats, 'cover': chosen, 'uncovered': len(left)}, open(dst, 'w'), indent=1)
    print('pool %d patterns, sizes %d..%d; greedy cover uses %d patterns of sizes %s; uncovered %d'
          % (len(pool), min(pool.values()), max(pool.values()), len(chosen),
             [r['size'] for r in chosen], len(left)), flush=True)

if __name__ == '__main__':
    main()
