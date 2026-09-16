import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2050-2099 of the 2934-step refutation of ccase002: 128 core clauses and 72 earlier-derived ones give 16 more. -/
theorem CCase002_block041
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c14 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c16 : ¬v2 ∨ ¬v5 ∨ ¬v3)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v4 ∨ ¬v3)
    (c25 : ¬v6 ∨ ¬v3 ∨ ¬v4)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c27 : ¬v6 ∨ ¬v3 ∨ ¬v5)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c32 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c33 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c36 : ¬v8 ∨ ¬v9)
    (c37 : ¬v8 ∨ ¬v10)
    (c38 : ¬v8 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v14)
    (c42 : ¬v9 ∨ ¬v10)
    (c43 : ¬v9 ∨ ¬v11)
    (c44 : ¬v9 ∨ ¬v12)
    (c45 : ¬v9 ∨ ¬v13)
    (c46 : ¬v9 ∨ ¬v14)
    (c47 : ¬v11 ∨ ¬v10)
    (c48 : ¬v10 ∨ ¬v12)
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
    (c52 : ¬v11 ∨ ¬v13)
    (c53 : ¬v11 ∨ ¬v14)
    (c54 : ¬v12 ∨ ¬v13)
    (c55 : ¬v12 ∨ ¬v14)
    (c56 : ¬v14 ∨ ¬v13)
    (c58 : ¬v16 ∨ ¬v15 ∨ ¬v17)
    (c59 : ¬v16 ∨ ¬v15 ∨ ¬v18)
    (c60 : ¬v16 ∨ ¬v15 ∨ ¬v19)
    (c61 : ¬v16 ∨ ¬v15 ∨ ¬v20)
    (c62 : ¬v16 ∨ ¬v21 ∨ ¬v15)
    (c67 : ¬v15 ∨ ¬v19 ∨ ¬v18)
    (c77 : ¬v16 ∨ ¬v19 ∨ ¬v18)
    (c101 : ¬v22 ∨ ¬v24)
    (c102 : ¬v22 ∨ ¬v25)
    (c104 : ¬v22 ∨ ¬v27)
    (c105 : ¬v22 ∨ ¬v28)
    (c106 : ¬v23 ∨ ¬v24)
    (c109 : ¬v27 ∨ ¬v23)
    (c110 : ¬v28 ∨ ¬v23)
    (c111 : ¬v24 ∨ ¬v25)
    (c112 : ¬v26 ∨ ¬v24)
    (c113 : ¬v27 ∨ ¬v24)
    (c114 : ¬v28 ∨ ¬v24)
    (c115 : ¬v25 ∨ ¬v26)
    (c116 : ¬v25 ∨ ¬v27)
    (c117 : ¬v25 ∨ ¬v28)
    (c119 : ¬v28 ∨ ¬v26)
    (c120 : ¬v27 ∨ ¬v28)
    (c123 : ¬v31 ∨ ¬v29)
    (c125 : ¬v33 ∨ ¬v29)
    (c126 : ¬v34 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v35)
    (c128 : ¬v30 ∨ ¬v31)
    (c132 : ¬v35 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c134 : ¬v31 ∨ ¬v33)
    (c135 : ¬v31 ∨ ¬v34)
    (c136 : ¬v31 ∨ ¬v35)
    (c137 : ¬v32 ∨ ¬v33)
    (c138 : ¬v34 ∨ ¬v32)
    (c139 : ¬v32 ∨ ¬v35)
    (c140 : ¬v33 ∨ ¬v34)
    (c141 : ¬v35 ∨ ¬v33)
    (c142 : ¬v34 ∨ ¬v35)
    (c145 : ¬v39 ∨ ¬v36)
    (c146 : ¬v40 ∨ ¬v36)
    (c147 : ¬v41 ∨ ¬v36)
    (c149 : ¬v38 ∨ ¬v37)
    (c152 : ¬v41 ∨ ¬v37)
    (c153 : ¬v42 ∨ ¬v37)
    (c154 : ¬v38 ∨ ¬v39)
    (c155 : ¬v40 ∨ ¬v38)
    (c156 : ¬v41 ∨ ¬v38)
    (c157 : ¬v42 ∨ ¬v38)
    (c158 : ¬v39 ∨ ¬v40)
    (c159 : ¬v41 ∨ ¬v39)
    (c160 : ¬v42 ∨ ¬v39)
    (c161 : ¬v41 ∨ ¬v40)
    (c162 : ¬v42 ∨ ¬v40)
    (c163 : ¬v41 ∨ ¬v42)
    (c167 : ¬v47 ∨ ¬v43)
    (c172 : ¬v44 ∨ ¬v47)
    (c176 : ¬v45 ∨ ¬v47)
    (c179 : ¬v46 ∨ ¬v47)
    (c182 : ¬v47 ∨ ¬v48)
    (c183 : ¬v49 ∨ ¬v47)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c196 : v43 ∨ ¬v9 ∨ v19 ∨ v44 ∨ v17 ∨ v45 ∨ v8 ∨ v16 ∨ v12 ∨ v1 ∨ v11 ∨ v10 ∨ v5 ∨ v2)
    (c201 : ¬v21 ∨ v28 ∨ v14 ∨ v20 ∨ v8 ∨ v15 ∨ v22 ∨ v13)
    (c203 : ¬v10 ∨ v9 ∨ v4 ∨ v17 ∨ v18 ∨ v3 ∨ v11 ∨ v2)
    (c209 : ¬v21 ∨ v28 ∨ v8 ∨ v20 ∨ v27 ∨ v14 ∨ v15 ∨ v13)
    (c218 : v4 ∨ ¬v3 ∨ v45 ∨ v2 ∨ v44 ∨ v10 ∨ v46 ∨ v9)
    (c223 : ¬v47 ∨ v36 ∨ v40 ∨ v12 ∨ v4 ∨ v11 ∨ v1 ∨ v46 ∨ v41 ∨ v43 ∨ v5 ∨ v13 ∨ v48 ∨ v49)
    (c263 : ¬v42 ∨ v36 ∨ v43 ∨ v29 ∨ v48 ∨ v35 ∨ v41 ∨ v49)
    (c270 : v13 ∨ v12 ∨ v48 ∨ v49 ∨ v14 ∨ v7 ∨ v5 ∨ ¬v6)
    (c278 : v21 ∨ v13 ∨ v1 ∨ v20 ∨ v6 ∨ ¬v14 ∨ v8 ∨ v7)
    (c283 : v21 ∨ v6 ∨ v14 ∨ v20 ∨ v19 ∨ ¬v13 ∨ v7 ∨ v12)
    (c311 : ¬v24 ∨ v31 ∨ v18 ∨ v38 ∨ v30 ∨ v25 ∨ v17 ∨ v33 ∨ v19 ∨ v23 ∨ v26 ∨ v44 ∨ v45 ∨ v46)
    (c368 : ¬v18 ∨ v17 ∨ v24 ∨ v19 ∨ v12 ∨ v25 ∨ v11 ∨ v10)
    (c370 : ¬v18 ∨ v17 ∨ v25 ∨ v26 ∨ v19 ∨ v12 ∨ v11 ∨ v10)
    (c392 : v44 ∨ v11 ∨ v45 ∨ v2 ∨ v4 ∨ v46 ∨ ¬v3 ∨ v10)
    (c408 : ¬v47 ∨ v41 ∨ v46 ∨ v5 ∨ v39 ∨ v48 ∨ v6 ∨ v40)
    (c421 : ¬v10 ∨ v12 ∨ v44 ∨ v45 ∨ v46 ∨ v2 ∨ v17 ∨ v20 ∨ v6 ∨ v9 ∨ v11 ∨ v3 ∨ v13 ∨ v18)
    (c431 : ¬v31 ∨ v38 ∨ v24 ∨ v37 ∨ v32 ∨ v30 ∨ v23 ∨ v39)
    (c435 : v22 ∨ v27 ∨ v17 ∨ v21 ∨ v20 ∨ v1 ∨ v7 ∨ ¬v14 ∨ v10 ∨ v13 ∨ v8 ∨ v9 ∨ v3 ∨ v28)
    (c453 : ¬v4 ∨ v5 ∨ v45 ∨ v12 ∨ v3 ∨ v10 ∨ v11 ∨ v46)
    (c492 : ¬v47 ∨ v40 ∨ v2 ∨ v4 ∨ v41 ∨ v5 ∨ v37 ∨ v33 ∨ v34 ∨ v32 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c504 : v28 ∨ v20 ∨ v12 ∨ v5 ∨ v26 ∨ v13 ∨ v27 ∨ v7 ∨ v1 ∨ v8 ∨ ¬v6 ∨ v43 ∨ v48 ∨ v49)
    (c527 : ¬v47 ∨ v40 ∨ v2 ∨ v37 ∨ v13 ∨ v11 ∨ v5 ∨ v39 ∨ v12 ∨ v6 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c533 : v36 ∨ ¬v35 ∨ v42 ∨ v27 ∨ v34 ∨ v29 ∨ v28 ∨ v22)
    (c534 : v44 ∨ v43 ∨ v7 ∨ v14 ∨ v8 ∨ v2 ∨ ¬v1 ∨ v9)
    (c539 : v21 ∨ v23 ∨ v17 ∨ v18 ∨ v24 ∨ v7 ∨ v2 ∨ ¬v10 ∨ v11 ∨ v9 ∨ v14 ∨ v8 ∨ v3 ∨ v25)
    (c543 : ¬v41 ∨ v34 ∨ v49 ∨ v20 ∨ v19 ∨ v33 ∨ v48 ∨ v27 ∨ v42 ∨ v21 ∨ v29 ∨ v43 ∨ v40 ∨ v36)
    (c679 : ¬v6 ∨ ¬v11 ∨ v17 ∨ v21 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49)
    (c689 : v44 ∨ v4 ∨ v17 ∨ v18 ∨ v21 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v49)
    (c718 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v16 ∨ v17)
    (c742 : ¬v12 ∨ v4 ∨ v5 ∨ v13 ∨ v18 ∨ v19 ∨ v20)
    (c768 : ¬v7 ∨ ¬v6 ∨ v13 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c860 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c862 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v31 ∨ v32)
    (c873 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v39)
    (c877 : ¬v5 ∨ ¬v7 ∨ v8 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c891 : v6 ∨ v13 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c898 : ¬v28 ∨ v20 ∨ v21 ∨ v29 ∨ v34 ∨ v35)
    (c961 : ¬v11 ∨ v3 ∨ v4 ∨ v5 ∨ v17 ∨ v18)
    (c1001 : ¬v24 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20)
    (c1004 : ¬v9 ∨ v2 ∨ v3 ∨ v15 ∨ v16 ∨ v17)
    (c1150 : ¬v26 ∨ v29 ∨ v35 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1215 : v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v21 ∨ v22 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v28 ∨ v30 ∨ v31)
    (c1224 : ¬v34 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24)
    (c1283 : v35 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v28 ∨ v29 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1325 : ¬v2 ∨ ¬v7 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1337 : ¬v3 ∨ ¬v7 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46)
    (c1338 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v45 ∨ v46)
    (c1362 : ¬v34 ∨ v17 ∨ v18 ∨ ¬v25)
    (c1387 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ ¬v18 ∨ v22 ∨ v28)
    (c1448 : ¬v32 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24)
    (c1465 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v49)
    (c1469 : ¬v42 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v45 ∨ v48 ∨ v49)
    (c1470 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v39 ∨ v45)
    (c1494 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c1554 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v35 ∨ v41 ∨ v42)
    (c1559 : ¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41)
    (c1574 : v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1740 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v32)
    (c1741 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v39 ∨ v46)
    (c1757 : v20 ∨ v13 ∨ ¬v27 ∨ v33 ∨ v34 ∨ v35)
    (c1802 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34)
    (c1832 : v7 ∨ ¬v1 ∨ v2 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1833 : ¬v6 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1872 : v13 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26)
    (c1884 : ¬v34 ∨ v8 ∨ v13 ∨ v14 ∨ v17 ∨ v20 ∨ v21 ∨ v23 ∨ ¬v28)
    (c1930 : v6 ∨ v1 ∨ ¬v7 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c2017 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2066 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c2086 : ¬v29 ∨ v17 ∨ v18 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28)
    (c2107 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v18 ∨ v38 ∨ v45)
    (c2201 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c2233 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v49)
    (c2338 : ¬v6 ∨ ¬v3 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45)
    (c2354 : ¬v5 ∨ ¬v7 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c2377 : ¬v40 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v28 ∨ v49)
    (c2387 : v21 ∨ v47 ∨ v48 ∨ v49)
    (c2390 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v33)
    (c2391 : v47 ∨ v48 ∨ v49)
    (c2405 : ¬v38 ∨ ¬v32 ∨ v44 ∨ v45 ∨ v46)
    (c2414 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49)
    (c2422 : v4 ∨ v5 ∨ v6 ∨ v40 ∨ v46 ∨ ¬v47 ∨ v48)
    (c2464 : ¬v1 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46)
    (c2474 : ¬v1 ∨ ¬v4 ∨ v11 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c2476 : v41 ∨ v6 ∨ v13 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v48 ∨ v49)
    (c2490 : v46 ∨ v4 ∨ v11 ∨ ¬v16 ∨ v18 ∨ v26 ∨ ¬v30 ∨ v45)
    (c2493 : ¬v33 ∨ v18 ∨ v19 ∨ v26 ∨ v27 ∨ v34 ∨ v39 ∨ v40)
    (c2541 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v48 ∨ v49)
    (c2565 : v15 ∨ v9 ∨ v23 ∨ v48 ∨ v49)
    (c2581 : ¬v37 ∨ v29 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c2594 : v37 ∨ v31 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c2595 : ¬v38 ∨ v31 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c2598 : v3 ∨ v1 ∨ ¬v2 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2605 : ¬v32 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v38 ∨ v39)
    (c2622 : v16 ∨ v9 ∨ v23 ∨ v48 ∨ v49)
    (c2625 : ¬v2 ∨ v9 ∨ ¬v15 ∨ ¬v16 ∨ v23 ∨ ¬v47 ∨ v48)
    (c2626 : v21 ∨ v9 ∨ ¬v13 ∨ v18 ∨ v25 ∨ v29 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v42 ∨ v48 ∨ v49)
    (c2628 : v9 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v26 ∨ v38 ∨ v39 ∨ v48 ∨ v49)
    (c2629 : v24 ∨ v2 ∨ ¬v6 ∨ v9 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    : (v6 ∨ v7 ∨ v13 ∨ v14 ∨ v20 ∨ v21 ∨ v28 ∨ v36 ∨ v41 ∨ v42 ∨ v48 ∨ v49) ∧ (¬v10 ∨ v2 ∨ v3 ∨ v5 ∨ v17 ∨ v18 ∨ v20 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v3 ∨ ¬v7 ∨ v14 ∨ v43 ∨ v48 ∨ v49) ∧ (v9 ∨ v23 ∨ v48 ∨ v49) ∧ (¬v38 ∨ v4 ∨ v5 ∨ ¬v47 ∨ v48) ∧ (¬v24 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ ¬v18 ∨ v19) ∧ (¬v7 ∨ v17 ∨ v20 ∨ v23 ∨ v48 ∨ v49) ∧ (v4 ∨ ¬v3 ∨ v10 ∨ v11 ∨ v40 ∨ ¬v47 ∨ v48) ∧ (¬v18 ∨ v17 ∨ v19 ∨ v20 ∨ v23 ∨ v48 ∨ v49) ∧ (v19 ∨ v3 ∨ v17 ∨ v20 ∨ v23 ∨ v24 ∨ v48 ∨ v49) ∧ (¬v24 ∨ v17 ∨ v19 ∨ v20 ∨ v48 ∨ v49) ∧ (¬v42 ∨ ¬v3 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v47 ∨ v48) ∧ (v41 ∨ v6 ∨ v7 ∨ v13 ∨ v14 ∨ ¬v16 ∨ v20 ∨ ¬v27 ∨ v36 ∨ v42 ∨ v48 ∨ v49) ∧ (¬v41 ∨ v2 ∨ v5 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v47 ∨ v48) ∧ (v41 ∨ v5 ∨ v6 ∨ v7 ∨ v13 ∨ v14 ∨ ¬v16 ∨ v18 ∨ v19 ∨ v20 ∨ v39 ∨ v42 ∨ v48 ∨ v49) ∧ (v39 ∨ ¬v3 ∨ v7 ∨ ¬v9 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v48 ∨ v49) := by
  have c2630 : v13 ∨ v9 ∨ v23 ∨ v25 ∨ v26 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v16 := by
      rcases c2622 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v24 := by
      rcases c2628 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v20 := by
      rcases c61 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v17 := by
      rcases c58 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v2 := by
      rcases c2625 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd u5 a
      · exact absurd a n9
    have u11 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u12 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u5 a
    have u13 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u5 a
    have u15 : ¬v27 := by
      rcases c1802 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
    have u16 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a n5
    have u17 : ¬v32 := by
      rcases c2605 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
    have u18 : v11 := by
      rcases c2629 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd u16 a
      · exact absurd a n1
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u19 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a u4
    have u21 : v4 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a n1
    rcases c25 with a|a|a
    · exact absurd u16 a
    · exact absurd u20 a
    · exact absurd u21 a
  have c2631 : v21 ∨ v18 ∨ v19 ∨ v20 ∨ v23 ∨ v24 ∨ v26 ∨ v34 ∨ v38 ∨ v39 ∨ ¬v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd n10 a
      · exact a
    have u2 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd n10 a
      · exact a
    have u3 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd n10 a
      · exact a
    have u4 : ¬v27 := by
      rcases c1802 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
    have u5 : v47 := by
      rcases c2387 with a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v33 := by
      rcases c2493 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u3
    have u8 : v35 := by
      rcases c2414 with a|a|a|a|a|a|a
      · exact absurd n10 a
      · exact absurd a u7
      · exact absurd a n7
      · exact a
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u8 a
    rcases c543 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n10 a
    · exact absurd a n7
    · exact absurd a n12
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a n11
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a u1
  have c2632 : v9 ∨ v23 ∨ v25 ∨ v26 ∨ v34 ∨ v38 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v24 := by
      rcases c2628 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v16 := by
      rcases c2622 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v17 := by
      rcases c58 with a|a|a
      · exact absurd u2 a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd u2 a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd u2 a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v20 := by
      rcases c61 with a|a|a
      · exact absurd u2 a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u5 a
    have u13 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v41 := by
      rcases c2631 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u15 : v13 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n8
    have u16 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a u4
    have u21 : ¬v6 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u12
    have u22 : ¬v7 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u11
    rcases c283 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u21
    · exact absurd a u18
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd u15 a
    · exact absurd a u22
    · exact absurd a u16
  have c2633 : ¬v13 ∨ v1 ∨ v6 ∨ v19 ∨ v20 ∨ v21 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v47 := by
      rcases c2387 with a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v7 := by
      rcases c283 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd n0 a
      · exact a
      · exact absurd a u1
    have u5 : v43 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd u4 a
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    rcases c167 with a|a
    · exact absurd u3 a
    · exact absurd u5 a
  have c2634 : v1 ∨ v6 ∨ ¬v7 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v14 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
      · exact a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u2
    rcases c1494 with a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u3
  have c2635 : v26 ∨ v9 ∨ v11 ∨ v23 ∨ v25 ∨ v38 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v24 := by
      rcases c2628 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v16 := by
      rcases c2622 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v34 := by
      rcases c2632 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd u3 a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v20 := by
      rcases c61 with a|a|a
      · exact absurd u3 a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v17 := by
      rcases c58 with a|a|a
      · exact absurd u3 a
      · exact absurd u1 a
      · exact a
    have u11 : ¬v2 := by
      rcases c2625 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd u5 a
      · exact absurd a n7
    have u12 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd u3 a
      · exact absurd u1 a
      · exact a
    have u13 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u4 a
      · exact a
    have u15 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u4 a
      · exact a
    have u16 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u5 a
    have u17 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u5 a
    have u18 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u5 a
    have u19 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u5 a
      · exact a
    have u20 : v4 := by
      rcases c1741 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u16
    have u21 : ¬v6 := by
      rcases c2629 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u11
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
    have u22 : ¬v42 := by
      rcases c2201 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a n7
      · exact absurd a n8
    have u23 : ¬v1 := by
      rcases c2474 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n8
    have u24 : ¬v13 := by
      rcases c2633 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
    have u25 : ¬v28 := by
      rcases c1283 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact a
      · exact absurd a u13
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a n7
      · exact absurd a n8
    have u26 : ¬v7 := by
      rcases c2634 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u21
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u27 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u26
      · exact a
      · exact absurd a u14
      · exact absurd a u25
      · exact absurd a n8
      · exact absurd a u22
    have u28 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u27 a
    rcases c278 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u24
    · exact absurd a u23
    · exact absurd a u8
    · exact absurd a u21
    · exact absurd u27 a
    · exact absurd a u28
    · exact absurd a u26
  have c2636 : v48 ∨ v9 ∨ v23 ∨ v25 ∨ v26 ∨ v38 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v16 := by
      rcases c2622 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n7
    have u2 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n7
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
    have u4 : ¬v17 := by
      rcases c58 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v2 := by
      rcases c2625 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n0
    have u6 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v20 := by
      rcases c61 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
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
    have u12 : v11 := by
      rcases c2635 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u13 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v24 := by
      rcases c2628 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u18 : v3 := by
      rcases c1470 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u9
    have u19 : v4 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a n1
    have u20 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u19 a
    have u21 : v34 := by
      rcases c2632 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u22 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v28 := by
      rcases c1884 with a|a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n2
      · exact a
    have u25 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n7
    have u26 : v42 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a n7
      · exact a
    have u27 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u26 a
    rcases c263 with a|a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a u25
    · exact absurd a u11
    · exact absurd a u22
    · exact absurd a n0
    · exact absurd a u23
    · exact absurd a u27
    · exact absurd a n7
  have c2637 : v48 ∨ ¬v4 ∨ ¬v7 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v6 := by
      rcases c32 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v3 := by
      rcases c26 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
    have u5 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v10 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
    have u8 : v14 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd n2 a
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n8
    rcases c50 with a|a
    · exact absurd u7 a
    · exact absurd u8 a
  have c2638 : v39 ∨ v9 ∨ v23 ∨ v25 ∨ v38 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v26 := by
      rcases c2636 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v16 := by
      rcases c2622 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v17 := by
      rcases c58 with a|a|a
      · exact absurd u3 a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v2 := by
      rcases c2625 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u4 a
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a n5
    have u13 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd u3 a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd u3 a
      · exact absurd u4 a
      · exact a
    have u15 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u4 a
    have u16 : ¬v20 := by
      rcases c61 with a|a|a
      · exact absurd u3 a
      · exact absurd u4 a
      · exact a
    have u17 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
    have u18 : v33 := by
      rcases c2390 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u16
      · exact a
    have u19 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : ¬v42 := by
      rcases c1150 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u20
      · exact absurd a u22
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u24 : ¬v13 := by
      rcases c2626 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n1
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a n5
      · exact absurd a n6
    have u25 : v4 := by
      rcases c689 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n6
    have u26 : ¬v7 := by
      rcases c2637 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u25 a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u27 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u26
      · exact a
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u23
    have u28 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u27 a
    have u29 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u27 a
    have u31 : ¬v1 := by
      rcases c1832 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd a u12
      · exact absurd a u28
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
    have u32 : v3 := by
      rcases c1470 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u30
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u8
    have u33 : v6 := by
      rcases c278 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u24
      · exact absurd a u31
      · exact absurd a u16
      · exact a
      · exact absurd u27 a
      · exact absurd a u28
      · exact absurd a u26
    rcases c2338 with a|a|a|a|a|a|a
    · exact absurd u33 a
    · exact absurd u32 a
    · exact absurd a n1
    · exact absurd a u30
    · exact absurd a u29
    · exact absurd a u9
    · exact absurd a u8
  have c2639 : ¬v14 ∨ v2 ∨ v7 ∨ v17 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : v47 := by
      rcases c2387 with a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : v3 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u7
    have u11 : ¬v1 := by
      rcases c1832 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n11
    have u12 : ¬v6 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u7
    rcases c278 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a u11
    · exact absurd a n4
    · exact absurd a u12
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n2
  have c2640 : v8 ∨ v2 ∨ v3 ∨ v7 ∨ v9 ∨ ¬v10 ∨ v14 ∨ v17 ∨ v18 ∨ v21 ∨ v23 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n5 a
    rcases c539 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n11
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd n5 a
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n12
  have c2641 : ¬v10 ∨ v2 ∨ v3 ∨ v7 ∨ v9 ∨ v14 ∨ v17 ∨ v18 ∨ v21 ∨ v23 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd n0 a
    rcases c2640 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2642 : v14 ∨ v2 ∨ v3 ∨ v7 ∨ v9 ∨ v17 ∨ v18 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v10 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    rcases c2641 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2643 : v6 ∨ v7 ∨ v13 ∨ v14 ∨ v20 ∨ v21 ∨ v28 ∨ v36 ∨ v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v35 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n9
    have u2 : v22 := by
      rcases c2233 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
    have u3 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u2 a
      · exact a
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a u3
  have c2644 : v41 ∨ v1 ∨ ¬v3 ∨ ¬v4 ∨ v7 ∨ v14 ∨ v19 ∨ v20 ∨ v21 ∨ v36 ∨ v40 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v6 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u2 : ¬v13 := by
      rcases c2633 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v28 := by
      rcases c2643 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v34 := by
      rcases c2066 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n12
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a u5
  have c2645 : v41 ∨ v1 ∨ ¬v3 ∨ v7 ∨ v9 ∨ v14 ∨ v23 ∨ v36 ∨ v40 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v16 := by
      rcases c2622 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v17 := by
      rcases c58 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v20 := by
      rcases c61 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v2 := by
      rcases c2625 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd u3 a
      · exact absurd a n10
    have u9 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v4 := by
      rcases c2644 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : v10 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd n2 a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u11
      · exact a
      · exact absurd a u9
      · exact absurd a n4
    have u15 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : v5 := by
      rcases c223 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u12
      · exact a
      · exact absurd a u16
      · exact absurd a n10
      · exact absurd a n11
    have u20 : ¬v6 := by
      rcases c27 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u19 a
    have u21 : v28 := by
      rcases c2643 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u5
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u22 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v34 := by
      rcases c1884 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd u21 a
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u20
    · exact absurd a n10
    · exact absurd a u7
    · exact absurd a u22
    · exact absurd a n0
    · exact absurd a u23
  have c2646 : v7 ∨ v9 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v48 ∨ v49 := by
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
    have u2 : v16 := by
      rcases c2622 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v17 := by
      rcases c58 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v20 := by
      rcases c61 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v2 := by
      rcases c2625 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n6
    have u9 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : v39 := by
      rcases c2638 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v36 := by
      rcases c145 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v14 := by
      rcases c2639 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u19 : v3 := by
      rcases c2642 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u8
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
    have u20 : v1 := by
      rcases c2645 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd u19 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n7
    have u21 : v8 := by
      rcases c534 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u18
      · exact a
      · exact absurd a u8
      · exact absurd u20 a
      · exact absurd a n1
    have u22 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd u20 a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u21 a
      · exact a
    rcases c392 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u23
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u22
    · exact absurd a u9
    · exact absurd u19 a
    · exact absurd a u24
  have c2647 : v7 ∨ v9 ∨ v23 ∨ v25 ∨ v38 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v16 := by
      rcases c2622 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v17 := by
      rcases c58 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v20 := by
      rcases c61 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
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
    have u11 : v24 := by
      rcases c2646 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v34 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd u11 a
    have u17 : ¬v29 := by
      rcases c2086 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u14
    have u18 : v39 := by
      rcases c2636 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a n4
      · exact a
      · exact absurd a n6
    have u19 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
    have u20 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : v14 := by
      rcases c2233 with a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a n6
    have u24 : ¬v35 := by
      rcases c533 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u13
    have u25 : ¬v33 := by
      rcases c1559 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u22
    have u26 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u23 a
    have u28 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u23 a
      · exact a
    have u29 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u23 a
    have u30 : v6 := by
      rcases c891 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u25
      · exact absurd a u16
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a n5
    have u31 : ¬v3 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact absurd u30 a
      · exact a
      · exact absurd a n1
      · exact absurd a u29
      · exact absurd a u27
      · exact absurd a u9
      · exact absurd a u8
    have u32 : ¬v1 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd u30 a
      · exact a
      · exact absurd a u26
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
    rcases c435 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u32
    · exact absurd a n0
    · exact absurd u23 a
    · exact absurd a u29
    · exact absurd a u28
    · exact absurd a u26
    · exact absurd a n1
    · exact absurd a u31
    · exact absurd a u14
  have c2648 : ¬v14 ∨ v23 ∨ v25 ∨ v38 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v16 := by
      rcases c2622 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v7 := by
      rcases c2647 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd u8 a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v17 := by
      rcases c58 with a|a|a
      · exact absurd u8 a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v20 := by
      rcases c61 with a|a|a
      · exact absurd u8 a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd u8 a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u10 a
    have u17 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u10 a
    have u18 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u10 a
    have u19 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u10 a
      · exact a
    have u20 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u16
    have u21 : ¬v34 := by
      rcases c2107 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u17
    have u22 : v24 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u17
    have u23 : ¬v27 := by
      rcases c1802 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u21
    have u24 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u22 a
    have u27 : ¬v29 := by
      rcases c2086 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u24
      · exact absurd a n1
      · exact absurd a u26
      · exact absurd a u23
      · exact absurd a u25
    have u28 : v39 := by
      rcases c2636 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u26
      · exact absurd a n3
      · exact a
      · exact absurd a n5
    have u29 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a n5
    have u30 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u28 a
      · exact a
    have u31 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u28 a
    have u32 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u23
      · exact absurd a u31
      · exact absurd a u21
    have u33 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd u9 a
    have u34 : ¬v1 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd u32 a
      · exact a
      · exact absurd a u1
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a n5
    have u35 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd u9 a
    rcases c223 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u29
    · exact absurd a u30
    · exact absurd a u6
    · exact absurd a u35
    · exact absurd a u3
    · exact absurd a u34
    · exact absurd a u16
    · exact absurd a u31
    · exact absurd a u19
    · exact absurd a u33
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a n5
  have c2649 : ¬v10 ∨ v2 ∨ v3 ∨ v5 ∨ v17 ∨ v18 ∨ v20 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : v6 := by
      rcases c421 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n5
    have u7 : v4 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n1
    have u8 : v47 := by
      rcases c1574 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd u7 a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact a
    have u9 : ¬v7 := by
      rcases c32 with a|a|a
      · exact absurd u7 a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v49 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v48 := by
      rcases c182 with a|a
      · exact absurd u8 a
      · exact a
    rcases c270 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd u6 a
  have c2650 : v38 ∨ v2 ∨ v3 ∨ ¬v7 ∨ v13 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v23 ∨ v25 ∨ v40 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v14 := by
      rcases c2648 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
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
    have u7 : ¬v5 := by
      rcases c2354 with a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n14
    have u8 : ¬v10 := by
      rcases c2649 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u9 : v24 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a u4
    have u10 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : v6 := by
      rcases c2476 with a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n13
      · exact absurd a n14
    have u15 : ¬v29 := by
      rcases c2086 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u12
    have u16 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u14 a
    have u17 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd n3 a
    have u18 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n14
    have u19 : ¬v12 := by
      rcases c742 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v11 := by
      rcases c961 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
    rcases c223 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u18
    · exact absurd a n11
    · exact absurd a u19
    · exact absurd a u17
    · exact absurd a u20
    · exact absurd a u16
    · exact absurd a u3
    · exact absurd a n12
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a n13
    · exact absurd a n14
  have c2651 : ¬v3 ∨ ¬v7 ∨ v14 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v6 := by
      rcases c29 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v1 := by
      rcases c9 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c1930 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2652 : v38 ∨ v9 ∨ v23 ∨ v25 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v16 := by
      rcases c2622 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v17 := by
      rcases c58 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v20 := by
      rcases c61 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v2 := by
      rcases c2625 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n4
    have u10 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : v7 := by
      rcases c2647 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v14 := by
      rcases c2648 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v5 := by
      rcases c2354 with a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v3 := by
      rcases c2651 with a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v10 := by
      rcases c2649 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u19 : v24 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u11
    have u20 : ¬v34 := by
      rcases c2107 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u11
    have u21 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u19 a
    have u25 : ¬v29 := by
      rcases c2086 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u23
    have u26 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n5
    have u27 : v39 := by
      rcases c2636 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u24
      · exact absurd a n0
      · exact a
      · exact absurd a n5
    have u28 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : ¬v33 := by
      rcases c1559 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u28
      · exact absurd a u29
    have u31 : v13 := by
      rcases c2650 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd u14 a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u28
      · exact absurd a u29
      · exact absurd a n4
      · exact absurd a n5
    have u32 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u31 a
    have u33 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u31 a
    have u34 : ¬v4 := by
      rcases c453 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u32
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u33
      · exact absurd a u10
    have u35 : ¬v30 := by
      rcases c2490 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u34
      · exact absurd a u33
      · exact absurd u2 a
      · exact absurd a u8
      · exact absurd a u24
      · exact a
      · exact absurd a u11
    have u36 : v31 := by
      rcases c1215 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u33
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd u19 a
      · exact absurd a n3
      · exact absurd a u23
      · exact absurd a u35
      · exact a
    have u37 : ¬v37 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u35
      · exact absurd a u26
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u38 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u36 a
      · exact a
    rcases c492 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u28
    · exact absurd a u9
    · exact absurd a u34
    · exact absurd a u29
    · exact absurd a u16
    · exact absurd a u37
    · exact absurd a u30
    · exact absurd a u20
    · exact absurd a u38
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a n4
  have c2653 : v25 ∨ v9 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v16 := by
      rcases c2622 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v17 := by
      rcases c58 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v20 := by
      rcases c61 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : v38 := by
      rcases c2652 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v32 := by
      rcases c2405 with a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u19 : v31 := by
      rcases c2594 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd u13 a
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u20 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v26 := by
      rcases c2390 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u22
    have u25 : ¬v27 := by
      rcases c1802 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u23
    have u26 : ¬v28 := by
      rcases c898 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u21
    have u27 : ¬v13 := by
      rcases c2626 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
    have u28 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u25
      · exact absurd a u14
      · exact absurd a u23
    have u29 : ¬v7 := by
      rcases c768 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd a u27
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u9
    have u30 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u29
      · exact a
      · exact absurd a u21
      · exact absurd a u26
      · exact absurd a n4
      · exact absurd a u15
    have u31 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u30 a
    have u32 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u30 a
    have u33 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u30 a
    have u34 : ¬v1 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd a u31
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n4
    have u35 : v5 := by
      rcases c504 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u5
      · exact absurd a u33
      · exact a
      · exact absurd a u24
      · exact absurd a u27
      · exact absurd a u25
      · exact absurd a u29
      · exact absurd a u34
      · exact absurd a u31
      · exact absurd u28 a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
    have u36 : v4 := by
      rcases c1741 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u32
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u9
    rcases c30 with a|a|a
    · exact absurd u35 a
    · exact absurd u36 a
    · exact absurd u28 a
  have c2654 : v7 ∨ v2 ∨ ¬v6 ∨ v9 ∨ v11 ∨ v13 ∨ v17 ∨ v20 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n0
      · exact a
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n17
      · exact absurd a n13
    have u2 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v1 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
    have u5 : ¬v3 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n15
      · exact absurd a n16
    rcases c435 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a n11
  have c2655 : v13 ∨ v2 ∨ v9 ∨ v17 ∨ v18 ∨ v20 ∨ v21 ∨ v22 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n17
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n15
      · exact absurd a n12
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v11 := by
      rcases c679 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a u3
      · exact absurd a n18
    have u7 : v7 := by
      rcases c2654 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n18
    have u8 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u7 a
    have u9 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u1 a
    have u10 : ¬v10 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n1
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd a n14
    · exact absurd a n11
  have c2656 : v9 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
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
    have u5 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v15 := by
      rcases c2565 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u7 : v16 := by
      rcases c2622 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v17 := by
      rcases c58 with a|a|a
      · exact absurd u7 a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v20 := by
      rcases c61 with a|a|a
      · exact absurd u7 a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd u7 a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd u7 a
      · exact absurd u6 a
      · exact a
    have u13 : v25 := by
      rcases c2653 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u14 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : v32 := by
      rcases c1740 with a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u11
      · exact a
    have u20 : ¬v34 := by
      rcases c1362 with a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd u13 a
    have u21 : ¬v29 := by
      rcases c2086 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u17
    have u22 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u19 a
      · exact a
    have u25 : ¬v38 := by
      rcases c2405 with a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u26 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n3
    have u27 : ¬v41 := by
      rcases c2541 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u24
      · exact absurd a n2
      · exact absurd a n3
    have u28 : ¬v42 := by
      rcases c263 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd a u27
      · exact absurd a n3
    have u29 : ¬v2 := by
      rcases c2625 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u6 a
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n2
    have u30 : v13 := by
      rcases c2655 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a n2
      · exact absurd a n3
    have u31 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u30 a
    have u32 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u30 a
    have u33 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u30 a
    have u34 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u31
      · exact a
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u25
      · exact absurd a u23
    have u35 : v7 := by
      rcases c2233 with a|a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd a u32
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a n3
    rcases c1337 with a|a|a|a|a|a|a
    · exact absurd u34 a
    · exact absurd u35 a
    · exact absurd a n0
    · exact absurd a u31
    · exact absurd a u33
    · exact absurd a u3
    · exact absurd a u2
  have c2657 : v18 ∨ v3 ∨ v10 ∨ v17 ∨ v19 ∨ v23 ∨ v24 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v25 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n8
    have u2 : v31 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n7
      · exact a
    have u3 : v32 := by
      rcases c1740 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact a
    rcases c133 with a|a
    · exact absurd u2 a
    · exact absurd u3 a
  have c2658 : ¬v7 ∨ ¬v6 ∨ v17 ∨ v18 ∨ v19 ∨ v23 ∨ v38 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u3 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u4 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u5 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u6 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u7 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u1 a
      · exact a
    have u12 : v16 := by
      rcases c718 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u2
      · exact a
      · exact absurd a n2
    have u13 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u7 a
    have u15 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u7 a
    have u16 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u7 a
      · exact a
    have u17 : v24 := by
      rcases c2657 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a u14
    have u18 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u17 a
    have u23 : ¬v30 := by
      rcases c2490 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd u12 a
      · exact absurd a n3
      · exact absurd a u22
      · exact a
      · exact absurd a u14
    have u24 : ¬v29 := by
      rcases c2086 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u20
    have u25 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n9
    have u26 : v40 := by
      rcases c223 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u25
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
    have u27 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : v32 := by
      rcases c1741 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u27
      · exact absurd a u13
    have u29 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u28 a
    rcases c311 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u30
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a n2
    · exact absurd a u29
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u22
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u13
  have c2659 : v41 ∨ ¬v6 ∨ ¬v7 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v11 := by
      rcases c961 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
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
    have u9 : v38 := by
      rcases c2658 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v32 := by
      rcases c2405 with a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    rcases c1741 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u10
    · exact absurd a u6
  have c2660 : v20 ∨ ¬v7 ∨ v17 ∨ v18 ∨ v19 ∨ v23 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v5 := by
      rcases c877 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v3 := by
      rcases c2651 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v4 := by
      rcases c453 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u9
    have u15 : ¬v6 := by
      rcases c2659 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u16 : v40 := by
      rcases c2422 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u15
      · exact a
      · exact absurd a u9
      · exact absurd u2 a
      · exact absurd a n7
    have u17 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : v32 := by
      rcases c1741 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a u9
    have u20 : ¬v34 := by
      rcases c2107 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u10
    have u21 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : v27 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a u20
    rcases c1757 with a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd u23 a
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u22
  have c2661 : v18 ∨ ¬v7 ∨ v17 ∨ v19 ∨ v20 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v5 := by
      rcases c877 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v3 := by
      rcases c2651 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v4 := by
      rcases c453 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u9
    have u15 : v41 := by
      rcases c2660 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : v32 := by
      rcases c1741 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u9
    have u19 : ¬v34 := by
      rcases c2107 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u10
    have u20 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u18 a
      · exact a
    rcases c2541 with a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a n6
    · exact absurd a n7
  have c2662 : v18 ∨ ¬v7 ∨ v17 ∨ v20 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v5 := by
      rcases c877 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v3 := by
      rcases c2651 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v4 := by
      rcases c453 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u9
    have u16 : v19 := by
      rcases c2661 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : v26 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd u16 a
      · exact absurd a n3
      · exact a
    have u18 : ¬v24 := by
      rcases c1001 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd u16 a
      · exact absurd a n3
    have u19 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u10
    have u21 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v32 := by
      rcases c2405 with a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a u21
    · exact absurd a u19
    · exact absurd a u22
  have c2663 : ¬v19 ∨ v2 ∨ v3 ∨ ¬v9 ∨ v17 ∨ ¬v18 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n5 a
    have u2 : ¬v16 := by
      rcases c77 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n5 a
    rcases c1004 with a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n4
  have c2664 : ¬v38 ∨ v4 ∨ v5 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v49 := by
      rcases c183 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd n3 a
    have u8 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n3 a
      · exact a
    have u9 : v31 := by
      rcases c2594 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u10 : ¬v32 := by
      rcases c2405 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u11 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd n0 a
    have u14 : v6 := by
      rcases c2422 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd n3 a
      · exact absurd a n4
    have u15 : v2 := by
      rcases c492 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u13
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
    have u16 : ¬v1 := by
      rcases c4 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v3 := by
      rcases c17 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v7 := by
      rcases c23 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u14 a
    have u19 : v9 := by
      rcases c2598 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd u15 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u20 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u19 a
      · exact a
    rcases c270 with a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u20
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u21
    · exact absurd a u18
    · exact absurd a n2
    · exact absurd u14 a
  have c2665 : ¬v24 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ ¬v18 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n0 a
    rcases c370 with a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n1
  have c2666 : ¬v7 ∨ v17 ∨ v20 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v5 := by
      rcases c877 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v3 := by
      rcases c2651 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v2 := by
      rcases c1325 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
    have u16 : v18 := by
      rcases c2662 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v4 := by
      rcases c453 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u9
    have u18 : ¬v38 := by
      rcases c2664 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd u2 a
      · exact absurd a n4
    have u19 : ¬v19 := by
      rcases c2663 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd u16 a
    have u20 : ¬v24 := by
      rcases c2665 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd u16 a
      · exact absurd a u19
    have u21 : ¬v42 := by
      rcases c1469 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
    have u22 : v31 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u18
      · exact a
    have u23 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u22 a
      · exact a
    have u27 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u22 a
      · exact a
    have u28 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u22 a
      · exact a
    have u29 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n5
    have u30 : ¬v41 := by
      rcases c2414 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u26
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a n5
    have u31 : ¬v37 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u29
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u32 : v40 := by
      rcases c492 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u30
      · exact absurd a u13
      · exact absurd a u31
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u25
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
    have u33 : v39 := by
      rcases c431 with a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u31
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a n3
      · exact a
    rcases c158 with a|a
    · exact absurd u33 a
    · exact absurd u32 a
  have c2667 : v4 ∨ ¬v3 ∨ v10 ∨ v11 ∨ v40 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : v2 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n2
    have u5 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd u4 a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n1 a
    rcases c2422 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd n5 a
    · exact absurd a n6
  have c2668 : v49 ∨ ¬v3 ∨ ¬v9 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v20 ∨ v40 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n0
    have u6 : ¬v24 := by
      rcases c2665 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
    have u7 : v25 := by
      rcases c368 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u1
      · exact a
      · exact absurd a u3
      · exact absurd a u2
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
    have u11 : v4 := by
      rcases c2667 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd u5 a
      · exact absurd a n8
    have u12 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n1 a
    have u16 : ¬v6 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u11 a
    have u17 : ¬v2 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u11 a
    have u18 : v41 := by
      rcases c2476 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a n0
    have u19 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd u18 a
      · exact a
    rcases c527 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n7
    · exact absurd a u17
    · exact absurd a u19
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u15
    · exact absurd a u20
    · exact absurd a u1
    · exact absurd a u16
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n8
  have c2669 : ¬v18 ∨ v17 ∨ v19 ∨ v20 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v7 := by
      rcases c2666 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v24 := by
      rcases c2665 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
    have u13 : v25 := by
      rcases c368 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u4
      · exact a
      · exact absurd a u8
      · exact absurd a u5
    have u14 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v21 := by
      rcases c1387 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd n0 a
      · exact absurd a u14
      · exact absurd a u16
    have u18 : ¬v40 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n6
    have u19 : ¬v3 := by
      rcases c2668 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a n5
    have u20 : ¬v34 := by
      rcases c1338 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u21 : ¬v42 := by
      rcases c1469 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    have u22 : v35 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u7
      · exact a
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a u21
    have u23 : v41 := by
      rcases c1465 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u20
      · exact a
      · exact absurd a n6
    have u24 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u23 a
      · exact a
    rcases c533 with a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd u22 a
    · exact absurd a u21
    · exact absurd a u15
    · exact absurd a u20
    · exact absurd a u24
    · exact absurd a u16
    · exact absurd a u14
  have c2670 : v7 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ ¬v38 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd n9 a
      · exact a
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
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
    have u7 : v31 := by
      rcases c2595 with a|a|a|a|a|a
      · exact absurd n9 a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u8 : ¬v32 := by
      rcases c2405 with a|a|a|a|a
      · exact absurd n9 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u9 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v25 := by
      rcases c1740 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u8
    have u13 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u8
    have u14 : ¬v27 := by
      rcases c1757 with a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n3
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
    have u15 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u11
    have u16 : v5 := by
      rcases c270 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd u15 a
    rcases c30 with a|a|a
    · exact absurd u16 a
    · exact absurd u13 a
    · exact absurd u15 a
  have c2671 : v19 ∨ v3 ∨ v17 ∨ v20 ∨ v23 ∨ v24 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v7 := by
      rcases c2666 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v18 := by
      rcases c2669 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v38 := by
      rcases c2670 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u12 : v31 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u11
      · exact a
    have u13 : v25 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u10
    have u14 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u12 a
      · exact a
    rcases c1740 with a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u14
  have c2672 : v48 ∨ v17 ∨ v19 ∨ v20 ∨ v23 ∨ ¬v24 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v18 := by
      rcases c2669 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
    have u2 : ¬v34 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd n5 a
    have u3 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
    have u4 : ¬v7 := by
      rcases c2666 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
    have u5 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n5 a
    have u8 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n5 a
    have u9 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
    have u10 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u3 a
      · exact a
    have u15 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u3 a
      · exact a
    have u16 : ¬v29 := by
      rcases c2086 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u7
    have u17 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u9 a
    have u18 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u9 a
    have u19 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u9 a
    have u20 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u9 a
      · exact a
    have u21 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a n7
    have u22 : ¬v35 := by
      rcases c533 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u6
    have u23 : v21 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n6
    have u24 : v15 := by
      rcases c209 with a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u13
      · exact a
      · exact absurd a u15
    have u25 : ¬v16 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u24 a
    have u26 : ¬v32 := by
      rcases c1448 with a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd n5 a
    have u27 : v31 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u25
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n4
      · exact a
      · exact absurd a u26
    have u28 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v41 := by
      rcases c2414 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u2
      · exact absurd a u22
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u30 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u29
      · exact absurd a u2
    have u31 : ¬v1 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd u30 a
      · exact a
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a n7
    have u32 : v5 := by
      rcases c270 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u4
      · exact a
      · exact absurd u30 a
    have u33 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd u32 a
      · exact a
      · exact absurd u30 a
    have u34 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd u30 a
    have u35 : ¬v3 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u34
      · exact absurd a u33
      · exact absurd a u17
      · exact a
      · exact absurd a u11
    rcases c718 with a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u31
    · exact absurd a u34
    · exact absurd a u35
    · exact absurd a u25
    · exact absurd a n1
  have c2673 : ¬v24 ∨ v17 ∨ v19 ∨ v20 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v18 := by
      rcases c2669 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v29 := by
      rcases c2086 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u3
    have u10 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n5
    have u15 : v42 := by
      rcases c2672 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd n0 a
      · exact a
      · exact absurd a n5
    have u16 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : v35 := by
      rcases c263 with a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a n4
      · exact a
      · exact absurd a u16
      · exact absurd a n5
    have u21 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
    have u22 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u20 a
    rcases c311 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u23
    · exact absurd a u7
    · exact absurd a u19
    · exact absurd a u22
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a u21
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u10
  have c2674 : ¬v42 ∨ ¬v3 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd n6 a
    have u7 : v4 := by
      rcases c2667 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd n6 a
      · exact absurd a n7
    have u8 : ¬v2 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u7 a
    have u9 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n1 a
    have u10 : ¬v6 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u7 a
    rcases c527 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a u1
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n7
  have c2675 : v41 ∨ v6 ∨ v7 ∨ v13 ∨ v14 ∨ ¬v16 ∨ v20 ∨ ¬v27 ∨ v36 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v21 := by
      rcases c2643 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v15 := by
      rcases c62 with a|a|a
      · exact absurd n5 a
      · exact absurd u5 a
      · exact a
    rcases c201 with a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a n3
  have c2676 : ¬v41 ∨ v2 ∨ v5 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd n7 a
    have u5 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd n7 a
    have u6 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd n7 a
    rcases c527 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n8
  have c2677 : v41 ∨ v5 ∨ v6 ∨ v7 ∨ v13 ∨ v14 ∨ ¬v16 ∨ v18 ∨ v19 ∨ v20 ∨ v39 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v40 := by
      rcases c408 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n2
      · exact a
    have u6 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v27 := by
      rcases c2675 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n9
      · exact a
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : v34 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a n0
      · exact a
    have u9 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v26 := by
      rcases c2390 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u10
    have u14 : v28 := by
      rcases c1554 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u13
      · exact absurd a u7
      · exact a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n11
    have u15 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n12
      · exact absurd a n13
    have u19 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a u17
      · exact absurd a u12
    have u24 : ¬v1 := by
      rcases c2464 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u2
    have u25 : v15 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd a u24
      · exact a
      · exact absurd a u4
      · exact absurd a u16
    have u26 : ¬v17 := by
      rcases c58 with a|a|a
      · exact absurd n6 a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd u25 a
    rcases c1884 with a|a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u21
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u26
    · exact absurd a n9
    · exact absurd a u27
    · exact absurd a u15
    · exact absurd u14 a
  have c2678 : v20 ∨ ¬v3 ∨ ¬v4 ∨ v7 ∨ ¬v9 ∨ v17 ∨ v18 ∨ v19 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v6 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v2 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u4 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u5 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd n4 a
    have u8 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd n4 a
      · exact a
    have u9 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd n4 a
      · exact a
    have u10 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd n4 a
      · exact a
    have u11 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v41 := by
      rcases c2676 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd u11 a
      · exact absurd a n9
    have u13 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v42 := by
      rcases c2674 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd u11 a
      · exact absurd a n9
    have u17 : ¬v16 := by
      rcases c2677 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u8
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u16
      · exact absurd a n9
      · exact absurd a n10
    rcases c196 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd n4 a
    · exact absurd a n7
    · exact absurd a u14
    · exact absurd a n5
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd a u17
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u3
  have c2679 : v39 ∨ ¬v3 ∨ v7 ∨ ¬v9 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
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
    have u8 : ¬v4 := by
      rcases c2678 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u9 : v40 := by
      rcases c2667 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd u4 a
      · exact absurd a n8
    have u10 : v32 := by
      rcases c1741 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u5
    have u11 : v2 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u6
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd a u1
    have u12 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd u11 a
      · exact absurd n1 a
      · exact a
    have u17 : ¬v27 := by
      rcases c1757 with a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u3
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u16
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd a u15
  exact ⟨c2643, c2649, c2651, c2656, c2664, c2665, c2666, c2667, c2669, c2671, c2673, c2674, c2675, c2676, c2677, c2679⟩
