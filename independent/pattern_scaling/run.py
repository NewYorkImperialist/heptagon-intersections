#!/usr/bin/env python3
"""Parse authoritative inputs, compile the integer-only search, and log the run."""
from pathlib import Path
import re, json, hashlib, subprocess, math
HERE = Path(__file__).resolve().parent
ROOT = HERE.parent.parent

def extract(k):
    path = ROOT / f'lean/MinPatternClauses{k:03d}.lean'
    raw = path.read_text()
    statement = raw.split(f'theorem minpattern{k:03d}_impossible ', 1)[1].split(': False :=', 1)[0]
    rx = r'\((h\w+)\s*:\s*(¬?)ProperCross\s*\(V (\d+)\)\s*\(V (\d+)\)\s*\(V (\d+)\)\s*\(V (\d+)\)\)'
    entries, selves = [], []
    matches = list(re.finditer(rx, statement))
    assert len(matches) == statement.count('ProperCross')
    for m in matches:
        name, neg, *vs = m.groups()
        a,b,c,d = map(int, vs)
        assert a//7 == b//7 and c//7 == d//7
        assert b%7 == (a+1)%7 and d%7 == (c+1)%7
        entry = dict(name=name, vertices=[a,b,c,d], noncross=bool(neg))
        if a//7 == c//7:
            assert neg
            selves.append(entry)
        else:
            assert a < 7 <= c
            entry.update(i=a, j=c-7)
            entries.append(entry)
    return dict(source=str(path.relative_to(ROOT)), sha256=hashlib.sha256(raw.encode()).hexdigest(), used=entries, excluded=selves)

def main():
    pats = [extract(k) for k in range(2)]
    poolpath = ROOT/'independent/realizability_sweep/pool.json'
    pool = json.loads(poolpath.read_text())['pool']
    assert len(pool) == 148
    header = (ROOT/'independent/realizability_sweep/cover.cpp').read_text()
    assert 'Bit 7*(6-i) + j is set' in header
    decoded = []
    for x in pool:
        assert x['val'] & ~x['sup'] == 0
        decoded.append([(i,j,int(bool(x['val'] & (1 << (7*(6-i)+j))))) for i in range(7) for j in range(7) if x['sup'] & (1 << (7*(6-i)+j))])
    (HERE/'patterns.json').write_text(json.dumps(dict(lean=pats,pool_sha256=hashlib.sha256(poolpath.read_bytes()).hexdigest()),indent=2)+'\n')
    with (HERE/'input.txt').open('w') as f:
        for p in pats:
            print(len(p['used']), file=f)
            for e in p['used']: print(e['i'],e['j'],int(e['noncross']),file=f)
        print(len(decoded),file=f)
        for p in decoded:
            print(len(p),file=f)
            for e in p: print(*e,file=f)
    subprocess.run(['c++','-O3','-std=c++17',str(HERE/'search.cpp'),'-o',str(HERE/'search')],check=True)
    with (HERE/'run.log').open('w') as log:
        def emit(s):
            print(s,flush=True); print(s,file=log,flush=True)
        for k,p in enumerate(pats):
            emit(f"Pi_{[8,14][k]} parsed from {p['source']}; SHA256 {p['sha256']}")
            emit('Used: '+json.dumps(p['used']))
            emit('Excluded self conditions: '+json.dumps(p['excluded']))
        emit('Pool: 148 entries; bit 7*(6-i)+j, val bit 1 = noncrossing; SHA256 '+hashlib.sha256(poolpath.read_bytes()).hexdigest())
        for n in [7,9,11,13]:
            emit(f'n={n} labelled surjections (inclusion-exclusion): '+str(sum((-1)**k*math.comb(7,k)*(7-k)**n for k in range(8))))
        proc=subprocess.Popen([str(HERE/'search'),str(HERE/'input.txt')],stdout=subprocess.PIPE,stderr=subprocess.STDOUT,text=True)
        for line in proc.stdout: emit(line.rstrip('\n'))
        assert proc.wait()==0, 'Search failed; inspect run.log'
if __name__=='__main__': main()
