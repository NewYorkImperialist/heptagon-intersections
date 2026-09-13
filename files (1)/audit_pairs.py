"""AUDIT PART 3: verify emptiness PER ORDERED PAIR (a,b) of exceptional classes,
and confirm invariance under re-labelling of the class representatives."""
import pickle
from itertools import combinations
from chiro import *
FULL=127
def bits(x): return [i for i in range(7) if x>>i&1]
def pc(x): return bin(x).count('1')
exec(open("audit_enum.py").read().split("E_TARGET=")[0].split('"""')[2])

exc=pickle.load(open("exc_det.pkl","rb"))
def rotate(d,t,refl):
    """relabel the cycle 0..6 by i -> (t + (-i if refl else i)) mod 7"""
    lab=[(t+(-i if refl else i))%7 for i in range(7)]
    nd={}
    for tr in combinations(range(7),3):
        tt,s=sort3(lab[tr[0]],lab[tr[1]],lab[tr[2]])
        nd[tr]=s*d[tt]
    return nd
def classdata(d):
    chi=Chi(d,7)
    fam=set()
    for A in halfplane_subsets(chi,7):
        m=0
        for s in range(7):
            if ((s in A)!=(((s+1)%7) in A)): m|=1<<s
        fam.add(m)
    al=[any(((FULL^N)&~C)==0 for C in fam) for N in range(128)]
    W=set()
    for i in range(7):
        if inside_tri(chi,(i+3)%7,i,(i+1)%7,(i+2)%7): W.add(i)
        if inside_tri(chi,(i+1)%7,(i+4)%7,(i+3)%7,(i+2)%7): W.add(i)
    AV=[]
    for i in range(7):
        for j in range(i+1,7):
            if (j-i)%7 in (1,6): continue
            a,b,c,dd=i,(i+1)%7,j,(j+1)%7
            if (not line_cuts_seg(chi,c,dd,a,b)) and (not line_cuts_seg(chi,a,b,c,dd)):
                AV.append((i,j))
    return al,sorted(W),AV
FOUR=list(combinations(range(7),4))
def L2_ok(N,W):
    for i in W:
        sides=[(i+t)%7 for t in range(4)]
        for qs in FOUR:
            mq=0
            for j in qs: mq|=1<<j
            dq={j:0 for j in qs}; ok=True
            for s in sides:
                dd=N[s]&mq
                if pc(dd)!=1: ok=False; break
                dq[dd.bit_length()-1]+=1
            if ok and all(v==1 for v in dq.values()): return False
    return True

surv=[N for N,nc in pickle.load(open("surv9.pkl","rb"))] if False else None
# rebuild the 9702 L3-survivors
survivors=[]
SUBS=[[m for m in range(1,128) if pc(m)==s] for s in range(4)]
def rec(i,N,used,budget):
    if i==7:
        if budget==0 and used==FULL: process(N)
        return
    rem=7-i; hi=min(3,budget-(rem-1))
    for size in range(1,hi+1):
        for msk in SUBS[size]:
            N.append(msk); rec(i+1,N,used|msk,budget-size); N.pop()
def process(N):
    NQ=[0]*7
    for i in range(7):
        for j in bits(N[i]): NQ[j]|=1<<i
    compP,compQ,nc=components(N)
    for i in range(7):
        if compP[i]!=compP[(i+1)%7] and not L5_ok(N[i],N[(i+1)%7]): return
    for j in range(7):
        if compQ[j]!=compQ[(j+1)%7] and not L5_ok(NQ[j],NQ[(j+1)%7]): return
    if not H_bip(compP) or not H_bip(compQ): return
    if not L3_ok(N) or not L3_ok(NQ): return
    survivors.append((tuple(N),tuple(NQ),tuple(compP),tuple(compQ)))
rec(0,[],0,9)
print("L3-survivors rebuilt:", len(survivors))

def run(exc_variants, tag):
    CD=[classdata(d) for d in exc_variants]
    worst=0; table={}
    for a in range(len(CD)):
        for b in range(len(CD)):
            cnt=0
            for N,NQ,compP,compQ in survivors:
                if not all(CD[a][0][x] for x in NQ): continue
                if not all(CD[b][0][x] for x in N): continue
                if not L2_ok(list(N),CD[a][1]): continue
                if not L2_ok(list(NQ),CD[b][1]): continue
                if not all(L5_ok(N[i],N[j]) for (i,j) in CD[a][2] if compP[i]!=compP[j]): continue
                if not all(L5_ok(NQ[i],NQ[j]) for (i,j) in CD[b][2] if compQ[i]!=compQ[j]): continue
                cnt+=1
            table[(a,b)]=cnt; worst=max(worst,cnt)
    print(f"  [{tag}] 196 ordered class pairs; max survivors over any pair = {worst}; "
          f"total = {sum(table.values())}")
    return worst

print("\nper-pair verification with the canonical representatives:")
w1=run(exc,"as stored")
print("per-pair verification with EVERY representative re-labelled (rotation 3, reflected):")
w2=run([rotate(d,3,True) for d in exc],"rotated+reflected")
print("per-pair verification with a different re-labelling (rotation 5):")
w3=run([rotate(d,5,False) for d in exc],"rotated")
print(f"\nALL THREE LABELLINGS GIVE ZERO SURVIVORS: {w1==w2==w3==0}")
