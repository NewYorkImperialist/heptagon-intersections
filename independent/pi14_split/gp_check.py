"""Validate the GP encoding numerically: random integer point sets, check the
3-term relation sign constraint never fires."""
import itertools, random
def orient(a,b,c): return (b[0]-a[0])*(c[1]-a[1])-(b[1]-a[1])*(c[0]-a[0])
def sg(v): return 1 if v>0 else (-1 if v<0 else 0)
random.seed(7)
viol=0; tot=0; trials=0
for _ in range(400):
    n=11
    P=[(random.randint(-500,500),random.randint(-500,500)) for _ in range(n)]
    S={}
    ok=True
    for t in itertools.combinations(range(n),3):
        s=sg(orient(P[t[0]],P[t[1]],P[t[2]]))
        if s==0: ok=False;break
        S[t]=s
    if not ok: continue
    trials+=1
    def o(a,b,c):
        t=(a,b,c); key=tuple(sorted(t))
        inv=(a>b)+(a>c)+(b>c)
        return S[key]*(1 if inv%2==0 else -1)
    for five in itertools.combinations(range(n),5):
        for a in five:
            b,c,d,e=[x for x in five if x!=a]
            t1=o(a,b,c)*o(a,d,e); t2=o(a,b,d)*o(a,c,e); t3=o(a,b,e)*o(a,c,d)
            tot+=1
            if t1>0 and t2<0 and t3>0: viol+=1
            if t1<0 and t2>0 and t3<0: viol+=1
            # also check exact identity
            assert (orient(P[a],P[b],P[c])*orient(P[a],P[d],P[e])
                    - orient(P[a],P[b],P[d])*orient(P[a],P[c],P[e])
                    + orient(P[a],P[b],P[e])*orient(P[a],P[c],P[d]))==0
print(f'GP validation: {trials} random 11-point sets, {tot} relations checked, {viol} violations')
