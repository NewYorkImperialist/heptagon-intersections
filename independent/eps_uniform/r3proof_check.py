"""Machine check of the two algebraic identities behind Theorem R3-D, on the
symbolic configurations themselves (not on samples): for every coincidence
(P_i,Q_j) and every P-neighbour P_i+/-1,

   Delta_ij(eps)                  = eps * E_{P_i}
   orient(P_i,P_i+k,Q_j)(eps)     = -eps*cross(P_i+k - P_i, E_{P_i})
                                    - eps^2*cross(E_{P_i+k} - E_{P_i}, E_{P_i})

and in particular the eps^1 coefficient of the second is a NONZERO linear form
on L.  Checked as multivariate polynomial identities over Q.
"""
import sys, random
from fractions import Fraction as F
sys.path.insert(0, '/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform')
import r3, r3b
from r3lib import MP, SVec, sorient

def run(gen, seed, n, name):
    R = random.Random(seed)
    tot = id1 = id2 = nz = 0
    ncoinc = 0
    tries = 0
    while tot < n and tries < 400*n:
        tries += 1
        g = gen(R)
        if g is None: continue
        cfg, _ = g; tot += 1; ncoinc += len(cfg.coinc)
        alpha, fvars = r3.direction_map(cfg)
        V, nv, fi = r3.symbolic_vertices(cfg, alpha, fvars)
        for (i, j) in cfg.coinc:
            eps = MP.var(nv, 0)
            Ex = MP.var(nv, fi[f'E{i}'][0]); Ey = MP.var(nv, fi[f'E{i}'][1])
            d = V[i] - V[j]
            if (d.x - eps*Ex).is_zero() and (d.y - eps*Ey).is_zero(): id1 += 1
            for k in (-1, 1):
                nb = (i + k) % 7
                u0x = MP.const(nv, cfg.V0[nb][0] - cfg.V0[i][0])
                u0y = MP.const(nv, cfg.V0[nb][1] - cfg.V0[i][1])
                Ekx = sum((MP.var(nv, fi[f][0])*MP.const(nv, c)
                           for f, c in alpha[nb].items()), MP(nv))
                Eky = sum((MP.var(nv, fi[f][1])*MP.const(nv, c)
                           for f, c in alpha[nb].items()), MP(nv))
                pred = (eps*MP.const(nv, -1)*(u0x*Ey - u0y*Ex)
                        + eps*eps*MP.const(nv, -1)*((Ekx-Ex)*Ey - (Eky-Ey)*Ex))
                got = sorient(V[i], V[nb], V[j])
                if (got - pred).is_zero(): id2 += 1
                c1 = u0x*Ey - u0y*Ex           # the eps^1 coefficient, up to sign
                if not c1.is_zero(): nz += 1
    print(f'{name:9s} configs {tot:4d}  coincidences {ncoinc:4d}   '
          f'Delta identity {id1}/{ncoinc}   '
          f'orient identity {id2}/{2*ncoinc}   eps^1 coeff nonzero {nz}/{2*ncoinc}')
    return tot, id1, id2, nz

if __name__ == '__main__':
    run(r3.gen,          5001, 60, 'base')
    run(r3b.gen_deep,    5002, 40, 'deep')
    run(r3b.gen_anti,    5003, 40, 'anti')
    run(r3b.gen_anti_dep,5004, 40, 'antidep')
