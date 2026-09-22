import sys
sys.path.insert(0,'/Users/jaydenlin/dev/lean/heptagon-intersections/independent/akr_9_assembly')
import injection2 as J

FAMS = ['none','one','fig27c','adjP','adjQ','three','threeadjP','vsboth','unsep','anti']
HAZ  = ['adjboth','adjbothrev']
N    = int(sys.argv[1]) if len(sys.argv)>1 else 20
SEEDS= [20260921, 31415926, 27182818]

def agg(res):
    import collections
    t = collections.Counter()
    for r in res: t.update(r)
    return t

print("="*78)
print("A. MAIN ARM (arm B: AKR's criterion (R2) enforced at every SEPARATED apex)")
print("="*78)
allB=[]
for fam in FAMS:
    rs=[]
    for sd in SEEDS:
        t,f = J.run(fam,N,sd,'B'); rs.append(t)
    t=agg(rs); allB.append(t); J.show(f'family {fam}', t, [])
print('### TOTAL, arm B, all families'); J.show('ARM B TOTAL', agg(allB), [])

print("="*78)
print("B. CONTROLS")
print("="*78)
for label,kw in (('CONTROL 1 -- arm A (bare directions: coincidences break, (R2) NOT required)', dict(arm='A')),
                 ('CONTROL 2 -- E parallel to an incident P-edge at the apex', dict(arm='B', badE=True)),
                 ('CONTROL 3 -- MUTATED Phi: class (a) sent to the crossing of its P-side with the LOWEST-indexed Q-side it crosses (an injectivity-only mutation)', dict(arm='B', mutate='psideonly')),
                 ('CONTROL 4 -- (G3) DROPPED: the motion does not carry the relations (1) it breaks (tests the class-(b) rule in isolation)', dict(arm='B', drop_g3=True))):
    rs=[]
    for fam in FAMS:
        for sd in SEEDS:
            t,f = J.run(fam,N,sd,**kw); rs.append(t)
    J.show(label, agg(rs), [])

print("="*78)
print("C. THE DOUBLE-COUNTING HAZARD, built on purpose")
print("="*78)
rs=[]
for fam in HAZ:
    for sd in SEEDS:
        t,f = J.run(fam,N*3,sd,'B'); rs.append(t)
t=agg(rs); J.show('two coincidences ADJACENT ALONG BOTH BOUNDARIES', t, [])
print(f"  built {t['built']}, of which infinite at alpha=0: {t['inf_at_0']}")
print(f"  of those, the step-3 hazard precondition (two apexes sharing a")
print(f"  candidate side pair) was PRESENT in {t['hazard_precondition_at_0']}")
print(f"  configurations with the hazard precondition AND finite intersection: {t['pairs_COLLIDE_0']}")

print("="*78)
print("D. (Fin-out): the output's finiteness, attacked directly")
print("="*78)
rs=[]
for sd in SEEDS:
    t,f = J.run('anti',N*2,sd,'B',force_E='b1'); rs.append(t)
t=agg(rs); J.show('anti family, E forced parallel to b1, (R2) still enforced', t, [])
print(f"  ncard form |dP(a) n dQ(a)| >= |X| FALSE (output infinite, Set.ncard = 0): {t['ncard_FALSE']}")
print(f"  ... while Phi was total/injective/landed in: {t['total']}/{t['inj_any_choice']}/{t['land']}")
