#!/bin/bash
cd "$(dirname "$0")"
for i in 0 1 2 3; do
  lo=$((i*64)); hi=$((lo+64))
  python3 census_v3.py 20000 $lo $hi > census4_$i.log 2>&1 &
done
wait
echo "ALL 4 SHARDS DONE"
