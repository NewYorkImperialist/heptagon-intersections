"""Exhaustive order-type check of pattern Pi_8 (and a positive control).

Every realizable 8-point configuration in general position has some order type
in the TU Graz database otypes08.b08 (3315 of them).  Crossing of two segments
is determined by orientation signs, and is invariant under reflection (each test
is a PRODUCT of two orientations, so a global sign flip cancels), so checking
every labelling of every stored representative is exhaustive.
"""
import sys, itertools
R='/Users/jaydenlin/dev/lean/heptagon-intersections/independent/order_type_audit/external/'
def load(path,n):
    b=open(path,'rb').read(); out=[]
    for k in range(len(b)//(2*n)):
        out.append([(b[k*2*n+2*i], b[k*2*n+2*i+1]) for i in range(n)])
    return out
def orient(a,b,c): return (b[0]-a[0])*(c[1]-a[1])-(b[1]-a[1])*(c[0]-a[0])

# target: dict (pi,qj) -> True(cross) / False(miss); absent = unconstrained
PI8 = {(0,0):True,(0,1):True,(0,2):True,
       (1,0):True,(1,1):False,(1,2):True,
       (2,0):True,(2,1):True}

def search(cfg, target, find_all=False):
    n=8
    S=[[[0]*n for _ in range(n)] for _ in range(n)]
    for a in range(n):
        for b in range(n):
            for c in range(n):
                if a!=b and b!=c and a!=c:
                    S[a][b][c] = 1 if orient(cfg[a],cfg[b],cfg[c])>0 else -1
    def cross(a,b,c,d):
        return S[a][b][c]!=S[a][b][d] and S[c][d][a]!=S[c][d][b]
    hits=[]
    P=[0]*4; Q=[0]*4
    def ok(pi,qj):
        t=target.get((pi,qj))
        if t is None: return True
        return cross(P[pi],P[pi+1],Q[qj],Q[qj+1])==t
    used=[False]*n
    def pick(slots,idx,then):
        if idx==len(slots): return then()
        for v in range(n):
            if not used[v]:
                used[v]=True; slots[idx]=v
                if pick(slots,idx+1,then): 
                    used[v]=False; return True
                used[v]=False
        return False
    def stage_b3():
        for v in range(n):
            if not used[v]:
                Q[3]=v
                if ok(0,2) and ok(1,2) and ok(2,2):
                    hits.append((tuple(P),tuple(Q)))
                    if not find_all: return True
        return False
    def stage_b2():
        for v in range(n):
            if not used[v]:
                used[v]=True; Q[2]=v
                if ok(0,1) and ok(1,1) and ok(2,1):
                    if stage_b3(): used[v]=False; return True
                used[v]=False
        return False
    def stage_a3():
        for v in range(n):
            if not used[v]:
                used[v]=True; P[3]=v
                if ok(2,0):
                    if stage_b2(): used[v]=False; return True
                used[v]=False
        return False
    def stage_a2():
        for v in range(n):
            if not used[v]:
                used[v]=True; P[2]=v
                if ok(1,0):
                    if stage_a3(): used[v]=False; return True
                used[v]=False
        return False
    def stage_b1():
        for v in range(n):
            if not used[v]:
                used[v]=True; Q[1]=v
                if ok(0,0):
                    if stage_a2(): used[v]=False; return True
                used[v]=False
        return False
    for a0 in range(n):
        used[a0]=True; P[0]=a0
        for a1 in range(n):
            if not used[a1]:
                used[a1]=True; P[1]=a1
                for b0 in range(n):
                    if not used[b0]:
                        used[b0]=True; Q[0]=b0
                        if stage_b1() and not find_all:
                            return hits
                        used[b0]=False
                used[a1]=False
        used[a0]=False
    return hits

ot8=load(R+'otypes08.b08',8)
print('order types loaded:', len(ot8))

# ---- POSITIVE CONTROL: a pattern we KNOW is realizable must be found.
cert_P=[(373,157),(132,5),(369,182),(88,157)]
cert_Q=[(344,24),(89,303),(345,19),(373,214)]
def cr(a,b,c,d):
    def o(x,y,z): return (y[0]-x[0])*(z[1]-x[1])-(y[1]-x[1])*(z[0]-x[0])
    return o(a,b,c)*o(a,b,d)<0 and o(c,d,a)*o(c,d,b)<0
CTRL={}
for i in range(3):
    for j in range(3):
        CTRL[(i,j)] = cr(cert_P[i],cert_P[i+1],cert_Q[j],cert_Q[j+1])
print('control pattern (from the 38-certificate):',
      [[ 'X' if CTRL[(i,j)] else '.' for j in range(3)] for i in range(3)])
found=0
for idx,cfg in enumerate(ot8):
    if search(cfg,CTRL):
        found=idx; break
else:
    found=None
print('CONTROL: realizable pattern found in database?', found is not None,
      '' if found is None else f'(first at order type #{found})')

# ---- THE CHECK
total=0
for idx,cfg in enumerate(ot8):
    h=search(cfg,PI8)
    if h:
        total+=1
        print('!!! Pi_8 REALIZED at order type', idx, h[:1])
print('Pi_8: order types admitting a realization:', total, '/', len(ot8))

# ---- MINIMALITY CONTROL -------------------------------------------------
# A far sharper control than the one above: drop each condition of Pi_8 in
# turn.  If Pi_8 is a MINIMAL forbidden pattern then every 7-condition subset
# must be realizable -- so all eight of these must be FOUND.  If any were not,
# either Pi_8 is not minimal or this search is broken.
print()
print('Minimality control: drop one condition at a time.')
allok = True
for k in sorted(PI8):
    sub = {kk: v for kk, v in PI8.items() if kk != k}
    hit = None
    for idx, cfg in enumerate(ot8):
        if search(cfg, sub):
            hit = idx
            break
    if hit is None:
        allok = False
    print('  drop P%d-Q%d (%s): %s' % (
        k[0], k[1], 'cross' if PI8[k] else 'miss',
        ('realizable at order type #%d' % hit) if hit is not None else 'NOT realizable'))
print('all eight relaxations realizable:', allok)
