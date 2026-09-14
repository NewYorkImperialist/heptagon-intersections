class _NoSolver:
    def __init__(self, *a, **k):
        raise RuntimeError(
            "python-sat (pysat) is NOT installed in this environment, so no SAT "
            "solver is available.  Only CNF construction is reproducible here; "
            "the DRAT certificates in evidence/proofs/ were produced elsewhere "
            "and are re-checked by evidence/run_drat_all.py.  See REPRODUCE.md.")

class Cadical153(_NoSolver): pass
class Cadical103(_NoSolver): pass
class Glucose42(_NoSolver): pass
class Glucose4(_NoSolver): pass
class Lingeling(_NoSolver): pass
class Minisat22(_NoSolver): pass
