import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2000-2049 of the 2934-step refutation of ccase002: 108 core clauses and 73 earlier-derived ones give 16 more. -/
theorem CCase002_block040
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c16 : ¬v2 ∨ ¬v5 ∨ ¬v3)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c18 : ¬v7 ∨ ¬v2 ∨ ¬v3)
    (c24 : ¬v5 ∨ ¬v4 ∨ ¬v3)
    (c25 : ¬v6 ∨ ¬v3 ∨ ¬v4)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c32 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c36 : ¬v8 ∨ ¬v9)
    (c37 : ¬v8 ∨ ¬v10)
    (c38 : ¬v8 ∨ ¬v11)
    (c40 : ¬v8 ∨ ¬v13)
    (c41 : ¬v8 ∨ ¬v14)
    (c43 : ¬v9 ∨ ¬v11)
    (c47 : ¬v11 ∨ ¬v10)
    (c48 : ¬v10 ∨ ¬v12)
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c52 : ¬v11 ∨ ¬v13)
    (c53 : ¬v11 ∨ ¬v14)
    (c54 : ¬v12 ∨ ¬v13)
    (c56 : ¬v14 ∨ ¬v13)
    (c58 : ¬v16 ∨ ¬v15 ∨ ¬v17)
    (c59 : ¬v16 ∨ ¬v15 ∨ ¬v18)
    (c60 : ¬v16 ∨ ¬v15 ∨ ¬v19)
    (c61 : ¬v16 ∨ ¬v15 ∨ ¬v20)
    (c62 : ¬v16 ∨ ¬v21 ∨ ¬v15)
    (c63 : ¬v15 ∨ ¬v17 ∨ ¬v18)
    (c64 : ¬v15 ∨ ¬v17 ∨ ¬v19)
    (c65 : ¬v15 ∨ ¬v20 ∨ ¬v17)
    (c66 : ¬v15 ∨ ¬v21 ∨ ¬v17)
    (c68 : ¬v15 ∨ ¬v20 ∨ ¬v18)
    (c69 : ¬v15 ∨ ¬v21 ∨ ¬v18)
    (c70 : ¬v15 ∨ ¬v20 ∨ ¬v19)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c72 : ¬v15 ∨ ¬v21 ∨ ¬v20)
    (c101 : ¬v22 ∨ ¬v24)
    (c102 : ¬v22 ∨ ¬v25)
    (c103 : ¬v22 ∨ ¬v26)
    (c104 : ¬v22 ∨ ¬v27)
    (c105 : ¬v22 ∨ ¬v28)
    (c111 : ¬v24 ∨ ¬v25)
    (c112 : ¬v26 ∨ ¬v24)
    (c113 : ¬v27 ∨ ¬v24)
    (c114 : ¬v28 ∨ ¬v24)
    (c115 : ¬v25 ∨ ¬v26)
    (c116 : ¬v25 ∨ ¬v27)
    (c117 : ¬v25 ∨ ¬v28)
    (c118 : ¬v26 ∨ ¬v27)
    (c119 : ¬v28 ∨ ¬v26)
    (c120 : ¬v27 ∨ ¬v28)
    (c121 : v22 ∨ v23 ∨ v25 ∨ v24 ∨ v28 ∨ v26 ∨ v27)
    (c122 : ¬v30 ∨ ¬v29)
    (c128 : ¬v30 ∨ ¬v31)
    (c129 : ¬v32 ∨ ¬v30)
    (c130 : ¬v33 ∨ ¬v30)
    (c132 : ¬v35 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c134 : ¬v31 ∨ ¬v33)
    (c135 : ¬v31 ∨ ¬v34)
    (c136 : ¬v31 ∨ ¬v35)
    (c137 : ¬v32 ∨ ¬v33)
    (c143 : ¬v37 ∨ ¬v36)
    (c145 : ¬v39 ∨ ¬v36)
    (c148 : ¬v42 ∨ ¬v36)
    (c149 : ¬v38 ∨ ¬v37)
    (c150 : ¬v39 ∨ ¬v37)
    (c151 : ¬v40 ∨ ¬v37)
    (c152 : ¬v41 ∨ ¬v37)
    (c153 : ¬v42 ∨ ¬v37)
    (c154 : ¬v38 ∨ ¬v39)
    (c155 : ¬v40 ∨ ¬v38)
    (c158 : ¬v39 ∨ ¬v40)
    (c159 : ¬v41 ∨ ¬v39)
    (c160 : ¬v42 ∨ ¬v39)
    (c161 : ¬v41 ∨ ¬v40)
    (c162 : ¬v42 ∨ ¬v40)
    (c167 : ¬v47 ∨ ¬v43)
    (c172 : ¬v44 ∨ ¬v47)
    (c176 : ¬v45 ∨ ¬v47)
    (c179 : ¬v46 ∨ ¬v47)
    (c180 : ¬v48 ∨ ¬v46)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c218 : v4 ∨ ¬v3 ∨ v45 ∨ v2 ∨ v44 ∨ v10 ∨ v46 ∨ v9)
    (c246 : ¬v32 ∨ v39 ∨ v26 ∨ v25 ∨ v24 ∨ v31 ∨ v33 ∨ v38)
    (c258 : v36 ∨ v22 ∨ v37 ∨ v35 ∨ v30 ∨ v28 ∨ ¬v29 ∨ v23)
    (c261 : ¬v27 ∨ v34 ∨ v35 ∨ v20 ∨ v33 ∨ v28 ∨ v26 ∨ v19)
    (c287 : v18 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v9 ∨ v16 ∨ v10 ∨ v11)
    (c308 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46 ∨ v37 ∨ v32 ∨ v39)
    (c311 : ¬v24 ∨ v31 ∨ v18 ∨ v38 ∨ v30 ∨ v25 ∨ v17 ∨ v33 ∨ v19 ∨ v23 ∨ v26 ∨ v44 ∨ v45 ∨ v46)
    (c315 : ¬v25 ∨ v32 ∨ v18 ∨ v24 ∨ v26 ∨ v33 ∨ v17 ∨ v31)
    (c344 : v36 ∨ ¬v37 ∨ v45 ∨ v44 ∨ v43 ∨ v30 ∨ v38 ∨ v29)
    (c348 : v43 ∨ ¬v2 ∨ v1 ∨ v3 ∨ v9 ∨ v44 ∨ v45 ∨ v10)
    (c376 : v43 ∨ ¬v2 ∨ v44 ∨ v45 ∨ v3 ∨ v1 ∨ v9 ∨ v8)
    (c408 : ¬v47 ∨ v41 ∨ v46 ∨ v5 ∨ v39 ∨ v48 ∨ v6 ∨ v40)
    (c431 : ¬v31 ∨ v38 ∨ v24 ∨ v37 ∨ v32 ∨ v30 ∨ v23 ∨ v39)
    (c435 : v22 ∨ v27 ∨ v17 ∨ v21 ∨ v20 ∨ v1 ∨ v7 ∨ ¬v14 ∨ v10 ∨ v13 ∨ v8 ∨ v9 ∨ v3 ∨ v28)
    (c454 : ¬v24 ∨ v31 ∨ v17 ∨ v30 ∨ v18 ∨ v27 ∨ v37 ∨ v20 ∨ v26 ∨ v25 ∨ v34 ∨ v23 ∨ v38 ∨ v39)
    (c526 : v26 ∨ v44 ∨ v3 ∨ v18 ∨ v2 ∨ v46 ∨ v45 ∨ v5 ∨ v24 ∨ v25 ∨ v12 ∨ v9 ∨ ¬v4 ∨ v11)
    (c528 : v21 ∨ v13 ∨ v19 ∨ v26 ∨ v12 ∨ v14 ∨ v27 ∨ ¬v20)
    (c582 : v19 ∨ v4 ∨ v11 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c591 : v17 ∨ v11 ∨ ¬v15 ∨ ¬v18 ∨ v24 ∨ v25 ∨ v26)
    (c595 : ¬v19 ∨ v12 ∨ ¬v15 ∨ v25 ∨ v26 ∨ v27)
    (c637 : ¬v14 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25)
    (c768 : ¬v7 ∨ ¬v6 ∨ v13 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c860 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c862 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v31 ∨ v32)
    (c872 : ¬v35 ∨ ¬v37 ∨ v38 ∨ v44 ∨ v45)
    (c873 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v39)
    (c898 : ¬v28 ∨ v20 ∨ v21 ∨ v29 ∨ v34 ∨ v35)
    (c1047 : v18 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1151 : v18 ∨ v3 ∨ v16 ∨ v17 ∨ v24 ∨ v31 ∨ v38 ∨ v44 ∨ v45)
    (c1224 : ¬v34 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24)
    (c1325 : ¬v2 ∨ ¬v7 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1337 : ¬v3 ∨ ¬v7 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46)
    (c1362 : ¬v34 ∨ v17 ∨ v18 ∨ ¬v25)
    (c1369 : ¬v8 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24)
    (c1448 : ¬v32 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24)
    (c1464 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v42)
    (c1465 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v49)
    (c1494 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c1511 : ¬v13 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ v19 ∨ v20)
    (c1559 : ¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41)
    (c1610 : ¬v15 ∨ v16 ∨ ¬v19 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28)
    (c1720 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v36 ∨ v37)
    (c1741 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v39 ∨ v46)
    (c1757 : v20 ∨ v13 ∨ ¬v27 ∨ v33 ∨ v34 ∨ v35)
    (c1824 : v28 ∨ v8 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23)
    (c1832 : v7 ∨ ¬v1 ∨ v2 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1844 : ¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1864 : ¬v12 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22)
    (c1865 : v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22)
    (c1870 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44)
    (c1874 : v23 ∨ v16 ∨ v18 ∨ v19 ∨ v21 ∨ ¬v25 ∨ v26 ∨ v27)
    (c1905 : ¬v35 ∨ v8 ∨ v13 ∨ v14 ∨ v21 ∨ v23 ∨ v27 ∨ v28 ∨ v36 ∨ v37 ∨ v42)
    (c1930 : v6 ∨ v1 ∨ ¬v7 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c2017 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2066 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c2086 : ¬v29 ∨ v17 ∨ v18 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28)
    (c2141 : v9 ∨ v2 ∨ v16 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44)
    (c2171 : v41 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v34 ∨ v43 ∨ v48 ∨ v49)
    (c2176 : v26 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c2201 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c2233 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v49)
    (c2268 : ¬v29 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2319 : ¬v30 ∨ v23 ∨ v24 ∨ v37 ∨ v38 ∨ v43 ∨ v44 ∨ v49)
    (c2320 : ¬v7 ∨ v1 ∨ ¬v3 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c2321 : v21 ∨ v7 ∨ v8 ∨ v9 ∨ v14 ∨ v29 ∨ v34 ∨ v35 ∨ v42 ∨ v49)
    (c2338 : ¬v6 ∨ ¬v3 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45)
    (c2339 : ¬v16 ∨ v6 ∨ v7 ∨ ¬v13 ∨ ¬v15 ∨ v21)
    (c2359 : ¬v15 ∨ v47 ∨ v48 ∨ v49)
    (c2366 : ¬v2 ∨ v3 ∨ ¬v13 ∨ v20 ∨ v21 ∨ v43 ∨ v44 ∨ v45)
    (c2377 : ¬v40 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v28 ∨ v49)
    (c2387 : v21 ∨ v47 ∨ v48 ∨ v49)
    (c2390 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v33)
    (c2391 : v47 ∨ v48 ∨ v49)
    (c2405 : ¬v38 ∨ ¬v32 ∨ v44 ∨ v45 ∨ v46)
    (c2414 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49)
    (c2422 : v4 ∨ v5 ∨ v6 ∨ v40 ∨ v46 ∨ ¬v47 ∨ v48)
    (c2437 : v37 ∨ v24 ∨ v25 ∨ v26 ∨ v29 ∨ v32 ∨ v33 ∨ v36 ∨ ¬v39 ∨ v43 ∨ v45 ∨ v46)
    (c2453 : ¬v2 ∨ ¬v1 ∨ v4 ∨ v40 ∨ ¬v47 ∨ v48)
    (c2463 : v38 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v30 ∨ v32 ∨ v33 ∨ v37 ∨ ¬v39 ∨ v44 ∨ v45 ∨ v46)
    (c2474 : ¬v1 ∨ ¬v4 ∨ v11 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c2476 : v41 ∨ v6 ∨ v13 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v48 ∨ v49)
    (c2541 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v48 ∨ v49)
    (c2565 : v15 ∨ v9 ∨ v23 ∨ v48 ∨ v49)
    (c2566 : v4 ∨ ¬v15 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c2568 : ¬v2 ∨ v4 ∨ v9 ∨ ¬v15 ∨ v17 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c2570 : ¬v4 ∨ v1 ∨ ¬v2 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2573 : v16 ∨ v9 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v48 ∨ v49)
    (c2576 : v25 ∨ v9 ∨ v16 ∨ ¬v17 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v48 ∨ v49)
    (c2577 : v17 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28)
    (c2578 : v4 ∨ ¬v2 ∨ v9 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    : (¬v4 ∨ ¬v2 ∨ v9 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v2 ∨ v9 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v37 ∨ v29 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45) ∧ (v37 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v24 ∨ v32 ∨ v43 ∨ v44 ∨ v45 ∨ v49) ∧ (v37 ∨ v31 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v38 ∨ v31 ∨ v39 ∨ v44 ∨ v45 ∨ v46) ∧ (v3 ∨ v1 ∨ ¬v2 ∨ v9 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v32 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v38 ∨ v39) ∧ (¬v40 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v24 ∨ v43 ∨ v44 ∨ v49) ∧ (v14 ∨ v9 ∨ ¬v15 ∨ v16 ∨ ¬v20 ∨ v21 ∨ ¬v28) ∧ (v37 ∨ v2 ∨ v9 ∨ v16 ∨ v22 ∨ v23 ∨ v24 ∨ v36 ∨ v44) ∧ (v16 ∨ v9 ∨ v23 ∨ v48 ∨ v49) ∧ (¬v2 ∨ v9 ∨ ¬v15 ∨ ¬v16 ∨ v23 ∨ ¬v47 ∨ v48) ∧ (v21 ∨ v9 ∨ ¬v13 ∨ v18 ∨ v25 ∨ v29 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v42 ∨ v48 ∨ v49) ∧ (v9 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v26 ∨ v38 ∨ v39 ∨ v48 ∨ v49) ∧ (v24 ∨ v2 ∨ ¬v6 ∨ v9 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46) := by
  have c2579 : ¬v4 ∨ ¬v2 ∨ v9 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c2570 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2580 : ¬v2 ∨ v9 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v4 := by
      rcases c2579 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c2578 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2581 : ¬v37 ∨ v29 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v38 := by
      rcases c149 with a|a
      · exact a
      · exact absurd n0 a
    rcases c344 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n1
  have c2582 : v16 ∨ v9 ∨ v23 ∨ ¬v24 ∨ v26 ∨ v27 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v29 := by
      rcases c2573 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v19 := by
      rcases c1610 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n0
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n8
    have u12 : ¬v17 := by
      rcases c2576 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : v21 := by
      rcases c2577 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u5 a
      · exact absurd a n0
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd u5 a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v32 := by
      rcases c1448 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd n3 a
    have u16 : v31 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n2
      · exact a
      · exact absurd a u15
    have u17 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v37 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u20 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u9
      · exact a
    have u21 : v39 := by
      rcases c2580 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u15
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u22 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u21 a
    rcases c2463 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd u21 a
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u7
  have c2584 : v39 ∨ v2 ∨ ¬v4 ∨ v9 ∨ v16 ∨ v17 ∨ v18 ∨ v20 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ ¬v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v41 := by
      rcases c152 with a|a
      · exact a
      · exact absurd n12 a
    have u2 : ¬v38 := by
      rcases c149 with a|a
      · exact a
      · exact absurd n12 a
    have u3 : ¬v40 := by
      rcases c151 with a|a
      · exact a
      · exact absurd n12 a
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n0
    have u6 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : v3 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
    have u10 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u9 a
    have u11 : ¬v6 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n2 a
    rcases c408 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a n13
    · exact absurd a u11
    · exact absurd a u3
  have c2585 : v37 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v24 ∨ v32 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v30 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n1
    have u2 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v38 := by
      rcases c2319 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u4 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v46 := by
      rcases c308 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u4
    have u6 : ¬v48 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v47 := by
      rcases c179 with a|a
      · exact absurd u5 a
      · exact a
    rcases c2391 with a|a|a
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n10
  have c2586 : v49 ∨ v2 ∨ ¬v4 ∨ v9 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v39 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v24 := by
      rcases c2582 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n0
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n0
    have u3 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v37 := by
      rcases c2585 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n0
    have u8 : ¬v41 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v38 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v40 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a n13
    have u12 : v3 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u4
    have u13 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u12 a
    have u14 : ¬v6 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd n2 a
    rcases c408 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd a u13
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a u14
    · exact absurd a u10
  have c2587 : v9 ∨ v2 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v24 := by
      rcases c2582 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v37 := by
      rcases c2585 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n13
    have u8 : ¬v38 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a n11
    have u10 : v3 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
    have u11 : ¬v4 := by
      rcases c2586 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
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
    have u12 : v10 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u10 a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u5
      · exact a
      · exact absurd a u3
      · exact absurd a n0
    have u13 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n6
      · exact absurd a n10
    rcases c47 with a|a
    · exact absurd u13 a
    · exact absurd u12 a
  have c2588 : v27 ∨ v9 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v25 ∨ v26 ∨ v28 ∨ v32 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v2 := by
      rcases c2587 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v4 := by
      rcases c2579 with a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u9 : v19 := by
      rcases c2580 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u10 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a n9
    have u11 : v12 := by
      rcases c595 with a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    rcases c51 with a|a
    · exact absurd u10 a
    · exact absurd u11 a
  have c2589 : v25 ∨ v9 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v24 := by
      rcases c2582 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : v32 := by
      rcases c2588 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v38 := by
      rcases c2405 with a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    rcases c246 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n9
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u9
  have c2590 : v48 ∨ v9 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v29 := by
      rcases c2573 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n0
      · exact absurd a n10
    have u2 : ¬v24 := by
      rcases c2582 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
    have u4 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n10
    have u9 : v39 := by
      rcases c2589 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n0
      · exact absurd a n10
    have u10 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v37 := by
      rcases c150 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v34 := by
      rcases c2066 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
    have u16 : ¬v30 := by
      rcases c2319 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n10
    have u17 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u6
      · exact a
    have u18 : ¬v33 := by
      rcases c1559 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u12
    have u19 : ¬v4 := by
      rcases c2579 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u20 : v32 := by
      rcases c2437 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact a
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd u9 a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u4
    have u21 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : v3 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u5
    have u23 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd u17 a
      · exact absurd u22 a
      · exact a
    rcases c2422 with a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd u3 a
    · exact absurd a n0
  have c2591 : v21 ∨ ¬v11 ∨ v13 ∨ v17 ∨ v20 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v29 ∨ ¬v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd n11 a
      · exact a
    have u2 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd n11 a
    have u3 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd n11 a
    have u4 : ¬v36 := by
      rcases c145 with a|a
      · exact absurd n11 a
      · exact a
    have u5 : ¬v37 := by
      rcases c150 with a|a
      · exact absurd n11 a
      · exact a
    have u6 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd n11 a
    have u7 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd n1 a
      · exact a
    have u8 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n1 a
    have u10 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd n1 a
      · exact a
    have u11 : v47 := by
      rcases c2387 with a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v34 := by
      rcases c2066 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
    have u13 : ¬v35 := by
      rcases c1905 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u2
    have u14 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n12
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u12
    have u16 : v7 := by
      rcases c2321 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a n13
    have u17 : v3 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u14
    rcases c29 with a|a|a
    · exact absurd u17 a
    · exact absurd u16 a
    · exact absurd u15 a
  have c2592 : v13 ∨ ¬v3 ∨ v9 ∨ v16 ∨ v20 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v37 ∨ v38 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v47 := by
      rcases c2176 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n7
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v24 := by
      rcases c2582 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v30 := by
      rcases c2319 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n12
    have u8 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a u5
      · exact a
    have u9 : ¬v4 := by
      rcases c2579 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u10 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact a
    have u11 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n1 a
    have u12 : v41 := by
      rcases c2476 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
    have u13 : v40 := by
      rcases c2422 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n11
    rcases c161 with a|a
    · exact absurd u12 a
    · exact absurd u13 a
  have c2593 : v14 ∨ v8 ∨ v9 ∨ v10 ∨ v13 ∨ v16 ∨ v17 ∨ v20 ∨ v21 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v38 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v47 := by
      rcases c2176 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n11
      · exact a
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v24 := by
      rcases c2582 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a n13
    have u7 : ¬v1 := by
      rcases c1844 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n17
    have u8 : ¬v7 := by
      rcases c2320 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n16
      · exact absurd a n17
    have u9 : v37 := by
      rcases c2592 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact a
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
    have u10 : ¬v42 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v35 := by
      rcases c872 with a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n14
      · exact absurd a u4
      · exact absurd a u3
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a n12
    · exact absurd a n17
    · exact absurd a u10
  have c2594 : v37 ∨ v31 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v32 := by
      rcases c2405 with a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c308 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n3
  have c2595 : ¬v38 ∨ v31 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd n0 a
      · exact a
    rcases c2594 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2596 : v39 ∨ v8 ∨ v9 ∨ v10 ∨ v13 ∨ v14 ∨ v16 ∨ v17 ∨ v20 ∨ v21 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v47 := by
      rcases c2387 with a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v38 := by
      rcases c2595 with a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    rcases c2593 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a n16
    · exact absurd a n17
  have c2597 : v16 ∨ v9 ∨ v17 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v29 := by
      rcases c2573 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v24 := by
      rcases c2582 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n9
    have u9 : v18 := by
      rcases c2590 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u10 : v11 := by
      rcases c591 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u3 a
      · exact absurd u9 a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v21 := by
      rcases c69 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v20 := by
      rcases c68 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u10 a
      · exact a
    have u17 : ¬v39 := by
      rcases c2591 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u10 a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u18 : v31 := by
      rcases c2596 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u19 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v37 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u23 : ¬v42 := by
      rcases c2201 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
    have u24 : v7 := by
      rcases c2321 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a n9
    have u25 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u22
      · exact absurd a u6
      · exact a
    rcases c1325 with a|a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd u24 a
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a u7
    · exact absurd a n8
    · exact absurd a n9
  have c2598 : v3 ∨ v1 ∨ ¬v2 ∨ v9 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v10 := by
      rcases c348 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact a
    have u2 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u1 a
    rcases c376 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n2 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u2
  have c2599 : v9 ∨ v16 ∨ v23 ∨ v24 ∨ v29 ∨ ¬v31 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v41 := by
      rcases c2541 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n8
    have u13 : ¬v37 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u14 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u10
      · exact a
    have u15 : v38 := by
      rcases c431 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n6
    have u16 : ¬v4 := by
      rcases c2579 with a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u17 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v1 := by
      rcases c2453 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd u6 a
      · exact absurd a n7
    have u19 : v3 := by
      rcases c2598 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd u14 a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u20 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd u14 a
      · exact absurd u19 a
      · exact a
    rcases c408 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u20
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u21
    · exact absurd a u17
  have c2600 : v24 ∨ v3 ∨ v9 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v31 ∨ v37 ∨ v38 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n9
    have u6 : v18 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a u3
    have u7 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v21 := by
      rcases c69 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u6 a
    rcases c1865 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd u1 a
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a n5
  have c2601 : v7 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v35 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v47 := by
      rcases c2387 with a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v8 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v42 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n9
      · exact a
    have u6 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v29 := by
      rcases c2201 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u8 a
    rcases c258 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a n7
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd u8 a
    · exact absurd a n5
  have c2602 : v26 ∨ v9 ∨ v16 ∨ v17 ∨ v23 ∨ v27 ∨ v28 ∨ v37 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v24 := by
      rcases c2582 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v25 := by
      rcases c2597 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v29 := by
      rcases c2573 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v31 := by
      rcases c2599 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u4
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v38 := by
      rcases c2595 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u13 : ¬v30 := by
      rcases c2319 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n10
    have u14 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u10
      · exact a
    have u15 : ¬v4 := by
      rcases c2579 with a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u16 : v3 := by
      rcases c2600 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n10
    have u17 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd u14 a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u16 a
    have u20 : v40 := by
      rcases c2422 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u18
      · exact a
      · exact absurd a u8
      · exact absurd u5 a
      · exact absurd a n9
    have u21 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v34 := by
      rcases c2171 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n10
    have u24 : ¬v35 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u22
    have u25 : v21 := by
      rcases c2601 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd u3 a
      · exact absurd a n2
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u24
      · exact absurd a n9
      · exact absurd a n10
    have u26 : ¬v19 := by
      rcases c71 with a|a|a
      · exact absurd u3 a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v20 := by
      rcases c72 with a|a|a
      · exact absurd u3 a
      · exact absurd u25 a
      · exact a
    have u28 : v13 := by
      rcases c2476 with a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u18
      · exact a
      · exact absurd a u27
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
    have u29 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u28 a
    rcases c1511 with a|a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u29
    · exact absurd a u26
    · exact absurd a u27
  have c2603 : v23 ∨ v9 ∨ v16 ∨ v17 ∨ v26 ∨ v27 ∨ v28 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v29 := by
      rcases c2573 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v24 := by
      rcases c2582 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v31 := by
      rcases c2599 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u1
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v38 := by
      rcases c2595 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u11 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n9
    have u12 : v37 := by
      rcases c2602 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v41 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v42 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : v30 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u1
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u16 : ¬v40 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd a u13
    have u18 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : v25 := by
      rcases c2597 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u20 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : v18 := by
      rcases c315 with a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u18
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a u5
    have u22 : ¬v21 := by
      rcases c69 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u21 a
    have u23 : v8 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a n0
    have u24 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : v7 := by
      rcases c2233 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n9
    have u28 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u5
    rcases c1337 with a|a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd u27 a
    · exact absurd a n1
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd a u7
    · exact absurd a u6
  have c2604 : ¬v39 ∨ v9 ∨ v16 ∨ v23 ∨ v24 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v37 := by
      rcases c150 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v30 := by
      rcases c2319 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n6
    have u10 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u7
      · exact a
    have u11 : ¬v4 := by
      rcases c2579 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u12 : ¬v1 := by
      rcases c2453 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd u4 a
      · exact absurd a n5
    have u13 : v3 := by
      rcases c2598 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u14 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd u10 a
      · exact absurd u13 a
      · exact a
    rcases c2422 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd u4 a
    · exact absurd a n5
  have c2605 : ¬v32 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    rcases c246 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n5
  have c2606 : v16 ∨ v9 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v24 := by
      rcases c2582 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v39 := by
      rcases c2604 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v29 := by
      rcases c2573 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v31 := by
      rcases c2599 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u9
      · exact a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v38 := by
      rcases c2595 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u12 : v17 := by
      rcases c2603 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v20 := by
      rcases c65 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v19 := by
      rcases c64 with a|a|a
      · exact absurd u1 a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v18 := by
      rcases c63 with a|a|a
      · exact absurd u1 a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v8 := by
      rcases c1369 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u12 a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u7
    have u18 : ¬v25 := by
      rcases c1874 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u15
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u19 : v10 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n0
      · exact absurd u12 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u18
    have u20 : ¬v32 := by
      rcases c2605 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u8
    have u21 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : v4 := by
      rcases c2566 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd u12 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u3
    have u24 : ¬v2 := by
      rcases c2579 with a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u25 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u5
    have u26 : v30 := by
      rcases c2141 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u24
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u9
      · exact a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
    have u27 : v37 := by
      rcases c2585 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n7
    have u28 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v41 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : ¬v42 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u27 a
    have u31 : v7 := by
      rcases c2321 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u25
      · exact absurd a u28
      · exact absurd a u30
      · exact absurd a n7
    have u32 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a u29
      · exact absurd a u25
    rcases c768 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u31 a
    · exact absurd u32 a
    · exact absurd a u21
    · exact absurd a u16
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u18
    · exact absurd a u20
    · exact absurd a u8
    · exact absurd a u3
  have c2607 : ¬v21 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v19 := by
      rcases c71 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v20 := by
      rcases c72 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u4 : v26 := by
      rcases c121 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n7
      · exact a
      · exact absurd a n6
    rcases c2390 with a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n8
  have c2608 : v40 ∨ ¬v2 ∨ v9 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v4 := by
      rcases c2579 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u6 : ¬v1 := by
      rcases c2453 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a n4
    have u7 : v3 := by
      rcases c2598 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u8 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
    rcases c2422 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd n3 a
    · exact absurd a n4
  have c2609 : ¬v21 ∨ ¬v2 ∨ v9 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v19 := by
      rcases c71 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v17 := by
      rcases c66 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u4 : v33 := by
      rcases c2607 with a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
    have u5 : v32 := by
      rcases c2580 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n7
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    rcases c137 with a|a
    · exact absurd u5 a
    · exact absurd u4 a
  have c2610 : v28 ∨ ¬v2 ∨ v9 ∨ v16 ∨ v23 ∨ v27 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v26 := by
      rcases c2606 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : v40 := by
      rcases c2608 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n6
    have u12 : ¬v39 := by
      rcases c2604 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v21 := by
      rcases c2609 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u14 : v8 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a n4
    have u15 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : v7 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n7
    have u19 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u7
    have u20 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u18 a
    rcases c2598 with a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u8
  have c2611 : v27 ∨ v9 ∨ v16 ∨ v23 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v2 := by
      rcases c2610 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u5
    have u9 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u10 : v26 := by
      rcases c2606 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v39 := by
      rcases c2604 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v31 := by
      rcases c2599 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u9
      · exact a
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v38 := by
      rcases c2595 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u17 : v30 := by
      rcases c2141 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u9
      · exact a
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u5
    have u18 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v41 := by
      rcases c2541 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v42 := by
      rcases c2201 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v21 := by
      rcases c2607 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u19
    have u23 : v8 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u12
      · exact absurd a n3
    have u24 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : v7 := by
      rcases c1465 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a n6
    have u28 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd a n1
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u4
      · exact absurd a u3
    have u29 : v17 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u28
      · exact a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u15
    have u30 : v18 := by
      rcases c287 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u26
      · exact absurd a u25
    rcases c63 with a|a|a
    · exact absurd u1 a
    · exact absurd u29 a
    · exact absurd u30 a
  have c2612 : v49 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v8 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v47 := by
      rcases c2359 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n12
      · exact absurd a n0
    have u3 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v2 := by
      rcases c2608 with a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd a n12
    have u13 : v27 := by
      rcases c2611 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n0
    have u14 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u15 : ¬v42 := by
      rcases c2201 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a n12
      · exact absurd a n0
    have u16 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u15
    have u19 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u20 : ¬v31 := by
      rcases c2599 with a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a u14
      · exact a
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n0
    have u21 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u22 : v20 := by
      rcases c1757 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u13 a
      · exact absurd a u19
      · exact absurd a n7
      · exact absurd a n8
    have u23 : ¬v38 := by
      rcases c2595 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u24 : v17 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u21
      · exact a
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u23
      · exact absurd a u20
    rcases c65 with a|a|a
    · exact absurd n1 a
    · exact absurd u22 a
    · exact absurd u24 a
  have c2613 : v2 ∨ v9 ∨ v16 ∨ v23 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v27 := by
      rcases c2611 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v39 := by
      rcases c2604 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u10
    have u14 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u15 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
    have u16 : ¬v31 := by
      rcases c2599 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u14
      · exact a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v38 := by
      rcases c2595 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u18 : ¬v32 := by
      rcases c2605 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u12
    have u19 : v37 := by
      rcases c2585 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
    have u20 : ¬v41 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : v30 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u14
      · exact a
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u22 : ¬v40 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : v21 := by
      rcases c2612 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd u2 a
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u23
      · exact absurd a u12
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a n5
    have u26 : ¬v19 := by
      rcases c71 with a|a|a
      · exact absurd u2 a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v20 := by
      rcases c72 with a|a|a
      · exact absurd u2 a
      · exact absurd u25 a
      · exact a
    rcases c261 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u13
    · exact absurd a u23
    · exact absurd a u27
    · exact absurd a u24
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u26
  have c2614 : v28 ∨ v9 ∨ v16 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v2 := by
      rcases c2613 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v40 := by
      rcases c2608 with a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a n4
    have u9 : ¬v4 := by
      rcases c2579 with a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u10 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : v27 := by
      rcases c2611 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u10
    have u18 : ¬v32 := by
      rcases c2605 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u10
    have u19 : ¬v17 := by
      rcases c2566 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u3
    have u20 : ¬v21 := by
      rcases c2568 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a u19
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u21 : v8 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a n3
    have u22 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v18 := by
      rcases c591 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd u1 a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u13
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u9
    · exact absurd a u23
    · exact absurd a u3
    · exact absurd a u10
    · exact absurd a u15
    · exact absurd a u18
  have c2615 : ¬v2 ∨ v9 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v23 ∨ ¬v28 ∨ v39 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v40 := by
      rcases c2608 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd n8 a
      · exact absurd a n9
    have u2 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd n8 a
    have u3 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd n8 a
    have u5 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n8 a
      · exact a
    have u6 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd n6 a
      · exact a
    have u7 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n6 a
    have u8 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n6 a
    have u9 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n6 a
    have u10 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n6 a
      · exact a
    have u11 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u12 : ¬v4 := by
      rcases c2579 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u13 : ¬v12 := by
      rcases c1864 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
    have u14 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n7
    have u15 : ¬v32 := by
      rcases c2605 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a n7
    have u16 : ¬v17 := by
      rcases c2566 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a u2
    have u17 : ¬v19 := by
      rcases c595 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd n2 a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u8
    have u18 : v18 := by
      rcases c2580 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u16
      · exact a
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u19 : v11 := by
      rcases c591 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd n2 a
      · exact absurd u18 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u6
    have u20 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd u18 a
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u9
    have u21 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u19 a
    rcases c1865 with a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a n1
    · exact absurd a u20
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u7
  have c2616 : ¬v40 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v24 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v37 := by
      rcases c151 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v30 := by
      rcases c2319 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n1
  have c2617 : v14 ∨ v9 ∨ ¬v15 ∨ v16 ∨ ¬v20 ∨ v21 ∨ ¬v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v19 := by
      rcases c70 with a|a|a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v12 := by
      rcases c1864 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u3
    have u6 : v8 := by
      rcases c1865 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u3
    have u7 : v13 := by
      rcases c528 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd n4 a
    rcases c40 with a|a
    · exact absurd u6 a
    · exact absurd u7 a
  have c2618 : v38 ∨ v9 ∨ v16 ∨ v21 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v47 := by
      rcases c2387 with a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v28 := by
      rcases c2614 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v39 := by
      rcases c2604 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u11
    have u13 : ¬v32 := by
      rcases c2605 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u11
    have u14 : ¬v2 := by
      rcases c2615 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u3 a
      · exact absurd a u11
      · exact absurd u1 a
      · exact absurd a n5
    have u15 : ¬v40 := by
      rcases c2616 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
    have u16 : v37 := by
      rcases c2585 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
    have u17 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u18 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u6
    have u19 : ¬v41 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : v30 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u17
      · exact a
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u22 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : v20 := by
      rcases c898 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u22
    have u24 : ¬v18 := by
      rcases c68 with a|a|a
      · exact absurd u2 a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v17 := by
      rcases c65 with a|a|a
      · exact absurd u2 a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v19 := by
      rcases c70 with a|a|a
      · exact absurd u2 a
      · exact absurd u23 a
      · exact a
    have u27 : v14 := by
      rcases c2617 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd u23 a
      · exact absurd a n3
      · exact absurd u3 a
    have u28 : v3 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a n2
      · exact absurd a u25
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
    have u29 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u27 a
    have u31 : v4 := by
      rcases c1741 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u29
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u11
      · exact absurd a u4
    have u32 : ¬v6 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd a n1
      · exact absurd a u30
      · exact absurd a u29
      · exact absurd a u6
      · exact absurd a u5
    have u33 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd u28 a
    rcases c408 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u19
    · exact absurd a u4
    · exact absurd a u33
    · exact absurd a u11
    · exact absurd a n5
    · exact absurd a u32
    · exact absurd a u15
  have c2619 : v21 ∨ v9 ∨ v16 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v47 := by
      rcases c2387 with a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v28 := by
      rcases c2614 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v38 := by
      rcases c2618 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v32 := by
      rcases c2405 with a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u12 : v2 := by
      rcases c2585 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n5
    rcases c2608 with a|a|a|a|a
    · exact absurd a u10
    · exact absurd u12 a
    · exact absurd a n1
    · exact absurd u1 a
    · exact absurd a n4
  have c2620 : v37 ∨ v2 ∨ v9 ∨ v16 ∨ v22 ∨ v23 ∨ v24 ∨ v36 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v30 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n1
    have u2 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd u1 a
      · exact a
    rcases c1720 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n0
  have c2621 : v2 ∨ v9 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v28 := by
      rcases c2614 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v21 := by
      rcases c2619 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v47 := by
      rcases c2359 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v39 := by
      rcases c2604 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u16 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n9
    have u17 : v37 := by
      rcases c2620 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u12
    have u18 : ¬v38 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : v30 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u15
      · exact a
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u20 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u14
    have u21 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : v3 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u11
    have u23 : ¬v4 := by
      rcases c2584 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd u17 a
      · exact absurd a n8
      · exact absurd a n9
    have u24 : v10 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd u22 a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u12
      · exact a
      · exact absurd a u10
      · exact absurd a n1
    have u25 : v11 := by
      rcases c582 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u23
      · exact a
      · exact absurd u2 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u10
    rcases c47 with a|a
    · exact absurd u25 a
    · exact absurd u24 a
  have c2622 : v16 ∨ v9 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v47 := by
      rcases c2359 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v28 := by
      rcases c2614 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : v21 := by
      rcases c2619 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v19 := by
      rcases c71 with a|a|a
      · exact absurd u1 a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd u1 a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v17 := by
      rcases c66 with a|a|a
      · exact absurd u1 a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v20 := by
      rcases c72 with a|a|a
      · exact absurd u1 a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v39 := by
      rcases c2604 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
    have u17 : v2 := by
      rcases c2621 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u18 : v40 := by
      rcases c2608 with a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a n3
    have u19 : v32 := by
      rcases c2580 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u9
      · exact a
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u20 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u19 a
    rcases c2605 with a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u16
  have c2623 : ¬v3 ∨ ¬v2 ∨ ¬v15 ∨ ¬v16 ∨ v27 ∨ v34 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v20 := by
      rcases c61 with a|a|a
      · exact absurd n3 a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v13 := by
      rcases c2339 with a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a u1
      · exact a
      · exact absurd n2 a
      · exact absurd a u4
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n5
  have c2624 : ¬v25 ∨ ¬v2 ∨ v9 ∨ ¬v15 ∨ ¬v16 ∨ v41 ∨ v43 ∨ v44 ∨ v45 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v17 := by
      rcases c58 with a|a|a
      · exact absurd n4 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd n4 a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v20 := by
      rcases c61 with a|a|a
      · exact absurd n4 a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v34 := by
      rcases c1362 with a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd n0 a
    have u7 : ¬v3 := by
      rcases c2623 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n9
    have u8 : v1 := by
      rcases c2598 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v13 := by
      rcases c2366 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u7
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact absurd u8 a
      · exact a
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a n9
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a u6
  have c2625 : ¬v2 ∨ v9 ∨ ¬v15 ∨ ¬v16 ∨ v23 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v17 := by
      rcases c58 with a|a|a
      · exact absurd n3 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd n3 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd n3 a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v20 := by
      rcases c61 with a|a|a
      · exact absurd n3 a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd n5 a
    have u8 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n5 a
      · exact a
    have u9 : v40 := by
      rcases c2608 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd n5 a
      · exact absurd a n6
    have u10 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v25 := by
      rcases c2624 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
    have u14 : v32 := by
      rcases c2580 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u13
      · exact a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u15 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v26 := by
      rcases c2390 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u15
    have u19 : ¬v24 := by
      rcases c311 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    rcases c2605 with a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a u19
    · exact absurd a u13
    · exact absurd a u18
    · exact absurd a u16
    · exact absurd a u12
    · exact absurd a u11
  have c2626 : v21 ∨ v9 ∨ ¬v13 ∨ v18 ∨ v25 ∨ v29 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : v47 := by
      rcases c2387 with a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n6
    have u10 : ¬v1 := by
      rcases c2474 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n12
    have u11 : v7 := by
      rcases c2321 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
    have u12 : ¬v6 := by
      rcases c32 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u11 a
    rcases c1930 with a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd u11 a
    · exact absurd a u2
    · exact absurd a u8
    · exact absurd a n11
    · exact absurd a n12
  have c2627 : v9 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v26 ∨ v30 ∨ v38 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v16 := by
      rcases c2622 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v17 := by
      rcases c58 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v2 := by
      rcases c2625 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd u6 a
      · exact absurd a n8
    have u9 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v20 := by
      rcases c61 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u6 a
    have u14 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u6 a
    have u15 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u6 a
    have u16 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u6 a
      · exact a
    have u17 : ¬v34 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd n2 a
    have u18 : ¬v29 := by
      rcases c2086 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u5
    have u19 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n9
    have u20 : ¬v37 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
    have u21 : v31 := by
      rcases c454 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
    have u22 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v42 := by
      rcases c2201 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a n9
    have u26 : ¬v41 := by
      rcases c2414 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u17
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a n8
      · exact absurd a n9
    have u27 : ¬v13 := by
      rcases c2626 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n0
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u23
      · exact absurd a n7
      · exact absurd a u25
      · exact absurd a n8
      · exact absurd a n9
    have u28 : v6 := by
      rcases c2476 with a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd a u27
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
    have u29 : ¬v7 := by
      rcases c768 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd a u27
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u22
      · exact absurd a n7
      · exact absurd a u13
    have u30 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u29
      · exact a
      · exact absurd a u23
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a u25
    have u31 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u30 a
    have u32 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u30 a
    have u33 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u30 a
    have u34 : ¬v1 := by
      rcases c1832 with a|a|a|a|a|a|a
      · exact absurd a u29
      · exact a
      · exact absurd a u8
      · exact absurd a u31
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n9
    have u35 : ¬v3 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd a n0
      · exact absurd a u33
      · exact absurd a u32
      · exact absurd a u15
      · exact absurd a u14
    rcases c435 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u34
    · exact absurd a u29
    · exact absurd u30 a
    · exact absurd a u33
    · exact absurd a u27
    · exact absurd a u31
    · exact absurd a n0
    · exact absurd a u35
    · exact absurd a u5
  have c2628 : v9 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v26 ∨ v38 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : v16 := by
      rcases c2622 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v17 := by
      rcases c58 with a|a|a
      · exact absurd u4 a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v2 := by
      rcases c2625 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u5 a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd u6 a
      · exact absurd a n7
    have u9 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd u4 a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd u4 a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v20 := by
      rcases c61 with a|a|a
      · exact absurd u4 a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u6 a
    have u14 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u6 a
    have u15 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u6 a
    have u16 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u6 a
      · exact a
    have u17 : ¬v34 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd n2 a
    have u18 : ¬v29 := by
      rcases c2086 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u3
    have u19 : v30 := by
      rcases c2627 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v42 := by
      rcases c2201 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd a n8
    have u24 : ¬v41 := by
      rcases c2414 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a n7
      · exact absurd a n8
    have u25 : ¬v13 := by
      rcases c2626 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n0
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a n6
      · exact absurd a u23
      · exact absurd a n7
      · exact absurd a n8
    have u26 : v6 := by
      rcases c2476 with a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u25
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
    have u27 : ¬v7 := by
      rcases c768 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a u25
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u22
      · exact absurd a n6
      · exact absurd a u13
    have u28 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u27
      · exact a
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u23
    have u29 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u28 a
    have u31 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u28 a
    have u32 : ¬v1 := by
      rcases c1832 with a|a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd a u8
      · exact absurd a u29
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n8
    have u33 : ¬v3 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd a n0
      · exact absurd a u31
      · exact absurd a u30
      · exact absurd a u15
      · exact absurd a u14
    rcases c435 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u32
    · exact absurd a u27
    · exact absurd u28 a
    · exact absurd a u31
    · exact absurd a u25
    · exact absurd a u29
    · exact absurd a n0
    · exact absurd a u33
    · exact absurd a u3
  have c2629 : v24 ∨ v2 ∨ ¬v6 ∨ v9 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v4 := by
      rcases c1741 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n16
    have u2 : ¬v3 := by
      rcases c25 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
    have u4 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n12
      · exact absurd a n10
    have u5 : v12 := by
      rcases c526 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n16
      · exact absurd a n15
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n8
      · exact a
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n4
    rcases c48 with a|a
    · exact absurd u4 a
    · exact absurd u5 a
  exact ⟨c2579, c2580, c2581, c2585, c2594, c2595, c2598, c2605, c2616, c2617, c2620, c2622, c2625, c2626, c2628, c2629⟩
