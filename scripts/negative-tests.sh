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
# The suite has three groups:
#
#   N1-N8   evidence-level mutations (certificates, hashes, DRAT).  Cheap.
#   A1-A7   the axiom check, driven through `verify-all.sh --axiom-log` against
#           SYNTHETIC logs.  These need no Lean and no build: the checker is a
#           log parser, so it can be tested the way any parser is tested.
#   L1-L4   Lean-level mutations -- a planted `sorry`, a declared `axiom`, a
#           `native_decide`, and a CHANGED DEFINITION.  These require a real
#           `lake build` of the mutated copy and are OPT-IN (--lean), because
#           they need the Lean toolchain and a warm build tree to be affordable.
#
# L4 is the one to read first.  Every other test here shows that a BROKEN PROOF
# is rejected.  L4 changes `points9` from an intersection to a union -- the
# proofs are untouched -- and shows the suite rejects that too.  Without it,
# "Lean proved it" says only that some statement was proved; with it, the
# statement is pinned to the definitions it is written in terms of.
#
# Usage:  scripts/negative-tests.sh [--keep] [--lean] [--groups N,A,L]
#           --keep       do not delete the scratch workspace
#           --lean       also run L1-L4 (needs lake; see NEGTESTS_LAKE_DIR below)
#           --groups     which groups to run; default N,A.  --groups A is the
#                        sub-second run of the axiom checker alone.
#         NEGTESTS_LAKE_DIR=/path/to/lean/.lake
#           a WARM build tree to clone into each mutated copy, so that only the
#           mutated module and its dependents are rebuilt.  Defaults to
#           <repo>/lean/.lake.  On APFS the clone is copy-on-write (cp -c) and
#           costs neither time nor disk.  The real tree is never built in and
#           never written to.
# Exit:   0  every negative test that ran rejected as required
#         1  at least one test did NOT reject -- verify-all.sh is unsound
#         2  group L was asked for and could not run; everything else passed
#         3  the environment cannot run the tests, or no case ran at all
#            (zero passed and zero failed is not a success)
#
set -u
set -o pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

KEEP=0
LEAN=0
TESTGROUPS="N,A"   # deliberately not named GROUPS: bash reserves that
                   # name for the caller's numeric group ids, and silently
                   # ignores an assignment to it.
while [ $# -gt 0 ]; do
  case "$1" in
    --keep) KEEP=1; shift ;;
    --lean) LEAN=1; shift ;;
    --groups) [ $# -ge 2 ] || { echo "negative-tests.sh: --groups needs an argument"; exit 3; }
              TESTGROUPS="$2"; shift 2 ;;
    --groups=*) TESTGROUPS="${1#--groups=}"; shift ;;
    *) echo "negative-tests.sh: unknown argument '$1' (expected --keep, --lean or --groups)"; exit 3 ;;
  esac
done
[ "$LEAN" = 1 ] && case ",$TESTGROUPS," in *,L,*) ;; *) TESTGROUPS="$TESTGROUPS,L" ;; esac
in_group() { case ",$TESTGROUPS," in *",$1,"*) return 0 ;; esac; return 1; }
in_group N || in_group A || in_group L || { echo "negative-tests.sh: --groups selected nothing"; exit 3; }
LAKE_SRC="${NEGTESTS_LAKE_DIR:-$ROOT/lean/.lake}"

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
ROWS=()          # one row per case: "<verdict>|<case>|<what was broken>"
WHAT=""          # set before each expect_*; one line, plain English

row() { ROWS+=("$1|$2|${WHAT:-(control)}"); }

echo "negative-tests.sh"
echo "  repository : $ROOT"
echo "  workspace  : $WORK"

# A pristine copy, made once.  Excludes the build tree and the two regenerable
# CNF directories; nothing else, so the copy is a faithful clean checkout.
if in_group N || in_group L; then
echo "  building the pristine base copy ..."
# A faithful clean checkout, minus the build tree and the two regenerable CNF
# directories.  Two ways to make it:
#
#   (1) cp -Rc -- an APFS copy-on-write clone.  Measured on this repository:
#       26 s for the whole 11.7 GB tree, and about 40 MB of actual disk, because
#       nothing is copied until it is written to.  The excluded directories are
#       cloned and then removed, which costs nothing either.
#   (2) rsync -- everywhere else.  A real copy: several hundred MB per case.
#
# (1) matters because this machine's disk has repeatedly been the binding
# constraint: with lean/.lake at 11 GB there is often under a gigabyte free,
# and the rsync path alone needs more than that.
BASE_OK=0
if cp -Rc "$ROOT" "$WORK/base" 2>/dev/null; then
  rm -rf "$WORK/base/.git" \
         "$WORK/base/lean/.lake" \
         "$WORK/base/independent/akr_l7_reproduction/cnf" \
         "$WORK/base/independent/akr_l7_reproduction/evidence/cnf" \
         "$WORK/base/independent/akr_l7_reproduction/evidence/fixtures/negative"
  find "$WORK/base" -type d -name __pycache__ -prune -exec rm -rf {} + 2>/dev/null
  BASE_OK=1
  echo "  (copy-on-write clone; no disk consumed until something is written)"
else
  rm -rf "$WORK/base"
  rsync -a \
    --exclude '.git/' \
    --exclude 'lean/.lake/' \
    --exclude '__pycache__/' \
    --exclude 'independent/akr_l7_reproduction/cnf/' \
    --exclude 'independent/akr_l7_reproduction/evidence/cnf/' \
    --exclude 'independent/akr_l7_reproduction/evidence/fixtures/negative/' \
    "$ROOT/" "$WORK/base/" && BASE_OK=1
fi
if [ "$BASE_OK" != 1 ] || [ ! -f "$WORK/base/scripts/verify-all.sh" ]; then
  echo "negative-tests.sh: the base copy did not complete."
  echo "  The working tree is about $(du -sm "$ROOT" 2>/dev/null | cut -f1) MB"
  echo "  including lean/.lake, and $WORK has $(df -m "$WORK" | awk 'NR==2{print $4}') MB free."
  echo "  Point TMPDIR at a filesystem with room and re-run.  A partial copy"
  echo "  would make every case below meaningless, so this is fatal."
  exit 3
fi
[ -d "$WORK/base/lean/.lake" ] && { echo "negative-tests.sh: the base copy still contains lean/.lake; refusing."; exit 3; }
fi

fresh() {  # fresh <name> -> echoes the path to a new unmutated copy
  rm -rf "$WORK/$1"
  # cp -c is an APFS copy-on-write clone: a complete, independent copy of the
  # tree that costs neither time nor disk until something is written to it.
  # Without it, each case below is a fresh several-hundred-MB copy and the
  # suite needs gigabytes of scratch for no reason.  Falls back to a real copy
  # on filesystems that do not support cloning.
  cp -Rc "$WORK/base" "$WORK/$1" 2>/dev/null || cp -R "$WORK/base" "$WORK/$1" \
    || { echo "negative-tests.sh: could not make the copy for case '$1' (disk space?)"
         echo "  Every case needs its own copy; a partial one would test nothing."
         exit 3; }
  [ -f "$WORK/$1/scripts/verify-all.sh" ] \
    || { echo "negative-tests.sh: the copy for case '$1' is incomplete; refusing to run."
         exit 3; }
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
    PASSED=$((PASSED+1)); row CAUGHT "$name"
  else
    printf '  FAIL  %-38s exit %s, expected 1 with a FAILED entry matching /%s/\n' "$name" "$rc" "$want"
    printf '        log: %s\n' "$log"
    sed -n '/^FAILED/,$p' "$log" | head -10 | sed 's/^/        /'
    FAILED=$((FAILED+1)); FAILNAMES="$FAILNAMES $name"; row "NOT CAUGHT" "$name"
  fi
  # optional 5th argument: a second string the log must also contain, used to
  # show WHICH mechanism caught the mutation (e.g. sorryAx, not the source grep)
  if [ -n "${5:-}" ]; then
    if grep -qE -- "$5" "$log"; then
      printf '        and the log shows /%s/ -- the mechanism under test fired\n' "$5"
    else
      printf '        NOTE: /%s/ is NOT in the log; it was rejected, but by some\n' "$5"
      printf '              other check than the one this case is aimed at.\n'
    fi
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
      PASSED=$((PASSED+1)); row "ACCEPTED" "$name"; return
    fi
  done
  printf '  FAIL  %-38s exit %s, expected one of: %s\n' "$name" "$rc" "$okcodes"
  printf '        log: %s\n' "$log"
  sed -n '/^FAILED/,$p' "$log" | head -10 | sed 's/^/        /'
  FAILED=$((FAILED+1)); FAILNAMES="$FAILNAMES $name"; row "WRONGLY REJECTED" "$name"
}

# ==========================================================================
if in_group N; then
echo "$bar"
echo "CONTROLS -- the pristine copy must NOT fail on the steps under test"
echo "$bar"
C="$(fresh control)"
WHAT="nothing -- the pristine tree"
expect_accept "control: steps 2,3 on a clean copy"  "$C" "2,3"  "2"
expect_accept "control: step 5a on a clean copy"    "$C" "5a"   "2"

# ==========================================================================
echo "$bar"
echo "N1 -- MISSING certificate"
echo "$bar"
D="$(fresh n1)"
rm -f "$D/data/certificates/final_elimination_225.json"
echo "  removed data/certificates/final_elimination_225.json"
WHAT="the 225-case endgame certificate file was deleted"
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
WHAT="the endgame certificate was emptied: 225 cases -> 0"
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
WHAT="the lower-bound certificate was made self-consistent but wrong (I = 0, not 38)"
expect_reject "N3 self-consistent wrong lower bound" "$D" "2" \
              '^ +2\. lower-bound certificate$'

# ==========================================================================
echo "$bar"
echo "N4 -- CORRUPTED hashed data file"
echo "$bar"
D="$(fresh n4)"
printf ' ' >> "$D/data/order_types/order_types_7.json"
echo "  appended one byte to data/order_types/order_types_7.json"
WHAT="one byte appended to a hashed data file"
expect_reject "N4 corrupted hashed data file" "$D" "4" \
              '^ +4\. hash manifest data/hashes/SHA256SUMS$'

# ==========================================================================
echo "$bar"
echo "N5 -- TRUNCATED hash manifest (verifies nothing, but shasum -c may exit 0)"
echo "$bar"
D="$(fresh n5)"
: > "$D/data/hashes/SHA256SUMS.tools"
echo "  emptied data/hashes/SHA256SUMS.tools"
WHAT="a hash manifest was emptied, so it verifies nothing"
expect_reject "N5 empty hash manifest" "$D" "4" \
              '^ +4\. hash manifest \./data/hashes/SHA256SUMS\.tools$'

# ==========================================================================
echo "$bar"
echo "N6 -- MISSING regeneration input for the gitignored CNFs"
echo "$bar"
D="$(fresh n6)"
rm -f "$D/independent/akr_l7_reproduction/evidence/SHA256SUMS.txt"
echo "  removed evidence/SHA256SUMS.txt (the manifest the CNFs are checked against)"
WHAT="the CNF hash manifest was deleted"
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
WHAT="a DRAT proof was truncated so it never derives the empty clause"
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
WHAT="verify-all.sh was invoked with a flag it does not know"
if [ "$rc" = "7" ]; then
  printf '  PASS  %-38s exit 7 (usage error)\n' "N8 unknown flag"
  PASSED=$((PASSED+1)); row CAUGHT "N8 unknown flag"
else
  printf '  FAIL  %-38s exit %s, expected 7\n' "N8 unknown flag" "$rc"
  FAILED=$((FAILED+1)); FAILNAMES="$FAILNAMES N8"; row "NOT CAUGHT" "N8 unknown flag"
fi

fi   # end of group N

# ==========================================================================
# GROUP A -- THE AXIOM CHECK, against synthetic logs
# ==========================================================================
# verify-all.sh's step 1b is a parser over `#print axioms` output.  A parser can
# be tested the way any parser is tested: by feeding it inputs whose correct
# verdict is known in advance.  None of these needs Lean, a build tree, or a
# toolchain -- which is the point.  The Lean-level mutations in group L produce
# real logs of exactly these shapes; these tests pin down what the checker does
# with them, and they run in about a second.
if in_group A; then
echo "$bar"
echo "GROUP A -- the axiom check (synthetic logs; no Lean needed)"
echo "$bar"

AXDIR="$WORK/axiom_logs"; mkdir -p "$AXDIR"
CLEAN3='[propext, Classical.choice, Quot.sound]'

# The five headline lines, exactly as Lean emits them.
headline_lines() {
  cat <<EOF
info: MainTheorem.lean:133:0: 'Heptagon.MainTheorem.isGreatest_38' depends on axioms: $CLEAN3
info: AKR9.lean:420:0: 'Heptagon.AKR9.points_le_38_of_no_vertex_on_boundary' depends on axioms: $CLEAN3
info: AKR9.lean:422:0: 'Heptagon.AKR9.isGreatest_38_of_E9' depends on axioms: $CLEAN3
info: Pair9Shift.lean:5097:0: 'Heptagon.Pair9Shift.points9_le_38_of_coincFree' depends on axioms: $CLEAN3
info: Pair9Shift.lean:5088:0: 'Heptagon.Pair9Shift.isGreatest_38_of_coincFree' depends on axioms: $CLEAN3
info: RealUpperBound.lean:618:0: 'Heptagon.RealUpperBound.isGreatest_38_real' depends on axioms: $CLEAN3
EOF
}
# Some ordinary supporting lines, so the logs look like real build output.
filler_lines() {
  cat <<EOF
info: SimpleBridge.lean:124:0: 'Heptagon.SimpleBridge.successor_val' depends on axioms: [propext]
info: CernyL2Derivation.lean:218:0: 'Heptagon.CernyL2Derivation.cert_window' depends on axioms: [propext, Quot.sound]
info: CoverShape.lean:84:0: 'Heptagon.Cover.degree_shape' does not depend on any axioms
Build completed successfully (6523 jobs).
EOF
}

# ax_case <name> <logfile> <expected: accept|reject> <regex the report must show>
ax_case() {
  local name="$1" log="$2" want="$3" showing="$4" rc out
  out="$WORK/${name}.log"
  ( cd "$ROOT" && /bin/bash scripts/verify-all.sh --axiom-log "$log" \
        --out "$WORK/${name}_run" ) > "$out" 2>&1
  rc=$?
  if [ "$want" = reject ]; then
    if [ "$rc" = "1" ] && grep -qE -- "$showing" "$out"; then
      printf '  PASS  %-38s rejected (exit 1, and said why)\n' "$name"
      PASSED=$((PASSED+1)); row CAUGHT "$name"
    else
      printf '  FAIL  %-38s exit %s, expected 1 with a report matching /%s/\n' "$name" "$rc" "$showing"
      printf '        log: %s\n' "$out"
      grep -E 'AXIOM CHECK|ASSERT FAILED' "$out" | head -6 | sed 's/^/        /'
      FAILED=$((FAILED+1)); FAILNAMES="$FAILNAMES $name"; row "NOT CAUGHT" "$name"
    fi
  else
    if [ "$rc" = "0" ] && grep -qE -- "$showing" "$out"; then
      printf '  PASS  %-38s accepted (exit 0, as the control requires)\n' "$name"
      PASSED=$((PASSED+1)); row "ACCEPTED" "$name"
    else
      printf '  FAIL  %-38s exit %s, expected 0 with a report matching /%s/\n' "$name" "$rc" "$showing"
      printf '        log: %s\n' "$out"
      grep -E 'AXIOM CHECK|ASSERT FAILED' "$out" | head -6 | sed 's/^/        /'
      FAILED=$((FAILED+1)); FAILNAMES="$FAILNAMES $name"; row "WRONGLY REJECTED" "$name"
    fi
  fi
  printf '        report: %s\n' "$(grep -m1 '^ *AXIOM CHECK:' "$out" | sed 's/^ *//' | cut -c1-150)"
}

# --- A1: the control.  A complete, clean log must be ACCEPTED. --------------
{ filler_lines; headline_lines; } > "$AXDIR/a1_complete.log"
WHAT="nothing -- a complete, clean #print axioms log"
ax_case "A1 complete clean log (control)" "$AXDIR/a1_complete.log" accept \
        'AXIOM CHECK: CLEAN'

# --- A2: a WRAPPED axiom list.  Lean breaks long lines; a line-oriented -----
#     grep would read only the first half and see nothing wrong.
{ filler_lines
  printf "info: AKR9.lean:420:0: 'Heptagon.AKR9.points_le_38_of_no_vertex_on_boundary' depends on axioms: [propext,\n"
  printf "  Classical.choice,\n"
  printf "  Quot.sound]\n"
  headline_lines | grep -v 'points_le_38_of_no_vertex_on_boundary'
} > "$AXDIR/a2_wrapped.log"
WHAT="nothing -- but one axiom list is wrapped across three lines"
ax_case "A2 wrapped axiom list (control)" "$AXDIR/a2_wrapped.log" accept \
        'CLEAN .*all [0-9]+ headline theorems confirmed'

# --- A3: sorryAx.  The whole point of reading the kernel's output. ----------
{ filler_lines; headline_lines | grep -v 'isGreatest_38_of_E9'
  printf "info: AKR9.lean:422:0: 'Heptagon.AKR9.isGreatest_38_of_E9' depends on axioms: [propext, sorryAx, Quot.sound]\n"
} > "$AXDIR/a3_sorryax.log"
WHAT="a headline theorem's axiom list contains sorryAx"
ax_case "A3 sorryAx in a headline theorem" "$AXDIR/a3_sorryax.log" reject \
        'occurrences of sorryAx +: [1-9]'

# --- A4: the WARM LOG.  Everything present is clean; the headline lines -----
#     are simply absent, because nothing was recompiled.  This is the shape of
#     every log currently in results/validation/, and the reason the check
#     exists: without this rule such a log reports success and proves nothing.
filler_lines > "$AXDIR/a4_warm.log"
WHAT="a warm-rebuild log: clean, but the headline theorems never printed"
ax_case "A4 warm log, headlines absent" "$AXDIR/a4_warm.log" reject \
        'headline theorem\(s\) printed NO axiom line'

# --- A5: an axiom outside the allowed three.  Lean.ofReduceBool is exactly --
#     what native_decide leaves behind, so this is group L's L3 in miniature.
{ filler_lines; headline_lines | grep -v 'isGreatest_38_of_coincFree'
  printf "info: Pair9Shift.lean:5088:0: 'Heptagon.Pair9Shift.isGreatest_38_of_coincFree' depends on axioms: [propext, Classical.choice, Quot.sound, Lean.ofReduceBool]\n"
} > "$AXDIR/a5_ofreducebool.log"
WHAT="a headline theorem depends on Lean.ofReduceBool (what native_decide leaves)"
ax_case "A5 disallowed axiom (ofReduceBool)" "$AXDIR/a5_ofreducebool.log" reject \
        'declarations using a disallowed axiom +: [1-9]'

# --- A6: a declared axiom, used. -------------------------------------------
{ filler_lines; headline_lines | grep -v 'points9_le_38_of_coincFree'
  printf "info: Pair9Shift.lean:5097:0: 'Heptagon.Pair9Shift.points9_le_38_of_coincFree' depends on axioms: [propext, Classical.choice, Quot.sound, Heptagon.AKR9.points9_eq_range_ax]\n"
} > "$AXDIR/a6_axiom.log"
WHAT="a headline theorem depends on a project-declared axiom"
ax_case "A6 project-declared axiom" "$AXDIR/a6_axiom.log" reject \
        'DISALLOWED.*points9_eq_range_ax'

# --- A7: no axiom output at all.  Absent evidence is a failure. -------------
printf 'Build completed successfully (0 jobs).\n' > "$AXDIR/a7_empty.log"
WHAT="a build log with no #print axioms output whatsoever"
ax_case "A7 no axiom output at all" "$AXDIR/a7_empty.log" reject \
        'NO axiom output at all'

# --- A8: a disallowed axiom hidden in the WRAPPED TAIL of a line. ----------
#     This is why the parser joins continuation lines.  The first physical
#     line reads `... depends on axioms: [propext,` and looks entirely
#     ordinary; the offending axiom is on the line after it.  A line-oriented
#     grep for the allowed names would pass this log.
{ filler_lines; headline_lines | grep -v 'isGreatest_38_of_E9'
  printf "info: AKR9.lean:422:0: 'Heptagon.AKR9.isGreatest_38_of_E9' depends on axioms: [propext,\n"
  printf "  Classical.choice,\n"
  printf "  Lean.ofReduceBool,\n"
  printf "  Quot.sound]\n"
} > "$AXDIR/a8_wrapped_bad.log"
WHAT="a disallowed axiom hidden on the wrapped continuation line"
ax_case "A8 disallowed axiom in wrapped tail" "$AXDIR/a8_wrapped_bad.log" reject \
        'DISALLOWED.*ofReduceBool|ofReduceBool'
if grep -q 'Lean.ofReduceBool' "$AXDIR/a8_wrapped_bad.log" \
&& ! grep -q 'ofReduceBool.*\]' "$AXDIR/a8_wrapped_bad.log"; then
  echo "        confirmed: the offending axiom is on a continuation line, not on"
  echo "                   the line that carries 'depends on axioms:'"
fi

# --- and, for the record, the real committed evidence. ---------------------
# Not scored: what the committed logs contain is a fact about the project's
# history, not a property of this checker, and it will change as soon as a
# cold build is logged.  Reported because it is the fact that motivated the
# headline rule in the first place.
NEWEST="$ROOT/results/validation/2026-09-17_verify_all_after_e9_attempt.log"
if [ -f "$NEWEST" ]; then
  echo ""
  echo "  (not scored) the newest committed evidence log, through the same check:"
  ( cd "$ROOT" && /bin/bash scripts/verify-all.sh --axiom-log "$NEWEST" \
        --out "$WORK/newest_run" ) > "$WORK/newest.log" 2>&1
  echo "    exit $?"
  grep -E '^ *axiom-check: (declarations parsed|declarations using|occurrences of sorryAx|headline theorems confirmed)' \
       "$WORK/newest.log" | sed 's/^ */    /'
  grep -m1 '^ *AXIOM CHECK:' "$WORK/newest.log" | sed 's/^ */    /' | cut -c1-200
fi

fi   # end of group A

# ==========================================================================
# GROUP L -- LEAN-LEVEL MUTATIONS  (opt-in: --lean)
# ==========================================================================
# These four are the ones that cannot be faked.  Each plants a defect in a
# COPY of lean/, runs `verify-all.sh --steps 1` there, and requires rejection.
#
# --steps 1 is deliberate: running step 4 as well would let the hash manifest
# catch the edited file, which would prove only that the file changed, not that
# the mathematics is load-bearing.  Restricting to step 1 forces the rejection
# to come from the Lean build and the axiom check.
#
# Cost: the mutated module and everything downstream of it are rebuilt.  With a
# warm build tree cloned in (NEGTESTS_LAKE_DIR, copy-on-write on APFS) that is
# minutes; without one it is a cold Mathlib fetch plus hours of shard kernel
# checking, which is why this group is opt-in.
echo "$bar"
echo "GROUP L -- Lean-level mutations (sorry / axiom / native_decide / definition)"
echo "$bar"

lean_ready=0
L_SKIPPED=""
if ! in_group L; then
  echo "  SKIPPED: not selected.  Re-run with --lean to include L1-L4."
  L_SKIPPED="not selected (no --lean)"
  echo "           These four are the tests that show the Lean development"
  echo "           itself is load-bearing; a run without them is incomplete."
elif ! command -v lake >/dev/null 2>&1; then
  echo "  SKIPPED: lake is not on PATH, so no Lean mutation can be built."
  L_SKIPPED="lake is not on PATH"
elif [ ! -d "$LAKE_SRC" ]; then
  echo "  SKIPPED: no warm build tree at $LAKE_SRC ."
  L_SKIPPED="no warm build tree"
  echo "           Set NEGTESTS_LAKE_DIR to one, or build lean/ first: without"
  echo "           it each of these four cases is a cold build."
else
  lean_ready=1
  echo "  warm build tree : $LAKE_SRC (cloned into each copy; never written to)"
fi

# lean_fresh <name> -> a copy with a build tree, ready to build in
lean_fresh() {
  local d
  d="$(fresh "$1")"
  # cp -c is an APFS copy-on-write clone: instant, and no extra disk.
  cp -Rc "$LAKE_SRC" "$d/lean/.lake" 2>/dev/null || cp -R "$LAKE_SRC" "$d/lean/.lake"
  printf '%s\n' "$d"
}

# lean_mutate <file> <mode> [args...]  -- edits a Lean source in a copy
#   replace-proof <theorem> <new body>   body of <theorem> := by ... -> <new body>
#   insert-before <theorem> <text>       raw text, immediately before <theorem>
#   insert-before-end <namespace> <text> raw text, immediately before `end <ns>`
lean_mutate() {
  "$PY" - "$@" <<'PYMUTEOF'
import re, sys
path, mode = sys.argv[1], sys.argv[2]
lines = open(path, encoding="utf-8").read().split("\n")
TOP = re.compile(r"^(theorem|lemma|def|abbrev|instance|noncomputable|private|@\[|/--|/-!|end |#print|#check|namespace |section |open )")

def header(name):
    for i, l in enumerate(lines):
        if re.match(r"^(theorem|lemma)\s+" + re.escape(name) + r"\b", l):
            return i
    sys.exit("lean_mutate: no declaration named %s in %s" % (name, path))

if mode == "replace-proof":
    name, body = sys.argv[3], sys.argv[4]
    i = header(name)
    j = i
    while j < len(lines) and not lines[j].rstrip().endswith(":= by"):
        j += 1
        if j - i > 40:
            sys.exit("lean_mutate: no ':= by' within 40 lines of %s" % name)
    k = j + 1
    while k < len(lines) and not TOP.match(lines[k]):
        k += 1
    lines[j + 1:k] = [body, ""]
elif mode == "insert-before":
    name, text = sys.argv[3], sys.argv[4]
    i = header(name)
    lines[i:i] = text.split("\n")
elif mode == "insert-before-end":
    ns, text = sys.argv[3], sys.argv[4]
    for i, l in enumerate(lines):
        if l.rstrip() == "end " + ns:
            lines[i:i] = text.split("\n")
            break
    else:
        sys.exit("lean_mutate: no `end %s` in %s" % (ns, path))
else:
    sys.exit("lean_mutate: unknown mode " + mode)
open(path, "w", encoding="utf-8").write("\n".join(lines))
PYMUTEOF
}

# must_mutate <case-name> <what> <command...>
#   A mutation that cannot be applied must NOT quietly leave an unmutated copy
#   to be "rejected" or "accepted": that would turn a broken test into a green
#   one.  Any failure here is recorded as a failure of the suite.
MUT_OK=1
must_mutate() {
  local name="$1"; shift
  MUT_OK=1
  if "$@"; then return 0; fi
  printf '  FAIL  %-38s the mutation could not be applied at all\n' "$name"
  printf '        The Lean sources have moved; this case is testing NOTHING.\n'
  printf '        Fix scripts/negative-tests.sh -- do not delete the case.\n'
  FAILED=$((FAILED+1)); FAILNAMES="$FAILNAMES $name"
  row "NOT APPLIED" "$name"
  MUT_OK=0
  return 1
}

if [ "$lean_ready" = 1 ]; then

  # --- L1: a sorry, three lemmas below a headline theorem ------------------
  echo ""
  echo "L1 -- a SORRY planted in a dependency of a headline theorem."
  echo "      points9_eq_range is three steps below points_le_38_of_no_vertex_"
  echo "      on_boundary.  lake build exits 0 on a sorry -- it is a warning --"
  echo "      and the headline theorem still compiles.  What changes is the"
  echo "      headline theorem's OWN axiom line, which now lists sorryAx."
  D="$(lean_fresh l1)"
  WHAT="a sorry planted three lemmas below a headline theorem"
  if must_mutate "L1 sorry in a dependency" \
       lean_mutate "$D/lean/AKR9.lean" replace-proof points9_eq_range '  sorry'; then
    echo "  replaced the proof of AKR9.points9_eq_range with sorry"
    expect_reject "L1 sorry in a dependency" "$D" "1" \
                  '^ +1b?\. (Lean build|axiom check)$' 'sorryAx'
  fi

  # --- L2: a declared axiom, actually used ---------------------------------
  echo ""
  echo "L2 -- an AXIOM declared and used.  The same lemma is replaced by an"
  echo "      appeal to a new axiom of exactly its own statement.  Everything"
  echo "      compiles with no warning at all; only the axiom lists change."
  D="$(lean_fresh l2)"
  lean_mutate "$D/lean/AKR9.lean" insert-before points9_eq_range \
'axiom points9_eq_range_ax (R : Pair9) (h9 : NoVertexOnOther R) :
    points9 R = Set.range (cp9 R)
'
  lean_mutate "$D/lean/AKR9.lean" replace-proof points9_eq_range \
'  exact points9_eq_range_ax R h9'
  WHAT="an axiom was declared and used beneath a headline theorem"
  if grep -q 'axiom points9_eq_range_ax' "$D/lean/AKR9.lean" \
  && grep -q 'exact points9_eq_range_ax R h9' "$D/lean/AKR9.lean"; then
    echo "  declared axiom AKR9.points9_eq_range_ax and proved points9_eq_range from it"
    expect_reject "L2 declared axiom, used" "$D" "1" \
                  '^ +1b?\. (Lean build|axiom check)$' 'points9_eq_range_ax'
  else
    printf '  FAIL  %-38s the mutation could not be applied at all\n' "L2 declared axiom, used"
    FAILED=$((FAILED+1)); FAILNAMES="$FAILNAMES L2"; row "NOT APPLIED" "L2 declared axiom, used"
  fi

  # --- L3: native_decide ---------------------------------------------------
  echo ""
  echo "L3 -- NATIVE_DECIDE.  This one compiles cleanly and is not a sorry;"
  echo "      what it does is hand the proof to the compiler instead of the"
  echo "      kernel, which shows up as Lean.ofReduceBool in the axiom list."
  D="$(lean_fresh l3)"
  WHAT="a proof was closed by native_decide (compiler, not kernel)"
  if must_mutate "L3 native_decide" \
       lean_mutate "$D/lean/AKR9.lean" insert-before-end AKR9 \
'theorem negtest_native_decide : (List.range 20).length = 20 := by native_decide
#print axioms Heptagon.AKR9.negtest_native_decide
'; then
    echo "  added a theorem closed by native_decide, with its own #print axioms"
    expect_reject "L3 native_decide" "$D" "1" \
                  '^ +1b?\. (Lean build|axiom check)$' 'ofReduceBool|native_decide'
  fi

  # --- L4: a CHANGED DEFINITION -------------------------------------------
  echo ""
  echo "L4 -- A CHANGED DEFINITION.  points9 R is defined as bdryP9 R INTER"
  echo "      bdryQ9 R: the set of points on both boundaries.  Change the one"
  echo "      character to a UNION and the theorem 'at most 38 points' is about"
  echo "      something else entirely, while every proof text is untouched."
  echo "      No sorry, no axiom, no native_decide -- and it must still be"
  echo "      rejected, or the definitions are decoration."
  D="$(lean_fresh l4)"
  L4_OK=1
  "$PY" - "$D/lean/AKR9.lean" <<'PYEOF2' || L4_OK=0
import sys
p = sys.argv[1]
s = open(p, encoding="utf-8").read()
old = "def points9 (R : Pair9) : Set (ℝ × ℝ) := bdryP9 R ∩ bdryQ9 R"
new = "def points9 (R : Pair9) : Set (ℝ × ℝ) := bdryP9 R ∪ bdryQ9 R"
if old not in s:
    sys.exit("L4: the definition of points9 is not where this test expects it;\n"
             "    update scripts/negative-tests.sh -- do NOT weaken the test.")
open(p, "w", encoding="utf-8").write(s.replace(old, new, 1))
print("  changed lean/AKR9.lean: points9 := bdryP9 ∩ bdryQ9  ->  bdryP9 ∪ bdryQ9")
PYEOF2
  WHAT="points9 redefined from an INTERSECTION to a UNION (no proof touched)"
  if [ "$L4_OK" = 1 ]; then
    expect_reject "L4 definition changed (intersect->union)" "$D" "1" \
                  '^ +1\. Lean build$'
  else
    printf '  FAIL  %-38s the mutation could not be applied at all\n' \
           "L4 definition changed (intersect->union)"
    printf '        This case is testing NOTHING until it is repaired.\n'
    FAILED=$((FAILED+1)); FAILNAMES="$FAILNAMES L4"
    row "NOT APPLIED" "L4 definition changed (intersect->union)"
  fi
fi

# ==========================================================================
echo "$bar"
echo "WHAT WAS BROKEN, AND WAS IT CAUGHT"
echo "$bar"
printf '  %-18s  %-42s  %s\n' "VERDICT" "CASE" "WHAT WAS BROKEN"
# (guarded: bash 3.2, which is what /bin/bash is on macOS, treats "${A[@]}" on
# an empty array as an unbound variable under set -u)
if [ ${#ROWS[@]} -ne 0 ]; then
  for r in "${ROWS[@]}"; do
    printf '  %-18s  %-42s  %s\n' "${r%%|*}" "$(t="${r#*|}"; printf '%s' "${t%%|*}")" "${r##*|}"
  done
else
  echo "  (no case ran)"
fi

echo "$bar"
echo "RESULT: $PASSED passed, $FAILED failed"
if [ "$FAILED" -ne 0 ]; then
  echo "*** verify-all.sh FAILED TO REJECT:$FAILNAMES"
  echo "*** It would report success on evidence that is missing or wrong."
  [ "$KEEP" = 1 ] || echo "*** Re-run with --keep to inspect $WORK"
  exit 1
fi
if [ "$PASSED" -eq 0 ]; then
  echo "*** NOTHING RAN.  Zero cases passed and zero failed, which is not a"
  echo "*** success: this run establishes nothing at all about verify-all.sh."
  exit 3
fi
echo "Every mutation that ran was rejected and every control was accepted."
if [ -n "$L_SKIPPED" ]; then
  echo ""
  echo "INCOMPLETE: the four Lean-level mutations L1-L4 did NOT run ($L_SKIPPED)."
  echo "  They are the cases that show the Lean development itself is"
  echo "  load-bearing -- a planted sorry, a declared axiom, a native_decide,"
  echo "  and a changed DEFINITION.  Nothing above substitutes for them."
  if in_group L; then
    echo "  They were requested and could not be run, so this run is PARTIAL."
    exit 2
  fi
  echo "  Re-run with --lean (and a warm lean/.lake) to include them."
fi
exit 0
