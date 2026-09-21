import sys, time, random, itertools
sys.path.insert(0,".")
from pi14_common import PI14, VERTS
import z3
def orient_n(a,b,c): return (b[0]-a[0])*(c[1]-a[1])-(b[1]-a[1])*(c[0]-a[0])
def pc_n(p,q,r,s):
    return orient_n(p,q,r)*orient_n(p,q,s)<0 and orient_n(r,s,p)*orient_n(r,s,q)<0
idx={v:i for i,v in enumerate(VERTS)}
def build(pat,X,Y):
    def O(a,b,c):
        ia,ib,ic=idx[a],idx[b],idx[c]
        return (X[ib]-X[ia])*(Y[ic]-Y[ia])-(Y[ib]-Y[ia])*(X[ic]-X[ia])
    cons=[]
    for ((a,b),(c,d),_),w in zip(PI14,pat):
        t1,t2,t3,t4=O(a,b,c),O(a,b,d),O(c,d,a),O(c,d,b)
        cons += [t1*t2<0, t3*t4<0] if w else [z3.Or(t1*t2>0,t3*t4>0)]
    return cons
def run(pat,rnd,to):
    X=[z3.Real(f"x{i}") for i in range(11)]; Y=[z3.Real(f"y{i}") for i in range(11)]
    s=z3.Tactic('qfnra-nlsat').solver(); s.set("timeout",to)
    if not rnd: s.set("nlsat.randomize",False)
    for c in build(pat,X,Y): s.add(c)
    t=time.time(); r=s.check(); return str(r), time.time()-t
TO=8000; tally={"def_only":0,"false_only":0,"both":0,"neither":0}
print(f"{'seed':>4} {'default':>10} {'rand=false':>12}   (all instances are SATISFIABLE by construction)")
for seed in range(20,44):
    random.seed(seed)
    while True:
        P=[(random.randint(-40,40),random.randint(-40,40)) for _ in range(11)]
        if len(set(P))==11 and all(orient_n(*t)!=0 for t in itertools.combinations(P,3)): break
    pat=[pc_n(P[idx[a]],P[idx[b]],P[idx[c]],P[idx[d]]) for (a,b),(c,d),_ in PI14]
    r1,_=run(pat,True,TO); r2,_=run(pat,False,TO)
    assert r1!="unsat" and r2!="unsat", "SOUNDNESS BUG: unsat on a satisfiable system!"
    k = "both" if r1=="sat" and r2=="sat" else "def_only" if r1=="sat" else "false_only" if r2=="sat" else "neither"
    tally[k]+=1
    print(f"{seed:>4} {r1:>10} {r2:>12}")
print("\nsolved by both          :", tally["both"])
print("solved only by default  :", tally["def_only"])
print("solved only by rand=false:", tally["false_only"])
print("solved by neither       :", tally["neither"])
