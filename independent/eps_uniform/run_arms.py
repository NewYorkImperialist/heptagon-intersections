"""Controlled two-arm experiment.

ARM A ("bare"):   direction chosen only so that (i) no NEW witness becomes
                  identically zero and (ii) the vertex-vertex coincidences do
                  break.  This is everything the "One final point" paragraph's
                  eps-estimate gives you.
ARM B ("AKR"):    the same, PLUS AKR's own criterion on E_i -- at each apex, at
                  least one PROPER crossing between a P-side and a Q-side
                  incident to that apex, for all small eps > 0.

Both arms are then checked identically: sign-constancy on (0,eps_0), simplicity,
separation, relation (1), and whether the intersection-point count drops.
"""
import sys, random
from fractions import Fraction as F
sys.path.insert(0,'/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform')
from epslib import Poly, Vec, orient, sgn
from uniform import (witnesses, eps0_of, signvec, leadsignvec, simple,
                     cross_points, snap, build, make_motion, CAND)

P0, P1, Q0, Q3 = 0, 1, 7, 10
APEXES = [ (P0, Q0, [(P0,1),(P0,6)], [(7,8),(7,13)]),
           (P1, Q3, [(P1,0),(P1,2)], [(10,9),(10,11)]) ]

def zeroset(W):
    return frozenset(k for k,p in W.items() if p.is_zero())

def proper_small(V, a, b, c, d):
    o = [orient(V[a],V[b],V[c]), orient(V[a],V[b],V[d]),
         orient(V[c],V[d],V[a]), orient(V[c],V[d],V[b])]
    s = []
    for p in o:
        m, cf = p.lead_low()
        if m is None: return False
        s.append(sgn(cf))
    return s[0]*s[1] < 0 and s[2]*s[3] < 0

def akr_ok(V):
    for _, _, ps, qs in APEXES:
        if not any(proper_small(V, a, b, c, d) for (a,b) in ps for (c,d) in qs):
            return False
    return True

def search(Pp, Qq, lam, R, require_akr, tries=400):
    V0 = [Vec(Poly.const(p[0]), Poly.const(p[1])) for p in list(Pp)+list(Qq)]
    Z0 = zeroset(witnesses(V0))
    cands = [(a,b) for a in CAND for b in CAND]
    R.shuffle(cands)
    for E0, E1 in cands[:tries]:
        V = make_motion(Pp, Qq, lam, E0, E1)
        W = witnesses(V); Z = zeroset(W)
        if not Z <= Z0: continue
        if ('X',P0,Q0) in Z and ('Y',P0,Q0) in Z: continue
        if ('X',P1,Q3) in Z and ('Y',P1,Q3) in Z: continue
        if require_akr and not akr_ok(V): continue
        return E0, E1, V, W
    return None

def assess(Pp, Qq, lam, V, W, R):
    e0, _ = eps0_of(W)
    lead = leadsignvec(W)
    es = [e0/2, e0/3, e0/1000, e0/10**9] + \
         [e0*F(R.randint(1,999),1000) for _ in range(6)]
    const = len({signvec(W,e) for e in es}) == 1 and signvec(W,es[0]) == lead
    cnt0 = len(cross_points(Pp,Qq)[0])
    counts, sep, smp, dep = set(), True, True, True
    for e in es:
        pts = snap(V,e); Pe, Qe = pts[:7], pts[7:]
        if Pe[P0]==Qe[0] or Pe[P1]==Qe[3]: sep=False
        if not (simple(Pe) and simple(Qe)): smp=False
        c,inf = cross_points(Pe,Qe)
        counts.add(float('inf') if inf else len(c))
        if lam is not None:
            w=(lam*Pe[P0][0]+(1-lam)*Pe[P1][0], lam*Pe[P0][1]+(1-lam)*Pe[P1][1])
            if Qe[5]!=w: dep=False
    return dict(eps0=e0, const=const, cnt0=cnt0, counts=sorted(counts),
                sep=sep, simple=smp, dep=dep,
                nodrop=all(c>=cnt0 for c in counts),
                ccon=len(counts)==1)

def main(n=60, seed=987654):
    R = random.Random(seed)
    res = {'A': dict(found=0,const=0,sep=0,simple=0,dep=0,nodrop=0,ccon=0,drops=[]),
           'B': dict(found=0,const=0,sep=0,simple=0,dep=0,nodrop=0,ccon=0,drops=[])}
    built = 0
    eps0s = []
    while built < n:
        b = build(R)
        if b is None: continue
        Pp,Qq,lam = b; built += 1
        for arm, req in (('A',False),('B',True)):
            r = search(Pp,Qq,lam,random.Random(hash((seed,built,arm))%2**31),req)
            if r is None: continue
            E0,E1,V,W = r
            res[arm]['found'] += 1
            a = assess(Pp,Qq,lam,V,W,R)
            if arm=='B': eps0s.append(a['eps0'])
            for k in ('const','sep','simple','dep','nodrop','ccon'):
                if a[k]: res[arm][k] += 1
            if not a['nodrop']:
                res[arm]['drops'].append((a['cnt0'], a['counts'], E0, E1))
    return built, res, eps0s

if __name__=='__main__':
    built,res,eps0s = main()
    print(f"configurations built: {built}\n")
    hdr = f"{'':>10}{'found':>7}{'sign-const':>12}{'separated':>11}{'simple':>8}{'rel(1)':>8}{'no drop':>9}{'count const':>13}"
    print(hdr)
    for arm,name in (('A','ARM A bare'),('B','ARM B  AKR')):
        d = res[arm]
        print(f"{name:>10}{d['found']:>7}{d['const']:>12}{d['sep']:>11}{d['simple']:>8}{d['dep']:>8}{d['nodrop']:>9}{d['ccon']:>13}")
    print()
    for arm in ('A','B'):
        print(f"ARM {arm}: {len(res[arm]['drops'])} count drops out of {res[arm]['found']}")
        for d in res[arm]['drops'][:6]:
            print(f"    count at eps=0: {d[0]}  ->  {d[1]}   E0={d[2]} E1={d[3]}")
    if eps0s:
        print(f"\nARM B eps_0: min {min(eps0s)}  max {max(eps0s)}  median {sorted(eps0s)[len(eps0s)//2]}")
