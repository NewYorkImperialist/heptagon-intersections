"""Measure Lean kernel cost of the E7(a) exhaustiveness enumeration.

The full statement is `exceptionalPolygons = expectedPolygons` over all
135 x 360 = 48,600 (order-type representative, cyclic order) candidates.  That
does not finish in a usable time, so this script measures the rate instead, by
kernel-checking the same enumeration restricted to the first `n`
representatives and reporting seconds per candidate.  Run from the repo root
after `lake build OrderTypeClassification`.

Usage: python3 python/classification/bench_lean_classification.py [n ...]
"""
from pathlib import Path
import subprocess, sys, tempfile, time

ns = [int(a) for a in sys.argv[1:]] or [1, 2, 4]
root = Path(__file__).resolve().parents[2]

PROBE = '''import OrderTypeClassification
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Heptagon.OrderTypeClassification

/-- `exceptionalPolygons` restricted to the first `n` representatives. -/
def enumPrefix (n : Nat) : List (Nat × Nat) :=
  (List.range n).flatMap fun i => (List.range 360).filterMap fun j =>
    let chi := relabel (orderSigns i) (cycles.getD j [])
    if simple chi && exceptional chi then some (i,j) else none

theorem bench : enumPrefix %d = [] := by decide +kernel
'''

print(f"{'reps':>5} {'candidates':>11} {'wall_s':>9} {'s/candidate':>12}")
for n in ns:
    with tempfile.TemporaryDirectory(prefix='heptagon-bench-') as tmp:
        f = Path(tmp) / 'Bench.lean'
        f.write_text(PROBE % n)
        t0 = time.monotonic()
        r = subprocess.run(['lake', 'env', 'lean', str(f)], cwd=root / 'lean',
                           capture_output=True, text=True)
        wall = time.monotonic() - t0
    if r.returncode != 0:
        print(f"{n:>5} {'-':>11} {wall:>9.1f}  FAILED\n{r.stdout}{r.stderr}")
        sys.exit(1)
    cand = n * 360
    print(f"{n:>5} {cand:>11} {wall:>9.1f} {wall/cand:>12.4f}")
