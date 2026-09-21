from fractions import Fraction as F
import sys
sys.path.insert(0,"/Users/jaydenlin/.claude/jobs/5df73377/tmp")
exec(open("/Users/jaydenlin/.claude/jobs/5df73377/tmp/cert.py").read().split("P=[V(2,-4)")[0])  # reuse helpers

P0=[V(0,0),V(0,-3),V(5,-6),V(9,-1),V(6,4),V(-1,5),V(-3,0)]
Q0=[V(0,0),V(2,-1),V(7,-4),V(11,2),V(8,7),V(1,8),V(4,0)]
print("P simple:",simple(P0)); print("Q simple:",simple(Q0))
print("|dP cap dQ| at eps=0 :",bcount(P0,Q0))
print("coincident vertices  :",sorted(set(P0)&set(Q0)))
a1=sub(P0[6],P0[0]); a2=sub(P0[1],P0[0]); b1=sub(Q0[6],Q0[0]); b2=sub(Q0[1],Q0[0])
print(f"a1={a1} a2={a2} b1={b1} b2={b2}")
print("cross(a1,b1) =",cross2(a1,b1),"  -> a1,b1 parallel:",cross2(a1,b1)==0)
print("all four mutually parallel:",all(cross2(a1,v)==0 for v in (a2,b1,b2)))
# is E=(2,0) in an e9_directions cone?  E = t*b_l - s*a_k with s,t>0
E=V(2,0)
for nk,ak in (("a1",a1),("a2",a2)):
    for nl,bl in (("b1",b1),("b2",b2)):
        d=cross2(bl,(-ak[0],-ak[1]))
        if d==0: continue
        t=F(cross2(E,(-ak[0],-ak[1])),d); s=F(cross2(bl,E),d)
        if t>0 and s>0: print(f"  E in cone({nl}, -{nk}):  t={t}  s={s}   <- e9_directions PRODUCES this direction")
# now move only the apex P0 by eps*E and test finiteness
print("\nmove apex P_0 -> eps*E, E=(2,0):")
for k in (1,2,20,60):
    eps=F(1,25)/F(2**k)
    Pe=list(P0); Pe[0]=(eps*E[0], eps*E[1])
    r=seg_inter(Pe[6],Pe[0],Q0[6],Q0[0])
    n=bcount(Pe,Q0)
    print(f"  eps=eps0/2^{k}: [P6,P0(eps)] cap [Q6,Q0] = {r[0]}"
          + (f" of positive length {r[1]}..{r[2]}" if r[0]=='seg' else "")
          + f"   |dP cap dQ| = {'INFINITE' if n is None else n}")
# would e9_directions' own degeneracy-free clause have rejected E?
eps=F(1,50); Pe=list(P0); Pe[0]=(eps*E[0],eps*E[1])
flag = on_open(Q0[0], Pe[6], Pe[0])
print(f"\ne9_directions degeneracy-free test: Q_j=(0,0) interior to P-side [P6,P0(eps)]? {flag}")
print("  -> that clause DOES reject E" if flag else "  -> clause would NOT catch it")
