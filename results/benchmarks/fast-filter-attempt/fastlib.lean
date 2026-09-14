-- Fast component labelling: pure Nat bitmask arithmetic.
-- No mkMask, no idx7.any, no closures, no list traversal.
set_option maxRecDepth 40000
set_option maxHeartbeats 0

/-- OR of the Q-masks of every P-side present in `p`. Unrolled; 7 tests. -/
def orQ (M : Nat → Nat) (p : Nat) : Nat :=
  (if p &&& 1 = 0 then 0 else M 0) ||| (if p &&& 2 = 0 then 0 else M 1) |||
  (if p &&& 4 = 0 then 0 else M 2) ||| (if p &&& 8 = 0 then 0 else M 3) |||
  (if p &&& 16 = 0 then 0 else M 4) ||| (if p &&& 32 = 0 then 0 else M 5) |||
  (if p &&& 64 = 0 then 0 else M 6)

/-- P-sides meeting the Q-set `q`. Unrolled; 7 tests. -/
def pFromQ (M : Nat → Nat) (q : Nat) : Nat :=
  (if M 0 &&& q = 0 then 0 else 1) ||| (if M 1 &&& q = 0 then 0 else 2) |||
  (if M 2 &&& q = 0 then 0 else 4) ||| (if M 3 &&& q = 0 then 0 else 8) |||
  (if M 4 &&& q = 0 then 0 else 16) ||| (if M 5 &&& q = 0 then 0 else 32) |||
  (if M 6 &&& q = 0 then 0 else 64)

def stepF (M : Nat → Nat) (pq : Nat × Nat) : Nat × Nat :=
  let q := pq.2 ||| orQ M pq.1
  let p := pq.1 ||| pFromQ M q
  (p, q)

def iterF (M : Nat → Nat) : Nat → Nat × Nat → Nat × Nat
  | 0, s => s
  | (n+1), s => iterF M n (stepF M s)

/-- Reachable set from P-side `i`, as a (P-mask, Q-mask) pair. -/
def reachF (M : Nat → Nat) (i : Nat) : Nat × Nat := iterF M 14 (1 <<< i, 0)

/-- Canonical label of P-side `i`: the reachable P-mask itself. Two vertices are
in the same component exactly when these masks are equal. -/
def cmpPF (M : Nat → Nat) (i : Nat) : Nat := (reachF M i).1

/-- All seven P-labels, the same work `label` does on the P side. -/
def allLabelsF (M : Nat → Nat) : Nat :=
  cmpPF M 0 + cmpPF M 1 + cmpPF M 2 + cmpPF M 3 + cmpPF M 4 + cmpPF M 5 + cmpPF M 6
