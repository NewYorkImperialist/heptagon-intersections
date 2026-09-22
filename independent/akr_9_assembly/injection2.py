"""Theorem CI, hardened end-to-end test.  Extends independent/akr_9_assembly/
injection.py in four ways it was blind:

 1. CONFIGURATION FAMILIES.  injection.py used exactly one skeleton
    (eps_uniform's `build`: apexes P0=Q0 and P1=Q3, i.e. two coincidences
    adjacent along P and at Q-distance 3, plus one maintained relation (1)).
    Here: 0, 1, 2 and 3 coincidences; coincidences adjacent along P only;
    adjacent along Q only; adjacent along BOTH (the double-counting hazard);
    vertex-side degeneracies in both directions; and a family where the motion
    separates only ONE of two coincidences.

 2. CHOICE-FREE INJECTIVITY.  injection.py fixes one rule for class (c) (first
    incident pair that properly crosses, in a scan order) and tests that rule.
    Here each source point gets its SET of admissible images and we test that
    the sets are PAIRWISE DISJOINT -- i.e. Phi is injective for EVERY choice.
    That is the statement the assembly's steps 2 and 3 actually claim.

 3. (Fin-out) IS RECORDED, NOT SKIPPED.  injection.py does
    `if infe: return dict(skip='infinite at eps')`, so an instance whose
    perturbed intersection is INFINITE is discarded.  That is exactly the
    failure mode of the count inequality's ncard form.  Here it is counted.

 4. A FOURTH RULE FOR class (c).  (R2) at an apex is UNSATISFIABLE if the
    motion does not separate that apex (one of the four D's of every incident
    pair is then identically zero, being orient(A,x,x)).  Phi still exists:
    the apex is maintained and P_i(a) = Q_j(a) is still an intersection point.
    Family `unsep` exercises this and the checker verifies the repair.

Reused verbatim from independent/eps_uniform: epslib (Poly, Vec, orient, sgn,
root_free_radius) and uniform (witnesses, eps0_of, seg_inter, sides, simple,
cross_points, snap, rand_simple_heptagon, CAND).  Rewritten here: the builder,
the motion, the direction search, and all of the checking.  Exact Fractions
throughout; no float anywhere.
"""
import sys, random, itertools, collections
from fractions import Fraction as F
sys.path.insert(0, '/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform')
from epslib import Poly, Vec, orient, sgn
from uniform import (witnesses, eps0_of, simple, cross_points, snap,
                     rand_simple_heptagon, CAND, sides)

N = 7
# --------------------------------------------------------------- geometry ---
def cr(p,q,r): return (q[0]-p[0])*(r[1]-p[1]) - (q[1]-p[1])*(r[0]-p[0])
def on_seg(a,b,x):
    return cr(a,b,x)==0 and min(a[0],b[0])<=x[0]<=max(a[0],b[0]) \
                        and min(a[1],b[1])<=x[1]<=max(a[1],b[1])
def interior(a,b,x): return on_seg(a,b,x) and x!=a and x!=b
def proper(a,b,c,d):
    return cr(c,d,a)*cr(c,d,b) < 0 and cr(a,b,c)*cr(a,b,d) < 0
def cross_pt(a,b,c,d):
    d3,d4 = cr(a,b,c), cr(a,b,d); t = d3/(d3-d4)
    return (c[0]+t*(d[0]-c[0]), c[1]+t*(d[1]-c[1]))

# --------------------------------------------------------------- families ---
# spec: list of (qindex, pindex) identifications making vertex-vertex apexes.
FAMILIES = {
 'none'      : dict(ids=[],                       dep='q', movers='all'),
 'one'       : dict(ids=[(0,0)],                  dep='q', movers='all'),
 'fig27c'    : dict(ids=[(0,0),(3,1)],            dep='q', movers='all'),
 'adjP'      : dict(ids=[(0,0),(4,1)],            dep='q', movers='all'),
 'adjQ'      : dict(ids=[(0,0),(1,3)],            dep='q', movers='all'),
 'adjboth'   : dict(ids=[(0,0),(1,1)],            dep='q', movers='all'),
 'adjbothrev': dict(ids=[(0,0),(6,1)],            dep='q', movers='all'),
 'three'     : dict(ids=[(0,0),(2,2)],            dep='q', movers='all', extra3=True),
 'threeadjP' : dict(ids=[(0,0),(3,1),(5,2)],      dep='q', movers='all'),
 'vsboth'    : dict(ids=[(0,0)],                  dep='both', movers='all'),
 'unsep'     : dict(ids=[(0,0),(3,1)],            dep='q', movers='first'),
 # R3.md Finding R3-1's skeleton: at the apex P0=Q0 the incident P-side 6 and
 # Q-side 6 are COLLINEAR (a1 antiparallel to b1) and meet only at the apex, so
 # (Fin) holds at alpha=0.  Moving P0 along b1 slides them into an overlap.
 'anti'      : dict(ids=[(0,0)],                  dep='q', movers='all', anti=True),
}

def _overlaps(Pp, Qq):
    from uniform import seg_inter
    for a,b in sides(Pp):
        for c,d in sides(Qq):
            if seg_inter(a,b,c,d)[0]=='seg': return True
    return False

def build_family(R, fam, N9=9, drop_g3=False):
    """Returns (Pp, Qq, apexes, qdeps, pdeps, movers) or None.
    qdeps: (j,i,lam) meaning Q_j = lam*P_i + (1-lam)*P_{i+1}  -- a maintained
           relation (1) that Theorem 17 must carry.
    pdeps: (i,j) meaning P_i lies in the relative interior of Q-side j, with
           P_i STATIONARY and Q-side j stationary, so relation (1) is
           maintained trivially.  This is the other direction of class (b)."""
    spec = FAMILIES[fam]
    Pp = rand_simple_heptagon(R, N9)
    if Pp is None: return None
    Qq = rand_simple_heptagon(R, N9)
    if Qq is None: return None
    Qq = list(Qq)
    ids = list(spec['ids'])
    if spec.get('extra3'): ids.append((4,4))
    for (j,i) in ids: Qq[j] = Pp[i]
    if spec.get('anti'):
        # b1 := Q6 - Q0 antiparallel to a1 := P6 - P0
        sfac = F(R.randint(1,3))
        Qq[6] = (Pp[0][0] - sfac*(Pp[6][0]-Pp[0][0]),
                 Pp[0][1] - sfac*(Pp[6][1]-Pp[0][1]))
        if len(set(Qq)) != N or not simple(Qq): return None
    apexes = [(i,j) for (j,i) in ids]
    movedP = sorted({i for (i,_) in apexes})
    if spec['movers'] == 'first': movedP = movedP[:1]
    if not movedP: movedP = [R.randrange(N)]   # always perturb something
    qdeps, pdeps = [], []
    if spec['dep'] in ('q','both') and movedP:
        # a Q-vertex in the relative interior of a P-side whose endpoints move:
        # the interesting case, because Theorem 17 must CARRY this relation (1).
        # j0 must be chosen so that neither Q-side incident to Q_{j0} degenerates
        # into a sub-segment of that P-side (which would make dP n dQ infinite
        # at alpha = 0 for a trivial and uninteresting reason).
        i0 = movedP[0]
        apexQ = [j for (_,j) in apexes]
        cand = [jj for jj in range(N) if jj not in apexQ]
        R.shuffle(cand)
        for j0 in cand:
            lam = F(R.randint(1,4),5)
            old = Qq[j0]
            Qq[j0] = (lam*Pp[i0][0]+(1-lam)*Pp[(i0+1)%N][0],
                      lam*Pp[i0][1]+(1-lam)*Pp[(i0+1)%N][1])
            if len(set(Qq))==N and simple(Qq) and not _overlaps(Pp,Qq):
                qdeps.append((j0, i0, lam)); break
            Qq[j0] = old
    if spec['dep'] == 'both':
        # a STATIONARY P-vertex placed on a STATIONARY Q-side
        # a P-vertex that is an endpoint of a side carrying a dependent
        # Q-vertex must NOT be moved here, or the stored relation (1) would go
        # stale and V.at(0) would stop equalling the base configuration.
        forbidden = set(movedP)
        for (_, i_, _) in qdeps: forbidden |= {i_, (i_+1)%N}
        stat = [ii for ii in range(N) if ii not in forbidden]
        R.shuffle(stat)
        for ii in stat:
            usedQ = {j for (_,j) in apexes} | {q for (q,_,_) in qdeps}
            js = [jj for jj in range(N)
                  if jj not in usedQ and (jj+1)%N not in usedQ]
            R.shuffle(js)
            done = False
            for jj in js:
                mu = F(R.randint(1,4),5)
                Pnew = (mu*Qq[jj][0]+(1-mu)*Qq[(jj+1)%N][0],
                        mu*Qq[jj][1]+(1-mu)*Qq[(jj+1)%N][1])
                old = Pp[ii]; Pp = list(Pp); Pp[ii] = Pnew
                if len(set(Pp))==N and simple(Pp):
                    pdeps.append((ii,jj)); done = True; break
                Pp[ii] = old
            if done: break
    if len(set(Qq)) != N or not simple(Qq): return None
    if len(set(Pp)) != N or not simple(Pp): return None
    # --- carry EVERY relation (1) the motion would otherwise break. ---------
    # (G3) says Theorem 17's solution maintains all of them.  Any Q-vertex in
    # the relative interior of a P-side with a moving endpoint is a dependent
    # vertex and must be carried; if we do not carry it, the motion is simply
    # not a (G3) motion and class (b) has no reason to survive.
    if not drop_g3:
        taken = {j for (_,j) in apexes} | {j for (j,_,_) in qdeps}
        for j in range(N):
            if j in taken: continue
            for i in range(N):
                if i not in movedP and (i+1)%N not in movedP: continue
                a, b = Pp[i], Pp[(i+1)%N]
                if interior(a, b, Qq[j]):
                    dx, dy = b[0]-a[0], b[1]-a[1]
                    mu = (Qq[j][0]-a[0])/dx if dx != 0 else (Qq[j][1]-a[1])/dy
                    qdeps.append((j, i, 1-mu)); taken.add(j); break
        # a P-vertex on a Q-side that now MOVES would need its own dependency;
        # solving that is Theorem 17's job, so reject instead of faking it.
        movingQ = {j for (j,_,_) in qdeps}
        for u in range(N):
            for m in range(N):
                if m in movingQ or (m+1)%N in movingQ:
                    if interior(Qq[m], Qq[(m+1)%N], Pp[u]): return None
    return Pp, Qq, apexes, qdeps, pdeps, movedP

# ----------------------------------------------------------------- motion ---
def make_motion2(Pp, Qq, qdeps, Es, qEs=None):
    """Es: dict i -> E for moving P-vertices.  qEs: dict j -> E for moving
    Q-vertices (used only to build a 'maintained apex').  Q-vertices listed in
    qdeps are carried by their relation (1)."""
    X = Poly.x(); Z = (F(0),F(0))
    def mv(p,e): return Vec(Poly.const(p[0])+X*Poly.const(e[0]),
                            Poly.const(p[1])+X*Poly.const(e[1]))
    VP = [mv(Pp[i], Es.get(i, Z)) for i in range(N)]
    dep = {j:(i,lam) for (j,i,lam) in qdeps}
    VQ = []
    for j in range(N):
        if j in dep:
            i,lam = dep[j]
            VQ.append(VP[i].scal(Poly.const(lam)) + VP[(i+1)%N].scal(Poly.const(1-lam)))
        else:
            VQ.append(mv(Qq[j], (qEs or {}).get(j, Z)))
    return VP + VQ

def Dpoly(V,a,b,c): return orient(V[a],V[b],V[c])
def lead(p):
    m,c = p.lead_low()
    return None if m is None else sgn(c)

def separated_poly(V, i, j):
    """not both X and Y of (P_i, Q_j) identically zero."""
    dx = V[i].x - V[N+j].x; dy = V[i].y - V[N+j].y
    return not (dx.is_zero() and dy.is_zero())

def r2_pairs_lead(V, i, j):
    """incident side pairs whose four D's have the ProperCross straddle pattern
    in their LEADING (lowest) coefficients -- AKR's criterion (R2)."""
    out = []
    for a in ((i-1)%N, i):
        for b in ((j-1)%N, j):
            ids = [(a, (a+1)%N, N+b), (a,(a+1)%N, N+(b+1)%N),
                   (N+b, N+(b+1)%N, a), (N+b, N+(b+1)%N, (a+1)%N)]
            s = [lead(Dpoly(V,*t)) for t in ids]
            if any(x is None for x in s): continue
            if s[0]*s[1] < 0 and s[2]*s[3] < 0: out.append((a,b))
    return out

def search_dirs(Pp, Qq, apexes, qdeps, movedP, R, require_r2, tries=300):
    """Pick directions for the moving P-vertices.  Arm A: every apex whose
    P-vertex moves must actually SEPARATE.  Arm B: additionally (R2) at each
    separated apex."""
    for _ in range(tries):
        Es = {i: R.choice(CAND) for i in movedP}
        V = make_motion2(Pp, Qq, qdeps, Es)
        ok = True
        for (i,j) in apexes:
            if i in movedP and not separated_poly(V,i,j): ok = False; break
        if not ok: continue
        if require_r2:
            for (i,j) in apexes:
                if separated_poly(V,i,j) and not r2_pairs_lead(V,i,j):
                    ok = False; break
            if not ok: continue
        return Es, V
    return None, None

# ------------------------------------------------------------- classifying --
def classify(Pp, Qq):
    pts, inf = cross_points(Pp, Qq)
    out = []
    for x in sorted(pts):
        pv = [k for k in range(N) if Pp[k]==x]
        qv = [k for k in range(N) if Qq[k]==x]
        pi = [i for i in range(N) if interior(Pp[i],Pp[(i+1)%N],x)]
        qj = [j for j in range(N) if interior(Qq[j],Qq[(j+1)%N],x)]
        if pv and qv:   out.append((x,'c',(pv[0],qv[0])))
        elif pv and qj: out.append((x,'b',('P',pv[0],qj[0])))
        elif qv and pi: out.append((x,'b',('Q',qv[0],pi[0])))
        elif pi and qj: out.append((x,'a',(pi[0],qj[0])))
        else:           out.append((x,'?',(pv,qv,pi,qj)))
    return out, inf

def pairsets_alpha0(cls):
    """(a)-pairs, and the FULL four-element candidate set of each apex.
    Returns (ok, detail): ok iff all these sets are pairwise disjoint, which is
    steps 2 and 3 of the assembly's injectivity proof, CHOICE-FREE."""
    groups = []
    for x,k,pay in cls:
        if k=='a': groups.append(('a',x,{pay}))
        elif k=='c':
            i,j = pay
            groups.append(('c',x,{(a,b) for a in ((i-1)%N,i) for b in ((j-1)%N,j)}))
    for u in range(len(groups)):
        for v in range(u+1,len(groups)):
            if groups[u][2] & groups[v][2]:
                return False, (groups[u][0],groups[v][0],sorted(groups[u][2]&groups[v][2]))
    return True, None

# ------------------------------------------------------------------- Phi ----
def image_sets(cls, Pe, Qe, mutate=None):
    """For each source point, the SET of images Phi may take.  Singleton unless
    the point is a separated apex with several admissible (R2) pairs."""
    res = []
    for x,k,pay in cls:
        if k=='a':
            i,j = pay
            a,b,c,d = Pe[i],Pe[(i+1)%N],Qe[j],Qe[(j+1)%N]
            if mutate=='psideonly':
                js = [jj for jj in range(N) if proper(Pe[i],Pe[(i+1)%N],Qe[jj],Qe[(jj+1)%N])]
                if not js: return None, f'MUT a-lost {pay}'
                j2 = js[0]
                res.append((x,'a',{cross_pt(Pe[i],Pe[(i+1)%N],Qe[j2],Qe[(j2+1)%N])}))
                continue
            if not proper(a,b,c,d): return None, f'a-lost {pay}'
            res.append((x,'a',{cross_pt(a,b,c,d)}))
        elif k=='b':
            w,u,m = pay
            if w=='P':
                y = Pe[u]
                if not on_seg(Qe[m],Qe[(m+1)%N],y): return None, f'b-lost {pay}'
            else:
                y = Qe[u]
                if not on_seg(Pe[m],Pe[(m+1)%N],y): return None, f'b-lost {pay}'
            res.append((x,'b',{y}))
        elif k=='c':
            i,j = pay
            if Pe[i] == Qe[j]:                      # RULE (c0): apex maintained
                res.append((x,'c0',{Pe[i]}))
                continue
            S = set()
            for a in ((i-1)%N,i):
                for b in ((j-1)%N,j):
                    A,B,C,D = Pe[a],Pe[(a+1)%N],Qe[b],Qe[(b+1)%N]
                    if proper(A,B,C,D): S.add(cross_pt(A,B,C,D))
            if not S: return None, f'c-lost {pay}'
            res.append((x,'c1',S))
        else:
            return None, f'unclassified {pay}'
    return res, None

def g3_holds(cls, Pe, Qe):
    """(G3): every relation (1) present at alpha=0 -- i.e. every class-(b)
    incidence -- still holds at alpha.  This is EXACTLY the hypothesis Phi's
    class-(b) rule consumes, so isolating it makes the (b) column meaningful."""
    for x,k,pay in cls:
        if k != 'b': continue
        w,u,m = pay
        if w=='P':
            if not on_seg(Qe[m],Qe[(m+1)%N],Pe[u]): return False, pay
        else:
            if not on_seg(Pe[m],Pe[(m+1)%N],Qe[u]): return False, pay
    return True, None

def disjointness(res):
    for u in range(len(res)):
        for v in range(u+1,len(res)):
            if res[u][2] & res[v][2]:
                return False, (res[u][1], res[v][1])
    return True, None

def lands(res, Pe, Qe):
    for _,_,S in res:
        for y in S:
            if not (any(on_seg(Pe[i],Pe[(i+1)%N],y) for i in range(N)) and
                    any(on_seg(Qe[j],Qe[(j+1)%N],y) for j in range(N))):
                return False
    return True

# ------------------------------------------------------------------ driver --
def run(fam, n, seed, arm, badE=False, mutate=None, force_E=None, drop_g3=False, carry=True):
    R = random.Random(seed)
    t = collections.Counter()
    t['fails'] = 0
    fails = []
    tries = 0
    while t['built'] < n and tries < n*60:
        tries += 1
        b = build_family(R, fam, drop_g3=drop_g3)
        if b is None: continue
        Pp,Qq,apexes,qdeps,pdeps,movedP = b
        cls0, inf0 = classify(Pp,Qq)
        if inf0:
            t['built'] += 1; t['inf_at_0'] += 1
            ok0,_ = pairsets_alpha0(cls0)
            if not ok0: t['hazard_precondition_at_0'] += 1
            continue
        if any(c[1]=='?' for c in cls0):
            t['unclassified'] += 1; continue
        if force_E == 'b1':
            # R3.md Finding R3-1's catastrophic direction: E a POSITIVE multiple
            # of b1 = Q_{j-1} - Q_j at the apex, which slides the collinear
            # P-side and Q-side into a positive-length overlap.
            i0 = movedP[0]
            b1 = (Qq[6][0]-Qq[0][0], Qq[6][1]-Qq[0][1])
            from math import gcd
            den = gcd(b1[0].numerator*b1[1].denominator, b1[1].numerator*b1[0].denominator) or 1
            e = (b1[0]/abs(b1[0]) if b1[1]==0 else b1[0]/max(abs(b1[0]),abs(b1[1])),
                 F(0) if b1[1]==0 else b1[1]/max(abs(b1[0]),abs(b1[1])))
            e = (F(2)*e[0], F(2)*e[1])
            if e == (0,0): continue
            Es = {i0: e}
            V = make_motion2(Pp,Qq,qdeps,Es)
            if not all(separated_poly(V,i,j) for (i,j) in apexes if i in movedP):
                t['unsep_reject'] += 1; continue
            if arm=='B':
                bad = False
                for (i,j) in apexes:
                    if separated_poly(V,i,j) and not r2_pairs_lead(V,i,j): bad=True
                if bad: t['R2_reject'] += 1; continue
        elif badE:
            i0 = movedP[0] if movedP else None
            if i0 is None: continue
            e = (Pp[(i0-1)%N][0]-Pp[i0][0], Pp[(i0-1)%N][1]-Pp[i0][1])
            if e==(0,0): continue
            Es = {i0: e}
            for i in movedP[1:]: Es[i] = e
            V = make_motion2(Pp,Qq,qdeps,Es)
            if not all(separated_poly(V,i,j) for (i,j) in apexes if i in movedP):
                t['badE_unsep'] += 1; continue
        else:
            Es, V = search_dirs(Pp,Qq,apexes,(qdeps if carry else []),movedP,R, arm=='B')
            if Es is None: t['no_direction'] += 1; continue
        t['built'] += 1
        # self-check: the motion must reduce to the base configuration at a=0,
        # or every downstream comparison is meaningless.
        base = [v.at(F(0)) for v in V]
        if base[:N] != list(Pp) or base[N:] != list(Qq):
            t['BUILDER_INCONSISTENT'] += 1; continue
        W = witnesses(V); e0,_ = eps0_of(W)
        if e0 is None or e0 <= 0: t['no_eps0'] += 1; continue
        ok0, det0 = pairsets_alpha0(cls0)
        if ok0: t['pairs_disjoint_0'] += 1
        else:   t['pairs_COLLIDE_0'] += 1
        for eps in (e0/2, e0/7, e0/10**6):
            pts = snap(V,eps); Pe,Qe = pts[:N], pts[N:]
            t['tested'] += 1
            if not (simple(Pe) and simple(Qe)): t['not_simple'] += 1; continue
            t['simple'] += 1
            g3, g3why = g3_holds(cls0, Pe, Qe)
            if g3: t['g3_ok'] += 1
            else:  t['g3_VIOLATED'] += 1; fails.append(('g3-not-carried', g3why))
            tgt, infe = cross_points(Pe,Qe)
            if infe: t['INFINITE_OUT'] += 1
            else:    t['finite_out'] += 1
            res, why = image_sets(cls0, Pe, Qe, mutate)
            for c in cls0: t['cls_'+c[1]] += 1
            if res is None:
                t['not_total'] += 1; fails.append(('total',why)); continue
            t['total'] += 1
            inj, d = disjointness(res)
            if inj: t['inj_any_choice'] += 1
            else:   t['NOT_inj'] += 1; fails.append(('inj',d))
            if lands(res,Pe,Qe): t['land'] += 1
            else: t['NOT_land'] += 1; fails.append(('land',None))
            # the weaker ncard statement the assembly actually asserts
            if not infe and len(tgt) >= len(cls0): t['nodrop'] += 1
            if infe: t['ncard_FALSE'] += 1
            t['c0_used'] += sum(1 for r in res if r[1]=='c0')
            t['c1_multi'] += sum(1 for r in res if r[1]=='c1' and len(r[2])>1)
    return t, fails[:4]

def show(label, t, fails):
    print(f'--- {label}')
    print(f'    built={t["built"]} tested={t["tested"]} simple={t["simple"]} '
          f'inf@0={t["inf_at_0"]} nodir={t["no_direction"]}')
    print(f'    (G3) carried by motion: {t["g3_ok"]}/{t["simple"]}'
          f'   (violations: {t["g3_VIOLATED"]} -- builder artefact, see notes)')
    print(f'    Phi total            : {t["total"]}/{t["simple"]}'
          f'   [a/c rules alone: {t["total"]}/{t["g3_ok"]}]')
    print(f'    Phi inj (ANY choice) : {t["inj_any_choice"]}/{t["total"]}')
    print(f'    Phi lands in target  : {t["land"]}/{t["total"]}')
    print(f'    pairsets disjoint @0 : {t["pairs_disjoint_0"]}/{t["pairs_disjoint_0"]+t["pairs_COLLIDE_0"]}'
          f'   (collisions: {t["pairs_COLLIDE_0"]})')
    print(f'    STEP-3 hazard precondition (two apexes sharing a candidate')
    print(f'      side pair) among the inf@0 rejects: {t["hazard_precondition_at_0"]}/{t["inf_at_0"]}'
          f'   among the FINITE ones: {t["pairs_COLLIDE_0"]}')
    print(f'    OUTPUT finite        : {t["finite_out"]}/{t["simple"]}'
          f'   (INFINITE: {t["INFINITE_OUT"]}  -> ncard form FALSE there)')
    print(f'    count did not drop   : {t["nodrop"]}/{t["finite_out"]}')
    print(f'    source pts  a={t["cls_a"]} b={t["cls_b"]} c={t["cls_c"]}'
          f'   | rule c0 (maintained apex) used {t["c0_used"]}x,'
          f' c1 with >1 admissible pair {t["c1_multi"]}x')
    if fails: print(f'    first failures: {fails}')
    print()
