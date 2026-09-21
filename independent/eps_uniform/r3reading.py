"""AKR's sentence "Free vertices that are not involved in a degeneracy stay
where they are" is ambiguous, and the ambiguity is load-bearing for Theorem 17.

Reading (i)  "degeneracy" = vertex-VERTEX degeneracy.  Then every free vertex
             that is not a coincidence partner is stationary, system (3) is
             fully specified, and Theorem 17 applies.
Reading (ii) "degeneracy" = any degeneracy.  Then a free vertex that is an
             ENDPOINT of a side carrying a vertex-side degeneracy is "involved",
             so AKR's sentence does NOT freeze it -- and AKR give it no
             direction either.  System (3) is then under-determined and
             Theorem 17 does not apply as stated.

This script (a) counts how often that leftover class is non-empty, and
(b) re-runs the (R3) test under reading (ii) with those vertices given free
directions as well, to check the conclusion is robust to the reading.
"""
import sys, random
from fractions import Fraction as F
sys.path.insert(0, '/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform')
import r3, r3b
from r3b import requirements, violated


def leftover(cfg):
    """Free vertices that are supports of a vertex-side degeneracy but are not
    coincidence partners: AKR's sentence assigns them no direction."""
    sup = set()
    for ow, (s1, s2, lam) in cfg.deps.items():
        sup.add(s1); sup.add(s2)
    inv = {v for pair in cfg.coinc for v in pair}
    return sorted(v for v in sup if v not in cfg.deps and v not in inv)


def run(gen, seed, n, name, nsamples=12):
    R = random.Random(seed)
    tot = nonempty = 0; nleft = 0
    i_clean = i_dirty = i_break = 0
    ii_clean = ii_dirty = ii_break = 0
    ii_smaller = 0
    tries = 0
    while tot < n and tries < 400 * n:
        tries += 1
        g = gen(R)
        if g is None: continue
        cfg, _ = g; tot += 1
        L = leftover(cfg)
        nonempty += bool(L); nleft += len(L)
        req = requirements(cfg)
        a = r3.analyse(cfg, R, nsamples)                       # reading (i)
        b = r3.analyse(cfg, R, nsamples, extra_moving=tuple(L))  # reading (ii)
        for res, acc in ((a, 'i'), (b, 'ii')):
            if res['singular17']: continue
            cl = sum(1 for s in res['samples'] if not s['nocone'] and not s['removable'])
            dy = sum(1 for s in res['samples'] if not s['nocone'] and s['removable'])
            br = 1 if violated(req, res['Zforced']) else 0
            if acc == 'i': i_clean += cl; i_dirty += dy; i_break += br
            else: ii_clean += cl; ii_dirty += dy; ii_break += br
        if len(b['Zforced']) < len(a['Zforced']): ii_smaller += 1
    print(f'--- {name}, seed {seed} ---')
    print(f'configurations                                       : {tot}')
    print(f'  with a non-empty "AKR gives it no direction" class  : {nonempty}'
          f'   (total {nleft} such vertices)')
    print(f'  reading (i)  clean / dirty admissible directions    : {i_clean} / {i_dirty}')
    print(f'  reading (i)  configs with a FORCED requirement break : {i_break}')
    print(f'  reading (ii) clean / dirty admissible directions    : {ii_clean} / {ii_dirty}')
    print(f'  reading (ii) configs with a FORCED requirement break : {ii_break}')
    print(f'  configs where reading (ii) has a SMALLER Zforced    : {ii_smaller}')


if __name__ == '__main__':
    run(r3.gen,           606, 30, 'base')
    run(r3b.gen_deep,     707, 25, 'deep')
    run(r3b.gen_anti_dep, 808, 25, 'antidep')
