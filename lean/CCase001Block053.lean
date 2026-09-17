import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2650-2699 of the 2915-step refutation of ccase001: 120 core clauses and 80 earlier-derived ones give 14 more. -/
theorem CCase001_block053
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v1 ∨ ¬v2 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c8 : ¬v1 ∨ ¬v3 ∨ ¬v6)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c13 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v7)
    (c15 : ¬v1 ∨ ¬v6 ∨ ¬v7)
    (c39 : ¬v8 ∨ ¬v9 ∨ ¬v10)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
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
    (c80 : ¬v15 ∨ ¬v16)
    (c82 : ¬v15 ∨ ¬v18)
    (c84 : ¬v15 ∨ ¬v20)
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
    (c97 : ¬v18 ∨ ¬v21)
    (c98 : ¬v19 ∨ ¬v20)
    (c99 : ¬v21 ∨ ¬v19)
    (c102 : ¬v22 ∨ ¬v23)
    (c103 : ¬v22 ∨ ¬v24)
    (c105 : ¬v22 ∨ ¬v26)
    (c106 : ¬v22 ∨ ¬v27)
    (c108 : ¬v23 ∨ ¬v24)
    (c109 : ¬v25 ∨ ¬v23)
    (c110 : ¬v26 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c114 : ¬v26 ∨ ¬v24)
    (c115 : ¬v27 ∨ ¬v24)
    (c117 : ¬v25 ∨ ¬v26)
    (c118 : ¬v27 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
    (c121 : ¬v28 ∨ ¬v26)
    (c122 : ¬v27 ∨ ¬v28)
    (c125 : ¬v31 ∨ ¬v29)
    (c126 : ¬v32 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v34 ∨ ¬v29)
    (c129 : ¬v35 ∨ ¬v29)
    (c130 : ¬v31 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c147 : ¬v36 ∨ ¬v38)
    (c148 : ¬v39 ∨ ¬v36)
    (c149 : ¬v40 ∨ ¬v36)
    (c151 : ¬v36 ∨ ¬v42)
    (c156 : ¬v42 ∨ ¬v37)
    (c160 : ¬v42 ∨ ¬v38)
    (c163 : ¬v42 ∨ ¬v39)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c173 : ¬v49 ∨ ¬v43)
    (c178 : ¬v49 ∨ ¬v44)
    (c182 : ¬v49 ∨ ¬v45)
    (c185 : ¬v49 ∨ ¬v46)
    (c187 : ¬v49 ∨ ¬v47)
    (c188 : ¬v49 ∨ ¬v48)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c213 : v12 ∨ v47 ∨ v3 ∨ v46 ∨ v5 ∨ v11 ∨ v45 ∨ ¬v4)
    (c226 : v9 ∨ v2 ∨ v4 ∨ v46 ∨ v10 ∨ ¬v3 ∨ v44 ∨ v45)
    (c227 : v12 ∨ ¬v19 ∨ v33 ∨ v39 ∨ v26 ∨ v24 ∨ v11 ∨ v27 ∨ v10 ∨ v18 ∨ v20 ∨ v41 ∨ v17 ∨ v40)
    (c241 : v10 ∨ v3 ∨ v46 ∨ v11 ∨ v5 ∨ v47 ∨ v45 ∨ ¬v4)
    (c269 : v6 ∨ ¬v5 ∨ v4 ∨ v11 ∨ v47 ∨ v46 ∨ v48 ∨ v12)
    (c284 : v36 ∨ ¬v16 ∨ v37 ∨ v28 ∨ v23 ∨ v8 ∨ v14 ∨ v24 ∨ v17 ∨ v15 ∨ v21 ∨ v30 ∨ v9 ∨ v38)
    (c293 : v21 ∨ ¬v20 ∨ v27 ∨ v13 ∨ v14 ∨ v28 ∨ v12 ∨ v19)
    (c301 : ¬v26 ∨ v33 ∨ v18 ∨ v25 ∨ v19 ∨ v20 ∨ v34 ∨ v27)
    (c311 : ¬v34 ∨ v41 ∨ v26 ∨ v27 ∨ v35 ∨ v28 ∨ v33 ∨ v40)
    (c319 : v43 ∨ v15 ∨ v6 ∨ v8 ∨ v2 ∨ ¬v9 ∨ v3 ∨ v14 ∨ v10 ∨ v20 ∨ v16 ∨ v13 ∨ v44 ∨ v45)
    (c341 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v4 ∨ v18)
    (c353 : ¬v1 ∨ v7 ∨ v44 ∨ v11 ∨ v15 ∨ v2 ∨ v8 ∨ v16 ∨ v3 ∨ v4 ∨ v21 ∨ v43 ∨ v14 ∨ v46)
    (c363 : v43 ∨ ¬v23 ∨ v45 ∨ v24 ∨ v21 ∨ v37 ∨ v30 ∨ v31 ∨ v22 ∨ v28 ∨ v35 ∨ v15 ∨ v44 ∨ v16)
    (c374 : ¬v34 ∨ v6 ∨ v28 ∨ v27 ∨ v22 ∨ v36 ∨ v5 ∨ v7 ∨ v35 ∨ v41 ∨ v29 ∨ v40 ∨ v33 ∨ v48)
    (c404 : ¬v18 ∨ v25 ∨ v24 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ v19)
    (c414 : v18 ∨ ¬v25 ∨ v47 ∨ v32 ∨ v45 ∨ v39 ∨ v23 ∨ v16 ∨ v30 ∨ v26 ∨ v24 ∨ v33 ∨ v46 ∨ v17)
    (c419 : ¬v26 ∨ v21 ∨ v25 ∨ v33 ∨ v48 ∨ v27 ∨ v46 ∨ v32 ∨ v19 ∨ v40 ∨ v35 ∨ v20 ∨ v47 ∨ v28)
    (c426 : v9 ∨ v11 ∨ v16 ∨ v3 ∨ v17 ∨ v2 ∨ v18 ∨ ¬v10)
    (c428 : v10 ∨ v3 ∨ v16 ∨ v17 ∨ v2 ∨ v8 ∨ ¬v9 ∨ v15)
    (c433 : ¬v3 ∨ v11 ∨ v44 ∨ v10 ∨ v4 ∨ v45 ∨ v46 ∨ v2)
    (c443 : v48 ∨ v14 ∨ v5 ∨ v12 ∨ v7 ∨ ¬v6 ∨ v47 ∨ v13)
    (c461 : ¬v19 ∨ v26 ∨ v13 ∨ v33 ∨ v39 ∨ v21 ∨ v20 ∨ v41 ∨ v18 ∨ v25 ∨ v28 ∨ v12 ∨ v40 ∨ v14)
    (c566 : v36 ∨ v22 ∨ v32 ∨ v37 ∨ v35 ∨ ¬v29 ∨ v31 ∨ v28 ∨ v25 ∨ v39 ∨ v16 ∨ v30 ∨ v15 ∨ v21)
    (c589 : ¬v49 ∨ v36 ∨ v6 ∨ v41 ∨ v48 ∨ v7 ∨ v43 ∨ v42)
    (c602 : v43 ∨ ¬v1 ∨ v44 ∨ v2 ∨ v9 ∨ v7 ∨ v14 ∨ v8)
    (c691 : v25 ∨ v10 ∨ v16 ∨ v17 ∨ v19 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c745 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c761 : ¬v18 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40)
    (c817 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c856 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v23 ∨ v29 ∨ v30)
    (c1054 : v4 ∨ v9 ∨ v11 ∨ v12 ∨ v16 ∨ v17 ∨ ¬v18 ∨ v23 ∨ v24 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c1070 : ¬v27 ∨ v4 ∨ v11 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v46)
    (c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1094 : v27 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c1095 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c1122 : ¬v5 ∨ ¬v1 ∨ v12 ∨ v13 ∨ v46 ∨ v47 ∨ v48)
    (c1146 : ¬v25 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37)
    (c1226 : v13 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v19)
    (c1245 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1249 : ¬v17 ∨ v10 ∨ v11 ∨ v23 ∨ v24 ∨ v25)
    (c1250 : ¬v26 ∨ v4 ∨ v11 ∨ v19 ∨ v31 ∨ v33 ∨ v38 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c1254 : v26 ∨ v4 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1275 : ¬v26 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46)
    (c1349 : ¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v10 ∨ v11 ∨ v19)
    (c1421 : v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c1435 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1474 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c1518 : ¬v19 ∨ v5 ∨ v10 ∨ v12 ∨ v13 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1560 : ¬v15 ∨ v8 ∨ v14 ∨ v22 ∨ v23 ∨ v28)
    (c1575 : v26 ∨ v5 ∨ v12 ∨ v19 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1595 : v23 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v25 ∨ v38 ∨ v39 ∨ v45)
    (c1599 : ¬v16 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12)
    (c1621 : ¬v26 ∨ v8 ∨ v9 ∨ ¬v16)
    (c1647 : v18 ∨ ¬v1 ∨ v3 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v16 ∨ v17)
    (c1648 : ¬v18 ∨ ¬v1 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14)
    (c1649 : ¬v17 ∨ ¬v1 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14)
    (c1811 : ¬v13 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v9 ∨ v20)
    (c1823 : ¬v30 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46)
    (c2006 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44)
    (c2028 : ¬v23 ∨ v16 ∨ v29 ∨ v30 ∨ v31)
    (c2077 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v24)
    (c2083 : ¬v19 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11)
    (c2132 : v20 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ ¬v34 ∨ v45 ∨ v47 ∨ v48)
    (c2197 : v30 ∨ v2 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v17 ∨ v36 ∨ v37 ∨ v41 ∨ v42 ∨ v44)
    (c2227 : ¬v19 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v10)
    (c2249 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2297 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2326 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v29 ∨ v32 ∨ v37 ∨ v43 ∨ v44 ∨ v45)
    (c2344 : ¬v32 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2367 : ¬v29 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2396 : ¬v35 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2437 : ¬v33 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2476 : v33 ∨ v20 ∨ ¬v27 ∨ v34 ∨ v35)
    (c2547 : v31 ∨ ¬v38 ∨ v44 ∨ v45 ∨ v46)
    (c2612 : ¬v35 ∨ v4 ∨ v11 ∨ v18 ∨ v44 ∨ v45 ∨ v46)
    (c2630 : ¬v20 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v34 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2633 : v33 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ ¬v27 ∨ v34)
    (c2636 : ¬v34 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46)
    (c2689 : ¬v16 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2731 : v31 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v30 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46)
    (c2740 : v17 ∨ v3 ∨ v10 ∨ v16 ∨ v29 ∨ v31 ∨ v32 ∨ v44 ∨ v45 ∨ v46)
    (c2754 : v24 ∨ v3 ∨ v10 ∨ v17 ∨ v30 ∨ v37 ∨ v38 ∨ v39 ∨ v45)
    (c2863 : ¬v31 ∨ v24 ∨ v32 ∨ v37 ∨ v38 ∨ v39)
    (c2925 : ¬v28 ∨ ¬v16 ∨ v35)
    (c2941 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c2977 : ¬v32 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c3024 : ¬v34 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v37 ∨ v45 ∨ v46 ∨ v47)
    (c3057 : ¬v17 ∨ v2 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v14 ∨ v21 ∨ v23 ∨ v24 ∨ v28)
    (c3063 : v18 ∨ v4 ∨ v11 ∨ v25 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46)
    (c3068 : ¬v16 ∨ v2 ∨ v4 ∨ v10 ∨ v11 ∨ v34 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c3073 : ¬v19 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c3119 : v39 ∨ v4 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ v37 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47)
    (c3120 : v26 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v33 ∨ v40 ∨ v47)
    (c3140 : v49)
    (c3159 : ¬v41 ∨ v33 ∨ v34 ∨ v35)
    (c3193 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v22 ∨ v24 ∨ v30)
    (c3197 : v11 ∨ v2 ∨ v4 ∨ v9 ∨ v16 ∨ v18)
    (c3198 : ¬v10 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ v11)
    (c3234 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v37)
    (c3258 : ¬v28 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ v21 ∨ v32 ∨ v34 ∨ v35)
    (c3282 : v1 ∨ v8 ∨ v14 ∨ v21)
    (c3284 : v13 ∨ ¬v4 ∨ v8 ∨ v14 ∨ v15 ∨ v21 ∨ v29 ∨ v30 ∨ v34 ∨ v36 ∨ v41)
    (c3289 : v30 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ ¬v20 ∨ v21 ∨ v29 ∨ v34 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41)
    (c3291 : v20 ∨ v2 ∨ v4 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ v21 ∨ v33 ∨ v34 ∨ v36 ∨ v41)
    (c3292 : v25 ∨ ¬v32 ∨ v38 ∨ v39)
    : (¬v11 ∨ ¬v1 ∨ v7 ∨ v8 ∨ ¬v12 ∨ v14 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v39) ∧ (v4 ∨ v11 ∨ ¬v26 ∨ v31 ∨ v33 ∨ v38 ∨ v39 ∨ v40) ∧ (v12 ∨ ¬v1 ∨ v4 ∨ ¬v5 ∨ v11) ∧ (v11 ∨ ¬v1 ∨ ¬v4 ∨ v12) ∧ (v30 ∨ v8 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v15 ∨ v21 ∨ v38 ∨ v39 ∨ v40 ∨ v41) ∧ (v23 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v30 ∨ v38 ∨ v39 ∨ v40) ∧ (¬v42 ∨ v8 ∨ v14 ∨ v15 ∨ v21 ∨ v30) ∧ (¬v4 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v14) ∧ (¬v23 ∨ v4 ∨ v11 ∨ v30 ∨ v38 ∨ v39) ∧ (v36 ∨ ¬v1 ∨ ¬v4 ∨ v41 ∨ v42) ∧ (v11 ∨ v8 ∨ v14 ∨ v15 ∨ v21 ∨ v30 ∨ v41) ∧ (v2 ∨ v9 ∨ v10 ∨ ¬v27 ∨ v30) ∧ (v6 ∨ v2 ∨ v3 ∨ v9 ∨ ¬v11 ∨ ¬v12 ∨ v14 ∨ v21 ∨ v30 ∨ v41) ∧ (v6 ∨ v3 ∨ v4 ∨ v5 ∨ v8 ∨ v9 ∨ ¬v11 ∨ v12 ∨ v14 ∨ ¬v16 ∨ v30 ∨ v41) := by
  have c3293 : v39 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ v20 ∨ v21 ∨ v29 ∨ v30 ∨ v33 ∨ v34 ∨ v36 ∨ v38 ∨ v41 := by
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
    have u8 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u9 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
    have u10 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v4 := by
      rcases c3284 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    have u12 : v2 := by
      rcases c3291 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    have u13 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u9 a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u12 a
    have u15 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n14
      · exact absurd a n11
    have u16 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : v19 := by
      rcases c2633 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd u15 a
      · exact absurd a n11
    have u21 : ¬v32 := by
      rcases c3292 with a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a n13
      · exact absurd a n0
    have u22 : ¬v31 := by
      rcases c2863 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a n13
      · exact absurd a n0
    have u23 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u20 a
    have u25 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u20 a
    have u26 : v11 := by
      rcases c3073 with a|a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u11
      · exact a
      · exact absurd a u21
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u27 : v12 := by
      rcases c461 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n14
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a u17
      · exact a
      · exact absurd a u8
      · exact absurd a n4
    have u28 : v10 := by
      rcases c2740 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u14
      · exact a
      · exact absurd a u23
      · exact absurd a n8
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c64 with a|a|a
    · exact absurd u28 a
    · exact absurd u27 a
    · exact absurd u26 a
  have c3294 : v13 ∨ v7 ∨ v8 ∨ v14 ∨ v15 ∨ v21 ∨ v29 ∨ v30 ∨ v34 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 := by
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
    have u5 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v20 := by
      rcases c3289 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
    have u9 : v33 := by
      rcases c3293 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
    have u10 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : v26 := by
      rcases c1474 with a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n5
      · exact a
    have u13 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a n13
      · exact absurd a n8
    have u18 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v2 := by
      rcases c4 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v3 := by
      rcases c8 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u17 a
    have u22 : v12 := by
      rcases c443 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u18
      · exact a
      · exact absurd a n1
      · exact absurd u17 a
      · exact absurd a u5
      · exact absurd a n0
    have u23 : v9 := by
      rcases c3193 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a n2
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n7
    have u24 : ¬v10 := by
      rcases c55 with a|a|a
      · exact absurd u23 a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v11 := by
      rcases c58 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u22 a
    have u26 : v17 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u21
      · exact absurd a u24
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c3057 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u19
    · exact absurd a u24
    · exact absurd a u25
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u12
  have c3295 : v8 ∨ v13 ∨ v14 ∨ v15 ∨ v21 ∨ v29 ∨ v30 ∨ v34 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
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
    have u6 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
    have u7 : v7 := by
      rcases c3294 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v20 := by
      rcases c3289 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u13 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n1
      · exact a
      · exact absurd a u12
      · exact absurd a n12
      · exact absurd a n7
    have u14 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u13 a
    have u20 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u21 : ¬v32 := by
      rcases c3292 with a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u22 : v9 := by
      rcases c3193 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a n0
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a n6
    have u23 : v19 := by
      rcases c2633 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd u13 a
      · exact absurd a n7
    have u24 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : v10 := by
      rcases c2227 with a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd u22 a
      · exact a
    have u26 : v11 := by
      rcases c3073 with a|a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a u8
      · exact a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u27 : v12 := by
      rcases c461 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n12
      · exact absurd a u24
      · exact absurd a u16
      · exact absurd a u15
      · exact a
      · exact absurd a n11
      · exact absurd a n2
    rcases c64 with a|a|a
    · exact absurd u25 a
    · exact absurd u27 a
    · exact absurd u26 a
  have c3297 : v28 ∨ v13 ∨ v14 ∨ v15 ∨ ¬v20 ∨ v21 ∨ ¬v29 ∨ v30 ∨ v34 ∨ v36 ∨ v39 := by
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
      rcases c89 with a|a
      · exact a
      · exact absurd n4 a
    have u9 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n4 a
    have u10 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n4 a
    have u11 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n4 a
    have u12 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n6 a
    have u13 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n6 a
      · exact a
    have u14 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n6 a
    have u15 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a u12
    have u17 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u18 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n6 a
    have u19 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a u18
      · exact absurd a u14
    have u21 : ¬v25 := by
      rcases c1146 with a|a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a u15
    have u22 : v22 := by
      rcases c566 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd n6 a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a n10
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n5
    have u23 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : v12 := by
      rcases c293 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n4 a
      · exact absurd a u25
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a u9
    have u27 : v10 := by
      rcases c691 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a n7
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a n10
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u28 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u27 a
    have u29 : ¬v11 := by
      rcases c64 with a|a|a
      · exact absurd u27 a
      · exact absurd u26 a
      · exact a
    have u30 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u27 a
    have u31 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a n2
      · exact absurd a n5
    have u32 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u29
      · exact a
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a n10
    have u33 : v3 := by
      rcases c1647 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u31 a
      · exact a
      · exact absurd a u30
      · exact absurd u27 a
      · exact absurd a u29
      · exact absurd a u8
      · exact absurd a u11
    rcases c6 with a|a|a
    · exact absurd u31 a
    · exact absurd u33 a
    · exact absurd u32 a
  have c3298 : v13 ∨ v8 ∨ v14 ∨ v15 ∨ v21 ∨ v30 ∨ v34 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
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
    have u8 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
    have u9 : v29 := by
      rcases c3295 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v28 := by
      rcases c3258 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a u10
    have u14 : ¬v20 := by
      rcases c3297 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd u9 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u15 : ¬v27 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u14
      · exact a
      · exact absurd a n6
      · exact absurd a u10
    have u16 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n11
      · exact absurd a n6
    have u17 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v7 := by
      rcases c15 with a|a|a
      · exact absurd u8 a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v2 := by
      rcases c4 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v3 := by
      rcases c8 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u16 a
    have u22 : v12 := by
      rcases c443 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u17
      · exact a
      · exact absurd a u19
      · exact absurd u16 a
      · exact absurd a u6
      · exact absurd a n0
    have u23 : v9 := by
      rcases c602 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u8 a
      · exact absurd a u3
      · exact absurd a u20
      · exact a
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a n1
    have u24 : ¬v11 := by
      rcases c58 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v16 := by
      rcases c2689 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c353 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u19
    · exact absurd a u3
    · exact absurd a u24
    · exact absurd a n3
    · exact absurd a u20
    · exact absurd a n1
    · exact absurd a u25
    · exact absurd a u21
    · exact absurd a u18
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u5
  have c3299 : ¬v11 ∨ ¬v1 ∨ v7 ∨ v8 ∨ ¬v12 ∨ v14 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v39 := by
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
    have u5 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u6 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n4 a
    have u7 : v2 := by
      rcases c602 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a u3
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n3
    have u8 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    rcases c1595 with a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a u4
  have c3300 : v7 ∨ ¬v1 ∨ v8 ∨ ¬v12 ∨ v14 ∨ v18 ∨ ¬v26 ∨ v30 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
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
    have u5 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n6 a
      · exact a
    have u7 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n6 a
      · exact a
    have u8 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n6 a
    have u9 : ¬v32 := by
      rcases c3292 with a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v11 := by
      rcases c3299 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
    have u11 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n9
    have u12 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u11 a
    have u15 : v10 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd u11 a
    have u16 : v9 := by
      rcases c3193 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n7
    rcases c55 with a|a|a
    · exact absurd u16 a
    · exact absurd n3 a
    · exact absurd u15 a
  have c3301 : ¬v7 ∨ ¬v1 ∨ v8 ∨ v13 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v30 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
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
    have u7 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : v9 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u9
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u13 : v10 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd u12 a
      · exact absurd a n4
    have u14 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd u12 a
      · exact absurd u13 a
      · exact a
    rcases c3119 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a u11
    · exact absurd a n11
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c3302 : v40 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ v20 ∨ v21 ∨ v27 ∨ v30 ∨ v36 ∨ v38 ∨ v39 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
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
    have u5 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
    have u6 : v34 := by
      rcases c3298 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
    have u7 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
    have u12 : v26 := by
      rcases c311 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n12
      · exact a
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n0
    have u13 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : v19 := by
      rcases c419 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u8
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u11
    have u17 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v7 := by
      rcases c3301 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n0
    have u21 : ¬v12 := by
      rcases c3300 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd u5 a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd u12 a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u22 : ¬v5 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u23 : ¬v6 := by
      rcases c443 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u20
      · exact a
      · exact absurd a u3
      · exact absurd a n2
    rcases c374 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u23
    · exact absurd a u11
    · exact absurd a n7
    · exact absurd a u13
    · exact absurd a n9
    · exact absurd a u22
    · exact absurd a u20
    · exact absurd a u10
    · exact absurd a n12
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a u4
  have c3303 : ¬v12 ∨ v3 ∨ v4 ∨ ¬v9 ∨ ¬v34 ∨ v37 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
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
      rcases c55 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v11 := by
      rcases c58 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n0 a
    rcases c3024 with a|a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3304 : ¬v7 ∨ ¬v1 ∨ v8 ∨ v13 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ ¬v34 ∨ v40 := by
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
    have u8 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n9 a
    have u13 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : v9 := by
      rcases c3193 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
    have u15 : ¬v12 := by
      rcases c3303 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd u14 a
      · exact absurd n9 a
      · exact absurd a u13
    have u16 : v11 := by
      rcases c3120 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u8
      · exact a
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n10
      · exact absurd a u6
    have u17 : v19 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u15
      · exact a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u18 : ¬v10 := by
      rcases c54 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u16 a
    rcases c2227 with a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a n2
    · exact absurd u14 a
    · exact absurd a u18
  have c3305 : v12 ∨ ¬v1 ∨ v13 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v33 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
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
      rcases c1122 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u6 : v19 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u7 : v11 := by
      rcases c3120 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u5
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u3
    have u8 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : v10 := by
      rcases c1518 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u5
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : v14 := by
      rcases c461 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n10
      · exact a
    rcases c66 with a|a|a
    · exact absurd u11 a
    · exact absurd u12 a
    · exact absurd u7 a
  have c3306 : v4 ∨ ¬v1 ∨ v7 ∨ v8 ∨ v11 ∨ ¬v12 ∨ v14 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v40 := by
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
    have u7 : ¬v19 := by
      rcases c3073 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u8 : v10 := by
      rcases c1254 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u5
    have u9 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u8 a
    have u10 : v2 := by
      rcases c602 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a u3
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n3
    have u11 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd n1 a
      · exact absurd u10 a
      · exact a
    rcases c1349 with a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd u8 a
    · exact absurd a n4
    · exact absurd a u7
  have c3307 : v36 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ v20 ∨ v21 ∨ v30 ∨ v38 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
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
    have u7 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
    have u8 : v34 := by
      rcases c3298 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
    have u13 : v27 := by
      rcases c3302 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u14 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : v12 := by
      rcases c3305 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u20 : ¬v7 := by
      rcases c3304 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd u8 a
      · exact absurd a n10
    have u21 : ¬v11 := by
      rcases c3299 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd u19 a
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a n9
    have u22 : v4 := by
      rcases c3306 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd u19 a
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
    have u23 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd u7 a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u22 a
    have u26 : v10 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u25
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd u22 a
    have u27 : v9 := by
      rcases c602 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u7 a
      · exact absurd a u3
      · exact absurd a u24
      · exact a
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a n1
    rcases c55 with a|a|a
    · exact absurd u27 a
    · exact absurd u19 a
    · exact absurd u26 a
  have c3308 : ¬v12 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ ¬v20 ∨ v21 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v36 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
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
    have u6 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n5 a
    have u8 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n5 a
    have u9 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
    have u10 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : ¬v26 := by
      rcases c3300 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u9 a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a u7
      · exact a
      · exact absurd a n9
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u12 : ¬v25 := by
      rcases c414 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a n16
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a u8
    have u13 : ¬v11 := by
      rcases c3299 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n15
      · exact absurd a n16
    have u14 : v4 := by
      rcases c3063 with a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd u9 a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u14 a
    have u18 : v10 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd u14 a
    have u19 : v9 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd u18 a
    rcases c55 with a|a|a
    · exact absurd u19 a
    · exact absurd n0 a
    · exact absurd u18 a
  have c3309 : v40 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ v21 ∨ v30 ∨ v36 ∨ v38 ∨ v39 ∨ v41 := by
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
    have u5 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
    have u6 : v34 := by
      rcases c3298 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u7 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : v20 := by
      rcases c3307 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u13 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u8
    have u18 : ¬v22 := by
      rcases c856 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a n6
    have u19 : ¬v7 := by
      rcases c3301 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n0
    have u20 : ¬v12 := by
      rcases c3308 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u12 a
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u21 : ¬v5 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u22 : v26 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u23 : ¬v6 := by
      rcases c443 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u19
      · exact a
      · exact absurd a u3
      · exact absurd a n2
    have u24 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u22 a
    rcases c374 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u23
    · exact absurd a u25
    · exact absurd a u24
    · exact absurd a u18
    · exact absurd a n7
    · exact absurd a u21
    · exact absurd a u19
    · exact absurd a u11
    · exact absurd a n10
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a u4
  have c3310 : v4 ∨ v11 ∨ ¬v26 ∨ v31 ∨ v33 ∨ v38 ∨ v39 ∨ v40 := by
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
    have u6 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n2 a
    have u7 : ¬v32 := by
      rcases c3292 with a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v19 := by
      rcases c3073 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c1250 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c3311 : v11 ∨ ¬v1 ∨ v12 ∨ ¬v26 ∨ v31 ∨ v33 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
    have u5 : v4 := by
      rcases c3310 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u5 a
    rcases c213 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd u5 a
  have c3312 : ¬v26 ∨ ¬v1 ∨ v8 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v30 ∨ v33 ∨ v38 ∨ v39 ∨ v40 := by
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
    have u5 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : ¬v32 := by
      rcases c3292 with a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v31 := by
      rcases c2863 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
    have u12 : v11 := by
      rcases c3311 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd n4 a
    have u14 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u12 a
    have u15 : ¬v16 := by
      rcases c745 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u6
    have u16 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u6
    have u17 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v17 := by
      rcases c1649 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
    rcases c2754 with a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u18
    · exact absurd a u14
    · exact absurd a u19
    · exact absurd a n6
    · exact absurd a u9
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u4
  have c3313 : ¬v2 ∨ ¬v1 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v26 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
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
    have u5 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u8 : v19 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u8 a
    rcases c341 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd n3 a
    · exact absurd a u7
    · exact absurd a u9
  have c3314 : ¬v11 ∨ ¬v1 ∨ v8 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v26 ∨ v33 ∨ v37 ∨ v38 ∨ v40 := by
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
    have u4 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n4 a
    have u5 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u6 : ¬v2 := by
      rcases c3313 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v7 := by
      rcases c602 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u4
      · exact a
      · exact absurd a n5
      · exact absurd a n2
    have u8 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v17 := by
      rcases c1649 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
    have u13 : ¬v18 := by
      rcases c1648 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
    rcases c341 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd n0 a
    · exact absurd a u9
    · exact absurd a u13
  have c3315 : v12 ∨ ¬v1 ∨ v4 ∨ ¬v5 ∨ v11 := by
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
    have u5 : ¬v6 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    rcases c269 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd n3 a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n0
  have c3316 : v4 ∨ ¬v1 ∨ v11 ∨ v12 ∨ v26 ∨ v33 ∨ v39 := by
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
    have u8 : ¬v5 := by
      rcases c3315 with a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
    have u9 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u10 : v13 := by
      rcases c3120 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u6
    have u11 : v19 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u12 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : v32 := by
      rcases c3073 with a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u17 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u18 : ¬v34 := by
      rcases c2636 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a u5
    have u19 : ¬v30 := by
      rcases c1823 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a u5
    have u20 : v25 := by
      rcases c3063 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u21 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u16 a
      · exact a
    have u22 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u16 a
    have u23 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd a u17
    have u24 : ¬v27 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u14
      · exact a
      · exact absurd a u18
      · exact absurd a u17
    have u25 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u26 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u22
    have u27 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u20 a
    have u28 : v10 := by
      rcases c227 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u11 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a u27
      · exact absurd a n2
      · exact absurd a u24
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd a u9
    have u29 : ¬v9 := by
      rcases c56 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u28 a
    have u30 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u29
      · exact a
      · exact absurd a u19
      · exact absurd a u25
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u26
    have u31 : v3 := by
      rcases c2083 with a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n0
      · exact absurd a u29
      · exact absurd u28 a
      · exact absurd a n2
    rcases c1 with a|a|a
    · exact absurd n1 a
    · exact absurd u31 a
    · exact absurd u30 a
  have c3317 : v33 ∨ ¬v1 ∨ v11 ∨ v12 ∨ v14 ∨ v15 ∨ v21 ∨ v26 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
    have u5 : v4 := by
      rcases c3316 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u6 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u5 a
    rcases c213 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd u5 a
  have c3318 : v21 ∨ v8 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v15 ∨ v30 ∨ v33 ∨ v38 ∨ v39 ∨ v40 := by
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
    have u5 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
    have u6 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u7 : ¬v26 := by
      rcases c3312 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : v11 := by
      rcases c3317 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd u5 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n9
    rcases c3314 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd u5 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a n7
    · exact absurd a u6
    · exact absurd a n8
    · exact absurd a n10
  have c3319 : v11 ∨ ¬v1 ∨ ¬v4 ∨ v12 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
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
    have u5 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    rcases c213 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd n2 a
  have c3320 : v11 ∨ ¬v1 ∨ v12 ∨ ¬v13 ∨ ¬v26 ∨ v39 ∨ v40 := by
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
    have u6 : ¬v4 := by
      rcases c3319 with a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
    have u7 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n4 a
      · exact a
    have u8 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n4 a
      · exact a
    have u9 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n4 a
    have u10 : v18 := by
      rcases c3063 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : v10 := by
      rcases c404 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u9
      · exact absurd a u8
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u12
    have u15 : v9 := by
      rcases c1054 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd u10 a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c56 with a|a|a
    · exact absurd u15 a
    · exact absurd n3 a
    · exact absurd u14 a
  have c3321 : v30 ∨ v8 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v15 ∨ v21 ∨ v38 ∨ v39 ∨ v40 ∨ v41 := by
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
    have u5 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
    have u6 : v33 := by
      rcases c3318 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : v26 := by
      rcases c1474 with a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : v11 := by
      rcases c3320 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd u8 a
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd n3 a
    have u14 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u12 a
    have u15 : ¬v16 := by
      rcases c745 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u10
    have u16 : v2 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u17 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u5 a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v17 := by
      rcases c1649 with a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u18
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a u19
    · exact absurd a u11
    · exact absurd a u7
  have c3323 : v24 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v11 ∨ v23 ∨ v30 ∨ v38 ∨ v39 := by
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
    have u6 : ¬v17 := by
      rcases c2077 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
    have u7 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u8 : v3 := by
      rcases c2754 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u4
    have u9 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact absurd u8 a
      · exact a
    rcases c226 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd u8 a
    · exact absurd a u3
    · exact absurd a u4
  have c3324 : v23 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v30 ∨ v38 ∨ v39 ∨ v40 := by
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
    have u6 : v24 := by
      rcases c3323 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v32 := by
      rcases c3292 with a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v16 := by
      rcases c745 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n0
    have u12 : v2 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u13 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u12 a
    have u14 : v18 := by
      rcases c3063 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c761 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c3325 : ¬v42 ∨ v8 ∨ v14 ∨ v15 ∨ v21 ∨ v30 := by
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
    have u5 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
    have u11 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : v13 := by
      rcases c3309 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u5
    have u13 : v12 := by
      rcases c3321 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd u12 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u5
    have u14 : ¬v11 := by
      rcases c70 with a|a|a
      · exact absurd u13 a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v10 := by
      rcases c67 with a|a|a
      · exact absurd u13 a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u13 a
    have u17 : v23 := by
      rcases c3324 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u6
    have u18 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v32 := by
      rcases c3292 with a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u7
      · exact absurd a u11
    have u21 : ¬v31 := by
      rcases c2863 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
    have u22 : ¬v17 := by
      rcases c2077 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u18
    have u23 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u21
    have u24 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd u10 a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd u10 a
      · exact absurd u23 a
      · exact a
    rcases c226 with a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u24
    · exact absurd a u25
    · exact absurd a u4
    · exact absurd a u15
    · exact absurd u23 a
    · exact absurd a u2
    · exact absurd a u3
  have c3326 : ¬v4 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v14 := by
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
    have u4 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    rcases c602 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a n2
  have c3327 : v2 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v11 ∨ v14 ∨ v30 ∨ v38 := by
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
    have u7 : v7 := by
      rcases c602 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n2
    have u8 : ¬v4 := by
      rcases c3326 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
    have u9 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v10 := by
      rcases c3198 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v34 := by
      rcases c3024 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u13 : ¬v32 := by
      rcases c2977 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u14 : ¬v16 := by
      rcases c3068 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u15 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u16 : v23 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u14
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u17 : v31 := by
      rcases c2731 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u5
    have u18 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u16 a
      · exact a
    rcases c2863 with a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u18
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a n7
    · exact absurd a u15
  have c3328 : ¬v23 ∨ v4 ∨ v11 ∨ v30 ∨ v38 ∨ v39 := by
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
    have u6 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v32 := by
      rcases c3292 with a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v31 := by
      rcases c2863 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
    have u13 : v18 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u5
      · exact a
      · exact absurd a u7
      · exact absurd a n5
    have u14 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : v29 := by
      rcases c2028 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u16
      · exact a
      · exact absurd a n3
      · exact absurd a u12
    have u18 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u17 a
    rcases c363 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u15
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a u12
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u18
    · exact absurd a u14
    · exact absurd a u3
    · exact absurd a u16
  have c3329 : v11 ∨ v8 ∨ v9 ∨ v14 ∨ v15 ∨ v21 ∨ v30 ∨ v38 ∨ v41 := by
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
    have u8 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
    have u9 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : ¬v42 := by
      rcases c3325 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v4 := by
      rcases c3326 with a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u12 : v2 := by
      rcases c3327 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u8 a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u8 a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u8 a
      · exact absurd u12 a
      · exact a
    have u17 : v36 := by
      rcases c589 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u10
    have u18 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v23 := by
      rcases c3328 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u18
    have u21 : v10 := by
      rcases c3324 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u18
      · exact absurd a u19
    have u22 : ¬v19 := by
      rcases c2083 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd u21 a
      · exact absurd a n0
    have u23 : ¬v12 := by
      rcases c1349 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd u21 a
      · exact absurd a n0
      · exact absurd a u22
    have u24 : v26 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u25 : ¬v13 := by
      rcases c3321 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a u23
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n8
    have u26 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u24 a
    have u28 : ¬v16 := by
      rcases c1621 with a|a|a|a
      · exact absurd u24 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
    have u29 : v18 := by
      rcases c3119 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a u25
      · exact a
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u30 : v17 := by
      rcases c1054 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a u28
      · exact a
      · exact absurd u29 a
      · exact absurd a u20
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    rcases c91 with a|a
    · exact absurd u30 a
    · exact absurd u29 a
  have c3330 : v6 ∨ v4 ∨ v5 ∨ ¬v9 ∨ ¬v10 ∨ v11 ∨ v37 ∨ v39 ∨ v40 ∨ v41 := by
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
    have u7 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    have u8 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    have u9 : v18 := by
      rcases c3119 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u8
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v34 := by
      rcases c2132 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u10
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
    have u14 : v26 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u15 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u8
      · exact a
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a u13
    rcases c120 with a|a
    · exact absurd u14 a
    · exact absurd u15 a
  have c3331 : v11 ∨ ¬v1 ∨ ¬v2 ∨ v4 ∨ ¬v9 ∨ v21 ∨ v37 ∨ v39 ∨ v41 ∨ v42 := by
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
    have u8 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u9 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u10 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u11 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u12 : v36 := by
      rcases c589 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a n9
    have u13 : ¬v38 := by
      rcases c147 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v10 := by
      rcases c3330 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd n4 a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a n8
    have u16 : ¬v34 := by
      rcases c3024 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u17 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u18 : ¬v13 := by
      rcases c1811 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd n4 a
      · exact absurd a u17
    have u19 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u18
      · exact a
      · exact absurd a u17
      · exact absurd a n8
      · exact absurd a u16
    have u20 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v17 := by
      rcases c1249 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u20
    have u24 : v30 := by
      rcases c2754 with a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u23
      · exact a
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a u4
    have u25 : v31 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u23
      · exact absurd a u22
      · exact a
    rcases c130 with a|a
    · exact absurd u25 a
    · exact absurd u24 a
  have c3332 : v14 ∨ v2 ∨ v4 ∨ v8 ∨ ¬v9 ∨ v10 ∨ v11 ∨ v15 ∨ v21 ∨ v37 := by
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
    have u7 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n1
    have u8 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n8
    have u9 : ¬v34 := by
      rcases c3024 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u10 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u11 : ¬v16 := by
      rcases c3068 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u12 : v7 := by
      rcases c353 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u5
    have u13 : v17 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u11
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n7
    have u14 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u12 a
    have u15 : v13 := by
      rcases c319 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n4 a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u11
      · exact a
      · exact absurd a u3
      · exact absurd a u4
    have u16 : ¬v12 := by
      rcases c61 with a|a|a
      · exact absurd u15 a
      · exact absurd n4 a
      · exact a
    rcases c1649 with a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd u8 a
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd u15 a
    · exact absurd a n0
  have c3333 : v4 ∨ v5 ∨ v6 ∨ ¬v9 ∨ ¬v10 ∨ v11 ∨ v14 ∨ v21 ∨ v30 ∨ v39 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
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
    have u8 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    have u9 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    have u10 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : v40 := by
      rcases c3330 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n9
      · exact a
      · exact absurd a n10
    have u12 : v33 := by
      rcases c1245 with a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u13 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v27 := by
      rcases c1070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n9
      · exact absurd a u5
    rcases c1094 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a n2
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd a u16
    · exact absurd a n8
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a n10
    · exact absurd a u7
  have c3334 : v14 ∨ v4 ∨ v8 ∨ v11 ∨ v15 ∨ v21 ∨ v30 ∨ v38 ∨ v39 ∨ v41 := by
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
    have u5 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
    have u8 : v9 := by
      rcases c3329 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u9 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : ¬v42 := by
      rcases c3325 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v2 := by
      rcases c3331 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u7 a
      · exact a
      · exact absurd a n1
      · exact absurd u8 a
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u10
    have u12 : v10 := by
      rcases c3332 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u8 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
    have u13 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v5 := by
      rcases c3315 with a|a|a|a|a
      · exact absurd a u13
      · exact absurd u7 a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
    have u16 : v6 := by
      rcases c3333 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u15
      · exact a
      · exact absurd u8 a
      · exact absurd u12 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u10
    have u17 : ¬v7 := by
      rcases c15 with a|a|a
      · exact absurd u7 a
      · exact absurd u16 a
      · exact a
    rcases c443 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u17
    · exact absurd u16 a
    · exact absurd a u5
    · exact absurd a u14
  have c3335 : ¬v10 ∨ ¬v1 ∨ v4 ∨ ¬v9 ∨ v11 ∨ v14 ∨ v29 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
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
    have u5 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u10 : ¬v5 := by
      rcases c3315 with a|a|a|a|a
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
    have u11 : v26 := by
      rcases c3120 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a u5
    have u12 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v21 := by
      rcases c1095 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u16
    have u18 : v6 := by
      rcases c1094 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u6
    have u19 : ¬v7 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v2 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v3 := by
      rcases c8 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v15 := by
      rcases c1560 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u16
    have u23 : v16 := by
      rcases c353 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u9
      · exact a
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u4
    have u24 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u23 a
      · exact a
    rcases c301 with a|a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a n8
    · exact absurd a u24
    · exact absurd a u14
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a n9
    · exact absurd a u15
  have c3336 : v41 ∨ v4 ∨ v8 ∨ v11 ∨ v14 ∨ v15 ∨ v21 ∨ v30 ∨ v38 := by
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
    have u8 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
    have u9 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : ¬v42 := by
      rcases c3325 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : v39 := by
      rcases c3334 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n0
    have u12 : v32 := by
      rcases c2941 with a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u13 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u19 : v9 := by
      rcases c3329 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u20 : ¬v10 := by
      rcases c3335 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd u19 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n0
    have u21 : v2 := by
      rcases c3332 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u19 a
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u9
    have u22 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u8 a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u8 a
      · exact absurd u21 a
      · exact a
    rcases c589 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u13
    · exact absurd a u22
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u23
    · exact absurd a u2
    · exact absurd a u10
  have c3337 : v11 ∨ v8 ∨ v14 ∨ v15 ∨ v21 ∨ v30 ∨ v38 ∨ v41 := by
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
    have u5 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
    have u6 : v4 := by
      rcases c3336 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u6 a
    have u9 : v9 := by
      rcases c3326 with a|a|a|a|a
      · exact absurd u6 a
      · exact absurd u5 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
    have u10 : v10 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd u6 a
    have u11 : v12 := by
      rcases c3319 with a|a|a|a
      · exact absurd a n0
      · exact absurd u5 a
      · exact absurd u6 a
      · exact a
    rcases c55 with a|a|a
    · exact absurd u9 a
    · exact absurd u11 a
    · exact absurd u10 a
  have c3338 : v36 ∨ ¬v1 ∨ ¬v4 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
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
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    rcases c589 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a n4
  have c3339 : ¬v6 ∨ v4 ∨ v8 ∨ v11 ∨ v14 ∨ v15 ∨ v16 ∨ v21 := by
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
    have u5 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
    have u6 : ¬v7 := by
      rcases c15 with a|a|a
      · exact absurd u5 a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v3 := by
      rcases c8 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v2 := by
      rcases c4 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n0 a
    rcases c353 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u4
  have c3340 : v11 ∨ v8 ∨ v14 ∨ v15 ∨ v21 ∨ v30 ∨ v41 := by
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
    have u8 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
    have u9 : ¬v42 := by
      rcases c3325 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : v38 := by
      rcases c3337 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
    have u12 : v31 := by
      rcases c2547 with a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u13 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v4 := by
      rcases c3338 with a|a|a|a|a
      · exact absurd a u13
      · exact absurd u8 a
      · exact a
      · exact absurd a n6
      · exact absurd a u9
    have u18 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u19 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u20 : ¬v19 := by
      rcases c3073 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u21 : ¬v26 := by
      rcases c1275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u5
    have u22 : ¬v16 := by
      rcases c2689 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u23 : ¬v6 := by
      rcases c3339 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u22
      · exact absurd a n4
    have u24 : v7 := by
      rcases c589 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u13
      · exact absurd a u23
      · exact absurd a n6
      · exact absurd a u7
      · exact a
      · exact absurd a u2
      · exact absurd a u9
    have u25 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u24 a
    have u27 : v12 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u25
      · exact a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u28 : v13 := by
      rcases c1226 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd u27 a
      · exact absurd a u20
    have u29 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd u27 a
    have u30 : v18 := by
      rcases c3197 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u26
      · exact absurd a u17
      · exact absurd a u29
      · exact absurd a u22
      · exact a
    have u31 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u30 a
    rcases c2197 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u26
    · exact absurd a n1
    · exact absurd a u29
    · exact absurd a n2
    · exact absurd a u22
    · exact absurd a u31
    · exact absurd a u13
    · exact absurd a u10
    · exact absurd a n6
    · exact absurd a u9
    · exact absurd a u3
  have c3341 : v2 ∨ v9 ∨ v10 ∨ ¬v27 ∨ v30 := by
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
    have u5 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd n3 a
      · exact a
    have u7 : v16 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u8 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : v22 := by
      rcases c817 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
      · exact a
      · exact absurd a u5
      · exact absurd a u6
    rcases c106 with a|a
    · exact absurd u9 a
    · exact absurd n3 a
  have c3342 : v27 ∨ v2 ∨ v6 ∨ v9 ∨ v13 ∨ v14 ∨ v16 ∨ v21 ∨ v30 ∨ v41 := by
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
    have u5 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u7 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
    have u8 : v23 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : v20 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n9
      · exact absurd a u7
    have u11 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c2326 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u16
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3343 : v6 ∨ v2 ∨ v3 ∨ v9 ∨ ¬v11 ∨ ¬v12 ∨ v14 ∨ v21 ∨ v30 ∨ v41 := by
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
    have u8 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u9 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n4 a
    have u10 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u11 : ¬v27 := by
      rcases c3341 with a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u10
      · exact a
      · exact absurd a n8
    have u12 : v16 := by
      rcases c3342 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v26 := by
      rcases c1621 with a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd u12 a
    have u17 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u19 : v34 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n9
      · exact a
    have u20 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u21 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n7
      · exact a
    rcases c311 with a|a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a n9
    · exact absurd a u16
    · exact absurd a u11
    · exact absurd a u18
    · exact absurd a u21
    · exact absurd a u17
    · exact absurd a u20
  have c3344 : v6 ∨ v3 ∨ v4 ∨ v5 ∨ v8 ∨ v9 ∨ ¬v11 ∨ v12 ∨ v14 ∨ ¬v16 ∨ v30 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
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
      rcases c80 with a|a
      · exact a
      · exact absurd n9 a
    have u9 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n9 a
      · exact a
    have u10 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n9 a
      · exact a
    have u11 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n9 a
      · exact a
    have u12 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n9 a
      · exact a
    have u13 : ¬v26 := by
      rcases c1621 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n9 a
    have u14 : v10 := by
      rcases c1599 with a|a|a|a|a|a
      · exact absurd n9 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd n6 a
      · exact absurd a n7
    have u15 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : v33 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u17 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd n6 a
    have u18 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u16 a
    have u22 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u16 a
    have u23 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u24 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a u18
      · exact absurd a u21
    have u25 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u17
      · exact a
      · exact absurd a u12
      · exact absurd a n11
      · exact absurd a u19
    have u26 : ¬v36 := by
      rcases c3234 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n10
      · exact absurd a u20
      · exact absurd a u15
    have u27 : ¬v28 := by
      rcases c2925 with a|a|a
      · exact a
      · exact absurd n9 a
      · exact absurd a u20
    have u28 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u25 a
      · exact a
    rcases c284 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd n9 a
    · exact absurd a u15
    · exact absurd a u27
    · exact absurd a u28
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a u24
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a n10
    · exact absurd a n5
    · exact absurd a u23
  exact ⟨c3299, c3310, c3315, c3319, c3321, c3324, c3325, c3326, c3328, c3338, c3340, c3341, c3343, c3344⟩
