#!/bin/bash
cd "$(dirname "$0")"
python3 isolate_randomize.py rand0   0  32 20000 > iso_rand0_a.log 2>&1 &
python3 isolate_randomize.py rand0  32  64 20000 > iso_rand0_b.log 2>&1 &
python3 isolate_randomize.py default  0  32 20000 > iso_def_a.log   2>&1 &
python3 isolate_randomize.py default 32  64 20000 > iso_def_b.log   2>&1 &
wait
echo "ISOLATION DONE"
