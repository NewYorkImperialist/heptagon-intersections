import indep_om, os
from pysat.solvers import Lingeling
os.makedirs("proofs",exist_ok=True)
rows=[]
for variant in ["generic","P-adj","Q-adj","PQ-adj"]:
    pts,segs,pat=indep_om.model(variant)
    for which in ["none","mixed-1","mixed-2","both-hooking","both-hooked"]:
        E=indep_om.build(pts,segs,pat,indep_om.statuses(segs,which))
        tag="%s_%s"%(variant,which)
        open("proofs/%s.cnf"%tag,"w").write("p cnf %d %d\n"%(E.nv,len(E.cls))+
            "".join(" ".join(map(str,c))+" 0\n" for c in E.cls))
        s=Lingeling(with_proof=True)
        for c in E.cls: s.add_clause(c)
        r=s.solve(); pr=s.get_proof(); s.delete()
        if not r:
            open("proofs/%s.drat"%tag,"w").write("".join(l+"\n" for l in pr))
        rows.append((tag,"SAT" if r else "UNSAT",len(pr) if not r else 0))
        print(tag, rows[-1][1], rows[-1][2])
