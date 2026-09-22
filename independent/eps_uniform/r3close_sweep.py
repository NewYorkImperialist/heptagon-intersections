import sys, time, json
sys.path.insert(0,'/Users/jaydenlin/dev/lean/heptagon-intersections/independent/eps_uniform')
import r3close
PLAN = [('base',150,3),('deep',150,3),('anti',150,3),('antidep',150,3),
        ('depapex',150,3),('doubleanti',150,3),('multianti',150,3),
        ('hard',150,3),('multi3',120,2),('multi4',80,2)]
SEED = 424242
grand = {}
for name, n, gT in PLAN:
    t0=time.time()
    T = r3close.run(name, SEED, n, gridT=gT, e2e=True, verbose=True)
    print(f'--- {name}  n={n} gridT={gT}  ({time.time()-t0:.1f}s) ---', flush=True)
    for k in sorted(T): print(f'{k:16s} {T[k]}', flush=True)
    grand[name]=T
    print(flush=True)
# aggregate
agg = {}
for name,T in grand.items():
    for k,v in T.items():
        if isinstance(v,int): agg[k]=agg.get(k,0)+v
        elif isinstance(v,dict):
            d=agg.setdefault(k,{})
            for kk,vv in v.items(): d[kk]=d.get(kk,0)+vv
print('=== GRAND TOTAL ===', flush=True)
for k in sorted(agg): print(f'{k:16s} {agg[k]}', flush=True)
