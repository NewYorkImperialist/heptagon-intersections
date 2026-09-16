#!/usr/bin/env python3
"""Exact arithmetic audits and a partial free-extension witness; not a full search."""
from fractions import Fraction as Q
from itertools import combinations, product
from pathlib import Path
import hashlib
import json

ROOT = Path(__file__).resolve().parent

def point(x, y):
    return Q(x), Q(y)

def sub(a, b):
    return a[0]-b[0], a[1]-b[1]

def det(a, b):
    return a[0]*b[1]-a[1]*b[0]

def orient(a, b, c):
    return det(sub(b, a), sub(c, a))

def cross(s, t):
    a,b = s; c,d = t
    return orient(a,b,c)*orient(a,b,d)<0 and orient(c,d,a)*orient(c,d,b)<0

def meet(s, t):
    a,b = s; c,d = t
    v,w = sub(b,a),sub(d,c)
    lam = det(sub(c,a),w)/det(v,w)
    return a[0]+lam*v[0], a[1]+lam*v[1]

def convex(poly):
    # Every oriented edge must support the convex hull, in the displayed order.
    return all(orient(poly[i],poly[(i+1)%len(poly)],poly[j])>0
               for i in range(len(poly)) for j in range(len(poly))
               if j not in (i,(i+1)%len(poly)))

def in_cone(x, u, c, d):
    a,b,z = sub(c,u),sub(d,u),sub(x,u)
    den=det(a,b)
    return den != 0 and det(z,b)/den>0 and det(a,z)/den>0

# A six-side partial configuration. Missing A and b' are deliberately NOT inferred.
S = {
    'a': (point(-1,0),point('41/20','61/20')),
    'b': (point(-1,0),point(1,0)),
    'Ap': (point(0,-1),point(0,2)),
    'Bp': (point(0,-1),point('11/5','17/5')),
    'ap': (point(1,'5/4'),point(3,'93/20')),
    'B': (point('1/2','5/4'),point(3,'9/2')),
}
expected={frozenset(x) for x in [('a','Ap'),('a','Bp'),('b','Ap'),('b','Bp'),
                               ('ap','Bp'),('B','a'),('ap','B')]}
shared={frozenset(('a','b')),frozenset(('Ap','Bp'))}
for x,y in combinations(S,2):
    assert cross(S[x],S[y]) == (frozenset((x,y)) in expected), (x,y)
    if frozenset((x,y)) not in expected|shared:
        # Explicit closed-segment disjointness, including endpoint contacts.
        assert all(orient(*S[x],p)!=0 for p in S[y])
        assert all(orient(*S[y],p)!=0 for p in S[x])
verts=set(p for s in S.values() for p in s)
assert all(orient(*p)!=0 for p in combinations(verts,3)), 'collinear vertex triple'
assert all(det(sub(*S[x]),sub(*S[y]))!=0 for x,y in combinations(S,2))
x,y=meet(S['ap'],S['B'])
assert (x,y)==point('21/8','321/80')
assert y>x+1 and y<2*x-1  # G4
assert meet(S['ap'],S['a'])[0] == Q(29,14)>S['a'][1][0]
assert meet(S['B'],S['Bp'])[0] == Q(16,7)>S['Bp'][1][0]
for apex in [S['ap'][0],S['B'][0]]:
    x0,y0=apex
    assert x0>0 and y0>0 and y0<x0+1 and y0>2*x0-1  # F2

# Direction contradictions in cases 1 and 2, on an exact finite grid.
grid=[Q(i,3) for i in range(-9,10)]
direction_checks=0
for m,n,dx,dy in product([Q(1,3),Q(1),Q(2)], [Q(2,3),Q(2),Q(3)],grid,grid):
    if n<=m:
        continue
    da=dy-m*dx; dn=dy-n*dx
    if dy<0 and da>0:
        assert dn>0
        direction_checks+=1
    if da>0 and dn<0:
        assert dx>0 and dy>0
        direction_checks+=1

# Pentagon test: the axis intercepts and U are varied independently.
# U is on the F2 side of OE, but hooking is NOT imposed in the input.
pentagon_counts={'hooking_convex':0,'nonhooking_nonconvex':0,'degenerate_skipped':0}
for c0,e0,r,d,p,q in product([Q(1),Q(2)], [Q(1),Q(2)],
                            [Q(3),Q(4),Q(5)], [Q(3),Q(4),Q(5)],
                            [Q(i,2) for i in range(1,13)],
                            [Q(i,2) for i in range(1,13)]):
    if p/e0+q/c0<=1:
        continue
    O,E,C,U,D=point(0,c0),point(e0,0),point(r,0),point(p,q),point(0,d)
    K=p*d+r*q-r*d
    if not K:
        pentagon_counts['degenerate_skipped']+=1
        continue
    hook=in_cone(point(0,0),U,C,D)
    assert hook==(K>0)
    assert convex([O,E,C,U,D])==hook
    # Check every algebraic determinant used in PROOFS §6 separately.
    assert orient(C,U,D)==K and orient(U,D,C)==K
    assert orient(C,U,point(0,0))==r*q
    assert orient(U,D,point(0,0))==p*d
    pentagon_counts['hooking_convex' if hook else 'nonhooking_nonconvex']+=1

# Verify the explicitly stated case-6/case-10 coordinate transformation
# over an exact grid, including varied frame parameters.
def faces(x,y,alpha,c,m,n):
    L=y-m*(x+alpha); N=y-n*x+c
    return {'F1': x<0 and y>0 and L<0,
            'F2': x>0 and y>0 and L<0 and N>0,
            'F3': y>0 and L<0 and N<0,
            'F4': x>0 and y<0 and N>0,
            'F5': x>0 and L>0 and N>0}
face_checks=0
for alpha,c,m,n,x,y in product([Q(1),Q(2)], [Q(1),Q(2)],
                              [Q(1,2),Q(1)], [Q(2),Q(3)],grid,grid):
    old=faces(x,y,alpha,c,m,n)
    new=faces(y,x,c,alpha,1/n,1/m)
    for a,b in [('F4','F1'),('F2','F2'),('F3','F5')]:
        assert old[a]==new[b]
        face_checks+=1

# The only two direct quotations used in the authored report.
quotes={10:'It follows that A must intersect three sides of the pentagon, which is impossible.',
        28:'The remaining configuration is the one in Fig. 6.'}
for page,quote in quotes.items():
    text=(ROOT/f'pdf-page-{page}.txt').read_text()
    assert quote in text, (page,quote)

out={
    'kind':'exact finite audits; NOT an exhaustive Lemma-7 search',
    'partial_witness':{k:[[str(v) for v in p] for p in s] for k,s in S.items()},
    'partial_witness_ap_B_crossing':['21/8','321/80'],
    'partial_witness_general_position':True,
    'partial_witness_full_lemma7_counterexample':False,
    'direction_implication_instances':direction_checks,
    'pentagon':pentagon_counts,
    'face_equivalence_instances':face_checks,
    'verified_quotations':quotes,
    'source_pdf_sha256':hashlib.sha256((ROOT/'../../references/akr-dcg-2022.pdf').read_bytes()).hexdigest(),
}
(ROOT/'checks.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(out,indent=2))
