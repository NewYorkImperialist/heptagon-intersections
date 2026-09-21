#!/usr/bin/env python3
"""
Pi_14 semialgebraic refutation attempt, v2.

Changes from pi14_split.py (v1):

  * FULL AFFINE NORMALISATION.  v1 fixed V0=(0,0), V1=(1,0), leaving a
    2-dimensional residual stabiliser {(x,y) |-> (x+b*y, d*y), d>0}: every
    solution came in a 2-parameter family, which is exactly the situation
    CAD/nlsat handles worst.  v2 additionally fixes V2=(0,1).  This is
    legitimate: general position forbids V0,V1,V2 collinear, so orient(V0,V1,V2)
    != 0; the orientation-preserving affine group acts simply transitively on
    ordered non-degenerate triangles, so every configuration with
    orient(V0,V1,V2) > 0 has exactly one representative with these three points.
    The case orient(V0,V1,V2) < 0 is covered by reflection: reflecting negates
    every orient, and ProperCross is a conjunction of PRODUCTS of two orients,
    so the whole 21-condition pattern is reflection invariant.
    Result: 22 coordinates -> 16 free variables, and no gauge freedom at all.

  * Arbitrary condition lists, so the same pipeline runs the positive control.

  * Single, shared, Lean-verified ground truth (pi14_common.py).
"""
import sys, itertools, time, argparse
from z3 import *
from pi14_common import PI14, VERTS, quad_triples


def mk_points():
    """Vertex label -> (x, y) z3 terms, with V0,V1,V2 pinned."""
    pt = {0: (RealVal(0), RealVal(0)),
          1: (RealVal(1), RealVal(0)),
          2: (RealVal(0), RealVal(1))}
    for v in VERTS:
        if v not in pt:
            pt[v] = (Real(f'x{v}'), Real(f'y{v}'))
    return pt


def orient(a, b, c):
    return (b[0]-a[0])*(c[1]-a[1]) - (b[1]-a[1])*(c[0]-a[0])


def cross_conj(pt, a, b, c, d):
    A, B, C, D = pt[a], pt[b], pt[c], pt[d]
    return [orient(A, B, C)*orient(A, B, D) < 0,
            orient(C, D, A)*orient(C, D, B) < 0]


def notcross_disjuncts(pt, a, b, c, d):
    A, B, C, D = pt[a], pt[b], pt[c], pt[d]
    return [orient(A, B, C)*orient(A, B, D) > 0,
            orient(C, D, A)*orient(C, D, B) > 0]


def build(conds, choice=None, monolithic=False):
    """choice: tuple of bits, one per non-crossing condition (split mode).
       monolithic=True: keep the negations as z3 Or(...)."""
    pt = mk_points()
    C = []
    negs = [(a, b, c, d) for (a, b), (c, d), w in conds if not w]
    for (a, b), (c, d), want in conds:
        if want:
            C += cross_conj(pt, a, b, c, d)
    if monolithic:
        for (a, b, c, d) in negs:
            C.append(Or(*notcross_disjuncts(pt, a, b, c, d)))
    else:
        assert choice is not None and len(choice) == len(negs)
        for bit, (a, b, c, d) in zip(choice, negs):
            C.append(notcross_disjuncts(pt, a, b, c, d)[bit])
    return C, pt


def solve(C, ms):
    s = Tactic('qfnra-nlsat').solver()
    s.set("timeout", ms)
    s.add(C)
    return s


# ------------------------------------------------------------------ controls
CERT = {
    'P': [(373, 157), (132, 5), (369, 182), (88, 157), (327, 282), (60, 272), (372, 298)],
    'Q': [(344, 24), (89, 303), (345, 19), (373, 214), (270, 338), (325, 93), (192, 284)],
}


def cert_points():
    """Vertex label -> integer coordinates, the labelling used in the Lean file:
    V0..V6 are P's vertices, V7..V13 are Q's."""
    pts = {}
    for i, p in enumerate(CERT['P']):
        pts[i] = p
    for j, q in enumerate(CERT['Q']):
        pts[7+j] = q
    return pts


def iorient(a, b, c):
    return (b[0]-a[0])*(c[1]-a[1]) - (b[1]-a[1])*(c[0]-a[0])


def icross(a, b, c, d):
    return iorient(a, b, c)*iorient(a, b, d) < 0 and iorient(c, d, a)*iorient(c, d, b) < 0


def control_conditions():
    """The SAME 21 cells as Pi_14, but with the truth values the lower-bound
    certificate's own 11 points actually realise.  Realizable by construction."""
    cp = cert_points()
    out = []
    for (a, b), (c, d), _ in PI14:
        out.append(((a, b), (c, d), icross(cp[a], cp[b], cp[c], cp[d])))
    return out
