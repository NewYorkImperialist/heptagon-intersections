#!/bin/sh
# Re-check every DRAT certificate in this repository with drat-trim, the
# reference checker, as an independent cross-check of the project's own
# dratcheck.py.  Exits non-zero if any certificate fails or if the checker
# fails its own gate test.
set -eu
cd "$(dirname "$0")"
ROOT=$(cd ../.. && pwd)
DT=${DRAT_TRIM:-./drat-trim}

if [ ! -x "$DT" ]; then
  echo "building drat-trim from source"
  [ -f drat-trim.c ] || curl -sSL -o drat-trim.c \
      https://raw.githubusercontent.com/marijnheule/drat-trim/master/drat-trim.c
  # Pin the source: this is the version this log was produced with.
  echo "d834b649f437e091597f5347f259b9f681087f89ca0844d0cee250a1a1a0c2ee  drat-trim.c" \
      | shasum -a 256 -c - || { echo "drat-trim.c digest mismatch"; exit 1; }
  cc -O2 -o drat-trim drat-trim.c
  DT=./drat-trim
fi

verdict() { "$DT" "$1" "$2" 2>&1 | grep -aoE "s (NOT )?VERIFIED" | head -1; }

# ---- gate: the checker must REJECT a bogus proof of a SATISFIABLE formula ----
# Without this the run below would be worthless: a checker that says VERIFIED to
# everything verifies nothing.
G_CNF=$ROOT/independent/residual_realizability/positive.cnf
G_DRAT=$ROOT/independent/residual_realizability/invalid.drat
[ -f "$G_CNF" ] || { echo "regenerate CNFs first: sh $ROOT/independent/residual_realizability/reproduce.sh"; exit 1; }
g=$(verdict "$G_CNF" "$G_DRAT")
echo "GATE  empty-clause proof of the satisfiable positive.cnf -> $g"
[ "$g" = "s NOT VERIFIED" ] || { echo "GATE FAILED: checker accepted a bogus proof"; exit 1; }

n=0; ok=0; skipped=0
check_dir() {
  cdir=$1; ddir=$2; label=$3
  for d in "$ddir"/*.drat; do
    [ -e "$d" ] || continue
    b=$(basename "$d" .drat); c="$cdir/$b.cnf"
    if [ ! -f "$c" ]; then skipped=$((skipped+1)); continue; fi
    n=$((n+1)); r=$(verdict "$c" "$d")
    if [ "$r" = "s VERIFIED" ]; then ok=$((ok+1)); else echo "FAIL $label/$b -> ${r:-no verdict}"; fi
  done
  echo "$label: $n running total, $ok verified"
}

R=$ROOT/independent/residual_realizability
for b in orbit_000 orbit_001 orbit_002 orbit_003 negative; do
  n=$((n+1)); r=$(verdict "$R/$b.cnf" "$R/$b.drat")
  if [ "$r" = "s VERIFIED" ]; then ok=$((ok+1)); else echo "FAIL residual/$b -> ${r:-no verdict}"; fi
done
echo "residual_realizability: $ok/$n"

A=$ROOT/independent/akr_l7_reproduction
check_dir "$A/evidence/cnf" "$A/evidence/drat" "akr_l7_generic"
check_dir "$A/coverage25/cnf" "$A/coverage25/drat" "akr_l7_coverage25"

echo "TOTAL: $ok of $n DRAT certificates verified by drat-trim ($skipped skipped for a missing .cnf)"
[ "$ok" = "$n" ] || { echo "SOME CERTIFICATES FAILED"; exit 1; }
# The CNFs are gitignored and regenerable.  Without this floor, a clone with no
# regenerated CNFs would skip every pair and still print ALL VERIFIED, which
# would be a checker that checks nothing.
EXPECTED=130
[ "$n" -ge "$EXPECTED" ] || { echo "ONLY $n PAIRS CHECKED, EXPECTED $EXPECTED -- regenerate the CNFs first"; exit 1; }
echo "ALL VERIFIED"
