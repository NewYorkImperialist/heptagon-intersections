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
