import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2450-2499 of the 2915-step refutation of ccase001: 133 core clauses and 82 earlier-derived ones give 5 more. -/
theorem CCase001_block049
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c12 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c13 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v7)
    (c15 : ¬v1 ∨ ¬v6 ∨ ¬v7)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c27 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c29 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c32 : ¬v6 ∨ ¬v5 ∨ ¬v4)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c34 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c35 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c39 : ¬v8 ∨ ¬v9 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v9 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v9 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v9 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14 ∨ ¬v9)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
    (c57 : ¬v9 ∨ ¬v14 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c60 : ¬v14 ∨ ¬v9 ∨ ¬v11)
    (c80 : ¬v15 ∨ ¬v16)
    (c81 : ¬v15 ∨ ¬v17)
    (c82 : ¬v15 ∨ ¬v18)
    (c83 : ¬v15 ∨ ¬v19)
    (c84 : ¬v15 ∨ ¬v20)
    (c85 : ¬v15 ∨ ¬v21)
    (c86 : ¬v16 ∨ ¬v17)
    (c87 : ¬v16 ∨ ¬v18)
    (c88 : ¬v16 ∨ ¬v19)
    (c89 : ¬v16 ∨ ¬v20)
    (c90 : ¬v16 ∨ ¬v21)
    (c91 : ¬v17 ∨ ¬v18)
    (c92 : ¬v17 ∨ ¬v19)
    (c93 : ¬v17 ∨ ¬v20)
    (c94 : ¬v17 ∨ ¬v21)
    (c95 : ¬v18 ∨ ¬v19)
    (c96 : ¬v18 ∨ ¬v20)
    (c97 : ¬v18 ∨ ¬v21)
    (c98 : ¬v19 ∨ ¬v20)
    (c99 : ¬v21 ∨ ¬v19)
    (c100 : ¬v20 ∨ ¬v21)
    (c102 : ¬v22 ∨ ¬v23)
    (c105 : ¬v22 ∨ ¬v26)
    (c106 : ¬v22 ∨ ¬v27)
    (c107 : ¬v22 ∨ ¬v28)
    (c109 : ¬v25 ∨ ¬v23)
    (c110 : ¬v26 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c114 : ¬v26 ∨ ¬v24)
    (c116 : ¬v28 ∨ ¬v24)
    (c117 : ¬v25 ∨ ¬v26)
    (c118 : ¬v27 ∨ ¬v25)
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
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c146 : ¬v36 ∨ ¬v37)
    (c149 : ¬v40 ∨ ¬v36)
    (c150 : ¬v36 ∨ ¬v41)
    (c151 : ¬v36 ∨ ¬v42)
    (c156 : ¬v42 ∨ ¬v37)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c164 : ¬v40 ∨ ¬v41)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c172 : ¬v48 ∨ ¬v43)
    (c177 : ¬v48 ∨ ¬v44)
    (c181 : ¬v48 ∨ ¬v45)
    (c184 : ¬v48 ∨ ¬v46)
    (c186 : ¬v48 ∨ ¬v47)
    (c190 : v43 ∨ v36 ∨ v1 ∨ v15 ∨ v29 ∨ v22 ∨ v8)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c199 : v43 ∨ ¬v36 ∨ v29 ∨ v16 ∨ v35 ∨ v44 ∨ v42 ∨ v37 ∨ v22 ∨ v31 ∨ v38 ∨ v15 ∨ v21 ∨ v45)
    (c213 : v12 ∨ v47 ∨ v3 ∨ v46 ∨ v5 ∨ v11 ∨ v45 ∨ ¬v4)
    (c223 : ¬v48 ∨ v41 ∨ v47 ∨ v49 ∨ v42 ∨ v7 ∨ v5 ∨ v6)
    (c224 : ¬v48 ∨ v26 ∨ v4 ∨ v39 ∨ v42 ∨ v6 ∨ v5 ∨ v28 ∨ v47 ∨ v27 ∨ v34 ∨ v46 ∨ v41 ∨ v49)
    (c229 : ¬v42 ∨ v36 ∨ v35 ∨ v34 ∨ v7 ∨ v43 ∨ v49 ∨ v8 ∨ v40 ∨ v33 ∨ v13 ∨ v14 ∨ v47 ∨ v41)
    (c270 : v36 ∨ v22 ∨ v23 ∨ v35 ∨ v28 ∨ ¬v29 ∨ v30 ∨ v37)
    (c274 : ¬v5 ∨ v6 ∨ v13 ∨ v11 ∨ v12 ∨ v4 ∨ v46 ∨ v47)
    (c304 : ¬v22 ∨ v29 ∨ v35 ∨ v28 ∨ v21 ∨ v23 ∨ v16 ∨ v15)
    (c311 : ¬v34 ∨ v41 ∨ v26 ∨ v27 ∨ v35 ∨ v28 ∨ v33 ∨ v40)
    (c316 : ¬v33 ∨ v40 ∨ v37 ∨ v20 ∨ v39 ∨ v26 ∨ v32 ∨ v31 ∨ v23 ∨ v34 ∨ v19 ∨ v27 ∨ v18 ∨ v30)
    (c351 : v29 ∨ v21 ∨ v16 ∨ v1 ∨ v30 ∨ v10 ∨ v8 ∨ v2 ∨ v7 ∨ v14 ∨ v23 ∨ ¬v9 ∨ v17 ∨ v31)
    (c356 : ¬v34 ∨ v41 ∨ v27 ∨ v33 ∨ v42 ∨ v28 ∨ v35 ∨ v26)
    (c369 : v22 ∨ ¬v21 ∨ v10 ∨ v16 ∨ v20 ∨ v14 ∨ v28 ∨ v13 ∨ v17 ∨ v6 ∨ v1 ∨ v15 ∨ v24 ∨ v7)
    (c371 : v12 ∨ v19 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v10 ∨ v4 ∨ v18)
    (c373 : v43 ∨ ¬v1 ∨ v2 ∨ v44 ∨ v49 ∨ v8 ∨ v7 ∨ v14)
    (c389 : v15 ∨ ¬v9 ∨ v16 ∨ v8 ∨ v17 ∨ v10 ∨ v2 ∨ v1)
    (c394 : v43 ∨ v49 ∨ v13 ∨ v6 ∨ v1 ∨ ¬v7 ∨ v14 ∨ v8)
    (c411 : v6 ∨ v4 ∨ v13 ∨ v46 ∨ v12 ∨ v34 ∨ v47 ∨ ¬v5 ∨ v32 ∨ v33 ∨ v14 ∨ v40 ∨ v7 ∨ v49)
    (c423 : v36 ∨ v22 ∨ v37 ∨ ¬v29 ∨ v23 ∨ v35 ∨ v42 ∨ v30)
    (c428 : v10 ∨ v3 ∨ v16 ∨ v17 ∨ v2 ∨ v8 ∨ ¬v9 ∨ v15)
    (c433 : ¬v3 ∨ v11 ∨ v44 ∨ v10 ∨ v4 ∨ v45 ∨ v46 ∨ v2)
    (c450 : v6 ∨ v20 ∨ v13 ∨ v19 ∨ v11 ∨ v18 ∨ ¬v12 ∨ v5)
    (c456 : v15 ∨ v19 ∨ v24 ∨ v25 ∨ v4 ∨ v5 ∨ v12 ∨ v16 ∨ v8 ∨ v17 ∨ v3 ∨ v22 ∨ ¬v18 ∨ v11)
    (c489 : ¬v40 ∨ v33 ∨ v46 ∨ v12 ∨ v47 ∨ v11 ∨ v13 ∨ v5 ∨ v35 ∨ v39 ∨ v42 ∨ v34 ∨ v41 ∨ v49)
    (c507 : ¬v33 ∨ v40 ∨ v35 ∨ v4 ∨ v39 ∨ v26 ∨ v5 ∨ v32 ∨ v34 ∨ v28 ∨ v42 ∨ v27 ∨ v6 ∨ v47)
    (c520 : ¬v20 ∨ v27 ∨ v19 ∨ v14 ∨ v26 ∨ v28 ∨ v13 ∨ v21)
    (c525 : v12 ∨ v19 ∨ v5 ∨ v18 ∨ v17 ∨ ¬v11 ∨ v10 ∨ v4)
    (c531 : v36 ∨ ¬v35 ∨ v42 ∨ v24 ∨ v21 ∨ v30 ∨ v38 ∨ v27 ∨ v20 ∨ v15 ∨ v34 ∨ v28 ∨ v29 ∨ v31)
    (c547 : ¬v48 ∨ v34 ∨ v33 ∨ v40 ∨ v2 ∨ v37 ∨ v7 ∨ v6 ∨ v41 ∨ v44 ∨ v43 ∨ v35 ∨ v47 ∨ v49)
    (c552 : ¬v48 ∨ v49 ∨ v5 ∨ v40 ∨ v42 ∨ v6 ∨ v47 ∨ v41)
    (c561 : ¬v48 ∨ v41 ∨ v7 ∨ v36 ∨ v28 ∨ v40 ∨ v47 ∨ v34 ∨ v1 ∨ v26 ∨ v27 ∨ v43 ∨ v6 ∨ v49)
    (c649 : ¬v4 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c687 : ¬v17 ∨ ¬v28 ∨ v34 ∨ v35)
    (c702 : ¬v26 ∨ v19 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c830 : v12 ∨ ¬v2 ∨ v11 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c856 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v23 ∨ v29 ∨ v30)
    (c863 : ¬v26 ∨ ¬v35 ∨ v41 ∨ v42)
    (c887 : ¬v20 ∨ ¬v22 ∨ v29 ∨ v30)
    (c1023 : ¬v26 ∨ v19 ∨ v32 ∨ v33 ∨ v34)
    (c1033 : ¬v30 ∨ v22 ∨ v23 ∨ v36 ∨ v37 ∨ v38)
    (c1070 : ¬v27 ∨ v4 ∨ v11 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v46)
    (c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1095 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c1140 : v19 ∨ v18 ∨ v20 ∨ ¬v25 ∨ v31 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1285 : v19 ∨ v5 ∨ v12 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v47)
    (c1332 : ¬v19 ∨ v22 ∨ ¬v28 ∨ v29 ∨ v35)
    (c1371 : v29 ∨ ¬v18 ∨ ¬v22)
    (c1375 : v29 ∨ ¬v19 ∨ ¬v22)
    (c1421 : v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c1433 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34 ∨ v35)
    (c1443 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v32 ∨ v33)
    (c1560 : ¬v15 ∨ v8 ∨ v14 ∨ v22 ∨ v23 ∨ v28)
    (c1579 : ¬v20 ∨ v12 ∨ v13 ∨ v19 ∨ v26 ∨ v27 ∨ v28)
    (c1599 : ¬v16 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12)
    (c1707 : ¬v36 ∨ v29 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1709 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v44 ∨ v49)
    (c1755 : v29 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c1811 : ¬v13 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v9 ∨ v20)
    (c1823 : ¬v30 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46)
    (c1911 : v10 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v16)
    (c2028 : ¬v23 ∨ v16 ∨ v29 ∨ v30 ∨ v31)
    (c2111 : ¬v34 ∨ v5 ∨ v12 ∨ v18 ∨ v19 ∨ v20 ∨ v40 ∨ v47)
    (c2223 : v26 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v19)
    (c2227 : ¬v19 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v10)
    (c2249 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2396 : ¬v35 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2412 : ¬v22 ∨ v8 ∨ v13 ∨ v14 ∨ v20 ∨ ¬v21)
    (c2437 : ¬v33 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2442 : ¬v3 ∨ ¬v1 ∨ v8 ∨ ¬v10 ∨ v43 ∨ v44 ∨ v49)
    (c2449 : ¬v1 ∨ ¬v4 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v49)
    (c2488 : ¬v27 ∨ v1 ∨ v6 ∨ v7 ∨ v10 ∨ v13 ∨ v14 ∨ v15 ∨ ¬v21)
    (c2515 : ¬v17 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v13)
    (c2530 : v8 ∨ v1 ∨ ¬v4 ∨ v7 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v21)
    (c2547 : v31 ∨ ¬v38 ∨ v44 ∨ v45 ∨ v46)
    (c2577 : ¬v1 ∨ ¬v4 ∨ v7 ∨ v8 ∨ v14 ∨ v43 ∨ v44 ∨ v49)
    (c2581 : v25 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v11 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v17 ∨ v21 ∨ v22 ∨ v23)
    (c2589 : ¬v18 ∨ v11 ∨ v12 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c2612 : ¬v35 ∨ v4 ∨ v11 ∨ v18 ∨ v44 ∨ v45 ∨ v46)
    (c2633 : v33 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ ¬v27 ∨ v34)
    (c2636 : ¬v34 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46)
    (c2691 : v31 ∨ v4 ∨ v11 ∨ v18 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2719 : ¬v22 ∨ v15 ∨ v21 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c2753 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v4 ∨ ¬v11)
    (c2786 : v48 ∨ v49)
    (c2790 : ¬v7 ∨ v1 ∨ ¬v3 ∨ v8 ∨ v13 ∨ v14 ∨ v49)
    (c2798 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46 ∨ v47)
    (c2804 : ¬v40 ∨ v1 ∨ v5 ∨ v6 ∨ v13 ∨ v19 ∨ v20 ∨ v21 ∨ v49)
    (c2805 : ¬v32 ∨ v25 ∨ v38 ∨ v39 ∨ v40)
    (c2842 : ¬v35 ∨ v1 ∨ v5 ∨ v8 ∨ v12 ∨ v22 ∨ v40 ∨ v49)
    (c2845 : v30 ∨ v8 ∨ v13 ∨ v14 ∨ v21 ∨ v23 ∨ v27 ∨ v28 ∨ v29 ∨ ¬v35 ∨ v36 ∨ v37 ∨ v42)
    (c2855 : ¬v5 ∨ ¬v1 ∨ v4 ∨ v11 ∨ v12 ∨ v13 ∨ v46 ∨ v47)
    (c2863 : ¬v31 ∨ v24 ∨ v32 ∨ v37 ∨ v38 ∨ v39)
    (c2879 : v16 ∨ v11 ∨ v12 ∨ v13 ∨ v19 ∨ v20 ∨ ¬v26 ∨ v30 ∨ v32 ∨ v33)
    (c2883 : ¬v33 ∨ ¬v42 ∨ v49)
    (c2884 : ¬v32 ∨ ¬v42 ∨ v49)
    (c2905 : v33 ∨ v5 ∨ v12 ∨ v18 ∨ v19 ∨ v20 ∨ v27 ∨ v40 ∨ v47)
    (c2925 : ¬v28 ∨ ¬v16 ∨ v35)
    (c2941 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c2979 : ¬v38 ∨ v5 ∨ v6 ∨ v49)
    (c2988 : ¬v37 ∨ v5 ∨ v6 ∨ v49)
    (c3006 : v9 ∨ v49)
    (c3020 : ¬v5 ∨ ¬v2 ∨ v4 ∨ v11 ∨ v12 ∨ v13 ∨ v46 ∨ v47)
    (c3021 : ¬v37 ∨ v4 ∨ v11 ∨ v18 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c3048 : ¬v2 ∨ v10 ∨ v49)
    (c3063 : v18 ∨ v4 ∨ v11 ∨ v25 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46)
    (c3071 : ¬v40 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v49)
    (c3077 : v35 ∨ v7 ∨ v14 ∨ v15 ∨ v20 ∨ v21 ∨ v42 ∨ v49)
    (c3079 : ¬v42 ∨ v1 ∨ v6 ∨ v7 ∨ v34 ∨ v35 ∨ v43 ∨ v46 ∨ v49)
    (c3080 : ¬v18 ∨ v10 ∨ v11 ∨ v49)
    (c3083 : ¬v42 ∨ v10 ∨ v11 ∨ v49)
    (c3085 : ¬v14 ∨ v1 ∨ ¬v4 ∨ v7 ∨ ¬v9 ∨ v10 ∨ v21)
    (c3088 : v3 ∨ v10 ∨ v11 ∨ v49)
    (c3089 : ¬v9 ∨ v1 ∨ v2 ∨ ¬v4 ∨ v5 ∨ v6 ∨ v7 ∨ v10 ∨ v16 ∨ v17 ∨ v21 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v31 ∨ v35)
    : (¬v19 ∨ v1 ∨ v2 ∨ v8 ∨ ¬v9 ∨ v10) ∧ (v39 ∨ v4 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ v37 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47) ∧ (v26 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v33 ∨ v40 ∨ v47) ∧ (¬v2 ∨ ¬v4 ∨ v11 ∨ v12 ∨ v45 ∨ v46 ∨ v47) ∧ (v49) := by
  have c3090 : ¬v28 ∨ v2 ∨ ¬v3 ∨ ¬v4 ∨ v6 ∨ ¬v9 ∨ v10 ∨ v16 ∨ v17 ∨ v18 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u8 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u9 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u10 : ¬v30 := by
      rcases c1033 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v32 := by
      rcases c2805 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u12 : ¬v29 := by
      rcases c423 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n12
      · exact a
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n16
      · exact absurd a u10
    have u13 : ¬v31 := by
      rcases c2863 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u14 : ¬v19 := by
      rcases c1332 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a u12
      · exact absurd a n10
    have u15 : v21 := by
      rcases c3089 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd n0 a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n10
    have u16 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : v8 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd n5 a
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a u8
    have u19 : ¬v12 := by
      rcases c41 with a|a|a
      · exact absurd u18 a
      · exact absurd n5 a
      · exact a
    have u20 : ¬v34 := by
      rcases c2111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a n9
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n15
      · exact absurd a n17
    have u21 : v33 := by
      rcases c2905 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a n9
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a n15
      · exact absurd a n17
    rcases c316 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a n15
    · exact absurd a n12
    · exact absurd a u17
    · exact absurd a n14
    · exact absurd a u2
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a u5
    · exact absurd a u20
    · exact absurd a u14
    · exact absurd a u6
    · exact absurd a n9
    · exact absurd a u10
  have c3091 : ¬v21 ∨ v1 ∨ v5 ∨ v6 ∨ v7 ∨ v10 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v37 := by
      rcases c2988 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
    have u8 : ¬v2 := by
      rcases c3048 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
    have u9 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n7
    have u10 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n7
    have u11 : v8 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u10 a
      · exact absurd a u2
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n1
    have u12 : ¬v13 := by
      rcases c1811 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u10 a
      · exact absurd a u4
    have u13 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v14 := by
      rcases c43 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v11 := by
      rcases c40 with a|a|a
      · exact absurd u11 a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v12 := by
      rcases c41 with a|a|a
      · exact absurd u11 a
      · exact absurd u10 a
      · exact a
    have u17 : ¬v27 := by
      rcases c2488 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd n0 a
    have u18 : ¬v42 := by
      rcases c3083 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a n7
    have u19 : v41 := by
      rcases c223 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n3
    have u20 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v34 := by
      rcases c2111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u21
      · exact absurd a u13
    have u23 : v33 := by
      rcases c2905 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u13
    have u24 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u23 a
    have u28 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u26
    have u29 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u27
      · exact absurd a u24
      · exact absurd a u25
    have u30 : v26 := by
      rcases c316 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a u21
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u20
      · exact a
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u29
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u24
    have u31 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u30 a
    rcases c369 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u31
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u14
    · exact absurd a n6
    · exact absurd a u12
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u28
    · exact absurd a n4
  have c3092 : v35 ∨ v10 ∨ v11 ∨ v16 ∨ v17 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v42 := by
      rcases c3083 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
    have u2 : ¬v2 := by
      rcases c3048 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
    have u4 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n5
    have u5 : ¬v18 := by
      rcases c3080 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
    have u6 : v3 := by
      rcases c3088 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
    have u7 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : v4 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n1
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u2
    have u12 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u6 a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u14 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u11 a
    have u15 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v37 := by
      rcases c2988 with a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n5
    have u17 : ¬v38 := by
      rcases c2979 with a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n5
    have u18 : v41 := by
      rcases c223 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u13
    have u19 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v28 := by
      rcases c3090 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u6 a
      · exact absurd u11 a
      · exact absurd a u13
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u1
      · exact absurd a u7
    have u23 : ¬v21 := by
      rcases c3091 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd a n5
    have u24 : ¬v14 := by
      rcases c3085 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u11 a
      · exact absurd a u12
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a u23
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u12
    · exact absurd a u24
    · exact absurd a u23
    · exact absurd a n0
    · exact absurd a u22
    · exact absurd a u1
  have c3093 : v21 ∨ v1 ∨ v2 ∨ ¬v4 ∨ v5 ∨ v7 ∨ ¬v9 ∨ v10 ∨ v11 ∨ v16 ∨ v17 ∨ v28 ∨ ¬v35 ∨ v36 ∨ v38 ∨ v40 ∨ v42 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v14 := by
      rcases c3085 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n0
    have u2 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n12 a
      · exact a
    have u3 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n12 a
    have u4 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n12 a
      · exact a
    have u5 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n12 a
      · exact a
    have u6 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n12 a
      · exact a
    have u7 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n12 a
      · exact a
    have u8 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u5
    have u9 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u7
    have u10 : v8 := by
      rcases c351 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd n6 a
      · exact absurd a n10
      · exact absurd a u7
    have u11 : ¬v13 := by
      rcases c42 with a|a|a
      · exact absurd u10 a
      · exact absurd n6 a
      · exact a
    have u12 : ¬v12 := by
      rcases c41 with a|a|a
      · exact absurd u10 a
      · exact absurd n6 a
      · exact a
    have u13 : v19 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n15
      · exact absurd a n17
    have u14 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : v26 := by
      rcases c2223 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd u13 a
    have u17 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u16 a
      · exact a
    rcases c531 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n13
    · exact absurd n12 a
    · exact absurd a n16
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n14
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u3
    · exact absurd a n11
    · exact absurd a u6
    · exact absurd a u7
  have c3094 : ¬v21 ∨ v1 ∨ v2 ∨ v5 ∨ ¬v9 ∨ v10 ∨ v32 ∨ v33 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : v8 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n4 a
      · exact absurd a u2
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n1
    have u8 : ¬v26 := by
      rcases c1443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v12 := by
      rcases c41 with a|a|a
      · exact absurd u7 a
      · exact absurd n4 a
      · exact a
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a n8
  have c3095 : v16 ∨ v10 ∨ v11 ∨ v17 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v2 := by
      rcases c3048 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
    have u2 : v3 := by
      rcases c3088 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
    have u3 : ¬v42 := by
      rcases c3083 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
    have u4 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n4
    have u5 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n4
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : v4 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n1
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u1
    have u12 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u2 a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u11 a
    have u15 : v35 := by
      rcases c3092 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u16 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u15 a
      · exact a
    have u21 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u15 a
      · exact a
    have u22 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u23 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u24 : ¬v36 := by
      rcases c1707 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
    have u25 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u21
    have u26 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u27 : ¬v40 := by
      rcases c2798 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u23
      · exact absurd a u7
      · exact absurd a u6
    have u28 : ¬v21 := by
      rcases c3094 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd u5 a
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u27
      · exact absurd a u6
    have u29 : ¬v14 := by
      rcases c3085 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u11 a
      · exact absurd a u12
      · exact absurd u5 a
      · exact absurd a n1
      · exact absurd a u28
    have u30 : v8 := by
      rcases c351 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u28
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u29
      · exact absurd a u25
      · exact absurd u5 a
      · exact absurd a n3
      · exact absurd a u21
    have u31 : ¬v13 := by
      rcases c42 with a|a|a
      · exact absurd u30 a
      · exact absurd u5 a
      · exact a
    have u32 : ¬v12 := by
      rcases c41 with a|a|a
      · exact absurd u30 a
      · exact absurd u5 a
      · exact a
    have u33 : v28 := by
      rcases c3093 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd u11 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd u5 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd u15 a
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a u3
      · exact absurd a u6
    have u34 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u33 a
      · exact a
    have u35 : ¬v19 := by
      rcases c2223 with a|a|a|a|a
      · exact absurd a u34
      · exact absurd a n2
      · exact absurd a u32
      · exact absurd a u31
      · exact a
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u32
    · exact absurd a u34
    · exact absurd a u13
    · exact absurd a u6
    · exact absurd a u18
    · exact absurd a u35
    · exact absurd a u27
  have c3096 : ¬v16 ∨ v10 ∨ v11 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v2 := by
      rcases c3048 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u7 : v3 := by
      rcases c3088 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v42 := by
      rcases c3083 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u9 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n3
    have u10 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n3
    have u11 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : v4 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n1
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u6
    have u16 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u7 a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u18 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u15 a
    have u20 : ¬v13 := by
      rcases c1811 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd u10 a
      · exact absurd a u5
    have u21 : ¬v40 := by
      rcases c2804 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n3
    have u22 : ¬v12 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u2
      · exact a
      · exact absurd a u18
    have u23 : ¬v34 := by
      rcases c2111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u11
    have u24 : v8 := by
      rcases c2530 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd u15 a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u4
    have u25 : ¬v14 := by
      rcases c43 with a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u10 a
    have u26 : v35 := by
      rcases c3077 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u25
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n3
    have u27 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u28
      · exact absurd a u27
      · exact absurd a u23
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u29
    · exact absurd a u18
    · exact absurd a u11
    · exact absurd a u27
    · exact absurd a u3
    · exact absurd a u21
  have c3097 : v11 ∨ v10 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v2 := by
      rcases c3048 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n2
    have u3 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n2
    have u4 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v3 := by
      rcases c3088 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    have u9 : v4 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n1
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u1
    have u10 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u12 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u9 a
    have u13 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v42 := by
      rcases c3083 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    have u15 : ¬v18 := by
      rcases c3080 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    have u16 : ¬v16 := by
      rcases c3096 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    have u17 : v17 := by
      rcases c3095 with a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
    have u18 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v13 := by
      rcases c1811 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd u3 a
      · exact absurd a u19
    have u23 : ¬v12 := by
      rcases c2515 with a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n0
      · exact a
      · exact absurd a u22
    have u24 : ¬v40 := by
      rcases c2804 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a n2
    have u25 : ¬v34 := by
      rcases c2111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u24
      · exact absurd a u4
    have u26 : v8 := by
      rcases c2530 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u9 a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u21
    have u27 : ¬v14 := by
      rcases c43 with a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd u3 a
    have u28 : v35 := by
      rcases c3077 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u27
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a n2
    have u29 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u28 a
      · exact a
    have u31 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u30
      · exact absurd a u29
      · exact absurd a u25
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u31
    · exact absurd a u13
    · exact absurd a u4
    · exact absurd a u29
    · exact absurd a u18
    · exact absurd a u24
  have c3098 : ¬v35 ∨ v1 ∨ v5 ∨ v8 ∨ v12 ∨ v40 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n6
    have u4 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v22 := by
      rcases c2842 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v19 := by
      rcases c1375 with a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd u5 a
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u7
    · exact absurd a n5
  have c3099 : ¬v19 ∨ v1 ∨ v2 ∨ v8 ∨ ¬v9 ∨ v10 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n0 a
    rcases c389 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n4 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n1
  have c3100 : v17 ∨ v1 ∨ v5 ∨ v10 ∨ v16 ∨ v21 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v2 := by
      rcases c3048 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
    have u2 : v11 := by
      rcases c3097 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n6
    have u4 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n6
    have u5 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u4 a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u2 a
    have u7 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u4 a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u2 a
    have u9 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v19 := by
      rcases c3099 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd u4 a
      · exact absurd a n3
    have u13 : v3 := by
      rcases c1911 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u1
      · exact a
      · exact absurd a u6
      · exact absurd u4 a
      · exact absurd a n4
    have u14 : v15 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n1
    have u15 : ¬v7 := by
      rcases c2790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u13 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n6
    have u16 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : v4 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a n3
      · exact a
    have u19 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u18 a
      · exact absurd u13 a
      · exact a
    have u20 : ¬v40 := by
      rcases c2804 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v34 := by
      rcases c2111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u9
    have u22 : ¬v35 := by
      rcases c3098 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a n6
    have u23 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u21
      · exact absurd a u22
    have u24 : ¬v42 := by
      rcases c3079 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
    have u25 : v33 := by
      rcases c2905 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u9
    have u26 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u22
      · exact a
      · exact absurd a u24
    have u27 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u26 a
    rcases c1755 with a|a|a|a|a|a|a
    · exact absurd a u27
    · exact absurd a u17
    · exact absurd a n5
    · exact absurd a u28
    · exact absurd u26 a
    · exact absurd a u21
    · exact absurd a u22
  have c3101 : v35 ∨ v5 ∨ v7 ∨ v8 ∨ v12 ∨ v13 ∨ v14 ∨ v15 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact a
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n12
    have u3 : v42 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a u1
      · exact a
    have u4 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v33 := by
      rcases c2883 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n12
    have u10 : v34 := by
      rcases c229 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u8
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u6
    rcases c2111 with a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a u7
    · exact absurd a u4
  have c3102 : v5 ∨ v1 ∨ v10 ∨ v16 ∨ v21 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v2 := by
      rcases c3048 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
    have u2 : v11 := by
      rcases c3097 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
    have u4 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n5
    have u5 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u4 a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u2 a
    have u7 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u4 a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u2 a
    have u9 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v19 := by
      rcases c3099 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd u4 a
      · exact absurd a n2
    have u12 : v3 := by
      rcases c1911 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u1
      · exact a
      · exact absurd a u6
      · exact absurd u4 a
      · exact absurd a n3
    have u13 : ¬v7 := by
      rcases c2790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u12 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n5
    have u14 : v17 := by
      rcases c3100 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : v35 := by
      rcases c3101 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
    have u19 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u21
    have u23 : ¬v22 := by
      rcases c856 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u19
    rcases c1709 with a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a n1
    · exact absurd a u6
    · exact absurd a u17
    · exact absurd a u23
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n5
  have c3103 : ¬v35 ∨ v4 ∨ ¬v5 ∨ v6 ∨ v7 ∨ v12 ∨ v13 ∨ v14 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n8
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u9 : ¬v40 := by
      rcases c2798 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
    rcases c411 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd n2 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a n8
  have c3104 : v34 ∨ v1 ∨ v10 ∨ v16 ∨ v21 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v2 := by
      rcases c3048 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
    have u2 : v11 := by
      rcases c3097 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
    have u4 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n5
    have u5 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u4 a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u2 a
    have u7 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u4 a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u2 a
    have u9 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : v3 := by
      rcases c1911 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u1
      · exact a
      · exact absurd a u6
      · exact absurd u4 a
      · exact absurd a n3
    have u15 : ¬v7 := by
      rcases c2790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u14 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n5
    have u16 : v5 := by
      rcases c3102 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v4 := by
      rcases c26 with a|a|a
      · exact absurd u14 a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v6 := by
      rcases c29 with a|a|a
      · exact absurd u16 a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v35 := by
      rcases c3103 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u16 a
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n5
    have u20 : ¬v42 := by
      rcases c3079 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n5
    have u21 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u19
      · exact a
      · exact absurd a u20
    have u22 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v17 := by
      rcases c687 with a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a n0
      · exact absurd a u19
    have u25 : v15 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u24
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n1
    have u26 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : v29 := by
      rcases c1755 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a n4
      · exact absurd a u22
      · exact absurd u21 a
      · exact absurd a n0
      · exact absurd a u19
    have u28 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u27 a
      · exact a
    have u30 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u31 : v36 := by
      rcases c423 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u30
      · exact absurd u27 a
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u28
    have u32 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd u31 a
      · exact a
    have u33 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u31 a
    rcases c547 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n0
    · exact absurd a u29
    · exact absurd a u33
    · exact absurd a u1
    · exact absurd a u30
    · exact absurd a u15
    · exact absurd a u18
    · exact absurd a u32
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u19
    · exact absurd a u9
    · exact absurd a n5
  have c3105 : v1 ∨ v10 ∨ v16 ∨ v21 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v2 := by
      rcases c3048 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
    have u2 : v11 := by
      rcases c3097 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n4
    have u4 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n4
    have u5 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u4 a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u2 a
    have u7 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u2 a
    have u8 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : v3 := by
      rcases c1911 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u1
      · exact a
      · exact absurd a u6
      · exact absurd u4 a
      · exact absurd a n2
    have u11 : ¬v7 := by
      rcases c2790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u10 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n4
    have u12 : v34 := by
      rcases c3104 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u13 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
    have u18 : v17 := by
      rcases c351 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd u4 a
      · exact a
      · exact absurd a u15
    have u19 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a n3
      · exact a
    have u22 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u20
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
    rcases c304 with a|a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a u21
    · exact absurd a n3
    · exact absurd a u17
    · exact absurd a n2
    · exact absurd a u20
  have c3106 : ¬v1 ∨ v10 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v2 := by
      rcases c3048 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u2 : v11 := by
      rcases c3097 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n2
    have u4 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n2
    have u5 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u2 a
    have u6 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u4 a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u2 a
    have u8 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : v7 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u5
      · exact a
      · exact absurd a u7
    have u11 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v19 := by
      rcases c2227 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd u4 a
      · exact absurd a n1
    have u15 : ¬v16 := by
      rcases c1599 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a u6
    have u16 : v18 := by
      rcases c371 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a u13
      · exact a
    have u17 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u16 a
    rcases c428 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u11
    · exact absurd a u15
    · exact absurd a u17
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd u4 a
    · exact absurd a u18
  have c3107 : ¬v7 ∨ v10 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v1 := by
      rcases c3106 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u2 : v11 := by
      rcases c3097 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u3 : ¬v2 := by
      rcases c3048 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u4 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n2
    have u5 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n2
    have u6 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u5 a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u2 a
    have u8 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u2 a
    have u9 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v3 := by
      rcases c2790 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u1
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n2
    have u11 : v4 := by
      rcases c2753 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u10
      · exact a
      · exact absurd u2 a
    have u12 : ¬v6 := by
      rcases c34 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd n0 a
    rcases c394 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd a u12
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a u8
    · exact absurd a u7
  have c3108 : v3 ∨ ¬v6 ∨ v10 ∨ ¬v16 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n3 a
      · exact a
    have u7 : ¬v1 := by
      rcases c3106 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u8 : v11 := by
      rcases c3097 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u9 : ¬v2 := by
      rcases c3048 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u10 : ¬v7 := by
      rcases c3107 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u11 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n4
    have u12 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n4
    have u13 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u12 a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u8 a
    have u15 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u12 a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u8 a
    have u17 : v4 := by
      rcases c2753 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n0
      · exact a
      · exact absurd u8 a
    have u18 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u11 a
      · exact a
    have u19 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u11 a
      · exact a
    have u20 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u11 a
      · exact a
    have u21 : ¬v5 := by
      rcases c32 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u18
    rcases c3101 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u10
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n4
  have c3109 : ¬v6 ∨ v10 ∨ ¬v16 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : v11 := by
      rcases c3097 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u5 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n3
    have u6 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u5 a
      · exact absurd u4 a
      · exact a
    have u7 : v3 := by
      rcases c3108 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
    have u8 : ¬v4 := by
      rcases c27 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n0 a
    have u9 : ¬v5 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n0 a
    rcases c525 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd u4 a
    · exact absurd a n1
    · exact absurd a u8
  have c3110 : v4 ∨ v6 ∨ v10 ∨ v15 ∨ v17 ∨ v18 ∨ v21 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v1 := by
      rcases c3106 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
    have u2 : v11 := by
      rcases c3097 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
    have u3 : ¬v2 := by
      rcases c3048 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
    have u4 : ¬v7 := by
      rcases c3107 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
    have u5 : v16 := by
      rcases c3105 with a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n7
    have u7 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n7
    have u8 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u7 a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u2 a
    have u10 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u7 a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u2 a
    have u12 : ¬v19 := by
      rcases c3099 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd u7 a
      · exact absurd a n2
    have u13 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u6 a
      · exact a
    have u15 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u6 a
      · exact a
    have u16 : v5 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u12
      · exact a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n0
    have u17 : ¬v35 := by
      rcases c3103 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u16 a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n7
    have u18 : ¬v28 := by
      rcases c2925 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u17
    have u19 : v42 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u17
      · exact absurd a u18
      · exact a
    have u20 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v33 := by
      rcases c2883 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a n7
    have u24 : v34 := by
      rcases c547 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a n7
    have u25 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n3
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n7
    rcases c2719 with a|a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a u18
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u17
  have c3111 : v3 ∨ v6 ∨ v10 ∨ v17 ∨ v21 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v1 := by
      rcases c3106 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
    have u2 : v11 := by
      rcases c3097 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
    have u3 : ¬v2 := by
      rcases c3048 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
    have u4 : ¬v7 := by
      rcases c3107 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
    have u5 : v16 := by
      rcases c3105 with a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u6 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
    have u7 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n5
    have u8 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u2 a
    have u9 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u2 a
    have u10 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u6 a
      · exact a
    have u15 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u16 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u17 : ¬v28 := by
      rcases c2925 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u16
    have u18 : v42 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u17
      · exact a
    have u19 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : v34 := by
      rcases c547 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a u21
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a n5
    have u23 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u10
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n5
    rcases c2719 with a|a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a u10
    · exact absurd a n4
    · exact absurd a u17
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u16
  have c3112 : ¬v16 ∨ v8 ∨ v10 ∨ v12 ∨ v13 ∨ v14 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n6
    have u8 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v6 := by
      rcases c3109 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n6
    have u12 : ¬v7 := by
      rcases c3107 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
    have u13 : v4 := by
      rcases c3110 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n6
    have u14 : v3 := by
      rcases c3111 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n6
    have u15 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u13 a
    have u16 : v35 := by
      rcases c3101 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
    have u17 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
    have u21 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u22 : ¬v40 := by
      rcases c2798 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u8
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u20
    · exact absurd a u15
    · exact absurd a u8
    · exact absurd a u18
    · exact absurd a u3
    · exact absurd a u22
  have c3113 : v10 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n1
    have u2 : ¬v1 := by
      rcases c3106 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u3 : v11 := by
      rcases c3097 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u4 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
    have u6 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
    have u8 : ¬v2 := by
      rcases c3048 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u9 : ¬v16 := by
      rcases c3112 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n1
    have u10 : v21 := by
      rcases c3105 with a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u9
      · exact a
      · exact absurd a n1
    have u11 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u10 a
    rcases c389 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd u1 a
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a u2
  have c3114 : v1 ∨ v15 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v25 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n7
    have u2 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n7
    have u3 : v10 := by
      rcases c3113 with a|a
      · exact a
      · exact absurd a n7
    have u4 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd u2 a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u3 a
    have u12 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n7
    have u13 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u12 a
    have u19 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u20 : v4 := by
      rcases c2691 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u21 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u22 : ¬v40 := by
      rcases c2798 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a u4
    have u23 : ¬v2 := by
      rcases c830 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u24 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u14
    have u25 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u24
      · exact a
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u22
    have u26 : ¬v6 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u20 a
    have u27 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u25 a
      · exact absurd u20 a
      · exact a
    have u28 : v41 := by
      rcases c547 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u27
      · exact absurd a u26
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a n7
    have u29 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u28 a
      · exact a
    rcases c423 with a|a|a|a|a|a|a|a
    · exact absurd a u29
    · exact absurd a n4
    · exact absurd a u19
    · exact absurd u12 a
    · exact absurd a n5
    · exact absurd a u15
    · exact absurd a u30
    · exact absurd a u13
  have c3115 : v40 ∨ v4 ∨ v5 ∨ v11 ∨ v12 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v39 := by
      rcases c3063 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v33 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n12
      · exact a
      · exact absurd a n6
      · exact absurd a n0
    have u3 : v32 := by
      rcases c2941 with a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c139 with a|a
    · exact absurd u3 a
    · exact absurd u2 a
  have c3116 : ¬v21 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n1
    have u8 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n1
    have u9 : v10 := by
      rcases c3113 with a|a
      · exact a
      · exact absurd a n1
    have u10 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u17 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u9 a
    have u18 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u9 a
    have u19 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u9 a
    have u20 : ¬v22 := by
      rcases c2412 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd n0 a
    have u21 : v28 := by
      rcases c1095 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u20
      · exact a
    have u22 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : v1 := by
      rcases c3114 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u20
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a n1
    have u26 : ¬v4 := by
      rcases c2449 with a|a|a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n1
    have u27 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u28 : ¬v5 := by
      rcases c2855 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u26
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u10
    have u29 : v40 := by
      rcases c3115 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u28
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u30 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u29 a
    have u31 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u29 a
    have u32 : ¬v34 := by
      rcases c2636 with a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u30
      · exact absurd a u11
    have u33 : v32 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u26
      · exact a
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u23
      · exact absurd a u30
    have u34 : v33 := by
      rcases c3071 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u29 a
      · exact absurd a u28
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u18
      · exact a
      · exact absurd a u32
      · exact absurd a u27
      · exact absurd a u31
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n1
    rcases c139 with a|a
    · exact absurd u33 a
    · exact absurd u34 a
  have c3117 : ¬v40 ∨ v4 ∨ v5 ∨ v18 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n4
    have u4 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n4
    have u5 : v10 := by
      rcases c3113 with a|a
      · exact a
      · exact absurd a n4
    have u6 : ¬v21 := by
      rcases c3116 with a|a
      · exact a
      · exact absurd a n4
    have u7 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd u4 a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u5 a
    have u15 : ¬v34 := by
      rcases c2636 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u8
    have u16 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u17 : v33 := by
      rcases c3071 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n4
    have u18 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v27 := by
      rcases c1070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a u8
    have u21 : v25 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a n3
      · exact a
      · exact absurd a u1
    have u22 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v19 := by
      rcases c2223 with a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact a
    have u25 : ¬v20 := by
      rcases c520 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u24
      · exact absurd a u14
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a u6
    rcases c1140 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a n3
    · exact absurd a u25
    · exact absurd u21 a
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u1
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u7
  have c3118 : v20 ∨ v18 ∨ v19 ∨ v23 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ ¬v33 ∨ v34 ∨ v37 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n8 a
    rcases c316 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n8 a
    · exact absurd a n12
    · exact absurd a n10
    · exact absurd a n0
    · exact absurd a n11
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n6
  have c3119 : v39 ∨ v4 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ v37 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v34 := by
      rcases c2636 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n11
    have u2 : v25 := by
      rcases c3063 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v30 := by
      rcases c1823 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n11
    have u4 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v19 := by
      rcases c2223 with a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    have u9 : ¬v20 := by
      rcases c1579 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
    have u10 : v33 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n12
      · exact a
      · exact absurd a u8
      · exact absurd a n8
    have u11 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u10 a
      · exact a
    rcases c3118 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a u11
    · exact absurd u10 a
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n8
  have c3120 : v26 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v33 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v19 := by
      rcases c2223 with a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n6
  have c3121 : v18 ∨ v4 ∨ v5 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n3
    have u2 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n3
    have u3 : v10 := by
      rcases c3113 with a|a
      · exact a
      · exact absurd a n3
    have u4 : ¬v21 := by
      rcases c3116 with a|a
      · exact a
      · exact absurd a n3
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd u2 a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u3 a
    have u13 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u3 a
    have u14 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u3 a
    have u15 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u16 : ¬v40 := by
      rcases c3117 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
    have u17 : ¬v37 := by
      rcases c3021 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u18 : v39 := by
      rcases c3119 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u19 : v32 := by
      rcases c2941 with a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u20 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : v26 := by
      rcases c3120 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a u5
    have u25 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u24 a
    have u28 : ¬v15 := by
      rcases c1560 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u27
    have u29 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u27
      · exact absurd a u20
    have u30 : v1 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u12
      · exact absurd a u28
      · exact absurd a u25
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n3
    have u31 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd u30 a
      · exact a
      · exact absurd u29 a
    rcases c552 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u16
    · exact absurd a u20
    · exact absurd a u31
    · exact absurd a u5
    · exact absurd a u21
  have c3122 : ¬v26 ∨ v4 ∨ v5 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v18 := by
      rcases c3121 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u6 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n3
    have u7 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n3
    have u8 : v10 := by
      rcases c3113 with a|a
      · exact a
      · exact absurd a n3
    have u9 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u5 a
    have u13 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u6 a
      · exact a
    have u15 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u8 a
    have u16 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd u7 a
      · exact absurd u8 a
      · exact a
    have u17 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u8 a
    have u18 : v3 := by
      rcases c456 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u9
      · exact a
      · exact absurd a u1
      · exact absurd u5 a
      · exact absurd a u16
    have u19 : ¬v1 := by
      rcases c2442 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u17
      · exact absurd u8 a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n3
    have u20 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n3
    have u21 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u20 a
    rcases c702 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u21
  have c3123 : v40 ∨ v4 ∨ v5 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v18 := by
      rcases c3121 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n3
    have u3 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n3
    have u4 : v10 := by
      rcases c3113 with a|a
      · exact a
      · exact absurd a n3
    have u5 : ¬v21 := by
      rcases c3116 with a|a
      · exact a
      · exact absurd a n3
    have u6 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u2 a
      · exact a
    have u15 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u4 a
    have u16 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd u3 a
      · exact absurd u4 a
      · exact a
    have u17 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u4 a
    have u18 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u4 a
    have u19 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u4 a
    have u20 : ¬v26 := by
      rcases c3122 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u21 : v33 := by
      rcases c3120 with a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u18
      · exact a
      · exact absurd a n0
      · exact absurd a u10
    have u22 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u21 a
    have u26 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u21 a
    have u27 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u21 a
    have u28 : ¬v42 := by
      rcases c2883 with a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a n3
    have u29 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u30 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u31 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u5
      · exact a
    have u32 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u24
      · exact absurd a u25
    have u33 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u34 : ¬v22 := by
      rcases c1371 with a|a|a
      · exact absurd a u27
      · exact absurd u1 a
      · exact a
    have u35 : ¬v36 := by
      rcases c199 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u27
      · exact absurd a u9
      · exact absurd a u25
      · exact absurd a u13
      · exact absurd a u28
      · exact absurd a u29
      · exact absurd a u34
      · exact absurd a u23
      · exact absurd a u30
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u12
    have u36 : v1 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u35
      · exact a
      · exact absurd a u7
      · exact absurd a u27
      · exact absurd a u34
      · exact absurd a u17
    have u37 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u25
      · exact absurd a u31
      · exact absurd a u28
    have u38 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd u36 a
      · exact a
      · exact absurd u37 a
    rcases c507 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a n0
    · exact absurd a u25
    · exact absurd a n1
    · exact absurd a u33
    · exact absurd a u20
    · exact absurd a n2
    · exact absurd a u26
    · exact absurd a u24
    · exact absurd a u31
    · exact absurd a u28
    · exact absurd a u32
    · exact absurd a u38
    · exact absurd a u10
  have c3124 : ¬v33 ∨ v4 ∨ v5 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
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
    have u4 : ¬v42 := by
      rcases c2883 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
    have u5 : v18 := by
      rcases c3121 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
    have u6 : v40 := by
      rcases c3123 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
    have u7 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n4
    have u8 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n4
    have u9 : v10 := by
      rcases c3113 with a|a
      · exact a
      · exact absurd a n4
    have u10 : ¬v21 := by
      rcases c3116 with a|a
      · exact a
      · exact absurd a n4
    have u11 : ¬v22 := by
      rcases c1371 with a|a|a
      · exact absurd a u3
      · exact absurd u5 a
      · exact a
    have u12 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u5 a
      · exact a
    have u15 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u6 a
    have u16 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u6 a
      · exact a
    have u17 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u6 a
      · exact a
    have u18 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u7 a
      · exact a
    have u19 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u7 a
      · exact a
    have u20 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u7 a
      · exact a
    have u21 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u9 a
    have u22 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u9 a
    have u23 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u2
    have u24 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u10
      · exact a
    have u25 : v1 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u17
      · exact a
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u21
    have u26 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u22
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u24
      · exact absurd a u4
    have u27 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd u26 a
    rcases c224 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u15
    · exact absurd a u4
    · exact absurd a u27
    · exact absurd a n2
    · exact absurd a u24
    · exact absurd a u18
    · exact absurd a u23
    · exact absurd a u1
    · exact absurd a u19
    · exact absurd a u16
    · exact absurd a n4
  have c3125 : v35 ∨ v5 ∨ ¬v18 ∨ v26 ∨ v33 ∨ ¬v40 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd n2 a
      · exact a
    have u8 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n6
    have u9 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n6
    have u10 : v10 := by
      rcases c3113 with a|a
      · exact a
      · exact absurd a n6
    have u11 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact a
    have u12 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd u9 a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u10 a
    have u17 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd n5 a
    have u18 : v34 := by
      rcases c489 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u1
      · exact a
      · exact absurd a u2
      · exact absurd a n6
    have u19 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u21
    have u23 : v25 := by
      rcases c2589 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u22
      · exact a
      · exact absurd a n3
    have u24 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u23 a
    rcases c356 with a|a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u2
    · exact absurd a u24
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a n3
  have c3126 : v26 ∨ v4 ∨ v5 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v18 := by
      rcases c3121 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v40 := by
      rcases c3123 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n3
    have u4 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v33 := by
      rcases c3124 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
    have u8 : v35 := by
      rcases c3125 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd u2 a
      · exact absurd a n3
    have u9 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    rcases c2798 with a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a u5
    · exact absurd a u4
  have c3127 : v5 ∨ v4 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n2
    have u2 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n2
    have u3 : v10 := by
      rcases c3113 with a|a
      · exact a
      · exact absurd a n2
    have u4 : ¬v21 := by
      rcases c3116 with a|a
      · exact a
      · exact absurd a n2
    have u5 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd u2 a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u3 a
    have u11 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u3 a
    have u12 : v26 := by
      rcases c3126 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    have u13 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v15 := by
      rcases c1560 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u17
    have u19 : v18 := by
      rcases c3121 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    have u20 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : v40 := by
      rcases c3123 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    have u24 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v35 := by
      rcases c863 with a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u25
      · exact absurd a u24
    have u28 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u27
      · exact absurd a u17
      · exact absurd a u24
    have u29 : v3 := by
      rcases c456 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u22
      · exact absurd a u10
      · exact absurd a u20
      · exact a
      · exact absurd a u13
      · exact absurd u19 a
      · exact absurd a u9
    have u30 : ¬v1 := by
      rcases c9 with a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd u28 a
    have u31 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u26
      · exact absurd a u30
      · exact absurd a u18
      · exact a
      · exact absurd a u13
      · exact absurd a u10
    have u32 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u31 a
      · exact a
    have u33 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u32
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    rcases c270 with a|a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u27
    · exact absurd a u17
    · exact absurd u31 a
    · exact absurd a u32
    · exact absurd a u33
  have c3129 : v18 ∨ v4 ∨ v28 ∨ v33 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v5 := by
      rcases c3127 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n4
    have u3 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n4
    have u4 : v10 := by
      rcases c3113 with a|a
      · exact a
      · exact absurd a n4
    have u5 : ¬v21 := by
      rcases c3116 with a|a
      · exact a
      · exact absurd a n4
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd u3 a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u4 a
    have u14 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u4 a
    have u15 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u4 a
    have u16 : v6 := by
      rcases c274 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u6
    have u17 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u18 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd u1 a
      · exact absurd u16 a
      · exact a
    have u19 : v42 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a n2
      · exact a
    have u20 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : v34 := by
      rcases c229 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u22
      · exact absurd a u17
      · exact a
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u20
    rcases c2636 with a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a n1
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a u23
    · exact absurd a u7
  have c3130 : v29 ∨ v1 ∨ ¬v18 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v22 := by
      rcases c1371 with a|a|a
      · exact absurd a n0
      · exact absurd n2 a
      · exact a
    have u2 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n3
    have u4 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n3
    have u5 : v10 := by
      rcases c3113 with a|a
      · exact a
      · exact absurd a n3
    have u6 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u5 a
    have u9 : v36 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u8
    have u10 : ¬v37 := by
      rcases c146 with a|a
      · exact absurd u9 a
      · exact a
    rcases c1707 with a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n3
  have c3131 : v28 ∨ v4 ∨ v33 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v5 := by
      rcases c3127 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n3
    have u3 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n3
    have u4 : v10 := by
      rcases c3113 with a|a
      · exact a
      · exact absurd a n3
    have u5 : ¬v21 := by
      rcases c3116 with a|a
      · exact a
      · exact absurd a n3
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd u3 a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u4 a
    have u13 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u4 a
    have u14 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u4 a
    have u15 : v6 := by
      rcases c274 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u6
    have u16 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd u1 a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u15 a
    have u18 : v18 := by
      rcases c3129 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u19 : v29 := by
      rcases c3130 with a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u18 a
      · exact absurd a n3
    have u20 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : v42 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a n0
      · exact a
    have u24 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u25 : ¬v40 := by
      rcases c2798 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u24
      · exact absurd a u7
      · exact absurd a u6
    have u26 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u23 a
    rcases c229 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u27
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u16
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd a u12
    · exact absurd a u25
    · exact absurd a n2
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u6
    · exact absurd a u26
  have c3132 : ¬v28 ∨ v4 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : v5 := by
      rcases c3127 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u7 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n2
    have u8 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n2
    have u9 : v10 := by
      rcases c3113 with a|a
      · exact a
      · exact absurd a n2
    have u10 : ¬v21 := by
      rcases c3116 with a|a
      · exact a
      · exact absurd a n2
    have u11 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u17 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u9 a
    have u18 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u9 a
    have u19 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u9 a
    have u20 : ¬v19 := by
      rcases c2223 with a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u18
      · exact a
    have u21 : v6 := by
      rcases c274 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u11
    have u22 : ¬v18 := by
      rcases c2589 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
    have u23 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd u6 a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u21 a
    have u25 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u26 : v15 := by
      rcases c3114 with a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n2
    have u27 : ¬v16 := by
      rcases c2925 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u25
    have u28 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : v2 := by
      rcases c2581 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u24
      · exact a
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd u26 a
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u5
    rcases c3020 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd u29 a
    · exact absurd a n1
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u18
    · exact absurd a u12
    · exact absurd a u11
  have c3133 : v4 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n1
    have u2 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n1
    have u3 : v10 := by
      rcases c3113 with a|a
      · exact a
      · exact absurd a n1
    have u4 : ¬v21 := by
      rcases c3116 with a|a
      · exact a
      · exact absurd a n1
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd u2 a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v28 := by
      rcases c3132 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u12 : v5 := by
      rcases c3127 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u13 : v33 := by
      rcases c3131 with a|a|a|a
      · exact absurd a u11
      · exact absurd a n0
      · exact a
      · exact absurd a n1
    have u14 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v42 := by
      rcases c2883 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n1
    have u16 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u15
    have u17 : ¬v6 := by
      rcases c35 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u16 a
    rcases c274 with a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u17
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u5
  have c3134 : ¬v15 ∨ v8 ∨ v14 ∨ v28 ∨ v32 ∨ v33 ∨ ¬v34 ∨ v35 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd n6 a
      · exact a
    have u6 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n6 a
      · exact a
    have u7 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n6 a
      · exact a
    have u8 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u9 : ¬v26 := by
      rcases c1443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : v22 := by
      rcases c1560 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u8
      · exact absurd a n3
    have u11 : v27 := by
      rcases c311 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n9
      · exact absurd a u9
      · exact a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
    rcases c106 with a|a
    · exact absurd u10 a
    · exact absurd u11 a
  have c3135 : v7 ∨ v28 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n3
    have u2 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n3
    have u3 : v4 := by
      rcases c3133 with a|a
      · exact a
      · exact absurd a n3
    have u4 : ¬v21 := by
      rcases c3116 with a|a
      · exact a
      · exact absurd a n3
    have u5 : v10 := by
      rcases c3113 with a|a
      · exact a
      · exact absurd a n3
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u5 a
    have u10 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v1 := by
      rcases c2577 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n3
    have u13 : v42 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u14 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v32 := by
      rcases c2884 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a n3
    have u18 : ¬v33 := by
      rcases c2883 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a n3
    have u19 : v34 := by
      rcases c229 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u16
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u14
    have u20 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v15 := by
      rcases c3134 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd u19 a
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u14
    have u23 : v22 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u22
      · exact absurd a u20
      · exact a
      · exact absurd a u9
    rcases c2719 with a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u22
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a n2
  have c3136 : ¬v7 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n1
    have u2 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n1
    have u3 : v4 := by
      rcases c3133 with a|a
      · exact a
      · exact absurd a n1
    have u4 : v10 := by
      rcases c3113 with a|a
      · exact a
      · exact absurd a n1
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd u2 a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n0 a
    have u11 : ¬v3 := by
      rcases c28 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n0 a
    rcases c213 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd u3 a
  have c3137 : v15 ∨ v29 ∨ v30 ∨ v34 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n4
    have u2 : ¬v7 := by
      rcases c3136 with a|a
      · exact a
      · exact absurd a n4
    have u3 : v4 := by
      rcases c3133 with a|a
      · exact a
      · exact absurd a n4
    have u4 : ¬v21 := by
      rcases c3116 with a|a
      · exact a
      · exact absurd a n4
    have u5 : v10 := by
      rcases c3113 with a|a
      · exact a
      · exact absurd a n4
    have u6 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n4
    have u7 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u5 a
    have u13 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u5 a
    have u15 : ¬v1 := by
      rcases c2577 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
    have u16 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u17 : ¬v36 := by
      rcases c1707 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
    have u18 : v22 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a u12
    have u19 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v18 := by
      rcases c1371 with a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u18 a
    have u24 : ¬v19 := by
      rcases c1375 with a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u18 a
    have u25 : ¬v20 := by
      rcases c887 with a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a n1
      · exact absurd a n2
    have u26 : v35 := by
      rcases c3135 with a|a|a|a
      · exact absurd a u2
      · exact absurd a u20
      · exact a
      · exact absurd a n4
    have u27 : v42 := by
      rcases c2845 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd u26 a
      · exact absurd a u17
      · exact absurd a u16
      · exact a
    have u28 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u27 a
      · exact a
    have u31 : v5 := by
      rcases c2905 with a|a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd a u11
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u22
      · exact absurd a u30
      · exact absurd a u7
    have u32 : v6 := by
      rcases c561 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u29
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u30
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u10
      · exact a
      · exact absurd a n4
    rcases c32 with a|a|a
    · exact absurd u32 a
    · exact absurd u31 a
    · exact absurd u3 a
  have c3138 : v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n1
    have u2 : ¬v7 := by
      rcases c3136 with a|a
      · exact a
      · exact absurd a n1
    have u3 : v4 := by
      rcases c3133 with a|a
      · exact a
      · exact absurd a n1
    have u4 : ¬v21 := by
      rcases c3116 with a|a
      · exact a
      · exact absurd a n1
    have u5 : v10 := by
      rcases c3113 with a|a
      · exact a
      · exact absurd a n1
    have u6 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n1
    have u7 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u12 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u5 a
    have u13 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd u6 a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u5 a
    have u15 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u5 a
    have u16 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u5 a
    have u17 : ¬v1 := by
      rcases c2577 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n1
    have u18 : v35 := by
      rcases c3135 with a|a|a|a
      · exact absurd a u2
      · exact absurd a n0
      · exact a
      · exact absurd a n1
    have u19 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u18 a
      · exact a
    have u24 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u18 a
      · exact a
    have u25 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u26 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u27 : ¬v40 := by
      rcases c2798 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u26
      · exact absurd a u8
      · exact absurd a u7
    have u28 : ¬v36 := by
      rcases c1707 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n1
    have u29 : v15 := by
      rcases c3137 with a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n1
    have u30 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u29 a
      · exact a
    have u31 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u29 a
      · exact a
    have u32 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u29 a
      · exact a
    have u33 : ¬v26 := by
      rcases c2879 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u30
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u32
      · exact absurd a u31
      · exact a
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u21
    have u34 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u24
    have u35 : v5 := by
      rcases c3120 with a|a|a|a|a|a|a|a
      · exact absurd a u33
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u27
      · exact absurd a u7
    have u36 : ¬v27 := by
      rcases c2633 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u32
      · exact absurd a u31
      · exact absurd a u4
      · exact absurd a u33
      · exact a
      · exact absurd a u20
    have u37 : ¬v6 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u35 a
      · exact absurd u3 a
    have u38 : v42 := by
      rcases c2845 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u34
      · exact absurd a u36
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd u18 a
      · exact absurd a u28
      · exact absurd a u25
      · exact a
    have u39 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u38 a
    rcases c561 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u39
    · exact absurd a u2
    · exact absurd a u28
    · exact absurd a n0
    · exact absurd a u27
    · exact absurd a u7
    · exact absurd a u20
    · exact absurd a u17
    · exact absurd a u33
    · exact absurd a u36
    · exact absurd a u11
    · exact absurd a u37
    · exact absurd a n1
  have c3139 : ¬v2 ∨ ¬v4 ∨ v11 ∨ v12 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v5 := by
      rcases c20 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c213 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd n1 a
  have c3140 : v49 := by
    by_contra hc
    have u1 : v28 := by
      rcases c3138 with a|a
      · exact a
      · exact absurd a hc
    have u2 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v7 := by
      rcases c3136 with a|a
      · exact a
      · exact absurd a hc
    have u8 : v4 := by
      rcases c3133 with a|a
      · exact a
      · exact absurd a hc
    have u9 : ¬v21 := by
      rcases c3116 with a|a
      · exact a
      · exact absurd a hc
    have u10 : v10 := by
      rcases c3113 with a|a
      · exact a
      · exact absurd a hc
    have u11 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a hc
    have u12 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd u11 a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u10 a
    have u15 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u10 a
    have u17 : ¬v19 := by
      rcases c2223 with a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u15
      · exact a
    have u18 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a hc
    have u19 : ¬v18 := by
      rcases c2589 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
    have u20 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v2 := by
      rcases c3139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u20
    have u24 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u18 a
      · exact a
    have u25 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u18 a
      · exact a
    have u26 : ¬v1 := by
      rcases c2577 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a hc
    have u27 : v15 := by
      rcases c3114 with a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a hc
    have u28 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u27 a
      · exact a
    rcases c2581 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u26
    · exact absurd a u23
    · exact absurd a u7
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd u27 a
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a u5
  exact ⟨c3099, c3119, c3120, c3139, c3140⟩
