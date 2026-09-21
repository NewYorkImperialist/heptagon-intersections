#!/usr/bin/env python3
"""
Sign-level (chirotope) encoding of Pi_14.

Variables: one Boolean per sorted triple of the 11 vertices, true iff
orient(a,b,c) > 0.  Constraints:
  * the 21 Pi_14 conditions, written as equalities/disequalities of signs;
  * the 3-term Grassmann-Plucker relations for every (a, {b,c,d,e}),
    which every point configuration in general position satisfies.

UNSAT here is a genuine refutation: the encoding is a RELAXATION (every
realizable configuration gives a satisfying assignment).  SAT is inconclusive
(a chirotope need not be realizable).
"""
import itertools
from z3 import *
from pi14_common import PI14, VERTS

TRIPLES = list(itertools.combinations(VERTS, 3))
V = {t: Bool('o_%d_%d_%d' % t) for t in TRIPLES}


def parity(t):
    a, b, c = t
    inv = (a > b) + (a > c) + (b > c)
    return 1 if inv % 2 == 0 else -1


def pos(a, b, c):
    """Bool expression: orient(a,b,c) > 0."""
    t = (a, b, c)
    key = tuple(sorted(t))
    return V[key] if parity(t) == 1 else Not(V[key])


def same(a, b, c, d, e, f):
    return pos(a, b, c) == pos(d, e, f)


def cross_c(a, b, c, d):
    """ProperCross(a,b,c,d) as a Bool expression."""
    return And(Not(same(a, b, c, a, b, d)), Not(same(c, d, a, c, d, b)))


def notcross_disj(a, b, c, d):
    return [same(a, b, c, a, b, d), same(c, d, a, c, d, b)]


def gp_constraints():
    """3-term GP:  [abc][ade] - [abd][ace] + [abe][acd] = 0.
    So sgn(t1), -sgn(t2), sgn(t3) cannot all agree."""
    out = []
    for five in itertools.combinations(VERTS, 5):
        for a in five:
            rest = [x for x in five if x != a]
            b, c, d, e = rest
            t1 = same(a, b, c, a, d, e)
            t2 = same(a, b, d, a, c, e)
            t3 = same(a, b, e, a, c, d)
            # terms are t1, -t2, t3 ; forbid all-positive and all-negative
            out.append(Not(And(t1, Not(t2), t3)))
            out.append(Not(And(Not(t1), t2, Not(t3))))
    return out


def pi14_constraints(choice=None, monolithic=True):
    """Returns list of (label, expr)."""
    out = []
    negs = [((a, b), (c, d)) for (a, b), (c, d), w in PI14 if not w]
    ni = 0
    for (a, b), (c, d), want in PI14:
        nm = 'X' if want else 'N'
        lab = f'{nm}_{a}{b}_{c}{d}'
        if want:
            out.append((lab + '_s1', Not(same(a, b, c, a, b, d))))
            out.append((lab + '_s2', Not(same(c, d, a, c, d, b))))
        else:
            dj = notcross_disj(a, b, c, d)
            if monolithic:
                out.append((lab, Or(*dj)))
            else:
                out.append((lab + f'_b{choice[ni]}', dj[choice[ni]]))
            ni += 1
    return out
