#!/bin/sh
set -eu
cd "$(dirname "$0")"
export PYTHONDONTWRITEBYTECODE=1
python3 verify.py > verification.log 2>&1
cat verification.log
