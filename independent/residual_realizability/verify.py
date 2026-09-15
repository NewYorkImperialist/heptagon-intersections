"""Solver-free regeneration, coordinate control, symmetry coverage, DRAT checks."""
import collections, hashlib, itertools as it, json, pathlib, subprocess, sys
from run import HERE,ROOT,encode,raw

def determinant(p,q,r):return (q[0]-p[0])*(r[1]-p[1])-(q[1]-p[1])*(r[0]-p[0])
def check(tag,E):
    blob=raw(E)
    assert blob==(HERE/(tag+'.cnf')).read_bytes(),tag+' CNF regeneration mismatch'
    record=json.loads((HERE/(tag+'.json')).read_text())
    assert hashlib.sha256(blob).hexdigest()==record['cnf_sha256']
    p=subprocess.run([sys.executable,str(HERE/'dratcheck.py'),str(HERE/(tag+'.cnf')),str(HERE/(tag+'.drat'))],capture_output=True,text=True,timeout=600)
    assert p.returncode==0 and 'PROOF VERIFIED (UNSAT)' in p.stdout and '(of which RAT-only: 0)' in p.stdout,p.stdout
    (HERE/(tag+'.recheck.log')).write_text(p.stdout+p.stderr)
    print(tag+': regenerated CNF; PROOF VERIFIED (UNSAT); RUP only',flush=True)

# Re-read both source datasets, including class assignments.
a=json.loads((ROOT/'independent/no_a7_experiment/py_no_a7.json').read_text())['cases']
b=json.loads((ROOT/'independent/no_a7_experiment/cpp_no_a7.json').read_text())['residual_survivors']
def triple(r):return r['class_P'],r['class_Q'],tuple((r.get('graph') or r)['P_neighbourhood_bitmasks'])
A={triple(r) for r in a if r.get('SURVIVES')}; B={triple(r) for r in b}
assert A==B and len(A)==2187
G=sorted({t[2] for t in A}); assert len(G)==412
inv=json.loads((HERE/'inventory.json').read_text()); assert G==list(map(tuple,inv['graphs']))
assert len(inv['representative_index'])==412 and len(inv['representatives'])==4
assert set(inv['representative_index'])==set(range(4))
# Independently enumerate VERTEX maps, derive their induced SIDE maps, and
# check all 49 edge/non-edge conditions. This avoids trusting canonical().
vertex_maps=[[(s*i+k)%7 for i in range(7)] for s in (1,-1) for k in range(7)]
def side_map(v):
    sides=[{i,(i+1)%7} for i in range(7)]
    return [sides.index({v[i],v[(i+1)%7]}) for i in range(7)]
covers=[]
for g,idx in zip(G,inv['representative_index']):
    target=inv['representatives'][idx]; witness=None
    for vp,vq,swap in it.product(vertex_maps,vertex_maps,(False,True)):
        sp,sq=side_map(vp),side_map(vq)
        def matches(i,j):
            x,y=(sq[j],sp[i]) if swap else (sp[i],sq[j])
            return bool(g[i]&(1<<j))==bool(target[x]&(1<<y))
        if all(matches(i,j) for i in range(7) for j in range(7)):
            witness={'graph':g,'orbit':idx,'P_vertex_map':vp,'Q_vertex_map':vq,'swap':swap};break
    assert witness is not None
    covers.append(witness)
(HERE/'coverage.json').write_text(json.dumps(covers,indent=1)+'\n')
print('COVERAGE: source sets agree on 2187 triples; 412 graphs; 412 checked vertex relabellings; orbit sizes '+str(dict(sorted(collections.Counter(c['orbit'] for c in covers).items()))),flush=True)
# Positive control: exact determinants, no SAT solver required.
d=json.loads((ROOT/'data/lower_bound/lower_bound_38.json').read_text()); pts=d['P']+d['Q']
def cross(i,j,k,l):return determinant(pts[i],pts[j],pts[k])*determinant(pts[i],pts[j],pts[l])<0 and determinant(pts[k],pts[l],pts[i])*determinant(pts[k],pts[l],pts[j])<0
assert all(determinant(*(pts[i] for i in t)) for t in it.combinations(range(14),3))
for off in (0,7):
    assert all(not cross(off+i,off+(i+1)%7,off+j,off+(j+1)%7) for i,j in it.combinations(range(7),2) if j-i not in (1,6))
g=tuple(sum(1<<j for j in range(7) if not cross(i,(i+1)%7,7+j,7+(j+1)%7)) for i in range(7))
E=encode(g); _pc=HERE/'positive.cnf'
# The CNFs are gitignored (4.2 MB each), as in independent/akr_l7_reproduction.
# If present, check byte-identical regeneration; if absent, write it.  Either way
# SHA256SUMS.txt records the expected digest.
if _pc.exists(): assert raw(E)==_pc.read_bytes()
else: _pc.write_bytes(raw(E))
model={v if determinant(*(pts[i] for i in t))>0 else -v for t,v in E.var.items()}
assert all(any(l in model for l in c) for c in E.cls)
assert sum(x.bit_count() for x in g)==11
print('POSITIVE: lower_bound_38; 364 nonzero determinants; 38 crossings; %d clauses; 0 violated'%len(E.cls),flush=True)
i,j=next((i,j) for i in range(7) for j in range(7) if not(g[i]>>j&1))
L=[E.lit(i,(i+1)%7,7+j),E.lit(i,(i+1)%7,7+(j+1)%7),E.lit(7+j,7+(j+1)%7,i),E.lit(7+j,7+(j+1)%7,(i+1)%7)]
E.block(L,lambda x:x[0]!=x[1] and x[2]!=x[3]);check('negative',E)
print('NEGATIVE: same side pair required to cross and not cross; PROOF VERIFIED (UNSAT)',flush=True)
# Checker must reject an empty-clause "proof" of the positive formula.
(HERE/'invalid.drat').write_text('0\n')
p=subprocess.run([sys.executable,str(HERE/'dratcheck.py'),str(HERE/'positive.cnf'),str(HERE/'invalid.drat')],capture_output=True,text=True)
assert 'PROOF VERIFIED (UNSAT)' not in p.stdout and 'DRAT CHECK FAILED' in p.stdout
(HERE/'checker_negative.log').write_text(p.stdout+p.stderr)
print('CHECKER NEGATIVE: fake refutation of positive CNF rejected',flush=True)
for idx,g in enumerate(inv['representatives']):check('orbit_%03d'%idx,encode(g))
print('RESULT: 412/412 residual graphs excluded by 4 checked DRAT proofs and 412 checked vertex relabellings; 2187/2187 triples covered; 0 unresolved',flush=True)
