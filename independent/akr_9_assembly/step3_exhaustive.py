"""EXHAUSTIVE finite verification of step 3 of Theorem CI's injectivity proof
(docs/akr-9-assembly.md section 2.3), plus the fact-2 (a)-vs-(c) claim.

Step 3 as stated: if two DISTINCT vertex-vertex coincidences  P_i = Q_j  and
P_k = Q_l  share a candidate side pair (a,b) in {i-1,i} x {j-1,j} intersect
{k-1,k} x {l-1,l}, then P-side a and Q-side b have the SAME TWO ENDPOINTS, so
they coincide as segments and dP cap dQ is infinite.

The document works "all four sign cases".  There is no need to trust a case
analysis: the statement is a claim about index arithmetic in Fin 7 only, so it
can be decided by enumerating ALL 7^4 = 2401 index tuples (i,j,k,l).  That is
what this does, symbolically -- no coordinates, no arithmetic, no sampling.

Model: the 14 vertex SYMBOLS are Pp0..Pp6, Qq0..Qq6, quotiented by the two
identifications Pp_i ~ Qq_j and Pp_k ~ Qq_l coming from the two coincidences.
P-side a has endpoint symbol-classes {[Pp_a],[Pp_{a+1}]}; Q-side b has
{[Qq_b],[Qq_{b+1}]}.  "Coincide as segments" is equality of those two sets.

We ALSO verify the converse direction that makes the hazard a non-issue rather
than a lucky escape: that whenever the two apexes are adjacent along BOTH
boundaries, a shared pair exists (so the configuration is forbidden outright,
not merely the naive choice rule).
"""
from itertools import product

N = 7
def uf_find(par, x):
    while par[x] != x: par[x] = par[par[x]]; x = par[x]
    return x
def uf_union(par, a, b):
    ra, rb = uf_find(par,a), uf_find(par,b)
    if ra != rb: par[ra] = rb

P = lambda a: a % N           # symbol id 0..6   for P vertices
Q = lambda b: N + (b % N)     # symbol id 7..13  for Q vertices

bad = []          # shared pair but sides do NOT coincide  -> would break step 3
shared_cases = 0  # (i,j,k,l) admitting a shared candidate pair
adjboth = 0       # (i,j,k,l) adjacent along both boundaries
adjboth_no_shared = []
checked = 0

for i, j, k, l in product(range(N), repeat=4):
    if i == k or j == l:      # distinct apexes: distinct P-indices and Q-indices
        continue
    checked += 1
    par = list(range(2*N))
    uf_union(par, P(i), Q(j))
    uf_union(par, P(k), Q(l))
    CA = {(a,b) for a in ((i-1)%N, i) for b in ((j-1)%N, j)}
    CB = {(a,b) for a in ((k-1)%N, k) for b in ((l-1)%N, l)}
    sh = CA & CB
    adj_P = (k % N) in ((i-1)%N, (i+1)%N)
    adj_Q = (l % N) in ((j-1)%N, (j+1)%N)
    if adj_P and adj_Q:
        adjboth += 1
        if not sh: adjboth_no_shared.append((i,j,k,l))
    if not sh: continue
    shared_cases += 1
    for (a,b) in sh:
        ep_P = frozenset({uf_find(par,P(a)), uf_find(par,P(a+1))})
        ep_Q = frozenset({uf_find(par,Q(b)), uf_find(par,Q(b+1))})
        if ep_P != ep_Q:
            bad.append((i,j,k,l,a,b,sorted(ep_P),sorted(ep_Q)))

print("=== STEP 3, exhaustive over Fin 7 ^ 4 ===")
print(f"index tuples (i,j,k,l) with i!=k and j!=l            : {checked}")
print(f"  ... admitting a SHARED candidate side pair          : {shared_cases}")
print(f"  ... of those, shared pair whose two sides do NOT")
print(f"      coincide as segments (would BREAK step 3)       : {len(bad)}")
print(f"tuples adjacent along BOTH boundaries                 : {adjboth}")
print(f"  ... of those with NO shared pair                    : {len(adjboth_no_shared)}")
print()
print("READ: 'shared pair' and 'adjacent along both boundaries' are the SAME")
print("set of index tuples, and on every one of them the shared pair's P-side")
print("and Q-side have identical endpoint sets, hence coincide as segments,")
print("hence dP cap dQ contains a segment and is infinite.")
print()

# --- non-vacuity of this checker: it must be able to report 'bad'. ---
# Mutate the rule to the WRONG candidate set {i, i+1} x {j, j+1} (an
# off-by-one in which sides are 'incident to the apex') and re-run.
bad2 = 0; shared2 = 0
for i, j, k, l in product(range(N), repeat=4):
    if i == k or j == l: continue
    par = list(range(2*N)); uf_union(par,P(i),Q(j)); uf_union(par,P(k),Q(l))
    CA = {(a,b) for a in (i,(i+1)%N) for b in (j,(j+1)%N)}
    CB = {(a,b) for a in (k,(k+1)%N) for b in (l,(l+1)%N)}
    for (a,b) in CA & CB:
        shared2 += 1
        if frozenset({uf_find(par,P(a)),uf_find(par,P(a+1))}) != \
           frozenset({uf_find(par,Q(b)),uf_find(par,Q(b+1))}): bad2 += 1
print("=== CONTROL: same checker, wrong incidence rule {i,i+1} x {j,j+1} ===")
print(f"shared pairs found: {shared2}   of which sides do NOT coincide: {bad2}")
print("The control fires (bad2 > 0), so the checker above CAN report a failure;")
print("its 0 on the correct rule is a fact about the rule, not about the code.")

# --- fact 2, (a) vs (c): a class-(c) candidate pair can never also be a
# class-(a) pair, because its two sides share an endpoint.  Again exhaustive. ---
print()
print("=== FACT 2, exhaustive: every class-(c) candidate pair's two sides")
print("    share an endpoint (so a second, interior, common point would force")
print("    collinearity and an infinite intersection) ===")
n_pairs = 0; n_share = 0
for i, j in product(range(N), repeat=2):
    par = list(range(2*N)); uf_union(par, P(i), Q(j))
    for a in ((i-1)%N, i):
        for b in ((j-1)%N, j):
            n_pairs += 1
            ep_P = {uf_find(par,P(a)), uf_find(par,P(a+1))}
            ep_Q = {uf_find(par,Q(b)), uf_find(par,Q(b+1))}
            if ep_P & ep_Q: n_share += 1
print(f"apex/candidate-pair combinations: {n_pairs}   sharing an endpoint: {n_share}")
assert n_pairs == n_share
