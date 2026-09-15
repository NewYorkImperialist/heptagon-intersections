import itertools as it, json, hashlib, pathlib, subprocess, sys, time
from indep_om import build
HERE=pathlib.Path(__file__).resolve().parent
ROOT=HERE.parents[1]
def graphs():
    rows=json.loads((ROOT/'independent/no_a7_experiment/cpp_no_a7.json').read_text())['residual_survivors']
    return sorted(set(tuple(r['P_neighbourhood_bitmasks']) for r in rows))
def transform(g,p,q,swap):
    out=[0]*7
    for i in range(7):
        for j in range(7):
            if g[i]>>j&1:
                a,b=p[i],q[j]
                if swap:a,b=b,a
                out[a]|=1<<b
    return tuple(out)
PERMS=[tuple((s*i+k)%7 for i in range(7)) for s in (1,-1) for k in range(7)]
def canonical(g):
    return min(transform(g,p,q,s) for p in PERMS for q in PERMS for s in (False,True))
def encode(g):
    segs={i:(i//7*7+i%7,i//7*7+(i+1)%7) for i in range(14)}
    pat={(i,7+j):not bool(g[i]>>j&1) for i in range(7) for j in range(7)}
    for off in (0,7):
        for i,j in it.combinations(range(7),2):
            if (j-i)%7 not in (1,6):pat[off+i,off+j]=False
    return build(range(14),segs,pat,[])
def raw(E):return ('p cnf %d %d\n'%(E.nv,len(E.cls))+''.join(' '.join(map(str,c))+' 0\n' for c in E.cls)).encode()
def solve(tag,E):
    from pysat.solvers import Lingeling
    cnf=HERE/(tag+'.cnf'); cnf.write_bytes(raw(E)); t=time.time()
    with Lingeling(bootstrap_with=E.cls,with_proof=True) as s:
        sat=s.solve()
        if sat:
            model=s.get_model(); assert all(any(l in model for l in c) for c in E.cls)
            (HERE/(tag+'.model')).write_text(' '.join(map(str,model))+'\n')
        else:(HERE/(tag+'.drat')).write_text('\n'.join(s.get_proof())+'\n')
    result={'tag':tag,'sat':sat,'seconds':time.time()-t,'cnf_sha256':hashlib.sha256(raw(E)).hexdigest()}
    if not sat:
        check=subprocess.run([sys.executable,str(HERE/'dratcheck.py'),str(cnf),str(HERE/(tag+'.drat'))],capture_output=True,text=True,timeout=600)
        (HERE/(tag+'.check.log')).write_text(check.stdout+check.stderr)
        assert check.returncode==0 and 'PROOF VERIFIED (UNSAT)' in check.stdout
        # Only accept pure RUP proofs: do not rely on the legacy RAT fallback.
        assert '(of which RAT-only: 0)' in check.stdout
        result['checked']=True
    (HERE/(tag+'.json')).write_text(json.dumps(result,indent=2)+'\n')
    print(tag, 'SAT; model checked' if sat else 'UNSAT; DRAT checked (RUP only)',flush=True)
    return result

def controls():
    data=json.loads((ROOT/'data/lower_bound/lower_bound_38.json').read_text()); pts=data['P']+data['Q']
    def ori(a,b,c):
        a,b,c=pts[a],pts[b],pts[c]
        d=(b[0]-a[0])*(c[1]-a[1])-(b[1]-a[1])*(c[0]-a[0]); assert d!=0
        return d>0
    def cross(a,b,c,d):return ori(a,b,c)!=ori(a,b,d) and ori(c,d,a)!=ori(c,d,b)
    g=tuple(sum(1<<j for j in range(7) if not cross(i,(i+1)%7,7+j,7+(j+1)%7)) for i in range(7))
    E=encode(g); model={v if ori(*t) else -v for t,v in E.var.items()}
    violations=sum(not any(l in model for l in c) for c in E.cls); assert violations==0
    assert sum(x.bit_count() for x in g)==11
    (HERE/'positive.coordinates.model').write_text(' '.join(map(str,sorted(model,key=abs)))+'\n')
    print('POSITIVE: lower_bound_38; 364 nonzero determinants; 38 crossings; %d clauses; 0 violated'%len(E.cls),flush=True)
    assert solve('positive',E)['sat']
    # Deliberately demand that the SAME side pair both crosses and does not cross.
    i,j=next((i,j) for i in range(7) for j in range(7) if not(g[i]>>j&1))
    L=[E.lit(i,(i+1)%7,7+j),E.lit(i,(i+1)%7,7+(j+1)%7),E.lit(7+j,7+(j+1)%7,i),E.lit(7+j,7+(j+1)%7,(i+1)%7)]
    E.block(L,lambda x:x[0]!=x[1] and x[2]!=x[3])
    assert not solve('negative',E)['sat']
    print('NEGATIVE: same side pair required to cross and not cross; PROOF VERIFIED (UNSAT)',flush=True)
if __name__=='__main__':
    if sys.argv[1]=='controls':controls()
    elif sys.argv[1]=='inventory':
        gs=graphs(); reps=sorted(set(map(canonical,gs)))
        (HERE/'inventory.json').write_text(json.dumps({'graphs':gs,'representatives':reps,'representative_index':[reps.index(canonical(g)) for g in gs]},indent=1)+'\n')
        print(len(gs),'graphs;',len(reps),'dihedral/swap orbits')
    else:
        idx=int(sys.argv[1]); g=json.loads((HERE/'inventory.json').read_text())['representatives'][idx]
        solve('orbit_%03d'%idx,encode(g))
