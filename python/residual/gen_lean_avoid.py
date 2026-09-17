"""Emit the pattern-avoidance clauses of the covering refutations, from geometry.

    python3 python/residual/gen_lean_avoid.py <shard> > lean/CoverAvoid<shard>.lean
    python3 python/residual/gen_lean_avoid.py list

The four covering refutations (`CCase00k_false`) are stated over 49 abstract
propositions, variable `7i + j + 1` meaning "side `i` of `P` misses side `j` of
`Q`".  Their cores use three kinds of clause: row-degree clauses, column clauses,
and **pattern-avoidance** clauses, one per relabelled copy of a forbidden
pattern, saying that copy does not occur.  This file proves the last kind.

Each such clause is discharged by `MinPatternClauses00k.minpattern00k_impossible`
applied to the configuration composed with the relabelling that produced the
copy: the relabelled configuration's sides are the original's sides with their
endpoints possibly named in the other order, which `pc_swapL`/`pc_swapR`/
`pc_swapS` absorb.  This is the same construction as
`python/residual/gen_lean_symmetry.py`, with the crossing facts coming from the
clause's own hypotheses instead of from a stored graph.

548 of the 588 possible copies are cited by the four cores; only those are
emitted.
"""
import itertools, sys

SWEEP = 'independent/realizability_sweep'
SHARDS = 28

PERMS = [[((k - i) % 7 + 7) % 7 if s else (i + k) % 7 for i in range(7)]
         for s in (0, 1) for k in range(7)]

def side_map(v):
    sides = [{i, (i+1) % 7} for i in range(7)]
    return [sides.index({v[i], v[(i+1) % 7]}) for i in range(7)]

def sigma(vp, vq, swap):
    """Pattern vertex index (0..13) -> configuration vertex index (0..13)."""
    ip = [vp.index(m) for m in range(7)]
    iq = [vq.index(m) for m in range(7)]
    if swap:
        return [7 + iq[m] for m in range(7)] + [ip[m] for m in range(7)]
    return [ip[m] for m in range(7)] + [7 + iq[m] for m in range(7)]

def classify(a, b):
    for off, poly in ((0, 'P'), (7, 'Q')):
        for i in range(7):
            u, v = off + i, off + (i+1) % 7
            if (a, b) == (u, v): return poly, i, False
            if (a, b) == (v, u): return poly, i, True
    raise AssertionError(f'{a}--{b} is not a side')

# ------------------------------------------------------------- the patterns
PAT = []
for line in open(f'{SWEEP}/patterns2.txt'):
    cells = [c for c in line.strip() if c in '.cd']
    if not cells: continue
    PAT.append({(n // 7, n % 7): (c == 'd') for n, c in enumerate(cells) if c != '.'})

def hypotheses(k):
    """The (p,q,r,w,crosses) hypotheses of minpattern00k_impossible, in order.

    Recomputed the way gen_lean_pattern.py does, so the two cannot drift."""
    sys.path.insert(0, 'independent/residual_realizability')
    from indep_om import Enc
    E = Enc(range(14))
    segs = {i: (i//7*7 + i % 7, i//7*7 + (i+1) % 7) for i in range(14)}
    pat = {(i, 7 + j): (not d) for (i, j), d in PAT[k].items()}
    for off in (0, 7):
        for i, j in itertools.combinations(range(7), 2):
            if (j - i) % 7 not in (1, 6): pat[off+i, off+j] = False
    prov = {}
    def note(cl, tag): prov.setdefault(tuple(sorted(cl)), tag)
    for five in itertools.combinations(range(14), 5):
        for a in five:
            b, c, d, e = [x for x in five if x != a]
            L = [E.lit(a,b,c), E.lit(a,d,e), E.lit(a,b,d), E.lit(a,c,e), E.lit(a,b,e), E.lit(a,c,d)]
            for bits in itertools.product([False, True], repeat=6):
                if ((bits[0]==bits[1]) == (bits[2]!=bits[3])) and ((bits[2]!=bits[3]) == (bits[4]==bits[5])):
                    note([-l if x else l for l, x in zip(L, bits)], ('GP',))
    for i, j, k2, l in itertools.combinations(range(14), 4):
        L = [E.lit(j,k2,l), E.lit(i,k2,l), E.lit(i,j,l), E.lit(i,j,k2)]
        for bits in itertools.product([False, True], repeat=4):
            if bits[0] == (not bits[1]) == bits[2] == (not bits[3]):
                note([-x if b else x for x, b in zip(L, bits)], ('RADON',))
    for (s, t), want in pat.items():
        p, q = segs[s]; r, w = segs[t]
        if len({p,q,r,w}) != 4: continue
        L = [E.lit(p,q,r), E.lit(p,q,w), E.lit(r,w,p), E.lit(r,w,q)]
        for bits in itertools.product([False, True], repeat=4):
            if ((bits[0]!=bits[1]) and (bits[2]!=bits[3])) == want: continue
            note([-x if b else x for x, b in zip(L, bits)], ('PAT', (s, t, p, q, r, w), want))
    core = [[int(x) for x in l.split() if x != '0']
            for l in open(f'{SWEEP}/lean_export/qcore%03d.cnf' % k)
            if l.strip() and l[0] not in 'pc']
    pairs = {}
    for cl in core:
        tg = prov[tuple(sorted(cl))]
        if tg[0] == 'PAT':
            s_, t_, p_, q_, r_, w_ = tg[1]
            pairs[(s_, t_)] = (p_, q_, r_, w_, tg[2])
    return [v for _, v in sorted(pairs.items())]

HYPS = [hypotheses(0), hypotheses(1)]

# ------------------------------------------------- every relabelled copy
VMAPS = [[(s*i + k) % 7 for i in range(7)] for s in (1, -1) for k in range(7)]
COPIES = {}                       # (sup, val) -> (k, vp, vq, swap)
for k, p in enumerate(PAT):
    for vp, vq, swap in itertools.product(VMAPS, VMAPS, (False, True)):
        sp, sq = side_map(vp), side_map(vq)
        # `sp` sends a CONFIGURATION side to a PATTERN side, matching the
        # convention of `sigma`, so a pattern cell is pulled back, not pushed.
        cells = {}
        for (i, j), d in p.items():
            x, y = (sp.index(j), sq.index(i)) if swap else (sp.index(i), sq.index(j))
            cells[(x, y)] = d
        sup = sum(1 << (i*7+j) for (i, j) in cells)
        val = sum(1 << (i*7+j) for (i, j), d in cells.items() if d)
        COPIES.setdefault((sup, val), (k, vp, vq, swap))

# ----------------------------------------------- the copies the cores cite
NEEDED = []
seen = set()
for k in range(4):
    core = [tuple(sorted(int(x) for x in l.split() if x != '0'))
            for l in open(f'{SWEEP}/lean_export/ccase%03d.cnf' % k)
            if l.strip() and l[0] not in 'pc']
    for cl in core:
        sup = sum(1 << (abs(x)-1) for x in cl)
        val = sum(1 << (abs(x)-1) for x in cl if x < 0)
        if (sup, val) in COPIES and (sup, val) not in seen:
            seen.add((sup, val)); NEEDED.append((sup, val))
NEEDED.sort()

def fact(cells, sig, p, q, r, w, crosses):
    """A term of type `ProperCross (V sig[p]) (V sig[q]) (V sig[r]) (V sig[w])`,
    or its negation, from this clause's own hypotheses plus `hSP`/`hSQ`."""
    a, b, c, d = sig[p], sig[q], sig[r], sig[w]
    (P1, i1, rev1), (P2, i2, rev2) = classify(a, b), classify(c, d)
    ab = (b, a) if rev1 else (a, b)
    cd = (d, c) if rev2 else (c, d)
    if P1 != P2:
        ip, iq = (i1, i2) if P1 == 'P' else (i2, i1)
        disjoint = cells[(ip, iq)]
        assert disjoint != crosses, 'copy disagrees with the pattern'
        term = (f"miss_of_not_not {ip} {iq} n{ip}_{iq}" if disjoint
                else f"cross_of_not_miss {ip} {iq} n{ip}_{iq}")
        pre = "npc_" if disjoint else "pc_"
        base = (ab + cd) if P1 == 'P' else (cd + ab)
    else:
        assert not crosses, 'two sides of one polygon are required to cross'
        term = (f"hSP {i1} {i2} (by decide)" if P1 == 'P' else f"hSQ {i1} {i2} (by decide)")
        pre = "npc_"
        base = ab + cd
    cur = list(base)
    if {cur[0], cur[1]} != {a, b}:
        term = f"{pre}swapS ({term})"; cur = [cur[2], cur[3], cur[0], cur[1]]
    if cur[0] != a:
        term = f"{pre}swapL ({term})"; cur[0], cur[1] = cur[1], cur[0]
    if cur[2] != c:
        term = f"{pre}swapR ({term})"; cur[2], cur[3] = cur[3], cur[2]
    assert tuple(cur) == (a, b, c, d), (cur, (a, b, c, d))
    return term

def lemma(idx):
    sup, val = NEEDED[idx]
    k, vp, vq, swap = COPIES[(sup, val)]
    sig = sigma(vp, vq, swap)
    assert sorted(sig) == list(range(14))
    cells = {(b // 7, b % 7): bool(val >> b & 1) for b in range(49) if sup >> b & 1}
    order = sorted(cells)
    lits = [(f"¬ Miss V {i} {j}" if cells[(i, j)] else f"Miss V {i} {j}") for (i, j) in order]
    L = []
    L.append("")
    L.append(f"/-- Avoidance clause {idx}/{len(NEEDED)}: a relabelled copy of forbidden")
    L.append(f"pattern {k} on the {len(order)} listed side pairs does not occur. -/")
    L.append(f"theorem avoid{idx:04d} (V : Fin 14 → Pt) (hGP : GP V)")
    L.append("    (hSP : SimpleP V) (hSQ : SimpleQ V) :")
    L.append("    " + " ∨ ".join(f"({x})" for x in lits) + " := by")
    L.append("  by_contra hc")
    for n, (i, j) in enumerate(order):
        path = "".join("Or.inr (" for _ in range(n)) + "Or.inl h" + ")" * n
        if n == len(order) - 1:
            path = "".join("Or.inr (" for _ in range(n))[:-1] + "h" + ")" * (n - 1) if n else "h"
            path = "".join("Or.inr (" for _ in range(n)) + "h" + ")" * n
        neg = f"¬ ¬ Miss V {i} {j}" if cells[(i, j)] else f"¬ Miss V {i} {j}"
        L.append(f"  have n{i}_{j} : {neg} := fun h => hc ({path})")
    L.append(f"  exact MinPatternClauses{k:03d}.minpattern{k:03d}_impossible")
    L.append(f"    (fun i => V (![{', '.join(map(str, sig))}] i))")
    L.append("    (gp_comp hGP _ (by decide))")
    for (p, q, r, w, crosses) in HYPS[k]:
        L.append("    (" + fact(cells, sig, p, q, r, w, crosses) + ")")
    return "\n".join(L)

arg = sys.argv[1] if len(sys.argv) > 1 else '0'
if arg == 'list':
    print(" ".join(f"CoverAvoid{s:02d}" for s in range(SHARDS)))
    sys.exit()
s = int(arg)
mine = [n for n in range(len(NEEDED)) if n * SHARDS // len(NEEDED) == s]
out = ["import CoverDefs", "", "set_option maxHeartbeats 1000000", "",
       f"/-! Avoidance clauses {mine[0]}-{mine[-1]} of {len(NEEDED)}, generated by",
       f"`python3 python/residual/gen_lean_avoid.py {s}`. -/", "",
       "namespace Heptagon.Cover",
       "open Heptagon.Geometry Heptagon.ResidualSym Heptagon", ""]
for n in mine: out.append(lemma(n))
out += ["", "end Heptagon.Cover"]
print("\n".join(out))
