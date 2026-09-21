#!/usr/bin/env python3
"""Generic chirotope (sign-level) encoder for an arbitrary vertex set and an
arbitrary crossing pattern.  Validated GP encoding (see gp_check.py)."""
import itertools
from z3 import *

class Chi:
    def __init__(self, verts, tag=''):
        self.verts = list(verts)
        self.V = {t: Bool('%so_%s' % (tag, '_'.join(map(str,t))))
                  for t in itertools.combinations(self.verts, 3)}
    def pos(self, a, b, c):
        key = tuple(sorted((a,b,c)))
        inv = (a>b)+(a>c)+(b>c)
        return self.V[key] if inv%2==0 else Not(self.V[key])
    def same(self, t1, t2):
        return self.pos(*t1) == self.pos(*t2)
    def cross(self, a,b,c,d):
        return And(Not(self.same((a,b,c),(a,b,d))), Not(self.same((c,d,a),(c,d,b))))
    def ncdisj(self, a,b,c,d):
        return [self.same((a,b,c),(a,b,d)), self.same((c,d,a),(c,d,b))]
    def gp(self):
        out=[]
        for five in itertools.combinations(self.verts,5):
            for a in five:
                b,c,d,e=[x for x in five if x!=a]
                t1=self.same((a,b,c),(a,d,e)); t2=self.same((a,b,d),(a,c,e)); t3=self.same((a,b,e),(a,c,d))
                out.append(Not(And(t1,Not(t2),t3)))
                out.append(Not(And(Not(t1),t2,Not(t3))))
        return out
