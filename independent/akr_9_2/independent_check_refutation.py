# Independent check of the akr_9_2 agent's refutation certificate.
# Exact point-set count of |dP cap dQ| for closed polygons, written from scratch.
from fractions import Fraction as F

def sub(a,b): return (a[0]-b[0], a[1]-b[1])
def cross(u,v): return u[0]*v[1]-u[1]*v[0]
def dot(u,v): return u[0]*v[0]+u[1]*v[1]

def seg_inter(p1,p2,q1,q2):
    """exact: returns ('empty',), ('point',P), or ('seg',A,B) for closed segments"""
    r=sub(p2,p1); s=sub(q2,q1); d=cross(r,s); qp=sub(q1,p1)
    if d!=0:
        t=F(cross(qp,s),d); u=F(cross(qp,r),d)
        if 0<=t<=1 and 0<=u<=1:
            return ('point',(p1[0]+t*r[0], p1[1]+t*r[1]))
        return ('empty',)
    if cross(qp,r)!=0: return ('empty',)          # parallel, distinct lines
    rr=dot(r,r)
    if rr==0:                                      # p is a point
        # does p1 lie on [q1,q2]?
        ss=dot(s,s)
        if ss==0: return ('point',p1) if p1==q1 else ('empty',)
        u=F(dot(sub(p1,q1),s),ss)
        if 0<=u<=1 and cross(sub(p1,q1),s)==0: return ('point',p1)
        return ('empty',)
    t0=F(dot(sub(q1,p1),r),rr); t1=F(dot(sub(q2,p1),r),rr)
    lo,hi=min(t0,t1),max(t0,t1); lo=max(lo,F(0)); hi=min(hi,F(1))
    if lo>hi: return ('empty',)
    A=(p1[0]+lo*r[0], p1[1]+lo*r[1]); B=(p1[0]+hi*r[0], p1[1]+hi*r[1])
    return ('point',A) if A==B else ('seg',A,B)

def boundary_count(P,Q):
    pts=set()
    for i in range(len(P)):
        for j in range(len(Q)):
            res=seg_inter(P[i],P[(i+1)%len(P)],Q[j],Q[(j+1)%len(Q)])
            if res[0]=='point': pts.add(res[1])
            elif res[0]=='seg': return None        # infinite
    return len(pts)

def V(x,y): return (F(x),F(y))
P=[V(2,0),V(2,2),V(3,4),V(4,4),V(1,5),V(1,2)]
Q=[V(0,0),V(2,2),V(0,2),V(-1,-3),V(1,-1),V(2,0)]
print("|dP cap dQ| =", boundary_count(P,Q), " (agent claims 4)")

def shift(P,idx,delta):
    """slide the endpoints of side idx along the LINES of the two adjacent sides,
       moving the side parallel to itself by delta (normal direction)."""
    n=len(P); v0=P[idx]; v1=P[(idx+1)%n]
    prev=P[(idx-1)%n]; nxt=P[(idx+2)%n]
    d=sub(v1,v0)
    nrm=(-d[1],d[0])                      # normal
    # new line: points X with dot(X - v0, nrm) = delta*dot(nrm,nrm)
    off=delta*dot(nrm,nrm)
    def slide(anchor, direction, base):
        den=dot(direction,nrm)
        if den==0: return None            # straight vertex: undefined
        t=F(off - dot(sub(base,v0),nrm), den)
        return (base[0]+t*direction[0], base[1]+t*direction[1])
    n0=slide(prev, sub(v0,prev), v0)
    n1=slide(nxt,  sub(v1,nxt),  v1)
    if n0 is None or n1 is None: return None
    R=list(P); R[idx]=n0; R[(idx+1)%n]=n1
    return R

for e in (20,40):
    d=F(1,2**e)
    for sgn,lab in ((1,'+'),(-1,'-')):
        Pd=shift(P,0,sgn*d)
        print(f"  delta={lab}2^-{e}:  P(delta) side0 -> {Pd[0]}, {Pd[1]}   |dP(d) cap dQ| = {boundary_count(Pd,Q)}")
