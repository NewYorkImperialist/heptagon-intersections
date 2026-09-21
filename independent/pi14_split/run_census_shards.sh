#!/bin/bash
cd "$(dirname "$0")"
N=${1:-8}; STEP=$((256/N))
for ((i=0;i<N;i++)); do
  lo=$((i*STEP)); hi=$((lo+STEP))
  python3 refine_branches.py --start $lo --stop $hi \
      --base-ms ${2:-20000} --ref-ms 1 --max-depth 0 > shard_census_$i.log 2>&1 &
done
wait
echo "ALL SHARDS DONE"
