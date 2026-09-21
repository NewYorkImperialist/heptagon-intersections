#!/bin/bash
cd "$(dirname "$0")"
for i in 0 1 2 3; do
  lo=$((i*64)); hi=$((lo+64))
  python3 census_final.py $lo $hi 4000 > final_$i.log 2>&1 &
done
wait
echo "FINAL CENSUS DONE"
