"""Stand-in for the `pysat` package.

The recovered scratchpad tools (`indep_om.py`, `gen_all_proofs.py`,
`om_global2.py`, `realize8.py`) import pysat solvers at module import time, but
their CNF-*construction* code (Enc/build/model/statuses) is pure Python and
needs no solver.  python-sat is NOT installed in this environment, so this shim
lets the construction code be imported and used verbatim, while any actual
attempt to SOLVE fails loudly instead of silently doing something else.
"""
