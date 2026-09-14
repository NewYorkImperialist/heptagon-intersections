"""Independent exact-rational verification of B's Fig.6 witness, and a check that
its 12-point order type is a MODEL of my independent CNF for generic/mixed-1.
Nothing is imported from subagent B's code except the raw integer line coefficients."""
from fractions import Fraction as F
import os
EPS=F(int(os.environ.get("EPSN","1")),int(os.environ.get("EPSD","1000")))
import itertools, json, sys
sys.path.insert(0,'.')
import indep_om

L = [(-3,21,-29),(32,34,-16),(-13,-35,-27),(24,31,-10),(11,4,2),(6,-11,-29),(-6,2,24),(11,-23,6)]
SIDES=["a","b","ap","bp","A","B","Ap","Bp"]
assign=[0,2,1,5,3,7,6,4]           # SIDES[i] -> line assign[i]
ln={s:L[assign[i]] for i,s in enumerate(SIDES)}
APEX={"a":"b","b":"a","ap":"bp","bp":"ap","A":"B","B":"A","Ap":"Bp","Bp":"Ap"}

def meet(l1,l2):
    a1,b1,c1=l1; a2,b2,c2=l2
    d=a1*b2-a2*b1
    assert d!=0
    return (F(-(c1*b2-c2*b1),d), F(-(a1*c2-a2*c1),d))

# required crossings (the "must CROSS" list, reconstructed from the pattern itself)
P4=["a","b","ap","bp"]; Q4=["A","B","Ap","Bp"]
ED={("a","A"),("b","B"),("ap","Ap"),("bp","Bp")}
want={}
for x in P4:
    for y in Q4: want[frozenset((x,y))] = (x,y) not in ED
for x,y in [("a","ap"),("a","bp"),("b","ap"),("b","bp"),("A","Ap"),("A","Bp"),("B","Ap"),("B","Bp")]:
    want[frozenset((x,y))]=False

# build each segment: apex = intersection with its partner, other endpoint just past
# the farthest REQUIRED crossing along the same direction.
apexpt={s:meet(ln[s],ln[APEX[s]]) for s in SIDES}
seg={}
for s in SIDES:
    v=apexpt[s]
    req=[t for t in SIDES if frozenset((s,t)) in want and want[frozenset((s,t))]]
    # direction along the line
    a,b,c=ln[s]; d=(F(-b),F(a))
    ts=[]
    for t in req:
        x=meet(ln[s],ln[t])
        tt=(x[0]-v[0])/d[0] if d[0]!=0 else (x[1]-v[1])/d[1]
        ts.append(tt)
    # all required crossings must be on ONE side of the apex
    assert all(t>0 for t in ts) or all(t<0 for t in ts), (s,ts)
    tm=max(ts,key=abs)
    tend=tm*(1+EPS)
    seg[s]=(v,(v[0]+tend*d[0], v[1]+tend*d[1]))

def det(p,q,r): return (q[0]-p[0])*(r[1]-p[1])-(q[1]-p[1])*(r[0]-p[0])
def sgn(x): return (x>0)-(x<0)
def segint(s,t):
    """exact: do closed segments s,t intersect?"""
    p,q=s; r,w=t
    d1,d2,d3,d4=det(p,q,r),det(p,q,w),det(r,w,p),det(r,w,q)
    if sgn(d1)*sgn(d2)<0 and sgn(d3)*sgn(d4)<0: return True
    def on(a,b,x): return det(a,b,x)==0 and min(a[0],b[0])<=x[0]<=max(a[0],b[0]) and min(a[1],b[1])<=x[1]<=max(a[1],b[1])
    return on(p,q,r) or on(p,q,w) or on(r,w,p) or on(r,w,q)

bad=0
for k,v in sorted(want.items(), key=lambda z: sorted(z[0])):
    x,y=sorted(tuple(k))
    got=segint(seg[x],seg[y])
    if got!=v: bad+=1; print("MISMATCH",x,y,"want",v,"got",got)
print("pattern conditions checked:",len(want),"mismatches:",bad)

def in_cone(x,v,s2,t2):
    u=(s2[0]-v[0],s2[1]-v[1]); w=(t2[0]-v[0],t2[1]-v[1]); z=(x[0]-v[0],x[1]-v[1])
    D=u[0]*w[1]-u[1]*w[0]
    s=F(z[0]*w[1]-z[1]*w[0],D); t=F(u[0]*z[1]-u[1]*z[0],D)
    return s>=0 and t>=0
v1=apexpt["a"]; v2=apexpt["ap"]; v3=apexpt["A"]; v4=apexpt["Ap"]
hooking1=in_cone(v3,v1,seg["a"][1],seg["b"][1])
hooked1 =in_cone(v1,v3,seg["A"][1],seg["B"][1])
hooking2=in_cone(v4,v2,seg["ap"][1],seg["bp"][1])
hooked2 =in_cone(v2,v4,seg["Ap"][1],seg["Bp"][1])
print("hooking1=%s hooked1=%s hooking2=%s hooked2=%s"%(hooking1,hooked1,hooking2,hooked2))

# ---- now: is this 12-point order type a MODEL of my independent CNF?
names=["v1","a2","b2","v2","ap2","bp2","v3","A2","B2","v4","Ap2","Bp2"]
pt={"v1":v1,"a2":seg["a"][1],"b2":seg["b"][1],"v2":v2,"ap2":seg["ap"][1],"bp2":seg["bp"][1],
    "v3":v3,"A2":seg["A"][1],"B2":seg["B"][1],"v4":v4,"Ap2":seg["Ap"][1],"Bp2":seg["Bp"][1]}
pts,segs,pat=indep_om.model("generic")
assert pts==names
E=indep_om.build(pts,segs,pat,indep_om.statuses(segs,"mixed-1"))
# assignment from real coordinates
val={}
for t in itertools.combinations(range(12),3):
    d=det(pt[names[t[0]]],pt[names[t[1]]],pt[names[t[2]]])
    assert d!=0, ("collinear!",t)
    val[E.var[t]]= d>0
viol=0; firstbad=None
for cl in E.cls:
    if not any((val[abs(l)] if l>0 else not val[abs(l)]) for l in cl):
        viol+=1
        if firstbad is None: firstbad=cl
print("clauses in independent generic/mixed-1 CNF:",len(E.cls)," VIOLATED by the real configuration:",viol)
if firstbad: print("  first violated clause:",firstbad)
