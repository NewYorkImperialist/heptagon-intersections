"""Aggregate the sweep logs into summary.json and SHA256SUMS.txt.

    python3 summarise.py

The two per-instance logs are large and gitignored; this records what they say
and their digests, so the committed evidence is auditable and the logs are
regenerable from `orbits.txt`.
"""
import glob, hashlib, json, os

orbits = [l.split() for l in open('orbits.txt')]
s = {'orbits': len(orbits)}

rs = [json.loads(l) for l in open('sweep.jsonl')] if os.path.exists('sweep.jsonl') else []
s['pass1'] = {'instances': len(rs), 'sat': sum(r['sat'] for r in rs),
              'unsat': sum(not r['sat'] for r in rs),
              'seconds_total': round(sum(r['seconds'] for r in rs), 1)}

vs = []
for f in sorted(glob.glob('verified_*.jsonl')):
    vs += [json.loads(l) for l in open(f)]
cores = sorted(r['core_clauses'] for r in vs if 'core_clauses' in r)
s['verified'] = {
    'instances': len(vs),
    'sat': sum(r['sat'] for r in vs),
    'drat_verified': sum(r.get('verified', False) for r in vs),
    'drat_failed': sum(r.get('verified') is False for r in vs),
    'distinct_cnf_sha256': len({r['cnf_sha256'] for r in vs}),
    'core_clauses': ({'min': cores[0], 'median': cores[len(cores)//2], 'max': cores[-1]}
                     if cores else None),
    'seconds_total': round(sum(r['seconds'] for r in vs), 1)}

s['patterns'] = json.load(open('patterns_checked.json'))
lib = json.load(open('library.json'))
s['library'] = {'patterns': len(lib['patterns']),
                'orbits_covered_by_an_earlier_pattern': lib['covered'],
                'orbits_seen': lib['seen'],
                'sizes': [len(p['pairs']) for p in lib['patterns']]}
json.dump(s, open('summary.json', 'w'), indent=1)

names = sorted(set(glob.glob('*.py') + glob.glob('*.cpp') + glob.glob('*.txt')
                   + glob.glob('*.json') + glob.glob('*.jsonl') + glob.glob('*.log')
                   + glob.glob('lean_export/*')) - {'SHA256SUMS.txt'})
with open('SHA256SUMS.txt', 'w') as f:
    for n in names:
        f.write('%s  %s\n' % (hashlib.sha256(open(n, 'rb').read()).hexdigest(), n))
print(json.dumps(s, indent=1))
