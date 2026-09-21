"""Independent exact certification of the (NC) stuck configuration, and of the
invariance claim that makes the blockage permanent.

Self-contained: it does NOT import eps_uniform.  Everything is recomputed from
integer coordinates with exact Fraction arithmetic, so it is a genuine
cross-check of nc_stuck.py rather than a rerun of it.
"""
from fractions import Fraction as F
from itertools import combinations

P = [(2,-4),(2,1),(2,4),(1,3),(-1,3),(-3,4),(-2,2)]
Q = [(-4,-3),(0,-2),(3,-1),(2,0),(1,1),(-1,1),(-3,0)]
P = [(F(a),F(b)) for a,b in P]; Q = [(F(a),F(b)) for a,b in Q]

def cr(p,q,r): return (q[0]-p[0])*(r[1]-p[1])-(q[1]-p[1])*(r[0]-p[0])
def on(a,b,x): return cr(a,b,x)==0 and min(a[0],b[0])<=x[0]<=max(a[0],b[0]) and min(a[1],b[1])<=x[1]<=max(a[1],b[1])
def ins(a,b,x): return on(a,b,x) and x!=a and x!=b
def S(Z): 
    m=len(Z); return [(Z[k],Z[(k+1)%m]) for k in range(m)]
def adj(k,l,m): return (l-k)%m in (1,m-1) or k==l

def simple(Z):
    m=len(Z); s=S(Z)
    if any(Z[k]==Z[(k+1)%m] for k in range(m)): return False,'degenerate side'
    for k,l in combinations(range(m),2):
        a,b=s[k]; c,d=s[l]
        # collinear overlap?
        if cr(a,b,c)==0 and cr(a,b,d)==0:
            if ins(a,b,c) or ins(a,b,d) or ins(c,d,a) or ins(c,d,b): return False,f'overlap {k},{l}'
        hits={p for p in (a,b) if on(c,d,p)} | {p for p in (c,d) if on(a,b,p)}
        prop = cr(c,d,a)*cr(c,d,b)<0 and cr(a,b,c)*cr(a,b,d)<0
        if adj(k,l,m):
            shared=set((a,b))&set((c,d))
            if prop: return False,f'adjacent proper cross {k},{l}'
            if hits!=shared: return False,f'adjacent extra meet {k},{l}: {hits} vs {shared}'
        else:
            if prop or hits: return False,f'non-adjacent meet {k},{l}'
    return True,'simple'

def inter(Pp,Qq):
    pts=set(); infinite=False
    for a,b in S(Pp):
        for c,d in S(Qq):
            if cr(a,b,c)==0 and cr(a,b,d)==0:
                if ins(a,b,c) or ins(a,b,d) or ins(c,d,a) or ins(c,d,b): infinite=True
            if cr(c,d,a)*cr(c,d,b)<0 and cr(a,b,c)*cr(a,b,d)<0:
                t=cr(a,b,c)/(cr(a,b,c)-cr(a,b,d)); pts.add((c[0]+t*(d[0]-c[0]), c[1]+t*(d[1]-c[1])))
            else:
                for p in (a,b):
                    if on(c,d,p): pts.add(p)
                for p in (c,d):
                    if on(a,b,p): pts.add(p)
    return pts, infinite

def nc(Z,k):
    m=len(Z); return cr(Z[(k-1)%m],Z[k],Z[(k+1)%m])!=0 and cr(Z[k],Z[(k+1)%m],Z[(k+2)%m])!=0

print('P simple :', simple(P))
print('Q simple :', simple(Q))
pts,infl = inter(P,Q)
print('|dP n dQ| =', len(pts), ' infinite:', infl)
print('coincident vertices:', [(i,j) for i in range(7) for j in range(7) if P[i]==Q[j]])
dg=[('P',i,j) for i in range(7) for j in range(7) if ins(Q[j],Q[(j+1)%7],P[i])] + \
   [('Q',j,i) for j in range(7) for i in range(7) if ins(P[i],P[(i+1)%7],Q[j])]
print('vertex-side degeneracies:', dg)
print()
print('the three sides whose AKR shift could remove the degeneracy (Q3 interior to P-side 0):')
for name,Z,k in (('P',P,0),('Q',Q,2),('Q',Q,3)):
    m=len(Z)
    print(f'   {name}-side {k}: NC = {nc(Z,k)}   '
          f'triples det = {cr(Z[(k-1)%m],Z[k],Z[(k+1)%m])}, {cr(Z[k],Z[(k+1)%m],Z[(k+2)%m])}')
print()
print('every side of P and of Q, with (NC) and whether its shift removes a degeneracy:')
for name,Z in (('P',P),('Q',Q)):
    m=len(Z)
    for k in range(m):
        kills = any((o==name and v in (k,(k+1)%m)) or (o!=name and s==k) for o,v,s in dg)
        print(f'   {name}{k}: NC={str(nc(Z,k)):5} removes-a-degeneracy={kills}')
print()
print('INVARIANCE: a collinear consecutive triple survives every defined AKR shift.')
print('  Shift of side k replaces Z_k by a point of aff(Z_{k-1},Z_k) and Z_{k+1} by a')
print('  point of aff(Z_{k+1},Z_{k+2}); both LINES are unchanged.  A collinear triple')
print('  (k-2,k-1,k) lies in aff(Z_{k-1},Z_k), so its moved member stays on it;')
print('  likewise (k+1,k+2,k+3).  The triples (k-1,k,k+1) and (k,k+1,k+2) cannot be')
print('  collinear, since that is exactly (NC) and the shift would be undefined.')
print('  Shifts of the OTHER polygon do not move Z at all.')
print()
print('CONTROL (the checker can say no): a generic pair with a degeneracy')
Pg=[(F(0),F(0)),(F(4),F(0)),(F(5),F(3)),(F(3),F(5)),(F(0),F(4)),(F(-2),F(3)),(F(-3),F(1))]
Qg=[(F(2),F(0)),(F(7),F(1)),(F(8),F(4)),(F(6),F(6)),(F(3),F(7)),(F(1),F(6)),(F(-1),F(2))]
print('  Pg simple:',simple(Pg)[0],' Qg simple:',simple(Qg)[0])
dgg=[('P',i,j) for i in range(7) for j in range(7) if ins(Qg[j],Qg[(j+1)%7],Pg[i])] + \
    [('Q',j,i) for j in range(7) for i in range(7) if ins(Pg[i],Pg[(i+1)%7],Qg[j])]
print('  degeneracies:',dgg)
usable=[(nm,k) for nm,Z in (('P',Pg),('Q',Qg)) for k in range(7)
        if nc(Z,k) and any((o==nm and v in (k,(k+1)%7)) or (o!=nm and s==k) for o,v,s in dgg)]
print('  usable (NC-defined, degeneracy-removing) sides:',usable)
