"""K7: a certificate separating Theorem C from Theorem C+.

Designed from Theorem D+ : make E(1) = b1 - a1 a POSITIVE multiple of b2, so
that the apex vertex P_0 slides straight into the interior of the Q-side
[Q_0,Q_1] and a vertex-side degeneracy that was NOT in the input appears and
persists for every eps.  C's rule (forbid a1,a2 only) accepts t=1; C+'s rule
(forbid all four rays) rejects it and takes t=2.

  a1 = P6-P0 = (4,0)   b1 = Q6-Q0 = (4,4)   a2 = P1-P0 = (-4,-1)   b2 = Q1-Q0 = (0,6)
  cross(a1,b1) = 16 != 0            so (k,l) = (a1,b1) is the first pair
  E(1) = b1 - a1 = (0,4) = (2/3) b2  -> P_0(eps) enters relint [Q_0,Q_1]
  E(2) = 2 b1 - a1 = (4,8)          -> parallel to none of the four rays
"""
import sys, random, itertools
from fractions import Fraction as F
sys.path.insert(0,'/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform')
import r3, r3close, uniform as U
from r3 import Config, detect, sanity, reaches_free, cross2, direction_map, \
               symbolic_vertices, witness_family, forced_zero_set, zero_set_at, flatten
from r3b import requirements, violated
from r3close import construct_E, construct_Eplus, rays_at, kron_clean
from r3close_probe import degeneracy_census

Pfix = {0:(F(0),F(0)), 1:(F(-4),F(-1)), 6:(F(4),F(0))}
Qfix = {0:(F(0),F(0)), 1:(F(0),F(6)),  6:(F(4),F(4))}
R = random.Random(11235)
found = None
for _ in range(600000):
    P=[None]*7; Q=[None]*7
    for k,v in Pfix.items(): P[k]=v
    for k,v in Qfix.items(): Q[k]=v
    for k in (2,3,4,5):
        P[k]=(F(R.randint(-16,-1)), F(R.randint(-16,2)))
        Q[k]=(F(R.randint(1,16)),   F(R.randint(4,18)))
    if len(set(P))!=7 or len(set(Q))!=7: continue
    if not U.simple(P) or not U.simple(Q): continue
    V0=P+Q
    coinc,deps = detect(V0)
    if coinc != [(0,7)]: continue
    if any(i in deps or j in deps for (i,j) in coinc): continue
    if not reaches_free(deps): continue
    cfg = Config(V0, coinc, deps)
    bad,pts = sanity(cfg)
    if bad: continue
    alpha,fvars = direction_map(cfg)
    if alpha is None: continue
    vC,_ = construct_E(cfg,fvars); vP,ip = construct_Eplus(cfg,fvars)
    if vC is None or vP is None: continue
    if vC['E0'] == vP['E0']: continue          # need them to DIFFER
    Vn,Wn,e0,_ = r3.eps0_and_signs(cfg, alpha, vC)
    cen0 = degeneracy_census(cfg.P(), cfg.Q())
    cen  = degeneracy_census(*[U.snap(Vn,e0/F(4))[i:i+7] for i in (0,7)])
    if not (cen - cen0): continue              # need C to actually CREATE one
    found = (cfg, pts, vC, vP, ip, cen0, cen, alpha)
    break

if found is None:
    print('K7: could not build the separating configuration -- REPORTING THE FAILURE')
    sys.exit()
cfg,pts,vC,vP,ip,cen0,cen,alpha = found
print('P =', [ (str(a),str(b)) for a,b in cfg.P() ])
print('Q =', [ (str(a),str(b)) for a,b in cfg.Q() ])
a,b = rays_at(cfg,0,7)
print(f'|dP0 n dQ0| = {len(pts)} (finite);  coincidence {cfg.coinc};  dependencies {cfg.deps}')
print(f'a1={a[0]} a2={a[1]} b1={b[0]} b2={b[1]}   cross(a1,b1)={cross2(a[0],b[0])}')
print(f'vertex-side degeneracies at eps=0 : {sorted(cen0)}')
V,nn,fi = symbolic_vertices(cfg,alpha,fvars:=direction_map(cfg)[1])
W = witness_family(V); Zf = forced_zero_set(W)
for lab,v in (('C  (forbid a1,a2)', vC), ('C+ (forbid all four rays)', vP)):
    E = v['E0']
    Vn,Wn,e0,_ = r3.eps0_and_signs(cfg, alpha, v)
    rows=[]
    for k in (2,4,8,1024):
        pp = U.snap(Vn, e0/F(k))
        rows.append(sorted(degeneracy_census(pp[:7], pp[7:]) - cen0))
    Z = zero_set_at(W, flatten(v, fi))
    e2 = r3.verify_end_to_end(cfg, alpha, v)
    print(f'{lab}:  E = {E}')
    print(f'    parallel to  a1?{cross2(E,a[0])==0}  a2?{cross2(E,a[1])==0}'
          f'  b1?{cross2(E,b[0])==0}  b2?{cross2(E,b[1])==0}')
    print(f'    requirement violations (R1/Fsh): {violated(requirements(cfg), Z)}')
    print(f'    (R2) holds: {r3.r2_straddle(cfg, alpha, vC if lab.startswith("C ") else vP, 0, 7)[0]}')
    print(f'    NEW vertex-side degeneracies at eps0/2, /4, /8, /1024: {rows}')
    print(f'    removable zeros left: {len(Z-Zf)};   end-to-end ok={e2["ok"]} {e2["why"]}')
vK,tau = kron_clean(cfg, fvars, W, Zf, fi)
if vK is not None:
    Vn,Wn,e0,_ = r3.eps0_and_signs(cfg, alpha, vK)
    pp = U.snap(Vn, e0/F(4))
    print(f'Kronecker (R3-strong), tau={tau}:  E = {vK["E0"]}, '
          f'new degeneracies {sorted(degeneracy_census(pp[:7],pp[7:]) - cen0)}')
