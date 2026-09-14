# Kernel counting benchmark — 14 September 2026

## 1. Exact scratch Lean files

All files are outside the repository. Each complete source follows, including repeated trials and timed-out trials. There are no imports beyond Lean’s implicit core imports. The search recursion is structural in its first argument; the list folds are structural library folds. Only small iteration lists are constructed, never the list of accepted tuples. Literal tables are exactly the Python SUBS tables, sorted within each popcount group. In the successor branch, `rem` is the number of rows after the current row, so the prune is exactly `min 3 (budget - rem)`. Ordinary core Nat bitwise OR is used; no bespoke recursion for arithmetic is introduced.

### /private/tmp/heptagon-kernel-bench/n3w4b5.lean

```lean
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option autoImplicit false

def subs : Nat → List Nat
  | 1 => [1, 2, 4, 8]
  | 2 => [3, 5, 6, 9, 10, 12]
  | 3 => [7, 11, 13, 14]
  | _ => []

def countRec : Nat → Nat → Nat → Nat
  | 0, used, budget => if budget == 0 && used == 15 then 1 else 0
  | rem + 1, used, budget =>
      (List.range' 1 (min 3 (budget - rem))).foldl (fun acc size =>
        (subs size).foldl (fun acc msk =>
          acc + countRec rem (used ||| msk) (budget - size)) acc) 0

theorem checked : countRec 3 0 5 = 228 := by decide
#print axioms checked
```

### /private/tmp/heptagon-kernel-bench/n4w4b6.lean

```lean
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option autoImplicit false

def subs : Nat → List Nat
  | 1 => [1, 2, 4, 8]
  | 2 => [3, 5, 6, 9, 10, 12]
  | 3 => [7, 11, 13, 14]
  | _ => []

def countRec : Nat → Nat → Nat → Nat
  | 0, used, budget => if budget == 0 && used == 15 then 1 else 0
  | rem + 1, used, budget =>
      (List.range' 1 (min 3 (budget - rem))).foldl (fun acc size =>
        (subs size).foldl (fun acc msk =>
          acc + countRec rem (used ||| msk) (budget - size)) acc) 0

theorem checked : countRec 4 0 6 = 2248 := by decide
#print axioms checked
```

### /private/tmp/heptagon-kernel-bench/n3w7b5.lean

```lean
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option autoImplicit false

def subs : Nat → List Nat
  | 1 => [1, 2, 4, 8, 16, 32, 64]
  | 2 => [3, 5, 6, 9, 10, 12, 17, 18, 20, 24, 33, 34, 36, 40, 48, 65, 66, 68, 72, 80, 96]
  | 3 => [7, 11, 13, 14, 19, 21, 22, 25, 26, 28, 35, 37, 38, 41, 42, 44, 49, 50, 52, 56, 67, 69, 70, 73, 74, 76, 81, 82, 84, 88, 97, 98, 100, 104, 112]
  | _ => []

def countRec : Nat → Nat → Nat → Nat
  | 0, used, budget => if budget == 0 && used == 127 then 1 else 0
  | rem + 1, used, budget =>
      (List.range' 1 (min 3 (budget - rem))).foldl (fun acc size =>
        (subs size).foldl (fun acc msk =>
          acc + countRec rem (used ||| msk) (budget - size)) acc) 0

theorem checked : countRec 3 0 5 = 0 := by decide
#print axioms checked
```

### /private/tmp/heptagon-kernel-bench/n4w7b6.lean

```lean
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option autoImplicit false

def subs : Nat → List Nat
  | 1 => [1, 2, 4, 8, 16, 32, 64]
  | 2 => [3, 5, 6, 9, 10, 12, 17, 18, 20, 24, 33, 34, 36, 40, 48, 65, 66, 68, 72, 80, 96]
  | 3 => [7, 11, 13, 14, 19, 21, 22, 25, 26, 28, 35, 37, 38, 41, 42, 44, 49, 50, 52, 56, 67, 69, 70, 73, 74, 76, 81, 82, 84, 88, 97, 98, 100, 104, 112]
  | _ => []

def countRec : Nat → Nat → Nat → Nat
  | 0, used, budget => if budget == 0 && used == 127 then 1 else 0
  | rem + 1, used, budget =>
      (List.range' 1 (min 3 (budget - rem))).foldl (fun acc size =>
        (subs size).foldl (fun acc msk =>
          acc + countRec rem (used ||| msk) (budget - size)) acc) 0

theorem checked : countRec 4 0 6 = 0 := by decide
#print axioms checked
```

### /private/tmp/heptagon-kernel-bench/n5w7b7.lean

```lean
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option autoImplicit false

def subs : Nat → List Nat
  | 1 => [1, 2, 4, 8, 16, 32, 64]
  | 2 => [3, 5, 6, 9, 10, 12, 17, 18, 20, 24, 33, 34, 36, 40, 48, 65, 66, 68, 72, 80, 96]
  | 3 => [7, 11, 13, 14, 19, 21, 22, 25, 26, 28, 35, 37, 38, 41, 42, 44, 49, 50, 52, 56, 67, 69, 70, 73, 74, 76, 81, 82, 84, 88, 97, 98, 100, 104, 112]
  | _ => []

def countRec : Nat → Nat → Nat → Nat
  | 0, used, budget => if budget == 0 && used == 127 then 1 else 0
  | rem + 1, used, budget =>
      (List.range' 1 (min 3 (budget - rem))).foldl (fun acc size =>
        (subs size).foldl (fun acc msk =>
          acc + countRec rem (used ||| msk) (budget - size)) acc) 0

theorem checked : countRec 5 0 7 = 16800 := by decide
#print axioms checked
```

### /private/tmp/heptagon-kernel-bench/n3w4b5repeat.lean

```lean
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option autoImplicit false

def subs : Nat → List Nat
  | 1 => [1, 2, 4, 8]
  | 2 => [3, 5, 6, 9, 10, 12]
  | 3 => [7, 11, 13, 14]
  | _ => []

def countRec : Nat → Nat → Nat → Nat
  | 0, used, budget => if budget == 0 && used == 15 then 1 else 0
  | rem + 1, used, budget =>
      (List.range' 1 (min 3 (budget - rem))).foldl (fun acc size =>
        (subs size).foldl (fun acc msk =>
          acc + countRec rem (used ||| msk) (budget - size)) acc) 0

theorem checked : countRec 3 0 5 = 228 := by decide
#print axioms checked
```

### /private/tmp/heptagon-kernel-bench/n4w5b6.lean

```lean
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option autoImplicit false

def subs : Nat → List Nat
  | 1 => [1, 2, 4, 8, 16]
  | 2 => [3, 5, 6, 9, 10, 12, 17, 18, 20, 24]
  | 3 => [7, 11, 13, 14, 19, 21, 22, 25, 26, 28]
  | _ => []

def countRec : Nat → Nat → Nat → Nat
  | 0, used, budget => if budget == 0 && used == 31 then 1 else 0
  | rem + 1, used, budget =>
      (List.range' 1 (min 3 (budget - rem))).foldl (fun acc size =>
        (subs size).foldl (fun acc msk =>
          acc + countRec rem (used ||| msk) (budget - size)) acc) 0

theorem checked : countRec 4 0 6 = 3300 := by decide
#print axioms checked
```

### /private/tmp/heptagon-kernel-bench/n3w7b7.lean

```lean
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option autoImplicit false

def subs : Nat → List Nat
  | 1 => [1, 2, 4, 8, 16, 32, 64]
  | 2 => [3, 5, 6, 9, 10, 12, 17, 18, 20, 24, 33, 34, 36, 40, 48, 65, 66, 68, 72, 80, 96]
  | 3 => [7, 11, 13, 14, 19, 21, 22, 25, 26, 28, 35, 37, 38, 41, 42, 44, 49, 50, 52, 56, 67, 69, 70, 73, 74, 76, 81, 82, 84, 88, 97, 98, 100, 104, 112]
  | _ => []

def countRec : Nat → Nat → Nat → Nat
  | 0, used, budget => if budget == 0 && used == 127 then 1 else 0
  | rem + 1, used, budget =>
      (List.range' 1 (min 3 (budget - rem))).foldl (fun acc size =>
        (subs size).foldl (fun acc msk =>
          acc + countRec rem (used ||| msk) (budget - size)) acc) 0

theorem checked : countRec 3 0 7 = 1050 := by decide
#print axioms checked
```

### /private/tmp/heptagon-kernel-bench/n3w7b5uint8.lean

```lean
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option autoImplicit false

def subs : Nat → List UInt8
  | 1 => [1, 2, 4, 8, 16, 32, 64]
  | 2 => [3, 5, 6, 9, 10, 12, 17, 18, 20, 24, 33, 34, 36, 40, 48, 65, 66, 68, 72, 80, 96]
  | 3 => [7, 11, 13, 14, 19, 21, 22, 25, 26, 28, 35, 37, 38, 41, 42, 44, 49, 50, 52, 56, 67, 69, 70, 73, 74, 76, 81, 82, 84, 88, 97, 98, 100, 104, 112]
  | _ => []

def countRec : Nat → UInt8 → Nat → Nat
  | 0, used, budget => if budget == 0 && used == 127 then 1 else 0
  | rem + 1, used, budget =>
      (List.range' 1 (min 3 (budget - rem))).foldl (fun acc size =>
        (subs size).foldl (fun acc msk =>
          acc + countRec rem (used ||| msk) (budget - size)) acc) 0

theorem checked : countRec 3 0 5 = 0 := by decide
#print axioms checked
```

### /private/tmp/heptagon-kernel-bench/n4w7b6foldr.lean

```lean
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option autoImplicit false

def subs : Nat → List Nat
  | 1 => [1, 2, 4, 8, 16, 32, 64]
  | 2 => [3, 5, 6, 9, 10, 12, 17, 18, 20, 24, 33, 34, 36, 40, 48, 65, 66, 68, 72, 80, 96]
  | 3 => [7, 11, 13, 14, 19, 21, 22, 25, 26, 28, 35, 37, 38, 41, 42, 44, 49, 50, 52, 56, 67, 69, 70, 73, 74, 76, 81, 82, 84, 88, 97, 98, 100, 104, 112]
  | _ => []

def countRec : Nat → Nat → Nat → Nat
  | 0, used, budget => if budget == 0 && used == 127 then 1 else 0
  | rem + 1, used, budget =>
      (List.range' 1 (min 3 (budget - rem))).foldr (fun size acc =>
        (subs size).foldr (fun msk acc =>
          acc + countRec rem (used ||| msk) (budget - size)) acc) 0

theorem checked : countRec 4 0 6 = 0 := by decide
#print axioms checked
```

### /private/tmp/heptagon-kernel-bench/n0w7b0baseline.lean

```lean
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option autoImplicit false

def subs : Nat → List Nat
  | 1 => [1, 2, 4, 8, 16, 32, 64]
  | 2 => [3, 5, 6, 9, 10, 12, 17, 18, 20, 24, 33, 34, 36, 40, 48, 65, 66, 68, 72, 80, 96]
  | 3 => [7, 11, 13, 14, 19, 21, 22, 25, 26, 28, 35, 37, 38, 41, 42, 44, 49, 50, 52, 56, 67, 69, 70, 73, 74, 76, 81, 82, 84, 88, 97, 98, 100, 104, 112]
  | _ => []

def countRec : Nat → Nat → Nat → Nat
  | 0, used, budget => if budget == 0 && used == 127 then 1 else 0
  | rem + 1, used, budget =>
      (List.range' 1 (min 3 (budget - rem))).foldl (fun acc size =>
        (subs size).foldl (fun acc msk =>
          acc + countRec rem (used ||| msk) (budget - size)) acc) 0

theorem checked : countRec 0 0 0 = 0 := by decide
#print axioms checked
```

### /private/tmp/heptagon-kernel-bench/n3w7b5repeat.lean

```lean
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option autoImplicit false

def subs : Nat → List Nat
  | 1 => [1, 2, 4, 8, 16, 32, 64]
  | 2 => [3, 5, 6, 9, 10, 12, 17, 18, 20, 24, 33, 34, 36, 40, 48, 65, 66, 68, 72, 80, 96]
  | 3 => [7, 11, 13, 14, 19, 21, 22, 25, 26, 28, 35, 37, 38, 41, 42, 44, 49, 50, 52, 56, 67, 69, 70, 73, 74, 76, 81, 82, 84, 88, 97, 98, 100, 104, 112]
  | _ => []

def countRec : Nat → Nat → Nat → Nat
  | 0, used, budget => if budget == 0 && used == 127 then 1 else 0
  | rem + 1, used, budget =>
      (List.range' 1 (min 3 (budget - rem))).foldl (fun acc size =>
        (subs size).foldl (fun acc msk =>
          acc + countRec rem (used ||| msk) (budget - size)) acc) 0

theorem checked : countRec 3 0 5 = 0 := by decide
#print axioms checked
```

### /private/tmp/heptagon-kernel-bench/n4w6b6.lean

```lean
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option autoImplicit false

def subs : Nat → List Nat
  | 1 => [1, 2, 4, 8, 16, 32]
  | 2 => [3, 5, 6, 9, 10, 12, 17, 18, 20, 24, 33, 34, 36, 40, 48]
  | 3 => [7, 11, 13, 14, 19, 21, 22, 25, 26, 28, 35, 37, 38, 41, 42, 44, 49, 50, 52, 56]
  | _ => []

def countRec : Nat → Nat → Nat → Nat
  | 0, used, budget => if budget == 0 && used == 63 then 1 else 0
  | rem + 1, used, budget =>
      (List.range' 1 (min 3 (budget - rem))).foldl (fun acc size =>
        (subs size).foldl (fun acc msk =>
          acc + countRec rem (used ||| msk) (budget - size)) acc) 0

theorem checked : countRec 4 0 6 = 1560 := by decide
#print axioms checked
```

## 2. Measurements

Hardware: Apple M1 MacBook Pro, 8 cores (4 performance + 4 efficiency), **8 GB RAM**, macOS/Darwin 24.6.0 arm64. Lean **4.33.1**, commit `819816b2e0a3bf405af45ae5c7af2491d8f5bee6`, Release. The executable was `/Users/jaydenlin/.elan/toolchains/leanprover--lean4---v4.33.1/bin/lean`; selecting it directly avoids the different default toolchain. Mathlib is not needed for this standalone counting computation.

Times are seconds for the entire Lean process executing the scratch file: startup, elaboration (including `decide`), kernel checking, and the axiom print. They are **not isolated kernel-only profiler intervals**, and contain no `#eval` computation. Wall time uses `time.monotonic`; user/system CPU use differences in `getrusage(RUSAGE_CHILDREN)` around the single subprocess. Each runner is a fresh Python process; macOS peak RSS is in bytes, converted below to decimal GB. Python reference calculation precedes the timer. No olean compilation/output was requested.

**Concurrent activity A:** one Lean benchmark at a time; its Python parent waits. Codex/tool infrastructure and occasional tiny file-reading/writing commands were active. A subsecond Python reference query also ran while the first 4-row/7-bit trial was pending. No agents, project builds, other Lean benchmarks, or substantial computations were launched concurrently by me. Other user/OS processes are **unknown**: `ps` was denied by the sandbox. Thus the machine was not verified idle. Hardware inspection and the final brute-force verification ran after the timed ladder.

| Trial | Rows / bits / budget | Python count | Recursive calls | Wall s | User s | System s | Peak RSS GB | Result | Other activity |
|---|---:|---:|---:|---:|---:|---:|---:|---|---|
| n3w4b5 | 3 / 4 / 5 | 228 | 1,123 | 3.486 | 0.341 | 0.228 | not recorded | PASS | A |
| n4w4b6 | 4 / 4 / 6 | 2,248 | 7,395 | 1.698 | 1.636 | 0.140 | not recorded | PASS | A |
| n3w7b5 | 3 / 7 / 5 | 0 | 19,174 | 4.609 | 4.534 | 0.252 | not recorded | PASS | A |
| n4w7b6 | 4 / 7 / 6 | 0 | 228,061 | 180.524 | 46.500 | 31.577 | not recorded | TIMEOUT; not verified in Lean | A |
| n5w7b7 | 5 / 7 / 7 | 16,800 | 2,429,778 | 180.236 | 58.208 | 29.376 | not recorded | TIMEOUT; not verified in Lean | A |
| n3w4b5repeat | 3 / 4 / 5 | 228 | 1,123 | 5.406 | 0.361 | 0.303 | 0.453 | PASS | A |
| n4w5b6 | 4 / 5 / 6 | 3,300 | 29,101 | 6.579 | 6.614 | 0.280 | 0.999 | PASS | A |
| n3w7b7 | 3 / 7 / 7 | 1,050 | 134,030 | 173.804 | 32.647 | 36.425 | 2.677 | PASS | A |
| n3w7b5uint8 | 3 / 7 / 5 | 0 | 19,174 | 10.095 | 8.175 | 0.321 | 1.210 | PASS | A |
| n4w7b6foldr | 4 / 7 / 6 | 0 | 228,061 | 180.349 | 57.178 | 80.799 | 2.773 | TIMEOUT; not verified in Lean | A |
| n0w7b0baseline | 0 / 7 / 0 | 0 | 1 | 1.945 | 0.135 | 0.218 | 0.419 | PASS | A |
| n3w7b5repeat | 3 / 7 / 5 | 0 | 19,174 | 3.962 | 4.048 | 0.171 | 0.907 | PASS | A |
| n4w6b6 | 4 / 6 / 6 | 1,560 | 88,905 | 21.123 | 20.856 | 0.633 | 2.418 | PASS | A |

All PASS rows exited 0, with no recursion-depth, heartbeat, or other errors. Their equations are **true**, with right-hand sides independently verified in Python. Nat trials printed exactly `'checked' depends on axioms: [propext]`; the UInt8 trial printed `[propext, Quot.sound]`. The timeout rows were killed by Python after a 180-second limit; their times describe an **unfinished run**, not a completion time, and their RHS values are Python-verified only. They establish a 180-second noncompletion observation for those trials. No configuration failure is being counted as a performance point. The first tiny run and its repeat have noisy wall startup; use CPU times or the larger completed cases for scaling.

The main ladder uses budget = rows + 2, preserving the full problem’s two excess edges. Widths 4, 5, 6, and 7 were tested. The additional (3,7,7) case ensures a nonzero accepted count at width 7. Zero counts at (3,7,5) and (4,7,6) are expected: the total bit budget cannot cover seven columns, but the recursion still enumerates its branches; no coverage impossibility prune was added.

## 3. Python reference computation and cross-checks

`run.py` below includes the literal-table generator, reference count and tree-size computation, and the exact timing harness. Memoization accelerates **only the Python reference**; its returned node/leaf totals still count every occurrence in the unmemoized search tree. Lean does not implement this memoization.

```python
import pathlib, subprocess, time, resource, json
from functools import lru_cache
P=pathlib.Path('/private/tmp/heptagon-kernel-bench')
LEAN='/Users/jaydenlin/.elan/toolchains/leanprover--lean4---v4.33.1/bin/lean'
def reference(n,w,b):
    subs={s:[m for m in range(1,1<<w) if m.bit_count()==s] for s in range(1,4)}
    @lru_cache(None)
    def rec(r,u,b):
        if r==0: return (int(b==0 and u==(1<<w)-1),1,1)
        count,nodes,leaves=0,1,0
        for s in range(1,min(3,b-(r-1))+1):
            for m in subs[s]:
                c,v,l=rec(r-1,u|m,b-s)
                count+=c; nodes+=v; leaves+=l
        return count,nodes,leaves
    return rec(n,0,b)
def source(n,w,b,count):
    table='\n'.join(f'  | {s} => '+str([m for m in range(1,1<<w) if m.bit_count()==s]) for s in range(1,4))
    return f'''set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option autoImplicit false

def subs : Nat → List Nat
{table}
  | _ => []

def countRec : Nat → Nat → Nat → Nat
  | 0, used, budget => if budget == 0 && used == {(1<<w)-1} then 1 else 0
  | rem + 1, used, budget =>
      (List.range' 1 (min 3 (budget - rem))).foldl (fun acc size =>
        (subs size).foldl (fun acc msk =>
          acc + countRec rem (used ||| msk) (budget - size)) acc) 0

theorem checked : countRec {n} 0 {b} = {count} := by decide
#print axioms checked
'''
def run(n,w,b,tag='',timeout=180):
    c,v,l=reference(n,w,b); name=f'n{n}w{w}b{b}{tag}'
    f=P/(name+'.lean'); src=source(n,w,b,c)
    if tag=='uint8':
        src=src.replace('Nat → List Nat','Nat → List UInt8').replace('Nat → Nat → Nat → Nat','Nat → UInt8 → Nat → Nat')
    if tag=='foldr':
        src=src.replace(".foldl (fun acc size =>", ".foldr (fun size acc =>").replace('.foldl (fun acc msk =>', '.foldr (fun msk acc =>')
    f.write_text(src)
    start=time.monotonic(); before=resource.getrusage(resource.RUSAGE_CHILDREN)
    try:
        p=subprocess.run([LEAN,str(f)],capture_output=True,text=True,timeout=timeout)
        status=p.returncode; output=p.stdout+p.stderr
    except subprocess.TimeoutExpired as e: status='timeout'; output=str(e)
    after=resource.getrusage(resource.RUSAGE_CHILDREN)
    row=dict(name=name,n=n,w=w,b=b,count=c,nodes=v,leaves=l,wall=time.monotonic()-start,user=after.ru_utime-before.ru_utime,system=after.ru_stime-before.ru_stime,status=status,output=output,maxrss=after.ru_maxrss)
    (P/(name+'.json')).write_text(json.dumps(row,indent=2)); print(json.dumps(row),flush=True)
if __name__=='__main__':
    import sys
    run(*map(int,sys.argv[1:4]),tag=sys.argv[4] if len(sys.argv)>4 else '')
```

The second check below literally reproduces the append/recurse/pop traversal for all measured instances, including the 5-row case, and checks a separate inclusion–exclusion polynomial count for every instance and the full problem. All assertions passed.

```python
from run import reference, P
from math import comb
import json

def brute(n,w,b):
    subs={s:[m for m in range(1,1<<w) if m.bit_count()==s] for s in range(1,4)}
    counts=[0,0,0]
    def rec(i,N,used,budget):
        counts[1]+=1
        if i==n:
            counts[2]+=1
            if budget!=0 or used!=(1<<w)-1: return
            counts[0]+=1
            return
        rem=n-i
        hi=min(3,budget-(rem-1))
        for size in range(1,hi+1):
            for msk in subs[size]:
                N.append(msk); rec(i+1,N,used|msk,budget-size); N.pop()
    rec(0,[],0,b)
    return tuple(counts)

def inclusion_exclusion(n,w,b):
    # Coefficient of x^b in sum_j (-1)^j C(w,j)
    #                  (sum_{s=1}^3 C(w-j,s) x^s)^n.
    answer=0
    for j in range(w+1):
        poly=[1]+[0]*b
        for _ in range(n):
            nxt=[0]*(b+1)
            for k in range(b+1):
                for s in range(1,min(3,w-j,k)+1):
                    nxt[k]+=poly[k-s]*comb(w-j,s)
            poly=nxt
        answer+=(-1)**j*comb(w,j)*poly[b]
    return answer

sizes=sorted({(r['n'],r['w'],r['b']) for f in P.glob('*.json') for r in [json.loads(f.read_text())]} | {(7,7,9),(6,7,8)})
for args in sizes:
    ref=reference(*args)
    assert inclusion_exclusion(*args)==ref[0]
    if ref[1]<3000000:
        assert brute(*args)==ref
    print(args,ref,'IE checked; '+('literal rec checked' if ref[1]<3000000 else 'memoized rec'),flush=True)
```

Full-tree reference: **13,003,620 accepted tuples, 226,668,772 recursive calls, 202,591,578 terminal calls**. Six-row/7-bit/budget-8 reference: 617,400 accepted tuples, 24,077,194 calls, 21,647,416 terminal calls. The literal uncompressed Python traversal was run through 5 rows; the full count was cross-checked by memoized traversal and independent inclusion–exclusion, not by traversing all 226 million calls in Python.

Reproduce an individual run with `python3 /private/tmp/heptagon-kernel-bench/run.py 4 6 6`; optional fourth arguments `uint8` and `foldr` select the secondary formulations. Each run has a 180-second wall limit. The JSON logs retain exit status and output.

## 4. Representation and accumulation experiments

At (3,7,5), UInt8 masks used **8.175 s user / 10.095 s wall**, versus Nat **4.534 / 4.609** initially and **4.048 / 3.962** on repeat. That is **1.80–2.02 times slower in user CPU**, not a tenfold improvement. UInt8 peak RSS was 1.210 GB versus 0.907 GB on the Nat repeat. The count, depth, budgets, tables and loop nesting otherwise agree. No conclusion about every possible UInt8 implementation follows. Fin and explicit unary-vs-literal Nat encodings were not tested.

Changing both folds from foldl to foldr, with argument order adjusted as shown in the complete source, still failed to finish (4,7,6) within 180 s: 57.178 s user, 80.799 s system, 2.773 GB peak RSS. Because neither matched 4-row/7-bit trial completed, this is not a completed-runtime ratio.

## 5. Extrapolation and answer

**Conditional CPU estimate: approximately 15 CPU-hours for the full counting traversal. A realistic full wall-clock completion time on this 8 GB machine is not established; the measurements do not support calling it a feasible 15-hour one-off here.** The reduced runs already cross a severe memory/system-time threshold.

Method: let V be the number of recursive calls, not accepted tuples. Fit `user_seconds = baseline_user + a * V` with baseline fixed at 0.135482 seconds from (0,7,0), using the completed Nat points (3,7,5), its repeat, (4,5,6), (4,6,6), and (3,7,7). Least squares gives `a = 0.0002385258943 seconds/call`. Multiplying by 226,668,772 gives **54,066 seconds = 15.02 CPU-hours**. Individual baseline-corrected per-call projections from those points range **12.85–15.27 CPU-hours**. A practical conditional band is **13–16 CPU-hours**, not a statistical confidence interval. No surviving-tuple-count scaling was used.

For wall time, the unpressured-looking completed cases project roughly **13–15 hours** under linear call scaling. But the completed (3,7,7) case projects **81.65 hours**, even though its CPU rate remains close to the other cases: it took 173.80 wall seconds for only 134,030 calls. Thus even before reaching the full size, the linear wall-time model fails. The full tree is **1,691 times larger than the largest completed tree**, and **2,549 times larger than the 4-row/6-bit tree** with stable wall/CPU timing. The 4-row/7-bit tree is only 0.10% of the full tree and did not finish within 180 seconds. These ratios describe scale, not rigorous runtime lower bounds for an unexecuted full call.

Memory diagnostic: subtracting baseline RSS (0.419 GB), the Nat repeat (19,174 calls), 4-row/5-bit (29,101), and 4-row/6-bit (88,905) runs retain roughly **20–25 KB peak RSS per call**. Naively extending those slopes gives **4.5–5.8 TB**, about **560–720 times this machine’s installed 8 GB RAM**. This is an illustrative extrapolation, **not a measured full memory requirement**: compression, cache policies, and expression sharing may change it. During a large run, `vm_stat` reported 1,205,348 16-KB pages stored in the system compressor (about 19.75 GB before compression); that statistic is system-wide and cannot all be attributed to Lean. High system time, low free pages, and the wall/CPU divergence are consistent with memory pressure. Peak RSS alone misses compressed and swapped memory.

The defensible feasibility result is therefore **negative for treating this monolithic scratch formulation as a demonstrated practical run on the current machine**. If enough memory and comparable CPU throughput were available, around 15 hours is a reasonable first CPU estimate. On this machine, completion could be much slower or fail for resources; assigning a trustworthy “N wall hours” would repeat the unsupported estimation the task asks to avoid. These measurements identify a resource cliff rather than prove that every kernel-only approach is infeasible. Chunked certificates, explicit state sharing, or another formulation would require separate benchmarks. Actual graph-filter evaluation is absent and is not covered by the 15-hour counting estimate.

## 6. Confidence and invalidation risks

- **High confidence** in all completed counts, the full reference count/tree size, the reported process times, and absence of forbidden evaluation in the scratch sources. Two distinct Python checks agree; completed Lean equations are kernel-accepted.
- **Moderate confidence** in the 13–16 CPU-hour estimate conditional on maintaining the small-case reduction throughput. The measured CPU rates agree, but the extrapolation is about 1,700-fold beyond the largest completed tree.
- **Low confidence** in any finite wall-hour prediction on this 8 GB machine. Memory pressure is evident, its ownership is not fully observable, and external processes were not inventoried.
- Potential invalidators: nonlinear kernel expression/cache growth or cache eviction; GC, compression and swap; sharing of repeated states; different pruning/branch-depth distributions; different proportions of zero and nonzero partial counts; larger Nat accumulators; startup noise, thermal throttling or OS scheduling; other user processes; alternative definitions or Lean versions; and additional filter predicates. Literal masks, lookup tables, and this exact fold-based formulation matter.
- Search recursion is structurally recursive, but this benchmark does not prove the counting function extensionally equal to the repository enumeration; faithfulness rests on source comparison plus the cross-checks. It is a feasibility experiment, not the missing exclusion proof.

## 7. Repository integrity

No file under the repository’s `lean/` directory was modified. `lakefile.toml` was untouched. All benchmark sources, logs, and this report are under `/private/tmp/heptagon-kernel-bench/`. Nothing was staged, committed, or pushed. Both initial and final `git status --porcelain` were empty, and `git diff --exit-code -- lean` passed. No forbidden native decision tactic was used.
