#!/usr/bin/env python3
"""
Pi_14 realizability as a semialgebraic feasibility problem, attacked by
splitting its EIGHT negated-crossing conditions into 2^8 = 256 branches.

Each negation  ~ProperCross(a,b,c,d)  is, under general position, a DISJUNCTION
    or(a,b,c)*or(a,b,d) > 0   OR   or(c,d,a)*or(c,d,b) > 0
and those disjunctions are exactly the Boolean structure nlsat must search.
Choosing a disjunct in each turns every branch into a PURE CONJUNCTION of
strict polynomial inequalities -- the regime nlsat and CAD handle best.

Refuting all 256 branches refutes Pi_14, by a route that is encoding-independent
of the chirotope/SAT proof: no Boolean variables, no Grassmann-Plucker clauses.

Ground truth parsed from lean/MinPatternClauses001.lean (verified this session):
  21 conditions = 13 ProperCross + 8 negations
  P vertices V0..V4 (sides P0..P3), Q vertices V7..V12 (sides Q0..Q4) = 11 points
"""
import sys, itertools, time
from z3 import *

CROSS = [(0,1),(0,2),(0,4),(1,0),(1,2),(1,3),(1,4),(2,0),(2,1),(2,4),(3,0),(3,1),(3,2)]
PQ_MISS   = [(1,1)]
P_SELF    = [(0,2),(0,3),(1,3)]            # P_i does not properly cross P_k
Q_SELF    = [(0,2),(0,3),(1,3),(1,4)]      # Q_j does not properly cross Q_l

def mk_points():
    # 11 points, 22 coords; affine normalisation fixes p0=(0,0), p1=(1,0) -> 18 free
    p = [(RealVal(0), RealVal(0)), (RealVal(1), RealVal(0))]
    p += [(Real(f'px{i}'), Real(f'py{i}')) for i in range(2,5)]
    q  = [(Real(f'qx{j}'), Real(f'qy{j}')) for j in range(6)]
    return p, q

def orient(a,b,c):
    return (b[0]-a[0])*(c[1]-a[1]) - (b[1]-a[1])*(c[0]-a[0])

def cross_conj(a,b,c,d):
    return And(orient(a,b,c)*orient(a,b,d) < 0, orient(c,d,a)*orient(c,d,b) < 0)

def notcross_disjuncts(a,b,c,d):
    # under general position the negation is a disjunction of two strict inequalities
    return [orient(a,b,c)*orient(a,b,d) > 0, orient(c,d,a)*orient(c,d,b) > 0]

def build(choice):
    p,q = mk_points()
    P = [(p[i], p[i+1]) for i in range(4)]
    Q = [(q[j], q[j+1]) for j in range(5)]
    C = []
    for i,j in CROSS:
        C.append(cross_conj(P[i][0],P[i][1],Q[j][0],Q[j][1]))
    negs = []
    for i,j in PQ_MISS: negs.append((P[i][0],P[i][1],Q[j][0],Q[j][1]))
    for i,k in P_SELF:  negs.append((P[i][0],P[i][1],P[k][0],P[k][1]))
    for j,l in Q_SELF:  negs.append((Q[j][0],Q[j][1],Q[l][0],Q[l][1]))
    assert len(negs) == 8, len(negs)
    for bit, (a,b,c,d) in zip(choice, negs):
        C.append(notcross_disjuncts(a,b,c,d)[bit])
    return C

def main():
    per_branch = int(sys.argv[1]) if len(sys.argv) > 1 else 20000   # ms
    t0 = time.time()
    unsat_n = sat_n = unk_n = 0
    unknown_branches = []
    for n, choice in enumerate(itertools.product([0,1], repeat=8)):
        s = Solver()
        s.set("timeout", per_branch)
        s.add(build(choice))
        r = s.check()
        if r == unsat: unsat_n += 1
        elif r == sat:
            sat_n += 1
            print(f"  !!! BRANCH {n} SAT -- Pi_14 WOULD BE REALIZABLE: {choice}", flush=True)
            print(s.model(), flush=True)
        else:
            unk_n += 1; unknown_branches.append((n, choice))
        if (n+1) % 32 == 0:
            print(f"  {n+1:3d}/256  unsat={unsat_n} sat={sat_n} unknown={unk_n}  "
                  f"({time.time()-t0:.0f}s)", flush=True)
    print(f"\nRESULT  unsat={unsat_n}  sat={sat_n}  unknown={unk_n}  "
          f"total={time.time()-t0:.0f}s")
    if unknown_branches:
        print(f"unknown branch indices: {[b[0] for b in unknown_branches]}")
    if sat_n == 0 and unk_n == 0:
        print("\nALL 256 BRANCHES REFUTED -> Pi_14 is NOT realizable,")
        print("by a route independent of the chirotope/SAT encoding.")
    return 0

if __name__ == '__main__':
    sys.exit(main())
