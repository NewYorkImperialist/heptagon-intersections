"""Generate the sharded completeness proof; run after gen_lean_ot_completeness.py.

Emits one module per slice of the 16 x 2^15 extension search, a witness module,
and an assembly module.  Everything is sharded -- the search into 256 slices,
the witness check into blocks of 100, the assembly into one lemma per base
representative -- for the same reason throughout: a single `decide +kernel` or a
single rewrite over the whole object is more than an order of magnitude slower
than the same work in pieces.  See docs/verification-status.md row 33.

Usage:
  python3 python/classification/gen_lean_ot_shards.py [--only-assembly] [--no-lakefile]
"""
from pathlib import Path
from itertools import combinations
import pickle, re, sys

ONLY_ASSEMBLY = '--only-assembly' in sys.argv
SKIP_LAKEFILE = '--no-lakefile' in sys.argv
CH = 100

C = pickle.load(open('.cache/ot_completeness_lean.pkl', 'rb'))
stored, witnesses = C['stored'], C['witnesses']
SLICE, NSLICE, HDR = C['SLICE'], C['NSLICE'], C['HDR']
T7 = list(combinations(range(7), 3))
wpairs = [(w[0], w[1]) for w in witnesses]

# ---- one module per slice of the search -----------------------------------
by_slice = {}
for i, m in wpairs:
    by_slice.setdefault((i, m // SLICE), []).append((i, m))

names = []
for i in range(16):
    for k in range(NSLICE):
        hits = by_slice.get((i, k), [])
        lit = '[' + ', '.join(f'({a}, {b})' for a, b in hits) + ']'
        name = f'OTComp{i:02d}_{k:02d}'
        names.append(name)
        if not ONLY_ASSEMBLY:
            Path(f'lean/{name}.lean').write_text(
                HDR.format(shard=f'base {i}, masks {k*SLICE}..{(k+1)*SLICE-1}') +
                f"""import OTCompleteDefs
set_option maxRecDepth 4000000
set_option maxHeartbeats 0
namespace Heptagon.OTComplete

theorem slice_{i}_{k} : slice {i} {k} = ({lit} : List (Nat × Nat)) := by decide +kernel

end Heptagon.OTComplete
""")

# ---- the witness module ----------------------------------------------------
chunks = [witnesses[i:i+CH] for i in range(0, len(witnesses), CH)]
def wlit(ws):
    return '[' + ',\n   '.join(
        f'⟨{w[0]}, {w[1]}, {w[2]}, {list(w[3])}, {"true" if w[4] < 0 else "false"}⟩'
        for w in ws) + ']'
defs = '\n\n'.join(f'def wc{i} : List W :=\n  {wlit(c)}' for i, c in enumerate(chunks))
cat = ' ++ '.join(f'wc{i}' for i in range(len(chunks)))
oks = '\n\n'.join(f'theorem ok_{i} : okOf wc{i} = true := by decide +kernel'
                  for i in range(len(chunks)))
oknames = ', '.join(f'ok_{i}' for i in range(len(chunks)))
folds = ' ||| '.join(f'clsMask wc{k}' for k in range(len(chunks)))
tripidx = '[' + ', '.join(f'({r}, {a}, {b}, {c})' for r, (a, b, c) in enumerate(T7)) + ']'
storeddef = '\n'.join(f'  | {i} => {s}' for i, s in enumerate(stored))

Path('lean/OTCompleteWitness.lean').write_text(HDR.format(shard='witnesses') + f"""import OTCompleteDefs
set_option maxRecDepth 4000000
set_option maxHeartbeats 0
namespace Heptagon.OTComplete

/-- A relabelling witness: base representative, extension mask, the stored class
it lands on, the vertex permutation, and whether all signs are flipped. -/
structure W where
  base : Nat
  mask : Nat
  cls  : Nat
  perm : List Nat
  neg  : Bool
  deriving DecidableEq

/-- The 35 increasing triples with their lexicographic indices. -/
def tripIdx : List (Nat × Nat × Nat × Nat) := {tripidx}

/-- Relabel by `w.perm`, optionally flip every sign, and repack into 35 bits. -/
def applyW (w : W) (v : Nat) : Nat :=
  tripIdx.foldl (fun acc t =>
    let r := t.1; let a := t.2.1; let b := t.2.2.1; let c := t.2.2.2
    let s := (if w.neg then -1 else 1) *
             chiB v (w.perm.getD a 0) (w.perm.getD b 0) (w.perm.getD c 0)
    if s > 0 then acc ||| (1 <<< r) else acc) 0

/-- The 135 stored seven-element representatives, packed. -/
def stored135 : Nat → Nat
{storeddef}
  | _ => 0

/-- Each witness carries its extension onto the stored representative it names. -/
def okOf (ws : List W) : Bool :=
  ws.all fun w => applyW w (cand w.base w.mask) == stored135 w.cls

/-! The witnesses in blocks of {CH}.  One `decide +kernel` over all
{len(witnesses)} at once grows a whnf cache that slows it down by more than an
order of magnitude; blocks stay in the linear regime. -/

{defs}

def witnesses : List W := {cat}

{oks}

theorem okOf_append (a b : List W) : okOf (a ++ b) = (okOf a && okOf b) := by
  simp [okOf, List.all_append]

/-- **Every witnessed survivor is a relabelled copy of a stored
representative.** -/
theorem witnesses_ok : okOf witnesses = true := by
  simp only [witnesses, okOf_append, {oknames}, Bool.and_self]

/-- The classes the witnesses land on, as a 135-bit set. -/
def clsMask (ws : List W) : Nat := ws.foldl (fun a w => a ||| (1 <<< w.cls)) 0

/-- **Every stored representative arises**: all 135 bits are set. -/
theorem all_135_reached : ({folds}) = 2^135 - 1 := by decide +kernel

/-- Bookkeeping. -/
theorem witnesses_card : witnesses.length = {len(witnesses)} := by decide +kernel

/-- The witnessed (base, mask) pairs. -/
def witnessPairs : List (Nat × Nat) := witnesses.map (fun w => (w.base, w.mask))

end Heptagon.OTComplete
""")

# ---- the assembly module ---------------------------------------------------
by_base = {i: [(w[0], w[1]) for w in witnesses if w[0] == i] for i in range(16)}
rns = '[' + ', '.join(str(k) for k in range(NSLICE)) + ']'
r16 = '[' + ', '.join(str(i) for i in range(16)) + ']'
parts = []
for i in range(16):
    lem = ', '.join(f'slice_{i}_{k}' for k in range(NSLICE))
    lit = '[' + ', '.join(f'({a}, {b})' for a, b in by_base[i]) + ']'
    parts.append(f"""theorem basePart_{i} : basePart {i} = ({lit} : List (Nat × Nat)) := by
  simp only [basePart, show (List.range {NSLICE} : List Nat) = {rns} from rfl,
             List.flatMap_cons, List.flatMap_nil, {lem},
             List.nil_append, List.append_nil, List.cons_append, List.append_assoc]""")
baselems = ', '.join(f'basePart_{i}' for i in range(16))

Path('lean/OTCompleteAll.lean').write_text(HDR.format(shard='assembly') +
  'import OTCompleteWitness\n' + '\n'.join(f'import {n}' for n in names) + f"""
set_option maxRecDepth 4000000
set_option maxHeartbeats 0
namespace Heptagon.OTComplete

/-- The survivors contributed by one six-element base representative. -/
def basePart (i : Nat) : List (Nat × Nat) :=
  (List.range {NSLICE}).flatMap fun k => slice i k

/-! Assembled one base representative at a time, for the same reason the search
itself is sharded: a single rewrite over all {len(witnesses)} survivors at once is more
than an order of magnitude slower. -/

{chr(10).join(chr(10).join([p, '']) for p in parts)}
/-- The full extension search. -/
def allSurvivors : List (Nat × Nat) := (List.range 16).flatMap basePart

/-- **The survivors are exactly the witnessed pairs.**  524,288 candidates,
{len(witnesses)} survivors, assembled from the {16*NSLICE} slice lemmas by rewriting; this
proof runs no search of its own. -/
theorem allSurvivors_eq : allSurvivors = witnessPairs := by
  simp only [allSurvivors, show (List.range 16 : List Nat) = {r16} from rfl,
             List.flatMap_cons, List.flatMap_nil, {baselems},
             List.nil_append, List.append_nil, List.cons_append, List.append_assoc]
  rfl

end Heptagon.OTComplete
""")
print(f'wrote {len(names)} slice modules, OTCompleteWitness.lean, OTCompleteAll.lean')

if SKIP_LAKEFILE:
    print('lakefile NOT touched (--no-lakefile)')
    raise SystemExit(0)

lf = Path('lean/lakefile.toml'); s = lf.read_text()
MARK = '\n# --- BEGIN generated order-type completeness shards ---\n'
END = '# --- END generated order-type completeness shards ---\n'
if MARK in s:
    s = s[:s.index(MARK)] + s[s.index(END) + len(END):]
allnames = ['OTCompleteDefs'] + names + ['OTCompleteWitness', 'OTCompleteAll']
block = MARK + '# Generated by python3 python/classification/gen_lean_ot_shards.py\n'
block += ''.join(f'\n[[lean_lib]]\nname = "{n}"\n' for n in allnames) + END
s = s.rstrip('\n') + '\n' + block
m = re.search(r'defaultTargets = \[([^\]]*)\]', s)
cur = [x.strip().strip('"') for x in m.group(1).split(',')]
cur = [c for c in cur if not c.startswith('OTComp')] + allnames
s = s[:m.start()] + 'defaultTargets = [' + ', '.join(f'"{c}"' for c in cur) + ']' + s[m.end():]
lf.write_text(s)
libs = re.findall(r'\[\[lean_lib\]\]\s*\nname = "([^"]+)"', s)
dflt = [x.strip().strip('"') for x in re.search(r'defaultTargets = \[([^\]]*)\]', s).group(1).split(',')]
assert sorted(libs) == sorted(dflt), sorted(set(libs) ^ set(dflt))
print(f'lakefile: {len(libs)} libs, all default targets')
