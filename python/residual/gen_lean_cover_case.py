"""Assemble one covering case: feed the geometry to the propositional refutation.

    python3 python/residual/gen_lean_cover_case.py <k> <r> > lean/CoverCase<k><r>.lean

`CCase00k_false` (lean/CCase00kAll.lean) says the k-th covering core is
contradictory, over 49 abstract propositions.  This file instantiates variable
`7i + j + 1` as `Miss V i j` -- "side `i` of `P` does not cross side `j` of
`Q`" -- and supplies every core clause from the geometry.

Every clause of every core is one of exactly three kinds, and the classifier
below checks that, refusing to emit anything if a clause is left over:

  pattern-avoidance   a relabelled copy of a forbidden pattern does not occur
                      -- `CoverAvoid*.lean`, from minpattern00k_impossible
  row-degree          at most / at least `k` of the seven sides of `Q` are
                      missed by a given side of `P` -- `CoverRowDeg*.lean`
  column              each side of `Q` misses some side of `P`
                      -- `CoverColumn.lean`

## The rotation

Seven row degrees each at least 1 summing to 9 leave 28 possible degree shapes,
and the four refutations cover four of them -- the canonical placements.  The
other 24 are rotations of `P`.  Rather than relabel the configuration, the
rotation is applied at the *instantiation*: variable `7i + j + 1` becomes
`Miss V ((i+r) mod 7) j`.  The row-degree lemmas are generic in the row index so
they apply unchanged; the column clause comes out permuted; and the
pattern-avoidance clause needed is the rotated copy, which is why
`gen_lean_avoid.py` emits all 588 copies and not only the 548 the four cores
cite.

## Why the permutations

`drat-trim` does not preserve the order of literals within a clause: 1,998 of
the 2,272 core clauses across the four cases come back permuted.  The lemmas
state their disjunctions in increasing variable order, so most clauses need
their disjuncts rearranged.  That is done here, explicitly and per clause --
`rcases` on the lemma's disjunction, then re-inject each case at its position in
the core's order.  Deterministic; nothing searches.
"""
import itertools, sys

SWEEP = 'independent/realizability_sweep'
K = int(sys.argv[1]) if len(sys.argv) > 1 else 0
R = int(sys.argv[2]) if len(sys.argv) > 2 else 0

CASES = [('one row of degree 3', {0: 3}),
         ('two rows of degree 2 at cyclic distance 1', {0: 2, 1: 2}),
         ('two rows of degree 2 at cyclic distance 2', {0: 2, 2: 2}),
         ('two rows of degree 2 at cyclic distance 3', {0: 2, 3: 2})]
NAME, HEAVY = CASES[K]
DEG = [HEAVY.get(i, 1) for i in range(7)]

# ------------------------------------------------- the relabelled pattern copies
PERMS = [[((k - i) % 7 + 7) % 7 if s else (i + k) % 7 for i in range(7)]
         for s in (0, 1) for k in range(7)]
SYM = []
for a in range(14):
    for b in range(14):
        for sw in (False, True):
            m = [0] * 49
            for i in range(7):
                for j in range(7):
                    u, v = PERMS[a][i], PERMS[b][j]
                    m[i*7+j] = (v*7+u) if sw else (u*7+v)
            SYM.append(m)

IMGS = set()
for line in open(f'{SWEEP}/patterns2.txt'):
    cells = [c for c in line.strip() if c in '.cd']
    if not cells: continue
    sup = sum(1 << n for n, c in enumerate(cells) if c != '.')
    val = sum(1 << n for n, c in enumerate(cells) if c == 'd')
    for m in SYM:
        s2 = v2 = 0; x = sup
        while x:
            b = (x & -x).bit_length() - 1; x &= x - 1
            s2 |= 1 << m[b]
            if val >> b & 1: v2 |= 1 << m[b]
        IMGS.add((s2, v2))

def clause_of(sup, val):
    return frozenset((-(b+1) if (val >> b & 1) else (b+1)) for b in range(49) if sup >> b & 1)

AVOID_KEY = {clause_of(s, v): (s, v) for s, v in IMGS}

# The avoid lemmas are numbered exactly as `gen_lean_avoid.py` numbers them: the
# 548 copies the four cores cite, sorted, keep indices 0..547; the 40 that only
# the rotations reach are appended as 548..587.  The two orderings MUST agree,
# so this is the same code, not a paraphrase of it.
CITED, seen = [], set()
for kk in range(4):
    for l in open(f'{SWEEP}/lean_export/ccase%03d.cnf' % kk):
        if not l.strip() or l[0] in 'pc': continue
        cl = frozenset(int(x) for x in l.split() if x != '0')
        key = AVOID_KEY.get(cl)
        if key is not None and key not in seen:
            seen.add(key); CITED.append(key)
CITED.sort()
EXTRA = sorted(set(AVOID_KEY.values()) - set(CITED))
NEEDED = CITED + EXTRA
AVOID_IDX = {clause_of(s, v): n for n, (s, v) in enumerate(NEEDED)}

# ------------------------------------------------------ row and column clauses
# Keyed on the ACTUAL row: after the rotation, core row i is actual row
# (i + R) mod 7, and carries the degree the case gives core row i.
ROW = {}
for m in range(7):
    d = DEG[(m - R) % 7]
    for S in itertools.combinations(range(7), d + 1):
        ROW[frozenset(-(m*7+j+1) for j in S)] = ('Most', m, d, S)
    for S in itertools.combinations(range(7), 7 - d + 1):
        ROW[frozenset(m*7+j+1 for j in S)] = ('Least', m, d, S)
COL = {frozenset(i*7+j+1 for i in range(7)): j for j in range(7)}

# --------------------------------------------------------------- the core file
core = []
for l in open(f'{SWEEP}/lean_export/ccase%03d.cnf' % K):
    if not l.strip() or l[0] in 'pc': continue
    core.append([int(x) for x in l.split() if x != '0'])

allv = set()
for c in core: allv |= {abs(x) for x in c}
for line in open(f'{SWEEP}/lean_export/ccase%03d.lrat' % K):
    t = line.split()
    if len(t) > 1 and t[1] == 'd': continue
    z = t.index('0', 1)
    allv |= {abs(int(x)) for x in t[1:z]}
allv = sorted(allv)

def rotvar(n):
    """Core variable -> the variable naming the actual side pair, after the rotation."""
    i, j = (n-1)//7, (n-1) % 7
    return 7*((i + R) % 7) + j + 1

def unrot(n):
    i, j = (n-1)//7, (n-1) % 7
    return 7*((i - R) % 7) + j + 1

def prop(n):
    m = rotvar(n)
    return f"Miss V {(m-1)//7} {(m-1)%7}"

def inject(n, total):
    """`a` sitting at position n of a right-nested `total`-fold disjunction."""
    inner = "a" if n == total - 1 else "Or.inl a"
    return "".join("Or.inr (" for _ in range(n)) + inner + ")" * n

def proof(cl):
    """(lemma application, the disjunct order it produces) for one core clause.

    Classification happens on the ROTATED clause, because the lemmas are about
    the actual side pairs; the order is then mapped back to core variables so
    the permutation below lines up with the hypothesis type."""
    rot = [(1 if x > 0 else -1) * rotvar(abs(x)) for x in cl]
    key = frozenset(rot)
    if key in AVOID_IDX:
        order = sorted(key, key=abs)
        term = f"avoid{AVOID_IDX[key]:04d} V hGP hSP hSQ"
    elif key in ROW:
        kind, i, d, S = ROW[key]
        order = [(i*7+j+1) * (-1 if kind == 'Most' else 1) for j in S]
        tag = "_".join(map(str, S))
        term = f"row{kind}{d}_{tag} V {i} hd{i}"
    elif key in COL:
        j = COL[key]
        order = [i*7+j+1 for i in range(7)]
        term = f"colClause V {j} (hcol {j})"
    else:
        raise AssertionError(f"unclassified core clause: {sorted(cl)}")
    return term, [(1 if y > 0 else -1) * unrot(abs(y)) for y in order]

out = ["import CCase%03dAll" % K, "import CoverColumn"]
out += [f"import CoverAvoid{s:02d}" for s in range(30)]
out += [f"import CoverRowDeg{s:02d}" for s in range(6)]
out += ["", "set_option maxHeartbeats 2000000", "",
        "/-!", f"# Covering case {K}, rotation {R}: {NAME}", "",
        f"Generated by `python3 python/residual/gen_lean_cover_case.py {K} {R}`.",
        f"Supplies all {len(core)} clauses of this case's covering core from the geometry",
        "and applies `CCase%03d_false`.  See the generator for the three clause kinds" % K,
        "and for why the disjuncts are permuted.",
        "-/", "",
        "namespace Heptagon.Cover",
        "open Heptagon.Geometry Heptagon.ResidualSym", ""]

out.append(f"/-- **Covering case {K}, rotation {R}** — {NAME}, with the heavy rows")
out.append("rotated into place.  No configuration with these row degrees exists. -/")
out.append(f"theorem coverCase{K}r{R} (V : Fin 14 → Pt) (hGP : GP V)")
out.append("    (hSP : SimpleP V) (hSQ : SimpleQ V)")
out.append("    (hcol : ∀ j : Fin 7, 0 < colDeg V j)")
for m in range(7):
    out.append(f"    (hd{m} : rowDeg V {m} = {DEG[(m - R) % 7]})")
out.append("    : False :=")
out.append(f"  CCase{K:03d}_false")
for v in allv:
    out.append(f"    ({prop(v)})")
for cl in core:
    term, order = proof(cl)
    if order == cl:
        out.append(f"    ({term})")
    else:
        pos = {x: n for n, x in enumerate(cl)}
        out.append("    (by")
        out.append(f"      rcases {term} with " + " | ".join("a" for _ in order))
        for x in order:
            out.append(f"      · exact {inject(pos[x], len(cl))}")
        out.append("      )")
out += ["", "end Heptagon.Cover"]
print("\n".join(out))
