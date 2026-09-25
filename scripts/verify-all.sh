#!/usr/bin/env bash
#
# verify-all.sh -- single verification entry point for heptagon-intersections.
#
# Runs, from a clean clone, in this order:
#
#   1. Lean build                  cd lean && lake build
#                                  and  lake build Headline  -- defaultTargets
#                                  omits the AKR section-9 modules, so a bare
#                                  `lake build` never compiles the headline
#                                  theorems at all
#   1b. axiom check                the kernel's own answer: every
#                                  `depends on axioms:` line the build emitted
#   2. lower-bound certificate     python3 python/validation/check_lower_bound.py
#   3. endgame certificate         python3 python/validation/check_final_certificate.py \
#                                      data/certificates/final_elimination_225.json
#   4. data hash manifests         data/hashes/SHA256SUMS{,.tools,.lean,
#                                                         .implementation_b,.order_type_audit}
#   5. A7 evidence                 5a self-test of this script's DRAT gate
#                                  5b regenerate the gitignored CNFs (into scratch)
#                                  5c one project DRAT refutation through the gate
#                                  5d independent/akr_l7_reproduction/reproduce.sh
#   6. Implementation B            build + unit tests + full run + set comparison
#                                  (needs a C++17 compiler)
#
# Usage:
#     scripts/verify-all.sh                 # everything (steps 1-6)
#     scripts/verify-all.sh --quick         # sub-minute checks only (see below)
#     scripts/verify-all.sh --steps 2,3,4   # named steps only (always PARTIAL)
#     scripts/verify-all.sh --steps 5c      # a single sub-step (5a-5d are addressable)
#     scripts/verify-all.sh --out DIR       # where to write this run's logs
#     scripts/verify-all.sh --axiom-log FILE # ONLY the axiom check (step 1b),
#                                           # against an EXISTING build log --
#                                           # needs no Lean and no rebuild
#     scripts/verify-all.sh --help
#
# OUTCOME CATEGORIES  (four distinct things, four distinct exit codes)
#
#   COMPLETE SUCCESS      exit 0   every step 1-6 ran and every assertion held
#   FAILED CHECK          exit 1   something that ran did not produce the
#                                  required result -- INCLUDING the case where a
#                                  required input file is absent.  Missing
#                                  evidence is a FAILURE, never a skip.
#   PARTIAL VERIFICATION  exit 2   everything that ran passed, but at least one
#                                  step was deliberately not run (--quick,
#                                  --steps, or reproduce.sh's own PARTIAL)
#   MISSING PREREQUISITE  exit 3-6 a TOOL the environment does not provide:
#                                    3  no C++17 compiler          (blocks 6)
#                                    4  no python3                 (blocks 2,3,5,6)
#                                    5  no lake / Lean toolchain   (blocks 1)
#                                    6  no shasum / sha256sum      (blocks 4)
#                        exit 7   usage error (bad command line)
#
#   Precedence: 1 beats 3-6, which beat 2.  A run that FAILS never reports
#   PARTIAL, and a run that is PARTIAL never reports 0.
#
# --quick runs steps 1-4 and step 5a.  It defers 5b-5d and 6.  It also defers
# step 1 when Mathlib has never been built here, because that is a 5-minute,
# 1.4 GB cold download (measured; see lean/README.md).  Any deferral makes the
# run PARTIAL (exit 2), never 0.  Step 5a costs under a tenth of a second and
# runs unconditionally: it is the self-test of the guard the rest of this
# script depends on, and a verifier whose guard is untested is not a verifier.
#
# ---------------------------------------------------------------------------
# WHY THIS SCRIPT NEVER TRUSTS AN EXIT CODE ON ITS OWN
# ---------------------------------------------------------------------------
# Several tools in this repository return 0 for outcomes that are NOT success.
# Each is handled by asserting on the tool's OUTPUT as well as its status:
#
#   evidence/tools/dratcheck.py
#       exits 0 when a proof is well-formed but never derives the empty clause.
#       It prints "*** proof did not derive the empty clause ***" and returns 0.
#       => drat_gate() below requires the literal string "PROOF VERIFIED
#          (UNSAT)" *and* "empty clause derived: True" *and* exit 0.  Step 5a
#          proves the gate rejects such a proof, using one built on the spot.
#
#   python/validation/check_lower_bound.py
#       compares each recomputed quantity against the certificate's OWN
#       "verified" block.  A certificate that consistently claimed 12 crossings
#       would pass.  => step 2 additionally asserts the absolute values
#       I = 38, I + |E| = 49, min degree = 1.
#
#   python/validation/check_final_certificate.py
#       a certificate with zero cases prints "OK: all 0 cases establish ..."
#       and exits 0.  => step 3 additionally asserts "cases checked : 225".
#
#   independent/implementation_b/compare_with_certificate.py
#       two EMPTY sets are equal, so an empty Implementation B output would
#       print "EXACT SET EQUALITY" and exit 0.  => step 6 additionally asserts
#       225 triples on both sides and 121 distinct graphs.
#
#   independent/implementation_b/count_check.py
#       has no assertion and no sys.exit at all; it always exits 0.
#       => step 6 asserts the printed count is 13,003,620.
#
#   independent/akr_l7_reproduction/reproduce.sh
#       its step() helper is `if cmd | tee log; then`, and the script does not
#       set -o pipefail, so the pipeline status is tee's.  A failing check is
#       recorded in the printed output but not in the status.  (That script is
#       owned elsewhere and may have been repaired since; this script does not
#       assume either way.)  => step 5d requires exit 0 or 2, AND the absence of
#       any "*** FAIL" line, AND an explicit success banner.
#
#   lake build
#       exits 0 on a proof containing `sorry`; it is only a warning.
#       => step 1 forbids "declaration uses 'sorry'" in the build output and
#          scans the sources for sorry / admit / native_decide / axiom.
#
#   #print axioms
#       prints only for modules that are actually IN the build; one that is
#       never compiled never reports, while the run still exits 0.  Warmth is
#       not the issue -- Lake replays cached diagnostics, so a warm build does
#       print these lines (2026-09-24_headline_build.log is fully warm, 271
#       `Replayed` and 0 `Built`, and carries all 408 of them).  The trap is
#       coverage: the newest pre-`Headline` log in results/validation/ carried
#       60 `depends on axioms` lines against 576 `#print axioms` directives in
#       the sources, and NOT ONE of the four headline theorems among them,
#       because defaultTargets omits those modules and a bare `lake build`
#       never compiled them.  => step 1b parses those lines, rejects any axiom outside
#       {propext, Classical.choice, Quot.sound}, rejects sorryAx anywhere, and
#       REQUIRES the headline theorems' own lines to be present.  Absent
#       evidence is a failure, exactly as a missing input file is.
#
#   shasum -c
#       correctly exits 1 on a mismatched or unreadable file, but a truncated
#       or empty manifest verifies nothing.  => step 4 requires the number of
#       "OK" lines to equal the number of manifest entries, and > 0.
#
# ---------------------------------------------------------------------------
# WHAT THIS SCRIPT WRITES
# ---------------------------------------------------------------------------
# Its own logs go to the run directory (--out, default a fresh directory under
# $TMPDIR), never into the repository and never into evidence/logs/.
# It writes inside the repository only where a step inherently must:
#   * lean/.lake              (gitignored build output)
#   * independent/akr_l7_reproduction/evidence/logs/   -- NOT this script, but
#     reproduce.sh, which is invoked in step 5d and which writes its logs
#     there.  Those paths are TRACKED historical evidence.  Step 5d therefore
#     snapshots the directory into the run directory first and says so.
#   * independent/akr_l7_reproduction/evidence/fixtures/negative/  (gitignored;
#     created by reproduce.sh's checker-validation step)
# Implementation B is built and run entirely in the run directory so that the
# tracked artifacts it would otherwise overwrite keep matching
# data/hashes/SHA256SUMS.implementation_b.
# The CNFs of step 5b are regenerated into the run directory, not into
# evidence/cnf/.

set -u
set -o pipefail

# --------------------------------------------------------------------------
# Repository root from the script's own location: no absolute paths anywhere,
# no assumption about the caller's working directory.
# --------------------------------------------------------------------------
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
cd "$ROOT" || { echo "FATAL: cannot cd to repository root $ROOT"; exit 7; }

# Print the whole leading comment block, however long it grows.  (This used to
# be a hard-coded line range, which silently truncated whenever the header was
# extended.)
usage() { awk 'NR==1{next} /^#/{sub(/^# ?/,""); print; next} {exit}' "${BASH_SOURCE[0]}"; }

QUICK=0
STEPS="1,2,3,4,5,6"
STEPS_EXPLICIT=0
OUTDIR=""
AXIOM_LOG=""
while [ $# -gt 0 ]; do
  case "$1" in
    --quick) QUICK=1; STEPS="1,2,3,4"; shift ;;
    --steps) [ $# -ge 2 ] || { echo "verify-all.sh: --steps needs an argument"; exit 7; }
             STEPS="$2"; STEPS_EXPLICIT=1; shift 2 ;;
    --steps=*) STEPS="${1#--steps=}"; STEPS_EXPLICIT=1; shift ;;
    --out)   [ $# -ge 2 ] || { echo "verify-all.sh: --out needs an argument"; exit 7; }
             OUTDIR="$2"; shift 2 ;;
    --out=*) OUTDIR="${1#--out=}"; shift ;;
    --axiom-log) [ $# -ge 2 ] || { echo "verify-all.sh: --axiom-log needs an argument"; exit 7; }
             AXIOM_LOG="$2"; shift 2 ;;
    --axiom-log=*) AXIOM_LOG="${1#--axiom-log=}"; shift ;;
    -h|--help) usage; exit 0 ;;
    *) echo "verify-all.sh: unknown argument '$1' (expected --quick, --steps, --out, --axiom-log or --help)"; exit 7 ;;
  esac
done
case "$STEPS" in
  *[!0-9a-d,]*) echo "verify-all.sh: --steps takes a comma-separated list of step numbers, got '$STEPS'"; exit 7 ;;
esac

# want <N>      -- is major step N selected, in whole or in part?
# want_sub <Nx> -- is sub-step Nx selected (directly, or via its whole major step)?
want() {
  local t oldifs="$IFS"; IFS=,
  for t in $STEPS; do
    if [ "$t" = "$1" ]; then IFS="$oldifs"; return 0; fi
    case "$t" in "$1"[a-d]) IFS="$oldifs"; return 0 ;; esac
  done
  IFS="$oldifs"; return 1
}
WHY_NOT="not selected by --steps"
why_not() { if [ "$QUICK" = 1 ]; then printf 'above the sub-minute budget of --quick'; else printf 'not selected by --steps %s' "$STEPS"; fi; }
want_sub() {
  local t major="${1%[a-d]}" oldifs="$IFS"; IFS=,
  for t in $STEPS; do
    if [ "$t" = "$1" ] || [ "$t" = "$major" ]; then IFS="$oldifs"; return 0; fi
  done
  IFS="$oldifs"; return 1
}

FAILED=()
MISSING=()
DEFERRED=()
PASSED=()
START_TS=$(date +%s)

bar='========================================================================'
banner() { printf '\n%s\n%s\n%s\n' "$bar" "$1" "$bar"; }
say()    { printf '%s\n' "$*"; }

fail() {   # fail <step-name> <command-as-run> <expected-result>
  printf '\n*** FAIL: %s\n'     "$1"
  printf '***   command : %s\n' "$2"
  printf '***   expected: %s\n' "$3"
  printf '***   actual  : see the output above / the log in %s\n' "$RUNDIR"
  FAILED+=("$1")
}
pass()  { printf -- '--- PASS: %s\n' "$1"; PASSED+=("$1"); }
defer() { printf '\n*** DEFERRED (NOT run, NOT verified): %s\n' "$1"
          printf '***   %s\n' "$2"
          printf '***   This run is therefore PARTIAL (exit 2), never 0.\n'
          DEFERRED+=("$1"); }

missing_prereq() {  # <exit-code> <what> <blocks> <how to get it>
  printf '\n*** MISSING PREREQUISITE (exit code %s): %s\n' "$1" "$2"
  printf '***   blocks  : %s\n' "$3"
  printf '***   install : %s\n' "$4"
  MISSING+=("$1:$2")
}

need_file() {  # need_file <path-relative-to-root> <why>  -- ABSENCE IS A FAILURE
  if [ ! -e "$ROOT/$1" ]; then
    printf '\n*** FAIL: required input is MISSING: %s\n' "$1"
    printf '***   needed for: %s\n' "$2"
    printf '***   A missing input is a verification FAILURE, not a skip: the\n'
    printf '***   claim that rests on it is unverified.  Re-clone, or check\n'
    printf '***   whether .gitignore is excluding something that is required.\n'
    FAILED+=("missing required input: $1")
    return 1
  fi
  return 0
}

# assert helpers -- each records into ASSERT_BAD (a counter for the step)
ASSERT_BAD=0
require_line() {  # require_line <logfile> <extended-regex> <what it means>
  if grep -qE -- "$2" "$1"; then
    printf '   assert OK   : %s\n' "$3"
  else
    printf '   *** ASSERT FAILED: %s\n' "$3"
    printf '   *** expected a line matching /%s/ in %s\n' "$2" "$1"
    ASSERT_BAD=$((ASSERT_BAD+1))
  fi
}
forbid_line() {   # forbid_line <logfile> <extended-regex> <what it means>
  if grep -qE -- "$2" "$1"; then
    printf '   *** ASSERT FAILED: %s\n' "$3"
    printf '   *** a line matching /%s/ is present in %s:\n' "$2" "$1"
    grep -nE -- "$2" "$1" | head -5 | sed 's/^/   ***   /'
    ASSERT_BAD=$((ASSERT_BAD+1))
  else
    printf '   assert OK   : %s\n' "$3"
  fi
}

# --------------------------------------------------------------------------
# THE AXIOM CHECK  (step 1b, and the --axiom-log entry point)
# --------------------------------------------------------------------------
# `grep axiom lean/*.lean` -- which step 1 also does -- is a SOURCE check: it
# sees the word `axiom` written in this repository.  It cannot see a `sorry`
# three lemmas down; it cannot see `native_decide` reaching the kernel through
# `Lean.ofReduceBool`; it cannot see anything imported.  What follows is a
# KERNEL check.  `#print axioms T` makes Lean walk the entire transitive
# dependency graph of T's proof term and report every axiom it really rests on.
# That output, and only that output, licenses the sentence "this theorem
# depends on nothing beyond propext, Classical.choice and Quot.sound".
#
# Two properties of that output shape everything below.
#
#   * It is TRANSITIVE.  A single `sorry` anywhere beneath a headline theorem
#     surfaces as `sorryAx` in that theorem's OWN line, however deep it is
#     buried.  So the headline lines are the ones worth demanding.
#
#   * It is printed ONLY FOR MODULES THAT ARE IN THE BUILD.  `#print axioms`
#     is a command in a source file, so a module that is never compiled never
#     reports.  Note that WARMTH IS NOT THE ISSUE: Lake replays cached
#     diagnostics, so a warm build does still print these lines.  Measured on
#     the committed evidence 2026-09-24, results/validation/2026-09-24_headline
#     _build.log is a FULLY warm run -- 271 `Replayed` progress lines, ZERO
#     `Built` -- and it carries all 408 `depends on axioms` lines and all six
#     headline theorems.  The real failure mode is the one in the NOTE below:
#     the newest pre-`Headline` log had 60 `depends on axioms` lines against
#     576 `#print axioms` directives in lean/*.lean, and only ONE of the five
#     headline theorems, because lakefile.toml kept the section-9 modules out
#     of defaultTargets and a bare `lake build` never compiled them at all.
#     Such a run proves next to nothing about axioms while still reporting
#     success.  => the absence of
#     the headline lines is a FAILURE here, on the same principle as a missing
#     input file.  When they are absent this step first tries to obtain them
#     WITHOUT a rebuild, by running `#print axioms` against the .oleans that
#     are already built (`lake env lean` on a scratch file in the run dir).
#     That is best-effort: if it does not work the step still fails, it never
#     passes blind.
#
# The parser joins continuation lines before matching.  Lean wraps a long
# `depends on axioms: [...]` list across lines, and a line-oriented grep would
# silently drop the wrapped tail -- that is, would miss exactly the axiom that
# made the line too long in the first place.  It also understands the other
# spelling, `'T' does not depend on any axioms`, which a grep for the string
# "depends on axioms" does not match at all.
# --------------------------------------------------------------------------

AXIOM_ALLOWED='propext, Classical.choice, Quot.sound'

# The theorems whose axiom lines this script REQUIRES.  These are the
# statements the write-up's claims rest on; see the closing note of this script
# and docs/verification-status.md rows 4, 18, 46, 47, 50, 51.
AXIOM_HEADLINES='Heptagon.MainTheorem.isGreatest_38
Heptagon.RealUpperBound.isGreatest_38_real
Heptagon.AKR9.points_le_38_of_no_vertex_on_boundary
Heptagon.AKR9.isGreatest_38_of_E9
Heptagon.Pair9Shift.points9_le_38_of_coincFree
Heptagon.Pair9Shift.isGreatest_38_of_coincFree'
AXIOM_HEADLINE_N=$(printf '%s\n' "$AXIOM_HEADLINES" | grep -c .)
# The modules those live in, for the no-rebuild re-emission below.  These are
# exactly the roots that lean/Headline.lean imports.
AXIOM_HEADLINE_MODULES='MainTheorem RealUpperBound AKR9 Pair9Shift'

# axiom_parse <evidence-log> <report-file>
#   Writes the human-readable report; exit status 0 only when it says CLEAN.
#   Depends on nothing else in this script, so scripts/negative-tests.sh can
#   drive it against a synthetic log through --axiom-log, with no Lean present.
axiom_parse() {
  "$PY" - "$1" $AXIOM_HEADLINES > "$2" 2>&1 <<'PYAXIOMEOF'
import re, sys

log = sys.argv[1]
required = [a for a in sys.argv[2:] if a.strip()]
ALLOWED = ("propext", "Classical.choice", "Quot.sound")
MARK = "depends on axioms:"
NONE_MARK = "does not depend on any axioms"

def row(label, value):
    print("axiom-check: %-42s : %s" % (label, value))

try:
    text = open(log, encoding="utf-8", errors="replace").read()
except OSError as e:
    print("axiom-check: the evidence log cannot be read: %s" % e)
    print("AXIOM CHECK: FAILED -- no evidence log.  A missing log is a failure, "
          "not a skip: the axiom claim is simply unverified.")
    sys.exit(1)

lines = text.split("\n")
n = len(lines)

# Lines this script itself prints, which must not be mistaken for Lean output
# when --axiom-log is pointed at a whole verify-all run log.
def ours(s):
    s = s.strip()
    return (s.startswith("axiom-check:") or s.startswith("AXIOM CHECK:")
            or s.startswith("***") or s.startswith("assert OK")
            or s.startswith("expected:") or s.startswith("#"))

# Lean identifiers may END IN A PRIME (exists_good_delta_affine'), so the log
# reads  '...exists_good_delta_affine'' depends on axioms: [...]  -- a doubled
# quote.  A non-greedy [^']+ stops at the first prime and fails to match, which
# is how three real declarations went unparsed.  Greedy .+ anchored on the
# literal marker takes the longest name and gets it right.
REC   = re.compile(r"'(.+)'\s*depends on axioms:\s*\[([^\]]*)\]")
NOAX  = re.compile(r"'(.+)'\s*" + NONE_MARK)
FILEP = re.compile(r"([A-Za-z0-9_./-]+\.lean):\d+:\d+")
NEWMSG = re.compile(r"^(info:|warning:|error:|information:|trace:|ℹ|⚠|✔|✗|✗)")

records = []          # (declaration, [axioms], source file or "")
raw_marks = 0
i = 0
while i < n:
    cur = lines[i]
    if MARK in cur:
        raw_marks += 1
    # (a) the marker itself split across a newline
    elif (cur.rstrip().endswith("depends on") and i + 1 < n
          and lines[i + 1].lstrip().startswith("axioms:")):
        i += 1
        cur = cur.rstrip() + " " + lines[i].lstrip()
        raw_marks += 1
    k = cur.find(MARK)
    # (b) the axiom LIST itself wrapped: pull continuation lines in until the
    #     bracket closes.  Stop at anything that looks like a new message, so a
    #     truncated list can never swallow the rest of the log.
    if k != -1 and "]" not in cur[k:]:
        j = i
        while "]" not in cur[k:] and j + 1 < n and (j - i) < 40:
            nxt = lines[j + 1]
            if MARK in nxt or NONE_MARK in nxt or NEWMSG.match(nxt.lstrip()):
                break
            j += 1
            cur = cur.rstrip() + " " + nxt.strip()
        i = j
    src = ""
    mf = FILEP.search(cur)
    if mf:
        src = mf.group(1).split("/")[-1]
    for m in REC.finditer(cur):
        axs = [a.strip() for a in m.group(2).split(",") if a.strip()]
        records.append((m.group(1), axs, src))
    for m in NOAX.finditer(cur):
        records.append((m.group(1), [], src))
    i += 1

# sorryAx / sorry, anywhere in the evidence
sorry_ax = [(k + 1, l.strip()) for k, l in enumerate(lines)
            if "sorryAx" in l and not ours(l)]
sorry_warn = [(k + 1, l.strip()) for k, l in enumerate(lines)
              if "declaration uses 'sorry'" in l and "warning:" in l]

counts = {}
for _, axs, _ in records:
    for a in axs:
        counts[a] = counts.get(a, 0) + 1
bad = [(d, axs, s) for (d, axs, s) in records if [a for a in axs if a not in ALLOWED]]

names = set(d for d, _, _ in records)
axof = {}
for d, axs, _ in records:
    axof[d] = axs
def find(req):
    if req in names:
        return req
    for nm in names:
        if nm.endswith("." + req):
            return nm
    return None
confirmed = [(r, find(r)) for r in required]
nconf = len([1 for _, f in confirmed if f])

srcs = {}
for _, _, s in records:
    if s:
        srcs[s] = srcs.get(s, 0) + 1

row("evidence log", log)
row("lines scanned", n)
row("'depends on axioms' lines found", raw_marks)
row("declarations parsed", len(records))
row("declarations using a disallowed axiom", len(bad))
row("occurrences of sorryAx", len(sorry_ax))
row("occurrences of \"declaration uses 'sorry'\"", len(sorry_warn))
row("distinct axioms", len(counts))
for a in sorted(counts, key=lambda a: (a not in ALLOWED, a)):
    mark = "OK      " if a in ALLOWED else "DISALLOWED"
    print("axiom-check:     %-10s %-24s in %d declaration(s)" % (mark, a, counts[a]))
row("source files that reported", len(srcs))
shown = sorted(srcs, key=lambda s: (-srcs[s], s))
for s in shown[:12]:
    print("axiom-check:     %-34s %d declaration(s)" % (s, srcs[s]))
if len(shown) > 12:
    print("axiom-check:     ... and %d more source file(s)" % (len(shown) - 12))
row("headline theorems confirmed", "%d of %d" % (nconf, len(required)))
for req, got in confirmed:
    if got:
        print("axiom-check:     CONFIRMED  %s" % got)
        print("axiom-check:                depends on axioms: [%s]" % ", ".join(axof[got]))
    else:
        print("axiom-check:     ABSENT     %s" % req)

reasons = []
if len(records) == 0:
    reasons.append("the log contains NO axiom output at all, so it establishes nothing")
if raw_marks > len(records):
    reasons.append("%d 'depends on axioms' line(s) could not be parsed -- a wrapped "
                   "or truncated axiom list would hide exactly the axiom that made "
                   "the line long" % (raw_marks - len(records)))
if bad:
    reasons.append("%d declaration(s) depend on an axiom outside {%s}"
                   % (len(bad), ", ".join(ALLOWED)))
    for d, axs, s in bad[:10]:
        print("axiom-check:   *** DISALLOWED  %s" % d)
        print("axiom-check:   ***             [%s]%s" % (", ".join(axs), (" in " + s) if s else ""))
if sorry_ax:
    reasons.append("sorryAx is present: a proof is closed by sorry somewhere beneath "
                   "a declaration that reported its axioms")
    for ln, l in sorry_ax[:5]:
        print("axiom-check:   *** sorryAx at line %d: %s" % (ln, l[:160]))
if sorry_warn:
    reasons.append("Lean warned %d time(s) that a declaration uses sorry" % len(sorry_warn))
    for ln, l in sorry_warn[:5]:
        print("axiom-check:   *** sorry at line %d: %s" % (ln, l[:160]))
missing = [r for r, got in confirmed if not got]
if missing:
    reasons.append("%d headline theorem(s) printed NO axiom line, so this run says "
                   "nothing about them (their modules were not in the build at all "
                   "-- check defaultTargets, or build the Headline target)" % len(missing))

if reasons:
    print("AXIOM CHECK: FAILED -- " + "; ".join(reasons) + ".")
    if missing:
        print("axiom-check: to obtain the missing evidence, force those modules to be")
        print("axiom-check: recompiled -- e.g.  rm lean/.lake/build/lib/lean/AKR9.olean")
        print("axiom-check: (and the other modules named ABSENT above), then rebuild --")
        print("axiom-check: or run  lake env lean <file with the #print axioms lines>,")
        print("axiom-check: which needs no rebuild at all.")
    sys.exit(1)

print("AXIOM CHECK: CLEAN -- %d declaration(s) reported their axioms; every one of "
      "the %d distinct axioms used is among %s; sorryAx appears nowhere; all %d "
      "headline theorems confirmed."
      % (len(records), len(counts), ", ".join(ALLOWED), len(required)))
sys.exit(0)
PYAXIOMEOF
}

# axiom_reemit <output-file>
#   Best effort: re-print the headline axiom lines from the .oleans that are
#   ALREADY built, recompiling nothing.  Returns 0 only if it really produced
#   axiom lines.  A failure here is a NOTE, never a pass: the verdict still
#   comes from whatever evidence was actually obtained.
axiom_reemit() {
  local out="$1" src="$RUNDIR/01b_reprint_axioms.lean" m nm
  command -v lake >/dev/null 2>&1 || return 1
  : > "$src"
  for m in $AXIOM_HEADLINE_MODULES; do printf 'import %s\n' "$m" >> "$src"; done
  for nm in $AXIOM_HEADLINES; do printf '#print axioms %s\n' "$nm" >> "$src"; done
  ( cd "$ROOT/lean" && lake env lean "$src" ) > "$out" 2>&1
  grep -q 'depends on axioms\|does not depend on any axioms' "$out"
}

# axiom_assert <evidence-log> <report-file> <label>
#   Runs the parser and then asserts on its OUTPUT, in this script's usual
#   style: an exit status on its own is never the verdict.  Adds to ASSERT_BAD.
axiom_assert() {
  local ev="$1" rep="$2" label="$3"
  axiom_parse "$ev" "$rep"
  sed 's/^/   /' "$rep"
  require_line "$rep" '^AXIOM CHECK: CLEAN' \
               "the axiom report's own verdict line says CLEAN"
  forbid_line  "$rep" '^AXIOM CHECK: FAILED' \
               "the axiom report names no problem"
  require_line "$rep" '^axiom-check: declarations parsed +: [1-9][0-9]*$' \
               "at least one declaration actually reported its axioms (0 lines is no evidence)"
  require_line "$rep" '^axiom-check: declarations using a disallowed axiom +: 0$' \
               "every axiom listed is one of $AXIOM_ALLOWED"
  require_line "$rep" '^axiom-check: occurrences of sorryAx +: 0$' \
               "sorryAx appears nowhere in the evidence"
  require_line "$rep" "^axiom-check: headline theorems confirmed +: $AXIOM_HEADLINE_N of $AXIOM_HEADLINE_N\$" \
               "all $AXIOM_HEADLINE_N headline theorems printed an axiom line of their own ($label)"
}

banner "heptagon-intersections :: verify-all"
say "repository root : $ROOT"
if [ "$QUICK" = 1 ]; then
  say "mode            : --quick (steps 1-4 and 5a; 5b-5d and 6 deferred)"
elif [ "$STEPS_EXPLICIT" = 1 ]; then
  say "mode            : --steps $STEPS (everything else deferred)"
else
  say "mode            : full (steps 1-6)"
fi
say "date            : $(date -u '+%Y-%m-%dT%H:%M:%SZ')"
say "uname           : $(uname -srm)"
say "shell           : bash ${BASH_VERSION:-unknown}"

# --------------------------------------------------------------------------
# Tool discovery
# --------------------------------------------------------------------------
export PATH="$HOME/.elan/bin:$PATH"

PY=""
for c in python3 python; do command -v "$c" >/dev/null 2>&1 && { PY="$c"; break; }; done

SHA_CMD=""
if command -v shasum >/dev/null 2>&1;      then SHA_CMD="shasum -a 256"
elif command -v sha256sum >/dev/null 2>&1; then SHA_CMD="sha256sum"
fi

CXX_BIN=""
for c in "${CXX:-}" c++ g++ clang++; do
  [ -n "$c" ] && command -v "$c" >/dev/null 2>&1 && { CXX_BIN="$c"; break; }
done

say "python3         : ${PY:-ABSENT}$( [ -n "$PY" ] && echo " ($($PY -V 2>&1))" )"
say "lake            : $(command -v lake >/dev/null 2>&1 && lake --version 2>&1 | head -1 || echo ABSENT)"
say "sha256 tool     : ${SHA_CMD:-ABSENT}"
say "C++ compiler    : ${CXX_BIN:-ABSENT}"

if [ -n "$OUTDIR" ]; then
  mkdir -p "$OUTDIR" || { echo "FATAL: cannot create --out directory $OUTDIR"; exit 7; }
  RUNDIR="$(cd "$OUTDIR" && pwd)"
else
  RUNDIR="$(mktemp -d "${TMPDIR:-/tmp}/heptagon-verify.XXXXXX")"
fi
say "run log dir     : $RUNDIR   (kept; nothing is written to evidence/logs/ by this script)"

# ==========================================================================
# --axiom-log MODE -- the axiom check alone, against an existing log
# ==========================================================================
# Exists for two reasons.  (1) The axiom evidence is the one part of this
# script that can be re-checked by a reader who has no Lean toolchain: point it
# at any committed log in results/validation/ and it will say exactly what that
# log does and does not establish.  (2) It makes the check itself TESTABLE --
# scripts/negative-tests.sh feeds it synthetic logs (one carrying sorryAx, one
# warm log with the headline lines missing) and requires it to reject them.
if [ -n "$AXIOM_LOG" ]; then
  banner "AXIOM CHECK ONLY -- $AXIOM_LOG"
  if [ -z "$PY" ]; then
    missing_prereq 4 "python3 not found on PATH" "--axiom-log" "install CPython 3.9 or newer"
    say ""
    say "MISSING PREREQUISITE (exit 4).  The axiom check needs python3 to parse the log."
    exit 4
  fi
  if [ ! -f "$AXIOM_LOG" ]; then
    printf '\n*** FAIL: the log to check does not exist: %s\n' "$AXIOM_LOG"
    printf '***   A missing log is a verification FAILURE, not a skip.\n'
    say ""
    say "VERIFICATION FAILED (exit 1)."
    exit 1
  fi
  ASSERT_BAD=0
  say "expected: every 'depends on axioms:' line lists only $AXIOM_ALLOWED;"
  say "          sorryAx nowhere; and all $AXIOM_HEADLINE_N headline theorems present."
  say ""
  axiom_assert "$AXIOM_LOG" "$RUNDIR/axiom_check.txt" "$AXIOM_LOG"
  say ""
  if [ "$ASSERT_BAD" -eq 0 ]; then
    pass "1b. axiom check ($AXIOM_LOG)"
    say ""
    say "AXIOM EVIDENCE ACCEPTED (exit 0) for this log.  Note the scope: this says"
    say "what the LOG contains.  It is evidence about the build that produced the"
    say "log, not about the working tree as it stands now."
    exit 0
  fi
  say "VERIFICATION FAILED (exit 1).  $ASSERT_BAD assertion(s) above.  This log does"
  say "not establish the axiom claim; see the report in $RUNDIR/axiom_check.txt."
  exit 1
fi

# ==========================================================================
# STEP 1 -- Lean build
# ==========================================================================
banner "STEP 1/6 -- Lean build"
S1_CMD='cd lean && lake build && lake build Headline'
say "command : $S1_CMD"
say "expected: exit 0; no 'error:' line; no 'declaration uses sorry' warning;"
say "          every declared lean_lib produces a .olean; no sorry/admit/"
say "          native_decide/axiom in the sources"
say "ALSO    : 'lake build Headline' -- because defaultTargets omits the AKR"
say "          section-9 modules, a bare 'lake build' does not compile the"
say "          headline theorems at all.  Both invocations are asserted on."
say "NOTE    : a COLD Lean build is now dominated by the 135 OTEnum* shards,"
say "          which kernel-check the (E7a) exhaustiveness enumeration one"
say "          order-type representative at a time -- about 17 CPU-hours, so a"
say "          few wall-clock hours at -j6.  A WARM rebuild is still seconds,"
say "          so repeat runs of this script are unaffected.  Everything else"
say "          in the development builds in about two minutes; if you want that"
say "          first, build the non-shard targets by name (they are the"
say "          [[lean_lib]] entries in lean/lakefile.toml above the generated"
say "          shard block), then come back for  lake build -j6 OTEnumAll."

MATHLIB_BUILT=0
[ -d "$ROOT/lean/.lake/packages/mathlib/.lake/build/lib" ] && MATHLIB_BUILT=1

if ! want 1; then
  defer "step 1 Lean build" "$(why_not)"
elif ! command -v lake >/dev/null 2>&1; then
  missing_prereq 5 "lake (Lean 4 / elan toolchain) not on PATH" \
                   "step 1 (the entire Lean formalization)" \
                   "curl https://elan.lean-lang.org/elan-init.sh -sSf | sh   then re-open the shell"
elif ! need_file "lean/lakefile.toml" "step 1"; then
  :
elif [ "$QUICK" = 1 ] && [ "$MATHLIB_BUILT" = 0 ]; then
  defer "step 1 Lean build (cold Mathlib download)" \
        "lean/.lake/packages/mathlib/.lake/build/lib does not exist, so this would be a COLD
***   build: Lake clones the dependency packages and fetches ~1.4 GB of prebuilt
***   .olean cache.  Measured on Apple silicon: 5 min 9 s, 766 jobs, 1.4 GB left
***   in lean/.lake.  --quick promises sub-minute checks, so it is deferred.
***   Run it with:  cd lean && lake build   -- or drop --quick.
***   Once Mathlib is built, --quick DOES run step 1 (warm rebuild ~8 s)."
else
  ASSERT_BAD=0
  [ "$MATHLIB_BUILT" = 0 ] && say "NOTE: cold build -- Lake will fetch ~1.4 GB of .olean cache into lean/.lake."
  t0=$(date +%s)
  ( cd "$ROOT/lean" && lake build ) 2>&1 | tee "$RUNDIR/01_lake_build.txt"
  rc=${PIPESTATUS[0]}

  # `lake build` builds defaultTargets, and defaultTargets DELIBERATELY omits
  # the AKR section-9 modules -- AKR9, Pair9Shift and their line of work -- to
  # keep them out of a default build dominated by the 1,080 enumeration shards.
  # The consequence is easy to miss and was: the documented command does not
  # compile the headline theorems at all, so it can neither fail on them nor
  # print their axioms.  lean/Headline.lean exists to close that gap: it is a
  # leaf importing exactly the four roots, and its closure is ~331 modules with
  # no shard in it.  Built here, by name, so that step 1 really does cover the
  # punchline and step 1b has evidence to read.
  if [ -f "$ROOT/lean/Headline.lean" ] \
  && grep -q '^name = "Headline"' "$ROOT/lean/lakefile.toml"; then
    say ""
    say "   (defaultTargets omits the AKR section-9 modules, so building the"
    say "    headline closure by name as well:  lake build Headline)"
    ( cd "$ROOT/lean" && lake build Headline ) 2>&1 | tee "$RUNDIR/01_lake_build_headline.txt"
    rc_h=${PIPESTATUS[0]}
    # One evidence file, so every assertion below covers both invocations.
    cat "$RUNDIR/01_lake_build_headline.txt" >> "$RUNDIR/01_lake_build.txt"
    [ "$rc" -eq 0 ] && rc="$rc_h"
  else
    say ""
    say "   *** NOTE: lean/Headline.lean is not present / not declared, so the"
    say "   *** headline theorems (AKR9, Pair9Shift) are NOT built by this step:"
    say "   *** lakefile.toml keeps them out of defaultTargets.  Step 1b will say"
    say "   *** so explicitly rather than passing over it."
  fi
  t1=$(date +%s)
  say "(lean build wall time: $((t1-t0)) s)"
  if [ "$rc" -ne 0 ]; then
    fail "1. Lean build" "$S1_CMD" "exit 0"
  else
    forbid_line  "$RUNDIR/01_lake_build.txt" '^error:|: error:' \
                 "no compilation errors"
    forbid_line  "$RUNDIR/01_lake_build.txt" "declaration uses 'sorry'" \
                 "no theorem is closed by sorry (lake exits 0 on sorry -- it is only a warning)"

    # Every lean_lib declared in the lakefile must have produced a .olean.
    LIBS=0; BUILT=0; MISSING_LIBS=""; LIBNAMES=""
    while read -r lib; do
      [ -z "$lib" ] && continue
      LIBS=$((LIBS+1)); LIBNAMES="$LIBNAMES $lib"
      if [ -f "$ROOT/lean/.lake/build/lib/lean/$lib.olean" ] \
      || [ -f "$ROOT/lean/.lake/build/lib/$lib.olean" ]; then
        BUILT=$((BUILT+1))
      else
        MISSING_LIBS="$MISSING_LIBS $lib"
      fi
    done <<EOF
$(grep -A1 '^\[\[lean_lib\]\]' "$ROOT/lean/lakefile.toml" | grep '^name' | sed 's/.*= *"\(.*\)".*/\1/')
EOF
    if [ "$LIBS" -gt 0 ] && [ "$BUILT" -eq "$LIBS" ]; then
      printf '   assert OK   : all %d declared lean_lib targets produced a .olean\n' "$LIBS"
    else
      printf '   *** ASSERT FAILED: %d of %d declared lean_lib targets produced no .olean:%s\n' \
             "$((LIBS-BUILT))" "$LIBS" "$MISSING_LIBS"
      ASSERT_BAD=$((ASSERT_BAD+1))
    fi

    # Source-level scan.  `lake build` would not fail on any of these.
    # Scope: exactly the libraries the lakefile declares -- an undeclared
    # lean/*.lean is not part of the build and is reported separately below,
    # so work-in-progress files cannot silently pass OR spuriously fail.
    BADSRC=""
    if [ -z "$PY" ]; then
      # Without python3 the scan below cannot run at all.  It used to run
      # anyway, as `"" - <file>`, which fails for every file and reported a
      # forbidden construct in all of them -- a false FAILURE, and a confusing
      # one.  A missing TOOL is exit 3-6, not exit 1.
      missing_prereq 4 "python3 not found on PATH" \
                       "step 1's forbidden-construct source scan and step 1b's axiom check, and steps 2, 3, 5 and 6" \
                       "install CPython 3.9 or newer"
    else
    for lib in $LIBNAMES; do
      f="$ROOT/lean/$lib.lean"
      [ -e "$f" ] || continue
      # strip -- line comments and /- -/ block comments before scanning
      if "$PY" - "$f" <<'PYEOF' 2>/dev/null
import re, sys
s = open(sys.argv[1], encoding="utf-8").read()
s = re.sub(r'/-.*?-/', ' ', s, flags=re.S)
s = re.sub(r'--[^\n]*', ' ', s)
bad = [w for w in ("sorry", "admit", "native_decide", "unsafe ", "partial ")
       if re.search(r'(?<![A-Za-z_])' + re.escape(w), s)]
if re.search(r'(?m)^\s*axiom\s', s):
    bad.append("axiom")
sys.exit(1 if bad else 0)
PYEOF
      then :; else BADSRC="$BADSRC $(basename "$f")"; fi
    done
    if [ -z "$BADSRC" ]; then
      printf '   assert OK   : no sorry/admit/native_decide/unsafe/partial/axiom in any\n'
      printf '                 lean source declared by lakefile.toml\n'
    else
      printf '   *** ASSERT FAILED: forbidden construct in:%s\n' "$BADSRC"
      ASSERT_BAD=$((ASSERT_BAD+1))
    fi
    fi   # end of the python3 guard around the source scan

    # Undeclared sources: not built, not scanned, not verified.
    #
    # An undeclared file that is TRACKED IN GIT is a defect, not a note: it sits
    # in the repository looking like part of the development while lake never
    # compiles it and the forbidden-construct scan never reads it, so it could
    # contain `sorry` or anything else and nothing would say so.  This happened
    # -- lean/IntersectionParity.lean was committed unregistered and sat unbuilt
    # -- and the informational NOTE that used to live here was not enough to
    # catch it.  Tracked-and-undeclared now FAILS.  Untracked scratch files are
    # still only a note.
    undeclared_tracked=""
    undeclared_scratch=""
    for f in "$ROOT"/lean/*.lean; do
      [ -e "$f" ] || continue
      b="$(basename "$f" .lean)"
      case " $LIBNAMES " in
        *" $b "*) ;;
        *)
          if git -C "$ROOT" ls-files --error-unmatch "lean/$b.lean" >/dev/null 2>&1; then
            undeclared_tracked="$undeclared_tracked $b.lean"
          else
            undeclared_scratch="$undeclared_scratch $b.lean"
          fi
          ;;
      esac
    done
    if [ -n "$undeclared_scratch" ]; then
      printf '   NOTE (informational): these lean/*.lean files are untracked and NOT\n'
      printf '   declared as a [[lean_lib]], so lake did not build them and this run\n'
      printf '   says nothing about them:%s\n' "$undeclared_scratch"
    fi
    if [ -n "$undeclared_tracked" ]; then
      printf '   *** ASSERT FAILED: these lean/*.lean files are COMMITTED but not\n'
      printf '   declared as a [[lean_lib]] in lakefile.toml. They are not built, not\n'
      printf '   scanned for sorry/admit/native_decide, and not verified by anything:%s\n' \
        "$undeclared_tracked"
      ASSERT_BAD=$((ASSERT_BAD+1))
    else
      printf '   assert OK   : every committed lean/*.lean is a declared lean_lib\n'
    fi

    JOBS="$(grep -oE 'Build completed successfully \([0-9]+ jobs\)' "$RUNDIR/01_lake_build.txt" \
            | grep -oE '[0-9]+' | head -1)"
    say "   lakefile declares $LIBS lean_lib target(s)${JOBS:+; lake reported $JOBS jobs}"
    [ -z "$JOBS" ] && say "   (lake reported nothing to do: everything was already up to date)"

    if [ "$ASSERT_BAD" -eq 0 ]; then
      pass "1. Lean build ($LIBS libraries${JOBS:+, $JOBS jobs})"
    else
      fail "1. Lean build" "$S1_CMD" "$ASSERT_BAD assertion(s) above"
    fi

    # ------------------------------------------------------------------
    # 1b. THE AXIOM CLAIM -- what the kernel says the theorems rest on.
    # ------------------------------------------------------------------
    say ""
    say "-- 1b. the axiom claim (#print axioms output, not a source grep)"
    say "   expected: every 'depends on axioms:' line in the build output lists"
    say "             only $AXIOM_ALLOWED;"
    say "             sorryAx nowhere; and each of the $AXIOM_HEADLINE_N headline theorems"
    say "             reporting a line of its OWN.  The last of those is the point:"
    say "             #print axioms reports only for modules that are actually in"
    say "             the build, so a run that omits them would otherwise 'pass'"
    say "             while proving nothing.  (Warmth is NOT the issue -- Lake"
    say "             replays cached diagnostics, so a warm build does print them.)"
    say "   NOTE    : lakefile.toml keeps the AKR section-9 modules (AKR9,"
    say "             Pair9Shift, ...) out of defaultTargets, so a bare 'lake build'"
    say "             never compiles them and never prints their axioms.  The"
    say "             target that does is:  cd lean && lake build Headline ."
    if [ -z "$PY" ]; then
      say "   (python3 absent -- already reported above; the axiom check cannot run)"
    else
      ASSERT_BAD=0
      AXEV="$RUNDIR/01b_axiom_evidence.txt"
      cat "$RUNDIR/01_lake_build.txt" > "$AXEV"
      # Were the headline lines actually emitted by this build?
      need_reemit=0
      for nm in $AXIOM_HEADLINES; do
        grep -qF -- "'$nm' depends on axioms" "$AXEV" && continue
        grep -qF -- "'$nm' does not depend on any axioms" "$AXEV" && continue
        need_reemit=1
      done
      if [ "$need_reemit" = 1 ]; then
        say "   NOTE: this build did not recompile every headline module, so its log"
        say "         is missing some #print axioms output.  Re-printing it from the"
        say "         .oleans that are already built (no rebuild):"
        say "           cd lean && lake env lean $RUNDIR/01b_reprint_axioms.lean"
        say "         (this imports the headline modules, so it costs the memory of"
        say "          a Mathlib import -- seconds on a machine with room, and it is"
        say "          skipped entirely when the build log already has the lines.)"
        if axiom_reemit "$RUNDIR/01b_reprint.txt"; then
          say "         re-print succeeded; its output is folded into the evidence."
          cat "$RUNDIR/01b_reprint.txt" >> "$AXEV"
        else
          say "   *** the re-print did NOT produce axiom output.  Its log:"
          sed 's/^/   ***   /' "$RUNDIR/01b_reprint.txt" 2>/dev/null | head -20
          say "   *** The usual cause is that the headline modules have never been"
          say "   *** built HERE.  lakefile.toml keeps AKR9, Pair9Shift and the rest"
          say "   *** of the AKR section-9 line OUT of defaultTargets, so a bare"
          say "   *** 'lake build' -- the command step 1 runs -- does not build them"
          say "   *** and cannot print their axioms.  Build them by name first:"
          say "   ***     cd lean && lake build Headline"
          say "   *** (lean/Headline.lean is a leaf importing exactly those roots;"
          say "   ***  its closure is ~331 modules and no enumeration shard.)"
          say "   *** Continuing with the build log alone -- which means the headline"
          say "   *** assertion below will fail.  That is the correct outcome: the"
          say "   *** evidence was not obtained, so the claim is not established."
        fi
      fi
      axiom_assert "$AXEV" "$RUNDIR/01b_axiom_check.txt" "from $AXEV"
      if [ "$ASSERT_BAD" -eq 0 ]; then
        pass "1b. axiom check (no axiom outside $AXIOM_ALLOWED; $AXIOM_HEADLINE_N/$AXIOM_HEADLINE_N headline theorems)"
      else
        fail "1b. axiom check" "#print axioms output of $S1_CMD" \
             "$ASSERT_BAD assertion(s) above"
      fi
    fi
  fi
fi

# ==========================================================================
# STEP 2 -- lower-bound certificate
# ==========================================================================
banner "STEP 2/6 -- lower-bound certificate (f(7,7) >= 38)"
S2_CMD='python3 python/validation/check_lower_bound.py'
say "command : $S2_CMD"
say "expected: exit 0, every line PASS, AND the absolute values I = 38,"
say "          I + |E| = 49, min degree = 1 (the script itself only checks the"
say "          certificate against its own 'verified' block, so it would accept"
say "          a self-consistent certificate claiming a different number)"
if ! want 2; then
  defer "step 2 lower-bound certificate" "$(why_not)"
elif [ -z "$PY" ]; then
  missing_prereq 4 "python3 not found on PATH" "steps 2, 3, 5 and 6" "install CPython 3.9 or newer"
elif need_file "python/validation/check_lower_bound.py" "step 2" \
   && need_file "data/lower_bound/lower_bound_38.json" "step 2"; then
  ASSERT_BAD=0
  ( cd "$ROOT" && "$PY" python/validation/check_lower_bound.py ) 2>&1 | tee "$RUNDIR/02_lower_bound.txt"
  rc=${PIPESTATUS[0]}
  if [ "$rc" -ne 0 ]; then
    fail "2. lower-bound certificate" "$S2_CMD" "exit 0"
  else
    forbid_line  "$RUNDIR/02_lower_bound.txt" 'FAIL'                        "no FAIL line"
    require_line "$RUNDIR/02_lower_bound.txt" 'PASS +boundary intersections I: 38$' \
                 "I = 38 exactly (absolute, not just self-consistent)"
    require_line "$RUNDIR/02_lower_bound.txt" 'PASS +I \+ \|E\| = 49: 49$'  "I + |E| = 49"
    require_line "$RUNDIR/02_lower_bound.txt" 'PASS +minimum degree on the P side: 1$' \
                 "minimum disjointness degree = 1"
    require_line "$RUNDIR/02_lower_bound.txt" 'PASS +P is a simple polygon: True$' "P simple"
    require_line "$RUNDIR/02_lower_bound.txt" 'PASS +Q is a simple polygon: True$' "Q simple"
    require_line "$RUNDIR/02_lower_bound.txt" '^All checks passed\.'        "final verdict line present"
    if [ "$ASSERT_BAD" -eq 0 ]; then pass "2. lower-bound certificate (I = 38)"
    else fail "2. lower-bound certificate" "$S2_CMD" "$ASSERT_BAD assertion(s) above"; fi
  fi
fi

# ==========================================================================
# STEP 3 -- endgame certificate
# ==========================================================================
banner "STEP 3/6 -- endgame certificate (225 cases)"
S3_CMD='python3 python/validation/check_final_certificate.py data/certificates/final_elimination_225.json'
say "command : $S3_CMD"
say "expected: exit 0 AND exactly 225 cases checked.  A certificate with zero"
say "          cases makes the checker print 'OK: all 0 cases ...' and exit 0,"
say "          so the case count is asserted separately."
if ! want 3; then
  defer "step 3 endgame certificate" "$(why_not)"
elif [ -z "$PY" ]; then
  say "(python3 absent -- already reported under step 2)"
elif need_file "python/validation/check_final_certificate.py" "step 3" \
   && need_file "data/certificates/final_elimination_225.json" "step 3" \
   && need_file "data/exceptional_profiles/exceptional_profiles_14.json" "step 3"; then
  ASSERT_BAD=0
  ( cd "$ROOT" && "$PY" python/validation/check_final_certificate.py \
        data/certificates/final_elimination_225.json ) 2>&1 | tee "$RUNDIR/03_final_cert.txt"
  rc=${PIPESTATUS[0]}
  if [ "$rc" -ne 0 ]; then
    fail "3. endgame certificate" "$S3_CMD" "exit 0"
  else
    forbid_line  "$RUNDIR/03_final_cert.txt" '\*\*\* FAILED'          "no FAILED banner"
    require_line "$RUNDIR/03_final_cert.txt" '^cases checked +: 225$' "exactly 225 cases were checked (not 0)"
    require_line "$RUNDIR/03_final_cert.txt" '^distinct graphs +: 121$' "121 distinct graphs"
    require_line "$RUNDIR/03_final_cert.txt" '^OK: all 225 cases establish the AKR Lemma 5 contradiction\.$' \
                 "verdict line names 225, not 0"
    if [ "$ASSERT_BAD" -eq 0 ]; then pass "3. endgame certificate (225 cases)"
    else fail "3. endgame certificate" "$S3_CMD" "$ASSERT_BAD assertion(s) above"; fi
  fi
fi

# ==========================================================================
# STEP 4 -- data hash manifests
# ==========================================================================
banner "STEP 4/6 -- data hash manifests"
say "expected: every listed digest reports OK; the number of OK lines equals the"
say "          number of manifest entries and is > 0 (an empty or truncated"
say "          manifest verifies nothing while still exiting 0 on some systems)"
if ! want 4; then
  defer "step 4 data hash manifests" "$(why_not)"
elif [ -z "$SHA_CMD" ]; then
  missing_prereq 6 "neither 'shasum' nor 'sha256sum' is on PATH" "step 4" \
                   "install coreutils (sha256sum) or perl (shasum)"
else
  # SHA256SUMS has paths relative to data/; the other four are relative to the root.
  check_manifest() {  # check_manifest <workdir-rel-root> <manifest-path-rel-workdir>
    local wd="$1" man="$2" label="$1/$2"
    local cmd="cd $wd && $SHA_CMD -c $man"
    printf '\n-- %s\n   command : %s\n' "$label" "$cmd"
    if [ ! -f "$ROOT/$wd/$man" ]; then
      printf '   *** FAIL: manifest file does not exist\n'
      FAILED+=("4. hash manifest $label (manifest missing)")
      return
    fi
    local entries out rc oks
    entries=$(grep -cE '^[0-9a-fA-F]{64}[ *]' "$ROOT/$wd/$man")
    out="$( cd "$ROOT/$wd" && $SHA_CMD -c "$man" 2>&1 )"; rc=$?
    printf '%s\n' "$out"
    oks=$(printf '%s\n' "$out" | grep -c ': OK$')
    if [ "$rc" -eq 0 ] && [ "$entries" -gt 0 ] && [ "$oks" -eq "$entries" ]; then
      printf '   assert OK   : %d/%d entries verified\n' "$oks" "$entries"
      PASSED+=("4. hash manifest $label ($entries files)")
      printf -- '--- PASS: 4. hash manifest %s (%d files)\n' "$label" "$entries"
    else
      printf '   *** FAIL: %s  (exit %d, %d OK lines, %d manifest entries)\n' "$label" "$rc" "$oks" "$entries"
      printf '   *** expected: every entry OK.  Lines marked FAILED above name the\n'
      printf '   ***           exact files whose contents no longer match the manifest.\n'
      printf '   *** Either the artifact changed (then the manifest must be regenerated\n'
      printf '   *** and the change explained) or the checkout is corrupt.\n'
      printf '   *** Regenerate with, from %s:   %s <files...> > %s\n' "$ROOT/$wd" "$SHA_CMD" "$man"
      FAILED+=("4. hash manifest $label")
    fi
  }
  check_manifest data hashes/SHA256SUMS
  check_manifest .    data/hashes/SHA256SUMS.tools
  check_manifest .    data/hashes/SHA256SUMS.lean
  check_manifest .    data/hashes/SHA256SUMS.implementation_b
  check_manifest .    data/hashes/SHA256SUMS.order_type_audit

  # Informational coverage note.  Not a pass/fail criterion -- which files belong
  # in the Lean manifest is decided elsewhere -- but an un-manifested source file
  # is silently unprotected, so say so out loud rather than let it pass unseen.
  if [ -f "$ROOT/data/hashes/SHA256SUMS.lean" ]; then
    unlisted=""
    for f in "$ROOT"/lean/*.lean; do
      [ -e "$f" ] || continue
      b="lean/$(basename "$f")"
      grep -q " $b\$" "$ROOT/data/hashes/SHA256SUMS.lean" || unlisted="$unlisted $b"
    done
    if [ -n "$unlisted" ]; then
      printf '\n   NOTE (informational, NOT counted as a failure): these Lean sources are\n'
      printf '   not covered by data/hashes/SHA256SUMS.lean and are therefore unprotected\n'
      printf '   against silent modification:\n'
      for u in $unlisted; do printf '       %s\n' "$u"; done
    fi
  fi
fi

# ==========================================================================
# STEP 5 -- A7 evidence
# ==========================================================================
banner "STEP 5/6 -- independent AKR Lemma 7 / A7 evidence"
A7="$ROOT/independent/akr_l7_reproduction"
E="$A7/evidence"
DRATCHECK="$E/tools/dratcheck.py"

# --- the gate ------------------------------------------------------------
# dratcheck.py exits 0 for a proof that never derives the empty clause.
# A zero exit status from it therefore does NOT mean "verified".  This gate
# accepts only when the status is 0 AND the tool says so in two independent
# ways.  Step 5a proves the gate rejects a proof the tool accepts.
drat_gate() {   # drat_gate <cnf> <drat> <logfile>  -> 0 only if genuinely UNSAT
  local cnf="$1" drat="$2" log="$3" rc
  if [ ! -f "$cnf" ] || [ ! -f "$drat" ]; then
    printf 'drat_gate: input missing (%s / %s)\n' "$cnf" "$drat" > "$log"
    return 1
  fi
  "$PY" "$DRATCHECK" "$cnf" "$drat" > "$log" 2>&1; rc=$?
  [ "$rc" -eq 0 ]                                   || return 1
  grep -q 'PROOF VERIFIED (UNSAT)'      "$log"      || return 1
  grep -q 'empty clause derived: True'  "$log"      || return 1
  return 0
}

# --- 5a: self-test of the gate (runs even under --quick; costs < 0.1 s) ---
say ""
say "-- 5a. SELF-TEST of this script's DRAT gate"
say "   expected: the gate ACCEPTS a genuine UNSAT proof and REJECTS (i) a proof"
say "             that never reaches the empty clause -- which dratcheck.py itself"
say "             exits 0 on -- (ii) a corrupted proof, and (iii) a missing proof."
if [ "$STEPS_EXPLICIT" = 1 ] && ! want_sub 5a; then
  defer "step 5a DRAT gate self-test" "$(why_not)"
elif [ -z "$PY" ]; then
  say "   (python3 absent -- already reported under step 2)"
elif need_file "independent/akr_l7_reproduction/evidence/tools/dratcheck.py" "step 5a" \
   && need_file "independent/akr_l7_reproduction/evidence/fixtures/php4_glucose4.cnf" "step 5a" \
   && need_file "independent/akr_l7_reproduction/evidence/fixtures/php4_glucose4.drat" "step 5a"; then
  ASSERT_BAD=0
  G="$RUNDIR/05a_gate"; mkdir -p "$G"
  POS_CNF="$E/fixtures/php4_glucose4.cnf"
  POS_DRAT="$E/fixtures/php4_glucose4.drat"

  # (i) truncated: every lemma still checks out, but the empty clause is never
  #     derived.  This is precisely the case dratcheck.py exits 0 on.
  grep -v '^0[[:space:]]*$' "$POS_DRAT" > "$G/truncated.drat"
  # (ii) corrupted: flip the sign of the first literal of the first addition.
  "$PY" - "$POS_DRAT" "$G/corrupt.drat" <<'PYEOF'
import sys
src, dst = sys.argv[1], sys.argv[2]
lines = open(src).read().splitlines()
for i, l in enumerate(lines):
    t = l.split()
    if t and not l.startswith("d") and t[0] not in ("0",):
        t[0] = str(-int(t[0])); lines[i] = " ".join(t); break
else:
    sys.exit("could not build the corrupt fixture")
open(dst, "w").write("\n".join(lines) + "\n")
PYEOF

  if drat_gate "$POS_CNF" "$POS_DRAT" "$G/positive.log"; then
    printf '   assert OK   : gate ACCEPTS the genuine PHP(4) refutation\n'
  else
    printf '   *** ASSERT FAILED: gate rejected a proof that should verify\n'
    sed 's/^/   ***   /' "$G/positive.log"; ASSERT_BAD=$((ASSERT_BAD+1))
  fi

  "$PY" "$DRATCHECK" "$POS_CNF" "$G/truncated.drat" > "$G/truncated.log" 2>&1
  TRUNC_RC=$?
  if drat_gate "$POS_CNF" "$G/truncated.drat" "$G/truncated_gate.log"; then
    printf '   *** ASSERT FAILED: gate ACCEPTED a proof that never derives the empty clause.\n'
    printf '   *** The guard this whole script depends on is broken.  Treat every\n'
    printf '   *** DRAT-based claim in this run as unverified.\n'
    ASSERT_BAD=$((ASSERT_BAD+1))
  else
    printf '   assert OK   : gate REJECTS a proof that never derives the empty clause\n'
    printf '                 (dratcheck.py exited %d on it and printed: %s)\n' \
           "$TRUNC_RC" "$(grep '^RESULT:' "$G/truncated.log" | head -1)"
  fi

  if drat_gate "$POS_CNF" "$G/corrupt.drat" "$G/corrupt.log"; then
    printf '   *** ASSERT FAILED: gate ACCEPTED a corrupted proof\n'; ASSERT_BAD=$((ASSERT_BAD+1))
  else
    printf '   assert OK   : gate REJECTS a proof with one literal sign flipped\n'
  fi

  if drat_gate "$POS_CNF" "$G/does-not-exist.drat" "$G/absent.log"; then
    printf '   *** ASSERT FAILED: gate ACCEPTED a missing proof file\n'; ASSERT_BAD=$((ASSERT_BAD+1))
  else
    printf '   assert OK   : gate REJECTS a missing proof file\n'
  fi

  if [ "$ASSERT_BAD" -eq 0 ]; then pass "5a. DRAT gate self-test"
  else fail "5a. DRAT gate self-test" "drat_gate() against 1 positive and 3 negative fixtures" \
            "accept the positive, reject all three negatives"; fi
fi

# --- 5b/5c/5d ------------------------------------------------------------
if ! want 5; then
  defer "step 5b-5d A7 evidence reproduction" "$(why_not) (5a above still ran)"
elif [ -z "$PY" ]; then
  say "(python3 absent -- already reported under step 2)"
else
  # 5b: the CNFs are gitignored (19 MB) and are regenerated, not shipped.
  # 5c needs them, so 5b runs whenever either is selected (it costs ~2 s).
  if want_sub 5b || want_sub 5c; then
  say ""
  say "-- 5b. regenerate the 20 gitignored CNFs and compare SHA-256"
  say "   command : python3 evidence/regen_cnf.py --write $RUNDIR/cnf"
  say "   expected: 'OK: all 20 CNFs regenerated byte-identically'"
  CNFDIR="$RUNDIR/cnf"
  REGEN_OK=0
  if need_file "independent/akr_l7_reproduction/evidence/regen_cnf.py" "step 5b" \
   && need_file "independent/akr_l7_reproduction/evidence/SHA256SUMS.txt" "step 5b"; then
    ASSERT_BAD=0
    ( cd "$E" && "$PY" regen_cnf.py --write "$CNFDIR" ) 2>&1 | tail -6 | tee "$RUNDIR/05b_regen_cnf.txt"
    rc=${PIPESTATUS[0]}
    if [ "$rc" -ne 0 ]; then
      fail "5b. CNF regeneration" "python3 evidence/regen_cnf.py --write DIR" "exit 0"
    else
      forbid_line  "$RUNDIR/05b_regen_cnf.txt" 'MISMATCH|NOT-IN-MANIFEST|FAILURE' "no mismatched CNF"
      require_line "$RUNDIR/05b_regen_cnf.txt" 'OK: all 20 CNFs regenerated byte-identically' \
                   "all 20 CNFs byte-identical to their recorded digests"
      n=$(ls -1 "$CNFDIR" 2>/dev/null | grep -c '\.cnf$')
      if [ "$n" -eq 20 ]; then printf '   assert OK   : 20 .cnf files written to the run dir\n'
      else printf '   *** ASSERT FAILED: %s .cnf files written, expected 20\n' "$n"; ASSERT_BAD=$((ASSERT_BAD+1)); fi
      if [ "$ASSERT_BAD" -eq 0 ]; then pass "5b. CNF regeneration (20/20 byte-identical)"; REGEN_OK=1
      else fail "5b. CNF regeneration" "python3 evidence/regen_cnf.py --write DIR" "$ASSERT_BAD assertion(s) above"; fi
    fi
  fi

  else
    defer "step 5b CNF regeneration" "$(why_not)"
  fi

  # 5c: one committed project refutation, through the gate, independently of
  #     reproduce.sh.  ~45 s.  reproduce.sh re-checks all 15.
  if want_sub 5c; then
  say ""
  say "-- 5c. one committed project DRAT refutation through the gate"
  SPOT="generic_both-hooking"
  say "   command : dratcheck.py $RUNDIR/cnf/$SPOT.cnf evidence/drat/$SPOT.drat"
  say "   expected: PROOF VERIFIED (UNSAT); takes about 45 s"
  if [ "$REGEN_OK" != 1 ]; then
    fail "5c. spot-check DRAT refutation" "drat_gate on $SPOT" \
         "step 5b to have produced the CNFs (it did not)"
  elif need_file "independent/akr_l7_reproduction/evidence/drat/$SPOT.drat" "step 5c"; then
    if drat_gate "$CNFDIR/$SPOT.cnf" "$E/drat/$SPOT.drat" "$RUNDIR/05c_spot.log"; then
      sed 's/^/   /' "$RUNDIR/05c_spot.log"
      pass "5c. spot-check DRAT refutation ($SPOT)"
    else
      sed 's/^/   /' "$RUNDIR/05c_spot.log"
      fail "5c. spot-check DRAT refutation" "drat_gate on $SPOT" \
           "exit 0 AND 'PROOF VERIFIED (UNSAT)' AND 'empty clause derived: True'"
    fi
  fi

  else
    defer "step 5c spot-check DRAT refutation" "$(why_not)"
  fi

  # 5d: the full reproduction.
  if want_sub 5d; then
  say ""
  say "-- 5d. the full A7 reproduction"
  S5_CMD='independent/akr_l7_reproduction/reproduce.sh'
  say "   command : $S5_CMD"
  say "   expected: exit 0 and 'ALL CHECKS PASSED' and no '*** FAIL' line."
  say "             exit 2 means every executed check passed but z3 was skipped"
  say "             (PARTIAL).  Takes roughly 5 minutes; the 15 DRAT re-checks"
  say "             dominate.  NOTE: that script's own step() helper pipes into"
  say "             tee without pipefail, so its exit status alone cannot be"
  say "             trusted; the output is asserted on as well."
  if need_file "independent/akr_l7_reproduction/reproduce.sh" "step 5d"; then
    if [ -d "$E/logs" ]; then
      mkdir -p "$RUNDIR/05d_evidence_logs_before"
      cp -R "$E/logs/." "$RUNDIR/05d_evidence_logs_before/" 2>/dev/null
      say "   NOTE: reproduce.sh writes into independent/akr_l7_reproduction/evidence/logs/,"
      say "         which is TRACKED historical evidence.  A copy of its pre-run contents"
      say "         is in $RUNDIR/05d_evidence_logs_before/ ."
      say "         Restore with:  git -C $ROOT checkout -- independent/akr_l7_reproduction/evidence/logs"
    fi
    ASSERT_BAD=0
    ( cd "$A7" && ./reproduce.sh ) 2>&1 | tee "$RUNDIR/05d_reproduce.txt"
    rc=${PIPESTATUS[0]}
    forbid_line "$RUNDIR/05d_reproduce.txt" '^\*\*\* FAIL'   "no step reported FAIL"
    forbid_line "$RUNDIR/05d_reproduce.txt" 'DID NOT VERIFY|\*\*\* ACCEPTED \*\*\*' \
                "the checker validation accepted no bad proof and rejected no good one"
    case "$rc" in
      0) require_line "$RUNDIR/05d_reproduce.txt" 'ALL CHECKS PASSED' \
                      "explicit success banner (not merely exit 0)"
         if [ "$ASSERT_BAD" -eq 0 ]; then pass "5d. A7 evidence reproduction"
         else fail "5d. A7 evidence reproduction" "$S5_CMD" \
                   "exit 0 AND an explicit success banner AND no FAIL line"; fi ;;
      2) require_line "$RUNDIR/05d_reproduce.txt" 'PARTIAL' \
                      "explicit PARTIAL banner matching exit 2"
         if [ "$ASSERT_BAD" -eq 0 ]; then
           say ""
           say "   PARTIAL: reproduce.sh exited 2 -- every check it ran passed, but the"
           say "            z3 cross-check was deliberately skipped (REPRO_SKIP_Z3=1)."
           DEFERRED+=("step 5d z3 cross-check (skipped inside reproduce.sh)")
         else
           fail "5d. A7 evidence reproduction" "$S5_CMD" "a consistent PARTIAL report"
         fi ;;
      *) fail "5d. A7 evidence reproduction" "$S5_CMD" \
              "exit 0, or 2 for a declared PARTIAL run; got exit $rc" ;;
    esac
  fi
  else
    defer "step 5d full A7 reproduction" "$(why_not)"
  fi
fi

# ==========================================================================
# STEP 6 -- Implementation B
# ==========================================================================
banner "STEP 6/6 -- Implementation B (independent C++ reduction)"
B="$ROOT/independent/implementation_b"
S6_CMD="c++ -O2 -std=c++17 -o reduction reduction.cpp && ./reduction --test && ./reduction && compare_with_certificate.py"
say "command : (in the run dir) $S6_CMD"
say "expected: every unit test passes; 13,003,620 graphs -> 225 triples over 121"
say "          graphs; the 225 triples are SET-EQUAL to the committed certificate."
say "          NOTE: compare_with_certificate.py reports EXACT SET EQUALITY for two"
say "          EMPTY sets and count_check.py has no assertion at all, so the counts"
say "          225 / 121 / 13,003,620 are asserted here explicitly."
if ! want 6; then
  defer "step 6 Implementation B" "$(why_not)"
elif [ -z "$CXX_BIN" ]; then
  missing_prereq 3 "no C++17 compiler found (tried \$CXX, c++, g++, clang++)" \
                   "step 6 (Implementation B); every other step is unaffected" \
                   "xcode-select --install (macOS) or apt install g++ (Debian/Ubuntu)"
elif [ -z "$PY" ]; then
  say "(python3 absent -- already reported under step 2)"
elif need_file "independent/implementation_b/reduction.cpp" "step 6" \
   && need_file "data/exceptional_profiles/exceptional_profiles_14.json" "step 6" \
   && need_file "data/certificates/final_elimination_225.json" "step 6"; then
  W="$RUNDIR/implb"; mkdir -p "$W"
  ok=1

  say ""
  say "-- 6a. convert the canonical profile JSON to a flat table"
  if "$PY" "$B/make_profiles.py" \
        "$ROOT/data/exceptional_profiles/exceptional_profiles_14.json" \
        "$W/profiles.txt" 2>&1 | tee "$RUNDIR/06a_profiles.txt"; then
    pass "6a. make_profiles.py"
  else
    fail "6a. make_profiles.py" "python3 make_profiles.py <profiles json> profiles.txt" "exit 0"; ok=0
  fi

  if [ "$ok" = 1 ]; then
    say ""
    say "-- 6b. compile reduction.cpp with $CXX_BIN"
    if "$CXX_BIN" -O2 -std=c++17 -Wall -o "$W/reduction" "$B/reduction.cpp" 2>&1 | tee "$RUNDIR/06b_compile.txt"; then
      pass "6b. compile Implementation B"
    else
      fail "6b. compile Implementation B" "$CXX_BIN -O2 -std=c++17 -Wall -o reduction reduction.cpp" "exit 0"; ok=0
    fi
  fi

  if [ "$ok" = 1 ]; then
    say ""
    say "-- 6c. adversarial unit tests (positive AND negative for every filter)"
    ASSERT_BAD=0
    "$W/reduction" --test "$W/profiles.txt" 2>&1 | tee "$RUNDIR/06c_tests.txt"
    rc=${PIPESTATUS[0]}
    if [ "$rc" -ne 0 ]; then
      fail "6c. Implementation B unit tests" "./reduction --test profiles.txt" "exit 0"; ok=0
    else
      forbid_line  "$RUNDIR/06c_tests.txt" '\[FAIL\]'                  "no failing unit test"
      require_line "$RUNDIR/06c_tests.txt" '^all unit tests passed$'   "explicit all-passed line"
      npass=$(grep -c '\[PASS\]' "$RUNDIR/06c_tests.txt")
      if [ "$npass" -ge 20 ]; then printf '   assert OK   : %d unit tests reported PASS\n' "$npass"
      else printf '   *** ASSERT FAILED: only %d [PASS] lines; the suite looks truncated\n' "$npass"
           ASSERT_BAD=$((ASSERT_BAD+1)); fi
      if [ "$ASSERT_BAD" -eq 0 ]; then pass "6c. Implementation B unit tests ($npass tests)"
      else fail "6c. Implementation B unit tests" "./reduction --test profiles.txt" "$ASSERT_BAD assertion(s) above"; ok=0; fi
    fi
  fi

  if [ "$ok" = 1 ]; then
    say ""
    say "-- 6d. full reduction (13,003,620 graphs; about 2 s)"
    ASSERT_BAD=0
    "$W/reduction" "$W/profiles.txt" "$W/implementation_b_output.json" 2>&1 | tee "$RUNDIR/06d_run.txt"
    rc=${PIPESTATUS[0]}
    if [ "$rc" -ne 0 ]; then
      fail "6d. Implementation B full run" "./reduction profiles.txt implementation_b_output.json" "exit 0"; ok=0
    else
      require_line "$RUNDIR/06d_run.txt" 'graphs \|E\|=9 min degree>=1 +: 13003620$' \
                   "the enumeration really ran over 13,003,620 graphs"
      require_line "$RUNDIR/06d_run.txt" 'distinct surviving graphs +: 121$'  "121 surviving graphs"
      require_line "$RUNDIR/06d_run.txt" '\(classP,classQ,graph\) triples +: 225$' "225 surviving triples"
      if [ "$ASSERT_BAD" -eq 0 ]; then pass "6d. Implementation B full run (13,003,620 -> 225)"
      else fail "6d. Implementation B full run" "./reduction profiles.txt out.json" "$ASSERT_BAD assertion(s) above"; ok=0; fi
    fi
  fi

  say ""
  say "-- 6e. closed-form graph-count cross-check (no enumeration)"
  ASSERT_BAD=0
  ( cd "$B" && "$PY" count_check.py ) 2>&1 | tee "$RUNDIR/06e_count.txt"
  rc=${PIPESTATUS[0]}
  if [ "$rc" -ne 0 ]; then
    fail "6e. Implementation B count_check" "python3 independent/implementation_b/count_check.py" "exit 0"
  else
    require_line "$RUNDIR/06e_count.txt" '9-edge graphs, min degree >= 1 both sides : 13,003,620$' \
                 "closed form agrees with the enumeration (count_check.py itself asserts nothing)"
    require_line "$RUNDIR/06e_count.txt" '\|E\| = 9 : 13,003,620$' "|E| = 9 term"
    if [ "$ASSERT_BAD" -eq 0 ]; then pass "6e. Implementation B count_check (13,003,620)"
    else fail "6e. Implementation B count_check" "python3 count_check.py" "$ASSERT_BAD assertion(s) above"; fi
  fi

  if [ "$ok" = 1 ]; then
    say ""
    say "-- 6f. strong set comparison against the committed 225-case certificate"
    ASSERT_BAD=0
    "$PY" "$B/compare_with_certificate.py" "$W/implementation_b_output.json" \
          "$ROOT/data/certificates/final_elimination_225.json" 2>&1 | tee "$RUNDIR/06f_compare.txt"
    rc=${PIPESTATUS[0]}
    if [ "$rc" -ne 0 ]; then
      fail "6f. Implementation B vs certificate" \
           "python3 compare_with_certificate.py <B output> data/certificates/final_elimination_225.json" "exit 0"
    else
      require_line "$RUNDIR/06f_compare.txt" '^Implementation B : 225 triples \(225 distinct\)$' \
                   "B produced 225 triples (NOT an empty set, which would compare equal to an empty A)"
      require_line "$RUNDIR/06f_compare.txt" '^Certificate \(A\) +: 225 cases \(225 distinct\)$' \
                   "A has 225 cases"
      require_line "$RUNDIR/06f_compare.txt" '^triples only in the certificate : 0$'  "A \\ B empty"
      require_line "$RUNDIR/06f_compare.txt" '^triples only in Implementation B: 0$'  "B \\ A empty"
      require_line "$RUNDIR/06f_compare.txt" 'distinct graphs A / B +: 121 / 121 +equal: True$' \
                   "121 distinct graphs on both sides"
      require_line "$RUNDIR/06f_compare.txt" '^EXACT SET EQUALITY' "verdict line present"
      if [ "$ASSERT_BAD" -eq 0 ]; then pass "6f. Implementation B vs certificate (225 = 225, set-equal)"
      else fail "6f. Implementation B vs certificate" "python3 compare_with_certificate.py ..." \
                "$ASSERT_BAD assertion(s) above"; fi
    fi
  fi

  # The freshly produced artifacts must also equal the committed ones, which is
  # what SHA256SUMS.implementation_b pins.  Compared without touching the repo.
  say ""
  say "-- 6g. freshly produced artifacts vs the committed ones (byte comparison)"
  for f in profiles.txt implementation_b_output.json; do
    if [ ! -f "$W/$f" ]; then
      printf '   *** FAIL: %s was not produced, so it cannot be compared\n' "$f"
      FAILED+=("6g. $f not produced")
      continue
    fi
    if [ ! -f "$B/$f" ]; then
      printf '   *** FAIL: committed copy independent/implementation_b/%s is missing\n' "$f"
      FAILED+=("6g. committed $f missing")
    elif cmp -s "$W/$f" "$B/$f"; then
      printf '   assert OK   : %s is byte-identical to the committed copy\n' "$f"
    else
      printf '   *** FAIL: regenerated %s differs from independent/implementation_b/%s\n' "$f" "$f"
      printf '   *** expected: byte-identical (the run is documented as deterministic)\n'
      FAILED+=("6g. regenerated $f differs from the committed copy")
    fi
  done
fi

# ==========================================================================
# SUMMARY
# ==========================================================================
END_TS=$(date +%s)
banner "SUMMARY"
say "wall time : $((END_TS-START_TS)) s"
say "logs      : $RUNDIR"
say ""
say "PASSED (${#PASSED[@]}):"
if [ ${#PASSED[@]} -eq 0 ]; then say "    (none)"; else for p in "${PASSED[@]}"; do say "    $p"; done; fi

if [ ${#DEFERRED[@]} -ne 0 ]; then
  say ""
  say "DEFERRED (${#DEFERRED[@]}) -- NOT run, NOT verified:"
  for d in "${DEFERRED[@]}"; do say "    $d"; done
fi

if [ ${#MISSING[@]} -ne 0 ]; then
  say ""
  say "MISSING PREREQUISITES (${#MISSING[@]}):"
  for m in "${MISSING[@]}"; do say "    [exit ${m%%:*}] ${m#*:}"; done
fi

if [ ${#FAILED[@]} -ne 0 ]; then
  say ""
  say "FAILED (${#FAILED[@]}):"
  for f in "${FAILED[@]}"; do say "    $f"; done
  say ""
  say "VERIFICATION FAILED (exit 1).  Do not treat any claim resting on a failed"
  say "step as checked."
  exit 1
fi

if [ ${#MISSING[@]} -ne 0 ]; then
  code="${MISSING[0]%%:*}"
  say ""
  say "MISSING PREREQUISITE (exit $code).  Every check that could run passed, but"
  say "the environment does not provide the tool(s) listed above, so the steps"
  say "they block are UNVERIFIED."
  exit "$code"
fi

if [ ${#DEFERRED[@]} -ne 0 ]; then
  say ""
  say "PARTIAL VERIFICATION (exit 2).  Every executed check passed, but"
  say "${#DEFERRED[@]} step(s) were deferred and are UNVERIFIED."
  say "Re-run without --quick / --steps for a complete verification."
  exit 2
fi

say ""
say "COMPLETE SUCCESS (exit 0).  ALL CHECKS PASSED."
say "  Lean build clean, no sorry, every declared library built;"
say "  the kernel's own #print axioms output checked, not just a source grep:"
say "  no axiom outside propext / Classical.choice / Quot.sound anywhere, no"
say "  sorryAx, and every headline theorem present in the evidence by name;"
say "  f(7,7) >= 38 certificate re-checked from coordinates, I = 38 asserted;"
say "  all 225 endgame cases re-refuted by an independent checker;"
say "  every data/ and tool hash matches its manifest;"
say "  the DRAT gate was shown to reject non-refutations before being relied on;"
say "  the 19 MB of gitignored CNFs regenerate byte-identically;"
say "  the A7 evidence reproduces (20/20 CNFs, 15/15 DRAT refutations, 5/5 models);"
say "  Implementation B independently reproduces the same 225 triples."
say ""
say "Note what this does NOT establish.  f(7,7) = 38 is not a Lean theorem."
say "As of 2026-09-17 the upper bound no longer rests on any published lemma:"
say "RealUpperBound.isGreatest_38_real proves that 38 is exactly the greatest"
say "number of boundary intersection points of two simple heptagons with REAL"
say "coordinates, as a set in R x R, importing nothing.  What it carries is ONE"
say "hypothesis -- general position, a field of RConfig.  As of row 51 that"
say "hypothesis is narrowed: AKR9.points_le_38_of_no_vertex_on_boundary proves"
say "the POINT count assuming only AKR section 9's conclusion, so section 3's"
say "unproved clause is no longer an input anywhere.  As of 2026-09-24 the"
say "import is narrower again: section 9 splits into a vertex-vertex half (9.1)"
say "and a vertex-side half (9.2), and 9.2's half is now PROVED --"
say "Pair9Shift.points9_le_38_of_coincFree bounds the point count assuming only"
say "that the two heptagons share no VERTEX, which is strictly weaker than"
say "section 9's conclusion; a vertex may lie in the interior of a side."
say "Section 9.1's half is still imported as prose and is not formalized."
say "And no person outside this AI-assisted process has reviewed any of it."
say "See docs/verification-status.md rows 4, 18, 46, 47, 50, 51, 113, 121."
exit 0
