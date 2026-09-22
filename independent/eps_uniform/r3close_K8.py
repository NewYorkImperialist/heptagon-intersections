"""K8: the t=3 branch of Theorem C+ , and the tightness of the bound t in {1,2,3}.

Designed from the algebra.  With a_k = a1, b_l = b1 the two obstructions are
  cross(E(t),a2) = t*cross(b1,a2) - cross(a1,a2)   -> root at t = 1 if equal
  cross(E(t),b2) = t*cross(b1,b2) - cross(a1,b2)   -> root at t = 2 if D = 2C
Choosing a1=(4,0), a2=(4,-4), b1=(0,4), b2=(4,-8) makes BOTH happen, so t=1 and
t=2 are both forbidden and t=3 is forced.  This is also the witness that
{1,2,3} cannot be shrunk to {1,2}."""
import sys, random
from fractions import Fraction as F
sys.path.insert(0,'/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform')
import r3, r3close, uniform as U
from r3 import Config, detect, sanity, reaches_free, cross2, direction_map, \
               symbolic_vertices, witness_family, forced_zero_set, zero_set_at, flatten
from r3b import requirements, violated
from r3close import construct_Eplus_at, construct_Eplus, rays_at, construct_E
from r3close_probe import degeneracy_census

Pfix = {0:(F(0),F(0)), 1:(F(4),F(-4)), 6:(F(4),F(0))}
Qfix = {0:(F(0),F(0)), 1:(F(4),F(-8)), 6:(F(0),F(4))}
R = random.Random(8080)
found=None
for _ in range(800000):
    P=[None]*7; Q=[None]*7
    for k,v in Pfix.items(): P[k]=v
    for k,v in Qfix.items(): Q[k]=v
    for k in (2,3,4,5):
        P[k]=(F(R.randint(2,20)),  F(R.randint(-20,-1)))
        Q[k]=(F(R.randint(-20,8)), F(R.randint(-20,10)))
    if len(set(P))!=7 or len(set(Q))!=7: continue
    if not U.simple(P) or not U.simple(Q): continue
    V0=P+Q
    coinc,deps = detect(V0)
    if coinc != [(0,7)]: continue
    if any(i in deps or j in deps for (i,j) in coinc): continue
    if not reaches_free(deps): continue
    cfg = Config(V0,coinc,deps)
    bad,pts = sanity(cfg)
    if bad: continue
    E,det = construct_Eplus_at(cfg,0,7)
    if det is None or det[2] != 3: continue
    found=(cfg,pts,E,det); break
if found is None:
    print('K8: could not build the t=3 configuration -- REPORTING THE FAILURE'); sys.exit()
cfg,pts,E,det = found
a,b = rays_at(cfg,0,7)
print('P =', [(str(x),str(y)) for x,y in cfg.P()])
print('Q =', [(str(x),str(y)) for x,y in cfg.Q()])
print(f'|dP0 n dQ0| = {len(pts)} (finite);  coincidence {cfg.coinc};  deps {cfg.deps}')
print(f'a1={a[0]} a2={a[1]} b1={b[0]} b2={b[1]};  cross(a1,b1)={cross2(a[0],b[0])}')
alpha,fvars = direction_map(cfg)
V,nn,fi = symbolic_vertices(cfg,alpha,fvars)
W = witness_family(V); Zf = forced_zero_set(W)
cen0 = degeneracy_census(cfg.P(), cfg.Q())
for t in (1,2,3):
    Et = (F(t)*b[0][0]-a[0][0], F(t)*b[0][1]-a[0][1])
    par = [nm for nm,r in (('a1',a[0]),('a2',a[1]),('b1',b[0]),('b2',b[1]))
           if cross2(Et,r)==0]
    Vn,Wn,e0,_ = r3.eps0_and_signs(cfg, alpha, {'E0':Et})
    pp = U.snap(Vn, e0/F(4))
    new = sorted(degeneracy_census(pp[:7],pp[7:]) - cen0)
    Z = zero_set_at(W, flatten({'E0':Et}, fi))
    e2 = r3.verify_end_to_end(cfg, alpha, {'E0':Et})
    print(f'  t={t}: E={Et}  parallel to {par or "none"};  req violations '
          f'{violated(requirements(cfg),Z)};  removable zeros {len(Z-Zf)};  '
          f'new degeneracies {new};  end-to-end ok={e2["ok"]} {e2["why"]}')
print(f'  construct_Eplus_at picks E={E} with (k,l,t)={det}  '
      f'<- t=3 branch {"FIRES" if det[2]==3 else "DID NOT FIRE"}')
Ec, dc = construct_E(cfg,0 if False else 0,7) if False else (None,None)
from r3close import construct_E_at
Ec,dc = construct_E_at(cfg,0,7)
print(f'  Theorem C (forbid a1,a2 only) would pick E={Ec} with (k,l,t)={dc}')
