"""Does Theorem CI need (R3) -- hypothesis 14 of A9-RED, 'no removable witness
polynomial is identically zero'?

Theorem CI's proof consults a specific, small set of witness polynomials:

  class (a), side pair (i,j): the four  D(P_i,P_{i+1},Q_j), D(P_i,P_{i+1},Q_{j+1}),
                              D(Q_j,Q_{j+1},P_i), D(Q_j,Q_{j+1},P_{i+1})
  class (c), separated apex : the four D's of the chosen (R2) pair
  class (b) vs class (b)    : for a P-vertex u and a Q-vertex v that are
                              DISTINCT at alpha=0, the pair X_{u,v}, Y_{u,v}

Claim to be checked: NONE of these is ever identically zero, and the reason is
never (R3) -- it is either a nonzero CONSTANT term (classes (a) and the X/Y
pairs, since those quantities are already nonzero at alpha=0) or (R2)'s own
'all four D's not identically zero' clause.  So (R3) is not a hypothesis of
Theorem CI.

NON-VACUITY: the sample must actually CONTAIN identically-zero witnesses, or the
disjointness below is empty talk.  That count is printed.
"""
import sys, random, collections
from fractions import Fraction as F
sys.path.insert(0,'/Users/jaydenlin/dev/lean/heptagon-intersections/independent/akr_9_assembly')
sys.path.insert(0,'/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform')
import injection2 as J
from uniform import witnesses, eps0_of, snap, simple
N=7

def consulted(cls, V, Pe, Qe):
    """The witness keys Theorem CI's proof actually reads."""
    K=set()
    def D(a,b,c): return ('D',)+tuple(sorted((a,b,c)))
    bverts=[]
    for x,k,pay in cls:
        if k=='a':
            i,j=pay
            K |= {D(i,(i+1)%N,N+j), D(i,(i+1)%N,N+(j+1)%N),
                  D(N+j,N+(j+1)%N,i), D(N+j,N+(j+1)%N,(i+1)%N)}
        elif k=='b':
            w,u,m=pay; bverts.append(u if w=='P' else N+u)
        else:
            i,j=pay
            if Pe[i]==Qe[j]: continue                 # maintained apex: rule (c0)
            for (a,b) in J.r2_pairs_lead(V,i,j):
                K |= {D(a,(a+1)%N,N+b), D(a,(a+1)%N,N+(b+1)%N),
                      D(N+b,N+(b+1)%N,a), D(N+b,N+(b+1)%N,(a+1)%N)}
    for u in bverts:
        for v in bverts:
            if u<N<=v: K |= {('X',u,v), ('Y',u,v)}
    return K

def main(n=30, seeds=(999331, 606061)):
    tot=collections.Counter(); ex=[]
    for fam in ['one','fig27c','adjP','adjQ','three','threeadjP','vsboth','unsep','anti']:
        for sd in seeds:
            R=random.Random(sd); built=0; tries=0
            while built<n and tries<n*60:
                tries+=1
                b=J.build_family(R,fam)
                if b is None: continue
                Pp,Qq,apexes,qdeps,pdeps,movedP=b
                cls0,inf0=J.classify(Pp,Qq)
                if inf0 or any(c[1]=='?' for c in cls0): continue
                Es,V=J.search_dirs(Pp,Qq,apexes,qdeps,movedP,R,True)
                if Es is None: continue
                built+=1
                W=witnesses(V); e0,Z=eps0_of(W)
                if e0 is None or e0<=0: continue
                tot['instances']+=1
                tot['zero_witnesses']+=len(Z)
                if Z: tot['instances_with_a_zero_witness']+=1
                pts=snap(V,e0/2); Pe,Qe=pts[:N],pts[N:]
                if not (simple(Pe) and simple(Qe)): continue
                K=consulted(cls0,V,Pe,Qe)
                tot['consulted_keys']+=len(K)
                clash = K & Z
                if clash:
                    tot['CONSULTS_A_ZERO_WITNESS']+=1
                    if len(ex)<3: ex.append((fam,sorted(clash)[:3]))
                # how many consulted keys survive only because of a NONZERO
                # CONSTANT term (i.e. need no uniform-eps input at all)?
                for k in K:
                    p=W[k]
                    m,c=p.lead_low()
                    if m is None: tot['consulted_identically_zero']+=1
                    elif m==0:    tot['consulted_c0_nonzero']+=1
                    else:         tot['consulted_c0_zero_but_nonzero_poly']+=1
    print('=== Does Theorem CI ever consult an identically-zero witness? ===')
    for k in ('instances','instances_with_a_zero_witness','zero_witnesses',
              'consulted_keys','CONSULTS_A_ZERO_WITNESS','consulted_identically_zero',
              'consulted_c0_nonzero','consulted_c0_zero_but_nonzero_poly'):
        print(f'  {k:38s} {tot[k]}')
    if ex: print('  examples:',ex)
    print()
    print('READ: `instances_with_a_zero_witness` > 0 is the non-vacuity control --')
    print('identically-zero witnesses DO occur in this sample, so (R3) is not')
    print('trivially satisfied here.  `CONSULTS_A_ZERO_WITNESS` = 0 says Theorem')
    print("CI's proof never reads one of them, i.e. (R3) is not among its")
    print('hypotheses.  The split of the consulted keys shows why: those with')
    print('c_0 != 0 need only that the quantity is nonzero at alpha = 0; the')
    print("rest are exactly (R2)'s four D's per apex, which (R2) itself asserts")
    print('are not identically zero.')

if __name__=='__main__': main(int(sys.argv[1]) if len(sys.argv)>1 else 30)
