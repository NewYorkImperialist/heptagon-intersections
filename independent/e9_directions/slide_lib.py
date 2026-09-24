#!/usr/bin/env python3
"""
slide_lib.py -- primitives for the SLIDE operation at a vertex-vertex
coincidence P[v] = Q[j].  EXACT RATIONAL ARITHMETIC ONLY (fractions.Fraction).

Everything geometric is IMPORTED from move_joint_measure.py / pt_measure_check.py
(themselves transcribed from lean/RealConfig.lean:54, lean/AKR9.lean:71, ...).
Nothing is re-derived here except the slide directions and the support bookkeeping.

THE OPERATION
-------------
APEX-ONLY: P[v] -> P[v] + e*E ; every other P vertex and ALL Q vertices fixed.
  Slide A : E = P[v] - P[v+1]   (extends side v   , away from the far end P[v+1])
  Slide B : E = P[v] - P[v-1]   (extends side v-1 , away from the far end P[v-1])
ADMISSIBLE = P' still SimpleClosed, (Fin) holds, |coincSet| strictly drops.
(Q never moves, so Q stays simple automatically.)
"""

from fractions import Fraction as F
import random

import move_joint_measure as mjm
import pt_measure_check as ptm
from move_joint_measure import (
    N, orientR, on_closed, proper_cross, sides, simple_closed,
    cross_pairs, seg_deg, seg_degP, coinc_set, finite_intersection,
    moveV, translate, rand_simple_heptagon, sub, add, cross2, dot, seg_inter,
)
from pt_measure_check import deg_pts, deg_pts_direct, on_boundary

# ------------------------------------------------------------ support sets

def suppP(X, P):
    """The set of indices k such that X lies on the CLOSED P-side k."""
    S = sides(P)
    return frozenset(k for k in range(N) if on_closed(X, S[k][0], S[k][1]))

def suppQ(X, Q):
    S = sides(Q)
    return frozenset(j for j in range(N) if on_closed(X, S[j][0], S[j][1]))

# ------------------------------------------------------------ the two slides

def slide_dir(P, v, which):
    """which in {'A','B'}.  A: E = P[v]-P[v+1].  B: E = P[v]-P[v-1]."""
    if which == 'A':
        return sub(P[v], P[(v + 1) % N])
    elif which == 'B':
        return sub(P[v], P[(v - 1) % N])
    raise ValueError(which)

# The e-ladder, down to 1e-12 as instructed.  Positive only: the slide is
# DEFINED with e > 0 (e < 0 would be a retraction, a different operation).
E_LADDER = [F(1), F(1, 2), F(1, 4), F(1, 10), F(1, 100), F(1, 1000),
            F(1, 10**4), F(1, 10**6), F(1, 10**8), F(1, 10**10), F(1, 10**12)]

# ------------------------------------------------------------ admissibility

def slide_state(P, Q, v, which, e):
    """Full state after the slide.  Returns a dict; 'adm' is the verdict."""
    E = slide_dir(P, v, which)
    P2 = moveV(P, v, E, e)
    co0 = len(coinc_set(P, Q))
    co1 = len(coinc_set(P2, Q))
    simp = simple_closed(P2)
    fin = finite_intersection(P2, Q)
    adm = simp and fin and (co1 < co0)
    return dict(E=E, e=e, P2=P2, co0=co0, co1=co1, simple=simp, fin=fin, adm=adm)

def first_admissible(P, Q, v, which, ladder=E_LADDER):
    """Walk the e-ladder from large to 1e-12; return the first admissible
    state, or the last (inadmissible) state together with the reason tally."""
    reasons = {"simple": 0, "fin": 0, "coinc": 0}
    last = None
    for e in ladder:
        st = slide_state(P, Q, v, which, e)
        if st["adm"]:
            return st, reasons
        if not st["simple"]:
            reasons["simple"] += 1
        if not st["fin"]:
            reasons["fin"] += 1
        if st["co1"] >= st["co0"]:
            reasons["coinc"] += 1
        last = st
    return None, reasons

# ------------------------------------------------ the hypothesis bookkeeping

def apex_collinear(P, v):
    """Are P[v-1], P[v], P[v+1] collinear?  SimpleClosed ALLOWS this (and then
    forces P[v] strictly between the other two -- see slide_selftest)."""
    return orientR(P[(v - 1) % N], P[v], P[(v + 1) % N]) == 0

def predicted_lost(P, Q, v):
    """The hypothesis' prediction for slide A: the degPts supported ONLY by
    P-side v-1."""
    D = deg_pts(P, Q)
    return frozenset(X for X in D if suppP(X, P) == frozenset({(v - 1) % N}))

def classify_degpt(X, P, Q, v):
    """A label for each old degenerate point, in the hypothesis' vocabulary."""
    sp = suppP(X, P)
    vm = (v - 1) % N
    isPvtx = X in set(P)
    if X == P[v]:
        return "apex"
    if sp == frozenset({vm}):
        return "only_v-1"
    if v in sp and vm in sp:
        return "both_incident"
    if v in sp:
        return "side_v"
    if vm in sp:
        return "v-1_plus_other"
    return "untouched_sides" + ("_Pvtx" if isPvtx else "")

def lost_gained(P, Q, P2):
    D0 = deg_pts(P, Q)
    D1 = deg_pts(P2, Q)
    return D0 - D1, D1 - D0, D0, D1

# ------------------------------------------------------------------ measures

def parts(P, Q):
    return ptm.parts(P, Q)          # (|crossPairs|, |segDeg|, |segDegP|, |degPts|)

def M_pt(P, Q):
    c = len(cross_pairs(P, Q))
    return c + len(deg_pts(P, Q))

def fmt(W):
    return "[" + ", ".join(f"({p[0]},{p[1]})" for p in W) + "]"

def fmtpt(X):
    return f"({X[0]},{X[1]})"
