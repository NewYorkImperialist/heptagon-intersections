"""How far short of FULL general position does the best admissible direction
fall?  The Lean consumer (docs/akr-9-1-obligation.md 2.2) needs `FullGP`: all
364 orientation determinants of the 14 combined vertices nonzero.  sec 9 is NOT
supposed to deliver that (sec 3's separate perturbation is), but the project has
conflated the two before, so this measures the gap exactly."""
import sys, random
from fractions import Fraction as F
sys.path.insert(0,'/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform')
import r3, r3b, r3close
from r3 import direction_map, symbolic_vertices, witness_family, forced_zero_set, zero_set_at, flatten
from r3close import construct_E, kron_clean

names = sys.argv[1].split(','); seed=int(sys.argv[2]); n=int(sys.argv[3])
G_TOT = dict(cfgs=0, Zf_nonempty=0, Zf_hasD=0, Zf_hasD_stationary=0,
             Zf_hasD_relation=0, gp_at_eps0=0, gp_reachable=0, nZf=0, nD0=0)
cls_tot = {}
for name in names:
    R = random.Random(seed); G = r3close.GENS[name]; c=0; tries=0
    T = dict(G_TOT); [T.__setitem__(k,0) for k in T]
    cls = {}
    while c < n and tries < 600*n:
        tries += 1
        g = G(R)
        if g is None: continue
        cfg,_ = g
        alpha, fvars = direction_map(cfg)
        if alpha is None: continue
        V, nn, fi = symbolic_vertices(cfg, alpha, fvars)
        W = witness_family(V); Zf = forced_zero_set(W)
        c += 1; T['cfgs'] += 1; T['nZf'] += len(Zf)
        # collinear triples already present at eps = 0 (the D's with c0 = 0)
        P,Q = cfg.P(), cfg.Q()
        import itertools
        nD0 = sum(1 for t in itertools.combinations(range(14),3)
                  if r3.cross2(r3.sub2(cfg.V0[t[1]],cfg.V0[t[0]]),
                               r3.sub2(cfg.V0[t[2]],cfg.V0[t[0]])) == 0)
        T['nD0'] += nD0
        if Zf: T['Zf_nonempty'] += 1
        Ds = [k for k in Zf if k[0]=='D']
        if Ds: T['Zf_hasD'] += 1
        for k in Zf:
            cl = r3.classify(cfg, alpha, k)
            cls[cl] = cls.get(cl,0)+1
            if k[0]=='D' and cl.startswith('three stationary'): T['Zf_hasD_stationary'] += 1
            if k[0]=='D' and cl.startswith('relation'): T['Zf_hasD_relation'] += 1
        # is FullGP reachable at all?  it needs Z(E) to contain NO D.
        T['gp_reachable'] += 0 if Ds else 1
        vals, info = construct_E(cfg, fvars)
        if vals is not None:
            Z = zero_set_at(W, flatten(vals, fi))
            if not any(k[0]=='D' for k in Z): T['gp_at_eps0'] += 1
    print(f'--- {name}  cfgs={T["cfgs"]} ---')
    print(f'  collinear triples already at eps=0 (mean)      : {T["nD0"]/max(1,T["cfgs"]):.2f}')
    print(f'  |Z_forced| (mean)                              : {T["nZf"]/max(1,T["cfgs"]):.2f}')
    print(f'  configs with Z_forced nonempty                 : {T["Zf_nonempty"]}/{T["cfgs"]}')
    print(f'  configs where Z_forced contains an orient D    : {T["Zf_hasD"]}/{T["cfgs"]}')
    print(f'    ... forced D of three STATIONARY vertices    : {T["Zf_hasD_stationary"]}')
    print(f'    ... forced D of a relation-(1) triple        : {T["Zf_hasD_relation"]}')
    print(f'  configs where FullGP is REACHABLE by any E in L: {T["gp_reachable"]}/{T["cfgs"]}')
    print(f'  ... and achieved by the construction           : {T["gp_at_eps0"]}/{T["cfgs"]}')
    for k,v in sorted(cls.items()): print(f'    class {k!r}: {v}')
    for k in G_TOT: G_TOT[k]+=T[k]
    for k,v in cls.items(): cls_tot[k]=cls_tot.get(k,0)+v
    sys.stdout.flush()
print('=== GRAND TOTAL ===')
print(f'  cfgs {G_TOT["cfgs"]}, Z_forced nonempty {G_TOT["Zf_nonempty"]}, '
      f'Z_forced contains an orient D {G_TOT["Zf_hasD"]}, '
      f'FullGP reachable {G_TOT["gp_reachable"]}, achieved {G_TOT["gp_at_eps0"]}')
for k,v in sorted(cls_tot.items()): print(f'  class {k!r}: {v}')
