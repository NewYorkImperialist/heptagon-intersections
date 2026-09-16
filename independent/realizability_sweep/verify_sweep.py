"""Second pass: a checked refutation for every UNSAT instance of the sweep.

    python3 verify_sweep.py orbits.txt verified.jsonl [start] [stop]

Pass 1 (`sweep.py`) records the solver's verdict.  A solver's word is not
evidence.  This pass re-solves each instance with proof logging, writes the CNF
and the DRAT proof, has `drat-trim` check the proof against the CNF, and records
the verdict together with the SHA-256 of the CNF and the size of the
unsatisfiable core drat-trim extracts.  The CNF and the proof are deleted after
checking -- they are ~4 MB and ~10 MB each, and are reproducible from
`orbits.txt` by this script.

`drat-trim` is the binary in `../drat_trim_crosscheck/`, the same one used to
re-check the project's other 130 certificates.
"""
import hashlib, json, os, subprocess, sys, tempfile, time
sys.path.insert(0, '../residual_realizability')
import sweep

DRAT = os.path.abspath('../drat_trim_crosscheck/drat-trim')

def dimacs(cls, nv):
    return ('p cnf %d %d\n' % (nv, len(cls)) +
            ''.join(' '.join(map(str, c)) + ' 0\n' for c in cls)).encode()

def main():
    src, dst = sys.argv[1], sys.argv[2]
    lo = int(sys.argv[3]) if len(sys.argv) > 3 else 0
    hi = int(sys.argv[4]) if len(sys.argv) > 4 else 10**9
    rows = [tuple(map(int, l.split())) for l in open(src)]
    from pysat.solvers import Lingeling
    tmp = tempfile.mkdtemp(prefix='sweepchk')
    cnf, drat, core = (os.path.join(tmp, n) for n in ('a.cnf', 'a.drat', 'a.core'))
    t0 = time.time(); ok = bad = nsat = 0
    with open(dst, 'a') as out:
        for n, g in enumerate(rows):
            if n < lo or n >= hi: continue
            t = time.time()
            cls = sweep.clauses(g)
            blob = dimacs(cls, sweep.E.nv)
            with Lingeling(bootstrap_with=cls, with_proof=True) as s:
                sat = s.solve()
                proof = None if sat else s.get_proof()
            rec = {'n': n, 'g': list(g), 'sat': sat,
                   'cnf_sha256': hashlib.sha256(blob).hexdigest()}
            if sat:
                nsat += 1
            else:
                open(cnf, 'wb').write(blob)
                open(drat, 'w').write('\n'.join(proof) + '\n')
                p = subprocess.run([DRAT, cnf, drat, '-c', core],
                                   capture_output=True, text=True, timeout=1800)
                v = 's VERIFIED' in p.stdout and 's NOT VERIFIED' not in p.stdout
                rec['verified'] = v
                rec['proof_lines'] = len(proof)
                if v and os.path.exists(core):
                    with open(core) as f:
                        rec['core_clauses'] = int(f.readline().split()[3])
                ok += v; bad += (not v)
            rec['seconds'] = round(time.time() - t, 2)
            out.write(json.dumps(rec) + '\n'); out.flush()
            for f in (cnf, drat, core):
                if os.path.exists(f): os.remove(f)
            if (n - lo + 1) % 50 == 0:
                print('%6d  verified=%d failed=%d sat=%d  %.0f s' %
                      (n - lo + 1, ok, bad, nsat, time.time() - t0), flush=True)
    print('RANGE %d..%d  verified=%d failed=%d sat=%d  %.0f s' %
          (lo, min(hi, len(rows)), ok, bad, nsat, time.time() - t0), flush=True)
    sys.exit(1 if bad else 0)

if __name__ == '__main__':
    main()
