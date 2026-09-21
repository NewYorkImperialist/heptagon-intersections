# Same check, but with the 3-point affine normalisation (16 free vars).
# An affine map takes any 3 non-collinear points to any 3; orientation-reversing
# maps flip every determinant, so BOTH chiralities must be tried.
import sys, time, random
sys.path.insert(0,".")
from pi14_common import PI14, VERTS
import z3
idx={v:i for i,v in enumerate(VERTS)}
TWO = {((0,1),(2,3)), ((1,2),(8,9))}

def run(chir, seed, to, extra, noncross):
    X=[z3.Real(f"x{i}") for i in range(11)]; Y=[z3.Real(f"y{i}") for i in range(11)]
    def O(a,b,c):
        ia,ib,ic=idx[a],idx[b],idx[c]
        return (X[ib]-X[ia])*(Y[ic]-Y[ia])-(Y[ib]-Y[ia])*(X[ic]-X[ia])
    pin=[X[idx[0]]==0, Y[idx[0]]==0, X[idx[1]]==1, Y[idx[1]]==0,
         X[idx[2]]==0, Y[idx[2]]==chir]
    cons=list(pin)
    for (a,b),(c,d),want in PI14:
        t1,t2,t3,t4=O(a,b,c),O(a,b,d),O(c,d,a),O(c,d,b)
        if want: cons += [t1*t2<0, t3*t4<0]
        elif ((a,b),(c,d)) in noncross: cons.append(z3.Or(t1*t2>0,t3*t4>0))
    cons.append(extra(O))
    random.seed(seed); random.shuffle(cons)
    s=z3.Tactic('qfnra-nlsat').solver(); s.set("timeout",to); s.set("nlsat.seed",seed)
    for c in cons: s.add(c)
    t=time.time(); r=s.check(); return str(r), time.time()-t

print("13 crossings + two named non-crossings + Q1xQ3 first disjunct, NORMALISED")
verdict={}
for chir in (1,-1):
    got=None
    for seed in range(10):
        r,el=run(chir,seed,15000, lambda O: O(8,9,10)*O(8,9,11)>0, TWO)
        print(f"  chirality {chir:+d} seed {seed:2d} -> {r:8s} {el:6.2f}s")
        if r in ("unsat","sat"): got=r; break
    verdict[chir]=got
print("verdict:", verdict)
if verdict.get(1)=="unsat" and verdict.get(-1)=="unsat":
    print("=> BOTH chiralities UNSAT: the theorem's key step is CONFIRMED")
elif "sat" in verdict.values():
    print("=> SAT found: the theorem would be REFUTED")
else:
    print("=> could not close it independently; NOT a refutation, just no confirmation")
