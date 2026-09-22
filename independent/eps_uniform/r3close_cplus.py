"""Theorem C+ and Theorem D+ , tested.

D+ (proved in R3_CLOSE.md sec 8): a vertex-side degeneracy present at some
eps in (0,eps_0) but absent at eps=0 can ONLY arise at a coincidence apex, and
only when E_{P_i} is parallel to one of the four rays a1,a2,b1,b2 there.

So:  (1) C+ (forbid all four rays, t in {1,2,3}) must create 0 new degeneracies;
     (2) C  (forbid only a1,a2, t in {1,2}) may create some -- if it never did,
         the distinction would be vacuous and C+ pointless;
     (3) a direction deliberately parallel to a ray must create them often.
"""
import sys, random, itertools
from fractions import Fraction as F
sys.path.insert(0,'/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform')
import r3, r3close, uniform as U
from r3 import (cross2, direction_map, symbolic_vertices, witness_family,
                forced_zero_set, zero_set_at, flatten)
from r3b import requirements, violated
from r3close import construct_E, construct_Eplus, rays_at, kron_clean
from r3close_probe import degeneracy_census

def census_delta(cfg, alpha, vals):
    Vn, Wn, e0, _ = r3.eps0_and_signs(cfg, alpha, vals)
    added = lost = 0
    cen0 = degeneracy_census(cfg.P(), cfg.Q())
    for k in (2, 4, 8):
        pts = U.snap(Vn, e0/F(k))
        cen = degeneracy_census(pts[:7], pts[7:])
        added = max(added, len(cen - cen0)); lost = max(lost, len(cen0 - cen))
    return added, lost

names = sys.argv[1].split(','); seed=int(sys.argv[2]); n=int(sys.argv[3])
G = dict(cfgs=0, C_add=0, Cp_add=0, K_add=0, par_add=0, par_n=0,
         C_ok=0, Cp_ok=0, K_ok=0, Cp_t=dict(), C_lost=0, Cp_lost=0, K_lost=0,
         Cp_fail=0, Cp_req_bad=0, Cp_R2_bad=0)
for name in names:
    R = random.Random(seed); GEN = r3close.GENS[name]; c=0; tries=0
    L = dict(G); [L.__setitem__(k,0) for k in L if isinstance(L[k],int)]
    L['Cp_t'] = {}
    while c < n and tries < 600*n:
        tries += 1
        g = GEN(R)
        if g is None: continue
        cfg,_ = g
        alpha, fvars = direction_map(cfg)
        if alpha is None: continue
        V, nn, fi = symbolic_vertices(cfg, alpha, fvars)
        W = witness_family(V); Zf = forced_zero_set(W)
        c += 1; L['cfgs'] += 1
        req = requirements(cfg)
        # --- C
        vC,_ = construct_E(cfg, fvars)
        if vC is not None:
            a,l = census_delta(cfg, alpha, vC); L['C_add'] += (a>0); L['C_lost'] += (l>0)
            L['C_ok'] += r3.verify_end_to_end(cfg, alpha, vC)['ok']
        # --- C+
        vP, info = construct_Eplus(cfg, fvars)
        if vP is None:
            L['Cp_fail'] += 1
        else:
            for f,(k,ll,t) in info.items(): L['Cp_t'][t] = L['Cp_t'].get(t,0)+1
            a,l = census_delta(cfg, alpha, vP); L['Cp_add'] += (a>0); L['Cp_lost'] += (l>0)
            e2 = r3.verify_end_to_end(cfg, alpha, vP); L['Cp_ok'] += e2['ok']
            Z = zero_set_at(W, flatten(vP, fi))
            if violated(req, Z): L['Cp_req_bad'] += 1
            if not all(r3.r2_straddle(cfg, alpha, vP, i, j)[0] for (i,j) in cfg.coinc):
                L['Cp_R2_bad'] += 1
        # --- Kronecker (R3-strong)
        vK, tau = kron_clean(cfg, fvars, W, Zf, fi)
        if vK is not None:
            a,l = census_delta(cfg, alpha, vK); L['K_add'] += (a>0); L['K_lost'] += (l>0)
            L['K_ok'] += r3.verify_end_to_end(cfg, alpha, vK)['ok']
        # --- CONTROL: E deliberately parallel to a ray  (must create them)
        for ridx in range(4):
            bad = {}
            okall = True
            for f in fvars:
                v = int(f[1:]); j = [j for (i,j) in cfg.coinc if i==v][0]
                aa,bb = rays_at(cfg, v, j)
                r = (aa+bb)[ridx]
                bad[f] = r
            L['par_n'] += 1
            a,l = census_delta(cfg, alpha, bad)
            L['par_add'] += (a>0)
    print(f'--- {name}  cfgs={L["cfgs"]} ---')
    print(f'  C  (forbid a1,a2;   t in 1..2): created a degeneracy in {L["C_add"]}/{L["cfgs"]},'
          f'  lost {L["C_lost"]},  end-to-end ok {L["C_ok"]}')
    print(f'  C+ (forbid all 4;   t in 1..3): created a degeneracy in {L["Cp_add"]}/{L["cfgs"]},'
          f'  lost {L["Cp_lost"]},  end-to-end ok {L["Cp_ok"]},  t-histogram {L["Cp_t"]},'
          f'  no-t failures {L["Cp_fail"]},  req violations {L["Cp_req_bad"]},  R2 failures {L["Cp_R2_bad"]}')
    print(f'  Kronecker (R3-strong)         : created a degeneracy in {L["K_add"]}/{L["cfgs"]},'
          f'  lost {L["K_lost"]},  end-to-end ok {L["K_ok"]}')
    print(f'  CONTROL E || a ray            : created a degeneracy in {L["par_add"]}/{L["par_n"]}')
    for k,v in L.items():
        if isinstance(v,int): G[k]=G.get(k,0)+v
        elif isinstance(v,dict):
            for kk,vv in v.items(): G['Cp_t'][kk]=G['Cp_t'].get(kk,0)+vv
    sys.stdout.flush()
print('=== GRAND TOTAL ===')
print(f'  cfgs {G["cfgs"]}')
print(f'  C  created {G["C_add"]}  lost {G["C_lost"]}  e2e ok {G["C_ok"]}')
print(f'  C+ created {G["Cp_add"]}  lost {G["Cp_lost"]}  e2e ok {G["Cp_ok"]}  t-hist {G["Cp_t"]}'
      f'  no-t {G["Cp_fail"]}  req-bad {G["Cp_req_bad"]}  R2-bad {G["Cp_R2_bad"]}')
print(f'  Kron created {G["K_add"]}  lost {G["K_lost"]}  e2e ok {G["K_ok"]}')
print(f'  CONTROL E||ray created {G["par_add"]}/{G["par_n"]}')
