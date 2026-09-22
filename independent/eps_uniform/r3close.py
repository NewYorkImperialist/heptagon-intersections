"""(R3), closing pass.

Three things this adds to r3.py / r3b.py:

  1. CONSTRUCTIVE.  `construct_E` exhibits an explicit admissible direction
     tuple -- no genericity, no measure theory, no sampling -- by a per-apex
     rule with a two-element search.  Theorem C below says it always succeeds.

  2. HARDER FAMILIES.  Generators in which Theorem 17's constraint is active
     ON the very ray that the required witness uses (`depapex`), in which one
     apex carries TWO finiteness requirements at once (`doubleanti`), and in
     which three to five coincidences are simultaneously present (`multi`).

  3. THE STRONG FORM.  `grid_clean` searches the cone coordinates (s,t) on an
     integer grid for a tuple with Z(E) = Z_forced, and reports the smallest
     grid size that works -- turning R3.md's Theorem R3 (a measure-theoretic
     existence statement) into a finite exact search with an a-priori bound.

Exact Fractions throughout.  No float.  No Lean build.
"""
import sys, random, itertools
from fractions import Fraction as F
HERE = '/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform'
sys.path.insert(0, HERE)
import r3, r3b, uniform as U
from r3 import (Config, detect, reaches_free, sanity, cross2, sub2,
                direction_map, symbolic_vertices, witness_family,
                forced_zero_set, zero_set_at, flatten, cones_at)
from r3b import requirements, violated


# =========================================================== rays and cones ==
def rays_at(cfg, i, j):
    """(a1,a2),(b1,b2): the two P-edge vectors and the two Q-edge vectors at the
    coincidence (P_i, Q_j).  a_k = P_{i+d} - P_i with d = -1, +1."""
    P, Q = cfg.P(), cfg.Q()
    pi, qj = i, j - 7
    a = (sub2(P[(pi - 1) % 7], P[pi]), sub2(P[(pi + 1) % 7], P[pi]))
    b = (sub2(Q[(qj - 1) % 7], Q[qj]), sub2(Q[(qj + 1) % 7], Q[qj]))
    return a, b


# ======================================================= THE CONSTRUCTION ====
def construct_E_at(cfg, i, j, tmax=2):
    """Theorem C (below).  Returns (E, (k, l, t)) or ('EMPTY-CONE', None) or
    ('NO-t', None).

    Rule:  let (a_k, b_l) be the lexicographically first pair of rays at the
    apex with cross(a_k, b_l) != 0; put E(t) = t*b_l - a_k and take the first
    t in {1, 2} with cross(E(t), a_1) != 0 and cross(E(t), a_2) != 0.
    """
    a, b = rays_at(cfg, i, j)
    pair = None
    for k in (0, 1):
        for l in (0, 1):
            if cross2(a[k], b[l]) != 0:
                pair = (k, l); break
        if pair: break
    if pair is None:
        return 'EMPTY-CONE', None
    k, l = pair
    for t in range(1, tmax + 1):
        E = (F(t) * b[l][0] - a[k][0], F(t) * b[l][1] - a[k][1])
        if cross2(E, a[0]) != 0 and cross2(E, a[1]) != 0:
            return E, (k, l, t)
    return 'NO-t', None


def construct_E(cfg, fvars, tmax=2):
    """The whole tuple: apply construct_E_at independently at every apex.
    Returns (vals, info) or (None, reason)."""
    vals, info = {}, {}
    for f in fvars:
        v = int(f[1:])
        js = [j for (ii, j) in cfg.coinc if ii == v]
        if not js:
            return None, f'free var {f} is not a coincidence apex'
        E, det = construct_E_at(cfg, v, js[0], tmax)
        if det is None:
            return None, f'{E} at apex {v},{js[0]}'
        vals[f] = E; info[f] = det
    return vals, info



# ================================== THE STRENGTHENED CONSTRUCTION (C+) ======
def construct_Eplus_at(cfg, i, j, tmax=3):
    """Theorem C+ : forbid E parallel to ANY of the four rays a1,a2,b1,b2 at the
    apex, not just to a1,a2.  By Theorem D+ this is exactly what stops sec 9.1
    from CREATING a vertex-side degeneracy that was not in its input -- AKR's
    own promise to leave vertex-side degeneracies "intact".

    cross(E(t),a_k) = t*cross(b_l,a_k) != 0 for every t>0, and
    cross(E(t),b_l) = -cross(a_k,b_l)   != 0 for every t;
    each of the two remaining rays kills at most one t.  So t in {1,2,3} always
    contains a good value."""
    a, b = rays_at(cfg, i, j)
    pair = None
    for k in (0, 1):
        for l in (0, 1):
            if cross2(a[k], b[l]) != 0:
                pair = (k, l); break
        if pair: break
    if pair is None:
        return 'EMPTY-CONE', None
    k, l = pair
    for t in range(1, tmax + 1):
        E = (F(t) * b[l][0] - a[k][0], F(t) * b[l][1] - a[k][1])
        if all(cross2(E, r) != 0 for r in (a[0], a[1], b[0], b[1])):
            return E, (k, l, t)
    return 'NO-t', None


def construct_Eplus(cfg, fvars, tmax=3):
    vals, info = {}, {}
    for f in fvars:
        v = int(f[1:])
        js = [j for (ii, j) in cfg.coinc if ii == v]
        if not js:
            return None, f'free var {f} is not a coincidence apex'
        E, det = construct_Eplus_at(cfg, v, js[0], tmax)
        if det is None:
            return None, f'{E} at apex {v},{js[0]}'
        vals[f] = E; info[f] = det
    return vals, info


# ================================================ requirement bookkeeping ====
def req_status(cfg, alpha, fi, W, Zf, vals):
    """Everything (R3) has to answer about one concrete direction tuple."""
    Z = zero_set_at(W, flatten(vals, fi))
    req = requirements(cfg)
    out = {
        'Z': Z,
        'removable': sorted(Z - Zf),
        'viol_req': violated(req, Z),               # R1 and Fsh only
        'viol_forced': violated(req, Zf),
        'clean': not (Z - Zf),
    }
    # (R2) is CHECKED, not assumed: exact straddle test per apex.
    r2 = []
    for (i, j) in cfg.coinc:
        ok, kl = r3.r2_straddle(cfg, alpha, vals, i, j)
        r2.append(ok)
    out['R2_all'] = all(r2)
    out['R2_fail'] = r2.count(False)
    return out


def fires(cfg):
    """Which requirement tags exist on this configuration at all (non-vacuity)."""
    c = {}
    for tag, _, _, _ in requirements(cfg):
        c[tag] = c.get(tag, 0) + 1
    return c


# ====================================================== the strong form ======
def grid_clean(cfg, fvars, W, Zf, fi, T):
    """Search (s,t) in {1..T}^2 per apex, in the CONE coordinates, for a tuple
    with Z(E) = Z_forced.  Every grid point is admissible by construction
    (s,t>0 puts E inside the open cone).  Returns (vals, ntested) or
    (None, ntested)."""
    cones = {}
    for f in fvars:
        v = int(f[1:])
        js = [j for (ii, j) in cfg.coinc if ii == v]
        cs = cones_at(cfg, v, js[0]) if js else []
        if not cs:
            return None, 0
        cones[f] = cs[0]                    # deterministic: first non-parallel pair
    n = 0
    grids = [range(1, T + 1)] * (2 * len(fvars))
    for combo in itertools.product(*grids):
        vals = {}
        for idx, f in enumerate(fvars):
            ak, bl = cones[f]
            s = F(combo[2 * idx]); t = F(combo[2 * idx + 1])
            vals[f] = (t * bl[0] - s * ak[0], t * bl[1] - s * ak[1])
        n += 1
        Z = zero_set_at(W, flatten(vals, fi))
        if not (Z - Zf):
            return vals, n
    return None, n



def kron_clean(cfg, fvars, W, Zf, fi, taus=(2, 3, 4, 5, 6, 7, 8, 9, 10)):
    """The SCALABLE constructive form of R3.md's Theorem R3.

    Coordinatise the admissible set A by the cone parameters
    (s_m, t_m) in (0,inf)^2, one pair per coincidence; A is then exactly the
    positive orthant (0,inf)^n, n = 2|C|.  Each witness has
    p = c0 + c1*eps + c2*eps^2 with c1 LINEAR and c2 QUADRATIC in those n
    coordinates, so every monomial that occurs has per-variable degree <= 2.
    Substitute the Kronecker curve

        u_i := tau^(3^(i-1)),   tau > 0,

    which is injective on exponent vectors in {0,1,2}^n (base-3 digits), so no
    two monomials can cancel: a nonzero c1 or c2 becomes a NONZERO univariate
    polynomial in tau of degree < 3^n.  Hence at most |W| * 2 * (3^n - 1)
    values of tau are bad, and any larger finite set of positive rationals
    contains a good one.  Returns (vals, tau) or (None, None)."""
    cones = {}
    for f in fvars:
        v = int(f[1:])
        js = [j for (ii, j) in cfg.coinc if ii == v]
        cs = cones_at(cfg, v, js[0]) if js else []
        if not cs:
            return None, None
        cones[f] = cs[0]
    for tau in taus:
        vals = {}
        for idx, f in enumerate(fvars):
            ak, bl = cones[f]
            s = F(tau) ** (3 ** (2 * idx))
            t = F(tau) ** (3 ** (2 * idx + 1))
            vals[f] = (t * bl[0] - s * ak[0], t * bl[1] - s * ak[1])
        Z = zero_set_at(W, flatten(vals, fi))
        if not (Z - Zf):
            return vals, tau
    return None, None


# ========================================================== generators =======
def _finish(P, Q, need_dep=False, need_fsh=False):
    if len(set(P)) != 7 or len(set(Q)) != 7: return None
    if not U.simple(P) or not U.simple(Q): return None
    V0 = list(P) + list(Q)
    coinc, deps = detect(V0)
    if not coinc: return None
    if need_dep and not deps: return None
    if any(i in deps or j in deps for (i, j) in coinc): return None
    if not reaches_free(deps): return None
    cfg = Config(V0, coinc, deps)
    bad, pts = sanity(cfg)
    if bad: return None
    if need_fsh and not any(t == 'Fsh' for t, _, _, _ in requirements(cfg)):
        return None
    return cfg, pts


def gen_multi(R, N=9, ncoinc=3):
    """ncoinc simultaneous vertex-vertex coincidences, at scattered apexes, plus
    one Theorem-17 dependency."""
    for _ in range(40):
        P = U.rand_simple_heptagon(R, N); Q = U.rand_simple_heptagon(R, N)
        if P is None or Q is None: continue
        P, Q = list(P), list(Q)
        pidx = R.sample(range(7), ncoinc); qidx = R.sample(range(7), ncoinc)
        for a, b in zip(pidx, qidx):
            Q[b] = P[a]
        # one dependency on a side both of whose endpoints are free
        free = [k for k in range(7) if k not in pidx and (k + 1) % 7 not in pidx]
        if free:
            k = R.choice(free)
            lam = F(R.randint(1, 4), 5)
            tgt = R.choice([z for z in range(7) if z not in qidx])
            Q[tgt] = (lam * P[k][0] + (1 - lam) * P[(k + 1) % 7][0],
                      lam * P[k][1] + (1 - lam) * P[(k + 1) % 7][1])
        g = _finish(P, Q)
        if g and len(g[0].coinc) >= ncoinc:
            return g
    return None


def gen_depapex(R, N=9):
    """THE POINT OF THIS FAMILY: a NEIGHBOUR of the apex is a DEPENDENT vertex,
    so Theorem 17 determines the direction of the very endpoint that the
    required witness D(P_i, P_{i+k}, Q_j) involves.  This is the configuration
    R3.md's sweeps never build: there, the dependent vertices are far from the
    apexes, so Theorem 17's constraint never touches a required witness."""
    for _ in range(80):
        P = U.rand_simple_heptagon(R, N); Q = U.rand_simple_heptagon(R, N)
        if P is None or Q is None: continue
        P, Q = list(P), list(Q)
        Q[0] = P[0]                                  # apex at P_0 = Q_0
        # P_1 (a NEIGHBOUR of the apex) forced onto a Q-side: dependent.
        lam = F(R.randint(1, 4), 5)
        jj = R.choice([2, 3, 4, 5])
        P[1] = (lam * Q[jj][0] + (1 - lam) * Q[(jj + 1) % 7][0],
                lam * Q[jj][1] + (1 - lam) * Q[(jj + 1) % 7][1])
        # and a second dependency the other way, to make the system 2x2
        if R.random() < 0.5:
            l2 = F(R.randint(1, 4), 5)
            Q[5] = (l2 * P[3][0] + (1 - l2) * P[4][0],
                    l2 * P[3][1] + (1 - l2) * P[4][1])
        g = _finish(P, Q, need_dep=True)
        if g and 1 in g[0].deps:
            return g
    return None


def gen_double_anti(R, N=9):
    """One apex carrying TWO finiteness requirements: a1 antiparallel to one
    Q-ray AND a2 antiparallel to the other, so both incident P-sides are
    collinear-and-meeting with a Q-side.  The construction must then avoid TWO
    forbidden directions at the same apex."""
    for _ in range(400):
        # build the apex explicitly at the origin
        u = (F(R.randint(1, 5)), F(R.randint(-4, 4)))
        w = (F(R.randint(-5, -1)), F(R.randint(-4, 4)))
        if cross2(u, w) == 0: continue
        s1 = F(R.randint(1, 3)); s2 = F(R.randint(1, 3))
        # P rays a1 = u, a2 = w;  Q rays b1 = -s1*u, b2 = -s2*w  (antiparallel)
        P = [(F(0), F(0)), (w[0], w[1])]             # P_0 apex, P_1 = apex + a2
        Q = [(F(0), F(0)), (-s2 * w[0], -s2 * w[1])] # Q_0 apex, Q_1 = apex + b2
        # close the polygons with random far points
        for lst, back in ((P, (u[0], u[1])), (Q, (-s1 * u[0], -s1 * u[1]))):
            lst += [(F(R.randint(-9, 9)), F(R.randint(-9, 9))) for _ in range(4)]
            lst.append(back)
        if len(set(P)) != 7 or len(set(Q)) != 7: continue
        if not U.simple(P) or not U.simple(Q): continue
        g = _finish(P, Q, need_fsh=True)
        if g:
            return g
    return None


def gen_multi_anti(R, N=9):
    """Two apexes, EACH carrying a finiteness requirement, plus a Theorem-17
    chain: the hardest thing in this file."""
    for _ in range(400):
        P = U.rand_simple_heptagon(R, N); Q = U.rand_simple_heptagon(R, N)
        if P is None or Q is None: continue
        P, Q = list(P), list(Q)
        Q[0] = P[0]; Q[3] = P[1]
        # Fsh at apex P_0=Q_0 : P-side [P_6,P_0] collinear with Q-side [Q_6,Q_0]
        b1 = sub2(Q[6], Q[0])
        s = R.choice([F(1, 2), F(1), F(2), F(3, 2)])
        P[6] = (P[0][0] - s * b1[0], P[0][1] - s * b1[1])
        # Fsh at apex P_1=Q_3 : P-side [P_1,P_2] collinear with Q-side [Q_3,Q_4]
        b4 = sub2(Q[4], Q[3])
        s2 = R.choice([F(1, 2), F(1), F(2)])
        P[2] = (P[1][0] - s2 * b4[0], P[1][1] - s2 * b4[1])
        l1 = F(R.randint(1, 4), 5)
        Q[5] = (l1 * P[0][0] + (1 - l1) * P[1][0],
                l1 * P[0][1] + (1 - l1) * P[1][1])
        g = _finish(P, Q, need_fsh=True)
        if g:
            return g
    return None



def gen_hard(R, N=9):
    """The maximally adversarial family this file was written for.  In ONE
    configuration:
      * TWO vertex-vertex coincidences, on the SAME P-side, so both endpoints
        of that side move (AKR Fig. 27c);
      * a finiteness requirement (`Fsh`) at the first apex -- the P-side
        [P_6,P_0] is collinear with the Q-side [Q_6,Q_0] and meets it exactly
        at the apex, so R3.md Finding R3-1's mechanism is armed;
      * Q_1, a NEIGHBOUR of that same apex, forced into the relative interior
        of a P-side, so Theorem 17 DETERMINES the direction of a ray of the
        very apex whose witness has to survive;
      * Q_5 on the moving P-side [P_0,P_1] -- a second Theorem-17 row, on a
        side both of whose endpoints move.
    Everything is re-detected and re-checked afterwards; nothing is assumed."""
    for _ in range(400):
        P = U.rand_simple_heptagon(R, N)
        if P is None: continue
        P = list(P)
        Q = [None]*7
        Q[0] = P[0]; Q[3] = P[1]
        Q[6] = (F(R.randint(-N, N)), F(R.randint(-N, N)))
        if Q[6] == Q[0]: continue
        s = R.choice([F(1,2), F(1), F(2), F(3,2), F(1,3)])
        b1 = sub2(Q[6], Q[0])
        P[6] = (P[0][0] - s*b1[0], P[0][1] - s*b1[1])
        # Q_1 in the relative interior of a P-side, i.e. a dependent NEIGHBOUR
        # of the apex Q_0.
        k = R.choice([2, 3, 4, 5])
        mu = F(R.randint(1, 4), 5)
        Q[1] = (mu*P[k][0] + (1-mu)*P[(k+1) % 7][0],
                mu*P[k][1] + (1-mu)*P[(k+1) % 7][1])
        l1 = F(R.randint(1, 4), 5)
        Q[5] = (l1*P[0][0] + (1-l1)*P[1][0], l1*P[0][1] + (1-l1)*P[1][1])
        Q[2] = (F(R.randint(-N, N)), F(R.randint(-N, N)))
        Q[4] = (F(R.randint(-N, N)), F(R.randint(-N, N)))
        if any(x is None for x in Q): continue
        g = _finish(P, Q, need_dep=True, need_fsh=True)
        if g is None: continue
        cfg = g[0]
        if 8 not in cfg.deps:            # global index of Q_1 is 7+1 = 8
            continue
        if len(cfg.coinc) < 2: continue
        return g
    return None


GENS = {'multi3': lambda R: gen_multi(R, ncoinc=3),
        'multi4': lambda R: gen_multi(R, ncoinc=4),
        'depapex': gen_depapex,
        'doubleanti': gen_double_anti,
        'multianti': gen_multi_anti,
        'hard': gen_hard,
        'base': r3.gen,
        'deep': r3b.gen_deep,
        'anti': r3b.gen_anti,
        'antidep': r3b.gen_anti_dep}


# ============================================================== the sweep ====
def run(name, seed, ntrial, gridT=2, e2e=True, verbose=False):
    G = GENS[name]
    R = random.Random(seed)
    T = dict(cfgs=0, tries=0, singular=0, ncoinc=0, ndep=0, nZf=0,
             # the construction
             con_ok=0, con_empty=0, con_not=0, con_t1=0, con_t2=0,
             con_clean=0, con_dirty=0, con_req_ok=0, con_req_bad=0,
             con_R2_ok=0, con_R2_bad=0,
             # the strong form
             grid_found=0, grid_none=0, grid_pts=0,
             kron_found=0, kron_none=0,
             # end to end
             e2e_tot=0, e2e_ok=0,
             # structure
             apex_nbr_dep=0, forced_break=0)
    fire = {}; why = {}; othercls = {}; breaks = {}
    minT = {}; ktau = {}
    while T['cfgs'] < ntrial and T['tries'] < 600 * ntrial:
        T['tries'] += 1
        g = G(R)
        if g is None: continue
        cfg, pts = g
        alpha, fvars = direction_map(cfg)
        if alpha is None:
            T['singular'] += 1; continue
        V, n, fi = symbolic_vertices(cfg, alpha, fvars)
        W = witness_family(V)
        Zf = forced_zero_set(W)
        T['cfgs'] += 1
        T['ncoinc'] += len(cfg.coinc); T['ndep'] += len(cfg.deps)
        T['nZf'] += len(Zf)
        for k, v in fires(cfg).items(): fire[k] = fire.get(k, 0) + v
        for kk in Zf:
            c = r3.classify(cfg, alpha, kk)
            if c.startswith('OTHER'): othercls[c] = othercls.get(c, 0) + 1
        vf = violated(requirements(cfg), Zf)
        if vf:
            T['forced_break'] += 1
            for t_, l_ in vf: breaks['FORCED:' + t_] = breaks.get('FORCED:' + t_, 0) + 1
            if verbose: print('  !! Z_forced BREAKS', vf, cfg.V0)
        # -- is a neighbour of an apex dependent?  (non-vacuity of `depapex`)
        for (i, j) in cfg.coinc:
            nb = [(i - 1) % 7, (i + 1) % 7, 7 + (j - 7 - 1) % 7, 7 + (j - 7 + 1) % 7]
            if any(x in cfg.deps for x in nb):
                T['apex_nbr_dep'] += 1
        # -------- the construction
        vals, info = construct_E(cfg, fvars)
        if vals is None:
            if 'EMPTY-CONE' in info: T['con_empty'] += 1
            else: T['con_not'] += 1
            if verbose: print('  !! CONSTRUCTION FAILED', info, cfg.V0)
        else:
            T['con_ok'] += 1
            for f, (k, l, t) in info.items():
                T['con_t1' if t == 1 else 'con_t2'] += 1
            st = req_status(cfg, alpha, fi, W, Zf, vals)
            T['con_clean' if st['clean'] else 'con_dirty'] += 1
            if st['viol_req']:
                T['con_req_bad'] += 1
                for t_, l_ in st['viol_req']:
                    breaks['CONSTR:' + t_] = breaks.get('CONSTR:' + t_, 0) + 1
                if verbose: print('  !! CONSTRUCTION VIOLATES', st['viol_req'], cfg.V0)
            else:
                T['con_req_ok'] += 1
            T['con_R2_ok' if st['R2_all'] else 'con_R2_bad'] += 1
            if e2e:
                v = r3.verify_end_to_end(cfg, alpha, vals)
                T['e2e_tot'] += 1; T['e2e_ok'] += v['ok']
                for w in v['why']: why[w] = why.get(w, 0) + 1
        # -------- the strong form, by finite grid search
        gv, npts = None, 0
        for TT in range(1, gridT + 1):
            gv, npts = grid_clean(cfg, fvars, W, Zf, fi, TT)
            if gv is not None:
                minT[TT] = minT.get(TT, 0) + 1
                break
        T['grid_pts'] += npts
        T['grid_found' if gv is not None else 'grid_none'] += 1
        kv, tau = kron_clean(cfg, fvars, W, Zf, fi)
        if kv is None:
            T['kron_none'] += 1
        else:
            T['kron_found'] += 1
            ktau[tau] = ktau.get(tau, 0) + 1
    T['min_gridT'] = minT; T['kron_tau'] = ktau
    T['req_fires'] = fire; T['e2e_why'] = why
    T['other_forced'] = othercls; T['breaks'] = breaks
    return T


if __name__ == '__main__':
    name = sys.argv[1]; seed = int(sys.argv[2]); n = int(sys.argv[3])
    gT = int(sys.argv[4]) if len(sys.argv) > 4 else 2
    T = run(name, seed, n, gridT=gT)
    print(f'--- {name}  seed={seed}  n={n}  gridT={gT} ---')
    for k in sorted(T): print(f'{k:16s} {T[k]}')
