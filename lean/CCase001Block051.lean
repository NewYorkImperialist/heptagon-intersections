import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2550-2599 of the 2915-step refutation of ccase001: 111 core clauses and 79 earlier-derived ones give 16 more. -/
theorem CCase001_block051
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c29 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c32 : ¬v6 ∨ ¬v5 ∨ ¬v4)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c35 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c61 : ¬v13 ∨ ¬v9 ∨ ¬v12)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c86 : ¬v16 ∨ ¬v17)
    (c87 : ¬v16 ∨ ¬v18)
    (c88 : ¬v16 ∨ ¬v19)
    (c89 : ¬v16 ∨ ¬v20)
    (c90 : ¬v16 ∨ ¬v21)
    (c91 : ¬v17 ∨ ¬v18)
    (c92 : ¬v17 ∨ ¬v19)
    (c93 : ¬v17 ∨ ¬v20)
    (c95 : ¬v18 ∨ ¬v19)
    (c96 : ¬v18 ∨ ¬v20)
    (c98 : ¬v19 ∨ ¬v20)
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
    (c115 : ¬v27 ∨ ¬v24)
    (c116 : ¬v28 ∨ ¬v24)
    (c117 : ¬v25 ∨ ¬v26)
    (c119 : ¬v28 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
    (c121 : ¬v28 ∨ ¬v26)
    (c122 : ¬v27 ∨ ¬v28)
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
    (c138 : ¬v35 ∨ ¬v31)
    (c141 : ¬v35 ∨ ¬v32)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c146 : ¬v36 ∨ ¬v37)
    (c147 : ¬v36 ∨ ¬v38)
    (c148 : ¬v39 ∨ ¬v36)
    (c149 : ¬v40 ∨ ¬v36)
    (c150 : ¬v36 ∨ ¬v41)
    (c151 : ¬v36 ∨ ¬v42)
    (c156 : ¬v42 ∨ ¬v37)
    (c166 : ¬v41 ∨ ¬v42)
    (c173 : ¬v49 ∨ ¬v43)
    (c178 : ¬v49 ∨ ¬v44)
    (c182 : ¬v49 ∨ ¬v45)
    (c185 : ¬v49 ∨ ¬v46)
    (c187 : ¬v49 ∨ ¬v47)
    (c188 : ¬v49 ∨ ¬v48)
    (c190 : v43 ∨ v36 ∨ v1 ∨ v15 ∨ v29 ∨ v22 ∨ v8)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c199 : v43 ∨ ¬v36 ∨ v29 ∨ v16 ∨ v35 ∨ v44 ∨ v42 ∨ v37 ∨ v22 ∨ v31 ∨ v38 ∨ v15 ∨ v21 ∨ v45)
    (c213 : v12 ∨ v47 ∨ v3 ∨ v46 ∨ v5 ∨ v11 ∨ v45 ∨ ¬v4)
    (c217 : v43 ∨ ¬v36 ∨ v42 ∨ v44 ∨ v35 ∨ v30 ∨ v37 ∨ v29)
    (c226 : v9 ∨ v2 ∨ v4 ∨ v46 ∨ v10 ∨ ¬v3 ∨ v44 ∨ v45)
    (c270 : v36 ∨ v22 ∨ v23 ∨ v35 ∨ v28 ∨ ¬v29 ∨ v30 ∨ v37)
    (c284 : v36 ∨ ¬v16 ∨ v37 ∨ v28 ∨ v23 ∨ v8 ∨ v14 ∨ v24 ∨ v17 ∨ v15 ∨ v21 ∨ v30 ∨ v9 ∨ v38)
    (c301 : ¬v26 ∨ v33 ∨ v18 ∨ v25 ∨ v19 ∨ v20 ∨ v34 ∨ v27)
    (c304 : ¬v22 ∨ v29 ∨ v35 ∨ v28 ∨ v21 ∨ v23 ∨ v16 ∨ v15)
    (c311 : ¬v34 ∨ v41 ∨ v26 ∨ v27 ∨ v35 ∨ v28 ∨ v33 ∨ v40)
    (c313 : ¬v28 ∨ v22 ∨ v35 ∨ v27 ∨ v32 ∨ v18 ∨ v15 ∨ v26 ∨ v8 ∨ v34 ∨ v14 ∨ v13 ∨ v21 ∨ v25)
    (c354 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v19 ∨ ¬v11 ∨ v4 ∨ v18)
    (c359 : ¬v49 ∨ v42 ∨ v13 ∨ v1 ∨ v8 ∨ v41 ∨ v14 ∨ v4 ∨ v39 ∨ v7 ∨ v43 ∨ v46 ∨ v47 ∨ v48)
    (c363 : v43 ∨ ¬v23 ∨ v45 ∨ v24 ∨ v21 ∨ v37 ∨ v30 ∨ v31 ∨ v22 ∨ v28 ∨ v35 ∨ v15 ∨ v44 ∨ v16)
    (c375 : v43 ∨ ¬v36 ∨ v44 ∨ v35 ∨ v38 ∨ v37 ∨ v29 ∨ v32 ∨ v42 ∨ v23 ∨ v22 ∨ v28 ∨ v39 ∨ v46)
    (c376 : v6 ∨ v48 ∨ v13 ∨ v12 ∨ v46 ∨ v4 ∨ v47 ∨ ¬v5)
    (c378 : v29 ∨ ¬v22 ∨ v30 ∨ v21 ∨ v15 ∨ v9 ∨ v28 ∨ v23 ∨ v24 ∨ v8 ∨ v32 ∨ v25 ∨ v14 ∨ v18)
    (c381 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ ¬v2 ∨ v3 ∨ v10 ∨ v44)
    (c384 : v36 ∨ v29 ∨ v30 ∨ v15 ∨ v26 ∨ v33 ∨ v37 ∨ v27 ∨ v21 ∨ v28 ∨ v19 ∨ v42 ∨ v23 ∨ ¬v22)
    (c389 : v15 ∨ ¬v9 ∨ v16 ∨ v8 ∨ v17 ∨ v10 ∨ v2 ∨ v1)
    (c390 : v43 ∨ v34 ∨ v44 ∨ v1 ∨ v35 ∨ v8 ∨ v29 ∨ v9 ∨ v37 ∨ v41 ∨ v42 ∨ ¬v36 ∨ v14 ∨ v48)
    (c407 : v11 ∨ ¬v12 ∨ v48 ∨ v1 ∨ v4 ∨ v20 ∨ v5 ∨ v46 ∨ v13 ∨ v19 ∨ v15 ∨ v8 ∨ v47 ∨ v14)
    (c415 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ v44 ∨ v3 ∨ ¬v2 ∨ v8)
    (c420 : ¬v49 ∨ v43 ∨ v41 ∨ v48 ∨ v7 ∨ v6 ∨ v1 ∨ v42)
    (c431 : v15 ∨ v12 ∨ v17 ∨ v1 ∨ v46 ∨ v4 ∨ v8 ∨ ¬v11 ∨ v9 ∨ v10 ∨ v18 ∨ v45 ∨ v5 ∨ v47)
    (c436 : v43 ∨ v29 ∨ v45 ∨ ¬v30 ∨ v40 ∨ v32 ∨ v37 ∨ v26 ∨ v33 ∨ v44 ∨ v31 ∨ v24 ∨ v36 ∨ v23)
    (c448 : ¬v49 ∨ v36 ∨ v7 ∨ v41 ∨ v48 ∨ v1 ∨ v43 ∨ v42)
    (c460 : ¬v49 ∨ v42 ∨ v14 ∨ v1 ∨ v41 ∨ v21 ∨ v7 ∨ v5 ∨ v15 ∨ v20 ∨ v40 ∨ v43 ∨ v47 ∨ v48)
    (c520 : ¬v20 ∨ v27 ∨ v19 ∨ v14 ∨ v26 ∨ v28 ∨ v13 ∨ v21)
    (c525 : v12 ∨ v19 ∨ v5 ∨ v18 ∨ v17 ∨ ¬v11 ∨ v10 ∨ v4)
    (c612 : v19 ∨ ¬v11 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v47)
    (c649 : ¬v4 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c665 : ¬v20 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c694 : ¬v20 ∨ v8 ∨ v13 ∨ v14 ∨ v19 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42)
    (c697 : ¬v28 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38)
    (c698 : v25 ∨ v4 ∨ v11 ∨ v12 ∨ v13 ∨ v17 ∨ v19 ∨ v20 ∨ v24 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c702 : ¬v26 ∨ v19 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c753 : v11 ∨ v10 ∨ v13 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c761 : ¬v18 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40)
    (c778 : v12 ∨ ¬v2 ∨ ¬v5 ∨ v9 ∨ v10 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c795 : v10 ∨ ¬v2 ∨ ¬v11 ∨ v12 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c838 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c856 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v23 ∨ v29 ∨ v30)
    (c863 : ¬v26 ∨ ¬v35 ∨ v41 ∨ v42)
    (c866 : ¬v23 ∨ ¬v35 ∨ v41 ∨ v42)
    (c868 : v14 ∨ v8 ∨ v13 ∨ v22 ∨ v26 ∨ v28 ∨ v29 ∨ v33 ∨ v34 ∨ ¬v35 ∨ v40 ∨ v41 ∨ v42)
    (c897 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c983 : v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ ¬v16 ∨ v31 ∨ v38 ∨ v45)
    (c996 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v32 ∨ v33)
    (c1070 : ¬v27 ∨ v4 ∨ v11 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v46)
    (c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1095 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c1146 : ¬v25 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37)
    (c1195 : v11 ∨ ¬v2 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1245 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1254 : v26 ∨ v4 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1272 : ¬v21 ∨ v4 ∨ v11 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c1275 : ¬v26 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46)
    (c1295 : ¬v25 ∨ ¬v30 ∨ v37 ∨ v38)
    (c1300 : ¬v20 ∨ ¬v22 ∨ v29 ∨ v35)
    (c1371 : v29 ∨ ¬v18 ∨ ¬v22)
    (c1375 : v29 ∨ ¬v19 ∨ ¬v22)
    (c1421 : v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c1435 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1474 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c1599 : ¬v16 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12)
    (c1600 : ¬v22 ∨ v3 ∨ v9 ∨ v10 ∨ v38 ∨ v39 ∨ v45)
    (c1621 : ¬v26 ∨ v8 ∨ v9 ∨ ¬v16)
    (c1630 : v17 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11)
    (c1823 : ¬v30 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46)
    (c1935 : ¬v20 ∨ ¬v11 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c2111 : ¬v34 ∨ v5 ∨ v12 ∨ v18 ∨ v19 ∨ v20 ∨ v40 ∨ v47)
    (c2235 : v32 ∨ v5 ∨ v12 ∨ v19 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48)
    (c2249 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2297 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2344 : ¬v32 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2353 : v30 ∨ v2 ∨ v9 ∨ ¬v24 ∨ v31 ∨ v32 ∨ v43 ∨ v44 ∨ v45)
    (c2367 : ¬v29 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2396 : ¬v35 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2476 : v33 ∨ v20 ∨ ¬v27 ∨ v34 ∨ v35)
    (c2547 : v31 ∨ ¬v38 ∨ v44 ∨ v45 ∨ v46)
    (c2601 : ¬v30 ∨ ¬v39 ∨ v45 ∨ v46)
    (c2612 : ¬v35 ∨ v4 ∨ v11 ∨ v18 ∨ v44 ∨ v45 ∨ v46)
    (c2633 : v33 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ ¬v27 ∨ v34)
    (c2689 : ¬v16 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2691 : v31 ∨ v4 ∨ v11 ∨ v18 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2700 : v30 ∨ v2 ∨ v9 ∨ ¬v18 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2707 : ¬v34 ∨ v2 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2719 : ¬v22 ∨ v15 ∨ v21 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c2753 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v4 ∨ ¬v11)
    (c2754 : v24 ∨ v3 ∨ v10 ∨ v17 ∨ v30 ∨ v37 ∨ v38 ∨ v39 ∨ v45)
    (c2805 : ¬v32 ∨ v25 ∨ v38 ∨ v39 ∨ v40)
    (c2909 : ¬v41 ∨ v1 ∨ v3 ∨ v8 ∨ v9 ∨ v10 ∨ v43 ∨ v45)
    (c2925 : ¬v28 ∨ ¬v16 ∨ v35)
    (c2941 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c2978 : ¬v29 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v44 ∨ v45)
    (c3063 : v18 ∨ v4 ∨ v11 ∨ v25 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46)
    (c3068 : ¬v16 ∨ v2 ∨ v4 ∨ v10 ∨ v11 ∨ v34 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c3073 : ¬v19 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c3099 : ¬v19 ∨ v1 ∨ v2 ∨ v8 ∨ ¬v9 ∨ v10)
    (c3140 : v49)
    (c3158 : ¬v13 ∨ v3 ∨ ¬v4 ∨ v5 ∨ ¬v12)
    (c3159 : ¬v41 ∨ v33 ∨ v34 ∨ v35)
    (c3163 : ¬v6 ∨ ¬v2 ∨ v12 ∨ v13 ∨ v14)
    (c3184 : v8 ∨ v1 ∨ v14 ∨ ¬v15 ∨ v21)
    (c3186 : v42 ∨ v1 ∨ v4 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ v22)
    (c3188 : v8 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ ¬v11 ∨ v14 ∨ v15 ∨ ¬v42)
    (c3189 : ¬v31 ∨ v8 ∨ v9 ∨ v14 ∨ v15 ∨ v21 ∨ ¬v22)
    (c3190 : v30 ∨ v2 ∨ v8 ∨ v9 ∨ v13 ∨ v20 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v31)
    : (v23 ∨ v2 ∨ v8 ∨ v9 ∨ v22 ∨ v24 ∨ v30) ∧ (v11 ∨ v2 ∨ v4 ∨ v9 ∨ v16 ∨ v18) ∧ (¬v10 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ v11) ∧ (v37 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v29 ∨ v34 ∨ v35 ∨ ¬v36 ∨ v41) ∧ (¬v30 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v15 ∨ v22) ∧ (¬v20 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42) ∧ (v29 ∨ v1 ∨ ¬v2 ∨ v4 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ v22) ∧ (v13 ∨ v1 ∨ v4 ∨ v8 ∨ v14 ∨ v21) ∧ (¬v28 ∨ v4 ∨ ¬v13 ∨ v15 ∨ v21 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35) ∧ (¬v36 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v32 ∨ v35 ∨ v39) ∧ (¬v26 ∨ v1 ∨ v8 ∨ v15 ∨ v29 ∨ v32 ∨ v35) ∧ (v4 ∨ v1 ∨ ¬v2 ∨ v8 ∨ v14 ∨ v21 ∨ v32 ∨ v33 ∨ v35) ∧ (¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v37) ∧ (¬v33 ∨ v1 ∨ v8 ∨ v15 ∨ v21) ∧ (v32 ∨ v1 ∨ v8 ∨ ¬v13 ∨ v14 ∨ v21 ∨ v29 ∨ v35) ∧ (v35 ∨ v1 ∨ ¬v4 ∨ v8 ∨ ¬v11 ∨ v14 ∨ v19 ∨ v29 ∨ v32 ∨ v33 ∨ ¬v36) := by
  have c3191 : ¬v11 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ v9 ∨ v13 ∨ v15 ∨ ¬v22 ∨ v29 ∨ v31 := by
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
    have u8 : ¬v19 := by
      rcases c1375 with a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd n8 a
    have u9 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n8 a
      · exact a
    have u10 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n8 a
      · exact a
    have u11 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n8 a
      · exact a
    have u12 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n8 a
      · exact a
    have u13 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd n8 a
      · exact a
    have u14 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u15 : ¬v20 := by
      rcases c1935 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u10
    have u16 : v30 := by
      rcases c3190 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n10
    have u17 : ¬v39 := by
      rcases c2601 with a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
    have u18 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u16 a
    have u22 : v10 := by
      rcases c1600 with a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u4
    have u23 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u19
    have u24 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd n0 a
    have u25 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd n0 a
    have u26 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a u20
    have u27 : v5 := by
      rcases c2235 with a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u24
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd a u7
    have u28 : ¬v42 := by
      rcases c3188 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd a u25
      · exact absurd a n7
      · exact a
    have u29 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd u27 a
      · exact absurd u26 a
      · exact a
    have u30 : ¬v4 := by
      rcases c32 with a|a|a
      · exact absurd u26 a
      · exact absurd u27 a
      · exact a
    rcases c359 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u28
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u23
    · exact absurd a u25
    · exact absurd a u30
    · exact absurd a u17
    · exact absurd a u29
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
  have c3192 : ¬v11 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ v9 ∨ v13 ∨ v14 ∨ v21 ∨ ¬v22 := by
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
    have u8 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n9 a
      · exact a
    have u9 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n9 a
      · exact a
    have u10 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n9 a
      · exact a
    have u11 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd n9 a
      · exact a
    have u12 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n7
      · exact a
      · exact absurd a n8
    have u13 : ¬v20 := by
      rcases c1935 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
    have u14 : ¬v31 := by
      rcases c3189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd n9 a
    have u15 : ¬v42 := by
      rcases c3188 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a u12
      · exact a
    have u16 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u17 : v29 := by
      rcases c3191 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd n9 a
      · exact a
      · exact absurd a u14
    have u18 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u17 a
    have u23 : v16 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u12
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u24 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u25 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u20
    have u26 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u27 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u23 a
      · exact a
    have u28 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u23 a
      · exact a
    have u29 : v10 := by
      rcases c2754 with a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n3
      · exact a
      · exact absurd a u28
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a u16
      · exact absurd a u26
      · exact absurd a u4
    have u30 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u25
      · exact absurd a u19
    have u31 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd n0 a
    have u32 : v5 := by
      rcases c2235 with a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u31
      · exact absurd a u27
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u25
      · exact absurd a u6
      · exact absurd a u7
    have u33 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd u32 a
      · exact absurd u30 a
      · exact a
    have u34 : ¬v4 := by
      rcases c32 with a|a|a
      · exact absurd u30 a
      · exact absurd u32 a
      · exact a
    rcases c359 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u15
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u25
    · exact absurd a n7
    · exact absurd a u34
    · exact absurd a u26
    · exact absurd a u33
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
  have c3193 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v22 ∨ v24 ∨ v30 := by
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
    have u5 : v16 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c838 with a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
  have c3194 : ¬v11 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v7 ∨ v8 ∨ v9 ∨ v13 ∨ v15 ∨ v22 ∨ ¬v29 := by
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
      rcases c124 with a|a
      · exact absurd n10 a
      · exact a
    have u9 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n10 a
    have u10 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n10 a
    have u11 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n10 a
      · exact a
    have u12 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n10 a
    have u13 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n10 a
    have u14 : v16 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact absurd n10 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
    have u17 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u18 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u19 : ¬v24 := by
      rcases c2353 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n6
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u20 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u14 a
      · exact a
    have u21 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u14 a
      · exact a
    have u22 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u14 a
      · exact a
    have u23 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u14 a
      · exact a
    have u24 : ¬v26 := by
      rcases c1621 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u14 a
    have u25 : v10 := by
      rcases c2754 with a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n3
      · exact a
      · exact absurd a u21
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u4
    have u26 : ¬v27 := by
      rcases c2633 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u24
      · exact a
      · exact absurd a u9
    have u27 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd n0 a
    have u28 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u26
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a u9
    have u29 : v5 := by
      rcases c2235 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u27
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u7
    rcases c35 with a|a|a
    · exact absurd u29 a
    · exact absurd u28 a
    · exact absurd n4 a
  have c3195 : v30 ∨ v2 ∨ v8 ∨ v9 ∨ v22 ∨ v29 ∨ ¬v36 ∨ v42 := by
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
    have u5 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u6 : v35 := by
      rcases c217 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n5
    have u7 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd n6 a
      · exact a
    have u8 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v23 := by
      rcases c866 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u7
      · exact absurd a n7
    have u11 : ¬v24 := by
      rcases c2353 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c3193 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u11
    · exact absurd a n0
  have c3196 : v9 ∨ v1 ∨ v2 ∨ v3 ∨ v4 ∨ v8 ∨ ¬v11 ∨ v13 ∨ v14 ∨ v21 := by
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
    have u4 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n8
      · exact a
      · exact absurd a n9
    have u6 : ¬v22 := by
      rcases c3192 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
    have u7 : ¬v42 := by
      rcases c3188 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd n6 a
      · exact absurd a n8
      · exact absurd a u5
      · exact a
    have u8 : v7 := by
      rcases c3186 with a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u6
    have u9 : ¬v29 := by
      rcases c3194 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u8 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u6
      · exact a
    have u10 : v36 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n5
    have u11 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v37 := by
      rcases c146 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : v30 := by
      rcases c3195 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd u10 a
      · exact absurd a u7
    have u14 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u13 a
    rcases c390 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u15
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u14
    · exact absurd a n5
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd u10 a
    · exact absurd a n8
    · exact absurd a u4
  have c3197 : v11 ∨ v2 ∨ v4 ∨ v9 ∨ v16 ∨ v18 := by
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
    have u7 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u8 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u9 : v25 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n5
      · exact a
      · exact absurd a u8
    have u10 : ¬v30 := by
      rcases c1823 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u5
    have u11 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u9 a
      · exact a
    rcases c2297 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u11
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3198 : ¬v10 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ v11 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v17 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n5
    have u2 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u1 a
    rcases c3197 with a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u2
  have c3199 : v3 ∨ v1 ∨ v2 ∨ v4 ∨ v8 ∨ v9 ∨ v13 ∨ v14 ∨ v21 := by
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
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n7
      · exact a
      · exact absurd a n8
    have u8 : ¬v11 := by
      rcases c3196 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v10 := by
      rcases c3198 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u8
    have u10 : ¬v34 := by
      rcases c2707 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u11 : ¬v41 := by
      rcases c2909 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u4
    have u12 : ¬v16 := by
      rcases c3068 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u13 : v18 := by
      rcases c3197 with a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u12
      · exact a
    have u14 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v22 := by
      rcases c1371 with a|a|a
      · exact absurd a u14
      · exact absurd u13 a
      · exact a
    have u17 : v36 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n4
    have u18 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u19 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v37 := by
      rcases c146 with a|a
      · exact absurd u17 a
      · exact a
    rcases c390 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u18
    · exact absurd a n4
    · exact absurd a u14
    · exact absurd a n5
    · exact absurd a u20
    · exact absurd a u11
    · exact absurd a u19
    · exact absurd u17 a
    · exact absurd a n7
    · exact absurd a u6
  have c3200 : v37 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v29 ∨ v34 ∨ v35 ∨ ¬v36 ∨ v41 := by
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
    have u4 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd n8 a
      · exact a
    rcases c390 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a u5
    · exact absurd n8 a
    · exact absurd a n4
    · exact absurd a u4
  have c3201 : ¬v30 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v15 ∨ v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : v36 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n2
    have u8 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
    have u9 : ¬v37 := by
      rcases c146 with a|a
      · exact absurd u7 a
      · exact a
    rcases c3200 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd u7 a
    · exact absurd a u8
  have c3202 : v29 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v15 ∨ v22 ∨ v30 := by
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
    have u5 : v36 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n3
    have u6 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u7 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v35 := by
      rcases c217 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u5 a
      · exact absurd a u8
      · exact absurd a u3
      · exact a
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n0
    have u10 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v23 := by
      rcases c866 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u7
      · exact absurd a u8
    have u13 : ¬v24 := by
      rcases c2353 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c3193 with a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u13
    · exact absurd a n7
  have c3203 : v4 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v13 ∨ v14 ∨ v21 ∨ v22 := by
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
    have u8 : v3 := by
      rcases c3199 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n6
      · exact a
      · exact absurd a n7
    have u10 : v10 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u5
      · exact a
      · exact absurd u8 a
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v30 := by
      rcases c3201 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a n8
    have u12 : v29 := by
      rcases c3202 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a u11
    have u13 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : v16 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u9
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : v11 := by
      rcases c2689 with a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a n0
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u19 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
    have u20 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v26 := by
      rcases c1621 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u17 a
    have u23 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u18 a
    have u24 : ¬v27 := by
      rcases c2633 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n7
      · exact absurd a u22
      · exact a
      · exact absurd a u13
    have u25 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u13
    have u26 : v5 := by
      rcases c2235 with a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a u7
    rcases c29 with a|a|a
    · exact absurd u26 a
    · exact absurd u8 a
    · exact absurd u25 a
  have c3204 : ¬v3 ∨ v2 ∨ v4 ∨ v8 ∨ v9 ∨ v14 ∨ v15 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
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
    have u8 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : v16 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n13
      · exact absurd a u8
      · exact absurd a u3
      · exact a
      · exact absurd a n8
    have u10 : ¬v18 := by
      rcases c2700 with a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a n14
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u12 : v22 := by
      rcases c3193 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n9
      · exact absurd a n13
    have u13 : v10 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u5
      · exact a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u9 a
      · exact a
    have u17 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : v36 := by
      rcases c284 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u8
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n4
      · exact absurd a u11
    have u19 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u19
    have u24 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u20
    have u25 : ¬v32 := by
      rcases c2805 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd a u22
    have u26 : v11 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u25
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a u21
    have u27 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u26 a
    have u29 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u27
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u24
    have u30 : v5 := by
      rcases c2235 with a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u28
      · exact absurd a u14
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a u7
    rcases c29 with a|a|a
    · exact absurd u30 a
    · exact absurd n0 a
    · exact absurd u29 a
  have c3205 : v13 ∨ v1 ∨ v2 ∨ v4 ∨ v8 ∨ v9 ∨ v14 ∨ v21 := by
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
    have u5 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n6
      · exact a
      · exact absurd a n7
    have u8 : v3 := by
      rcases c3199 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v10 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact a
      · exact absurd u8 a
      · exact absurd a u2
      · exact absurd a u3
    have u10 : v22 := by
      rcases c3203 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact a
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
    have u17 : ¬v31 := by
      rcases c3189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd u10 a
    have u18 : v30 := by
      rcases c3204 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u12
      · exact a
      · exact absurd a u17
    have u19 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u18 a
    have u24 : v16 := by
      rcases c304 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a u13
      · exact a
      · exact absurd a u7
    have u25 : ¬v19 := by
      rcases c1375 with a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd u10 a
    have u26 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u21
    have u27 : ¬v20 := by
      rcases c1300 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u19
      · exact absurd a u21
    have u28 : v11 := by
      rcases c2689 with a|a|a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact absurd a n3
      · exact a
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u29 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u22
    have u30 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u28 a
    have u31 : ¬v5 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u29 a
    rcases c2235 with a|a|a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u31
    · exact absurd a u30
    · exact absurd a u25
    · exact absurd a u20
    · exact absurd a u22
    · exact absurd a u26
    · exact absurd a u5
    · exact absurd a u6
  have c3206 : ¬v22 ∨ v4 ∨ ¬v9 ∨ v15 ∨ v21 ∨ v29 ∨ v33 ∨ v34 ∨ v35 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
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
    have u7 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v19 := by
      rcases c1375 with a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd n0 a
    have u13 : ¬v18 := by
      rcases c1371 with a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd n0 a
    have u14 : ¬v20 := by
      rcases c1300 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n8
    have u15 : v16 := by
      rcases c304 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u8
      · exact a
      · exact absurd a n3
    have u16 : v30 := by
      rcases c2719 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n5
      · exact a
      · exact absurd a n8
    have u17 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u19 : v11 := by
      rcases c3063 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n1
      · exact a
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u20 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u15 a
      · exact a
    have u21 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u16 a
    have u22 : ¬v10 := by
      rcases c54 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd n2 a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd n2 a
      · exact absurd u19 a
      · exact a
    have u25 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u26 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u25
      · exact absurd a u3
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u21
    have u27 : v5 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u12
      · exact a
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd u19 a
      · exact absurd a u22
      · exact absurd a n1
    have u28 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u24
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n7
    rcases c29 with a|a|a
    · exact absurd u27 a
    · exact absurd u26 a
    · exact absurd u28 a
  have c3207 : ¬v30 ∨ v1 ∨ v4 ∨ v8 ∨ ¬v9 ∨ v15 ∨ v21 := by
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
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v39 := by
      rcases c2601 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
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
      · exact absurd a u8
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u15 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
    have u16 : ¬v22 := by
      rcases c3206 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u9
    have u17 : v36 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a n3
    have u18 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v37 := by
      rcases c146 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : v16 := by
      rcases c199 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u17 a
      · exact absurd a u7
      · exact a
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
    have u21 : ¬v28 := by
      rcases c697 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u19
      · exact absurd a u14
    have u22 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u20 a
      · exact a
    have u26 : v11 := by
      rcases c2689 with a|a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a n2
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u27 : v23 := by
      rcases c375 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u17 a
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u18
      · exact a
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u5
    have u28 : ¬v27 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u25
      · exact a
      · exact absurd a u12
      · exact absurd a u11
    have u29 : ¬v10 := by
      rcases c54 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u26 a
    have u30 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd n4 a
      · exact absurd u26 a
      · exact a
    have u31 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd n4 a
      · exact absurd u26 a
      · exact a
    have u32 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u27 a
      · exact a
    have u33 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u29
      · exact a
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u24
      · exact absurd a u32
      · exact absurd a u8
    have u34 : v5 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact absurd a u30
      · exact absurd a u23
      · exact a
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd u26 a
      · exact absurd a u29
      · exact absurd a n2
    have u35 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u31
      · exact absurd a u28
      · exact absurd a u25
      · exact absurd a u15
      · exact absurd a u12
    rcases c29 with a|a|a
    · exact absurd u34 a
    · exact absurd u33 a
    · exact absurd u35 a
  have c3208 : ¬v11 ∨ v1 ∨ v2 ∨ v4 ∨ v8 ∨ ¬v9 ∨ v13 ∨ v26 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
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
      · exact absurd n5 a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd n5 a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v19 := by
      rcases c3099 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a u5
    have u9 : v5 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : v6 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd u9 a
    have u11 : v3 := by
      rcases c2753 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd n0 a
    rcases c29 with a|a|a
    · exact absurd u9 a
    · exact absurd u11 a
    · exact absurd u10 a
  have c3209 : v30 ∨ v1 ∨ v2 ∨ v4 ∨ v8 ∨ ¬v9 ∨ v13 ∨ v14 ∨ v15 ∨ v22 ∨ v29 := by
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
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v36 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n4
    have u8 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v38 := by
      rcases c147 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : v35 := by
      rcases c217 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u7 a
      · exact absurd a u11
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n10
    have u15 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v26 := by
      rcases c863 with a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u10
      · exact absurd a u11
    have u19 : v28 := by
      rcases c868 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u18
      · exact a
      · exact absurd a n10
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd u14 a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u11
    have u20 : ¬v11 := by
      rcases c3208 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u10
    have u21 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v19 := by
      rcases c3073 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u25 : v18 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n3
      · exact absurd a u20
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u26 : v10 := by
      rcases c1254 with a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n3
      · exact a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u5
    have u27 : ¬v20 := by
      rcases c694 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u24
      · exact absurd a n9
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u11
    have u28 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u25 a
    have u29 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u26 a
    rcases c698 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a n3
    · exact absurd a u20
    · exact absurd a u29
    · exact absurd a n6
    · exact absurd a u28
    · exact absurd a u24
    · exact absurd a u27
    · exact absurd a u21
    · exact absurd a u23
    · exact absurd a u17
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u5
  have c3210 : v8 ∨ v1 ∨ v2 ∨ v4 ∨ v11 ∨ v13 ∨ v14 ∨ v21 ∨ v22 := by
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
    have u8 : v9 := by
      rcases c3205 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n6
      · exact a
      · exact absurd a n7
    have u10 : ¬v30 := by
      rcases c3207 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd u8 a
      · exact absurd a u9
      · exact absurd a n7
    have u11 : v29 := by
      rcases c3209 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd u8 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a n8
      · exact a
    have u12 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u13 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u11 a
    have u18 : ¬v16 := by
      rcases c2689 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u19 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
    have u20 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u21 : v18 := by
      rcases c2691 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u22 : ¬v19 := by
      rcases c3073 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u23 : ¬v27 := by
      rcases c1070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a u5
    have u24 : ¬v26 := by
      rcases c1275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a u5
    have u25 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u21 a
    have u26 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u21 a
      · exact a
    have u27 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u16
    have u28 : v10 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u8 a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u25
      · exact a
      · exact absurd a n2
      · exact absurd a n1
    have u29 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u26
      · exact absurd a n7
      · exact a
    have u30 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u23
      · exact absurd a u26
      · exact absurd a u19
      · exact absurd a u13
    have u31 : ¬v23 := by
      rcases c363 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u4
      · exact absurd a u27
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a n8
      · exact absurd a u29
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u18
    have u32 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u28 a
    have u33 : v36 := by
      rcases c270 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u31
      · exact absurd a u14
      · exact absurd a u29
      · exact absurd u11 a
      · exact absurd a u10
      · exact absurd a u12
    have u34 : v5 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u32
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u35 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd u33 a
      · exact a
    have u36 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd u34 a
      · exact absurd u30 a
      · exact a
    rcases c3186 with a|a|a|a|a|a|a|a|a
    · exact absurd a u35
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u36
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u9
    · exact absurd a n8
  have c3211 : v13 ∨ v1 ∨ v2 ∨ v4 ∨ v8 ∨ v14 ∨ v21 ∨ v22 := by
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
    have u5 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v9 := by
      rcases c3205 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n5
      · exact a
      · exact absurd a n6
    have u8 : ¬v30 := by
      rcases c3207 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u6 a
      · exact absurd a u7
      · exact absurd a n6
    have u9 : v11 := by
      rcases c3210 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v10 := by
      rcases c54 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u9 a
    have u11 : v29 := by
      rcases c3209 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n7
      · exact a
    have u12 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u13
    have u17 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u18 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u19 : v26 := by
      rcases c3208 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u6 a
      · exact absurd a n0
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
    have u20 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : v19 := by
      rcases c702 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
    have u22 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u21 a
    rcases c389 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd u6 a
    · exact absurd a u22
    · exact absurd a n4
    · exact absurd a u23
    · exact absurd a u10
    · exact absurd a n2
    · exact absurd a n1
  have c3212 : ¬v33 ∨ v15 ∨ v21 ∨ ¬v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n3 a
      · exact a
    rcases c2719 with a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
  have c3213 : v29 ∨ v1 ∨ v2 ∨ v4 ∨ v8 ∨ ¬v9 ∨ v15 ∨ v21 ∨ ¬v22 := by
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
    have u8 : ¬v18 := by
      rcases c1371 with a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n8 a
    have u9 : ¬v19 := by
      rcases c1375 with a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n8 a
    have u10 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n8 a
      · exact a
    have u11 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n8 a
      · exact a
    have u12 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n8 a
      · exact a
    have u13 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n8 a
      · exact a
    have u14 : ¬v33 := by
      rcases c3212 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n8 a
    have u15 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u16 : ¬v30 := by
      rcases c3207 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : v35 := by
      rcases c2719 with a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u16
      · exact a
    have u19 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : v11 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a n3
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u21 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u22 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd n5 a
      · exact absurd u20 a
      · exact a
    have u23 : v41 := by
      rcases c3208 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a u22
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u15
      · exact a
    have u24 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u23 a
      · exact a
    rcases c384 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a n6
    · exact absurd a u10
    · exact absurd a u14
    · exact absurd a u17
    · exact absurd a u13
    · exact absurd a n7
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u25
    · exact absurd a u12
    · exact absurd n8 a
  have c3214 : v2 ∨ v1 ∨ v4 ∨ v8 ∨ v13 ∨ v14 ∨ v21 := by
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
    have u7 : v22 := by
      rcases c3211 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact a
    have u8 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n5
      · exact a
      · exact absurd a n6
    have u9 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : v9 := by
      rcases c3205 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v33 := by
      rcases c3212 with a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd u7 a
    have u16 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u17 : v29 := by
      rcases c3213 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u14 a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd u7 a
    have u18 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u19
    have u23 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u24 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u25 : ¬v11 := by
      rcases c3208 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u14 a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a u22
    have u26 : ¬v19 := by
      rcases c3073 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u25
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u27 : v18 := by
      rcases c2691 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u25
      · exact a
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u28 : v10 := by
      rcases c1254 with a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n2
      · exact a
      · exact absurd a u25
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u4
    have u29 : ¬v20 := by
      rcases c520 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u26
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n6
    have u30 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u27 a
    have u31 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u28 a
    rcases c698 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a n2
    · exact absurd a u25
    · exact absurd a u31
    · exact absurd a n4
    · exact absurd a u30
    · exact absurd a u26
    · exact absurd a u29
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u20
    · exact absurd a u24
    · exact absurd a u23
    · exact absurd a u16
    · exact absurd a u4
  have c3215 : ¬v2 ∨ v1 ∨ v4 ∨ v8 ∨ v11 ∨ v13 ∨ v14 ∨ v15 ∨ v26 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
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
    have u8 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u9 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u10 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v19 := by
      rcases c3073 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u12 : ¬v27 := by
      rcases c1070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u8
      · exact absurd a u5
    have u13 : v12 := by
      rcases c1195 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact a
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u14 : ¬v21 := by
      rcases c1272 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a u5
    have u15 : ¬v20 := by
      rcases c520 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a u14
    have u16 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a n12
    have u17 : ¬v3 := by
      rcases c18 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd n0 a
    have u18 : v9 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd n0 a
      · exact absurd a n3
    have u19 : ¬v10 := by
      rcases c55 with a|a|a
      · exact absurd u18 a
      · exact absurd u13 a
      · exact a
    have u20 : v25 := by
      rcases c753 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a u15
      · exact a
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u21 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : v5 := by
      rcases c407 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u13 a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u15
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n6
    have u23 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd u22 a
      · exact absurd u16 a
      · exact a
    have u24 : v42 := by
      rcases c3186 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u23
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u21
    have u25 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u26
      · exact absurd a n1
      · exact absurd a n7
      · exact a
      · exact absurd a u21
      · exact absurd a n3
    rcases c1146 with a|a|a|a|a
    · exact absurd u20 a
    · exact absurd u27 a
    · exact absurd a n13
    · exact absurd a u26
    · exact absurd a u25
  have c3216 : ¬v29 ∨ v1 ∨ ¬v2 ∨ v4 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ v26 ∨ v27 ∨ v28 := by
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
    have u5 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u7
    have u11 : v11 := by
      rcases c3215 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u7
    have u12 : ¬v20 := by
      rcases c1935 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u6
    have u14 : ¬v3 := by
      rcases c18 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd n2 a
    have u15 : v12 := by
      rcases c3163 with a|a|a|a|a
      · exact absurd u13 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u16 : v9 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd n2 a
      · exact absurd a n4
    rcases c58 with a|a|a
    · exact absurd u16 a
    · exact absurd u11 a
    · exact absurd u15 a
  have c3217 : v35 ∨ v1 ∨ ¬v2 ∨ v4 ∨ v8 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v22 ∨ v29 := by
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
    have u8 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
    have u9 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n8 a
      · exact a
    have u10 : ¬v18 := by
      rcases c1371 with a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd n8 a
    have u11 : ¬v19 := by
      rcases c1375 with a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd n8 a
    have u12 : v30 := by
      rcases c2719 with a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a n9
      · exact a
      · exact absurd a n0
    have u13 : ¬v39 := by
      rcases c2601 with a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
    have u14 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : v11 := by
      rcases c1823 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a n3
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u5
    have u18 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n0
    have u19 : ¬v9 := by
      rcases c3206 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u13
    have u20 : v3 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u3
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
    have u21 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u20 a
    have u22 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd n2 a
    have u23 : v12 := by
      rcases c2235 with a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u21
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u7
    have u24 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u7
      · exact a
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u18
      · exact absurd a u15
    rcases c70 with a|a|a
    · exact absurd u23 a
    · exact absurd u24 a
    · exact absurd u17 a
  have c3218 : ¬v22 ∨ v1 ∨ v4 ∨ v8 ∨ v13 ∨ v14 ∨ v21 := by
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
    have u5 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v23 := by
      rcases c102 with a|a
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
    have u11 : v2 := by
      rcases c3214 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n5
      · exact a
      · exact absurd a n6
    have u13 : ¬v29 := by
      rcases c3216 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u11 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u6
    have u14 : ¬v18 := by
      rcases c1371 with a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd n0 a
    have u15 : ¬v19 := by
      rcases c1375 with a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd n0 a
    have u16 : ¬v20 := by
      rcases c520 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n6
    have u17 : v35 := by
      rcases c3217 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u11 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd n0 a
      · exact absurd a u13
    have u18 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : v11 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a n2
      · exact a
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u22 : v16 := by
      rcases c856 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u12
      · exact a
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u18
    have u23 : v9 := by
      rcases c378 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd n0 a
      · exact absurd a u18
      · exact absurd a n6
      · exact absurd a u12
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u14
    have u24 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u25 : ¬v10 := by
      rcases c54 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u21 a
    have u26 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u23 a
      · exact absurd u21 a
      · exact a
    have u27 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u22 a
      · exact a
    rcases c795 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd u11 a
    · exact absurd u21 a
    · exact absurd a u26
    · exact absurd a u27
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u10
    · exact absurd a u20
    · exact absurd a u24
    · exact absurd a u3
  have c3219 : ¬v20 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n0 a
    rcases c694 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c3220 : ¬v35 ∨ v1 ∨ ¬v2 ∨ v4 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ v22 := by
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
    have u8 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u13 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u14 : v36 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n4
    have u15 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v26 := by
      rcases c863 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u15
      · exact absurd a u16
    have u18 : v7 := by
      rcases c3186 with a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v3 := by
      rcases c19 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u18 a
    have u20 : v9 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd n2 a
      · exact absurd a n4
    have u21 : v28 := by
      rcases c868 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u17
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd n0 a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u16
    have u22 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v20 := by
      rcases c3219 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u17
      · exact absurd a u24
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u16
    have u26 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u15
      · exact absurd a u8
    have u27 : v12 := by
      rcases c3163 with a|a|a|a|a
      · exact absurd u26 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u28 : ¬v11 := by
      rcases c58 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u27 a
    have u29 : ¬v10 := by
      rcases c55 with a|a|a
      · exact absurd u20 a
      · exact absurd u27 a
      · exact a
    rcases c1254 with a|a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a n3
    · exact absurd a u29
    · exact absurd a u28
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u10
    · exact absurd a u13
    · exact absurd a u5
  have c3221 : v29 ∨ v1 ∨ ¬v2 ∨ v4 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ v22 := by
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
    have u6 : v36 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n4
    have u7 : ¬v38 := by
      rcases c147 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v37 := by
      rcases c146 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : v7 := by
      rcases c3186 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v3 := by
      rcases c19 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u11 a
    have u13 : v9 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd n2 a
      · exact absurd a n4
    have u14 : ¬v35 := by
      rcases c3220 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : v30 := by
      rcases c217 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u6 a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u14
      · exact a
      · exact absurd a u10
      · exact absurd a n0
    have u16 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v28 := by
      rcases c697 with a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u7
    have u21 : v23 := by
      rcases c375 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u6 a
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u8
      · exact a
      · exact absurd a n8
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a u5
    have u22 : ¬v21 := by
      rcases c1095 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u20
    have u23 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : v16 := by
      rcases c199 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u6 a
      · exact absurd a n0
      · exact a
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u22
      · exact absurd a u4
    have u25 : v11 := by
      rcases c3215 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u14
    have u26 : v10 := by
      rcases c983 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n3
      · exact a
      · exact absurd u25 a
      · exact absurd u24 a
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u4
    rcases c54 with a|a|a
    · exact absurd u13 a
    · exact absurd u26 a
    · exact absurd u25 a
  have c3222 : v26 ∨ v1 ∨ ¬v2 ∨ v4 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ v22 ∨ v28 := by
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
      rcases c3221 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : v11 := by
      rcases c3215 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
    have u13 : v27 := by
      rcases c3216 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a n9
    have u14 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : v20 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd u13 a
      · exact absurd a u7
      · exact absurd a u8
    have u17 : v36 := by
      rcases c270 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd u5 a
      · exact absurd a u6
      · exact absurd a u11
    have u18 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : v7 := by
      rcases c3186 with a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u21 : ¬v3 := by
      rcases c19 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u20 a
    have u22 : v10 := by
      rcases c2978 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u21
      · exact a
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u4
    have u23 : v9 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u21
      · exact absurd n2 a
      · exact absurd a n4
    rcases c54 with a|a|a
    · exact absurd u23 a
    · exact absurd u22 a
    · exact absurd u12 a
  have c3223 : v28 ∨ v1 ∨ ¬v2 ∨ v4 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ v22 := by
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
    have u8 : v29 := by
      rcases c3221 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
    have u14 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u15 : v26 := by
      rcases c3222 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u16 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : v11 := by
      rcases c1275 with a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a n3
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u5
    have u18 : ¬v20 := by
      rcases c665 with a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u9
    have u19 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u9
    have u20 : ¬v3 := by
      rcases c18 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd n2 a
    have u21 : v12 := by
      rcases c3163 with a|a|a|a|a
      · exact absurd u19 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u22 : v9 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u20
      · exact absurd n2 a
      · exact absurd a n4
    rcases c58 with a|a|a
    · exact absurd u22 a
    · exact absurd u17 a
    · exact absurd u21 a
  have c3224 : v13 ∨ v1 ∨ v4 ∨ v8 ∨ v14 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n5
    have u2 : ¬v22 := by
      rcases c3218 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v2 := by
      rcases c3211 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
    have u4 : v29 := by
      rcases c3221 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u2
    have u5 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v28 := by
      rcases c3223 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u2
    have u9 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v20 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u1
      · exact a
      · exact absurd a n5
      · exact absurd u8 a
    have u13 : v18 := by
      rcases c313 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u7
      · exact a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u10
    rcases c96 with a|a
    · exact absurd u13 a
    · exact absurd u12 a
  have c3225 : ¬v28 ∨ v4 ∨ ¬v13 ∨ v15 ∨ v21 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 := by
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
      rcases c2925 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n10
    have u9 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd n0 a
      · exact a
    have u13 : v20 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd n0 a
    have u14 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u16 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u17 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u18 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u13 a
    have u20 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u13 a
    have u21 : v11 := by
      rcases c3063 with a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n1
      · exact a
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c612 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd u21 a
    · exact absurd n2 a
    · exact absurd a u8
    · exact absurd a u20
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u17
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u6
  have c3226 : ¬v20 ∨ v4 ∨ ¬v13 ∨ v26 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
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
    have u7 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u11 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u12 : ¬v25 := by
      rcases c996 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : v11 := by
      rcases c3063 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n2 a
    have u15 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u13 a
    have u16 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u13 a
    have u17 : v3 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u9
      · exact a
      · exact absurd a u7
      · exact absurd u13 a
      · exact absurd a n1
      · exact absurd a u8
    have u18 : v5 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u19 : v2 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd u17 a
      · exact absurd a u2
      · exact absurd a u3
    rcases c778 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd u19 a
    · exact absurd u18 a
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c3227 : ¬v11 ∨ ¬v2 ∨ ¬v13 ∨ v19 ∨ v32 ∨ v33 ∨ v34 ∨ v41 := by
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
    have u5 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u8 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u9 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u10 : v5 := by
      rcases c2235 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u6
    rcases c778 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd n1 a
    · exact absurd u10 a
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c3228 : v14 ∨ v1 ∨ ¬v2 ∨ v4 ∨ v8 ∨ v19 ∨ v21 ∨ v26 ∨ ¬v29 ∨ v35 := by
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
      rcases c124 with a|a
      · exact absurd n8 a
      · exact a
    have u9 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n8 a
    have u10 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n8 a
      · exact a
    have u11 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n8 a
    have u12 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n8 a
    have u13 : v13 := by
      rcases c3224 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
    have u14 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n6
    have u15 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n9
    have u17 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u18 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u19 : ¬v20 := by
      rcases c3226 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u13 a
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u10
    have u20 : ¬v11 := by
      rcases c3227 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u13 a
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u16
    have u21 : v18 := by
      rcases c2691 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u20
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u22 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u11
    have u24 : v12 := by
      rcases c1195 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u25 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v10 := by
      rcases c67 with a|a|a
      · exact absurd u24 a
      · exact absurd u13 a
      · exact a
    have u27 : v3 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u25
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd n2 a
      · exact a
      · exact absurd a u26
      · exact absurd a u3
    have u28 : v25 := by
      rcases c1254 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u26
      · exact absurd a u20
      · exact absurd a u23
      · exact a
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a u5
    have u29 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u27 a
    have u30 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n2 a
      · exact absurd u27 a
      · exact a
    have u31 : v36 := by
      rcases c1146 with a|a|a|a|a
      · exact absurd u28 a
      · exact absurd n8 a
      · exact absurd a n9
      · exact a
      · exact absurd a u15
    have u32 : v42 := by
      rcases c460 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a u30
      · exact absurd a u29
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u7
    rcases c151 with a|a
    · exact absurd u31 a
    · exact absurd u32 a
  have c3229 : v8 ∨ v1 ∨ ¬v2 ∨ v4 ∨ v14 ∨ v21 ∨ v26 ∨ ¬v29 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
    have u7 : v13 := by
      rcases c3224 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n5
    have u9 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n7 a
      · exact a
    have u10 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n7 a
    have u11 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u12 : v19 := by
      rcases c3228 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
    have u13 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : v11 := by
      rcases c3073 with a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a n3
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u16 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u7 a
    have u17 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u15 a
    have u18 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u15 a
    have u19 : ¬v5 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd n2 a
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    rcases c431 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u17
    · exact absurd a u14
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd u15 a
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a u13
    · exact absurd a u3
    · exact absurd a u19
    · exact absurd a u5
  have c3230 : v8 ∨ v1 ∨ ¬v2 ∨ v4 ∨ v14 ∨ v21 ∨ ¬v29 ∨ v35 := by
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
    have u8 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd n6 a
      · exact a
    have u9 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n6 a
    have u10 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n6 a
      · exact a
    have u11 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n6 a
    have u12 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n6 a
    have u13 : v13 := by
      rcases c3224 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n5
    have u15 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : ¬v28 := by
      rcases c3225 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u13 a
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n7
    have u17 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n7
    have u18 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u19 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u20 : v26 := by
      rcases c3229 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd n6 a
      · exact absurd a n7
    have u21 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : v11 := by
      rcases c1275 with a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a n3
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a u5
    have u25 : v36 := by
      rcases c270 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd n6 a
      · exact absurd a u8
      · exact absurd a u15
    have u26 : ¬v20 := by
      rcases c665 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u23
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u27 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u13 a
    have u28 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u24 a
    have u29 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u24 a
    have u30 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd u25 a
      · exact a
    have u31 : v3 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u27
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd n2 a
      · exact a
      · exact absurd a u29
      · exact absurd a u3
    have u32 : ¬v5 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd n2 a
      · exact a
      · exact absurd a u27
      · exact absurd a u29
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u33 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n2 a
      · exact absurd u31 a
      · exact a
    rcases c460 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u30
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u17
    · exact absurd a n5
    · exact absurd a u33
    · exact absurd a u32
    · exact absurd a u14
    · exact absurd a u26
    · exact absurd a u18
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u7
  have c3231 : ¬v36 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v32 ∨ v35 ∨ v39 := by
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
    have u4 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v38 := by
      rcases c147 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v37 := by
      rcases c146 with a|a
      · exact absurd n0 a
      · exact a
    rcases c375 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a u4
  have c3232 : ¬v26 ∨ v1 ∨ v8 ∨ v15 ∨ v29 ∨ v32 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
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
    have u6 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : v36 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n2
    rcases c3231 with a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u9
  have c3233 : v4 ∨ v1 ∨ ¬v2 ∨ v8 ∨ v14 ∨ v21 ∨ v32 ∨ v33 ∨ v35 := by
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
    have u8 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u9 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n5
    have u10 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u11 : v13 := by
      rcases c3224 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v29 := by
      rcases c3230 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n8
    have u13 : ¬v26 := by
      rcases c3232 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n8
    have u14 : ¬v20 := by
      rcases c3226 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u11 a
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a n5
      · exact a
    have u16 : ¬v22 := by
      rcases c3217 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a n5
      · exact a
      · exact absurd a u12
    have u17 : v36 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a n3
    have u18 : v23 := by
      rcases c3231 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u16
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u10
    have u19 : ¬v38 := by
      rcases c147 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v37 := by
      rcases c146 with a|a
      · exact absurd u17 a
      · exact a
    have u23 : v30 := by
      rcases c217 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u17 a
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a n8
      · exact a
      · exact absurd a u22
      · exact absurd a u12
    have u24 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u18 a
    have u25 : ¬v34 := by
      rcases c311 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a u24
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a u8
    have u26 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : v9 := by
      rcases c3201 with a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u16
    have u28 : v16 := by
      rcases c199 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u17 a
      · exact absurd a u12
      · exact a
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd a u26
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u4
    have u29 : ¬v11 := by
      rcases c59 with a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd u11 a
    rcases c2689 with a|a|a|a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd a n0
    · exact absurd a u29
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u25
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c3234 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v37 := by
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
    have u4 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd n0 a
      · exact a
    rcases c217 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n1
  have c3235 : ¬v33 ∨ v1 ∨ v8 ∨ v15 ∨ v21 := by
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
    have u5 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v36 := by
      rcases c3234 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u8
    have u10 : v22 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u7
      · exact a
      · exact absurd a n2
    have u11 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u10 a
      · exact a
    rcases c2719 with a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u6
  have c3236 : v4 ∨ v1 ∨ v8 ∨ v10 ∨ v11 ∨ v14 ∨ v21 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
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
    have u7 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n5
      · exact a
      · exact absurd a n6
    have u8 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : ¬v33 := by
      rcases c3235 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n6
    have u11 : v18 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a u4
      · exact a
      · exact absurd a n7
      · exact absurd a u9
    have u12 : v24 := by
      rcases c1254 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a u4
    have u13 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u14 : ¬v2 := by
      rcases c3233 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u10
      · exact absurd a n11
    have u15 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v9 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a n1
    rcases c761 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u18
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u13
  have c3237 : v35 ∨ v1 ∨ v8 ∨ ¬v13 ∨ v14 ∨ v21 ∨ v29 ∨ v32 ∨ ¬v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
    have u7 : ¬v38 := by
      rcases c147 with a|a
      · exact absurd n8 a
      · exact a
    have u8 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd n8 a
      · exact a
    have u9 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd n8 a
      · exact a
    have u10 : ¬v37 := by
      rcases c146 with a|a
      · exact absurd n8 a
      · exact a
    have u11 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n5
    have u12 : v30 := by
      rcases c3234 with a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a u10
    have u13 : ¬v26 := by
      rcases c3232 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u14 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v25 := by
      rcases c1295 with a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u10
      · exact absurd a u7
    have u17 : v9 := by
      rcases c3200 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd n8 a
      · exact absurd a u8
    have u18 : ¬v11 := by
      rcases c59 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd n3 a
    have u19 : ¬v10 := by
      rcases c56 with a|a|a
      · exact absurd u17 a
      · exact absurd n3 a
      · exact a
    have u20 : ¬v12 := by
      rcases c61 with a|a|a
      · exact absurd n3 a
      · exact absurd u17 a
      · exact a
    have u21 : v4 := by
      rcases c3236 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n0
    have u22 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u23 : v7 := by
      rcases c420 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u6
      · exact a
      · exact absurd a u22
      · exact absurd a n1
      · exact absurd a u9
    have u24 : ¬v3 := by
      rcases c28 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u23 a
    have u25 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u23 a
    rcases c213 with a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u5
    · exact absurd a u24
    · exact absurd a u4
    · exact absurd a u25
    · exact absurd a u18
    · exact absurd a u3
    · exact absurd u21 a
  have c3238 : ¬v4 ∨ ¬v7 ∨ ¬v13 ∨ v18 ∨ v19 ∨ v20 ∨ v27 ∨ v33 := by
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
    have u5 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u6 : ¬v3 := by
      rcases c28 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u7 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u8 : ¬v12 := by
      rcases c3158 with a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u6
      · exact absurd n0 a
      · exact absurd a u5
      · exact a
    have u9 : v26 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : ¬v34 := by
      rcases c2111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u3
    have u11 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u9 a
    rcases c301 with a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a u11
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u10
    · exact absurd a n6
  have c3239 : v32 ∨ v1 ∨ v8 ∨ ¬v13 ∨ v14 ∨ v21 ∨ v29 ∨ v35 := by
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
    have u8 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n5
    have u9 : ¬v33 := by
      rcases c3235 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n5
    have u10 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u11 : ¬v26 := by
      rcases c3232 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u12 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u13 : ¬v36 := by
      rcases c3237 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact a
    have u14 : v22 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n6
      · exact a
      · exact absurd a n2
    have u15 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v20 := by
      rcases c1300 with a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a n6
      · exact absurd a n7
    have u20 : v16 := by
      rcases c304 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a u16
      · exact a
      · exact absurd a u8
    have u21 : v30 := by
      rcases c2719 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a n6
      · exact a
      · exact absurd a n7
    have u22 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u21 a
    have u26 : v37 := by
      rcases c436 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd u21 a
      · exact absurd a u12
      · exact absurd a n0
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u16
    have u27 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u25
      · exact absurd a n7
    have u28 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : v7 := by
      rcases c448 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u13
      · exact a
      · exact absurd a u27
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u28
    have u30 : ¬v4 := by
      rcases c3238 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd n3 a
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u9
    have u31 : ¬v2 := by
      rcases c3233 with a|a|a|a|a|a|a|a|a
      · exact absurd a u30
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n7
    have u32 : v11 := by
      rcases c1823 with a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a u30
      · exact a
      · exact absurd a u22
      · exact absurd a u10
      · exact absurd a u5
    have u33 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u32 a
    have u34 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u32 a
    have u35 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd n3 a
    have u36 : v3 := by
      rcases c1599 with a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u30
      · exact absurd a u34
      · exact absurd u32 a
      · exact absurd a u33
    rcases c226 with a|a|a|a|a|a|a|a
    · exact absurd a u35
    · exact absurd a u31
    · exact absurd a u30
    · exact absurd a u5
    · exact absurd a u34
    · exact absurd u36 a
    · exact absurd a u3
    · exact absurd a u4
  have c3240 : v35 ∨ v1 ∨ ¬v4 ∨ v8 ∨ ¬v11 ∨ v14 ∨ v19 ∨ v29 ∨ v32 ∨ v33 ∨ ¬v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
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
    have u5 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd n10 a
      · exact a
    have u6 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd n10 a
      · exact a
    have u7 : ¬v37 := by
      rcases c146 with a|a
      · exact absurd n10 a
      · exact a
    have u8 : v30 := by
      rcases c3234 with a|a|a|a|a
      · exact absurd n10 a
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a u7
    have u9 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v9 := by
      rcases c3200 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd n10 a
      · exact absurd a u5
    have u11 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u10 a
      · exact absurd n4 a
      · exact a
    have u12 : v5 := by
      rcases c2235 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
    have u13 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u12 a
      · exact absurd n2 a
      · exact a
    have u14 : ¬v6 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd n2 a
    rcases c420 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a n1
    · exact absurd a u6
  exact ⟨c3193, c3197, c3198, c3200, c3201, c3219, c3221, c3224, c3225, c3231, c3232, c3233, c3234, c3235, c3239, c3240⟩
