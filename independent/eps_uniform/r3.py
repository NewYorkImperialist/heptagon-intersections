"""(R3) attacked: symbolic in the free directions, inside the subspace that
AKR Theorem 17 leaves, with AKR's E=0 rule in force.

Run:  python3 r3.py <mode> [seed] [ntrials]
"""
import sys, random, itertools
from fractions import Fraction as F
HERE = '/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform'
sys.path.insert(0, HERE)
from r3lib import MP, SVec, sorient, sdot, theorem17_directions
from epslib import Poly, Vec, orient as porient, root_free_radius, sgn
import uniform as U          # simple(), seg_inter(), cross_points(), sides()

NV = 14
PIDX = list(range(7)); QIDX = list(range(7, 14))


# ------------------------------------------------------------ config type ---
class Config:
    """V0: 14 rational points (P_0..P_6, Q_0..Q_6).
       coinc: list of (i, j) global indices with V0[i] == V0[j], i in P, j in Q.
       deps : {owner: (s1, s2, lam)}   owner = lam*s1 + (1-lam)*s2, cross-polygon.
    """
    def __init__(self, V0, coinc, deps, note=""):
        self.V0 = [tuple(map(F, p)) for p in V0]
        self.coinc = coinc
        self.deps = deps
        self.note = note

    def P(self): return self.V0[:7]
    def Q(self): return self.V0[7:]


def sanity(cfg):
    """AKR's standing hypotheses.  Returns list of violated names ([] = fine)."""
    bad = []
    if not U.simple(cfg.P()): bad.append('P-not-simple')
    if not U.simple(cfg.Q()): bad.append('Q-not-simple')
    pts, inf = U.cross_points(cfg.P(), cfg.Q())
    if inf: bad.append('infinite-intersection')
    for (i, j) in cfg.coinc:
        if cfg.V0[i] != cfg.V0[j]: bad.append(f'coinc-{i},{j}-not-a-coincidence')
        if i in cfg.deps or j in cfg.deps: bad.append(f'coinc-{i},{j}-dependent')
    for ow, (s1, s2, lam) in cfg.deps.items():
        A, B, C = cfg.V0[ow], cfg.V0[s1], cfg.V0[s2]
        if (lam*B[0]+(1-lam)*C[0], lam*B[1]+(1-lam)*C[1]) != A:
            bad.append(f'dep-{ow}-relation-fails')
        if not (0 < lam < 1): bad.append(f'dep-{ow}-lambda-out-of-range')
    return bad, pts


# ----------------------------------------------- the admissible subspace ----
def direction_map(cfg, akr_zero_rule=True, extra_moving=()):
    """AKR's rule, made explicit:
         - each coincident P-vertex gets its own symbolic free direction;
         - its partner Q-vertex is stationary ("we leave Q_j stationary");
         - every other free vertex has E = 0 ("free vertices that are not
           involved in a degeneracy stay where they are");
         - dependent vertices are DETERMINED by Theorem 17.
       Returns (alpha, freevars) with alpha[v] = {fvar: Fraction}."""
    fvars = []
    free_dirs = {}
    moving = [i for (i, j) in cfg.coinc] + list(extra_moving)
    for v in range(NV):
        if v in cfg.deps:
            continue
        if v in moving:
            f = f'E{v}'
            fvars.append(f)
            free_dirs[v] = {f: F(1)}
        else:
            free_dirs[v] = {} if akr_zero_rule else {}
    alpha = theorem17_directions(NV, cfg.deps, free_dirs)
    return alpha, fvars


def symbolic_vertices(cfg, alpha, fvars):
    """V_v(eps) = V0_v + eps * sum_f alpha[v][f] * E_f, as SVec of MP.
       Variables: 0 = eps, then (x_f, y_f) for each free direction f."""
    n = 1 + 2 * len(fvars)
    fi = {f: (1 + 2*k, 2 + 2*k) for k, f in enumerate(fvars)}
    eps = MP.var(n, 0)
    V = []
    for v in range(NV):
        cx = MP.const(n, cfg.V0[v][0]); cy = MP.const(n, cfg.V0[v][1])
        dx = MP(n); dy = MP(n)
        for f, c in alpha[v].items():
            dx = dx + MP.var(n, fi[f][0]) * MP.const(n, c)
            dy = dy + MP.var(n, fi[f][1]) * MP.const(n, c)
        V.append(SVec(cx + eps * dx, cy + eps * dy))
    return V, n, fi


def witness_family(V):
    W = {}
    for t in itertools.combinations(range(NV), 3):
        W[('D',) + t] = sorient(V[t[0]], V[t[1]], V[t[2]])
    for i, j in itertools.combinations(range(NV), 2):
        d = V[i] - V[j]
        W[('X', i, j)] = d.x
        W[('Y', i, j)] = d.y
    for i in range(NV):
        for j, k in itertools.combinations([x for x in range(NV) if x != i], 2):
            W[('B', i, j, k)] = sdot(V[j] - V[i], V[k] - V[i])
    return W


def forced_zero_set(W):
    """{p : p vanishes identically in eps for EVERY point of the subspace L}.
       Because L is a linear space (hence irreducible) this is the same as
       vanishing on any nonempty Zariski-open subset of L, in particular on the
       admissible set A."""
    return {k for k, p in W.items() if p.is_zero()}


def zero_set_at(W, vals):
    """{p : p ≡ 0 in eps} at one concrete direction tuple."""
    Z = set()
    for k, p in W.items():
        c = p.subs_dirs(vals)
        if all(x == 0 for x in c):
            Z.add(k)
    return Z


# -------------------------------------------------- e9_directions cones -----
def cross2(u, v): return u[0]*v[1] - u[1]*v[0]
def sub2(a, b):   return (a[0]-b[0], a[1]-b[1])


def cones_at(cfg, i, j):
    """The open cones of e9_directions at the coincidence (P_i, Q_j):
       C = {t*b_l - s*a_k : s,t>0} for each pair with a_k not parallel to b_l."""
    P, Q = cfg.P(), cfg.Q()
    pi, qj = i, j - 7
    a = [sub2(P[(pi-1) % 7], P[pi]), sub2(P[(pi+1) % 7], P[pi])]
    b = [sub2(Q[(qj-1) % 7], Q[qj]), sub2(Q[(qj+1) % 7], Q[qj])]
    out = []
    for k in range(2):
        for l in range(2):
            if cross2(a[k], b[l]) != 0:
                out.append((a[k], b[l]))
    return out


def sample_admissible(cfg, fvars, R, bound=6):
    """One point of A = L n (product of open cones).  Returns vals dict or None."""
    vals = {}
    for f in fvars:
        v = int(f[1:])
        js = [j for (i, j) in cfg.coinc if i == v]
        if not js:                       # an extra mover with no cone constraint
            E = (F(R.randint(-bound, bound)), F(R.randint(-bound, bound)))
            while E == (0, 0):
                E = (F(R.randint(-bound, bound)), F(R.randint(-bound, bound)))
            vals[f] = E
            continue
        cs = cones_at(cfg, v, js[0])
        if not cs:
            return None                  # all four rays parallel: (R2) unsatisfiable
        ak, bl = cs[R.randrange(len(cs))]
        s = F(R.randint(1, bound)); t = F(R.randint(1, bound))
        vals[f] = (t*bl[0] - s*ak[0], t*bl[1] - s*ak[1])
    return vals


def flatten(vals, fi):
    out = {}
    for f, (x, y) in vals.items():
        out[fi[f][0]] = x
        out[fi[f][1]] = y
    return out


# --------------------------------------------- what MUST be non-zero --------
def required_witnesses(cfg):
    """The witnesses whose identical vanishing would break sec 9.1's own
    deliverables.  Returned as a list of ('all-of'|'one-of', [keys], label):
      'all-of'  : every key in the list must be non-identically-zero
      'one-of'  : at least one key must be non-identically-zero
    (R1) separation : for a coincidence, NOT both of X,Y may vanish identically.
    (R2) crossing   : for a coincidence, some incident side pair must have all
                      four D's non-vanishing.  Handled separately (needs signs).
    Finiteness      : any P-side/Q-side pair collinear at eps=0 must stop being
                      collinear, else the two sides can slide into a positive
                      length overlap and d P n d Q becomes infinite.
    """
    req = []
    for (i, j) in cfg.coinc:
        req.append(('one-of', [('X', min(i,j), max(i,j)), ('Y', min(i,j), max(i,j))],
                    f'(R1) coincidence P{i}=Q{j-7} must separate'))
    P, Q = cfg.P(), cfg.Q()
    for pi in range(7):
        for qj in range(7):
            A, B = pi, (pi+1) % 7
            C, D = 7 + qj, 7 + (qj+1) % 7
            idx = [A, B, C, D]
            vs = [cfg.V0[t] for t in idx]
            if all(cross2(sub2(vs[1], vs[0]), sub2(w, vs[0])) == 0 for w in vs[2:]):
                keys = [('D',) + tuple(sorted(t)) for t in
                        itertools.combinations(idx, 3)]
                req.append(('one-of', keys,
                            f'(F) P-side {pi} and Q-side {qj} are collinear at eps=0'
                            f' and must separate'))
    return req


def check_required(req, Z, label_bad):
    """Returns list of violated requirement labels given a zero set Z."""
    bad = []
    for kind, keys, lab in req:
        if kind == 'one-of':
            if all(k in Z for k in keys):
                bad.append(lab)
        else:
            if any(k in Z for k in keys):
                bad.append(lab)
    return bad


# ------------------------------------------------ classifying forced zeros --
def classify(cfg, alpha, key):
    """Why is this witness forced to vanish for EVERY admissible tuple?"""
    stat = lambda v: not alpha[v]
    if key[0] == 'D':
        i, j, k = key[1:]
        for ow, (s1, s2, lam) in cfg.deps.items():
            if {i, j, k} == {ow, s1, s2}:
                return 'relation-(1) maintained (sec 9.2 obligation)'
        if stat(i) and stat(j) and stat(k):
            return 'three stationary vertices, collinear at eps=0'
        return 'OTHER-D'
    if key[0] in 'XY':
        i, j = key[1:]
        if stat(i) and stat(j):
            return 'two stationary vertices sharing a coordinate'
        return 'OTHER-XY'
    i, j, k = key[1:]
    if stat(i) and stat(j) and stat(k):
        return 'three stationary vertices, orthogonal at eps=0'
    return 'OTHER-B'


# ------------------------------------------------------------- detection ----
def detect(V0):
    """Find EVERY vertex-vertex coincidence and EVERY vertex-side degeneracy of
    the 14-point configuration, rather than trusting the surgery."""
    P, Q = V0[:7], V0[7:]
    coinc = [(i, 7 + j) for i in range(7) for j in range(7) if P[i] == Q[j]]
    deps = {}
    def relint(A, B, C):
        if cross2(sub2(C, B), sub2(A, B)) != 0: return None
        u = sub2(C, B)
        if u == (0, 0): return None
        k = 0 if u[0] != 0 else 1
        mu = F(A[k]-B[k], 1) / u[k]
        if 0 < mu < 1: return 1 - mu       # A = lam*B + (1-lam)*C, lam = 1-mu
        return None
    for i in range(7):
        for j in range(7):
            lam = relint(P[i], Q[j], Q[(j+1) % 7])
            if lam is not None:
                deps[i] = (7 + j, 7 + (j+1) % 7, lam)
    for j in range(7):
        for i in range(7):
            lam = relint(Q[j], P[i], P[(i+1) % 7])
            if lam is not None:
                deps[7 + j] = (i, (i+1) % 7, lam)
    return coinc, deps


def reaches_free(deps):
    """Lemma 18's hypothesis, checked."""
    for start in deps:
        seen, st, ok = {start}, [start], False
        while st:
            v = st.pop()
            if v not in deps:
                ok = True; break
            for s in deps[v][:2]:
                if s not in seen:
                    seen.add(s); st.append(s)
        if not ok:
            return False
    return True


# ------------------------------------------------------------- generation ---
def gen(R, N=9, want_chain=True, want_two=True):
    P = U.rand_simple_heptagon(R, N)
    Q = U.rand_simple_heptagon(R, N)
    if P is None or Q is None: return None
    P, Q = list(P), list(Q)
    Q[0] = P[0]
    if want_two: Q[3] = P[1]
    l1 = F(R.randint(1, 4), 5)
    Q[5] = (l1*P[0][0] + (1-l1)*P[1][0], l1*P[0][1] + (1-l1)*P[1][1])
    if want_chain:
        l2 = F(R.randint(1, 4), 5)
        P[4] = (l2*Q[5][0] + (1-l2)*Q[6][0], l2*Q[5][1] + (1-l2)*Q[6][1])
    if len(set(P)) != 7 or len(set(Q)) != 7: return None
    if not U.simple(P) or not U.simple(Q): return None
    V0 = P + Q
    coinc, deps = detect(V0)
    if not coinc: return None
    if any(i in deps or j in deps for (i, j) in coinc): return None
    if not reaches_free(deps): return None
    cfg = Config(V0, coinc, deps)
    bad, pts = sanity(cfg)
    if bad: return None
    return cfg, pts


# ------------------------------------------------------------- analysis -----
def analyse(cfg, R, nsamples=12, akr_zero_rule=True, extra_moving=()):
    """Returns a dict of everything (R3) needs to know about one configuration."""
    alpha, fvars = direction_map(cfg, akr_zero_rule, extra_moving)
    if alpha is None:
        return {'singular17': True}
    V, n, fi = symbolic_vertices(cfg, alpha, fvars)
    W = witness_family(V)
    Zf = forced_zero_set(W)
    req = required_witnesses(cfg)
    out = {'singular17': False, 'nfree': len(fvars), 'Zforced': Zf,
           'nW': len(W), 'req': req,
           'forced_classes': sorted({classify(cfg, alpha, k) for k in Zf}),
           'forced_bad': check_required(req, Zf, 'forced'),
           'samples': [], 'alpha': alpha, 'fvars': fvars}
    for _ in range(nsamples):
        vals = sample_admissible(cfg, fvars, R)
        if vals is None:
            out['samples'].append({'nocone': True}); continue
        Z = zero_set_at(W, flatten(vals, fi))
        out['samples'].append({
            'nocone': False, 'E': vals,
            'removable': sorted(Z - Zf),
            'bad': check_required(req, Z, 'sample'),
        })
    return out


def eps0_and_signs(cfg, alpha, vals):
    """Instantiate to a concrete numeric motion and hand it to the FINDINGS.md
    machinery (uniform.py), so the eps_0 / sign-vector claims are re-used, not
    re-derived."""
    X = Poly.x()
    Vn = []
    for v in range(NV):
        ex = sum((c * vals[f][0] for f, c in alpha[v].items()), F(0))
        ey = sum((c * vals[f][1] for f, c in alpha[v].items()), F(0))
        Vn.append(Vec(Poly.const(cfg.V0[v][0]) + X*Poly.const(ex),
                      Poly.const(cfg.V0[v][1]) + X*Poly.const(ey)))
    Wn = U.witnesses(Vn)
    e0, Z = U.eps0_of(Wn)
    return Vn, Wn, e0, Z


# ---------------------------------------------------------------- sweeps ----
def sweep(seed, ntrial, nsamples=20, gen_kw=None, verbose=True):
    R = random.Random(seed)
    gen_kw = gen_kw or {}
    tot = dict(cfgs=0, singular=0, samples=0, nocone=0, clean=0, dirty=0,
               cfg_with_clean=0, cfg_all_dirty=0, forced_bad=0, sample_bad=0,
               nfree=0, zforced=0)
    other = {}
    removable_classes = {}
    tries = 0
    while tot['cfgs'] < ntrial and tries < 200 * ntrial:
        tries += 1
        g = gen(R, **gen_kw)
        if g is None: continue
        cfg, pts = g
        res = analyse(cfg, R, nsamples)
        if res['singular17']:
            tot['singular'] += 1; continue
        tot['cfgs'] += 1
        tot['nfree'] += res['nfree']; tot['zforced'] += len(res['Zforced'])
        for c in res['forced_classes']:
            if c.startswith('OTHER'):
                other[c] = other.get(c, 0) + 1
        if res['forced_bad']:
            tot['forced_bad'] += 1
            if verbose: print('  !! FORCED ZERO BREAKS A REQUIREMENT', res['forced_bad'], cfg.V0)
        any_clean = False
        for s in res['samples']:
            tot['samples'] += 1
            if s['nocone']: tot['nocone'] += 1; continue
            if s['removable']:
                tot['dirty'] += 1
                for k in s['removable']:
                    removable_classes[k[0]] = removable_classes.get(k[0], 0) + 1
            else:
                tot['clean'] += 1; any_clean = True
            if s['bad']:
                tot['sample_bad'] += 1
                if verbose: print('  !! SAMPLE BREAKS A REQUIREMENT', s['bad'])
        tot['cfg_with_clean'] += 1 if any_clean else 0
        tot['cfg_all_dirty'] += 0 if any_clean else 1
    tot['tries'] = tries
    tot['other_forced'] = other
    tot['removable_kinds'] = removable_classes
    return tot


if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'main'
    seed = int(sys.argv[2]) if len(sys.argv) > 2 else 20260921
    n = int(sys.argv[3]) if len(sys.argv) > 3 else 40
    if mode == 'main':
        t = sweep(seed, n)
        for k in sorted(t): print(f'{k:18s} {t[k]}')


# ------------------------------------------------- end-to-end geometry ------
def r2_straddle(cfg, alpha, vals, i, j):
    """(R2) CHECKED, not assumed: is there an incident side pair whose four
    orient polynomials are all non-identically-zero and whose lowest-nonzero-
    coefficient signs form the ProperCross straddle pattern?"""
    Vn, Wn, e0, Z = eps0_and_signs(cfg, alpha, vals)
    pi, qj = i, j - 7
    for k in (-1, 1):
        for l in (-1, 1):
            A, B = i, (pi + k) % 7
            C, D = j, 7 + (qj + l) % 7
            def ls(a, b, c):
                p = porient(Vn[a], Vn[b], Vn[c])
                m, cm = p.lead_low()
                return None if m is None else sgn(cm)
            s = [ls(A, B, C), ls(A, B, D), ls(C, D, A), ls(C, D, B)]
            if None in s: continue
            if s[0]*s[1] < 0 and s[2]*s[3] < 0:
                return True, (k, l)
    return False, None


def verify_end_to_end(cfg, alpha, vals, npts=6):
    """(G1)-(G4) plus finiteness, at exact rational eps inside (0, eps_0)."""
    Vn, Wn, e0, Z = eps0_and_signs(cfg, alpha, vals)
    P0, Q0 = cfg.P(), cfg.Q()
    base_pts, base_inf = U.cross_points(P0, Q0)
    res = dict(eps0=e0, base=len(base_pts), base_inf=base_inf, ok=True, why=[])
    sv0 = None
    counts = set()
    for t in range(npts):
        e = e0 / F(2 ** (t + 1)) if t < npts - 1 else e0 / F(10) ** 9
        pts14 = U.snap(Vn, e)
        P, Q = pts14[:7], pts14[7:]
        sv = U.signvec(Wn, e)
        if sv0 is None: sv0 = sv
        elif sv != sv0: res['ok'] = False; res['why'].append('signvec-not-constant')
        if not U.simple(P): res['ok'] = False; res['why'].append('P-not-simple')
        if not U.simple(Q): res['ok'] = False; res['why'].append('Q-not-simple')
        for (i, j) in cfg.coinc:
            if pts14[i] == pts14[j]:
                res['ok'] = False; res['why'].append(f'coincidence-{i},{j}-survives')
        for a in range(7):
            for b in range(7):
                if P[a] == Q[b] and (a, 7+b) not in cfg.coinc:
                    res['ok'] = False; res['why'].append('new-coincidence')
        pts, inf = U.cross_points(P, Q)
        if inf: res['ok'] = False; res['why'].append('infinite-intersection')
        counts.add(len(pts))
        for ow, (s1, s2, lam) in cfg.deps.items():
            A, B, C = pts14[ow], pts14[s1], pts14[s2]
            if (lam*B[0]+(1-lam)*C[0], lam*B[1]+(1-lam)*C[1]) != A:
                res['ok'] = False; res['why'].append(f'relation-(1)-{ow}-broken')
    res['counts'] = sorted(counts)
    if len(counts) != 1: res['ok'] = False; res['why'].append('count-not-constant')
    if min(counts) < len(base_pts):
        res['ok'] = False; res['why'].append(f'count-dropped {len(base_pts)}->{min(counts)}')
    res['why'] = sorted(set(res['why']))
    return res
