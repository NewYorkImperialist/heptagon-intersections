#!/usr/bin/env python3
"""
Tightness profile of Pi_8.

Pi_8 is minimal: dropping any ONE of its eight conditions gives a realizable
pattern (established previously).  That says each condition is necessary.  It
does NOT say how much work each one does.

This measures that: for each condition c, how many of the 3,315 eight-point
order types realize  Pi_8 \\ {c}.  A SMALL count means the seven remaining
conditions already nearly force impossibility, and c is the last obstacle --
which is exactly where a human proof should bite.  A LARGE count means the
relaxation is easy and c carries the contradiction alone.

Reuses the loader and exhaustive labelling search of
independent/order_type_pi8/check_pi8.py.
"""
import sys
sys.path.insert(0, '/Users/jaydenlin/dev/lean/heptagon-intersections/independent/order_type_pi8')
R='/Users/jaydenlin/dev/lean/heptagon-intersections/independent/order_type_audit/external/'

def load(path,n):
    b=open(path,'rb').read(); out=[]
    for k in range(len(b)//(2*n)):
        out.append([(b[k*2*n+2*i], b[k*2*n+2*i+1]) for i in range(n)])
    return out
def orient(a,b,c): return (b[0]-a[0])*(c[1]-a[1])-(b[1]-a[1])*(c[0]-a[0])

PI8 = {(0,0):True,(0,1):True,(0,2):True,
       (1,0):True,(1,1):False,(1,2):True,
       (2,0):True,(2,1):True}

def realizes(cfg, target):
    """Does this order type admit SOME labelling realizing target? (early exit)"""
    n=8
    S=[[[0]*n for _ in range(n)] for _ in range(n)]
    for a in range(n):
        for b in range(n):
            for c in range(n):
                if a!=b and b!=c and a!=c:
                    S[a][b][c] = 1 if orient(cfg[a],cfg[b],cfg[c])>0 else -1
    def cross(a,b,c,d):
        return S[a][b][c]!=S[a][b][d] and S[c][d][a]!=S[c][d][b]
    P=[0]*4; Q=[0]*4; used=[False]*n
    def ok(pi,qj):
        t=target.get((pi,qj))
        return True if t is None else cross(P[pi],P[pi+1],Q[qj],Q[qj+1])==t
    def b3():
        for v in range(n):
            if not used[v]:
                Q[3]=v
                if ok(0,2) and ok(1,2) and ok(2,2): return True
        return False
    def b2():
        for v in range(n):
            if not used[v]:
                used[v]=True; Q[2]=v
                if ok(0,1) and ok(1,1) and ok(2,1) and b3(): used[v]=False; return True
                used[v]=False
        return False
    def a3():
        for v in range(n):
            if not used[v]:
                used[v]=True; P[3]=v
                if ok(2,0) and b2(): used[v]=False; return True
                used[v]=False
        return False
    def a2():
        for v in range(n):
            if not used[v]:
                used[v]=True; P[2]=v
                if ok(1,0) and a3(): used[v]=False; return True
                used[v]=False
        return False
    def b1():
        for v in range(n):
            if not used[v]:
                used[v]=True; Q[1]=v
                if ok(0,0) and a2(): used[v]=False; return True
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
                        if b1(): used[b0]=used[a1]=used[a0]=False; return True
                        used[b0]=False
                used[a1]=False
        used[a0]=False
    return False

ot8 = load(R+'otypes08.b08', 8)
print(f'order types loaded: {len(ot8)}', flush=True)

# control: full Pi_8 must be unrealizable
full = sum(1 for cfg in ot8 if realizes(cfg, PI8))
print(f'\nCONTROL  full Pi_8 realized by {full} / {len(ot8)} order types'
      f'   {"(PASS)" if full==0 else "(FAIL -- expected 0)"}\n', flush=True)

names = {(0,0):'P0xQ0 cross',(0,1):'P0xQ1 cross',(0,2):'P0xQ2 cross',
         (1,0):'P1xQ0 cross',(1,1):'P1xQ1 MISS  ',(1,2):'P1xQ2 cross',
         (2,0):'P2xQ0 cross',(2,1):'P2xQ1 cross'}
print('Relaxations: how many order types realize Pi_8 minus one condition')
print('  (small = the other seven nearly suffice; that condition is the last obstacle)\n')
rows=[]
for c in PI8:
    relaxed = {k:v for k,v in PI8.items() if k != c}
    cnt = sum(1 for cfg in ot8 if realizes(cfg, relaxed))
    rows.append((cnt, c))
    print(f'  drop {names[c]}  ->  {cnt:5d} / {len(ot8)} order types realize the rest', flush=True)
rows.sort()
print(f'\nTIGHTEST relaxation: drop {names[rows[0][1]]} -> only {rows[0][0]} order types.')
print(f'LOOSEST  relaxation: drop {names[rows[-1][1]]} -> {rows[-1][0]} order types.')
