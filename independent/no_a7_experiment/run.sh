#!/bin/sh
# ===========================================================================
# Deterministic end-to-end invocation of the NO-A7 experiment.
# Run from this directory:   sh run.sh
#
# Nothing outside independent/no_a7_experiment/ is written.  Everything the
# scripts read from the rest of the repository is read-only.
# Total runtime: about 8 minutes (dominated by the two Python pipeline runs).
# ===========================================================================
set -e
REPO=$(cd ../.. && pwd)

echo "== 0. regenerate the project's own class data (deterministic, ~10 s) =="
PYTHONPATH="$REPO/python/core" python3 "$REPO/python/core/chiro.py" > gen_ot7.log 2>&1
python3 "$REPO/python/classification/make_exceptional_profiles.py" \
        ot7_det.pkl exc_det.pkl > gen_exc.log 2>&1

echo "== 1. flat profile file for the C++ path (format conversion only) =="
python3 make_profiles2.py \
        "$REPO/data/exceptional_profiles/exceptional_profiles_14.json" \
        profiles2.txt

echo "== 2. the JSON profiles and the pickle-derived profiles must agree =="
python3 check_profile_agreement.py 2>&1 | tee log_profile_agreement.log

echo "== 3. C++ path, unit tests =="
c++ -O2 -std=c++17 -Wall -o reduction_a7opt reduction_a7opt.cpp
./reduction_a7opt --test profiles2.txt > log_cpp_tests.log 2>&1
tail -1 log_cpp_tests.log

echo "== 4. C++ path, A7 ON  (must reproduce the shipped 13003620/42238/24990/2300/121/225/0) =="
./reduction_a7opt --a7=on  profiles2.txt cpp_with_a7.json 2>&1 | tee log_cpp_with_a7.log

echo "== 5. C++ path, A7 OFF  (THE EXPERIMENT) =="
./reduction_a7opt --a7=off profiles2.txt cpp_no_a7.json   2>&1 | tee log_cpp_no_a7.log

echo "== 6. Python path (project's own predicates), A7 ON =="
python3 certificate_a7opt.py         --out py_with_a7.json > log_py_with_a7.log 2>&1
cat log_py_with_a7.log

echo "== 7. Python path, A7 OFF  (THE EXPERIMENT, second code path) =="
python3 certificate_a7opt.py --no-a7 --out py_no_a7.json  > log_py_no_a7.log 2>&1
cat log_py_no_a7.log

echo "== 7b. the I=42 branch of Step 9 (|E|=7), with and without A7 =="
python3 certificate_a7opt.py --edges 7         --out e7_with_a7.json > log_e7_with_a7.log 2>&1
python3 certificate_a7opt.py --edges 7 --no-a7 --out e7_no_a7.json   > log_e7_no_a7.log   2>&1
head -8 log_e7_no_a7.log

echo "== 8. the two paths must agree on the residual set =="
python3 compare_paths.py 2>&1 | tee log_compare_paths.log

echo "== 9. third code path: independent re-check of every residual triple =="
python3 verify_residual.py cpp_no_a7.json 2>&1 | tee log_verify_residual.log

echo "== 9b. NEGATIVE CONTROL: the same checker must REJECT the shipped 225 =="
python3 "$REPO/python/elimination/make_final_certificate.py" --out baseline_with_a7.json \
        > log_baseline_with_a7.log 2>&1
cat log_baseline_with_a7.log
python3 make_control.py
python3 verify_residual.py control_input.json > log_control_225.log 2>&1 || true
tail -2 log_control_225.log

echo "== 10. characterisation and diagnostics =="
python3 analyse_residual.py cpp_no_a7.json 2>&1 | tee log_analysis.log

echo "== 10b. per-class-pair counts under three representative labellings (K-11/D2) =="
python3 pairs_no_a7.py 2>&1 | tee log_pairs_no_a7.log

echo "== 10c. closed-form cross-check of the enumeration domain =="
python3 check_domain_count.py 2>&1 | tee log_domain_count.log

echo "== 11. hashes =="
shasum -a 256 $(ls | grep -v '^SHA256SUMS.txt$' | grep -v '^reduction_a7opt$') > SHA256SUMS.txt
cat SHA256SUMS.txt
