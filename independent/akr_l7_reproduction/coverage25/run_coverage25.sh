#!/usr/bin/env bash
# Entry point for the 25-combination coverage enumeration that REPLACES
# coverage.py's (incorrect) orbit argument.  See docs/known-issues.md K-16.
#
#   ./run_coverage25.sh
#
# Steps 1-4 need only the Python standard library.  Step 5 is an optional
# independent-solver cross-check; skipping it is reported loudly and exits 2.
set -u
cd "$(dirname "$0")" || exit 1
HERE="$(pwd)"
PY="${PYTHON:-python3}"
# Prefer the isolated venv (python-sat) for the solver cross-check if present.
XPY="$PY"
[ -x "$HERE/.venv/bin/python" ] && XPY="$HERE/.venv/bin/python"
LOG="$HERE/logs"
mkdir -p "$LOG"
FAILED=(); PARTIAL=0

banner() { printf '\n----------------------------------------------------------------------\n%s\n----------------------------------------------------------------------\n' "$1"; }
step() { local n="$1"; shift; local l="$1"; shift; banner "C25 STEP: $n"
  if "$@" 2>&1 | tee "$LOG/$l"; then printf -- '--- PASS: %s\n' "$n"
  else printf -- '*** FAIL: %s (log: coverage25/logs/%s)\n' "$n" "$l"; FAILED+=("$n"); fi; }
need() { grep -q "$1" "$LOG/$2" || { printf -- '*** FAIL: %s missing expected line: %s\n' "$2" "$1"; FAILED+=("$2:$1"); }; }

banner "C25 ENVIRONMENT"
{
"$PY" - <<'EOF'
import importlib.util, platform, sys
print("python :", sys.version.split()[0], "on", platform.platform())
h = lambda m: importlib.util.find_spec(m) is not None
try: z = h("z3")
except Exception: z = False
try: p = h("pysat")
except Exception: p = False
print("z3     :", "PRESENT" if z else "ABSENT")
print("pysat  :", "PRESENT" if p else "ABSENT (only needed to RE-DERIVE the DRAT proofs)")
EOF
printf 'cross-check interpreter: %s\n' "$XPY"
"$XPY" -c "import pysat, sys; print('venv pysat:', pysat.__version__ if hasattr(pysat,'__version__') else 'installed')" 2>/dev/null \
  || printf 'venv pysat: not available\n'
printf 'NOTE: the 110 DRAT certificates under drat/ were derived once by\n'
printf '      solve_all.py in the isolated venv coverage25/.venv (gitignored).\n'
printf '      Re-CHECKING them (verify_all.py) needs only the standard library.\n'
} 2>&1 | tee "$LOG/c25_environment.txt"

step "the 25 (P-type x Q-type) combinations" c25_types.txt "$PY" pq_types.py
need "combinations: 5 x 5 = 25" c25_types.txt

step "completeness of the 25-combination list for n = 7" c25_completeness.txt \
     "$PY" completeness.py
need "COVERAGE COMPLETE" c25_completeness.txt
need "RESULT: the 25-combination list is COMPLETE for n = 7." c25_completeness.txt

step "regenerate the 125 CNFs and check SHA-256" c25_gen_cnf.txt \
     "$PY" gen_cnf.py --write
need "20/20 legacy-twin instances byte-identical" c25_gen_cnf.txt

step "re-check all 125 certificates (110 DRAT + 15 models, no solver)" c25_verify_all.txt \
     "$PY" verify_all.py
need "both-hooking AND both-hooked UNSAT in all 25 combinations: True" c25_verify_all.txt

banner "C25 STEP: independent solver cross-check of all 125 verdicts"
if [ "${REPRO_SKIP_Z3:-0}" = "1" ]; then
  printf '*** DELIBERATELY SKIPPED via REPRO_SKIP_Z3=1.  This run is PARTIAL.\n'
  PARTIAL=1
elif ! "$XPY" -c "import z3" >/dev/null 2>&1 && ! "$XPY" -c "import pysat" >/dev/null 2>&1; then
  printf '*** FAIL: neither z3 nor python-sat is importable, so the cross-check\n'
  printf '***   cannot run.  (The 125 certificates were still re-checked above.)\n'
  FAILED+=("c25 solver cross-check (no solver)")
else
  if "$XPY" resolve_check.py 2>&1 | tee "$LOG/c25_resolve_check.txt"; then
    printf -- '--- PASS: c25 solver cross-check\n'
  else
    printf -- '*** FAIL: c25 solver cross-check\n'; FAILED+=("c25 solver cross-check")
  fi
fi

banner "C25 SUMMARY"
if [ ${#FAILED[@]} -ne 0 ]; then
  printf '*** %d C25 STEP(S) FAILED:\n' "${#FAILED[@]}"
  for f in "${FAILED[@]}"; do printf '      %s\n' "$f"; done
  exit 1
fi
printf 'K-16 REPLACEMENT COVERAGE ESTABLISHED.\n'
printf '  25/25 labelled (P-type x Q-type) combinations enumerated, no symmetry reduction\n'
printf ' 125/125 instances certificate-checked (110 DRAT refutations + 15 models)\n'
printf '  25/25 combinations have both-hooking AND both-hooked UNSAT\n'
printf '  12/25 combinations are VACUOUS (base pattern already UNSAT) and are\n'
printf '        reported as such; the old PQ-adj representative was one of them\n'
if [ "$PARTIAL" = "1" ]; then
  printf 'PARTIAL: the independent solver cross-check was skipped.\n'; exit 2
fi
exit 0
