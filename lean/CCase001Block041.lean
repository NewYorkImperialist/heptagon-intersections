import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2050-2099 of the 2915-step refutation of ccase001: 120 core clauses and 95 earlier-derived ones give 15 more. -/
theorem CCase001_block041
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v1 ∨ ¬v2 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c12 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v7)
    (c15 : ¬v1 ∨ ¬v6 ∨ ¬v7)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c24 : ¬v5 ∨ ¬v2 ∨ ¬v7)
    (c25 : ¬v2 ∨ ¬v6 ∨ ¬v7)
    (c31 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c39 : ¬v8 ∨ ¬v9 ∨ ¬v10)
    (c42 : ¬v8 ∨ ¬v9 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14 ∨ ¬v9)
    (c44 : ¬v8 ∨ ¬v10 ∨ ¬v11)
    (c46 : ¬v8 ∨ ¬v13 ∨ ¬v10)
    (c47 : ¬v8 ∨ ¬v14 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c50 : ¬v8 ∨ ¬v14 ∨ ¬v11)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
    (c57 : ¬v9 ∨ ¬v14 ∨ ¬v10)
    (c60 : ¬v14 ∨ ¬v9 ∨ ¬v11)
    (c61 : ¬v13 ∨ ¬v9 ∨ ¬v12)
    (c62 : ¬v14 ∨ ¬v9 ∨ ¬v12)
    (c63 : ¬v9 ∨ ¬v13 ∨ ¬v14)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
    (c69 : ¬v14 ∨ ¬v13 ∨ ¬v10)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c80 : ¬v15 ∨ ¬v16)
    (c81 : ¬v15 ∨ ¬v17)
    (c82 : ¬v15 ∨ ¬v18)
    (c83 : ¬v15 ∨ ¬v19)
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
    (c102 : ¬v22 ∨ ¬v23)
    (c104 : ¬v22 ∨ ¬v25)
    (c106 : ¬v22 ∨ ¬v27)
    (c108 : ¬v23 ∨ ¬v24)
    (c109 : ¬v25 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c117 : ¬v25 ∨ ¬v26)
    (c118 : ¬v27 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
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
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c149 : ¬v40 ∨ ¬v36)
    (c150 : ¬v36 ∨ ¬v41)
    (c154 : ¬v40 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c164 : ¬v40 ∨ ¬v41)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c171 : ¬v47 ∨ ¬v43)
    (c176 : ¬v47 ∨ ¬v44)
    (c180 : ¬v45 ∨ ¬v47)
    (c183 : ¬v46 ∨ ¬v47)
    (c190 : v43 ∨ v36 ∨ v1 ∨ v15 ∨ v29 ∨ v22 ∨ v8)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c203 : v43 ∨ v49 ∨ v13 ∨ v6 ∨ v1 ∨ ¬v7 ∨ v48 ∨ v14)
    (c205 : ¬v32 ∨ v39 ∨ v38 ∨ v5 ∨ v4 ∨ v25 ∨ v31 ∨ v26 ∨ v33 ∨ v34 ∨ v27 ∨ v3 ∨ v41 ∨ v46)
    (c233 : ¬v47 ∨ v36 ∨ v40 ∨ v11 ∨ v12 ∨ v41 ∨ v1 ∨ v4 ∨ v5 ∨ v13 ∨ v43 ∨ v46 ∨ v48 ∨ v49)
    (c243 : ¬v15 ∨ v29 ∨ v42 ∨ v21 ∨ v37 ∨ v13 ∨ v8 ∨ v16 ∨ v14 ∨ v22 ∨ v23 ∨ v20 ∨ v27 ∨ v36)
    (c247 : v29 ∨ ¬v22 ∨ v30 ∨ v23 ∨ v35 ∨ v15 ∨ v21 ∨ v28)
    (c261 : v43 ∨ v49 ∨ v8 ∨ v48 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v14)
    (c277 : ¬v31 ∨ v38 ∨ v37 ∨ v34 ∨ v46 ∨ v44 ∨ v25 ∨ v32 ∨ v24 ∨ v30 ∨ v33 ∨ v41 ∨ v45 ∨ v27)
    (c356 : ¬v34 ∨ v41 ∨ v27 ∨ v33 ∨ v42 ∨ v28 ∨ v35 ∨ v26)
    (c373 : v43 ∨ ¬v1 ∨ v2 ∨ v44 ∨ v49 ∨ v8 ∨ v7 ∨ v14)
    (c380 : ¬v47 ∨ v40 ∨ v6 ∨ v46 ∨ v4 ∨ v39 ∨ v5 ∨ v48)
    (c381 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ ¬v2 ∨ v3 ∨ v10 ∨ v44)
    (c389 : v15 ∨ ¬v9 ∨ v16 ∨ v8 ∨ v17 ∨ v10 ∨ v2 ∨ v1)
    (c415 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ v44 ∨ v3 ∨ ¬v2 ∨ v8)
    (c421 : v21 ∨ v20 ∨ v14 ∨ v12 ∨ v5 ∨ v19 ∨ v6 ∨ ¬v13)
    (c428 : v10 ∨ v3 ∨ v16 ∨ v17 ∨ v2 ∨ v8 ∨ ¬v9 ∨ v15)
    (c433 : ¬v3 ∨ v11 ∨ v44 ∨ v10 ∨ v4 ∨ v45 ∨ v46 ∨ v2)
    (c456 : v15 ∨ v19 ∨ v24 ∨ v25 ∨ v4 ∨ v5 ∨ v12 ∨ v16 ∨ v8 ∨ v17 ∨ v3 ∨ v22 ∨ ¬v18 ∨ v11)
    (c482 : v8 ∨ ¬v9 ∨ v16 ∨ v3 ∨ v1 ∨ v2 ∨ v15 ∨ v10)
    (c513 : v43 ∨ v49 ∨ v44 ∨ v2 ∨ v8 ∨ v7 ∨ v9 ∨ ¬v1)
    (c525 : v12 ∨ v19 ∨ v5 ∨ v18 ∨ v17 ∨ ¬v11 ∨ v10 ∨ v4)
    (c528 : ¬v47 ∨ v40 ∨ v39 ∨ v5 ∨ v46 ∨ v4 ∨ v41 ∨ v48)
    (c568 : v4 ∨ v9 ∨ v2 ∨ ¬v3 ∨ v44 ∨ v11 ∨ v45 ∨ v10)
    (c746 : ¬v25 ∨ ¬v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39)
    (c795 : v10 ∨ ¬v2 ∨ ¬v11 ∨ v12 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c850 : ¬v25 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c863 : ¬v26 ∨ ¬v35 ∨ v41 ∨ v42)
    (c906 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v29 ∨ v30)
    (c969 : v25 ∨ v3 ∨ v10 ∨ v16 ∨ v17 ∨ v29 ∨ v31 ∨ v32 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c1017 : v20 ∨ v6 ∨ v13 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c1023 : ¬v26 ∨ v19 ∨ v32 ∨ v33 ∨ v34)
    (c1056 : ¬v24 ∨ ¬v16 ∨ v19 ∨ v30 ∨ v31 ∨ v33 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c1058 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v27 ∨ v33 ∨ v34)
    (c1070 : ¬v27 ∨ v4 ∨ v11 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v46)
    (c1071 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v31 ∨ v39 ∨ v46)
    (c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1094 : v27 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c1109 : ¬v16 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v33 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c1110 : ¬v17 ∨ v2 ∨ v3 ∨ v4 ∨ v8 ∨ ¬v9 ∨ v10 ∨ v11 ∨ v23 ∨ v29 ∨ v30 ∨ v31)
    (c1111 : v17 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v45)
    (c1141 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1146 : ¬v25 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37)
    (c1275 : ¬v26 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46)
    (c1295 : ¬v25 ∨ ¬v30 ∨ v37 ∨ v38)
    (c1349 : ¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v10 ∨ v11 ∨ v19)
    (c1371 : v29 ∨ ¬v18 ∨ ¬v22)
    (c1421 : v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c1422 : v35 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1429 : ¬v5 ∨ ¬v1 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v19 ∨ v43 ∨ v49)
    (c1433 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34 ∨ v35)
    (c1445 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v37 ∨ v45 ∨ v46)
    (c1461 : v30 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v21 ∨ v29 ∨ v37 ∨ v43 ∨ v48 ∨ v49)
    (c1469 : ¬v17 ∨ v1 ∨ v8 ∨ v29 ∨ v30 ∨ v37 ∨ v43 ∨ v48 ∨ v49)
    (c1523 : v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v21)
    (c1560 : ¬v15 ∨ v8 ∨ v14 ∨ v22 ∨ v23 ∨ v28)
    (c1630 : v17 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11)
    (c1649 : ¬v17 ∨ ¬v1 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14)
    (c1690 : ¬v7 ∨ v1 ∨ ¬v5 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1708 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1709 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v44 ∨ v49)
    (c1811 : ¬v13 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v9 ∨ v20)
    (c1823 : ¬v30 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46)
    (c1911 : v10 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v16)
    (c2006 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44)
    (c2028 : ¬v23 ∨ v16 ∨ v29 ∨ v30 ∨ v31)
    (c2059 : ¬v33 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v49)
    (c2074 : ¬v26 ∨ v3 ∨ v10 ∨ v11 ∨ v37 ∨ v38 ∨ v45)
    (c2077 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v24)
    (c2083 : ¬v19 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11)
    (c2152 : v14 ∨ v7 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v34 ∨ v43 ∨ v48 ∨ v49)
    (c2223 : v26 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v19)
    (c2249 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2297 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2332 : ¬v33 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2335 : ¬v25 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v17)
    (c2344 : ¬v32 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2356 : ¬v17 ∨ v1 ∨ v2 ∨ v9 ∨ v14 ∨ v22 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2367 : ¬v29 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2396 : ¬v35 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2415 : v35 ∨ v7 ∨ v14 ∨ v15 ∨ v20 ∨ v21 ∨ v43 ∨ v48 ∨ v49)
    (c2418 : ¬v19 ∨ v1 ∨ v8 ∨ v11 ∨ v12 ∨ v13 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c2419 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v29 ∨ v35)
    (c2425 : v47 ∨ v48 ∨ v49)
    (c2434 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2436 : ¬v32 ∨ v3 ∨ v10 ∨ v16 ∨ v17 ∨ v18 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2437 : ¬v33 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2443 : ¬v39 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v47 ∨ v48)
    (c2466 : v29 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v22 ∨ v35 ∨ v43 ∨ v44 ∨ v49)
    (c2476 : v33 ∨ v20 ∨ ¬v27 ∨ v34 ∨ v35)
    (c2479 : v3 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v21 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2482 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49)
    (c2497 : ¬v21 ∨ v48 ∨ v49)
    (c2537 : ¬v28 ∨ v20 ∨ v21 ∨ v29 ∨ v34 ∨ v35)
    (c2543 : v34 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ v20 ∨ v21 ∨ v35 ∨ v41 ∨ v48)
    (c2547 : v31 ∨ ¬v38 ∨ v44 ∨ v45 ∨ v46)
    (c2564 : ¬v34 ∨ v1 ∨ v3 ∨ v8 ∨ v10 ∨ v48 ∨ v49)
    (c2579 : ¬v41 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v29 ∨ v33 ∨ v34 ∨ v36 ∨ v43 ∨ v48 ∨ v49)
    (c2585 : v1 ∨ ¬v4 ∨ v8 ∨ v48 ∨ v49)
    (c2587 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45 ∨ v46)
    (c2589 : ¬v18 ∨ v11 ∨ v12 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c2591 : ¬v4 ∨ v48 ∨ v49)
    (c2597 : ¬v15 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2598 : ¬v25 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2604 : v31 ∨ v3 ∨ v10 ∨ ¬v16 ∨ v30 ∨ v33 ∨ v44 ∨ v45 ∨ v46)
    (c2612 : ¬v35 ∨ v4 ∨ v11 ∨ v18 ∨ v44 ∨ v45 ∨ v46)
    (c2630 : ¬v20 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v34 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2633 : v33 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ ¬v27 ∨ v34)
    (c2636 : ¬v34 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46)
    (c2637 : ¬v32 ∨ v17 ∨ v18 ∨ v19 ∨ v22 ∨ v25 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v38 ∨ v39)
    (c2644 : ¬v8 ∨ ¬v2 ∨ v4 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v19)
    (c2649 : v1 ∨ v7 ∨ v48 ∨ v49)
    (c2650 : ¬v14 ∨ v7 ∨ ¬v11 ∨ v48 ∨ v49)
    (c2653 : ¬v2 ∨ ¬v1 ∨ ¬v11 ∨ v14 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v48)
    (c2661 : ¬v34 ∨ ¬v1 ∨ v4 ∨ v11 ∨ ¬v14 ∨ v16 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2672 : ¬v3 ∨ ¬v1 ∨ v2 ∨ v4 ∨ v11 ∨ ¬v14 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c2676 : v2 ∨ v7 ∨ v11 ∨ ¬v14 ∨ v20 ∨ v27 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49)
    (c2677 : v15 ∨ v7 ∨ v16 ∨ v48 ∨ v49)
    (c2679 : ¬v14 ∨ v7 ∨ v11 ∨ v16 ∨ v48 ∨ v49)
    : (v34 ∨ v7 ∨ v48 ∨ v49) ∧ (v7 ∨ v48 ∨ v49) ∧ (¬v16 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46) ∧ (v31 ∨ v4 ∨ v11 ∨ v18 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46) ∧ (v30 ∨ v2 ∨ v9 ∨ ¬v18 ∨ v31 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v14 ∨ v11 ∨ v48 ∨ v49) ∧ (¬v2 ∨ v14 ∨ v48 ∨ v49) ∧ (¬v34 ∨ v2 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ v43 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v16 ∨ v2 ∨ v4 ∨ v10 ∨ v11 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46) ∧ (v3 ∨ v9 ∨ v11 ∨ v48 ∨ v49) ∧ (¬v3 ∨ v11 ∨ v48 ∨ v49) ∧ (¬v22 ∨ v15 ∨ v21 ∨ v28 ∨ v29 ∨ v30 ∨ v35) ∧ (¬v10 ∨ v11 ∨ v48 ∨ v49) ∧ (¬v34 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v37 ∨ v39 ∨ v45 ∨ v46) ∧ (v32 ∨ ¬v1 ∨ v2 ∨ v3 ∨ v4 ∨ v6 ∨ ¬v9 ∨ v10 ∨ v11 ∨ v14 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v48) := by
  have c2680 : v11 ∨ v7 ∨ v16 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v15 := by
      rcases c2677 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
    have u14 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
    have u15 : ¬v14 := by
      rcases c2679 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u16 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u13
      · exact a
      · exact absurd a u14
    have u17 : ¬v34 := by
      rcases c2152 with a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u2
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
    have u18 : v29 := by
      rcases c2537 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u6
      · exact absurd a u2
      · exact a
      · exact absurd a u17
      · exact absurd a u13
    have u19 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u18 a
    rcases c2434 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a u19
    · exact absurd a u17
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u11
  have c2681 : v2 ∨ ¬v1 ∨ v4 ∨ v7 ∨ ¬v11 ∨ v14 ∨ v17 ∨ v18 ∨ v19 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v8 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact a
      · exact absurd a n3
      · exact absurd a n5
    have u2 : ¬v5 := by
      rcases c1429 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u3 : ¬v12 := by
      rcases c48 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v10 := by
      rcases c44 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n4 a
    rcases c525 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd n4 a
    · exact absurd a u4
    · exact absurd a n2
  have c2682 : v16 ∨ v7 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v1 := by
      rcases c2649 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u4 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v15 := by
      rcases c2677 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u9 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : v11 := by
      rcases c2680 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u14 : ¬v14 := by
      rcases c2650 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u13 a
      · exact absurd a n2
      · exact absurd a n3
    have u15 : ¬v5 := by
      rcases c1429 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u13 a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a n3
    have u16 : v2 := by
      rcases c2681 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd u13 a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n3
    have u17 : ¬v34 := by
      rcases c2152 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u1
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
    have u18 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u3 a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v8 := by
      rcases c2644 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u2
      · exact absurd u13 a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u12
    have u20 : ¬v39 := by
      rcases c2443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd u4 a
      · exact absurd a n2
    have u21 : v40 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a n2
    have u22 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : v27 := by
      rcases c2653 with a|a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd u3 a
      · exact absurd u13 a
      · exact absurd a u14
      · exact absurd a u10
      · exact a
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a n2
    have u24 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u23 a
    rcases c1560 with a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u19
    · exact absurd a u14
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd a u24
  have c2683 : ¬v11 ∨ v7 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v16 := by
      rcases c2682 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u4 : v1 := by
      rcases c2649 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u5 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u6 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u5 a
    have u15 : ¬v14 := by
      rcases c2650 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
    have u16 : ¬v5 := by
      rcases c1429 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n0 a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n3
    have u17 : ¬v34 := by
      rcases c2152 with a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u2
      · exact a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
    have u18 : v2 := by
      rcases c2681 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n3
    have u19 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u4 a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v39 := by
      rcases c2443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd u5 a
      · exact absurd a n2
    have u22 : v40 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a n2
    have u23 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : v35 := by
      rcases c2415 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
    have u26 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v26 := by
      rcases c863 with a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u24
      · exact absurd a u23
    have u28 : v10 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact absurd a u20
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
    have u29 : ¬v27 := by
      rcases c2633 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u27
      · exact a
      · exact absurd a u17
    have u30 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd n0 a
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a n2
    · exact absurd a u30
    · exact absurd a u29
    · exact absurd a u10
    · exact absurd a u24
    · exact absurd a u17
  have c2684 : ¬v2 ∨ ¬v1 ∨ v4 ∨ v11 ∨ ¬v14 ∨ ¬v16 ∨ v21 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n5 a
      · exact a
    have u7 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n5 a
      · exact a
    have u8 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n5 a
      · exact a
    have u9 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd n7 a
      · exact a
    have u10 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd n7 a
      · exact a
    have u11 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd n7 a
    have u12 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd n7 a
    have u13 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
    have u14 : ¬v39 := by
      rcases c2443 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd n7 a
      · exact absurd a n8
    have u15 : v40 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a n8
    have u16 : ¬v30 := by
      rcases c1823 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u11
    have u17 : ¬v34 := by
      rcases c2636 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u11
    have u18 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a u17
      · exact absurd a u13
    have u21 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n8
      · exact a
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u17
    have u22 : ¬v9 := by
      rcases c1811 with a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd a u8
    have u23 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd n4 a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v25 := by
      rcases c2335 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd n5 a
      · exact absurd a u7
    have u25 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u23
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
    have u26 : v32 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u24
      · exact absurd a u14
    have u27 : v31 := by
      rcases c1109 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u4
      · exact absurd a u23
      · exact absurd a u16
      · exact a
      · exact absurd a u25
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
    rcases c135 with a|a
    · exact absurd u27 a
    · exact absurd u26 a
  have c2685 : ¬v33 ∨ v2 ∨ v3 ∨ v4 ∨ v11 ∨ ¬v14 ∨ v17 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v10 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v9 := by
      rcases c57 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u4 a
    rcases c1630 with a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd u4 a
    · exact absurd a n4
  have c2686 : v34 ∨ v7 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v1 := by
      rcases c2649 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u4 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u5 : v16 := by
      rcases c2682 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u5 a
      · exact a
    have u15 : ¬v11 := by
      rcases c2683 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u16 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u17 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
    have u18 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u1
      · exact a
    have u19 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u16
    have u20 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u17
    have u21 : ¬v2 := by
      rcases c2684 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd u20 a
      · exact absurd u5 a
      · exact absurd a u1
      · exact absurd u4 a
      · exact absurd a n2
    have u22 : ¬v3 := by
      rcases c2672 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd u20 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n3
    have u23 : v33 := by
      rcases c2676 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd u20 a
      · exact absurd a u14
      · exact absurd a u19
      · exact a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
    have u24 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : v38 := by
      rcases c2685 with a|a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd u20 a
      · exact absurd a u13
      · exact a
      · exact absurd a u9
    rcases c2547 with a|a|a|a|a
    · exact absurd a u24
    · exact absurd u25 a
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a u8
  have c2687 : v7 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u3 : v34 := by
      rcases c2686 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u4 : v1 := by
      rcases c2649 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u5 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u6 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u5 a
    have u15 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
    have u16 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n2
    have u17 : ¬v39 := by
      rcases c2587 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u18 : v16 := by
      rcases c2682 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u19 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u18 a
      · exact a
    have u24 : v11 := by
      rcases c2636 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u2
      · exact a
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u13
    have u25 : ¬v24 := by
      rcases c1056 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
    have u26 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a u23
      · exact absurd a u1
      · exact a
    have u27 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u26
      · exact absurd a u16
    have u28 : ¬v10 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u24 a
    have u29 : ¬v9 := by
      rcases c60 with a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd u24 a
    have u30 : ¬v8 := by
      rcases c50 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u24 a
    have u31 : ¬v12 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u24 a
    have u32 : v2 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u11
      · exact a
      · exact absurd a u30
      · exact absurd a n0
      · exact absurd a u29
      · exact absurd u4 a
    rcases c795 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd u32 a
    · exact absurd u24 a
    · exact absurd a u31
    · exact absurd a u22
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u25
    · exact absurd a u7
    · exact absurd a u15
    · exact absurd a u14
  have c2688 : ¬v34 ∨ v2 ∨ v4 ∨ v11 ∨ ¬v14 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v39 := by
      rcases c2587 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v18 := by
      rcases c2636 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u5
      · exact absurd a n8
    have u7 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : v9 := by
      rcases c2006 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v1 := by
      rcases c2661 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd u10 a
      · exact absurd n4 a
      · exact a
    have u13 : ¬v8 := by
      rcases c43 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u10 a
    rcases c389 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd u10 a
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd a u12
    · exact absurd a n1
    · exact absurd a u11
  have c2689 : ¬v16 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n0 a
      · exact a
    rcases c2434 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2690 : ¬v9 ∨ v2 ∨ v4 ∨ v11 ∨ ¬v14 ∨ v15 ∨ v16 ∨ v17 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v8 := by
      rcases c43 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u3 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n1
    rcases c428 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a n5
  have c2691 : v31 ∨ v4 ∨ v11 ∨ v18 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v39 := by
      rcases c2587 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v26 := by
      rcases c1275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n9
    have u4 : v25 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n3
      · exact a
      · exact absurd a u2
    rcases c850 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
  have c2692 : ¬v31 ∨ v2 ∨ v4 ∨ v11 ∨ ¬v14 ∨ v15 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v9 := by
      rcases c2690 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v23 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v22 := by
      rcases c2466 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
    rcases c906 with a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a u3
  have c2693 : v9 ∨ v2 ∨ v4 ∨ v11 ∨ v18 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v41 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v31 := by
      rcases c2691 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v16 := by
      rcases c2689 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v23 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u2
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v39 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n13
      · exact absurd a n4
      · exact absurd a u7
      · exact a
    have u9 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u8 a
    rcases c277 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a n8
    · exact absurd a n13
    · exact absurd a n11
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n12
    · exact absurd a n5
  have c2694 : v33 ∨ v2 ∨ v11 ∨ ¬v14 ∨ v18 ∨ v32 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u10 : ¬v34 := by
      rcases c2688 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u11 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v15 := by
      rcases c2597 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u13 : v31 := by
      rcases c2691 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u14 : ¬v16 := by
      rcases c2689 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u15 : ¬v41 := by
      rcases c2482 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
    have u16 : v17 := by
      rcases c2692 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u12
      · exact absurd a u14
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n7
    have u17 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u9
    have u20 : v9 := by
      rcases c2693 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u21 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd u20 a
      · exact absurd n3 a
      · exact a
    have u22 : ¬v8 := by
      rcases c43 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u20 a
    have u23 : ¬v12 := by
      rcases c62 with a|a|a
      · exact absurd n3 a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v13 := by
      rcases c63 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd n3 a
    have u25 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n1
    have u26 : v1 := by
      rcases c482 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd u20 a
      · exact absurd a u14
      · exact absurd a u25
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u21
    have u27 : v6 := by
      rcases c2543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n2
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a n6
    rcases c15 with a|a|a
    · exact absurd u26 a
    · exact absurd u27 a
    · exact absurd u4 a
  have c2695 : v16 ∨ v2 ∨ v4 ∨ v11 ∨ ¬v14 ∨ v18 ∨ ¬v32 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v9 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd u1 a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v8 := by
      rcases c43 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u1 a
    have u7 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
    have u8 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n1
    have u9 : ¬v17 := by
      rcases c1110 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
    rcases c2436 with a|a|a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2696 : v10 ∨ v2 ∨ v4 ∨ v11 ∨ ¬v16 ∨ v30 ∨ v31 ∨ v33 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n1
    rcases c2604 with a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd n4 a
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2697 : v33 ∨ v2 ∨ v11 ∨ ¬v14 ∨ v18 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u10 : ¬v34 := by
      rcases c2688 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u11 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v41 := by
      rcases c2482 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    have u13 : v32 := by
      rcases c2694 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v16 := by
      rcases c2695 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd u13 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u18 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u9
    have u22 : ¬v28 := by
      rcases c2537 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
    have u23 : ¬v26 := by
      rcases c1058 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a u10
    have u24 : v10 := by
      rcases c2696 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd u17 a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u25 : ¬v13 := by
      rcases c69 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v9 := by
      rcases c57 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u24 a
    have u27 : v6 := by
      rcases c1017 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n5
    have u28 : v3 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n1
      · exact a
      · exact absurd a u2
      · exact absurd a u26
      · exact absurd u24 a
      · exact absurd a n2
    rcases c31 with a|a|a
    · exact absurd u28 a
    · exact absurd u4 a
    · exact absurd u27 a
  have c2698 : ¬v16 ∨ v2 ∨ v4 ∨ ¬v7 ∨ v11 ∨ ¬v14 ∨ ¬v33 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v17 := by
      rcases c86 with a|a
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
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd n7 a
      · exact a
    have u7 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd n7 a
    have u8 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd n7 a
    have u9 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n6 a
      · exact a
    have u10 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n6 a
      · exact a
    have u11 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd n6 a
      · exact a
    have u12 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n6 a
    have u13 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n6 a
    have u14 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u13
    have u15 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
    have u16 : v39 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u10
      · exact a
      · exact absurd a u7
    have u17 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : v3 := by
      rcases c2685 with a|a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u8
    have u19 : v10 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a n4
      · exact absurd a u6
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n1
    have u20 : ¬v6 := by
      rcases c31 with a|a|a
      · exact absurd u18 a
      · exact absurd n3 a
      · exact a
    have u21 : ¬v13 := by
      rcases c69 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v12 := by
      rcases c68 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u19 a
    rcases c2543 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u20
    · exact absurd a n4
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u12
    · exact absurd a u17
    · exact absurd a n8
  have c2699 : ¬v33 ∨ v2 ∨ v11 ∨ ¬v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u6 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v16 := by
      rcases c2698 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd n0 a
      · exact absurd u5 a
      · exact absurd a n4
    have u12 : v9 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
    have u13 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd u12 a
      · exact absurd n3 a
      · exact a
    have u14 : ¬v8 := by
      rcases c43 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u12 a
    have u15 : ¬v12 := by
      rcases c62 with a|a|a
      · exact absurd n3 a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v13 := by
      rcases c63 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd n3 a
    have u17 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n1
    have u18 : v1 := by
      rcases c1911 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd u12 a
      · exact absurd a u11
    have u19 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
    have u20 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u6 a
    have u21 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u6 a
    have u22 : ¬v39 := by
      rcases c2443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd u5 a
      · exact absurd a n4
    have u23 : v40 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a n4
    have u24 : v41 := by
      rcases c2543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a n4
    rcases c164 with a|a
    · exact absurd u23 a
    · exact absurd u24 a
  have c2700 : v30 ∨ v2 ∨ v9 ∨ ¬v18 ∨ v31 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v23 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c2028 with a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n4
  have c2701 : ¬v3 ∨ v2 ∨ v11 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v7 := by
      rcases c2686 with a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v6 := by
      rcases c31 with a|a|a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v1 := by
      rcases c9 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n7
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n5
    have u11 : v10 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a u6
      · exact a
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n1
    have u12 : ¬v14 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u11 a
    have u13 : ¬v8 := by
      rcases c46 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u11 a
    rcases c261 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n8
    · exact absurd a u13
    · exact absurd a n7
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd u1 a
    · exact absurd a u12
  have c2702 : v31 ∨ v2 ∨ v9 ∨ v11 ∨ ¬v18 ∨ v33 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n4 a
    have u7 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
    have u14 : v30 := by
      rcases c2700 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
    have u15 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
    have u16 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
    have u17 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n8
    have u19 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u17
    have u20 : ¬v41 := by
      rcases c2579 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
    have u21 : ¬v3 := by
      rcases c2701 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a u20
      · exact absurd a n7
      · exact absurd a n8
    have u22 : ¬v10 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a u7
      · exact absurd a n2
      · exact a
      · exact absurd a n3
    have u23 : v25 := by
      rcases c969 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
    rcases c2598 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a n1
    · exact absurd a u21
    · exact absurd a n2
    · exact absurd a u22
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u11
  have c2703 : v2 ∨ v11 ∨ ¬v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v34 := by
      rcases c2688 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
    have u8 : ¬v33 := by
      rcases c2699 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u9 : v18 := by
      rcases c2697 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v9 := by
      rcases c2690 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
    have u14 : v31 := by
      rcases c2702 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd u9 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
    have u15 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
    have u16 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v22 := by
      rcases c1371 with a|a|a
      · exact absurd a u15
      · exact absurd u9 a
      · exact a
    have u18 : v23 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u12
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
    rcases c906 with a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a u16
  have c2704 : ¬v10 ∨ v1 ∨ ¬v2 ∨ v6 ∨ ¬v14 ∨ v21 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v9 := by
      rcases c57 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u2 : ¬v13 := by
      rcases c69 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v8 := by
      rcases c47 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u4 : v7 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd n4 a
      · exact absurd a n5
    have u5 : v3 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n7
      · exact a
      · exact absurd n2 a
      · exact absurd a u3
    rcases c19 with a|a|a
    · exact absurd n2 a
    · exact absurd u5 a
    · exact absurd u4 a
  have c2705 : ¬v14 ∨ v11 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u4 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : v2 := by
      rcases c2703 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
    have u10 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u4 a
    have u11 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u4 a
    have u12 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v3 := by
      rcases c19 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u4 a
    have u14 : ¬v39 := by
      rcases c2443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd u3 a
      · exact absurd a n2
    have u15 : v40 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a n2
    have u16 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v10 := by
      rcases c2704 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u9 a
      · exact absurd a u12
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
    have u20 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u8
    have u21 : v9 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd u9 a
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u5
    have u22 : ¬v8 := by
      rcases c43 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u21 a
    have u23 : ¬v12 := by
      rcases c62 with a|a|a
      · exact absurd n0 a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v13 := by
      rcases c63 with a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd n0 a
    have u25 : ¬v19 := by
      rcases c2223 with a|a|a|a|a
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a u24
      · exact a
    have u26 : ¬v34 := by
      rcases c2564 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a n3
    have u27 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u26
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u28 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u24
      · exact a
      · exact absurd a u27
      · exact absurd a u16
      · exact absurd a u26
    have u29 : v35 := by
      rcases c2543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u27
      · exact absurd a u1
      · exact a
      · exact absurd a u16
      · exact absurd a n2
    have u30 : v33 := by
      rcases c2633 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u27
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd u28 a
      · exact absurd a u26
    rcases c143 with a|a
    · exact absurd u29 a
    · exact absurd u30 a
  have c2706 : ¬v2 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u2 a
    have u7 : ¬v3 := by
      rcases c19 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u2 a
    have u9 : v8 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd u2 a
      · exact absurd a n1
    have u10 : v13 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n3
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n1
    have u11 : ¬v9 := by
      rcases c42 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v10 := by
      rcases c46 with a|a|a
      · exact absurd u9 a
      · exact absurd u10 a
      · exact a
    rcases c381 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd n0 a
    · exact absurd a u7
    · exact absurd a u12
    · exact absurd a u3
  have c2707 : ¬v34 ∨ v2 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v16 := by
      rcases c2006 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v3 := by
      rcases c568 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n4
    rcases c2604 with a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c2708 : ¬v16 ∨ v2 ∨ v4 ∨ v10 ∨ v11 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n1
    have u2 : v32 := by
      rcases c2689 with a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u2 a
      · exact a
    rcases c2604 with a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c2709 : v31 ∨ v9 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v14 := by
      rcases c2705 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v2 := by
      rcases c2706 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v18 := by
      rcases c2691 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
    rcases c2702 with a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd u8 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c2710 : v10 ∨ v3 ∨ v9 ∨ v11 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v14 := by
      rcases c2705 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v2 := by
      rcases c2706 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v33 := by
      rcases c2332 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n5
    have u11 : ¬v34 := by
      rcases c2707 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u12 : ¬v16 := by
      rcases c2708 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u13 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u14 : ¬v15 := by
      rcases c2597 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u15 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u16 : v31 := by
      rcases c2709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : v23 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u12
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u20 : ¬v22 := by
      rcases c2419 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u18
    have u21 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : v17 := by
      rcases c906 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u14
      · exact absurd a u12
      · exact a
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u17
    rcases c2077 with a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u21
  have c2711 : v3 ∨ v9 ∨ v11 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v14 := by
      rcases c2705 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v2 := by
      rcases c2706 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
    have u5 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u6 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : v10 := by
      rcases c2710 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v19 := by
      rcases c2083 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd u11 a
      · exact absurd a n2
    have u13 : v17 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd u11 a
      · exact absurd a n2
    have u14 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
    have u19 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u7
    have u20 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n4
    have u21 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u18
    have u22 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
    have u23 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
    have u24 : ¬v22 := by
      rcases c2419 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u22
      · exact absurd a u18
    have u25 : ¬v41 := by
      rcases c2482 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a n3
      · exact absurd a n4
    have u26 : v1 := by
      rcases c2356 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n4
    have u27 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd u5 a
    have u28 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd u5 a
    have u29 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd a n3
      · exact a
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u25
      · exact absurd a u19
    have u30 : ¬v12 := by
      rcases c1349 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd u11 a
      · exact absurd a n2
      · exact absurd a u12
    rcases c421 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u16
    · exact absurd a u1
    · exact absurd a u30
    · exact absurd a u27
    · exact absurd a u12
    · exact absurd a u28
    · exact absurd u29 a
  have c2712 : ¬v3 ∨ v11 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v14 := by
      rcases c2705 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v2 := by
      rcases c2706 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
    have u4 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u5 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u6 : ¬v1 := by
      rcases c9 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u4 a
    have u7 : ¬v6 := by
      rcases c31 with a|a|a
      · exact absurd n0 a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : v8 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd u4 a
      · exact absurd a u1
    have u13 : v13 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n3
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a u1
    have u14 : v10 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u8
      · exact a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u3
    rcases c46 with a|a|a
    · exact absurd u12 a
    · exact absurd u13 a
    · exact absurd u14 a
  have c2713 : v32 ∨ v8 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v31 ∨ v33 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v14 := by
      rcases c2705 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u8 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v15 := by
      rcases c2597 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
    have u14 : ¬v16 := by
      rcases c2689 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
    have u15 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
    have u16 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
    have u17 : v1 := by
      rcases c1461 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
    have u18 : ¬v41 := by
      rcases c2482 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a n9
    have u19 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u7 a
    have u20 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u7 a
    have u21 : ¬v39 := by
      rcases c2443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd u8 a
      · exact absurd a n8
    have u22 : v27 := by
      rcases c1094 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a n8
    rcases c1070 with a|a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a u21
    · exact absurd a u11
  have c2714 : ¬v1 ∨ ¬v7 ∨ v13 ∨ v20 ∨ v27 ∨ v34 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v39 := by
      rcases c2443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd n6 a
      · exact absurd a n7
    have u6 : v41 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n3
      · exact a
      · exact absurd a n5
    have u7 : v40 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n7
    rcases c164 with a|a
    · exact absurd u7 a
    · exact absurd u6 a
  have c2715 : v30 ∨ v1 ∨ v8 ∨ v11 ∨ v12 ∨ v15 ∨ v16 ∨ ¬v18 ∨ v26 ∨ v31 ∨ v32 ∨ v36 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v25 := by
      rcases c2589 with a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u5
      · exact a
      · exact absurd a n8
    have u8 : v29 := by
      rcases c1461 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u3
      · exact a
      · exact absurd a n12
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n14
    have u9 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u8 a
    rcases c1146 with a|a|a|a|a
    · exact absurd u7 a
    · exact absurd u8 a
    · exact absurd a u9
    · exact absurd a n11
    · exact absurd a n12
  have c2716 : v41 ∨ v1 ∨ v5 ∨ v8 ∨ v11 ∨ v12 ∨ v15 ∨ v16 ∨ ¬v18 ∨ v26 ∨ v31 ∨ v32 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v4 := by
      rcases c2585 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : v40 := by
      rcases c528 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n12
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n13
    have u8 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : v30 := by
      rcases c2715 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n13
      · exact absurd a n14
    have u11 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v22 := by
      rcases c2419 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u12
    rcases c1709 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a u13
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n14
  have c2717 : v32 ∨ ¬v10 ∨ v11 ∨ v33 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v3 := by
      rcases c2712 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v9 := by
      rcases c2711 with a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v14 := by
      rcases c2705 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
    have u10 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n1 a
    have u11 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v16 := by
      rcases c2689 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
    have u16 : ¬v15 := by
      rcases c2597 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
    have u17 : ¬v31 := by
      rcases c2713 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u18 : v18 := by
      rcases c2691 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
    have u19 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
    have u20 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v39 := by
      rcases c2587 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u13
    have u23 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u24 : ¬v27 := by
      rcases c2633 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u4
      · exact absurd a u23
      · exact a
      · exact absurd a n4
    have u25 : ¬v1 := by
      rcases c2714 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u3
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a n4
      · exact absurd u8 a
      · exact absurd a n5
    have u26 : ¬v5 := by
      rcases c1690 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u25
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
    have u27 : v41 := by
      rcases c2716 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd u18 a
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u22
      · exact absurd a n5
      · exact absurd a n6
    have u28 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u27 a
    have u29 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u27 a
      · exact a
    have u30 : v29 := by
      rcases c2579 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u27 a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u4
      · exact absurd a u24
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u28
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
    have u31 : v35 := by
      rcases c2482 with a|a|a|a|a|a|a
      · exact absurd u27 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u29
      · exact absurd a n5
      · exact absurd a n6
    rcases c129 with a|a
    · exact absurd u31 a
    · exact absurd u30 a
  have c2718 : ¬v32 ∨ v1 ∨ v3 ∨ v8 ∨ v14 ∨ v16 ∨ v19 ∨ v33 ∨ v34 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v4 := by
      rcases c2585 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v7 := by
      rcases c2649 with a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v2 := by
      rcases c2706 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n11
    have u9 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u4
    have u11 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n11
    have u16 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
    have u17 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
    have u18 : ¬v5 := by
      rcases c1690 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n10
      · exact absurd a n11
    have u19 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u12
      · exact absurd a n10
      · exact absurd a n11
    have u20 : v9 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u8
      · exact a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
    have u21 : v15 := by
      rcases c1461 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a n10
      · exact absurd a n11
    have u22 : ¬v41 := by
      rcases c2482 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a n10
      · exact absurd a n11
    have u23 : v10 := by
      rcases c1911 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u20 a
      · exact absurd a n5
    have u24 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u21 a
      · exact a
    have u26 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v27 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u25
      · exact a
      · exact absurd a n8
      · exact absurd a u5
    have u28 : v22 := by
      rcases c243 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u26
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n4
      · exact a
      · exact absurd a u10
      · exact absurd a u25
      · exact absurd a u27
      · exact absurd a u15
    have u29 : ¬v26 := by
      rcases c1058 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a n6
      · exact absurd a u25
      · exact absurd a u27
      · exact absurd a n7
      · exact absurd a n8
    have u30 : v25 := by
      rcases c205 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n9
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u1
      · exact a
      · exact absurd a u4
      · exact absurd a u29
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u27
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u13
    rcases c104 with a|a
    · exact absurd u28 a
    · exact absurd u30 a
  have c2719 : ¬v22 ∨ v15 ∨ v21 ∨ v28 ∨ v29 ∨ v30 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n0 a
      · exact a
    rcases c247 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
  have c2720 : v1 ∨ v8 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v32 ∨ v33 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v4 := by
      rcases c2585 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v3 := by
      rcases c2712 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v14 := by
      rcases c2705 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
    have u9 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u10 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n9
    have u16 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
    have u17 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
    have u18 : ¬v5 := by
      rcases c1690 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n9
    have u19 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n9
    have u20 : ¬v19 := by
      rcases c2418 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n9
    have u21 : ¬v41 := by
      rcases c2482 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a n8
      · exact absurd a n9
    have u22 : v40 := by
      rcases c233 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u15
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n9
    have u23 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : v16 := by
      rcases c2718 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u8
      · exact a
      · exact absurd a u20
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u23
      · exact absurd a n8
      · exact absurd a n9
    have u25 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : v22 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u25
      · exact absurd a u1
      · exact a
      · exact absurd a n1
    have u28 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u7
      · exact a
    rcases c2719 with a|a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd a u25
    · exact absurd a u7
    · exact absurd a u28
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u3
  have c2721 : v33 ∨ ¬v10 ∨ v11 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v3 := by
      rcases c2712 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v14 := by
      rcases c2705 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v9 := by
      rcases c2711 with a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u6 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n1 a
    have u10 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n1 a
    have u11 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u7 a
    have u15 : v32 := by
      rcases c2717 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n5
    have u21 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
    have u22 : v1 := by
      rcases c2720 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd u15 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u23 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u6 a
    have u24 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u6 a
    have u25 : ¬v39 := by
      rcases c2443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd u7 a
      · exact absurd a n4
    have u26 : v40 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a n4
    have u27 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : v27 := by
      rcases c1094 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u27
      · exact absurd a n4
    have u29 : v20 := by
      rcases c2543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u24
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u8
      · exact a
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u27
      · exact absurd a n4
    have u30 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u28 a
    have u31 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u28 a
      · exact a
    have u32 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u28 a
    have u33 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u29 a
    have u34 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u29 a
    have u35 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u29 a
    rcases c2637 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u35
    · exact absurd a u34
    · exact absurd a u33
    · exact absurd a u32
    · exact absurd a u31
    · exact absurd a u30
    · exact absurd a u16
    · exact absurd a u19
    · exact absurd a u17
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u25
  have c2722 : ¬v1 ∨ v4 ∨ ¬v7 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ v29 ∨ v30 ∨ v32 ∨ v34 ∨ v35 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd n12 a
    have u4 : ¬v39 := by
      rcases c2443 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd n12 a
      · exact absurd a n13
    have u5 : ¬v27 := by
      rcases c1070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a u3
    have u6 : v40 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd n12 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n13
    have u7 : v41 := by
      rcases c1094 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact a
      · exact absurd a n13
    rcases c164 with a|a
    · exact absurd u6 a
    · exact absurd u7 a
  have c2723 : v39 ∨ v1 ∨ v8 ∨ v11 ∨ v19 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v4 := by
      rcases c2585 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
    have u8 : ¬v17 := by
      rcases c1469 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : v18 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u8
      · exact a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u5
    have u11 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v22 := by
      rcases c1371 with a|a|a
      · exact absurd a n5
      · exact absurd u10 a
      · exact a
    rcases c1709 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n11
  have c2724 : v34 ∨ ¬v10 ∨ v11 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v3 := by
      rcases c2712 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v14 := by
      rcases c2705 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v9 := by
      rcases c2711 with a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u6 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n1 a
    have u10 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u6 a
    have u14 : v33 := by
      rcases c2721 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u15 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
    have u21 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
    have u22 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n4
    have u23 : ¬v1 := by
      rcases c2722 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd u6 a
      · exact absurd a n3
    have u24 : ¬v5 := by
      rcases c1690 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u23
      · exact a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
    have u25 : ¬v42 := by
      rcases c1141 with a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u26 : ¬v19 := by
      rcases c2418 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u25
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n4
    have u27 : v39 := by
      rcases c2723 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u26
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u28 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u27 a
    have u29 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u27 a
      · exact a
    rcases c233 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u22
    · exact absurd a u29
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a u28
    · exact absurd a u23
    · exact absurd a u2
    · exact absurd a u24
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a n3
    · exact absurd a n4
  have c2725 : ¬v10 ∨ v11 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v3 := by
      rcases c2712 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u4 : v9 := by
      rcases c2711 with a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u5 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u6 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u7 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n0 a
    have u9 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : v34 := by
      rcases c2724 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u14 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u13 a
      · exact a
    have u20 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n3
    have u21 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
    have u22 : ¬v39 := by
      rcases c2587 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u11
    have u23 : v18 := by
      rcases c2636 with a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u3
      · exact absurd a n1
      · exact a
      · exact absurd a u22
      · exact absurd a u11
    have u24 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u23 a
      · exact a
    have u28 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u23 a
    have u29 : ¬v22 := by
      rcases c1371 with a|a|a
      · exact absurd a u14
      · exact absurd u23 a
      · exact a
    have u30 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u17
    have u31 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a u2
      · exact a
    have u32 : v1 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u20
      · exact a
      · exact absurd a u26
      · exact absurd a u14
      · exact absurd a u29
      · exact absurd a u8
    have u33 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd u32 a
      · exact a
      · exact absurd u5 a
    have u34 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd u32 a
      · exact a
      · exact absurd u5 a
    have u35 : v25 := by
      rcases c456 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u30
      · exact a
      · exact absurd a u3
      · exact absurd a u33
      · exact absurd a u7
      · exact absurd a u28
      · exact absurd a u8
      · exact absurd a u24
      · exact absurd a u1
      · exact absurd a u29
      · exact absurd u23 a
      · exact absurd a n1
    have u36 : v40 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u34
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u22
      · exact absurd a u33
      · exact absurd a n2
    have u37 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u35 a
      · exact a
    have u38 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u35 a
    have u39 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u36 a
    have u40 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u36 a
      · exact a
    rcases c356 with a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u40
    · exact absurd a u38
    · exact absurd a u18
    · exact absurd a u39
    · exact absurd a u31
    · exact absurd a u19
    · exact absurd a u37
  have c2726 : ¬v34 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v37 ∨ v39 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v18 := by
      rcases c2636 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n8
    have u2 : v17 := by
      rcases c1445 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    rcases c91 with a|a
    · exact absurd u2 a
    · exact absurd u1 a
  have c2727 : v18 ∨ ¬v1 ∨ v3 ∨ v4 ∨ v6 ∨ ¬v9 ∨ v10 ∨ v11 ∨ v14 ∨ v30 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v34 := by
      rcases c2636 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n18
    have u3 : v25 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n18
      · exact absurd a n0
      · exact a
      · exact absurd a n13
    have u4 : ¬v27 := by
      rcases c1070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n18
    have u5 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u6 : ¬v31 := by
      rcases c746 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n19
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n14
      · exact absurd a u2
    have u8 : v17 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n17
    have u9 : ¬v12 := by
      rcases c61 with a|a|a
      · exact absurd u7 a
      · exact absurd n5 a
      · exact a
    rcases c1649 with a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd n1 a
    · exact absurd a n4
    · exact absurd a u9
    · exact absurd u7 a
    · exact absurd a n8
  have c2728 : v30 ∨ ¬v1 ∨ v2 ∨ v3 ∨ v4 ∨ v6 ∨ ¬v9 ∨ v10 ∨ v11 ∨ v14 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v34 := by
      rcases c2726 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n17
    have u3 : ¬v21 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u4 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u5 : v18 := by
      rcases c2727 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u6 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u10 : v8 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n2
      · exact a
      · exact absurd n6 a
      · exact absurd a u7
    have u11 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u12 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u3
      · exact a
    have u13 : v13 := by
      rcases c1017 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n5
      · exact a
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n14
      · exact absurd a n19
    rcases c42 with a|a|a
    · exact absurd u10 a
    · exact absurd n6 a
    · exact absurd u13 a
  have c2729 : v32 ∨ ¬v1 ∨ v2 ∨ v3 ∨ v4 ∨ v6 ∨ ¬v9 ∨ v10 ∨ v11 ∨ v14 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v34 := by
      rcases c2726 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
    have u2 : v30 := by
      rcases c2728 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : v18 := by
      rcases c1823 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n8
      · exact a
      · exact absurd a n12
      · exact absurd a n17
    have u7 : ¬v25 := by
      rcases c1295 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v16 := by
      rcases c2708 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u9 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u6 a
    rcases c969 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a n11
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
  exact ⟨c2686, c2687, c2689, c2691, c2700, c2705, c2706, c2707, c2708, c2711, c2712, c2719, c2725, c2726, c2729⟩
