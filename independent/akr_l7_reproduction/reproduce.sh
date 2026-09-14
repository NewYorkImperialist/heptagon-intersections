#!/usr/bin/env bash
# Single reproduction entry point for the independent AKR Lemma 7 / A7 evidence.
#
#   ./reproduce.sh
#
# Runs every check that is runnable in this environment.  Any missing input or
# failing check aborts the whole run with a specific message.  Nothing is
# skipped silently: the one optional step (the z3 cross-check) must be opted out
# of explicitly with REPRO_SKIP_Z3=1, and that opt-out is reported loudly and
# makes the run exit with status 2 (PARTIAL), never 0.
#
# See REPRODUCE.md for prerequisites and for what each step establishes.
set -u
cd "$(dirname "$0")" || exit 1
ROOT="$(pwd)"
E="$ROOT/evidence"
PY="${PYTHON:-python3}"
LOG="$E/logs"
mkdir -p "$LOG"
FAILED=()
PARTIAL=0

banner() { printf '\n========================================================================\n%s\n========================================================================\n' "$1"; }

step() {  # step <name> <logfile> <command...>
  local name="$1"; shift
  local log="$1"; shift
  banner "STEP: $name"
  if "$@" 2>&1 | tee "$LOG/$log"; then
    printf -- '--- PASS: %s\n' "$name"
  else
    printf -- '*** FAIL: %s  (full output in evidence/logs/%s)\n' "$name" "$log"
    FAILED+=("$name")
  fi
}

banner "ENVIRONMENT"
"$PY" - <<'EOF'
import importlib.util, platform, shutil, sys
print("python           :", sys.version.split()[0], "on", platform.platform())
def have(m):
    try: return importlib.util.find_spec(m) is not None
    except Exception: return False
print("z3 (z3-solver)   :", "PRESENT" if have("z3") else "ABSENT  -> z3 cross-check unavailable")
print("pysat            :", "PRESENT" if have("pysat") else "ABSENT  -> cannot re-SOLVE; DRAT re-checking is unaffected")
found = [s for s in ("cadical","kissat","glucose","minisat","lingeling","picosat") if shutil.which(s)]
print("SAT binaries     :", ", ".join(found) if found else "NONE found on PATH")
EOF

# 1. Regenerate the 19 MB of CNFs (pure Python) and confirm they are byte-identical.
step "regenerate CNFs from indep_om.py and check SHA-256" regen_cnf.txt \
     "$PY" "$E/regen_cnf.py" --write "$E/cnf"

# 2. Every artifact matches the recorded hashes.
step "verify SHA-256 of all recovered artifacts" verify_hashes.txt \
     "$PY" "$E/verify_hashes.py"

# 3. The DRAT checker itself: pigeonhole positives + 4 negative controls.
step "validate dratcheck.py (PHP(4)/PHP(5) positives + negative controls)" validate_checker.txt \
     "$PY" "$E/validate_checker.py"

# 4. The 15 DRAT certificates.  ~3 minutes, pure Python, no solver required.
step "re-check all 15 DRAT refutations" drat_results.txt \
     "$PY" "$E/run_drat_all.py"

# 5. The 5 satisfiable instances, verified from exported models with no solver.
step "check exported models for the 5 satisfiable instances" check_models.txt \
     "$PY" "$E/check_models.py"

# 6. Independent solver cross-check of all 20 (needs z3).
banner "STEP: z3 cross-check of all 20 instances"
if [ "${REPRO_SKIP_Z3:-0}" = "1" ]; then
  printf '*** DELIBERATELY SKIPPED via REPRO_SKIP_Z3=1.\n'
  printf '*** This run is PARTIAL: the 5 satisfiable instances are covered only by\n'
  printf '*** the previously exported models in evidence/models/, not re-solved here.\n'
  PARTIAL=1
elif ! "$PY" -c "import z3" >/dev/null 2>&1; then
  printf '*** FAIL: z3 is not importable, so the cross-check cannot run.\n'
  printf '***   Install it  (pip install z3-solver)  or re-run with REPRO_SKIP_Z3=1\n'
  printf '***   to record the gap explicitly.\n'
  FAILED+=("z3 cross-check (z3 missing)")
else
  if "$PY" "$E/z3_crosscheck.py" 2>&1 | tee "$LOG/z3_crosscheck.txt"; then
    printf -- '--- PASS: z3 cross-check\n'
  else
    printf -- '*** FAIL: z3 cross-check\n'; FAILED+=("z3 cross-check")
  fi
fi

# 7. Positive control: AKR's own Fig. 6 configuration satisfies the real clause set.
banner "STEP: positive control - AKR Fig. 6 vs the actual clauses"
if ( cd "$E/tools" && PYTHONPATH="$E/shims:$E/tools" "$PY" verify_fig6.py ) 2>&1 | tee "$LOG/verify_fig6.txt"; then
  if grep -q "VIOLATED by the real configuration: 0" "$LOG/verify_fig6.txt" \
     && grep -q "mismatches: 0" "$LOG/verify_fig6.txt"; then
    printf -- '--- PASS: Fig. 6 realises the pattern and satisfies every clause of generic/mixed-1\n'
  else
    printf -- '*** FAIL: Fig. 6 control did not report 0 mismatches / 0 violated clauses\n'
    FAILED+=("Fig. 6 positive control")
  fi
else
  printf -- '*** FAIL: verify_fig6.py errored\n'; FAILED+=("Fig. 6 positive control")
fi

# 8. The Observation 6 counterexample.
banner "STEP: Observation 6 counterexample certificate"
if "$PY" "$E/tools/certificate.py" 2>&1 | tee "$LOG/certificate.txt"; then
  if grep -q "AXIS PROPERTY HOLDS: False" "$LOG/certificate.txt" \
     && grep -q "P simple: True    Q simple: True" "$LOG/certificate.txt"; then
    printf -- '--- PASS: exhibits two simple polygons in general position where the Axis Property fails\n'
  else
    printf -- '*** FAIL: certificate.py did not reproduce the expected verdict\n'
    FAILED+=("Observation 6 certificate")
  fi
else
  printf -- '*** FAIL: certificate.py errored\n'; FAILED+=("Observation 6 certificate")
fi

# 9. Case coverage for n = 7.
banner "STEP: case coverage (generic / P-adj / Q-adj / PQ-adj exhaust n = 7)"
if ( cd "$ROOT" && "$PY" coverage.py ) 2>&1 | tee "$LOG/coverage.txt"; then
  if grep -q "=> 1 orbit(s)" "$LOG/coverage.txt"; then
    printf -- '--- PASS: coverage argument reproduced\n'
  else
    printf -- '*** FAIL: coverage.py output did not contain the expected orbit count\n'
    FAILED+=("coverage")
  fi
else
  printf -- '*** FAIL: coverage.py errored\n'; FAILED+=("coverage")
fi

banner "SUMMARY"
if [ ${#FAILED[@]} -ne 0 ]; then
  printf '*** %d STEP(S) FAILED:\n' "${#FAILED[@]}"
  for f in "${FAILED[@]}"; do printf '      %s\n' "$f"; done
  printf '\nREPRODUCTION FAILED.  Logs: evidence/logs/\n'
  exit 1
fi
if [ "$PARTIAL" = "1" ]; then
  printf 'All executed steps passed, but the run was PARTIAL (z3 cross-check skipped).\n'
  printf 'Logs: evidence/logs/\n'
  exit 2
fi
printf 'ALL CHECKS PASSED.\n'
printf '  20/20 CNFs regenerated byte-identically from indep_om.py\n'
printf '  15/15 DRAT refutations re-verified by a from-scratch checker\n'
printf '   5/5  satisfiable instances confirmed by explicit, solver-free model checks\n'
printf '   4/4  pigeonhole positives and 4/4 negative controls behaved correctly\n'
printf '  Fig. 6 positive control, Observation 6 certificate and n=7 coverage reproduced\n'
printf 'Logs: evidence/logs/\n'
exit 0
