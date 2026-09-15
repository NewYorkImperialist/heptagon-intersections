"""Minimal DRAT (RUP-only, with deletions) proof checker, written from scratch."""
import sys
from collections import defaultdict

def read_cnf(path):
    cls=[]
    for line in open(path):
        line=line.strip()
        if not line or line[0] in "pc": continue
        lits=[int(x) for x in line.split()]
        assert lits[-1]==0
        cls.append(tuple(lits[:-1]))
    return cls

def read_drat(path):
    out=[]
    for line in open(path):
        line=line.strip()
        if not line: continue
        if line[0]=='d':
            lits=[int(x) for x in line[1:].split()]
            out.append(('d',tuple(lits[:-1])))
        else:
            lits=[int(x) for x in line.split()]
            out.append(('a',tuple(lits[:-1])))
    return out

class F:
    def __init__(self, cls):
        self.cl={}          # id -> tuple
        self.byid=0
        self.occ=defaultdict(set)
        self.index=defaultdict(set)   # canonical clause (frozenset) -> ids
        for c in cls: self.add(c)
    def add(self,c):
        i=self.byid; self.byid+=1
        self.cl[i]=c
        for l in c: self.occ[l].add(i)
        self.index[frozenset(c)].add(i)
        return i
    def remove(self,c):
        k=frozenset(c)
        if not self.index[k]: return False
        i=self.index[k].pop()
        for l in self.cl[i]: self.occ[l].discard(i)
        del self.cl[i]
        return True

def rup(f, lemma):
    """check lemma is RUP: assign negation of lemma, unit-propagate, expect conflict."""
    val={}
    trail=[]
    def assign(l):
        val[abs(l)] = l>0
        trail.append(l)
    for l in lemma:
        if abs(l) in val:
            if val[abs(l)]==( -l>0): continue
            else: return True   # lemma contains l and ~l -> tautology
        assign(-l)
    # counter-based propagation
    # compute, for each clause, number of non-false literals and the last unassigned
    def lit_val(l):
        v=val.get(abs(l))
        if v is None: return None
        return v if l>0 else (not v)
    unsat_cls=[]
    # initial scan
    nfalse={}
    for i,c in f.cl.items():
        sat=False; unass=[]
        for l in c:
            v=lit_val(l)
            if v is True: sat=True; break
            if v is None: unass.append(l)
        if sat: continue
        if not unass: return True          # conflict
        if len(unass)==1: unsat_cls.append((i,unass[0]))
    qi=0
    while qi<len(unsat_cls):
        i,l=unsat_cls[qi]; qi+=1
        v=lit_val(l)
        if v is True: continue
        if v is False: return True          # conflict
        assign(l)
        # clauses containing -l may become unit/conflict
        for j in list(f.occ[-l]):
            c=f.cl.get(j)
            if c is None: continue
            sat=False; unass=[]
            for m in c:
                vm=lit_val(m)
                if vm is True: sat=True; break
                if vm is None: unass.append(m)
            if sat: continue
            if not unass: return True
            if len(unass)==1: unsat_cls.append((j,unass[0]))
    return False

cnf,drat=sys.argv[1],sys.argv[2]
cls=read_cnf(cnf); steps=read_drat(drat)
f=F(cls)
print("formula: %d clauses; proof: %d steps"%(len(cls),len(steps)))
nadd=0; ndel=0; nrat=0; empty=False
for k,(op,c) in enumerate(steps):
    if op=='d':
        ndel+=1; continue   # ignore deletions (only makes RUP harder to satisfy is false: keeping clauses makes propagation stronger, so ignoring deletions is SOUND for verifying UNSAT)
    ok = rup(f,c)
    if not ok and len(c)>0:
        piv=c[0]; ok=True
        for j in list(f.occ[-piv]):
            D=f.cl.get(j)
            if D is None: continue
            res=tuple(dict.fromkeys(list(c)+[m for m in D if m!=-piv]))
            if not rup(f,res): ok=False; break
        if ok: nrat+=1
    if not ok:
        print("*** DRAT CHECK FAILED at step %d: %s"%(k,c)); sys.exit(1)
    nadd+=1
    if len(c)==0:
        empty=True; break
    f.add(c)
print("added lemmas verified: %d (of which RAT-only: %d)   deletions: %d   empty clause derived: %s"%(nadd,nrat,ndel,empty))
print("RESULT:", "PROOF VERIFIED (UNSAT)" if empty else "*** proof did not derive the empty clause ***")
