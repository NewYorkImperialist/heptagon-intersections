"""Emit the symmetry lift: each of the 412 residual graphs reduced to its orbit
representative.  Run from the repository root.

    python3 python/residual/gen_lean_symmetry.py <shard> > lean/ResidualGraphs<shard>.lean
    python3 python/residual/gen_lean_symmetry.py all   > lean/ResidualAll.lean

`ResidualClauses00k.orbit00k_impossible` refutes one representative of each of
the four orbits.  A graph in the same orbit differs only by renaming: rotate or
reflect each polygon's vertex cycle, possibly exchange P with Q.  Composing the
configuration with that renaming turns it into one of the representative's, and
every side of the renamed configuration is a side of the original -- with its
two endpoints possibly named in the other order, which `pc_swapL`/`pc_swapR`/
`pc_swapS` absorb.

The renaming is not taken from `coverage.json`: it is recomputed here and
checked on all 49 side pairs before anything is emitted.
"""
import itertools, json, sys

ROOT = 'independent/residual_realizability'
sys.path.insert(0, ROOT)
from indep_om import Enc

SHARDS = 26                      # 412 = 25 * 16 + 12

inv = json.load(open(f'{ROOT}/inventory.json'))
GRAPHS = [tuple(g) for g in inv['graphs']]
REPS = [tuple(g) for g in inv['representatives']]
RIDX = inv['representative_index']
assert len(GRAPHS) == 412 and len(REPS) == 4

# ---------------------------------------------------------------- symmetries
VMAPS = [[(s*i + k) % 7 for i in range(7)] for s in (1, -1) for k in range(7)]

def side_map(v):
    """Side {i,i+1} of the source becomes side `side_map(v)[i]` of the target."""
    sides = [{i, (i+1) % 7} for i in range(7)]
    return [sides.index({v[i], v[(i+1) % 7]}) for i in range(7)]

def witness(g, target):
    """(vp, vq, swap) carrying `g` onto `target`, or None."""
    for vp, vq, swap in itertools.product(VMAPS, VMAPS, (False, True)):
        sp, sq = side_map(vp), side_map(vq)
        ok = True
        for i in range(7):
            for j in range(7):
                x, y = (sq[j], sp[i]) if swap else (sp[i], sq[j])
                if bool(g[i] & (1 << j)) != bool(target[x] & (1 << y)):
                    ok = False; break
            if not ok: break
        if ok: return vp, vq, swap
    return None

def sigma(vp, vq, swap):
    """Target vertex index (0..13) -> source vertex index (0..13)."""
    ip = [vp.index(m) for m in range(7)]
    iq = [vq.index(m) for m in range(7)]
    if swap:
        return [7 + iq[m] for m in range(7)] + [ip[m] for m in range(7)]
    return [ip[m] for m in range(7)] + [7 + iq[m] for m in range(7)]

# ------------------------------------------------- each orbit's hypothesis list
def assembly_pairs(k):
    """The (p,q,r,w,crosses) hypotheses of orbit00k_impossible, in signature order.

    Recomputed exactly as python/residual/gen_lean_clauses.py does, so the two
    generators cannot drift apart silently."""
    E = Enc(range(14))
    g = REPS[k]
    segs = {i: (i//7*7 + i % 7, i//7*7 + (i+1) % 7) for i in range(14)}
    pat = {(i, 7+j): not bool(g[i] >> j & 1) for i in range(7) for j in range(7)}
    for off in (0, 7):
        for i, j in itertools.combinations(range(7), 2):
            if (j-i) % 7 not in (1, 6): pat[off+i, off+j] = False
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
            for l in open(f'{ROOT}/lean_export/core%03d.cnf' % k) if l.strip() and l[0] not in 'pc']
    pairs = {}
    for cl in core:
        tg = prov[tuple(sorted(cl))]
        if tg[0] == 'PAT':
            s_, t_, p_, q_, r_, w_ = tg[1]
            pairs[(s_, t_)] = (p_, q_, r_, w_, tg[2])
    return [v for _, v in sorted(pairs.items())]

# ------------------------------------------------------------ the source facts
def classify(a, b):
    """(polygon, side index, endpoints reversed?) for the source segment a--b."""
    for off, poly in ((0, 'P'), (7, 'Q')):
        for i in range(7):
            u, v = off + i, off + (i+1) % 7
            if (a, b) == (u, v): return poly, i, False
            if (a, b) == (v, u): return poly, i, True
    raise AssertionError(f'{a}--{b} is not a side')

def source_fact(g, sig, p, q, r, w, crosses):
    """A Lean term of type `ProperCross (V sig[p]) (V sig[q]) (V sig[r]) (V sig[w])`
    (or its negation), built from hR / hSP / hSQ plus reorderings."""
    a, b, c, d = sig[p], sig[q], sig[r], sig[w]
    (P1, i1, rev1), (P2, i2, rev2) = classify(a, b), classify(c, d)
    ab = (b, a) if rev1 else (a, b)          # the side a--b in its own direction
    cd = (d, c) if rev2 else (c, d)
    if P1 != P2:
        # Cross-polygon: read it off the disjointness graph.  `Realizes` states
        # the P side first, so when a--b is the Q side the base order is cd, ab.
        ip, iq = (i1, i2) if P1 == 'P' else (i2, i1)
        bit = bool(g[ip] >> iq & 1)
        assert bit != crosses, 'graph bit disagrees with the representative'
        term = (f"not_cross_of hR {ip} {iq} (by decide)" if bit
                else f"cross_of hR {ip} {iq} (by decide)")
        pre = "npc_" if bit else "pc_"
        base = (ab + cd) if P1 == 'P' else (cd + ab)
    else:
        # Same polygon: two non-adjacent sides of a simple heptagon do not cross.
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

# --------------------------------------------------------------------- output
PAIRS = [assembly_pairs(k) for k in range(4)]

def graph_theorem(n):
    g = GRAPHS[n]; k = RIDX[n]
    wit = witness(g, REPS[k])
    assert wit is not None, f'graph {n} has no witness into orbit {k}'
    vp, vq, swap = wit
    sig = sigma(vp, vq, swap)
    assert sorted(sig) == list(range(14))
    lines = []
    lines.append("")
    lines.append(f"/-- Residual graph {n}/412 (orbit {k}"
                 + (", P and Q exchanged" if swap else "") + "). -/")
    lines.append(f"theorem graph{n:03d}_impossible (V : Fin 14 → Pt) (hGP : GP V)")
    lines.append(f"    (hSP : SimpleP V) (hSQ : SimpleQ V)")
    lines.append(f"    (hR : Realizes V ![{', '.join(map(str, g))}]) : False :=")
    lines.append(f"  ResidualClauses{k:03d}.orbit{k:03d}_impossible")
    lines.append(f"    (fun i => V (![{', '.join(map(str, sig))}] i))")
    lines.append(f"    (gp_comp hGP _ (by decide))")
    for (p, q, r, w, crosses) in PAIRS[k]:
        lines.append("    (" + source_fact(g, sig, p, q, r, w, crosses) + ")")
    return "\n".join(lines)

def shard_of(n): return n * SHARDS // 412

arg = sys.argv[1] if len(sys.argv) > 1 else '0'
HDR = ["import ResidualSymBase", "import ResidualClauses000", "import ResidualClauses001",
       "import ResidualClauses002", "import ResidualClauses003", "",
       "set_option maxHeartbeats 1000000", "",
       "namespace Heptagon.ResidualSym",
       "open Heptagon.Geometry Heptagon", ""]

def shard_members(s): return [n for n in range(412) if shard_of(n) == s]

def glit(g): return "![" + ", ".join(map(str, g)) + "]"

if arg == 'all':
    out = ["import ResidualSymBase"] + [f"import ResidualGraphs{s:02d}" for s in range(SHARDS)]
    out += ["", "/-!", "# All 412 residual graphs, together", "",
            "`independent/no_a7_experiment` runs the elimination pipeline with AKR Lemma",
            "7's filter switched off; it ends at 2,187 (class_P, class_Q, graph) triples",
            "on 412 distinct disjointness graphs instead of at nothing.  The four",
            "`orbit00k_impossible` theorems refute one graph from each symmetry orbit, and",
            "the shards carry those four refutations across the orbits by relabelling.",
            "This file collects the 412 into a single statement.",
            "",
            "Generated by `python3 python/residual/gen_lean_symmetry.py all`.",
            "-/", "",
            "set_option maxHeartbeats 1000000",
            "-- 412 list elements, appended 26 deep: unfolding them outruns the default",
            "-- recursion depth.  Both options are elaborator limits; the kernel still",
            "-- checks every step.",
            "set_option maxRecDepth 100000", "",
            "namespace Heptagon.ResidualSym", "open Heptagon.Geometry", "",
            "/-- The 412 disjointness graphs left by the pipeline without AKR Lemma 7,",
            "in the order of `independent/residual_realizability/inventory.json`.  Bit `j`",
            "of entry `i` is set when side `i` of `P` and side `j` of `Q` are disjoint. -/",
            "def residual412 : List (Fin 7 → Nat) :="]
    out.append("  " + " ++\n    (".join(f"shard{s:02d}" for s in range(SHARDS)) +
               ")" * (SHARDS - 1))
    out += ["", "theorem residual412_length : residual412.length = 412 := by decide", "",
            "/-- **No two simple heptagons in general position realize any of the 412.**",
            "",
            "Hypotheses: the fourteen vertices are in general position, both heptagons are",
            "simple, and the crossing pattern of the two boundaries is `g`.  Conclusion:",
            "no such configuration exists for any `g` in the residual list.  Nothing here",
            "is assumed about SAT solving -- the refutations are kernel-checked. -/",
            "theorem residual_not_realizable (V : Fin 14 → Pt) (hGP : GP V)",
            "    (hSP : SimpleP V) (hSQ : SimpleQ V) (g : Fin 7 → Nat)",
            "    (hg : g ∈ residual412) (hR : Realizes V g) : False := by",
            "  simp only [residual412, List.mem_append] at hg",
            "  rcases hg with " + " | ".join("h" for _ in range(SHARDS))]
    for s in range(SHARDS):
        out.append(f"  · exact shard{s:02d}_impossible V hGP hSP hSQ g h hR")
    out += ["", "end Heptagon.ResidualSym", "",
            "#print axioms Heptagon.ResidualSym.residual_not_realizable"]
    print("\n".join(out))
else:
    s = int(arg)
    ns = shard_members(s)
    out = list(HDR)
    out.insert(8, f"/-! Residual graphs {ns[0]}-{ns[-1]} of 412, generated by")
    out.insert(9, f"`python3 python/residual/gen_lean_symmetry.py {s}`. -/")
    for n in ns: out.append(graph_theorem(n))
    out += ["", f"/-- Residual graphs {ns[0]}-{ns[-1]} of the 412. -/",
            f"def shard{s:02d} : List (Fin 7 → Nat) :=",
            "  [" + ",\n   ".join(glit(GRAPHS[n]) for n in ns) + "]", "",
            f"theorem shard{s:02d}_impossible (V : Fin 14 → Pt) (hGP : GP V)",
            "    (hSP : SimpleP V) (hSQ : SimpleQ V) (g : Fin 7 → Nat)",
            f"    (hg : g ∈ shard{s:02d}) (hR : Realizes V g) : False := by",
            f"  simp only [shard{s:02d}, List.mem_cons, List.not_mem_nil, or_false] at hg",
            "  rcases hg with " + " | ".join("rfl" for _ in ns)]
    for n in ns:
        out.append(f"  · exact graph{n:03d}_impossible V hGP hSP hSQ hR")
    out += ["", "end Heptagon.ResidualSym"]
    print("\n".join(out))
