import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1800-1849 of the 2915-step refutation of ccase001: 121 core clauses and 51 earlier-derived ones give 17 more. -/
theorem CCase001_block036
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v1 ∨ ¬v2 ∨ ¬v6)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c12 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v7)
    (c15 : ¬v1 ∨ ¬v6 ∨ ¬v7)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v6)
    (c22 : ¬v4 ∨ ¬v2 ∨ ¬v7)
    (c31 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c34 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c39 : ¬v8 ∨ ¬v9 ∨ ¬v10)
    (c44 : ¬v8 ∨ ¬v10 ∨ ¬v11)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c46 : ¬v8 ∨ ¬v13 ∨ ¬v10)
    (c47 : ¬v8 ∨ ¬v14 ∨ ¬v10)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
    (c57 : ¬v9 ∨ ¬v14 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c60 : ¬v14 ∨ ¬v9 ∨ ¬v11)
    (c62 : ¬v14 ∨ ¬v9 ∨ ¬v12)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c69 : ¬v14 ∨ ¬v13 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c90 : ¬v16 ∨ ¬v21)
    (c94 : ¬v17 ∨ ¬v21)
    (c97 : ¬v18 ∨ ¬v21)
    (c99 : ¬v21 ∨ ¬v19)
    (c100 : ¬v20 ∨ ¬v21)
    (c102 : ¬v22 ∨ ¬v23)
    (c103 : ¬v22 ∨ ¬v24)
    (c104 : ¬v22 ∨ ¬v25)
    (c105 : ¬v22 ∨ ¬v26)
    (c106 : ¬v22 ∨ ¬v27)
    (c107 : ¬v22 ∨ ¬v28)
    (c112 : ¬v28 ∨ ¬v23)
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
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c148 : ¬v39 ∨ ¬v36)
    (c149 : ¬v40 ∨ ¬v36)
    (c150 : ¬v36 ∨ ¬v41)
    (c153 : ¬v39 ∨ ¬v37)
    (c154 : ¬v40 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c164 : ¬v40 ∨ ¬v41)
    (c165 : ¬v42 ∨ ¬v40)
    (c171 : ¬v47 ∨ ¬v43)
    (c176 : ¬v47 ∨ ¬v44)
    (c177 : ¬v48 ∨ ¬v44)
    (c180 : ¬v45 ∨ ¬v47)
    (c183 : ¬v46 ∨ ¬v47)
    (c184 : ¬v48 ∨ ¬v46)
    (c185 : ¬v49 ∨ ¬v46)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c222 : v6 ∨ v13 ∨ v33 ∨ v31 ∨ v45 ∨ v12 ∨ v3 ∨ v11 ∨ v5 ∨ v39 ∨ ¬v4 ∨ v32 ∨ v46 ∨ v48)
    (c226 : v9 ∨ v2 ∨ v4 ∨ v46 ∨ v10 ∨ ¬v3 ∨ v44 ∨ v45)
    (c232 : v4 ∨ v9 ∨ v17 ∨ v16 ∨ v18 ∨ v3 ∨ ¬v10 ∨ v11)
    (c256 : ¬v32 ∨ v39 ∨ v33 ∨ v26 ∨ v38 ∨ v31 ∨ v25 ∨ v24)
    (c268 : ¬v47 ∨ v40 ∨ v6 ∨ v46 ∨ v41 ∨ v5 ∨ v4 ∨ v48)
    (c283 : v7 ∨ ¬v6 ∨ v49 ∨ v48 ∨ v14 ∨ v12 ∨ v13 ∨ v5)
    (c331 : ¬v21 ∨ v28 ∨ v41 ∨ v13 ∨ v15 ∨ v35 ∨ v20 ∨ v19 ∨ v14 ∨ v26 ∨ v12 ∨ v36 ∨ v22 ∨ v42)
    (c354 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v19 ∨ ¬v11 ∨ v4 ∨ v18)
    (c373 : v43 ∨ ¬v1 ∨ v2 ∨ v44 ∨ v49 ∨ v8 ∨ v7 ∨ v14)
    (c380 : ¬v47 ∨ v40 ∨ v6 ∨ v46 ∨ v4 ∨ v39 ∨ v5 ∨ v48)
    (c389 : v15 ∨ ¬v9 ∨ v16 ∨ v8 ∨ v17 ∨ v10 ∨ v2 ∨ v1)
    (c397 : v22 ∨ v15 ∨ v31 ∨ v30 ∨ v16 ∨ ¬v23 ∨ v24 ∨ v17)
    (c415 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ v44 ∨ v3 ∨ ¬v2 ∨ v8)
    (c418 : ¬v8 ∨ v20 ∨ v16 ∨ v7 ∨ v35 ∨ v15 ∨ v14 ∨ v1 ∨ v6 ∨ v29 ∨ v9 ∨ v13 ∨ v30 ∨ v22)
    (c423 : v36 ∨ v22 ∨ v37 ∨ ¬v29 ∨ v23 ∨ v35 ∨ v42 ∨ v30)
    (c428 : v10 ∨ v3 ∨ v16 ∨ v17 ∨ v2 ∨ v8 ∨ ¬v9 ∨ v15)
    (c433 : ¬v3 ∨ v11 ∨ v44 ∨ v10 ∨ v4 ∨ v45 ∨ v46 ∨ v2)
    (c453 : ¬v47 ∨ v40 ∨ v6 ∨ v46 ∨ v5 ∨ v39 ∨ v41 ∨ v48)
    (c454 : ¬v47 ∨ v36 ∨ v6 ∨ v32 ∨ v1 ∨ v46 ∨ v34 ∨ v33 ∨ v5 ∨ v39 ∨ v43 ∨ v40 ∨ v48 ∨ v49)
    (c495 : v29 ∨ ¬v22 ∨ v30 ∨ v35 ∨ v28 ∨ v23 ∨ v15 ∨ v16)
    (c509 : v12 ∨ v10 ∨ v46 ∨ v3 ∨ v5 ∨ v45 ∨ v11 ∨ ¬v4)
    (c513 : v43 ∨ v49 ∨ v44 ∨ v2 ∨ v8 ∨ v7 ∨ v9 ∨ ¬v1)
    (c525 : v12 ∨ v19 ∨ v5 ∨ v18 ∨ v17 ∨ ¬v11 ∨ v10 ∨ v4)
    (c539 : v36 ∨ ¬v34 ∨ v27 ∨ v41 ∨ v13 ∨ v22 ∨ v29 ∨ v12 ∨ v35 ∨ v26 ∨ v33 ∨ v20 ∨ v42 ∨ v14)
    (c548 : ¬v21 ∨ v28 ∨ v19 ∨ v8 ∨ v25 ∨ v11 ∨ v18 ∨ v15 ∨ v6 ∨ v20 ∨ v1 ∨ v27 ∨ v7 ∨ v14)
    (c549 : ¬v39 ∨ v32 ∨ v45 ∨ v38 ∨ v44 ∨ v37 ∨ v46 ∨ v25 ∨ v30 ∨ v40 ∨ v18 ∨ v19 ∨ v17 ∨ v33)
    (c634 : v20 ∨ ¬v4 ∨ ¬v5 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v27 ∨ v30 ∨ v31 ∨ v34 ∨ v37 ∨ v38 ∨ v41 ∨ v44 ∨ v45 ∨ v48)
    (c697 : ¬v28 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38)
    (c850 : ¬v25 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c897 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c906 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v29 ∨ v30)
    (c996 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v32 ∨ v33)
    (c1000 : v31 ∨ v37 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c1017 : v20 ∨ v6 ∨ v13 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c1020 : ¬v21 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12)
    (c1023 : ¬v26 ∨ v19 ∨ v32 ∨ v33 ∨ v34)
    (c1028 : ¬v27 ∨ v20 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c1035 : ¬v30 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46)
    (c1095 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c1111 : v17 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v45)
    (c1259 : ¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v45 ∨ v46)
    (c1262 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v30 ∨ v31)
    (c1271 : ¬v22 ∨ v4 ∨ v10 ∨ v11 ∨ v32 ∨ v39 ∨ v46)
    (c1422 : v35 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1429 : ¬v5 ∨ ¬v1 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v19 ∨ v43 ∨ v49)
    (c1443 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v32 ∨ v33)
    (c1447 : ¬v31 ∨ v23 ∨ v24 ∨ v37 ∨ v38 ∨ v39)
    (c1452 : ¬v3 ∨ ¬v1 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v19 ∨ v43 ∨ v49)
    (c1465 : ¬v27 ∨ v20 ∨ v33 ∨ v34 ∨ v35)
    (c1529 : ¬v35 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v42)
    (c1578 : v25 ∨ v4 ∨ v11 ∨ v18 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c1581 : ¬v25 ∨ v7 ∨ v13 ∨ v14 ∨ v36 ∨ v41 ∨ v42 ∨ v49)
    (c1595 : v23 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v25 ∨ v38 ∨ v39 ∨ v45)
    (c1629 : ¬v1 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v14 ∨ v43 ∨ v49)
    (c1643 : ¬v5 ∨ ¬v4 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v16 ∨ v17 ∨ v18)
    (c1647 : v18 ∨ ¬v1 ∨ v3 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v16 ∨ v17)
    (c1705 : ¬v21 ∨ v8 ∨ v14 ∨ v22 ∨ ¬v24)
    (c1708 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1709 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v44 ∨ v49)
    (c1739 : ¬v34 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v39 ∨ v46)
    (c1811 : ¬v13 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v9 ∨ v20)
    (c1823 : ¬v30 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46)
    (c1915 : ¬v4 ∨ ¬v1 ∨ v8 ∨ ¬v13 ∨ v43 ∨ v44 ∨ v49)
    (c2006 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44)
    (c2015 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v33 ∨ v39 ∨ v46)
    (c2059 : ¬v33 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v49)
    (c2091 : v31 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v22 ∨ v29 ∨ v35 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c2184 : ¬v21 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v43 ∨ v44 ∨ v45)
    (c2194 : v30 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v17 ∨ v36 ∨ v37 ∨ v41 ∨ v42 ∨ v44)
    (c2249 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2297 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2298 : v17 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2344 : ¬v32 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2367 : ¬v29 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2412 : ¬v22 ∨ v8 ∨ v13 ∨ v14 ∨ v20 ∨ ¬v21)
    (c2425 : v47 ∨ v48 ∨ v49)
    (c2428 : v13 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v23 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v48 ∨ v49)
    : (¬v39 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v33 ∨ v44 ∨ v45 ∨ v46) ∧ (v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v38 ∨ v31 ∨ v37 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v32 ∨ v3 ∨ v10 ∨ v16 ∨ v17 ∨ v18 ∨ v43 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v33 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v3 ∨ ¬v1 ∨ v8 ∨ ¬v10 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v39 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v47 ∨ v48) ∧ (v33 ∨ v12 ∨ v13 ∨ v14 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v29 ∨ ¬v34 ∨ v36 ∨ v41 ∨ v42) ∧ (¬v1 ∨ ¬v4 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v49) ∧ (v9 ∨ ¬v4 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45 ∨ v49) ∧ (v8 ∨ v15 ∨ ¬v21 ∨ v48 ∨ v49) ∧ (¬v32 ∨ v15 ∨ v16 ∨ ¬v22) ∧ (v29 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v22 ∨ v35 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v6 ∨ ¬v4 ∨ v5 ∨ v12 ∨ v13 ∨ v14 ∨ v48 ∨ v49) ∧ (¬v30 ∨ ¬v4 ∨ v5 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ v19 ∨ v20 ∨ v39 ∨ v48 ∨ v49) ∧ (v33 ∨ v20 ∨ ¬v27 ∨ v34 ∨ v35) ∧ (¬v10 ∨ v15 ∨ ¬v21 ∨ v48 ∨ v49) := by
  have c2429 : ¬v11 ∨ v8 ∨ ¬v13 ∨ ¬v21 ∨ v23 ∨ v30 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u2 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u3 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u4 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : v2 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c2184 with a|a|a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd u5 a
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2430 : ¬v29 ∨ v8 ∨ v15 ∨ ¬v21 ∨ v22 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n3 a
    have u8 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n3 a
      · exact a
    have u9 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n3 a
    have u10 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n3 a
    have u11 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n3 a
    have u12 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v24 := by
      rcases c1262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u6
    have u14 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u2
    have u15 : ¬v25 := by
      rcases c850 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u16 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u12 a
    have u19 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u12 a
    have u20 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u19
    have u22 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u18
    have u23 : ¬v27 := by
      rcases c1465 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
    have u24 : ¬v23 := by
      rcases c397 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u7
      · exact a
      · exact absurd a u13
      · exact absurd a u10
    have u25 : v36 := by
      rcases c423 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd n0 a
      · exact absurd a u24
      · exact absurd a u3
      · exact absurd a u20
      · exact absurd a u1
    have u26 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u25 a
    have u29 : v13 := by
      rcases c2428 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u26
      · exact absurd a n5
      · exact absurd a n6
    have u30 : ¬v11 := by
      rcases c2429 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u29 a
      · exact absurd n3 a
      · exact absurd a u24
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u19
    have u31 : v4 := by
      rcases c1578 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u30
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u18
    have u32 : ¬v1 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact absurd u31 a
      · exact a
      · exact absurd a n1
      · exact absurd u29 a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n6
    have u33 : ¬v5 := by
      rcases c634 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u31 a
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd a u23
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u26
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a n5
    have u34 : v6 := by
      rcases c453 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u28
      · exact a
      · exact absurd a u18
      · exact absurd a u33
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a n5
    have u35 : ¬v2 := by
      rcases c21 with a|a|a
      · exact absurd u31 a
      · exact a
      · exact absurd u34 a
    have u36 : v9 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u35
      · exact a
      · exact absurd a u7
      · exact absurd a u24
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u19
    have u37 : v10 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u36 a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u10
      · exact a
      · exact absurd a u35
      · exact absurd a u32
    rcases c56 with a|a|a
    · exact absurd u36 a
    · exact absurd u29 a
    · exact absurd u37 a
  have c2431 : ¬v10 ∨ ¬v1 ∨ v8 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v18 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v9 := by
      rcases c56 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u2 : ¬v11 := by
      rcases c65 with a|a|a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v14 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u4 : v3 := by
      rcases c1647 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v7 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact a
    have u7 : v44 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd a u6
      · exact a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u3
    have u8 : ¬v48 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v47 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u7 a
    rcases c2425 with a|a|a
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n8
  have c2432 : ¬v3 ∨ ¬v1 ∨ v4 ∨ v10 ∨ ¬v13 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : v9 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v11 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
    rcases c59 with a|a|a
    · exact absurd u2 a
    · exact absurd u3 a
    · exact absurd n4 a
  have c2433 : ¬v39 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v33 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v30 := by
      rcases c1035 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
    rcases c549 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n6
  have c2434 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v39 := by
      rcases c2015 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n6
      · exact a
      · exact absurd a n10
    have u3 : ¬v25 := by
      rcases c996 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n6
    rcases c2433 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2435 : ¬v38 ∨ v31 ∨ v37 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1000 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2436 : ¬v32 ∨ v3 ∨ v10 ∨ v16 ∨ v17 ∨ v18 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v38 := by
      rcases c2435 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v24 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n4
      · exact a
      · exact absurd a u1
    rcases c1262 with a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u1
  have c2437 : ¬v33 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
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
    have u4 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v38 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact a
      · exact absurd a n6
    have u6 : v46 := by
      rcases c2435 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
    have u7 : ¬v49 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v48 := by
      rcases c184 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u6 a
      · exact a
    rcases c2425 with a|a|a
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u7
  have c2438 : ¬v13 ∨ ¬v1 ∨ v8 ∨ ¬v21 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v4 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
    have u2 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v10 := by
      rcases c2431 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n8
    have u8 : ¬v3 := by
      rcases c2432 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v26 := by
      rcases c1443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
    have u12 : ¬v25 := by
      rcases c996 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u13 : ¬v39 := by
      rcases c2433 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : v11 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u13
    have u15 : v12 := by
      rcases c1020 with a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd u14 a
      · exact a
    rcases c70 with a|a|a
    · exact absurd u15 a
    · exact absurd n0 a
    · exact absurd u14 a
  have c2439 : ¬v1 ∨ v3 ∨ ¬v4 ∨ v8 ∨ v10 ∨ v15 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v9 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a n5
    rcases c513 with a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n9
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd n0 a
  have c2440 : v48 ∨ v3 ∨ v8 ∨ v10 ∨ v15 ∨ ¬v21 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v29 := by
      rcases c2430 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u7 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
    have u8 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : v1 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n7
    have u13 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    have u14 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
    have u15 : ¬v26 := by
      rcases c1443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u14
    have u16 : ¬v25 := by
      rcases c996 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
    have u17 : ¬v39 := by
      rcases c2433 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    have u18 : ¬v13 := by
      rcases c2438 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a n2
      · exact absurd n5 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n7
    have u19 : ¬v4 := by
      rcases c2439 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n7
    have u20 : v11 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u17
    have u21 : v12 := by
      rcases c1020 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd u20 a
      · exact a
    have u22 : ¬v5 := by
      rcases c1429 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u20 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n7
    have u23 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u21 a
    have u25 : v28 := by
      rcases c1095 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a n6
      · exact a
    have u26 : ¬v24 := by
      rcases c1705 with a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n2
      · exact absurd a u23
      · exact absurd a n6
      · exact a
    have u27 : ¬v6 := by
      rcases c1629 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u9
      · exact absurd a n7
    have u28 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : v40 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u27
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a n0
    have u30 : v38 := by
      rcases c1595 with a|a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd a n1
      · exact absurd a u24
      · exact absurd a n3
      · exact absurd a u26
      · exact absurd a u16
      · exact a
      · exact absurd a u17
      · exact absurd a u11
    rcases c158 with a|a
    · exact absurd u29 a
    · exact absurd u30 a
  have c2441 : v10 ∨ v8 ∨ v15 ∨ ¬v21 ∨ v22 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v29 := by
      rcases c2430 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
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
    have u10 : v1 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
    have u11 : v3 := by
      rcases c2440 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
    have u12 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd u10 a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v11 := by
      rcases c1452 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd u10 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n6
    have u14 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd u10 a
      · exact absurd u11 a
      · exact a
    rcases c433 with a|a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u13
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u14
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u12
  have c2442 : ¬v3 ∨ ¬v1 ∨ v8 ∨ ¬v10 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v7 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u3 : v9 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u1
      · exact a
      · exact absurd n1 a
    have u4 : v14 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a u1
      · exact a
    rcases c57 with a|a|a
    · exact absurd u3 a
    · exact absurd u4 a
    · exact absurd n3 a
  have c2443 : ¬v39 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd n4 a
    rcases c268 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n5
  have c2444 : ¬v7 ∨ ¬v1 ∨ v4 ∨ v11 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : ¬v39 := by
      rcases c2443 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd n8 a
      · exact absurd a n9
    have u5 : v32 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u4
    have u6 : v40 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n9
    have u7 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u6 a
      · exact a
    rcases c256 with a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd a n7
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a n5
  have c2445 : v11 ∨ ¬v1 ∨ v4 ∨ v8 ∨ ¬v10 ∨ ¬v21 ∨ v22 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
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
    have u10 : ¬v3 := by
      rcases c2442 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n8
    have u11 : ¬v13 := by
      rcases c2431 with a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd n1 a
      · exact absurd a n3
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n8
    have u12 : v9 := by
      rcases c232 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd n4 a
      · exact absurd a n0
    have u13 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd n4 a
    have u14 : v28 := by
      rcases c1095 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n6
      · exact a
    have u15 : ¬v24 := by
      rcases c1705 with a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a n6
      · exact a
    have u16 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v7 := by
      rcases c2444 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd u6 a
      · exact absurd a n7
    have u20 : v2 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n1 a
      · exact a
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u13
    have u21 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd n1 a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v39 := by
      rcases c2443 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd u6 a
      · exact absurd a n7
    have u24 : ¬v34 := by
      rcases c1739 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a u9
    have u25 : v40 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a n7
    have u26 : v41 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a u3
      · exact a
      · exact absurd a u24
    rcases c164 with a|a
    · exact absurd u25 a
    · exact absurd u26 a
  have c2446 : v33 ∨ v12 ∨ v13 ∨ v14 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v29 ∨ ¬v34 ∨ v36 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd n9 a
      · exact a
    rcases c539 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd n9 a
    · exact absurd a n7
    · exact absurd a n11
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n12
    · exact absurd a n3
  have c2447 : v4 ∨ ¬v1 ∨ v8 ∨ ¬v10 ∨ ¬v21 ∨ v22 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
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
    have u9 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n8
    have u10 : v11 := by
      rcases c2445 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v9 := by
      rcases c54 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u10 a
    have u14 : ¬v5 := by
      rcases c1429 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u10 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n8
    have u15 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u10 a
    have u16 : v28 := by
      rcases c1095 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n5
      · exact a
    have u17 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v6 := by
      rcases c1629 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a n8
    have u20 : ¬v39 := by
      rcases c2443 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd u5 a
      · exact absurd a n7
    have u21 : v40 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a n7
    have u22 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : v34 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u23
      · exact a
    have u25 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u24 a
    rcases c2446 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u15
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a n6
    · exact absurd u24 a
    · exact absurd a u9
    · exact absurd a u23
    · exact absurd a u22
  have c2448 : v22 ∨ v8 ∨ v15 ∨ ¬v21 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v29 := by
      rcases c2430 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v1 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
    have u6 : v10 := by
      rcases c2441 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v4 := by
      rcases c2447 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n1
      · exact absurd u6 a
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd u5 a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd u5 a
      · exact absurd u7 a
      · exact a
    have u10 : v14 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u5 a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a u9
      · exact a
    have u11 : v9 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u9
      · exact a
      · exact absurd u5 a
    rcases c57 with a|a|a
    · exact absurd u11 a
    · exact absurd u10 a
    · exact absurd u6 a
  have c2449 : ¬v1 ∨ ¬v4 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u4 : v14 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a u3
      · exact a
    have u5 : v9 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u3
      · exact a
      · exact absurd n0 a
    have u6 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd u5 a
      · exact absurd u4 a
      · exact a
    rcases c428 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd u5 a
    · exact absurd a n3
  have c2450 : ¬v9 ∨ v8 ∨ ¬v10 ∨ ¬v21 ∨ ¬v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n3 a
    rcases c2412 with a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd n3 a
  have c2451 : v9 ∨ ¬v4 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v1 := by
      rcases c2449 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u2 : v2 := by
      rcases c2298 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v3 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n7
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
    rcases c16 with a|a|a
    · exact absurd n1 a
    · exact absurd u3 a
    · exact absurd u2 a
  have c2452 : ¬v4 ∨ v8 ∨ v15 ∨ ¬v21 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : v22 := by
      rcases c2448 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
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
    have u10 : ¬v1 := by
      rcases c2449 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n5
    have u11 : v9 := by
      rcases c2451 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n5
    have u12 : ¬v10 := by
      rcases c2450 with a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n1
      · exact a
      · exact absurd n3 a
      · exact absurd u4 a
    have u13 : v2 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u11 a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u12
      · exact a
      · exact absurd a u10
    have u14 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v5 := by
      rcases c20 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u13 a
    have u16 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd n0 a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v7 := by
      rcases c22 with a|a|a
      · exact absurd n0 a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v13 := by
      rcases c1811 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd u11 a
      · exact absurd a u2
    have u19 : v14 := by
      rcases c2412 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a u18
      · exact a
      · exact absurd a u2
      · exact absurd n3 a
    have u20 : ¬v11 := by
      rcases c60 with a|a|a
      · exact absurd u19 a
      · exact absurd u11 a
      · exact a
    have u21 : ¬v12 := by
      rcases c62 with a|a|a
      · exact absurd u19 a
      · exact absurd u11 a
      · exact a
    rcases c509 with a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u12
    · exact absurd a u8
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u9
    · exact absurd a u20
    · exact absurd n0 a
  have c2453 : v3 ∨ v4 ∨ ¬v9 ∨ v10 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ ¬v22 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v39 := by
      rcases c2433 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v11 := by
      rcases c1271 with a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n12
    have u6 : v12 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd u5 a
      · exact absurd a n1
      · exact absurd a n6
    rcases c58 with a|a|a
    · exact absurd n2 a
    · exact absurd u5 a
    · exact absurd u6 a
  have c2454 : ¬v11 ∨ v4 ∨ v5 ∨ ¬v9 ∨ v10 ∨ v17 ∨ v18 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    rcases c525 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n1
  have c2455 : ¬v2 ∨ v4 ∨ ¬v9 ∨ v10 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ ¬v22 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd n9 a
      · exact a
    have u2 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd n9 a
      · exact a
    have u3 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd n9 a
    have u4 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd n9 a
    have u5 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n8 a
      · exact a
    have u6 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n8 a
      · exact a
    have u7 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd n8 a
      · exact a
    have u8 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd n8 a
      · exact a
    have u9 : v3 := by
      rcases c2453 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
    have u10 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n0 a
    have u11 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u9 a
    have u12 : ¬v39 := by
      rcases c2443 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd n9 a
      · exact absurd a n10
    have u13 : v40 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n10
    have u14 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v31 := by
      rcases c1447 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
    have u17 : ¬v11 := by
      rcases c2454 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u18 : v32 := by
      rcases c1271 with a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u17
      · exact a
      · exact absurd a u12
      · exact absurd a u3
    have u19 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u18 a
      · exact a
    rcases c256 with a|a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u12
    · exact absurd a u19
    · exact absurd a u5
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a u7
    · exact absurd a u8
  have c2456 : ¬v9 ∨ v8 ∨ v15 ∨ ¬v21 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v4 := by
      rcases c2452 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : v22 := by
      rcases c2448 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v10 := by
      rcases c2450 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd n3 a
      · exact absurd u6 a
    have u13 : ¬v2 := by
      rcases c2455 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd u6 a
      · exact absurd u7 a
      · exact absurd a n4
    have u14 : v3 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
    have u15 : v1 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u13
      · exact a
    have u16 : v11 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
    rcases c1452 with a|a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd u15 a
    · exact absurd u16 a
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a n5
  have c2457 : ¬v11 ∨ v4 ∨ v5 ∨ v8 ∨ v10 ∨ ¬v21 ∨ ¬v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : v12 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n1
    have u6 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n0 a
    rcases c2412 with a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a n3
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd n5 a
  have c2458 : ¬v3 ∨ v4 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v21 ∨ ¬v22 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n6 a
      · exact a
    have u6 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd n6 a
      · exact a
    have u7 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd n6 a
      · exact a
    have u8 : v2 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u3
    have u9 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u8 a
    have u10 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n0 a
    have u11 : ¬v39 := by
      rcases c2443 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd n7 a
      · exact absurd a n8
    have u12 : v40 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n8
    have u13 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v31 := by
      rcases c1447 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u11
    have u16 : ¬v11 := by
      rcases c2457 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd n6 a
    have u17 : v32 := by
      rcases c1271 with a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u16
      · exact a
      · exact absurd a u11
      · exact absurd a u2
    have u18 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u17 a
      · exact a
    rcases c256 with a|a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u11
    · exact absurd a u18
    · exact absurd a u4
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd a u6
    · exact absurd a u7
  have c2459 : v10 ∨ v8 ∨ v15 ∨ ¬v21 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v9 := by
      rcases c2456 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v22 := by
      rcases c2448 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v4 := by
      rcases c2452 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u7 a
      · exact a
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
    have u15 : ¬v3 := by
      rcases c2458 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd u7 a
      · exact absurd u9 a
      · exact absurd a n4
    have u16 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
    have u17 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
    have u18 : ¬v39 := by
      rcases c2433 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
    have u19 : v11 := by
      rcases c1271 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u8
      · exact absurd a n0
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u13
    have u20 : v12 := by
      rcases c1020 with a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd u19 a
      · exact a
    have u21 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u19 a
    rcases c2412 with a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n1
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u3
    · exact absurd n3 a
  have c2460 : ¬v11 ∨ v8 ∨ ¬v10 ∨ ¬v21 ∨ ¬v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n3 a
    rcases c2412 with a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd n3 a
  have c2461 : v8 ∨ v15 ∨ ¬v21 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v4 := by
      rcases c2452 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u7 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v9 := by
      rcases c2456 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u13 : v10 := by
      rcases c2459 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u14 : v22 := by
      rcases c2448 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u15 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v11 := by
      rcases c2460 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u13 a
      · exact absurd n2 a
      · exact absurd u14 a
    have u19 : v3 := by
      rcases c232 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u5
      · exact a
      · exact absurd u13 a
      · exact absurd a u18
    have u20 : ¬v1 := by
      rcases c2442 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a n0
      · exact absurd u13 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
    have u21 : v2 := by
      rcases c2298 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u20
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n4
    have u22 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u21 a
    have u23 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u21 a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u19 a
    have u25 : v14 := by
      rcases c548 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u23
      · exact a
    have u26 : ¬v39 := by
      rcases c2443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd u7 a
      · exact absurd a n3
    have u27 : ¬v13 := by
      rcases c69 with a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd u13 a
    have u28 : v32 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u6
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a u26
    have u29 : v40 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u22
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u26
      · exact absurd a u24
      · exact absurd a n3
    have u30 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u28 a
    have u31 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u29 a
      · exact a
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a n3
    · exact absurd a u27
    · exact absurd a u16
    · exact absurd a u3
    · exact absurd a u31
    · exact absurd a u30
  have c2462 : v39 ∨ v4 ∨ v11 ∨ v15 ∨ v16 ∨ v18 ∨ ¬v22 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v30 := by
      rcases c1823 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
    have u2 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : v32 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n0
    have u6 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u5 a
    rcases c495 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd n6 a
    · exact absurd a u1
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n4
  have c2463 : v4 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v13 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v20 ∨ ¬v22 ∨ v44 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v3 := by
      rcases c232 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
    have u2 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n10 a
      · exact a
    have u3 : v39 := by
      rcases c2462 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd n10 a
      · exact absurd a n13
    have u4 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v30 := by
      rcases c1035 with a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u8
      · exact absurd a n12
      · exact absurd a n13
    have u10 : v2 := by
      rcases c2194 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n11
    have u11 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
    have u12 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u10 a
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a n14
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a u6
    · exact absurd a u11
  have c2464 : ¬v39 ∨ ¬v4 ∨ v9 ∨ v13 ∨ v15 ∨ v16 ∨ v17 ∨ v20 ∨ v27 ∨ v44 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v30 := by
      rcases c1035 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v2 := by
      rcases c2194 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n9
    have u8 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
    have u9 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n12
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a u8
  have c2465 : ¬v32 ∨ v15 ∨ v16 ∨ ¬v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n3 a
      · exact a
    rcases c495 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n3 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a n2
  have c2466 : v29 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v22 ∨ v35 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : v31 := by
      rcases c2091 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u4 a
      · exact a
    rcases c495 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd n4 a
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n2
  have c2467 : ¬v29 ∨ ¬v4 ∨ v5 ∨ v9 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v23 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v2 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u5 a
    rcases c222 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n12
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n9
    · exact absurd n1 a
    · exact absurd a u3
    · exact absurd a n13
    · exact absurd a n14
  have c2468 : ¬v22 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v12 ∨ v13 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v20 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v32 := by
      rcases c2465 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n0 a
    have u4 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
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
    have u8 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : v4 := by
      rcases c2463 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd n0 a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n11
    have u10 : ¬v5 := by
      rcases c1643 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v39 := by
      rcases c2464 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n11
    have u12 : ¬v29 := by
      rcases c2467 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n11
    have u13 : v35 := by
      rcases c2466 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd n0 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n12
    have u14 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
    have u18 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a u1
    have u19 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd u9 a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u18 a
    rcases c222 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a n5
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a u20
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd u9 a
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd a n11
  have c2469 : v39 ∨ ¬v4 ∨ v5 ∨ ¬v8 ∨ v9 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ v15 ∨ v16 ∨ v17 ∨ v20 ∨ v22 ∨ v29 ∨ v30 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v23 := by
      rcases c906 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n15
      · exact absurd a u2
      · exact absurd a n17
      · exact absurd a n10
      · exact absurd a u1
    have u4 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v7 := by
      rcases c22 with a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
    have u8 : v35 := by
      rcases c418 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd a u5
      · exact a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n15
      · exact absurd a n13
    have u9 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u8 a
      · exact a
    rcases c222 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a n18
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd a u10
    · exact absurd a n19
    · exact absurd a n20
  have c2470 : ¬v6 ∨ ¬v4 ∨ v5 ∨ v12 ∨ v13 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v7 := by
      rcases c283 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n2
    rcases c34 with a|a|a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd u1 a
  have c2471 : ¬v30 ∨ ¬v4 ∨ v5 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ v19 ∨ v20 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v32 := by
      rcases c131 with a|a
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
    have u7 : ¬v26 := by
      rcases c1443 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u4
    have u8 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
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
    have u13 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n12
    have u14 : v3 := by
      rcases c222 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a n5
      · exact a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n11
    have u15 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd n1 a
    have u16 : v40 := by
      rcases c454 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a u10
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u17 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : v28 := by
      rcases c1017 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u7
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a n11
    rcases c697 with a|a|a|a|a
    · exact absurd u20 a
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a u19
    · exact absurd a u18
  have c2472 : v30 ∨ ¬v4 ∨ v5 ∨ ¬v8 ∨ v9 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ v15 ∨ v16 ∨ v17 ∨ v20 ∨ v22 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v29 := by
      rcases c2469 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact a
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v2 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u6 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u5 a
    rcases c222 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n17
    · exact absurd a n6
    · exact absurd a u7
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n14
    · exact absurd n1 a
    · exact absurd a u3
    · exact absurd a n18
    · exact absurd a n19
  have c2473 : v39 ∨ ¬v4 ∨ v5 ∨ ¬v8 ∨ v9 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v6 := by
      rcases c2470 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n16
      · exact absurd a n17
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v30 := by
      rcases c2471 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u2 a
    rcases c2472 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n16
  have c2474 : ¬v4 ∨ ¬v10 ∨ v15 ∨ ¬v21 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : v8 := by
      rcases c2452 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v9 := by
      rcases c39 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v14 := by
      rcases c47 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n1 a
    have u10 : ¬v12 := by
      rcases c45 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n1 a
    have u11 : ¬v11 := by
      rcases c44 with a|a|a
      · exact absurd u6 a
      · exact absurd n1 a
      · exact a
    have u12 : ¬v13 := by
      rcases c46 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n1 a
    have u13 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u7 a
    have u15 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u7 a
    have u16 : ¬v22 := by
      rcases c2468 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v5 := by
      rcases c1643 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
    have u18 : v39 := by
      rcases c2473 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u17
      · exact absurd u6 a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
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
    have u22 : v27 := by
      rcases c2464 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n4
    have u23 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v35 := by
      rcases c1529 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u19
    rcases c331 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u24
    · exact absurd a u20
    · exact absurd a u12
    · exact absurd a n2
    · exact absurd a u25
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a u23
    · exact absurd a u10
    · exact absurd a u21
    · exact absurd a u16
    · exact absurd a u19
  have c2475 : ¬v6 ∨ ¬v3 ∨ v5 ∨ v12 ∨ v13 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c283 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n2
  have c2476 : v33 ∨ v20 ∨ ¬v27 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd n2 a
      · exact a
    rcases c1028 with a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
  have c2477 : v5 ∨ ¬v3 ∨ v4 ∨ v9 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v6 := by
      rcases c2475 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n14
      · exact absurd a n15
    have u7 : ¬v39 := by
      rcases c2443 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a n14
    have u8 : ¬v30 := by
      rcases c1823 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a u7
      · exact absurd a u4
    have u9 : v40 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n14
    have u10 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
    have u11 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : v2 := by
      rcases c2194 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u2
    have u15 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u14 a
      · exact absurd n1 a
      · exact a
    have u16 : ¬v25 := by
      rcases c1581 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n15
    have u17 : v32 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact a
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a u16
      · exact absurd a u7
    have u18 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n14
      · exact absurd a n6
      · exact a
      · exact absurd a n13
      · exact absurd a u12
      · exact absurd a u18
    rcases c2476 with a|a|a|a|a
    · exact absurd a u19
    · exact absurd a n13
    · exact absurd u21 a
    · exact absurd a u18
    · exact absurd a u20
  have c2478 : ¬v10 ∨ v15 ∨ ¬v21 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u7 : v8 := by
      rcases c2461 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v9 := by
      rcases c39 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n0 a
    have u13 : ¬v14 := by
      rcases c47 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n0 a
    have u14 : ¬v12 := by
      rcases c45 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n0 a
    have u15 : ¬v11 := by
      rcases c44 with a|a|a
      · exact absurd u7 a
      · exact absurd n0 a
      · exact a
    have u16 : ¬v13 := by
      rcases c46 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n0 a
    have u17 : ¬v4 := by
      rcases c2474 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u18 : v3 := by
      rcases c232 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u5
      · exact a
      · exact absurd n0 a
      · exact absurd a u15
    have u19 : v5 := by
      rcases c2477 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
    have u20 : ¬v2 := by
      rcases c17 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
    have u22 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u8
    have u23 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
    rcases c2434 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u10
  exact ⟨c2433, c2434, c2435, c2436, c2437, c2442, c2443, c2446, c2449, c2451, c2461, c2465, c2466, c2470, c2471, c2476, c2478⟩
