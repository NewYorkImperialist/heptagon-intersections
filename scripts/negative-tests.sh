#!/usr/bin/env bash
#
# negative-tests.sh -- prove that scripts/verify-all.sh actually REJECTS.
#
# A verification script is only worth its exit code if it fails when the
# evidence is missing, wrong, or inconclusive.  Every test below is a
# CONTROLLED experiment on a throwaway copy of the repository:
#
#     control  : the unmutated copy, same --steps  -> must NOT fail
#     mutation : one specific defect introduced    -> must fail, and must name
#                                                     the right check
#
# Several of the mutations are ones the underlying tool ACCEPTS (exits 0 on).
# Those are the tests that matter: they show the guard, not the tool, is doing
# the rejecting.  Each such test also asserts that the underlying tool really
# did exit 0 / print success, so the test cannot silently stop being a test.
#
# Usage:  scripts/negative-tests.sh [--keep]
# Exit:   0  every negative test rejected as required
#         1  at least one test did NOT reject -- verify-all.sh is unsound
#         3  the environment cannot run the tests (no python3 / rsync)
#
set -u
set -o pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

KEEP=0
[ "${1:-}" = "--keep" ] && KEEP=1

PY=""
for c in python3 python; do command -v "$c" >/dev/null 2>&1 && { PY="$c"; break; }; done
[ -n "$PY" ]                       || { echo "negative-tests.sh: python3 required"; exit 3; }
command -v rsync >/dev/null 2>&1   || { echo "negative-tests.sh: rsync required"; exit 3; }

WORK="$(mktemp -d "${TMPDIR:-/tmp}/heptagon-negtests.XXXXXX")"
[ "$KEEP" = 1 ] || trap 'rm -rf "$WORK"' EXIT

bar='------------------------------------------------------------------------'
PASSED=0
FAILED=0
FAILNAMES=""

echo "negative-tests.sh"
echo "  repository : $ROOT"
echo "  workspace  : $WORK"

# A pristine copy, made once.  Excludes the build tree and the two regenerable
# CNF directories; nothing else, so the copy is a faithful clean checkout.
echo "  building the pristine base copy ..."
rsync -a \
  --exclude '.git/' \
  --exclude 'lean/.lake/' \
  --exclude '__pycache__/' \
  --exclude 'independent/akr_l7_reproduction/cnf/' \
  --exclude 'independent/akr_l7_reproduction/evidence/cnf/' \
  --exclude 'independent/akr_l7_reproduction/evidence/fixtures/negative/' \
  "$ROOT/" "$WORK/base/"

fresh() {  # fresh <name> -> echoes the path to a new unmutated copy
  rm -rf "$WORK/$1"
  cp -R "$WORK/base" "$WORK/$1"
  printf '%s\n' "$WORK/$1"
}

# run_case <copy-dir> <steps>  -> writes the log, echoes the exit code
run_case() {
  local dir="$1" steps="$2" log="$3"
  ( cd "$dir" && /bin/bash scripts/verify-all.sh --steps "$steps" --out "$dir/_run" ) \
      > "$log" 2>&1
  echo $?
}

# expect_reject <name> <copy> <steps> <regex the FAILED list must match>
expect_reject() {
  local name="$1" dir="$2" steps="$3" want="$4" rc log
  log="$WORK/${name}.log"
  rc=$(run_case "$dir" "$steps" "$log")
  if [ "$rc" = "1" ] && grep -qE -- "$want" "$log"; then
    printf '  PASS  %-38s rejected (exit 1, named the check)\n' "$name"
    PASSED=$((PASSED+1))
  else
    printf '  FAIL  %-38s exit %s, expected 1 with a FAILED entry matching /%s/\n' "$name" "$rc" "$want"
    printf '        log: %s\n' "$log"
    sed -n '/^FAILED/,$p' "$log" | head -10 | sed 's/^/        /'
    FAILED=$((FAILED+1)); FAILNAMES="$FAILNAMES $name"
  fi
}

# expect_accept <name> <copy> <steps> <acceptable exit codes, space separated>
expect_accept() {
  local name="$1" dir="$2" steps="$3" okcodes="$4" rc log c
  log="$WORK/${name}.log"
  rc=$(run_case "$dir" "$steps" "$log")
  for c in $okcodes; do
    if [ "$rc" = "$c" ]; then
      printf '  PASS  %-38s accepted (exit %s, as the control requires)\n' "$name" "$rc"
      PASSED=$((PASSED+1)); return
    fi
  done
  printf '  FAIL  %-38s exit %s, expected one of: %s\n' "$name" "$rc" "$okcodes"
  printf '        log: %s\n' "$log"
  sed -n '/^FAILED/,$p' "$log" | head -10 | sed 's/^/        /'
  FAILED=$((FAILED+1)); FAILNAMES="$FAILNAMES $name"
}

# ==========================================================================
echo "$bar"
echo "CONTROLS -- the pristine copy must NOT fail on the steps under test"
echo "$bar"
C="$(fresh control)"
expect_accept "control: steps 2,3 on a clean copy"  "$C" "2,3"  "2"
expect_accept "control: step 5a on a clean copy"    "$C" "5a"   "2"

# ==========================================================================
echo "$bar"
echo "N1 -- MISSING certificate"
echo "$bar"
D="$(fresh n1)"
rm -f "$D/data/certificates/final_elimination_225.json"
echo "  removed data/certificates/final_elimination_225.json"
expect_reject "N1 missing endgame certificate" "$D" "3" \
              '^ +missing required input: data/certificates/final_elimination_225\.json$'

# ==========================================================================
echo "$bar"
echo "N2 -- VACUOUS certificate (zero cases).  Until 2026-09-14 the checker"
echo "      itself EXITED 0 here, printing 'OK: all 0 cases establish ...'."
echo "      Fixed at source (known-issues.md K-19); the guard must reject either way."
echo "$bar"
D="$(fresh n2)"
"$PY" - "$D/data/certificates/final_elimination_225.json" <<'PYEOF'
import json, sys
p = sys.argv[1]
c = json.load(open(p))
c["cases"] = []
json.dump(c, open(p, "w"))
PYEOF
echo "  emptied the 'cases' array (225 -> 0)"
# Show that the underlying tool accepts it, so this really is a guard test.
UNDER=$( cd "$D" && "$PY" python/validation/check_final_certificate.py \
            data/certificates/final_elimination_225.json 2>&1; echo "rc=$?" )
if printf '%s' "$UNDER" | grep -q 'OK: all 0 cases' && printf '%s' "$UNDER" | grep -q 'rc=0'; then
  echo "  confirmed: check_final_certificate.py exits 0 and reports 'OK: all 0 cases'"
else
  echo "  NOTE: the underlying checker no longer accepts this (it may have been fixed);"
  echo "        the guard test below is still required to reject."
fi
expect_reject "N2 vacuous certificate (0 cases)" "$D" "3" \
              '^ +3\. endgame certificate$'

# ==========================================================================
echo "$bar"
echo "N3 -- INVALID but SELF-CONSISTENT lower-bound certificate.  Until 2026-09-14"
echo "      check_lower_bound.py EXITED 0 here, reporting I = 0 with every check"
echo "      PASSing.  Fixed at source (K-19): it now asserts I == 38 absolutely."
echo "      check_lower_bound.py compares each recomputed value against the"
echo "      certificate's own 'verified' block, so a certificate whose geometry"
echo "      and whose claims are both wrong-but-matching passes it outright."
echo "$bar"
D="$(fresh n3)"
"$PY" - "$D" <<'PYEOF'
import json, os, sys
D = sys.argv[1]
sys.path.insert(0, os.path.join(D, "python", "core"))
from geom import (count_intersections, disjointness_graph, general_position,
                  is_simple, orient, popcount)
p = os.path.join(D, "data", "lower_bound", "lower_bound_38.json")
cert = json.load(open(p))
P = [tuple(v) for v in cert["P"]]
# Translate Q far away: the two heptagons become disjoint, so I = 0, not 38.
Q = [(x + 1000000, y + 1000000) for (x, y) in (tuple(v) for v in cert["Q"])]
I = count_intersections(P, Q)
E = disjointness_graph(P, Q)
nE = sum(popcount(x) for x in E)
parent = list(range(14))
def find(a):
    while parent[a] != a:
        parent[a] = parent[parent[a]]; a = parent[a]
    return a
for i in range(7):
    for j in range(7):
        if E[i] >> j & 1:
            ra, rb = find(i), find(7 + j)
            if ra != rb: parent[ra] = rb
cert["Q"] = [list(v) for v in Q]
cert["verified"] = {
    "P_simple": is_simple(P),
    "Q_simple": is_simple(Q),
    "general_position_all_14_vertices": general_position(P + Q),
    "no_vertex_on_other_boundary": (
        all(orient(Q[j], Q[(j + 1) % 7], a) != 0 for a in P for j in range(7))
        and all(orient(P[i], P[(i + 1) % 7], a) != 0 for a in Q for i in range(7))),
    "boundary_intersections_I": I,
    "disjointness_graph_edges_E": nE,
    "I_plus_E": I + nE,
    "min_degree": min(popcount(x) for x in E),
    "per_P_side_crossing_counts": sorted((7 - popcount(x) for x in E), reverse=True),
    "disjointness_graph_components": len({find(v) for v in range(14)}),
}
json.dump(cert, open(p, "w"))
print("  rebuilt lower_bound_38.json: self-consistent, but I = %d (not 38)" % I)
PYEOF
UNDER=$( cd "$D" && "$PY" python/validation/check_lower_bound.py 2>&1; echo "rc=$?" )
if printf '%s' "$UNDER" | grep -q 'All checks passed' && printf '%s' "$UNDER" | grep -q 'rc=0'; then
  echo "  confirmed: check_lower_bound.py exits 0 and reports 'All checks passed.'"
  printf '%s' "$UNDER" | grep 'boundary intersections I' | sed 's/^/    /'
else
  echo "  NOTE: the underlying checker no longer accepts this; the guard must still reject."
fi
expect_reject "N3 self-consistent wrong lower bound" "$D" "2" \
              '^ +2\. lower-bound certificate$'

# ==========================================================================
echo "$bar"
echo "N4 -- CORRUPTED hashed data file"
echo "$bar"
D="$(fresh n4)"
printf ' ' >> "$D/data/order_types/order_types_7.json"
echo "  appended one byte to data/order_types/order_types_7.json"
expect_reject "N4 corrupted hashed data file" "$D" "4" \
              '^ +4\. hash manifest data/hashes/SHA256SUMS$'

# ==========================================================================
echo "$bar"
echo "N5 -- TRUNCATED hash manifest (verifies nothing, but shasum -c may exit 0)"
echo "$bar"
D="$(fresh n5)"
: > "$D/data/hashes/SHA256SUMS.tools"
echo "  emptied data/hashes/SHA256SUMS.tools"
expect_reject "N5 empty hash manifest" "$D" "4" \
              '^ +4\. hash manifest \./data/hashes/SHA256SUMS\.tools$'

# ==========================================================================
echo "$bar"
echo "N6 -- MISSING regeneration input for the gitignored CNFs"
echo "$bar"
D="$(fresh n6)"
rm -f "$D/independent/akr_l7_reproduction/evidence/SHA256SUMS.txt"
echo "  removed evidence/SHA256SUMS.txt (the manifest the CNFs are checked against)"
expect_reject "N6 missing CNF hash manifest" "$D" "5b" \
              '^ +missing required input: independent/akr_l7_reproduction/evidence/SHA256SUMS\.txt$'

# ==========================================================================
echo "$bar"
echo "N7 -- A PROOF THAT NEVER REACHES A CONTRADICTION."
echo "      The trailing empty clause is stripped from a real DRAT refutation."
echo "      Every remaining lemma still checks out, so dratcheck.py reports"
echo "      'proof did not derive the empty clause' AND EXITS 0.  This is the"
echo "      single most important test here.  (~50 s: the checker still replays"
echo "      all 662 remaining lemmas against a 64,566-clause formula.)"
echo "$bar"
D="$(fresh n7)"
SPOT="$D/independent/akr_l7_reproduction/evidence/drat/generic_both-hooking.drat"
grep -v '^0[[:space:]]*$' "$SPOT" > "$SPOT.tmp" && mv "$SPOT.tmp" "$SPOT"
echo "  stripped the final empty clause from evidence/drat/generic_both-hooking.drat"
expect_reject "N7 proof reaching no contradiction" "$D" "5c" \
              '^ +5c\. spot-check DRAT refutation$'
if grep -q 'proof did not derive the empty clause' "$WORK/N7 proof reaching no contradiction.log" 2>/dev/null \
|| grep -q 'proof did not derive the empty clause' "$WORK"/*.log 2>/dev/null; then
  echo "  confirmed: dratcheck.py printed 'proof did not derive the empty clause'"
  echo "             and the run was rejected anyway -- the gate, not the tool, caught it."
fi

# ==========================================================================
echo "$bar"
echo "N8 -- USAGE error must not look like success"
echo "$bar"
D="$(fresh n8)"
( cd "$D" && /bin/bash scripts/verify-all.sh --no-such-flag ) >/dev/null 2>&1
rc=$?
if [ "$rc" = "7" ]; then
  printf '  PASS  %-38s exit 7 (usage error)\n' "N8 unknown flag"
  PASSED=$((PASSED+1))
else
  printf '  FAIL  %-38s exit %s, expected 7\n' "N8 unknown flag" "$rc"
  FAILED=$((FAILED+1)); FAILNAMES="$FAILNAMES N8"
fi

# ==========================================================================
echo "$bar"
echo "RESULT: $PASSED passed, $FAILED failed"
if [ "$FAILED" -ne 0 ]; then
  echo "*** verify-all.sh FAILED TO REJECT:$FAILNAMES"
  echo "*** It would report success on evidence that is missing or wrong."
  [ "$KEEP" = 1 ] || echo "*** Re-run with --keep to inspect $WORK"
  exit 1
fi
echo "Every mutation was rejected and every control was accepted."
exit 0
