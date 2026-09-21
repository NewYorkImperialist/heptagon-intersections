"""(R3) part 2 -- harder configurations, sharper requirements, and the controls
that must be able to answer NO."""
import sys, random, itertools
from fractions import Fraction as F
sys.path.insert(0, '/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform')
import r3, uniform as U
from r3 import Config, detect, reaches_free, sanity, cross2, sub2
from r3lib import MP


# ------------------------------------------ sharper requirement analysis ----
def requirements(cfg):
    """Every witness (or set of witnesses) whose identical vanishing would break
    a deliverable of sec 9.1.  Tagged, so we can count which ones actually FIRE.

      R1   : a coincidence must separate.                 kind 'one-of'
      Fsh  : a P-side and a Q-side that are collinear at eps=0 AND SHARE AN
             ENDPOINT must stop being collinear, or they slide into a
             positive-length overlap and (F) dies.        kind 'one-of'
      Fdis : collinear at eps=0 but DISJOINT -- listed so we can see how often
             each case occurs, but NOT required: disjointness of two compact
             sets is an open condition and bootstrapping already gives it.
    """
    req = []
    for (i, j) in cfg.coinc:
        k = (min(i, j), max(i, j))
        req.append(('R1', 'one-of', [('X',) + k, ('Y',) + k],
                    f'coincidence P{i}=Q{j-7} must separate'))
    for pi in range(7):
        for qj in range(7):
            idx = [pi, (pi+1) % 7, 7 + qj, 7 + (qj+1) % 7]
            vs = [cfg.V0[t] for t in idx]
            if not all(cross2(sub2(vs[1], vs[0]), sub2(w, vs[0])) == 0 for w in vs[2:]):
                continue
            shared = len({cfg.V0[idx[0]], cfg.V0[idx[1]]} &
                         {cfg.V0[idx[2]], cfg.V0[idx[3]]}) > 0
            keys = [('D',) + tuple(sorted(t)) for t in itertools.combinations(idx, 3)]
            req.append(('Fsh' if shared else 'Fdis', 'one-of', keys,
                        f'collinear P-side {pi} / Q-side {qj}'
                        + (' sharing an endpoint' if shared else ' disjoint')))
    return req


def violated(req, Z, only=('R1', 'Fsh')):
    out = []
    for tag, kind, keys, lab in req:
        if tag not in only: continue
        if kind == 'one-of' and all(k in Z for k in keys):
            out.append((tag, lab))
    return out


# --------------------------------------------------- harder generators -----
def gen_anti(R, N=9):
    """A configuration whose coincidence has a1 ANTIPARALLEL to b1, so the
    'Fsh' requirement genuinely fires, plus two more coincidences and a
    Theorem-17 chain.  Built directly, then checked, not assumed."""
    for _ in range(300):
        c = R.randint(1, 4); d = R.randint(1, 5)
        P = [(F(0), F(0)), (F(0), F(-3)), (F(5), F(-6)), (F(9), F(-1)),
             (F(6), F(4)), (F(-1), F(5)), (F(-c), F(0))]
        Q = [(F(0), F(0)), (F(2), F(-1)), (F(7), F(-4)), (F(11), F(2)),
             (F(8), F(7)), (F(1), F(8)), (F(d), F(0))]
        # jitter the far vertices so the family is not one picture
        for k in (2, 3, 4, 5):
            P[k] = (P[k][0] + R.randint(-1, 1), P[k][1] + R.randint(-1, 1))
            Q[k] = (Q[k][0] + R.randint(-1, 1), Q[k][1] + R.randint(-1, 1))
        if len(set(P)) != 7 or len(set(Q)) != 7: continue
        if not U.simple(P) or not U.simple(Q): continue
        V0 = P + Q
        coinc, deps = detect(V0)
        if not coinc or any(i in deps or j in deps for (i, j) in coinc): continue
        if not reaches_free(deps): continue
        cfg = Config(V0, coinc, deps)
        bad, pts = sanity(cfg)
        if bad: continue
        return cfg, pts
    return None


def gen_deep(R, N=9):
    """Two coincidences on the same P-side, a dependent Q-vertex on that moving
    side, a dependent P-vertex on the Q-side that the dependent Q-vertex spans
    (chain of length 2), and a third dependent vertex hanging off that."""
    P = U.rand_simple_heptagon(R, N); Q = U.rand_simple_heptagon(R, N)
    if P is None or Q is None: return None
    P, Q = list(P), list(Q)
    Q[0] = P[0]; Q[3] = P[1]
    l1 = F(R.randint(1, 4), 5)
    Q[5] = (l1*P[0][0] + (1-l1)*P[1][0], l1*P[0][1] + (1-l1)*P[1][1])
    l2 = F(R.randint(1, 4), 5)
    P[4] = (l2*Q[5][0] + (1-l2)*Q[6][0], l2*Q[5][1] + (1-l2)*Q[6][1])
    l3 = F(R.randint(1, 4), 5)
    Q[1] = (l3*P[4][0] + (1-l3)*P[5][0], l3*P[4][1] + (1-l3)*P[5][1])
    if len(set(P)) != 7 or len(set(Q)) != 7: return None
    if not U.simple(P) or not U.simple(Q): return None
    V0 = P + Q
    coinc, deps = detect(V0)
    if not coinc or any(i in deps or j in deps for (i, j) in coinc): return None
    if not reaches_free(deps): return None
    cfg = Config(V0, coinc, deps)
    bad, pts = sanity(cfg)
    if bad: return None
    return cfg, pts


def gen_anti_dep(R, N=9):
    """Random simple heptagons with the Fig-27c pair of coincidences on one
    P-side, a Theorem-17 chain of length 2, AND the apex ray a1 made
    ANTIPARALLEL to b1, so that objections (1) and (2) and the 'Fsh'
    requirement are all active in the same configuration.  Everything is then
    re-checked; nothing is assumed."""
    for _ in range(60):
        P = U.rand_simple_heptagon(R, N); Q = U.rand_simple_heptagon(R, N)
        if P is None or Q is None: continue
        P, Q = list(P), list(Q)
        Q[0] = P[0]
        Q[3] = P[1]
        l1 = F(R.randint(1, 4), 5)
        Q[5] = (l1*P[0][0] + (1-l1)*P[1][0], l1*P[0][1] + (1-l1)*P[1][1])
        l2 = F(R.randint(1, 4), 5)
        P[4] = (l2*Q[5][0] + (1-l2)*Q[6][0], l2*Q[5][1] + (1-l2)*Q[6][1])
        # a1 := -s * b1 : the P-side [P_6,P_0] becomes collinear with the
        # Q-side [Q_6,Q_0] and meets it exactly at the coincidence P_0 = Q_0.
        b1 = sub2(Q[6], Q[0])
        for s in (F(1,2), F(1), F(3,2), F(2), F(1,3), F(3)):
            P6 = (P[0][0] - s*b1[0], P[0][1] - s*b1[1])
            P2 = list(P); P2[6] = P6
            if len(set(P2)) != 7 or len(set(Q)) != 7: continue
            if not U.simple(P2) or not U.simple(Q): continue
            V0 = P2 + Q
            coinc, deps = detect(V0)
            if not coinc or not deps: continue
            if any(i in deps or j in deps for (i, j) in coinc): continue
            if not reaches_free(deps): continue
            cfg = Config(V0, coinc, deps)
            bad, pts = sanity(cfg)
            if bad: continue
            if not any(t == 'Fsh' for t, _, _, _ in requirements(cfg)): continue
            return cfg, pts
    return None


# ------------------------------------------------------------- the sweep ----
def run(gen, seed, ntrial, nsamples=20, verbose=False, endtoend=0):
    R = random.Random(seed)
    T = dict(cfgs=0, tries=0, singular=0, samples=0, nocone=0,
             clean=0, dirty=0, cfg_with_clean=0, cfg_all_dirty=0,
             forced_break=0, sample_break=0, e2e_ok=0, e2e_tot=0,
             ndep=0, ncoinc=0, nZf=0)
    fires = {}
    breaks = {}
    other_forced = {}
    e2e_why = {}
    while T['cfgs'] < ntrial and T['tries'] < 400 * ntrial:
        T['tries'] += 1
        g = gen(R)
        if g is None: continue
        cfg, pts = g
        res = r3.analyse(cfg, R, nsamples)
        if res['singular17']:
            T['singular'] += 1; continue
        T['cfgs'] += 1
        T['ndep'] += len(cfg.deps); T['ncoinc'] += len(cfg.coinc)
        T['nZf'] += len(res['Zforced'])
        req = requirements(cfg)
        for t, _, _, _ in req: fires[t] = fires.get(t, 0) + 1
        for c in res['forced_classes']:
            if c.startswith('OTHER'): other_forced[c] = other_forced.get(c, 0) + 1
        vf = violated(req, res['Zforced'])
        if vf:
            T['forced_break'] += 1
            for t, l in vf: breaks['FORCED:' + t] = breaks.get('FORCED:' + t, 0) + 1
            if verbose: print('   !! FORCED', vf, cfg.V0)
        anyclean = False
        for s in res['samples']:
            T['samples'] += 1
            if s['nocone']: T['nocone'] += 1; continue
            Z = set(s['removable']) | res['Zforced']
            vs = violated(req, Z)
            if vs:
                T['sample_break'] += 1
                for t, l in vs: breaks['SAMPLE:' + t] = breaks.get('SAMPLE:' + t, 0) + 1
            if s['removable']: T['dirty'] += 1
            else: T['clean'] += 1; anyclean = True
            if endtoend and T['e2e_tot'] < endtoend:
                v = r3.verify_end_to_end(cfg, res['alpha'], s['E'])
                T['e2e_tot'] += 1; T['e2e_ok'] += v['ok']
                for w in v['why']:
                    tag = ('clean/' if not s['removable'] else 'dirty/') + w
                    e2e_why[tag] = e2e_why.get(tag, 0) + 1
        T['cfg_with_clean'] += anyclean
        T['cfg_all_dirty'] += (not anyclean)
    T['req_fires'] = fires; T['breaks'] = breaks
    T['other_forced'] = other_forced; T['e2e_why'] = e2e_why
    return T


if __name__ == '__main__':
    which = sys.argv[1]; seed = int(sys.argv[2]); n = int(sys.argv[3])
    ns = int(sys.argv[4]) if len(sys.argv) > 4 else 20
    e2e = int(sys.argv[5]) if len(sys.argv) > 5 else 0
    G = {'anti': gen_anti, 'deep': gen_deep, 'antidep': gen_anti_dep,
         'base': r3.gen}[which]
    T = run(G, seed, n, ns, endtoend=e2e)
    print(f'--- generator {which}, seed {seed} ---')
    for k in sorted(T): print(f'{k:16s} {T[k]}')
