import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2500-2549 of the 2915-step refutation of ccase001: 120 core clauses and 58 earlier-derived ones give 12 more. -/
theorem CCase001_block050
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v6)
    (c22 : ¬v4 ∨ ¬v2 ∨ ¬v7)
    (c25 : ¬v2 ∨ ¬v6 ∨ ¬v7)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c27 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c29 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c32 : ¬v6 ∨ ¬v5 ∨ ¬v4)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c34 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c35 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c61 : ¬v13 ∨ ¬v9 ∨ ¬v12)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c73 : ¬v12 ∨ ¬v14 ∨ ¬v13)
    (c77 : v12 ∨ v13 ∨ v9 ∨ v10 ∨ v14 ∨ v8)
    (c80 : ¬v15 ∨ ¬v16)
    (c81 : ¬v15 ∨ ¬v17)
    (c82 : ¬v15 ∨ ¬v18)
    (c83 : ¬v15 ∨ ¬v19)
    (c84 : ¬v15 ∨ ¬v20)
    (c85 : ¬v15 ∨ ¬v21)
    (c86 : ¬v16 ∨ ¬v17)
    (c90 : ¬v16 ∨ ¬v21)
    (c102 : ¬v22 ∨ ¬v23)
    (c103 : ¬v22 ∨ ¬v24)
    (c104 : ¬v22 ∨ ¬v25)
    (c105 : ¬v22 ∨ ¬v26)
    (c106 : ¬v22 ∨ ¬v27)
    (c107 : ¬v22 ∨ ¬v28)
    (c108 : ¬v23 ∨ ¬v24)
    (c109 : ¬v25 ∨ ¬v23)
    (c110 : ¬v26 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c119 : ¬v28 ∨ ¬v25)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v31 ∨ ¬v29)
    (c126 : ¬v32 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v34 ∨ ¬v29)
    (c129 : ¬v35 ∨ ¬v29)
    (c130 : ¬v31 ∨ ¬v30)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c148 : ¬v39 ∨ ¬v36)
    (c150 : ¬v36 ∨ ¬v41)
    (c151 : ¬v36 ∨ ¬v42)
    (c156 : ¬v42 ∨ ¬v37)
    (c160 : ¬v42 ∨ ¬v38)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c164 : ¬v40 ∨ ¬v41)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c173 : ¬v49 ∨ ¬v43)
    (c178 : ¬v49 ∨ ¬v44)
    (c182 : ¬v49 ∨ ¬v45)
    (c185 : ¬v49 ∨ ¬v46)
    (c187 : ¬v49 ∨ ¬v47)
    (c188 : ¬v49 ∨ ¬v48)
    (c190 : v43 ∨ v36 ∨ v1 ∨ v15 ∨ v29 ∨ v22 ∨ v8)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c213 : v12 ∨ v47 ∨ v3 ∨ v46 ∨ v5 ∨ v11 ∨ v45 ∨ ¬v4)
    (c226 : v9 ∨ v2 ∨ v4 ∨ v46 ∨ v10 ∨ ¬v3 ∨ v44 ∨ v45)
    (c241 : v10 ∨ v3 ∨ v46 ∨ v11 ∨ v5 ∨ v47 ∨ v45 ∨ ¬v4)
    (c248 : ¬v41 ∨ v35 ∨ v40 ∨ v34 ∨ v42 ∨ v47 ∨ v48 ∨ v33)
    (c269 : v6 ∨ ¬v5 ∨ v4 ∨ v11 ∨ v47 ∨ v46 ∨ v48 ∨ v12)
    (c284 : v36 ∨ ¬v16 ∨ v37 ∨ v28 ∨ v23 ∨ v8 ∨ v14 ∨ v24 ∨ v17 ∨ v15 ∨ v21 ∨ v30 ∨ v9 ∨ v38)
    (c286 : v36 ∨ v22 ∨ v37 ∨ v35 ∨ ¬v29 ∨ v14 ∨ v28 ∨ v30 ∨ v24 ∨ v15 ∨ v8 ∨ v31 ∨ v9 ∨ v38)
    (c296 : v20 ∨ v21 ∨ v19 ∨ ¬v13 ∨ v12 ∨ v7 ∨ v14 ∨ v6)
    (c311 : ¬v34 ∨ v41 ∨ v26 ∨ v27 ∨ v35 ∨ v28 ∨ v33 ∨ v40)
    (c317 : v22 ∨ ¬v15 ∨ v21 ∨ v16 ∨ v9 ∨ v28 ∨ v8 ∨ v14)
    (c326 : ¬v41 ∨ v48 ∨ v34 ∨ v12 ∨ v14 ∨ v35 ∨ v13 ∨ v29 ∨ v42 ∨ v36 ∨ v40 ∨ v43 ∨ v47 ∨ v6)
    (c354 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v19 ∨ ¬v11 ∨ v4 ∨ v18)
    (c359 : ¬v49 ∨ v42 ∨ v13 ∨ v1 ∨ v8 ∨ v41 ∨ v14 ∨ v4 ∨ v39 ∨ v7 ∨ v43 ∨ v46 ∨ v47 ∨ v48)
    (c376 : v6 ∨ v48 ∨ v13 ∨ v12 ∨ v46 ∨ v4 ∨ v47 ∨ ¬v5)
    (c381 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ ¬v2 ∨ v3 ∨ v10 ∨ v44)
    (c415 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ v44 ∨ v3 ∨ ¬v2 ∨ v8)
    (c419 : ¬v26 ∨ v21 ∨ v25 ∨ v33 ∨ v48 ∨ v27 ∨ v46 ∨ v32 ∨ v19 ∨ v40 ∨ v35 ∨ v20 ∨ v47 ∨ v28)
    (c420 : ¬v49 ∨ v43 ∨ v41 ∨ v48 ∨ v7 ∨ v6 ∨ v1 ∨ v42)
    (c421 : v21 ∨ v20 ∨ v14 ∨ v12 ∨ v5 ∨ v19 ∨ v6 ∨ ¬v13)
    (c424 : ¬v49 ∨ v36 ∨ v6 ∨ v48 ∨ v42 ∨ v7 ∨ v43 ∨ v1)
    (c433 : ¬v3 ∨ v11 ∨ v44 ∨ v10 ∨ v4 ∨ v45 ∨ v46 ∨ v2)
    (c436 : v43 ∨ v29 ∨ v45 ∨ ¬v30 ∨ v40 ∨ v32 ∨ v37 ∨ v26 ∨ v33 ∨ v44 ∨ v31 ∨ v24 ∨ v36 ∨ v23)
    (c443 : v48 ∨ v14 ∨ v5 ∨ v12 ∨ v7 ∨ ¬v6 ∨ v47 ∨ v13)
    (c446 : ¬v49 ∨ v42 ∨ v37 ∨ v2 ∨ v1 ∨ v7 ∨ v22 ∨ v35 ∨ v41 ∨ v27 ∨ v28 ∨ v43 ∨ v44 ∨ v48)
    (c448 : ¬v49 ∨ v36 ∨ v7 ∨ v41 ∨ v48 ∨ v1 ∨ v43 ∨ v42)
    (c450 : v6 ∨ v20 ∨ v13 ∨ v19 ∨ v11 ∨ v18 ∨ ¬v12 ∨ v5)
    (c482 : v8 ∨ ¬v9 ∨ v16 ∨ v3 ∨ v1 ∨ v2 ∨ v15 ∨ v10)
    (c524 : v20 ∨ v13 ∨ v5 ∨ v18 ∨ v11 ∨ v4 ∨ v19 ∨ ¬v12)
    (c525 : v12 ∨ v19 ∨ v5 ∨ v18 ∨ v17 ∨ ¬v11 ∨ v10 ∨ v4)
    (c527 : v29 ∨ ¬v16 ∨ v30 ∨ v24 ∨ v9 ∨ v23 ∨ v27 ∨ v8 ∨ v20 ∨ v15 ∨ v21 ∨ v13 ∨ v17 ∨ v31)
    (c579 : ¬v49 ∨ v42 ∨ v3 ∨ v14 ∨ v13 ∨ v38 ∨ v8 ∨ v6 ∨ v7 ∨ v36 ∨ v43 ∨ v44 ∨ v45 ∨ v48)
    (c606 : v21 ∨ v7 ∨ v17 ∨ v23 ∨ v18 ∨ ¬v10 ∨ v8 ∨ v2 ∨ v3 ∨ v9 ∨ v14 ∨ v11 ∨ v24 ∨ v25)
    (c649 : ¬v4 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c778 : v12 ∨ ¬v2 ∨ ¬v5 ∨ v9 ∨ v10 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c839 : v13 ∨ ¬v2 ∨ v4 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1017 : v20 ∨ v6 ∨ v13 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c1033 : ¬v30 ∨ v22 ∨ v23 ∨ v36 ∨ v37 ∨ v38)
    (c1039 : ¬v15 ∨ v8 ∨ v14 ∨ v16 ∨ v22 ∨ v23 ∨ v28)
    (c1071 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v31 ∨ v39 ∨ v46)
    (c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1094 : v27 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c1245 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1430 : ¬v28 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15)
    (c1433 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34 ∨ v35)
    (c1435 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1443 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v32 ∨ v33)
    (c1468 : ¬v3 ∨ ¬v2 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20)
    (c1560 : ¬v15 ∨ v8 ∨ v14 ∨ v22 ∨ v23 ∨ v28)
    (c1590 : v21 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v22)
    (c1600 : ¬v22 ∨ v3 ∨ v9 ∨ v10 ∨ v38 ∨ v39 ∨ v45)
    (c1684 : ¬v24 ∨ v8 ∨ v9 ∨ ¬v15)
    (c1689 : ¬v15 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v10)
    (c1731 : v5 ∨ v12 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v28 ∨ v46 ∨ v47 ∨ v48)
    (c1744 : ¬v34 ∨ ¬v37 ∨ v43 ∨ v44)
    (c1760 : ¬v33 ∨ v16 ∨ v17 ∨ v22 ∨ ¬v23 ∨ v24)
    (c1764 : ¬v34 ∨ v16 ∨ v17 ∨ v22 ∨ ¬v23 ∨ v24)
    (c1778 : v8 ∨ v1 ∨ ¬v13 ∨ ¬v15 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v46 ∨ v47 ∨ v48)
    (c1911 : v10 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v16)
    (c1919 : v39 ∨ v4 ∨ v11 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1935 : ¬v20 ∨ ¬v11 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c1999 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44)
    (c2006 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44)
    (c2132 : v20 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ ¬v34 ∨ v45 ∨ v47 ∨ v48)
    (c2249 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2297 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2344 : ¬v32 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2353 : v30 ∨ v2 ∨ v9 ∨ ¬v24 ∨ v31 ∨ v32 ∨ v43 ∨ v44 ∨ v45)
    (c2367 : ¬v29 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2396 : ¬v35 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2412 : ¬v22 ∨ v8 ∨ v13 ∨ v14 ∨ v20 ∨ ¬v21)
    (c2436 : ¬v32 ∨ v3 ∨ v10 ∨ v16 ∨ v17 ∨ v18 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2437 : ¬v33 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2547 : v31 ∨ ¬v38 ∨ v44 ∨ v45 ∨ v46)
    (c2581 : v25 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v11 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v17 ∨ v21 ∨ v22 ∨ v23)
    (c2601 : ¬v30 ∨ ¬v39 ∨ v45 ∨ v46)
    (c2612 : ¬v35 ∨ v4 ∨ v11 ∨ v18 ∨ v44 ∨ v45 ∨ v46)
    (c2719 : ¬v22 ∨ v15 ∨ v21 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c2740 : v17 ∨ v3 ∨ v10 ∨ v16 ∨ v29 ∨ v31 ∨ v32 ∨ v44 ∨ v45 ∨ v46)
    (c2753 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v4 ∨ ¬v11)
    (c2754 : v24 ∨ v3 ∨ v10 ∨ v17 ∨ v30 ∨ v37 ∨ v38 ∨ v39 ∨ v45)
    (c2805 : ¬v32 ∨ v25 ∨ v38 ∨ v39 ∨ v40)
    (c2863 : ¬v31 ∨ v24 ∨ v32 ∨ v37 ∨ v38 ∨ v39)
    (c2905 : v33 ∨ v5 ∨ v12 ∨ v18 ∨ v19 ∨ v20 ∨ v27 ∨ v40 ∨ v47)
    (c2925 : ¬v28 ∨ ¬v16 ∨ v35)
    (c2941 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c2977 : ¬v32 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2978 : ¬v29 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v44 ∨ v45)
    (c3119 : v39 ∨ v4 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ v37 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47)
    (c3139 : ¬v2 ∨ ¬v4 ∨ v11 ∨ v12 ∨ v45 ∨ v46 ∨ v47)
    (c3140 : v49)
    : (¬v5 ∨ ¬v4 ∨ v7 ∨ v13 ∨ v20 ∨ v27 ∨ v34) ∧ (¬v13 ∨ v3 ∨ ¬v4 ∨ v5 ∨ ¬v12) ∧ (¬v41 ∨ v33 ∨ v34 ∨ v35) ∧ (¬v6 ∨ ¬v2 ∨ v12 ∨ v13 ∨ v14) ∧ (¬v15 ∨ v8 ∨ v14 ∨ ¬v25) ∧ (¬v22 ∨ v4 ∨ v5 ∨ v11 ∨ v12 ∨ v18 ∨ v19) ∧ (v7 ∨ v1 ∨ ¬v39) ∧ (v8 ∨ v1 ∨ v14 ∨ ¬v15 ∨ v21) ∧ (v42 ∨ v1 ∨ v4 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ v22) ∧ (v8 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ ¬v11 ∨ v14 ∨ v15 ∨ ¬v42) ∧ (¬v31 ∨ v8 ∨ v9 ∨ v14 ∨ v15 ∨ v21 ∨ ¬v22) ∧ (v30 ∨ v2 ∨ v8 ∨ v9 ∨ v13 ∨ v20 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v31) := by
  have c3141 : ¬v11 ∨ v1 ∨ ¬v4 ∨ v8 ∨ ¬v9 ∨ v16 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v10 := by
      rcases c54 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd n4 a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n9 a
    have u8 : v5 := by
      rcases c1731 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd n9 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd u8 a
      · exact absurd n2 a
      · exact a
    have u10 : ¬v3 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n2 a
    have u11 : v15 := by
      rcases c482 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u9
      · exact a
      · exact absurd a u5
    rcases c1689 with a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd n4 a
    · exact absurd a u5
  have c3142 : ¬v4 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ ¬v15 ∨ v21 ∨ ¬v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v9 := by
      rcases c1430 with a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
    have u6 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd n7 a
      · exact a
    have u7 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd n7 a
      · exact a
    have u8 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n7 a
    have u9 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n5 a
      · exact a
    have u10 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n5 a
      · exact a
    have u11 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n5 a
      · exact a
    have u12 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n5 a
      · exact a
    have u13 : ¬v11 := by
      rcases c3141 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd u5 a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd n7 a
    have u14 : v2 := by
      rcases c2581 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u7
    have u15 : ¬v5 := by
      rcases c20 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u14 a
    have u16 : v12 := by
      rcases c3139 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd n0 a
      · exact absurd a u13
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u17 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u14 a
    have u18 : v10 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd n0 a
    rcases c55 with a|a|a
    · exact absurd u5 a
    · exact absurd u16 a
    · exact absurd u18 a
  have c3143 : ¬v5 ∨ ¬v4 ∨ v7 ∨ v13 ∨ v20 ∨ v27 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v6 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u5 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u6 : v41 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n4
      · exact a
      · exact absurd a n6
    have u7 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u6 a
      · exact a
    rcases c424 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u5
  have c3144 : ¬v12 ∨ ¬v4 ∨ v7 ∨ v8 ∨ ¬v9 ∨ v13 ∨ v14 ∨ v18 ∨ v19 ∨ v20 ∨ v27 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v11 := by
      rcases c58 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v10 := by
      rcases c55 with a|a|a
      · exact absurd n4 a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v5 := by
      rcases c3143 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v6 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd n0 a
      · exact absurd a u7
    rcases c649 with a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd u8 a
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3145 : v8 ∨ v1 ∨ ¬v4 ∨ v7 ∨ v14 ∨ ¬v15 ∨ v21 ∨ v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n5 a
      · exact a
    have u7 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n5 a
      · exact a
    have u8 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n5 a
      · exact a
    have u9 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n5 a
      · exact a
    have u10 : v9 := by
      rcases c1590 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a u5
      · exact absurd a n7
    have u11 : ¬v28 := by
      rcases c3142 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact a
    have u12 : v23 := by
      rcases c1560 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n7
      · exact a
      · exact absurd a u11
    have u13 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v33 := by
      rcases c1760 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd u12 a
      · exact absurd a u13
    have u16 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u17 : ¬v34 := by
      rcases c1764 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd u12 a
      · exact absurd a u13
    have u18 : ¬v13 := by
      rcases c1778 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd n5 a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd u12 a
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u19 : ¬v5 := by
      rcases c3143 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u17
    have u20 : ¬v12 := by
      rcases c3144 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd u10 a
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u17
    rcases c2905 with a|a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a u3
  have c3146 : v9 ∨ ¬v4 ∨ v5 ∨ v7 ∨ v8 ∨ v11 ∨ ¬v12 ∨ v13 ∨ v14 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v6 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd n6 a
      · exact absurd a n2
    have u6 : v10 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u7 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v2 := by
      rcases c21 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u5 a
    rcases c606 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n13
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a n14
    · exact absurd a n10
    · exact absurd u6 a
    · exact absurd a n4
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a n15
    · exact absurd a n16
  have c3147 : ¬v6 ∨ ¬v4 ∨ v9 ∨ v10 ∨ v16 ∨ v17 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v2 := by
      rcases c21 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v29 := by
      rcases c2978 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v32 := by
      rcases c2977 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : v30 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : v31 := by
      rcases c2740 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u8
      · exact a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c130 with a|a
    · exact absurd u11 a
    · exact absurd u10 a
  have c3148 : v7 ∨ v1 ∨ ¬v4 ∨ v5 ∨ v8 ∨ ¬v12 ∨ v13 ∨ v14 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v9 := by
      rcases c3144 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n18
    have u5 : v11 := by
      rcases c3146 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u6 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u5 a
    have u7 : ¬v6 := by
      rcases c3147 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n15
    have u8 : v41 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n17
      · exact absurd a n12
      · exact a
      · exact absurd a n18
    have u9 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u8 a
      · exact a
    rcases c424 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n1
  have c3149 : ¬v12 ∨ v1 ∨ ¬v4 ∨ v7 ∨ v8 ∨ v14 ∨ ¬v15 ∨ v23 ∨ v28 ∨ ¬v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n9 a
      · exact a
    have u9 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n9 a
      · exact a
    have u10 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n9 a
      · exact a
    have u11 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n9 a
    have u12 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd n9 a
      · exact a
    have u13 : ¬v37 := by
      rcases c1744 with a|a|a|a
      · exact absurd n9 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
    have u14 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n6 a
      · exact a
    have u15 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n6 a
      · exact a
    have u16 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n6 a
      · exact a
    have u17 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n6 a
      · exact a
    have u18 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n6 a
      · exact a
    have u19 : v22 := by
      rcases c1039 with a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u14
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
    have u21 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u22 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u23 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u24 : ¬v26 := by
      rcases c1443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u11
    have u25 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u19 a
      · exact a
    have u26 : v41 := by
      rcases c311 with a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact a
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u23
    have u27 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : v6 := by
      rcases c424 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u27
      · exact a
      · exact absurd a u7
      · exact absurd a u28
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n1
    have u30 : ¬v2 := by
      rcases c21 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u29 a
    have u31 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u29 a
    have u32 : v9 := by
      rcases c1999 with a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact absurd a u30
      · exact a
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
    have u33 : v10 := by
      rcases c2754 with a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u31
      · exact a
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u4
    rcases c55 with a|a|a
    · exact absurd u32 a
    · exact absurd n0 a
    · exact absurd u33 a
  have c3150 : v34 ∨ v1 ∨ ¬v4 ∨ v7 ∨ v8 ∨ ¬v12 ∨ v13 ∨ v14 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v5 := by
      rcases c3143 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n0
    rcases c3148 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd n5 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n0
  have c3151 : v1 ∨ ¬v4 ∨ v7 ∨ v8 ∨ ¬v12 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n7 a
      · exact a
    have u6 : v22 := by
      rcases c3145 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
      · exact a
    have u7 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v34 := by
      rcases c3149 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a u8
      · exact absurd a u7
      · exact a
    rcases c3150 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n4 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
  have c3152 : v34 ∨ ¬v4 ∨ v7 ∨ v8 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ v20 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v5 := by
      rcases c3143 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n0
    have u7 : ¬v6 := by
      rcases c443 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n2
      · exact a
      · exact absurd a u4
      · exact absurd a n5
    have u8 : v33 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u9 : v41 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n8
      · exact a
      · exact absurd a n0
    have u10 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u9 a
    rcases c326 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u10
    · exact absurd a n5
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u7
  have c3153 : v8 ∨ v1 ∨ ¬v4 ∨ v7 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v22 := by
      rcases c3145 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact a
    have u9 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n6 a
      · exact a
    have u10 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n6 a
      · exact a
    have u11 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n6 a
      · exact a
    have u12 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v12 := by
      rcases c3151 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
    have u16 : v34 := by
      rcases c3152 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u14
    have u17 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u21 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u22 : v5 := by
      rcases c2905 with a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a u6
    have u23 : v41 := by
      rcases c311 with a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u21
    have u24 : ¬v3 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd n2 a
    have u25 : ¬v6 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd n2 a
    have u26 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u23 a
      · exact a
    rcases c579 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u27
    · exact absurd a u24
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u20
    · exact absurd a n0
    · exact absurd a u25
    · exact absurd a n3
    · exact absurd a u26
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u7
  have c3154 : v12 ∨ ¬v4 ∨ v7 ∨ ¬v13 ∨ v14 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v6 := by
      rcases c296 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact a
    have u9 : ¬v5 := by
      rcases c32 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n1 a
    have u10 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u8 a
    have u11 : v33 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u12 : v11 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u9
      · exact a
      · exact absurd a u4
      · exact absurd n1 a
    have u13 : v10 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u10
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c65 with a|a|a
    · exact absurd u13 a
    · exact absurd n3 a
    · exact absurd u12 a
  have c3155 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd n0 a
      · exact a
    rcases c248 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n1
  have c3156 : ¬v30 ∨ v1 ∨ v6 ∨ v7 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n0 a
    have u13 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n0 a
    have u14 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u15 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u16 : ¬v41 := by
      rcases c3155 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u15
    have u17 : v42 := by
      rcases c420 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u18 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : v22 := by
      rcases c1033 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u14
    have u21 : v26 := by
      rcases c436 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd n0 a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u18
      · exact a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u19
      · exact absurd a n4
    rcases c105 with a|a
    · exact absurd u20 a
    · exact absurd u21 a
  have c3157 : v7 ∨ v1 ∨ ¬v4 ∨ v8 ∨ v14 ∨ ¬v15 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n5 a
      · exact a
    have u8 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n5 a
      · exact a
    have u9 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n5 a
      · exact a
    have u10 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n5 a
      · exact a
    have u11 : v22 := by
      rcases c3145 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact a
    have u12 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : v13 := by
      rcases c3153 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
    have u16 : v12 := by
      rcases c3154 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd u15 a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a u12
    have u17 : ¬v11 := by
      rcases c70 with a|a|a
      · exact absurd u16 a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v10 := by
      rcases c67 with a|a|a
      · exact absurd u16 a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u21 : ¬v30 := by
      rcases c3156 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u14
    have u22 : v2 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u23 : v3 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd u22 a
      · exact a
      · exact absurd a u19
      · exact absurd a u3
    rcases c16 with a|a|a
    · exact absurd n2 a
    · exact absurd u23 a
    · exact absurd u22 a
  have c3158 : ¬v13 ∨ v3 ∨ ¬v4 ∨ v5 ∨ ¬v12 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v10 := by
      rcases c67 with a|a|a
      · exact absurd n4 a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v11 := by
      rcases c70 with a|a|a
      · exact absurd n4 a
      · exact absurd n0 a
      · exact a
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd n2 a
  have c3159 : ¬v41 ∨ v33 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd n0 a
    rcases c3155 with a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
  have c3160 : ¬v12 ∨ v2 ∨ v3 ∨ ¬v4 ∨ v5 ∨ v6 ∨ v8 ∨ v14 ∨ ¬v15 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v13 := by
      rcases c3158 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd n0 a
    have u9 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n8 a
      · exact a
    have u10 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n8 a
      · exact a
    have u11 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n8 a
      · exact a
    have u12 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd n8 a
      · exact a
    have u13 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n8 a
      · exact a
    have u14 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n8 a
      · exact a
    have u15 : v11 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u14
      · exact a
      · exact absurd a u10
      · exact absurd n0 a
      · exact absurd a n4
    have u16 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd n0 a
    have u17 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u15 a
    have u18 : v22 := by
      rcases c1590 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a u9
      · exact a
    have u19 : ¬v28 := by
      rcases c1430 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd n8 a
    have u20 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
    have u21 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u22 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u23 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u18 a
      · exact a
    have u24 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u25 : ¬v41 := by
      rcases c3155 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u24
    rcases c1017 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a n5
    · exact absurd a u8
    · exact absurd a u23
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u22
    · exact absurd a u25
    · exact absurd a u7
  have c3161 : v10 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ v12 ∨ v13 ∨ v14 ∨ v16 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v9 := by
      rcases c1911 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n8
    rcases c77 with a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n4
  have c3162 : ¬v4 ∨ v1 ∨ v8 ∨ v14 ∨ ¬v15 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n4 a
      · exact a
    have u9 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n4 a
      · exact a
    have u10 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n4 a
      · exact a
    have u11 : v7 := by
      rcases c3157 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
    have u12 : ¬v6 := by
      rcases c34 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v3 := by
      rcases c28 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u11 a
    have u14 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u11 a
    have u15 : ¬v2 := by
      rcases c22 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v12 := by
      rcases c3160 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd n0 a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
    have u17 : v11 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u14
      · exact a
      · exact absurd a u4
      · exact absurd n0 a
    have u18 : ¬v13 := by
      rcases c421 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u12
      · exact a
    have u19 : v10 := by
      rcases c3161 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u8
    have u20 : ¬v9 := by
      rcases c54 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u17 a
    have u21 : v22 := by
      rcases c1590 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u8
      · exact a
    have u22 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : v33 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u25 : v30 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c132 with a|a
    · exact absurd u24 a
    · exact absurd u25 a
  have c3163 : ¬v6 ∨ ¬v2 ∨ v12 ∨ v13 ∨ v14 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v4 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u6 : ¬v5 := by
      rcases c839 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a u5
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u7 : v7 := by
      rcases c443 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n2
      · exact a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a n3
    rcases c25 with a|a|a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd u7 a
  have c3164 : v40 ∨ v4 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ v19 ∨ v20 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v33 := by
      rcases c2905 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u6
    have u8 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    rcases c3119 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c3165 : v11 ∨ v4 ∨ v5 ∨ v12 ∨ v13 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v34 := by
      rcases c2132 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
    have u8 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a u8
    have u10 : v40 := by
      rcases c3164 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u9
    have u11 : v33 := by
      rcases c1245 with a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u12 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
    have u16 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c1071 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a u4
  have c3166 : v9 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v24 := by
      rcases c1684 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd n7 a
    have u9 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n7 a
      · exact a
    have u10 : ¬v4 := by
      rcases c3162 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
    have u11 : v22 := by
      rcases c1590 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a u9
      · exact a
    have u12 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u13 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
    have u14 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u17 : v30 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u23 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a u21
    have u24 : v42 := by
      rcases c359 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u23
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u25 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u24 a
    rcases c436 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u18
    · exact absurd a u4
    · exact absurd u17 a
    · exact absurd a u22
    · exact absurd a u12
    · exact absurd a u25
    · exact absurd a u14
    · exact absurd a u20
    · exact absurd a u3
    · exact absurd a u19
    · exact absurd a u8
    · exact absurd a u26
    · exact absurd a u15
  have c3167 : ¬v15 ∨ v8 ∨ v14 ∨ ¬v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1039 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
  have c3168 : v22 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v11 ∨ v14 ∨ ¬v15 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n7 a
      · exact a
    have u9 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n7 a
      · exact a
    have u10 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n7 a
      · exact a
    have u11 : ¬v25 := by
      rcases c3167 with a|a|a|a
      · exact absurd n7 a
      · exact absurd a n4
      · exact absurd a n6
      · exact a
    have u12 : ¬v4 := by
      rcases c3162 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
    have u13 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u14 : v23 := by
      rcases c2581 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n0
      · exact a
    have u15 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : v39 := by
      rcases c1919 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u20 : ¬v30 := by
      rcases c2601 with a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u4
      · exact absurd a u5
    have u21 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c446 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u21
    · exact absurd a u23
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u13
    · exact absurd a u22
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u7
  have c3169 : v1 ∨ ¬v5 ∨ v8 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n6 a
      · exact a
    have u7 : ¬v25 := by
      rcases c3167 with a|a|a|a
      · exact absurd n6 a
      · exact absurd a n2
      · exact absurd a n5
      · exact a
    have u8 : ¬v4 := by
      rcases c3162 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
    have u9 : v6 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd n1 a
    have u10 : ¬v2 := by
      rcases c3163 with a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd n1 a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v3 := by
      rcases c29 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u9 a
    have u13 : v9 := by
      rcases c3166 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
    have u14 : ¬v11 := by
      rcases c2753 with a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u8
      · exact a
    have u15 : v22 := by
      rcases c3168 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
    have u16 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : v39 := by
      rcases c1919 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u19 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u18 a
      · exact a
    rcases c448 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u21
    · exact absurd a u11
    · exact absurd a u20
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u19
  have c3170 : v13 ∨ v1 ∨ v8 ∨ v12 ∨ v14 ∨ ¬v15 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n5 a
      · exact a
    have u9 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n5 a
      · exact a
    have u10 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n5 a
      · exact a
    have u11 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n5 a
      · exact a
    have u12 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n5 a
      · exact a
    have u13 : ¬v4 := by
      rcases c3162 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
    have u14 : ¬v5 := by
      rcases c3169 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
    have u15 : v11 := by
      rcases c3165 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n6
    have u16 : v10 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd u15 a
      · exact a
      · exact absurd a u13
    have u17 : ¬v9 := by
      rcases c54 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u15 a
    have u18 : v22 := by
      rcases c1590 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a u8
      · exact a
    have u19 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : v33 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u23 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u22 a
    have u27 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u28 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u23
      · exact absurd a u27
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u20
    have u29 : ¬v6 := by
      rcases c3163 with a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u30 : v41 := by
      rcases c1094 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u29
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u26
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u25
      · exact a
      · exact absurd a u7
    have u31 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u30 a
    have u32 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u30 a
      · exact a
    have u33 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u30 a
    rcases c326 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u30 a
    · exact absurd a u7
    · exact absurd a u24
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u25
    · exact absurd a n0
    · exact absurd a u26
    · exact absurd a u32
    · exact absurd a u31
    · exact absurd a u33
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u29
  have c3171 : ¬v11 ∨ v4 ∨ v12 ∨ ¬v13 ∨ v17 ∨ v18 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u8 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
    have u9 : v5 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n6
      · exact a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a u7
      · exact absurd a n1
    have u10 : v3 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n5
    have u11 : ¬v2 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u9 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    rcases c226 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd u10 a
    · exact absurd a u2
    · exact absurd a u3
  have c3172 : v1 ∨ v2 ∨ ¬v5 ∨ v8 ∨ v12 ∨ v14 ∨ ¬v15 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n6 a
      · exact a
    have u7 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n6 a
      · exact a
    have u8 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n6 a
      · exact a
    have u9 : ¬v25 := by
      rcases c3167 with a|a|a|a
      · exact absurd n6 a
      · exact absurd a n3
      · exact absurd a n5
      · exact a
    have u10 : ¬v4 := by
      rcases c3162 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
    have u11 : v13 := by
      rcases c3170 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
    have u12 : ¬v11 := by
      rcases c3171 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd u11 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
    have u13 : v6 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n4
    have u14 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd n2 a
      · exact absurd u13 a
      · exact a
    have u15 : v22 := by
      rcases c3168 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
    have u16 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : v39 := by
      rcases c1919 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u19 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u18 a
      · exact a
    rcases c448 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u21
    · exact absurd a u14
    · exact absurd a u20
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u19
  have c3173 : ¬v22 ∨ v4 ∨ v5 ∨ v11 ∨ v12 ∨ v18 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : v33 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : v39 := by
      rcases c1919 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u11 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u9 a
    rcases c2941 with a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u11
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3174 : v2 ∨ v1 ∨ v8 ∨ v12 ∨ v14 ∨ ¬v15 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v13 := by
      rcases c3170 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
    have u6 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n5 a
      · exact a
    have u7 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n5 a
      · exact a
    have u8 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n5 a
      · exact a
    have u9 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n5 a
      · exact a
    have u10 : ¬v4 := by
      rcases c3162 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
    have u11 : ¬v5 := by
      rcases c3172 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
    have u12 : ¬v11 := by
      rcases c3171 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd u5 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
    have u13 : ¬v22 := by
      rcases c3173 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u9
    have u14 : v9 := by
      rcases c1590 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a u6
      · exact absurd a u13
    have u15 : ¬v10 := by
      rcases c56 with a|a|a
      · exact absurd u14 a
      · exact absurd u5 a
      · exact a
    have u16 : v3 := by
      rcases c1689 with a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd u14 a
      · exact absurd a u15
    rcases c433 with a|a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u12
    · exact absurd a u2
    · exact absurd a u15
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n0
  have c3175 : v12 ∨ v1 ∨ v8 ∨ v14 ∨ ¬v15 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n4 a
      · exact a
    have u8 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n4 a
      · exact a
    have u9 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n4 a
      · exact a
    have u10 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n4 a
      · exact a
    have u11 : ¬v25 := by
      rcases c3167 with a|a|a|a
      · exact absurd n4 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
    have u12 : ¬v4 := by
      rcases c3162 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
    have u13 : v13 := by
      rcases c3170 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
    have u14 : v2 := by
      rcases c3174 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
    have u15 : ¬v3 := by
      rcases c1468 with a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a n0
      · exact absurd u13 a
      · exact absurd a n3
      · exact absurd a u9
    have u16 : v9 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd u14 a
      · exact absurd a n2
    have u17 : ¬v11 := by
      rcases c59 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v10 := by
      rcases c56 with a|a|a
      · exact absurd u16 a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd a u19
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u20
  have c3176 : ¬v13 ∨ v1 ∨ v4 ∨ v8 ∨ v11 ∨ ¬v12 ∨ ¬v15 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v10 := by
      rcases c67 with a|a|a
      · exact absurd n5 a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n6 a
      · exact a
    have u11 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n6 a
      · exact a
    have u12 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd n6 a
      · exact a
    have u13 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n6 a
      · exact a
    have u14 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n5 a
    have u15 : ¬v24 := by
      rcases c1684 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd n6 a
    have u16 : v22 := by
      rcases c1590 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd n6 a
      · exact absurd a u10
      · exact a
    have u17 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : v39 := by
      rcases c1919 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u20 : ¬v30 := by
      rcases c2601 with a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u4
      · exact absurd a u5
    have u21 : v32 := by
      rcases c2941 with a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u22 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u19 a
      · exact a
    have u25 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u26 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u20
      · exact absurd a u25
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u18
    have u27 : v3 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u28 : v7 := by
      rcases c448 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u24
      · exact a
      · exact absurd a u23
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u22
    rcases c19 with a|a|a
    · exact absurd u26 a
    · exact absurd u27 a
    · exact absurd u28 a
  have c3177 : ¬v22 ∨ v1 ∨ v4 ∨ ¬v5 ∨ v11 ∨ v13 ∨ v18 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : v39 := by
      rcases c1919 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u12 : v32 := by
      rcases c2941 with a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u13 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : v7 := by
      rcases c448 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u15
      · exact a
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u13
    have u18 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a u16
    rcases c35 with a|a|a
    · exact absurd n3 a
    · exact absurd u18 a
    · exact absurd u17 a
  have c3178 : v2 ∨ v1 ∨ v4 ∨ v8 ∨ ¬v9 ∨ v10 ∨ v11 ∨ v16 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n0
    have u6 : ¬v15 := by
      rcases c1689 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
    rcases c482 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n4 a
    · exact absurd a n7
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a n5
  have c3179 : v11 ∨ v1 ∨ v4 ∨ v8 ∨ ¬v12 ∨ v14 ∨ ¬v15 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n6 a
      · exact a
    have u8 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n6 a
      · exact a
    have u9 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n6 a
      · exact a
    have u10 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd n6 a
      · exact a
    have u11 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n6 a
      · exact a
    have u12 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n6 a
      · exact a
    have u13 : ¬v25 := by
      rcases c3167 with a|a|a|a
      · exact absurd n6 a
      · exact absurd a n3
      · exact absurd a n5
      · exact a
    have u14 : ¬v13 := by
      rcases c3176 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd n4 a
      · exact absurd n6 a
      · exact absurd a u13
    have u15 : v5 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u14
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd n4 a
    have u16 : ¬v22 := by
      rcases c3177 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u15 a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u9
    have u17 : v9 := by
      rcases c1590 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a u7
      · exact absurd a u16
    have u18 : ¬v10 := by
      rcases c55 with a|a|a
      · exact absurd u17 a
      · exact absurd n4 a
      · exact a
    have u19 : v2 := by
      rcases c3178 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u17 a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u7
    have u20 : ¬v3 := by
      rcases c17 with a|a|a
      · exact absurd u15 a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u22 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u21
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a u13
    · exact absurd a u22
  have c3180 : v7 ∨ v1 ∨ ¬v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd n2 a
      · exact a
    rcases c448 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u4
  have c3181 : v41 ∨ v1 ∨ v6 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v42 := by
      rcases c420 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u7 : ¬v39 := by
      rcases c3180 with a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
    have u8 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n7 a
      · exact a
    have u9 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd n7 a
      · exact a
    have u10 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n7 a
      · exact a
    have u11 : ¬v25 := by
      rcases c3167 with a|a|a|a
      · exact absurd n7 a
      · exact absurd a n4
      · exact absurd a n6
      · exact a
    have u12 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : v34 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a n0
      · exact a
    have u15 : ¬v32 := by
      rcases c2805 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u12
    have u16 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v26 := by
      rcases c419 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n9
    rcases c311 with a|a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a n0
    · exact absurd a u18
    · exact absurd a n8
    · exact absurd a u17
    · exact absurd a n9
    · exact absurd a u16
    · exact absurd a u12
  have c3182 : v6 ∨ v1 ∨ v4 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v41 := by
      rcases c3181 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u4 a
      · exact a
    rcases c424 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n1
  have c3183 : ¬v2 ∨ v1 ∨ v4 ∨ v8 ∨ v9 ∨ v13 ∨ v14 ∨ ¬v15 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v3 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u3
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
    have u6 : ¬v28 := by
      rcases c1430 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd n7 a
    have u7 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n7 a
      · exact a
    have u8 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd n7 a
      · exact a
    have u9 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n0 a
    have u10 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n0 a
      · exact absurd u5 a
      · exact a
    have u11 : v22 := by
      rcases c317 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n6
    have u12 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u11 a
      · exact a
    rcases c3182 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd n7 a
    · exact absurd a u12
    · exact absurd a u6
  have c3184 : v8 ∨ v1 ∨ v14 ∨ ¬v15 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n3 a
      · exact a
    have u7 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n3 a
      · exact a
    have u8 : ¬v4 := by
      rcases c3162 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
    have u9 : v12 := by
      rcases c3175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
    have u10 : v11 := by
      rcases c3179 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd u9 a
      · exact absurd a n2
      · exact absurd n3 a
    have u11 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u10 a
    have u12 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u9 a
    have u13 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v24 := by
      rcases c1684 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd n3 a
    have u15 : ¬v28 := by
      rcases c1430 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd n3 a
    have u16 : v22 := by
      rcases c317 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n2
    have u17 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v2 := by
      rcases c3183 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd n3 a
    have u19 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u20 : ¬v3 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u11
      · exact a
      · exact absurd a u3
      · exact absurd a u4
    have u21 : v30 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u22 : ¬v29 := by
      rcases c2978 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u4
    have u23 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u21 a
    rcases c2740 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u20
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u19
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c3185 : ¬v30 ∨ v23 ∨ v24 ∨ v31 ∨ v36 ∨ v37 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : v22 := by
      rcases c1033 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u13 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u11 a
      · exact a
    rcases c436 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd n0 a
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a n5
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n1
  have c3186 : v42 ∨ v1 ∨ v4 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v39 := by
      rcases c3180 with a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
    have u7 : v41 := by
      rcases c359 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u8 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n4
    have u10 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u9 a
      · exact a
    rcases c3159 with a|a|a|a
    · exact absurd u7 a
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u11
  have c3187 : v22 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v14 ∨ v15 ∨ v36 ∨ v37 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n3
    have u6 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : v16 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v28 := by
      rcases c2925 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u7
    have u12 : ¬v24 := by
      rcases c2353 with a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c286 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a u7
    · exact absurd u5 a
    · exact absurd a n5
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a u12
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a n9
  have c3188 : v8 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ ¬v11 ∨ v14 ∨ v15 ∨ ¬v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd n8 a
      · exact a
    have u6 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd n8 a
      · exact a
    have u7 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd n8 a
      · exact a
    have u8 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd n8 a
    have u9 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd n8 a
      · exact a
    have u10 : v22 := by
      rcases c3187 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u11 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u10 a
      · exact a
    have u17 : v10 := by
      rcases c1600 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u4
    have u18 : ¬v32 := by
      rcases c2805 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u5
    have u19 : ¬v31 := by
      rcases c2863 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u20 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd n5 a
    have u21 : ¬v20 := by
      rcases c1935 with a|a|a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u12
    have u22 : ¬v21 := by
      rcases c2412 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a n6
      · exact absurd a u21
      · exact a
    have u23 : ¬v30 := by
      rcases c3185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u24 : v16 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u25 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u24 a
      · exact a
    rcases c284 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd u24 a
    · exact absurd a u7
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u16
    · exact absurd a u25
    · exact absurd a n7
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a n4
    · exact absurd a u6
  have c3189 : ¬v31 ∨ v8 ∨ v9 ∨ v14 ∨ v15 ∨ v21 ∨ ¬v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n6 a
      · exact a
    rcases c2719 with a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
  have c3190 : v30 ∨ v2 ∨ v8 ∨ v9 ∨ v13 ∨ v20 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v16 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u6 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u5 a
      · exact a
    rcases c527 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd u5 a
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a n10
  exact ⟨c3143, c3158, c3159, c3163, c3167, c3173, c3180, c3184, c3186, c3188, c3189, c3190⟩
